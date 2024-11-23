#include "SPI.h"





void configure_SPI(void)
{
    CKCON0 |= 0x05;
    SPCON |= 0x10;              //master mode
    P1_1=1;                     //CS disable
    SPCON |= 0x00;          //Fclk/2
    SPCON |= 0x20;          //disable SS
    SPCON &= ~0x08;         //CPOL = 0
    SPCON &= ~0x04;          //CPHA = 0
    //IEN1 |= 0x04;           //SPI Interrupt enable
    SPCON |= 0x40;          //Enable SPI
    //EA=1;                   //Enable all interrupts
}


void SPI_send(uint8_t data)
{
    //uint16_t word = (config << 12) | (data << 4);  // Prepare 16-bit word
    P1_1 = 0;              // Pull CS (SS) low to activate the DAC

    SPDAT = data;           // Config + MSB of data
    printf("Sending data: %x\n\r", data);
    while (!(SPSTA & 0x80))
    {

    }// Wait until transmission is complete


    /*SPDAT = word & 0xFF;                  // LSB of data
    while (!(SPSTA & 0x80))
    {
        //printf("%x\n\r", SPSTA);
    }
    //while (!transmit_completed); // Wait for transmission to complete
    */
    delay_us(5);

    P1_1 = 1;
}

uint8_t SPI_read(void)
{
    uint8_t receivedData;

    P1_1 = 0;              // Pull CS (SS) low to activate the slave device

    SPDAT = 0x3F;          // Send a dummy byte to generate clock pulses
    while (!(SPSTA & 0x80))
    {
        // Wait for transmission (and reception) to complete
    }

    receivedData = SPDAT;  // Read the data received from the slave
    printf("Received data: %x\n\r", receivedData);

    delay_us(5);           // Small delay to ensure stability
    P1_1 = 1;              // Pull CS (SS) high to deactivate the slave device

    return receivedData;   // Return the received data
}

void poll_MISTAT_BUSY(void)
{
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);                 //ECON1
    SPI_send(ENC_REGISTER_BANK_3);
    SPI_send(ENC_READ_CONTROL_REG_OPCODE | ENC_MISTAT);
    SPI_read();                                                 //Dummy byte
    while((SPI_read() & 0x01) != 0)
    {
        printf("Busy wait!!");
    }
}

void test_read_ctrl(void)
{
    uint8_t received_byte;
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);
    SPI_send(ENC_REGISTER_BANK_2);
    SPI_send(ENC_READ_CONTROL_REG_OPCODE | ENC_ECON1);
    SPI_read();  //Dummy byte
    received_byte = SPI_read();
    printf("Received test read ctrl word: %x\n\r", received_byte);
}


uint16_t ENC_PHY_read(uint8_t PHY_reg)
{
    uint8_t received_LSB, received_MSB;
    uint16_t received_word;
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);                 //ECON1
    SPI_send(ENC_REGISTER_BANK_2);
    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIREGADR);
    SPI_send(ENC_PHLCON);                                   //Write the address of the PHY register in the MIREGADR register

    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MICMD);
    SPI_send(SET);

    poll_MISTAT_BUSY();

    SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MICMD);
    SPI_send(CLEAR);

    SPI_send(ENC_READ_CONTROL_REG_OPCODE | ENC_MIRDL);
    SPI_read();  //Dummy byte
    received_LSB = SPI_read();

    SPI_send(ENC_READ_CONTROL_REG_OPCODE | ENC_MIRDH);
    SPI_read();  //Dummy byte
    received_MSB = SPI_read();

    received_word = (received_MSB << 8) | received_LSB;
    return received_word;

}

void SPI_BB_init(void)
{
    SPCON = 0;
    SPI_DATA = 1;
    SPI_CLOCK = 0;
    SPI_CHIP_SELECT = 1;
}

void SPI_send_BB(uint8_t data)
{
    //uint16_t word = (config << 12) | (data << 4);  // Prepare 16-bit word
    printf("Sending BB data: %x\n\r", data);
    SPI_CHIP_SELECT = 0;
    for(int i = 0; i < 8; i++)
    {

        if(data & 0x80)
        {
            SPI_DATA = 1;
        }
        else
        {
            SPI_DATA = 0;
        }
        SPI_CLOCK = 1;
        //delay_us(1000);
        data = data << 1;
        SPI_CLOCK = 0;
        SPI_DATA = 0;
        //delay_us(1000);
    }
    SPI_CHIP_SELECT = 1;
}

void delay_us(uint16_t us)
{
    while (us--)
    {
    }
}

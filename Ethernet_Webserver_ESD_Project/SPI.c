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


    P1_1 = 1;
}

void delay_us(uint16_t us)
{
    while (us--)
    {
    }
}

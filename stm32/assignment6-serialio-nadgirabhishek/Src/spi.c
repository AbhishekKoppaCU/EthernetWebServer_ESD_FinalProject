#include "stm32f0xx.h"
#include <stdio.h>
#include <stdlib.h>
#define SPI2_CS_PIN    (1U << 12) // GPIO_PIN_12 (CS)
#define SPI2_SCK_PIN   (1U << 13) // GPIO_PIN_13 (SCK)
#define SPI2_MISO_PIN  (1U << 14) // GPIO_PIN_14 (MISO)
#define SPI2_MOSI_PIN  (1U << 15) // GPIO_PIN_15 (MOSI)

//#define DELAY_SHORT() for (volatile int i = 0; i < 100; i++) { __asm__("nop"); }

#define SPI2_CS_PORT   GPIOB
#define SPI2_SCK_PORT  GPIOB
#define SPI2_MISO_PORT GPIOB
#define SPI2_MOSI_PORT GPIOB

void SPI_Init(void) {
    // Enable GPIOB clock
    RCC->AHBENR |= RCC_AHBENR_GPIOBEN;

    // Configure CS, SCK, and MOSI as output
    GPIOB->MODER &= ~(GPIO_MODER_MODER12 | GPIO_MODER_MODER13 | GPIO_MODER_MODER15); // Clear MODER bits
    GPIOB->MODER |= (GPIO_MODER_MODER12_0 | GPIO_MODER_MODER13_0 | GPIO_MODER_MODER15_0); // Set as output

    // Configure MISO as input
    GPIOB->MODER &= ~GPIO_MODER_MODER14; // Set as input

    // Set all pins to high-speed mode
    GPIOB->OSPEEDR |= (GPIO_OSPEEDR_OSPEEDR12 | GPIO_OSPEEDR_OSPEEDR13 | GPIO_OSPEEDR_OSPEEDR14 | GPIO_OSPEEDR_OSPEEDR15);

    // Set default states
    GPIOB->ODR |= SPI2_CS_PIN;    // CS High (inactive)
    GPIOB->ODR &= ~SPI2_SCK_PIN;  // SCK Low (idle)
    GPIOB->ODR &= ~SPI2_MOSI_PIN; // MOSI Low (idle)
}


void SPI_WriteByte(uint8_t data)
{
    for (int i = 0; i < 8; i++) {
        // Write the MSB to MOSI
        if (data & 0x80) {
            GPIOB->ODR |= SPI2_MOSI_PIN; // Set MOSI High
        } else {
            GPIOB->ODR &= ~SPI2_MOSI_PIN; // Set MOSI Low
        }
        data <<= 1; // Shift to the next bit

        // Toggle SCK to clock the bit
        GPIOB->ODR |= SPI2_SCK_PIN;  // SCK High
        //DELAY_SHORT();               // Small delay
        for (int i =0; i <16; i++);
        GPIOB->ODR &= ~SPI2_SCK_PIN; // SCK Low
        //DELAY_SHORT();               // Small delay
        for (int i =0; i <16; i++);
    }
    GPIOB->ODR &= ~SPI2_MOSI_PIN; // MOSI Low (idle)
}


void spi_set_autoinc(void)
{
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(0x5E);			//ECON2
	SPI_WriteByte(0x80);			//AUTOINC bit set
	GPIOB->ODR |= SPI2_CS_PIN;
}
void select_reg_bank(uint8_t bank)
{
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(0x5F);
	SPI_WriteByte(bank);
	GPIOB->ODR |= SPI2_CS_PIN;
}



void spi_control_write(int reg_bank,uint8_t addr,uint8_t data)
{
    uint8_t opcode = 0x40;
    addr = addr + opcode;
	select_reg_bank(reg_bank);
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(addr);
    SPI_WriteByte(data);
    GPIOB->ODR |= SPI2_CS_PIN;
}

void buffer_init(uint16_t start_address, uint16_t size) {
    if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
        printf("\nInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n", start_address, size);
        return;
    }

    // Ensure start and end addresses are even
    uint16_t erxst = start_address & ~1; // Make sure ERXST is even
    uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even

    // Write ERXST
    spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
    spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST

    // Write ERXND
    spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
    spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND

    printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", erxst, erxnd);
}


void spi_buffer_write(int num_bytes,uint16_t start_address,uint8_t *data_ptr)
{
	if(num_bytes < 1)
		{
			printf("\nInvalid number of bytes: %d\n",num_bytes);
			return;
		}
	if(start_address > 0x1FFF)
		{
			printf("\nInvalid address: %04Xn",start_address);
		  return;
		}
	buffer_init(0x0000, start_address - 1);
	if(num_bytes > 1)
		{
			spi_set_autoinc();
		}
	uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
	uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
	spi_control_write(0, 0X03, higher_byte); // High byte
	spi_control_write(0, 0X02, lower_byte); // Low byte
	uint8_t opcode = 0x7A;
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(opcode);
	for (int i = 0; i < num_bytes; i++) {
	        SPI_WriteByte(*data_ptr);
	        data_ptr++;
	    }
	GPIOB->ODR |= SPI2_CS_PIN;
}



uint8_t SPI_ReadByte(void)
{
    uint8_t received_data = 0;

    for (int i = 0; i < 8; i++) {
        received_data <<= 1; // Make room for the next bit

        // Toggle SCK to clock the bit
        GPIOB->ODR |= SPI2_SCK_PIN;  // SCK High
        //DELAY_SHORT();               // Small delay
        for (int i =0; i <16; i++);

        // Read the bit from MISO
        if (GPIOB->IDR & SPI2_MISO_PIN) {
            received_data |= 0x01; // Set the LSB
        }

        GPIOB->ODR &= ~SPI2_SCK_PIN; // SCK Low
        //DELAY_SHORT();               // Small delay
        for (int i =0; i <16; i++);
    }

    return received_data;
}
void spi_buffer_read(int num_bytes,uint16_t start_address,uint8_t *data_ptr)
{
	if(num_bytes < 1)
		{
			printf("\nInvalid number of bytes: %d\n",num_bytes);
			return;
		}
	if(start_address > 0x1FFF)
		{
			printf("\nInvalid address: %04Xn",start_address);
		  return;
		}

	if(num_bytes > 1)
		{
			spi_set_autoinc();
		}
	buffer_init(start_address, num_bytes);
	uint8_t higher_byte = (uint8_t)(((start_address) >> 8) & 0xFF);
	uint8_t lower_byte = (uint8_t)((start_address) & 0xFF);
	spi_control_write(0, 0X01, higher_byte); // High byte
	spi_control_write(0, 0X00, lower_byte); // Low byte
	uint8_t opcode = 0x3A;
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(opcode);
	for (int i = 0; i < num_bytes; i++) {
		  *data_ptr=SPI_ReadByte();
	       data_ptr++;
	    }
	GPIOB->ODR |= SPI2_CS_PIN;
}




uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
{
	if(addr > 0x1F)
	{
		printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
	}

	select_reg_bank(bank);
				// Pull CS Low
	GPIOB->ODR &= ~SPI2_CS_PIN;

		        // Send address and read data
	SPI_WriteByte(addr);           // Send the address
	//SPI_ReadByte();
	uint8_t data = SPI_ReadByte(); // Read the data

		        // Pull CS High
	GPIOB->ODR |= SPI2_CS_PIN;

	return data;
}

void busy_wait(void)
{
	uint8_t data = mac_spi_read(0x0A, 3);
	while(data & 0x01);
}


uint16_t phy_spi_read(uint8_t addr)
{
	spi_control_write(2, 0x14, addr);
	spi_control_write(2, 0x12, 1);				//MICMD.MIIRD bit set

	busy_wait();

	spi_control_write(2, 0x12, 0);				//MICMD.MIIRD bit cleared

	uint16_t data_LSB = mac_spi_read(0x18, 2);
	uint16_t data_MSB = mac_spi_read(0x19, 2);

	uint16_t data = (data_MSB << 8) + data_LSB;

	return data;

}



void phy_spi_write(uint8_t addr, uint16_t data)
{
	spi_control_write(2,0x14,addr);
	spi_control_write(2,0x16, (uint8_t)(data&0xFF));
	spi_control_write(2, 0x17, (uint8_t)((data>>8)&0xFF));
}




uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
{
	if(addr > 0x1F)
	{
		printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
	}

	select_reg_bank(bank);
				// Pull CS Low
	GPIOB->ODR &= ~SPI2_CS_PIN;

		        // Send address and read data
	SPI_WriteByte(addr);           // Send the address
	//SPI_ReadByte();
	uint8_t data = SPI_ReadByte(); // Read the data

		        // Pull CS High
	GPIOB->ODR |= SPI2_CS_PIN;

	return data;
}





void enc_reset(void)
{
	GPIOB->ODR &= ~SPI2_CS_PIN;

	SPI_WriteByte(0XFF);

	GPIOB->ODR |= SPI2_CS_PIN;

}




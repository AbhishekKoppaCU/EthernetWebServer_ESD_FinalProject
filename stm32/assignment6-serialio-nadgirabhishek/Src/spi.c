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
void SPI_WriteByte(uint8_t data) {
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


void cmd_spi_write(int argc, char *argv[]) {
    if (argc < 3) {
        printf("\nInvalid command: WRITE requires number of bytes and data\n");
        return;
    }

    int num_bytes = atoi(argv[1]);
    if (num_bytes <= 0 || argc != (num_bytes + 2)) {
        printf("\nInvalid command: Incorrect number of data arguments\n");
        return;
    }

    // Pull CS Low
    GPIOB->ODR &= ~SPI2_CS_PIN;

    // Write each byte
    for (int i = 0; i < num_bytes; i++) {
        char *endptr;
        uint8_t data = (uint8_t)strtol(argv[i + 2], &endptr, 16);
        if (*endptr != '\0') {
            printf("\nInvalid data: %s\n", argv[i + 2]);
            GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
            return;
        }
        SPI_WriteByte(data);
    }

    // Pull CS High
    GPIOB->ODR |= SPI2_CS_PIN;

    printf("\nSPI Write Completed: Sent %d bytes\n", num_bytes);
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
void cmd_control_spi_write(int argc, char *argv[])
{
	if (argc < 3) {
	        printf("\nInvalid command: WRITECONTROL requires register bank, address and data\n");
	        return;
	    }

	int reg_bank = atoi(argv[1]);
	if(reg_bank > 3)
	{
		printf("\nInvalid Register Bank: Choose between [0, 3]\n");
	  return;
	}
	char *endptr;
	    uint8_t addr = (uint8_t)strtol(argv[2], &endptr, 16);

	    if (*endptr != '\0') {
	                printf("\nInvalid address: %s\n", argv[2]);
	                //GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
	                return;
	            }
	    uint8_t  data= (uint8_t)strtol(argv[3], &endptr, 16);
	    if (*endptr != '\0') {
	                printf("\nInvalid data: %s\n", argv[3]);
	                //GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
	                return;
	            }

	    spi_control_write(reg_bank,addr,data);
	    printf("\nSPI Write Completed: Sent %x data to %x address in %dnd register bank\n", data, addr, reg_bank);

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

void cmd_buffer_spi_write(int argc, char *argv[])
{
	if (argc < 4) {
		printf("\nInvalid command: WRITEBUFFER requires number of bytes, start address and data\n");
		        return;
		    }
	int num_bytes = atoi(argv[1]);
	if(num_bytes < 1)
	{
		printf("\nInvalid number of bytes: %d\n",num_bytes);
		return;
	}
	char *endptr;
	uint16_t start_address = (uint16_t)strtol(argv[2], &endptr, 16);
	if (*endptr != '\0') {
	        printf("\nInvalid address: %s\n", argv[2]);
	        return;
	    }
	if(start_address > 0x1FFF)
		{
			printf("\nInvalid address: %s\n", argv[2]);
		  return;
		}
    uint8_t data_array[num_bytes]; // Array to store data
    for (int i = 0; i < num_bytes; i++) {
        char *endptr;
        data_array[i] = (uint8_t)strtol(argv[i + 3], &endptr, 16);
        if (*endptr != '\0') {
            printf("\nInvalid data: %s\n", argv[i + 3]);
            return ;
        }
    }
    spi_buffer_write(num_bytes,start_address,data_array);
	printf("\nSPI BUFFER Write Completed: Sent %d bytes starting address %04X\n", num_bytes, start_address);
}

uint8_t SPI_ReadByte(void) {
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
uint8_t* cmd_buffer_spi_read(int argc, char *argv[])
{
    if (argc < 3) {
        printf("\nInvalid command: Buffer READ requires number of bytes and start address\n");
        return NULL; // Return NULL to indicate an error
    }

    int num_bytes = atoi(argv[1]); // Parse number of bytes
    if (num_bytes <= 0) {
        printf("\nInvalid number of bytes: Must be greater than 0\n");
        return NULL; // Return NULL to indicate an error
    }

    char *endptr;
    uint16_t start_address = (uint16_t)strtol(argv[2], &endptr, 16);
    if (*endptr != '\0') {
            printf("\nInvalid address: %s\n", argv[1]);
            return NULL;
        }
    if (start_address > 0x1FFF) {
        printf("\nInvalid Buffer Address: Choose between [0, 0x1FFF]\n");
        return NULL; // Return NULL to indicate an error
    }
    uint8_t *data_buffer = (uint8_t *)malloc(num_bytes);
    if (!data_buffer) {
        printf("\nMemory allocation failed\n");
        return NULL; // Return NULL to indicate an error
    }

	if(num_bytes < 1)
		{
			printf("\nInvalid number of bytes: %d\n",num_bytes);
			return NULL;
		}
	spi_buffer_read(num_bytes,start_address,data_buffer);
    printf("\nSPI Read Completed: Address 0x%02X\n", start_address);
    for (int i = 0; i < num_bytes; i++) {
        printf("Data[%d]: 0x%02X\n", i, data_buffer[i]);
    }

    return data_buffer; // Return the pointer to the data buffer
}

void cmd_spi_read(int argc, char *argv[]) {
    if (argc < 2) {
        printf("\nInvalid command: READ requires address\n");
        return;
    }

    // Parse the address
    char *endptr;
    uint8_t addr = (uint8_t)strtol(argv[1], &endptr, 16);
    if (*endptr != '\0') {
        printf("\nInvalid address: %s\n", argv[1]);
        return;
    }

    // Pull CS Low
    GPIOB->ODR &= ~SPI2_CS_PIN;

    // Send address and read data
    SPI_WriteByte(addr);           // Send the address
    uint8_t data = SPI_ReadByte(); // Read the data

    // Pull CS High
    GPIOB->ODR |= SPI2_CS_PIN;

    // Print the received data
    printf("\nSPI Read Completed: Address 0x%02X, Data 0x%02X\n", addr, data);
}





void cmd_phy_spi_write(int argc, char *argv[])
{
	if (argc < 3)
	{
	  printf("\nInvalid command: WRITE requires number of bytes and data\n");
	  return;
	 }


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

void cmd_eth_spi_read(int argc, char *argv[])
{
	if (argc < 3)
	{
		 printf("\nInvalid command: MAC READ requires reg_bank and address\n");
		 return;
	}

	int reg_bank = atoi(argv[1]);
	if(reg_bank > 3)
	{
		printf("\nInvalid Register Bank: Choose between [0, 3]\n");
		return;
	}


	char *endptr;
	uint8_t addr = (uint8_t)strtol(argv[2], &endptr, 16);
	if (*endptr != '\0')
	{
		printf("\nInvalid address: %s\n", argv[2]);
		return;
	}

	uint8_t data = eth_spi_read(addr, reg_bank);

						    	            // Print the received data
	printf("\nSPI ETH Read Completed: Address 0x%02X, Data 0x%02X\n", addr, data);

}

void cmd_mac_spi_read(int argc, char *argv[])
{
			if (argc < 3)
			{
	        printf("\nInvalid command: MAC READ requires reg_bank and address\n");
	        return;
	    }

			int reg_bank = atoi(argv[1]);
			if(reg_bank > 3)
			{
					printf("\nInvalid Register Bank: Choose between [0, 3]\n");
				  return;
			}


	    char *endptr;
	    uint8_t addr = (uint8_t)strtol(argv[2], &endptr, 16);
	    if (*endptr != '\0')
	    {
	        printf("\nInvalid address: %s\n", argv[2]);
	        return;
	    }

	    uint8_t data = mac_spi_read(addr, reg_bank);

	            // Print the received data
	    printf("\nSPI MAC Read Completed: Address 0x%02X, Data 0x%02X\n", addr, data);
}


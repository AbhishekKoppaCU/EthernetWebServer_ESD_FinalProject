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

void cmd_select_reg_bank(uint8_t bank)
{
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(0x5F);
	SPI_WriteByte(bank);
	GPIOB->ODR |= SPI2_CS_PIN;
}
void cmd_control_spi_write(int argc, char *argv[])
{
	if (argc < 3) {
	        printf("\nInvalid command: WRITE requires number of bytes and data\n");
	        return;
	    }

	int reg_bank = atoi(argv[1]);
	if(reg_bank > 3)
	{
		printf("\nInvalid Register Bank: Choose between [0, 3]\n");
	  return;
	}

	char *endptr;

	// Pull CS Low
	cmd_select_reg_bank(reg_bank);



	    GPIOB->ODR &= ~SPI2_CS_PIN;

	    uint8_t addr = (uint8_t)strtol(argv[2], &endptr, 16);
	    uint8_t opcode = 0x40;
	    //addr = addr + 0x40;
	    if (*endptr != '\0') {
	                printf("\nInvalid data: %s\n", argv[2]);
	                GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
	                return;
	            }
	    SPI_WriteByte(addr + opcode);

	    uint8_t data = (uint8_t)strtol(argv[3], &endptr, 16);
	    if (*endptr != '\0') {
	                printf("\nInvalid data: %s\n", argv[3]);
	                GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
	                return;
	            }
	    SPI_WriteByte(data);

	    GPIOB->ODR |= SPI2_CS_PIN;

	    printf("\nSPI Write Completed: Sent %x data to %x address in %dnd register bank\n", data, addr, reg_bank);

}

void cmd_set_autoinc_spi(void)
{
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(0x5E);			//ECON2
	SPI_WriteByte(0x80);			//AUTOINC bit set
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
    uint16_t start_address = (uint8_t)strtol(argv[2], &endptr, 16);
    if (*endptr != '\0') {
            printf("\nInvalid address: %s\n", argv[1]);
            return NULL;
        }
    if (start_address > 0x1FFF) {
        printf("\nInvalid Buffer Address: Choose between [0, 0x1FFF]\n");
        return NULL; // Return NULL to indicate an error
    }

    uint8_t opcode = 0x20;

    // Dynamically allocate memory for the data buffer
    uint8_t *data_buffer = (uint8_t *)malloc(num_bytes);
    if (!data_buffer) {
        printf("\nMemory allocation failed\n");
        return NULL; // Return NULL to indicate an error
    }

    if (num_bytes > 1) {
        cmd_set_autoinc_spi(); // Enable auto-increment mode
    }

    // Send the command to the SPI device
    GPIOB->ODR &= ~SPI2_CS_PIN; // Pull CS Low
    SPI_WriteByte(start_address + opcode); // Send start address + opcode
    GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High

    GPIOB->ODR &= ~SPI2_CS_PIN; // Pull CS Low again

    for (int i = 0; i < num_bytes; i++) {
        data_buffer[i] = SPI_ReadByte(); // Read and store each byte
    }

    GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High

    // Debugging: Print the received data
    printf("\nSPI Read Completed: Address 0x%02X\n", start_address);
    for (int i = 0; i < num_bytes; i++) {
        printf("Data[%d]: 0x%02X\n", i, data_buffer[i]);
    }

    return data_buffer; // Return the pointer to the data buffer
}




void cmd_buffer_spi_write(int argc, char *argv[])
{
	if (argc < 4) {
		printf("\nInvalid Buffer Address: Choose between [0, 0x1FFF]\n");
		        return;
		    }
	int num_bytes = atoi(argv[1]);
	if(num_bytes > 1)
	{
		cmd_set_autoinc_spi();
	}

	char *endptr;
	uint16_t start_address = (uint8_t)strtol(argv[2], &endptr, 16);
	if (*endptr != '\0') {
	        printf("\nInvalid address: %s\n", argv[1]);
	        return;
	    }
	if(start_address > 0x1FFF)
		{
			printf("\nInvalid Register Bank: Choose between [0, 3]\n");
		  return;
		}
	uint8_t opcode = 0x60;

	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(start_address + opcode);
	GPIOB->ODR |= SPI2_CS_PIN;

	GPIOB->ODR &= ~SPI2_CS_PIN;

	for (int i = 0; i < num_bytes; i++) {
	        char *endptr;
	        uint8_t data = (uint8_t)strtol(argv[i + 3], &endptr, 16);
	        if (*endptr != '\0') {
	            printf("\nInvalid data: %s\n", argv[i + 2]);
	            GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
	            return;
	        }
	        SPI_WriteByte(data);
	    }

	GPIOB->ODR |= SPI2_CS_PIN;
	printf("\nSPI BUFFER Write Completed: Sent %d bytes starting address %x\n", num_bytes, start_address);

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

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

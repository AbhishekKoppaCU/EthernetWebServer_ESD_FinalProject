/*
 * spi.c
 *
 *  Created on: Nov 27, 2024
 *      Author: nadgi
 */

#include "spi.h"

void IO_Init(void) {
    // Enable GPIO clocks
    RCC->AHBENR |= RCC_AHBENR_GPIOAEN; // Enable GPIOA clock

    // Configure GPIO pins for SPI (PA5: SCK, PA6: MISO, PA7: MOSI, PA9: CS)
    GPIOA->MODER &= ~(GPIO_MODER_MODER5 | GPIO_MODER_MODER6 | GPIO_MODER_MODER7 | GPIO_MODER_MODER9);
    GPIOA->MODER |= GPIO_MODER_MODER5_1 | GPIO_MODER_MODER6_1 | GPIO_MODER_MODER7_1; // Alternate function mode for SPI
    GPIOA->MODER |= GPIO_MODER_MODER9_0; // PA9 as output for CS

    GPIOA->AFR[0] |= (0x0 << GPIO_AFRL_AFSEL5_Pos) | // AF0 for SCK
                     (0x0 << GPIO_AFRL_AFSEL6_Pos) | // AF0 for MISO
                     (0x0 << GPIO_AFRL_AFSEL7_Pos);  // AF0 for MOSI

    GPIOA->OSPEEDR |= GPIO_OSPEEDR_OSPEEDR5 | GPIO_OSPEEDR_OSPEEDR6 | GPIO_OSPEEDR_OSPEEDR7; // High speed for SPI
    GPIOA->OSPEEDR |= GPIO_OSPEEDR_OSPEEDR9; // High speed for CS

    GPIOA->ODR |= GPIO_ODR_9; // Default CS high
}

void CS_Select(void) {
    GPIOA->ODR &= ~GPIO_ODR_9; // Set CS low
}

void CS_Deselect(void) {
    GPIOA->ODR |= GPIO_ODR_9; // Set CS high
}


void SPI_Init(void) {
    // Enable SPI clock
    RCC->APB2ENR |= RCC_APB2ENR_SPI1EN;
    SPI1->CR2 |= (1<<8)|(1<<9)|(1<<10)|(0<<11);
    // Configure SPI1: Master mode, full-duplex
    SPI1->CR1 |= SPI_CR1_MSTR | SPI_CR1_SSI | SPI_CR1_SSM | SPI_CR1_BR_0; // Baud rate: fPCLK/4, software NSS
    SPI1->CR1 |= SPI_CR1_SPE; // Enable SPI
}

void SPI_Write(uint8_t *data, uint16_t size) {
    CS_Select(); // Activate the slave
    for (uint16_t i = 0; i < size; i++) {
//        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
//        SPI1->DR = data[i]; // Send data

        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        SPI1->DR = 0x025f; // Send data
        //while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        //SPI1->DR = 0x02; // Send data

        while (!(SPI1->SR & SPI_SR_RXNE)); // Wait for RX buffer
        (void)SPI1->DR; // Read and discard to clear RXNE
    }
    CS_Deselect(); // Deactivate the slave
    CS_Select(); // Activate the slave
    for (uint16_t i = 0; i < size; i++) {
//        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
//        SPI1->DR = data[i]; // Send data

        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        SPI1->DR = 0x1454; // Send data
        //while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        //SPI1->DR = 0x02; // Send data

        while (!(SPI1->SR & SPI_SR_RXNE)); // Wait for RX buffer
        (void)SPI1->DR; // Read and discard to clear RXNE
    }
    CS_Deselect(); // Deactivate the slave
    CS_Select(); // Activate the slave
    for (uint16_t i = 0; i < size; i++) {
//        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
//        SPI1->DR = data[i]; // Send data

        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        SPI1->DR = 0xA856; // Send data
        //while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        //SPI1->DR = 0x02; // Send data

        while (!(SPI1->SR & SPI_SR_RXNE)); // Wait for RX buffer
        (void)SPI1->DR; // Read and discard to clear RXNE
    }
    CS_Deselect(); // Deactivate the slave
    CS_Select(); // Activate the slave
    for (uint16_t i = 0; i < size; i++) {
//        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
//        SPI1->DR = data[i]; // Send data

        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        SPI1->DR = 0x3A57; // Send data
        //while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        //SPI1->DR = 0x02; // Send data

        while (!(SPI1->SR & SPI_SR_RXNE)); // Wait for RX buffer
        (void)SPI1->DR; // Read and discard to clear RXNE
    }
    CS_Deselect(); // Deactivate the slave
}


void cmd_spi_write(int argc, char *argv[]) {
    if (argc < 3) {
        printf("\nInvalid command: WRITE requires number of bytes and data\n");
        return;
    }

    // Parse the number of bytes to send
    int num_bytes = atoi(argv[1]);
    if (num_bytes <= 0 || argc != (num_bytes + 2)) {
        printf("\nInvalid command: Incorrect number of data arguments\n");
        return;
    }

    uint8_t data[num_bytes];
    for (int i = 0; i < num_bytes; i++) {
        char *endptr;
        data[i] = (uint8_t)strtol(argv[i + 2], &endptr, 16); // Convert each byte to hex
        if (*endptr != '\0') { // Check for invalid input
            printf("\nInvalid data: %s is not a valid hex value\n", argv[i + 2]);
            return;
        }
    }

    // Perform SPI write operation
    SPI_Write(data, num_bytes);

    printf("\nSPI Write Completed: Sent %d bytes\n", num_bytes);
}

void SPI_Read(uint8_t *buffer, uint16_t size, uint8_t *dummy_bytes) {
    CS_Select(); // Activate the slave
    for (uint16_t i = 0; i < size; i++) {
        // Use the dummy byte specified by the user
        while (!(SPI1->SR & SPI_SR_TXE)); // Wait until TX buffer is empty
        SPI1->DR = dummy_bytes[i]; // Send the dummy byte from the user

        while (!(SPI1->SR & SPI_SR_RXNE)); // Wait until RX buffer is full
        buffer[i] = SPI1->DR; // Read data
    }
    CS_Deselect(); // Deactivate the slave
}
void cmd_spi_read(int argc, char *argv[]) {
    if (argc < 2) {
        printf("\nInvalid command: READ requires number of bytes to read\n");
        return;
    }

    // Parse the number of bytes to read
    int num_bytes = atoi(argv[1]);
    if (num_bytes <= 0) {
        printf("\nInvalid number of bytes to read\n");
        return;
    }

    if (argc != num_bytes + 2) {
        printf("\nInvalid number of dummy bytes specified\n");
        return;
    }

    // Parse the dummy bytes from user input
    uint8_t dummy_bytes[num_bytes];
    for (int i = 0; i < num_bytes; i++) {
        dummy_bytes[i] = (uint8_t) strtol(argv[i + 2], NULL, 16); // Convert to hex
    }

    uint8_t buffer[num_bytes];
    SPI_Read(buffer, num_bytes, dummy_bytes);

    // Display the read data
    printf("\nSPI Read Completed: Received %d bytes\n", num_bytes);
    for (int i = 0; i < num_bytes; i++) {
        printf("%02X ", buffer[i]);
    }
    printf("\n");
}



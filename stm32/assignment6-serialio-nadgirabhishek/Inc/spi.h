/*
 * spi.h
 *
 *  Created on: Nov 27, 2024
 *      Author: nadgi
 */

#ifndef SPI_H_
#define SPI_H_


#include "global.h"

#include "stm32f0xx.h"
#include <stdio.h>
#include <stdlib.h>

// GPIO Pin definitions
#define SPI2_CS_PIN (1U << 12) // GPIO_PIN_12
#define SPI2_CS_PORT GPIOB

// Function prototypes
void SPI_Init(void);
void SPI_Write(uint8_t *data, uint16_t size);
uint8_t SPI_Read(uint8_t addr);
void cmd_spi_write(int argc, char *argv[]);
void cmd_spi_read(int argc, char *argv[]);
#endif /* SPI_H_ */



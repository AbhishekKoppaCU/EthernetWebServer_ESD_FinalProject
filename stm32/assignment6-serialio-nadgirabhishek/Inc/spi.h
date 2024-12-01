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
void SPI_WriteByte(uint8_t data);
void SPI_Init(void);
void SPI_Write(uint8_t *data, uint16_t size);
uint8_t SPI_Read(uint8_t addr);
void spi_buffer_read(int num_bytes,uint16_t start_address,uint8_t *data_ptr);
void spi_buffer_write(int num_bytes,uint16_t start_address,uint8_t *data_ptr);
void spi_control_write(int reg_bank,uint8_t addr,uint8_t data);
uint8_t SPI_ReadByte(void);
uint16_t phy_spi_read(uint8_t addr);


uint8_t eth_spi_read(uint8_t addr, uint8_t bank);
uint8_t mac_spi_read(uint8_t addr, uint8_t bank);
//uint8_t mac_spi_read(uint8_t addr, uint8_t bank);
void phy_spi_write(uint8_t addr, uint8_t data);
void busy_wait(void);
void enc_reset(void);

#endif /* SPI_H_ */



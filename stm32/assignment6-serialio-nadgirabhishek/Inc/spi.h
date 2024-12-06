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


#define RX_BUFFER_START 0x0800
#define RX_BUFFER_END   0x1FFF
#define TX_BUFFER_START 0x0000
#define TX_BUFFER_END   0x07FF
// GPIO Pin definitions
#define SPI2_CS_PIN (1U << 12) // GPIO_PIN_12
#define SPI2_CS_PORT GPIOB

#include "stm32f0xx.h"
#include <stdio.h>
#include <stdlib.h>
#include "spi.h"
#define SPI2_CS_PIN    (1U << 12) // GPIO_PIN_12 (CS)
#define SPI2_SCK_PIN   (1U << 13) // GPIO_PIN_13 (SCK)
#define SPI2_MISO_PIN  (1U << 14) // GPIO_PIN_14 (MISO)
#define SPI2_MOSI_PIN  (1U << 15) // GPIO_PIN_15 (MOSI)

//#define DELAY_SHORT() for (volatile int i = 0; i < 100; i++) { __asm__("nop"); }

#define SPI2_CS_PORT   GPIOB
#define SPI2_SCK_PORT  GPIOB
#define SPI2_MISO_PORT GPIOB
#define SPI2_MOSI_PORT GPIOB

void SPI_Init(void);
void SPI_WriteByte(uint8_t data);
void spi_set_autoinc(void);
void select_reg_bank(uint8_t bank);
void spi_control_write(int reg_bank, uint8_t addr, uint8_t data);
void buffer_init(uint16_t start_address, uint16_t end_address);
void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr);
uint8_t SPI_ReadByte(void);
uint16_t spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr);
uint8_t mac_spi_read(uint8_t addr, uint8_t bank);
void busy_wait(void);
uint16_t phy_spi_read(uint8_t addr);
void phy_spi_write(uint8_t addr, uint16_t data);
uint8_t eth_spi_read(uint8_t addr, uint8_t bank);
void enc_reset(void);
void bit_set(uint8_t addr, uint8_t mask);
void bit_clear(uint8_t addr, uint8_t mask);
void enc_init(const uint8_t *mac);

#endif /* SPI_H_ */


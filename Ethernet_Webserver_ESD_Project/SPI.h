#ifndef SPI_H
#define SPI_H

#include <mcs51/8051.h>
#include <stdio.h>
#include <stdlib.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

#include <stdint.h>

#include "Eth.h"


//MASK defines
#define ENC_OPCODE_MASK 5
#define LED_CONFIG_MASK 8

//Opcode defines
#define ENC_READ_CONTROL_REG_OPCODE     0x0 << ENC_OPCODE_MASK
#define ENC_WRITE_CONTROL_REG_OPCODE    0x2 << ENC_OPCODE_MASK


//********************************************************
//                  A D D R E S S
//Main registers
#define ENC_ECON1               0x1F

//Sub registers
//Bank2
#define ENC_MICMD               0x12
#define ENC_MIREGADR            0x14
#define ENC_MIWRL               0x16
#define ENC_MIWRH               0x17
#define ENC_MIRDL               0x18
#define ENC_MIRDH               0x19
#define ENC_PHLCON              0x14

//Bank3
#define ENC_MISTAT                  0x0A
//************************************************************
//                      D A T A

#define ENC_REGISTER_BANK_0 0x00
#define ENC_REGISTER_BANK_1 0x01
#define ENC_REGISTER_BANK_2 0x02
#define ENC_REGISTER_BANK_3 0x03

#define SET 1
#define CLEAR 0

#define LED_SLOW_BLINK       0x000B << LED_CONFIG_MASK
#define LED_SLOW_BLINK_MSB   (LED_SLOW_BLINK >> 8) & 0xFF
#define LED_SLOW_BLINK_LSB   LED_SLOW_BLINK & 0xFF

#define LED_FAST_BLINK      0x000A << LED_CONFIG_MASK
#define LED_FAST_BLINK_MSB   (LED_FAST_BLINK >> 8) & 0xFF
#define LED_FAST_BLINK_LSB   LED_FAST_BLINK & 0xFF

#define LED_ON              0x0008 << LED_CONFIG_MASK
#define LED_ON_MSB          (LED_ON >> 8) & 0xFF
#define LED_ON_LSB          LED_ON & 0xFF

#define LED_OFF             0x0009 << LED_CONFIG_MASK

#define SPI_DATA P1_7
#define SPI_CLOCK P1_6
#define SPI_CHIP_SELECT P1_1

#define ENC_RESET P1_0

#define CS_PIN P1_1
#define CS_HIGH CS_PIN = 1
#define CS_LOW CS_PIN = 0
#define SCK P1_6
#define MOSI P1_7
// SPI Bit Masks
#define SPI_ENABLE      (1 << 6)
#define SS_DISABLE     (1 << 5)
#define MASTER_MODE       (1 << 4)
#define SPIF_BIT 0X80
//************************************************************


void configure_SPI(void);
void enc_reset(void);
// SPI Communication Functions
void SPI_send(uint8_t data);
uint8_t SPI_ReadByte(void);

// SPI MAC Register Access Functions
uint8_t mac_spi_read(uint8_t addr, uint8_t bank);
void select_reg_bank(uint8_t bank);

// SPI Buffer Operations
void spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr);
void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr);
void buffer_init(uint16_t start_address, uint16_t size);

//PHY operations
uint16_t phy_spi_read(uint8_t addr);
void phy_spi_write(uint8_t addr, uint16_t data);

//Eth register
uint8_t eth_spi_read(uint8_t addr, uint8_t bank);

// SPI Control Register Write
void spi_control_write(uint8_t bank, uint8_t addr, uint8_t data);

// SPI Auto-Increment Mode
void spi_set_autoinc(void);

void busy_wait(void);

void init_ENC(void);
void init_MAC(void);






#endif // SPI_H



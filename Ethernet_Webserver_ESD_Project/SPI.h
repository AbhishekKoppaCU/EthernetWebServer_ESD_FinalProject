#ifndef SPI_H
#define SPI_H

#include <mcs51/8051.h>
#include <stdio.h>
#include <stdlib.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

#include <stdint.h>


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
//************************************************************



//Prototypes
void configure_SPI(void);
void SPI_send(uint8_t data);
void delay_us(uint16_t us);
void SPI_send_BB(uint8_t data);
void SPI_BB_init(void);
void SPI_receive(void);
void poll_MISTAT_BUSY(void);
uint16_t ENC_PHY_read(uint8_t PHY_reg);






#endif // SPI_H



/*
 * spi.h
 *
 *  Created on: Nov 27, 2024
 *      Author: nadgi
 */

#ifndef SPI_H_
#define SPI_H_


#include "global.h"

// Function prototypes
void IO_Init(void);
void SPI_Init(void);
void SPI_Write(uint8_t *data, uint16_t size);
//void SPI_Read(uint8_t *buffer, uint16_t size);
void CS_Select(void);
void CS_Deselect(void);
void cmd_spi_write(int argc, char *argv[]);
void cmd_spi_read(int argc, char *argv[]);
//uint8_t SPI_ReadByte(uint8_t dummy);
#endif /* SPI_H_ */

/*
 * commands.h
 *
 *  Created on: Nov 12, 2024
 *      Author: nadgi
 */

#ifndef COMMANDS_H
#define COMMANDS_H

#include "global.h"
#include "functions.h"
#include "spi.h"
#include "Eth.h"

void cmd_led(int argc, char *argv[]);
void cmd_echo(int argc, char *argv[]);
void cmd_hexdump(int argc, char *argv[]);

void cmd_spi_write(int argc, char *argv[]);
void cmd_spi_read(int argc, char *argv[]);
void cmd_control_spi_write(int argc, char *argv[]);
void cmd_buffer_spi_write(int argc, char *argv[]);
void cmd_buffer_spi_read(int argc, char *argv[]);
void cmd_mac_spi_read(int argc, char *argv[]);
void cmd_eth_spi_read(int argc, char *argv[]);
void cmd_phy_spi_write(int argc, char *argv[]);
void cmd_phy_spi_read(int argc, char *argv[]);
void cmd_enc_reset(int argc, char *argv[]);

typedef void (*command_handler_t)(int, char *argv[]);

typedef struct {
    const char *name;
    command_handler_t handler;
} command_table_t;

extern const command_table_t commands[];
extern const int num_commands;


#endif // COMMANDS_H

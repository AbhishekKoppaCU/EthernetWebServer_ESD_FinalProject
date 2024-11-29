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

void cmd_led(int argc, char *argv[]);
void cmd_echo(int argc, char *argv[]);
void cmd_hexdump(int argc, char *argv[]);

typedef void (*command_handler_t)(int, char *argv[]);

typedef struct {
    const char *name;
    command_handler_t handler;
} command_table_t;

extern const command_table_t commands[];
extern const int num_commands;


#endif // COMMANDS_H

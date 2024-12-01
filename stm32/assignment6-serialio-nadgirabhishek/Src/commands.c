/*
 * commands.c
 *
 *  Created on: Nov 12, 2024
 *      Author: nadgi
 */

#include "commands.h"

#define ULED_ON_MASK GPIO_BSRR_BS_5     //Defined mask for Used Led ON
#define ULED_OFF_MASK GPIO_BSRR_BR_5   //Defined mask for Used Led ON

/*
 * Command Table to Handle the Commands
 * New commands can be added here.
 *
 */


const command_table_t commands[] = { { "LED", cmd_led }, { "ECHO", cmd_echo }, {
		"HEXDUMP", cmd_hexdump }, { "WRITE", cmd_spi_write }, { "READ",
		cmd_spi_read }, { "WRITECONTROL", cmd_control_spi_write }, {
		"WRITEBUFFER", cmd_buffer_spi_write }, { "READBUFFER",
		cmd_buffer_spi_read }, { "READMAC", cmd_mac_spi_read }, { "READETH",
		cmd_eth_spi_read }, { "WRITEPHY", cmd_phy_spi_write } };

const int num_commands = sizeof(commands) / sizeof(command_table_t);

/*
 * User LED ON
 *
 * Parameters:
 * 	 None.
 *
 * Returns:
 *   None.
 */
void ULED_ON() {
	GPIOA->BSRR |= ULED_ON_MASK;
}
/*
 * User LED off
 *
 * Parameters:
 * 	 None.
 *
 * Returns:
 *   None.
 */
void ULED_OFF() {
	GPIOA->BSRR |= ULED_OFF_MASK;
}
/*
 * Turns On and OFf the led based on COmmand from user.
 *
 * Parameters:
 *   argc    Argument Count
 *   argv    Argument Vector
 *
 * Returns:
 *   None.
 */
void cmd_led(int argc, char *argv[]) {
	if (argc != 2) {
		printf("\nInvalid command: LED requires 'ON' or 'OFF'\n");
		return;
	}
	if (strcasecmp(argv[1], "ON") == 0) {
		ULED_ON();
		printf("\nLED turned ON\n");
	} else if (strcasecmp(argv[1], "OFF") == 0) {
		ULED_OFF();
		printf("\nLED turned OFF\n");
	} else {
		printf("\nInvalid command: LED requires 'ON' or 'OFF'\n");
	}
}
/*
 * Echoes out Input string in Uppar Case
 *
 * Parameters:
 *   argc    Argument Count
 *   argv    Argument Vector
 *
 * Returns:
 *   None.
 */
void cmd_echo(int argc, char *argv[]) {
	printf("\n");
	for (int i = 1; i < argc; i++) {
		printf("%s ", argv[i]);
	}
	printf("\n");
}
/*
 * Based on the command from the user prints DUmps the memory from Start address
 * till expected length.
 *
 * Parameters:
 *   argc    Argument Count
 *   argv    Argument Vector
 *
 * Returns:
 *   None.
 */
void cmd_hexdump(int argc, char *argv[]) {
	if (argc != 3) {
		printf(
				"\nInvalid command: HEXDUMP requires start and stop addresses\n");
		return;
	}

	char *start_address_str = argv[1];
	if (strlen(start_address_str) < 1 || strlen(start_address_str) > 8) {
		printf("\nInvalid address\n");
		return;
	}

	for (int i = 0; i < strlen(start_address_str); i++) {
		if (!((start_address_str[i] >= '0' && start_address_str[i] <= '9')
				|| (start_address_str[i] >= 'A' && start_address_str[i] <= 'F'))) {
			printf("\nInvalid address\n");
			return;
		}
	}
	unsigned int start = (unsigned int) strtol(argv[1], NULL, 16);
	unsigned int length;

	switch (strncmp(argv[2], "0X", 2) == 0) {
	case 1:
		length = (unsigned int) strtol(argv[2], NULL, 16);
		break;
	case 0:
		length = (unsigned int) strtol(argv[2], NULL, 10);
		break;
	}

	if (length == 0 || length >= 640) {
		printf("\nInvalid length\n");
		return;
	}

	printf("\nHexdump from %08X to %08X\n", start, start + length - 1);

	char *buff = (char*) start;
	for (int i = 0; i < length; i++) {
		if ((i % 8) == 0) {
			if (i != 0) {
				printf("\n");
			}
			printf("%08X ", start + i);  // Address with underscores
		}
		printf("%02X ", (unsigned char) buff[i]);
	}

	printf("\n");
}

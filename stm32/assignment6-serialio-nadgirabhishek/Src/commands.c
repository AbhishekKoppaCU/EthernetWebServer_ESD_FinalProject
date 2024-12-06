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
		cmd_eth_spi_read }, { "WRITEPHY", cmd_phy_spi_write }, { "READPHY",
		cmd_phy_spi_read }, { "RESET", cmd_enc_reset },
		{ "INIT", cmd_enc_init }, { "ARP", cmd_arp_send }, { "TCP",
				cmd_tcp_packet_process } };

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

void cmd_spi_write(int argc, char *argv[]) {
	if (argc < 3) {
		printf("\nInvalid command: WRITE requires number of bytes and data\n");
		return;
	}

	int num_bytes = atoi(argv[1]);
	if (num_bytes <= 0 || argc != (num_bytes + 2)) {
		printf("\nInvalid command: Incorrect number of data arguments\n");
		return;
	}

	// Pull CS Low
	GPIOB->ODR &= ~SPI2_CS_PIN;

	// Write each byte
	for (int i = 0; i < num_bytes; i++) {
		char *endptr;
		uint8_t data = (uint8_t) strtol(argv[i + 2], &endptr, 16);
		if (*endptr != '\0') {
			printf("\nInvalid data: %s\n", argv[i + 2]);
			GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
			return;
		}
		SPI_WriteByte(data);
	}

	// Pull CS High
	GPIOB->ODR |= SPI2_CS_PIN;

	printf("\nSPI Write Completed: Sent %d bytes\n", num_bytes);
}

void cmd_control_spi_write(int argc, char *argv[]) {
	if (argc < 3) {
		printf(
				"\nInvalid command: WRITECONTROL requires register bank, address and data\n");
		return;
	}

	int reg_bank = atoi(argv[1]);
	if (reg_bank > 3) {
		printf("\nInvalid Register Bank: Choose between [0, 3]\n");
		return;
	}
	char *endptr;
	uint8_t addr = (uint8_t) strtol(argv[2], &endptr, 16);

	if (*endptr != '\0') {
		printf("\nInvalid address: %s\n", argv[2]);
		//GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
		return;
	}
	uint8_t data = (uint8_t) strtol(argv[3], &endptr, 16);
	if (*endptr != '\0') {
		printf("\nInvalid data: %s\n", argv[3]);
		//GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
		return;
	}

	enc_control_write(reg_bank, addr, data);
	printf(
			"\nSPI Write Completed: Sent %x data to %x address in %dnd register bank\n",
			data, addr, reg_bank);

}

void cmd_buffer_spi_write(int argc, char *argv[]) {
	if (argc < 4) {
		printf(
				"\nInvalid command: WRITEBUFFER requires number of bytes, start address and data\n");
		return;
	}
	int num_bytes = atoi(argv[1]);
	if (num_bytes < 1) {
		printf("\nInvalid number of bytes: %d\n", num_bytes);
		return;
	}
	char *endptr;
	uint16_t start_address = (uint16_t) strtol(argv[2], &endptr, 16);
	if (*endptr != '\0') {
		printf("\nInvalid address: %s\n", argv[2]);
		return;
	}
	if (start_address > 0x1FFF) {
		printf("\nInvalid address: %s\n", argv[2]);
		return;
	}
	uint8_t data_array[num_bytes]; // Array to store data
	for (int i = 0; i < num_bytes; i++) {
		char *endptr;
		data_array[i] = (uint8_t) strtol(argv[i + 3], &endptr, 16);
		if (*endptr != '\0') {
			printf("\nInvalid data: %s\n", argv[i + 3]);
			return;
		}
	}
	enc_buffer_write(num_bytes, start_address, data_array);
	printf(
			"\nSPI BUFFER Write Completed: Sent %d bytes starting address %04X\n",
			num_bytes, start_address);
}

void cmd_buffer_spi_read(int argc, char *argv[]) {
	if (argc < 3) {
		printf(
				"\nInvalid command: Buffer READ requires number of bytes and start address\n");
		//return NULL; // Return NULL to indicate an error
	}

	int num_bytes = atoi(argv[1]); // Parse number of bytes
	if (num_bytes <= 0) {
		printf("\nInvalid number of bytes: Must be greater than 0\n");
		//return NULL; // Return NULL to indicate an error
	}

	char *endptr;
	uint16_t start_address = (uint16_t) strtol(argv[2], &endptr, 16);
	if (*endptr != '\0') {
		printf("\nInvalid address: %s\n", argv[1]);
		//return NULL;
	}
	if (start_address > 0x1FFF) {
		printf("\nInvalid Buffer Address: Choose between [0, 0x1FFF]\n");
		//return NULL; // Return NULL to indicate an error
	}
	uint8_t *data_buffer = (uint8_t*) malloc(num_bytes);
	if (!data_buffer) {
		printf("\nMemory allocation failed\n");
		//return NULL; // Return NULL to indicate an error
	}

	if (num_bytes < 1) {
		printf("\nInvalid number of bytes: %d\n", num_bytes);
		//return NULL;
	}
	enc_buffer_read(num_bytes, start_address, data_buffer);
	printf("\nSPI Read Completed: Address 0x%02X\n", start_address);
	for (int i = 0; i < num_bytes; i++) {
		printf("Data[%d]: 0x%02X\n", i, data_buffer[i]);
	}

	//return data_buffer; // Return the pointer to the data buffer
}

void cmd_spi_read(int argc, char *argv[]) {
	if (argc < 2) {
		printf("\nInvalid command: READ requires address\n");
		return;
	}

	// Parse the address
	char *endptr;
	uint8_t addr = (uint8_t) strtol(argv[1], &endptr, 16);
	if (*endptr != '\0') {
		printf("\nInvalid address: %s\n", argv[1]);
		return;
	}

	// Pull CS Low
	GPIOB->ODR &= ~SPI2_CS_PIN;

	// Send address and read data
	SPI_WriteByte(addr);           // Send the address
	uint8_t data = SPI_ReadByte(); // Read the data

	// Pull CS High
	GPIOB->ODR |= SPI2_CS_PIN;

	// Print the received data
	printf("\nSPI Read Completed: Address 0x%02X, Data 0x%02X\n", addr, data);
}

void cmd_phy_spi_read(int argc, char *argv[]) {
	if (argc < 2) {
		printf("\nInvalid command: PHY Read requires address\n");
		return;
	}

	char *endptr;
	uint8_t addr = (uint8_t) strtol(argv[1], &endptr, 16);

	if (*endptr != '\0') {
		printf("\nInvalid address: %s\n", argv[2]);
		//GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
		return;
	}

	uint16_t data = enc_phy_read(addr);
	printf("\nSPI PHY Read Completed: Address 0x%02X, Data 0x%04X\n", addr,
			data);

}

void cmd_phy_spi_write(int argc, char *argv[]) {
	if (argc < 3) {
		printf("\nInvalid command: PHY WRITE requires address and data\n");
		return;
	}

	char *endptr;
	uint8_t addr = (uint8_t) strtol(argv[1], &endptr, 16);

	if (*endptr != '\0') {
		printf("\nInvalid address: %s\n", argv[2]);
		//GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
		return;
	}

	uint16_t data = (uint16_t) strtol(argv[2], &endptr, 16);
	printf("data = %x\n\r", data);
	if (*endptr != '\0') {
		printf("\nInvalid data: %s\n", argv[3]);
		//GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
		return;
	}

	enc_phy_write(addr, data);

	printf("\nSPI PHY Write Completed: Address 0x%02X, Data 0x%04X\n", addr,
			data);

}

void cmd_eth_spi_read(int argc, char *argv[]) {
	if (argc < 3) {
		printf("\nInvalid command: MAC READ requires reg_bank and address\n");
		return;
	}

	int reg_bank = atoi(argv[1]);
	if (reg_bank > 3) {
		printf("\nInvalid Register Bank: Choose between [0, 3]\n");
		return;
	}

	char *endptr;
	uint8_t addr = (uint8_t) strtol(argv[2], &endptr, 16);
	if (*endptr != '\0') {
		printf("\nInvalid address: %s\n", argv[2]);
		return;
	}

	uint8_t data = enc_eth_read(addr, reg_bank);

	// Print the received data
	printf("\nSPI ETH Read Completed: Address 0x%02X, Data 0x%02X\n", addr,
			data);

}

void cmd_mac_spi_read(int argc, char *argv[]) {
	if (argc < 3) {
		printf("\nInvalid command: MAC READ requires reg_bank and address\n");
		return;
	}

	int reg_bank = atoi(argv[1]);
	if (reg_bank > 3) {
		printf("\nInvalid Register Bank: Choose between [0, 3]\n");
		return;
	}

	char *endptr;
	uint8_t addr = (uint8_t) strtol(argv[2], &endptr, 16);
	if (*endptr != '\0') {
		printf("\nInvalid address: %s\n", argv[2]);
		return;
	}

	uint8_t data = enc_mac_read(addr, reg_bank);

	// Print the received data
	printf("\nSPI MAC Read Completed: Address 0x%02X, Data 0x%02X\n", addr,
			data);
}

void cmd_enc_reset(int argc, char *argv[]) {
	if (argc != 1) {
		printf("\nInvalid command: Reset \n");
		return;
	}

	enc_reset();
	// Print the received data
	printf("\n System Reset");
}

void cmd_enc_init(int argc, char *argv[]) {
	if (argc != 7) {
		printf("\nInvalid command: ENC_INIT requires MAC.\n");
		printf("Usage: ENC_INIT MAC1 MAC2 MAC3 MAC4 MAC5 MAC6\n");
		return;
	}

	// Parse MAC address
	uint8_t mac_address[6];
	for (int i = 0; i < 6; i++) {
		char *endptr;
		mac_address[i] = (uint8_t) strtol(argv[i + 1], &endptr, 16);
		if (*endptr != '\0') {
			printf("\nInvalid MAC address: %s\n", argv[i + 1]);
			return;
		}
	}

	// Initialize ENC28J60
	enc_init(mac_address);

	printf("\nENC28J60 Initialized.\n");
}

void cmd_arp_send(int argc, char *argv[]) {
	if (argc != 1) {
		printf("\nInvalid command: Reset \n");
		return;
	}
	arp_request();
	//arp_request(target_ip);
	// Print the received data
	printf("\n\r ARP Request Sent\n\r");
}

void cmd_tcp_packet_process(int argc, char *argv[]) {
	if (argc != 2) {
		printf("\nInvalid command: packetprocess \n");
		return;
	}
	char *endptr;
	uint16_t addr = (uint16_t) strtol(argv[1], &endptr, 16);
	printf("addr = %x\n\r", addr);
	if (*endptr != '\0') {
		printf("\nInvalid addr: %s\n", argv[1]);
		//GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
		return;
	}
	process_packet_from_buffer(addr);
	//arp_request(target_ip);
	// Print the received data
	printf("\n\r ARP Request Sent\n\r");
}

#include "spi.h"

void SPI_Init(void) {
	// Enable GPIOB clock
	RCC->AHBENR |= RCC_AHBENR_GPIOBEN;

	// Configure CS, SCK, and MOSI as output
	GPIOB->MODER &= ~(GPIO_MODER_MODER12 | GPIO_MODER_MODER13
			| GPIO_MODER_MODER15); // Clear MODER bits
	GPIOB->MODER |= (GPIO_MODER_MODER12_0 | GPIO_MODER_MODER13_0
			| GPIO_MODER_MODER15_0); // Set as output

	// Configure MISO as input
	GPIOB->MODER &= ~GPIO_MODER_MODER14; // Set as input

	// Set all pins to high-speed mode
	GPIOB->OSPEEDR |= (GPIO_OSPEEDR_OSPEEDR12 | GPIO_OSPEEDR_OSPEEDR13
			| GPIO_OSPEEDR_OSPEEDR14 | GPIO_OSPEEDR_OSPEEDR15);

	// Set default states
	GPIOB->ODR |= SPI2_CS_PIN;    // CS High (inactive)
	GPIOB->ODR &= ~SPI2_SCK_PIN;  // SCK Low (idle)
	GPIOB->ODR &= ~SPI2_MOSI_PIN; // MOSI Low (idle)
}

void SPI_WriteByte(uint8_t data) {
	for (int i = 0; i < 8; i++) {
		// Write the MSB to MOSI
		if (data & 0x80) {
			GPIOB->ODR |= SPI2_MOSI_PIN; // Set MOSI High
		} else {
			GPIOB->ODR &= ~SPI2_MOSI_PIN; // Set MOSI Low
		}
		data <<= 1; // Shift to the next bit

		// Toggle SCK to clock the bit
		GPIOB->ODR |= SPI2_SCK_PIN;  // SCK High
		//DELAY_SHORT();               // Small delay
		for (int i = 0; i < 16; i++)
			;
		GPIOB->ODR &= ~SPI2_SCK_PIN; // SCK Low
		//DELAY_SHORT();               // Small delay
		for (int i = 0; i < 16; i++)
			;
	}
	GPIOB->ODR &= ~SPI2_MOSI_PIN; // MOSI Low (idle)
}
void spi_set_autoinc(void) {
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(0x1E);
	uint8_t data = SPI_ReadByte(); // Read the data from the SPI slave
	GPIOB->ODR |= SPI2_CS_PIN;
	data |= (1 << 7); // Set bit 7 of the data to 1
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(0x5E);      // Write ECON2 address
	SPI_WriteByte(data);      // Write the modified data with MSB set
	GPIOB->ODR |= SPI2_CS_PIN;
}
void select_reg_bank(uint8_t bank) {
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(0X1F); // Send the address
	uint8_t data = SPI_ReadByte(); // Read the data
	GPIOB->ODR |= SPI2_CS_PIN;

	// Modify the last two bits of 'data' based on 'bank'
	data &= ~0x03; // Clear the last two bits
	switch (bank) {
	case 0:
		data |= 0x00; // Last two bits: 00
		break;
	case 1:
		data |= 0x01; // Last two bits: 01
		break;
	case 2:
		data |= 0x02; // Last two bits: 10
		break;
	case 3:
		data |= 0x03; // Last two bits: 11
		break;
	default:
		printf("wrong bank");
	}

	for (int i = 0; i < 16; i++)
		; // Delay

	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(0x5F);
	SPI_WriteByte(data); // Send the modified data
	GPIOB->ODR |= SPI2_CS_PIN;
}

void spi_control_write(int reg_bank, uint8_t addr, uint8_t data) {
	uint8_t opcode = 0x40;
	addr = addr + opcode;
	select_reg_bank(reg_bank);
	GPIOB->ODR &= ~SPI2_CS_PIN;
	SPI_WriteByte(addr);
	SPI_WriteByte(data);
	GPIOB->ODR |= SPI2_CS_PIN;
}

void buffer_init(uint16_t start_address, uint16_t end_address) {
	//uint16_t end_address = start_address + size - 1;

	if (start_address > 0x1FFF || end_address > 0x1FFF) {
		printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
				start_address, end_address);
		return;
	}

	// Ensure start and end addresses are even
	start_address &= ~1;  // Align to even address
	//end_address;    // Align to even address

	// Write ERXST (start) and ERXND (end) registers
	spi_control_write(0, 0x00, (uint8_t) (start_address & 0xFF)); // ERDPTL
	spi_control_write(0, 0x01, (uint8_t) (start_address >> 8)); // ERDPTH
	spi_control_write(0, 0x08, (uint8_t) (start_address & 0xFF)); // ERXSTL
	spi_control_write(0, 0x09, (uint8_t) (start_address >> 8)); // ERXSTH
	spi_control_write(0, 0x0A, (uint8_t) (end_address & 0xFF)); // ERXNDL
	spi_control_write(0, 0x0B, (uint8_t) (end_address >> 8)); // ERXNDH
	//spi_control_write(0, 0x0C, (uint8_t) (end_address & 0xFF)); // ERXRDPTL
	//spi_control_write(0, 0x0D, (uint8_t) (end_address >> 8)); // ERXRDPTH
	spi_control_write(0, 0x0C, 0X00); // ERXRDPTL
	spi_control_write(0, 0x0D,0X00); // ERXRDPTH
	printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
			end_address);
}
void tx_buffer_init(int16_t start_address, uint16_t end_address) {
	//uint16_t end_address = start_address + size - 1;

	if (start_address > 0x1FFF || end_address > 0x1FFF) {
		printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
				start_address, end_address);
		return;
	}

	// Ensure start and end addresses are even
	start_address &= ~1;  // Align to even address
	//end_address;    // Align to even address

	// Write ERXST (start) and ERXND (end) registers
	spi_control_write(0, 0x08, (uint8_t) (start_address & 0xFF)); // ERXSTL
	spi_control_write(0, 0x09, (uint8_t) (start_address >> 8)); // ERXSTH
	spi_control_write(0, 0x0A, (uint8_t) (end_address & 0xFF)); // ERXNDL
	spi_control_write(0, 0x0B, (uint8_t) (end_address >> 8)); // ERXNDH

	printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
			end_address);
}

void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr) {
	if (num_bytes < 1) {
		printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
		return;
	}
	if (start_address > 0x1FFF) {
		printf("\n\rInvalid address: %04X\n\r", start_address);
		return;
	}
	if (start_address < TX_BUFFER_START
			|| (start_address + num_bytes) > TX_BUFFER_END) {
		printf("\nInvalid TX Address: Start 0x%04X, Size %d\n", start_address,
				num_bytes);
		return;
	}
	//buffer_init(0000,start_address-2);
	if (num_bytes > 1) {
		spi_set_autoinc();
	}
	uint8_t higher_byte = (uint8_t) ((start_address >> 8) & 0xFF);
	uint8_t lower_byte = (uint8_t) (start_address & 0xFF);

	spi_control_write(0, 0x03, higher_byte); // High byte
	spi_control_write(0, 0x02, lower_byte); //

	uint8_t opcode = 0x7A; // Write buffer memory command
	GPIOB->ODR &= ~SPI2_CS_PIN; // Pull CS Low
	SPI_WriteByte(opcode);
	printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r",
			num_bytes, start_address);
	for (int i = 0; i < num_bytes; i++) {
		printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
		SPI_WriteByte(*data_ptr); // Send data
		data_ptr++;
	}
	GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
}

uint8_t SPI_ReadByte(void) {
	uint8_t received_data = 0;

	for (int i = 0; i < 8; i++) {
		received_data <<= 1; // Make room for the next bit

		// Toggle SCK to clock the bit
		GPIOB->ODR |= SPI2_SCK_PIN;  // SCK High
		//DELAY_SHORT();               // Small delay
		for (int i = 0; i < 16; i++)
			;

		// Read the bit from MISO
		if (GPIOB->IDR & SPI2_MISO_PIN) {
			received_data |= 0x01; // Set the LSB
		}

		GPIOB->ODR &= ~SPI2_SCK_PIN; // SCK Low
		//DELAY_SHORT();               // Small delay
		for (int i = 0; i < 16; i++)
			;
	}

	return received_data;
}

uint16_t spi_buffer_read(int num_bytes, uint16_t start_address,
		uint8_t *data_ptr) {
	if (num_bytes < 1) {
		printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
		return 0;
	}
	if (start_address > 0x1FFF) {
		printf("\n\rInvalid address: %04X\n\r", start_address);
		return 0;
	}

	if (start_address < RX_BUFFER_START
			|| (start_address + num_bytes) > RX_BUFFER_END) {
		printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
				num_bytes);
		return 0;
	}

	if (num_bytes > 1) {
		spi_set_autoinc();
	}
	//buffer_init(start_address,start_address+num_bytes);
	uint8_t higher_byte = (uint8_t) ((start_address >> 8) & 0xFF);
	uint8_t lower_byte = (uint8_t) (start_address & 0xFF);
	spi_control_write(0, 0x01, higher_byte); // ERDPTH
	spi_control_write(0, 0x00, lower_byte); // ERDPTL
	printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r",
			num_bytes, start_address);
	uint8_t opcode = 0x3A; // Read buffer memory command
	GPIOB->ODR &= ~SPI2_CS_PIN; // Pull CS Low
	SPI_WriteByte(opcode);
	for (int i = 0; i < num_bytes; i++) {
		*data_ptr = SPI_ReadByte(); // Read data
		printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
		data_ptr++;
	}
	GPIOB->ODR |= SPI2_CS_PIN; // Pull CS High
	return (uint16_t) num_bytes;
}

uint8_t mac_spi_read(uint8_t addr, uint8_t bank) {
	if (addr > 0x1F) {
		printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
		return 0;
	}

	select_reg_bank(bank);
	// Pull CS Low
	GPIOB->ODR &= ~SPI2_CS_PIN;

	// Send address and read data
	SPI_WriteByte(addr);           // Send the address
	//SPI_ReadByte();
	uint8_t data = SPI_ReadByte(); // Read the data

	// Pull CS High
	GPIOB->ODR |= SPI2_CS_PIN;
	printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);

	return data;
}

void busy_wait(void) {
	uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
	while (data & 0x01) {                 // Wait until BUSY bit clears
		data = mac_spi_read(0x0A, 3);
	}
}
uint16_t phy_spi_read(uint8_t addr) {
	spi_control_write(2, 0x14, addr);
	spi_control_write(2, 0x12, 1);				//MICMD.MIIRD bit set

	busy_wait();

	spi_control_write(2, 0x12, 0);				//MICMD.MIIRD bit cleared

	uint16_t data_LSB = mac_spi_read(0x18, 2);
	uint16_t data_MSB = mac_spi_read(0x19, 2);

	uint16_t data = (data_MSB << 8) + data_LSB;
	printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
	return data;
}

void phy_spi_write(uint8_t addr, uint16_t data) {
	spi_control_write(2, 0x14, addr);
	spi_control_write(2, 0x16, (uint8_t) (data & 0xFF));
	spi_control_write(2, 0x17, (uint8_t) ((data >> 8) & 0xFF));
	printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
}

uint8_t eth_spi_read(uint8_t addr, uint8_t bank) {
	if (addr > 0x1F) {
		printf("\nInvalid address: MAC register address range [0, 0x1F]\n");
	}

	select_reg_bank(bank);
	// Pull CS Low
	GPIOB->ODR &= ~SPI2_CS_PIN;

	// Send address and read data
	SPI_WriteByte(addr);           // Send the address
	//SPI_ReadByte();
	uint8_t data = SPI_ReadByte(); // Read the data

	// Pull CS High
	GPIOB->ODR |= SPI2_CS_PIN;

	return data;
}

void enc_reset(void) {
	GPIOB->ODR &= ~SPI2_CS_PIN;

	SPI_WriteByte(0XFF);

	GPIOB->ODR |= SPI2_CS_PIN;

}

void bit_set(uint8_t addr, uint8_t mask) {
	uint8_t opcode = 0x80 | addr; // BFS opcode
	GPIOB->ODR &= ~SPI2_CS_PIN;   // Pull CS Low
	SPI_WriteByte(opcode);
	SPI_WriteByte(mask);          // Set the specified bits
	GPIOB->ODR |= SPI2_CS_PIN;    // Pull CS High
}

void bit_clear(uint8_t addr, uint8_t mask) {
	uint8_t opcode = 0xA0 | addr; // BFC opcode
	GPIOB->ODR &= ~SPI2_CS_PIN;   // Pull CS Low
	SPI_WriteByte(opcode);
	SPI_WriteByte(mask);          // Clear the specified bits
	GPIOB->ODR |= SPI2_CS_PIN;    // Pull CS High
}

void enc_init(const uint8_t *mac) {
	// Perform a system reset
	enc_reset();

	// Wait for the ENC28J60 to stabilize (poll CLKRDY bit in ESTAT register)
	while (!(mac_spi_read(0x1D, 0) & 0x01))
		; // ESTAT.CLKRDY

	// Split Memory: Reserve RX and TX buffers
	uint16_t rx_start = RX_BUFFER_START;
	uint16_t rx_end = RX_BUFFER_END;

	// Initialize RX Buffer
	buffer_init(rx_start, rx_end);

	// Set RX Read Pointer to Start Address
	//spi_control_write(0, 0x0C, (uint8_t) (rx_start & 0xFF)); // ERXRDPTL
	//spi_control_write(0, 0x0D, (uint8_t) ((rx_start >> 8) & 0xFF)); // ERXRDPTH

	// Enable MAC Receive
	//spi_control_write(2, 0x00, 0x0D); // MACON1: Enable RX (MARXEN), TXPAUS, RXPAUS

	// Configure MACON3 for padding, CRC, and frame length
	spi_control_write(2, 0x02, 0x70); // MACON3: Padding, CRC, and frame length checking enabled37
	spi_control_write(2, 0x03, 0x40); // MACON4: IEEE compliance00

	// Set maximum frame length (1518 bytes for standard Ethernet)
	spi_control_write(2, 0x0A, 0xEE); // MAMXFLL
	spi_control_write(2, 0x0B, 0x05); // MAMXFLH

	// Configure Inter-Packet Gap
	spi_control_write(2, 0x04, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
	spi_control_write(2, 0x06, 0x12); // MAIPGL: Non-back-to-back gap
	spi_control_write(2, 0x07, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)

	// Configure MAC Address (write in reverse order)
	spi_control_write(3, 0x01, mac[4]); // MAADR6
	spi_control_write(3, 0x00, mac[5]); // MAADR5
	spi_control_write(3, 0x03, mac[2]); // MAADR4
	spi_control_write(3, 0x02, mac[3]); // MAADR3
	spi_control_write(3, 0x05, mac[0]); // MAADR2
	spi_control_write(3, 0x04, mac[1]); // MAADR1


	spi_control_write(1, 0x18, 0x00);//unicast filter funcationality register
	uint8_t read_macon3 = mac_spi_read(0x03,2);
	spi_control_write(2, 0x03, (read_macon3|(1<<0)));
	uint8_t read_macon1 = mac_spi_read(0x00,2); //mac enable for reception
	spi_control_write(2, 0x00, (read_macon1|(1<<0)));//mac enable for reception
	phy_spi_write(0x00, 0x0100);

	// Configure PHY LEDs for activity indication
	phy_spi_write(0x14, 0x3422); // PHLCON: LEDA=Link/Activity, LEDB=RX/TX Activity
	spi_control_write(0,0X1F,0X04);// reception enable bit
	printf("\nENC28J60 Initialization Complete.\n");
	printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
			mac[2], mac[3], mac[4], mac[5]);
}

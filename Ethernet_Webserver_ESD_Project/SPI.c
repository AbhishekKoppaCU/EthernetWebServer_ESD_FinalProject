#include "SPI.h"


uint8_t SPI_ReadByte(void)
{
    uint8_t received_data = 0;

    // Send dummy data (0xFF or 0x00 depending on your system) to clock in bits
    SPDAT = 0xFF;

    // Wait for the transmission/reception to complete
    while (!(SPSTA & 0x80)) {
        // Wait for SPIF (bit 7 of SPSTA) to be set
    }

    // Read the received data from SPDAT
    received_data = SPDAT;

    return received_data;
}

void spi_set_autoinc(void)
{
    CS_LOW;                          // Pull CS low to select the ENC28J60

    SPI_send(0x5E);                  // Write ECON2 register address
    SPI_send(0x80);                  // Set the AUTOINC bit

    CS_HIGH;                         // Pull CS high to deselect the ENC28J60
}

void select_reg_bank(uint8_t bank)
{
    // Pull CS low to start the SPI transaction
    CS_LOW;

    // Send the opcode for bank selection (0x5F for ENC28J60)
    SPI_send(0x5F);

    // Send the bank number
    SPI_send(bank);

    // Pull CS high to end the SPI transaction
    CS_HIGH;
}
void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
{
    uint8_t opcode = 0x40; // Write opcode for ENC28J60
    addr = addr + opcode; // Add the opcode to the address

    select_reg_bank(reg_bank); // Function to select the register bank

    // Pull CS low to start the SPI transaction
    CS_LOW;

    // Send the address (with opcode)
    SPI_send(addr);

    // Send the data
    SPI_send(data);

    // Pull CS high to end the SPI transaction
    CS_HIGH;

    // Print the address and data written
    printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
}


void configure_SPI(void)
{
    CS_PIN = 1;
    SPCON = 0x00;
    SPCON |= SS_DISABLE;
    SPCON |= MASTER_MODE;
    SPCON |= SPI_ENABLE;
}


void SPI_send(uint8_t data)
{

    SPDAT = data;           // Config + MSB of data
    //printf("Sending data: %x\n\r", data);
    while (!(SPSTA & 0x80))
    {

    }// Wait until transmission is complete

}

void enc_reset(void)
{
    CS_LOW;                    // Pull CS low to select the ENC28J60
    SPI_send(0xFF);            // Send reset command
    CS_HIGH;                   // Pull CS high to deselect the ENC28J60
}

uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
{
    if (addr > 0x1F) {
        printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
        return 0;
    }

    select_reg_bank(bank);     // Select the appropriate bank

    CS_LOW;                    // Pull CS low to start communication
    SPI_send(addr);            // Send the address
    uint8_t data = SPI_ReadByte(); // Read the data
    CS_HIGH;                   // Pull CS high to end communication

    // Print the address and data read
    printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);

    return data;
}

void phy_spi_write(uint8_t addr, uint16_t data)
{
    spi_control_write(2, 0x14, addr);                      // Write PHY address
    spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
    spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data

    // Print the PHY address and data written
    printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
}

uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
{
    if (addr > 0x1F) {
        printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
        return 0; // Return 0 if address is invalid
    }

    select_reg_bank(bank); // Select the appropriate register bank

    // Pull CS Low
    CS_LOW;

    // Send the address
    SPI_send(addr);

    // Read the data
    uint8_t data = SPI_ReadByte();

    // Pull CS High
    CS_HIGH;

    // Print the address and data read
    printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);

    return data;
}


uint16_t phy_spi_read(uint8_t addr)
{
    spi_control_write(2, 0x14, addr);     // Write PHY address
    spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit

    busy_wait();                          // Wait for the read to complete

    spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit

    uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
    uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data

    uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB

    // Print the PHY address and data read
    printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);

    return data;        // Combine MSB and LSB
}

void busy_wait(void)
{
    uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
    while (data & 0x01)
    {                 // Wait until BUSY bit clears
        data = mac_spi_read(0x0A, 3);
    }
}

void buffer_init(uint16_t start_address, uint16_t size)
{
    if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
        printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
        return;
    }

    // Ensure start and end addresses are even
    uint16_t erxst = start_address & ~1; // Make sure ERXST is even
    uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even

    // Write ERXST
    spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
    spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST

    // Write ERXND
    spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
    spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND

    printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
}


void spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
{
    if (num_bytes < 1) {
        printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
        return;
    }
    if (start_address > 0x1FFF) {
        printf("\n\rInvalid address: %04X\n\r", start_address);
        return;
    }

    if (num_bytes > 1) {
        spi_set_autoinc();
    }

    //buffer_init(start_address, num_bytes);
    uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
    uint8_t lower_byte = (uint8_t)(start_address & 0xFF);

    spi_control_write(0, 0x01, higher_byte); // High byte
    spi_control_write(0, 0x00, lower_byte); // Low byte

    uint8_t opcode = 0x3A;
    CS_LOW; // Pull CS Low
    SPI_send(opcode); // Send opcode

    // Read data and print each byte
    printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
    for (int i = 0; i < num_bytes; i++) {
        *data_ptr = SPI_ReadByte(); // Read data
        printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
        data_ptr++;
    }
    CS_HIGH; // Pull CS High
}


void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
{
    if (num_bytes < 1)
    {
        printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
        return;
    }
    if (start_address > 0x1FFF) {
        printf("\n\rInvalid address: %04X\n\r", start_address);
        return;
    }

    //buffer_init(0x0000, start_address - 1);
    if (num_bytes > 1) {
        spi_set_autoinc();
    }

    uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
    uint8_t lower_byte = (uint8_t)(start_address & 0xFF);

    spi_control_write(0, 0x03, higher_byte); // High byte
    spi_control_write(0, 0x02, lower_byte); // Low byte

    uint8_t opcode = 0x7A;
    CS_LOW; // Pull CS Low
    SPI_send(opcode); // Send opcode

    // Print the address and bytes being written
    printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
    for (int i = 0; i < num_bytes; i++) {
        printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
        SPI_send(*data_ptr); // Send data
        data_ptr++;
    }
    CS_HIGH; // Pull CS High
}

void init_ENC(void)
{
    //Init RX buffer so that the TX buffer is also defined
    enc28j60_init_rx_buffer(0x0000, 0x0010);

}

void init_MAC(void)
{
    //spi_control_write(0x02, 0x00, 0x01); // Write 0x01 to MACON1 (address 0x00 in bank 2)
    spi_control_write(0x02, 0x02, 0x70); // Write 0x30 to MACON3 (address 0x02 in bank 2)
    spi_control_write(0x02, 0x03, 0x40); // Write 0x40 to MACON4 (address 0x02 in bank 2) - DEFER bit
    spi_control_write(0x02, 0x0A, 0xEE); // Write 0xEE to MAMXFLL (low byte, address 0x0A in bank 2)
    spi_control_write(0x02, 0x0B, 0x05); // Write 0x05 to MAMXFLH (high byte, address 0x0B in bank 2)
    spi_control_write(0x02, 0x04, 0x12); // Write 0x15 to MABBIPG (address 0x04 in bank 2)
    spi_control_write(0x02, 0x06, 0x12); // Write 0x12 to MAIPGL (low byte, address 0x06 in bank 2)
    spi_control_write(0x02, 0x07, 0x0C); // Write 0x12 to MAIPGH (low byte, address 0x06 in bank 2)
}




#include "Eth.h"

// Example addresses
uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
uint8_t dest_mac[6] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};  // Target PC MAC address
uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address

// Define ARP packet structure
struct arp_packet {
    uint8_t dest_mac[6];
    uint8_t src_mac[6];
    uint16_t ether_type;
    uint16_t hw_type;
    uint16_t proto_type;
    uint8_t hw_size;
    uint8_t proto_size;
    uint16_t opcode;
    uint8_t sender_mac[6];
    uint8_t sender_ip[4];
    uint8_t target_mac[6];
    uint8_t target_ip[4];
};

// Define Ethernet header
struct ethernet_header {
    uint8_t dest_mac[6];
    uint8_t src_mac[6];
    uint16_t ether_type;
};




void set_mac_address(uint8_t* mac_address)
{
    // Write the MAC address to the MAC Address registers (MAADR6 to MAADR1)
    // The MAC address is 6 bytes long
    //select_reg_bank(3);

    spi_control_write(3, 0x01, 0x02);  // MAADR6
    spi_control_write(3, 0x00, 0x11);  // MAADR5
    spi_control_write(3, 0x03, 0x22);  // MAADR4
    spi_control_write(3, 0x02, 0x33);  // MAADR3
    spi_control_write(3, 0x05, 0x44);  // MAADR2
    spi_control_write(3, 0x04, 0x55);  // MAADR1
    //select_reg_bank(0);
}


void delay_ms(uint16_t ms)
{
    for (volatile uint32_t i = 0; i < ms * 1000; i++)
    {
        // Simple loop for delay; adjust the multiplier based on clock speed
    }
}

void enc28j60_start_transmission(void)
{
    uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
    econ1 |= 0x08; // Set TXRTS (bit 3)
    spi_control_write(0, 0x1F, econ1); // Write back to ECON1
}
void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address)
{
    // Validate the buffer range
    if (start_address >= end_address || end_address > 0x1FFF) {
        printf("Invalid RX buffer range.\n");
        return;
    }
    // Write start address to ERXST (Receive Buffer Start Pointer)
    spi_control_write(0, 0x08, (uint8_t)(start_address & 0xFF)); // ERXSTL (low byte)
    spi_control_write(0, 0x09, (uint8_t)((start_address >> 8) & 0xFF)); // ERXSTH (high byte)

    // Write end address to ERXND (Receive Buffer End Pointer)
    spi_control_write(0, 0x0A, (uint8_t)(end_address & 0xFF)); // ERXNDL (low byte)
    spi_control_write(0, 0x0B, (uint8_t)((end_address >> 8) & 0xFF)); // ERXNDH (high byte)

   // Set ERXRDPT to ERXST (initial pointer for RX read)
    spi_control_write(0, 0x0C, start_address); // ERXRDPTL (low byte)
    spi_control_write(0, 0x0D, start_address); // ERXRDPTH (high byte)


    //Enable RX (set ECON1.RXEN bit)
    //uint8_t econ1 = spi_control_read(3, 0x1F); // ECON1
    //econ1 |= 0x04; // RXEN bit
    //spi_control_write(3, 0x1F, econ1);

    printf("RX buffer initialized: 0x%04X to 0x%04X.\n", start_address, end_address);
}

void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
{
    // Write to ETXST (Transmit Start Pointer)
    spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
    spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte

    // Write to ETXND (Transmit End Pointer)
    spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
    spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
}

bool wait_for_transmission_complete(uint16_t timeout_ms)
{
    uint16_t elapsed = 0;

    while (elapsed < timeout_ms) {
        uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
        if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
            return true;  // Transmission completed
        }

        delay_ms(1);  // Wait 1 ms
        elapsed++;
    }

    return false;  // Timed out
}

bool enc28j60_transmission_successful()
{
    uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
    return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
}
void RX_disable(void)
{
    uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1

    // Clear RXEN bit to 0 to disable RX
    econ1_value &= ~(0x04);

    // Write the new value back to ECON1 register
    spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
}

void RX_enable(void)
{
    uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1

    // Set RXEN bit to 1 to enable RX
    econ1_value |= 0x04;

    // Write the new value back to ECON1 register
    spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
}

void send_arp_request(void)
{

    // Example addresses
    uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
    uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
    uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
    uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
    uint8_t arp_packet[43]; // Minimum ARP packet size for Ethernet

    // Set the first byte to 0x0E
    arp_packet[0] = 0x0E;

    // Ethernet header
    // Set the MAC address
    set_mac_address(source_mac);


    for (int i = 0; i < 6; i++)
    {
        arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
        arp_packet[i + 7] = source_mac[i];  // Source MAC address
    }

    // Ethernet Type: ARP (0x0806)
    arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
    arp_packet[14] = ETH_TYPE_ARP & 0xFF;

    // ARP request fields
    // Hardware type: Ethernet (0x0001)
    arp_packet[15] = 0x00;
    arp_packet[16] = 0x01;

    // Protocol type: IPv4 (0x0800)
    arp_packet[17] = 0x08;
    arp_packet[18] = 0x00;

    // Hardware size (MAC address = 6 bytes)
    arp_packet[19] = 0x06;

    // Protocol size (IPv4 = 4 bytes)
    arp_packet[20] = 0x04;

    // Operation: ARP request (0x0001)
    arp_packet[21] = 0x00;
    arp_packet[22] = 0x01;

    // Sender MAC address
    for (int i = 0; i < 6; i++) {
        arp_packet[23 + i] = source_mac[i];
    }

    // Sender IP address
    for (int i = 0; i < 4; i++) {
        arp_packet[29 + i] = source_ip[i];
    }

    // Target MAC address (0x00 for ARP request)
    for (int i = 0; i < 6; i++) {
        arp_packet[33 + i] = 0x00;
    }

    // Target IP address
    for (int i = 0; i < 4; i++) {
        arp_packet[39 + i] = target_ip[i];
    }


    // Write the ARP packet to the ENC28J60 buffer
    uint16_t frame_size = 44;  // The total length is now exactly 42 bytes (without padding)
    uint16_t start_address = 0x0000;
    if ((start_address + frame_size - 1) > 0x1FFF) {
        printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
        return;
    }

    uint16_t end_address = start_address + frame_size - 1;
    spi_buffer_write(frame_size, start_address, arp_packet);

    // Set transmit pointers
    enc28j60_set_transmit_pointers(start_address, end_address);

    // Start transmission
    RX_enable();
    enc28j60_start_transmission();

    // Wait for transmission to complete
    if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
        // Check if transmission was successful
        if (enc28j60_transmission_successful()) {
            printf("ARP request sent successfully.\n\r");
        } else {
            printf("ARP transmission failed. Check error flags.\n\r");
        }
    } else {
        printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
    }
}

void external_interrupt0_isr(void) __interrupt (0)
{
    uint8_t eir = mac_spi_read(0x1C, 0); // Read EIR register (address 0x1C, bank 0)
    printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
    //if (eir & (1 << 0)) { // RXERIF is bit 0 of EIR
       // printf("RX Error Interrupt occurred!\n\r");
        //}
}


/*
 * trial_webserver.c
 * Created on: Dec 7, 2024
 * Author: nadgi
 */

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "webserver.h"

// Packet buffer and size
#define BUFFER_SIZE 1500
uint8_t buffer[BUFFER_SIZE];

// Definitions and constants
#define IP_PROTO_TCP 0x06
#define ETH_TYPE_ARP 0x0806
#define ETH_TYPE_IP  0x0800
#define TCP_FLAG_SYN 0x02
#define TCP_FLAG_ACK 0x10
#define TCP_FLAG_FIN 0x01
#define TCP_FLAG_PUSH 0x08

// Buffer offsets
#define ETH_DST_MAC 0
#define ETH_SRC_MAC 6
#define ETH_TYPE_H_P 12
#define ETH_TYPE_L_P 13
#define IP_PROTO_P 23
#define IP_SRC_P 26
#define IP_DST_P 30
#define TCP_FLAGS_P 47
#define TCP_SEQ_NUM_P 38
#define TCP_DST_PORT_H_P 36
#define TCP_DST_PORT_L_P 37
#define TCP_SRC_PORT_H_P 34
#define TCP_SRC_PORT_L_P 35
#define TCP_DATA_START_P 54

// Device configurations
// Ethernet header offsets
#define ETH_DST_MAC 0
#define ETH_SRC_MAC 6
#define ETH_TYPE_H_P 12
#define ETH_TYPE_L_P 13

// IP header offsets
#define IP_P 14 // Start of IP header
#define IP_HEADER_LEN 20 // IP header length (without options)
#define IP_CHECKSUM_P 24
#define IP_TOTLEN_H_P 16
#define IP_TOTLEN_L_P 17
#define IP_SRC_P 26
#define IP_DST_P 30

// TCP header offsets
#define TCP_SRC_PORT_H_P 34
#define TCP_SRC_PORT_L_P 35
#define TCP_DST_PORT_H_P 36
#define TCP_DST_PORT_L_P 37
#define TCP_SEQ_H_P 38
#define TCP_SEQ_L_P 39
#define TCP_ACK_H_P 42
#define TCP_ACK_L_P 43
#define TCP_HEADER_LEN_P 46
#define TCP_FLAGS_P 47
#define TCP_CHECKSUM_H_P 50
#define TCP_CHECKSUM_L_P 51
#define TCP_OPTIONS_P 54
#define TCP_WIN_SIZE_H_P 48 // High byte of the TCP Window Size
#define TCP_WIN_SIZE_L_P 49 // Low byte of the TCP Window Size
#define TCP_HEADER_LEN 20
#define ETH_HEADER_LEN 14

// IP protocol constants
//#define IP_PROTO_TCP 6
//#define IP_PROTO_UDP 17


// TCP state definitions
typedef enum {
    LISTEN, SYN_RECEIVED, ESTABLISHED, FIN_WAIT, CLOSED
} TcpState;

TcpState connectionState = LISTEN;

// Function prototypes
uint16_t packetReceive(void);
void makeArpReply(void);
void makeTcpSynAck(void);
void makeHttpResponse(void);
void makeTcpAck(void);
void refreshArp(void);
void trial_arp_request(void);
uint32_t getSystemTick(void);

// Function implementations
uint16_t packetReceive() {
    static uint16_t gNextPacketPtr = RX_BUFFER_START;
    static bool unreleasedPacket = false;
    uint16_t len = 0;

    // Release the last packet if necessary
    if (unreleasedPacket) {
        if (gNextPacketPtr == 0) {
            uint16_t RX_END = RX_BUFFER_END;
            enc_control_write(0, 0x0C, (uint8_t)(RX_END & 0xFF)); // Low byte
            enc_control_write(0, 0x0D, (uint8_t)((RX_END >> 8) & 0xFF)); // High byte
        } else {
            enc_control_write(0, 0x0C, (uint8_t)((gNextPacketPtr - 1) & 0xFF)); // Low byte
            enc_control_write(0, 0x0D, (uint8_t)(((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
        }
        unreleasedPacket = false;
    }

    uint8_t EPKTCNT = enc_eth_read(0x19, 1);
    if (EPKTCNT > 0) {
        enc_control_write(0, 0x00, (uint8_t)(gNextPacketPtr & 0xFF)); // Low byte
        enc_control_write(0, 0x01, (uint8_t)((gNextPacketPtr >> 8) & 0xFF)); // High byte

        typedef struct {
            uint16_t nextPacket;
            uint16_t byteCount;
            uint16_t status;
        } PacketHeader;

        PacketHeader header;
        enc_buffer_read(sizeof(PacketHeader), gNextPacketPtr, (uint8_t*)&header);

        uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
        gNextPacketPtr = header.nextPacket;

        len = header.byteCount - 4; // Exclude CRC
        if (len > BUFFER_SIZE - 1) len = BUFFER_SIZE - 1;

        if ((header.status & 0x80) == 0) len = 0; // Invalid packet
        else enc_buffer_read(len, start, buffer);

        buffer[len] = 0; // Null-terminate
        unreleasedPacket = true;

        uint8_t ECON2 = enc_eth_read(0x1E, 0);
        enc_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
    }

    return len;
}
/*
void makeArpReply() {
	printf("arpreply\n\r");
    // Adjust buffer starting at index 1 for the correct shift
    memmove(&buffer[1], &buffer[0], 42);
    // Set the 0th value to 0x0E
    buffer[0] = 0x0E;
    memcpy(&buffer[1+ETH_DST_MAC], &buffer[1+ETH_SRC_MAC], 6);
    memcpy(&buffer[1+ETH_SRC_MAC], device_mac, 6);
    memcpy(&buffer[1+28], &buffer[1+38], 4);  // Copy sender IP to target IP
    memcpy(&buffer[1+32], &buffer[1+22], 10); // Copy sender MAC and IP
    buffer[1+21] = 0x02; // ARP reply opcode
    transmit_tcp_packet(buffer, 1+42);
}

*/
/*
void makeArpReply() {
    printf("arpreply\n\r");// Move existing packet data to make room for ARP adjustments
    memmove(&buffer[1], &buffer[0], 42);// Set Ethernet frame type
    buffer[0] = 0x0E; // Custom header or placeholder value, as required // Set MAC addresses: swap source and destination
    memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC = Sender MAC
    memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);              // Source MAC = Device MAC// Fill ARP header fields
    buffer[1 + 21] = 0x02; // ARP reply opcode// Set sender hardware and protocol addresses
    memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = Device MAC
    memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = Device I    // Set target hardware and protocol addresses
    memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Original Sender MAC
    memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Original Sender IP    // Send ARP reply (size: 43 bytes)
    transmit_tcp_packet(buffer, 1 + 42);
}
*/
void makeArpReply() {
	printf("trialarpreply\n\r");
	// Adjust buffer starting at index 1 for the correct shift
    memmove(&buffer[1], &buffer[0], 42);

    // Set the 0th value to 0x0E
    buffer[0] = 0x0E;

    // Copy sender MAC to destination MAC in the shifted buffer
    memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC

    // Set source MAC to device MAC
    memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6); // Source MAC

    // Set ARP reply opcode
    buffer[1 + 21] = 0x02; // ARP Reply opcode

    // Copy the target MAC and IP (from the request) to the appropriate fields
    memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Sender MAC from request
    memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Sender IP from request

    // Set sender MAC to device MAC and sender IP to device IP
    memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = device MAC
    memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = device IP

    // Send ARP reply with new size of 43 bytes
    transmit_tcp_packet(buffer, 43);
}
/*
void makeTcpSynAck() {
	printf("tcpsynack\n\r");
    memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
    // Set the 0th value to 0x0E
    buffer[0] = 0x0E;
    memcpy(&buffer[1+ETH_DST_MAC], &buffer[1+ETH_SRC_MAC], 6);
    memcpy(&buffer[1+ETH_SRC_MAC], device_mac, 6);
    memcpy(&buffer[1+IP_DST_P], &buffer[1+IP_SRC_P], 4);
    memcpy(&buffer[1+IP_SRC_P], device_ip, 4);

    uint16_t srcPort = (buffer[1+TCP_SRC_PORT_H_P] << 8) | buffer[1+TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1+TCP_DST_PORT_H_P] << 8) | buffer[1+TCP_DST_PORT_L_P];
    buffer[1+TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1+TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1+TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1+TCP_DST_PORT_L_P] = srcPort & 0xFF;

    uint32_t clientSeqNum = (buffer[1+TCP_SEQ_NUM_P] << 24) | (buffer[1+TCP_SEQ_NUM_P + 1] << 16) |
                            (buffer[1+TCP_SEQ_NUM_P + 2] << 8) | buffer[1+TCP_SEQ_NUM_P + 3];
    uint32_t serverSeqNum = 1000;
    uint32_t ackNum = clientSeqNum + 1;

    memcpy(&buffer[1+TCP_SEQ_NUM_P], &serverSeqNum, 4);
    memcpy(&buffer[1+TCP_SEQ_NUM_P + 4], &ackNum, 4);

    buffer[1+TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
    transmit_tcp_packet(buffer, 1+TCP_DATA_START_P);
    connectionState = SYN_RECEIVED;
}*/
void calculateIPChecksum(uint8_t *buffer) {
    // Reset the checksum field
    buffer[IP_CHECKSUM_P] = 0;
    buffer[IP_CHECKSUM_P + 1] = 0;

    // Calculate checksum for a fixed IP header length (20 bytes)
    uint16_t length = IP_HEADER_LEN;
    uint32_t sum = 0;

    // Sum the 16-bit words in the header
    for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
        uint16_t word = (buffer[i] << 8) | buffer[i + 1];
        sum += word;
    }

    // Add carry bits until the sum fits in 16 bits
    while (sum >> 16) {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }

    // Compute one's complement and store it in the checksum field
    uint16_t checksum = ~((uint16_t)sum);
    buffer[IP_CHECKSUM_P] = (checksum >> 8) & 0xFF;
    buffer[IP_CHECKSUM_P + 1] = checksum & 0xFF;
}

void calculateTcpChecksum(uint8_t *buffer) {
    // Reset the checksum field
    buffer[TCP_CHECKSUM_H_P] = 0;
    buffer[TCP_CHECKSUM_L_P] = 0;

    // Extract TCP length (Total Length - IP Header Length)
    uint16_t tcpLength = (((buffer[IP_TOTLEN_H_P] << 8) | buffer[IP_TOTLEN_L_P]) - IP_HEADER_LEN);
    uint32_t sum = 0;

    // Pseudo-header: Source IP
    for (uint8_t i = 0; i < 4; i++) {
        sum += (buffer[IP_SRC_P + i] << 8) | buffer[IP_SRC_P + i + 1];
        i++;
    }

    // Pseudo-header: Destination IP
    for (uint8_t i = 0; i < 4; i++) {
        sum += (buffer[IP_DST_P + i] << 8) | buffer[IP_DST_P + i + 1];
        i++;
    }

    // Pseudo-header: Protocol and TCP length
    sum += (uint16_t)IP_PROTO_TCP;
    sum += tcpLength;

    // TCP Header and Payload
    for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
        uint16_t word = (buffer[i] << 8) | buffer[i + 1];
        sum += word;
    }

    // Add carry bits
    while (sum >> 16) {
        sum = (sum & 0xFFFF) + (sum >> 16);
    }

    // Compute one's complement and store in the checksum field
    uint16_t checksum = ~((uint16_t)sum);
    buffer[TCP_CHECKSUM_H_P] = (checksum >> 8) & 0xFF;
    buffer[TCP_CHECKSUM_L_P] = checksum & 0xFF;
}

void makeTcpSynAck() {
    printf("makeTcpSynAck\n\r");

    // Shift buffer for alignment
    memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
    buffer[0] = 0x0E;
    // Ethernet MAC addresses
    memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
    memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);

    // IP source and destination addresses
    memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
    memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);

    // TCP source and destination ports
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8) | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8) | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

    // TCP sequence and acknowledgment numbers
    uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24) |
                            (buffer[1 + TCP_SEQ_H_P + 1] << 16) |
                            (buffer[1 + TCP_SEQ_H_P + 2] << 8) |
                            buffer[1 + TCP_SEQ_H_P + 3];
    uint32_t serverSeqNum = 1000;
    uint32_t ackNum = clientSeqNum + 1;

    buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;

    // IP total length
    uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN;
    buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
    buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;

    // TCP flags, window size, and header length
    buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
    buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
    buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
    buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)

    // IP and TCP checksums
    calculateIPChecksum(&buffer[1]);   // Pass the buffer to calculate the IP checksum
    calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

    // Padding to meet minimum Ethernet size
    // Transmit the packet
    transmit_tcp_packet(buffer, 1 + 54);

    // Update connection state
    connectionState = SYN_RECEIVED;
}



/*
void makeTcpSynAck() {
    printf("tcpsynack\n\r");

    // Shift buffer to accommodate Ethernet frame
    memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
    buffer[0] = 0x0E;
    // Set Ethernet source and destination MAC addresses
    memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Copy received MAC as destination
    memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);               // Set device MAC as source

    // Set IP source and destination addresses
    memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4); // Copy received source IP to destination
    memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);             // Set device IP as source

    // Swap TCP source and destination ports
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8) | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8) | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

    // Set TCP sequence and acknowledgment numbers
    uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_NUM_P] << 24) | (buffer[1 + TCP_SEQ_NUM_P + 1] << 16) |
                            (buffer[1 + TCP_SEQ_NUM_P + 2] << 8) | buffer[1 + TCP_SEQ_NUM_P + 3];
    uint32_t serverSeqNum = 1000; // Device's sequence number
    uint32_t ackNum = clientSeqNum + 1;

    buffer[1 + TCP_SEQ_NUM_P] = (serverSeqNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_NUM_P + 1] = (serverSeqNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_NUM_P + 2] = (serverSeqNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_NUM_P + 3] = serverSeqNum & 0xFF;

    buffer[1 + TCP_SEQ_NUM_P + 4] = (ackNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_NUM_P + 5] = (ackNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_NUM_P + 6] = (ackNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_NUM_P + 7] = ackNum & 0xFF;

    // Set IP header fields
    buffer[1 + 14] = 0x45; // IPv4 and 20-byte header
    buffer[1 + 10] = 0x00; // Identification high byte
    buffer[1 + 11] = 0x2C; // Identification low byte
    buffer[1 + 16] = 0x40; // Don't Fragment
    buffer[1 + 17] = 0x06; // Protocol: TCP
    buffer[1 + 2] = 0x00;  // Total length high byte
    buffer[1 + 3] = TCP_DATA_START_P; // Total length low byte (44 for example)

    // Set TCP header length and flags
    buffer[1 + 46] = 0x60;                    // TCP header length (24 bytes)
    buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK; // SYN + ACK

    // Add MSS option
    buffer[1 + 54] = 0x02; // MSS kind
    buffer[1 + 55] = 0x04; // MSS length
    buffer[1 + 56] = 0x05; // MSS value high byte (1280)
    buffer[1 + 57] = 0x00; // MSS value low byte

    // Calculate and set checksums
    calculateIPChecksum(&buffer[1]);  // IP header checksum
    calculateTcpChecksum(&buffer[1]); // TCP checksum

    // Transmit the SYN-ACK packet
    transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);

    // Update TCP connection state
    connectionState = SYN_RECEIVED;
}

*/


void makeHttpResponse() {
	printf("httpresponse\n\r");
    const char *httpResponse = "HTTP/1.1 200 OK\r\n"
                                "Content-Type: text/html\r\n"
                                "Content-Length: 48\r\n"
                                "\r\n"
                                "<html><body><h1>Hello, World!</h1></body></html>";
    uint16_t responseLen = strlen(httpResponse);
    memcpy(&buffer[TCP_DATA_START_P], httpResponse, responseLen);
    transmit_tcp_packet(buffer, TCP_DATA_START_P + responseLen);
}

void makeTcpAck() {
	printf("tcpack\n\r");
	   memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);

	    // Set the 0th value to 0x0E
	    buffer[0] = 0x0E;
    buffer[1+TCP_FLAGS_P] = TCP_FLAG_ACK;
    transmit_tcp_packet(buffer, 1+TCP_DATA_START_P);
}

void trial_arp_request() {
	printf("refresharp\n\r");
    uint8_t arp_packet[43] = {0x0E};
    memcpy(&arp_packet[1], target_mac, 6);
    memcpy(&arp_packet[7], device_mac, 6);
    arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
    arp_packet[14] = ETH_TYPE_ARP & 0xFF;
    arp_packet[15] = 0x00; arp_packet[16] = 0x01; // Hardware type
    arp_packet[17] = 0x08; arp_packet[18] = 0x00; // Protocol type
    arp_packet[19] = 0x06; // Hardware size
    arp_packet[20] = 0x04; // Protocol size
    arp_packet[21] = 0x00; arp_packet[22] = 0x01; // Operation (request)
    memcpy(&arp_packet[23], device_mac, 6);
    memcpy(&arp_packet[29], device_ip, 4);
    memset(&arp_packet[33], 0, 6);
    memcpy(&arp_packet[39], target_ip, 4);
    transmit_tcp_packet(arp_packet, 43);
}

void refreshArp() {
    static uint32_t lastArpTime = 0; // Last time ARP was refreshed
    uint32_t currentTime = getSystemTick();
    printf("refresh %ld",currentTime);
    // Handle wraparound for system tick
    if (currentTime < lastArpTime) {
        // SysTick has wrapped around
        lastArpTime = currentTime;
    }

    if ((currentTime - lastArpTime) >= 10) { // Replace 10 with your desired interval
        printf("refresh arp\n\r");
        trial_arp_request(); // Trigger ARP request
        lastArpTime = currentTime;
    }
}

void packetLoop() {
    uint16_t plen = packetReceive();

    // Process received packets
    if (plen > 0) {
        uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
        if (ethType == ETH_TYPE_ARP) {
            if (buffer[21] == 0x01) {
                makeArpReply();
            }
            return;
        }

        if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP) {
            uint8_t tcpFlags = buffer[TCP_FLAGS_P];
            switch (connectionState) {
                case LISTEN:
                    printf("listen\n\r");
                    if (tcpFlags & TCP_FLAG_SYN) makeTcpSynAck();
                    break;
                case SYN_RECEIVED:
                    printf("syn received\n\r");
                    if (tcpFlags & TCP_FLAG_ACK) connectionState = ESTABLISHED;
                    break;
                case ESTABLISHED:
                    printf("established\n\r");
                    if (tcpFlags & TCP_FLAG_FIN) {
                        makeTcpAck();
                        connectionState = FIN_WAIT;
                    } else if (plen > TCP_DATA_START_P) {
                        makeHttpResponse();
                    }
                    break;
                case FIN_WAIT:
                    printf("fin wait\n\r");
                    if (tcpFlags & TCP_FLAG_ACK) connectionState = CLOSED;
                    break;
                default:
                    break;
            }
        }
    }

    // Call ARP refresh periodically
    //refreshArp();
}


uint32_t getSystemTick() {
	return tick_counter;
	//return (SysTick->VAL); // Replace with your own system tick logic
}

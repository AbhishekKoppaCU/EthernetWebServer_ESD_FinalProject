/*
 * webserver.c
 *
 *  Created on: Dec 7, 2024
 *      Author: nadgi
 */

#include <stdint.h>
#include <stdbool.h>
// Packet loop function

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "webserver.h"
// Packet buffer
//extern uint8_t buffer[];
/*
// Buffer size and basic definitions
#define IP_PROTO_TCP 0x06
#define ETH_TYPE_ARP 0x0806
#define ETH_TYPE_IP  0x0800
#define TCP_FLAG_SYN 0x02
#define TCP_FLAG_ACK 0x10
#define TCP_FLAG_FIN 0x01
#define TCP_FLAG_PUSH 0x08

// Utility macros
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

// Function prototypes
uint16_t packetReceive(void);
void makeArpReply(void);
void makeTcpSynAck(void);
void makeHttpResponse(void);
void makeTcpAck(void);


// Buffer to hold received packet
#define BUFFER_SIZE 1500
uint8_t buffer[BUFFER_SIZE];

// Function to receive a packet
uint16_t packetReceive() {
    static uint16_t gNextPacketPtr = RX_BUFFER_START;
    static bool unreleasedPacket = false;
    uint16_t len = 0;

    // Release the last packet, if necessary
    if (unreleasedPacket) {
        if (gNextPacketPtr == 0)
        {
            //writeReg(ERXRDPT, RX_BUFFER_END);
        	uint16_t RX_END = RX_BUFFER_END;
        	enc_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
            enc_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
        }
        else
        {
            //writeReg(ERXRDPT, gNextPacketPtr - 1);
        	enc_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
            enc_control_write(0, 0x0D, (uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
         }
        unreleasedPacket = false;
    }
    uint8_t EPKTCNT = enc_eth_read(0x19,1);
    // Check if a packet is available
    if (EPKTCNT > 0) {
        // Set the read pointer to the next packet

    	enc_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
    	enc_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte
    	//writeReg(ERDPT, gNextPacketPtr);

        // Define a structure for the packet header
        typedef struct {
            uint16_t nextPacket;
            uint16_t byteCount;
            uint16_t status;
        } PacketHeader;

        PacketHeader header;

        // Read the packet header
        enc_buffer_read(sizeof(PacketHeader), gNextPacketPtr,(uint8_t *)&header);
        uint16_t start = (gNextPacketPtr+sizeof(PacketHeader));
        // Update the next packet pointer
        gNextPacketPtr = header.nextPacket;

        // Get the length of the packet, subtracting CRC bytes
        len = header.byteCount - 4;

        // Ensure the packet fits in the buffer
        if (len > BUFFER_SIZE - 1)
            len = BUFFER_SIZE - 1;

        // Check the packet's status
        if ((header.status & 0x80) == 0)
            len = 0; // Packet is invalid
        else
        {
        	//gNextPacketPtr=gNextPacketPtr+sizeof(PacketHeader);
        	enc_buffer_read(len,start, buffer); // Read the packet into the buffer
        }
        buffer[len] = 0; // Null-terminate the buffer (for string handling, if needed)
        unreleasedPacket = true;


    	uint8_t ECON2 = enc_eth_read(0x1E, 0); //mac enable for reception
    	enc_control_write(0, 0x1E, (ECON2 | (1 << 6))); //mac enable for reception
        // Decrement the packet counter
        //writeOp(ENC28J60_BIT_FIELD_SET, ECON2, ECON2_PKTDEC);
    }

    return len; // Return the packet length
}

void makeArpReply() {
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

void makeTcpSynAck() {
    memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);

    // Set the 0th value to 0x0E
    buffer[0] = 0x0E;
    memcpy(&buffer[1+ETH_DST_MAC], &buffer[1+ETH_SRC_MAC], 6); // Copy sender MAC to destination
    memcpy(&buffer[1+ETH_SRC_MAC], device_mac, 6);           // Set source MAC to device MAC
    memcpy(&buffer[1+IP_DST_P], &buffer[1+IP_SRC_P], 4);      // Copy sender IP to destination
    memcpy(&buffer[1+IP_SRC_P], device_ip, 4);               // Set source IP to device IP
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8) | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8) | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
    buffer[47]=0x80;
    buffer[1+TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
    buffer[55]=0x02;
    buffer[56]=0x04;
    buffer[57]=0x05;
    buffer[58]=0xb4;
    //enc_buffer_send(buffer, TCP_DATA_START_P); // Adjust length for headers
    transmit_tcp_packet(buffer, 67);
    //transmit_tcp_packet(buffer, 0X45);
}

void makeHttpResponse() {
    const char *httpResponse =
        "HTTP/1.1 200 OK\r\n"
        "Content-Type: text/html\r\n"
        "Content-Length: 48\r\n"
        "\r\n"
        "<html><body><h1>Hello, World!</h1></body></html>";
    uint16_t responseLen = strlen(httpResponse);

    memcpy(&buffer[TCP_DATA_START_P], httpResponse, responseLen);
    //enc_buffer_send(buffer, TCP_DATA_START_P + responseLen);
    transmit_tcp_packet(buffer, TCP_DATA_START_P + responseLen);
}

void makeTcpAck() {
    memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
    // Set the 0th value to 0x0E
    buffer[0] = 0x0E;
    buffer[1+TCP_FLAGS_P] = TCP_FLAG_ACK;
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8) | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8) | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
    buffer[47]=0x80;
    buffer[55]=0x02;
    buffer[56]=0x04;
    buffer[57]=0x05;
    buffer[58]=0xb4;
    //enc_buffer_send(buffer, TCP_DATA_START_P);
    transmit_tcp_packet(buffer,67);
}


void packetLoop() {
    uint16_t plen = packetReceive(); // Receive packet

    if (plen == 0) {
        return; // No packet to process
    }

    uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];

    // Handle ARP packets
    if (ethType == ETH_TYPE_ARP) {
        if (buffer[21] == 0x01) { // ARP Request
            makeArpReply();
        }
        return;
    }

    // Handle IP packets
    if (ethType == ETH_TYPE_IP) {
        if (buffer[IP_PROTO_P] == IP_PROTO_TCP) {
            uint8_t tcpFlags = buffer[TCP_FLAGS_P];
            uint16_t tcpDataStart = TCP_DATA_START_P;

            // Handle SYN (connection initiation)
            if (tcpFlags & TCP_FLAG_SYN) {
                makeTcpSynAck();
                return;
            }

            // Handle ACK (data exchange or HTTP request)
            if (tcpFlags & TCP_FLAG_ACK) {
                if (plen > tcpDataStart) {
                    // Assume it's an HTTP request and respond
                    makeHttpResponse();
                }
                makeTcpAck();
                return;
            }

            // Handle FIN (connection termination)
            if (tcpFlags & TCP_FLAG_FIN) {
                makeTcpAck(); // Acknowledge FIN
                return;
            }
        }
    }
}

*/

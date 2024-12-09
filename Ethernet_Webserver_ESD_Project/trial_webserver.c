#include "trial_webserver.h"


uint32_t prevSeq;
uint32_t prevAck;
#define BUFFER_SIZE 1500
uint8_t buffer[BUFFER_SIZE];
// TCP state definitions
typedef enum {
	LISTEN, SYN_RECEIVED, ESTABLISHED, FIN_WAIT, CLOSED, ACK_SENT
} TcpState;

TcpState connectionState = LISTEN;

// Packet buffer and size
#define BUFFER_SIZE 1500
uint8_t buffer[BUFFER_SIZE];



void makeArpReply()
{
    uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
    uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
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




void makeTcpAck3() {
    uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
    uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
    printf("makeTcpAck\n\r");

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
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
            | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
            | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

    // TCP sequence and acknowledgment numbers
    uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
            | (buffer[1 + TCP_SEQ_H_P + 1] << 16)
            | (buffer[1 + TCP_SEQ_H_P + 2] << 8) | buffer[1 + TCP_SEQ_H_P + 3];
    uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
                | (buffer[1 + TCP_ACK_H_P + 1] << 16)
                | (buffer[1 + TCP_ACK_H_P + 2] << 8) | buffer[1 + TCP_ACK_H_P + 3];
    uint32_t serverSeqNum = clientAckNum;
    uint32_t ackNum = clientSeqNum + 1;
    prevSeq = serverSeqNum;
    prevAck = ackNum;

    // Set sequence and acknowledgment numbers
    buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
    buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;

    // IP total length
    uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN;
    buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
    buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;

    // TCP flags, window size, and header length
    buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
    buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
    buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
    buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)

    // IP and TCP checksums
    calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
    calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

    // Padding to meet minimum Ethernet size
    // Transmit the packet
    transmit_tcp_packet(buffer, 1 + 54);

    // Update connection state
    connectionState = ACK_SENT;
}

void makeTcpAck2() {
    uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
    uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
			uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
	    uint16_t receivedPayloadLength = totalLength1 - 40;
    printf("makeTcpAck\n\r");

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
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
            | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
            | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

    // TCP sequence and acknowledgment numbers
    uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
            | (buffer[1 + TCP_SEQ_H_P + 1] << 16)
            | (buffer[1 + TCP_SEQ_H_P + 2] << 8) | buffer[1 + TCP_SEQ_H_P + 3];
    uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
                | (buffer[1 + TCP_ACK_H_P + 1] << 16)
                | (buffer[1 + TCP_ACK_H_P + 2] << 8) | buffer[1 + TCP_ACK_H_P + 3];
    uint32_t serverSeqNum = clientAckNum;
    uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
    prevSeq = serverSeqNum;
    prevAck = ackNum;

    // Set sequence and acknowledgment numbers
    buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
    buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
    buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;

    // IP total length
    uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN;
    buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
    buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;

    // TCP flags, window size, and header length
    buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
    buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
    buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
    buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)

    // IP and TCP checksums
    calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
    calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

    // Padding to meet minimum Ethernet size
    // Transmit the packet
    transmit_tcp_packet(buffer, 1 + 54);

    // Update connection state
    connectionState = ACK_SENT;
}

void makeTcpSynAck() {
    uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
    uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
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
	uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
			| buffer[1 + TCP_SRC_PORT_L_P];
	uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
			| buffer[1 + TCP_DST_PORT_L_P];
	buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

	// TCP sequence and acknowledgment numbers
	uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
			| (buffer[1 + TCP_SEQ_H_P + 1] << 16)
			| (buffer[1 + TCP_SEQ_H_P + 2] << 8) | buffer[1 + TCP_SEQ_H_P + 3];
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
	calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

	// Padding to meet minimum Ethernet size
	// Transmit the packet
	transmit_tcp_packet(buffer, 1 + 54);

	// Update connection state
	connectionState = SYN_RECEIVED;
}


void makeTcpAck() {
    uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
    uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
	printf("tcpack\n\r");
	memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);

	// Set the 0th value to 0x0E
	buffer[0] = 0x0E;
	buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
	transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
}

void makeTcpFinPshAck() {
    uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
    uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
    uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
    uint8_t target_ip[4] = { 192, 168, 1, 1 };
    printf("makeTcpFinPshAck\n\r");

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
    uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
            | buffer[1 + TCP_SRC_PORT_L_P];
    uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
            | buffer[1 + TCP_DST_PORT_L_P];
    buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
    buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
    buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
    buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;

    // Sequence and acknowledgment numbers
    uint32_t serverSeqNum = prevSeq;
    uint32_t ackNum = prevAck;

    buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
    buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;

    // HTML payload (use payload from `makeHttpResponse`)
    const char *html_payload =
    		"HTTP/1.1 200 OK\r\n"
    		    "Content-Type: text/html\r\n"
    		    "Content-Length: 530\r\n" // Length matches the content
    		    "\r\n"
    		    "<!DOCTYPE html>"
    		    "<html lang='en'>"
    		    "<head>"
    		    "<meta charset='UTF-8'>"
    		    "<meta name='viewport' content='width=device-width, initial-scale=1.0'>"
    		    "<title>Ethernet Web Server</title>"
    		    "<style>"
    		    "body {font-family: Arial, sans-serif; background-color: #f0f0f0; text-align: center; padding: 20px;}"
    		    "h1 {color: #333333;}"
    		    "p {color: #666666;}"
    		    "</style>"
    		    "</head>"
    		    "<body>"
    		    "<h1>ESD FALL 2024</h1>"
    		    "<p>Ethernet based Web Server for Embedded Systems - NADGIR and KOPPA made itttt, lessgoooo!!! This web server showcases the power of microcontrollers and Ethernet communication. By leveraging the AT89C51RC2 microcontroller and the ENC28J60 Ethernet controller, we can serve dynamic web pages and control embedded devices remotely. The server allows seamless communication between hardware and software, enabling real-time data exchange across the network.</p>"
    		    "</body>"
    		    "</html>";

    uint16_t dataLength = strlen(html_payload);

    // IP total length
    uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
    buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
    buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;

    // TCP flags, window size, and header length
    buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
    buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
    buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
    buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)

    // Copy the HTML payload into the buffer
    memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);

    // IP and TCP checksums
    calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
    calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum

    // Transmit the packet
    transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);

    // Update connection state
    connectionState = FIN_WAIT;
}



// Function implementations
uint16_t packetReceive()
{
	static uint16_t gNextPacketPtr = RX_BUFFER_START;
	static bool unreleasedPacket = false;
	uint16_t len = 0;

	// Release the last packet if necessary
	if (unreleasedPacket) {
		if (gNextPacketPtr == 0) {
			uint16_t RX_END = RX_BUFFER_END;
			spi_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
			spi_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
		} else {
			spi_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
			spi_control_write(0, 0x0D,
					(uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
		}
		unreleasedPacket = false;
	}

	uint8_t EPKTCNT = eth_spi_read(0x19, 1);
	if (EPKTCNT > 0) {
		spi_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
		spi_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte

		typedef struct {
			uint16_t nextPacket;
			uint16_t byteCount;
			uint16_t status;
		} PacketHeader;

		PacketHeader header;
		spi_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
				(uint8_t*) &header);

		uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
		gNextPacketPtr = header.nextPacket;

		len = header.byteCount - 4; // Exclude CRC
		if (len > BUFFER_SIZE - 1)
			len = BUFFER_SIZE - 1;

		if ((header.status & 0x80) == 0)
			len = 0; // Invalid packet
		else
			spi_buffer_read(len, start, buffer);

		buffer[len] = 0; // Null-terminate
		unreleasedPacket = true;

		uint8_t ECON2 = mac_spi_read(0x1E, 0);
		spi_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
	}

	return len;
}

void packetLoop(void)
{
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

		if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP)
        {
			uint8_t tcpFlags = buffer[TCP_FLAGS_P];

			// Check for TCP(ACK_FIN)
						if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
							printf("TCP(ACK_FIN) packet detected\n\r");
							makeTcpAck3(); // Send an acknowledgment
							connectionState = CLOSED;
							//enc_init(device_mac);
							return;
						}
						if ((tcpFlags & TCP_FLAG_SYN)) {
													printf("TCP(SYN) packet detected\n\r");
													//makeTcpAck3(); // Send an acknowledgment
													connectionState = LISTEN;
													//enc_init(device_mac);
												}
			switch (connectionState) {
			case LISTEN:
				printf("listen\n\r");
				if (tcpFlags & TCP_FLAG_SYN)
					makeTcpSynAck();
				break;
			case SYN_RECEIVED:
				printf("syn received\n\r");
				if (tcpFlags & TCP_FLAG_ACK)
					connectionState = ESTABLISHED;
				break;
			case ESTABLISHED:
				printf("established\n\r");
				if (tcpFlags & TCP_FLAG_FIN) {
					makeTcpAck();
					connectionState = FIN_WAIT;
				} else if (plen > TCP_DATA_START_P) {
					makeTcpAck2();

				}
				break;
			case FIN_WAIT:
				printf("fin wait\n\r");
				if (tcpFlags & TCP_FLAG_ACK)
					connectionState = CLOSED;
				break;
			case ACK_SENT:
				makeTcpFinPshAck();
				connectionState = CLOSED;
				break;
			default:
				break;
			}
		}
	}

	// Call ARP refresh periodically
	//refreshArp();
}

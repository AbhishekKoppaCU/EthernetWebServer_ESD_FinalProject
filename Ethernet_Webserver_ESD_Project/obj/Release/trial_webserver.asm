;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module trial_webserver
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _makeTcpFinPshAck
	.globl _makeTcpAck
	.globl _makeTcpSynAck
	.globl _makeTcpAck2
	.globl _makeTcpAck3
	.globl _makeArpReply
	.globl _spi_control_write
	.globl _eth_spi_read
	.globl _spi_buffer_read
	.globl _mac_spi_read
	.globl _calculateTcpChecksum
	.globl _calculateIPChecksum
	.globl _transmit_tcp_packet
	.globl _printf
	.globl ___memcpy
	.globl _strlen
	.globl _memmove
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _connectionState
	.globl _target_ip
	.globl _device_ip
	.globl _target_mac
	.globl _device_mac
	.globl _buffer
	.globl _prevAck
	.globl _prevSeq
	.globl _packetReceive
	.globl _packetLoop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_makeTcpAck3_sloc0_1_0:
	.ds 4
_makeTcpAck2_sloc0_1_0:
	.ds 2
_makeTcpAck2_sloc1_1_0:
	.ds 2
_makeTcpAck2_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_prevSeq::
	.ds 4
_prevAck::
	.ds 4
_buffer::
	.ds 1500
_makeTcpFinPshAck_serverSeqNum_10002_136:
	.ds 4
_makeTcpFinPshAck_ackNum_10002_136:
	.ds 4
_packetReceive_gNextPacketPtr_10000_138:
	.ds 2
_packetReceive_unreleasedPacket_10000_138:
	.ds 1
_packetReceive_len_10000_138:
	.ds 2
_packetReceive_header_20002_144:
	.ds 6
_packetReceive_start_20003_145:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_device_mac::
	.ds 6
_target_mac::
	.ds 6
_device_ip::
	.ds 4
_target_ip::
	.ds 4
_connectionState::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'packetReceive'
;------------------------------------------------------------
;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_138'
;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_138'
;len                       Allocated with name '_packetReceive_len_10000_138'
;RX_END                    Allocated with name '_packetReceive_RX_END_30000_140'
;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_142'
;header                    Allocated with name '_packetReceive_header_20002_144'
;start                     Allocated with name '_packetReceive_start_20003_145'
;ECON2                     Allocated with name '_packetReceive_ECON2_20004_146'
;------------------------------------------------------------
;	trial_webserver.c:367: static uint16_t gNextPacketPtr = RX_BUFFER_START;
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:368: static bool unreleasedPacket = false;
	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
	movx	@dptr,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'makeArpReply'
;------------------------------------------------------------
;	trial_webserver.c:24: void makeArpReply()
;	-----------------------------------------
;	 function makeArpReply
;	-----------------------------------------
_makeArpReply:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	trial_webserver.c:26: printf("trialarpreply\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	trial_webserver.c:28: memmove(&buffer[1], &buffer[0], 42);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x2a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	trial_webserver.c:31: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	trial_webserver.c:34: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:37: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6); // Source MAC
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_mac
	movx	@dptr,a
	mov	a,#(_device_mac >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:40: buffer[1 + 21] = 0x02; // ARP Reply opcode
	mov	dptr,#(_buffer + 0x0016)
	mov	a,#0x02
	movx	@dptr,a
;	trial_webserver.c:43: memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Sender MAC from request
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0017)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0017) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0021)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:44: memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Sender IP from request
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001d)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001d) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0027)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:47: memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = device MAC
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_mac
	movx	@dptr,a
	mov	a,#(_device_mac >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0017)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:48: memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = device IP
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_ip
	movx	@dptr,a
	mov	a,#(_device_ip >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001d)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:51: transmit_tcp_packet(buffer, 43);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x2b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
;	trial_webserver.c:52: }
	ljmp	_transmit_tcp_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpAck3'
;------------------------------------------------------------
;sloc0                     Allocated with name '_makeTcpAck3_sloc0_1_0'
;srcPort                   Allocated with name '_makeTcpAck3_srcPort_10001_122'
;dstPort                   Allocated with name '_makeTcpAck3_dstPort_10001_122'
;clientSeqNum              Allocated with name '_makeTcpAck3_clientSeqNum_10002_123'
;clientAckNum              Allocated with name '_makeTcpAck3_clientAckNum_10002_123'
;serverSeqNum              Allocated with name '_makeTcpAck3_serverSeqNum_10002_123'
;ackNum                    Allocated with name '_makeTcpAck3_ackNum_10002_123'
;totalLength               Allocated with name '_makeTcpAck3_totalLength_10003_124'
;------------------------------------------------------------
;	trial_webserver.c:57: void makeTcpAck3() {
;	-----------------------------------------
;	 function makeTcpAck3
;	-----------------------------------------
_makeTcpAck3:
;	trial_webserver.c:58: printf("makeTcpAck\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	trial_webserver.c:61: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	trial_webserver.c:62: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	trial_webserver.c:65: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:66: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_mac
	movx	@dptr,a
	mov	a,#(_device_mac >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:69: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001b)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001b) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:70: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_ip
	movx	@dptr,a
	mov	a,#(_device_ip >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:73: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	trial_webserver.c:75: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	trial_webserver.c:77: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:78: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:79: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	mov	ar5,r6
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:80: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:83: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
	mov	dptr,#(_buffer + 0x0029)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x002a)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
;	trial_webserver.c:86: uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
	mov	dptr,#(_buffer + 0x002d)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#(_buffer + 0x002e)
	movx	a,@dptr
	mov	r1,#0x00
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
	mov	ar0,r3
	mov	a,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
;	trial_webserver.c:90: uint32_t ackNum = clientSeqNum + 1;
	mov	a,#0x01
	add	a, r7
	mov	_makeTcpAck3_sloc0_1_0,a
	clr	a
	addc	a, r6
	mov	(_makeTcpAck3_sloc0_1_0 + 1),a
	clr	a
	addc	a, r5
	mov	(_makeTcpAck3_sloc0_1_0 + 2),a
	clr	a
	addc	a, r4
	mov	(_makeTcpAck3_sloc0_1_0 + 3),a
;	trial_webserver.c:91: prevSeq = serverSeqNum;
	mov	dptr,#_prevSeq
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:92: prevAck = ackNum;
	mov	dptr,#_prevAck
	mov	a,_makeTcpAck3_sloc0_1_0
	movx	@dptr,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_makeTcpAck3_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:95: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	mov	ar7,r3
	mov	dptr,#(_buffer + 0x0027)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:96: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	mov	ar7,r2
	mov	dptr,#(_buffer + 0x0028)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:97: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	mov	ar7,r1
	mov	dptr,#(_buffer + 0x0029)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:98: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,r0
	movx	@dptr,a
;	trial_webserver.c:99: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
	mov	r7,(_makeTcpAck3_sloc0_1_0 + 3)
	mov	dptr,#(_buffer + 0x002b)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:100: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
	mov	r7,(_makeTcpAck3_sloc0_1_0 + 2)
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:101: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
	mov	r7,(_makeTcpAck3_sloc0_1_0 + 1)
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:102: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
	mov	r7,_makeTcpAck3_sloc0_1_0
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:106: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0011)
	clr	a
	movx	@dptr,a
;	trial_webserver.c:107: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
	mov	dptr,#(_buffer + 0x0012)
	mov	a,#0x28
	movx	@dptr,a
;	trial_webserver.c:110: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x10
	movx	@dptr,a
;	trial_webserver.c:111: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	trial_webserver.c:112: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	trial_webserver.c:113: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	trial_webserver.c:116: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateIPChecksum
;	trial_webserver.c:117: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
;	trial_webserver.c:121: transmit_tcp_packet(buffer, 1 + 54);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
	lcall	_transmit_tcp_packet
;	trial_webserver.c:124: connectionState = ACK_SENT;
	mov	dptr,#_connectionState
	mov	a,#0x05
	movx	@dptr,a
;	trial_webserver.c:125: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpAck2'
;------------------------------------------------------------
;sloc0                     Allocated with name '_makeTcpAck2_sloc0_1_0'
;sloc1                     Allocated with name '_makeTcpAck2_sloc1_1_0'
;sloc2                     Allocated with name '_makeTcpAck2_sloc2_1_0'
;totalLength1              Allocated with name '_makeTcpAck2_totalLength1_10000_125'
;receivedPayloadLength     Allocated with name '_makeTcpAck2_receivedPayloadLength_10000_125'
;srcPort                   Allocated with name '_makeTcpAck2_srcPort_10001_126'
;dstPort                   Allocated with name '_makeTcpAck2_dstPort_10001_126'
;clientSeqNum              Allocated with name '_makeTcpAck2_clientSeqNum_10002_127'
;clientAckNum              Allocated with name '_makeTcpAck2_clientAckNum_10002_127'
;serverSeqNum              Allocated with name '_makeTcpAck2_serverSeqNum_10002_127'
;ackNum                    Allocated with name '_makeTcpAck2_ackNum_10002_127'
;totalLength               Allocated with name '_makeTcpAck2_totalLength_10003_128'
;------------------------------------------------------------
;	trial_webserver.c:127: void makeTcpAck2() {
;	-----------------------------------------
;	 function makeTcpAck2
;	-----------------------------------------
_makeTcpAck2:
;	trial_webserver.c:128: uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
	mov	dptr,#(_buffer + 0x0010)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0011)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	trial_webserver.c:129: uint16_t receivedPayloadLength = totalLength1 - 40;
	mov	a,r7
	add	a,#0xd8
	mov	r7,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	_makeTcpAck2_sloc1_1_0,r7
	mov	(_makeTcpAck2_sloc1_1_0 + 1),r6
;	trial_webserver.c:130: printf("makeTcpAck\n\r");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	trial_webserver.c:133: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	trial_webserver.c:134: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	trial_webserver.c:137: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:138: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_mac
	movx	@dptr,a
	mov	a,#(_device_mac >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:141: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001b)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001b) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:142: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_ip
	movx	@dptr,a
	mov	a,#(_device_ip >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:145: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	trial_webserver.c:147: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r1,#0x00
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
;	trial_webserver.c:149: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	mov	ar1,r2
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r1
	movx	@dptr,a
;	trial_webserver.c:150: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:151: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:152: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:155: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
	mov	dptr,#(_buffer + 0x0029)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x002a)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
	mov	_makeTcpAck2_sloc2_1_0,r5
	mov	a,r4
	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
;	trial_webserver.c:158: uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
	mov	dptr,#(_buffer + 0x002d)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	(_makeTcpAck2_sloc0_1_0 + 1),r0
	mov	_makeTcpAck2_sloc0_1_0,r1
	mov	dptr,#(_buffer + 0x002e)
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	mov	a,(_makeTcpAck2_sloc0_1_0 + 1)
	orl	ar1,a
	mov	a,r1
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
;	trial_webserver.c:162: uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
	mov	r2,_makeTcpAck2_sloc1_1_0
	mov	r3,(_makeTcpAck2_sloc1_1_0 + 1)
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,r2
	add	a, _makeTcpAck2_sloc2_1_0
	mov	r2,a
	mov	a,r3
	addc	a, (_makeTcpAck2_sloc2_1_0 + 1)
	mov	r3,a
	mov	a,r4
	addc	a, (_makeTcpAck2_sloc2_1_0 + 2)
	mov	r4,a
	mov	a,r5
	addc	a, (_makeTcpAck2_sloc2_1_0 + 3)
	mov	r5,a
	mov	a,r2
	add	a,#0xff
	mov	_makeTcpAck2_sloc2_1_0,a
	mov	a,r3
	addc	a,#0xff
	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
	mov	a,r4
	addc	a,#0xff
	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
	mov	a,r5
	addc	a,#0xff
	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
;	trial_webserver.c:163: prevSeq = serverSeqNum;
	mov	dptr,#_prevSeq
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:164: prevAck = ackNum;
	mov	dptr,#_prevAck
	mov	a,_makeTcpAck2_sloc2_1_0
	movx	@dptr,a
	mov	a,(_makeTcpAck2_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_makeTcpAck2_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_makeTcpAck2_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:167: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	mov	ar5,r7
	mov	dptr,#(_buffer + 0x0027)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:168: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	mov	ar5,r6
	mov	dptr,#(_buffer + 0x0028)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:169: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	mov	ar5,r1
	mov	dptr,#(_buffer + 0x0029)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:170: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,r0
	movx	@dptr,a
;	trial_webserver.c:171: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
	mov	r7,(_makeTcpAck2_sloc2_1_0 + 3)
	mov	dptr,#(_buffer + 0x002b)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:172: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
	mov	r7,(_makeTcpAck2_sloc2_1_0 + 2)
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:173: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
	mov	r7,(_makeTcpAck2_sloc2_1_0 + 1)
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:174: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
	mov	r2,_makeTcpAck2_sloc2_1_0
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r2
	movx	@dptr,a
;	trial_webserver.c:178: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0011)
	clr	a
	movx	@dptr,a
;	trial_webserver.c:179: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
	mov	dptr,#(_buffer + 0x0012)
	mov	a,#0x28
	movx	@dptr,a
;	trial_webserver.c:182: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x10
	movx	@dptr,a
;	trial_webserver.c:183: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	trial_webserver.c:184: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	trial_webserver.c:185: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	trial_webserver.c:188: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateIPChecksum
;	trial_webserver.c:189: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
;	trial_webserver.c:193: transmit_tcp_packet(buffer, 1 + 54);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
	lcall	_transmit_tcp_packet
;	trial_webserver.c:196: connectionState = ACK_SENT;
	mov	dptr,#_connectionState
	mov	a,#0x05
	movx	@dptr,a
;	trial_webserver.c:197: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpSynAck'
;------------------------------------------------------------
;srcPort                   Allocated with name '_makeTcpSynAck_srcPort_10001_130'
;dstPort                   Allocated with name '_makeTcpSynAck_dstPort_10001_130'
;clientSeqNum              Allocated with name '_makeTcpSynAck_clientSeqNum_10002_131'
;serverSeqNum              Allocated with name '_makeTcpSynAck_serverSeqNum_10002_131'
;ackNum                    Allocated with name '_makeTcpSynAck_ackNum_10002_131'
;totalLength               Allocated with name '_makeTcpSynAck_totalLength_10003_132'
;------------------------------------------------------------
;	trial_webserver.c:199: void makeTcpSynAck() {
;	-----------------------------------------
;	 function makeTcpSynAck
;	-----------------------------------------
_makeTcpSynAck:
;	trial_webserver.c:200: printf("makeTcpSynAck\n\r");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	trial_webserver.c:203: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	trial_webserver.c:204: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	trial_webserver.c:206: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:207: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_mac
	movx	@dptr,a
	mov	a,#(_device_mac >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:210: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001b)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001b) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:211: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_ip
	movx	@dptr,a
	mov	a,#(_device_ip >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:214: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	trial_webserver.c:216: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	trial_webserver.c:218: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:219: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:220: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	mov	ar5,r6
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:221: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:224: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
	mov	dptr,#(_buffer + 0x0029)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x002a)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
;	trial_webserver.c:228: uint32_t ackNum = clientSeqNum + 1;
	inc	r7
	cjne	r7,#0x00,00103$
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r4
00103$:
;	trial_webserver.c:230: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	mov	dptr,#(_buffer + 0x0027)
	clr	a
	movx	@dptr,a
;	trial_webserver.c:231: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	mov	dptr,#(_buffer + 0x0028)
	movx	@dptr,a
;	trial_webserver.c:232: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0029)
	mov	a,#0x03
	movx	@dptr,a
;	trial_webserver.c:233: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,#0xe8
	movx	@dptr,a
;	trial_webserver.c:234: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x002b)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:235: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
	mov	ar3,r5
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:236: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
	mov	ar3,r6
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:237: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:241: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0011)
	clr	a
	movx	@dptr,a
;	trial_webserver.c:242: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
	mov	dptr,#(_buffer + 0x0012)
	mov	a,#0x28
	movx	@dptr,a
;	trial_webserver.c:245: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x12
	movx	@dptr,a
;	trial_webserver.c:246: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	trial_webserver.c:247: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	trial_webserver.c:248: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	trial_webserver.c:251: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateIPChecksum
;	trial_webserver.c:252: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
;	trial_webserver.c:256: transmit_tcp_packet(buffer, 1 + 54);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
	lcall	_transmit_tcp_packet
;	trial_webserver.c:259: connectionState = SYN_RECEIVED;
	mov	dptr,#_connectionState
	mov	a,#0x01
	movx	@dptr,a
;	trial_webserver.c:260: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpAck'
;------------------------------------------------------------
;	trial_webserver.c:263: void makeTcpAck() {
;	-----------------------------------------
;	 function makeTcpAck
;	-----------------------------------------
_makeTcpAck:
;	trial_webserver.c:264: printf("tcpack\n\r");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	trial_webserver.c:265: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	trial_webserver.c:268: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	trial_webserver.c:269: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x10
	movx	@dptr,a
;	trial_webserver.c:270: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,#0x37
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b,a
;	trial_webserver.c:271: }
	ljmp	_transmit_tcp_packet
;------------------------------------------------------------
;Allocation info for local variables in function 'makeTcpFinPshAck'
;------------------------------------------------------------
;srcPort                   Allocated with name '_makeTcpFinPshAck_srcPort_10001_135'
;dstPort                   Allocated with name '_makeTcpFinPshAck_dstPort_10001_135'
;serverSeqNum              Allocated with name '_makeTcpFinPshAck_serverSeqNum_10002_136'
;ackNum                    Allocated with name '_makeTcpFinPshAck_ackNum_10002_136'
;html_payload              Allocated with name '_makeTcpFinPshAck_html_payload_10003_137'
;dataLength                Allocated with name '_makeTcpFinPshAck_dataLength_10003_137'
;totalLength               Allocated with name '_makeTcpFinPshAck_totalLength_10003_137'
;------------------------------------------------------------
;	trial_webserver.c:273: void makeTcpFinPshAck() {
;	-----------------------------------------
;	 function makeTcpFinPshAck
;	-----------------------------------------
_makeTcpFinPshAck:
;	trial_webserver.c:274: printf("makeTcpFinPshAck\n\r");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	trial_webserver.c:277: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
	mov	dptr,#_memmove_PARM_2
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,#0x36
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	_memmove
;	trial_webserver.c:278: buffer[0] = 0x0E;
	mov	dptr,#_buffer
	mov	a,#0x0e
	movx	@dptr,a
;	trial_webserver.c:281: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x0007)
	movx	@dptr,a
	mov	a,#((_buffer + 0x0007) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0001)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:282: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_mac
	movx	@dptr,a
	mov	a,#(_device_mac >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0007)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:285: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_buffer + 0x001b)
	movx	@dptr,a
	mov	a,#((_buffer + 0x001b) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001f)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:286: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_device_ip
	movx	@dptr,a
	mov	a,#(_device_ip >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x001b)
	mov	b,a
	lcall	___memcpy
;	trial_webserver.c:289: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0023)
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_buffer + 0x0024)
	movx	a,@dptr
	mov	r4,#0x00
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	trial_webserver.c:291: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
	mov	dptr,#(_buffer + 0x0025)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x0026)
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	trial_webserver.c:293: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
	mov	ar3,r4
	mov	dptr,#(_buffer + 0x0023)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:294: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
	mov	dptr,#(_buffer + 0x0024)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:295: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
	mov	ar5,r6
	mov	dptr,#(_buffer + 0x0025)
	mov	a,r5
	movx	@dptr,a
;	trial_webserver.c:296: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
	mov	dptr,#(_buffer + 0x0026)
	mov	a,r7
	movx	@dptr,a
;	trial_webserver.c:299: uint32_t serverSeqNum = prevSeq;
	mov	dptr,#_prevSeq
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_136
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:300: uint32_t ackNum = prevAck;
	mov	dptr,#_prevAck
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_136
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:302: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
	mov	ar4,r7
	mov	dptr,#(_buffer + 0x0027)
	mov	a,r4
	movx	@dptr,a
;	trial_webserver.c:303: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_136
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar3,r6
	mov	dptr,#(_buffer + 0x0028)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:304: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
	mov	ar3,r5
	mov	dptr,#(_buffer + 0x0029)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:305: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
	mov	dptr,#(_buffer + 0x002a)
	mov	a,r4
	movx	@dptr,a
;	trial_webserver.c:306: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_136
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#(_buffer + 0x002b)
	movx	@dptr,a
;	trial_webserver.c:307: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
	mov	ar3,r6
	mov	dptr,#(_buffer + 0x002c)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:308: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
	mov	ar3,r5
	mov	dptr,#(_buffer + 0x002d)
	mov	a,r3
	movx	@dptr,a
;	trial_webserver.c:309: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
	mov	dptr,#(_buffer + 0x002e)
	mov	a,r4
	movx	@dptr,a
;	trial_webserver.c:312: const char *html_payload =
;	trial_webserver.c:335: uint16_t dataLength = strlen(html_payload);
	mov	dptr,#___str_4
	mov	b, #0x80
	lcall	_strlen
	mov	r6, dpl
	mov	r7, dph
;	trial_webserver.c:338: uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
	mov	a,#0x28
	add	a, r6
	mov	r4,a
	clr	a
	addc	a, r7
;	trial_webserver.c:339: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
	mov	dptr,#(_buffer + 0x0011)
	movx	@dptr,a
;	trial_webserver.c:340: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
	mov	dptr,#(_buffer + 0x0012)
	mov	a,r4
	movx	@dptr,a
;	trial_webserver.c:343: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
	mov	dptr,#(_buffer + 0x0030)
	mov	a,#0x19
	movx	@dptr,a
;	trial_webserver.c:344: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0031)
	mov	a,#0xff
	movx	@dptr,a
;	trial_webserver.c:345: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
	mov	dptr,#(_buffer + 0x0032)
	movx	@dptr,a
;	trial_webserver.c:346: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
	mov	dptr,#(_buffer + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
;	trial_webserver.c:349: memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);
	mov	dptr,#___memcpy_PARM_2
	mov	a,#___str_4
	movx	@dptr,a
	mov	a,#(___str_4 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_buffer + 0x0037)
	mov	b, #0x00
	push	ar7
	push	ar6
	lcall	___memcpy
;	trial_webserver.c:352: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateIPChecksum
;	trial_webserver.c:353: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
	mov	dptr,#(_buffer + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
	pop	ar6
	pop	ar7
;	trial_webserver.c:356: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);
	mov	a,#0x37
	add	a, r6
	mov	r6,a
	clr	a
	addc	a, r7
	mov	r7,a
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_buffer
	mov	b, #0x00
	lcall	_transmit_tcp_packet
;	trial_webserver.c:359: connectionState = FIN_WAIT;
	mov	dptr,#_connectionState
	mov	a,#0x03
	movx	@dptr,a
;	trial_webserver.c:360: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetReceive'
;------------------------------------------------------------
;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_138'
;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_138'
;len                       Allocated with name '_packetReceive_len_10000_138'
;RX_END                    Allocated with name '_packetReceive_RX_END_30000_140'
;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_142'
;header                    Allocated with name '_packetReceive_header_20002_144'
;start                     Allocated with name '_packetReceive_start_20003_145'
;ECON2                     Allocated with name '_packetReceive_ECON2_20004_146'
;------------------------------------------------------------
;	trial_webserver.c:365: uint16_t packetReceive()
;	-----------------------------------------
;	 function packetReceive
;	-----------------------------------------
_packetReceive:
;	trial_webserver.c:369: uint16_t len = 0;
	mov	dptr,#_packetReceive_len_10000_138
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:372: if (unreleasedPacket) {
	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
	movx	a,@dptr
	jz	00105$
;	trial_webserver.c:373: if (gNextPacketPtr == 0) {
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
;	trial_webserver.c:375: spi_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0xff
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	trial_webserver.c:376: spi_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
	sjmp	00103$
00102$:
;	trial_webserver.c:378: spi_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
	dec	r6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	trial_webserver.c:380: (uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00147$
	dec	r7
00147$:
	mov	ar6,r7
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
00103$:
;	trial_webserver.c:382: unreleasedPacket = false;
	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
	clr	a
	movx	@dptr,a
00105$:
;	trial_webserver.c:385: uint8_t EPKTCNT = eth_spi_read(0x19, 1);
	mov	dptr,#_eth_spi_read_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl, #0x19
	lcall	_eth_spi_read
	mov	a, dpl
;	trial_webserver.c:386: if (EPKTCNT > 0) {
	jnz	00148$
	ljmp	00112$
00148$:
;	trial_webserver.c:387: spi_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_spi_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	trial_webserver.c:388: spi_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	trial_webserver.c:397: spi_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	trial_webserver.c:398: (uint8_t*) &header);
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,#_packetReceive_header_20002_144
	movx	@dptr,a
	mov	a,#(_packetReceive_header_20002_144 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0006
	lcall	_spi_buffer_read
;	trial_webserver.c:400: uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a, r6
	mov	r6,a
	clr	a
	addc	a, r7
	mov	r7,a
	mov	dptr,#_packetReceive_start_20003_145
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:401: gNextPacketPtr = header.nextPacket;
	mov	dptr,#_packetReceive_header_20002_144
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:403: len = header.byteCount - 4; // Exclude CRC
	mov	dptr,#(_packetReceive_header_20002_144 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#0xfc
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_packetReceive_len_10000_138
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	trial_webserver.c:404: if (len > BUFFER_SIZE - 1)
	clr	c
	mov	a,#0xdb
	subb	a,r6
	mov	a,#0x05
	subb	a,r7
	jnc	00107$
;	trial_webserver.c:405: len = BUFFER_SIZE - 1;
	mov	dptr,#_packetReceive_len_10000_138
	mov	a,#0xdb
	movx	@dptr,a
	mov	a,#0x05
	inc	dptr
	movx	@dptr,a
00107$:
;	trial_webserver.c:407: if ((header.status & 0x80) == 0)
	mov	dptr,#(_packetReceive_header_20002_144 + 0x0004)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jb	acc.7,00109$
;	trial_webserver.c:408: len = 0; // Invalid packet
	mov	dptr,#_packetReceive_len_10000_138
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00110$
00109$:
;	trial_webserver.c:410: spi_buffer_read(len, start, buffer);
	mov	dptr,#_packetReceive_len_10000_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_packetReceive_start_20003_145
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,#_buffer
	movx	@dptr,a
	mov	a,#(_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r6
	mov	dph, r7
	lcall	_spi_buffer_read
00110$:
;	trial_webserver.c:412: buffer[len] = 0; // Null-terminate
	mov	dptr,#_packetReceive_len_10000_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a, #_buffer
	mov	dpl,a
	mov	a,r7
	addc	a, #(_buffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	trial_webserver.c:413: unreleasedPacket = true;
	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
	inc	a
	movx	@dptr,a
;	trial_webserver.c:415: uint8_t ECON2 = mac_spi_read(0x1E, 0);
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1e
	lcall	_mac_spi_read
	mov	a, dpl
;	trial_webserver.c:416: spi_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
	orl	a,#0x40
	mov	r7,a
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1e
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
00112$:
;	trial_webserver.c:419: return len;
	mov	dptr,#_packetReceive_len_10000_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	trial_webserver.c:420: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packetLoop'
;------------------------------------------------------------
;plen                      Allocated with name '_packetLoop_plen_10000_148'
;ethType                   Allocated with name '_packetLoop_ethType_20000_149'
;tcpFlags                  Allocated with name '_packetLoop_tcpFlags_30000_152'
;------------------------------------------------------------
;	trial_webserver.c:422: void packetLoop(void)
;	-----------------------------------------
;	 function packetLoop
;	-----------------------------------------
_packetLoop:
;	trial_webserver.c:424: uint16_t plen = packetReceive();
	lcall	_packetReceive
	mov	r6, dpl
	mov	r7, dph
;	trial_webserver.c:427: if (plen > 0) {
	mov	a,r6
	orl	a,r7
	jnz	00219$
	ret
00219$:
;	trial_webserver.c:428: uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
	mov	dptr,#(_buffer + 0x000c)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#(_buffer + 0x000d)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	orl	ar5,a
	mov	a,r2
	orl	ar4,a
;	trial_webserver.c:429: if (ethType == ETH_TYPE_ARP) {
	cjne	r5,#0x06,00104$
	cjne	r4,#0x08,00104$
;	trial_webserver.c:430: if (buffer[21] == 0x01) {
	mov	dptr,#(_buffer + 0x0015)
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x01,00102$
;	trial_webserver.c:431: makeArpReply();
;	trial_webserver.c:433: return;
	ljmp	_makeArpReply
00102$:
	ret
00104$:
;	trial_webserver.c:436: if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP)
	cjne	r5,#0x00,00224$
	cjne	r4,#0x08,00224$
	sjmp	00225$
00224$:
	ret
00225$:
	mov	dptr,#(_buffer + 0x0017)
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x06,00226$
	sjmp	00227$
00226$:
	ret
00227$:
;	trial_webserver.c:438: uint8_t tcpFlags = buffer[TCP_FLAGS_P];
	mov	dptr,#(_buffer + 0x002f)
	movx	a,@dptr
;	trial_webserver.c:441: if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
	mov	r5,a
	jnb	acc.4,00106$
	mov	a,r5
	jnb	acc.0,00106$
;	trial_webserver.c:442: printf("TCP(ACK_FIN) packet detected\n\r");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	trial_webserver.c:443: makeTcpAck3(); // Send an acknowledgment
	lcall	_makeTcpAck3
;	trial_webserver.c:444: connectionState = CLOSED;
	mov	dptr,#_connectionState
	mov	a,#0x04
	movx	@dptr,a
;	trial_webserver.c:446: return;
	ret
00106$:
;	trial_webserver.c:448: if ((tcpFlags & TCP_FLAG_SYN)) {
	mov	a,r5
	jnb	acc.1,00109$
;	trial_webserver.c:449: printf("TCP(SYN) packet detected\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	trial_webserver.c:451: connectionState = LISTEN;
	mov	dptr,#_connectionState
	clr	a
	movx	@dptr,a
00109$:
;	trial_webserver.c:454: switch (connectionState) {
	mov	dptr,#_connectionState
	movx	a,@dptr
	mov  r4,a
	add	a,#0xff - 0x05
	jnc	00231$
	ret
00231$:
	mov	a,r4
	add	a,r4
	add	a,r4
	mov	dptr,#00232$
	jmp	@a+dptr
00232$:
	ljmp	00110$
	ljmp	00113$
	ljmp	00116$
	ljmp	00122$
	ljmp	00133$
	ljmp	00125$
;	trial_webserver.c:455: case LISTEN:
00110$:
;	trial_webserver.c:456: printf("listen\n\r");
	push	ar5
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	trial_webserver.c:457: if (tcpFlags & TCP_FLAG_SYN)
	mov	a,r5
	jb	acc.1,00233$
	ret
00233$:
;	trial_webserver.c:458: makeTcpSynAck();
;	trial_webserver.c:459: break;
	ljmp	_makeTcpSynAck
;	trial_webserver.c:460: case SYN_RECEIVED:
00113$:
;	trial_webserver.c:461: printf("syn received\n\r");
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	trial_webserver.c:462: if (tcpFlags & TCP_FLAG_ACK)
	mov	a,r5
	jnb	acc.4,00133$
;	trial_webserver.c:463: connectionState = ESTABLISHED;
	mov	dptr,#_connectionState
	mov	a,#0x02
	movx	@dptr,a
;	trial_webserver.c:464: break;
;	trial_webserver.c:465: case ESTABLISHED:
	ret
00116$:
;	trial_webserver.c:466: printf("established\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	trial_webserver.c:467: if (tcpFlags & TCP_FLAG_FIN) {
	mov	a,r5
	jnb	acc.0,00120$
;	trial_webserver.c:468: makeTcpAck();
	lcall	_makeTcpAck
;	trial_webserver.c:469: connectionState = FIN_WAIT;
	mov	dptr,#_connectionState
	mov	a,#0x03
	movx	@dptr,a
	ret
00120$:
;	trial_webserver.c:470: } else if (plen > TCP_DATA_START_P) {
	clr	c
	mov	a,#0x36
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00133$
;	trial_webserver.c:471: makeTcpAck2();
;	trial_webserver.c:474: break;
;	trial_webserver.c:475: case FIN_WAIT:
	ljmp	_makeTcpAck2
00122$:
;	trial_webserver.c:476: printf("fin wait\n\r");
	push	ar5
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	trial_webserver.c:477: if (tcpFlags & TCP_FLAG_ACK)
	mov	a,r5
	jnb	acc.4,00133$
;	trial_webserver.c:478: connectionState = CLOSED;
	mov	dptr,#_connectionState
	mov	a,#0x04
	movx	@dptr,a
;	trial_webserver.c:479: break;
;	trial_webserver.c:480: case ACK_SENT:
	ret
00125$:
;	trial_webserver.c:481: makeTcpFinPshAck();
	lcall	_makeTcpFinPshAck
;	trial_webserver.c:482: connectionState = CLOSED;
	mov	dptr,#_connectionState
	mov	a,#0x04
	movx	@dptr,a
;	trial_webserver.c:486: }
00133$:
;	trial_webserver.c:492: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "trialarpreply"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "makeTcpAck"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "makeTcpSynAck"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "tcpack"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "HTTP/1.1 200 OK"
	.db 0x0d
	.db 0x0a
	.ascii "Content-Type: text/html"
	.db 0x0d
	.db 0x0a
	.ascii "Content-Length: 530"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
	.ascii "meta name='viewport' content='width=device-width, initial-sc"
	.ascii "ale=1.0'><title>Ethernet Web Server</title><style>body {font"
	.ascii "-family: Arial, sans-serif; background-color: #f0f0f0; text-"
	.ascii "align: center; padding: 20px;}h1 {color: #333333;}p {color: "
	.ascii "#666666;}</style></head><body><h1>ESD FALL 2024</h1><p>Ether"
	.ascii "net based Web Server for Embedded Systems - NADGIR and KOPPA"
	.ascii " made itttt, lessgoooo!!! This web server showcases the powe"
	.ascii "r of microcontrollers and Ethernet communication. By leverag"
	.ascii "ing the AT89C51RC2 microcontroller and the ENC28J60 Ethernet"
	.ascii " controller, we can serve dynamic web pages and control embe"
	.ascii "dded devices remotely. The server allows seamless communicat"
	.ascii "ion between hardware and software, enabling real-time data e"
	.ascii "xchange across the network.</p></body></html>"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "makeTcpFinPshAck"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "TCP(ACK_FIN) packet detected"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "TCP(SYN) packet detected"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "listen"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "syn received"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "established"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "fin wait"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__device_mac:
	.db #0x02	; 2
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x44	; 68	'D'
	.db #0x55	; 85	'U'
__xinit__target_mac:
	.db #0xf8	; 248
	.db #0x75	; 117	'u'
	.db #0xa4	; 164
	.db #0x8c	; 140
	.db #0x41	; 65	'A'
	.db #0x31	; 49	'1'
__xinit__device_ip:
	.db #0xc0	; 192
	.db #0xa8	; 168
	.db #0x01	; 1
	.db #0x64	; 100	'd'
__xinit__target_ip:
	.db #0xc0	; 192
	.db #0xa8	; 168
	.db #0x01	; 1
	.db #0x01	; 1
__xinit__connectionState:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)

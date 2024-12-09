;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module tcp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wait_for_transmission_complete
	.globl _enc28j60_set_transmit_pointers
	.globl _spi_buffer_write
	.globl _spi_buffer_read
	.globl _free
	.globl _malloc
	.globl _printf
	.globl ___memcpy
	.globl _memset
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
	.globl _transmit_tcp_packet_PARM_2
	.globl _print_hexdump_PARM_2
	.globl _process_tcp_packet_PARM_3
	.globl _process_tcp_packet_PARM_2
	.globl _calculate_checksum_PARM_2
	.globl _calculateIPChecksum
	.globl _calculateTcpChecksum
	.globl _calculate_checksum
	.globl _process_tcp_packet
	.globl _print_hexdump
	.globl _process_packet_from_buffer
	.globl _transmit_tcp_packet
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
_process_tcp_packet_sloc0_1_0:
	.ds 3
_process_packet_from_buffer_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_calculateIPChecksum_sloc0_1_0:
	.ds 2
_calculateIPChecksum_sloc1_1_0:
	.ds 4
	.area	OSEG    (OVR,DATA)
_calculateTcpChecksum_sloc0_1_0:
	.ds 2
_calculateTcpChecksum_sloc1_1_0:
	.ds 2
_calculateTcpChecksum_sloc2_1_0:
	.ds 4
_calculateTcpChecksum_sloc3_1_0:
	.ds 4
_calculateTcpChecksum_sloc4_1_0:
	.ds 4
	.area	OSEG    (OVR,DATA)
_calculate_checksum_sloc0_1_0:
	.ds 2
_calculate_checksum_sloc1_1_0:
	.ds 4
_calculate_checksum_sloc2_1_0:
	.ds 4
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
_calculateIPChecksum_buffer_10000_118:
	.ds 3
_calculateIPChecksum_sum_10001_120:
	.ds 4
_calculateIPChecksum_i_20001_121:
	.ds 2
_calculateTcpChecksum_buffer_10000_125:
	.ds 3
_calculateTcpChecksum_sum_10001_127:
	.ds 4
_calculateTcpChecksum_i_20001_128:
	.ds 1
_calculateTcpChecksum_i_20001_130:
	.ds 1
_calculateTcpChecksum_i_20001_132:
	.ds 2
_calculate_checksum_PARM_2:
	.ds 2
_calculate_checksum_data_10000_136:
	.ds 3
_calculate_checksum_sum_10000_137:
	.ds 4
_calculate_checksum_i_20000_138:
	.ds 2
_process_tcp_packet_PARM_2:
	.ds 2
_process_tcp_packet_PARM_3:
	.ds 3
_process_tcp_packet_packet_10000_141:
	.ds 3
_process_tcp_packet_response_10000_142:
	.ds 1501
_print_hexdump_PARM_2:
	.ds 2
_print_hexdump_data_10000_148:
	.ds 3
_process_packet_from_buffer_start_address_10000_154:
	.ds 2
_process_packet_from_buffer_next_packet_start_10001_157:
	.ds 2
_process_packet_from_buffer_response_size_10001_157:
	.ds 2
_transmit_tcp_packet_PARM_2:
	.ds 2
_transmit_tcp_packet_packet_10000_166:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'calculateIPChecksum'
;------------------------------------------------------------
;buffer                    Allocated with name '_calculateIPChecksum_buffer_10000_118'
;length                    Allocated with name '_calculateIPChecksum_length_10001_120'
;sum                       Allocated with name '_calculateIPChecksum_sum_10001_120'
;i                         Allocated with name '_calculateIPChecksum_i_20001_121'
;word                      Allocated with name '_calculateIPChecksum_word_30001_122'
;checksum                  Allocated with name '_calculateIPChecksum_checksum_10002_124'
;sloc0                     Allocated with name '_calculateIPChecksum_sloc0_1_0'
;sloc1                     Allocated with name '_calculateIPChecksum_sloc1_1_0'
;------------------------------------------------------------
;	tcp.c:11: void calculateIPChecksum(uint8_t *buffer) {
;	-----------------------------------------
;	 function calculateIPChecksum
;	-----------------------------------------
_calculateIPChecksum:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_calculateIPChecksum_buffer_10000_118
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:13: buffer[IP_CHECKSUM_P] = 0;
	mov	dptr,#_calculateIPChecksum_buffer_10000_118
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x18
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	tcp.c:14: buffer[IP_CHECKSUM_P + 1] = 0;
	mov	a,#0x19
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	tcp.c:18: uint32_t sum = 0;
	mov	dptr,#_calculateIPChecksum_sum_10001_120
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	tcp.c:21: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
	mov	dptr,#_calculateIPChecksum_i_20001_121
	mov	a,#0x0e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00106$:
	mov	dptr,#_calculateIPChecksum_i_20001_121
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar1,r3
	mov	ar2,r4
	clr	c
	mov	a,r1
	subb	a,#0x22
	mov	a,r2
	subb	a,#0x00
	jc	00134$
	ljmp	00102$
00134$:
;	tcp.c:22: uint16_t word = (buffer[i] << 8) | buffer[i + 1];
	mov	a,r3
	add	a, r5
	mov	r3,a
	mov	a,r4
	addc	a, r6
	mov	r0,a
	mov	ar4,r7
	mov	dpl,r3
	mov	dph,r0
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	mov	r4,#0x00
	mov	(_calculateIPChecksum_sloc0_1_0 + 1),r3
	mov	_calculateIPChecksum_sloc0_1_0,r4
	mov	a,#0x01
	add	a, r1
	mov	r0,a
	clr	a
	addc	a, r2
	mov	r4,a
	mov	a,r0
	add	a, r5
	mov	r0,a
	mov	a,r4
	addc	a, r6
	mov	r4,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	a,(_calculateIPChecksum_sloc0_1_0 + 1)
	orl	ar4,a
;	tcp.c:23: sum += word;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_calculateIPChecksum_sum_10001_120
	movx	a,@dptr
	mov	_calculateIPChecksum_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_calculateIPChecksum_sum_10001_120
	mov	a,r0
	add	a, _calculateIPChecksum_sloc1_1_0
	movx	@dptr,a
	mov	a,r4
	addc	a, (_calculateIPChecksum_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a, (_calculateIPChecksum_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a, (_calculateIPChecksum_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	tcp.c:21: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
	mov	a,#0x02
	add	a, r1
	mov	r1,a
	clr	a
	addc	a, r2
	mov	r2,a
	mov	dptr,#_calculateIPChecksum_i_20001_121
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00106$
;	tcp.c:27: while (sum >> 16) {
00102$:
	mov	dptr,#_calculateIPChecksum_sum_10001_120
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
	mov	_calculateIPChecksum_sloc1_1_0,r6
	mov	(_calculateIPChecksum_sloc1_1_0 + 1),r7
	clr	a
	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
	mov	a,_calculateIPChecksum_sloc1_1_0
	orl	a,(_calculateIPChecksum_sloc1_1_0 + 1)
	orl	a,(_calculateIPChecksum_sloc1_1_0 + 2)
	orl	a,(_calculateIPChecksum_sloc1_1_0 + 3)
	jz	00104$
;	tcp.c:28: sum = (sum & 0xFFFF) + (sum >> 16);
	mov	ar0,r4
	mov	ar1,r5
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dptr,#_calculateIPChecksum_sum_10001_120
	mov	a,_calculateIPChecksum_sloc1_1_0
	add	a, r0
	movx	@dptr,a
	mov	a,(_calculateIPChecksum_sloc1_1_0 + 1)
	addc	a, r1
	inc	dptr
	movx	@dptr,a
	mov	a,(_calculateIPChecksum_sloc1_1_0 + 2)
	addc	a, r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_calculateIPChecksum_sloc1_1_0 + 3)
	addc	a, r3
	inc	dptr
	movx	@dptr,a
	sjmp	00102$
00104$:
;	tcp.c:32: uint16_t checksum = ~((uint16_t) sum);
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
;	tcp.c:33: buffer[IP_CHECKSUM_P] = (checksum >> 8) & 0xFF;
	mov	dptr,#_calculateIPChecksum_buffer_10000_118
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x18
	add	a, r3
	mov	_calculateIPChecksum_sloc1_1_0,a
	clr	a
	addc	a, r6
	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
	mov	(_calculateIPChecksum_sloc1_1_0 + 2),r7
	mov	ar2,r5
	mov	dpl,_calculateIPChecksum_sloc1_1_0
	mov	dph,(_calculateIPChecksum_sloc1_1_0 + 1)
	mov	b,(_calculateIPChecksum_sloc1_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
;	tcp.c:34: buffer[IP_CHECKSUM_P + 1] = checksum & 0xFF;
	mov	a,#0x19
	add	a, r3
	mov	r3,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	tcp.c:35: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'calculateTcpChecksum'
;------------------------------------------------------------
;buffer                    Allocated with name '_calculateTcpChecksum_buffer_10000_125'
;tcpLength                 Allocated with name '_calculateTcpChecksum_tcpLength_10001_127'
;sum                       Allocated with name '_calculateTcpChecksum_sum_10001_127'
;i                         Allocated with name '_calculateTcpChecksum_i_20001_128'
;i                         Allocated with name '_calculateTcpChecksum_i_20001_130'
;i                         Allocated with name '_calculateTcpChecksum_i_20001_132'
;word                      Allocated with name '_calculateTcpChecksum_word_30001_133'
;checksum                  Allocated with name '_calculateTcpChecksum_checksum_10002_135'
;sloc0                     Allocated with name '_calculateTcpChecksum_sloc0_1_0'
;sloc1                     Allocated with name '_calculateTcpChecksum_sloc1_1_0'
;sloc2                     Allocated with name '_calculateTcpChecksum_sloc2_1_0'
;sloc3                     Allocated with name '_calculateTcpChecksum_sloc3_1_0'
;sloc4                     Allocated with name '_calculateTcpChecksum_sloc4_1_0'
;------------------------------------------------------------
;	tcp.c:37: void calculateTcpChecksum(uint8_t *buffer) {
;	-----------------------------------------
;	 function calculateTcpChecksum
;	-----------------------------------------
_calculateTcpChecksum:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:39: buffer[TCP_CHECKSUM_H_P] = 0;
	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	tcp.c:40: buffer[TCP_CHECKSUM_L_P] = 0;
	mov	a,#0x33
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	tcp.c:43: uint16_t tcpLength = (((buffer[IP_TOTLEN_H_P] << 8) | buffer[IP_TOTLEN_L_P])
	mov	a,#0x10
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	r2,#0x00
	mov	a,#0x11
	add	a, r5
	mov	r0,a
	clr	a
	addc	a, r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r3,#0x00
	orl	ar2,a
	mov	a,r3
	orl	ar4,a
	mov	a,r2
	add	a,#0xec
	mov	r2,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
;	tcp.c:45: uint32_t sum = 0;
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	tcp.c:48: for (uint8_t i = 0; i < 4; i++) {
	mov	dptr,#_calculateTcpChecksum_i_20001_128
	movx	@dptr,a
00108$:
	mov	dptr,#_calculateTcpChecksum_i_20001_128
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x04,00166$
00166$:
	jc	00167$
	ljmp	00101$
00167$:
;	tcp.c:49: sum += (buffer[IP_SRC_P + i] << 8) | buffer[IP_SRC_P + i + 1];
	push	ar2
	push	ar4
	mov	_calculateTcpChecksum_sloc0_1_0,r3
	mov	(_calculateTcpChecksum_sloc0_1_0 + 1),#0x00
	mov	a,#0x1a
	add	a, _calculateTcpChecksum_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a, (_calculateTcpChecksum_sloc0_1_0 + 1)
	mov	r4,a
	mov	a,r2
	add	a, r5
	mov	r2,a
	mov	a,r4
	addc	a, r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),r2
	mov	_calculateTcpChecksum_sloc1_1_0,r4
	mov	a,#0x1b
	add	a, _calculateTcpChecksum_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a, (_calculateTcpChecksum_sloc0_1_0 + 1)
	mov	r1,a
	mov	a,r0
	add	a, r5
	mov	r0,a
	mov	a,r1
	addc	a, r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r4,#0x00
	orl	_calculateTcpChecksum_sloc1_1_0,a
	mov	a,r4
	orl	(_calculateTcpChecksum_sloc1_1_0 + 1),a
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc2_1_0 + 3),a
	mov	r0,_calculateTcpChecksum_sloc1_1_0
	mov	a,(_calculateTcpChecksum_sloc1_1_0 + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r4,a
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	mov	a,r0
	add	a, _calculateTcpChecksum_sloc2_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	tcp.c:50: i++;
	mov	dptr,#_calculateTcpChecksum_i_20001_128
	mov	a,r3
	inc	a
	movx	@dptr,a
;	tcp.c:48: for (uint8_t i = 0; i < 4; i++) {
	movx	a,@dptr
	add	a, #0x01
	movx	@dptr,a
	pop	ar4
	pop	ar2
	ljmp	00108$
00101$:
;	tcp.c:54: for (uint8_t i = 0; i < 4; i++) {
	mov	dptr,#_calculateTcpChecksum_i_20001_130
	clr	a
	movx	@dptr,a
	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00111$:
	mov	dptr,#_calculateTcpChecksum_i_20001_130
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x04,00168$
00168$:
	jc	00169$
	ljmp	00102$
00169$:
;	tcp.c:55: sum += (buffer[IP_DST_P + i] << 8) | buffer[IP_DST_P + i + 1];
	push	ar2
	push	ar4
	mov	_calculateTcpChecksum_sloc2_1_0,r3
	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),#0x00
	mov	a,#0x1e
	add	a, _calculateTcpChecksum_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
	mov	r4,a
	mov	a,r2
	add	a, r5
	mov	r2,a
	mov	a,r4
	addc	a, r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),r2
	mov	_calculateTcpChecksum_sloc1_1_0,r4
	mov	a,#0x1f
	add	a, _calculateTcpChecksum_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
	mov	r1,a
	mov	a,r0
	add	a, r5
	mov	r0,a
	mov	a,r1
	addc	a, r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r4,#0x00
	orl	a,_calculateTcpChecksum_sloc1_1_0
	mov	_calculateTcpChecksum_sloc2_1_0,a
	mov	a,r4
	orl	a,(_calculateTcpChecksum_sloc1_1_0 + 1)
	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),a
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
	mov	r0,_calculateTcpChecksum_sloc2_1_0
	mov	a,(_calculateTcpChecksum_sloc2_1_0 + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r4,a
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	mov	a,r0
	add	a, _calculateTcpChecksum_sloc3_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	tcp.c:56: i++;
	mov	dptr,#_calculateTcpChecksum_i_20001_130
	mov	a,r3
	inc	a
	movx	@dptr,a
;	tcp.c:54: for (uint8_t i = 0; i < 4; i++) {
	movx	a,@dptr
	add	a, #0x01
	movx	@dptr,a
	pop	ar4
	pop	ar2
	ljmp	00111$
00102$:
;	tcp.c:60: sum += (uint16_t) IP_PROTO_TCP;
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	mov	a,#0x06
	add	a, r3
	movx	@dptr,a
	clr	a
	addc	a, r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a, r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a, r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:61: sum += tcpLength;
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
	mov	ar0,r2
	mov	ar1,r4
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	mov	a,r0
	add	a, _calculateTcpChecksum_sloc3_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	tcp.c:64: for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i +=
	mov	dptr,#_calculateTcpChecksum_i_20001_132
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00114$:
	mov	ar1,r2
	mov	ar3,r4
	mov	a,#0x22
	add	a, r1
	mov	r1,a
	clr	a
	addc	a, r3
	mov	r3,a
	mov	dptr,#_calculateTcpChecksum_i_20001_132
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
	mov	_calculateTcpChecksum_sloc2_1_0,_calculateTcpChecksum_sloc3_1_0
	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),(_calculateTcpChecksum_sloc3_1_0 + 1)
	clr	c
	mov	a,_calculateTcpChecksum_sloc2_1_0
	subb	a,r1
	mov	a,(_calculateTcpChecksum_sloc2_1_0 + 1)
	subb	a,r3
	jc	00170$
	ljmp	00104$
00170$:
;	tcp.c:66: uint16_t word = (buffer[i] << 8) | buffer[i + 1];
	push	ar2
	push	ar4
	mov	a,_calculateTcpChecksum_sloc3_1_0
	add	a, r5
	mov	r0,a
	mov	a,(_calculateTcpChecksum_sloc3_1_0 + 1)
	addc	a, r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	mov	r0,#0x00
	mov	a,#0x01
	add	a, _calculateTcpChecksum_sloc2_1_0
	mov	r1,a
	clr	a
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
	mov	r4,a
	mov	a,r1
	add	a, r5
	mov	r1,a
	mov	a,r4
	addc	a, r6
	mov	r4,a
	mov	ar2,r7
	mov	dpl,r1
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r4,#0x00
	orl	ar0,a
	mov	a,r4
	orl	ar3,a
	mov	_calculateTcpChecksum_sloc3_1_0,r0
	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),r3
;	tcp.c:67: sum += word;
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	movx	a,@dptr
	mov	_calculateTcpChecksum_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
	mov	r0,_calculateTcpChecksum_sloc3_1_0
	mov	r2,(_calculateTcpChecksum_sloc3_1_0 + 1)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	mov	a,r0
	add	a, _calculateTcpChecksum_sloc4_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	tcp.c:65: 2) {
	mov	a,#0x02
	add	a, _calculateTcpChecksum_sloc2_1_0
	mov	r3,a
	clr	a
	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
	mov	r4,a
	mov	dptr,#_calculateTcpChecksum_i_20001_132
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	pop	ar4
	pop	ar2
	ljmp	00114$
;	tcp.c:71: while (sum >> 16) {
00104$:
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
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
	mov	_calculateTcpChecksum_sloc4_1_0,r6
	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),r7
	clr	a
	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
	mov	a,_calculateTcpChecksum_sloc4_1_0
	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
	jz	00106$
;	tcp.c:72: sum = (sum & 0xFFFF) + (sum >> 16);
	mov	ar0,r4
	mov	ar1,r5
	mov	r2,#0x00
	mov	r3,#0x00
	mov	dptr,#_calculateTcpChecksum_sum_10001_127
	mov	a,_calculateTcpChecksum_sloc4_1_0
	add	a, r0
	movx	@dptr,a
	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
	addc	a, r1
	inc	dptr
	movx	@dptr,a
	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
	addc	a, r2
	inc	dptr
	movx	@dptr,a
	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
	addc	a, r3
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00106$:
;	tcp.c:76: uint16_t checksum = ~((uint16_t) sum);
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
;	tcp.c:77: buffer[TCP_CHECKSUM_H_P] = (checksum >> 8) & 0xFF;
	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a, r3
	mov	_calculateTcpChecksum_sloc4_1_0,a
	clr	a
	addc	a, r6
	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),r7
	mov	ar2,r5
	mov	dpl,_calculateTcpChecksum_sloc4_1_0
	mov	dph,(_calculateTcpChecksum_sloc4_1_0 + 1)
	mov	b,(_calculateTcpChecksum_sloc4_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
;	tcp.c:78: buffer[TCP_CHECKSUM_L_P] = checksum & 0xFF;
	mov	a,#0x33
	add	a, r3
	mov	r3,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	tcp.c:79: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_checksum'
;------------------------------------------------------------
;length                    Allocated with name '_calculate_checksum_PARM_2'
;data                      Allocated with name '_calculate_checksum_data_10000_136'
;sum                       Allocated with name '_calculate_checksum_sum_10000_137'
;i                         Allocated with name '_calculate_checksum_i_20000_138'
;word                      Allocated with name '_calculate_checksum_word_30000_139'
;sloc0                     Allocated with name '_calculate_checksum_sloc0_1_0'
;sloc1                     Allocated with name '_calculate_checksum_sloc1_1_0'
;sloc2                     Allocated with name '_calculate_checksum_sloc2_1_0'
;------------------------------------------------------------
;	tcp.c:82: uint16_t calculate_checksum(uint8_t *data, uint16_t length) {
;	-----------------------------------------
;	 function calculate_checksum
;	-----------------------------------------
_calculate_checksum:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_calculate_checksum_data_10000_136
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:83: uint32_t sum = 0;
	mov	dptr,#_calculate_checksum_sum_10000_137
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	tcp.c:86: for (uint16_t i = 0; i < length; i += 2) {
	mov	dptr,#_calculate_checksum_i_20000_138
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_calculate_checksum_data_10000_136
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_calculate_checksum_PARM_2
	movx	a,@dptr
	mov	_calculate_checksum_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculate_checksum_sloc0_1_0 + 1),a
00105$:
	mov	dptr,#_calculate_checksum_i_20000_138
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,_calculate_checksum_sloc0_1_0
	mov	a,r2
	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
	jc	00135$
	ljmp	00103$
00135$:
;	tcp.c:87: uint16_t word = (data[i] << 8) + (i + 1 < length ? data[i + 1] : 0);
	mov	a,r1
	add	a, r5
	mov	r0,a
	mov	a,r2
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x01
	add	a, r1
	mov	r0,a
	clr	a
	addc	a, r2
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,_calculate_checksum_sloc0_1_0
	mov	a,r7
	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00109$
	inc	r1
	cjne	r1,#0x00,00137$
	inc	r2
00137$:
	mov	a,r1
	add	a, r5
	mov	r1,a
	mov	a,r2
	addc	a, r6
	mov	r0,a
	mov	ar2,r7
	mov	dpl,r1
	mov	dph,r0
	mov	b,r2
	lcall	__gptrget
	mov	r1,a
	mov	r2,#0x00
	sjmp	00110$
00109$:
	mov	r1,#0x00
	mov	r2,#0x00
00110$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,r1
	add	a, r3
	mov	r3,a
	mov	a,r2
	addc	a, r4
	mov	r4,a
;	tcp.c:88: sum += word;
	mov	dptr,#_calculate_checksum_sum_10000_137
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
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	dptr,#_calculate_checksum_sum_10000_137
	mov	a,r3
	add	a, r0
	movx	@dptr,a
	mov	a,r4
	addc	a, r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a, r2
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	addc	a, r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:91: if (sum > 0xFFFF) {
	mov	dptr,#_calculate_checksum_sum_10000_137
	movx	a,@dptr
	mov	_calculate_checksum_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_calculate_checksum_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculate_checksum_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_calculate_checksum_sloc1_1_0 + 3),a
	clr	c
	mov	a,#0xff
	subb	a,_calculate_checksum_sloc1_1_0
	mov	a,#0xff
	subb	a,(_calculate_checksum_sloc1_1_0 + 1)
	clr	a
	subb	a,(_calculate_checksum_sloc1_1_0 + 2)
	clr	a
	subb	a,(_calculate_checksum_sloc1_1_0 + 3)
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00106$
;	tcp.c:92: sum = (sum & 0xFFFF) + (sum >> 16);
	mov	_calculate_checksum_sloc2_1_0,_calculate_checksum_sloc1_1_0
	mov	(_calculate_checksum_sloc2_1_0 + 1),(_calculate_checksum_sloc1_1_0 + 1)
	mov	(_calculate_checksum_sloc2_1_0 + 2),#0x00
	mov	(_calculate_checksum_sloc2_1_0 + 3),#0x00
	mov	r0,(_calculate_checksum_sloc1_1_0 + 2)
	mov	r2,(_calculate_checksum_sloc1_1_0 + 3)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dptr,#_calculate_checksum_sum_10000_137
	mov	a,r0
	add	a, _calculate_checksum_sloc2_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a, (_calculate_checksum_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a, (_calculate_checksum_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a, (_calculate_checksum_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00106$:
;	tcp.c:86: for (uint16_t i = 0; i < length; i += 2) {
	mov	dptr,#_calculate_checksum_i_20000_138
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x02
	add	a, r3
	mov	r3,a
	clr	a
	addc	a, r4
	mov	r4,a
	mov	dptr,#_calculate_checksum_i_20000_138
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00105$
00103$:
;	tcp.c:97: sum = (sum & 0xFFFF) + (sum >> 16);
	mov	dptr,#_calculate_checksum_sum_10000_137
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
	mov	ar0,r4
	mov	ar1,r5
	mov	r2,#0x00
	mov	r3,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_calculate_checksum_sum_10000_137
	mov	a,r4
	add	a, r0
	movx	@dptr,a
	mov	a,r5
	addc	a, r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a, r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a, r3
	inc	dptr
	movx	@dptr,a
;	tcp.c:100: return ~sum;
	mov	dptr,#_calculate_checksum_sum_10000_137
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
	mov	a,r4
	cpl	a
	mov	r4,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	a,r6
	cpl	a
	mov	a,r7
	cpl	a
	mov	dpl, r4
	mov	dph, r5
;	tcp.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_tcp_packet'
;------------------------------------------------------------
;sloc0                     Allocated with name '_process_tcp_packet_sloc0_1_0'
;packet_size               Allocated with name '_process_tcp_packet_PARM_2'
;response_size             Allocated with name '_process_tcp_packet_PARM_3'
;packet                    Allocated with name '_process_tcp_packet_packet_10000_141'
;response                  Allocated with name '_process_tcp_packet_response_10000_142'
;data_start                Allocated with name '_process_tcp_packet_data_start_10001_143'
;ethernet_header           Allocated with name '_process_tcp_packet_ethernet_header_10001_143'
;response_ethernet_header  Allocated with name '_process_tcp_packet_response_ethernet_header_10001_143'
;ip_header                 Allocated with name '_process_tcp_packet_ip_header_10002_144'
;response_ip_header        Allocated with name '_process_tcp_packet_response_ip_header_10002_144'
;tcp_header                Allocated with name '_process_tcp_packet_tcp_header_10003_145'
;response_tcp_header       Allocated with name '_process_tcp_packet_response_tcp_header_10003_145'
;SYN_SEQ3                  Allocated with name '_process_tcp_packet_SYN_SEQ3_10004_146'
;SYN_SEQ2                  Allocated with name '_process_tcp_packet_SYN_SEQ2_10004_146'
;SYN_SEQ1                  Allocated with name '_process_tcp_packet_SYN_SEQ1_10004_146'
;SYN_SEQ0                  Allocated with name '_process_tcp_packet_SYN_SEQ0_10004_146'
;tcp_length                Allocated with name '_process_tcp_packet_tcp_length_10005_147'
;ip_total_length           Allocated with name '_process_tcp_packet_ip_total_length_10005_147'
;------------------------------------------------------------
;	tcp.c:102: uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size) {
;	-----------------------------------------
;	 function process_tcp_packet
;	-----------------------------------------
_process_tcp_packet:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_process_tcp_packet_packet_10000_141
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:104: memset(response, 0, MAX_PACKET_SIZE + 1);      // Clear the response buffer
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0xdd
	movx	@dptr,a
	mov	a,#0x05
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_tcp_packet_response_10000_142
	mov	b, #0x00
	lcall	_memset
;	tcp.c:106: response[0] = 0x0E;  // Ensure the first byte of the response is always 0x0E
	mov	dptr,#_process_tcp_packet_response_10000_142
	mov	a,#0x0e
	movx	@dptr,a
;	tcp.c:109: uint8_t *data_start = response + 1;
;	tcp.c:112: uint8_t *ethernet_header = packet;
	mov	dptr,#_process_tcp_packet_packet_10000_141
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	tcp.c:114: memcpy(response_ethernet_header, ethernet_header, ETHERNET_HEADER_SIZE);
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dptr,#___memcpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x0e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0001)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:117: memcpy(response_ethernet_header, ethernet_header + 6, 6);  // Destination MAC
	mov	a,#0x06
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#___memcpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0001)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:118: memcpy(response_ethernet_header + 6, ethernet_header, 6);  // Source MAC
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	dptr,#___memcpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0007)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:121: uint8_t *ip_header = packet + ETHERNET_HEADER_SIZE;
	mov	a,#0x0e
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
;	tcp.c:122: uint8_t *response_ip_header = data_start + ETHERNET_HEADER_SIZE;
;	tcp.c:125: memcpy(response_ip_header, ip_header, IP_HEADER_SIZE);
	mov	dptr,#___memcpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x14
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x000f)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:126: response_ip_header[12] = ip_header[16];  // Swap Source IP
	mov	a,#0x1e
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001b)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:127: response_ip_header[13] = ip_header[17];
	mov	a,#0x1f
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001c)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:128: response_ip_header[14] = ip_header[18];
	mov	a,#0x20
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001d)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:129: response_ip_header[15] = ip_header[19];
	mov	a,#0x21
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001e)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:130: response_ip_header[16] = ip_header[12];  // Swap Destination IP
	mov	a,#0x1a
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001f)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:131: response_ip_header[17] = ip_header[13];
	mov	a,#0x1b
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0020)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:132: response_ip_header[18] = ip_header[14];
	mov	a,#0x1c
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0021)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:133: response_ip_header[19] = ip_header[15];
	mov	a,#0x1d
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0022)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:134: response_ip_header[10] = 0;              // Clear checksum
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0019)
	clr	a
	lcall	__gptrput
;	tcp.c:135: response_ip_header[11] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001a)
	mov	b,a
	lcall	__gptrput
;	tcp.c:138: uint8_t *tcp_header = packet + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
	mov	a,#0x22
	add	a, r5
	mov	_process_tcp_packet_sloc0_1_0,a
	clr	a
	addc	a, r6
	mov	(_process_tcp_packet_sloc0_1_0 + 1),a
	mov	(_process_tcp_packet_sloc0_1_0 + 2),r7
;	tcp.c:139: uint8_t *response_tcp_header = data_start + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
;	tcp.c:142: memcpy(response_tcp_header, tcp_header, TCP_HEADER_SIZE);
	mov	r0,_process_tcp_packet_sloc0_1_0
	mov	r1,(_process_tcp_packet_sloc0_1_0 + 1)
	mov	r4,(_process_tcp_packet_sloc0_1_0 + 2)
	mov	dptr,#___memcpy_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x14
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0023)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:143: response_tcp_header[0] = tcp_header[2];  // Swap Source Port
	mov	a,#0x24
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0023)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:144: response_tcp_header[1] = tcp_header[3];
	mov	a,#0x25
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0024)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:145: response_tcp_header[2] = tcp_header[0];  // Swap Destination Port
	mov	dpl,_process_tcp_packet_sloc0_1_0
	mov	dph,(_process_tcp_packet_sloc0_1_0 + 1)
	mov	b,(_process_tcp_packet_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0025)
	mov	b,#0x00
	mov	a,r4
	lcall	__gptrput
;	tcp.c:146: response_tcp_header[3] = tcp_header[1];
	mov	a,#0x23
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0026)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:148: response_tcp_header[4] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0027)
	clr	a
	lcall	__gptrput
;	tcp.c:149: response_tcp_header[5] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0028)
	mov	b,a
	lcall	__gptrput
;	tcp.c:150: response_tcp_header[6] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0029)
	mov	b,a
	lcall	__gptrput
;	tcp.c:151: response_tcp_header[7] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002a)
	mov	b,a
	lcall	__gptrput
;	tcp.c:153: uint8_t SYN_SEQ3 = tcp_header[4];
	mov	a,#0x26
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	tcp.c:154: uint8_t SYN_SEQ2 = tcp_header[5];
	mov	a,#0x27
	add	a, r5
	mov	r1,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
;	tcp.c:155: uint8_t SYN_SEQ1 = tcp_header[6];
	mov	a,#0x28
	add	a, r5
	mov	r0,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
;	tcp.c:156: uint8_t SYN_SEQ0 = tcp_header[7];
	mov	a,#0x29
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	tcp.c:158: response_tcp_header[8] = SYN_SEQ3;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002b)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:159: response_tcp_header[9] = SYN_SEQ2;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002c)
	mov	a,r1
	lcall	__gptrput
;	tcp.c:160: response_tcp_header[10] = SYN_SEQ1;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002d)
	mov	a,r0
	lcall	__gptrput
;	tcp.c:161: response_tcp_header[11] = SYN_SEQ0 + 1;
	inc	r5
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002e)
	mov	a,r5
	lcall	__gptrput
;	tcp.c:167: response_tcp_header[12] = 0x50;  // SYN (0x02) + ACK (0x10)
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002f)
	mov	a,#0x50
	lcall	__gptrput
;	tcp.c:169: response_tcp_header[13] = 0x12;  // SYN (0x02) + ACK (0x10)
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0030)
	mov	a,#0x12
	lcall	__gptrput
;	tcp.c:178: response_tcp_header[18] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0035)
	clr	a
	lcall	__gptrput
;	tcp.c:179: response_tcp_header[19] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0036)
	mov	b,a
	lcall	__gptrput
;	tcp.c:185: response_ip_header[2] = (ip_total_length >> 8) & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0011)
	mov	b,a
	lcall	__gptrput
;	tcp.c:186: response_ip_header[3] = ip_total_length & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0012)
	mov	b,a
	mov	a,#0x28
	lcall	__gptrput
;	tcp.c:189: calculateIPChecksum(data_start);
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0001)
	lcall	_calculateIPChecksum
;	tcp.c:192: calculateTcpChecksum(data_start);
	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0001)
	mov	b, #0x00
	lcall	_calculateTcpChecksum
;	tcp.c:215: *response_size = 1 + ETHERNET_HEADER_SIZE + ip_total_length; // Adding 4 for the MSS option size
	mov	dptr,#_process_tcp_packet_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x37
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	tcp.c:218: return response;
	mov	dptr,#_process_tcp_packet_response_10000_142
	mov	b,a
;	tcp.c:219: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_hexdump'
;------------------------------------------------------------
;size                      Allocated with name '_print_hexdump_PARM_2'
;data                      Allocated with name '_print_hexdump_data_10000_148'
;i                         Allocated with name '_print_hexdump_i_20000_150'
;------------------------------------------------------------
;	tcp.c:223: void print_hexdump(const uint8_t *data, uint16_t size) {
;	-----------------------------------------
;	 function print_hexdump
;	-----------------------------------------
_print_hexdump:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_print_hexdump_data_10000_148
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:224: printf("\nHexdump (Size: %d):\n", size);
	mov	dptr,#_print_hexdump_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	tcp.c:225: for (uint16_t i = 0; i < size; i++) {
	mov	dptr,#_print_hexdump_data_10000_148
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00107$:
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	subb	a,r7
	jc	00136$
	ljmp	00103$
00136$:
;	tcp.c:226: printf("%02X ", data[i]); // Print each byte in hexadecimal format
	push	ar6
	push	ar7
	mov	a,r1
	add	a, r3
	mov	r0,a
	mov	a,r2
	addc	a, r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:227: if ((i + 1) % 16 == 0) {
	mov	ar6,r1
	mov	ar7,r2
	inc	r6
	cjne	r6,#0x00,00137$
	inc	r7
00137$:
	mov	a,r6
	anl	a,#0x0f
	jz	00139$
	pop	ar7
	pop	ar6
	sjmp	00108$
00139$:
	pop	ar7
	pop	ar6
;	tcp.c:228: printf("\n"); // Newline after every 16 bytes for readability
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
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
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00108$:
;	tcp.c:225: for (uint16_t i = 0; i < size; i++) {
	inc	r1
	cjne	r1,#0x00,00140$
	inc	r2
00140$:
	ljmp	00107$
00103$:
;	tcp.c:231: if (size % 16 != 0) {
	mov	a,r6
	anl	a,#0x0f
	jz	00109$
;	tcp.c:232: printf("\n"); // Final newline if not already printed
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
00109$:
;	tcp.c:234: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_packet_from_buffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_process_packet_from_buffer_sloc0_1_0'
;start_address             Allocated with name '_process_packet_from_buffer_start_address_10000_154'
;next_packet_start         Allocated with name '_process_packet_from_buffer_next_packet_start_10001_157'
;next_start_address        Allocated with name '_process_packet_from_buffer_next_start_address_10001_157'
;packet_size               Allocated with name '_process_packet_from_buffer_packet_size_10001_157'
;response_size             Allocated with name '_process_packet_from_buffer_response_size_10001_157'
;packet_data               Allocated with name '_process_packet_from_buffer_packet_data_10002_160'
;response                  Allocated with name '_process_packet_from_buffer_response_10003_163'
;------------------------------------------------------------
;	tcp.c:237: void process_packet_from_buffer(uint16_t start_address) {
;	-----------------------------------------
;	 function process_packet_from_buffer
;	-----------------------------------------
_process_packet_from_buffer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_process_packet_from_buffer_start_address_10000_154
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:239: if (start_address > 0x1FFF) {
	mov	dptr,#_process_packet_from_buffer_start_address_10000_154
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x1f
	subb	a,r5
	jnc	00102$
;	tcp.c:240: printf("\n\rInvalid start address: %04X\n\r", start_address);
	push	ar6
	push	ar7
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	tcp.c:241: return;
	ret
00102$:
;	tcp.c:250: if (spi_buffer_read(2, start_address, next_packet_start) != 2) {
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,#_process_packet_from_buffer_next_packet_start_10001_157
	movx	@dptr,a
	mov	a,#(_process_packet_from_buffer_next_packet_start_10001_157 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0002
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_buffer_read
	mov	r2, dpl
	mov	r3, dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x02,00153$
	cjne	r3,#0x00,00153$
	sjmp	00104$
00153$:
;	tcp.c:251: printf("\n\rFailed to read packet start address bytes\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	tcp.c:252: return;
	ret
00104$:
;	tcp.c:256: next_start_address = ((uint16_t)next_packet_start[1] << 8) | next_packet_start[0];
	mov	dptr,#(_process_packet_from_buffer_next_packet_start_10001_157 + 0x0001)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#_process_packet_from_buffer_next_packet_start_10001_157
	movx	a,@dptr
	mov	r1,#0x00
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
;	tcp.c:259: if (next_start_address < start_address) {
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r2
	subb	a,r7
	jnc	00106$
;	tcp.c:260: printf("\n\rInvalid next start address: 0x%04X\n\r", next_start_address);
	push	ar3
	push	ar2
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	tcp.c:261: return;
	ret
00106$:
;	tcp.c:263: packet_size = next_start_address - (start_address+6);
	mov	a,#0x06
	add	a, r4
	mov	r6,a
	clr	a
	addc	a, r5
	mov	r7,a
	mov	a,r3
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r2
	subb	a,r7
	mov	r7,a
;	tcp.c:266: uint8_t *packet_data = (uint8_t *)malloc(packet_size);
	mov	ar0,r6
	mov	ar1,r7
	mov	dpl, r0
	mov	dph, r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_malloc
	mov	r0, dpl
	mov	r1, dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_process_packet_from_buffer_sloc0_1_0,r0
	mov	(_process_packet_from_buffer_sloc0_1_0 + 1),r1
	mov	(_process_packet_from_buffer_sloc0_1_0 + 2),#0x00
;	tcp.c:267: if (packet_data == NULL) {
	mov	a,_process_packet_from_buffer_sloc0_1_0
	orl	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
	jnz	00108$
;	tcp.c:268: printf("\n\rMemory allocation failed for packet size: %d\n\r", packet_size);
	push	ar6
	push	ar7
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	tcp.c:269: return;
	ret
00108$:
;	tcp.c:273: if (spi_buffer_read(packet_size, start_address+6, packet_data) != packet_size) {
	mov	ar0,r6
	mov	ar1,r7
	mov	a,#0x06
	add	a, r4
	mov	r4,a
	clr	a
	addc	a, r5
	mov	r5,a
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,_process_packet_from_buffer_sloc0_1_0
	movx	@dptr,a
	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl, r0
	mov	dph, r1
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_spi_buffer_read
	mov	r4, dpl
	mov	r5, dph
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	a,r4
	cjne	a,ar6,00156$
	mov	a,r5
	cjne	a,ar7,00156$
	sjmp	00110$
00156$:
;	tcp.c:274: printf("\n\rFailed to read packet data\n\r");
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
;	tcp.c:275: free(packet_data);
	mov	r4,_process_packet_from_buffer_sloc0_1_0
	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
	mov	r5,#0x00
	mov	dpl, r4
	mov	dph, r1
	mov	b, r5
;	tcp.c:276: return;
	ljmp	_free
00110$:
;	tcp.c:280: uint8_t *response = process_tcp_packet(packet_data, packet_size, &response_size);
	mov	dptr,#_process_tcp_packet_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_tcp_packet_PARM_3
	mov	a,#_process_packet_from_buffer_response_size_10001_157
	movx	@dptr,a
	mov	a,#(_process_packet_from_buffer_response_size_10001_157 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _process_packet_from_buffer_sloc0_1_0
	mov	dph, (_process_packet_from_buffer_sloc0_1_0 + 1)
	mov	b, (_process_packet_from_buffer_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_process_tcp_packet
	mov	r1, dpl
	mov	r4, dph
	mov	r5, b
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	tcp.c:283: if (response != NULL) {
	mov	a,r1
	orl	a,r4
	jnz	00157$
	ljmp	00112$
00157$:
;	tcp.c:284: printf("\nProcessed response data:\n");
	push	ar3
	push	ar2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
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
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:286: transmit_tcp_packet(response, response_size);
	mov	dptr,#_process_packet_from_buffer_response_size_10001_157
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl, r1
	mov	dph, r4
	mov	b, r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_transmit_tcp_packet
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	tcp.c:287: free(response); // Free response memory if allocated dynamically
	mov	dpl, r1
	mov	dph, r4
	mov	b, r5
	push	ar3
	push	ar2
	lcall	_free
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	pop	ar2
	pop	ar3
	sjmp	00113$
00112$:
;	tcp.c:289: printf("\nNo response generated by TCP packet processing.\n");
	push	ar7
	push	ar6
	push	ar3
	push	ar2
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
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
00113$:
;	tcp.c:293: free(packet_data);
	mov	r4,_process_packet_from_buffer_sloc0_1_0
	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
	mov	r5,#0x00
	mov	dpl, r4
	mov	dph, r1
	mov	b, r5
	push	ar7
	push	ar6
	push	ar3
	push	ar2
	lcall	_free
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
;	tcp.c:296: packet_size, start_address, next_start_address - 1);
	dec	r3
	cjne	r3,#0xff,00158$
	dec	r2
00158$:
;	tcp.c:295: printf("\n\rSuccessfully processed packet of size %d from 0x%04X to 0x%04X\n\r",
	push	ar3
	push	ar2
	mov	dptr,#_process_packet_from_buffer_start_address_10000_154
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	push	ar6
	push	ar7
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	tcp.c:297: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_tcp_packet'
;------------------------------------------------------------
;packet_size               Allocated with name '_transmit_tcp_packet_PARM_2'
;packet                    Allocated with name '_transmit_tcp_packet_packet_10000_166'
;start_address             Allocated with name '_transmit_tcp_packet_start_address_10000_167'
;end_address               Allocated with name '_transmit_tcp_packet_end_address_10001_169'
;------------------------------------------------------------
;	tcp.c:300: void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
;	-----------------------------------------
;	 function transmit_tcp_packet
;	-----------------------------------------
_transmit_tcp_packet:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_transmit_tcp_packet_packet_10000_166
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:305: if ((start_address + packet_size - 1) > 0x1FFF) {
	mov	dptr,#_transmit_tcp_packet_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	a,#0x1c
	add	a, r7
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00129$
	dec	r5
00129$:
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x1f
	subb	a,r5
	jnc	00102$
;	tcp.c:306: printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
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
;	tcp.c:307: return;
	ret
00102$:
;	tcp.c:309: uint16_t end_address = start_address + packet_size - 1;
	mov	ar4,r6
	mov	a,#0x1c
	add	a, r7
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00131$
	dec	r5
00131$:
;	tcp.c:310: spi_buffer_write(packet_size, start_address, packet);
	mov	dptr,#_transmit_tcp_packet_packet_10000_166
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_spi_buffer_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	a,#0x1c
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl, r6
	mov	dph, r7
	push	ar5
	push	ar4
	lcall	_spi_buffer_write
	pop	ar4
	pop	ar5
;	tcp.c:313: enc28j60_set_transmit_pointers(start_address, end_address);
	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x1c00
	lcall	_enc28j60_set_transmit_pointers
;	tcp.c:316: enc28j60_start_transmission();
	lcall	_enc28j60_start_transmission
;	tcp.c:319: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
	mov	dptr,#0x01f4
	lcall	_wait_for_transmission_complete
	mov	a, dpl
	jz	00107$
;	tcp.c:321: if (enc28j60_transmission_successful()) {
	lcall	_enc28j60_transmission_successful
	mov	a, dpl
	mov	b, dph
	orl	a,b
	jz	00104$
;	tcp.c:322: printf("TCP request sent successfully.\n\r");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00104$:
;	tcp.c:324: printf("TCP transmission failed. Check error flags.\n\r");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ret
00107$:
;	tcp.c:328: "Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	tcp.c:330: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.ascii "Hexdump (Size: %d):"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid start address: %04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii "Failed to read packet start address bytes"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid next start address: 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "Memory allocation failed for packet size: %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "Failed to read packet data"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.ascii "Processed response data:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.ascii "No response generated by TCP packet processing."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0d
	.ascii "Successfully processed packet of size %d from 0x%04X to 0x%0"
	.ascii "4X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "TCP request sent successfully."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "TCP transmission failed. Check error flags."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
	.ascii "tly."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

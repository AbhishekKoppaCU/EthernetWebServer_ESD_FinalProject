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
_calculate_checksum_PARM_2:
	.ds 2
_calculate_checksum_data_10000_116:
	.ds 3
_calculate_checksum_sum_10000_117:
	.ds 4
_calculate_checksum_i_20000_118:
	.ds 2
_process_tcp_packet_PARM_2:
	.ds 2
_process_tcp_packet_PARM_3:
	.ds 3
_process_tcp_packet_packet_10000_121:
	.ds 3
_process_tcp_packet_response_10000_122:
	.ds 1501
_print_hexdump_PARM_2:
	.ds 2
_print_hexdump_data_10000_130:
	.ds 3
_process_packet_from_buffer_start_address_10000_136:
	.ds 2
_process_packet_from_buffer_next_packet_start_10001_139:
	.ds 2
_process_packet_from_buffer_response_size_10001_139:
	.ds 2
_transmit_tcp_packet_PARM_2:
	.ds 2
_transmit_tcp_packet_packet_10000_148:
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
;Allocation info for local variables in function 'calculate_checksum'
;------------------------------------------------------------
;length                    Allocated with name '_calculate_checksum_PARM_2'
;data                      Allocated with name '_calculate_checksum_data_10000_116'
;sum                       Allocated with name '_calculate_checksum_sum_10000_117'
;i                         Allocated with name '_calculate_checksum_i_20000_118'
;word                      Allocated with name '_calculate_checksum_word_30000_119'
;sloc0                     Allocated with name '_calculate_checksum_sloc0_1_0'
;sloc1                     Allocated with name '_calculate_checksum_sloc1_1_0'
;sloc2                     Allocated with name '_calculate_checksum_sloc2_1_0'
;------------------------------------------------------------
;	tcp.c:12: uint16_t calculate_checksum(uint8_t *data, uint16_t length) {
;	-----------------------------------------
;	 function calculate_checksum
;	-----------------------------------------
_calculate_checksum:
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
	mov	dptr,#_calculate_checksum_data_10000_116
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:13: uint32_t sum = 0;
	mov	dptr,#_calculate_checksum_sum_10000_117
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	tcp.c:16: for (uint16_t i = 0; i < length; i += 2) {
	mov	dptr,#_calculate_checksum_i_20000_118
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_calculate_checksum_data_10000_116
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
	mov	dptr,#_calculate_checksum_i_20000_118
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
;	tcp.c:17: uint16_t word = (data[i] << 8) + (i + 1 < length ? data[i + 1] : 0);
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
;	tcp.c:18: sum += word;
	mov	dptr,#_calculate_checksum_sum_10000_117
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
	mov	dptr,#_calculate_checksum_sum_10000_117
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
;	tcp.c:21: if (sum > 0xFFFF) {
	mov	dptr,#_calculate_checksum_sum_10000_117
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
;	tcp.c:22: sum = (sum & 0xFFFF) + (sum >> 16);
	mov	_calculate_checksum_sloc2_1_0,_calculate_checksum_sloc1_1_0
	mov	(_calculate_checksum_sloc2_1_0 + 1),(_calculate_checksum_sloc1_1_0 + 1)
	mov	(_calculate_checksum_sloc2_1_0 + 2),#0x00
	mov	(_calculate_checksum_sloc2_1_0 + 3),#0x00
	mov	r0,(_calculate_checksum_sloc1_1_0 + 2)
	mov	r2,(_calculate_checksum_sloc1_1_0 + 3)
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dptr,#_calculate_checksum_sum_10000_117
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
;	tcp.c:16: for (uint16_t i = 0; i < length; i += 2) {
	mov	dptr,#_calculate_checksum_i_20000_118
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
	mov	dptr,#_calculate_checksum_i_20000_118
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00105$
00103$:
;	tcp.c:27: sum = (sum & 0xFFFF) + (sum >> 16);
	mov	dptr,#_calculate_checksum_sum_10000_117
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
	mov	dptr,#_calculate_checksum_sum_10000_117
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
;	tcp.c:30: return ~sum;
	mov	dptr,#_calculate_checksum_sum_10000_117
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
;	tcp.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_tcp_packet'
;------------------------------------------------------------
;sloc0                     Allocated with name '_process_tcp_packet_sloc0_1_0'
;packet_size               Allocated with name '_process_tcp_packet_PARM_2'
;response_size             Allocated with name '_process_tcp_packet_PARM_3'
;packet                    Allocated with name '_process_tcp_packet_packet_10000_121'
;response                  Allocated with name '_process_tcp_packet_response_10000_122'
;data_start                Allocated with name '_process_tcp_packet_data_start_10001_123'
;ethernet_header           Allocated with name '_process_tcp_packet_ethernet_header_10001_123'
;response_ethernet_header  Allocated with name '_process_tcp_packet_response_ethernet_header_10001_123'
;ip_header                 Allocated with name '_process_tcp_packet_ip_header_10002_124'
;response_ip_header        Allocated with name '_process_tcp_packet_response_ip_header_10002_124'
;tcp_header                Allocated with name '_process_tcp_packet_tcp_header_10003_125'
;response_tcp_header       Allocated with name '_process_tcp_packet_response_tcp_header_10003_125'
;seq_num                   Allocated with name '_process_tcp_packet_seq_num_10004_126'
;ack_num                   Allocated with name '_process_tcp_packet_ack_num_10004_126'
;tcp_length                Allocated with name '_process_tcp_packet_tcp_length_10005_127'
;ip_total_length           Allocated with name '_process_tcp_packet_ip_total_length_10005_127'
;ip_checksum               Allocated with name '_process_tcp_packet_ip_checksum_10006_128'
;tcp_checksum              Allocated with name '_process_tcp_packet_tcp_checksum_10007_129'
;------------------------------------------------------------
;	tcp.c:32: uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size) {
;	-----------------------------------------
;	 function process_tcp_packet
;	-----------------------------------------
_process_tcp_packet:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_process_tcp_packet_packet_10000_121
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:34: memset(response, 0, MAX_PACKET_SIZE + 1);      // Clear the response buffer
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0xdd
	movx	@dptr,a
	mov	a,#0x05
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_tcp_packet_response_10000_122
	mov	b, #0x00
	lcall	_memset
;	tcp.c:36: response[0] = 0x0E;  // Ensure the first byte of the response is always 0x0E
	mov	dptr,#_process_tcp_packet_response_10000_122
	mov	a,#0x0e
	movx	@dptr,a
;	tcp.c:39: uint8_t *data_start = response + 1;
;	tcp.c:42: uint8_t *ethernet_header = packet;
	mov	dptr,#_process_tcp_packet_packet_10000_121
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	tcp.c:44: memcpy(response_ethernet_header, ethernet_header, ETHERNET_HEADER_SIZE);
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0001)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:47: memcpy(response_ethernet_header, ethernet_header + 6, 6);  // Destination MAC
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0001)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:48: memcpy(response_ethernet_header + 6, ethernet_header, 6);  // Source MAC
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0007)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:51: uint8_t *ip_header = packet + ETHERNET_HEADER_SIZE;
	mov	a,#0x0e
	add	a, r5
	mov	r2,a
	clr	a
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
;	tcp.c:52: uint8_t *response_ip_header = data_start + ETHERNET_HEADER_SIZE;
;	tcp.c:55: memcpy(response_ip_header, ip_header, IP_HEADER_SIZE);
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:56: response_ip_header[12] = ip_header[16];  // Swap Source IP
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001b)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:57: response_ip_header[13] = ip_header[17];
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001c)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:58: response_ip_header[14] = ip_header[18];
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001d)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:59: response_ip_header[15] = ip_header[19];
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001e)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:60: response_ip_header[16] = ip_header[12];  // Swap Destination IP
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001f)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:61: response_ip_header[17] = ip_header[13];
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0020)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:62: response_ip_header[18] = ip_header[14];
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0021)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:63: response_ip_header[19] = ip_header[15];
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0022)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:64: response_ip_header[10] = 0;              // Clear checksum
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0019)
	clr	a
	lcall	__gptrput
;	tcp.c:65: response_ip_header[11] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001a)
	mov	b,a
	lcall	__gptrput
;	tcp.c:68: uint8_t *tcp_header = packet + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
	mov	a,#0x22
	add	a, r5
	mov	_process_tcp_packet_sloc0_1_0,a
	clr	a
	addc	a, r6
	mov	(_process_tcp_packet_sloc0_1_0 + 1),a
	mov	(_process_tcp_packet_sloc0_1_0 + 2),r7
;	tcp.c:69: uint8_t *response_tcp_header = data_start + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
;	tcp.c:72: memcpy(response_tcp_header, tcp_header, TCP_HEADER_SIZE);
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0023)
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:73: response_tcp_header[0] = tcp_header[2];  // Swap Source Port
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0023)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:74: response_tcp_header[1] = tcp_header[3];
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0024)
	mov	b,#0x00
	mov	a,r2
	lcall	__gptrput
;	tcp.c:75: response_tcp_header[2] = tcp_header[0];  // Swap Destination Port
	mov	dpl,_process_tcp_packet_sloc0_1_0
	mov	dph,(_process_tcp_packet_sloc0_1_0 + 1)
	mov	b,(_process_tcp_packet_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0025)
	mov	b,#0x00
	mov	a,r4
	lcall	__gptrput
;	tcp.c:76: response_tcp_header[3] = tcp_header[1];
	mov	a,#0x23
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
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0026)
	mov	b,#0x00
	mov	a,r5
	lcall	__gptrput
;	tcp.c:81: response_tcp_header[4] = (ack_num >> 24) & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0027)
	clr	a
	lcall	__gptrput
;	tcp.c:82: response_tcp_header[5] = (ack_num >> 16) & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0028)
	mov	b,a
	lcall	__gptrput
;	tcp.c:83: response_tcp_header[6] = (ack_num >> 8) & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0029)
	mov	b,a
	lcall	__gptrput
;	tcp.c:84: response_tcp_header[7] = ack_num & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002a)
	mov	b,a
	inc	a
	lcall	__gptrput
;	tcp.c:86: response_tcp_header[12] = 0x50;  // SYN (0x02) + ACK (0x10)
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002f)
	mov	a,#0x50
	lcall	__gptrput
;	tcp.c:88: response_tcp_header[13] = 0x12;  // SYN (0x02) + ACK (0x10)
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0030)
	mov	a,#0x12
	lcall	__gptrput
;	tcp.c:91: response_tcp_header[18] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0035)
	clr	a
	lcall	__gptrput
;	tcp.c:92: response_tcp_header[19] = 0;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0036)
	mov	b,a
	lcall	__gptrput
;	tcp.c:98: response_ip_header[2] = (ip_total_length >> 8) & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0011)
	mov	b,a
	lcall	__gptrput
;	tcp.c:99: response_ip_header[3] = ip_total_length & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0012)
	mov	b,a
	mov	a,#0x28
	lcall	__gptrput
;	tcp.c:100: uint16_t ip_checksum = calculate_checksum(response_ip_header, IP_HEADER_SIZE);
	mov	dptr,#_calculate_checksum_PARM_2
	rr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
	mov	b,a
	lcall	_calculate_checksum
	mov	r6, dpl
	mov	r7, dph
;	tcp.c:101: response_ip_header[10] = (ip_checksum >> 8) & 0xFF;
	mov	ar5,r7
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0019)
	mov	b,#0x00
	mov	a,r5
	lcall	__gptrput
;	tcp.c:102: response_ip_header[11] = ip_checksum & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001a)
	mov	a,r6
	lcall	__gptrput
;	tcp.c:104: uint16_t tcp_checksum = calculate_checksum(data_start + ETHERNET_HEADER_SIZE, ip_total_length);
	mov	dptr,#_calculate_checksum_PARM_2
	mov	a,#0x28
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
	mov	b,a
	lcall	_calculate_checksum
	mov	r6, dpl
	mov	r7, dph
;	tcp.c:105: response_tcp_header[16] = (tcp_checksum >> 8) & 0xFF;
	mov	ar5,r7
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0033)
	mov	b,#0x00
	mov	a,r5
	lcall	__gptrput
;	tcp.c:106: response_tcp_header[17] = tcp_checksum & 0xFF;
	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0034)
	mov	a,r6
	lcall	__gptrput
;	tcp.c:109: *response_size = 1 + ETHERNET_HEADER_SIZE + ip_total_length;
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
;	tcp.c:111: return response;
	mov	dptr,#_process_tcp_packet_response_10000_122
	mov	b,a
;	tcp.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_hexdump'
;------------------------------------------------------------
;size                      Allocated with name '_print_hexdump_PARM_2'
;data                      Allocated with name '_print_hexdump_data_10000_130'
;i                         Allocated with name '_print_hexdump_i_20000_132'
;------------------------------------------------------------
;	tcp.c:116: void print_hexdump(const uint8_t *data, uint16_t size) {
;	-----------------------------------------
;	 function print_hexdump
;	-----------------------------------------
_print_hexdump:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_print_hexdump_data_10000_130
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:117: printf("\nHexdump (Size: %d):\n", size);
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
;	tcp.c:118: for (uint16_t i = 0; i < size; i++) {
	mov	dptr,#_print_hexdump_data_10000_130
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
;	tcp.c:119: printf("%02X ", data[i]); // Print each byte in hexadecimal format
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
;	tcp.c:120: if ((i + 1) % 16 == 0) {
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
;	tcp.c:121: printf("\n"); // Newline after every 16 bytes for readability
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
;	tcp.c:118: for (uint16_t i = 0; i < size; i++) {
	inc	r1
	cjne	r1,#0x00,00140$
	inc	r2
00140$:
	ljmp	00107$
00103$:
;	tcp.c:124: if (size % 16 != 0) {
	mov	a,r6
	anl	a,#0x0f
	jz	00109$
;	tcp.c:125: printf("\n"); // Final newline if not already printed
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
;	tcp.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_packet_from_buffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_process_packet_from_buffer_sloc0_1_0'
;start_address             Allocated with name '_process_packet_from_buffer_start_address_10000_136'
;next_packet_start         Allocated with name '_process_packet_from_buffer_next_packet_start_10001_139'
;next_start_address        Allocated with name '_process_packet_from_buffer_next_start_address_10001_139'
;packet_size               Allocated with name '_process_packet_from_buffer_packet_size_10001_139'
;response_size             Allocated with name '_process_packet_from_buffer_response_size_10001_139'
;packet_data               Allocated with name '_process_packet_from_buffer_packet_data_10002_142'
;response                  Allocated with name '_process_packet_from_buffer_response_10003_145'
;------------------------------------------------------------
;	tcp.c:130: void process_packet_from_buffer(uint16_t start_address) {
;	-----------------------------------------
;	 function process_packet_from_buffer
;	-----------------------------------------
_process_packet_from_buffer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_process_packet_from_buffer_start_address_10000_136
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:132: if (start_address > 0x1FFF) {
	mov	dptr,#_process_packet_from_buffer_start_address_10000_136
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
;	tcp.c:133: printf("\n\rInvalid start address: %04X\n\r", start_address);
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
;	tcp.c:134: return;
	ret
00102$:
;	tcp.c:143: if (spi_buffer_read(2, start_address, next_packet_start) != 2) {
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,#_process_packet_from_buffer_next_packet_start_10001_139
	movx	@dptr,a
	mov	a,#(_process_packet_from_buffer_next_packet_start_10001_139 >> 8)
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
;	tcp.c:144: printf("\n\rFailed to read packet start address bytes\n\r");
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
;	tcp.c:145: return;
	ret
00104$:
;	tcp.c:149: next_start_address = ((uint16_t)next_packet_start[1] << 8) | next_packet_start[0];
	mov	dptr,#(_process_packet_from_buffer_next_packet_start_10001_139 + 0x0001)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#_process_packet_from_buffer_next_packet_start_10001_139
	movx	a,@dptr
	mov	r1,#0x00
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
;	tcp.c:152: if (next_start_address < start_address) {
	clr	c
	mov	a,r3
	subb	a,r6
	mov	a,r2
	subb	a,r7
	jnc	00106$
;	tcp.c:153: printf("\n\rInvalid next start address: 0x%04X\n\r", next_start_address);
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
;	tcp.c:154: return;
	ret
00106$:
;	tcp.c:156: packet_size = next_start_address - (start_address+6);
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
;	tcp.c:159: uint8_t *packet_data = (uint8_t *)malloc(packet_size);
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
;	tcp.c:160: if (packet_data == NULL) {
	mov	a,_process_packet_from_buffer_sloc0_1_0
	orl	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
	jnz	00108$
;	tcp.c:161: printf("\n\rMemory allocation failed for packet size: %d\n\r", packet_size);
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
;	tcp.c:162: return;
	ret
00108$:
;	tcp.c:166: if (spi_buffer_read(packet_size, start_address+6, packet_data) != packet_size) {
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
;	tcp.c:167: printf("\n\rFailed to read packet data\n\r");
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
;	tcp.c:168: free(packet_data);
	mov	r4,_process_packet_from_buffer_sloc0_1_0
	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
	mov	r5,#0x00
	mov	dpl, r4
	mov	dph, r1
	mov	b, r5
;	tcp.c:169: return;
	ljmp	_free
00110$:
;	tcp.c:173: uint8_t *response = process_tcp_packet(packet_data, packet_size, &response_size);
	mov	dptr,#_process_tcp_packet_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_tcp_packet_PARM_3
	mov	a,#_process_packet_from_buffer_response_size_10001_139
	movx	@dptr,a
	mov	a,#(_process_packet_from_buffer_response_size_10001_139 >> 8)
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
;	tcp.c:176: if (response != NULL) {
	mov	a,r1
	orl	a,r4
	jnz	00157$
	ljmp	00112$
00157$:
;	tcp.c:177: printf("\nProcessed response data:\n");
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
;	tcp.c:178: print_hexdump(response, response_size);
	mov	dptr,#_process_packet_from_buffer_response_size_10001_139
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_print_hexdump_PARM_2
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
	lcall	_print_hexdump
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	tcp.c:179: transmit_tcp_packet(response, response_size);
	mov	dptr,#_process_packet_from_buffer_response_size_10001_139
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,r2
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
;	tcp.c:180: free(response); // Free response memory if allocated dynamically
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
;	tcp.c:182: printf("\nNo response generated by TCP packet processing.\n");
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
;	tcp.c:186: free(packet_data);
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
;	tcp.c:189: packet_size, start_address, next_start_address - 1);
	dec	r3
	cjne	r3,#0xff,00158$
	dec	r2
00158$:
;	tcp.c:188: printf("\n\rSuccessfully processed packet of size %d from 0x%04X to 0x%04X\n\r",
	push	ar3
	push	ar2
	mov	dptr,#_process_packet_from_buffer_start_address_10000_136
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
;	tcp.c:190: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_tcp_packet'
;------------------------------------------------------------
;packet_size               Allocated with name '_transmit_tcp_packet_PARM_2'
;packet                    Allocated with name '_transmit_tcp_packet_packet_10000_148'
;start_address             Allocated with name '_transmit_tcp_packet_start_address_10000_149'
;end_address               Allocated with name '_transmit_tcp_packet_end_address_10001_151'
;------------------------------------------------------------
;	tcp.c:193: void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
;	-----------------------------------------
;	 function transmit_tcp_packet
;	-----------------------------------------
_transmit_tcp_packet:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_transmit_tcp_packet_packet_10000_148
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	tcp.c:198: if ((start_address + packet_size - 1) > 0x1FFF) {
	mov	dptr,#_transmit_tcp_packet_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	a,#0x0c
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
;	tcp.c:199: printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
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
;	tcp.c:200: return;
	ret
00102$:
;	tcp.c:202: uint16_t end_address = start_address + packet_size - 1;
	mov	ar4,r6
	mov	a,#0x0c
	add	a, r7
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00131$
	dec	r5
00131$:
;	tcp.c:203: spi_buffer_write(packet_size, start_address, packet);
	mov	dptr,#_transmit_tcp_packet_packet_10000_148
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
	mov	a,#0x0c
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
;	tcp.c:206: enc28j60_set_transmit_pointers(start_address, end_address);
	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0c00
	lcall	_enc28j60_set_transmit_pointers
;	tcp.c:209: enc28j60_start_transmission();
	lcall	_enc28j60_start_transmission
;	tcp.c:212: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
	mov	dptr,#0x01f4
	lcall	_wait_for_transmission_complete
	mov	a, dpl
	jz	00107$
;	tcp.c:214: if (enc28j60_transmission_successful()) {
	lcall	_enc28j60_transmission_successful
	mov	a, dpl
	mov	b, dph
	orl	a,b
	jz	00104$
;	tcp.c:215: printf("TCP request sent successfully.\n\r");
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
;	tcp.c:217: printf("TCP transmission failed. Check error flags.\n\r");
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
;	tcp.c:221: "Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
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
;	tcp.c:223: }
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

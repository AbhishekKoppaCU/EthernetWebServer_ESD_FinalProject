;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module Eth
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _external_interrupt0_isr
	.globl _enc28j60_transmission_successful
	.globl _wait_for_transmission_complete
	.globl _enc28j60_set_transmit_pointers
	.globl _enc28j60_start_transmission
	.globl _delay_ms
	.globl _set_mac_address
	.globl _spi_control_write
	.globl _spi_buffer_write
	.globl _mac_spi_read
	.globl _printf
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
	.globl _target_ip
	.globl _source_ip
	.globl _dest_mac
	.globl _source_mac
	.globl _enc28j60_set_transmit_pointers_PARM_2
	.globl _enc28j60_init_rx_buffer_PARM_2
	.globl _enc28j60_init_rx_buffer
	.globl _RX_disable
	.globl _RX_enable
	.globl _send_arp_request
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
_enc28j60_transmission_successful_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_delay_ms_ms_10000_71:
	.ds 2
_delay_ms_i_20000_73:
	.ds 4
_enc28j60_init_rx_buffer_PARM_2:
	.ds 2
_enc28j60_init_rx_buffer_start_address_10000_77:
	.ds 2
_enc28j60_set_transmit_pointers_PARM_2:
	.ds 2
_enc28j60_set_transmit_pointers_start_address_10000_80:
	.ds 2
_wait_for_transmission_complete_timeout_ms_10000_82:
	.ds 2
_send_arp_request_source_mac_10000_92:
	.ds 6
_send_arp_request_dest_mac_10000_92:
	.ds 6
_send_arp_request_source_ip_10000_92:
	.ds 4
_send_arp_request_target_ip_10000_92:
	.ds 4
_send_arp_request_arp_packet_10000_92:
	.ds 43
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_source_mac::
	.ds 6
_dest_mac::
	.ds 6
_source_ip::
	.ds 4
_target_ip::
	.ds 4
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
;Allocation info for local variables in function 'set_mac_address'
;------------------------------------------------------------
;mac_address               Allocated with name '_set_mac_address_mac_address_10000_69'
;------------------------------------------------------------
;	Eth.c:35: void set_mac_address(uint8_t* mac_address)
;	-----------------------------------------
;	 function set_mac_address
;	-----------------------------------------
_set_mac_address:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Eth.c:41: spi_control_write(3, 0x01, 0x02);  // MAADR6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl, #0x03
	lcall	_spi_control_write
;	Eth.c:42: spi_control_write(3, 0x00, 0x11);  // MAADR5
	mov	dptr,#_spi_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x11
	movx	@dptr,a
	mov	dpl, #0x03
	lcall	_spi_control_write
;	Eth.c:43: spi_control_write(3, 0x03, 0x22);  // MAADR4
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x22
	movx	@dptr,a
	mov	dpl, #0x03
	lcall	_spi_control_write
;	Eth.c:44: spi_control_write(3, 0x02, 0x33);  // MAADR3
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x33
	movx	@dptr,a
	mov	dpl, #0x03
	lcall	_spi_control_write
;	Eth.c:45: spi_control_write(3, 0x05, 0x44);  // MAADR2
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x44
	movx	@dptr,a
	mov	dpl, #0x03
	lcall	_spi_control_write
;	Eth.c:46: spi_control_write(3, 0x04, 0x55);  // MAADR1
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x55
	movx	@dptr,a
	mov	dpl, #0x03
;	Eth.c:48: }
	ljmp	_spi_control_write
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_10000_71'
;i                         Allocated with name '_delay_ms_i_20000_73'
;------------------------------------------------------------
;	Eth.c:51: void delay_ms(uint16_t ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_ms_10000_71
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:53: for (volatile uint32_t i = 0; i < ms * 1000; i++)
	mov	dptr,#_delay_ms_i_20000_73
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_delay_ms_ms_10000_71
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00103$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	dptr,#_delay_ms_i_20000_73
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
	push	ar6
	push	ar7
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	pop	ar7
	pop	ar6
	jnc	00105$
	mov	dptr,#_delay_ms_i_20000_73
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_delay_ms_i_20000_73
	mov	a,#0x01
	add	a, r2
	movx	@dptr,a
	clr	a
	addc	a, r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a, r4
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a, r5
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00105$:
;	Eth.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc28j60_start_transmission'
;------------------------------------------------------------
;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_76'
;------------------------------------------------------------
;	Eth.c:59: void enc28j60_start_transmission(void)
;	-----------------------------------------
;	 function enc28j60_start_transmission
;	-----------------------------------------
_enc28j60_start_transmission:
;	Eth.c:61: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1f
	lcall	_mac_spi_read
	mov	a, dpl
;	Eth.c:62: econ1 |= 0x08; // Set TXRTS (bit 3)
	orl	a,#0x08
	mov	r7,a
;	Eth.c:63: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x00
;	Eth.c:64: }
	ljmp	_spi_control_write
;------------------------------------------------------------
;Allocation info for local variables in function 'enc28j60_init_rx_buffer'
;------------------------------------------------------------
;end_address               Allocated with name '_enc28j60_init_rx_buffer_PARM_2'
;start_address             Allocated with name '_enc28j60_init_rx_buffer_start_address_10000_77'
;------------------------------------------------------------
;	Eth.c:65: void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address)
;	-----------------------------------------
;	 function enc28j60_init_rx_buffer
;	-----------------------------------------
_enc28j60_init_rx_buffer:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_77
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:68: if (start_address >= end_address || end_address > 0x1FFF) {
	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00101$
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x1f
	subb	a,r3
	jnc	00102$
00101$:
;	Eth.c:69: printf("Invalid RX buffer range.\n");
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
;	Eth.c:70: return;
	ret
00102$:
;	Eth.c:73: spi_control_write(0, 0x08, (uint8_t)(start_address & 0xFF)); // ERXSTL (low byte)
	mov	ar3,r6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_control_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:74: spi_control_write(0, 0x09, (uint8_t)((start_address >> 8) & 0xFF)); // ERXSTH (high byte)
	mov	ar3,r7
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_control_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:77: spi_control_write(0, 0x0A, (uint8_t)(end_address & 0xFF)); // ERXNDL (low byte)
	mov	ar3,r4
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_control_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:78: spi_control_write(0, 0x0B, (uint8_t)((end_address >> 8) & 0xFF)); // ERXNDH (high byte)
	mov	ar3,r5
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0b
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_control_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:81: spi_control_write(0, 0x0C, start_address); // ERXRDPTL (low byte)
	mov	ar3,r6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0c
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_spi_control_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:82: spi_control_write(0, 0x0D, start_address); // ERXRDPTH (high byte)
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_control_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:90: printf("RX buffer initialized: 0x%04X to 0x%04X.\n", start_address, end_address);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	Eth.c:91: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
;------------------------------------------------------------
;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_80'
;------------------------------------------------------------
;	Eth.c:93: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
;	-----------------------------------------
;	 function enc28j60_set_transmit_pointers
;	-----------------------------------------
_enc28j60_set_transmit_pointers:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_80
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:96: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_80
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_spi_control_write
	pop	ar6
	pop	ar7
;	Eth.c:97: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
	mov	ar6,r7
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	Eth.c:100: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar7
	push	ar6
	lcall	_spi_control_write
	pop	ar6
	pop	ar7
;	Eth.c:101: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
	mov	ar6,r7
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
;	Eth.c:102: }
	ljmp	_spi_control_write
;------------------------------------------------------------
;Allocation info for local variables in function 'wait_for_transmission_complete'
;------------------------------------------------------------
;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_82'
;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_83'
;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_84'
;------------------------------------------------------------
;	Eth.c:104: bool wait_for_transmission_complete(uint16_t timeout_ms)
;	-----------------------------------------
;	 function wait_for_transmission_complete
;	-----------------------------------------
_wait_for_transmission_complete:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_82
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	Eth.c:108: while (elapsed < timeout_ms) {
	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_82
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	Eth.c:109: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1f
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_mac_spi_read
	mov	a, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:110: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
	jb	acc.3,00102$
;	Eth.c:111: return true;  // Transmission completed
	mov	dpl, #0x01
	ret
00102$:
;	Eth.c:114: delay_ms(1);  // Wait 1 ms
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	Eth.c:115: elapsed++;
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	Eth.c:118: return false;  // Timed out
	mov	dpl, #0x00
;	Eth.c:119: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc28j60_transmission_successful'
;------------------------------------------------------------
;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_86'
;------------------------------------------------------------
;	Eth.c:121: bool enc28j60_transmission_successful()
;	-----------------------------------------
;	 function enc28j60_transmission_successful
;	-----------------------------------------
_enc28j60_transmission_successful:
;	Eth.c:123: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1d
	lcall	_mac_spi_read
;	Eth.c:124: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
	mov	a,dpl
	rr	a
	anl	a,#0x01
	cjne	a,#0x01,00103$
00103$:
	mov  _enc28j60_transmission_successful_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl, a
;	Eth.c:125: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RX_disable'
;------------------------------------------------------------
;econ1_value               Allocated with name '_RX_disable_econ1_value_10000_88'
;------------------------------------------------------------
;	Eth.c:126: void RX_disable(void)
;	-----------------------------------------
;	 function RX_disable
;	-----------------------------------------
_RX_disable:
;	Eth.c:128: uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1f
	lcall	_mac_spi_read
	mov	a, dpl
;	Eth.c:131: econ1_value &= ~(0x04);
	anl	a,#0xfb
	mov	r7,a
;	Eth.c:134: spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x00
;	Eth.c:135: }
	ljmp	_spi_control_write
;------------------------------------------------------------
;Allocation info for local variables in function 'RX_enable'
;------------------------------------------------------------
;econ1_value               Allocated with name '_RX_enable_econ1_value_10000_90'
;------------------------------------------------------------
;	Eth.c:137: void RX_enable(void)
;	-----------------------------------------
;	 function RX_enable
;	-----------------------------------------
_RX_enable:
;	Eth.c:139: uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1f
	lcall	_mac_spi_read
	mov	a, dpl
;	Eth.c:142: econ1_value |= 0x04;
	orl	a,#0x04
	mov	r7,a
;	Eth.c:145: spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1f
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x00
;	Eth.c:146: }
	ljmp	_spi_control_write
;------------------------------------------------------------
;Allocation info for local variables in function 'send_arp_request'
;------------------------------------------------------------
;source_mac                Allocated with name '_send_arp_request_source_mac_10000_92'
;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_92'
;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_92'
;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_92'
;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_92'
;i                         Allocated with name '_send_arp_request_i_20000_93'
;i                         Allocated with name '_send_arp_request_i_20000_95'
;i                         Allocated with name '_send_arp_request_i_20000_97'
;i                         Allocated with name '_send_arp_request_i_20000_99'
;i                         Allocated with name '_send_arp_request_i_20000_101'
;frame_size                Allocated with name '_send_arp_request_frame_size_10001_103'
;start_address             Allocated with name '_send_arp_request_start_address_10001_103'
;end_address               Allocated with name '_send_arp_request_end_address_10002_105'
;------------------------------------------------------------
;	Eth.c:148: void send_arp_request(void)
;	-----------------------------------------
;	 function send_arp_request
;	-----------------------------------------
_send_arp_request:
;	Eth.c:152: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
	mov	dptr,#_send_arp_request_source_mac_10000_92
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0002)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0003)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0004)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0005)
	mov	a,#0x55
	movx	@dptr,a
;	Eth.c:153: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
	mov	dptr,#_send_arp_request_dest_mac_10000_92
	mov	a,#0xf8
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0001)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0002)
	mov	a,#0xa4
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0003)
	mov	a,#0x8c
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0004)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0005)
	mov	a,#0x31
	movx	@dptr,a
;	Eth.c:154: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
	mov	dptr,#_send_arp_request_source_ip_10000_92
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	Eth.c:155: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
	mov	dptr,#_send_arp_request_target_ip_10000_92
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0003)
	movx	@dptr,a
;	Eth.c:159: arp_packet[0] = 0x0E;
	mov	dptr,#_send_arp_request_arp_packet_10000_92
	mov	a,#0x0e
	movx	@dptr,a
;	Eth.c:163: set_mac_address(source_mac);
	mov	dptr,#_send_arp_request_source_mac_10000_92
	mov	b, #0x00
	lcall	_set_mac_address
;	Eth.c:166: for (int i = 0; i < 6; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x06
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	Eth.c:168: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
	mov	ar5,r6
	mov	a,r5
	inc	a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a, #_send_arp_request_arp_packet_10000_92
	mov	r4,a
	mov	a,r3
	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
	mov	r3,a
	mov	a,r6
	add	a, #_send_arp_request_dest_mac_10000_92
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_dest_mac_10000_92 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r3
	movx	@dptr,a
;	Eth.c:169: arp_packet[i + 7] = source_mac[i];  // Source MAC address
	mov	a,#0x07
	add	a, r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a, #_send_arp_request_arp_packet_10000_92
	mov	r5,a
	mov	a,r4
	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
	mov	r4,a
	mov	a,r6
	add	a, #_send_arp_request_source_mac_10000_92
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_source_mac_10000_92 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	Eth.c:166: for (int i = 0; i < 6; i++)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
	sjmp	00115$
00101$:
;	Eth.c:173: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000d)
	mov	a,#0x08
	movx	@dptr,a
;	Eth.c:174: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000e)
	mov	a,#0x06
	movx	@dptr,a
;	Eth.c:178: arp_packet[15] = 0x00;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000f)
	clr	a
	movx	@dptr,a
;	Eth.c:179: arp_packet[16] = 0x01;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0010)
	inc	a
	movx	@dptr,a
;	Eth.c:182: arp_packet[17] = 0x08;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0011)
	mov	a,#0x08
	movx	@dptr,a
;	Eth.c:183: arp_packet[18] = 0x00;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0012)
	clr	a
	movx	@dptr,a
;	Eth.c:186: arp_packet[19] = 0x06;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0013)
	mov	a,#0x06
	movx	@dptr,a
;	Eth.c:189: arp_packet[20] = 0x04;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0014)
	mov	a,#0x04
	movx	@dptr,a
;	Eth.c:192: arp_packet[21] = 0x00;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0015)
	clr	a
	movx	@dptr,a
;	Eth.c:193: arp_packet[22] = 0x01;
	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0016)
	inc	a
	movx	@dptr,a
;	Eth.c:196: for (int i = 0; i < 6; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
	clr	c
	mov	a,r6
	subb	a,#0x06
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	Eth.c:197: arp_packet[23 + i] = source_mac[i];
	mov	ar5,r6
	mov	a,#0x17
	add	a, r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a, #_send_arp_request_arp_packet_10000_92
	mov	r5,a
	mov	a,r4
	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
	mov	r4,a
	mov	a,r6
	add	a, #_send_arp_request_source_mac_10000_92
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_source_mac_10000_92 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	Eth.c:196: for (int i = 0; i < 6; i++) {
	inc	r6
	cjne	r6,#0x00,00118$
	inc	r7
	sjmp	00118$
00102$:
;	Eth.c:201: for (int i = 0; i < 4; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00121$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	Eth.c:202: arp_packet[29 + i] = source_ip[i];
	mov	ar5,r6
	mov	a,#0x1d
	add	a, r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a, #_send_arp_request_arp_packet_10000_92
	mov	r5,a
	mov	a,r4
	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
	mov	r4,a
	mov	a,r6
	add	a, #_send_arp_request_source_ip_10000_92
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_source_ip_10000_92 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	Eth.c:201: for (int i = 0; i < 4; i++) {
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
	sjmp	00121$
00103$:
;	Eth.c:206: for (int i = 0; i < 6; i++) {
	mov	r7,#0x00
00124$:
	cjne	r7,#0x06,00215$
00215$:
	jnc	00104$
;	Eth.c:207: arp_packet[33 + i] = 0x00;
	mov	ar6,r7
	mov	a,#0x21
	add	a, r6
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a, #_send_arp_request_arp_packet_10000_92
	mov	dpl,a
	mov	a,r5
	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	Eth.c:206: for (int i = 0; i < 6; i++) {
	inc	r7
	sjmp	00124$
00104$:
;	Eth.c:211: for (int i = 0; i < 4; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00127$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	Eth.c:212: arp_packet[39 + i] = target_ip[i];
	mov	ar5,r6
	mov	a,#0x27
	add	a, r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a, #_send_arp_request_arp_packet_10000_92
	mov	r5,a
	mov	a,r4
	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
	mov	r4,a
	mov	a,r6
	add	a, #_send_arp_request_target_ip_10000_92
	mov	dpl,a
	mov	a,r7
	addc	a, #(_send_arp_request_target_ip_10000_92 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	Eth.c:211: for (int i = 0; i < 4; i++) {
	inc	r6
	cjne	r6,#0x00,00127$
	inc	r7
	sjmp	00127$
00105$:
;	Eth.c:225: spi_buffer_write(frame_size, start_address, arp_packet);
	mov	dptr,#_spi_buffer_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_write_PARM_3
	mov	a,#_send_arp_request_arp_packet_10000_92
	movx	@dptr,a
	mov	a,#(_send_arp_request_arp_packet_10000_92 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x002c
	lcall	_spi_buffer_write
;	Eth.c:228: enc28j60_set_transmit_pointers(start_address, end_address);
	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
	mov	a,#0x2b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_enc28j60_set_transmit_pointers
;	Eth.c:231: RX_enable();
	lcall	_RX_enable
;	Eth.c:232: enc28j60_start_transmission();
	lcall	_enc28j60_start_transmission
;	Eth.c:235: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
	mov	dptr,#0x01f4
	lcall	_wait_for_transmission_complete
	mov	a, dpl
	jz	00112$
;	Eth.c:237: if (enc28j60_transmission_successful()) {
	lcall	_enc28j60_transmission_successful
	mov	a, dpl
	jz	00109$
;	Eth.c:238: printf("ARP request sent successfully.\n\r");
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
	ret
00109$:
;	Eth.c:240: printf("ARP transmission failed. Check error flags.\n\r");
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
	ret
00112$:
;	Eth.c:243: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
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
;	Eth.c:245: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'external_interrupt0_isr'
;------------------------------------------------------------
;eir                       Allocated with name '_external_interrupt0_isr_eir_10000_111'
;------------------------------------------------------------
;	Eth.c:247: void external_interrupt0_isr(void) __interrupt (0)
;	-----------------------------------------
;	 function external_interrupt0_isr
;	-----------------------------------------
_external_interrupt0_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	Eth.c:249: uint8_t eir = mac_spi_read(0x1C, 0); // Read EIR register (address 0x1C, bank 0)
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1c
	lcall	_mac_spi_read
;	Eth.c:250: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
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
;	Eth.c:254: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Invalid RX buffer range."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "RX buffer initialized: 0x%04X to 0x%04X."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "ARP request sent successfully."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "ARP transmission failed. Check error flags."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
	.ascii "tly."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__source_mac:
	.db #0x02	; 2
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x44	; 68	'D'
	.db #0x55	; 85	'U'
__xinit__dest_mac:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
__xinit__source_ip:
	.db #0xc0	; 192
	.db #0xa8	; 168
	.db #0x01	; 1
	.db #0x64	; 100	'd'
__xinit__target_ip:
	.db #0xc0	; 192
	.db #0xa8	; 168
	.db #0x01	; 1
	.db #0x01	; 1
	.area CABS    (ABS,CODE)

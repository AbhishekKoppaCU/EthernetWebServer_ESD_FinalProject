;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _get_user_buffer_size
	.globl _hex_to_int
	.globl _send_arp_request
	.globl _init_MAC
	.globl _init_ENC
	.globl _spi_control_write
	.globl _eth_spi_read
	.globl _phy_spi_write
	.globl _phy_spi_read
	.globl _spi_buffer_write
	.globl _spi_buffer_read
	.globl _mac_spi_read
	.globl _enc_reset
	.globl _configure_SPI
	.globl _printf_tiny
	.globl _putchar
	.globl _getchar
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_hex_to_int_sloc0_1_0:
	.ds 3
_hex_to_int_sloc1_1_0:
	.ds 1
_hex_to_int_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
_hex_to_int_str_10000_69:
	.ds 3
_hex_to_int_result_10000_70:
	.ds 2
_hex_to_int_ASCII_20000_71:
	.ds 2
_get_user_buffer_size_input_10000_76:
	.ds 10
_main_buffer_40003_89:
	.ds 256
_main_buffer_40003_94:
	.ds 256
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'hex_to_int'
;------------------------------------------------------------
;str                       Allocated with name '_hex_to_int_str_10000_69'
;i                         Allocated with name '_hex_to_int_i_10000_70'
;result                    Allocated with name '_hex_to_int_result_10000_70'
;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_71'
;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
;------------------------------------------------------------
;	main.c:9: int hex_to_int(char* str)
;	-----------------------------------------
;	 function hex_to_int
;	-----------------------------------------
_hex_to_int:
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
	mov	dptr,#_hex_to_int_str_10000_69
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:12: int i = 0, result = 0;
	mov	dptr,#_hex_to_int_result_10000_70
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:13: while(str[i] != '\0')
	mov	dptr,#_hex_to_int_str_10000_69
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	_hex_to_int_sloc0_1_0,r5
	mov	(_hex_to_int_sloc0_1_0 + 1),r6
	mov	(_hex_to_int_sloc0_1_0 + 2),r7
	mov	r0,#0x00
	mov	r1,#0x00
00112$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,r0
	add	a, _hex_to_int_sloc0_1_0
	mov	r2,a
	mov	a,r1
	addc	a, (_hex_to_int_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_hex_to_int_sloc1_1_0,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_hex_to_int_sloc1_1_0
	jnz	00166$
	ljmp	00114$
00166$:
;	main.c:15: int ASCII = (int)str[i];
	push	ar2
	push	ar3
	push	ar4
	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
	mov	dptr,#_hex_to_int_ASCII_20000_71
	mov	a,_hex_to_int_sloc2_1_0
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:16: result *= 16;
	mov	dptr,#_hex_to_int_result_10000_70
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r3
	swap	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xf0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	mov	dptr,#_hex_to_int_result_10000_70
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:17: if(ASCII >= '0' && ASCII <= '9')
	clr	c
	mov	a,_hex_to_int_sloc2_1_0
	subb	a,#0x30
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00109$
	mov	a,#0x39
	subb	a,_hex_to_int_sloc2_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_hex_to_int_sloc2_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00109$
;	main.c:19: result += str[i] - 48;
	push	ar2
	push	ar3
	push	ar4
	mov	a,_hex_to_int_sloc2_1_0
	add	a,#0xd0
	mov	_hex_to_int_sloc2_1_0,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a,#0xff
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	mov	dptr,#_hex_to_int_result_10000_70
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hex_to_int_result_10000_70
	mov	a,_hex_to_int_sloc2_1_0
	add	a, r2
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a, r4
	inc	dptr
	movx	@dptr,a
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00110$
00109$:
;	main.c:21: else if(ASCII >= 'A' && ASCII <= 'F')
	mov	dptr,#_hex_to_int_ASCII_20000_71
	movx	a,@dptr
	mov	_hex_to_int_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	clr	c
	mov	a,_hex_to_int_sloc2_1_0
	subb	a,#0x41
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
	mov	a,#0x46
	subb	a,_hex_to_int_sloc2_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_hex_to_int_sloc2_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00105$
;	main.c:23: result += str[i] - 55;
	push	ar5
	push	ar6
	push	ar7
	mov	a,r0
	add	a, r2
	mov	r5,a
	mov	a,r1
	addc	a, r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	add	a,#0xc9
	mov	_hex_to_int_sloc2_1_0,a
	mov	a,r7
	addc	a,#0xff
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	mov	dptr,#_hex_to_int_result_10000_70
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hex_to_int_result_10000_70
	mov	a,_hex_to_int_sloc2_1_0
	add	a, r6
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a, r7
	inc	dptr
	movx	@dptr,a
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00110$
00105$:
;	main.c:25: else if(ASCII >= 'a' && ASCII <= 'f')
	mov	dptr,#_hex_to_int_ASCII_20000_71
	movx	a,@dptr
	mov	_hex_to_int_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	clr	c
	mov	a,_hex_to_int_sloc2_1_0
	subb	a,#0x61
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00110$
	mov	a,#0x66
	subb	a,_hex_to_int_sloc2_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_hex_to_int_sloc2_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00110$
;	main.c:27: result += str[i] - 87;
	push	ar2
	push	ar3
	push	ar4
	mov	a,r0
	add	a, r5
	mov	r2,a
	mov	a,r1
	addc	a, r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,#0x00
	add	a,#0xa9
	mov	_hex_to_int_sloc2_1_0,a
	mov	a,r4
	addc	a,#0xff
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	mov	dptr,#_hex_to_int_result_10000_70
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hex_to_int_result_10000_70
	mov	a,_hex_to_int_sloc2_1_0
	add	a, r3
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a, r4
	inc	dptr
	movx	@dptr,a
;	main.c:31: return result;
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:27: result += str[i] - 87;
00110$:
;	main.c:29: i++;
	inc	r0
	cjne	r0,#0x00,00173$
	inc	r1
00173$:
	ljmp	00112$
00114$:
;	main.c:31: return result;
	mov	dptr,#_hex_to_int_result_10000_70
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	main.c:33: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_user_buffer_size'
;------------------------------------------------------------
;i                         Allocated with name '_get_user_buffer_size_i_10000_76'
;output                    Allocated with name '_get_user_buffer_size_output_10000_76'
;input                     Allocated with name '_get_user_buffer_size_input_10000_76'
;ch                        Allocated with name '_get_user_buffer_size_ch_10000_76'
;------------------------------------------------------------
;	main.c:36: int get_user_buffer_size(void)
;	-----------------------------------------
;	 function get_user_buffer_size
;	-----------------------------------------
_get_user_buffer_size:
;	main.c:42: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4, dpl
	pop	ar6
	pop	ar7
	cjne	r4,#0x0a,00133$
	sjmp	00105$
00133$:
	cjne	r4,#0x0d,00134$
	sjmp	00105$
00134$:
	clr	c
	mov	a,r6
	subb	a,#0x09
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	main.c:44: putchar(ch);
	mov	ar3,r4
	mov	r5,#0x00
	mov	dpl, r3
	mov	dph, r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar6
	pop	ar7
;	main.c:45: input[i] = ch;      //Append the input array with the received character
	mov	a,r6
	add	a, #_get_user_buffer_size_input_10000_76
	mov	dpl,a
	mov	a,r7
	addc	a, #(_get_user_buffer_size_input_10000_76 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	main.c:46: i++;
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	main.c:48: input[i] = '\0';
	mov	a,r6
	add	a, #_get_user_buffer_size_input_10000_76
	mov	dpl,a
	mov	a,r7
	addc	a, #(_get_user_buffer_size_input_10000_76 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	main.c:49: output = hex_to_int(input); //Convert the char hex data to int
	mov	dptr,#_get_user_buffer_size_input_10000_76
	mov	b,a
	lcall	_hex_to_int
	mov	r6, dpl
	mov	r7, dph
;	main.c:50: printf_tiny("\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:52: return output;
	mov	dpl, r6
	mov	dph, r7
;	main.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;c                         Allocated with name '_main_c_20001_81'
;reg_bank                  Allocated with name '_main_reg_bank_40002_84'
;addr                      Allocated with name '_main_addr_40003_85'
;data                      Allocated with name '_main_data_40004_86'
;num_bytes                 Allocated with name '_main_num_bytes_40002_88'
;start_address             Allocated with name '_main_start_address_40003_89'
;buffer                    Allocated with name '_main_buffer_40003_89'
;i                         Allocated with name '_main_i_50003_90'
;num_bytes                 Allocated with name '_main_num_bytes_40002_93'
;start_address             Allocated with name '_main_start_address_40003_94'
;buffer                    Allocated with name '_main_buffer_40003_94'
;i                         Allocated with name '_main_i_50003_95'
;reg_bank                  Allocated with name '_main_reg_bank_40002_98'
;addr                      Allocated with name '_main_addr_40003_99'
;data                      Allocated with name '_main_data_40003_99'
;addr                      Allocated with name '_main_addr_40002_101'
;data                      Allocated with name '_main_data_40003_102'
;addr                      Allocated with name '_main_addr_40002_104'
;data                      Allocated with name '_main_data_40002_104'
;addr                      Allocated with name '_main_addr_40002_107'
;bank                      Allocated with name '_main_bank_40003_108'
;data                      Allocated with name '_main_data_40003_108'
;------------------------------------------------------------
;	main.c:55: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:57: printf("SPI Operations on 8051\n\r");
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
;	main.c:58: configure_SPI();
	lcall	_configure_SPI
;	main.c:59: init_ENC();
	lcall	_init_ENC
;	main.c:61: while(1)
00117$:
;	main.c:63: printf("\n\rChoose an action: \n\r");
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
;	main.c:64: printf("1 --> Control Write\n\r");
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
;	main.c:65: printf("2 --> Buffer Write\n\r");
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
;	main.c:66: printf("3 --> Buffer Read\n\r");
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
;	main.c:67: printf("4 --> MAC Register Read\n\r");
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
;	main.c:68: printf("5 --> PHY SPI Write\n\r");
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
;	main.c:69: printf("6 --> PHY SPI Read\n\r");
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
;	main.c:70: printf("7 --> ENC Reset\n\r");
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
;	main.c:71: printf("8 --> Read ETH Register\n\r");
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
;	main.c:72: printf("9 --> Display Menu\n\r");
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
;	main.c:73: printf("A --> Send ARP Request\n\r");
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
;	main.c:74: printf("B --> Init RX buffers\n\r");
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
;	main.c:76: char c = getchar();
	lcall	_getchar
	mov	r6, dpl
;	main.c:77: putchar(c);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl, r5
	mov	dph, r7
	push	ar6
	lcall	_putchar
;	main.c:78: printf("\n\r");
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
	pop	ar6
;	main.c:80: switch(c)
	cjne	r6,#0x31,00170$
00170$:
	jnc	00171$
	ljmp	00114$
00171$:
	mov	a,r6
	add	a,#0xff - 0x42
	jnc	00172$
	ljmp	00114$
00172$:
	mov	a,r6
	add	a,#0xcf
	mov	r6,a
	add	a,#(00173$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00174$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00173$:
	.db	00101$
	.db	00102$
	.db	00104$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00114$
	.db	00114$
	.db	00114$
	.db	00114$
	.db	00114$
	.db	00114$
	.db	00114$
	.db	00112$
	.db	00113$
00174$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00104$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00114$>>8
	.db	00114$>>8
	.db	00114$>>8
	.db	00114$>>8
	.db	00114$>>8
	.db	00114$>>8
	.db	00114$>>8
	.db	00112$>>8
	.db	00113$>>8
;	main.c:82: case '1': {
00101$:
;	main.c:83: printf("Enter the register bank to select:\n\r");
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
;	main.c:84: uint8_t reg_bank = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
;	main.c:85: printf("Enter the address of the Control Register:\n\r");
	push	ar6
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:86: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r5, dpl
;	main.c:87: printf("Enter the data you want to write:\n\r");
	push	ar5
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:88: uint8_t data = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r4, dpl
	pop	ar5
	pop	ar6
;	main.c:89: spi_control_write(reg_bank, addr, data);
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl, r6
	lcall	_spi_control_write
;	main.c:90: break;
	ljmp	00117$
;	main.c:92: case '2': {
00102$:
;	main.c:93: printf("Enter the number of bytes to write:\n\r");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:94: int num_bytes = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
	mov	r7, dph
;	main.c:95: printf("Enter the starting address:\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:96: uint16_t start_address = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
;	main.c:98: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:99: for (int i = 0; i < num_bytes; i++) {
	mov	r2,#0x00
	mov	r3,#0x00
00120$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	main.c:100: printf("Byte %d: ", i);
	push	ar4
	push	ar5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar2
	push	ar3
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:101: buffer[i] = get_user_buffer_size();
	mov	a,r2
	add	a, #_main_buffer_40003_89
	mov	r0,a
	mov	a,r3
	addc	a, #(_main_buffer_40003_89 >> 8)
	mov	r1,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_get_user_buffer_size
	mov	r4, dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar6
	pop	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	a,r4
	movx	@dptr,a
;	main.c:99: for (int i = 0; i < num_bytes; i++) {
	inc	r2
	cjne	r2,#0x00,00176$
	inc	r3
00176$:
	pop	ar5
	pop	ar4
	sjmp	00120$
00103$:
;	main.c:103: spi_buffer_write(num_bytes, start_address, buffer);
	mov	dptr,#_spi_buffer_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_write_PARM_3
	mov	a,#_main_buffer_40003_89
	movx	@dptr,a
	mov	a,#(_main_buffer_40003_89 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r6
	mov	dph, r7
	lcall	_spi_buffer_write
;	main.c:104: break;
	ljmp	00117$
;	main.c:106: case '3': {
00104$:
;	main.c:107: printf("Enter the number of bytes to read:\n\r");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:108: int num_bytes = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
	mov	r7, dph
;	main.c:109: printf("Enter the starting address:\n\r");
	push	ar7
	push	ar6
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:110: uint16_t start_address = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
;	main.c:112: spi_buffer_read(num_bytes, start_address, buffer);
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,#_main_buffer_40003_94
	movx	@dptr,a
	mov	a,#(_main_buffer_40003_94 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	_spi_buffer_read
;	main.c:113: printf("Read Data:\n\r");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:114: for (int i = 0; i < num_bytes; i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00123$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00177$
	ljmp	00117$
00177$:
;	main.c:115: printf("Byte %d: 0x%02X\n\r", i, buffer[i]);
	mov	a,r4
	add	a, #_main_buffer_40003_94
	mov	dpl,a
	mov	a,r5
	addc	a, #(_main_buffer_40003_94 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:114: for (int i = 0; i < num_bytes; i++) {
	inc	r4
;	main.c:119: case '4': {
	cjne	r4,#0x00,00123$
	inc	r5
	sjmp	00123$
00106$:
;	main.c:120: printf("Enter the MAC register bank to select:\n\r");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:121: uint8_t reg_bank = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
;	main.c:122: printf("Enter the address of the MAC Register:\n\r");
	push	ar6
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:123: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r5, dpl
	pop	ar6
;	main.c:124: uint8_t data = mac_spi_read(addr, reg_bank);
	mov	dptr,#_mac_spi_read_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl, r5
	lcall	_mac_spi_read
	mov	r7, dpl
;	main.c:125: printf("MAC Register Data: 0x%02X\n\r", data);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:126: break;
	ljmp	00117$
;	main.c:128: case '5': {
00107$:
;	main.c:129: printf("Enter the PHY register address:\n\r");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:130: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
;	main.c:131: printf("Enter the 16-bit data to write:\n\r");
	push	ar6
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:132: uint16_t data = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r5, dpl
	mov	r7, dph
	pop	ar6
;	main.c:133: phy_spi_write(addr, data);
	mov	dptr,#_phy_spi_write_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl, r6
	push	ar7
	push	ar5
	lcall	_phy_spi_write
	pop	ar5
	pop	ar7
;	main.c:134: printf("PHY Write Data: 0x%04X\n\r", data);
	push	ar5
	push	ar7
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:135: break;
	ljmp	00117$
;	main.c:137: case '6': {
00108$:
;	main.c:138: printf("Enter the PHY register address to read:\n\r");
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:139: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
;	main.c:140: uint16_t data = phy_spi_read(addr);
	lcall	_phy_spi_read
	mov	r6, dpl
	mov	r7, dph
;	main.c:141: printf("PHY Read Data: 0x%04X\n\r", data);
	push	ar6
	push	ar7
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:142: break;
	ljmp	00117$
;	main.c:144: case '7': {
00109$:
;	main.c:145: printf("Resetting ENC28J60...\n\r");
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:146: enc_reset();
	lcall	_enc_reset
;	main.c:147: break;
	ljmp	00117$
;	main.c:149: case '8': {
00110$:
;	main.c:150: printf("Enter the ETH register address to read:\n\r");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:151: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
;	main.c:152: printf("Enter the bank (0 or 1):\n\r");
	push	ar6
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:153: uint8_t bank = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r5, dpl
	pop	ar6
	mov	dptr,#_eth_spi_read_PARM_2
	mov	a,r5
	movx	@dptr,a
;	main.c:154: uint8_t data = eth_spi_read(addr, bank);
	mov	dpl, r6
	lcall	_eth_spi_read
	mov	r7, dpl
;	main.c:155: printf("ETH Register Data: 0x%02X\n\r", data);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:156: break;
	ljmp	00117$
;	main.c:158: case '9': {
00111$:
;	main.c:159: printf("\n\rChoose an action: \n\r");
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
;	main.c:160: printf("1 --> Control Write\n\r");
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
;	main.c:161: printf("2 --> Buffer Write\n\r");
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
;	main.c:162: printf("3 --> Buffer Read\n\r");
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
;	main.c:163: printf("4 --> MAC Register Read\n\r");
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
;	main.c:164: printf("5 --> PHY SPI Write\n\r");
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
;	main.c:165: printf("6 --> PHY SPI Read\n\r");
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
;	main.c:166: printf("7 --> ENC Reset\n\r");
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
;	main.c:167: printf("8 --> Read ETH Register\n\r");
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
;	main.c:168: break;
	ljmp	00117$
;	main.c:170: case 'A':{
00112$:
;	main.c:171: init_MAC();
	lcall	_init_MAC
;	main.c:172: send_arp_request();
	lcall	_send_arp_request
;	main.c:173: break;
	ljmp	00117$
;	main.c:175: case 'B':{
00113$:
;	main.c:176: init_ENC();
	lcall	_init_ENC
;	main.c:177: break;
	ljmp	00117$
;	main.c:179: default: {
00114$:
;	main.c:180: printf("Invalid option. Please select a valid action.\n\r");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:183: }
;	main.c:185: }
	ljmp	00117$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "SPI Operations on 8051"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "Choose an action: "
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "1 --> Control Write"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "2 --> Buffer Write"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "3 --> Buffer Read"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "4 --> MAC Register Read"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "5 --> PHY SPI Write"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "6 --> PHY SPI Read"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "7 --> ENC Reset"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "8 --> Read ETH Register"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "9 --> Display Menu"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "A --> Send ARP Request"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "B --> Init RX buffers"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Enter the register bank to select:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Enter the address of the Control Register:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "Enter the data you want to write:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Enter the number of bytes to write:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Enter the starting address:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Enter %d bytes of data (in hex):"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Byte %d: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Enter the number of bytes to read:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Read Data:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Byte %d: 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Enter the MAC register bank to select:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Enter the address of the MAC Register:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "MAC Register Data: 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "Enter the PHY register address:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "Enter the 16-bit data to write:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "PHY Write Data: 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "Enter the PHY register address to read:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "PHY Read Data: 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "Resetting ENC28J60..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "Enter the ETH register address to read:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "Enter the bank (0 or 1):"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "ETH Register Data: 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "Invalid option. Please select a valid action."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

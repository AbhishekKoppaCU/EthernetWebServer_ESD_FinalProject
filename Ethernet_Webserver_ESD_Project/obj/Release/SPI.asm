;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module SPI
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _configure_SPI
	.globl _SPI_send
	.globl _SPI_ctrl_read
	.globl _poll_MISTAT_BUSY
	.globl _test_read_ctrl
	.globl _ENC_PHY_read
	.globl _SPI_BB_init
	.globl _SPI_send_BB
	.globl _delay_us
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
_SPI_send_data_10000_56:
	.ds 1
_SPI_ctrl_read_addr_10000_59:
	.ds 1
_SPI_ctrl_read_receivedData_10000_60:
	.ds 1
_test_read_ctrl_address_10000_65:
	.ds 1
_SPI_send_BB_data_10000_71:
	.ds 1
_delay_us_us_10000_77:
	.ds 2
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
;Allocation info for local variables in function 'configure_SPI'
;------------------------------------------------------------
;	SPI.c:14: void configure_SPI(void)
;	-----------------------------------------
;	 function configure_SPI
;	-----------------------------------------
_configure_SPI:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	SPI.c:27: CS_PIN = 1;
;	assignBit
	setb	_P1_1
;	SPI.c:28: SPCON = 0x00;
	mov	_SPCON,#0x00
;	SPI.c:29: SPCON |= SS_DISABLE;
	orl	_SPCON,#0x20
;	SPI.c:30: SPCON |= MASTER_MODE;
	orl	_SPCON,#0x10
;	SPI.c:31: SPCON |= SPI_ENABLE;
	orl	_SPCON,#0x40
;	SPI.c:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_send'
;------------------------------------------------------------
;data                      Allocated with name '_SPI_send_data_10000_56'
;------------------------------------------------------------
;	SPI.c:35: void SPI_send(uint8_t data)
;	-----------------------------------------
;	 function SPI_send
;	-----------------------------------------
_SPI_send:
	mov	a,dpl
	mov	dptr,#_SPI_send_data_10000_56
	movx	@dptr,a
;	SPI.c:40: SPDAT = data;           // Config + MSB of data
	movx	a,@dptr
	mov	_SPDAT,a
;	SPI.c:42: while (!(SPSTA & 0x80))
00101$:
	mov	a,_SPSTA
	jnb	acc.7,00101$
;	SPI.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_ctrl_read'
;------------------------------------------------------------
;addr                      Allocated with name '_SPI_ctrl_read_addr_10000_59'
;receivedData              Allocated with name '_SPI_ctrl_read_receivedData_10000_60'
;------------------------------------------------------------
;	SPI.c:60: uint8_t SPI_ctrl_read(uint8_t addr)
;	-----------------------------------------
;	 function SPI_ctrl_read
;	-----------------------------------------
_SPI_ctrl_read:
	mov	a,dpl
	mov	dptr,#_SPI_ctrl_read_addr_10000_59
	movx	@dptr,a
;	SPI.c:66: SPDAT = addr;          // Send a dummy byte to generate clock pulses
	movx	a,@dptr
	mov	_SPDAT,a
;	SPI.c:67: while (!(SPSTA & 0x80))
00101$:
	mov	a,_SPSTA
	jnb	acc.7,00101$
;	SPI.c:73: receivedData = SPDAT;  // Read the data received from the slave
	mov	dptr,#_SPI_ctrl_read_receivedData_10000_60
	mov	a,_SPDAT
	movx	@dptr,a
;	SPI.c:79: return receivedData;   // Return the received data
	movx	a,@dptr
;	SPI.c:80: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'poll_MISTAT_BUSY'
;------------------------------------------------------------
;	SPI.c:82: void poll_MISTAT_BUSY(void)
;	-----------------------------------------
;	 function poll_MISTAT_BUSY
;	-----------------------------------------
_poll_MISTAT_BUSY:
;	SPI.c:84: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);                 //ECON1
	mov	dpl, #0x5f
	lcall	_SPI_send
;	SPI.c:85: SPI_send(ENC_REGISTER_BANK_3);
	mov	dpl, #0x03
	lcall	_SPI_send
;	SPI.c:87: SPI_ctrl_read(ENC_MISTAT);                                                 //Dummy byte
	mov	dpl, #0x0a
	lcall	_SPI_ctrl_read
;	SPI.c:88: while((SPI_ctrl_read(ENC_MISTAT) & 0x01) != 0)
00101$:
	mov	dpl, #0x0a
	lcall	_SPI_ctrl_read
	mov	a, dpl
	jnb	acc.0,00104$
;	SPI.c:90: printf("Busy wait!!");
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
	sjmp	00101$
00104$:
;	SPI.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'test_read_ctrl'
;------------------------------------------------------------
;address                   Allocated with name '_test_read_ctrl_address_10000_65'
;received_byte             Allocated with name '_test_read_ctrl_received_byte_10000_66'
;------------------------------------------------------------
;	SPI.c:94: void test_read_ctrl(uint8_t address)
;	-----------------------------------------
;	 function test_read_ctrl
;	-----------------------------------------
_test_read_ctrl:
	mov	a,dpl
	mov	dptr,#_test_read_ctrl_address_10000_65
	movx	@dptr,a
;	SPI.c:104: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	SPI.c:105: delay_us(2);
	mov	dptr,#0x0002
	lcall	_delay_us
;	SPI.c:107: SPI_ctrl_read(address);  //Dummy byte
	mov	dptr,#_test_read_ctrl_address_10000_65
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_SPI_ctrl_read
	pop	ar7
;	SPI.c:108: received_byte = SPI_ctrl_read(address);
	mov	dpl, r7
	lcall	_SPI_ctrl_read
;	SPI.c:109: delay_us(2);
	mov	dptr,#0x0002
	lcall	_delay_us
;	SPI.c:110: P1_1 = 1;
;	assignBit
	setb	_P1_1
;	SPI.c:111: delay_us(100);
	mov	dptr,#0x0064
;	SPI.c:114: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'ENC_PHY_read'
;------------------------------------------------------------
;PHY_reg                   Allocated with name '_ENC_PHY_read_PHY_reg_10000_67'
;received_LSB              Allocated with name '_ENC_PHY_read_received_LSB_10000_68'
;received_MSB              Allocated with name '_ENC_PHY_read_received_MSB_10000_68'
;received_word             Allocated with name '_ENC_PHY_read_received_word_10000_68'
;------------------------------------------------------------
;	SPI.c:117: uint16_t ENC_PHY_read(uint8_t PHY_reg)
;	-----------------------------------------
;	 function ENC_PHY_read
;	-----------------------------------------
_ENC_PHY_read:
;	SPI.c:121: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);                 //ECON1
	mov	dpl, #0x5f
	lcall	_SPI_send
;	SPI.c:122: SPI_send(ENC_REGISTER_BANK_2);
	mov	dpl, #0x02
	lcall	_SPI_send
;	SPI.c:123: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIREGADR);
	mov	dpl, #0x54
	lcall	_SPI_send
;	SPI.c:124: SPI_send(ENC_PHLCON);                                   //Write the address of the PHY register in the MIREGADR register
	mov	dpl, #0x14
	lcall	_SPI_send
;	SPI.c:126: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MICMD);
	mov	dpl, #0x52
	lcall	_SPI_send
;	SPI.c:127: SPI_send(SET);
	mov	dpl, #0x01
	lcall	_SPI_send
;	SPI.c:129: poll_MISTAT_BUSY();
	lcall	_poll_MISTAT_BUSY
;	SPI.c:131: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MICMD);
	mov	dpl, #0x52
	lcall	_SPI_send
;	SPI.c:132: SPI_send(CLEAR);
	mov	dpl, #0x00
	lcall	_SPI_send
;	SPI.c:135: SPI_ctrl_read(ENC_MIRDL);  //Dummy byte
	mov	dpl, #0x18
	lcall	_SPI_ctrl_read
;	SPI.c:136: received_LSB = SPI_ctrl_read(ENC_MIRDL);
	mov	dpl, #0x18
	lcall	_SPI_ctrl_read
	mov	r7, dpl
;	SPI.c:139: received_MSB = SPI_ctrl_read(ENC_MIRDH);  //Dummy byte
	mov	dpl, #0x19
	push	ar7
	lcall	_SPI_ctrl_read
	mov	r6, dpl
	pop	ar7
;	SPI.c:142: received_word = (received_MSB << 8) | received_LSB;
	mov	ar5,r6
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	orl	ar6,a
	mov	a,r4
	orl	ar5,a
;	SPI.c:143: return received_word;
	mov	dpl, r6
	mov	dph, r5
;	SPI.c:145: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_BB_init'
;------------------------------------------------------------
;	SPI.c:147: void SPI_BB_init(void)
;	-----------------------------------------
;	 function SPI_BB_init
;	-----------------------------------------
_SPI_BB_init:
;	SPI.c:149: SPCON = 0;
	mov	_SPCON,#0x00
;	SPI.c:150: SPI_DATA = 1;
;	assignBit
	setb	_P1_7
;	SPI.c:151: SPI_CLOCK = 0;
;	assignBit
	clr	_P1_6
;	SPI.c:152: SPI_CHIP_SELECT = 1;
;	assignBit
	setb	_P1_1
;	SPI.c:153: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_send_BB'
;------------------------------------------------------------
;data                      Allocated with name '_SPI_send_BB_data_10000_71'
;i                         Allocated with name '_SPI_send_BB_i_20000_73'
;------------------------------------------------------------
;	SPI.c:155: void SPI_send_BB(uint8_t data)
;	-----------------------------------------
;	 function SPI_send_BB
;	-----------------------------------------
_SPI_send_BB:
	mov	a,dpl
	mov	dptr,#_SPI_send_BB_data_10000_71
	movx	@dptr,a
;	SPI.c:158: printf("Sending BB data: %x\n\r", data);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
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
;	SPI.c:159: SPI_CHIP_SELECT = 0;
;	assignBit
	clr	_P1_1
;	SPI.c:160: for(int i = 0; i < 8; i++)
	mov	r7,#0x00
00106$:
	cjne	r7,#0x08,00129$
00129$:
	jnc	00104$
;	SPI.c:163: if(data & 0x80)
	mov	dptr,#_SPI_send_BB_data_10000_71
	movx	a,@dptr
	jnb	acc.7,00102$
;	SPI.c:165: SPI_DATA = 1;
;	assignBit
	setb	_P1_7
	sjmp	00103$
00102$:
;	SPI.c:169: SPI_DATA = 0;
;	assignBit
	clr	_P1_7
00103$:
;	SPI.c:171: SPI_CLOCK = 1;
;	assignBit
	setb	_P1_6
;	SPI.c:173: data = data << 1;
	mov	dptr,#_SPI_send_BB_data_10000_71
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	SPI.c:174: SPI_CLOCK = 0;
;	assignBit
	clr	_P1_6
;	SPI.c:175: SPI_DATA = 0;
;	assignBit
	clr	_P1_7
;	SPI.c:160: for(int i = 0; i < 8; i++)
	inc	r7
	sjmp	00106$
00104$:
;	SPI.c:178: SPI_CHIP_SELECT = 1;
;	assignBit
	setb	_P1_1
;	SPI.c:179: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;us                        Allocated with name '_delay_us_us_10000_77'
;------------------------------------------------------------
;	SPI.c:181: void delay_us(uint16_t us)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_us_us_10000_77
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	SPI.c:183: while (us--)
	mov	dptr,#_delay_us_us_10000_77
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00118$
	dec	r7
00118$:
	mov	dptr,#_delay_us_us_10000_77
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r5
	jnz	00101$
	mov	dptr,#_delay_us_us_10000_77
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	SPI.c:186: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Busy wait!!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Sending BB data: %x"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

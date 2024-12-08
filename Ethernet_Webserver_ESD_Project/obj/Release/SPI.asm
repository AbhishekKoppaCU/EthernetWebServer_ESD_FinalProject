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
	.globl _spi_buffer_write_PARM_3
	.globl _spi_buffer_write_PARM_2
	.globl _spi_buffer_read_PARM_3
	.globl _spi_buffer_read_PARM_2
	.globl _buffer_init_PARM_2
	.globl _mac_spi_read_PARM_2
	.globl _phy_spi_write_PARM_2
	.globl _eth_spi_read_PARM_2
	.globl _spi_control_write_PARM_3
	.globl _spi_control_write_PARM_2
	.globl _SPI_ReadByte
	.globl _spi_set_autoinc
	.globl _select_reg_bank
	.globl _spi_control_write
	.globl _configure_SPI
	.globl _SPI_send
	.globl _enc_reset
	.globl _eth_spi_read
	.globl _phy_spi_write
	.globl _mac_spi_read
	.globl _phy_spi_read
	.globl _busy_wait
	.globl _buffer_init
	.globl _spi_buffer_read
	.globl _spi_buffer_write
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
_SPI_ReadByte_received_data_10000_113:
	.ds 1
_select_reg_bank_bank_10000_117:
	.ds 1
_select_reg_bank_data_10001_119:
	.ds 1
_spi_control_write_PARM_2:
	.ds 1
_spi_control_write_PARM_3:
	.ds 1
_spi_control_write_reg_bank_10000_122:
	.ds 1
_SPI_send_data_10000_126:
	.ds 1
_eth_spi_read_PARM_2:
	.ds 1
_eth_spi_read_addr_10000_131:
	.ds 1
_phy_spi_write_PARM_2:
	.ds 2
_phy_spi_write_addr_10000_135:
	.ds 1
_mac_spi_read_PARM_2:
	.ds 1
_mac_spi_read_addr_10000_137:
	.ds 1
_phy_spi_read_addr_10000_141:
	.ds 1
_busy_wait_data_10000_145:
	.ds 1
_buffer_init_PARM_2:
	.ds 2
_buffer_init_start_address_10000_147:
	.ds 2
_spi_buffer_read_PARM_2:
	.ds 2
_spi_buffer_read_PARM_3:
	.ds 3
_spi_buffer_read_num_bytes_10000_151:
	.ds 2
_spi_buffer_write_PARM_2:
	.ds 2
_spi_buffer_write_PARM_3:
	.ds 3
_spi_buffer_write_num_bytes_10000_161:
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
;Allocation info for local variables in function 'SPI_ReadByte'
;------------------------------------------------------------
;received_data             Allocated with name '_SPI_ReadByte_received_data_10000_113'
;------------------------------------------------------------
;	SPI.c:4: uint8_t SPI_ReadByte(void)
;	-----------------------------------------
;	 function SPI_ReadByte
;	-----------------------------------------
_SPI_ReadByte:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	SPI.c:9: SPDAT = 0xFF;
	mov	_SPDAT,#0xff
;	SPI.c:12: while (!(SPSTA & 0x80)) {
00101$:
	mov	a,_SPSTA
	jnb	acc.7,00101$
;	SPI.c:17: received_data = SPDAT;
	mov	dptr,#_SPI_ReadByte_received_data_10000_113
	mov	a,_SPDAT
	movx	@dptr,a
;	SPI.c:19: return received_data;
	movx	a,@dptr
;	SPI.c:20: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_set_autoinc'
;------------------------------------------------------------
;	SPI.c:22: void spi_set_autoinc(void)
;	-----------------------------------------
;	 function spi_set_autoinc
;	-----------------------------------------
_spi_set_autoinc:
;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
;	assignBit
	clr	_P1_1
;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
	mov	dpl, #0x5e
	lcall	_SPI_send
;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
	mov	dpl, #0x80
	lcall	_SPI_send
;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
;	assignBit
	setb	_P1_1
;	SPI.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'select_reg_bank'
;------------------------------------------------------------
;bank                      Allocated with name '_select_reg_bank_bank_10000_117'
;data                      Allocated with name '_select_reg_bank_data_10001_119'
;i                         Allocated with name '_select_reg_bank_i_20001_121'
;------------------------------------------------------------
;	SPI.c:33: void select_reg_bank(uint8_t bank)
;	-----------------------------------------
;	 function select_reg_bank
;	-----------------------------------------
_select_reg_bank:
	mov	a,dpl
	mov	dptr,#_select_reg_bank_bank_10000_117
	movx	@dptr,a
;	SPI.c:35: CS_LOW;
;	assignBit
	clr	_P1_1
;	SPI.c:36: SPI_send(0X1F); // Send the address
	mov	dpl, #0x1f
	lcall	_SPI_send
;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
	lcall	_SPI_ReadByte
	mov	r7, dpl
;	SPI.c:38: CS_HIGH;
;	assignBit
	setb	_P1_1
;	SPI.c:41: data &= ~0x03; // Clear the last two bits
	anl	ar7,#0xfc
;	SPI.c:42: switch (bank)
	mov	dptr,#_select_reg_bank_bank_10000_117
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r6
	add	a,r6
;	SPI.c:44: case 0:
	mov	dptr,#00133$
	jmp	@a+dptr
00133$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	SPI.c:45: data |= 0x00; // Last two bits: 00
	mov	dptr,#_select_reg_bank_data_10001_119
	mov	a,r7
	movx	@dptr,a
;	SPI.c:46: break;
;	SPI.c:47: case 1:
	sjmp	00115$
00102$:
;	SPI.c:48: data |= 0x01; // Last two bits: 01
	mov	dptr,#_select_reg_bank_data_10001_119
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
;	SPI.c:49: break;
;	SPI.c:50: case 2:
	sjmp	00115$
00103$:
;	SPI.c:51: data |= 0x02; // Last two bits: 10
	mov	dptr,#_select_reg_bank_data_10001_119
	mov	a,#0x02
	orl	a,r7
	movx	@dptr,a
;	SPI.c:52: break;
;	SPI.c:53: case 3:
	sjmp	00115$
00104$:
;	SPI.c:54: data |= 0x03; // Last two bits: 11
	mov	dptr,#_select_reg_bank_data_10001_119
	mov	a,#0x03
	orl	a,r7
	movx	@dptr,a
;	SPI.c:55: break;
;	SPI.c:56: default:
	sjmp	00115$
00105$:
;	SPI.c:57: printf("wrong bank");
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
;	SPI.c:58: return;
;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
	ret
00115$:
	mov	r7,#0x00
00109$:
	cjne	r7,#0x10,00134$
00134$:
	jnc	00107$
	inc	r7
	sjmp	00109$
00107$:
;	SPI.c:63: CS_LOW;
;	assignBit
	clr	_P1_1
;	SPI.c:64: SPI_send(0x5F);
	mov	dpl, #0x5f
	lcall	_SPI_send
;	SPI.c:65: SPI_send(data); // Send the modified data
	mov	dptr,#_select_reg_bank_data_10001_119
	movx	a,@dptr
	mov	dpl,a
	lcall	_SPI_send
;	SPI.c:66: CS_HIGH;
;	assignBit
	setb	_P1_1
;	SPI.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_control_write'
;------------------------------------------------------------
;addr                      Allocated with name '_spi_control_write_PARM_2'
;data                      Allocated with name '_spi_control_write_PARM_3'
;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_122'
;opcode                    Allocated with name '_spi_control_write_opcode_10000_123'
;------------------------------------------------------------
;	SPI.c:69: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
;	-----------------------------------------
;	 function spi_control_write
;	-----------------------------------------
_spi_control_write:
	mov	a,dpl
	mov	dptr,#_spi_control_write_reg_bank_10000_122
	movx	@dptr,a
;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
	mov	dptr,#_spi_control_write_PARM_2
	movx	a,@dptr
	add	a, #0x40
	movx	@dptr,a
;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
	mov	dptr,#_spi_control_write_reg_bank_10000_122
	movx	a,@dptr
	mov	dpl,a
	lcall	_select_reg_bank
;	SPI.c:77: CS_LOW;
;	assignBit
	clr	_P1_1
;	SPI.c:80: SPI_send(addr);
	mov	dptr,#_spi_control_write_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_SPI_send
	pop	ar7
;	SPI.c:83: SPI_send(data);
	mov	dptr,#_spi_control_write_PARM_3
	movx	a,@dptr
	mov	r6,a
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_SPI_send
	pop	ar6
	pop	ar7
;	SPI.c:86: CS_HIGH;
;	assignBit
	setb	_P1_1
;	SPI.c:89: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar6
	push	ar5
	push	ar7
	push	ar4
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
;	SPI.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_SPI'
;------------------------------------------------------------
;	SPI.c:93: void configure_SPI(void)
;	-----------------------------------------
;	 function configure_SPI
;	-----------------------------------------
_configure_SPI:
;	SPI.c:95: CS_PIN = 1;
;	assignBit
	setb	_P1_1
;	SPI.c:96: SPCON = 0x00;
	mov	_SPCON,#0x00
;	SPI.c:97: SPCON |= SS_DISABLE;
	orl	_SPCON,#0x20
;	SPI.c:98: SPCON |= MASTER_MODE;
	orl	_SPCON,#0x10
;	SPI.c:99: SPCON |= SPI_ENABLE;
	orl	_SPCON,#0x40
;	SPI.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_send'
;------------------------------------------------------------
;data                      Allocated with name '_SPI_send_data_10000_126'
;------------------------------------------------------------
;	SPI.c:103: void SPI_send(uint8_t data)
;	-----------------------------------------
;	 function SPI_send
;	-----------------------------------------
_SPI_send:
	mov	a,dpl
	mov	dptr,#_SPI_send_data_10000_126
	movx	@dptr,a
;	SPI.c:106: SPDAT = data;           // Config + MSB of data
	movx	a,@dptr
	mov	_SPDAT,a
;	SPI.c:108: while (!(SPSTA & 0x80))
00101$:
	mov	a,_SPSTA
	jnb	acc.7,00101$
;	SPI.c:113: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enc_reset'
;------------------------------------------------------------
;	SPI.c:115: void enc_reset(void)
;	-----------------------------------------
;	 function enc_reset
;	-----------------------------------------
_enc_reset:
;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
;	assignBit
	clr	_P1_1
;	SPI.c:118: SPI_send(0xFF);            // Send reset command
	mov	dpl, #0xff
	lcall	_SPI_send
;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
;	assignBit
	setb	_P1_1
;	SPI.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eth_spi_read'
;------------------------------------------------------------
;bank                      Allocated with name '_eth_spi_read_PARM_2'
;addr                      Allocated with name '_eth_spi_read_addr_10000_131'
;data                      Allocated with name '_eth_spi_read_data_10001_134'
;------------------------------------------------------------
;	SPI.c:122: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
;	-----------------------------------------
;	 function eth_spi_read
;	-----------------------------------------
_eth_spi_read:
	mov	a,dpl
	mov	dptr,#_eth_spi_read_addr_10000_131
	movx	@dptr,a
;	SPI.c:124: if (addr > 0x1F) {
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x1f
	jnc	00102$
;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
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
;	SPI.c:126: return 0;
	mov	dpl, #0x00
	ret
00102$:
;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
	mov	dptr,#_eth_spi_read_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_select_reg_bank
	pop	ar7
;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
;	assignBit
	clr	_P1_1
;	SPI.c:132: SPI_send(addr);            // Send the address
	mov	dpl, r7
	push	ar7
	lcall	_SPI_send
;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
	lcall	_SPI_ReadByte
	mov	r6, dpl
	pop	ar7
;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
;	assignBit
	setb	_P1_1
;	SPI.c:137: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
	mov	ar4,r6
	mov	r5,#0x00
	mov	r3,#0x00
	push	ar6
	push	ar4
	push	ar5
	push	ar7
	push	ar3
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
;	SPI.c:139: return data;
	mov	dpl, r6
;	SPI.c:140: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'phy_spi_write'
;------------------------------------------------------------
;data                      Allocated with name '_phy_spi_write_PARM_2'
;addr                      Allocated with name '_phy_spi_write_addr_10000_135'
;------------------------------------------------------------
;	SPI.c:142: void phy_spi_write(uint8_t addr, uint16_t data)
;	-----------------------------------------
;	 function phy_spi_write
;	-----------------------------------------
_phy_spi_write:
	mov	a,dpl
	mov	dptr,#_phy_spi_write_addr_10000_135
	movx	@dptr,a
;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x02
	push	ar7
	lcall	_spi_control_write
	pop	ar7
;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
	mov	dptr,#_phy_spi_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar4,r5
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl, #0x02
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
	mov	ar4,r6
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl, #0x02
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_control_write
	pop	ar5
	pop	ar6
	pop	ar7
;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
	mov	r4,#0x00
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	SPI.c:150: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mac_spi_read'
;------------------------------------------------------------
;bank                      Allocated with name '_mac_spi_read_PARM_2'
;addr                      Allocated with name '_mac_spi_read_addr_10000_137'
;data                      Allocated with name '_mac_spi_read_data_10001_140'
;------------------------------------------------------------
;	SPI.c:152: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
;	-----------------------------------------
;	 function mac_spi_read
;	-----------------------------------------
_mac_spi_read:
	mov	a,dpl
	mov	dptr,#_mac_spi_read_addr_10000_137
	movx	@dptr,a
;	SPI.c:154: if (addr > 0x1F) {
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x1f
	jnc	00102$
;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
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
;	SPI.c:156: return 0; // Return 0 if address is invalid
	mov	dpl, #0x00
	ret
00102$:
;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
	mov	dptr,#_mac_spi_read_PARM_2
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_select_reg_bank
	pop	ar7
;	SPI.c:162: CS_LOW;
;	assignBit
	clr	_P1_1
;	SPI.c:165: SPI_send(addr);
	mov	dpl, r7
	lcall	_SPI_send
;	SPI.c:168: uint8_t data = SPI_ReadByte();
	lcall	_SPI_ReadByte
	mov	r7, dpl
;	SPI.c:171: CS_HIGH;
;	assignBit
	setb	_P1_1
;	SPI.c:176: return data;
	mov	dpl, r7
;	SPI.c:177: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'phy_spi_read'
;------------------------------------------------------------
;addr                      Allocated with name '_phy_spi_read_addr_10000_141'
;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_143'
;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_143'
;data                      Allocated with name '_phy_spi_read_data_10001_143'
;------------------------------------------------------------
;	SPI.c:180: uint16_t phy_spi_read(uint8_t addr)
;	-----------------------------------------
;	 function phy_spi_read
;	-----------------------------------------
_phy_spi_read:
	mov	a,dpl
	mov	dptr,#_phy_spi_read_addr_10000_141
	movx	@dptr,a
;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x02
	push	ar7
	lcall	_spi_control_write
	pop	ar7
;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl, #0x02
	push	ar7
	lcall	_spi_control_write
;	SPI.c:185: busy_wait();                          // Wait for the read to complete
	lcall	_busy_wait
	pop	ar7
;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl, #0x02
	push	ar7
	lcall	_spi_control_write
	pop	ar7
;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
	mov	dptr,#_mac_spi_read_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl, #0x18
	push	ar7
	lcall	_mac_spi_read
	mov	r6, dpl
	pop	ar7
	mov	r5,#0x00
;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
	mov	dptr,#_mac_spi_read_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl, #0x19
	push	ar7
	push	ar6
	push	ar5
	lcall	_mac_spi_read
	mov	r4, dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
	mov	ar3,r4
	clr	a
	orl	ar6,a
	mov	a,r3
	orl	ar5,a
;	SPI.c:195: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
	mov	r4,#0x00
	push	ar6
	push	ar5
	push	ar6
	push	ar5
	push	ar7
	push	ar4
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar5
	pop	ar6
;	SPI.c:197: return data;        // Combine MSB and LSB
	mov	dpl, r6
	mov	dph, r5
;	SPI.c:198: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'busy_wait'
;------------------------------------------------------------
;data                      Allocated with name '_busy_wait_data_10000_145'
;------------------------------------------------------------
;	SPI.c:200: void busy_wait(void)
;	-----------------------------------------
;	 function busy_wait
;	-----------------------------------------
_busy_wait:
;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
	mov	dptr,#_mac_spi_read_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl, #0x0a
	lcall	_mac_spi_read
	mov	a, dpl
	mov	dptr,#_busy_wait_data_10000_145
	movx	@dptr,a
;	SPI.c:203: while (data & 0x01)
00101$:
	mov	dptr,#_busy_wait_data_10000_145
	movx	a,@dptr
	jnb	acc.0,00104$
;	SPI.c:205: data = mac_spi_read(0x0A, 3);
	mov	dptr,#_mac_spi_read_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl, #0x0a
	lcall	_mac_spi_read
	mov	a, dpl
	mov	dptr,#_busy_wait_data_10000_145
	movx	@dptr,a
	sjmp	00101$
00104$:
;	SPI.c:207: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buffer_init'
;------------------------------------------------------------
;size                      Allocated with name '_buffer_init_PARM_2'
;start_address             Allocated with name '_buffer_init_start_address_10000_147'
;erxst                     Allocated with name '_buffer_init_erxst_10001_150'
;erxnd                     Allocated with name '_buffer_init_erxnd_10001_150'
;------------------------------------------------------------
;	SPI.c:209: void buffer_init(uint16_t start_address, uint16_t size)
;	-----------------------------------------
;	 function buffer_init
;	-----------------------------------------
_buffer_init:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_buffer_init_start_address_10000_147
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
	mov	dptr,#_buffer_init_start_address_10000_147
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
	jc	00101$
	mov	dptr,#_buffer_init_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a, r6
	mov	r0,a
	mov	a,r3
	addc	a, r7
	mov	r1,a
	clr	c
	mov	a,#0xff
	subb	a,r0
	mov	a,#0x1f
	subb	a,r1
	jnc	00102$
00101$:
;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
	mov	dptr,#_buffer_init_PARM_2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_buffer_init_start_address_10000_147
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	SPI.c:213: return;
	ret
00102$:
;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
	anl	ar4,#0xfe
;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
	mov	a,r2
	add	a, r6
	mov	r6,a
	mov	a,r3
	addc	a, r7
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00114$
	dec	r7
00114$:
	anl	ar6,#0xfe
;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
	mov	ar3,r5
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
;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
	mov	ar3,r4
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
;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
	mov	ar3,r7
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
;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
	mov	ar3,r6
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
;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	SPI.c:229: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_buffer_read'
;------------------------------------------------------------
;start_address             Allocated with name '_spi_buffer_read_PARM_2'
;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_151'
;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_157'
;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_157'
;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_158'
;i                         Allocated with name '_spi_buffer_read_i_20002_159'
;------------------------------------------------------------
;	SPI.c:232: uint16_t spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
;	-----------------------------------------
;	 function spi_buffer_read
;	-----------------------------------------
_spi_buffer_read:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	SPI.c:234: if (num_bytes < 1) {
	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
	push	ar6
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	SPI.c:236: return;
	ret
00102$:
;	SPI.c:238: if (start_address > 0x1FFF) {
	mov	dptr,#_spi_buffer_read_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x1f
	subb	a,r3
	jnc	00107$
;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
	push	ar4
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	SPI.c:240: return;
	ret
;	SPI.c:243: || (start_address + num_bytes) > RX_BUFFER_END) {
00107$:
	mov	ar0,r6
	mov	ar1,r7
	mov	a,r0
	add	a, r2
	mov	r2,a
	mov	a,r1
	addc	a, r3
	mov	r3,a
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x0b
	subb	a,r3
	jnc	00106$
;	SPI.c:244: printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	SPI.c:246: return 0;
	mov	dptr,#0x0000
	ret
00106$:
;	SPI.c:249: if (num_bytes > 1) {
	clr	c
	mov	a,#0x01
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	SPI.c:250: spi_set_autoinc();
	push	ar5
	push	ar4
	lcall	_spi_set_autoinc
	pop	ar4
	pop	ar5
00109$:
;	SPI.c:254: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
	mov	ar7,r5
;	SPI.c:255: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
	mov	ar6,r4
;	SPI.c:257: spi_control_write(0, 0x01, higher_byte); // High byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_control_write
	pop	ar4
	pop	ar5
	pop	ar6
;	SPI.c:258: spi_control_write(0, 0x00, lower_byte); // Low byte
	mov	dptr,#_spi_control_write_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar5
	push	ar4
	lcall	_spi_control_write
;	SPI.c:261: CS_LOW; // Pull CS Low
;	assignBit
	clr	_P1_1
;	SPI.c:262: SPI_send(opcode); // Send opcode
	mov	dpl, #0x3a
	lcall	_SPI_send
	pop	ar4
	pop	ar5
;	SPI.c:265: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
	pop	ar7
;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
	mov	dptr,#_spi_buffer_read_PARM_3
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
00112$:
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	SPI.c:267: *data_ptr = SPI_ReadByte(); // Read data
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_SPI_ReadByte
	mov	r0, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	SPI.c:269: data_ptr++;
;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
	inc	r1
	cjne	r1,#0x00,00112$
	inc	r2
	sjmp	00112$
00110$:
;	SPI.c:271: CS_HIGH; // Pull CS High
;	assignBit
	setb	_P1_1
;	SPI.c:272: return (uint16_t) num_bytes;
	mov	dpl, r6
	mov	dph, r7
;	SPI.c:273: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_buffer_write'
;------------------------------------------------------------
;start_address             Allocated with name '_spi_buffer_write_PARM_2'
;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_161'
;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_166'
;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_166'
;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_167'
;i                         Allocated with name '_spi_buffer_write_i_20002_168'
;------------------------------------------------------------
;	SPI.c:276: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
;	-----------------------------------------
;	 function spi_buffer_write
;	-----------------------------------------
_spi_buffer_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	SPI.c:278: if (num_bytes < 1)
	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	SPI.c:280: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
	push	ar6
	push	ar7
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	SPI.c:281: return;
	ret
00102$:
;	SPI.c:283: if (start_address > 0x1FFF) {
	mov	dptr,#_spi_buffer_write_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,#0xff
	subb	a,r2
	mov	a,#0x1f
	subb	a,r3
	jnc	00104$
;	SPI.c:284: printf("\n\rInvalid address: %04X\n\r", start_address);
	push	ar4
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	SPI.c:285: return;
	ret
00104$:
;	SPI.c:289: if (num_bytes > 1) {
	clr	c
	mov	a,#0x01
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	SPI.c:290: spi_set_autoinc();
	push	ar5
	push	ar4
	lcall	_spi_set_autoinc
	pop	ar4
	pop	ar5
00106$:
;	SPI.c:293: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
	mov	ar7,r5
;	SPI.c:294: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
	mov	ar6,r4
;	SPI.c:296: spi_control_write(0, 0x03, higher_byte); // High byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_control_write
	pop	ar4
	pop	ar5
	pop	ar6
;	SPI.c:297: spi_control_write(0, 0x02, lower_byte); // Low byte
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl, #0x00
	push	ar5
	push	ar4
	lcall	_spi_control_write
;	SPI.c:300: CS_LOW; // Pull CS Low
;	assignBit
	clr	_P1_1
;	SPI.c:301: SPI_send(opcode); // Send opcode
	mov	dpl, #0x7a
	lcall	_SPI_send
	pop	ar4
	pop	ar5
;	SPI.c:304: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar6
	pop	ar7
;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
	mov	dptr,#_spi_buffer_write_PARM_3
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
00109$:
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	SPI.c:307: SPI_send(*data_ptr); // Send data
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
	mov	dpl, r0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_SPI_send
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	SPI.c:308: data_ptr++;
;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
	inc	r1
	cjne	r1,#0x00,00109$
	inc	r2
	sjmp	00109$
00107$:
;	SPI.c:310: CS_HIGH; // Pull CS High
;	assignBit
	setb	_P1_1
;	SPI.c:311: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "wrong bank"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Write: Address 0x%02X, Data 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid address: MAC register address range [0, 0x1F]"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Read: Address 0x%02X, Data 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid number of bytes: %d"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid address: %04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.ascii "Invalid RX Address: Start 0x%04X, Size %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

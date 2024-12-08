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
	.globl _update_ERXRDPT
	.globl _ENC_pkt_count
	.globl _enc_init
	.globl _send_arp_request
	.globl _spi_control_write
	.globl _eth_spi_read
	.globl _phy_spi_write
	.globl _phy_spi_read
	.globl _spi_buffer_write
	.globl _spi_buffer_read
	.globl _mac_spi_read
	.globl _enc_reset
	.globl _configure_SPI
	.globl _process_packet_from_buffer
	.globl _transmit_tcp_packet
	.globl _print_hexdump
	.globl _process_tcp_packet
	.globl _memcmp
	.globl _free
	.globl _malloc
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
	.globl _target_ip
	.globl _device_ip
	.globl _target_mac
	.globl _device_mac
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
_main_sloc0_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 2
_main_sloc2_1_0:
	.ds 2
_main_sloc3_1_0:
	.ds 2
_main_sloc4_1_0:
	.ds 2
_main_sloc5_1_0:
	.ds 3
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
_hex_to_int_str_10000_127:
	.ds 3
_hex_to_int_result_10000_128:
	.ds 2
_hex_to_int_ASCII_20000_129:
	.ds 2
_get_user_buffer_size_input_10000_134:
	.ds 10
_main_device_mac_10000_137:
	.ds 6
_main_target_mac_10000_137:
	.ds 6
_main_device_ip_10000_137:
	.ds 4
_main_target_ip_10000_137:
	.ds 4
_main_buffer_40003_147:
	.ds 256
_main_buffer_40003_152:
	.ds 256
_main_gNextPacketPtr_60001_168:
	.ds 2
_main_is_tcp_for_target_60004_173:
	.ds 2
_main_response_size_70004_177:
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
	ljmp	_external_interrupt0_isr
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
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;sloc3                     Allocated with name '_main_sloc3_1_0'
;sloc4                     Allocated with name '_main_sloc4_1_0'
;sloc5                     Allocated with name '_main_sloc5_1_0'
;device_mac                Allocated with name '_main_device_mac_10000_137'
;target_mac                Allocated with name '_main_target_mac_10000_137'
;device_ip                 Allocated with name '_main_device_ip_10000_137'
;target_ip                 Allocated with name '_main_target_ip_10000_137'
;c                         Allocated with name '_main_c_20001_139'
;reg_bank                  Allocated with name '_main_reg_bank_40002_142'
;addr                      Allocated with name '_main_addr_40003_143'
;data                      Allocated with name '_main_data_40004_144'
;num_bytes                 Allocated with name '_main_num_bytes_40002_146'
;start_address             Allocated with name '_main_start_address_40003_147'
;buffer                    Allocated with name '_main_buffer_40003_147'
;i                         Allocated with name '_main_i_50003_148'
;num_bytes                 Allocated with name '_main_num_bytes_40002_151'
;start_address             Allocated with name '_main_start_address_40003_152'
;buffer                    Allocated with name '_main_buffer_40003_152'
;reg_bank                  Allocated with name '_main_reg_bank_40002_154'
;addr                      Allocated with name '_main_addr_40003_155'
;data                      Allocated with name '_main_data_40003_155'
;addr                      Allocated with name '_main_addr_40002_157'
;data                      Allocated with name '_main_data_40003_158'
;addr                      Allocated with name '_main_addr_40002_160'
;data                      Allocated with name '_main_data_40002_160'
;addr                      Allocated with name '_main_addr_40002_163'
;bank                      Allocated with name '_main_bank_40003_164'
;data                      Allocated with name '_main_data_40003_164'
;nextPacket                Allocated with name '_main_nextPacket_60001_168'
;byteCount                 Allocated with name '_main_byteCount_60001_168'
;status                    Allocated with name '_main_status_60001_168'
;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_168'
;len                       Allocated with name '_main_len_60001_168'
;packet_data               Allocated with name '_main_packet_data_60002_171'
;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_172'
;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_173'
;response_size             Allocated with name '_main_response_size_70004_177'
;response                  Allocated with name '_main_response_70004_177'
;read_econ2                Allocated with name '_main_read_econ2_60005_181'
;i                         Allocated with name '_main_i_50001_184'
;read_econ2                Allocated with name '_main_read_econ2_40002_187'
;------------------------------------------------------------
;	main.c:199: static uint16_t gNextPacketPtr = RX_BUFFER_START;
	mov	dptr,#_main_gNextPacketPtr_60001_168
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
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
;str                       Allocated with name '_hex_to_int_str_10000_127'
;i                         Allocated with name '_hex_to_int_i_10000_128'
;result                    Allocated with name '_hex_to_int_result_10000_128'
;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_129'
;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
;------------------------------------------------------------
;	main.c:23: int hex_to_int(char* str)
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
	mov	dptr,#_hex_to_int_str_10000_127
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:26: int i = 0, result = 0;
	mov	dptr,#_hex_to_int_result_10000_128
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:27: while(str[i] != '\0')
	mov	dptr,#_hex_to_int_str_10000_127
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
;	main.c:29: int ASCII = (int)str[i];
	push	ar2
	push	ar3
	push	ar4
	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
	mov	dptr,#_hex_to_int_ASCII_20000_129
	mov	a,_hex_to_int_sloc2_1_0
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:30: result *= 16;
	mov	dptr,#_hex_to_int_result_10000_128
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
	mov	dptr,#_hex_to_int_result_10000_128
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:31: if(ASCII >= '0' && ASCII <= '9')
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
;	main.c:33: result += str[i] - 48;
	push	ar2
	push	ar3
	push	ar4
	mov	a,_hex_to_int_sloc2_1_0
	add	a,#0xd0
	mov	_hex_to_int_sloc2_1_0,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a,#0xff
	mov	(_hex_to_int_sloc2_1_0 + 1),a
	mov	dptr,#_hex_to_int_result_10000_128
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hex_to_int_result_10000_128
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
;	main.c:35: else if(ASCII >= 'A' && ASCII <= 'F')
	mov	dptr,#_hex_to_int_ASCII_20000_129
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
;	main.c:37: result += str[i] - 55;
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
	mov	dptr,#_hex_to_int_result_10000_128
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_hex_to_int_result_10000_128
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
;	main.c:39: else if(ASCII >= 'a' && ASCII <= 'f')
	mov	dptr,#_hex_to_int_ASCII_20000_129
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
;	main.c:41: result += str[i] - 87;
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
	mov	dptr,#_hex_to_int_result_10000_128
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_hex_to_int_result_10000_128
	mov	a,_hex_to_int_sloc2_1_0
	add	a, r3
	movx	@dptr,a
	mov	a,(_hex_to_int_sloc2_1_0 + 1)
	addc	a, r4
	inc	dptr
	movx	@dptr,a
;	main.c:45: return result;
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:41: result += str[i] - 87;
00110$:
;	main.c:43: i++;
	inc	r0
	cjne	r0,#0x00,00173$
	inc	r1
00173$:
	ljmp	00112$
00114$:
;	main.c:45: return result;
	mov	dptr,#_hex_to_int_result_10000_128
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	main.c:47: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_user_buffer_size'
;------------------------------------------------------------
;i                         Allocated with name '_get_user_buffer_size_i_10000_134'
;output                    Allocated with name '_get_user_buffer_size_output_10000_134'
;input                     Allocated with name '_get_user_buffer_size_input_10000_134'
;ch                        Allocated with name '_get_user_buffer_size_ch_10000_134'
;------------------------------------------------------------
;	main.c:50: int get_user_buffer_size(void)
;	-----------------------------------------
;	 function get_user_buffer_size
;	-----------------------------------------
_get_user_buffer_size:
;	main.c:56: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
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
;	main.c:58: putchar(ch);
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
;	main.c:59: input[i] = ch;      //Append the input array with the received character
	mov	a,r6
	add	a, #_get_user_buffer_size_input_10000_134
	mov	dpl,a
	mov	a,r7
	addc	a, #(_get_user_buffer_size_input_10000_134 >> 8)
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
;	main.c:60: i++;
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	main.c:62: input[i] = '\0';
	mov	a,r6
	add	a, #_get_user_buffer_size_input_10000_134
	mov	dpl,a
	mov	a,r7
	addc	a, #(_get_user_buffer_size_input_10000_134 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	main.c:63: output = hex_to_int(input); //Convert the char hex data to int
	mov	dptr,#_get_user_buffer_size_input_10000_134
	mov	b,a
	lcall	_hex_to_int
	mov	r6, dpl
	mov	r7, dph
;	main.c:64: printf_tiny("\n\r");
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
;	main.c:66: return output;
	mov	dpl, r6
	mov	dph, r7
;	main.c:67: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;sloc3                     Allocated with name '_main_sloc3_1_0'
;sloc4                     Allocated with name '_main_sloc4_1_0'
;sloc5                     Allocated with name '_main_sloc5_1_0'
;device_mac                Allocated with name '_main_device_mac_10000_137'
;target_mac                Allocated with name '_main_target_mac_10000_137'
;device_ip                 Allocated with name '_main_device_ip_10000_137'
;target_ip                 Allocated with name '_main_target_ip_10000_137'
;c                         Allocated with name '_main_c_20001_139'
;reg_bank                  Allocated with name '_main_reg_bank_40002_142'
;addr                      Allocated with name '_main_addr_40003_143'
;data                      Allocated with name '_main_data_40004_144'
;num_bytes                 Allocated with name '_main_num_bytes_40002_146'
;start_address             Allocated with name '_main_start_address_40003_147'
;buffer                    Allocated with name '_main_buffer_40003_147'
;i                         Allocated with name '_main_i_50003_148'
;num_bytes                 Allocated with name '_main_num_bytes_40002_151'
;start_address             Allocated with name '_main_start_address_40003_152'
;buffer                    Allocated with name '_main_buffer_40003_152'
;reg_bank                  Allocated with name '_main_reg_bank_40002_154'
;addr                      Allocated with name '_main_addr_40003_155'
;data                      Allocated with name '_main_data_40003_155'
;addr                      Allocated with name '_main_addr_40002_157'
;data                      Allocated with name '_main_data_40003_158'
;addr                      Allocated with name '_main_addr_40002_160'
;data                      Allocated with name '_main_data_40002_160'
;addr                      Allocated with name '_main_addr_40002_163'
;bank                      Allocated with name '_main_bank_40003_164'
;data                      Allocated with name '_main_data_40003_164'
;nextPacket                Allocated with name '_main_nextPacket_60001_168'
;byteCount                 Allocated with name '_main_byteCount_60001_168'
;status                    Allocated with name '_main_status_60001_168'
;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_168'
;len                       Allocated with name '_main_len_60001_168'
;packet_data               Allocated with name '_main_packet_data_60002_171'
;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_172'
;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_173'
;response_size             Allocated with name '_main_response_size_70004_177'
;response                  Allocated with name '_main_response_70004_177'
;read_econ2                Allocated with name '_main_read_econ2_60005_181'
;i                         Allocated with name '_main_i_50001_184'
;read_econ2                Allocated with name '_main_read_econ2_40002_187'
;------------------------------------------------------------
;	main.c:69: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:71: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
	mov	dptr,#_main_device_mac_10000_137
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_main_device_mac_10000_137 + 0x0001)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_main_device_mac_10000_137 + 0x0002)
	rl	a
	movx	@dptr,a
	mov	dptr,#(_main_device_mac_10000_137 + 0x0003)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_main_device_mac_10000_137 + 0x0004)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_main_device_mac_10000_137 + 0x0005)
	mov	a,#0x55
	movx	@dptr,a
;	main.c:72: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
	mov	dptr,#_main_target_mac_10000_137
	mov	a,#0xf8
	movx	@dptr,a
	mov	dptr,#(_main_target_mac_10000_137 + 0x0001)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_target_mac_10000_137 + 0x0002)
	mov	a,#0xa4
	movx	@dptr,a
	mov	dptr,#(_main_target_mac_10000_137 + 0x0003)
	mov	a,#0x8c
	movx	@dptr,a
	mov	dptr,#(_main_target_mac_10000_137 + 0x0004)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_target_mac_10000_137 + 0x0005)
	mov	a,#0x31
	movx	@dptr,a
;	main.c:73: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
	mov	dptr,#_main_device_ip_10000_137
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_main_device_ip_10000_137 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_main_device_ip_10000_137 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_main_device_ip_10000_137 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	main.c:74: uint8_t target_ip[4] = { 192, 168, 1, 1 };
	mov	dptr,#_main_target_ip_10000_137
	mov	a,#0xc0
	movx	@dptr,a
	mov	dptr,#(_main_target_ip_10000_137 + 0x0001)
	mov	a,#0xa8
	movx	@dptr,a
	mov	dptr,#(_main_target_ip_10000_137 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_main_target_ip_10000_137 + 0x0003)
	movx	@dptr,a
;	main.c:76: printf("SPI Operations on 8051\n\r");
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
;	main.c:77: configure_SPI();
	lcall	_configure_SPI
;	main.c:79: enc_init(device_mac);
	mov	dptr,#_main_device_mac_10000_137
	mov	b, #0x00
	lcall	_enc_init
;	main.c:81: while(1)
00142$:
;	main.c:83: printf("\n\rChoose an action: \n\r");
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
;	main.c:84: printf("1 --> Control Write\n\r");
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
;	main.c:85: printf("2 --> Buffer Write\n\r");
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
;	main.c:86: printf("3 --> Buffer Read\n\r");
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
;	main.c:87: printf("4 --> MAC Register Read\n\r");
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
;	main.c:88: printf("5 --> PHY SPI Write\n\r");
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
;	main.c:89: printf("6 --> PHY SPI Read\n\r");
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
;	main.c:90: printf("7 --> ENC Reset\n\r");
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
;	main.c:91: printf("8 --> Read ETH Register\n\r");
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
;	main.c:92: printf("9 --> Display Menu\n\r");
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
;	main.c:93: printf("A --> Send ARP Request\n\r");
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
;	main.c:94: printf("B --> Init RX buffers\n\r");
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
;	main.c:95: printf("C --> Hard Reset(nRESET pin)\n\r");
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
;	main.c:96: printf("D --> Process TCP\n\r");
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
;	main.c:97: printf("E --> Enable TX interrupt\n\r");
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
;	main.c:98: printf("F --> Disabling TX interrupt\n\r");
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
;	main.c:100: char c = getchar();
	lcall	_getchar
	mov	r6, dpl
;	main.c:101: putchar(c);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl, r5
	mov	dph, r7
	push	ar6
	lcall	_putchar
;	main.c:102: printf("\n\r");
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
;	main.c:104: switch(c)
	cjne	r6,#0x31,00250$
00250$:
	jnc	00251$
	ljmp	00139$
00251$:
	mov	a,r6
	add	a,#0xff - 0x46
	jnc	00252$
	ljmp	00139$
00252$:
	mov	a,r6
	add	a,#0xcf
	mov	r6,a
	add	a,#(00253$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00254$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00253$:
	.db	00101$
	.db	00102$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00139$
	.db	00139$
	.db	00139$
	.db	00139$
	.db	00139$
	.db	00139$
	.db	00139$
	.db	00111$
	.db	00142$
	.db	00134$
	.db	00136$
	.db	00137$
	.db	00138$
00254$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00139$>>8
	.db	00139$>>8
	.db	00139$>>8
	.db	00139$>>8
	.db	00139$>>8
	.db	00139$>>8
	.db	00139$>>8
	.db	00111$>>8
	.db	00142$>>8
	.db	00134$>>8
	.db	00136$>>8
	.db	00137$>>8
	.db	00138$>>8
;	main.c:106: case '1': {
00101$:
;	main.c:107: printf("Enter the register bank to select:\n\r");
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
;	main.c:108: uint8_t reg_bank = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
;	main.c:109: printf("Enter the address of the Control Register:\n\r");
	push	ar6
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:110: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r5, dpl
;	main.c:111: printf("Enter the data you want to write:\n\r");
	push	ar5
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:112: uint8_t data = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r4, dpl
	pop	ar5
	pop	ar6
;	main.c:113: spi_control_write(reg_bank, addr, data);
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dpl, r6
	lcall	_spi_control_write
;	main.c:114: break;
	ljmp	00142$
;	main.c:116: case '2': {
00102$:
;	main.c:117: printf("Enter the number of bytes to write:\n\r");
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
;	main.c:118: int num_bytes = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
	mov	r7, dph
;	main.c:119: printf("Enter the starting address:\n\r");
	push	ar7
	push	ar6
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
;	main.c:120: uint16_t start_address = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
;	main.c:122: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar6
	push	ar7
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
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
;	main.c:123: for (int i = 0; i < num_bytes; i++) {
	mov	r2,#0x00
	mov	r3,#0x00
00145$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	main.c:124: printf("Byte %d: ", i);
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
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
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
;	main.c:125: buffer[i] = get_user_buffer_size();
	mov	a,r2
	add	a, #_main_buffer_40003_147
	mov	r0,a
	mov	a,r3
	addc	a, #(_main_buffer_40003_147 >> 8)
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
;	main.c:123: for (int i = 0; i < num_bytes; i++) {
	inc	r2
	cjne	r2,#0x00,00256$
	inc	r3
00256$:
	pop	ar5
	pop	ar4
	sjmp	00145$
00103$:
;	main.c:127: spi_buffer_write(num_bytes, start_address, buffer);
	mov	dptr,#_spi_buffer_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_write_PARM_3
	mov	a,#_main_buffer_40003_147
	movx	@dptr,a
	mov	a,#(_main_buffer_40003_147 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r6
	mov	dph, r7
	lcall	_spi_buffer_write
;	main.c:128: break;
	ljmp	00142$
;	main.c:130: case '3': {
00104$:
;	main.c:131: printf("Enter the number of bytes to read:\n\r");
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
;	main.c:132: int num_bytes = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
	mov	r7, dph
;	main.c:133: printf("Enter the starting address:\n\r");
	push	ar7
	push	ar6
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
;	main.c:134: uint16_t start_address = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r4, dpl
	mov	r5, dph
	pop	ar6
	pop	ar7
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:136: spi_buffer_read(num_bytes, start_address, buffer);
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,#_main_buffer_40003_152
	movx	@dptr,a
	mov	a,#(_main_buffer_40003_152 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r6
	mov	dph, r7
	lcall	_spi_buffer_read
;	main.c:137: break;
	ljmp	00142$
;	main.c:139: case '4': {
00105$:
;	main.c:140: printf("Enter the MAC register bank to select:\n\r");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:141: uint8_t reg_bank = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
;	main.c:142: printf("Enter the address of the MAC Register:\n\r");
	push	ar6
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
;	main.c:143: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r5, dpl
	pop	ar6
;	main.c:144: uint8_t data = mac_spi_read(addr, reg_bank);
	mov	dptr,#_mac_spi_read_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl, r5
	lcall	_mac_spi_read
	mov	r7, dpl
;	main.c:145: printf("MAC Register Data: 0x%02X\n\r", data);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:146: break;
	ljmp	00142$
;	main.c:148: case '5': {
00106$:
;	main.c:149: printf("Enter the PHY register address:\n\r");
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:150: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
;	main.c:151: printf("Enter the 16-bit data to write:\n\r");
	push	ar6
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
;	main.c:152: uint16_t data = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r5, dpl
	mov	r7, dph
	pop	ar6
;	main.c:153: phy_spi_write(addr, data);
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
;	main.c:154: printf("PHY Write Data: 0x%04X\n\r", data);
	push	ar5
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
;	main.c:155: break;
	ljmp	00142$
;	main.c:157: case '6': {
00107$:
;	main.c:158: printf("Enter the PHY register address to read:\n\r");
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
;	main.c:159: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
;	main.c:160: uint16_t data = phy_spi_read(addr);
	lcall	_phy_spi_read
	mov	r6, dpl
	mov	r7, dph
;	main.c:161: printf("PHY Read Data: 0x%04X\n\r", data);
	push	ar6
	push	ar7
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:162: break;
	ljmp	00142$
;	main.c:164: case '7': {
00108$:
;	main.c:165: printf("Resetting ENC28J60...\n\r");
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
;	main.c:166: enc_reset();
	lcall	_enc_reset
;	main.c:167: break;
	ljmp	00142$
;	main.c:169: case '8': {
00109$:
;	main.c:170: printf("Enter the ETH register address to read:\n\r");
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:171: uint8_t addr = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r6, dpl
;	main.c:172: printf("Enter the bank (0 or 1):\n\r");
	push	ar6
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
;	main.c:173: uint8_t bank = get_user_buffer_size();
	lcall	_get_user_buffer_size
	mov	r5, dpl
	pop	ar6
	mov	dptr,#_eth_spi_read_PARM_2
	mov	a,r5
	movx	@dptr,a
;	main.c:174: uint8_t data = eth_spi_read(addr, bank);
	mov	dpl, r6
	lcall	_eth_spi_read
	mov	r7, dpl
;	main.c:175: printf("ETH Register Data: 0x%02X\n\r", data);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:176: break;
	ljmp	00142$
;	main.c:178: case '9': {
00110$:
;	main.c:179: printf("\n\rChoose an action: \n\r");
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
;	main.c:180: printf("1 --> Control Write\n\r");
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
;	main.c:181: printf("2 --> Buffer Write\n\r");
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
;	main.c:182: printf("3 --> Buffer Read\n\r");
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
;	main.c:183: printf("4 --> MAC Register Read\n\r");
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
;	main.c:184: printf("5 --> PHY SPI Write\n\r");
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
;	main.c:185: printf("6 --> PHY SPI Read\n\r");
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
;	main.c:186: printf("7 --> ENC Reset\n\r");
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
;	main.c:187: printf("8 --> Read ETH Register\n\r");
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
;	main.c:188: break;
	ljmp	00142$
;	main.c:190: case 'A':{
00111$:
;	main.c:191: send_arp_request();
	lcall	_send_arp_request
;	main.c:192: while(1)
00131$:
;	main.c:194: if(ENC_pkt_count() > 0)
	lcall	_ENC_pkt_count
	mov	a, dpl
	jz	00131$
;	main.c:201: if (gNextPacketPtr == 0)
	mov	dptr,#_main_gNextPacketPtr_60001_168
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_gNextPacketPtr_60001_168
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00113$
;	main.c:203: update_ERXRDPT(RX_BUFFER_END);
	mov	dptr,#0x0bff
	lcall	_update_ERXRDPT
	sjmp	00114$
00113$:
;	main.c:207: update_ERXRDPT(gNextPacketPtr - 1);
	dec	r6
	cjne	r6,#0xff,00259$
	dec	r7
00259$:
	mov	dpl, r6
	mov	dph, r7
	lcall	_update_ERXRDPT
00114$:
;	main.c:209: uint8_t *packet_data = (uint8_t *)malloc(6);
	mov	dptr,#0x0006
	lcall	_malloc
	mov	r6, dpl
	mov	r5,dph
	mov	r7,#0x00
;	main.c:210: spi_buffer_read(6, gNextPacketPtr, packet_data);
	mov	dptr,#_main_gNextPacketPtr_60001_168
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0006
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_buffer_read
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:214: nextPacket = (uint16_t)(packet_data[1] << 8 | packet_data[0]); // Next Packet (MSB, LSB)
	mov	a,#0x01
	add	a, r6
	mov	r2,a
	clr	a
	addc	a, r5
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	mov	r2,#0x00
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	mov	r3,#0x00
	orl	ar2,a
	mov	a,r3
	orl	ar4,a
	mov	_main_sloc4_1_0,r2
	mov	(_main_sloc4_1_0 + 1),r4
;	main.c:215: byteCount = (uint16_t)(packet_data[3] << 8 | packet_data[2]);  // Byte Count (MSB, LSB)
	mov	a,#0x03
	add	a, r6
	mov	r0,a
	clr	a
	addc	a, r5
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	r3,#0x00
	mov	(_main_sloc0_1_0 + 1),r0
	mov	_main_sloc0_1_0,r3
	mov	a,#0x02
	add	a, r6
	mov	r0,a
	clr	a
	addc	a, r5
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	r3,#0x00
	mov	a,(_main_sloc0_1_0 + 1)
	orl	ar3,a
	mov	_main_sloc0_1_0,r0
	mov	(_main_sloc0_1_0 + 1),r3
;	main.c:216: status = (uint16_t)(packet_data[5] << 8 | packet_data[4]);     // Status (MSB, LSB)
	mov	a,#0x05
	add	a, r6
	mov	r0,a
	clr	a
	addc	a, r5
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	r3,#0x00
	mov	(_main_sloc1_1_0 + 1),r0
	mov	_main_sloc1_1_0,r3
	mov	a,#0x04
	add	a, r6
	mov	r0,a
	clr	a
	addc	a, r5
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	r3,#0x00
	mov	a,(_main_sloc1_1_0 + 1)
	orl	ar3,a
	mov	_main_sloc1_1_0,r0
	mov	(_main_sloc1_1_0 + 1),r3
;	main.c:219: len = byteCount - 4;
	mov	r1,_main_sloc0_1_0
	mov	r3,(_main_sloc0_1_0 + 1)
	mov	a,r1
	add	a,#0xfc
	mov	r1,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	_main_sloc3_1_0,r1
	mov	(_main_sloc3_1_0 + 1),r3
;	main.c:221: uint8_t *packet_data_actual = (uint8_t *)malloc(len);
	mov	_main_sloc2_1_0,_main_sloc3_1_0
	mov	(_main_sloc2_1_0 + 1),(_main_sloc3_1_0 + 1)
	mov	dpl, _main_sloc2_1_0
	mov	dph, (_main_sloc2_1_0 + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_malloc
	mov	r0, dpl
	mov	r3, dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_main_sloc5_1_0,r0
	mov	(_main_sloc5_1_0 + 1),r3
	mov	(_main_sloc5_1_0 + 2),#0x00
;	main.c:222: spi_buffer_read(len, gNextPacketPtr + 6, packet_data_actual);
	mov	dptr,#_main_gNextPacketPtr_60001_168
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a, r2
	mov	r2,a
	clr	a
	addc	a, r4
	mov	r4,a
	mov	dptr,#_spi_buffer_read_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_buffer_read_PARM_3
	mov	a,_main_sloc5_1_0
	movx	@dptr,a
	mov	a,(_main_sloc5_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_main_sloc5_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl, _main_sloc3_1_0
	mov	dph, (_main_sloc3_1_0 + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_buffer_read
;	main.c:224: int is_tcp_for_target = 0;
	mov	dptr,#_main_is_tcp_for_target_60004_173
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:227: if (memcmp(packet_data_actual, device_mac, 6) == 0) {
	mov	r2,_main_sloc5_1_0
	mov	r3,(_main_sloc5_1_0 + 1)
	mov	r4,a
	mov	dptr,#_memcmp_PARM_2
	mov	a,#_main_device_mac_10000_137
	movx	@dptr,a
	mov	a,#(_main_device_mac_10000_137 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcmp_PARM_3
	mov	a,#0x06
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	lcall	_memcmp
	mov	a, dpl
	mov	b, dph
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00260$
	ljmp	00121$
00260$:
;	main.c:228: printf("MAC matched\n................\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
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
;	main.c:230: if (packet_data_actual[12] == 0x08 && packet_data_actual[13] == 0x00) {
	mov	a,#0x0c
	add	a, _main_sloc5_1_0
	mov	r2,a
	clr	a
	addc	a, (_main_sloc5_1_0 + 1)
	mov	r3,a
	mov	r4,(_main_sloc5_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x08,00121$
	mov	a,#0x0d
	add	a, _main_sloc5_1_0
	mov	r2,a
	clr	a
	addc	a, (_main_sloc5_1_0 + 1)
	mov	r3,a
	mov	r4,(_main_sloc5_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00121$
;	main.c:231: printf("Valid ETHER packet.....................\n\r");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
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
;	main.c:233: if (packet_data_actual[23] == 0x06) {
	mov	a,#0x17
	add	a, _main_sloc5_1_0
	mov	r2,a
	clr	a
	addc	a, (_main_sloc5_1_0 + 1)
	mov	r3,a
	mov	r4,(_main_sloc5_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x06,00121$
;	main.c:234: is_tcp_for_target = 1;
	mov	dptr,#_main_is_tcp_for_target_60004_173
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00121$:
;	main.c:238: if (is_tcp_for_target)
	mov	dptr,#_main_is_tcp_for_target_60004_173
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00266$
	ljmp	00126$
00266$:
;	main.c:243: uint8_t *response = process_tcp_packet(packet_data_actual, len+4+4, &response_size);
	mov	a,#0x08
	add	a, _main_sloc2_1_0
	mov	r3,a
	clr	a
	addc	a, (_main_sloc2_1_0 + 1)
	mov	r4,a
	mov	dptr,#_process_tcp_packet_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_process_tcp_packet_PARM_3
	mov	a,#_main_response_size_70004_177
	movx	@dptr,a
	mov	a,#(_main_response_size_70004_177 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, _main_sloc5_1_0
	mov	dph, (_main_sloc5_1_0 + 1)
	mov	b, (_main_sloc5_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_process_tcp_packet
	mov	r2, dpl
	mov	r3, dph
	mov	r4, b
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:246: if (response != NULL) {
	mov	a,r2
	orl	a,r3
	jnz	00267$
	ljmp	00123$
00267$:
;	main.c:247: printf("\nProcessed response data:\n");
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:248: print_hexdump(response, response_size);
	mov	dptr,#_main_response_size_70004_177
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_print_hexdump_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_print_hexdump
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:249: transmit_tcp_packet(response, response_size+4);
	mov	dptr,#_main_response_size_70004_177
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,#0x04
	add	a, r0
	mov	r0,a
	clr	a
	addc	a, r1
	mov	r1,a
	mov	dptr,#_transmit_tcp_packet_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_transmit_tcp_packet
	pop	ar2
	pop	ar3
	pop	ar4
;	main.c:250: free(response); // Free response memory if allocated dynamically
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	lcall	_free
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00124$
00123$:
;	main.c:252: printf("\nNo response generated by TCP packet processing.\n");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
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
00124$:
;	main.c:255: printf("YESSSS\n");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
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
	sjmp	00127$
00126$:
;	main.c:259: printf("NOOOO\n");
	push	ar7
	push	ar6
	push	ar5
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
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
00127$:
;	main.c:263: gNextPacketPtr = nextPacket;
	mov	dptr,#_main_gNextPacketPtr_60001_168
	mov	a,_main_sloc4_1_0
	movx	@dptr,a
	mov	a,(_main_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	main.c:268: printf("nextPacket: 0x%04X\n", nextPacket);
	push	ar7
	push	ar6
	push	ar5
	push	_main_sloc4_1_0
	push	(_main_sloc4_1_0 + 1)
	mov	a,#___str_44
	push	acc
	mov	a,#(___str_44 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:269: printf("byteCount: %d\n", byteCount);
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	mov	a,#___str_45
	push	acc
	mov	a,#(___str_45 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:270: printf("status: 0x%02X\n", status);
	push	_main_sloc1_1_0
	push	(_main_sloc1_1_0 + 1)
	mov	a,#___str_46
	push	acc
	mov	a,#(___str_46 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:273: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1e
	push	ar7
	push	ar6
	push	ar5
	lcall	_mac_spi_read
	mov	a, dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:274: spi_control_write(2, 0x1E, (read_econ2 | (1 << 6))); //mac enable for reception
	orl	a,#0x40
	mov	r4,a
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1e
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
;	main.c:275: free(packet_data);
	mov	r7,#0x00
	mov	dpl, r6
	mov	dph, r5
	mov	b, r7
	lcall	_free
	ljmp	00131$
;	main.c:286: case 'C':{
00134$:
;	main.c:287: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
	mov	a,#___str_47
	push	acc
	mov	a,#(___str_47 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:288: ENC_RESET = 0;
;	assignBit
	clr	_P1_0
;	main.c:289: for(int i = 0; i < 6000; i++);
	mov	r6,#0x00
	mov	r7,#0x00
00148$:
	clr	c
	mov	a,r6
	subb	a,#0x70
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x97
	jnc	00135$
	inc	r6
	cjne	r6,#0x00,00148$
	inc	r7
	sjmp	00148$
00135$:
;	main.c:290: ENC_RESET = 1;
;	assignBit
	setb	_P1_0
;	main.c:291: break;
	ljmp	00142$
;	main.c:293: case 'D':
00136$:
;	main.c:297: process_packet_from_buffer(0x0846);
	mov	dptr,#0x0846
	lcall	_process_packet_from_buffer
;	main.c:298: break;
	ljmp	00142$
;	main.c:300: case 'E':{
00137$:
;	main.c:301: IT0 = 1;  // Edge-triggered mode for INT0
;	assignBit
	setb	_IT0
;	main.c:302: EX0 = 1;  // Enable INT0
;	assignBit
	setb	_EX0
;	main.c:303: EA = 1;   // Enable global interrupts
;	assignBit
	setb	_EA
;	main.c:304: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
	mov	dptr,#_mac_spi_read_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, #0x1e
	lcall	_mac_spi_read
;	main.c:306: printf("Enabling TXPKTIE\n\r");
	mov	a,#___str_48
	push	acc
	mov	a,#(___str_48 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:307: spi_control_write(0, 0x1B, 0xC0);
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1b
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	mov	a,#0xc0
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	main.c:308: break;
	ljmp	00142$
;	main.c:310: case 'F':{
00138$:
;	main.c:311: printf("Disabling TXPKTIE\n\r");
	mov	a,#___str_49
	push	acc
	mov	a,#(___str_49 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:312: spi_control_write(0, 0x1B, 0);
	mov	dptr,#_spi_control_write_PARM_2
	mov	a,#0x1b
	movx	@dptr,a
	mov	dptr,#_spi_control_write_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl, #0x00
	lcall	_spi_control_write
;	main.c:314: default: {
00139$:
;	main.c:315: printf("Invalid option. Please select a valid action.\n\r");
	mov	a,#___str_50
	push	acc
	mov	a,#(___str_50 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:318: }
;	main.c:320: }
	ljmp	00142$
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
	.ascii "C --> Hard Reset(nRESET pin)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "D --> Process TCP"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "E --> Enable TX interrupt"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "F --> Disabling TX interrupt"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Enter the register bank to select:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Enter the address of the Control Register:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Enter the data you want to write:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Enter the number of bytes to write:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Enter the starting address:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "Enter %d bytes of data (in hex):"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "Byte %d: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Enter the number of bytes to read:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "Enter the MAC register bank to select:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "Enter the address of the MAC Register:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "MAC Register Data: 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "Enter the PHY register address:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "Enter the 16-bit data to write:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "PHY Write Data: 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "Enter the PHY register address to read:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "PHY Read Data: 0x%04X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "Resetting ENC28J60..."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "Enter the ETH register address to read:"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "Enter the bank (0 or 1):"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "ETH Register Data: 0x%02X"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "MAC matched"
	.db 0x0a
	.ascii "................"
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "Valid ETHER packet....................."
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.db 0x0a
	.ascii "Processed response data:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.db 0x0a
	.ascii "No response generated by TCP packet processing."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "YESSSS"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "NOOOO"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_44:
	.ascii "nextPacket: 0x%04X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_45:
	.ascii "byteCount: %d"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_46:
	.ascii "status: 0x%02X"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_47:
	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_48:
	.ascii "Enabling TXPKTIE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_49:
	.ascii "Disabling TXPKTIE"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_50:
	.ascii "Invalid option. Please select a valid action."
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
	.area CABS    (ABS,CODE)

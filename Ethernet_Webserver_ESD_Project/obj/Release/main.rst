                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _get_user_buffer_size
                                     13 	.globl _hex_to_int
                                     14 	.globl _packetLoop
                                     15 	.globl _update_ERXRDPT
                                     16 	.globl _ENC_pkt_count
                                     17 	.globl _enc_init
                                     18 	.globl _send_arp_request
                                     19 	.globl _spi_control_write
                                     20 	.globl _eth_spi_read
                                     21 	.globl _phy_spi_write
                                     22 	.globl _phy_spi_read
                                     23 	.globl _spi_buffer_write
                                     24 	.globl _spi_buffer_read
                                     25 	.globl _mac_spi_read
                                     26 	.globl _enc_reset
                                     27 	.globl _configure_SPI
                                     28 	.globl _process_packet_from_buffer
                                     29 	.globl _transmit_tcp_packet
                                     30 	.globl _process_tcp_packet
                                     31 	.globl _memcmp
                                     32 	.globl _free
                                     33 	.globl _malloc
                                     34 	.globl _printf_tiny
                                     35 	.globl _putchar
                                     36 	.globl _getchar
                                     37 	.globl _printf
                                     38 	.globl _TF1
                                     39 	.globl _TR1
                                     40 	.globl _TF0
                                     41 	.globl _TR0
                                     42 	.globl _IE1
                                     43 	.globl _IT1
                                     44 	.globl _IE0
                                     45 	.globl _IT0
                                     46 	.globl _SM0
                                     47 	.globl _SM1
                                     48 	.globl _SM2
                                     49 	.globl _REN
                                     50 	.globl _TB8
                                     51 	.globl _RB8
                                     52 	.globl _TI
                                     53 	.globl _RI
                                     54 	.globl _CY
                                     55 	.globl _AC
                                     56 	.globl _F0
                                     57 	.globl _RS1
                                     58 	.globl _RS0
                                     59 	.globl _OV
                                     60 	.globl _F1
                                     61 	.globl _P
                                     62 	.globl _RD
                                     63 	.globl _WR
                                     64 	.globl _T1
                                     65 	.globl _T0
                                     66 	.globl _INT1
                                     67 	.globl _INT0
                                     68 	.globl _TXD0
                                     69 	.globl _TXD
                                     70 	.globl _RXD0
                                     71 	.globl _RXD
                                     72 	.globl _P3_7
                                     73 	.globl _P3_6
                                     74 	.globl _P3_5
                                     75 	.globl _P3_4
                                     76 	.globl _P3_3
                                     77 	.globl _P3_2
                                     78 	.globl _P3_1
                                     79 	.globl _P3_0
                                     80 	.globl _P2_7
                                     81 	.globl _P2_6
                                     82 	.globl _P2_5
                                     83 	.globl _P2_4
                                     84 	.globl _P2_3
                                     85 	.globl _P2_2
                                     86 	.globl _P2_1
                                     87 	.globl _P2_0
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _P0_7
                                     97 	.globl _P0_6
                                     98 	.globl _P0_5
                                     99 	.globl _P0_4
                                    100 	.globl _P0_3
                                    101 	.globl _P0_2
                                    102 	.globl _P0_1
                                    103 	.globl _P0_0
                                    104 	.globl _PS
                                    105 	.globl _PT1
                                    106 	.globl _PX1
                                    107 	.globl _PT0
                                    108 	.globl _PX0
                                    109 	.globl _EA
                                    110 	.globl _ES
                                    111 	.globl _ET1
                                    112 	.globl _EX1
                                    113 	.globl _ET0
                                    114 	.globl _EX0
                                    115 	.globl _BREG_F7
                                    116 	.globl _BREG_F6
                                    117 	.globl _BREG_F5
                                    118 	.globl _BREG_F4
                                    119 	.globl _BREG_F3
                                    120 	.globl _BREG_F2
                                    121 	.globl _BREG_F1
                                    122 	.globl _BREG_F0
                                    123 	.globl _P5_7
                                    124 	.globl _P5_6
                                    125 	.globl _P5_5
                                    126 	.globl _P5_4
                                    127 	.globl _P5_3
                                    128 	.globl _P5_2
                                    129 	.globl _P5_1
                                    130 	.globl _P5_0
                                    131 	.globl _P4_7
                                    132 	.globl _P4_6
                                    133 	.globl _P4_5
                                    134 	.globl _P4_4
                                    135 	.globl _P4_3
                                    136 	.globl _P4_2
                                    137 	.globl _P4_1
                                    138 	.globl _P4_0
                                    139 	.globl _PX0L
                                    140 	.globl _PT0L
                                    141 	.globl _PX1L
                                    142 	.globl _PT1L
                                    143 	.globl _PSL
                                    144 	.globl _PT2L
                                    145 	.globl _PPCL
                                    146 	.globl _EC
                                    147 	.globl _CCF0
                                    148 	.globl _CCF1
                                    149 	.globl _CCF2
                                    150 	.globl _CCF3
                                    151 	.globl _CCF4
                                    152 	.globl _CR
                                    153 	.globl _CF
                                    154 	.globl _TF2
                                    155 	.globl _EXF2
                                    156 	.globl _RCLK
                                    157 	.globl _TCLK
                                    158 	.globl _EXEN2
                                    159 	.globl _TR2
                                    160 	.globl _C_T2
                                    161 	.globl _CP_RL2
                                    162 	.globl _T2CON_7
                                    163 	.globl _T2CON_6
                                    164 	.globl _T2CON_5
                                    165 	.globl _T2CON_4
                                    166 	.globl _T2CON_3
                                    167 	.globl _T2CON_2
                                    168 	.globl _T2CON_1
                                    169 	.globl _T2CON_0
                                    170 	.globl _PT2
                                    171 	.globl _ET2
                                    172 	.globl _TMOD
                                    173 	.globl _TL1
                                    174 	.globl _TL0
                                    175 	.globl _TH1
                                    176 	.globl _TH0
                                    177 	.globl _TCON
                                    178 	.globl _SP
                                    179 	.globl _SCON
                                    180 	.globl _SBUF0
                                    181 	.globl _SBUF
                                    182 	.globl _PSW
                                    183 	.globl _PCON
                                    184 	.globl _P3
                                    185 	.globl _P2
                                    186 	.globl _P1
                                    187 	.globl _P0
                                    188 	.globl _IP
                                    189 	.globl _IE
                                    190 	.globl _DP0L
                                    191 	.globl _DPL
                                    192 	.globl _DP0H
                                    193 	.globl _DPH
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _EECON
                                    197 	.globl _KBF
                                    198 	.globl _KBE
                                    199 	.globl _KBLS
                                    200 	.globl _BRL
                                    201 	.globl _BDRCON
                                    202 	.globl _T2MOD
                                    203 	.globl _SPDAT
                                    204 	.globl _SPSTA
                                    205 	.globl _SPCON
                                    206 	.globl _SADEN
                                    207 	.globl _SADDR
                                    208 	.globl _WDTPRG
                                    209 	.globl _WDTRST
                                    210 	.globl _P5
                                    211 	.globl _P4
                                    212 	.globl _IPH1
                                    213 	.globl _IPL1
                                    214 	.globl _IPH0
                                    215 	.globl _IPL0
                                    216 	.globl _IEN1
                                    217 	.globl _IEN0
                                    218 	.globl _CMOD
                                    219 	.globl _CL
                                    220 	.globl _CH
                                    221 	.globl _CCON
                                    222 	.globl _CCAPM4
                                    223 	.globl _CCAPM3
                                    224 	.globl _CCAPM2
                                    225 	.globl _CCAPM1
                                    226 	.globl _CCAPM0
                                    227 	.globl _CCAP4L
                                    228 	.globl _CCAP3L
                                    229 	.globl _CCAP2L
                                    230 	.globl _CCAP1L
                                    231 	.globl _CCAP0L
                                    232 	.globl _CCAP4H
                                    233 	.globl _CCAP3H
                                    234 	.globl _CCAP2H
                                    235 	.globl _CCAP1H
                                    236 	.globl _CCAP0H
                                    237 	.globl _CKCON1
                                    238 	.globl _CKCON0
                                    239 	.globl _CKRL
                                    240 	.globl _AUXR1
                                    241 	.globl _AUXR
                                    242 	.globl _TH2
                                    243 	.globl _TL2
                                    244 	.globl _RCAP2H
                                    245 	.globl _RCAP2L
                                    246 	.globl _T2CON
                                    247 ;--------------------------------------------------------
                                    248 ; special function registers
                                    249 ;--------------------------------------------------------
                                    250 	.area RSEG    (ABS,DATA)
      000000                        251 	.org 0x0000
                           0000C8   252 _T2CON	=	0x00c8
                           0000CA   253 _RCAP2L	=	0x00ca
                           0000CB   254 _RCAP2H	=	0x00cb
                           0000CC   255 _TL2	=	0x00cc
                           0000CD   256 _TH2	=	0x00cd
                           00008E   257 _AUXR	=	0x008e
                           0000A2   258 _AUXR1	=	0x00a2
                           000097   259 _CKRL	=	0x0097
                           00008F   260 _CKCON0	=	0x008f
                           0000AF   261 _CKCON1	=	0x00af
                           0000FA   262 _CCAP0H	=	0x00fa
                           0000FB   263 _CCAP1H	=	0x00fb
                           0000FC   264 _CCAP2H	=	0x00fc
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 _CCAP4H	=	0x00fe
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000EB   268 _CCAP1L	=	0x00eb
                           0000EC   269 _CCAP2L	=	0x00ec
                           0000ED   270 _CCAP3L	=	0x00ed
                           0000EE   271 _CCAP4L	=	0x00ee
                           0000DA   272 _CCAPM0	=	0x00da
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 _CCAPM2	=	0x00dc
                           0000DD   275 _CCAPM3	=	0x00dd
                           0000DE   276 _CCAPM4	=	0x00de
                           0000D8   277 _CCON	=	0x00d8
                           0000F9   278 _CH	=	0x00f9
                           0000E9   279 _CL	=	0x00e9
                           0000D9   280 _CMOD	=	0x00d9
                           0000A8   281 _IEN0	=	0x00a8
                           0000B1   282 _IEN1	=	0x00b1
                           0000B8   283 _IPL0	=	0x00b8
                           0000B7   284 _IPH0	=	0x00b7
                           0000B2   285 _IPL1	=	0x00b2
                           0000B3   286 _IPH1	=	0x00b3
                           0000C0   287 _P4	=	0x00c0
                           0000E8   288 _P5	=	0x00e8
                           0000A6   289 _WDTRST	=	0x00a6
                           0000A7   290 _WDTPRG	=	0x00a7
                           0000A9   291 _SADDR	=	0x00a9
                           0000B9   292 _SADEN	=	0x00b9
                           0000C3   293 _SPCON	=	0x00c3
                           0000C4   294 _SPSTA	=	0x00c4
                           0000C5   295 _SPDAT	=	0x00c5
                           0000C9   296 _T2MOD	=	0x00c9
                           00009B   297 _BDRCON	=	0x009b
                           00009A   298 _BRL	=	0x009a
                           00009C   299 _KBLS	=	0x009c
                           00009D   300 _KBE	=	0x009d
                           00009E   301 _KBF	=	0x009e
                           0000D2   302 _EECON	=	0x00d2
                           0000E0   303 _ACC	=	0x00e0
                           0000F0   304 _B	=	0x00f0
                           000083   305 _DPH	=	0x0083
                           000083   306 _DP0H	=	0x0083
                           000082   307 _DPL	=	0x0082
                           000082   308 _DP0L	=	0x0082
                           0000A8   309 _IE	=	0x00a8
                           0000B8   310 _IP	=	0x00b8
                           000080   311 _P0	=	0x0080
                           000090   312 _P1	=	0x0090
                           0000A0   313 _P2	=	0x00a0
                           0000B0   314 _P3	=	0x00b0
                           000087   315 _PCON	=	0x0087
                           0000D0   316 _PSW	=	0x00d0
                           000099   317 _SBUF	=	0x0099
                           000099   318 _SBUF0	=	0x0099
                           000098   319 _SCON	=	0x0098
                           000081   320 _SP	=	0x0081
                           000088   321 _TCON	=	0x0088
                           00008C   322 _TH0	=	0x008c
                           00008D   323 _TH1	=	0x008d
                           00008A   324 _TL0	=	0x008a
                           00008B   325 _TL1	=	0x008b
                           000089   326 _TMOD	=	0x0089
                                    327 ;--------------------------------------------------------
                                    328 ; special function bits
                                    329 ;--------------------------------------------------------
                                    330 	.area RSEG    (ABS,DATA)
      000000                        331 	.org 0x0000
                           0000AD   332 _ET2	=	0x00ad
                           0000BD   333 _PT2	=	0x00bd
                           0000C8   334 _T2CON_0	=	0x00c8
                           0000C9   335 _T2CON_1	=	0x00c9
                           0000CA   336 _T2CON_2	=	0x00ca
                           0000CB   337 _T2CON_3	=	0x00cb
                           0000CC   338 _T2CON_4	=	0x00cc
                           0000CD   339 _T2CON_5	=	0x00cd
                           0000CE   340 _T2CON_6	=	0x00ce
                           0000CF   341 _T2CON_7	=	0x00cf
                           0000C8   342 _CP_RL2	=	0x00c8
                           0000C9   343 _C_T2	=	0x00c9
                           0000CA   344 _TR2	=	0x00ca
                           0000CB   345 _EXEN2	=	0x00cb
                           0000CC   346 _TCLK	=	0x00cc
                           0000CD   347 _RCLK	=	0x00cd
                           0000CE   348 _EXF2	=	0x00ce
                           0000CF   349 _TF2	=	0x00cf
                           0000DF   350 _CF	=	0x00df
                           0000DE   351 _CR	=	0x00de
                           0000DC   352 _CCF4	=	0x00dc
                           0000DB   353 _CCF3	=	0x00db
                           0000DA   354 _CCF2	=	0x00da
                           0000D9   355 _CCF1	=	0x00d9
                           0000D8   356 _CCF0	=	0x00d8
                           0000AE   357 _EC	=	0x00ae
                           0000BE   358 _PPCL	=	0x00be
                           0000BD   359 _PT2L	=	0x00bd
                           0000BC   360 _PSL	=	0x00bc
                           0000BB   361 _PT1L	=	0x00bb
                           0000BA   362 _PX1L	=	0x00ba
                           0000B9   363 _PT0L	=	0x00b9
                           0000B8   364 _PX0L	=	0x00b8
                           0000C0   365 _P4_0	=	0x00c0
                           0000C1   366 _P4_1	=	0x00c1
                           0000C2   367 _P4_2	=	0x00c2
                           0000C3   368 _P4_3	=	0x00c3
                           0000C4   369 _P4_4	=	0x00c4
                           0000C5   370 _P4_5	=	0x00c5
                           0000C6   371 _P4_6	=	0x00c6
                           0000C7   372 _P4_7	=	0x00c7
                           0000E8   373 _P5_0	=	0x00e8
                           0000E9   374 _P5_1	=	0x00e9
                           0000EA   375 _P5_2	=	0x00ea
                           0000EB   376 _P5_3	=	0x00eb
                           0000EC   377 _P5_4	=	0x00ec
                           0000ED   378 _P5_5	=	0x00ed
                           0000EE   379 _P5_6	=	0x00ee
                           0000EF   380 _P5_7	=	0x00ef
                           0000F0   381 _BREG_F0	=	0x00f0
                           0000F1   382 _BREG_F1	=	0x00f1
                           0000F2   383 _BREG_F2	=	0x00f2
                           0000F3   384 _BREG_F3	=	0x00f3
                           0000F4   385 _BREG_F4	=	0x00f4
                           0000F5   386 _BREG_F5	=	0x00f5
                           0000F6   387 _BREG_F6	=	0x00f6
                           0000F7   388 _BREG_F7	=	0x00f7
                           0000A8   389 _EX0	=	0x00a8
                           0000A9   390 _ET0	=	0x00a9
                           0000AA   391 _EX1	=	0x00aa
                           0000AB   392 _ET1	=	0x00ab
                           0000AC   393 _ES	=	0x00ac
                           0000AF   394 _EA	=	0x00af
                           0000B8   395 _PX0	=	0x00b8
                           0000B9   396 _PT0	=	0x00b9
                           0000BA   397 _PX1	=	0x00ba
                           0000BB   398 _PT1	=	0x00bb
                           0000BC   399 _PS	=	0x00bc
                           000080   400 _P0_0	=	0x0080
                           000081   401 _P0_1	=	0x0081
                           000082   402 _P0_2	=	0x0082
                           000083   403 _P0_3	=	0x0083
                           000084   404 _P0_4	=	0x0084
                           000085   405 _P0_5	=	0x0085
                           000086   406 _P0_6	=	0x0086
                           000087   407 _P0_7	=	0x0087
                           000090   408 _P1_0	=	0x0090
                           000091   409 _P1_1	=	0x0091
                           000092   410 _P1_2	=	0x0092
                           000093   411 _P1_3	=	0x0093
                           000094   412 _P1_4	=	0x0094
                           000095   413 _P1_5	=	0x0095
                           000096   414 _P1_6	=	0x0096
                           000097   415 _P1_7	=	0x0097
                           0000A0   416 _P2_0	=	0x00a0
                           0000A1   417 _P2_1	=	0x00a1
                           0000A2   418 _P2_2	=	0x00a2
                           0000A3   419 _P2_3	=	0x00a3
                           0000A4   420 _P2_4	=	0x00a4
                           0000A5   421 _P2_5	=	0x00a5
                           0000A6   422 _P2_6	=	0x00a6
                           0000A7   423 _P2_7	=	0x00a7
                           0000B0   424 _P3_0	=	0x00b0
                           0000B1   425 _P3_1	=	0x00b1
                           0000B2   426 _P3_2	=	0x00b2
                           0000B3   427 _P3_3	=	0x00b3
                           0000B4   428 _P3_4	=	0x00b4
                           0000B5   429 _P3_5	=	0x00b5
                           0000B6   430 _P3_6	=	0x00b6
                           0000B7   431 _P3_7	=	0x00b7
                           0000B0   432 _RXD	=	0x00b0
                           0000B0   433 _RXD0	=	0x00b0
                           0000B1   434 _TXD	=	0x00b1
                           0000B1   435 _TXD0	=	0x00b1
                           0000B2   436 _INT0	=	0x00b2
                           0000B3   437 _INT1	=	0x00b3
                           0000B4   438 _T0	=	0x00b4
                           0000B5   439 _T1	=	0x00b5
                           0000B6   440 _WR	=	0x00b6
                           0000B7   441 _RD	=	0x00b7
                           0000D0   442 _P	=	0x00d0
                           0000D1   443 _F1	=	0x00d1
                           0000D2   444 _OV	=	0x00d2
                           0000D3   445 _RS0	=	0x00d3
                           0000D4   446 _RS1	=	0x00d4
                           0000D5   447 _F0	=	0x00d5
                           0000D6   448 _AC	=	0x00d6
                           0000D7   449 _CY	=	0x00d7
                           000098   450 _RI	=	0x0098
                           000099   451 _TI	=	0x0099
                           00009A   452 _RB8	=	0x009a
                           00009B   453 _TB8	=	0x009b
                           00009C   454 _REN	=	0x009c
                           00009D   455 _SM2	=	0x009d
                           00009E   456 _SM1	=	0x009e
                           00009F   457 _SM0	=	0x009f
                           000088   458 _IT0	=	0x0088
                           000089   459 _IE0	=	0x0089
                           00008A   460 _IT1	=	0x008a
                           00008B   461 _IE1	=	0x008b
                           00008C   462 _TR0	=	0x008c
                           00008D   463 _TF0	=	0x008d
                           00008E   464 _TR1	=	0x008e
                           00008F   465 _TF1	=	0x008f
                                    466 ;--------------------------------------------------------
                                    467 ; overlayable register banks
                                    468 ;--------------------------------------------------------
                                    469 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        470 	.ds 8
                                    471 ;--------------------------------------------------------
                                    472 ; internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area DSEG    (DATA)
      000022                        475 _main_sloc0_1_0:
      000022                        476 	.ds 2
      000024                        477 _main_sloc1_1_0:
      000024                        478 	.ds 2
      000026                        479 _main_sloc2_1_0:
      000026                        480 	.ds 2
      000028                        481 _main_sloc3_1_0:
      000028                        482 	.ds 2
      00002A                        483 _main_sloc4_1_0:
      00002A                        484 	.ds 2
      00002C                        485 _main_sloc5_1_0:
      00002C                        486 	.ds 3
                                    487 ;--------------------------------------------------------
                                    488 ; overlayable items in internal ram
                                    489 ;--------------------------------------------------------
                                    490 	.area	OSEG    (OVR,DATA)
      000045                        491 _hex_to_int_sloc0_1_0:
      000045                        492 	.ds 3
      000048                        493 _hex_to_int_sloc1_1_0:
      000048                        494 	.ds 1
      000049                        495 _hex_to_int_sloc2_1_0:
      000049                        496 	.ds 2
                                    497 ;--------------------------------------------------------
                                    498 ; Stack segment in internal ram
                                    499 ;--------------------------------------------------------
                                    500 	.area SSEG
      000055                        501 __start__stack:
      000055                        502 	.ds	1
                                    503 
                                    504 ;--------------------------------------------------------
                                    505 ; indirectly addressable internal ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area ISEG    (DATA)
                                    508 ;--------------------------------------------------------
                                    509 ; absolute internal ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area IABS    (ABS,DATA)
                                    512 	.area IABS    (ABS,DATA)
                                    513 ;--------------------------------------------------------
                                    514 ; bit data
                                    515 ;--------------------------------------------------------
                                    516 	.area BSEG    (BIT)
                                    517 ;--------------------------------------------------------
                                    518 ; paged external ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area PSEG    (PAG,XDATA)
                                    521 ;--------------------------------------------------------
                                    522 ; uninitialized external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area XSEG    (XDATA)
      000156                        525 _hex_to_int_str_10000_131:
      000156                        526 	.ds 3
      000159                        527 _hex_to_int_result_10000_132:
      000159                        528 	.ds 2
      00015B                        529 _hex_to_int_ASCII_20000_133:
      00015B                        530 	.ds 2
      00015D                        531 _get_user_buffer_size_input_10000_138:
      00015D                        532 	.ds 10
      000167                        533 _main_device_mac_10000_141:
      000167                        534 	.ds 6
      00016D                        535 _main_target_mac_10000_141:
      00016D                        536 	.ds 6
      000173                        537 _main_device_ip_10000_141:
      000173                        538 	.ds 4
      000177                        539 _main_target_ip_10000_141:
      000177                        540 	.ds 4
      00017B                        541 _main_buffer_40003_151:
      00017B                        542 	.ds 256
      00027B                        543 _main_buffer_40003_156:
      00027B                        544 	.ds 256
      00037B                        545 _main_gNextPacketPtr_60001_172:
      00037B                        546 	.ds 2
      00037D                        547 _main_is_tcp_for_target_60004_177:
      00037D                        548 	.ds 2
      00037F                        549 _main_response_size_70004_181:
      00037F                        550 	.ds 2
                                    551 ;--------------------------------------------------------
                                    552 ; absolute external ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area XABS    (ABS,XDATA)
                                    555 ;--------------------------------------------------------
                                    556 ; initialized external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XISEG   (XDATA)
                                    559 	.area HOME    (CODE)
                                    560 	.area GSINIT0 (CODE)
                                    561 	.area GSINIT1 (CODE)
                                    562 	.area GSINIT2 (CODE)
                                    563 	.area GSINIT3 (CODE)
                                    564 	.area GSINIT4 (CODE)
                                    565 	.area GSINIT5 (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 	.area GSFINAL (CODE)
                                    568 	.area CSEG    (CODE)
                                    569 ;--------------------------------------------------------
                                    570 ; interrupt vector
                                    571 ;--------------------------------------------------------
                                    572 	.area HOME    (CODE)
      002000                        573 __interrupt_vect:
      002000 02 20 37         [24]  574 	ljmp	__sdcc_gsinit_startup
      002003 02 24 95         [24]  575 	ljmp	_external_interrupt0_isr
                                    576 ;--------------------------------------------------------
                                    577 ; global & static initialisations
                                    578 ;--------------------------------------------------------
                                    579 	.area HOME    (CODE)
                                    580 	.area GSINIT  (CODE)
                                    581 	.area GSFINAL (CODE)
                                    582 	.area GSINIT  (CODE)
                                    583 	.globl __sdcc_gsinit_startup
                                    584 	.globl __sdcc_program_startup
                                    585 	.globl __start__stack
                                    586 	.globl __mcs51_genXINIT
                                    587 	.globl __mcs51_genXRAMCLEAR
                                    588 	.globl __mcs51_genRAMCLEAR
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'main'
                                    591 ;------------------------------------------------------------
                                    592 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    593 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    594 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                    595 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                    596 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                    597 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                    598 ;device_mac                Allocated with name '_main_device_mac_10000_141'
                                    599 ;target_mac                Allocated with name '_main_target_mac_10000_141'
                                    600 ;device_ip                 Allocated with name '_main_device_ip_10000_141'
                                    601 ;target_ip                 Allocated with name '_main_target_ip_10000_141'
                                    602 ;c                         Allocated with name '_main_c_20001_143'
                                    603 ;reg_bank                  Allocated with name '_main_reg_bank_40002_146'
                                    604 ;addr                      Allocated with name '_main_addr_40003_147'
                                    605 ;data                      Allocated with name '_main_data_40004_148'
                                    606 ;num_bytes                 Allocated with name '_main_num_bytes_40002_150'
                                    607 ;start_address             Allocated with name '_main_start_address_40003_151'
                                    608 ;buffer                    Allocated with name '_main_buffer_40003_151'
                                    609 ;i                         Allocated with name '_main_i_50003_152'
                                    610 ;num_bytes                 Allocated with name '_main_num_bytes_40002_155'
                                    611 ;start_address             Allocated with name '_main_start_address_40003_156'
                                    612 ;buffer                    Allocated with name '_main_buffer_40003_156'
                                    613 ;reg_bank                  Allocated with name '_main_reg_bank_40002_158'
                                    614 ;addr                      Allocated with name '_main_addr_40003_159'
                                    615 ;data                      Allocated with name '_main_data_40003_159'
                                    616 ;addr                      Allocated with name '_main_addr_40002_161'
                                    617 ;data                      Allocated with name '_main_data_40003_162'
                                    618 ;addr                      Allocated with name '_main_addr_40002_164'
                                    619 ;data                      Allocated with name '_main_data_40002_164'
                                    620 ;addr                      Allocated with name '_main_addr_40002_167'
                                    621 ;bank                      Allocated with name '_main_bank_40003_168'
                                    622 ;data                      Allocated with name '_main_data_40003_168'
                                    623 ;nextPacket                Allocated with name '_main_nextPacket_60001_172'
                                    624 ;byteCount                 Allocated with name '_main_byteCount_60001_172'
                                    625 ;status                    Allocated with name '_main_status_60001_172'
                                    626 ;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_172'
                                    627 ;len                       Allocated with name '_main_len_60001_172'
                                    628 ;packet_data               Allocated with name '_main_packet_data_60002_175'
                                    629 ;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_176'
                                    630 ;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_177'
                                    631 ;response_size             Allocated with name '_main_response_size_70004_181'
                                    632 ;response                  Allocated with name '_main_response_70004_181'
                                    633 ;read_econ2                Allocated with name '_main_read_econ2_60005_185'
                                    634 ;i                         Allocated with name '_main_i_50001_188'
                                    635 ;read_econ2                Allocated with name '_main_read_econ2_40002_191'
                                    636 ;------------------------------------------------------------
                                    637 ;	main.c:197: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      002097 90 03 7B         [24]  638 	mov	dptr,#_main_gNextPacketPtr_60001_172
      00209A E4               [12]  639 	clr	a
      00209B F0               [24]  640 	movx	@dptr,a
      00209C A3               [24]  641 	inc	dptr
      00209D F0               [24]  642 	movx	@dptr,a
                                    643 	.area GSFINAL (CODE)
      0020A9 02 20 06         [24]  644 	ljmp	__sdcc_program_startup
                                    645 ;--------------------------------------------------------
                                    646 ; Home
                                    647 ;--------------------------------------------------------
                                    648 	.area HOME    (CODE)
                                    649 	.area HOME    (CODE)
      002006                        650 __sdcc_program_startup:
      002006 02 2D 52         [24]  651 	ljmp	_main
                                    652 ;	return from main will return to caller
                                    653 ;--------------------------------------------------------
                                    654 ; code
                                    655 ;--------------------------------------------------------
                                    656 	.area CSEG    (CODE)
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'hex_to_int'
                                    659 ;------------------------------------------------------------
                                    660 ;str                       Allocated with name '_hex_to_int_str_10000_131'
                                    661 ;i                         Allocated with name '_hex_to_int_i_10000_132'
                                    662 ;result                    Allocated with name '_hex_to_int_result_10000_132'
                                    663 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_133'
                                    664 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    665 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    666 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    667 ;------------------------------------------------------------
                                    668 ;	main.c:21: int hex_to_int(char* str)
                                    669 ;	-----------------------------------------
                                    670 ;	 function hex_to_int
                                    671 ;	-----------------------------------------
      002B14                        672 _hex_to_int:
                           000007   673 	ar7 = 0x07
                           000006   674 	ar6 = 0x06
                           000005   675 	ar5 = 0x05
                           000004   676 	ar4 = 0x04
                           000003   677 	ar3 = 0x03
                           000002   678 	ar2 = 0x02
                           000001   679 	ar1 = 0x01
                           000000   680 	ar0 = 0x00
      002B14 AF F0            [24]  681 	mov	r7,b
      002B16 AE 83            [24]  682 	mov	r6,dph
      002B18 E5 82            [12]  683 	mov	a,dpl
      002B1A 90 01 56         [24]  684 	mov	dptr,#_hex_to_int_str_10000_131
      002B1D F0               [24]  685 	movx	@dptr,a
      002B1E EE               [12]  686 	mov	a,r6
      002B1F A3               [24]  687 	inc	dptr
      002B20 F0               [24]  688 	movx	@dptr,a
      002B21 EF               [12]  689 	mov	a,r7
      002B22 A3               [24]  690 	inc	dptr
      002B23 F0               [24]  691 	movx	@dptr,a
                                    692 ;	main.c:24: int i = 0, result = 0;
      002B24 90 01 59         [24]  693 	mov	dptr,#_hex_to_int_result_10000_132
      002B27 E4               [12]  694 	clr	a
      002B28 F0               [24]  695 	movx	@dptr,a
      002B29 A3               [24]  696 	inc	dptr
      002B2A F0               [24]  697 	movx	@dptr,a
                                    698 ;	main.c:25: while(str[i] != '\0')
      002B2B 90 01 56         [24]  699 	mov	dptr,#_hex_to_int_str_10000_131
      002B2E E0               [24]  700 	movx	a,@dptr
      002B2F FD               [12]  701 	mov	r5,a
      002B30 A3               [24]  702 	inc	dptr
      002B31 E0               [24]  703 	movx	a,@dptr
      002B32 FE               [12]  704 	mov	r6,a
      002B33 A3               [24]  705 	inc	dptr
      002B34 E0               [24]  706 	movx	a,@dptr
      002B35 FF               [12]  707 	mov	r7,a
      002B36 8D 02            [24]  708 	mov	ar2,r5
      002B38 8E 03            [24]  709 	mov	ar3,r6
      002B3A 8F 04            [24]  710 	mov	ar4,r7
      002B3C 8D 45            [24]  711 	mov	_hex_to_int_sloc0_1_0,r5
      002B3E 8E 46            [24]  712 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      002B40 8F 47            [24]  713 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      002B42 78 00            [12]  714 	mov	r0,#0x00
      002B44 79 00            [12]  715 	mov	r1,#0x00
      002B46                        716 00112$:
      002B46 C0 02            [24]  717 	push	ar2
      002B48 C0 03            [24]  718 	push	ar3
      002B4A C0 04            [24]  719 	push	ar4
      002B4C E8               [12]  720 	mov	a,r0
      002B4D 25 45            [12]  721 	add	a, _hex_to_int_sloc0_1_0
      002B4F FA               [12]  722 	mov	r2,a
      002B50 E9               [12]  723 	mov	a,r1
      002B51 35 46            [12]  724 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      002B53 FB               [12]  725 	mov	r3,a
      002B54 AC 47            [24]  726 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      002B56 8A 82            [24]  727 	mov	dpl,r2
      002B58 8B 83            [24]  728 	mov	dph,r3
      002B5A 8C F0            [24]  729 	mov	b,r4
      002B5C 12 6E 38         [24]  730 	lcall	__gptrget
      002B5F F5 48            [12]  731 	mov	_hex_to_int_sloc1_1_0,a
      002B61 D0 04            [24]  732 	pop	ar4
      002B63 D0 03            [24]  733 	pop	ar3
      002B65 D0 02            [24]  734 	pop	ar2
      002B67 E5 48            [12]  735 	mov	a,_hex_to_int_sloc1_1_0
      002B69 70 03            [24]  736 	jnz	00166$
      002B6B 02 2C C2         [24]  737 	ljmp	00114$
      002B6E                        738 00166$:
                                    739 ;	main.c:27: int ASCII = (int)str[i];
      002B6E C0 02            [24]  740 	push	ar2
      002B70 C0 03            [24]  741 	push	ar3
      002B72 C0 04            [24]  742 	push	ar4
      002B74 85 48 49         [24]  743 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      002B77 75 4A 00         [24]  744 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      002B7A 90 01 5B         [24]  745 	mov	dptr,#_hex_to_int_ASCII_20000_133
      002B7D E5 49            [12]  746 	mov	a,_hex_to_int_sloc2_1_0
      002B7F F0               [24]  747 	movx	@dptr,a
      002B80 E5 4A            [12]  748 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B82 A3               [24]  749 	inc	dptr
      002B83 F0               [24]  750 	movx	@dptr,a
                                    751 ;	main.c:28: result *= 16;
      002B84 90 01 59         [24]  752 	mov	dptr,#_hex_to_int_result_10000_132
      002B87 E0               [24]  753 	movx	a,@dptr
      002B88 FB               [12]  754 	mov	r3,a
      002B89 A3               [24]  755 	inc	dptr
      002B8A E0               [24]  756 	movx	a,@dptr
      002B8B C4               [12]  757 	swap	a
      002B8C 54 F0            [12]  758 	anl	a,#0xf0
      002B8E CB               [12]  759 	xch	a,r3
      002B8F C4               [12]  760 	swap	a
      002B90 CB               [12]  761 	xch	a,r3
      002B91 6B               [12]  762 	xrl	a,r3
      002B92 CB               [12]  763 	xch	a,r3
      002B93 54 F0            [12]  764 	anl	a,#0xf0
      002B95 CB               [12]  765 	xch	a,r3
      002B96 6B               [12]  766 	xrl	a,r3
      002B97 FC               [12]  767 	mov	r4,a
      002B98 90 01 59         [24]  768 	mov	dptr,#_hex_to_int_result_10000_132
      002B9B EB               [12]  769 	mov	a,r3
      002B9C F0               [24]  770 	movx	@dptr,a
      002B9D EC               [12]  771 	mov	a,r4
      002B9E A3               [24]  772 	inc	dptr
      002B9F F0               [24]  773 	movx	@dptr,a
                                    774 ;	main.c:29: if(ASCII >= '0' && ASCII <= '9')
      002BA0 C3               [12]  775 	clr	c
      002BA1 E5 49            [12]  776 	mov	a,_hex_to_int_sloc2_1_0
      002BA3 94 30            [12]  777 	subb	a,#0x30
      002BA5 E5 4A            [12]  778 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BA7 64 80            [12]  779 	xrl	a,#0x80
      002BA9 94 80            [12]  780 	subb	a,#0x80
      002BAB D0 04            [24]  781 	pop	ar4
      002BAD D0 03            [24]  782 	pop	ar3
      002BAF D0 02            [24]  783 	pop	ar2
      002BB1 40 3F            [24]  784 	jc	00109$
      002BB3 74 39            [12]  785 	mov	a,#0x39
      002BB5 95 49            [12]  786 	subb	a,_hex_to_int_sloc2_1_0
      002BB7 74 80            [12]  787 	mov	a,#(0x00 ^ 0x80)
      002BB9 85 4A F0         [24]  788 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002BBC 63 F0 80         [24]  789 	xrl	b,#0x80
      002BBF 95 F0            [12]  790 	subb	a,b
      002BC1 40 2F            [24]  791 	jc	00109$
                                    792 ;	main.c:31: result += str[i] - 48;
      002BC3 C0 02            [24]  793 	push	ar2
      002BC5 C0 03            [24]  794 	push	ar3
      002BC7 C0 04            [24]  795 	push	ar4
      002BC9 E5 49            [12]  796 	mov	a,_hex_to_int_sloc2_1_0
      002BCB 24 D0            [12]  797 	add	a,#0xd0
      002BCD F5 49            [12]  798 	mov	_hex_to_int_sloc2_1_0,a
      002BCF E5 4A            [12]  799 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BD1 34 FF            [12]  800 	addc	a,#0xff
      002BD3 F5 4A            [12]  801 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002BD5 90 01 59         [24]  802 	mov	dptr,#_hex_to_int_result_10000_132
      002BD8 E0               [24]  803 	movx	a,@dptr
      002BD9 FA               [12]  804 	mov	r2,a
      002BDA A3               [24]  805 	inc	dptr
      002BDB E0               [24]  806 	movx	a,@dptr
      002BDC FC               [12]  807 	mov	r4,a
      002BDD 90 01 59         [24]  808 	mov	dptr,#_hex_to_int_result_10000_132
      002BE0 E5 49            [12]  809 	mov	a,_hex_to_int_sloc2_1_0
      002BE2 2A               [12]  810 	add	a, r2
      002BE3 F0               [24]  811 	movx	@dptr,a
      002BE4 E5 4A            [12]  812 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BE6 3C               [12]  813 	addc	a, r4
      002BE7 A3               [24]  814 	inc	dptr
      002BE8 F0               [24]  815 	movx	@dptr,a
      002BE9 D0 04            [24]  816 	pop	ar4
      002BEB D0 03            [24]  817 	pop	ar3
      002BED D0 02            [24]  818 	pop	ar2
      002BEF 02 2C BA         [24]  819 	ljmp	00110$
      002BF2                        820 00109$:
                                    821 ;	main.c:33: else if(ASCII >= 'A' && ASCII <= 'F')
      002BF2 90 01 5B         [24]  822 	mov	dptr,#_hex_to_int_ASCII_20000_133
      002BF5 E0               [24]  823 	movx	a,@dptr
      002BF6 F5 49            [12]  824 	mov	_hex_to_int_sloc2_1_0,a
      002BF8 A3               [24]  825 	inc	dptr
      002BF9 E0               [24]  826 	movx	a,@dptr
      002BFA F5 4A            [12]  827 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002BFC C3               [12]  828 	clr	c
      002BFD E5 49            [12]  829 	mov	a,_hex_to_int_sloc2_1_0
      002BFF 94 41            [12]  830 	subb	a,#0x41
      002C01 E5 4A            [12]  831 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C03 64 80            [12]  832 	xrl	a,#0x80
      002C05 94 80            [12]  833 	subb	a,#0x80
      002C07 40 4E            [24]  834 	jc	00105$
      002C09 74 46            [12]  835 	mov	a,#0x46
      002C0B 95 49            [12]  836 	subb	a,_hex_to_int_sloc2_1_0
      002C0D 74 80            [12]  837 	mov	a,#(0x00 ^ 0x80)
      002C0F 85 4A F0         [24]  838 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002C12 63 F0 80         [24]  839 	xrl	b,#0x80
      002C15 95 F0            [12]  840 	subb	a,b
      002C17 40 3E            [24]  841 	jc	00105$
                                    842 ;	main.c:35: result += str[i] - 55;
      002C19 C0 05            [24]  843 	push	ar5
      002C1B C0 06            [24]  844 	push	ar6
      002C1D C0 07            [24]  845 	push	ar7
      002C1F E8               [12]  846 	mov	a,r0
      002C20 2A               [12]  847 	add	a, r2
      002C21 FD               [12]  848 	mov	r5,a
      002C22 E9               [12]  849 	mov	a,r1
      002C23 3B               [12]  850 	addc	a, r3
      002C24 FE               [12]  851 	mov	r6,a
      002C25 8C 07            [24]  852 	mov	ar7,r4
      002C27 8D 82            [24]  853 	mov	dpl,r5
      002C29 8E 83            [24]  854 	mov	dph,r6
      002C2B 8F F0            [24]  855 	mov	b,r7
      002C2D 12 6E 38         [24]  856 	lcall	__gptrget
      002C30 7F 00            [12]  857 	mov	r7,#0x00
      002C32 24 C9            [12]  858 	add	a,#0xc9
      002C34 F5 49            [12]  859 	mov	_hex_to_int_sloc2_1_0,a
      002C36 EF               [12]  860 	mov	a,r7
      002C37 34 FF            [12]  861 	addc	a,#0xff
      002C39 F5 4A            [12]  862 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C3B 90 01 59         [24]  863 	mov	dptr,#_hex_to_int_result_10000_132
      002C3E E0               [24]  864 	movx	a,@dptr
      002C3F FE               [12]  865 	mov	r6,a
      002C40 A3               [24]  866 	inc	dptr
      002C41 E0               [24]  867 	movx	a,@dptr
      002C42 FF               [12]  868 	mov	r7,a
      002C43 90 01 59         [24]  869 	mov	dptr,#_hex_to_int_result_10000_132
      002C46 E5 49            [12]  870 	mov	a,_hex_to_int_sloc2_1_0
      002C48 2E               [12]  871 	add	a, r6
      002C49 F0               [24]  872 	movx	@dptr,a
      002C4A E5 4A            [12]  873 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C4C 3F               [12]  874 	addc	a, r7
      002C4D A3               [24]  875 	inc	dptr
      002C4E F0               [24]  876 	movx	@dptr,a
      002C4F D0 07            [24]  877 	pop	ar7
      002C51 D0 06            [24]  878 	pop	ar6
      002C53 D0 05            [24]  879 	pop	ar5
      002C55 80 63            [24]  880 	sjmp	00110$
      002C57                        881 00105$:
                                    882 ;	main.c:37: else if(ASCII >= 'a' && ASCII <= 'f')
      002C57 90 01 5B         [24]  883 	mov	dptr,#_hex_to_int_ASCII_20000_133
      002C5A E0               [24]  884 	movx	a,@dptr
      002C5B F5 49            [12]  885 	mov	_hex_to_int_sloc2_1_0,a
      002C5D A3               [24]  886 	inc	dptr
      002C5E E0               [24]  887 	movx	a,@dptr
      002C5F F5 4A            [12]  888 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C61 C3               [12]  889 	clr	c
      002C62 E5 49            [12]  890 	mov	a,_hex_to_int_sloc2_1_0
      002C64 94 61            [12]  891 	subb	a,#0x61
      002C66 E5 4A            [12]  892 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C68 64 80            [12]  893 	xrl	a,#0x80
      002C6A 94 80            [12]  894 	subb	a,#0x80
      002C6C 40 4C            [24]  895 	jc	00110$
      002C6E 74 66            [12]  896 	mov	a,#0x66
      002C70 95 49            [12]  897 	subb	a,_hex_to_int_sloc2_1_0
      002C72 74 80            [12]  898 	mov	a,#(0x00 ^ 0x80)
      002C74 85 4A F0         [24]  899 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002C77 63 F0 80         [24]  900 	xrl	b,#0x80
      002C7A 95 F0            [12]  901 	subb	a,b
      002C7C 40 3C            [24]  902 	jc	00110$
                                    903 ;	main.c:39: result += str[i] - 87;
      002C7E C0 02            [24]  904 	push	ar2
      002C80 C0 03            [24]  905 	push	ar3
      002C82 C0 04            [24]  906 	push	ar4
      002C84 E8               [12]  907 	mov	a,r0
      002C85 2D               [12]  908 	add	a, r5
      002C86 FA               [12]  909 	mov	r2,a
      002C87 E9               [12]  910 	mov	a,r1
      002C88 3E               [12]  911 	addc	a, r6
      002C89 FB               [12]  912 	mov	r3,a
      002C8A 8F 04            [24]  913 	mov	ar4,r7
      002C8C 8A 82            [24]  914 	mov	dpl,r2
      002C8E 8B 83            [24]  915 	mov	dph,r3
      002C90 8C F0            [24]  916 	mov	b,r4
      002C92 12 6E 38         [24]  917 	lcall	__gptrget
      002C95 7C 00            [12]  918 	mov	r4,#0x00
      002C97 24 A9            [12]  919 	add	a,#0xa9
      002C99 F5 49            [12]  920 	mov	_hex_to_int_sloc2_1_0,a
      002C9B EC               [12]  921 	mov	a,r4
      002C9C 34 FF            [12]  922 	addc	a,#0xff
      002C9E F5 4A            [12]  923 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002CA0 90 01 59         [24]  924 	mov	dptr,#_hex_to_int_result_10000_132
      002CA3 E0               [24]  925 	movx	a,@dptr
      002CA4 FB               [12]  926 	mov	r3,a
      002CA5 A3               [24]  927 	inc	dptr
      002CA6 E0               [24]  928 	movx	a,@dptr
      002CA7 FC               [12]  929 	mov	r4,a
      002CA8 90 01 59         [24]  930 	mov	dptr,#_hex_to_int_result_10000_132
      002CAB E5 49            [12]  931 	mov	a,_hex_to_int_sloc2_1_0
      002CAD 2B               [12]  932 	add	a, r3
      002CAE F0               [24]  933 	movx	@dptr,a
      002CAF E5 4A            [12]  934 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002CB1 3C               [12]  935 	addc	a, r4
      002CB2 A3               [24]  936 	inc	dptr
      002CB3 F0               [24]  937 	movx	@dptr,a
                                    938 ;	main.c:43: return result;
      002CB4 D0 04            [24]  939 	pop	ar4
      002CB6 D0 03            [24]  940 	pop	ar3
      002CB8 D0 02            [24]  941 	pop	ar2
                                    942 ;	main.c:39: result += str[i] - 87;
      002CBA                        943 00110$:
                                    944 ;	main.c:41: i++;
      002CBA 08               [12]  945 	inc	r0
      002CBB B8 00 01         [24]  946 	cjne	r0,#0x00,00173$
      002CBE 09               [12]  947 	inc	r1
      002CBF                        948 00173$:
      002CBF 02 2B 46         [24]  949 	ljmp	00112$
      002CC2                        950 00114$:
                                    951 ;	main.c:43: return result;
      002CC2 90 01 59         [24]  952 	mov	dptr,#_hex_to_int_result_10000_132
      002CC5 E0               [24]  953 	movx	a,@dptr
      002CC6 FE               [12]  954 	mov	r6,a
      002CC7 A3               [24]  955 	inc	dptr
      002CC8 E0               [24]  956 	movx	a,@dptr
                                    957 ;	main.c:45: }
      002CC9 8E 82            [24]  958 	mov	dpl,r6
      002CCB F5 83            [12]  959 	mov	dph,a
      002CCD 22               [24]  960 	ret
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    963 ;------------------------------------------------------------
                                    964 ;i                         Allocated with name '_get_user_buffer_size_i_10000_138'
                                    965 ;output                    Allocated with name '_get_user_buffer_size_output_10000_138'
                                    966 ;input                     Allocated with name '_get_user_buffer_size_input_10000_138'
                                    967 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_138'
                                    968 ;------------------------------------------------------------
                                    969 ;	main.c:48: int get_user_buffer_size(void)
                                    970 ;	-----------------------------------------
                                    971 ;	 function get_user_buffer_size
                                    972 ;	-----------------------------------------
      002CCE                        973 _get_user_buffer_size:
                                    974 ;	main.c:54: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      002CCE 7E 00            [12]  975 	mov	r6,#0x00
      002CD0 7F 00            [12]  976 	mov	r7,#0x00
      002CD2                        977 00103$:
      002CD2 C0 07            [24]  978 	push	ar7
      002CD4 C0 06            [24]  979 	push	ar6
      002CD6 12 5C 4E         [24]  980 	lcall	_getchar
      002CD9 AC 82            [24]  981 	mov	r4, dpl
      002CDB D0 06            [24]  982 	pop	ar6
      002CDD D0 07            [24]  983 	pop	ar7
      002CDF BC 0A 02         [24]  984 	cjne	r4,#0x0a,00133$
      002CE2 80 3A            [24]  985 	sjmp	00105$
      002CE4                        986 00133$:
      002CE4 BC 0D 02         [24]  987 	cjne	r4,#0x0d,00134$
      002CE7 80 35            [24]  988 	sjmp	00105$
      002CE9                        989 00134$:
      002CE9 C3               [12]  990 	clr	c
      002CEA EE               [12]  991 	mov	a,r6
      002CEB 94 09            [12]  992 	subb	a,#0x09
      002CED EF               [12]  993 	mov	a,r7
      002CEE 64 80            [12]  994 	xrl	a,#0x80
      002CF0 94 80            [12]  995 	subb	a,#0x80
      002CF2 50 2A            [24]  996 	jnc	00105$
                                    997 ;	main.c:56: putchar(ch);
      002CF4 8C 03            [24]  998 	mov	ar3,r4
      002CF6 7D 00            [12]  999 	mov	r5,#0x00
      002CF8 8B 82            [24] 1000 	mov	dpl, r3
      002CFA 8D 83            [24] 1001 	mov	dph, r5
      002CFC C0 07            [24] 1002 	push	ar7
      002CFE C0 06            [24] 1003 	push	ar6
      002D00 C0 04            [24] 1004 	push	ar4
      002D02 12 5C 2F         [24] 1005 	lcall	_putchar
      002D05 D0 04            [24] 1006 	pop	ar4
      002D07 D0 06            [24] 1007 	pop	ar6
      002D09 D0 07            [24] 1008 	pop	ar7
                                   1009 ;	main.c:57: input[i] = ch;      //Append the input array with the received character
      002D0B EE               [12] 1010 	mov	a,r6
      002D0C 24 5D            [12] 1011 	add	a, #_get_user_buffer_size_input_10000_138
      002D0E F5 82            [12] 1012 	mov	dpl,a
      002D10 EF               [12] 1013 	mov	a,r7
      002D11 34 01            [12] 1014 	addc	a, #(_get_user_buffer_size_input_10000_138 >> 8)
      002D13 F5 83            [12] 1015 	mov	dph,a
      002D15 EC               [12] 1016 	mov	a,r4
      002D16 F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	main.c:58: i++;
      002D17 0E               [12] 1019 	inc	r6
      002D18 BE 00 B7         [24] 1020 	cjne	r6,#0x00,00103$
      002D1B 0F               [12] 1021 	inc	r7
      002D1C 80 B4            [24] 1022 	sjmp	00103$
      002D1E                       1023 00105$:
                                   1024 ;	main.c:60: input[i] = '\0';
      002D1E EE               [12] 1025 	mov	a,r6
      002D1F 24 5D            [12] 1026 	add	a, #_get_user_buffer_size_input_10000_138
      002D21 F5 82            [12] 1027 	mov	dpl,a
      002D23 EF               [12] 1028 	mov	a,r7
      002D24 34 01            [12] 1029 	addc	a, #(_get_user_buffer_size_input_10000_138 >> 8)
      002D26 F5 83            [12] 1030 	mov	dph,a
      002D28 E4               [12] 1031 	clr	a
      002D29 F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	main.c:61: output = hex_to_int(input); //Convert the char hex data to int
      002D2A 90 01 5D         [24] 1034 	mov	dptr,#_get_user_buffer_size_input_10000_138
      002D2D F5 F0            [12] 1035 	mov	b,a
      002D2F 12 2B 14         [24] 1036 	lcall	_hex_to_int
      002D32 AE 82            [24] 1037 	mov	r6, dpl
      002D34 AF 83            [24] 1038 	mov	r7, dph
                                   1039 ;	main.c:62: printf_tiny("\n\r");
      002D36 C0 07            [24] 1040 	push	ar7
      002D38 C0 06            [24] 1041 	push	ar6
      002D3A 74 17            [12] 1042 	mov	a,#___str_0
      002D3C C0 E0            [24] 1043 	push	acc
      002D3E 74 70            [12] 1044 	mov	a,#(___str_0 >> 8)
      002D40 C0 E0            [24] 1045 	push	acc
      002D42 12 60 1B         [24] 1046 	lcall	_printf_tiny
      002D45 15 81            [12] 1047 	dec	sp
      002D47 15 81            [12] 1048 	dec	sp
      002D49 D0 06            [24] 1049 	pop	ar6
      002D4B D0 07            [24] 1050 	pop	ar7
                                   1051 ;	main.c:64: return output;
      002D4D 8E 82            [24] 1052 	mov	dpl, r6
      002D4F 8F 83            [24] 1053 	mov	dph, r7
                                   1054 ;	main.c:65: }
      002D51 22               [24] 1055 	ret
                                   1056 ;------------------------------------------------------------
                                   1057 ;Allocation info for local variables in function 'main'
                                   1058 ;------------------------------------------------------------
                                   1059 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1060 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1061 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                   1062 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                   1063 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                   1064 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                   1065 ;device_mac                Allocated with name '_main_device_mac_10000_141'
                                   1066 ;target_mac                Allocated with name '_main_target_mac_10000_141'
                                   1067 ;device_ip                 Allocated with name '_main_device_ip_10000_141'
                                   1068 ;target_ip                 Allocated with name '_main_target_ip_10000_141'
                                   1069 ;c                         Allocated with name '_main_c_20001_143'
                                   1070 ;reg_bank                  Allocated with name '_main_reg_bank_40002_146'
                                   1071 ;addr                      Allocated with name '_main_addr_40003_147'
                                   1072 ;data                      Allocated with name '_main_data_40004_148'
                                   1073 ;num_bytes                 Allocated with name '_main_num_bytes_40002_150'
                                   1074 ;start_address             Allocated with name '_main_start_address_40003_151'
                                   1075 ;buffer                    Allocated with name '_main_buffer_40003_151'
                                   1076 ;i                         Allocated with name '_main_i_50003_152'
                                   1077 ;num_bytes                 Allocated with name '_main_num_bytes_40002_155'
                                   1078 ;start_address             Allocated with name '_main_start_address_40003_156'
                                   1079 ;buffer                    Allocated with name '_main_buffer_40003_156'
                                   1080 ;reg_bank                  Allocated with name '_main_reg_bank_40002_158'
                                   1081 ;addr                      Allocated with name '_main_addr_40003_159'
                                   1082 ;data                      Allocated with name '_main_data_40003_159'
                                   1083 ;addr                      Allocated with name '_main_addr_40002_161'
                                   1084 ;data                      Allocated with name '_main_data_40003_162'
                                   1085 ;addr                      Allocated with name '_main_addr_40002_164'
                                   1086 ;data                      Allocated with name '_main_data_40002_164'
                                   1087 ;addr                      Allocated with name '_main_addr_40002_167'
                                   1088 ;bank                      Allocated with name '_main_bank_40003_168'
                                   1089 ;data                      Allocated with name '_main_data_40003_168'
                                   1090 ;nextPacket                Allocated with name '_main_nextPacket_60001_172'
                                   1091 ;byteCount                 Allocated with name '_main_byteCount_60001_172'
                                   1092 ;status                    Allocated with name '_main_status_60001_172'
                                   1093 ;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_172'
                                   1094 ;len                       Allocated with name '_main_len_60001_172'
                                   1095 ;packet_data               Allocated with name '_main_packet_data_60002_175'
                                   1096 ;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_176'
                                   1097 ;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_177'
                                   1098 ;response_size             Allocated with name '_main_response_size_70004_181'
                                   1099 ;response                  Allocated with name '_main_response_70004_181'
                                   1100 ;read_econ2                Allocated with name '_main_read_econ2_60005_185'
                                   1101 ;i                         Allocated with name '_main_i_50001_188'
                                   1102 ;read_econ2                Allocated with name '_main_read_econ2_40002_191'
                                   1103 ;------------------------------------------------------------
                                   1104 ;	main.c:67: void main(void)
                                   1105 ;	-----------------------------------------
                                   1106 ;	 function main
                                   1107 ;	-----------------------------------------
      002D52                       1108 _main:
                                   1109 ;	main.c:69: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      002D52 90 01 67         [24] 1110 	mov	dptr,#_main_device_mac_10000_141
      002D55 74 02            [12] 1111 	mov	a,#0x02
      002D57 F0               [24] 1112 	movx	@dptr,a
      002D58 90 01 68         [24] 1113 	mov	dptr,#(_main_device_mac_10000_141 + 0x0001)
      002D5B 74 11            [12] 1114 	mov	a,#0x11
      002D5D F0               [24] 1115 	movx	@dptr,a
      002D5E 90 01 69         [24] 1116 	mov	dptr,#(_main_device_mac_10000_141 + 0x0002)
      002D61 23               [12] 1117 	rl	a
      002D62 F0               [24] 1118 	movx	@dptr,a
      002D63 90 01 6A         [24] 1119 	mov	dptr,#(_main_device_mac_10000_141 + 0x0003)
      002D66 74 33            [12] 1120 	mov	a,#0x33
      002D68 F0               [24] 1121 	movx	@dptr,a
      002D69 90 01 6B         [24] 1122 	mov	dptr,#(_main_device_mac_10000_141 + 0x0004)
      002D6C 74 44            [12] 1123 	mov	a,#0x44
      002D6E F0               [24] 1124 	movx	@dptr,a
      002D6F 90 01 6C         [24] 1125 	mov	dptr,#(_main_device_mac_10000_141 + 0x0005)
      002D72 74 55            [12] 1126 	mov	a,#0x55
      002D74 F0               [24] 1127 	movx	@dptr,a
                                   1128 ;	main.c:70: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      002D75 90 01 6D         [24] 1129 	mov	dptr,#_main_target_mac_10000_141
      002D78 74 F8            [12] 1130 	mov	a,#0xf8
      002D7A F0               [24] 1131 	movx	@dptr,a
      002D7B 90 01 6E         [24] 1132 	mov	dptr,#(_main_target_mac_10000_141 + 0x0001)
      002D7E 74 75            [12] 1133 	mov	a,#0x75
      002D80 F0               [24] 1134 	movx	@dptr,a
      002D81 90 01 6F         [24] 1135 	mov	dptr,#(_main_target_mac_10000_141 + 0x0002)
      002D84 74 A4            [12] 1136 	mov	a,#0xa4
      002D86 F0               [24] 1137 	movx	@dptr,a
      002D87 90 01 70         [24] 1138 	mov	dptr,#(_main_target_mac_10000_141 + 0x0003)
      002D8A 74 8C            [12] 1139 	mov	a,#0x8c
      002D8C F0               [24] 1140 	movx	@dptr,a
      002D8D 90 01 71         [24] 1141 	mov	dptr,#(_main_target_mac_10000_141 + 0x0004)
      002D90 74 41            [12] 1142 	mov	a,#0x41
      002D92 F0               [24] 1143 	movx	@dptr,a
      002D93 90 01 72         [24] 1144 	mov	dptr,#(_main_target_mac_10000_141 + 0x0005)
      002D96 74 31            [12] 1145 	mov	a,#0x31
      002D98 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	main.c:71: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      002D99 90 01 73         [24] 1148 	mov	dptr,#_main_device_ip_10000_141
      002D9C 74 C0            [12] 1149 	mov	a,#0xc0
      002D9E F0               [24] 1150 	movx	@dptr,a
      002D9F 90 01 74         [24] 1151 	mov	dptr,#(_main_device_ip_10000_141 + 0x0001)
      002DA2 74 A8            [12] 1152 	mov	a,#0xa8
      002DA4 F0               [24] 1153 	movx	@dptr,a
      002DA5 90 01 75         [24] 1154 	mov	dptr,#(_main_device_ip_10000_141 + 0x0002)
      002DA8 74 01            [12] 1155 	mov	a,#0x01
      002DAA F0               [24] 1156 	movx	@dptr,a
      002DAB 90 01 76         [24] 1157 	mov	dptr,#(_main_device_ip_10000_141 + 0x0003)
      002DAE 74 64            [12] 1158 	mov	a,#0x64
      002DB0 F0               [24] 1159 	movx	@dptr,a
                                   1160 ;	main.c:72: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      002DB1 90 01 77         [24] 1161 	mov	dptr,#_main_target_ip_10000_141
      002DB4 74 C0            [12] 1162 	mov	a,#0xc0
      002DB6 F0               [24] 1163 	movx	@dptr,a
      002DB7 90 01 78         [24] 1164 	mov	dptr,#(_main_target_ip_10000_141 + 0x0001)
      002DBA 74 A8            [12] 1165 	mov	a,#0xa8
      002DBC F0               [24] 1166 	movx	@dptr,a
      002DBD 90 01 79         [24] 1167 	mov	dptr,#(_main_target_ip_10000_141 + 0x0002)
      002DC0 74 01            [12] 1168 	mov	a,#0x01
      002DC2 F0               [24] 1169 	movx	@dptr,a
      002DC3 90 01 7A         [24] 1170 	mov	dptr,#(_main_target_ip_10000_141 + 0x0003)
      002DC6 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	main.c:74: printf("SPI Operations on 8051\n\r");
      002DC7 74 1A            [12] 1173 	mov	a,#___str_1
      002DC9 C0 E0            [24] 1174 	push	acc
      002DCB 74 70            [12] 1175 	mov	a,#(___str_1 >> 8)
      002DCD C0 E0            [24] 1176 	push	acc
      002DCF 74 80            [12] 1177 	mov	a,#0x80
      002DD1 C0 E0            [24] 1178 	push	acc
      002DD3 12 64 16         [24] 1179 	lcall	_printf
      002DD6 15 81            [12] 1180 	dec	sp
      002DD8 15 81            [12] 1181 	dec	sp
      002DDA 15 81            [12] 1182 	dec	sp
                                   1183 ;	main.c:75: configure_SPI();
      002DDC 12 39 A7         [24] 1184 	lcall	_configure_SPI
                                   1185 ;	main.c:77: enc_init(device_mac);
      002DDF 90 01 67         [24] 1186 	mov	dptr,#_main_device_mac_10000_141
      002DE2 75 F0 00         [24] 1187 	mov	b, #0x00
      002DE5 12 26 BD         [24] 1188 	lcall	_enc_init
                                   1189 ;	main.c:79: while(1)
      002DE8                       1190 00146$:
                                   1191 ;	main.c:81: printf("\n\rChoose an action: \n\r");
      002DE8 74 33            [12] 1192 	mov	a,#___str_2
      002DEA C0 E0            [24] 1193 	push	acc
      002DEC 74 70            [12] 1194 	mov	a,#(___str_2 >> 8)
      002DEE C0 E0            [24] 1195 	push	acc
      002DF0 74 80            [12] 1196 	mov	a,#0x80
      002DF2 C0 E0            [24] 1197 	push	acc
      002DF4 12 64 16         [24] 1198 	lcall	_printf
      002DF7 15 81            [12] 1199 	dec	sp
      002DF9 15 81            [12] 1200 	dec	sp
      002DFB 15 81            [12] 1201 	dec	sp
                                   1202 ;	main.c:82: printf("1 --> Control Write\n\r");
      002DFD 74 4A            [12] 1203 	mov	a,#___str_3
      002DFF C0 E0            [24] 1204 	push	acc
      002E01 74 70            [12] 1205 	mov	a,#(___str_3 >> 8)
      002E03 C0 E0            [24] 1206 	push	acc
      002E05 74 80            [12] 1207 	mov	a,#0x80
      002E07 C0 E0            [24] 1208 	push	acc
      002E09 12 64 16         [24] 1209 	lcall	_printf
      002E0C 15 81            [12] 1210 	dec	sp
      002E0E 15 81            [12] 1211 	dec	sp
      002E10 15 81            [12] 1212 	dec	sp
                                   1213 ;	main.c:83: printf("2 --> Buffer Write\n\r");
      002E12 74 60            [12] 1214 	mov	a,#___str_4
      002E14 C0 E0            [24] 1215 	push	acc
      002E16 74 70            [12] 1216 	mov	a,#(___str_4 >> 8)
      002E18 C0 E0            [24] 1217 	push	acc
      002E1A 74 80            [12] 1218 	mov	a,#0x80
      002E1C C0 E0            [24] 1219 	push	acc
      002E1E 12 64 16         [24] 1220 	lcall	_printf
      002E21 15 81            [12] 1221 	dec	sp
      002E23 15 81            [12] 1222 	dec	sp
      002E25 15 81            [12] 1223 	dec	sp
                                   1224 ;	main.c:84: printf("3 --> Buffer Read\n\r");
      002E27 74 75            [12] 1225 	mov	a,#___str_5
      002E29 C0 E0            [24] 1226 	push	acc
      002E2B 74 70            [12] 1227 	mov	a,#(___str_5 >> 8)
      002E2D C0 E0            [24] 1228 	push	acc
      002E2F 74 80            [12] 1229 	mov	a,#0x80
      002E31 C0 E0            [24] 1230 	push	acc
      002E33 12 64 16         [24] 1231 	lcall	_printf
      002E36 15 81            [12] 1232 	dec	sp
      002E38 15 81            [12] 1233 	dec	sp
      002E3A 15 81            [12] 1234 	dec	sp
                                   1235 ;	main.c:85: printf("4 --> MAC Register Read\n\r");
      002E3C 74 89            [12] 1236 	mov	a,#___str_6
      002E3E C0 E0            [24] 1237 	push	acc
      002E40 74 70            [12] 1238 	mov	a,#(___str_6 >> 8)
      002E42 C0 E0            [24] 1239 	push	acc
      002E44 74 80            [12] 1240 	mov	a,#0x80
      002E46 C0 E0            [24] 1241 	push	acc
      002E48 12 64 16         [24] 1242 	lcall	_printf
      002E4B 15 81            [12] 1243 	dec	sp
      002E4D 15 81            [12] 1244 	dec	sp
      002E4F 15 81            [12] 1245 	dec	sp
                                   1246 ;	main.c:86: printf("5 --> PHY SPI Write\n\r");
      002E51 74 A3            [12] 1247 	mov	a,#___str_7
      002E53 C0 E0            [24] 1248 	push	acc
      002E55 74 70            [12] 1249 	mov	a,#(___str_7 >> 8)
      002E57 C0 E0            [24] 1250 	push	acc
      002E59 74 80            [12] 1251 	mov	a,#0x80
      002E5B C0 E0            [24] 1252 	push	acc
      002E5D 12 64 16         [24] 1253 	lcall	_printf
      002E60 15 81            [12] 1254 	dec	sp
      002E62 15 81            [12] 1255 	dec	sp
      002E64 15 81            [12] 1256 	dec	sp
                                   1257 ;	main.c:87: printf("6 --> PHY SPI Read\n\r");
      002E66 74 B9            [12] 1258 	mov	a,#___str_8
      002E68 C0 E0            [24] 1259 	push	acc
      002E6A 74 70            [12] 1260 	mov	a,#(___str_8 >> 8)
      002E6C C0 E0            [24] 1261 	push	acc
      002E6E 74 80            [12] 1262 	mov	a,#0x80
      002E70 C0 E0            [24] 1263 	push	acc
      002E72 12 64 16         [24] 1264 	lcall	_printf
      002E75 15 81            [12] 1265 	dec	sp
      002E77 15 81            [12] 1266 	dec	sp
      002E79 15 81            [12] 1267 	dec	sp
                                   1268 ;	main.c:88: printf("7 --> ENC Reset\n\r");
      002E7B 74 CE            [12] 1269 	mov	a,#___str_9
      002E7D C0 E0            [24] 1270 	push	acc
      002E7F 74 70            [12] 1271 	mov	a,#(___str_9 >> 8)
      002E81 C0 E0            [24] 1272 	push	acc
      002E83 74 80            [12] 1273 	mov	a,#0x80
      002E85 C0 E0            [24] 1274 	push	acc
      002E87 12 64 16         [24] 1275 	lcall	_printf
      002E8A 15 81            [12] 1276 	dec	sp
      002E8C 15 81            [12] 1277 	dec	sp
      002E8E 15 81            [12] 1278 	dec	sp
                                   1279 ;	main.c:89: printf("8 --> Read ETH Register\n\r");
      002E90 74 E0            [12] 1280 	mov	a,#___str_10
      002E92 C0 E0            [24] 1281 	push	acc
      002E94 74 70            [12] 1282 	mov	a,#(___str_10 >> 8)
      002E96 C0 E0            [24] 1283 	push	acc
      002E98 74 80            [12] 1284 	mov	a,#0x80
      002E9A C0 E0            [24] 1285 	push	acc
      002E9C 12 64 16         [24] 1286 	lcall	_printf
      002E9F 15 81            [12] 1287 	dec	sp
      002EA1 15 81            [12] 1288 	dec	sp
      002EA3 15 81            [12] 1289 	dec	sp
                                   1290 ;	main.c:90: printf("9 --> Display Menu\n\r");
      002EA5 74 FA            [12] 1291 	mov	a,#___str_11
      002EA7 C0 E0            [24] 1292 	push	acc
      002EA9 74 70            [12] 1293 	mov	a,#(___str_11 >> 8)
      002EAB C0 E0            [24] 1294 	push	acc
      002EAD 74 80            [12] 1295 	mov	a,#0x80
      002EAF C0 E0            [24] 1296 	push	acc
      002EB1 12 64 16         [24] 1297 	lcall	_printf
      002EB4 15 81            [12] 1298 	dec	sp
      002EB6 15 81            [12] 1299 	dec	sp
      002EB8 15 81            [12] 1300 	dec	sp
                                   1301 ;	main.c:91: printf("A --> Send ARP Request\n\r");
      002EBA 74 0F            [12] 1302 	mov	a,#___str_12
      002EBC C0 E0            [24] 1303 	push	acc
      002EBE 74 71            [12] 1304 	mov	a,#(___str_12 >> 8)
      002EC0 C0 E0            [24] 1305 	push	acc
      002EC2 74 80            [12] 1306 	mov	a,#0x80
      002EC4 C0 E0            [24] 1307 	push	acc
      002EC6 12 64 16         [24] 1308 	lcall	_printf
      002EC9 15 81            [12] 1309 	dec	sp
      002ECB 15 81            [12] 1310 	dec	sp
      002ECD 15 81            [12] 1311 	dec	sp
                                   1312 ;	main.c:92: printf("B --> Init RX buffers\n\r");
      002ECF 74 28            [12] 1313 	mov	a,#___str_13
      002ED1 C0 E0            [24] 1314 	push	acc
      002ED3 74 71            [12] 1315 	mov	a,#(___str_13 >> 8)
      002ED5 C0 E0            [24] 1316 	push	acc
      002ED7 74 80            [12] 1317 	mov	a,#0x80
      002ED9 C0 E0            [24] 1318 	push	acc
      002EDB 12 64 16         [24] 1319 	lcall	_printf
      002EDE 15 81            [12] 1320 	dec	sp
      002EE0 15 81            [12] 1321 	dec	sp
      002EE2 15 81            [12] 1322 	dec	sp
                                   1323 ;	main.c:93: printf("C --> Hard Reset(nRESET pin)\n\r");
      002EE4 74 40            [12] 1324 	mov	a,#___str_14
      002EE6 C0 E0            [24] 1325 	push	acc
      002EE8 74 71            [12] 1326 	mov	a,#(___str_14 >> 8)
      002EEA C0 E0            [24] 1327 	push	acc
      002EEC 74 80            [12] 1328 	mov	a,#0x80
      002EEE C0 E0            [24] 1329 	push	acc
      002EF0 12 64 16         [24] 1330 	lcall	_printf
      002EF3 15 81            [12] 1331 	dec	sp
      002EF5 15 81            [12] 1332 	dec	sp
      002EF7 15 81            [12] 1333 	dec	sp
                                   1334 ;	main.c:94: printf("D --> Process TCP\n\r");
      002EF9 74 5F            [12] 1335 	mov	a,#___str_15
      002EFB C0 E0            [24] 1336 	push	acc
      002EFD 74 71            [12] 1337 	mov	a,#(___str_15 >> 8)
      002EFF C0 E0            [24] 1338 	push	acc
      002F01 74 80            [12] 1339 	mov	a,#0x80
      002F03 C0 E0            [24] 1340 	push	acc
      002F05 12 64 16         [24] 1341 	lcall	_printf
      002F08 15 81            [12] 1342 	dec	sp
      002F0A 15 81            [12] 1343 	dec	sp
      002F0C 15 81            [12] 1344 	dec	sp
                                   1345 ;	main.c:95: printf("E --> Enable TX interrupt\n\r");
      002F0E 74 73            [12] 1346 	mov	a,#___str_16
      002F10 C0 E0            [24] 1347 	push	acc
      002F12 74 71            [12] 1348 	mov	a,#(___str_16 >> 8)
      002F14 C0 E0            [24] 1349 	push	acc
      002F16 74 80            [12] 1350 	mov	a,#0x80
      002F18 C0 E0            [24] 1351 	push	acc
      002F1A 12 64 16         [24] 1352 	lcall	_printf
      002F1D 15 81            [12] 1353 	dec	sp
      002F1F 15 81            [12] 1354 	dec	sp
      002F21 15 81            [12] 1355 	dec	sp
                                   1356 ;	main.c:96: printf("F --> Disabling TX interrupt\n\r");
      002F23 74 8F            [12] 1357 	mov	a,#___str_17
      002F25 C0 E0            [24] 1358 	push	acc
      002F27 74 71            [12] 1359 	mov	a,#(___str_17 >> 8)
      002F29 C0 E0            [24] 1360 	push	acc
      002F2B 74 80            [12] 1361 	mov	a,#0x80
      002F2D C0 E0            [24] 1362 	push	acc
      002F2F 12 64 16         [24] 1363 	lcall	_printf
      002F32 15 81            [12] 1364 	dec	sp
      002F34 15 81            [12] 1365 	dec	sp
      002F36 15 81            [12] 1366 	dec	sp
                                   1367 ;	main.c:98: char c = getchar();
      002F38 12 5C 4E         [24] 1368 	lcall	_getchar
      002F3B AE 82            [24] 1369 	mov	r6, dpl
                                   1370 ;	main.c:99: putchar(c);
      002F3D 8E 05            [24] 1371 	mov	ar5,r6
      002F3F 7F 00            [12] 1372 	mov	r7,#0x00
      002F41 8D 82            [24] 1373 	mov	dpl, r5
      002F43 8F 83            [24] 1374 	mov	dph, r7
      002F45 C0 06            [24] 1375 	push	ar6
      002F47 12 5C 2F         [24] 1376 	lcall	_putchar
                                   1377 ;	main.c:100: printf("\n\r");
      002F4A 74 17            [12] 1378 	mov	a,#___str_0
      002F4C C0 E0            [24] 1379 	push	acc
      002F4E 74 70            [12] 1380 	mov	a,#(___str_0 >> 8)
      002F50 C0 E0            [24] 1381 	push	acc
      002F52 74 80            [12] 1382 	mov	a,#0x80
      002F54 C0 E0            [24] 1383 	push	acc
      002F56 12 64 16         [24] 1384 	lcall	_printf
      002F59 15 81            [12] 1385 	dec	sp
      002F5B 15 81            [12] 1386 	dec	sp
      002F5D 15 81            [12] 1387 	dec	sp
      002F5F D0 06            [24] 1388 	pop	ar6
                                   1389 ;	main.c:102: switch(c)
      002F61 BE 31 02         [24] 1390 	cjne	r6,#0x31,00344$
      002F64 80 5D            [24] 1391 	sjmp	00101$
      002F66                       1392 00344$:
      002F66 BE 32 03         [24] 1393 	cjne	r6,#0x32,00345$
      002F69 02 30 2B         [24] 1394 	ljmp	00102$
      002F6C                       1395 00345$:
      002F6C BE 33 03         [24] 1396 	cjne	r6,#0x33,00346$
      002F6F 02 31 29         [24] 1397 	ljmp	00104$
      002F72                       1398 00346$:
      002F72 BE 34 03         [24] 1399 	cjne	r6,#0x34,00347$
      002F75 02 31 88         [24] 1400 	ljmp	00105$
      002F78                       1401 00347$:
      002F78 BE 35 03         [24] 1402 	cjne	r6,#0x35,00348$
      002F7B 02 31 EA         [24] 1403 	ljmp	00106$
      002F7E                       1404 00348$:
      002F7E BE 36 03         [24] 1405 	cjne	r6,#0x36,00349$
      002F81 02 32 55         [24] 1406 	ljmp	00107$
      002F84                       1407 00349$:
      002F84 BE 37 03         [24] 1408 	cjne	r6,#0x37,00350$
      002F87 02 32 90         [24] 1409 	ljmp	00108$
      002F8A                       1410 00350$:
      002F8A BE 38 03         [24] 1411 	cjne	r6,#0x38,00351$
      002F8D 02 32 AB         [24] 1412 	ljmp	00109$
      002F90                       1413 00351$:
      002F90 BE 39 03         [24] 1414 	cjne	r6,#0x39,00352$
      002F93 02 33 0D         [24] 1415 	ljmp	00110$
      002F96                       1416 00352$:
      002F96 BE 41 03         [24] 1417 	cjne	r6,#0x41,00353$
      002F99 02 33 CD         [24] 1418 	ljmp	00111$
      002F9C                       1419 00353$:
      002F9C BE 42 03         [24] 1420 	cjne	r6,#0x42,00354$
      002F9F 02 2D E8         [24] 1421 	ljmp	00146$
      002FA2                       1422 00354$:
      002FA2 BE 43 03         [24] 1423 	cjne	r6,#0x43,00355$
      002FA5 02 37 A6         [24] 1424 	ljmp	00134$
      002FA8                       1425 00355$:
      002FA8 BE 44 03         [24] 1426 	cjne	r6,#0x44,00356$
      002FAB 02 37 D8         [24] 1427 	ljmp	00136$
      002FAE                       1428 00356$:
      002FAE BE 45 03         [24] 1429 	cjne	r6,#0x45,00357$
      002FB1 02 37 E1         [24] 1430 	ljmp	00137$
      002FB4                       1431 00357$:
      002FB4 BE 46 03         [24] 1432 	cjne	r6,#0x46,00358$
      002FB7 02 38 1C         [24] 1433 	ljmp	00138$
      002FBA                       1434 00358$:
      002FBA BE 58 03         [24] 1435 	cjne	r6,#0x58,00359$
      002FBD 02 38 42         [24] 1436 	ljmp	00141$
      002FC0                       1437 00359$:
      002FC0 02 38 47         [24] 1438 	ljmp	00143$
                                   1439 ;	main.c:104: case '1': {
      002FC3                       1440 00101$:
                                   1441 ;	main.c:105: printf("Enter the register bank to select:\n\r");
      002FC3 74 AE            [12] 1442 	mov	a,#___str_18
      002FC5 C0 E0            [24] 1443 	push	acc
      002FC7 74 71            [12] 1444 	mov	a,#(___str_18 >> 8)
      002FC9 C0 E0            [24] 1445 	push	acc
      002FCB 74 80            [12] 1446 	mov	a,#0x80
      002FCD C0 E0            [24] 1447 	push	acc
      002FCF 12 64 16         [24] 1448 	lcall	_printf
      002FD2 15 81            [12] 1449 	dec	sp
      002FD4 15 81            [12] 1450 	dec	sp
      002FD6 15 81            [12] 1451 	dec	sp
                                   1452 ;	main.c:106: uint8_t reg_bank = get_user_buffer_size();
      002FD8 12 2C CE         [24] 1453 	lcall	_get_user_buffer_size
      002FDB AE 82            [24] 1454 	mov	r6, dpl
                                   1455 ;	main.c:107: printf("Enter the address of the Control Register:\n\r");
      002FDD C0 06            [24] 1456 	push	ar6
      002FDF 74 D3            [12] 1457 	mov	a,#___str_19
      002FE1 C0 E0            [24] 1458 	push	acc
      002FE3 74 71            [12] 1459 	mov	a,#(___str_19 >> 8)
      002FE5 C0 E0            [24] 1460 	push	acc
      002FE7 74 80            [12] 1461 	mov	a,#0x80
      002FE9 C0 E0            [24] 1462 	push	acc
      002FEB 12 64 16         [24] 1463 	lcall	_printf
      002FEE 15 81            [12] 1464 	dec	sp
      002FF0 15 81            [12] 1465 	dec	sp
      002FF2 15 81            [12] 1466 	dec	sp
                                   1467 ;	main.c:108: uint8_t addr = get_user_buffer_size();
      002FF4 12 2C CE         [24] 1468 	lcall	_get_user_buffer_size
      002FF7 AD 82            [24] 1469 	mov	r5, dpl
                                   1470 ;	main.c:109: printf("Enter the data you want to write:\n\r");
      002FF9 C0 05            [24] 1471 	push	ar5
      002FFB 74 00            [12] 1472 	mov	a,#___str_20
      002FFD C0 E0            [24] 1473 	push	acc
      002FFF 74 72            [12] 1474 	mov	a,#(___str_20 >> 8)
      003001 C0 E0            [24] 1475 	push	acc
      003003 74 80            [12] 1476 	mov	a,#0x80
      003005 C0 E0            [24] 1477 	push	acc
      003007 12 64 16         [24] 1478 	lcall	_printf
      00300A 15 81            [12] 1479 	dec	sp
      00300C 15 81            [12] 1480 	dec	sp
      00300E 15 81            [12] 1481 	dec	sp
                                   1482 ;	main.c:110: uint8_t data = get_user_buffer_size();
      003010 12 2C CE         [24] 1483 	lcall	_get_user_buffer_size
      003013 AC 82            [24] 1484 	mov	r4, dpl
      003015 D0 05            [24] 1485 	pop	ar5
      003017 D0 06            [24] 1486 	pop	ar6
                                   1487 ;	main.c:111: spi_control_write(reg_bank, addr, data);
      003019 90 03 84         [24] 1488 	mov	dptr,#_spi_control_write_PARM_2
      00301C ED               [12] 1489 	mov	a,r5
      00301D F0               [24] 1490 	movx	@dptr,a
      00301E 90 03 85         [24] 1491 	mov	dptr,#_spi_control_write_PARM_3
      003021 EC               [12] 1492 	mov	a,r4
      003022 F0               [24] 1493 	movx	@dptr,a
      003023 8E 82            [24] 1494 	mov	dpl, r6
      003025 12 39 7A         [24] 1495 	lcall	_spi_control_write
                                   1496 ;	main.c:112: break;
      003028 02 2D E8         [24] 1497 	ljmp	00146$
                                   1498 ;	main.c:114: case '2': {
      00302B                       1499 00102$:
                                   1500 ;	main.c:115: printf("Enter the number of bytes to write:\n\r");
      00302B 74 24            [12] 1501 	mov	a,#___str_21
      00302D C0 E0            [24] 1502 	push	acc
      00302F 74 72            [12] 1503 	mov	a,#(___str_21 >> 8)
      003031 C0 E0            [24] 1504 	push	acc
      003033 74 80            [12] 1505 	mov	a,#0x80
      003035 C0 E0            [24] 1506 	push	acc
      003037 12 64 16         [24] 1507 	lcall	_printf
      00303A 15 81            [12] 1508 	dec	sp
      00303C 15 81            [12] 1509 	dec	sp
      00303E 15 81            [12] 1510 	dec	sp
                                   1511 ;	main.c:116: int num_bytes = get_user_buffer_size();
      003040 12 2C CE         [24] 1512 	lcall	_get_user_buffer_size
      003043 AE 82            [24] 1513 	mov	r6, dpl
      003045 AF 83            [24] 1514 	mov	r7, dph
                                   1515 ;	main.c:117: printf("Enter the starting address:\n\r");
      003047 C0 07            [24] 1516 	push	ar7
      003049 C0 06            [24] 1517 	push	ar6
      00304B 74 4A            [12] 1518 	mov	a,#___str_22
      00304D C0 E0            [24] 1519 	push	acc
      00304F 74 72            [12] 1520 	mov	a,#(___str_22 >> 8)
      003051 C0 E0            [24] 1521 	push	acc
      003053 74 80            [12] 1522 	mov	a,#0x80
      003055 C0 E0            [24] 1523 	push	acc
      003057 12 64 16         [24] 1524 	lcall	_printf
      00305A 15 81            [12] 1525 	dec	sp
      00305C 15 81            [12] 1526 	dec	sp
      00305E 15 81            [12] 1527 	dec	sp
                                   1528 ;	main.c:118: uint16_t start_address = get_user_buffer_size();
      003060 12 2C CE         [24] 1529 	lcall	_get_user_buffer_size
      003063 AC 82            [24] 1530 	mov	r4, dpl
      003065 AD 83            [24] 1531 	mov	r5, dph
      003067 D0 06            [24] 1532 	pop	ar6
      003069 D0 07            [24] 1533 	pop	ar7
                                   1534 ;	main.c:120: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      00306B C0 07            [24] 1535 	push	ar7
      00306D C0 06            [24] 1536 	push	ar6
      00306F C0 05            [24] 1537 	push	ar5
      003071 C0 04            [24] 1538 	push	ar4
      003073 C0 06            [24] 1539 	push	ar6
      003075 C0 07            [24] 1540 	push	ar7
      003077 74 68            [12] 1541 	mov	a,#___str_23
      003079 C0 E0            [24] 1542 	push	acc
      00307B 74 72            [12] 1543 	mov	a,#(___str_23 >> 8)
      00307D C0 E0            [24] 1544 	push	acc
      00307F 74 80            [12] 1545 	mov	a,#0x80
      003081 C0 E0            [24] 1546 	push	acc
      003083 12 64 16         [24] 1547 	lcall	_printf
      003086 E5 81            [12] 1548 	mov	a,sp
      003088 24 FB            [12] 1549 	add	a,#0xfb
      00308A F5 81            [12] 1550 	mov	sp,a
      00308C D0 04            [24] 1551 	pop	ar4
      00308E D0 05            [24] 1552 	pop	ar5
      003090 D0 06            [24] 1553 	pop	ar6
      003092 D0 07            [24] 1554 	pop	ar7
                                   1555 ;	main.c:121: for (int i = 0; i < num_bytes; i++) {
      003094 7A 00            [12] 1556 	mov	r2,#0x00
      003096 7B 00            [12] 1557 	mov	r3,#0x00
      003098                       1558 00149$:
      003098 C3               [12] 1559 	clr	c
      003099 EA               [12] 1560 	mov	a,r2
      00309A 9E               [12] 1561 	subb	a,r6
      00309B EB               [12] 1562 	mov	a,r3
      00309C 64 80            [12] 1563 	xrl	a,#0x80
      00309E 8F F0            [24] 1564 	mov	b,r7
      0030A0 63 F0 80         [24] 1565 	xrl	b,#0x80
      0030A3 95 F0            [12] 1566 	subb	a,b
      0030A5 50 63            [24] 1567 	jnc	00103$
                                   1568 ;	main.c:122: printf("Byte %d: ", i);
      0030A7 C0 04            [24] 1569 	push	ar4
      0030A9 C0 05            [24] 1570 	push	ar5
      0030AB C0 07            [24] 1571 	push	ar7
      0030AD C0 06            [24] 1572 	push	ar6
      0030AF C0 05            [24] 1573 	push	ar5
      0030B1 C0 04            [24] 1574 	push	ar4
      0030B3 C0 03            [24] 1575 	push	ar3
      0030B5 C0 02            [24] 1576 	push	ar2
      0030B7 C0 02            [24] 1577 	push	ar2
      0030B9 C0 03            [24] 1578 	push	ar3
      0030BB 74 8B            [12] 1579 	mov	a,#___str_24
      0030BD C0 E0            [24] 1580 	push	acc
      0030BF 74 72            [12] 1581 	mov	a,#(___str_24 >> 8)
      0030C1 C0 E0            [24] 1582 	push	acc
      0030C3 74 80            [12] 1583 	mov	a,#0x80
      0030C5 C0 E0            [24] 1584 	push	acc
      0030C7 12 64 16         [24] 1585 	lcall	_printf
      0030CA E5 81            [12] 1586 	mov	a,sp
      0030CC 24 FB            [12] 1587 	add	a,#0xfb
      0030CE F5 81            [12] 1588 	mov	sp,a
      0030D0 D0 02            [24] 1589 	pop	ar2
      0030D2 D0 03            [24] 1590 	pop	ar3
      0030D4 D0 04            [24] 1591 	pop	ar4
      0030D6 D0 05            [24] 1592 	pop	ar5
                                   1593 ;	main.c:123: buffer[i] = get_user_buffer_size();
      0030D8 EA               [12] 1594 	mov	a,r2
      0030D9 24 7B            [12] 1595 	add	a, #_main_buffer_40003_151
      0030DB F8               [12] 1596 	mov	r0,a
      0030DC EB               [12] 1597 	mov	a,r3
      0030DD 34 01            [12] 1598 	addc	a, #(_main_buffer_40003_151 >> 8)
      0030DF F9               [12] 1599 	mov	r1,a
      0030E0 C0 03            [24] 1600 	push	ar3
      0030E2 C0 02            [24] 1601 	push	ar2
      0030E4 C0 01            [24] 1602 	push	ar1
      0030E6 C0 00            [24] 1603 	push	ar0
      0030E8 12 2C CE         [24] 1604 	lcall	_get_user_buffer_size
      0030EB AC 82            [24] 1605 	mov	r4, dpl
      0030ED D0 00            [24] 1606 	pop	ar0
      0030EF D0 01            [24] 1607 	pop	ar1
      0030F1 D0 02            [24] 1608 	pop	ar2
      0030F3 D0 03            [24] 1609 	pop	ar3
      0030F5 D0 06            [24] 1610 	pop	ar6
      0030F7 D0 07            [24] 1611 	pop	ar7
      0030F9 88 82            [24] 1612 	mov	dpl,r0
      0030FB 89 83            [24] 1613 	mov	dph,r1
      0030FD EC               [12] 1614 	mov	a,r4
      0030FE F0               [24] 1615 	movx	@dptr,a
                                   1616 ;	main.c:121: for (int i = 0; i < num_bytes; i++) {
      0030FF 0A               [12] 1617 	inc	r2
      003100 BA 00 01         [24] 1618 	cjne	r2,#0x00,00361$
      003103 0B               [12] 1619 	inc	r3
      003104                       1620 00361$:
      003104 D0 05            [24] 1621 	pop	ar5
      003106 D0 04            [24] 1622 	pop	ar4
      003108 80 8E            [24] 1623 	sjmp	00149$
      00310A                       1624 00103$:
                                   1625 ;	main.c:125: spi_buffer_write(num_bytes, start_address, buffer);
      00310A 90 03 9C         [24] 1626 	mov	dptr,#_spi_buffer_write_PARM_2
      00310D EC               [12] 1627 	mov	a,r4
      00310E F0               [24] 1628 	movx	@dptr,a
      00310F ED               [12] 1629 	mov	a,r5
      003110 A3               [24] 1630 	inc	dptr
      003111 F0               [24] 1631 	movx	@dptr,a
      003112 90 03 9E         [24] 1632 	mov	dptr,#_spi_buffer_write_PARM_3
      003115 74 7B            [12] 1633 	mov	a,#_main_buffer_40003_151
      003117 F0               [24] 1634 	movx	@dptr,a
      003118 74 01            [12] 1635 	mov	a,#(_main_buffer_40003_151 >> 8)
      00311A A3               [24] 1636 	inc	dptr
      00311B F0               [24] 1637 	movx	@dptr,a
      00311C E4               [12] 1638 	clr	a
      00311D A3               [24] 1639 	inc	dptr
      00311E F0               [24] 1640 	movx	@dptr,a
      00311F 8E 82            [24] 1641 	mov	dpl, r6
      003121 8F 83            [24] 1642 	mov	dph, r7
      003123 12 3E 14         [24] 1643 	lcall	_spi_buffer_write
                                   1644 ;	main.c:126: break;
      003126 02 2D E8         [24] 1645 	ljmp	00146$
                                   1646 ;	main.c:128: case '3': {
      003129                       1647 00104$:
                                   1648 ;	main.c:129: printf("Enter the number of bytes to read:\n\r");
      003129 74 95            [12] 1649 	mov	a,#___str_25
      00312B C0 E0            [24] 1650 	push	acc
      00312D 74 72            [12] 1651 	mov	a,#(___str_25 >> 8)
      00312F C0 E0            [24] 1652 	push	acc
      003131 74 80            [12] 1653 	mov	a,#0x80
      003133 C0 E0            [24] 1654 	push	acc
      003135 12 64 16         [24] 1655 	lcall	_printf
      003138 15 81            [12] 1656 	dec	sp
      00313A 15 81            [12] 1657 	dec	sp
      00313C 15 81            [12] 1658 	dec	sp
                                   1659 ;	main.c:130: int num_bytes = get_user_buffer_size();
      00313E 12 2C CE         [24] 1660 	lcall	_get_user_buffer_size
      003141 AE 82            [24] 1661 	mov	r6, dpl
      003143 AF 83            [24] 1662 	mov	r7, dph
                                   1663 ;	main.c:131: printf("Enter the starting address:\n\r");
      003145 C0 07            [24] 1664 	push	ar7
      003147 C0 06            [24] 1665 	push	ar6
      003149 74 4A            [12] 1666 	mov	a,#___str_22
      00314B C0 E0            [24] 1667 	push	acc
      00314D 74 72            [12] 1668 	mov	a,#(___str_22 >> 8)
      00314F C0 E0            [24] 1669 	push	acc
      003151 74 80            [12] 1670 	mov	a,#0x80
      003153 C0 E0            [24] 1671 	push	acc
      003155 12 64 16         [24] 1672 	lcall	_printf
      003158 15 81            [12] 1673 	dec	sp
      00315A 15 81            [12] 1674 	dec	sp
      00315C 15 81            [12] 1675 	dec	sp
                                   1676 ;	main.c:132: uint16_t start_address = get_user_buffer_size();
      00315E 12 2C CE         [24] 1677 	lcall	_get_user_buffer_size
      003161 AC 82            [24] 1678 	mov	r4, dpl
      003163 AD 83            [24] 1679 	mov	r5, dph
      003165 D0 06            [24] 1680 	pop	ar6
      003167 D0 07            [24] 1681 	pop	ar7
      003169 90 03 95         [24] 1682 	mov	dptr,#_spi_buffer_read_PARM_2
      00316C EC               [12] 1683 	mov	a,r4
      00316D F0               [24] 1684 	movx	@dptr,a
      00316E ED               [12] 1685 	mov	a,r5
      00316F A3               [24] 1686 	inc	dptr
      003170 F0               [24] 1687 	movx	@dptr,a
                                   1688 ;	main.c:134: spi_buffer_read(num_bytes, start_address, buffer);
      003171 90 03 97         [24] 1689 	mov	dptr,#_spi_buffer_read_PARM_3
      003174 74 7B            [12] 1690 	mov	a,#_main_buffer_40003_156
      003176 F0               [24] 1691 	movx	@dptr,a
      003177 74 02            [12] 1692 	mov	a,#(_main_buffer_40003_156 >> 8)
      003179 A3               [24] 1693 	inc	dptr
      00317A F0               [24] 1694 	movx	@dptr,a
      00317B E4               [12] 1695 	clr	a
      00317C A3               [24] 1696 	inc	dptr
      00317D F0               [24] 1697 	movx	@dptr,a
      00317E 8E 82            [24] 1698 	mov	dpl, r6
      003180 8F 83            [24] 1699 	mov	dph, r7
      003182 12 3C 95         [24] 1700 	lcall	_spi_buffer_read
                                   1701 ;	main.c:135: break;
      003185 02 2D E8         [24] 1702 	ljmp	00146$
                                   1703 ;	main.c:137: case '4': {
      003188                       1704 00105$:
                                   1705 ;	main.c:138: printf("Enter the MAC register bank to select:\n\r");
      003188 74 BA            [12] 1706 	mov	a,#___str_26
      00318A C0 E0            [24] 1707 	push	acc
      00318C 74 72            [12] 1708 	mov	a,#(___str_26 >> 8)
      00318E C0 E0            [24] 1709 	push	acc
      003190 74 80            [12] 1710 	mov	a,#0x80
      003192 C0 E0            [24] 1711 	push	acc
      003194 12 64 16         [24] 1712 	lcall	_printf
      003197 15 81            [12] 1713 	dec	sp
      003199 15 81            [12] 1714 	dec	sp
      00319B 15 81            [12] 1715 	dec	sp
                                   1716 ;	main.c:139: uint8_t reg_bank = get_user_buffer_size();
      00319D 12 2C CE         [24] 1717 	lcall	_get_user_buffer_size
      0031A0 AE 82            [24] 1718 	mov	r6, dpl
                                   1719 ;	main.c:140: printf("Enter the address of the MAC Register:\n\r");
      0031A2 C0 06            [24] 1720 	push	ar6
      0031A4 74 E3            [12] 1721 	mov	a,#___str_27
      0031A6 C0 E0            [24] 1722 	push	acc
      0031A8 74 72            [12] 1723 	mov	a,#(___str_27 >> 8)
      0031AA C0 E0            [24] 1724 	push	acc
      0031AC 74 80            [12] 1725 	mov	a,#0x80
      0031AE C0 E0            [24] 1726 	push	acc
      0031B0 12 64 16         [24] 1727 	lcall	_printf
      0031B3 15 81            [12] 1728 	dec	sp
      0031B5 15 81            [12] 1729 	dec	sp
      0031B7 15 81            [12] 1730 	dec	sp
                                   1731 ;	main.c:141: uint8_t addr = get_user_buffer_size();
      0031B9 12 2C CE         [24] 1732 	lcall	_get_user_buffer_size
      0031BC AD 82            [24] 1733 	mov	r5, dpl
      0031BE D0 06            [24] 1734 	pop	ar6
                                   1735 ;	main.c:142: uint8_t data = mac_spi_read(addr, reg_bank);
      0031C0 90 03 8D         [24] 1736 	mov	dptr,#_mac_spi_read_PARM_2
      0031C3 EE               [12] 1737 	mov	a,r6
      0031C4 F0               [24] 1738 	movx	@dptr,a
      0031C5 8D 82            [24] 1739 	mov	dpl, r5
      0031C7 12 3A 96         [24] 1740 	lcall	_mac_spi_read
      0031CA AF 82            [24] 1741 	mov	r7, dpl
                                   1742 ;	main.c:143: printf("MAC Register Data: 0x%02X\n\r", data);
      0031CC 7E 00            [12] 1743 	mov	r6,#0x00
      0031CE C0 07            [24] 1744 	push	ar7
      0031D0 C0 06            [24] 1745 	push	ar6
      0031D2 74 0C            [12] 1746 	mov	a,#___str_28
      0031D4 C0 E0            [24] 1747 	push	acc
      0031D6 74 73            [12] 1748 	mov	a,#(___str_28 >> 8)
      0031D8 C0 E0            [24] 1749 	push	acc
      0031DA 74 80            [12] 1750 	mov	a,#0x80
      0031DC C0 E0            [24] 1751 	push	acc
      0031DE 12 64 16         [24] 1752 	lcall	_printf
      0031E1 E5 81            [12] 1753 	mov	a,sp
      0031E3 24 FB            [12] 1754 	add	a,#0xfb
      0031E5 F5 81            [12] 1755 	mov	sp,a
                                   1756 ;	main.c:144: break;
      0031E7 02 2D E8         [24] 1757 	ljmp	00146$
                                   1758 ;	main.c:146: case '5': {
      0031EA                       1759 00106$:
                                   1760 ;	main.c:147: printf("Enter the PHY register address:\n\r");
      0031EA 74 28            [12] 1761 	mov	a,#___str_29
      0031EC C0 E0            [24] 1762 	push	acc
      0031EE 74 73            [12] 1763 	mov	a,#(___str_29 >> 8)
      0031F0 C0 E0            [24] 1764 	push	acc
      0031F2 74 80            [12] 1765 	mov	a,#0x80
      0031F4 C0 E0            [24] 1766 	push	acc
      0031F6 12 64 16         [24] 1767 	lcall	_printf
      0031F9 15 81            [12] 1768 	dec	sp
      0031FB 15 81            [12] 1769 	dec	sp
      0031FD 15 81            [12] 1770 	dec	sp
                                   1771 ;	main.c:148: uint8_t addr = get_user_buffer_size();
      0031FF 12 2C CE         [24] 1772 	lcall	_get_user_buffer_size
      003202 AE 82            [24] 1773 	mov	r6, dpl
                                   1774 ;	main.c:149: printf("Enter the 16-bit data to write:\n\r");
      003204 C0 06            [24] 1775 	push	ar6
      003206 74 4A            [12] 1776 	mov	a,#___str_30
      003208 C0 E0            [24] 1777 	push	acc
      00320A 74 73            [12] 1778 	mov	a,#(___str_30 >> 8)
      00320C C0 E0            [24] 1779 	push	acc
      00320E 74 80            [12] 1780 	mov	a,#0x80
      003210 C0 E0            [24] 1781 	push	acc
      003212 12 64 16         [24] 1782 	lcall	_printf
      003215 15 81            [12] 1783 	dec	sp
      003217 15 81            [12] 1784 	dec	sp
      003219 15 81            [12] 1785 	dec	sp
                                   1786 ;	main.c:150: uint16_t data = get_user_buffer_size();
      00321B 12 2C CE         [24] 1787 	lcall	_get_user_buffer_size
      00321E AD 82            [24] 1788 	mov	r5, dpl
      003220 AF 83            [24] 1789 	mov	r7, dph
      003222 D0 06            [24] 1790 	pop	ar6
                                   1791 ;	main.c:151: phy_spi_write(addr, data);
      003224 90 03 8A         [24] 1792 	mov	dptr,#_phy_spi_write_PARM_2
      003227 ED               [12] 1793 	mov	a,r5
      003228 F0               [24] 1794 	movx	@dptr,a
      003229 EF               [12] 1795 	mov	a,r7
      00322A A3               [24] 1796 	inc	dptr
      00322B F0               [24] 1797 	movx	@dptr,a
      00322C 8E 82            [24] 1798 	mov	dpl, r6
      00322E C0 07            [24] 1799 	push	ar7
      003230 C0 05            [24] 1800 	push	ar5
      003232 12 3A 13         [24] 1801 	lcall	_phy_spi_write
      003235 D0 05            [24] 1802 	pop	ar5
      003237 D0 07            [24] 1803 	pop	ar7
                                   1804 ;	main.c:152: printf("PHY Write Data: 0x%04X\n\r", data);
      003239 C0 05            [24] 1805 	push	ar5
      00323B C0 07            [24] 1806 	push	ar7
      00323D 74 6C            [12] 1807 	mov	a,#___str_31
      00323F C0 E0            [24] 1808 	push	acc
      003241 74 73            [12] 1809 	mov	a,#(___str_31 >> 8)
      003243 C0 E0            [24] 1810 	push	acc
      003245 74 80            [12] 1811 	mov	a,#0x80
      003247 C0 E0            [24] 1812 	push	acc
      003249 12 64 16         [24] 1813 	lcall	_printf
      00324C E5 81            [12] 1814 	mov	a,sp
      00324E 24 FB            [12] 1815 	add	a,#0xfb
      003250 F5 81            [12] 1816 	mov	sp,a
                                   1817 ;	main.c:153: break;
      003252 02 2D E8         [24] 1818 	ljmp	00146$
                                   1819 ;	main.c:155: case '6': {
      003255                       1820 00107$:
                                   1821 ;	main.c:156: printf("Enter the PHY register address to read:\n\r");
      003255 74 85            [12] 1822 	mov	a,#___str_32
      003257 C0 E0            [24] 1823 	push	acc
      003259 74 73            [12] 1824 	mov	a,#(___str_32 >> 8)
      00325B C0 E0            [24] 1825 	push	acc
      00325D 74 80            [12] 1826 	mov	a,#0x80
      00325F C0 E0            [24] 1827 	push	acc
      003261 12 64 16         [24] 1828 	lcall	_printf
      003264 15 81            [12] 1829 	dec	sp
      003266 15 81            [12] 1830 	dec	sp
      003268 15 81            [12] 1831 	dec	sp
                                   1832 ;	main.c:157: uint8_t addr = get_user_buffer_size();
      00326A 12 2C CE         [24] 1833 	lcall	_get_user_buffer_size
                                   1834 ;	main.c:158: uint16_t data = phy_spi_read(addr);
      00326D 12 3A D9         [24] 1835 	lcall	_phy_spi_read
      003270 AE 82            [24] 1836 	mov	r6, dpl
      003272 AF 83            [24] 1837 	mov	r7, dph
                                   1838 ;	main.c:159: printf("PHY Read Data: 0x%04X\n\r", data);
      003274 C0 06            [24] 1839 	push	ar6
      003276 C0 07            [24] 1840 	push	ar7
      003278 74 AF            [12] 1841 	mov	a,#___str_33
      00327A C0 E0            [24] 1842 	push	acc
      00327C 74 73            [12] 1843 	mov	a,#(___str_33 >> 8)
      00327E C0 E0            [24] 1844 	push	acc
      003280 74 80            [12] 1845 	mov	a,#0x80
      003282 C0 E0            [24] 1846 	push	acc
      003284 12 64 16         [24] 1847 	lcall	_printf
      003287 E5 81            [12] 1848 	mov	a,sp
      003289 24 FB            [12] 1849 	add	a,#0xfb
      00328B F5 81            [12] 1850 	mov	sp,a
                                   1851 ;	main.c:160: break;
      00328D 02 2D E8         [24] 1852 	ljmp	00146$
                                   1853 ;	main.c:162: case '7': {
      003290                       1854 00108$:
                                   1855 ;	main.c:163: printf("Resetting ENC28J60...\n\r");
      003290 74 C7            [12] 1856 	mov	a,#___str_34
      003292 C0 E0            [24] 1857 	push	acc
      003294 74 73            [12] 1858 	mov	a,#(___str_34 >> 8)
      003296 C0 E0            [24] 1859 	push	acc
      003298 74 80            [12] 1860 	mov	a,#0x80
      00329A C0 E0            [24] 1861 	push	acc
      00329C 12 64 16         [24] 1862 	lcall	_printf
      00329F 15 81            [12] 1863 	dec	sp
      0032A1 15 81            [12] 1864 	dec	sp
      0032A3 15 81            [12] 1865 	dec	sp
                                   1866 ;	main.c:164: enc_reset();
      0032A5 12 39 C5         [24] 1867 	lcall	_enc_reset
                                   1868 ;	main.c:165: break;
      0032A8 02 2D E8         [24] 1869 	ljmp	00146$
                                   1870 ;	main.c:167: case '8': {
      0032AB                       1871 00109$:
                                   1872 ;	main.c:168: printf("Enter the ETH register address to read:\n\r");
      0032AB 74 DF            [12] 1873 	mov	a,#___str_35
      0032AD C0 E0            [24] 1874 	push	acc
      0032AF 74 73            [12] 1875 	mov	a,#(___str_35 >> 8)
      0032B1 C0 E0            [24] 1876 	push	acc
      0032B3 74 80            [12] 1877 	mov	a,#0x80
      0032B5 C0 E0            [24] 1878 	push	acc
      0032B7 12 64 16         [24] 1879 	lcall	_printf
      0032BA 15 81            [12] 1880 	dec	sp
      0032BC 15 81            [12] 1881 	dec	sp
      0032BE 15 81            [12] 1882 	dec	sp
                                   1883 ;	main.c:169: uint8_t addr = get_user_buffer_size();
      0032C0 12 2C CE         [24] 1884 	lcall	_get_user_buffer_size
      0032C3 AE 82            [24] 1885 	mov	r6, dpl
                                   1886 ;	main.c:170: printf("Enter the bank (0 or 1):\n\r");
      0032C5 C0 06            [24] 1887 	push	ar6
      0032C7 74 09            [12] 1888 	mov	a,#___str_36
      0032C9 C0 E0            [24] 1889 	push	acc
      0032CB 74 74            [12] 1890 	mov	a,#(___str_36 >> 8)
      0032CD C0 E0            [24] 1891 	push	acc
      0032CF 74 80            [12] 1892 	mov	a,#0x80
      0032D1 C0 E0            [24] 1893 	push	acc
      0032D3 12 64 16         [24] 1894 	lcall	_printf
      0032D6 15 81            [12] 1895 	dec	sp
      0032D8 15 81            [12] 1896 	dec	sp
      0032DA 15 81            [12] 1897 	dec	sp
                                   1898 ;	main.c:171: uint8_t bank = get_user_buffer_size();
      0032DC 12 2C CE         [24] 1899 	lcall	_get_user_buffer_size
      0032DF AD 82            [24] 1900 	mov	r5, dpl
      0032E1 D0 06            [24] 1901 	pop	ar6
      0032E3 90 03 88         [24] 1902 	mov	dptr,#_eth_spi_read_PARM_2
      0032E6 ED               [12] 1903 	mov	a,r5
      0032E7 F0               [24] 1904 	movx	@dptr,a
                                   1905 ;	main.c:172: uint8_t data = eth_spi_read(addr, bank);
      0032E8 8E 82            [24] 1906 	mov	dpl, r6
      0032EA 12 39 D0         [24] 1907 	lcall	_eth_spi_read
      0032ED AF 82            [24] 1908 	mov	r7, dpl
                                   1909 ;	main.c:173: printf("ETH Register Data: 0x%02X\n\r", data);
      0032EF 7E 00            [12] 1910 	mov	r6,#0x00
      0032F1 C0 07            [24] 1911 	push	ar7
      0032F3 C0 06            [24] 1912 	push	ar6
      0032F5 74 24            [12] 1913 	mov	a,#___str_37
      0032F7 C0 E0            [24] 1914 	push	acc
      0032F9 74 74            [12] 1915 	mov	a,#(___str_37 >> 8)
      0032FB C0 E0            [24] 1916 	push	acc
      0032FD 74 80            [12] 1917 	mov	a,#0x80
      0032FF C0 E0            [24] 1918 	push	acc
      003301 12 64 16         [24] 1919 	lcall	_printf
      003304 E5 81            [12] 1920 	mov	a,sp
      003306 24 FB            [12] 1921 	add	a,#0xfb
      003308 F5 81            [12] 1922 	mov	sp,a
                                   1923 ;	main.c:174: break;
      00330A 02 2D E8         [24] 1924 	ljmp	00146$
                                   1925 ;	main.c:176: case '9': {
      00330D                       1926 00110$:
                                   1927 ;	main.c:177: printf("\n\rChoose an action: \n\r");
      00330D 74 33            [12] 1928 	mov	a,#___str_2
      00330F C0 E0            [24] 1929 	push	acc
      003311 74 70            [12] 1930 	mov	a,#(___str_2 >> 8)
      003313 C0 E0            [24] 1931 	push	acc
      003315 74 80            [12] 1932 	mov	a,#0x80
      003317 C0 E0            [24] 1933 	push	acc
      003319 12 64 16         [24] 1934 	lcall	_printf
      00331C 15 81            [12] 1935 	dec	sp
      00331E 15 81            [12] 1936 	dec	sp
      003320 15 81            [12] 1937 	dec	sp
                                   1938 ;	main.c:178: printf("1 --> Control Write\n\r");
      003322 74 4A            [12] 1939 	mov	a,#___str_3
      003324 C0 E0            [24] 1940 	push	acc
      003326 74 70            [12] 1941 	mov	a,#(___str_3 >> 8)
      003328 C0 E0            [24] 1942 	push	acc
      00332A 74 80            [12] 1943 	mov	a,#0x80
      00332C C0 E0            [24] 1944 	push	acc
      00332E 12 64 16         [24] 1945 	lcall	_printf
      003331 15 81            [12] 1946 	dec	sp
      003333 15 81            [12] 1947 	dec	sp
      003335 15 81            [12] 1948 	dec	sp
                                   1949 ;	main.c:179: printf("2 --> Buffer Write\n\r");
      003337 74 60            [12] 1950 	mov	a,#___str_4
      003339 C0 E0            [24] 1951 	push	acc
      00333B 74 70            [12] 1952 	mov	a,#(___str_4 >> 8)
      00333D C0 E0            [24] 1953 	push	acc
      00333F 74 80            [12] 1954 	mov	a,#0x80
      003341 C0 E0            [24] 1955 	push	acc
      003343 12 64 16         [24] 1956 	lcall	_printf
      003346 15 81            [12] 1957 	dec	sp
      003348 15 81            [12] 1958 	dec	sp
      00334A 15 81            [12] 1959 	dec	sp
                                   1960 ;	main.c:180: printf("3 --> Buffer Read\n\r");
      00334C 74 75            [12] 1961 	mov	a,#___str_5
      00334E C0 E0            [24] 1962 	push	acc
      003350 74 70            [12] 1963 	mov	a,#(___str_5 >> 8)
      003352 C0 E0            [24] 1964 	push	acc
      003354 74 80            [12] 1965 	mov	a,#0x80
      003356 C0 E0            [24] 1966 	push	acc
      003358 12 64 16         [24] 1967 	lcall	_printf
      00335B 15 81            [12] 1968 	dec	sp
      00335D 15 81            [12] 1969 	dec	sp
      00335F 15 81            [12] 1970 	dec	sp
                                   1971 ;	main.c:181: printf("4 --> MAC Register Read\n\r");
      003361 74 89            [12] 1972 	mov	a,#___str_6
      003363 C0 E0            [24] 1973 	push	acc
      003365 74 70            [12] 1974 	mov	a,#(___str_6 >> 8)
      003367 C0 E0            [24] 1975 	push	acc
      003369 74 80            [12] 1976 	mov	a,#0x80
      00336B C0 E0            [24] 1977 	push	acc
      00336D 12 64 16         [24] 1978 	lcall	_printf
      003370 15 81            [12] 1979 	dec	sp
      003372 15 81            [12] 1980 	dec	sp
      003374 15 81            [12] 1981 	dec	sp
                                   1982 ;	main.c:182: printf("5 --> PHY SPI Write\n\r");
      003376 74 A3            [12] 1983 	mov	a,#___str_7
      003378 C0 E0            [24] 1984 	push	acc
      00337A 74 70            [12] 1985 	mov	a,#(___str_7 >> 8)
      00337C C0 E0            [24] 1986 	push	acc
      00337E 74 80            [12] 1987 	mov	a,#0x80
      003380 C0 E0            [24] 1988 	push	acc
      003382 12 64 16         [24] 1989 	lcall	_printf
      003385 15 81            [12] 1990 	dec	sp
      003387 15 81            [12] 1991 	dec	sp
      003389 15 81            [12] 1992 	dec	sp
                                   1993 ;	main.c:183: printf("6 --> PHY SPI Read\n\r");
      00338B 74 B9            [12] 1994 	mov	a,#___str_8
      00338D C0 E0            [24] 1995 	push	acc
      00338F 74 70            [12] 1996 	mov	a,#(___str_8 >> 8)
      003391 C0 E0            [24] 1997 	push	acc
      003393 74 80            [12] 1998 	mov	a,#0x80
      003395 C0 E0            [24] 1999 	push	acc
      003397 12 64 16         [24] 2000 	lcall	_printf
      00339A 15 81            [12] 2001 	dec	sp
      00339C 15 81            [12] 2002 	dec	sp
      00339E 15 81            [12] 2003 	dec	sp
                                   2004 ;	main.c:184: printf("7 --> ENC Reset\n\r");
      0033A0 74 CE            [12] 2005 	mov	a,#___str_9
      0033A2 C0 E0            [24] 2006 	push	acc
      0033A4 74 70            [12] 2007 	mov	a,#(___str_9 >> 8)
      0033A6 C0 E0            [24] 2008 	push	acc
      0033A8 74 80            [12] 2009 	mov	a,#0x80
      0033AA C0 E0            [24] 2010 	push	acc
      0033AC 12 64 16         [24] 2011 	lcall	_printf
      0033AF 15 81            [12] 2012 	dec	sp
      0033B1 15 81            [12] 2013 	dec	sp
      0033B3 15 81            [12] 2014 	dec	sp
                                   2015 ;	main.c:185: printf("8 --> Read ETH Register\n\r");
      0033B5 74 E0            [12] 2016 	mov	a,#___str_10
      0033B7 C0 E0            [24] 2017 	push	acc
      0033B9 74 70            [12] 2018 	mov	a,#(___str_10 >> 8)
      0033BB C0 E0            [24] 2019 	push	acc
      0033BD 74 80            [12] 2020 	mov	a,#0x80
      0033BF C0 E0            [24] 2021 	push	acc
      0033C1 12 64 16         [24] 2022 	lcall	_printf
      0033C4 15 81            [12] 2023 	dec	sp
      0033C6 15 81            [12] 2024 	dec	sp
      0033C8 15 81            [12] 2025 	dec	sp
                                   2026 ;	main.c:186: break;
      0033CA 02 2D E8         [24] 2027 	ljmp	00146$
                                   2028 ;	main.c:188: case 'A':{
      0033CD                       2029 00111$:
                                   2030 ;	main.c:189: send_arp_request();
      0033CD 12 22 42         [24] 2031 	lcall	_send_arp_request
                                   2032 ;	main.c:190: while(1)
      0033D0                       2033 00131$:
                                   2034 ;	main.c:192: if(ENC_pkt_count() > 0)
      0033D0 12 2A A2         [24] 2035 	lcall	_ENC_pkt_count
      0033D3 E5 82            [12] 2036 	mov	a, dpl
      0033D5 60 F9            [24] 2037 	jz	00131$
                                   2038 ;	main.c:199: if (gNextPacketPtr == 0)
      0033D7 90 03 7B         [24] 2039 	mov	dptr,#_main_gNextPacketPtr_60001_172
      0033DA E0               [24] 2040 	movx	a,@dptr
      0033DB FE               [12] 2041 	mov	r6,a
      0033DC A3               [24] 2042 	inc	dptr
      0033DD E0               [24] 2043 	movx	a,@dptr
      0033DE FF               [12] 2044 	mov	r7,a
      0033DF 90 03 7B         [24] 2045 	mov	dptr,#_main_gNextPacketPtr_60001_172
      0033E2 E0               [24] 2046 	movx	a,@dptr
      0033E3 F5 F0            [12] 2047 	mov	b,a
      0033E5 A3               [24] 2048 	inc	dptr
      0033E6 E0               [24] 2049 	movx	a,@dptr
      0033E7 45 F0            [12] 2050 	orl	a,b
      0033E9 70 08            [24] 2051 	jnz	00113$
                                   2052 ;	main.c:201: update_ERXRDPT(RX_BUFFER_END);
      0033EB 90 0B FF         [24] 2053 	mov	dptr,#0x0bff
      0033EE 12 2A AE         [24] 2054 	lcall	_update_ERXRDPT
      0033F1 80 0C            [24] 2055 	sjmp	00114$
      0033F3                       2056 00113$:
                                   2057 ;	main.c:205: update_ERXRDPT(gNextPacketPtr - 1);
      0033F3 1E               [12] 2058 	dec	r6
      0033F4 BE FF 01         [24] 2059 	cjne	r6,#0xff,00364$
      0033F7 1F               [12] 2060 	dec	r7
      0033F8                       2061 00364$:
      0033F8 8E 82            [24] 2062 	mov	dpl, r6
      0033FA 8F 83            [24] 2063 	mov	dph, r7
      0033FC 12 2A AE         [24] 2064 	lcall	_update_ERXRDPT
      0033FF                       2065 00114$:
                                   2066 ;	main.c:207: uint8_t *packet_data = (uint8_t *)malloc(6);
      0033FF 90 00 06         [24] 2067 	mov	dptr,#0x0006
      003402 12 61 60         [24] 2068 	lcall	_malloc
      003405 AE 82            [24] 2069 	mov	r6, dpl
      003407 AD 83            [24] 2070 	mov	r5,dph
      003409 7F 00            [12] 2071 	mov	r7,#0x00
                                   2072 ;	main.c:208: spi_buffer_read(6, gNextPacketPtr, packet_data);
      00340B 90 03 7B         [24] 2073 	mov	dptr,#_main_gNextPacketPtr_60001_172
      00340E E0               [24] 2074 	movx	a,@dptr
      00340F FB               [12] 2075 	mov	r3,a
      003410 A3               [24] 2076 	inc	dptr
      003411 E0               [24] 2077 	movx	a,@dptr
      003412 FC               [12] 2078 	mov	r4,a
      003413 90 03 95         [24] 2079 	mov	dptr,#_spi_buffer_read_PARM_2
      003416 EB               [12] 2080 	mov	a,r3
      003417 F0               [24] 2081 	movx	@dptr,a
      003418 EC               [12] 2082 	mov	a,r4
      003419 A3               [24] 2083 	inc	dptr
      00341A F0               [24] 2084 	movx	@dptr,a
      00341B 90 03 97         [24] 2085 	mov	dptr,#_spi_buffer_read_PARM_3
      00341E EE               [12] 2086 	mov	a,r6
      00341F F0               [24] 2087 	movx	@dptr,a
      003420 ED               [12] 2088 	mov	a,r5
      003421 A3               [24] 2089 	inc	dptr
      003422 F0               [24] 2090 	movx	@dptr,a
      003423 EF               [12] 2091 	mov	a,r7
      003424 A3               [24] 2092 	inc	dptr
      003425 F0               [24] 2093 	movx	@dptr,a
      003426 90 00 06         [24] 2094 	mov	dptr,#0x0006
      003429 C0 07            [24] 2095 	push	ar7
      00342B C0 06            [24] 2096 	push	ar6
      00342D C0 05            [24] 2097 	push	ar5
      00342F 12 3C 95         [24] 2098 	lcall	_spi_buffer_read
      003432 D0 05            [24] 2099 	pop	ar5
      003434 D0 06            [24] 2100 	pop	ar6
      003436 D0 07            [24] 2101 	pop	ar7
                                   2102 ;	main.c:212: nextPacket = (uint16_t)(packet_data[1] << 8 | packet_data[0]); // Next Packet (MSB, LSB)
      003438 74 01            [12] 2103 	mov	a,#0x01
      00343A 2E               [12] 2104 	add	a, r6
      00343B FA               [12] 2105 	mov	r2,a
      00343C E4               [12] 2106 	clr	a
      00343D 3D               [12] 2107 	addc	a, r5
      00343E FB               [12] 2108 	mov	r3,a
      00343F 8F 04            [24] 2109 	mov	ar4,r7
      003441 8A 82            [24] 2110 	mov	dpl,r2
      003443 8B 83            [24] 2111 	mov	dph,r3
      003445 8C F0            [24] 2112 	mov	b,r4
      003447 12 6E 38         [24] 2113 	lcall	__gptrget
      00344A FC               [12] 2114 	mov	r4,a
      00344B 7A 00            [12] 2115 	mov	r2,#0x00
      00344D 8E 82            [24] 2116 	mov	dpl,r6
      00344F 8D 83            [24] 2117 	mov	dph,r5
      003451 8F F0            [24] 2118 	mov	b,r7
      003453 12 6E 38         [24] 2119 	lcall	__gptrget
      003456 7B 00            [12] 2120 	mov	r3,#0x00
      003458 42 02            [12] 2121 	orl	ar2,a
      00345A EB               [12] 2122 	mov	a,r3
      00345B 42 04            [12] 2123 	orl	ar4,a
      00345D 8A 2A            [24] 2124 	mov	_main_sloc4_1_0,r2
      00345F 8C 2B            [24] 2125 	mov	(_main_sloc4_1_0 + 1),r4
                                   2126 ;	main.c:213: byteCount = (uint16_t)(packet_data[3] << 8 | packet_data[2]);  // Byte Count (MSB, LSB)
      003461 74 03            [12] 2127 	mov	a,#0x03
      003463 2E               [12] 2128 	add	a, r6
      003464 F8               [12] 2129 	mov	r0,a
      003465 E4               [12] 2130 	clr	a
      003466 3D               [12] 2131 	addc	a, r5
      003467 F9               [12] 2132 	mov	r1,a
      003468 8F 03            [24] 2133 	mov	ar3,r7
      00346A 88 82            [24] 2134 	mov	dpl,r0
      00346C 89 83            [24] 2135 	mov	dph,r1
      00346E 8B F0            [24] 2136 	mov	b,r3
      003470 12 6E 38         [24] 2137 	lcall	__gptrget
      003473 F8               [12] 2138 	mov	r0,a
      003474 7B 00            [12] 2139 	mov	r3,#0x00
      003476 88 23            [24] 2140 	mov	(_main_sloc0_1_0 + 1),r0
      003478 8B 22            [24] 2141 	mov	_main_sloc0_1_0,r3
      00347A 74 02            [12] 2142 	mov	a,#0x02
      00347C 2E               [12] 2143 	add	a, r6
      00347D F8               [12] 2144 	mov	r0,a
      00347E E4               [12] 2145 	clr	a
      00347F 3D               [12] 2146 	addc	a, r5
      003480 F9               [12] 2147 	mov	r1,a
      003481 8F 03            [24] 2148 	mov	ar3,r7
      003483 88 82            [24] 2149 	mov	dpl,r0
      003485 89 83            [24] 2150 	mov	dph,r1
      003487 8B F0            [24] 2151 	mov	b,r3
      003489 12 6E 38         [24] 2152 	lcall	__gptrget
      00348C F8               [12] 2153 	mov	r0,a
      00348D 7B 00            [12] 2154 	mov	r3,#0x00
      00348F E5 23            [12] 2155 	mov	a,(_main_sloc0_1_0 + 1)
      003491 42 03            [12] 2156 	orl	ar3,a
      003493 88 22            [24] 2157 	mov	_main_sloc0_1_0,r0
      003495 8B 23            [24] 2158 	mov	(_main_sloc0_1_0 + 1),r3
                                   2159 ;	main.c:214: status = (uint16_t)(packet_data[5] << 8 | packet_data[4]);     // Status (MSB, LSB)
      003497 74 05            [12] 2160 	mov	a,#0x05
      003499 2E               [12] 2161 	add	a, r6
      00349A F8               [12] 2162 	mov	r0,a
      00349B E4               [12] 2163 	clr	a
      00349C 3D               [12] 2164 	addc	a, r5
      00349D F9               [12] 2165 	mov	r1,a
      00349E 8F 03            [24] 2166 	mov	ar3,r7
      0034A0 88 82            [24] 2167 	mov	dpl,r0
      0034A2 89 83            [24] 2168 	mov	dph,r1
      0034A4 8B F0            [24] 2169 	mov	b,r3
      0034A6 12 6E 38         [24] 2170 	lcall	__gptrget
      0034A9 F8               [12] 2171 	mov	r0,a
      0034AA 7B 00            [12] 2172 	mov	r3,#0x00
      0034AC 88 25            [24] 2173 	mov	(_main_sloc1_1_0 + 1),r0
      0034AE 8B 24            [24] 2174 	mov	_main_sloc1_1_0,r3
      0034B0 74 04            [12] 2175 	mov	a,#0x04
      0034B2 2E               [12] 2176 	add	a, r6
      0034B3 F8               [12] 2177 	mov	r0,a
      0034B4 E4               [12] 2178 	clr	a
      0034B5 3D               [12] 2179 	addc	a, r5
      0034B6 F9               [12] 2180 	mov	r1,a
      0034B7 8F 03            [24] 2181 	mov	ar3,r7
      0034B9 88 82            [24] 2182 	mov	dpl,r0
      0034BB 89 83            [24] 2183 	mov	dph,r1
      0034BD 8B F0            [24] 2184 	mov	b,r3
      0034BF 12 6E 38         [24] 2185 	lcall	__gptrget
      0034C2 F8               [12] 2186 	mov	r0,a
      0034C3 7B 00            [12] 2187 	mov	r3,#0x00
      0034C5 E5 25            [12] 2188 	mov	a,(_main_sloc1_1_0 + 1)
      0034C7 42 03            [12] 2189 	orl	ar3,a
      0034C9 88 24            [24] 2190 	mov	_main_sloc1_1_0,r0
      0034CB 8B 25            [24] 2191 	mov	(_main_sloc1_1_0 + 1),r3
                                   2192 ;	main.c:217: len = byteCount - 4;
      0034CD A9 22            [24] 2193 	mov	r1,_main_sloc0_1_0
      0034CF AB 23            [24] 2194 	mov	r3,(_main_sloc0_1_0 + 1)
      0034D1 E9               [12] 2195 	mov	a,r1
      0034D2 24 FC            [12] 2196 	add	a,#0xfc
      0034D4 F9               [12] 2197 	mov	r1,a
      0034D5 EB               [12] 2198 	mov	a,r3
      0034D6 34 FF            [12] 2199 	addc	a,#0xff
      0034D8 FB               [12] 2200 	mov	r3,a
      0034D9 89 28            [24] 2201 	mov	_main_sloc3_1_0,r1
      0034DB 8B 29            [24] 2202 	mov	(_main_sloc3_1_0 + 1),r3
                                   2203 ;	main.c:219: uint8_t *packet_data_actual = (uint8_t *)malloc(len);
      0034DD 85 28 26         [24] 2204 	mov	_main_sloc2_1_0,_main_sloc3_1_0
      0034E0 85 29 27         [24] 2205 	mov	(_main_sloc2_1_0 + 1),(_main_sloc3_1_0 + 1)
      0034E3 85 26 82         [24] 2206 	mov	dpl, _main_sloc2_1_0
      0034E6 85 27 83         [24] 2207 	mov	dph, (_main_sloc2_1_0 + 1)
      0034E9 C0 07            [24] 2208 	push	ar7
      0034EB C0 06            [24] 2209 	push	ar6
      0034ED C0 05            [24] 2210 	push	ar5
      0034EF 12 61 60         [24] 2211 	lcall	_malloc
      0034F2 A8 82            [24] 2212 	mov	r0, dpl
      0034F4 AB 83            [24] 2213 	mov	r3, dph
      0034F6 D0 05            [24] 2214 	pop	ar5
      0034F8 D0 06            [24] 2215 	pop	ar6
      0034FA D0 07            [24] 2216 	pop	ar7
      0034FC 88 2C            [24] 2217 	mov	_main_sloc5_1_0,r0
      0034FE 8B 2D            [24] 2218 	mov	(_main_sloc5_1_0 + 1),r3
      003500 75 2E 00         [24] 2219 	mov	(_main_sloc5_1_0 + 2),#0x00
                                   2220 ;	main.c:220: spi_buffer_read(len, gNextPacketPtr + 6, packet_data_actual);
      003503 90 03 7B         [24] 2221 	mov	dptr,#_main_gNextPacketPtr_60001_172
      003506 E0               [24] 2222 	movx	a,@dptr
      003507 FA               [12] 2223 	mov	r2,a
      003508 A3               [24] 2224 	inc	dptr
      003509 E0               [24] 2225 	movx	a,@dptr
      00350A FC               [12] 2226 	mov	r4,a
      00350B 74 06            [12] 2227 	mov	a,#0x06
      00350D 2A               [12] 2228 	add	a, r2
      00350E FA               [12] 2229 	mov	r2,a
      00350F E4               [12] 2230 	clr	a
      003510 3C               [12] 2231 	addc	a, r4
      003511 FC               [12] 2232 	mov	r4,a
      003512 90 03 95         [24] 2233 	mov	dptr,#_spi_buffer_read_PARM_2
      003515 EA               [12] 2234 	mov	a,r2
      003516 F0               [24] 2235 	movx	@dptr,a
      003517 EC               [12] 2236 	mov	a,r4
      003518 A3               [24] 2237 	inc	dptr
      003519 F0               [24] 2238 	movx	@dptr,a
      00351A 90 03 97         [24] 2239 	mov	dptr,#_spi_buffer_read_PARM_3
      00351D E5 2C            [12] 2240 	mov	a,_main_sloc5_1_0
      00351F F0               [24] 2241 	movx	@dptr,a
      003520 E5 2D            [12] 2242 	mov	a,(_main_sloc5_1_0 + 1)
      003522 A3               [24] 2243 	inc	dptr
      003523 F0               [24] 2244 	movx	@dptr,a
      003524 E5 2E            [12] 2245 	mov	a,(_main_sloc5_1_0 + 2)
      003526 A3               [24] 2246 	inc	dptr
      003527 F0               [24] 2247 	movx	@dptr,a
      003528 85 28 82         [24] 2248 	mov	dpl, _main_sloc3_1_0
      00352B 85 29 83         [24] 2249 	mov	dph, (_main_sloc3_1_0 + 1)
      00352E C0 07            [24] 2250 	push	ar7
      003530 C0 06            [24] 2251 	push	ar6
      003532 C0 05            [24] 2252 	push	ar5
      003534 12 3C 95         [24] 2253 	lcall	_spi_buffer_read
                                   2254 ;	main.c:222: int is_tcp_for_target = 0;
      003537 90 03 7D         [24] 2255 	mov	dptr,#_main_is_tcp_for_target_60004_177
      00353A E4               [12] 2256 	clr	a
      00353B F0               [24] 2257 	movx	@dptr,a
      00353C A3               [24] 2258 	inc	dptr
      00353D F0               [24] 2259 	movx	@dptr,a
                                   2260 ;	main.c:225: if (memcmp(packet_data_actual, device_mac, 6) == 0) {
      00353E AA 2C            [24] 2261 	mov	r2,_main_sloc5_1_0
      003540 AB 2D            [24] 2262 	mov	r3,(_main_sloc5_1_0 + 1)
      003542 FC               [12] 2263 	mov	r4,a
      003543 90 10 54         [24] 2264 	mov	dptr,#_memcmp_PARM_2
      003546 74 67            [12] 2265 	mov	a,#_main_device_mac_10000_141
      003548 F0               [24] 2266 	movx	@dptr,a
      003549 74 01            [12] 2267 	mov	a,#(_main_device_mac_10000_141 >> 8)
      00354B A3               [24] 2268 	inc	dptr
      00354C F0               [24] 2269 	movx	@dptr,a
      00354D E4               [12] 2270 	clr	a
      00354E A3               [24] 2271 	inc	dptr
      00354F F0               [24] 2272 	movx	@dptr,a
      003550 90 10 57         [24] 2273 	mov	dptr,#_memcmp_PARM_3
      003553 74 06            [12] 2274 	mov	a,#0x06
      003555 F0               [24] 2275 	movx	@dptr,a
      003556 E4               [12] 2276 	clr	a
      003557 A3               [24] 2277 	inc	dptr
      003558 F0               [24] 2278 	movx	@dptr,a
      003559 8A 82            [24] 2279 	mov	dpl, r2
      00355B 8B 83            [24] 2280 	mov	dph, r3
      00355D 8C F0            [24] 2281 	mov	b, r4
      00355F 12 62 E9         [24] 2282 	lcall	_memcmp
      003562 E5 82            [12] 2283 	mov	a, dpl
      003564 85 83 F0         [24] 2284 	mov	b, dph
      003567 D0 05            [24] 2285 	pop	ar5
      003569 D0 06            [24] 2286 	pop	ar6
      00356B D0 07            [24] 2287 	pop	ar7
      00356D 45 F0            [12] 2288 	orl	a,b
      00356F 70 70            [24] 2289 	jnz	00121$
                                   2290 ;	main.c:228: if (packet_data_actual[12] == 0x08 && packet_data_actual[13] == 0x00) {
      003571 74 0C            [12] 2291 	mov	a,#0x0c
      003573 25 2C            [12] 2292 	add	a, _main_sloc5_1_0
      003575 FA               [12] 2293 	mov	r2,a
      003576 E4               [12] 2294 	clr	a
      003577 35 2D            [12] 2295 	addc	a, (_main_sloc5_1_0 + 1)
      003579 FB               [12] 2296 	mov	r3,a
      00357A AC 2E            [24] 2297 	mov	r4,(_main_sloc5_1_0 + 2)
      00357C 8A 82            [24] 2298 	mov	dpl,r2
      00357E 8B 83            [24] 2299 	mov	dph,r3
      003580 8C F0            [24] 2300 	mov	b,r4
      003582 12 6E 38         [24] 2301 	lcall	__gptrget
      003585 FA               [12] 2302 	mov	r2,a
      003586 BA 08 58         [24] 2303 	cjne	r2,#0x08,00121$
      003589 74 0D            [12] 2304 	mov	a,#0x0d
      00358B 25 2C            [12] 2305 	add	a, _main_sloc5_1_0
      00358D FA               [12] 2306 	mov	r2,a
      00358E E4               [12] 2307 	clr	a
      00358F 35 2D            [12] 2308 	addc	a, (_main_sloc5_1_0 + 1)
      003591 FB               [12] 2309 	mov	r3,a
      003592 AC 2E            [24] 2310 	mov	r4,(_main_sloc5_1_0 + 2)
      003594 8A 82            [24] 2311 	mov	dpl,r2
      003596 8B 83            [24] 2312 	mov	dph,r3
      003598 8C F0            [24] 2313 	mov	b,r4
      00359A 12 6E 38         [24] 2314 	lcall	__gptrget
      00359D 70 42            [24] 2315 	jnz	00121$
                                   2316 ;	main.c:229: printf("Valid ETHER packet.....................\n\r");
      00359F C0 07            [24] 2317 	push	ar7
      0035A1 C0 06            [24] 2318 	push	ar6
      0035A3 C0 05            [24] 2319 	push	ar5
      0035A5 74 40            [12] 2320 	mov	a,#___str_38
      0035A7 C0 E0            [24] 2321 	push	acc
      0035A9 74 74            [12] 2322 	mov	a,#(___str_38 >> 8)
      0035AB C0 E0            [24] 2323 	push	acc
      0035AD 74 80            [12] 2324 	mov	a,#0x80
      0035AF C0 E0            [24] 2325 	push	acc
      0035B1 12 64 16         [24] 2326 	lcall	_printf
      0035B4 15 81            [12] 2327 	dec	sp
      0035B6 15 81            [12] 2328 	dec	sp
      0035B8 15 81            [12] 2329 	dec	sp
      0035BA D0 05            [24] 2330 	pop	ar5
      0035BC D0 06            [24] 2331 	pop	ar6
      0035BE D0 07            [24] 2332 	pop	ar7
                                   2333 ;	main.c:231: if (packet_data_actual[23] == 0x06) {
      0035C0 74 17            [12] 2334 	mov	a,#0x17
      0035C2 25 2C            [12] 2335 	add	a, _main_sloc5_1_0
      0035C4 FA               [12] 2336 	mov	r2,a
      0035C5 E4               [12] 2337 	clr	a
      0035C6 35 2D            [12] 2338 	addc	a, (_main_sloc5_1_0 + 1)
      0035C8 FB               [12] 2339 	mov	r3,a
      0035C9 AC 2E            [24] 2340 	mov	r4,(_main_sloc5_1_0 + 2)
      0035CB 8A 82            [24] 2341 	mov	dpl,r2
      0035CD 8B 83            [24] 2342 	mov	dph,r3
      0035CF 8C F0            [24] 2343 	mov	b,r4
      0035D1 12 6E 38         [24] 2344 	lcall	__gptrget
      0035D4 FA               [12] 2345 	mov	r2,a
      0035D5 BA 06 09         [24] 2346 	cjne	r2,#0x06,00121$
                                   2347 ;	main.c:232: is_tcp_for_target = 1;
      0035D8 90 03 7D         [24] 2348 	mov	dptr,#_main_is_tcp_for_target_60004_177
      0035DB 74 01            [12] 2349 	mov	a,#0x01
      0035DD F0               [24] 2350 	movx	@dptr,a
      0035DE E4               [12] 2351 	clr	a
      0035DF A3               [24] 2352 	inc	dptr
      0035E0 F0               [24] 2353 	movx	@dptr,a
      0035E1                       2354 00121$:
                                   2355 ;	main.c:236: if (is_tcp_for_target)
      0035E1 90 03 7D         [24] 2356 	mov	dptr,#_main_is_tcp_for_target_60004_177
      0035E4 E0               [24] 2357 	movx	a,@dptr
      0035E5 F5 F0            [12] 2358 	mov	b,a
      0035E7 A3               [24] 2359 	inc	dptr
      0035E8 E0               [24] 2360 	movx	a,@dptr
      0035E9 45 F0            [12] 2361 	orl	a,b
      0035EB 70 03            [24] 2362 	jnz	00371$
      0035ED 02 36 DD         [24] 2363 	ljmp	00126$
      0035F0                       2364 00371$:
                                   2365 ;	main.c:241: uint8_t *response = process_tcp_packet(packet_data_actual, len+4, &response_size);
      0035F0 74 04            [12] 2366 	mov	a,#0x04
      0035F2 25 26            [12] 2367 	add	a, _main_sloc2_1_0
      0035F4 FB               [12] 2368 	mov	r3,a
      0035F5 E4               [12] 2369 	clr	a
      0035F6 35 27            [12] 2370 	addc	a, (_main_sloc2_1_0 + 1)
      0035F8 FC               [12] 2371 	mov	r4,a
      0035F9 90 03 C2         [24] 2372 	mov	dptr,#_process_tcp_packet_PARM_2
      0035FC EB               [12] 2373 	mov	a,r3
      0035FD F0               [24] 2374 	movx	@dptr,a
      0035FE EC               [12] 2375 	mov	a,r4
      0035FF A3               [24] 2376 	inc	dptr
      003600 F0               [24] 2377 	movx	@dptr,a
      003601 90 03 C4         [24] 2378 	mov	dptr,#_process_tcp_packet_PARM_3
      003604 74 7F            [12] 2379 	mov	a,#_main_response_size_70004_181
      003606 F0               [24] 2380 	movx	@dptr,a
      003607 74 03            [12] 2381 	mov	a,#(_main_response_size_70004_181 >> 8)
      003609 A3               [24] 2382 	inc	dptr
      00360A F0               [24] 2383 	movx	@dptr,a
      00360B E4               [12] 2384 	clr	a
      00360C A3               [24] 2385 	inc	dptr
      00360D F0               [24] 2386 	movx	@dptr,a
      00360E 85 2C 82         [24] 2387 	mov	dpl, _main_sloc5_1_0
      003611 85 2D 83         [24] 2388 	mov	dph, (_main_sloc5_1_0 + 1)
      003614 85 2E F0         [24] 2389 	mov	b, (_main_sloc5_1_0 + 2)
      003617 C0 07            [24] 2390 	push	ar7
      003619 C0 06            [24] 2391 	push	ar6
      00361B C0 05            [24] 2392 	push	ar5
      00361D 12 45 72         [24] 2393 	lcall	_process_tcp_packet
      003620 AA 82            [24] 2394 	mov	r2, dpl
      003622 AB 83            [24] 2395 	mov	r3, dph
      003624 AC F0            [24] 2396 	mov	r4, b
      003626 D0 05            [24] 2397 	pop	ar5
      003628 D0 06            [24] 2398 	pop	ar6
      00362A D0 07            [24] 2399 	pop	ar7
                                   2400 ;	main.c:244: if (response != NULL) {
      00362C EA               [12] 2401 	mov	a,r2
      00362D 4B               [12] 2402 	orl	a,r3
      00362E 60 69            [24] 2403 	jz	00123$
                                   2404 ;	main.c:245: printf("\nProcessed response data:\n");
      003630 C0 07            [24] 2405 	push	ar7
      003632 C0 06            [24] 2406 	push	ar6
      003634 C0 05            [24] 2407 	push	ar5
      003636 C0 04            [24] 2408 	push	ar4
      003638 C0 03            [24] 2409 	push	ar3
      00363A C0 02            [24] 2410 	push	ar2
      00363C 74 6A            [12] 2411 	mov	a,#___str_39
      00363E C0 E0            [24] 2412 	push	acc
      003640 74 74            [12] 2413 	mov	a,#(___str_39 >> 8)
      003642 C0 E0            [24] 2414 	push	acc
      003644 74 80            [12] 2415 	mov	a,#0x80
      003646 C0 E0            [24] 2416 	push	acc
      003648 12 64 16         [24] 2417 	lcall	_printf
      00364B 15 81            [12] 2418 	dec	sp
      00364D 15 81            [12] 2419 	dec	sp
      00364F 15 81            [12] 2420 	dec	sp
      003651 D0 02            [24] 2421 	pop	ar2
      003653 D0 03            [24] 2422 	pop	ar3
      003655 D0 04            [24] 2423 	pop	ar4
      003657 D0 05            [24] 2424 	pop	ar5
      003659 D0 06            [24] 2425 	pop	ar6
      00365B D0 07            [24] 2426 	pop	ar7
                                   2427 ;	main.c:247: transmit_tcp_packet(response, response_size);
      00365D 90 03 7F         [24] 2428 	mov	dptr,#_main_response_size_70004_181
      003660 E0               [24] 2429 	movx	a,@dptr
      003661 F8               [12] 2430 	mov	r0,a
      003662 A3               [24] 2431 	inc	dptr
      003663 E0               [24] 2432 	movx	a,@dptr
      003664 F9               [12] 2433 	mov	r1,a
      003665 90 09 B2         [24] 2434 	mov	dptr,#_transmit_tcp_packet_PARM_2
      003668 E8               [12] 2435 	mov	a,r0
      003669 F0               [24] 2436 	movx	@dptr,a
      00366A E9               [12] 2437 	mov	a,r1
      00366B A3               [24] 2438 	inc	dptr
      00366C F0               [24] 2439 	movx	@dptr,a
      00366D 8A 82            [24] 2440 	mov	dpl, r2
      00366F 8B 83            [24] 2441 	mov	dph, r3
      003671 8C F0            [24] 2442 	mov	b, r4
      003673 C0 07            [24] 2443 	push	ar7
      003675 C0 06            [24] 2444 	push	ar6
      003677 C0 05            [24] 2445 	push	ar5
      003679 C0 04            [24] 2446 	push	ar4
      00367B C0 03            [24] 2447 	push	ar3
      00367D C0 02            [24] 2448 	push	ar2
      00367F 12 4C AC         [24] 2449 	lcall	_transmit_tcp_packet
      003682 D0 02            [24] 2450 	pop	ar2
      003684 D0 03            [24] 2451 	pop	ar3
      003686 D0 04            [24] 2452 	pop	ar4
                                   2453 ;	main.c:248: free(response); // Free response memory if allocated dynamically
      003688 8A 82            [24] 2454 	mov	dpl, r2
      00368A 8B 83            [24] 2455 	mov	dph, r3
      00368C 8C F0            [24] 2456 	mov	b, r4
      00368E 12 5C D2         [24] 2457 	lcall	_free
      003691 D0 05            [24] 2458 	pop	ar5
      003693 D0 06            [24] 2459 	pop	ar6
      003695 D0 07            [24] 2460 	pop	ar7
      003697 80 21            [24] 2461 	sjmp	00124$
      003699                       2462 00123$:
                                   2463 ;	main.c:250: printf("\nNo response generated by TCP packet processing.\n");
      003699 C0 07            [24] 2464 	push	ar7
      00369B C0 06            [24] 2465 	push	ar6
      00369D C0 05            [24] 2466 	push	ar5
      00369F 74 85            [12] 2467 	mov	a,#___str_40
      0036A1 C0 E0            [24] 2468 	push	acc
      0036A3 74 74            [12] 2469 	mov	a,#(___str_40 >> 8)
      0036A5 C0 E0            [24] 2470 	push	acc
      0036A7 74 80            [12] 2471 	mov	a,#0x80
      0036A9 C0 E0            [24] 2472 	push	acc
      0036AB 12 64 16         [24] 2473 	lcall	_printf
      0036AE 15 81            [12] 2474 	dec	sp
      0036B0 15 81            [12] 2475 	dec	sp
      0036B2 15 81            [12] 2476 	dec	sp
      0036B4 D0 05            [24] 2477 	pop	ar5
      0036B6 D0 06            [24] 2478 	pop	ar6
      0036B8 D0 07            [24] 2479 	pop	ar7
      0036BA                       2480 00124$:
                                   2481 ;	main.c:253: printf("YESSSS\n");
      0036BA C0 07            [24] 2482 	push	ar7
      0036BC C0 06            [24] 2483 	push	ar6
      0036BE C0 05            [24] 2484 	push	ar5
      0036C0 74 B7            [12] 2485 	mov	a,#___str_41
      0036C2 C0 E0            [24] 2486 	push	acc
      0036C4 74 74            [12] 2487 	mov	a,#(___str_41 >> 8)
      0036C6 C0 E0            [24] 2488 	push	acc
      0036C8 74 80            [12] 2489 	mov	a,#0x80
      0036CA C0 E0            [24] 2490 	push	acc
      0036CC 12 64 16         [24] 2491 	lcall	_printf
      0036CF 15 81            [12] 2492 	dec	sp
      0036D1 15 81            [12] 2493 	dec	sp
      0036D3 15 81            [12] 2494 	dec	sp
      0036D5 D0 05            [24] 2495 	pop	ar5
      0036D7 D0 06            [24] 2496 	pop	ar6
      0036D9 D0 07            [24] 2497 	pop	ar7
      0036DB 80 21            [24] 2498 	sjmp	00127$
      0036DD                       2499 00126$:
                                   2500 ;	main.c:257: printf("NOOOO\n");
      0036DD C0 07            [24] 2501 	push	ar7
      0036DF C0 06            [24] 2502 	push	ar6
      0036E1 C0 05            [24] 2503 	push	ar5
      0036E3 74 BF            [12] 2504 	mov	a,#___str_42
      0036E5 C0 E0            [24] 2505 	push	acc
      0036E7 74 74            [12] 2506 	mov	a,#(___str_42 >> 8)
      0036E9 C0 E0            [24] 2507 	push	acc
      0036EB 74 80            [12] 2508 	mov	a,#0x80
      0036ED C0 E0            [24] 2509 	push	acc
      0036EF 12 64 16         [24] 2510 	lcall	_printf
      0036F2 15 81            [12] 2511 	dec	sp
      0036F4 15 81            [12] 2512 	dec	sp
      0036F6 15 81            [12] 2513 	dec	sp
      0036F8 D0 05            [24] 2514 	pop	ar5
      0036FA D0 06            [24] 2515 	pop	ar6
      0036FC D0 07            [24] 2516 	pop	ar7
      0036FE                       2517 00127$:
                                   2518 ;	main.c:261: gNextPacketPtr = nextPacket;
      0036FE 90 03 7B         [24] 2519 	mov	dptr,#_main_gNextPacketPtr_60001_172
      003701 E5 2A            [12] 2520 	mov	a,_main_sloc4_1_0
      003703 F0               [24] 2521 	movx	@dptr,a
      003704 E5 2B            [12] 2522 	mov	a,(_main_sloc4_1_0 + 1)
      003706 A3               [24] 2523 	inc	dptr
      003707 F0               [24] 2524 	movx	@dptr,a
                                   2525 ;	main.c:266: printf("nextPacket: 0x%04X\n", nextPacket);
      003708 C0 07            [24] 2526 	push	ar7
      00370A C0 06            [24] 2527 	push	ar6
      00370C C0 05            [24] 2528 	push	ar5
      00370E C0 2A            [24] 2529 	push	_main_sloc4_1_0
      003710 C0 2B            [24] 2530 	push	(_main_sloc4_1_0 + 1)
      003712 74 C6            [12] 2531 	mov	a,#___str_43
      003714 C0 E0            [24] 2532 	push	acc
      003716 74 74            [12] 2533 	mov	a,#(___str_43 >> 8)
      003718 C0 E0            [24] 2534 	push	acc
      00371A 74 80            [12] 2535 	mov	a,#0x80
      00371C C0 E0            [24] 2536 	push	acc
      00371E 12 64 16         [24] 2537 	lcall	_printf
      003721 E5 81            [12] 2538 	mov	a,sp
      003723 24 FB            [12] 2539 	add	a,#0xfb
      003725 F5 81            [12] 2540 	mov	sp,a
                                   2541 ;	main.c:267: printf("byteCount: %d\n", byteCount);
      003727 C0 22            [24] 2542 	push	_main_sloc0_1_0
      003729 C0 23            [24] 2543 	push	(_main_sloc0_1_0 + 1)
      00372B 74 DA            [12] 2544 	mov	a,#___str_44
      00372D C0 E0            [24] 2545 	push	acc
      00372F 74 74            [12] 2546 	mov	a,#(___str_44 >> 8)
      003731 C0 E0            [24] 2547 	push	acc
      003733 74 80            [12] 2548 	mov	a,#0x80
      003735 C0 E0            [24] 2549 	push	acc
      003737 12 64 16         [24] 2550 	lcall	_printf
      00373A E5 81            [12] 2551 	mov	a,sp
      00373C 24 FB            [12] 2552 	add	a,#0xfb
      00373E F5 81            [12] 2553 	mov	sp,a
                                   2554 ;	main.c:268: printf("status: 0x%02X\n", status);
      003740 C0 24            [24] 2555 	push	_main_sloc1_1_0
      003742 C0 25            [24] 2556 	push	(_main_sloc1_1_0 + 1)
      003744 74 E9            [12] 2557 	mov	a,#___str_45
      003746 C0 E0            [24] 2558 	push	acc
      003748 74 74            [12] 2559 	mov	a,#(___str_45 >> 8)
      00374A C0 E0            [24] 2560 	push	acc
      00374C 74 80            [12] 2561 	mov	a,#0x80
      00374E C0 E0            [24] 2562 	push	acc
      003750 12 64 16         [24] 2563 	lcall	_printf
      003753 E5 81            [12] 2564 	mov	a,sp
      003755 24 FB            [12] 2565 	add	a,#0xfb
      003757 F5 81            [12] 2566 	mov	sp,a
      003759 D0 05            [24] 2567 	pop	ar5
      00375B D0 06            [24] 2568 	pop	ar6
      00375D D0 07            [24] 2569 	pop	ar7
                                   2570 ;	main.c:271: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
      00375F 90 03 8D         [24] 2571 	mov	dptr,#_mac_spi_read_PARM_2
      003762 E4               [12] 2572 	clr	a
      003763 F0               [24] 2573 	movx	@dptr,a
      003764 75 82 1E         [24] 2574 	mov	dpl, #0x1e
      003767 C0 07            [24] 2575 	push	ar7
      003769 C0 06            [24] 2576 	push	ar6
      00376B C0 05            [24] 2577 	push	ar5
      00376D 12 3A 96         [24] 2578 	lcall	_mac_spi_read
      003770 E5 82            [12] 2579 	mov	a, dpl
      003772 D0 05            [24] 2580 	pop	ar5
      003774 D0 06            [24] 2581 	pop	ar6
      003776 D0 07            [24] 2582 	pop	ar7
                                   2583 ;	main.c:272: spi_control_write(2, 0x1E, (read_econ2 | (1 << 6))); //mac enable for reception
      003778 44 40            [12] 2584 	orl	a,#0x40
      00377A FC               [12] 2585 	mov	r4,a
      00377B 90 03 84         [24] 2586 	mov	dptr,#_spi_control_write_PARM_2
      00377E 74 1E            [12] 2587 	mov	a,#0x1e
      003780 F0               [24] 2588 	movx	@dptr,a
      003781 90 03 85         [24] 2589 	mov	dptr,#_spi_control_write_PARM_3
      003784 EC               [12] 2590 	mov	a,r4
      003785 F0               [24] 2591 	movx	@dptr,a
      003786 75 82 02         [24] 2592 	mov	dpl, #0x02
      003789 C0 07            [24] 2593 	push	ar7
      00378B C0 06            [24] 2594 	push	ar6
      00378D C0 05            [24] 2595 	push	ar5
      00378F 12 39 7A         [24] 2596 	lcall	_spi_control_write
      003792 D0 05            [24] 2597 	pop	ar5
      003794 D0 06            [24] 2598 	pop	ar6
      003796 D0 07            [24] 2599 	pop	ar7
                                   2600 ;	main.c:273: free(packet_data);
      003798 7F 00            [12] 2601 	mov	r7,#0x00
      00379A 8E 82            [24] 2602 	mov	dpl, r6
      00379C 8D 83            [24] 2603 	mov	dph, r5
      00379E 8F F0            [24] 2604 	mov	b, r7
      0037A0 12 5C D2         [24] 2605 	lcall	_free
      0037A3 02 33 D0         [24] 2606 	ljmp	00131$
                                   2607 ;	main.c:284: case 'C':{
      0037A6                       2608 00134$:
                                   2609 ;	main.c:285: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
      0037A6 74 F9            [12] 2610 	mov	a,#___str_46
      0037A8 C0 E0            [24] 2611 	push	acc
      0037AA 74 74            [12] 2612 	mov	a,#(___str_46 >> 8)
      0037AC C0 E0            [24] 2613 	push	acc
      0037AE 74 80            [12] 2614 	mov	a,#0x80
      0037B0 C0 E0            [24] 2615 	push	acc
      0037B2 12 64 16         [24] 2616 	lcall	_printf
      0037B5 15 81            [12] 2617 	dec	sp
      0037B7 15 81            [12] 2618 	dec	sp
      0037B9 15 81            [12] 2619 	dec	sp
                                   2620 ;	main.c:286: ENC_RESET = 0;
                                   2621 ;	assignBit
      0037BB C2 90            [12] 2622 	clr	_P1_0
                                   2623 ;	main.c:287: for(int i = 0; i < 6000; i++);
      0037BD 7E 00            [12] 2624 	mov	r6,#0x00
      0037BF 7F 00            [12] 2625 	mov	r7,#0x00
      0037C1                       2626 00152$:
      0037C1 C3               [12] 2627 	clr	c
      0037C2 EE               [12] 2628 	mov	a,r6
      0037C3 94 70            [12] 2629 	subb	a,#0x70
      0037C5 EF               [12] 2630 	mov	a,r7
      0037C6 64 80            [12] 2631 	xrl	a,#0x80
      0037C8 94 97            [12] 2632 	subb	a,#0x97
      0037CA 50 07            [24] 2633 	jnc	00135$
      0037CC 0E               [12] 2634 	inc	r6
      0037CD BE 00 F1         [24] 2635 	cjne	r6,#0x00,00152$
      0037D0 0F               [12] 2636 	inc	r7
      0037D1 80 EE            [24] 2637 	sjmp	00152$
      0037D3                       2638 00135$:
                                   2639 ;	main.c:288: ENC_RESET = 1;
                                   2640 ;	assignBit
      0037D3 D2 90            [12] 2641 	setb	_P1_0
                                   2642 ;	main.c:289: break;
      0037D5 02 2D E8         [24] 2643 	ljmp	00146$
                                   2644 ;	main.c:291: case 'D':
      0037D8                       2645 00136$:
                                   2646 ;	main.c:295: process_packet_from_buffer(0x0846);
      0037D8 90 08 46         [24] 2647 	mov	dptr,#0x0846
      0037DB 12 49 FC         [24] 2648 	lcall	_process_packet_from_buffer
                                   2649 ;	main.c:296: break;
      0037DE 02 2D E8         [24] 2650 	ljmp	00146$
                                   2651 ;	main.c:298: case 'E':{
      0037E1                       2652 00137$:
                                   2653 ;	main.c:299: IT0 = 1;  // Edge-triggered mode for INT0
                                   2654 ;	assignBit
      0037E1 D2 88            [12] 2655 	setb	_IT0
                                   2656 ;	main.c:300: EX0 = 1;  // Enable INT0
                                   2657 ;	assignBit
      0037E3 D2 A8            [12] 2658 	setb	_EX0
                                   2659 ;	main.c:301: EA = 1;   // Enable global interrupts
                                   2660 ;	assignBit
      0037E5 D2 AF            [12] 2661 	setb	_EA
                                   2662 ;	main.c:302: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
      0037E7 90 03 8D         [24] 2663 	mov	dptr,#_mac_spi_read_PARM_2
      0037EA E4               [12] 2664 	clr	a
      0037EB F0               [24] 2665 	movx	@dptr,a
      0037EC 75 82 1E         [24] 2666 	mov	dpl, #0x1e
      0037EF 12 3A 96         [24] 2667 	lcall	_mac_spi_read
                                   2668 ;	main.c:304: printf("Enabling TXPKTIE\n\r");
      0037F2 74 2C            [12] 2669 	mov	a,#___str_47
      0037F4 C0 E0            [24] 2670 	push	acc
      0037F6 74 75            [12] 2671 	mov	a,#(___str_47 >> 8)
      0037F8 C0 E0            [24] 2672 	push	acc
      0037FA 74 80            [12] 2673 	mov	a,#0x80
      0037FC C0 E0            [24] 2674 	push	acc
      0037FE 12 64 16         [24] 2675 	lcall	_printf
      003801 15 81            [12] 2676 	dec	sp
      003803 15 81            [12] 2677 	dec	sp
      003805 15 81            [12] 2678 	dec	sp
                                   2679 ;	main.c:305: spi_control_write(0, 0x1B, 0xC0);
      003807 90 03 84         [24] 2680 	mov	dptr,#_spi_control_write_PARM_2
      00380A 74 1B            [12] 2681 	mov	a,#0x1b
      00380C F0               [24] 2682 	movx	@dptr,a
      00380D 90 03 85         [24] 2683 	mov	dptr,#_spi_control_write_PARM_3
      003810 74 C0            [12] 2684 	mov	a,#0xc0
      003812 F0               [24] 2685 	movx	@dptr,a
      003813 75 82 00         [24] 2686 	mov	dpl, #0x00
      003816 12 39 7A         [24] 2687 	lcall	_spi_control_write
                                   2688 ;	main.c:306: break;
      003819 02 2D E8         [24] 2689 	ljmp	00146$
                                   2690 ;	main.c:308: case 'F':{
      00381C                       2691 00138$:
                                   2692 ;	main.c:309: printf("Disabling TXPKTIE\n\r");
      00381C 74 3F            [12] 2693 	mov	a,#___str_48
      00381E C0 E0            [24] 2694 	push	acc
      003820 74 75            [12] 2695 	mov	a,#(___str_48 >> 8)
      003822 C0 E0            [24] 2696 	push	acc
      003824 74 80            [12] 2697 	mov	a,#0x80
      003826 C0 E0            [24] 2698 	push	acc
      003828 12 64 16         [24] 2699 	lcall	_printf
      00382B 15 81            [12] 2700 	dec	sp
      00382D 15 81            [12] 2701 	dec	sp
      00382F 15 81            [12] 2702 	dec	sp
                                   2703 ;	main.c:310: spi_control_write(0, 0x1B, 0);
      003831 90 03 84         [24] 2704 	mov	dptr,#_spi_control_write_PARM_2
      003834 74 1B            [12] 2705 	mov	a,#0x1b
      003836 F0               [24] 2706 	movx	@dptr,a
      003837 90 03 85         [24] 2707 	mov	dptr,#_spi_control_write_PARM_3
      00383A E4               [12] 2708 	clr	a
      00383B F0               [24] 2709 	movx	@dptr,a
      00383C 75 82 00         [24] 2710 	mov	dpl, #0x00
      00383F 12 39 7A         [24] 2711 	lcall	_spi_control_write
                                   2712 ;	main.c:313: while(1)
      003842                       2713 00141$:
                                   2714 ;	main.c:315: packetLoop();
      003842 12 5A C5         [24] 2715 	lcall	_packetLoop
                                   2716 ;	main.c:319: default: {
      003845 80 FB            [24] 2717 	sjmp	00141$
      003847                       2718 00143$:
                                   2719 ;	main.c:320: printf("Invalid option. Please select a valid action.\n\r");
      003847 74 53            [12] 2720 	mov	a,#___str_49
      003849 C0 E0            [24] 2721 	push	acc
      00384B 74 75            [12] 2722 	mov	a,#(___str_49 >> 8)
      00384D C0 E0            [24] 2723 	push	acc
      00384F 74 80            [12] 2724 	mov	a,#0x80
      003851 C0 E0            [24] 2725 	push	acc
      003853 12 64 16         [24] 2726 	lcall	_printf
      003856 15 81            [12] 2727 	dec	sp
      003858 15 81            [12] 2728 	dec	sp
      00385A 15 81            [12] 2729 	dec	sp
                                   2730 ;	main.c:323: }
                                   2731 ;	main.c:325: }
      00385C 02 2D E8         [24] 2732 	ljmp	00146$
                                   2733 	.area CSEG    (CODE)
                                   2734 	.area CONST   (CODE)
                                   2735 	.area CONST   (CODE)
      007017                       2736 ___str_0:
      007017 0A                    2737 	.db 0x0a
      007018 0D                    2738 	.db 0x0d
      007019 00                    2739 	.db 0x00
                                   2740 	.area CSEG    (CODE)
                                   2741 	.area CONST   (CODE)
      00701A                       2742 ___str_1:
      00701A 53 50 49 20 4F 70 65  2743 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      007030 0A                    2744 	.db 0x0a
      007031 0D                    2745 	.db 0x0d
      007032 00                    2746 	.db 0x00
                                   2747 	.area CSEG    (CODE)
                                   2748 	.area CONST   (CODE)
      007033                       2749 ___str_2:
      007033 0A                    2750 	.db 0x0a
      007034 0D                    2751 	.db 0x0d
      007035 43 68 6F 6F 73 65 20  2752 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      007047 0A                    2753 	.db 0x0a
      007048 0D                    2754 	.db 0x0d
      007049 00                    2755 	.db 0x00
                                   2756 	.area CSEG    (CODE)
                                   2757 	.area CONST   (CODE)
      00704A                       2758 ___str_3:
      00704A 31 20 2D 2D 3E 20 43  2759 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      00705D 0A                    2760 	.db 0x0a
      00705E 0D                    2761 	.db 0x0d
      00705F 00                    2762 	.db 0x00
                                   2763 	.area CSEG    (CODE)
                                   2764 	.area CONST   (CODE)
      007060                       2765 ___str_4:
      007060 32 20 2D 2D 3E 20 42  2766 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      007072 0A                    2767 	.db 0x0a
      007073 0D                    2768 	.db 0x0d
      007074 00                    2769 	.db 0x00
                                   2770 	.area CSEG    (CODE)
                                   2771 	.area CONST   (CODE)
      007075                       2772 ___str_5:
      007075 33 20 2D 2D 3E 20 42  2773 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      007086 0A                    2774 	.db 0x0a
      007087 0D                    2775 	.db 0x0d
      007088 00                    2776 	.db 0x00
                                   2777 	.area CSEG    (CODE)
                                   2778 	.area CONST   (CODE)
      007089                       2779 ___str_6:
      007089 34 20 2D 2D 3E 20 4D  2780 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      0070A0 0A                    2781 	.db 0x0a
      0070A1 0D                    2782 	.db 0x0d
      0070A2 00                    2783 	.db 0x00
                                   2784 	.area CSEG    (CODE)
                                   2785 	.area CONST   (CODE)
      0070A3                       2786 ___str_7:
      0070A3 35 20 2D 2D 3E 20 50  2787 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      0070B6 0A                    2788 	.db 0x0a
      0070B7 0D                    2789 	.db 0x0d
      0070B8 00                    2790 	.db 0x00
                                   2791 	.area CSEG    (CODE)
                                   2792 	.area CONST   (CODE)
      0070B9                       2793 ___str_8:
      0070B9 36 20 2D 2D 3E 20 50  2794 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      0070CB 0A                    2795 	.db 0x0a
      0070CC 0D                    2796 	.db 0x0d
      0070CD 00                    2797 	.db 0x00
                                   2798 	.area CSEG    (CODE)
                                   2799 	.area CONST   (CODE)
      0070CE                       2800 ___str_9:
      0070CE 37 20 2D 2D 3E 20 45  2801 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      0070DD 0A                    2802 	.db 0x0a
      0070DE 0D                    2803 	.db 0x0d
      0070DF 00                    2804 	.db 0x00
                                   2805 	.area CSEG    (CODE)
                                   2806 	.area CONST   (CODE)
      0070E0                       2807 ___str_10:
      0070E0 38 20 2D 2D 3E 20 52  2808 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      0070F7 0A                    2809 	.db 0x0a
      0070F8 0D                    2810 	.db 0x0d
      0070F9 00                    2811 	.db 0x00
                                   2812 	.area CSEG    (CODE)
                                   2813 	.area CONST   (CODE)
      0070FA                       2814 ___str_11:
      0070FA 39 20 2D 2D 3E 20 44  2815 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      00710C 0A                    2816 	.db 0x0a
      00710D 0D                    2817 	.db 0x0d
      00710E 00                    2818 	.db 0x00
                                   2819 	.area CSEG    (CODE)
                                   2820 	.area CONST   (CODE)
      00710F                       2821 ___str_12:
      00710F 41 20 2D 2D 3E 20 53  2822 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      007125 0A                    2823 	.db 0x0a
      007126 0D                    2824 	.db 0x0d
      007127 00                    2825 	.db 0x00
                                   2826 	.area CSEG    (CODE)
                                   2827 	.area CONST   (CODE)
      007128                       2828 ___str_13:
      007128 42 20 2D 2D 3E 20 49  2829 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      00713D 0A                    2830 	.db 0x0a
      00713E 0D                    2831 	.db 0x0d
      00713F 00                    2832 	.db 0x00
                                   2833 	.area CSEG    (CODE)
                                   2834 	.area CONST   (CODE)
      007140                       2835 ___str_14:
      007140 43 20 2D 2D 3E 20 48  2836 	.ascii "C --> Hard Reset(nRESET pin)"
             61 72 64 20 52 65 73
             65 74 28 6E 52 45 53
             45 54 20 70 69 6E 29
      00715C 0A                    2837 	.db 0x0a
      00715D 0D                    2838 	.db 0x0d
      00715E 00                    2839 	.db 0x00
                                   2840 	.area CSEG    (CODE)
                                   2841 	.area CONST   (CODE)
      00715F                       2842 ___str_15:
      00715F 44 20 2D 2D 3E 20 50  2843 	.ascii "D --> Process TCP"
             72 6F 63 65 73 73 20
             54 43 50
      007170 0A                    2844 	.db 0x0a
      007171 0D                    2845 	.db 0x0d
      007172 00                    2846 	.db 0x00
                                   2847 	.area CSEG    (CODE)
                                   2848 	.area CONST   (CODE)
      007173                       2849 ___str_16:
      007173 45 20 2D 2D 3E 20 45  2850 	.ascii "E --> Enable TX interrupt"
             6E 61 62 6C 65 20 54
             58 20 69 6E 74 65 72
             72 75 70 74
      00718C 0A                    2851 	.db 0x0a
      00718D 0D                    2852 	.db 0x0d
      00718E 00                    2853 	.db 0x00
                                   2854 	.area CSEG    (CODE)
                                   2855 	.area CONST   (CODE)
      00718F                       2856 ___str_17:
      00718F 46 20 2D 2D 3E 20 44  2857 	.ascii "F --> Disabling TX interrupt"
             69 73 61 62 6C 69 6E
             67 20 54 58 20 69 6E
             74 65 72 72 75 70 74
      0071AB 0A                    2858 	.db 0x0a
      0071AC 0D                    2859 	.db 0x0d
      0071AD 00                    2860 	.db 0x00
                                   2861 	.area CSEG    (CODE)
                                   2862 	.area CONST   (CODE)
      0071AE                       2863 ___str_18:
      0071AE 45 6E 74 65 72 20 74  2864 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      0071D0 0A                    2865 	.db 0x0a
      0071D1 0D                    2866 	.db 0x0d
      0071D2 00                    2867 	.db 0x00
                                   2868 	.area CSEG    (CODE)
                                   2869 	.area CONST   (CODE)
      0071D3                       2870 ___str_19:
      0071D3 45 6E 74 65 72 20 74  2871 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      0071FD 0A                    2872 	.db 0x0a
      0071FE 0D                    2873 	.db 0x0d
      0071FF 00                    2874 	.db 0x00
                                   2875 	.area CSEG    (CODE)
                                   2876 	.area CONST   (CODE)
      007200                       2877 ___str_20:
      007200 45 6E 74 65 72 20 74  2878 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      007221 0A                    2879 	.db 0x0a
      007222 0D                    2880 	.db 0x0d
      007223 00                    2881 	.db 0x00
                                   2882 	.area CSEG    (CODE)
                                   2883 	.area CONST   (CODE)
      007224                       2884 ___str_21:
      007224 45 6E 74 65 72 20 74  2885 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      007247 0A                    2886 	.db 0x0a
      007248 0D                    2887 	.db 0x0d
      007249 00                    2888 	.db 0x00
                                   2889 	.area CSEG    (CODE)
                                   2890 	.area CONST   (CODE)
      00724A                       2891 ___str_22:
      00724A 45 6E 74 65 72 20 74  2892 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      007265 0A                    2893 	.db 0x0a
      007266 0D                    2894 	.db 0x0d
      007267 00                    2895 	.db 0x00
                                   2896 	.area CSEG    (CODE)
                                   2897 	.area CONST   (CODE)
      007268                       2898 ___str_23:
      007268 45 6E 74 65 72 20 25  2899 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      007288 0A                    2900 	.db 0x0a
      007289 0D                    2901 	.db 0x0d
      00728A 00                    2902 	.db 0x00
                                   2903 	.area CSEG    (CODE)
                                   2904 	.area CONST   (CODE)
      00728B                       2905 ___str_24:
      00728B 42 79 74 65 20 25 64  2906 	.ascii "Byte %d: "
             3A 20
      007294 00                    2907 	.db 0x00
                                   2908 	.area CSEG    (CODE)
                                   2909 	.area CONST   (CODE)
      007295                       2910 ___str_25:
      007295 45 6E 74 65 72 20 74  2911 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      0072B7 0A                    2912 	.db 0x0a
      0072B8 0D                    2913 	.db 0x0d
      0072B9 00                    2914 	.db 0x00
                                   2915 	.area CSEG    (CODE)
                                   2916 	.area CONST   (CODE)
      0072BA                       2917 ___str_26:
      0072BA 45 6E 74 65 72 20 74  2918 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      0072E0 0A                    2919 	.db 0x0a
      0072E1 0D                    2920 	.db 0x0d
      0072E2 00                    2921 	.db 0x00
                                   2922 	.area CSEG    (CODE)
                                   2923 	.area CONST   (CODE)
      0072E3                       2924 ___str_27:
      0072E3 45 6E 74 65 72 20 74  2925 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      007309 0A                    2926 	.db 0x0a
      00730A 0D                    2927 	.db 0x0d
      00730B 00                    2928 	.db 0x00
                                   2929 	.area CSEG    (CODE)
                                   2930 	.area CONST   (CODE)
      00730C                       2931 ___str_28:
      00730C 4D 41 43 20 52 65 67  2932 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      007325 0A                    2933 	.db 0x0a
      007326 0D                    2934 	.db 0x0d
      007327 00                    2935 	.db 0x00
                                   2936 	.area CSEG    (CODE)
                                   2937 	.area CONST   (CODE)
      007328                       2938 ___str_29:
      007328 45 6E 74 65 72 20 74  2939 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      007347 0A                    2940 	.db 0x0a
      007348 0D                    2941 	.db 0x0d
      007349 00                    2942 	.db 0x00
                                   2943 	.area CSEG    (CODE)
                                   2944 	.area CONST   (CODE)
      00734A                       2945 ___str_30:
      00734A 45 6E 74 65 72 20 74  2946 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      007369 0A                    2947 	.db 0x0a
      00736A 0D                    2948 	.db 0x0d
      00736B 00                    2949 	.db 0x00
                                   2950 	.area CSEG    (CODE)
                                   2951 	.area CONST   (CODE)
      00736C                       2952 ___str_31:
      00736C 50 48 59 20 57 72 69  2953 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      007382 0A                    2954 	.db 0x0a
      007383 0D                    2955 	.db 0x0d
      007384 00                    2956 	.db 0x00
                                   2957 	.area CSEG    (CODE)
                                   2958 	.area CONST   (CODE)
      007385                       2959 ___str_32:
      007385 45 6E 74 65 72 20 74  2960 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      0073AC 0A                    2961 	.db 0x0a
      0073AD 0D                    2962 	.db 0x0d
      0073AE 00                    2963 	.db 0x00
                                   2964 	.area CSEG    (CODE)
                                   2965 	.area CONST   (CODE)
      0073AF                       2966 ___str_33:
      0073AF 50 48 59 20 52 65 61  2967 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      0073C4 0A                    2968 	.db 0x0a
      0073C5 0D                    2969 	.db 0x0d
      0073C6 00                    2970 	.db 0x00
                                   2971 	.area CSEG    (CODE)
                                   2972 	.area CONST   (CODE)
      0073C7                       2973 ___str_34:
      0073C7 52 65 73 65 74 74 69  2974 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      0073DC 0A                    2975 	.db 0x0a
      0073DD 0D                    2976 	.db 0x0d
      0073DE 00                    2977 	.db 0x00
                                   2978 	.area CSEG    (CODE)
                                   2979 	.area CONST   (CODE)
      0073DF                       2980 ___str_35:
      0073DF 45 6E 74 65 72 20 74  2981 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      007406 0A                    2982 	.db 0x0a
      007407 0D                    2983 	.db 0x0d
      007408 00                    2984 	.db 0x00
                                   2985 	.area CSEG    (CODE)
                                   2986 	.area CONST   (CODE)
      007409                       2987 ___str_36:
      007409 45 6E 74 65 72 20 74  2988 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      007421 0A                    2989 	.db 0x0a
      007422 0D                    2990 	.db 0x0d
      007423 00                    2991 	.db 0x00
                                   2992 	.area CSEG    (CODE)
                                   2993 	.area CONST   (CODE)
      007424                       2994 ___str_37:
      007424 45 54 48 20 52 65 67  2995 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      00743D 0A                    2996 	.db 0x0a
      00743E 0D                    2997 	.db 0x0d
      00743F 00                    2998 	.db 0x00
                                   2999 	.area CSEG    (CODE)
                                   3000 	.area CONST   (CODE)
      007440                       3001 ___str_38:
      007440 56 61 6C 69 64 20 45  3002 	.ascii "Valid ETHER packet....................."
             54 48 45 52 20 70 61
             63 6B 65 74 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E
      007467 0A                    3003 	.db 0x0a
      007468 0D                    3004 	.db 0x0d
      007469 00                    3005 	.db 0x00
                                   3006 	.area CSEG    (CODE)
                                   3007 	.area CONST   (CODE)
      00746A                       3008 ___str_39:
      00746A 0A                    3009 	.db 0x0a
      00746B 50 72 6F 63 65 73 73  3010 	.ascii "Processed response data:"
             65 64 20 72 65 73 70
             6F 6E 73 65 20 64 61
             74 61 3A
      007483 0A                    3011 	.db 0x0a
      007484 00                    3012 	.db 0x00
                                   3013 	.area CSEG    (CODE)
                                   3014 	.area CONST   (CODE)
      007485                       3015 ___str_40:
      007485 0A                    3016 	.db 0x0a
      007486 4E 6F 20 72 65 73 70  3017 	.ascii "No response generated by TCP packet processing."
             6F 6E 73 65 20 67 65
             6E 65 72 61 74 65 64
             20 62 79 20 54 43 50
             20 70 61 63 6B 65 74
             20 70 72 6F 63 65 73
             73 69 6E 67 2E
      0074B5 0A                    3018 	.db 0x0a
      0074B6 00                    3019 	.db 0x00
                                   3020 	.area CSEG    (CODE)
                                   3021 	.area CONST   (CODE)
      0074B7                       3022 ___str_41:
      0074B7 59 45 53 53 53 53     3023 	.ascii "YESSSS"
      0074BD 0A                    3024 	.db 0x0a
      0074BE 00                    3025 	.db 0x00
                                   3026 	.area CSEG    (CODE)
                                   3027 	.area CONST   (CODE)
      0074BF                       3028 ___str_42:
      0074BF 4E 4F 4F 4F 4F        3029 	.ascii "NOOOO"
      0074C4 0A                    3030 	.db 0x0a
      0074C5 00                    3031 	.db 0x00
                                   3032 	.area CSEG    (CODE)
                                   3033 	.area CONST   (CODE)
      0074C6                       3034 ___str_43:
      0074C6 6E 65 78 74 50 61 63  3035 	.ascii "nextPacket: 0x%04X"
             6B 65 74 3A 20 30 78
             25 30 34 58
      0074D8 0A                    3036 	.db 0x0a
      0074D9 00                    3037 	.db 0x00
                                   3038 	.area CSEG    (CODE)
                                   3039 	.area CONST   (CODE)
      0074DA                       3040 ___str_44:
      0074DA 62 79 74 65 43 6F 75  3041 	.ascii "byteCount: %d"
             6E 74 3A 20 25 64
      0074E7 0A                    3042 	.db 0x0a
      0074E8 00                    3043 	.db 0x00
                                   3044 	.area CSEG    (CODE)
                                   3045 	.area CONST   (CODE)
      0074E9                       3046 ___str_45:
      0074E9 73 74 61 74 75 73 3A  3047 	.ascii "status: 0x%02X"
             20 30 78 25 30 32 58
      0074F7 0A                    3048 	.db 0x0a
      0074F8 00                    3049 	.db 0x00
                                   3050 	.area CSEG    (CODE)
                                   3051 	.area CONST   (CODE)
      0074F9                       3052 ___str_46:
      0074F9 20 52 65 73 65 74 74  3053 	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
             69 6E 67 20 45 4E 43
             20 75 73 69 6E 67 20
             52 45 53 45 54 20 70
             69 6E 20 69 6E 20 48
             61 72 64 77 61 72 65
             28 50 31 5F 30 29
      007529 0A                    3054 	.db 0x0a
      00752A 0D                    3055 	.db 0x0d
      00752B 00                    3056 	.db 0x00
                                   3057 	.area CSEG    (CODE)
                                   3058 	.area CONST   (CODE)
      00752C                       3059 ___str_47:
      00752C 45 6E 61 62 6C 69 6E  3060 	.ascii "Enabling TXPKTIE"
             67 20 54 58 50 4B 54
             49 45
      00753C 0A                    3061 	.db 0x0a
      00753D 0D                    3062 	.db 0x0d
      00753E 00                    3063 	.db 0x00
                                   3064 	.area CSEG    (CODE)
                                   3065 	.area CONST   (CODE)
      00753F                       3066 ___str_48:
      00753F 44 69 73 61 62 6C 69  3067 	.ascii "Disabling TXPKTIE"
             6E 67 20 54 58 50 4B
             54 49 45
      007550 0A                    3068 	.db 0x0a
      007551 0D                    3069 	.db 0x0d
      007552 00                    3070 	.db 0x00
                                   3071 	.area CSEG    (CODE)
                                   3072 	.area CONST   (CODE)
      007553                       3073 ___str_49:
      007553 49 6E 76 61 6C 69 64  3074 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      007580 0A                    3075 	.db 0x0a
      007581 0D                    3076 	.db 0x0d
      007582 00                    3077 	.db 0x00
                                   3078 	.area CSEG    (CODE)
                                   3079 	.area XINIT   (CODE)
                                   3080 	.area CABS    (ABS,CODE)

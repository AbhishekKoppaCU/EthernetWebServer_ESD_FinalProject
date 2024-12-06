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
                                     14 	.globl _enc_init
                                     15 	.globl _send_arp_request
                                     16 	.globl _spi_control_write
                                     17 	.globl _eth_spi_read
                                     18 	.globl _phy_spi_write
                                     19 	.globl _phy_spi_read
                                     20 	.globl _spi_buffer_write
                                     21 	.globl _spi_buffer_read
                                     22 	.globl _mac_spi_read
                                     23 	.globl _enc_reset
                                     24 	.globl _configure_SPI
                                     25 	.globl _printf_tiny
                                     26 	.globl _putchar
                                     27 	.globl _getchar
                                     28 	.globl _printf
                                     29 	.globl _TF1
                                     30 	.globl _TR1
                                     31 	.globl _TF0
                                     32 	.globl _TR0
                                     33 	.globl _IE1
                                     34 	.globl _IT1
                                     35 	.globl _IE0
                                     36 	.globl _IT0
                                     37 	.globl _SM0
                                     38 	.globl _SM1
                                     39 	.globl _SM2
                                     40 	.globl _REN
                                     41 	.globl _TB8
                                     42 	.globl _RB8
                                     43 	.globl _TI
                                     44 	.globl _RI
                                     45 	.globl _CY
                                     46 	.globl _AC
                                     47 	.globl _F0
                                     48 	.globl _RS1
                                     49 	.globl _RS0
                                     50 	.globl _OV
                                     51 	.globl _F1
                                     52 	.globl _P
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD0
                                     60 	.globl _TXD
                                     61 	.globl _RXD0
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _PS
                                     96 	.globl _PT1
                                     97 	.globl _PX1
                                     98 	.globl _PT0
                                     99 	.globl _PX0
                                    100 	.globl _EA
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _BREG_F7
                                    107 	.globl _BREG_F6
                                    108 	.globl _BREG_F5
                                    109 	.globl _BREG_F4
                                    110 	.globl _BREG_F3
                                    111 	.globl _BREG_F2
                                    112 	.globl _BREG_F1
                                    113 	.globl _BREG_F0
                                    114 	.globl _P5_7
                                    115 	.globl _P5_6
                                    116 	.globl _P5_5
                                    117 	.globl _P5_4
                                    118 	.globl _P5_3
                                    119 	.globl _P5_2
                                    120 	.globl _P5_1
                                    121 	.globl _P5_0
                                    122 	.globl _P4_7
                                    123 	.globl _P4_6
                                    124 	.globl _P4_5
                                    125 	.globl _P4_4
                                    126 	.globl _P4_3
                                    127 	.globl _P4_2
                                    128 	.globl _P4_1
                                    129 	.globl _P4_0
                                    130 	.globl _PX0L
                                    131 	.globl _PT0L
                                    132 	.globl _PX1L
                                    133 	.globl _PT1L
                                    134 	.globl _PSL
                                    135 	.globl _PT2L
                                    136 	.globl _PPCL
                                    137 	.globl _EC
                                    138 	.globl _CCF0
                                    139 	.globl _CCF1
                                    140 	.globl _CCF2
                                    141 	.globl _CCF3
                                    142 	.globl _CCF4
                                    143 	.globl _CR
                                    144 	.globl _CF
                                    145 	.globl _TF2
                                    146 	.globl _EXF2
                                    147 	.globl _RCLK
                                    148 	.globl _TCLK
                                    149 	.globl _EXEN2
                                    150 	.globl _TR2
                                    151 	.globl _C_T2
                                    152 	.globl _CP_RL2
                                    153 	.globl _T2CON_7
                                    154 	.globl _T2CON_6
                                    155 	.globl _T2CON_5
                                    156 	.globl _T2CON_4
                                    157 	.globl _T2CON_3
                                    158 	.globl _T2CON_2
                                    159 	.globl _T2CON_1
                                    160 	.globl _T2CON_0
                                    161 	.globl _PT2
                                    162 	.globl _ET2
                                    163 	.globl _TMOD
                                    164 	.globl _TL1
                                    165 	.globl _TL0
                                    166 	.globl _TH1
                                    167 	.globl _TH0
                                    168 	.globl _TCON
                                    169 	.globl _SP
                                    170 	.globl _SCON
                                    171 	.globl _SBUF0
                                    172 	.globl _SBUF
                                    173 	.globl _PSW
                                    174 	.globl _PCON
                                    175 	.globl _P3
                                    176 	.globl _P2
                                    177 	.globl _P1
                                    178 	.globl _P0
                                    179 	.globl _IP
                                    180 	.globl _IE
                                    181 	.globl _DP0L
                                    182 	.globl _DPL
                                    183 	.globl _DP0H
                                    184 	.globl _DPH
                                    185 	.globl _B
                                    186 	.globl _ACC
                                    187 	.globl _EECON
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BRL
                                    192 	.globl _BDRCON
                                    193 	.globl _T2MOD
                                    194 	.globl _SPDAT
                                    195 	.globl _SPSTA
                                    196 	.globl _SPCON
                                    197 	.globl _SADEN
                                    198 	.globl _SADDR
                                    199 	.globl _WDTPRG
                                    200 	.globl _WDTRST
                                    201 	.globl _P5
                                    202 	.globl _P4
                                    203 	.globl _IPH1
                                    204 	.globl _IPL1
                                    205 	.globl _IPH0
                                    206 	.globl _IPL0
                                    207 	.globl _IEN1
                                    208 	.globl _IEN0
                                    209 	.globl _CMOD
                                    210 	.globl _CL
                                    211 	.globl _CH
                                    212 	.globl _CCON
                                    213 	.globl _CCAPM4
                                    214 	.globl _CCAPM3
                                    215 	.globl _CCAPM2
                                    216 	.globl _CCAPM1
                                    217 	.globl _CCAPM0
                                    218 	.globl _CCAP4L
                                    219 	.globl _CCAP3L
                                    220 	.globl _CCAP2L
                                    221 	.globl _CCAP1L
                                    222 	.globl _CCAP0L
                                    223 	.globl _CCAP4H
                                    224 	.globl _CCAP3H
                                    225 	.globl _CCAP2H
                                    226 	.globl _CCAP1H
                                    227 	.globl _CCAP0H
                                    228 	.globl _CKCON1
                                    229 	.globl _CKCON0
                                    230 	.globl _CKRL
                                    231 	.globl _AUXR1
                                    232 	.globl _AUXR
                                    233 	.globl _TH2
                                    234 	.globl _TL2
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _T2CON
                                    238 	.globl _target_ip
                                    239 	.globl _device_ip
                                    240 	.globl _target_mac
                                    241 	.globl _device_mac
                                    242 ;--------------------------------------------------------
                                    243 ; special function registers
                                    244 ;--------------------------------------------------------
                                    245 	.area RSEG    (ABS,DATA)
      000000                        246 	.org 0x0000
                           0000C8   247 _T2CON	=	0x00c8
                           0000CA   248 _RCAP2L	=	0x00ca
                           0000CB   249 _RCAP2H	=	0x00cb
                           0000CC   250 _TL2	=	0x00cc
                           0000CD   251 _TH2	=	0x00cd
                           00008E   252 _AUXR	=	0x008e
                           0000A2   253 _AUXR1	=	0x00a2
                           000097   254 _CKRL	=	0x0097
                           00008F   255 _CKCON0	=	0x008f
                           0000AF   256 _CKCON1	=	0x00af
                           0000FA   257 _CCAP0H	=	0x00fa
                           0000FB   258 _CCAP1H	=	0x00fb
                           0000FC   259 _CCAP2H	=	0x00fc
                           0000FD   260 _CCAP3H	=	0x00fd
                           0000FE   261 _CCAP4H	=	0x00fe
                           0000EA   262 _CCAP0L	=	0x00ea
                           0000EB   263 _CCAP1L	=	0x00eb
                           0000EC   264 _CCAP2L	=	0x00ec
                           0000ED   265 _CCAP3L	=	0x00ed
                           0000EE   266 _CCAP4L	=	0x00ee
                           0000DA   267 _CCAPM0	=	0x00da
                           0000DB   268 _CCAPM1	=	0x00db
                           0000DC   269 _CCAPM2	=	0x00dc
                           0000DD   270 _CCAPM3	=	0x00dd
                           0000DE   271 _CCAPM4	=	0x00de
                           0000D8   272 _CCON	=	0x00d8
                           0000F9   273 _CH	=	0x00f9
                           0000E9   274 _CL	=	0x00e9
                           0000D9   275 _CMOD	=	0x00d9
                           0000A8   276 _IEN0	=	0x00a8
                           0000B1   277 _IEN1	=	0x00b1
                           0000B8   278 _IPL0	=	0x00b8
                           0000B7   279 _IPH0	=	0x00b7
                           0000B2   280 _IPL1	=	0x00b2
                           0000B3   281 _IPH1	=	0x00b3
                           0000C0   282 _P4	=	0x00c0
                           0000E8   283 _P5	=	0x00e8
                           0000A6   284 _WDTRST	=	0x00a6
                           0000A7   285 _WDTPRG	=	0x00a7
                           0000A9   286 _SADDR	=	0x00a9
                           0000B9   287 _SADEN	=	0x00b9
                           0000C3   288 _SPCON	=	0x00c3
                           0000C4   289 _SPSTA	=	0x00c4
                           0000C5   290 _SPDAT	=	0x00c5
                           0000C9   291 _T2MOD	=	0x00c9
                           00009B   292 _BDRCON	=	0x009b
                           00009A   293 _BRL	=	0x009a
                           00009C   294 _KBLS	=	0x009c
                           00009D   295 _KBE	=	0x009d
                           00009E   296 _KBF	=	0x009e
                           0000D2   297 _EECON	=	0x00d2
                           0000E0   298 _ACC	=	0x00e0
                           0000F0   299 _B	=	0x00f0
                           000083   300 _DPH	=	0x0083
                           000083   301 _DP0H	=	0x0083
                           000082   302 _DPL	=	0x0082
                           000082   303 _DP0L	=	0x0082
                           0000A8   304 _IE	=	0x00a8
                           0000B8   305 _IP	=	0x00b8
                           000080   306 _P0	=	0x0080
                           000090   307 _P1	=	0x0090
                           0000A0   308 _P2	=	0x00a0
                           0000B0   309 _P3	=	0x00b0
                           000087   310 _PCON	=	0x0087
                           0000D0   311 _PSW	=	0x00d0
                           000099   312 _SBUF	=	0x0099
                           000099   313 _SBUF0	=	0x0099
                           000098   314 _SCON	=	0x0098
                           000081   315 _SP	=	0x0081
                           000088   316 _TCON	=	0x0088
                           00008C   317 _TH0	=	0x008c
                           00008D   318 _TH1	=	0x008d
                           00008A   319 _TL0	=	0x008a
                           00008B   320 _TL1	=	0x008b
                           000089   321 _TMOD	=	0x0089
                                    322 ;--------------------------------------------------------
                                    323 ; special function bits
                                    324 ;--------------------------------------------------------
                                    325 	.area RSEG    (ABS,DATA)
      000000                        326 	.org 0x0000
                           0000AD   327 _ET2	=	0x00ad
                           0000BD   328 _PT2	=	0x00bd
                           0000C8   329 _T2CON_0	=	0x00c8
                           0000C9   330 _T2CON_1	=	0x00c9
                           0000CA   331 _T2CON_2	=	0x00ca
                           0000CB   332 _T2CON_3	=	0x00cb
                           0000CC   333 _T2CON_4	=	0x00cc
                           0000CD   334 _T2CON_5	=	0x00cd
                           0000CE   335 _T2CON_6	=	0x00ce
                           0000CF   336 _T2CON_7	=	0x00cf
                           0000C8   337 _CP_RL2	=	0x00c8
                           0000C9   338 _C_T2	=	0x00c9
                           0000CA   339 _TR2	=	0x00ca
                           0000CB   340 _EXEN2	=	0x00cb
                           0000CC   341 _TCLK	=	0x00cc
                           0000CD   342 _RCLK	=	0x00cd
                           0000CE   343 _EXF2	=	0x00ce
                           0000CF   344 _TF2	=	0x00cf
                           0000DF   345 _CF	=	0x00df
                           0000DE   346 _CR	=	0x00de
                           0000DC   347 _CCF4	=	0x00dc
                           0000DB   348 _CCF3	=	0x00db
                           0000DA   349 _CCF2	=	0x00da
                           0000D9   350 _CCF1	=	0x00d9
                           0000D8   351 _CCF0	=	0x00d8
                           0000AE   352 _EC	=	0x00ae
                           0000BE   353 _PPCL	=	0x00be
                           0000BD   354 _PT2L	=	0x00bd
                           0000BC   355 _PSL	=	0x00bc
                           0000BB   356 _PT1L	=	0x00bb
                           0000BA   357 _PX1L	=	0x00ba
                           0000B9   358 _PT0L	=	0x00b9
                           0000B8   359 _PX0L	=	0x00b8
                           0000C0   360 _P4_0	=	0x00c0
                           0000C1   361 _P4_1	=	0x00c1
                           0000C2   362 _P4_2	=	0x00c2
                           0000C3   363 _P4_3	=	0x00c3
                           0000C4   364 _P4_4	=	0x00c4
                           0000C5   365 _P4_5	=	0x00c5
                           0000C6   366 _P4_6	=	0x00c6
                           0000C7   367 _P4_7	=	0x00c7
                           0000E8   368 _P5_0	=	0x00e8
                           0000E9   369 _P5_1	=	0x00e9
                           0000EA   370 _P5_2	=	0x00ea
                           0000EB   371 _P5_3	=	0x00eb
                           0000EC   372 _P5_4	=	0x00ec
                           0000ED   373 _P5_5	=	0x00ed
                           0000EE   374 _P5_6	=	0x00ee
                           0000EF   375 _P5_7	=	0x00ef
                           0000F0   376 _BREG_F0	=	0x00f0
                           0000F1   377 _BREG_F1	=	0x00f1
                           0000F2   378 _BREG_F2	=	0x00f2
                           0000F3   379 _BREG_F3	=	0x00f3
                           0000F4   380 _BREG_F4	=	0x00f4
                           0000F5   381 _BREG_F5	=	0x00f5
                           0000F6   382 _BREG_F6	=	0x00f6
                           0000F7   383 _BREG_F7	=	0x00f7
                           0000A8   384 _EX0	=	0x00a8
                           0000A9   385 _ET0	=	0x00a9
                           0000AA   386 _EX1	=	0x00aa
                           0000AB   387 _ET1	=	0x00ab
                           0000AC   388 _ES	=	0x00ac
                           0000AF   389 _EA	=	0x00af
                           0000B8   390 _PX0	=	0x00b8
                           0000B9   391 _PT0	=	0x00b9
                           0000BA   392 _PX1	=	0x00ba
                           0000BB   393 _PT1	=	0x00bb
                           0000BC   394 _PS	=	0x00bc
                           000080   395 _P0_0	=	0x0080
                           000081   396 _P0_1	=	0x0081
                           000082   397 _P0_2	=	0x0082
                           000083   398 _P0_3	=	0x0083
                           000084   399 _P0_4	=	0x0084
                           000085   400 _P0_5	=	0x0085
                           000086   401 _P0_6	=	0x0086
                           000087   402 _P0_7	=	0x0087
                           000090   403 _P1_0	=	0x0090
                           000091   404 _P1_1	=	0x0091
                           000092   405 _P1_2	=	0x0092
                           000093   406 _P1_3	=	0x0093
                           000094   407 _P1_4	=	0x0094
                           000095   408 _P1_5	=	0x0095
                           000096   409 _P1_6	=	0x0096
                           000097   410 _P1_7	=	0x0097
                           0000A0   411 _P2_0	=	0x00a0
                           0000A1   412 _P2_1	=	0x00a1
                           0000A2   413 _P2_2	=	0x00a2
                           0000A3   414 _P2_3	=	0x00a3
                           0000A4   415 _P2_4	=	0x00a4
                           0000A5   416 _P2_5	=	0x00a5
                           0000A6   417 _P2_6	=	0x00a6
                           0000A7   418 _P2_7	=	0x00a7
                           0000B0   419 _P3_0	=	0x00b0
                           0000B1   420 _P3_1	=	0x00b1
                           0000B2   421 _P3_2	=	0x00b2
                           0000B3   422 _P3_3	=	0x00b3
                           0000B4   423 _P3_4	=	0x00b4
                           0000B5   424 _P3_5	=	0x00b5
                           0000B6   425 _P3_6	=	0x00b6
                           0000B7   426 _P3_7	=	0x00b7
                           0000B0   427 _RXD	=	0x00b0
                           0000B0   428 _RXD0	=	0x00b0
                           0000B1   429 _TXD	=	0x00b1
                           0000B1   430 _TXD0	=	0x00b1
                           0000B2   431 _INT0	=	0x00b2
                           0000B3   432 _INT1	=	0x00b3
                           0000B4   433 _T0	=	0x00b4
                           0000B5   434 _T1	=	0x00b5
                           0000B6   435 _WR	=	0x00b6
                           0000B7   436 _RD	=	0x00b7
                           0000D0   437 _P	=	0x00d0
                           0000D1   438 _F1	=	0x00d1
                           0000D2   439 _OV	=	0x00d2
                           0000D3   440 _RS0	=	0x00d3
                           0000D4   441 _RS1	=	0x00d4
                           0000D5   442 _F0	=	0x00d5
                           0000D6   443 _AC	=	0x00d6
                           0000D7   444 _CY	=	0x00d7
                           000098   445 _RI	=	0x0098
                           000099   446 _TI	=	0x0099
                           00009A   447 _RB8	=	0x009a
                           00009B   448 _TB8	=	0x009b
                           00009C   449 _REN	=	0x009c
                           00009D   450 _SM2	=	0x009d
                           00009E   451 _SM1	=	0x009e
                           00009F   452 _SM0	=	0x009f
                           000088   453 _IT0	=	0x0088
                           000089   454 _IE0	=	0x0089
                           00008A   455 _IT1	=	0x008a
                           00008B   456 _IE1	=	0x008b
                           00008C   457 _TR0	=	0x008c
                           00008D   458 _TF0	=	0x008d
                           00008E   459 _TR1	=	0x008e
                           00008F   460 _TF1	=	0x008f
                                    461 ;--------------------------------------------------------
                                    462 ; overlayable register banks
                                    463 ;--------------------------------------------------------
                                    464 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        465 	.ds 8
                                    466 ;--------------------------------------------------------
                                    467 ; internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area DSEG    (DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; overlayable items in internal ram
                                    472 ;--------------------------------------------------------
                                    473 	.area	OSEG    (OVR,DATA)
      000022                        474 _hex_to_int_sloc0_1_0:
      000022                        475 	.ds 3
      000025                        476 _hex_to_int_sloc1_1_0:
      000025                        477 	.ds 1
      000026                        478 _hex_to_int_sloc2_1_0:
      000026                        479 	.ds 2
                                    480 ;--------------------------------------------------------
                                    481 ; Stack segment in internal ram
                                    482 ;--------------------------------------------------------
                                    483 	.area SSEG
      000028                        484 __start__stack:
      000028                        485 	.ds	1
                                    486 
                                    487 ;--------------------------------------------------------
                                    488 ; indirectly addressable internal ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area ISEG    (DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; absolute internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area IABS    (ABS,DATA)
                                    495 	.area IABS    (ABS,DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; bit data
                                    498 ;--------------------------------------------------------
                                    499 	.area BSEG    (BIT)
                                    500 ;--------------------------------------------------------
                                    501 ; paged external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area PSEG    (PAG,XDATA)
                                    504 ;--------------------------------------------------------
                                    505 ; uninitialized external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XSEG    (XDATA)
      000152                        508 _hex_to_int_str_10000_78:
      000152                        509 	.ds 3
      000155                        510 _hex_to_int_result_10000_79:
      000155                        511 	.ds 2
      000157                        512 _hex_to_int_ASCII_20000_80:
      000157                        513 	.ds 2
      000159                        514 _get_user_buffer_size_input_10000_85:
      000159                        515 	.ds 10
      000163                        516 _main_buffer_40003_98:
      000163                        517 	.ds 256
      000263                        518 _main_buffer_40003_103:
      000263                        519 	.ds 256
                                    520 ;--------------------------------------------------------
                                    521 ; absolute external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area XABS    (ABS,XDATA)
                                    524 ;--------------------------------------------------------
                                    525 ; initialized external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area XISEG   (XDATA)
      0003C8                        528 _device_mac::
      0003C8                        529 	.ds 6
      0003CE                        530 _target_mac::
      0003CE                        531 	.ds 6
      0003D4                        532 _device_ip::
      0003D4                        533 	.ds 4
      0003D8                        534 _target_ip::
      0003D8                        535 	.ds 4
                                    536 	.area HOME    (CODE)
                                    537 	.area GSINIT0 (CODE)
                                    538 	.area GSINIT1 (CODE)
                                    539 	.area GSINIT2 (CODE)
                                    540 	.area GSINIT3 (CODE)
                                    541 	.area GSINIT4 (CODE)
                                    542 	.area GSINIT5 (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.area GSFINAL (CODE)
                                    545 	.area CSEG    (CODE)
                                    546 ;--------------------------------------------------------
                                    547 ; interrupt vector
                                    548 ;--------------------------------------------------------
                                    549 	.area HOME    (CODE)
      002000                        550 __interrupt_vect:
      002000 02 20 09         [24]  551 	ljmp	__sdcc_gsinit_startup
      002003 02 24 90         [24]  552 	ljmp	_external_interrupt0_isr
                                    553 ;--------------------------------------------------------
                                    554 ; global & static initialisations
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 	.area GSFINAL (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.globl __sdcc_gsinit_startup
                                    561 	.globl __sdcc_program_startup
                                    562 	.globl __start__stack
                                    563 	.globl __mcs51_genXINIT
                                    564 	.globl __mcs51_genXRAMCLEAR
                                    565 	.globl __mcs51_genRAMCLEAR
                                    566 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  567 	ljmp	__sdcc_program_startup
                                    568 ;--------------------------------------------------------
                                    569 ; Home
                                    570 ;--------------------------------------------------------
                                    571 	.area HOME    (CODE)
                                    572 	.area HOME    (CODE)
      002006                        573 __sdcc_program_startup:
      002006 02 2C D8         [24]  574 	ljmp	_main
                                    575 ;	return from main will return to caller
                                    576 ;--------------------------------------------------------
                                    577 ; code
                                    578 ;--------------------------------------------------------
                                    579 	.area CSEG    (CODE)
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'hex_to_int'
                                    582 ;------------------------------------------------------------
                                    583 ;str                       Allocated with name '_hex_to_int_str_10000_78'
                                    584 ;i                         Allocated with name '_hex_to_int_i_10000_79'
                                    585 ;result                    Allocated with name '_hex_to_int_result_10000_79'
                                    586 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_80'
                                    587 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    588 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    589 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    590 ;------------------------------------------------------------
                                    591 ;	main.c:22: int hex_to_int(char* str)
                                    592 ;	-----------------------------------------
                                    593 ;	 function hex_to_int
                                    594 ;	-----------------------------------------
      002A9A                        595 _hex_to_int:
                           000007   596 	ar7 = 0x07
                           000006   597 	ar6 = 0x06
                           000005   598 	ar5 = 0x05
                           000004   599 	ar4 = 0x04
                           000003   600 	ar3 = 0x03
                           000002   601 	ar2 = 0x02
                           000001   602 	ar1 = 0x01
                           000000   603 	ar0 = 0x00
      002A9A AF F0            [24]  604 	mov	r7,b
      002A9C AE 83            [24]  605 	mov	r6,dph
      002A9E E5 82            [12]  606 	mov	a,dpl
      002AA0 90 01 52         [24]  607 	mov	dptr,#_hex_to_int_str_10000_78
      002AA3 F0               [24]  608 	movx	@dptr,a
      002AA4 EE               [12]  609 	mov	a,r6
      002AA5 A3               [24]  610 	inc	dptr
      002AA6 F0               [24]  611 	movx	@dptr,a
      002AA7 EF               [12]  612 	mov	a,r7
      002AA8 A3               [24]  613 	inc	dptr
      002AA9 F0               [24]  614 	movx	@dptr,a
                                    615 ;	main.c:25: int i = 0, result = 0;
      002AAA 90 01 55         [24]  616 	mov	dptr,#_hex_to_int_result_10000_79
      002AAD E4               [12]  617 	clr	a
      002AAE F0               [24]  618 	movx	@dptr,a
      002AAF A3               [24]  619 	inc	dptr
      002AB0 F0               [24]  620 	movx	@dptr,a
                                    621 ;	main.c:26: while(str[i] != '\0')
      002AB1 90 01 52         [24]  622 	mov	dptr,#_hex_to_int_str_10000_78
      002AB4 E0               [24]  623 	movx	a,@dptr
      002AB5 FD               [12]  624 	mov	r5,a
      002AB6 A3               [24]  625 	inc	dptr
      002AB7 E0               [24]  626 	movx	a,@dptr
      002AB8 FE               [12]  627 	mov	r6,a
      002AB9 A3               [24]  628 	inc	dptr
      002ABA E0               [24]  629 	movx	a,@dptr
      002ABB FF               [12]  630 	mov	r7,a
      002ABC 8D 02            [24]  631 	mov	ar2,r5
      002ABE 8E 03            [24]  632 	mov	ar3,r6
      002AC0 8F 04            [24]  633 	mov	ar4,r7
      002AC2 8D 22            [24]  634 	mov	_hex_to_int_sloc0_1_0,r5
      002AC4 8E 23            [24]  635 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      002AC6 8F 24            [24]  636 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      002AC8 78 00            [12]  637 	mov	r0,#0x00
      002ACA 79 00            [12]  638 	mov	r1,#0x00
      002ACC                        639 00112$:
      002ACC C0 02            [24]  640 	push	ar2
      002ACE C0 03            [24]  641 	push	ar3
      002AD0 C0 04            [24]  642 	push	ar4
      002AD2 E8               [12]  643 	mov	a,r0
      002AD3 25 22            [12]  644 	add	a, _hex_to_int_sloc0_1_0
      002AD5 FA               [12]  645 	mov	r2,a
      002AD6 E9               [12]  646 	mov	a,r1
      002AD7 35 23            [12]  647 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      002AD9 FB               [12]  648 	mov	r3,a
      002ADA AC 24            [24]  649 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      002ADC 8A 82            [24]  650 	mov	dpl,r2
      002ADE 8B 83            [24]  651 	mov	dph,r3
      002AE0 8C F0            [24]  652 	mov	b,r4
      002AE2 12 47 6E         [24]  653 	lcall	__gptrget
      002AE5 F5 25            [12]  654 	mov	_hex_to_int_sloc1_1_0,a
      002AE7 D0 04            [24]  655 	pop	ar4
      002AE9 D0 03            [24]  656 	pop	ar3
      002AEB D0 02            [24]  657 	pop	ar2
      002AED E5 25            [12]  658 	mov	a,_hex_to_int_sloc1_1_0
      002AEF 70 03            [24]  659 	jnz	00166$
      002AF1 02 2C 48         [24]  660 	ljmp	00114$
      002AF4                        661 00166$:
                                    662 ;	main.c:28: int ASCII = (int)str[i];
      002AF4 C0 02            [24]  663 	push	ar2
      002AF6 C0 03            [24]  664 	push	ar3
      002AF8 C0 04            [24]  665 	push	ar4
      002AFA 85 25 26         [24]  666 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      002AFD 75 27 00         [24]  667 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      002B00 90 01 57         [24]  668 	mov	dptr,#_hex_to_int_ASCII_20000_80
      002B03 E5 26            [12]  669 	mov	a,_hex_to_int_sloc2_1_0
      002B05 F0               [24]  670 	movx	@dptr,a
      002B06 E5 27            [12]  671 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B08 A3               [24]  672 	inc	dptr
      002B09 F0               [24]  673 	movx	@dptr,a
                                    674 ;	main.c:29: result *= 16;
      002B0A 90 01 55         [24]  675 	mov	dptr,#_hex_to_int_result_10000_79
      002B0D E0               [24]  676 	movx	a,@dptr
      002B0E FB               [12]  677 	mov	r3,a
      002B0F A3               [24]  678 	inc	dptr
      002B10 E0               [24]  679 	movx	a,@dptr
      002B11 C4               [12]  680 	swap	a
      002B12 54 F0            [12]  681 	anl	a,#0xf0
      002B14 CB               [12]  682 	xch	a,r3
      002B15 C4               [12]  683 	swap	a
      002B16 CB               [12]  684 	xch	a,r3
      002B17 6B               [12]  685 	xrl	a,r3
      002B18 CB               [12]  686 	xch	a,r3
      002B19 54 F0            [12]  687 	anl	a,#0xf0
      002B1B CB               [12]  688 	xch	a,r3
      002B1C 6B               [12]  689 	xrl	a,r3
      002B1D FC               [12]  690 	mov	r4,a
      002B1E 90 01 55         [24]  691 	mov	dptr,#_hex_to_int_result_10000_79
      002B21 EB               [12]  692 	mov	a,r3
      002B22 F0               [24]  693 	movx	@dptr,a
      002B23 EC               [12]  694 	mov	a,r4
      002B24 A3               [24]  695 	inc	dptr
      002B25 F0               [24]  696 	movx	@dptr,a
                                    697 ;	main.c:30: if(ASCII >= '0' && ASCII <= '9')
      002B26 C3               [12]  698 	clr	c
      002B27 E5 26            [12]  699 	mov	a,_hex_to_int_sloc2_1_0
      002B29 94 30            [12]  700 	subb	a,#0x30
      002B2B E5 27            [12]  701 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B2D 64 80            [12]  702 	xrl	a,#0x80
      002B2F 94 80            [12]  703 	subb	a,#0x80
      002B31 D0 04            [24]  704 	pop	ar4
      002B33 D0 03            [24]  705 	pop	ar3
      002B35 D0 02            [24]  706 	pop	ar2
      002B37 40 3F            [24]  707 	jc	00109$
      002B39 74 39            [12]  708 	mov	a,#0x39
      002B3B 95 26            [12]  709 	subb	a,_hex_to_int_sloc2_1_0
      002B3D 74 80            [12]  710 	mov	a,#(0x00 ^ 0x80)
      002B3F 85 27 F0         [24]  711 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002B42 63 F0 80         [24]  712 	xrl	b,#0x80
      002B45 95 F0            [12]  713 	subb	a,b
      002B47 40 2F            [24]  714 	jc	00109$
                                    715 ;	main.c:32: result += str[i] - 48;
      002B49 C0 02            [24]  716 	push	ar2
      002B4B C0 03            [24]  717 	push	ar3
      002B4D C0 04            [24]  718 	push	ar4
      002B4F E5 26            [12]  719 	mov	a,_hex_to_int_sloc2_1_0
      002B51 24 D0            [12]  720 	add	a,#0xd0
      002B53 F5 26            [12]  721 	mov	_hex_to_int_sloc2_1_0,a
      002B55 E5 27            [12]  722 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B57 34 FF            [12]  723 	addc	a,#0xff
      002B59 F5 27            [12]  724 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002B5B 90 01 55         [24]  725 	mov	dptr,#_hex_to_int_result_10000_79
      002B5E E0               [24]  726 	movx	a,@dptr
      002B5F FA               [12]  727 	mov	r2,a
      002B60 A3               [24]  728 	inc	dptr
      002B61 E0               [24]  729 	movx	a,@dptr
      002B62 FC               [12]  730 	mov	r4,a
      002B63 90 01 55         [24]  731 	mov	dptr,#_hex_to_int_result_10000_79
      002B66 E5 26            [12]  732 	mov	a,_hex_to_int_sloc2_1_0
      002B68 2A               [12]  733 	add	a, r2
      002B69 F0               [24]  734 	movx	@dptr,a
      002B6A E5 27            [12]  735 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B6C 3C               [12]  736 	addc	a, r4
      002B6D A3               [24]  737 	inc	dptr
      002B6E F0               [24]  738 	movx	@dptr,a
      002B6F D0 04            [24]  739 	pop	ar4
      002B71 D0 03            [24]  740 	pop	ar3
      002B73 D0 02            [24]  741 	pop	ar2
      002B75 02 2C 40         [24]  742 	ljmp	00110$
      002B78                        743 00109$:
                                    744 ;	main.c:34: else if(ASCII >= 'A' && ASCII <= 'F')
      002B78 90 01 57         [24]  745 	mov	dptr,#_hex_to_int_ASCII_20000_80
      002B7B E0               [24]  746 	movx	a,@dptr
      002B7C F5 26            [12]  747 	mov	_hex_to_int_sloc2_1_0,a
      002B7E A3               [24]  748 	inc	dptr
      002B7F E0               [24]  749 	movx	a,@dptr
      002B80 F5 27            [12]  750 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002B82 C3               [12]  751 	clr	c
      002B83 E5 26            [12]  752 	mov	a,_hex_to_int_sloc2_1_0
      002B85 94 41            [12]  753 	subb	a,#0x41
      002B87 E5 27            [12]  754 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B89 64 80            [12]  755 	xrl	a,#0x80
      002B8B 94 80            [12]  756 	subb	a,#0x80
      002B8D 40 4E            [24]  757 	jc	00105$
      002B8F 74 46            [12]  758 	mov	a,#0x46
      002B91 95 26            [12]  759 	subb	a,_hex_to_int_sloc2_1_0
      002B93 74 80            [12]  760 	mov	a,#(0x00 ^ 0x80)
      002B95 85 27 F0         [24]  761 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002B98 63 F0 80         [24]  762 	xrl	b,#0x80
      002B9B 95 F0            [12]  763 	subb	a,b
      002B9D 40 3E            [24]  764 	jc	00105$
                                    765 ;	main.c:36: result += str[i] - 55;
      002B9F C0 05            [24]  766 	push	ar5
      002BA1 C0 06            [24]  767 	push	ar6
      002BA3 C0 07            [24]  768 	push	ar7
      002BA5 E8               [12]  769 	mov	a,r0
      002BA6 2A               [12]  770 	add	a, r2
      002BA7 FD               [12]  771 	mov	r5,a
      002BA8 E9               [12]  772 	mov	a,r1
      002BA9 3B               [12]  773 	addc	a, r3
      002BAA FE               [12]  774 	mov	r6,a
      002BAB 8C 07            [24]  775 	mov	ar7,r4
      002BAD 8D 82            [24]  776 	mov	dpl,r5
      002BAF 8E 83            [24]  777 	mov	dph,r6
      002BB1 8F F0            [24]  778 	mov	b,r7
      002BB3 12 47 6E         [24]  779 	lcall	__gptrget
      002BB6 7F 00            [12]  780 	mov	r7,#0x00
      002BB8 24 C9            [12]  781 	add	a,#0xc9
      002BBA F5 26            [12]  782 	mov	_hex_to_int_sloc2_1_0,a
      002BBC EF               [12]  783 	mov	a,r7
      002BBD 34 FF            [12]  784 	addc	a,#0xff
      002BBF F5 27            [12]  785 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002BC1 90 01 55         [24]  786 	mov	dptr,#_hex_to_int_result_10000_79
      002BC4 E0               [24]  787 	movx	a,@dptr
      002BC5 FE               [12]  788 	mov	r6,a
      002BC6 A3               [24]  789 	inc	dptr
      002BC7 E0               [24]  790 	movx	a,@dptr
      002BC8 FF               [12]  791 	mov	r7,a
      002BC9 90 01 55         [24]  792 	mov	dptr,#_hex_to_int_result_10000_79
      002BCC E5 26            [12]  793 	mov	a,_hex_to_int_sloc2_1_0
      002BCE 2E               [12]  794 	add	a, r6
      002BCF F0               [24]  795 	movx	@dptr,a
      002BD0 E5 27            [12]  796 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BD2 3F               [12]  797 	addc	a, r7
      002BD3 A3               [24]  798 	inc	dptr
      002BD4 F0               [24]  799 	movx	@dptr,a
      002BD5 D0 07            [24]  800 	pop	ar7
      002BD7 D0 06            [24]  801 	pop	ar6
      002BD9 D0 05            [24]  802 	pop	ar5
      002BDB 80 63            [24]  803 	sjmp	00110$
      002BDD                        804 00105$:
                                    805 ;	main.c:38: else if(ASCII >= 'a' && ASCII <= 'f')
      002BDD 90 01 57         [24]  806 	mov	dptr,#_hex_to_int_ASCII_20000_80
      002BE0 E0               [24]  807 	movx	a,@dptr
      002BE1 F5 26            [12]  808 	mov	_hex_to_int_sloc2_1_0,a
      002BE3 A3               [24]  809 	inc	dptr
      002BE4 E0               [24]  810 	movx	a,@dptr
      002BE5 F5 27            [12]  811 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002BE7 C3               [12]  812 	clr	c
      002BE8 E5 26            [12]  813 	mov	a,_hex_to_int_sloc2_1_0
      002BEA 94 61            [12]  814 	subb	a,#0x61
      002BEC E5 27            [12]  815 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BEE 64 80            [12]  816 	xrl	a,#0x80
      002BF0 94 80            [12]  817 	subb	a,#0x80
      002BF2 40 4C            [24]  818 	jc	00110$
      002BF4 74 66            [12]  819 	mov	a,#0x66
      002BF6 95 26            [12]  820 	subb	a,_hex_to_int_sloc2_1_0
      002BF8 74 80            [12]  821 	mov	a,#(0x00 ^ 0x80)
      002BFA 85 27 F0         [24]  822 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002BFD 63 F0 80         [24]  823 	xrl	b,#0x80
      002C00 95 F0            [12]  824 	subb	a,b
      002C02 40 3C            [24]  825 	jc	00110$
                                    826 ;	main.c:40: result += str[i] - 87;
      002C04 C0 02            [24]  827 	push	ar2
      002C06 C0 03            [24]  828 	push	ar3
      002C08 C0 04            [24]  829 	push	ar4
      002C0A E8               [12]  830 	mov	a,r0
      002C0B 2D               [12]  831 	add	a, r5
      002C0C FA               [12]  832 	mov	r2,a
      002C0D E9               [12]  833 	mov	a,r1
      002C0E 3E               [12]  834 	addc	a, r6
      002C0F FB               [12]  835 	mov	r3,a
      002C10 8F 04            [24]  836 	mov	ar4,r7
      002C12 8A 82            [24]  837 	mov	dpl,r2
      002C14 8B 83            [24]  838 	mov	dph,r3
      002C16 8C F0            [24]  839 	mov	b,r4
      002C18 12 47 6E         [24]  840 	lcall	__gptrget
      002C1B 7C 00            [12]  841 	mov	r4,#0x00
      002C1D 24 A9            [12]  842 	add	a,#0xa9
      002C1F F5 26            [12]  843 	mov	_hex_to_int_sloc2_1_0,a
      002C21 EC               [12]  844 	mov	a,r4
      002C22 34 FF            [12]  845 	addc	a,#0xff
      002C24 F5 27            [12]  846 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C26 90 01 55         [24]  847 	mov	dptr,#_hex_to_int_result_10000_79
      002C29 E0               [24]  848 	movx	a,@dptr
      002C2A FB               [12]  849 	mov	r3,a
      002C2B A3               [24]  850 	inc	dptr
      002C2C E0               [24]  851 	movx	a,@dptr
      002C2D FC               [12]  852 	mov	r4,a
      002C2E 90 01 55         [24]  853 	mov	dptr,#_hex_to_int_result_10000_79
      002C31 E5 26            [12]  854 	mov	a,_hex_to_int_sloc2_1_0
      002C33 2B               [12]  855 	add	a, r3
      002C34 F0               [24]  856 	movx	@dptr,a
      002C35 E5 27            [12]  857 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C37 3C               [12]  858 	addc	a, r4
      002C38 A3               [24]  859 	inc	dptr
      002C39 F0               [24]  860 	movx	@dptr,a
                                    861 ;	main.c:44: return result;
      002C3A D0 04            [24]  862 	pop	ar4
      002C3C D0 03            [24]  863 	pop	ar3
      002C3E D0 02            [24]  864 	pop	ar2
                                    865 ;	main.c:40: result += str[i] - 87;
      002C40                        866 00110$:
                                    867 ;	main.c:42: i++;
      002C40 08               [12]  868 	inc	r0
      002C41 B8 00 01         [24]  869 	cjne	r0,#0x00,00173$
      002C44 09               [12]  870 	inc	r1
      002C45                        871 00173$:
      002C45 02 2A CC         [24]  872 	ljmp	00112$
      002C48                        873 00114$:
                                    874 ;	main.c:44: return result;
      002C48 90 01 55         [24]  875 	mov	dptr,#_hex_to_int_result_10000_79
      002C4B E0               [24]  876 	movx	a,@dptr
      002C4C FE               [12]  877 	mov	r6,a
      002C4D A3               [24]  878 	inc	dptr
      002C4E E0               [24]  879 	movx	a,@dptr
                                    880 ;	main.c:46: }
      002C4F 8E 82            [24]  881 	mov	dpl,r6
      002C51 F5 83            [12]  882 	mov	dph,a
      002C53 22               [24]  883 	ret
                                    884 ;------------------------------------------------------------
                                    885 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    886 ;------------------------------------------------------------
                                    887 ;i                         Allocated with name '_get_user_buffer_size_i_10000_85'
                                    888 ;output                    Allocated with name '_get_user_buffer_size_output_10000_85'
                                    889 ;input                     Allocated with name '_get_user_buffer_size_input_10000_85'
                                    890 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_85'
                                    891 ;------------------------------------------------------------
                                    892 ;	main.c:49: int get_user_buffer_size(void)
                                    893 ;	-----------------------------------------
                                    894 ;	 function get_user_buffer_size
                                    895 ;	-----------------------------------------
      002C54                        896 _get_user_buffer_size:
                                    897 ;	main.c:55: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      002C54 7E 00            [12]  898 	mov	r6,#0x00
      002C56 7F 00            [12]  899 	mov	r7,#0x00
      002C58                        900 00103$:
      002C58 C0 07            [24]  901 	push	ar7
      002C5A C0 06            [24]  902 	push	ar6
      002C5C 12 3B 36         [24]  903 	lcall	_getchar
      002C5F AC 82            [24]  904 	mov	r4, dpl
      002C61 D0 06            [24]  905 	pop	ar6
      002C63 D0 07            [24]  906 	pop	ar7
      002C65 BC 0A 02         [24]  907 	cjne	r4,#0x0a,00133$
      002C68 80 3A            [24]  908 	sjmp	00105$
      002C6A                        909 00133$:
      002C6A BC 0D 02         [24]  910 	cjne	r4,#0x0d,00134$
      002C6D 80 35            [24]  911 	sjmp	00105$
      002C6F                        912 00134$:
      002C6F C3               [12]  913 	clr	c
      002C70 EE               [12]  914 	mov	a,r6
      002C71 94 09            [12]  915 	subb	a,#0x09
      002C73 EF               [12]  916 	mov	a,r7
      002C74 64 80            [12]  917 	xrl	a,#0x80
      002C76 94 80            [12]  918 	subb	a,#0x80
      002C78 50 2A            [24]  919 	jnc	00105$
                                    920 ;	main.c:57: putchar(ch);
      002C7A 8C 03            [24]  921 	mov	ar3,r4
      002C7C 7D 00            [12]  922 	mov	r5,#0x00
      002C7E 8B 82            [24]  923 	mov	dpl, r3
      002C80 8D 83            [24]  924 	mov	dph, r5
      002C82 C0 07            [24]  925 	push	ar7
      002C84 C0 06            [24]  926 	push	ar6
      002C86 C0 04            [24]  927 	push	ar4
      002C88 12 3B 17         [24]  928 	lcall	_putchar
      002C8B D0 04            [24]  929 	pop	ar4
      002C8D D0 06            [24]  930 	pop	ar6
      002C8F D0 07            [24]  931 	pop	ar7
                                    932 ;	main.c:58: input[i] = ch;      //Append the input array with the received character
      002C91 EE               [12]  933 	mov	a,r6
      002C92 24 59            [12]  934 	add	a, #_get_user_buffer_size_input_10000_85
      002C94 F5 82            [12]  935 	mov	dpl,a
      002C96 EF               [12]  936 	mov	a,r7
      002C97 34 01            [12]  937 	addc	a, #(_get_user_buffer_size_input_10000_85 >> 8)
      002C99 F5 83            [12]  938 	mov	dph,a
      002C9B EC               [12]  939 	mov	a,r4
      002C9C F0               [24]  940 	movx	@dptr,a
                                    941 ;	main.c:59: i++;
      002C9D 0E               [12]  942 	inc	r6
      002C9E BE 00 B7         [24]  943 	cjne	r6,#0x00,00103$
      002CA1 0F               [12]  944 	inc	r7
      002CA2 80 B4            [24]  945 	sjmp	00103$
      002CA4                        946 00105$:
                                    947 ;	main.c:61: input[i] = '\0';
      002CA4 EE               [12]  948 	mov	a,r6
      002CA5 24 59            [12]  949 	add	a, #_get_user_buffer_size_input_10000_85
      002CA7 F5 82            [12]  950 	mov	dpl,a
      002CA9 EF               [12]  951 	mov	a,r7
      002CAA 34 01            [12]  952 	addc	a, #(_get_user_buffer_size_input_10000_85 >> 8)
      002CAC F5 83            [12]  953 	mov	dph,a
      002CAE E4               [12]  954 	clr	a
      002CAF F0               [24]  955 	movx	@dptr,a
                                    956 ;	main.c:62: output = hex_to_int(input); //Convert the char hex data to int
      002CB0 90 01 59         [24]  957 	mov	dptr,#_get_user_buffer_size_input_10000_85
      002CB3 F5 F0            [12]  958 	mov	b,a
      002CB5 12 2A 9A         [24]  959 	lcall	_hex_to_int
      002CB8 AE 82            [24]  960 	mov	r6, dpl
      002CBA AF 83            [24]  961 	mov	r7, dph
                                    962 ;	main.c:63: printf_tiny("\n\r");
      002CBC C0 07            [24]  963 	push	ar7
      002CBE C0 06            [24]  964 	push	ar6
      002CC0 74 32            [12]  965 	mov	a,#___str_0
      002CC2 C0 E0            [24]  966 	push	acc
      002CC4 74 49            [12]  967 	mov	a,#(___str_0 >> 8)
      002CC6 C0 E0            [24]  968 	push	acc
      002CC8 12 3B D5         [24]  969 	lcall	_printf_tiny
      002CCB 15 81            [12]  970 	dec	sp
      002CCD 15 81            [12]  971 	dec	sp
      002CCF D0 06            [24]  972 	pop	ar6
      002CD1 D0 07            [24]  973 	pop	ar7
                                    974 ;	main.c:65: return output;
      002CD3 8E 82            [24]  975 	mov	dpl, r6
      002CD5 8F 83            [24]  976 	mov	dph, r7
                                    977 ;	main.c:66: }
      002CD7 22               [24]  978 	ret
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'main'
                                    981 ;------------------------------------------------------------
                                    982 ;c                         Allocated with name '_main_c_20001_90'
                                    983 ;reg_bank                  Allocated with name '_main_reg_bank_40002_93'
                                    984 ;addr                      Allocated with name '_main_addr_40003_94'
                                    985 ;data                      Allocated with name '_main_data_40004_95'
                                    986 ;num_bytes                 Allocated with name '_main_num_bytes_40002_97'
                                    987 ;start_address             Allocated with name '_main_start_address_40003_98'
                                    988 ;buffer                    Allocated with name '_main_buffer_40003_98'
                                    989 ;i                         Allocated with name '_main_i_50003_99'
                                    990 ;num_bytes                 Allocated with name '_main_num_bytes_40002_102'
                                    991 ;start_address             Allocated with name '_main_start_address_40003_103'
                                    992 ;buffer                    Allocated with name '_main_buffer_40003_103'
                                    993 ;reg_bank                  Allocated with name '_main_reg_bank_40002_105'
                                    994 ;addr                      Allocated with name '_main_addr_40003_106'
                                    995 ;data                      Allocated with name '_main_data_40003_106'
                                    996 ;addr                      Allocated with name '_main_addr_40002_108'
                                    997 ;data                      Allocated with name '_main_data_40003_109'
                                    998 ;addr                      Allocated with name '_main_addr_40002_111'
                                    999 ;data                      Allocated with name '_main_data_40002_111'
                                   1000 ;addr                      Allocated with name '_main_addr_40002_114'
                                   1001 ;bank                      Allocated with name '_main_bank_40003_115'
                                   1002 ;data                      Allocated with name '_main_data_40003_115'
                                   1003 ;i                         Allocated with name '_main_i_50001_120'
                                   1004 ;------------------------------------------------------------
                                   1005 ;	main.c:68: void main(void)
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function main
                                   1008 ;	-----------------------------------------
      002CD8                       1009 _main:
                                   1010 ;	main.c:71: printf("SPI Operations on 8051\n\r");
      002CD8 74 35            [12] 1011 	mov	a,#___str_1
      002CDA C0 E0            [24] 1012 	push	acc
      002CDC 74 49            [12] 1013 	mov	a,#(___str_1 >> 8)
      002CDE C0 E0            [24] 1014 	push	acc
      002CE0 74 80            [12] 1015 	mov	a,#0x80
      002CE2 C0 E0            [24] 1016 	push	acc
      002CE4 12 3D 4C         [24] 1017 	lcall	_printf
      002CE7 15 81            [12] 1018 	dec	sp
      002CE9 15 81            [12] 1019 	dec	sp
      002CEB 15 81            [12] 1020 	dec	sp
                                   1021 ;	main.c:72: configure_SPI();
      002CED 12 34 4B         [24] 1022 	lcall	_configure_SPI
                                   1023 ;	main.c:74: enc_init(device_mac);
      002CF0 90 03 C8         [24] 1024 	mov	dptr,#_device_mac
      002CF3 75 F0 00         [24] 1025 	mov	b, #0x00
      002CF6 12 26 B7         [24] 1026 	lcall	_enc_init
                                   1027 ;	main.c:76: while(1)
      002CF9                       1028 00118$:
                                   1029 ;	main.c:78: printf("\n\rChoose an action: \n\r");
      002CF9 74 4E            [12] 1030 	mov	a,#___str_2
      002CFB C0 E0            [24] 1031 	push	acc
      002CFD 74 49            [12] 1032 	mov	a,#(___str_2 >> 8)
      002CFF C0 E0            [24] 1033 	push	acc
      002D01 74 80            [12] 1034 	mov	a,#0x80
      002D03 C0 E0            [24] 1035 	push	acc
      002D05 12 3D 4C         [24] 1036 	lcall	_printf
      002D08 15 81            [12] 1037 	dec	sp
      002D0A 15 81            [12] 1038 	dec	sp
      002D0C 15 81            [12] 1039 	dec	sp
                                   1040 ;	main.c:79: printf("1 --> Control Write\n\r");
      002D0E 74 65            [12] 1041 	mov	a,#___str_3
      002D10 C0 E0            [24] 1042 	push	acc
      002D12 74 49            [12] 1043 	mov	a,#(___str_3 >> 8)
      002D14 C0 E0            [24] 1044 	push	acc
      002D16 74 80            [12] 1045 	mov	a,#0x80
      002D18 C0 E0            [24] 1046 	push	acc
      002D1A 12 3D 4C         [24] 1047 	lcall	_printf
      002D1D 15 81            [12] 1048 	dec	sp
      002D1F 15 81            [12] 1049 	dec	sp
      002D21 15 81            [12] 1050 	dec	sp
                                   1051 ;	main.c:80: printf("2 --> Buffer Write\n\r");
      002D23 74 7B            [12] 1052 	mov	a,#___str_4
      002D25 C0 E0            [24] 1053 	push	acc
      002D27 74 49            [12] 1054 	mov	a,#(___str_4 >> 8)
      002D29 C0 E0            [24] 1055 	push	acc
      002D2B 74 80            [12] 1056 	mov	a,#0x80
      002D2D C0 E0            [24] 1057 	push	acc
      002D2F 12 3D 4C         [24] 1058 	lcall	_printf
      002D32 15 81            [12] 1059 	dec	sp
      002D34 15 81            [12] 1060 	dec	sp
      002D36 15 81            [12] 1061 	dec	sp
                                   1062 ;	main.c:81: printf("3 --> Buffer Read\n\r");
      002D38 74 90            [12] 1063 	mov	a,#___str_5
      002D3A C0 E0            [24] 1064 	push	acc
      002D3C 74 49            [12] 1065 	mov	a,#(___str_5 >> 8)
      002D3E C0 E0            [24] 1066 	push	acc
      002D40 74 80            [12] 1067 	mov	a,#0x80
      002D42 C0 E0            [24] 1068 	push	acc
      002D44 12 3D 4C         [24] 1069 	lcall	_printf
      002D47 15 81            [12] 1070 	dec	sp
      002D49 15 81            [12] 1071 	dec	sp
      002D4B 15 81            [12] 1072 	dec	sp
                                   1073 ;	main.c:82: printf("4 --> MAC Register Read\n\r");
      002D4D 74 A4            [12] 1074 	mov	a,#___str_6
      002D4F C0 E0            [24] 1075 	push	acc
      002D51 74 49            [12] 1076 	mov	a,#(___str_6 >> 8)
      002D53 C0 E0            [24] 1077 	push	acc
      002D55 74 80            [12] 1078 	mov	a,#0x80
      002D57 C0 E0            [24] 1079 	push	acc
      002D59 12 3D 4C         [24] 1080 	lcall	_printf
      002D5C 15 81            [12] 1081 	dec	sp
      002D5E 15 81            [12] 1082 	dec	sp
      002D60 15 81            [12] 1083 	dec	sp
                                   1084 ;	main.c:83: printf("5 --> PHY SPI Write\n\r");
      002D62 74 BE            [12] 1085 	mov	a,#___str_7
      002D64 C0 E0            [24] 1086 	push	acc
      002D66 74 49            [12] 1087 	mov	a,#(___str_7 >> 8)
      002D68 C0 E0            [24] 1088 	push	acc
      002D6A 74 80            [12] 1089 	mov	a,#0x80
      002D6C C0 E0            [24] 1090 	push	acc
      002D6E 12 3D 4C         [24] 1091 	lcall	_printf
      002D71 15 81            [12] 1092 	dec	sp
      002D73 15 81            [12] 1093 	dec	sp
      002D75 15 81            [12] 1094 	dec	sp
                                   1095 ;	main.c:84: printf("6 --> PHY SPI Read\n\r");
      002D77 74 D4            [12] 1096 	mov	a,#___str_8
      002D79 C0 E0            [24] 1097 	push	acc
      002D7B 74 49            [12] 1098 	mov	a,#(___str_8 >> 8)
      002D7D C0 E0            [24] 1099 	push	acc
      002D7F 74 80            [12] 1100 	mov	a,#0x80
      002D81 C0 E0            [24] 1101 	push	acc
      002D83 12 3D 4C         [24] 1102 	lcall	_printf
      002D86 15 81            [12] 1103 	dec	sp
      002D88 15 81            [12] 1104 	dec	sp
      002D8A 15 81            [12] 1105 	dec	sp
                                   1106 ;	main.c:85: printf("7 --> ENC Reset\n\r");
      002D8C 74 E9            [12] 1107 	mov	a,#___str_9
      002D8E C0 E0            [24] 1108 	push	acc
      002D90 74 49            [12] 1109 	mov	a,#(___str_9 >> 8)
      002D92 C0 E0            [24] 1110 	push	acc
      002D94 74 80            [12] 1111 	mov	a,#0x80
      002D96 C0 E0            [24] 1112 	push	acc
      002D98 12 3D 4C         [24] 1113 	lcall	_printf
      002D9B 15 81            [12] 1114 	dec	sp
      002D9D 15 81            [12] 1115 	dec	sp
      002D9F 15 81            [12] 1116 	dec	sp
                                   1117 ;	main.c:86: printf("8 --> Read ETH Register\n\r");
      002DA1 74 FB            [12] 1118 	mov	a,#___str_10
      002DA3 C0 E0            [24] 1119 	push	acc
      002DA5 74 49            [12] 1120 	mov	a,#(___str_10 >> 8)
      002DA7 C0 E0            [24] 1121 	push	acc
      002DA9 74 80            [12] 1122 	mov	a,#0x80
      002DAB C0 E0            [24] 1123 	push	acc
      002DAD 12 3D 4C         [24] 1124 	lcall	_printf
      002DB0 15 81            [12] 1125 	dec	sp
      002DB2 15 81            [12] 1126 	dec	sp
      002DB4 15 81            [12] 1127 	dec	sp
                                   1128 ;	main.c:87: printf("9 --> Display Menu\n\r");
      002DB6 74 15            [12] 1129 	mov	a,#___str_11
      002DB8 C0 E0            [24] 1130 	push	acc
      002DBA 74 4A            [12] 1131 	mov	a,#(___str_11 >> 8)
      002DBC C0 E0            [24] 1132 	push	acc
      002DBE 74 80            [12] 1133 	mov	a,#0x80
      002DC0 C0 E0            [24] 1134 	push	acc
      002DC2 12 3D 4C         [24] 1135 	lcall	_printf
      002DC5 15 81            [12] 1136 	dec	sp
      002DC7 15 81            [12] 1137 	dec	sp
      002DC9 15 81            [12] 1138 	dec	sp
                                   1139 ;	main.c:88: printf("A --> Send ARP Request\n\r");
      002DCB 74 2A            [12] 1140 	mov	a,#___str_12
      002DCD C0 E0            [24] 1141 	push	acc
      002DCF 74 4A            [12] 1142 	mov	a,#(___str_12 >> 8)
      002DD1 C0 E0            [24] 1143 	push	acc
      002DD3 74 80            [12] 1144 	mov	a,#0x80
      002DD5 C0 E0            [24] 1145 	push	acc
      002DD7 12 3D 4C         [24] 1146 	lcall	_printf
      002DDA 15 81            [12] 1147 	dec	sp
      002DDC 15 81            [12] 1148 	dec	sp
      002DDE 15 81            [12] 1149 	dec	sp
                                   1150 ;	main.c:89: printf("B --> Init RX buffers\n\r");
      002DE0 74 43            [12] 1151 	mov	a,#___str_13
      002DE2 C0 E0            [24] 1152 	push	acc
      002DE4 74 4A            [12] 1153 	mov	a,#(___str_13 >> 8)
      002DE6 C0 E0            [24] 1154 	push	acc
      002DE8 74 80            [12] 1155 	mov	a,#0x80
      002DEA C0 E0            [24] 1156 	push	acc
      002DEC 12 3D 4C         [24] 1157 	lcall	_printf
      002DEF 15 81            [12] 1158 	dec	sp
      002DF1 15 81            [12] 1159 	dec	sp
      002DF3 15 81            [12] 1160 	dec	sp
                                   1161 ;	main.c:90: printf("C --> Hard Reset(nRESET pin)\n\r");
      002DF5 74 5B            [12] 1162 	mov	a,#___str_14
      002DF7 C0 E0            [24] 1163 	push	acc
      002DF9 74 4A            [12] 1164 	mov	a,#(___str_14 >> 8)
      002DFB C0 E0            [24] 1165 	push	acc
      002DFD 74 80            [12] 1166 	mov	a,#0x80
      002DFF C0 E0            [24] 1167 	push	acc
      002E01 12 3D 4C         [24] 1168 	lcall	_printf
      002E04 15 81            [12] 1169 	dec	sp
      002E06 15 81            [12] 1170 	dec	sp
      002E08 15 81            [12] 1171 	dec	sp
                                   1172 ;	main.c:92: char c = getchar();
      002E0A 12 3B 36         [24] 1173 	lcall	_getchar
      002E0D AE 82            [24] 1174 	mov	r6, dpl
                                   1175 ;	main.c:93: putchar(c);
      002E0F 8E 05            [24] 1176 	mov	ar5,r6
      002E11 7F 00            [12] 1177 	mov	r7,#0x00
      002E13 8D 82            [24] 1178 	mov	dpl, r5
      002E15 8F 83            [24] 1179 	mov	dph, r7
      002E17 C0 06            [24] 1180 	push	ar6
      002E19 12 3B 17         [24] 1181 	lcall	_putchar
                                   1182 ;	main.c:94: printf("\n\r");
      002E1C 74 32            [12] 1183 	mov	a,#___str_0
      002E1E C0 E0            [24] 1184 	push	acc
      002E20 74 49            [12] 1185 	mov	a,#(___str_0 >> 8)
      002E22 C0 E0            [24] 1186 	push	acc
      002E24 74 80            [12] 1187 	mov	a,#0x80
      002E26 C0 E0            [24] 1188 	push	acc
      002E28 12 3D 4C         [24] 1189 	lcall	_printf
      002E2B 15 81            [12] 1190 	dec	sp
      002E2D 15 81            [12] 1191 	dec	sp
      002E2F 15 81            [12] 1192 	dec	sp
      002E31 D0 06            [24] 1193 	pop	ar6
                                   1194 ;	main.c:96: switch(c)
      002E33 BE 31 00         [24] 1195 	cjne	r6,#0x31,00172$
      002E36                       1196 00172$:
      002E36 50 03            [24] 1197 	jnc	00173$
      002E38 02 32 BC         [24] 1198 	ljmp	00115$
      002E3B                       1199 00173$:
      002E3B EE               [12] 1200 	mov	a,r6
      002E3C 24 BC            [12] 1201 	add	a,#0xff - 0x43
      002E3E 50 03            [24] 1202 	jnc	00174$
      002E40 02 32 BC         [24] 1203 	ljmp	00115$
      002E43                       1204 00174$:
      002E43 EE               [12] 1205 	mov	a,r6
      002E44 24 CF            [12] 1206 	add	a,#0xcf
      002E46 FE               [12] 1207 	mov	r6,a
      002E47 24 0A            [12] 1208 	add	a,#(00175$-3-.)
      002E49 83               [24] 1209 	movc	a,@a+pc
      002E4A F5 82            [12] 1210 	mov	dpl,a
      002E4C EE               [12] 1211 	mov	a,r6
      002E4D 24 17            [12] 1212 	add	a,#(00176$-3-.)
      002E4F 83               [24] 1213 	movc	a,@a+pc
      002E50 F5 83            [12] 1214 	mov	dph,a
      002E52 E4               [12] 1215 	clr	a
      002E53 73               [24] 1216 	jmp	@a+dptr
      002E54                       1217 00175$:
      002E54 7A                    1218 	.db	00101$
      002E55 E2                    1219 	.db	00102$
      002E56 E0                    1220 	.db	00104$
      002E57 3F                    1221 	.db	00105$
      002E58 A1                    1222 	.db	00106$
      002E59 0C                    1223 	.db	00107$
      002E5A 47                    1224 	.db	00108$
      002E5B 62                    1225 	.db	00109$
      002E5C C4                    1226 	.db	00110$
      002E5D BC                    1227 	.db	00115$
      002E5E BC                    1228 	.db	00115$
      002E5F BC                    1229 	.db	00115$
      002E60 BC                    1230 	.db	00115$
      002E61 BC                    1231 	.db	00115$
      002E62 BC                    1232 	.db	00115$
      002E63 BC                    1233 	.db	00115$
      002E64 84                    1234 	.db	00111$
      002E65 F9                    1235 	.db	00118$
      002E66 8A                    1236 	.db	00113$
      002E67                       1237 00176$:
      002E67 2E                    1238 	.db	00101$>>8
      002E68 2E                    1239 	.db	00102$>>8
      002E69 2F                    1240 	.db	00104$>>8
      002E6A 30                    1241 	.db	00105$>>8
      002E6B 30                    1242 	.db	00106$>>8
      002E6C 31                    1243 	.db	00107$>>8
      002E6D 31                    1244 	.db	00108$>>8
      002E6E 31                    1245 	.db	00109$>>8
      002E6F 31                    1246 	.db	00110$>>8
      002E70 32                    1247 	.db	00115$>>8
      002E71 32                    1248 	.db	00115$>>8
      002E72 32                    1249 	.db	00115$>>8
      002E73 32                    1250 	.db	00115$>>8
      002E74 32                    1251 	.db	00115$>>8
      002E75 32                    1252 	.db	00115$>>8
      002E76 32                    1253 	.db	00115$>>8
      002E77 32                    1254 	.db	00111$>>8
      002E78 2C                    1255 	.db	00118$>>8
      002E79 32                    1256 	.db	00113$>>8
                                   1257 ;	main.c:98: case '1': {
      002E7A                       1258 00101$:
                                   1259 ;	main.c:99: printf("Enter the register bank to select:\n\r");
      002E7A 74 7A            [12] 1260 	mov	a,#___str_15
      002E7C C0 E0            [24] 1261 	push	acc
      002E7E 74 4A            [12] 1262 	mov	a,#(___str_15 >> 8)
      002E80 C0 E0            [24] 1263 	push	acc
      002E82 74 80            [12] 1264 	mov	a,#0x80
      002E84 C0 E0            [24] 1265 	push	acc
      002E86 12 3D 4C         [24] 1266 	lcall	_printf
      002E89 15 81            [12] 1267 	dec	sp
      002E8B 15 81            [12] 1268 	dec	sp
      002E8D 15 81            [12] 1269 	dec	sp
                                   1270 ;	main.c:100: uint8_t reg_bank = get_user_buffer_size();
      002E8F 12 2C 54         [24] 1271 	lcall	_get_user_buffer_size
      002E92 AE 82            [24] 1272 	mov	r6, dpl
                                   1273 ;	main.c:101: printf("Enter the address of the Control Register:\n\r");
      002E94 C0 06            [24] 1274 	push	ar6
      002E96 74 9F            [12] 1275 	mov	a,#___str_16
      002E98 C0 E0            [24] 1276 	push	acc
      002E9A 74 4A            [12] 1277 	mov	a,#(___str_16 >> 8)
      002E9C C0 E0            [24] 1278 	push	acc
      002E9E 74 80            [12] 1279 	mov	a,#0x80
      002EA0 C0 E0            [24] 1280 	push	acc
      002EA2 12 3D 4C         [24] 1281 	lcall	_printf
      002EA5 15 81            [12] 1282 	dec	sp
      002EA7 15 81            [12] 1283 	dec	sp
      002EA9 15 81            [12] 1284 	dec	sp
                                   1285 ;	main.c:102: uint8_t addr = get_user_buffer_size();
      002EAB 12 2C 54         [24] 1286 	lcall	_get_user_buffer_size
      002EAE AD 82            [24] 1287 	mov	r5, dpl
                                   1288 ;	main.c:103: printf("Enter the data you want to write:\n\r");
      002EB0 C0 05            [24] 1289 	push	ar5
      002EB2 74 CC            [12] 1290 	mov	a,#___str_17
      002EB4 C0 E0            [24] 1291 	push	acc
      002EB6 74 4A            [12] 1292 	mov	a,#(___str_17 >> 8)
      002EB8 C0 E0            [24] 1293 	push	acc
      002EBA 74 80            [12] 1294 	mov	a,#0x80
      002EBC C0 E0            [24] 1295 	push	acc
      002EBE 12 3D 4C         [24] 1296 	lcall	_printf
      002EC1 15 81            [12] 1297 	dec	sp
      002EC3 15 81            [12] 1298 	dec	sp
      002EC5 15 81            [12] 1299 	dec	sp
                                   1300 ;	main.c:104: uint8_t data = get_user_buffer_size();
      002EC7 12 2C 54         [24] 1301 	lcall	_get_user_buffer_size
      002ECA AC 82            [24] 1302 	mov	r4, dpl
      002ECC D0 05            [24] 1303 	pop	ar5
      002ECE D0 06            [24] 1304 	pop	ar6
                                   1305 ;	main.c:105: spi_control_write(reg_bank, addr, data);
      002ED0 90 03 66         [24] 1306 	mov	dptr,#_spi_control_write_PARM_2
      002ED3 ED               [12] 1307 	mov	a,r5
      002ED4 F0               [24] 1308 	movx	@dptr,a
      002ED5 90 03 67         [24] 1309 	mov	dptr,#_spi_control_write_PARM_3
      002ED8 EC               [12] 1310 	mov	a,r4
      002ED9 F0               [24] 1311 	movx	@dptr,a
      002EDA 8E 82            [24] 1312 	mov	dpl, r6
      002EDC 12 33 EF         [24] 1313 	lcall	_spi_control_write
                                   1314 ;	main.c:106: break;
      002EDF 02 2C F9         [24] 1315 	ljmp	00118$
                                   1316 ;	main.c:108: case '2': {
      002EE2                       1317 00102$:
                                   1318 ;	main.c:109: printf("Enter the number of bytes to write:\n\r");
      002EE2 74 F0            [12] 1319 	mov	a,#___str_18
      002EE4 C0 E0            [24] 1320 	push	acc
      002EE6 74 4A            [12] 1321 	mov	a,#(___str_18 >> 8)
      002EE8 C0 E0            [24] 1322 	push	acc
      002EEA 74 80            [12] 1323 	mov	a,#0x80
      002EEC C0 E0            [24] 1324 	push	acc
      002EEE 12 3D 4C         [24] 1325 	lcall	_printf
      002EF1 15 81            [12] 1326 	dec	sp
      002EF3 15 81            [12] 1327 	dec	sp
      002EF5 15 81            [12] 1328 	dec	sp
                                   1329 ;	main.c:110: int num_bytes = get_user_buffer_size();
      002EF7 12 2C 54         [24] 1330 	lcall	_get_user_buffer_size
      002EFA AE 82            [24] 1331 	mov	r6, dpl
      002EFC AF 83            [24] 1332 	mov	r7, dph
                                   1333 ;	main.c:111: printf("Enter the starting address:\n\r");
      002EFE C0 07            [24] 1334 	push	ar7
      002F00 C0 06            [24] 1335 	push	ar6
      002F02 74 16            [12] 1336 	mov	a,#___str_19
      002F04 C0 E0            [24] 1337 	push	acc
      002F06 74 4B            [12] 1338 	mov	a,#(___str_19 >> 8)
      002F08 C0 E0            [24] 1339 	push	acc
      002F0A 74 80            [12] 1340 	mov	a,#0x80
      002F0C C0 E0            [24] 1341 	push	acc
      002F0E 12 3D 4C         [24] 1342 	lcall	_printf
      002F11 15 81            [12] 1343 	dec	sp
      002F13 15 81            [12] 1344 	dec	sp
      002F15 15 81            [12] 1345 	dec	sp
                                   1346 ;	main.c:112: uint16_t start_address = get_user_buffer_size();
      002F17 12 2C 54         [24] 1347 	lcall	_get_user_buffer_size
      002F1A AC 82            [24] 1348 	mov	r4, dpl
      002F1C AD 83            [24] 1349 	mov	r5, dph
      002F1E D0 06            [24] 1350 	pop	ar6
      002F20 D0 07            [24] 1351 	pop	ar7
                                   1352 ;	main.c:114: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      002F22 C0 07            [24] 1353 	push	ar7
      002F24 C0 06            [24] 1354 	push	ar6
      002F26 C0 05            [24] 1355 	push	ar5
      002F28 C0 04            [24] 1356 	push	ar4
      002F2A C0 06            [24] 1357 	push	ar6
      002F2C C0 07            [24] 1358 	push	ar7
      002F2E 74 34            [12] 1359 	mov	a,#___str_20
      002F30 C0 E0            [24] 1360 	push	acc
      002F32 74 4B            [12] 1361 	mov	a,#(___str_20 >> 8)
      002F34 C0 E0            [24] 1362 	push	acc
      002F36 74 80            [12] 1363 	mov	a,#0x80
      002F38 C0 E0            [24] 1364 	push	acc
      002F3A 12 3D 4C         [24] 1365 	lcall	_printf
      002F3D E5 81            [12] 1366 	mov	a,sp
      002F3F 24 FB            [12] 1367 	add	a,#0xfb
      002F41 F5 81            [12] 1368 	mov	sp,a
      002F43 D0 04            [24] 1369 	pop	ar4
      002F45 D0 05            [24] 1370 	pop	ar5
      002F47 D0 06            [24] 1371 	pop	ar6
      002F49 D0 07            [24] 1372 	pop	ar7
                                   1373 ;	main.c:115: for (int i = 0; i < num_bytes; i++) {
      002F4B 7A 00            [12] 1374 	mov	r2,#0x00
      002F4D 7B 00            [12] 1375 	mov	r3,#0x00
      002F4F                       1376 00121$:
      002F4F C3               [12] 1377 	clr	c
      002F50 EA               [12] 1378 	mov	a,r2
      002F51 9E               [12] 1379 	subb	a,r6
      002F52 EB               [12] 1380 	mov	a,r3
      002F53 64 80            [12] 1381 	xrl	a,#0x80
      002F55 8F F0            [24] 1382 	mov	b,r7
      002F57 63 F0 80         [24] 1383 	xrl	b,#0x80
      002F5A 95 F0            [12] 1384 	subb	a,b
      002F5C 50 63            [24] 1385 	jnc	00103$
                                   1386 ;	main.c:116: printf("Byte %d: ", i);
      002F5E C0 04            [24] 1387 	push	ar4
      002F60 C0 05            [24] 1388 	push	ar5
      002F62 C0 07            [24] 1389 	push	ar7
      002F64 C0 06            [24] 1390 	push	ar6
      002F66 C0 05            [24] 1391 	push	ar5
      002F68 C0 04            [24] 1392 	push	ar4
      002F6A C0 03            [24] 1393 	push	ar3
      002F6C C0 02            [24] 1394 	push	ar2
      002F6E C0 02            [24] 1395 	push	ar2
      002F70 C0 03            [24] 1396 	push	ar3
      002F72 74 57            [12] 1397 	mov	a,#___str_21
      002F74 C0 E0            [24] 1398 	push	acc
      002F76 74 4B            [12] 1399 	mov	a,#(___str_21 >> 8)
      002F78 C0 E0            [24] 1400 	push	acc
      002F7A 74 80            [12] 1401 	mov	a,#0x80
      002F7C C0 E0            [24] 1402 	push	acc
      002F7E 12 3D 4C         [24] 1403 	lcall	_printf
      002F81 E5 81            [12] 1404 	mov	a,sp
      002F83 24 FB            [12] 1405 	add	a,#0xfb
      002F85 F5 81            [12] 1406 	mov	sp,a
      002F87 D0 02            [24] 1407 	pop	ar2
      002F89 D0 03            [24] 1408 	pop	ar3
      002F8B D0 04            [24] 1409 	pop	ar4
      002F8D D0 05            [24] 1410 	pop	ar5
                                   1411 ;	main.c:117: buffer[i] = get_user_buffer_size();
      002F8F EA               [12] 1412 	mov	a,r2
      002F90 24 63            [12] 1413 	add	a, #_main_buffer_40003_98
      002F92 F8               [12] 1414 	mov	r0,a
      002F93 EB               [12] 1415 	mov	a,r3
      002F94 34 01            [12] 1416 	addc	a, #(_main_buffer_40003_98 >> 8)
      002F96 F9               [12] 1417 	mov	r1,a
      002F97 C0 03            [24] 1418 	push	ar3
      002F99 C0 02            [24] 1419 	push	ar2
      002F9B C0 01            [24] 1420 	push	ar1
      002F9D C0 00            [24] 1421 	push	ar0
      002F9F 12 2C 54         [24] 1422 	lcall	_get_user_buffer_size
      002FA2 AC 82            [24] 1423 	mov	r4, dpl
      002FA4 D0 00            [24] 1424 	pop	ar0
      002FA6 D0 01            [24] 1425 	pop	ar1
      002FA8 D0 02            [24] 1426 	pop	ar2
      002FAA D0 03            [24] 1427 	pop	ar3
      002FAC D0 06            [24] 1428 	pop	ar6
      002FAE D0 07            [24] 1429 	pop	ar7
      002FB0 88 82            [24] 1430 	mov	dpl,r0
      002FB2 89 83            [24] 1431 	mov	dph,r1
      002FB4 EC               [12] 1432 	mov	a,r4
      002FB5 F0               [24] 1433 	movx	@dptr,a
                                   1434 ;	main.c:115: for (int i = 0; i < num_bytes; i++) {
      002FB6 0A               [12] 1435 	inc	r2
      002FB7 BA 00 01         [24] 1436 	cjne	r2,#0x00,00178$
      002FBA 0B               [12] 1437 	inc	r3
      002FBB                       1438 00178$:
      002FBB D0 05            [24] 1439 	pop	ar5
      002FBD D0 04            [24] 1440 	pop	ar4
      002FBF 80 8E            [24] 1441 	sjmp	00121$
      002FC1                       1442 00103$:
                                   1443 ;	main.c:119: spi_buffer_write(num_bytes, start_address, buffer);
      002FC1 90 03 80         [24] 1444 	mov	dptr,#_spi_buffer_write_PARM_2
      002FC4 EC               [12] 1445 	mov	a,r4
      002FC5 F0               [24] 1446 	movx	@dptr,a
      002FC6 ED               [12] 1447 	mov	a,r5
      002FC7 A3               [24] 1448 	inc	dptr
      002FC8 F0               [24] 1449 	movx	@dptr,a
      002FC9 90 03 82         [24] 1450 	mov	dptr,#_spi_buffer_write_PARM_3
      002FCC 74 63            [12] 1451 	mov	a,#_main_buffer_40003_98
      002FCE F0               [24] 1452 	movx	@dptr,a
      002FCF 74 01            [12] 1453 	mov	a,#(_main_buffer_40003_98 >> 8)
      002FD1 A3               [24] 1454 	inc	dptr
      002FD2 F0               [24] 1455 	movx	@dptr,a
      002FD3 E4               [12] 1456 	clr	a
      002FD4 A3               [24] 1457 	inc	dptr
      002FD5 F0               [24] 1458 	movx	@dptr,a
      002FD6 8E 82            [24] 1459 	mov	dpl, r6
      002FD8 8F 83            [24] 1460 	mov	dph, r7
      002FDA 12 39 6B         [24] 1461 	lcall	_spi_buffer_write
                                   1462 ;	main.c:120: break;
      002FDD 02 2C F9         [24] 1463 	ljmp	00118$
                                   1464 ;	main.c:122: case '3': {
      002FE0                       1465 00104$:
                                   1466 ;	main.c:123: printf("Enter the number of bytes to read:\n\r");
      002FE0 74 61            [12] 1467 	mov	a,#___str_22
      002FE2 C0 E0            [24] 1468 	push	acc
      002FE4 74 4B            [12] 1469 	mov	a,#(___str_22 >> 8)
      002FE6 C0 E0            [24] 1470 	push	acc
      002FE8 74 80            [12] 1471 	mov	a,#0x80
      002FEA C0 E0            [24] 1472 	push	acc
      002FEC 12 3D 4C         [24] 1473 	lcall	_printf
      002FEF 15 81            [12] 1474 	dec	sp
      002FF1 15 81            [12] 1475 	dec	sp
      002FF3 15 81            [12] 1476 	dec	sp
                                   1477 ;	main.c:124: int num_bytes = get_user_buffer_size();
      002FF5 12 2C 54         [24] 1478 	lcall	_get_user_buffer_size
      002FF8 AE 82            [24] 1479 	mov	r6, dpl
      002FFA AF 83            [24] 1480 	mov	r7, dph
                                   1481 ;	main.c:125: printf("Enter the starting address:\n\r");
      002FFC C0 07            [24] 1482 	push	ar7
      002FFE C0 06            [24] 1483 	push	ar6
      003000 74 16            [12] 1484 	mov	a,#___str_19
      003002 C0 E0            [24] 1485 	push	acc
      003004 74 4B            [12] 1486 	mov	a,#(___str_19 >> 8)
      003006 C0 E0            [24] 1487 	push	acc
      003008 74 80            [12] 1488 	mov	a,#0x80
      00300A C0 E0            [24] 1489 	push	acc
      00300C 12 3D 4C         [24] 1490 	lcall	_printf
      00300F 15 81            [12] 1491 	dec	sp
      003011 15 81            [12] 1492 	dec	sp
      003013 15 81            [12] 1493 	dec	sp
                                   1494 ;	main.c:126: uint16_t start_address = get_user_buffer_size();
      003015 12 2C 54         [24] 1495 	lcall	_get_user_buffer_size
      003018 AC 82            [24] 1496 	mov	r4, dpl
      00301A AD 83            [24] 1497 	mov	r5, dph
      00301C D0 06            [24] 1498 	pop	ar6
      00301E D0 07            [24] 1499 	pop	ar7
                                   1500 ;	main.c:128: spi_buffer_read(num_bytes, start_address, buffer);
      003020 90 03 77         [24] 1501 	mov	dptr,#_spi_buffer_read_PARM_2
      003023 EC               [12] 1502 	mov	a,r4
      003024 F0               [24] 1503 	movx	@dptr,a
      003025 ED               [12] 1504 	mov	a,r5
      003026 A3               [24] 1505 	inc	dptr
      003027 F0               [24] 1506 	movx	@dptr,a
      003028 90 03 79         [24] 1507 	mov	dptr,#_spi_buffer_read_PARM_3
      00302B 74 63            [12] 1508 	mov	a,#_main_buffer_40003_103
      00302D F0               [24] 1509 	movx	@dptr,a
      00302E 74 02            [12] 1510 	mov	a,#(_main_buffer_40003_103 >> 8)
      003030 A3               [24] 1511 	inc	dptr
      003031 F0               [24] 1512 	movx	@dptr,a
      003032 E4               [12] 1513 	clr	a
      003033 A3               [24] 1514 	inc	dptr
      003034 F0               [24] 1515 	movx	@dptr,a
      003035 8E 82            [24] 1516 	mov	dpl, r6
      003037 8F 83            [24] 1517 	mov	dph, r7
      003039 12 37 CA         [24] 1518 	lcall	_spi_buffer_read
                                   1519 ;	main.c:156: break;
      00303C 02 2C F9         [24] 1520 	ljmp	00118$
                                   1521 ;	main.c:158: case '4': {
      00303F                       1522 00105$:
                                   1523 ;	main.c:159: printf("Enter the MAC register bank to select:\n\r");
      00303F 74 86            [12] 1524 	mov	a,#___str_23
      003041 C0 E0            [24] 1525 	push	acc
      003043 74 4B            [12] 1526 	mov	a,#(___str_23 >> 8)
      003045 C0 E0            [24] 1527 	push	acc
      003047 74 80            [12] 1528 	mov	a,#0x80
      003049 C0 E0            [24] 1529 	push	acc
      00304B 12 3D 4C         [24] 1530 	lcall	_printf
      00304E 15 81            [12] 1531 	dec	sp
      003050 15 81            [12] 1532 	dec	sp
      003052 15 81            [12] 1533 	dec	sp
                                   1534 ;	main.c:160: uint8_t reg_bank = get_user_buffer_size();
      003054 12 2C 54         [24] 1535 	lcall	_get_user_buffer_size
      003057 AE 82            [24] 1536 	mov	r6, dpl
                                   1537 ;	main.c:161: printf("Enter the address of the MAC Register:\n\r");
      003059 C0 06            [24] 1538 	push	ar6
      00305B 74 AF            [12] 1539 	mov	a,#___str_24
      00305D C0 E0            [24] 1540 	push	acc
      00305F 74 4B            [12] 1541 	mov	a,#(___str_24 >> 8)
      003061 C0 E0            [24] 1542 	push	acc
      003063 74 80            [12] 1543 	mov	a,#0x80
      003065 C0 E0            [24] 1544 	push	acc
      003067 12 3D 4C         [24] 1545 	lcall	_printf
      00306A 15 81            [12] 1546 	dec	sp
      00306C 15 81            [12] 1547 	dec	sp
      00306E 15 81            [12] 1548 	dec	sp
                                   1549 ;	main.c:162: uint8_t addr = get_user_buffer_size();
      003070 12 2C 54         [24] 1550 	lcall	_get_user_buffer_size
      003073 AD 82            [24] 1551 	mov	r5, dpl
      003075 D0 06            [24] 1552 	pop	ar6
                                   1553 ;	main.c:163: uint8_t data = mac_spi_read(addr, reg_bank);
      003077 90 03 6F         [24] 1554 	mov	dptr,#_mac_spi_read_PARM_2
      00307A EE               [12] 1555 	mov	a,r6
      00307B F0               [24] 1556 	movx	@dptr,a
      00307C 8D 82            [24] 1557 	mov	dpl, r5
      00307E 12 35 65         [24] 1558 	lcall	_mac_spi_read
      003081 AF 82            [24] 1559 	mov	r7, dpl
                                   1560 ;	main.c:164: printf("MAC Register Data: 0x%02X\n\r", data);
      003083 7E 00            [12] 1561 	mov	r6,#0x00
      003085 C0 07            [24] 1562 	push	ar7
      003087 C0 06            [24] 1563 	push	ar6
      003089 74 D8            [12] 1564 	mov	a,#___str_25
      00308B C0 E0            [24] 1565 	push	acc
      00308D 74 4B            [12] 1566 	mov	a,#(___str_25 >> 8)
      00308F C0 E0            [24] 1567 	push	acc
      003091 74 80            [12] 1568 	mov	a,#0x80
      003093 C0 E0            [24] 1569 	push	acc
      003095 12 3D 4C         [24] 1570 	lcall	_printf
      003098 E5 81            [12] 1571 	mov	a,sp
      00309A 24 FB            [12] 1572 	add	a,#0xfb
      00309C F5 81            [12] 1573 	mov	sp,a
                                   1574 ;	main.c:165: break;
      00309E 02 2C F9         [24] 1575 	ljmp	00118$
                                   1576 ;	main.c:167: case '5': {
      0030A1                       1577 00106$:
                                   1578 ;	main.c:168: printf("Enter the PHY register address:\n\r");
      0030A1 74 F4            [12] 1579 	mov	a,#___str_26
      0030A3 C0 E0            [24] 1580 	push	acc
      0030A5 74 4B            [12] 1581 	mov	a,#(___str_26 >> 8)
      0030A7 C0 E0            [24] 1582 	push	acc
      0030A9 74 80            [12] 1583 	mov	a,#0x80
      0030AB C0 E0            [24] 1584 	push	acc
      0030AD 12 3D 4C         [24] 1585 	lcall	_printf
      0030B0 15 81            [12] 1586 	dec	sp
      0030B2 15 81            [12] 1587 	dec	sp
      0030B4 15 81            [12] 1588 	dec	sp
                                   1589 ;	main.c:169: uint8_t addr = get_user_buffer_size();
      0030B6 12 2C 54         [24] 1590 	lcall	_get_user_buffer_size
      0030B9 AE 82            [24] 1591 	mov	r6, dpl
                                   1592 ;	main.c:170: printf("Enter the 16-bit data to write:\n\r");
      0030BB C0 06            [24] 1593 	push	ar6
      0030BD 74 16            [12] 1594 	mov	a,#___str_27
      0030BF C0 E0            [24] 1595 	push	acc
      0030C1 74 4C            [12] 1596 	mov	a,#(___str_27 >> 8)
      0030C3 C0 E0            [24] 1597 	push	acc
      0030C5 74 80            [12] 1598 	mov	a,#0x80
      0030C7 C0 E0            [24] 1599 	push	acc
      0030C9 12 3D 4C         [24] 1600 	lcall	_printf
      0030CC 15 81            [12] 1601 	dec	sp
      0030CE 15 81            [12] 1602 	dec	sp
      0030D0 15 81            [12] 1603 	dec	sp
                                   1604 ;	main.c:171: uint16_t data = get_user_buffer_size();
      0030D2 12 2C 54         [24] 1605 	lcall	_get_user_buffer_size
      0030D5 AD 82            [24] 1606 	mov	r5, dpl
      0030D7 AF 83            [24] 1607 	mov	r7, dph
      0030D9 D0 06            [24] 1608 	pop	ar6
                                   1609 ;	main.c:172: phy_spi_write(addr, data);
      0030DB 90 03 6C         [24] 1610 	mov	dptr,#_phy_spi_write_PARM_2
      0030DE ED               [12] 1611 	mov	a,r5
      0030DF F0               [24] 1612 	movx	@dptr,a
      0030E0 EF               [12] 1613 	mov	a,r7
      0030E1 A3               [24] 1614 	inc	dptr
      0030E2 F0               [24] 1615 	movx	@dptr,a
      0030E3 8E 82            [24] 1616 	mov	dpl, r6
      0030E5 C0 07            [24] 1617 	push	ar7
      0030E7 C0 05            [24] 1618 	push	ar5
      0030E9 12 34 E2         [24] 1619 	lcall	_phy_spi_write
      0030EC D0 05            [24] 1620 	pop	ar5
      0030EE D0 07            [24] 1621 	pop	ar7
                                   1622 ;	main.c:173: printf("PHY Write Data: 0x%04X\n\r", data);
      0030F0 C0 05            [24] 1623 	push	ar5
      0030F2 C0 07            [24] 1624 	push	ar7
      0030F4 74 38            [12] 1625 	mov	a,#___str_28
      0030F6 C0 E0            [24] 1626 	push	acc
      0030F8 74 4C            [12] 1627 	mov	a,#(___str_28 >> 8)
      0030FA C0 E0            [24] 1628 	push	acc
      0030FC 74 80            [12] 1629 	mov	a,#0x80
      0030FE C0 E0            [24] 1630 	push	acc
      003100 12 3D 4C         [24] 1631 	lcall	_printf
      003103 E5 81            [12] 1632 	mov	a,sp
      003105 24 FB            [12] 1633 	add	a,#0xfb
      003107 F5 81            [12] 1634 	mov	sp,a
                                   1635 ;	main.c:174: break;
      003109 02 2C F9         [24] 1636 	ljmp	00118$
                                   1637 ;	main.c:176: case '6': {
      00310C                       1638 00107$:
                                   1639 ;	main.c:177: printf("Enter the PHY register address to read:\n\r");
      00310C 74 51            [12] 1640 	mov	a,#___str_29
      00310E C0 E0            [24] 1641 	push	acc
      003110 74 4C            [12] 1642 	mov	a,#(___str_29 >> 8)
      003112 C0 E0            [24] 1643 	push	acc
      003114 74 80            [12] 1644 	mov	a,#0x80
      003116 C0 E0            [24] 1645 	push	acc
      003118 12 3D 4C         [24] 1646 	lcall	_printf
      00311B 15 81            [12] 1647 	dec	sp
      00311D 15 81            [12] 1648 	dec	sp
      00311F 15 81            [12] 1649 	dec	sp
                                   1650 ;	main.c:178: uint8_t addr = get_user_buffer_size();
      003121 12 2C 54         [24] 1651 	lcall	_get_user_buffer_size
                                   1652 ;	main.c:179: uint16_t data = phy_spi_read(addr);
      003124 12 35 D3         [24] 1653 	lcall	_phy_spi_read
      003127 AE 82            [24] 1654 	mov	r6, dpl
      003129 AF 83            [24] 1655 	mov	r7, dph
                                   1656 ;	main.c:180: printf("PHY Read Data: 0x%04X\n\r", data);
      00312B C0 06            [24] 1657 	push	ar6
      00312D C0 07            [24] 1658 	push	ar7
      00312F 74 7B            [12] 1659 	mov	a,#___str_30
      003131 C0 E0            [24] 1660 	push	acc
      003133 74 4C            [12] 1661 	mov	a,#(___str_30 >> 8)
      003135 C0 E0            [24] 1662 	push	acc
      003137 74 80            [12] 1663 	mov	a,#0x80
      003139 C0 E0            [24] 1664 	push	acc
      00313B 12 3D 4C         [24] 1665 	lcall	_printf
      00313E E5 81            [12] 1666 	mov	a,sp
      003140 24 FB            [12] 1667 	add	a,#0xfb
      003142 F5 81            [12] 1668 	mov	sp,a
                                   1669 ;	main.c:181: break;
      003144 02 2C F9         [24] 1670 	ljmp	00118$
                                   1671 ;	main.c:183: case '7': {
      003147                       1672 00108$:
                                   1673 ;	main.c:184: printf("Resetting ENC28J60...\n\r");
      003147 74 93            [12] 1674 	mov	a,#___str_31
      003149 C0 E0            [24] 1675 	push	acc
      00314B 74 4C            [12] 1676 	mov	a,#(___str_31 >> 8)
      00314D C0 E0            [24] 1677 	push	acc
      00314F 74 80            [12] 1678 	mov	a,#0x80
      003151 C0 E0            [24] 1679 	push	acc
      003153 12 3D 4C         [24] 1680 	lcall	_printf
      003156 15 81            [12] 1681 	dec	sp
      003158 15 81            [12] 1682 	dec	sp
      00315A 15 81            [12] 1683 	dec	sp
                                   1684 ;	main.c:185: enc_reset();
      00315C 12 34 69         [24] 1685 	lcall	_enc_reset
                                   1686 ;	main.c:186: break;
      00315F 02 2C F9         [24] 1687 	ljmp	00118$
                                   1688 ;	main.c:188: case '8': {
      003162                       1689 00109$:
                                   1690 ;	main.c:189: printf("Enter the ETH register address to read:\n\r");
      003162 74 AB            [12] 1691 	mov	a,#___str_32
      003164 C0 E0            [24] 1692 	push	acc
      003166 74 4C            [12] 1693 	mov	a,#(___str_32 >> 8)
      003168 C0 E0            [24] 1694 	push	acc
      00316A 74 80            [12] 1695 	mov	a,#0x80
      00316C C0 E0            [24] 1696 	push	acc
      00316E 12 3D 4C         [24] 1697 	lcall	_printf
      003171 15 81            [12] 1698 	dec	sp
      003173 15 81            [12] 1699 	dec	sp
      003175 15 81            [12] 1700 	dec	sp
                                   1701 ;	main.c:190: uint8_t addr = get_user_buffer_size();
      003177 12 2C 54         [24] 1702 	lcall	_get_user_buffer_size
      00317A AE 82            [24] 1703 	mov	r6, dpl
                                   1704 ;	main.c:191: printf("Enter the bank (0 or 1):\n\r");
      00317C C0 06            [24] 1705 	push	ar6
      00317E 74 D5            [12] 1706 	mov	a,#___str_33
      003180 C0 E0            [24] 1707 	push	acc
      003182 74 4C            [12] 1708 	mov	a,#(___str_33 >> 8)
      003184 C0 E0            [24] 1709 	push	acc
      003186 74 80            [12] 1710 	mov	a,#0x80
      003188 C0 E0            [24] 1711 	push	acc
      00318A 12 3D 4C         [24] 1712 	lcall	_printf
      00318D 15 81            [12] 1713 	dec	sp
      00318F 15 81            [12] 1714 	dec	sp
      003191 15 81            [12] 1715 	dec	sp
                                   1716 ;	main.c:192: uint8_t bank = get_user_buffer_size();
      003193 12 2C 54         [24] 1717 	lcall	_get_user_buffer_size
      003196 AD 82            [24] 1718 	mov	r5, dpl
      003198 D0 06            [24] 1719 	pop	ar6
      00319A 90 03 6A         [24] 1720 	mov	dptr,#_eth_spi_read_PARM_2
      00319D ED               [12] 1721 	mov	a,r5
      00319E F0               [24] 1722 	movx	@dptr,a
                                   1723 ;	main.c:193: uint8_t data = eth_spi_read(addr, bank);
      00319F 8E 82            [24] 1724 	mov	dpl, r6
      0031A1 12 34 74         [24] 1725 	lcall	_eth_spi_read
      0031A4 AF 82            [24] 1726 	mov	r7, dpl
                                   1727 ;	main.c:194: printf("ETH Register Data: 0x%02X\n\r", data);
      0031A6 7E 00            [12] 1728 	mov	r6,#0x00
      0031A8 C0 07            [24] 1729 	push	ar7
      0031AA C0 06            [24] 1730 	push	ar6
      0031AC 74 F0            [12] 1731 	mov	a,#___str_34
      0031AE C0 E0            [24] 1732 	push	acc
      0031B0 74 4C            [12] 1733 	mov	a,#(___str_34 >> 8)
      0031B2 C0 E0            [24] 1734 	push	acc
      0031B4 74 80            [12] 1735 	mov	a,#0x80
      0031B6 C0 E0            [24] 1736 	push	acc
      0031B8 12 3D 4C         [24] 1737 	lcall	_printf
      0031BB E5 81            [12] 1738 	mov	a,sp
      0031BD 24 FB            [12] 1739 	add	a,#0xfb
      0031BF F5 81            [12] 1740 	mov	sp,a
                                   1741 ;	main.c:195: break;
      0031C1 02 2C F9         [24] 1742 	ljmp	00118$
                                   1743 ;	main.c:197: case '9': {
      0031C4                       1744 00110$:
                                   1745 ;	main.c:198: printf("\n\rChoose an action: \n\r");
      0031C4 74 4E            [12] 1746 	mov	a,#___str_2
      0031C6 C0 E0            [24] 1747 	push	acc
      0031C8 74 49            [12] 1748 	mov	a,#(___str_2 >> 8)
      0031CA C0 E0            [24] 1749 	push	acc
      0031CC 74 80            [12] 1750 	mov	a,#0x80
      0031CE C0 E0            [24] 1751 	push	acc
      0031D0 12 3D 4C         [24] 1752 	lcall	_printf
      0031D3 15 81            [12] 1753 	dec	sp
      0031D5 15 81            [12] 1754 	dec	sp
      0031D7 15 81            [12] 1755 	dec	sp
                                   1756 ;	main.c:199: printf("1 --> Control Write\n\r");
      0031D9 74 65            [12] 1757 	mov	a,#___str_3
      0031DB C0 E0            [24] 1758 	push	acc
      0031DD 74 49            [12] 1759 	mov	a,#(___str_3 >> 8)
      0031DF C0 E0            [24] 1760 	push	acc
      0031E1 74 80            [12] 1761 	mov	a,#0x80
      0031E3 C0 E0            [24] 1762 	push	acc
      0031E5 12 3D 4C         [24] 1763 	lcall	_printf
      0031E8 15 81            [12] 1764 	dec	sp
      0031EA 15 81            [12] 1765 	dec	sp
      0031EC 15 81            [12] 1766 	dec	sp
                                   1767 ;	main.c:200: printf("2 --> Buffer Write\n\r");
      0031EE 74 7B            [12] 1768 	mov	a,#___str_4
      0031F0 C0 E0            [24] 1769 	push	acc
      0031F2 74 49            [12] 1770 	mov	a,#(___str_4 >> 8)
      0031F4 C0 E0            [24] 1771 	push	acc
      0031F6 74 80            [12] 1772 	mov	a,#0x80
      0031F8 C0 E0            [24] 1773 	push	acc
      0031FA 12 3D 4C         [24] 1774 	lcall	_printf
      0031FD 15 81            [12] 1775 	dec	sp
      0031FF 15 81            [12] 1776 	dec	sp
      003201 15 81            [12] 1777 	dec	sp
                                   1778 ;	main.c:201: printf("3 --> Buffer Read\n\r");
      003203 74 90            [12] 1779 	mov	a,#___str_5
      003205 C0 E0            [24] 1780 	push	acc
      003207 74 49            [12] 1781 	mov	a,#(___str_5 >> 8)
      003209 C0 E0            [24] 1782 	push	acc
      00320B 74 80            [12] 1783 	mov	a,#0x80
      00320D C0 E0            [24] 1784 	push	acc
      00320F 12 3D 4C         [24] 1785 	lcall	_printf
      003212 15 81            [12] 1786 	dec	sp
      003214 15 81            [12] 1787 	dec	sp
      003216 15 81            [12] 1788 	dec	sp
                                   1789 ;	main.c:202: printf("4 --> MAC Register Read\n\r");
      003218 74 A4            [12] 1790 	mov	a,#___str_6
      00321A C0 E0            [24] 1791 	push	acc
      00321C 74 49            [12] 1792 	mov	a,#(___str_6 >> 8)
      00321E C0 E0            [24] 1793 	push	acc
      003220 74 80            [12] 1794 	mov	a,#0x80
      003222 C0 E0            [24] 1795 	push	acc
      003224 12 3D 4C         [24] 1796 	lcall	_printf
      003227 15 81            [12] 1797 	dec	sp
      003229 15 81            [12] 1798 	dec	sp
      00322B 15 81            [12] 1799 	dec	sp
                                   1800 ;	main.c:203: printf("5 --> PHY SPI Write\n\r");
      00322D 74 BE            [12] 1801 	mov	a,#___str_7
      00322F C0 E0            [24] 1802 	push	acc
      003231 74 49            [12] 1803 	mov	a,#(___str_7 >> 8)
      003233 C0 E0            [24] 1804 	push	acc
      003235 74 80            [12] 1805 	mov	a,#0x80
      003237 C0 E0            [24] 1806 	push	acc
      003239 12 3D 4C         [24] 1807 	lcall	_printf
      00323C 15 81            [12] 1808 	dec	sp
      00323E 15 81            [12] 1809 	dec	sp
      003240 15 81            [12] 1810 	dec	sp
                                   1811 ;	main.c:204: printf("6 --> PHY SPI Read\n\r");
      003242 74 D4            [12] 1812 	mov	a,#___str_8
      003244 C0 E0            [24] 1813 	push	acc
      003246 74 49            [12] 1814 	mov	a,#(___str_8 >> 8)
      003248 C0 E0            [24] 1815 	push	acc
      00324A 74 80            [12] 1816 	mov	a,#0x80
      00324C C0 E0            [24] 1817 	push	acc
      00324E 12 3D 4C         [24] 1818 	lcall	_printf
      003251 15 81            [12] 1819 	dec	sp
      003253 15 81            [12] 1820 	dec	sp
      003255 15 81            [12] 1821 	dec	sp
                                   1822 ;	main.c:205: printf("7 --> ENC Reset\n\r");
      003257 74 E9            [12] 1823 	mov	a,#___str_9
      003259 C0 E0            [24] 1824 	push	acc
      00325B 74 49            [12] 1825 	mov	a,#(___str_9 >> 8)
      00325D C0 E0            [24] 1826 	push	acc
      00325F 74 80            [12] 1827 	mov	a,#0x80
      003261 C0 E0            [24] 1828 	push	acc
      003263 12 3D 4C         [24] 1829 	lcall	_printf
      003266 15 81            [12] 1830 	dec	sp
      003268 15 81            [12] 1831 	dec	sp
      00326A 15 81            [12] 1832 	dec	sp
                                   1833 ;	main.c:206: printf("8 --> Read ETH Register\n\r");
      00326C 74 FB            [12] 1834 	mov	a,#___str_10
      00326E C0 E0            [24] 1835 	push	acc
      003270 74 49            [12] 1836 	mov	a,#(___str_10 >> 8)
      003272 C0 E0            [24] 1837 	push	acc
      003274 74 80            [12] 1838 	mov	a,#0x80
      003276 C0 E0            [24] 1839 	push	acc
      003278 12 3D 4C         [24] 1840 	lcall	_printf
      00327B 15 81            [12] 1841 	dec	sp
      00327D 15 81            [12] 1842 	dec	sp
      00327F 15 81            [12] 1843 	dec	sp
                                   1844 ;	main.c:207: break;
      003281 02 2C F9         [24] 1845 	ljmp	00118$
                                   1846 ;	main.c:209: case 'A':{
      003284                       1847 00111$:
                                   1848 ;	main.c:212: send_arp_request();
      003284 12 22 3D         [24] 1849 	lcall	_send_arp_request
                                   1850 ;	main.c:213: break;
      003287 02 2C F9         [24] 1851 	ljmp	00118$
                                   1852 ;	main.c:219: case 'C':{
      00328A                       1853 00113$:
                                   1854 ;	main.c:220: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
      00328A 74 0C            [12] 1855 	mov	a,#___str_35
      00328C C0 E0            [24] 1856 	push	acc
      00328E 74 4D            [12] 1857 	mov	a,#(___str_35 >> 8)
      003290 C0 E0            [24] 1858 	push	acc
      003292 74 80            [12] 1859 	mov	a,#0x80
      003294 C0 E0            [24] 1860 	push	acc
      003296 12 3D 4C         [24] 1861 	lcall	_printf
      003299 15 81            [12] 1862 	dec	sp
      00329B 15 81            [12] 1863 	dec	sp
      00329D 15 81            [12] 1864 	dec	sp
                                   1865 ;	main.c:221: ENC_RESET = 0;
                                   1866 ;	assignBit
      00329F C2 90            [12] 1867 	clr	_P1_0
                                   1868 ;	main.c:222: for(int i = 0; i < 6000; i++);
      0032A1 7E 00            [12] 1869 	mov	r6,#0x00
      0032A3 7F 00            [12] 1870 	mov	r7,#0x00
      0032A5                       1871 00124$:
      0032A5 C3               [12] 1872 	clr	c
      0032A6 EE               [12] 1873 	mov	a,r6
      0032A7 94 70            [12] 1874 	subb	a,#0x70
      0032A9 EF               [12] 1875 	mov	a,r7
      0032AA 64 80            [12] 1876 	xrl	a,#0x80
      0032AC 94 97            [12] 1877 	subb	a,#0x97
      0032AE 50 07            [24] 1878 	jnc	00114$
      0032B0 0E               [12] 1879 	inc	r6
      0032B1 BE 00 F1         [24] 1880 	cjne	r6,#0x00,00124$
      0032B4 0F               [12] 1881 	inc	r7
      0032B5 80 EE            [24] 1882 	sjmp	00124$
      0032B7                       1883 00114$:
                                   1884 ;	main.c:223: ENC_RESET = 1;
                                   1885 ;	assignBit
      0032B7 D2 90            [12] 1886 	setb	_P1_0
                                   1887 ;	main.c:224: break;
      0032B9 02 2C F9         [24] 1888 	ljmp	00118$
                                   1889 ;	main.c:226: default: {
      0032BC                       1890 00115$:
                                   1891 ;	main.c:227: printf("Invalid option. Please select a valid action.\n\r");
      0032BC 74 3F            [12] 1892 	mov	a,#___str_36
      0032BE C0 E0            [24] 1893 	push	acc
      0032C0 74 4D            [12] 1894 	mov	a,#(___str_36 >> 8)
      0032C2 C0 E0            [24] 1895 	push	acc
      0032C4 74 80            [12] 1896 	mov	a,#0x80
      0032C6 C0 E0            [24] 1897 	push	acc
      0032C8 12 3D 4C         [24] 1898 	lcall	_printf
      0032CB 15 81            [12] 1899 	dec	sp
      0032CD 15 81            [12] 1900 	dec	sp
      0032CF 15 81            [12] 1901 	dec	sp
                                   1902 ;	main.c:230: }
                                   1903 ;	main.c:232: }
      0032D1 02 2C F9         [24] 1904 	ljmp	00118$
                                   1905 	.area CSEG    (CODE)
                                   1906 	.area CONST   (CODE)
                                   1907 	.area CONST   (CODE)
      004932                       1908 ___str_0:
      004932 0A                    1909 	.db 0x0a
      004933 0D                    1910 	.db 0x0d
      004934 00                    1911 	.db 0x00
                                   1912 	.area CSEG    (CODE)
                                   1913 	.area CONST   (CODE)
      004935                       1914 ___str_1:
      004935 53 50 49 20 4F 70 65  1915 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      00494B 0A                    1916 	.db 0x0a
      00494C 0D                    1917 	.db 0x0d
      00494D 00                    1918 	.db 0x00
                                   1919 	.area CSEG    (CODE)
                                   1920 	.area CONST   (CODE)
      00494E                       1921 ___str_2:
      00494E 0A                    1922 	.db 0x0a
      00494F 0D                    1923 	.db 0x0d
      004950 43 68 6F 6F 73 65 20  1924 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      004962 0A                    1925 	.db 0x0a
      004963 0D                    1926 	.db 0x0d
      004964 00                    1927 	.db 0x00
                                   1928 	.area CSEG    (CODE)
                                   1929 	.area CONST   (CODE)
      004965                       1930 ___str_3:
      004965 31 20 2D 2D 3E 20 43  1931 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      004978 0A                    1932 	.db 0x0a
      004979 0D                    1933 	.db 0x0d
      00497A 00                    1934 	.db 0x00
                                   1935 	.area CSEG    (CODE)
                                   1936 	.area CONST   (CODE)
      00497B                       1937 ___str_4:
      00497B 32 20 2D 2D 3E 20 42  1938 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      00498D 0A                    1939 	.db 0x0a
      00498E 0D                    1940 	.db 0x0d
      00498F 00                    1941 	.db 0x00
                                   1942 	.area CSEG    (CODE)
                                   1943 	.area CONST   (CODE)
      004990                       1944 ___str_5:
      004990 33 20 2D 2D 3E 20 42  1945 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      0049A1 0A                    1946 	.db 0x0a
      0049A2 0D                    1947 	.db 0x0d
      0049A3 00                    1948 	.db 0x00
                                   1949 	.area CSEG    (CODE)
                                   1950 	.area CONST   (CODE)
      0049A4                       1951 ___str_6:
      0049A4 34 20 2D 2D 3E 20 4D  1952 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      0049BB 0A                    1953 	.db 0x0a
      0049BC 0D                    1954 	.db 0x0d
      0049BD 00                    1955 	.db 0x00
                                   1956 	.area CSEG    (CODE)
                                   1957 	.area CONST   (CODE)
      0049BE                       1958 ___str_7:
      0049BE 35 20 2D 2D 3E 20 50  1959 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      0049D1 0A                    1960 	.db 0x0a
      0049D2 0D                    1961 	.db 0x0d
      0049D3 00                    1962 	.db 0x00
                                   1963 	.area CSEG    (CODE)
                                   1964 	.area CONST   (CODE)
      0049D4                       1965 ___str_8:
      0049D4 36 20 2D 2D 3E 20 50  1966 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      0049E6 0A                    1967 	.db 0x0a
      0049E7 0D                    1968 	.db 0x0d
      0049E8 00                    1969 	.db 0x00
                                   1970 	.area CSEG    (CODE)
                                   1971 	.area CONST   (CODE)
      0049E9                       1972 ___str_9:
      0049E9 37 20 2D 2D 3E 20 45  1973 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      0049F8 0A                    1974 	.db 0x0a
      0049F9 0D                    1975 	.db 0x0d
      0049FA 00                    1976 	.db 0x00
                                   1977 	.area CSEG    (CODE)
                                   1978 	.area CONST   (CODE)
      0049FB                       1979 ___str_10:
      0049FB 38 20 2D 2D 3E 20 52  1980 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      004A12 0A                    1981 	.db 0x0a
      004A13 0D                    1982 	.db 0x0d
      004A14 00                    1983 	.db 0x00
                                   1984 	.area CSEG    (CODE)
                                   1985 	.area CONST   (CODE)
      004A15                       1986 ___str_11:
      004A15 39 20 2D 2D 3E 20 44  1987 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      004A27 0A                    1988 	.db 0x0a
      004A28 0D                    1989 	.db 0x0d
      004A29 00                    1990 	.db 0x00
                                   1991 	.area CSEG    (CODE)
                                   1992 	.area CONST   (CODE)
      004A2A                       1993 ___str_12:
      004A2A 41 20 2D 2D 3E 20 53  1994 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      004A40 0A                    1995 	.db 0x0a
      004A41 0D                    1996 	.db 0x0d
      004A42 00                    1997 	.db 0x00
                                   1998 	.area CSEG    (CODE)
                                   1999 	.area CONST   (CODE)
      004A43                       2000 ___str_13:
      004A43 42 20 2D 2D 3E 20 49  2001 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      004A58 0A                    2002 	.db 0x0a
      004A59 0D                    2003 	.db 0x0d
      004A5A 00                    2004 	.db 0x00
                                   2005 	.area CSEG    (CODE)
                                   2006 	.area CONST   (CODE)
      004A5B                       2007 ___str_14:
      004A5B 43 20 2D 2D 3E 20 48  2008 	.ascii "C --> Hard Reset(nRESET pin)"
             61 72 64 20 52 65 73
             65 74 28 6E 52 45 53
             45 54 20 70 69 6E 29
      004A77 0A                    2009 	.db 0x0a
      004A78 0D                    2010 	.db 0x0d
      004A79 00                    2011 	.db 0x00
                                   2012 	.area CSEG    (CODE)
                                   2013 	.area CONST   (CODE)
      004A7A                       2014 ___str_15:
      004A7A 45 6E 74 65 72 20 74  2015 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      004A9C 0A                    2016 	.db 0x0a
      004A9D 0D                    2017 	.db 0x0d
      004A9E 00                    2018 	.db 0x00
                                   2019 	.area CSEG    (CODE)
                                   2020 	.area CONST   (CODE)
      004A9F                       2021 ___str_16:
      004A9F 45 6E 74 65 72 20 74  2022 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      004AC9 0A                    2023 	.db 0x0a
      004ACA 0D                    2024 	.db 0x0d
      004ACB 00                    2025 	.db 0x00
                                   2026 	.area CSEG    (CODE)
                                   2027 	.area CONST   (CODE)
      004ACC                       2028 ___str_17:
      004ACC 45 6E 74 65 72 20 74  2029 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      004AED 0A                    2030 	.db 0x0a
      004AEE 0D                    2031 	.db 0x0d
      004AEF 00                    2032 	.db 0x00
                                   2033 	.area CSEG    (CODE)
                                   2034 	.area CONST   (CODE)
      004AF0                       2035 ___str_18:
      004AF0 45 6E 74 65 72 20 74  2036 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      004B13 0A                    2037 	.db 0x0a
      004B14 0D                    2038 	.db 0x0d
      004B15 00                    2039 	.db 0x00
                                   2040 	.area CSEG    (CODE)
                                   2041 	.area CONST   (CODE)
      004B16                       2042 ___str_19:
      004B16 45 6E 74 65 72 20 74  2043 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      004B31 0A                    2044 	.db 0x0a
      004B32 0D                    2045 	.db 0x0d
      004B33 00                    2046 	.db 0x00
                                   2047 	.area CSEG    (CODE)
                                   2048 	.area CONST   (CODE)
      004B34                       2049 ___str_20:
      004B34 45 6E 74 65 72 20 25  2050 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      004B54 0A                    2051 	.db 0x0a
      004B55 0D                    2052 	.db 0x0d
      004B56 00                    2053 	.db 0x00
                                   2054 	.area CSEG    (CODE)
                                   2055 	.area CONST   (CODE)
      004B57                       2056 ___str_21:
      004B57 42 79 74 65 20 25 64  2057 	.ascii "Byte %d: "
             3A 20
      004B60 00                    2058 	.db 0x00
                                   2059 	.area CSEG    (CODE)
                                   2060 	.area CONST   (CODE)
      004B61                       2061 ___str_22:
      004B61 45 6E 74 65 72 20 74  2062 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      004B83 0A                    2063 	.db 0x0a
      004B84 0D                    2064 	.db 0x0d
      004B85 00                    2065 	.db 0x00
                                   2066 	.area CSEG    (CODE)
                                   2067 	.area CONST   (CODE)
      004B86                       2068 ___str_23:
      004B86 45 6E 74 65 72 20 74  2069 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      004BAC 0A                    2070 	.db 0x0a
      004BAD 0D                    2071 	.db 0x0d
      004BAE 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                                   2074 	.area CONST   (CODE)
      004BAF                       2075 ___str_24:
      004BAF 45 6E 74 65 72 20 74  2076 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      004BD5 0A                    2077 	.db 0x0a
      004BD6 0D                    2078 	.db 0x0d
      004BD7 00                    2079 	.db 0x00
                                   2080 	.area CSEG    (CODE)
                                   2081 	.area CONST   (CODE)
      004BD8                       2082 ___str_25:
      004BD8 4D 41 43 20 52 65 67  2083 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      004BF1 0A                    2084 	.db 0x0a
      004BF2 0D                    2085 	.db 0x0d
      004BF3 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      004BF4                       2089 ___str_26:
      004BF4 45 6E 74 65 72 20 74  2090 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      004C13 0A                    2091 	.db 0x0a
      004C14 0D                    2092 	.db 0x0d
      004C15 00                    2093 	.db 0x00
                                   2094 	.area CSEG    (CODE)
                                   2095 	.area CONST   (CODE)
      004C16                       2096 ___str_27:
      004C16 45 6E 74 65 72 20 74  2097 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      004C35 0A                    2098 	.db 0x0a
      004C36 0D                    2099 	.db 0x0d
      004C37 00                    2100 	.db 0x00
                                   2101 	.area CSEG    (CODE)
                                   2102 	.area CONST   (CODE)
      004C38                       2103 ___str_28:
      004C38 50 48 59 20 57 72 69  2104 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      004C4E 0A                    2105 	.db 0x0a
      004C4F 0D                    2106 	.db 0x0d
      004C50 00                    2107 	.db 0x00
                                   2108 	.area CSEG    (CODE)
                                   2109 	.area CONST   (CODE)
      004C51                       2110 ___str_29:
      004C51 45 6E 74 65 72 20 74  2111 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      004C78 0A                    2112 	.db 0x0a
      004C79 0D                    2113 	.db 0x0d
      004C7A 00                    2114 	.db 0x00
                                   2115 	.area CSEG    (CODE)
                                   2116 	.area CONST   (CODE)
      004C7B                       2117 ___str_30:
      004C7B 50 48 59 20 52 65 61  2118 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      004C90 0A                    2119 	.db 0x0a
      004C91 0D                    2120 	.db 0x0d
      004C92 00                    2121 	.db 0x00
                                   2122 	.area CSEG    (CODE)
                                   2123 	.area CONST   (CODE)
      004C93                       2124 ___str_31:
      004C93 52 65 73 65 74 74 69  2125 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      004CA8 0A                    2126 	.db 0x0a
      004CA9 0D                    2127 	.db 0x0d
      004CAA 00                    2128 	.db 0x00
                                   2129 	.area CSEG    (CODE)
                                   2130 	.area CONST   (CODE)
      004CAB                       2131 ___str_32:
      004CAB 45 6E 74 65 72 20 74  2132 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      004CD2 0A                    2133 	.db 0x0a
      004CD3 0D                    2134 	.db 0x0d
      004CD4 00                    2135 	.db 0x00
                                   2136 	.area CSEG    (CODE)
                                   2137 	.area CONST   (CODE)
      004CD5                       2138 ___str_33:
      004CD5 45 6E 74 65 72 20 74  2139 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      004CED 0A                    2140 	.db 0x0a
      004CEE 0D                    2141 	.db 0x0d
      004CEF 00                    2142 	.db 0x00
                                   2143 	.area CSEG    (CODE)
                                   2144 	.area CONST   (CODE)
      004CF0                       2145 ___str_34:
      004CF0 45 54 48 20 52 65 67  2146 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      004D09 0A                    2147 	.db 0x0a
      004D0A 0D                    2148 	.db 0x0d
      004D0B 00                    2149 	.db 0x00
                                   2150 	.area CSEG    (CODE)
                                   2151 	.area CONST   (CODE)
      004D0C                       2152 ___str_35:
      004D0C 20 52 65 73 65 74 74  2153 	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
             69 6E 67 20 45 4E 43
             20 75 73 69 6E 67 20
             52 45 53 45 54 20 70
             69 6E 20 69 6E 20 48
             61 72 64 77 61 72 65
             28 50 31 5F 30 29
      004D3C 0A                    2154 	.db 0x0a
      004D3D 0D                    2155 	.db 0x0d
      004D3E 00                    2156 	.db 0x00
                                   2157 	.area CSEG    (CODE)
                                   2158 	.area CONST   (CODE)
      004D3F                       2159 ___str_36:
      004D3F 49 6E 76 61 6C 69 64  2160 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      004D6C 0A                    2161 	.db 0x0a
      004D6D 0D                    2162 	.db 0x0d
      004D6E 00                    2163 	.db 0x00
                                   2164 	.area CSEG    (CODE)
                                   2165 	.area XINIT   (CODE)
      004FAB                       2166 __xinit__device_mac:
      004FAB 02                    2167 	.db #0x02	; 2
      004FAC 11                    2168 	.db #0x11	; 17
      004FAD 22                    2169 	.db #0x22	; 34
      004FAE 33                    2170 	.db #0x33	; 51	'3'
      004FAF 44                    2171 	.db #0x44	; 68	'D'
      004FB0 55                    2172 	.db #0x55	; 85	'U'
      004FB1                       2173 __xinit__target_mac:
      004FB1 F8                    2174 	.db #0xf8	; 248
      004FB2 75                    2175 	.db #0x75	; 117	'u'
      004FB3 A4                    2176 	.db #0xa4	; 164
      004FB4 8C                    2177 	.db #0x8c	; 140
      004FB5 41                    2178 	.db #0x41	; 65	'A'
      004FB6 31                    2179 	.db #0x31	; 49	'1'
      004FB7                       2180 __xinit__device_ip:
      004FB7 C0                    2181 	.db #0xc0	; 192
      004FB8 A8                    2182 	.db #0xa8	; 168
      004FB9 01                    2183 	.db #0x01	; 1
      004FBA 64                    2184 	.db #0x64	; 100	'd'
      004FBB                       2185 __xinit__target_ip:
      004FBB C0                    2186 	.db #0xc0	; 192
      004FBC A8                    2187 	.db #0xa8	; 168
      004FBD 01                    2188 	.db #0x01	; 1
      004FBE 01                    2189 	.db #0x01	; 1
                                   2190 	.area CABS    (ABS,CODE)

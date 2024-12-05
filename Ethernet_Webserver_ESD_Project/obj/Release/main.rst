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
                                     14 	.globl _send_arp_request
                                     15 	.globl _init_ENC
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
                                    238 ;--------------------------------------------------------
                                    239 ; special function registers
                                    240 ;--------------------------------------------------------
                                    241 	.area RSEG    (ABS,DATA)
      000000                        242 	.org 0x0000
                           0000C8   243 _T2CON	=	0x00c8
                           0000CA   244 _RCAP2L	=	0x00ca
                           0000CB   245 _RCAP2H	=	0x00cb
                           0000CC   246 _TL2	=	0x00cc
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 _AUXR	=	0x008e
                           0000A2   249 _AUXR1	=	0x00a2
                           000097   250 _CKRL	=	0x0097
                           00008F   251 _CKCON0	=	0x008f
                           0000AF   252 _CKCON1	=	0x00af
                           0000FA   253 _CCAP0H	=	0x00fa
                           0000FB   254 _CCAP1H	=	0x00fb
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 _CCAP3H	=	0x00fd
                           0000FE   257 _CCAP4H	=	0x00fe
                           0000EA   258 _CCAP0L	=	0x00ea
                           0000EB   259 _CCAP1L	=	0x00eb
                           0000EC   260 _CCAP2L	=	0x00ec
                           0000ED   261 _CCAP3L	=	0x00ed
                           0000EE   262 _CCAP4L	=	0x00ee
                           0000DA   263 _CCAPM0	=	0x00da
                           0000DB   264 _CCAPM1	=	0x00db
                           0000DC   265 _CCAPM2	=	0x00dc
                           0000DD   266 _CCAPM3	=	0x00dd
                           0000DE   267 _CCAPM4	=	0x00de
                           0000D8   268 _CCON	=	0x00d8
                           0000F9   269 _CH	=	0x00f9
                           0000E9   270 _CL	=	0x00e9
                           0000D9   271 _CMOD	=	0x00d9
                           0000A8   272 _IEN0	=	0x00a8
                           0000B1   273 _IEN1	=	0x00b1
                           0000B8   274 _IPL0	=	0x00b8
                           0000B7   275 _IPH0	=	0x00b7
                           0000B2   276 _IPL1	=	0x00b2
                           0000B3   277 _IPH1	=	0x00b3
                           0000C0   278 _P4	=	0x00c0
                           0000E8   279 _P5	=	0x00e8
                           0000A6   280 _WDTRST	=	0x00a6
                           0000A7   281 _WDTPRG	=	0x00a7
                           0000A9   282 _SADDR	=	0x00a9
                           0000B9   283 _SADEN	=	0x00b9
                           0000C3   284 _SPCON	=	0x00c3
                           0000C4   285 _SPSTA	=	0x00c4
                           0000C5   286 _SPDAT	=	0x00c5
                           0000C9   287 _T2MOD	=	0x00c9
                           00009B   288 _BDRCON	=	0x009b
                           00009A   289 _BRL	=	0x009a
                           00009C   290 _KBLS	=	0x009c
                           00009D   291 _KBE	=	0x009d
                           00009E   292 _KBF	=	0x009e
                           0000D2   293 _EECON	=	0x00d2
                           0000E0   294 _ACC	=	0x00e0
                           0000F0   295 _B	=	0x00f0
                           000083   296 _DPH	=	0x0083
                           000083   297 _DP0H	=	0x0083
                           000082   298 _DPL	=	0x0082
                           000082   299 _DP0L	=	0x0082
                           0000A8   300 _IE	=	0x00a8
                           0000B8   301 _IP	=	0x00b8
                           000080   302 _P0	=	0x0080
                           000090   303 _P1	=	0x0090
                           0000A0   304 _P2	=	0x00a0
                           0000B0   305 _P3	=	0x00b0
                           000087   306 _PCON	=	0x0087
                           0000D0   307 _PSW	=	0x00d0
                           000099   308 _SBUF	=	0x0099
                           000099   309 _SBUF0	=	0x0099
                           000098   310 _SCON	=	0x0098
                           000081   311 _SP	=	0x0081
                           000088   312 _TCON	=	0x0088
                           00008C   313 _TH0	=	0x008c
                           00008D   314 _TH1	=	0x008d
                           00008A   315 _TL0	=	0x008a
                           00008B   316 _TL1	=	0x008b
                           000089   317 _TMOD	=	0x0089
                                    318 ;--------------------------------------------------------
                                    319 ; special function bits
                                    320 ;--------------------------------------------------------
                                    321 	.area RSEG    (ABS,DATA)
      000000                        322 	.org 0x0000
                           0000AD   323 _ET2	=	0x00ad
                           0000BD   324 _PT2	=	0x00bd
                           0000C8   325 _T2CON_0	=	0x00c8
                           0000C9   326 _T2CON_1	=	0x00c9
                           0000CA   327 _T2CON_2	=	0x00ca
                           0000CB   328 _T2CON_3	=	0x00cb
                           0000CC   329 _T2CON_4	=	0x00cc
                           0000CD   330 _T2CON_5	=	0x00cd
                           0000CE   331 _T2CON_6	=	0x00ce
                           0000CF   332 _T2CON_7	=	0x00cf
                           0000C8   333 _CP_RL2	=	0x00c8
                           0000C9   334 _C_T2	=	0x00c9
                           0000CA   335 _TR2	=	0x00ca
                           0000CB   336 _EXEN2	=	0x00cb
                           0000CC   337 _TCLK	=	0x00cc
                           0000CD   338 _RCLK	=	0x00cd
                           0000CE   339 _EXF2	=	0x00ce
                           0000CF   340 _TF2	=	0x00cf
                           0000DF   341 _CF	=	0x00df
                           0000DE   342 _CR	=	0x00de
                           0000DC   343 _CCF4	=	0x00dc
                           0000DB   344 _CCF3	=	0x00db
                           0000DA   345 _CCF2	=	0x00da
                           0000D9   346 _CCF1	=	0x00d9
                           0000D8   347 _CCF0	=	0x00d8
                           0000AE   348 _EC	=	0x00ae
                           0000BE   349 _PPCL	=	0x00be
                           0000BD   350 _PT2L	=	0x00bd
                           0000BC   351 _PSL	=	0x00bc
                           0000BB   352 _PT1L	=	0x00bb
                           0000BA   353 _PX1L	=	0x00ba
                           0000B9   354 _PT0L	=	0x00b9
                           0000B8   355 _PX0L	=	0x00b8
                           0000C0   356 _P4_0	=	0x00c0
                           0000C1   357 _P4_1	=	0x00c1
                           0000C2   358 _P4_2	=	0x00c2
                           0000C3   359 _P4_3	=	0x00c3
                           0000C4   360 _P4_4	=	0x00c4
                           0000C5   361 _P4_5	=	0x00c5
                           0000C6   362 _P4_6	=	0x00c6
                           0000C7   363 _P4_7	=	0x00c7
                           0000E8   364 _P5_0	=	0x00e8
                           0000E9   365 _P5_1	=	0x00e9
                           0000EA   366 _P5_2	=	0x00ea
                           0000EB   367 _P5_3	=	0x00eb
                           0000EC   368 _P5_4	=	0x00ec
                           0000ED   369 _P5_5	=	0x00ed
                           0000EE   370 _P5_6	=	0x00ee
                           0000EF   371 _P5_7	=	0x00ef
                           0000F0   372 _BREG_F0	=	0x00f0
                           0000F1   373 _BREG_F1	=	0x00f1
                           0000F2   374 _BREG_F2	=	0x00f2
                           0000F3   375 _BREG_F3	=	0x00f3
                           0000F4   376 _BREG_F4	=	0x00f4
                           0000F5   377 _BREG_F5	=	0x00f5
                           0000F6   378 _BREG_F6	=	0x00f6
                           0000F7   379 _BREG_F7	=	0x00f7
                           0000A8   380 _EX0	=	0x00a8
                           0000A9   381 _ET0	=	0x00a9
                           0000AA   382 _EX1	=	0x00aa
                           0000AB   383 _ET1	=	0x00ab
                           0000AC   384 _ES	=	0x00ac
                           0000AF   385 _EA	=	0x00af
                           0000B8   386 _PX0	=	0x00b8
                           0000B9   387 _PT0	=	0x00b9
                           0000BA   388 _PX1	=	0x00ba
                           0000BB   389 _PT1	=	0x00bb
                           0000BC   390 _PS	=	0x00bc
                           000080   391 _P0_0	=	0x0080
                           000081   392 _P0_1	=	0x0081
                           000082   393 _P0_2	=	0x0082
                           000083   394 _P0_3	=	0x0083
                           000084   395 _P0_4	=	0x0084
                           000085   396 _P0_5	=	0x0085
                           000086   397 _P0_6	=	0x0086
                           000087   398 _P0_7	=	0x0087
                           000090   399 _P1_0	=	0x0090
                           000091   400 _P1_1	=	0x0091
                           000092   401 _P1_2	=	0x0092
                           000093   402 _P1_3	=	0x0093
                           000094   403 _P1_4	=	0x0094
                           000095   404 _P1_5	=	0x0095
                           000096   405 _P1_6	=	0x0096
                           000097   406 _P1_7	=	0x0097
                           0000A0   407 _P2_0	=	0x00a0
                           0000A1   408 _P2_1	=	0x00a1
                           0000A2   409 _P2_2	=	0x00a2
                           0000A3   410 _P2_3	=	0x00a3
                           0000A4   411 _P2_4	=	0x00a4
                           0000A5   412 _P2_5	=	0x00a5
                           0000A6   413 _P2_6	=	0x00a6
                           0000A7   414 _P2_7	=	0x00a7
                           0000B0   415 _P3_0	=	0x00b0
                           0000B1   416 _P3_1	=	0x00b1
                           0000B2   417 _P3_2	=	0x00b2
                           0000B3   418 _P3_3	=	0x00b3
                           0000B4   419 _P3_4	=	0x00b4
                           0000B5   420 _P3_5	=	0x00b5
                           0000B6   421 _P3_6	=	0x00b6
                           0000B7   422 _P3_7	=	0x00b7
                           0000B0   423 _RXD	=	0x00b0
                           0000B0   424 _RXD0	=	0x00b0
                           0000B1   425 _TXD	=	0x00b1
                           0000B1   426 _TXD0	=	0x00b1
                           0000B2   427 _INT0	=	0x00b2
                           0000B3   428 _INT1	=	0x00b3
                           0000B4   429 _T0	=	0x00b4
                           0000B5   430 _T1	=	0x00b5
                           0000B6   431 _WR	=	0x00b6
                           0000B7   432 _RD	=	0x00b7
                           0000D0   433 _P	=	0x00d0
                           0000D1   434 _F1	=	0x00d1
                           0000D2   435 _OV	=	0x00d2
                           0000D3   436 _RS0	=	0x00d3
                           0000D4   437 _RS1	=	0x00d4
                           0000D5   438 _F0	=	0x00d5
                           0000D6   439 _AC	=	0x00d6
                           0000D7   440 _CY	=	0x00d7
                           000098   441 _RI	=	0x0098
                           000099   442 _TI	=	0x0099
                           00009A   443 _RB8	=	0x009a
                           00009B   444 _TB8	=	0x009b
                           00009C   445 _REN	=	0x009c
                           00009D   446 _SM2	=	0x009d
                           00009E   447 _SM1	=	0x009e
                           00009F   448 _SM0	=	0x009f
                           000088   449 _IT0	=	0x0088
                           000089   450 _IE0	=	0x0089
                           00008A   451 _IT1	=	0x008a
                           00008B   452 _IE1	=	0x008b
                           00008C   453 _TR0	=	0x008c
                           00008D   454 _TF0	=	0x008d
                           00008E   455 _TR1	=	0x008e
                           00008F   456 _TF1	=	0x008f
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable register banks
                                    459 ;--------------------------------------------------------
                                    460 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        461 	.ds 8
                                    462 ;--------------------------------------------------------
                                    463 ; internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area DSEG    (DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; overlayable items in internal ram
                                    468 ;--------------------------------------------------------
                                    469 	.area	OSEG    (OVR,DATA)
      000013                        470 _hex_to_int_sloc0_1_0:
      000013                        471 	.ds 3
      000016                        472 _hex_to_int_sloc1_1_0:
      000016                        473 	.ds 1
      000017                        474 _hex_to_int_sloc2_1_0:
      000017                        475 	.ds 2
                                    476 ;--------------------------------------------------------
                                    477 ; Stack segment in internal ram
                                    478 ;--------------------------------------------------------
                                    479 	.area SSEG
      000022                        480 __start__stack:
      000022                        481 	.ds	1
                                    482 
                                    483 ;--------------------------------------------------------
                                    484 ; indirectly addressable internal ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area ISEG    (DATA)
                                    487 ;--------------------------------------------------------
                                    488 ; absolute internal ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area IABS    (ABS,DATA)
                                    491 	.area IABS    (ABS,DATA)
                                    492 ;--------------------------------------------------------
                                    493 ; bit data
                                    494 ;--------------------------------------------------------
                                    495 	.area BSEG    (BIT)
                                    496 ;--------------------------------------------------------
                                    497 ; paged external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area PSEG    (PAG,XDATA)
                                    500 ;--------------------------------------------------------
                                    501 ; uninitialized external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XSEG    (XDATA)
      00014F                        504 _hex_to_int_str_10000_70:
      00014F                        505 	.ds 3
      000152                        506 _hex_to_int_result_10000_71:
      000152                        507 	.ds 2
      000154                        508 _hex_to_int_ASCII_20000_72:
      000154                        509 	.ds 2
      000156                        510 _get_user_buffer_size_input_10000_77:
      000156                        511 	.ds 10
      000160                        512 _main_buffer_40003_90:
      000160                        513 	.ds 256
      000260                        514 _main_buffer_40003_95:
      000260                        515 	.ds 256
                                    516 ;--------------------------------------------------------
                                    517 ; absolute external ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area XABS    (ABS,XDATA)
                                    520 ;--------------------------------------------------------
                                    521 ; initialized external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area XISEG   (XDATA)
                                    524 	.area HOME    (CODE)
                                    525 	.area GSINIT0 (CODE)
                                    526 	.area GSINIT1 (CODE)
                                    527 	.area GSINIT2 (CODE)
                                    528 	.area GSINIT3 (CODE)
                                    529 	.area GSINIT4 (CODE)
                                    530 	.area GSINIT5 (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.area GSFINAL (CODE)
                                    533 	.area CSEG    (CODE)
                                    534 ;--------------------------------------------------------
                                    535 ; interrupt vector
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
      002000                        538 __interrupt_vect:
      002000 02 20 09         [24]  539 	ljmp	__sdcc_gsinit_startup
      002003 02 26 12         [24]  540 	ljmp	_external_interrupt0_isr
                                    541 ;--------------------------------------------------------
                                    542 ; global & static initialisations
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 	.area GSFINAL (CODE)
                                    547 	.area GSINIT  (CODE)
                                    548 	.globl __sdcc_gsinit_startup
                                    549 	.globl __sdcc_program_startup
                                    550 	.globl __start__stack
                                    551 	.globl __mcs51_genXINIT
                                    552 	.globl __mcs51_genXRAMCLEAR
                                    553 	.globl __mcs51_genRAMCLEAR
                                    554 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  555 	ljmp	__sdcc_program_startup
                                    556 ;--------------------------------------------------------
                                    557 ; Home
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area HOME    (CODE)
      002006                        561 __sdcc_program_startup:
      002006 02 28 AC         [24]  562 	ljmp	_main
                                    563 ;	return from main will return to caller
                                    564 ;--------------------------------------------------------
                                    565 ; code
                                    566 ;--------------------------------------------------------
                                    567 	.area CSEG    (CODE)
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'hex_to_int'
                                    570 ;------------------------------------------------------------
                                    571 ;str                       Allocated with name '_hex_to_int_str_10000_70'
                                    572 ;i                         Allocated with name '_hex_to_int_i_10000_71'
                                    573 ;result                    Allocated with name '_hex_to_int_result_10000_71'
                                    574 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_72'
                                    575 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    576 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    577 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    578 ;------------------------------------------------------------
                                    579 ;	main.c:12: int hex_to_int(char* str)
                                    580 ;	-----------------------------------------
                                    581 ;	 function hex_to_int
                                    582 ;	-----------------------------------------
      00266E                        583 _hex_to_int:
                           000007   584 	ar7 = 0x07
                           000006   585 	ar6 = 0x06
                           000005   586 	ar5 = 0x05
                           000004   587 	ar4 = 0x04
                           000003   588 	ar3 = 0x03
                           000002   589 	ar2 = 0x02
                           000001   590 	ar1 = 0x01
                           000000   591 	ar0 = 0x00
      00266E AF F0            [24]  592 	mov	r7,b
      002670 AE 83            [24]  593 	mov	r6,dph
      002672 E5 82            [12]  594 	mov	a,dpl
      002674 90 01 4F         [24]  595 	mov	dptr,#_hex_to_int_str_10000_70
      002677 F0               [24]  596 	movx	@dptr,a
      002678 EE               [12]  597 	mov	a,r6
      002679 A3               [24]  598 	inc	dptr
      00267A F0               [24]  599 	movx	@dptr,a
      00267B EF               [12]  600 	mov	a,r7
      00267C A3               [24]  601 	inc	dptr
      00267D F0               [24]  602 	movx	@dptr,a
                                    603 ;	main.c:15: int i = 0, result = 0;
      00267E 90 01 52         [24]  604 	mov	dptr,#_hex_to_int_result_10000_71
      002681 E4               [12]  605 	clr	a
      002682 F0               [24]  606 	movx	@dptr,a
      002683 A3               [24]  607 	inc	dptr
      002684 F0               [24]  608 	movx	@dptr,a
                                    609 ;	main.c:16: while(str[i] != '\0')
      002685 90 01 4F         [24]  610 	mov	dptr,#_hex_to_int_str_10000_70
      002688 E0               [24]  611 	movx	a,@dptr
      002689 FD               [12]  612 	mov	r5,a
      00268A A3               [24]  613 	inc	dptr
      00268B E0               [24]  614 	movx	a,@dptr
      00268C FE               [12]  615 	mov	r6,a
      00268D A3               [24]  616 	inc	dptr
      00268E E0               [24]  617 	movx	a,@dptr
      00268F FF               [12]  618 	mov	r7,a
      002690 8D 02            [24]  619 	mov	ar2,r5
      002692 8E 03            [24]  620 	mov	ar3,r6
      002694 8F 04            [24]  621 	mov	ar4,r7
      002696 8D 13            [24]  622 	mov	_hex_to_int_sloc0_1_0,r5
      002698 8E 14            [24]  623 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      00269A 8F 15            [24]  624 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      00269C 78 00            [12]  625 	mov	r0,#0x00
      00269E 79 00            [12]  626 	mov	r1,#0x00
      0026A0                        627 00112$:
      0026A0 C0 02            [24]  628 	push	ar2
      0026A2 C0 03            [24]  629 	push	ar3
      0026A4 C0 04            [24]  630 	push	ar4
      0026A6 E8               [12]  631 	mov	a,r0
      0026A7 25 13            [12]  632 	add	a, _hex_to_int_sloc0_1_0
      0026A9 FA               [12]  633 	mov	r2,a
      0026AA E9               [12]  634 	mov	a,r1
      0026AB 35 14            [12]  635 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      0026AD FB               [12]  636 	mov	r3,a
      0026AE AC 15            [24]  637 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      0026B0 8A 82            [24]  638 	mov	dpl,r2
      0026B2 8B 83            [24]  639 	mov	dph,r3
      0026B4 8C F0            [24]  640 	mov	b,r4
      0026B6 12 44 05         [24]  641 	lcall	__gptrget
      0026B9 F5 16            [12]  642 	mov	_hex_to_int_sloc1_1_0,a
      0026BB D0 04            [24]  643 	pop	ar4
      0026BD D0 03            [24]  644 	pop	ar3
      0026BF D0 02            [24]  645 	pop	ar2
      0026C1 E5 16            [12]  646 	mov	a,_hex_to_int_sloc1_1_0
      0026C3 70 03            [24]  647 	jnz	00166$
      0026C5 02 28 1C         [24]  648 	ljmp	00114$
      0026C8                        649 00166$:
                                    650 ;	main.c:18: int ASCII = (int)str[i];
      0026C8 C0 02            [24]  651 	push	ar2
      0026CA C0 03            [24]  652 	push	ar3
      0026CC C0 04            [24]  653 	push	ar4
      0026CE 85 16 17         [24]  654 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      0026D1 75 18 00         [24]  655 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      0026D4 90 01 54         [24]  656 	mov	dptr,#_hex_to_int_ASCII_20000_72
      0026D7 E5 17            [12]  657 	mov	a,_hex_to_int_sloc2_1_0
      0026D9 F0               [24]  658 	movx	@dptr,a
      0026DA E5 18            [12]  659 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0026DC A3               [24]  660 	inc	dptr
      0026DD F0               [24]  661 	movx	@dptr,a
                                    662 ;	main.c:19: result *= 16;
      0026DE 90 01 52         [24]  663 	mov	dptr,#_hex_to_int_result_10000_71
      0026E1 E0               [24]  664 	movx	a,@dptr
      0026E2 FB               [12]  665 	mov	r3,a
      0026E3 A3               [24]  666 	inc	dptr
      0026E4 E0               [24]  667 	movx	a,@dptr
      0026E5 C4               [12]  668 	swap	a
      0026E6 54 F0            [12]  669 	anl	a,#0xf0
      0026E8 CB               [12]  670 	xch	a,r3
      0026E9 C4               [12]  671 	swap	a
      0026EA CB               [12]  672 	xch	a,r3
      0026EB 6B               [12]  673 	xrl	a,r3
      0026EC CB               [12]  674 	xch	a,r3
      0026ED 54 F0            [12]  675 	anl	a,#0xf0
      0026EF CB               [12]  676 	xch	a,r3
      0026F0 6B               [12]  677 	xrl	a,r3
      0026F1 FC               [12]  678 	mov	r4,a
      0026F2 90 01 52         [24]  679 	mov	dptr,#_hex_to_int_result_10000_71
      0026F5 EB               [12]  680 	mov	a,r3
      0026F6 F0               [24]  681 	movx	@dptr,a
      0026F7 EC               [12]  682 	mov	a,r4
      0026F8 A3               [24]  683 	inc	dptr
      0026F9 F0               [24]  684 	movx	@dptr,a
                                    685 ;	main.c:20: if(ASCII >= '0' && ASCII <= '9')
      0026FA C3               [12]  686 	clr	c
      0026FB E5 17            [12]  687 	mov	a,_hex_to_int_sloc2_1_0
      0026FD 94 30            [12]  688 	subb	a,#0x30
      0026FF E5 18            [12]  689 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002701 64 80            [12]  690 	xrl	a,#0x80
      002703 94 80            [12]  691 	subb	a,#0x80
      002705 D0 04            [24]  692 	pop	ar4
      002707 D0 03            [24]  693 	pop	ar3
      002709 D0 02            [24]  694 	pop	ar2
      00270B 40 3F            [24]  695 	jc	00109$
      00270D 74 39            [12]  696 	mov	a,#0x39
      00270F 95 17            [12]  697 	subb	a,_hex_to_int_sloc2_1_0
      002711 74 80            [12]  698 	mov	a,#(0x00 ^ 0x80)
      002713 85 18 F0         [24]  699 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002716 63 F0 80         [24]  700 	xrl	b,#0x80
      002719 95 F0            [12]  701 	subb	a,b
      00271B 40 2F            [24]  702 	jc	00109$
                                    703 ;	main.c:22: result += str[i] - 48;
      00271D C0 02            [24]  704 	push	ar2
      00271F C0 03            [24]  705 	push	ar3
      002721 C0 04            [24]  706 	push	ar4
      002723 E5 17            [12]  707 	mov	a,_hex_to_int_sloc2_1_0
      002725 24 D0            [12]  708 	add	a,#0xd0
      002727 F5 17            [12]  709 	mov	_hex_to_int_sloc2_1_0,a
      002729 E5 18            [12]  710 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00272B 34 FF            [12]  711 	addc	a,#0xff
      00272D F5 18            [12]  712 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      00272F 90 01 52         [24]  713 	mov	dptr,#_hex_to_int_result_10000_71
      002732 E0               [24]  714 	movx	a,@dptr
      002733 FA               [12]  715 	mov	r2,a
      002734 A3               [24]  716 	inc	dptr
      002735 E0               [24]  717 	movx	a,@dptr
      002736 FC               [12]  718 	mov	r4,a
      002737 90 01 52         [24]  719 	mov	dptr,#_hex_to_int_result_10000_71
      00273A E5 17            [12]  720 	mov	a,_hex_to_int_sloc2_1_0
      00273C 2A               [12]  721 	add	a, r2
      00273D F0               [24]  722 	movx	@dptr,a
      00273E E5 18            [12]  723 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002740 3C               [12]  724 	addc	a, r4
      002741 A3               [24]  725 	inc	dptr
      002742 F0               [24]  726 	movx	@dptr,a
      002743 D0 04            [24]  727 	pop	ar4
      002745 D0 03            [24]  728 	pop	ar3
      002747 D0 02            [24]  729 	pop	ar2
      002749 02 28 14         [24]  730 	ljmp	00110$
      00274C                        731 00109$:
                                    732 ;	main.c:24: else if(ASCII >= 'A' && ASCII <= 'F')
      00274C 90 01 54         [24]  733 	mov	dptr,#_hex_to_int_ASCII_20000_72
      00274F E0               [24]  734 	movx	a,@dptr
      002750 F5 17            [12]  735 	mov	_hex_to_int_sloc2_1_0,a
      002752 A3               [24]  736 	inc	dptr
      002753 E0               [24]  737 	movx	a,@dptr
      002754 F5 18            [12]  738 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002756 C3               [12]  739 	clr	c
      002757 E5 17            [12]  740 	mov	a,_hex_to_int_sloc2_1_0
      002759 94 41            [12]  741 	subb	a,#0x41
      00275B E5 18            [12]  742 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00275D 64 80            [12]  743 	xrl	a,#0x80
      00275F 94 80            [12]  744 	subb	a,#0x80
      002761 40 4E            [24]  745 	jc	00105$
      002763 74 46            [12]  746 	mov	a,#0x46
      002765 95 17            [12]  747 	subb	a,_hex_to_int_sloc2_1_0
      002767 74 80            [12]  748 	mov	a,#(0x00 ^ 0x80)
      002769 85 18 F0         [24]  749 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      00276C 63 F0 80         [24]  750 	xrl	b,#0x80
      00276F 95 F0            [12]  751 	subb	a,b
      002771 40 3E            [24]  752 	jc	00105$
                                    753 ;	main.c:26: result += str[i] - 55;
      002773 C0 05            [24]  754 	push	ar5
      002775 C0 06            [24]  755 	push	ar6
      002777 C0 07            [24]  756 	push	ar7
      002779 E8               [12]  757 	mov	a,r0
      00277A 2A               [12]  758 	add	a, r2
      00277B FD               [12]  759 	mov	r5,a
      00277C E9               [12]  760 	mov	a,r1
      00277D 3B               [12]  761 	addc	a, r3
      00277E FE               [12]  762 	mov	r6,a
      00277F 8C 07            [24]  763 	mov	ar7,r4
      002781 8D 82            [24]  764 	mov	dpl,r5
      002783 8E 83            [24]  765 	mov	dph,r6
      002785 8F F0            [24]  766 	mov	b,r7
      002787 12 44 05         [24]  767 	lcall	__gptrget
      00278A 7F 00            [12]  768 	mov	r7,#0x00
      00278C 24 C9            [12]  769 	add	a,#0xc9
      00278E F5 17            [12]  770 	mov	_hex_to_int_sloc2_1_0,a
      002790 EF               [12]  771 	mov	a,r7
      002791 34 FF            [12]  772 	addc	a,#0xff
      002793 F5 18            [12]  773 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002795 90 01 52         [24]  774 	mov	dptr,#_hex_to_int_result_10000_71
      002798 E0               [24]  775 	movx	a,@dptr
      002799 FE               [12]  776 	mov	r6,a
      00279A A3               [24]  777 	inc	dptr
      00279B E0               [24]  778 	movx	a,@dptr
      00279C FF               [12]  779 	mov	r7,a
      00279D 90 01 52         [24]  780 	mov	dptr,#_hex_to_int_result_10000_71
      0027A0 E5 17            [12]  781 	mov	a,_hex_to_int_sloc2_1_0
      0027A2 2E               [12]  782 	add	a, r6
      0027A3 F0               [24]  783 	movx	@dptr,a
      0027A4 E5 18            [12]  784 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0027A6 3F               [12]  785 	addc	a, r7
      0027A7 A3               [24]  786 	inc	dptr
      0027A8 F0               [24]  787 	movx	@dptr,a
      0027A9 D0 07            [24]  788 	pop	ar7
      0027AB D0 06            [24]  789 	pop	ar6
      0027AD D0 05            [24]  790 	pop	ar5
      0027AF 80 63            [24]  791 	sjmp	00110$
      0027B1                        792 00105$:
                                    793 ;	main.c:28: else if(ASCII >= 'a' && ASCII <= 'f')
      0027B1 90 01 54         [24]  794 	mov	dptr,#_hex_to_int_ASCII_20000_72
      0027B4 E0               [24]  795 	movx	a,@dptr
      0027B5 F5 17            [12]  796 	mov	_hex_to_int_sloc2_1_0,a
      0027B7 A3               [24]  797 	inc	dptr
      0027B8 E0               [24]  798 	movx	a,@dptr
      0027B9 F5 18            [12]  799 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0027BB C3               [12]  800 	clr	c
      0027BC E5 17            [12]  801 	mov	a,_hex_to_int_sloc2_1_0
      0027BE 94 61            [12]  802 	subb	a,#0x61
      0027C0 E5 18            [12]  803 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0027C2 64 80            [12]  804 	xrl	a,#0x80
      0027C4 94 80            [12]  805 	subb	a,#0x80
      0027C6 40 4C            [24]  806 	jc	00110$
      0027C8 74 66            [12]  807 	mov	a,#0x66
      0027CA 95 17            [12]  808 	subb	a,_hex_to_int_sloc2_1_0
      0027CC 74 80            [12]  809 	mov	a,#(0x00 ^ 0x80)
      0027CE 85 18 F0         [24]  810 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      0027D1 63 F0 80         [24]  811 	xrl	b,#0x80
      0027D4 95 F0            [12]  812 	subb	a,b
      0027D6 40 3C            [24]  813 	jc	00110$
                                    814 ;	main.c:30: result += str[i] - 87;
      0027D8 C0 02            [24]  815 	push	ar2
      0027DA C0 03            [24]  816 	push	ar3
      0027DC C0 04            [24]  817 	push	ar4
      0027DE E8               [12]  818 	mov	a,r0
      0027DF 2D               [12]  819 	add	a, r5
      0027E0 FA               [12]  820 	mov	r2,a
      0027E1 E9               [12]  821 	mov	a,r1
      0027E2 3E               [12]  822 	addc	a, r6
      0027E3 FB               [12]  823 	mov	r3,a
      0027E4 8F 04            [24]  824 	mov	ar4,r7
      0027E6 8A 82            [24]  825 	mov	dpl,r2
      0027E8 8B 83            [24]  826 	mov	dph,r3
      0027EA 8C F0            [24]  827 	mov	b,r4
      0027EC 12 44 05         [24]  828 	lcall	__gptrget
      0027EF 7C 00            [12]  829 	mov	r4,#0x00
      0027F1 24 A9            [12]  830 	add	a,#0xa9
      0027F3 F5 17            [12]  831 	mov	_hex_to_int_sloc2_1_0,a
      0027F5 EC               [12]  832 	mov	a,r4
      0027F6 34 FF            [12]  833 	addc	a,#0xff
      0027F8 F5 18            [12]  834 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0027FA 90 01 52         [24]  835 	mov	dptr,#_hex_to_int_result_10000_71
      0027FD E0               [24]  836 	movx	a,@dptr
      0027FE FB               [12]  837 	mov	r3,a
      0027FF A3               [24]  838 	inc	dptr
      002800 E0               [24]  839 	movx	a,@dptr
      002801 FC               [12]  840 	mov	r4,a
      002802 90 01 52         [24]  841 	mov	dptr,#_hex_to_int_result_10000_71
      002805 E5 17            [12]  842 	mov	a,_hex_to_int_sloc2_1_0
      002807 2B               [12]  843 	add	a, r3
      002808 F0               [24]  844 	movx	@dptr,a
      002809 E5 18            [12]  845 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00280B 3C               [12]  846 	addc	a, r4
      00280C A3               [24]  847 	inc	dptr
      00280D F0               [24]  848 	movx	@dptr,a
                                    849 ;	main.c:34: return result;
      00280E D0 04            [24]  850 	pop	ar4
      002810 D0 03            [24]  851 	pop	ar3
      002812 D0 02            [24]  852 	pop	ar2
                                    853 ;	main.c:30: result += str[i] - 87;
      002814                        854 00110$:
                                    855 ;	main.c:32: i++;
      002814 08               [12]  856 	inc	r0
      002815 B8 00 01         [24]  857 	cjne	r0,#0x00,00173$
      002818 09               [12]  858 	inc	r1
      002819                        859 00173$:
      002819 02 26 A0         [24]  860 	ljmp	00112$
      00281C                        861 00114$:
                                    862 ;	main.c:34: return result;
      00281C 90 01 52         [24]  863 	mov	dptr,#_hex_to_int_result_10000_71
      00281F E0               [24]  864 	movx	a,@dptr
      002820 FE               [12]  865 	mov	r6,a
      002821 A3               [24]  866 	inc	dptr
      002822 E0               [24]  867 	movx	a,@dptr
                                    868 ;	main.c:36: }
      002823 8E 82            [24]  869 	mov	dpl,r6
      002825 F5 83            [12]  870 	mov	dph,a
      002827 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    874 ;------------------------------------------------------------
                                    875 ;i                         Allocated with name '_get_user_buffer_size_i_10000_77'
                                    876 ;output                    Allocated with name '_get_user_buffer_size_output_10000_77'
                                    877 ;input                     Allocated with name '_get_user_buffer_size_input_10000_77'
                                    878 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_77'
                                    879 ;------------------------------------------------------------
                                    880 ;	main.c:39: int get_user_buffer_size(void)
                                    881 ;	-----------------------------------------
                                    882 ;	 function get_user_buffer_size
                                    883 ;	-----------------------------------------
      002828                        884 _get_user_buffer_size:
                                    885 ;	main.c:45: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      002828 7E 00            [12]  886 	mov	r6,#0x00
      00282A 7F 00            [12]  887 	mov	r7,#0x00
      00282C                        888 00103$:
      00282C C0 07            [24]  889 	push	ar7
      00282E C0 06            [24]  890 	push	ar6
      002830 12 37 CD         [24]  891 	lcall	_getchar
      002833 AC 82            [24]  892 	mov	r4, dpl
      002835 D0 06            [24]  893 	pop	ar6
      002837 D0 07            [24]  894 	pop	ar7
      002839 BC 0A 02         [24]  895 	cjne	r4,#0x0a,00133$
      00283C 80 3A            [24]  896 	sjmp	00105$
      00283E                        897 00133$:
      00283E BC 0D 02         [24]  898 	cjne	r4,#0x0d,00134$
      002841 80 35            [24]  899 	sjmp	00105$
      002843                        900 00134$:
      002843 C3               [12]  901 	clr	c
      002844 EE               [12]  902 	mov	a,r6
      002845 94 09            [12]  903 	subb	a,#0x09
      002847 EF               [12]  904 	mov	a,r7
      002848 64 80            [12]  905 	xrl	a,#0x80
      00284A 94 80            [12]  906 	subb	a,#0x80
      00284C 50 2A            [24]  907 	jnc	00105$
                                    908 ;	main.c:47: putchar(ch);
      00284E 8C 03            [24]  909 	mov	ar3,r4
      002850 7D 00            [12]  910 	mov	r5,#0x00
      002852 8B 82            [24]  911 	mov	dpl, r3
      002854 8D 83            [24]  912 	mov	dph, r5
      002856 C0 07            [24]  913 	push	ar7
      002858 C0 06            [24]  914 	push	ar6
      00285A C0 04            [24]  915 	push	ar4
      00285C 12 37 AE         [24]  916 	lcall	_putchar
      00285F D0 04            [24]  917 	pop	ar4
      002861 D0 06            [24]  918 	pop	ar6
      002863 D0 07            [24]  919 	pop	ar7
                                    920 ;	main.c:48: input[i] = ch;      //Append the input array with the received character
      002865 EE               [12]  921 	mov	a,r6
      002866 24 56            [12]  922 	add	a, #_get_user_buffer_size_input_10000_77
      002868 F5 82            [12]  923 	mov	dpl,a
      00286A EF               [12]  924 	mov	a,r7
      00286B 34 01            [12]  925 	addc	a, #(_get_user_buffer_size_input_10000_77 >> 8)
      00286D F5 83            [12]  926 	mov	dph,a
      00286F EC               [12]  927 	mov	a,r4
      002870 F0               [24]  928 	movx	@dptr,a
                                    929 ;	main.c:49: i++;
      002871 0E               [12]  930 	inc	r6
      002872 BE 00 B7         [24]  931 	cjne	r6,#0x00,00103$
      002875 0F               [12]  932 	inc	r7
      002876 80 B4            [24]  933 	sjmp	00103$
      002878                        934 00105$:
                                    935 ;	main.c:51: input[i] = '\0';
      002878 EE               [12]  936 	mov	a,r6
      002879 24 56            [12]  937 	add	a, #_get_user_buffer_size_input_10000_77
      00287B F5 82            [12]  938 	mov	dpl,a
      00287D EF               [12]  939 	mov	a,r7
      00287E 34 01            [12]  940 	addc	a, #(_get_user_buffer_size_input_10000_77 >> 8)
      002880 F5 83            [12]  941 	mov	dph,a
      002882 E4               [12]  942 	clr	a
      002883 F0               [24]  943 	movx	@dptr,a
                                    944 ;	main.c:52: output = hex_to_int(input); //Convert the char hex data to int
      002884 90 01 56         [24]  945 	mov	dptr,#_get_user_buffer_size_input_10000_77
      002887 F5 F0            [12]  946 	mov	b,a
      002889 12 26 6E         [24]  947 	lcall	_hex_to_int
      00288C AE 82            [24]  948 	mov	r6, dpl
      00288E AF 83            [24]  949 	mov	r7, dph
                                    950 ;	main.c:53: printf_tiny("\n\r");
      002890 C0 07            [24]  951 	push	ar7
      002892 C0 06            [24]  952 	push	ar6
      002894 74 5D            [12]  953 	mov	a,#___str_0
      002896 C0 E0            [24]  954 	push	acc
      002898 74 45            [12]  955 	mov	a,#(___str_0 >> 8)
      00289A C0 E0            [24]  956 	push	acc
      00289C 12 38 6C         [24]  957 	lcall	_printf_tiny
      00289F 15 81            [12]  958 	dec	sp
      0028A1 15 81            [12]  959 	dec	sp
      0028A3 D0 06            [24]  960 	pop	ar6
      0028A5 D0 07            [24]  961 	pop	ar7
                                    962 ;	main.c:55: return output;
      0028A7 8E 82            [24]  963 	mov	dpl, r6
      0028A9 8F 83            [24]  964 	mov	dph, r7
                                    965 ;	main.c:56: }
      0028AB 22               [24]  966 	ret
                                    967 ;------------------------------------------------------------
                                    968 ;Allocation info for local variables in function 'main'
                                    969 ;------------------------------------------------------------
                                    970 ;c                         Allocated with name '_main_c_20001_82'
                                    971 ;reg_bank                  Allocated with name '_main_reg_bank_40002_85'
                                    972 ;addr                      Allocated with name '_main_addr_40003_86'
                                    973 ;data                      Allocated with name '_main_data_40004_87'
                                    974 ;num_bytes                 Allocated with name '_main_num_bytes_40002_89'
                                    975 ;start_address             Allocated with name '_main_start_address_40003_90'
                                    976 ;buffer                    Allocated with name '_main_buffer_40003_90'
                                    977 ;i                         Allocated with name '_main_i_50003_91'
                                    978 ;num_bytes                 Allocated with name '_main_num_bytes_40002_94'
                                    979 ;start_address             Allocated with name '_main_start_address_40003_95'
                                    980 ;buffer                    Allocated with name '_main_buffer_40003_95'
                                    981 ;i                         Allocated with name '_main_i_50003_96'
                                    982 ;reg_bank                  Allocated with name '_main_reg_bank_40002_99'
                                    983 ;addr                      Allocated with name '_main_addr_40003_100'
                                    984 ;data                      Allocated with name '_main_data_40003_100'
                                    985 ;addr                      Allocated with name '_main_addr_40002_102'
                                    986 ;data                      Allocated with name '_main_data_40003_103'
                                    987 ;addr                      Allocated with name '_main_addr_40002_105'
                                    988 ;data                      Allocated with name '_main_data_40002_105'
                                    989 ;addr                      Allocated with name '_main_addr_40002_108'
                                    990 ;bank                      Allocated with name '_main_bank_40003_109'
                                    991 ;data                      Allocated with name '_main_data_40003_109'
                                    992 ;i                         Allocated with name '_main_i_50001_114'
                                    993 ;------------------------------------------------------------
                                    994 ;	main.c:58: void main(void)
                                    995 ;	-----------------------------------------
                                    996 ;	 function main
                                    997 ;	-----------------------------------------
      0028AC                        998 _main:
                                    999 ;	main.c:60: ENC_RESET = 1;
                                   1000 ;	assignBit
      0028AC D2 90            [12] 1001 	setb	_P1_0
                                   1002 ;	main.c:61: printf("SPI Operations on 8051\n\r");
      0028AE 74 60            [12] 1003 	mov	a,#___str_1
      0028B0 C0 E0            [24] 1004 	push	acc
      0028B2 74 45            [12] 1005 	mov	a,#(___str_1 >> 8)
      0028B4 C0 E0            [24] 1006 	push	acc
      0028B6 74 80            [12] 1007 	mov	a,#0x80
      0028B8 C0 E0            [24] 1008 	push	acc
      0028BA 12 39 E3         [24] 1009 	lcall	_printf
      0028BD 15 81            [12] 1010 	dec	sp
      0028BF 15 81            [12] 1011 	dec	sp
      0028C1 15 81            [12] 1012 	dec	sp
                                   1013 ;	main.c:62: configure_SPI();
      0028C3 12 30 2A         [24] 1014 	lcall	_configure_SPI
                                   1015 ;	main.c:64: while(1)
      0028C6                       1016 00119$:
                                   1017 ;	main.c:66: printf("\n\rChoose an action: \n\r");
      0028C6 74 79            [12] 1018 	mov	a,#___str_2
      0028C8 C0 E0            [24] 1019 	push	acc
      0028CA 74 45            [12] 1020 	mov	a,#(___str_2 >> 8)
      0028CC C0 E0            [24] 1021 	push	acc
      0028CE 74 80            [12] 1022 	mov	a,#0x80
      0028D0 C0 E0            [24] 1023 	push	acc
      0028D2 12 39 E3         [24] 1024 	lcall	_printf
      0028D5 15 81            [12] 1025 	dec	sp
      0028D7 15 81            [12] 1026 	dec	sp
      0028D9 15 81            [12] 1027 	dec	sp
                                   1028 ;	main.c:67: printf("1 --> Control Write\n\r");
      0028DB 74 90            [12] 1029 	mov	a,#___str_3
      0028DD C0 E0            [24] 1030 	push	acc
      0028DF 74 45            [12] 1031 	mov	a,#(___str_3 >> 8)
      0028E1 C0 E0            [24] 1032 	push	acc
      0028E3 74 80            [12] 1033 	mov	a,#0x80
      0028E5 C0 E0            [24] 1034 	push	acc
      0028E7 12 39 E3         [24] 1035 	lcall	_printf
      0028EA 15 81            [12] 1036 	dec	sp
      0028EC 15 81            [12] 1037 	dec	sp
      0028EE 15 81            [12] 1038 	dec	sp
                                   1039 ;	main.c:68: printf("2 --> Buffer Write\n\r");
      0028F0 74 A6            [12] 1040 	mov	a,#___str_4
      0028F2 C0 E0            [24] 1041 	push	acc
      0028F4 74 45            [12] 1042 	mov	a,#(___str_4 >> 8)
      0028F6 C0 E0            [24] 1043 	push	acc
      0028F8 74 80            [12] 1044 	mov	a,#0x80
      0028FA C0 E0            [24] 1045 	push	acc
      0028FC 12 39 E3         [24] 1046 	lcall	_printf
      0028FF 15 81            [12] 1047 	dec	sp
      002901 15 81            [12] 1048 	dec	sp
      002903 15 81            [12] 1049 	dec	sp
                                   1050 ;	main.c:69: printf("3 --> Buffer Read\n\r");
      002905 74 BB            [12] 1051 	mov	a,#___str_5
      002907 C0 E0            [24] 1052 	push	acc
      002909 74 45            [12] 1053 	mov	a,#(___str_5 >> 8)
      00290B C0 E0            [24] 1054 	push	acc
      00290D 74 80            [12] 1055 	mov	a,#0x80
      00290F C0 E0            [24] 1056 	push	acc
      002911 12 39 E3         [24] 1057 	lcall	_printf
      002914 15 81            [12] 1058 	dec	sp
      002916 15 81            [12] 1059 	dec	sp
      002918 15 81            [12] 1060 	dec	sp
                                   1061 ;	main.c:70: printf("4 --> MAC Register Read\n\r");
      00291A 74 CF            [12] 1062 	mov	a,#___str_6
      00291C C0 E0            [24] 1063 	push	acc
      00291E 74 45            [12] 1064 	mov	a,#(___str_6 >> 8)
      002920 C0 E0            [24] 1065 	push	acc
      002922 74 80            [12] 1066 	mov	a,#0x80
      002924 C0 E0            [24] 1067 	push	acc
      002926 12 39 E3         [24] 1068 	lcall	_printf
      002929 15 81            [12] 1069 	dec	sp
      00292B 15 81            [12] 1070 	dec	sp
      00292D 15 81            [12] 1071 	dec	sp
                                   1072 ;	main.c:71: printf("5 --> PHY SPI Write\n\r");
      00292F 74 E9            [12] 1073 	mov	a,#___str_7
      002931 C0 E0            [24] 1074 	push	acc
      002933 74 45            [12] 1075 	mov	a,#(___str_7 >> 8)
      002935 C0 E0            [24] 1076 	push	acc
      002937 74 80            [12] 1077 	mov	a,#0x80
      002939 C0 E0            [24] 1078 	push	acc
      00293B 12 39 E3         [24] 1079 	lcall	_printf
      00293E 15 81            [12] 1080 	dec	sp
      002940 15 81            [12] 1081 	dec	sp
      002942 15 81            [12] 1082 	dec	sp
                                   1083 ;	main.c:72: printf("6 --> PHY SPI Read\n\r");
      002944 74 FF            [12] 1084 	mov	a,#___str_8
      002946 C0 E0            [24] 1085 	push	acc
      002948 74 45            [12] 1086 	mov	a,#(___str_8 >> 8)
      00294A C0 E0            [24] 1087 	push	acc
      00294C 74 80            [12] 1088 	mov	a,#0x80
      00294E C0 E0            [24] 1089 	push	acc
      002950 12 39 E3         [24] 1090 	lcall	_printf
      002953 15 81            [12] 1091 	dec	sp
      002955 15 81            [12] 1092 	dec	sp
      002957 15 81            [12] 1093 	dec	sp
                                   1094 ;	main.c:73: printf("7 --> ENC Reset\n\r");
      002959 74 14            [12] 1095 	mov	a,#___str_9
      00295B C0 E0            [24] 1096 	push	acc
      00295D 74 46            [12] 1097 	mov	a,#(___str_9 >> 8)
      00295F C0 E0            [24] 1098 	push	acc
      002961 74 80            [12] 1099 	mov	a,#0x80
      002963 C0 E0            [24] 1100 	push	acc
      002965 12 39 E3         [24] 1101 	lcall	_printf
      002968 15 81            [12] 1102 	dec	sp
      00296A 15 81            [12] 1103 	dec	sp
      00296C 15 81            [12] 1104 	dec	sp
                                   1105 ;	main.c:74: printf("8 --> Read ETH Register\n\r");
      00296E 74 26            [12] 1106 	mov	a,#___str_10
      002970 C0 E0            [24] 1107 	push	acc
      002972 74 46            [12] 1108 	mov	a,#(___str_10 >> 8)
      002974 C0 E0            [24] 1109 	push	acc
      002976 74 80            [12] 1110 	mov	a,#0x80
      002978 C0 E0            [24] 1111 	push	acc
      00297A 12 39 E3         [24] 1112 	lcall	_printf
      00297D 15 81            [12] 1113 	dec	sp
      00297F 15 81            [12] 1114 	dec	sp
      002981 15 81            [12] 1115 	dec	sp
                                   1116 ;	main.c:75: printf("9 --> Display Menu\n\r");
      002983 74 40            [12] 1117 	mov	a,#___str_11
      002985 C0 E0            [24] 1118 	push	acc
      002987 74 46            [12] 1119 	mov	a,#(___str_11 >> 8)
      002989 C0 E0            [24] 1120 	push	acc
      00298B 74 80            [12] 1121 	mov	a,#0x80
      00298D C0 E0            [24] 1122 	push	acc
      00298F 12 39 E3         [24] 1123 	lcall	_printf
      002992 15 81            [12] 1124 	dec	sp
      002994 15 81            [12] 1125 	dec	sp
      002996 15 81            [12] 1126 	dec	sp
                                   1127 ;	main.c:76: printf("A --> Send ARP Request\n\r");
      002998 74 55            [12] 1128 	mov	a,#___str_12
      00299A C0 E0            [24] 1129 	push	acc
      00299C 74 46            [12] 1130 	mov	a,#(___str_12 >> 8)
      00299E C0 E0            [24] 1131 	push	acc
      0029A0 74 80            [12] 1132 	mov	a,#0x80
      0029A2 C0 E0            [24] 1133 	push	acc
      0029A4 12 39 E3         [24] 1134 	lcall	_printf
      0029A7 15 81            [12] 1135 	dec	sp
      0029A9 15 81            [12] 1136 	dec	sp
      0029AB 15 81            [12] 1137 	dec	sp
                                   1138 ;	main.c:77: printf("B --> Init RX buffers\n\r");
      0029AD 74 6E            [12] 1139 	mov	a,#___str_13
      0029AF C0 E0            [24] 1140 	push	acc
      0029B1 74 46            [12] 1141 	mov	a,#(___str_13 >> 8)
      0029B3 C0 E0            [24] 1142 	push	acc
      0029B5 74 80            [12] 1143 	mov	a,#0x80
      0029B7 C0 E0            [24] 1144 	push	acc
      0029B9 12 39 E3         [24] 1145 	lcall	_printf
      0029BC 15 81            [12] 1146 	dec	sp
      0029BE 15 81            [12] 1147 	dec	sp
      0029C0 15 81            [12] 1148 	dec	sp
                                   1149 ;	main.c:78: printf("C --> Hard Reset(nRESET pin)\n\r");
      0029C2 74 86            [12] 1150 	mov	a,#___str_14
      0029C4 C0 E0            [24] 1151 	push	acc
      0029C6 74 46            [12] 1152 	mov	a,#(___str_14 >> 8)
      0029C8 C0 E0            [24] 1153 	push	acc
      0029CA 74 80            [12] 1154 	mov	a,#0x80
      0029CC C0 E0            [24] 1155 	push	acc
      0029CE 12 39 E3         [24] 1156 	lcall	_printf
      0029D1 15 81            [12] 1157 	dec	sp
      0029D3 15 81            [12] 1158 	dec	sp
      0029D5 15 81            [12] 1159 	dec	sp
                                   1160 ;	main.c:80: char c = getchar();
      0029D7 12 37 CD         [24] 1161 	lcall	_getchar
      0029DA AE 82            [24] 1162 	mov	r6, dpl
                                   1163 ;	main.c:81: putchar(c);
      0029DC 8E 05            [24] 1164 	mov	ar5,r6
      0029DE 7F 00            [12] 1165 	mov	r7,#0x00
      0029E0 8D 82            [24] 1166 	mov	dpl, r5
      0029E2 8F 83            [24] 1167 	mov	dph, r7
      0029E4 C0 06            [24] 1168 	push	ar6
      0029E6 12 37 AE         [24] 1169 	lcall	_putchar
                                   1170 ;	main.c:82: printf("\n\r");
      0029E9 74 5D            [12] 1171 	mov	a,#___str_0
      0029EB C0 E0            [24] 1172 	push	acc
      0029ED 74 45            [12] 1173 	mov	a,#(___str_0 >> 8)
      0029EF C0 E0            [24] 1174 	push	acc
      0029F1 74 80            [12] 1175 	mov	a,#0x80
      0029F3 C0 E0            [24] 1176 	push	acc
      0029F5 12 39 E3         [24] 1177 	lcall	_printf
      0029F8 15 81            [12] 1178 	dec	sp
      0029FA 15 81            [12] 1179 	dec	sp
      0029FC 15 81            [12] 1180 	dec	sp
      0029FE D0 06            [24] 1181 	pop	ar6
                                   1182 ;	main.c:84: switch(c)
      002A00 BE 31 00         [24] 1183 	cjne	r6,#0x31,00188$
      002A03                       1184 00188$:
      002A03 50 03            [24] 1185 	jnc	00189$
      002A05 02 2F 04         [24] 1186 	ljmp	00116$
      002A08                       1187 00189$:
      002A08 EE               [12] 1188 	mov	a,r6
      002A09 24 BC            [12] 1189 	add	a,#0xff - 0x43
      002A0B 50 03            [24] 1190 	jnc	00190$
      002A0D 02 2F 04         [24] 1191 	ljmp	00116$
      002A10                       1192 00190$:
      002A10 EE               [12] 1193 	mov	a,r6
      002A11 24 CF            [12] 1194 	add	a,#0xcf
      002A13 FE               [12] 1195 	mov	r6,a
      002A14 24 0A            [12] 1196 	add	a,#(00191$-3-.)
      002A16 83               [24] 1197 	movc	a,@a+pc
      002A17 F5 82            [12] 1198 	mov	dpl,a
      002A19 EE               [12] 1199 	mov	a,r6
      002A1A 24 17            [12] 1200 	add	a,#(00192$-3-.)
      002A1C 83               [24] 1201 	movc	a,@a+pc
      002A1D F5 83            [12] 1202 	mov	dph,a
      002A1F E4               [12] 1203 	clr	a
      002A20 73               [24] 1204 	jmp	@a+dptr
      002A21                       1205 00191$:
      002A21 47                    1206 	.db	00101$
      002A22 AF                    1207 	.db	00102$
      002A23 AD                    1208 	.db	00104$
      002A24 7E                    1209 	.db	00106$
      002A25 E0                    1210 	.db	00107$
      002A26 4B                    1211 	.db	00108$
      002A27 86                    1212 	.db	00109$
      002A28 A1                    1213 	.db	00110$
      002A29 03                    1214 	.db	00111$
      002A2A 04                    1215 	.db	00116$
      002A2B 04                    1216 	.db	00116$
      002A2C 04                    1217 	.db	00116$
      002A2D 04                    1218 	.db	00116$
      002A2E 04                    1219 	.db	00116$
      002A2F 04                    1220 	.db	00116$
      002A30 04                    1221 	.db	00116$
      002A31 C3                    1222 	.db	00112$
      002A32 CC                    1223 	.db	00113$
      002A33 D2                    1224 	.db	00114$
      002A34                       1225 00192$:
      002A34 2A                    1226 	.db	00101$>>8
      002A35 2A                    1227 	.db	00102$>>8
      002A36 2B                    1228 	.db	00104$>>8
      002A37 2C                    1229 	.db	00106$>>8
      002A38 2C                    1230 	.db	00107$>>8
      002A39 2D                    1231 	.db	00108$>>8
      002A3A 2D                    1232 	.db	00109$>>8
      002A3B 2D                    1233 	.db	00110$>>8
      002A3C 2E                    1234 	.db	00111$>>8
      002A3D 2F                    1235 	.db	00116$>>8
      002A3E 2F                    1236 	.db	00116$>>8
      002A3F 2F                    1237 	.db	00116$>>8
      002A40 2F                    1238 	.db	00116$>>8
      002A41 2F                    1239 	.db	00116$>>8
      002A42 2F                    1240 	.db	00116$>>8
      002A43 2F                    1241 	.db	00116$>>8
      002A44 2E                    1242 	.db	00112$>>8
      002A45 2E                    1243 	.db	00113$>>8
      002A46 2E                    1244 	.db	00114$>>8
                                   1245 ;	main.c:86: case '1': {
      002A47                       1246 00101$:
                                   1247 ;	main.c:87: printf("Enter the register bank to select:\n\r");
      002A47 74 A5            [12] 1248 	mov	a,#___str_15
      002A49 C0 E0            [24] 1249 	push	acc
      002A4B 74 46            [12] 1250 	mov	a,#(___str_15 >> 8)
      002A4D C0 E0            [24] 1251 	push	acc
      002A4F 74 80            [12] 1252 	mov	a,#0x80
      002A51 C0 E0            [24] 1253 	push	acc
      002A53 12 39 E3         [24] 1254 	lcall	_printf
      002A56 15 81            [12] 1255 	dec	sp
      002A58 15 81            [12] 1256 	dec	sp
      002A5A 15 81            [12] 1257 	dec	sp
                                   1258 ;	main.c:88: uint8_t reg_bank = get_user_buffer_size();
      002A5C 12 28 28         [24] 1259 	lcall	_get_user_buffer_size
      002A5F AE 82            [24] 1260 	mov	r6, dpl
                                   1261 ;	main.c:89: printf("Enter the address of the Control Register:\n\r");
      002A61 C0 06            [24] 1262 	push	ar6
      002A63 74 CA            [12] 1263 	mov	a,#___str_16
      002A65 C0 E0            [24] 1264 	push	acc
      002A67 74 46            [12] 1265 	mov	a,#(___str_16 >> 8)
      002A69 C0 E0            [24] 1266 	push	acc
      002A6B 74 80            [12] 1267 	mov	a,#0x80
      002A6D C0 E0            [24] 1268 	push	acc
      002A6F 12 39 E3         [24] 1269 	lcall	_printf
      002A72 15 81            [12] 1270 	dec	sp
      002A74 15 81            [12] 1271 	dec	sp
      002A76 15 81            [12] 1272 	dec	sp
                                   1273 ;	main.c:90: uint8_t addr = get_user_buffer_size();
      002A78 12 28 28         [24] 1274 	lcall	_get_user_buffer_size
      002A7B AD 82            [24] 1275 	mov	r5, dpl
                                   1276 ;	main.c:91: printf("Enter the data you want to write:\n\r");
      002A7D C0 05            [24] 1277 	push	ar5
      002A7F 74 F7            [12] 1278 	mov	a,#___str_17
      002A81 C0 E0            [24] 1279 	push	acc
      002A83 74 46            [12] 1280 	mov	a,#(___str_17 >> 8)
      002A85 C0 E0            [24] 1281 	push	acc
      002A87 74 80            [12] 1282 	mov	a,#0x80
      002A89 C0 E0            [24] 1283 	push	acc
      002A8B 12 39 E3         [24] 1284 	lcall	_printf
      002A8E 15 81            [12] 1285 	dec	sp
      002A90 15 81            [12] 1286 	dec	sp
      002A92 15 81            [12] 1287 	dec	sp
                                   1288 ;	main.c:92: uint8_t data = get_user_buffer_size();
      002A94 12 28 28         [24] 1289 	lcall	_get_user_buffer_size
      002A97 AC 82            [24] 1290 	mov	r4, dpl
      002A99 D0 05            [24] 1291 	pop	ar5
      002A9B D0 06            [24] 1292 	pop	ar6
                                   1293 ;	main.c:93: spi_control_write(reg_bank, addr, data);
      002A9D 90 03 62         [24] 1294 	mov	dptr,#_spi_control_write_PARM_2
      002AA0 ED               [12] 1295 	mov	a,r5
      002AA1 F0               [24] 1296 	movx	@dptr,a
      002AA2 90 03 63         [24] 1297 	mov	dptr,#_spi_control_write_PARM_3
      002AA5 EC               [12] 1298 	mov	a,r4
      002AA6 F0               [24] 1299 	movx	@dptr,a
      002AA7 8E 82            [24] 1300 	mov	dpl, r6
      002AA9 12 2F CE         [24] 1301 	lcall	_spi_control_write
                                   1302 ;	main.c:94: break;
      002AAC 02 28 C6         [24] 1303 	ljmp	00119$
                                   1304 ;	main.c:96: case '2': {
      002AAF                       1305 00102$:
                                   1306 ;	main.c:97: printf("Enter the number of bytes to write:\n\r");
      002AAF 74 1B            [12] 1307 	mov	a,#___str_18
      002AB1 C0 E0            [24] 1308 	push	acc
      002AB3 74 47            [12] 1309 	mov	a,#(___str_18 >> 8)
      002AB5 C0 E0            [24] 1310 	push	acc
      002AB7 74 80            [12] 1311 	mov	a,#0x80
      002AB9 C0 E0            [24] 1312 	push	acc
      002ABB 12 39 E3         [24] 1313 	lcall	_printf
      002ABE 15 81            [12] 1314 	dec	sp
      002AC0 15 81            [12] 1315 	dec	sp
      002AC2 15 81            [12] 1316 	dec	sp
                                   1317 ;	main.c:98: int num_bytes = get_user_buffer_size();
      002AC4 12 28 28         [24] 1318 	lcall	_get_user_buffer_size
      002AC7 AE 82            [24] 1319 	mov	r6, dpl
      002AC9 AF 83            [24] 1320 	mov	r7, dph
                                   1321 ;	main.c:99: printf("Enter the starting address:\n\r");
      002ACB C0 07            [24] 1322 	push	ar7
      002ACD C0 06            [24] 1323 	push	ar6
      002ACF 74 41            [12] 1324 	mov	a,#___str_19
      002AD1 C0 E0            [24] 1325 	push	acc
      002AD3 74 47            [12] 1326 	mov	a,#(___str_19 >> 8)
      002AD5 C0 E0            [24] 1327 	push	acc
      002AD7 74 80            [12] 1328 	mov	a,#0x80
      002AD9 C0 E0            [24] 1329 	push	acc
      002ADB 12 39 E3         [24] 1330 	lcall	_printf
      002ADE 15 81            [12] 1331 	dec	sp
      002AE0 15 81            [12] 1332 	dec	sp
      002AE2 15 81            [12] 1333 	dec	sp
                                   1334 ;	main.c:100: uint16_t start_address = get_user_buffer_size();
      002AE4 12 28 28         [24] 1335 	lcall	_get_user_buffer_size
      002AE7 AC 82            [24] 1336 	mov	r4, dpl
      002AE9 AD 83            [24] 1337 	mov	r5, dph
      002AEB D0 06            [24] 1338 	pop	ar6
      002AED D0 07            [24] 1339 	pop	ar7
                                   1340 ;	main.c:102: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      002AEF C0 07            [24] 1341 	push	ar7
      002AF1 C0 06            [24] 1342 	push	ar6
      002AF3 C0 05            [24] 1343 	push	ar5
      002AF5 C0 04            [24] 1344 	push	ar4
      002AF7 C0 06            [24] 1345 	push	ar6
      002AF9 C0 07            [24] 1346 	push	ar7
      002AFB 74 5F            [12] 1347 	mov	a,#___str_20
      002AFD C0 E0            [24] 1348 	push	acc
      002AFF 74 47            [12] 1349 	mov	a,#(___str_20 >> 8)
      002B01 C0 E0            [24] 1350 	push	acc
      002B03 74 80            [12] 1351 	mov	a,#0x80
      002B05 C0 E0            [24] 1352 	push	acc
      002B07 12 39 E3         [24] 1353 	lcall	_printf
      002B0A E5 81            [12] 1354 	mov	a,sp
      002B0C 24 FB            [12] 1355 	add	a,#0xfb
      002B0E F5 81            [12] 1356 	mov	sp,a
      002B10 D0 04            [24] 1357 	pop	ar4
      002B12 D0 05            [24] 1358 	pop	ar5
      002B14 D0 06            [24] 1359 	pop	ar6
      002B16 D0 07            [24] 1360 	pop	ar7
                                   1361 ;	main.c:103: for (int i = 0; i < num_bytes; i++) {
      002B18 7A 00            [12] 1362 	mov	r2,#0x00
      002B1A 7B 00            [12] 1363 	mov	r3,#0x00
      002B1C                       1364 00122$:
      002B1C C3               [12] 1365 	clr	c
      002B1D EA               [12] 1366 	mov	a,r2
      002B1E 9E               [12] 1367 	subb	a,r6
      002B1F EB               [12] 1368 	mov	a,r3
      002B20 64 80            [12] 1369 	xrl	a,#0x80
      002B22 8F F0            [24] 1370 	mov	b,r7
      002B24 63 F0 80         [24] 1371 	xrl	b,#0x80
      002B27 95 F0            [12] 1372 	subb	a,b
      002B29 50 63            [24] 1373 	jnc	00103$
                                   1374 ;	main.c:104: printf("Byte %d: ", i);
      002B2B C0 04            [24] 1375 	push	ar4
      002B2D C0 05            [24] 1376 	push	ar5
      002B2F C0 07            [24] 1377 	push	ar7
      002B31 C0 06            [24] 1378 	push	ar6
      002B33 C0 05            [24] 1379 	push	ar5
      002B35 C0 04            [24] 1380 	push	ar4
      002B37 C0 03            [24] 1381 	push	ar3
      002B39 C0 02            [24] 1382 	push	ar2
      002B3B C0 02            [24] 1383 	push	ar2
      002B3D C0 03            [24] 1384 	push	ar3
      002B3F 74 82            [12] 1385 	mov	a,#___str_21
      002B41 C0 E0            [24] 1386 	push	acc
      002B43 74 47            [12] 1387 	mov	a,#(___str_21 >> 8)
      002B45 C0 E0            [24] 1388 	push	acc
      002B47 74 80            [12] 1389 	mov	a,#0x80
      002B49 C0 E0            [24] 1390 	push	acc
      002B4B 12 39 E3         [24] 1391 	lcall	_printf
      002B4E E5 81            [12] 1392 	mov	a,sp
      002B50 24 FB            [12] 1393 	add	a,#0xfb
      002B52 F5 81            [12] 1394 	mov	sp,a
      002B54 D0 02            [24] 1395 	pop	ar2
      002B56 D0 03            [24] 1396 	pop	ar3
      002B58 D0 04            [24] 1397 	pop	ar4
      002B5A D0 05            [24] 1398 	pop	ar5
                                   1399 ;	main.c:105: buffer[i] = get_user_buffer_size();
      002B5C EA               [12] 1400 	mov	a,r2
      002B5D 24 60            [12] 1401 	add	a, #_main_buffer_40003_90
      002B5F F8               [12] 1402 	mov	r0,a
      002B60 EB               [12] 1403 	mov	a,r3
      002B61 34 01            [12] 1404 	addc	a, #(_main_buffer_40003_90 >> 8)
      002B63 F9               [12] 1405 	mov	r1,a
      002B64 C0 03            [24] 1406 	push	ar3
      002B66 C0 02            [24] 1407 	push	ar2
      002B68 C0 01            [24] 1408 	push	ar1
      002B6A C0 00            [24] 1409 	push	ar0
      002B6C 12 28 28         [24] 1410 	lcall	_get_user_buffer_size
      002B6F AC 82            [24] 1411 	mov	r4, dpl
      002B71 D0 00            [24] 1412 	pop	ar0
      002B73 D0 01            [24] 1413 	pop	ar1
      002B75 D0 02            [24] 1414 	pop	ar2
      002B77 D0 03            [24] 1415 	pop	ar3
      002B79 D0 06            [24] 1416 	pop	ar6
      002B7B D0 07            [24] 1417 	pop	ar7
      002B7D 88 82            [24] 1418 	mov	dpl,r0
      002B7F 89 83            [24] 1419 	mov	dph,r1
      002B81 EC               [12] 1420 	mov	a,r4
      002B82 F0               [24] 1421 	movx	@dptr,a
                                   1422 ;	main.c:103: for (int i = 0; i < num_bytes; i++) {
      002B83 0A               [12] 1423 	inc	r2
      002B84 BA 00 01         [24] 1424 	cjne	r2,#0x00,00194$
      002B87 0B               [12] 1425 	inc	r3
      002B88                       1426 00194$:
      002B88 D0 05            [24] 1427 	pop	ar5
      002B8A D0 04            [24] 1428 	pop	ar4
      002B8C 80 8E            [24] 1429 	sjmp	00122$
      002B8E                       1430 00103$:
                                   1431 ;	main.c:107: spi_buffer_write(num_bytes, start_address, buffer);
      002B8E 90 03 7C         [24] 1432 	mov	dptr,#_spi_buffer_write_PARM_2
      002B91 EC               [12] 1433 	mov	a,r4
      002B92 F0               [24] 1434 	movx	@dptr,a
      002B93 ED               [12] 1435 	mov	a,r5
      002B94 A3               [24] 1436 	inc	dptr
      002B95 F0               [24] 1437 	movx	@dptr,a
      002B96 90 03 7E         [24] 1438 	mov	dptr,#_spi_buffer_write_PARM_3
      002B99 74 60            [12] 1439 	mov	a,#_main_buffer_40003_90
      002B9B F0               [24] 1440 	movx	@dptr,a
      002B9C 74 01            [12] 1441 	mov	a,#(_main_buffer_40003_90 >> 8)
      002B9E A3               [24] 1442 	inc	dptr
      002B9F F0               [24] 1443 	movx	@dptr,a
      002BA0 E4               [12] 1444 	clr	a
      002BA1 A3               [24] 1445 	inc	dptr
      002BA2 F0               [24] 1446 	movx	@dptr,a
      002BA3 8E 82            [24] 1447 	mov	dpl, r6
      002BA5 8F 83            [24] 1448 	mov	dph, r7
      002BA7 12 35 4A         [24] 1449 	lcall	_spi_buffer_write
                                   1450 ;	main.c:108: break;
      002BAA 02 28 C6         [24] 1451 	ljmp	00119$
                                   1452 ;	main.c:110: case '3': {
      002BAD                       1453 00104$:
                                   1454 ;	main.c:111: printf("Enter the number of bytes to read:\n\r");
      002BAD 74 8C            [12] 1455 	mov	a,#___str_22
      002BAF C0 E0            [24] 1456 	push	acc
      002BB1 74 47            [12] 1457 	mov	a,#(___str_22 >> 8)
      002BB3 C0 E0            [24] 1458 	push	acc
      002BB5 74 80            [12] 1459 	mov	a,#0x80
      002BB7 C0 E0            [24] 1460 	push	acc
      002BB9 12 39 E3         [24] 1461 	lcall	_printf
      002BBC 15 81            [12] 1462 	dec	sp
      002BBE 15 81            [12] 1463 	dec	sp
      002BC0 15 81            [12] 1464 	dec	sp
                                   1465 ;	main.c:112: int num_bytes = get_user_buffer_size();
      002BC2 12 28 28         [24] 1466 	lcall	_get_user_buffer_size
      002BC5 AE 82            [24] 1467 	mov	r6, dpl
      002BC7 AF 83            [24] 1468 	mov	r7, dph
                                   1469 ;	main.c:113: printf("Enter the starting address:\n\r");
      002BC9 C0 07            [24] 1470 	push	ar7
      002BCB C0 06            [24] 1471 	push	ar6
      002BCD 74 41            [12] 1472 	mov	a,#___str_19
      002BCF C0 E0            [24] 1473 	push	acc
      002BD1 74 47            [12] 1474 	mov	a,#(___str_19 >> 8)
      002BD3 C0 E0            [24] 1475 	push	acc
      002BD5 74 80            [12] 1476 	mov	a,#0x80
      002BD7 C0 E0            [24] 1477 	push	acc
      002BD9 12 39 E3         [24] 1478 	lcall	_printf
      002BDC 15 81            [12] 1479 	dec	sp
      002BDE 15 81            [12] 1480 	dec	sp
      002BE0 15 81            [12] 1481 	dec	sp
                                   1482 ;	main.c:114: uint16_t start_address = get_user_buffer_size();
      002BE2 12 28 28         [24] 1483 	lcall	_get_user_buffer_size
      002BE5 AC 82            [24] 1484 	mov	r4, dpl
      002BE7 AD 83            [24] 1485 	mov	r5, dph
      002BE9 D0 06            [24] 1486 	pop	ar6
      002BEB D0 07            [24] 1487 	pop	ar7
                                   1488 ;	main.c:116: spi_buffer_read(num_bytes, start_address, buffer);
      002BED 90 03 73         [24] 1489 	mov	dptr,#_spi_buffer_read_PARM_2
      002BF0 EC               [12] 1490 	mov	a,r4
      002BF1 F0               [24] 1491 	movx	@dptr,a
      002BF2 ED               [12] 1492 	mov	a,r5
      002BF3 A3               [24] 1493 	inc	dptr
      002BF4 F0               [24] 1494 	movx	@dptr,a
      002BF5 90 03 75         [24] 1495 	mov	dptr,#_spi_buffer_read_PARM_3
      002BF8 74 60            [12] 1496 	mov	a,#_main_buffer_40003_95
      002BFA F0               [24] 1497 	movx	@dptr,a
      002BFB 74 02            [12] 1498 	mov	a,#(_main_buffer_40003_95 >> 8)
      002BFD A3               [24] 1499 	inc	dptr
      002BFE F0               [24] 1500 	movx	@dptr,a
      002BFF E4               [12] 1501 	clr	a
      002C00 A3               [24] 1502 	inc	dptr
      002C01 F0               [24] 1503 	movx	@dptr,a
      002C02 8E 82            [24] 1504 	mov	dpl, r6
      002C04 8F 83            [24] 1505 	mov	dph, r7
      002C06 C0 07            [24] 1506 	push	ar7
      002C08 C0 06            [24] 1507 	push	ar6
      002C0A 12 33 A9         [24] 1508 	lcall	_spi_buffer_read
                                   1509 ;	main.c:117: printf("Read Data:\n\r");
      002C0D 74 B1            [12] 1510 	mov	a,#___str_23
      002C0F C0 E0            [24] 1511 	push	acc
      002C11 74 47            [12] 1512 	mov	a,#(___str_23 >> 8)
      002C13 C0 E0            [24] 1513 	push	acc
      002C15 74 80            [12] 1514 	mov	a,#0x80
      002C17 C0 E0            [24] 1515 	push	acc
      002C19 12 39 E3         [24] 1516 	lcall	_printf
      002C1C 15 81            [12] 1517 	dec	sp
      002C1E 15 81            [12] 1518 	dec	sp
      002C20 15 81            [12] 1519 	dec	sp
      002C22 D0 06            [24] 1520 	pop	ar6
      002C24 D0 07            [24] 1521 	pop	ar7
                                   1522 ;	main.c:118: for (int i = 0; i < num_bytes; i++) {
      002C26 7C 00            [12] 1523 	mov	r4,#0x00
      002C28 7D 00            [12] 1524 	mov	r5,#0x00
      002C2A                       1525 00125$:
      002C2A C3               [12] 1526 	clr	c
      002C2B EC               [12] 1527 	mov	a,r4
      002C2C 9E               [12] 1528 	subb	a,r6
      002C2D ED               [12] 1529 	mov	a,r5
      002C2E 64 80            [12] 1530 	xrl	a,#0x80
      002C30 8F F0            [24] 1531 	mov	b,r7
      002C32 63 F0 80         [24] 1532 	xrl	b,#0x80
      002C35 95 F0            [12] 1533 	subb	a,b
      002C37 40 03            [24] 1534 	jc	00195$
      002C39 02 28 C6         [24] 1535 	ljmp	00119$
      002C3C                       1536 00195$:
                                   1537 ;	main.c:119: printf("Byte %d: 0x%02X\n\r", i, buffer[i]);
      002C3C EC               [12] 1538 	mov	a,r4
      002C3D 24 60            [12] 1539 	add	a, #_main_buffer_40003_95
      002C3F F5 82            [12] 1540 	mov	dpl,a
      002C41 ED               [12] 1541 	mov	a,r5
      002C42 34 02            [12] 1542 	addc	a, #(_main_buffer_40003_95 >> 8)
      002C44 F5 83            [12] 1543 	mov	dph,a
      002C46 E0               [24] 1544 	movx	a,@dptr
      002C47 FB               [12] 1545 	mov	r3,a
      002C48 7A 00            [12] 1546 	mov	r2,#0x00
      002C4A C0 07            [24] 1547 	push	ar7
      002C4C C0 06            [24] 1548 	push	ar6
      002C4E C0 05            [24] 1549 	push	ar5
      002C50 C0 04            [24] 1550 	push	ar4
      002C52 C0 03            [24] 1551 	push	ar3
      002C54 C0 02            [24] 1552 	push	ar2
      002C56 C0 04            [24] 1553 	push	ar4
      002C58 C0 05            [24] 1554 	push	ar5
      002C5A 74 BE            [12] 1555 	mov	a,#___str_24
      002C5C C0 E0            [24] 1556 	push	acc
      002C5E 74 47            [12] 1557 	mov	a,#(___str_24 >> 8)
      002C60 C0 E0            [24] 1558 	push	acc
      002C62 74 80            [12] 1559 	mov	a,#0x80
      002C64 C0 E0            [24] 1560 	push	acc
      002C66 12 39 E3         [24] 1561 	lcall	_printf
      002C69 E5 81            [12] 1562 	mov	a,sp
      002C6B 24 F9            [12] 1563 	add	a,#0xf9
      002C6D F5 81            [12] 1564 	mov	sp,a
      002C6F D0 04            [24] 1565 	pop	ar4
      002C71 D0 05            [24] 1566 	pop	ar5
      002C73 D0 06            [24] 1567 	pop	ar6
      002C75 D0 07            [24] 1568 	pop	ar7
                                   1569 ;	main.c:118: for (int i = 0; i < num_bytes; i++) {
      002C77 0C               [12] 1570 	inc	r4
                                   1571 ;	main.c:123: case '4': {
      002C78 BC 00 AF         [24] 1572 	cjne	r4,#0x00,00125$
      002C7B 0D               [12] 1573 	inc	r5
      002C7C 80 AC            [24] 1574 	sjmp	00125$
      002C7E                       1575 00106$:
                                   1576 ;	main.c:124: printf("Enter the MAC register bank to select:\n\r");
      002C7E 74 D0            [12] 1577 	mov	a,#___str_25
      002C80 C0 E0            [24] 1578 	push	acc
      002C82 74 47            [12] 1579 	mov	a,#(___str_25 >> 8)
      002C84 C0 E0            [24] 1580 	push	acc
      002C86 74 80            [12] 1581 	mov	a,#0x80
      002C88 C0 E0            [24] 1582 	push	acc
      002C8A 12 39 E3         [24] 1583 	lcall	_printf
      002C8D 15 81            [12] 1584 	dec	sp
      002C8F 15 81            [12] 1585 	dec	sp
      002C91 15 81            [12] 1586 	dec	sp
                                   1587 ;	main.c:125: uint8_t reg_bank = get_user_buffer_size();
      002C93 12 28 28         [24] 1588 	lcall	_get_user_buffer_size
      002C96 AE 82            [24] 1589 	mov	r6, dpl
                                   1590 ;	main.c:126: printf("Enter the address of the MAC Register:\n\r");
      002C98 C0 06            [24] 1591 	push	ar6
      002C9A 74 F9            [12] 1592 	mov	a,#___str_26
      002C9C C0 E0            [24] 1593 	push	acc
      002C9E 74 47            [12] 1594 	mov	a,#(___str_26 >> 8)
      002CA0 C0 E0            [24] 1595 	push	acc
      002CA2 74 80            [12] 1596 	mov	a,#0x80
      002CA4 C0 E0            [24] 1597 	push	acc
      002CA6 12 39 E3         [24] 1598 	lcall	_printf
      002CA9 15 81            [12] 1599 	dec	sp
      002CAB 15 81            [12] 1600 	dec	sp
      002CAD 15 81            [12] 1601 	dec	sp
                                   1602 ;	main.c:127: uint8_t addr = get_user_buffer_size();
      002CAF 12 28 28         [24] 1603 	lcall	_get_user_buffer_size
      002CB2 AD 82            [24] 1604 	mov	r5, dpl
      002CB4 D0 06            [24] 1605 	pop	ar6
                                   1606 ;	main.c:128: uint8_t data = mac_spi_read(addr, reg_bank);
      002CB6 90 03 6B         [24] 1607 	mov	dptr,#_mac_spi_read_PARM_2
      002CB9 EE               [12] 1608 	mov	a,r6
      002CBA F0               [24] 1609 	movx	@dptr,a
      002CBB 8D 82            [24] 1610 	mov	dpl, r5
      002CBD 12 31 44         [24] 1611 	lcall	_mac_spi_read
      002CC0 AF 82            [24] 1612 	mov	r7, dpl
                                   1613 ;	main.c:129: printf("MAC Register Data: 0x%02X\n\r", data);
      002CC2 7E 00            [12] 1614 	mov	r6,#0x00
      002CC4 C0 07            [24] 1615 	push	ar7
      002CC6 C0 06            [24] 1616 	push	ar6
      002CC8 74 22            [12] 1617 	mov	a,#___str_27
      002CCA C0 E0            [24] 1618 	push	acc
      002CCC 74 48            [12] 1619 	mov	a,#(___str_27 >> 8)
      002CCE C0 E0            [24] 1620 	push	acc
      002CD0 74 80            [12] 1621 	mov	a,#0x80
      002CD2 C0 E0            [24] 1622 	push	acc
      002CD4 12 39 E3         [24] 1623 	lcall	_printf
      002CD7 E5 81            [12] 1624 	mov	a,sp
      002CD9 24 FB            [12] 1625 	add	a,#0xfb
      002CDB F5 81            [12] 1626 	mov	sp,a
                                   1627 ;	main.c:130: break;
      002CDD 02 28 C6         [24] 1628 	ljmp	00119$
                                   1629 ;	main.c:132: case '5': {
      002CE0                       1630 00107$:
                                   1631 ;	main.c:133: printf("Enter the PHY register address:\n\r");
      002CE0 74 3E            [12] 1632 	mov	a,#___str_28
      002CE2 C0 E0            [24] 1633 	push	acc
      002CE4 74 48            [12] 1634 	mov	a,#(___str_28 >> 8)
      002CE6 C0 E0            [24] 1635 	push	acc
      002CE8 74 80            [12] 1636 	mov	a,#0x80
      002CEA C0 E0            [24] 1637 	push	acc
      002CEC 12 39 E3         [24] 1638 	lcall	_printf
      002CEF 15 81            [12] 1639 	dec	sp
      002CF1 15 81            [12] 1640 	dec	sp
      002CF3 15 81            [12] 1641 	dec	sp
                                   1642 ;	main.c:134: uint8_t addr = get_user_buffer_size();
      002CF5 12 28 28         [24] 1643 	lcall	_get_user_buffer_size
      002CF8 AE 82            [24] 1644 	mov	r6, dpl
                                   1645 ;	main.c:135: printf("Enter the 16-bit data to write:\n\r");
      002CFA C0 06            [24] 1646 	push	ar6
      002CFC 74 60            [12] 1647 	mov	a,#___str_29
      002CFE C0 E0            [24] 1648 	push	acc
      002D00 74 48            [12] 1649 	mov	a,#(___str_29 >> 8)
      002D02 C0 E0            [24] 1650 	push	acc
      002D04 74 80            [12] 1651 	mov	a,#0x80
      002D06 C0 E0            [24] 1652 	push	acc
      002D08 12 39 E3         [24] 1653 	lcall	_printf
      002D0B 15 81            [12] 1654 	dec	sp
      002D0D 15 81            [12] 1655 	dec	sp
      002D0F 15 81            [12] 1656 	dec	sp
                                   1657 ;	main.c:136: uint16_t data = get_user_buffer_size();
      002D11 12 28 28         [24] 1658 	lcall	_get_user_buffer_size
      002D14 AD 82            [24] 1659 	mov	r5, dpl
      002D16 AF 83            [24] 1660 	mov	r7, dph
      002D18 D0 06            [24] 1661 	pop	ar6
                                   1662 ;	main.c:137: phy_spi_write(addr, data);
      002D1A 90 03 68         [24] 1663 	mov	dptr,#_phy_spi_write_PARM_2
      002D1D ED               [12] 1664 	mov	a,r5
      002D1E F0               [24] 1665 	movx	@dptr,a
      002D1F EF               [12] 1666 	mov	a,r7
      002D20 A3               [24] 1667 	inc	dptr
      002D21 F0               [24] 1668 	movx	@dptr,a
      002D22 8E 82            [24] 1669 	mov	dpl, r6
      002D24 C0 07            [24] 1670 	push	ar7
      002D26 C0 05            [24] 1671 	push	ar5
      002D28 12 30 C1         [24] 1672 	lcall	_phy_spi_write
      002D2B D0 05            [24] 1673 	pop	ar5
      002D2D D0 07            [24] 1674 	pop	ar7
                                   1675 ;	main.c:138: printf("PHY Write Data: 0x%04X\n\r", data);
      002D2F C0 05            [24] 1676 	push	ar5
      002D31 C0 07            [24] 1677 	push	ar7
      002D33 74 82            [12] 1678 	mov	a,#___str_30
      002D35 C0 E0            [24] 1679 	push	acc
      002D37 74 48            [12] 1680 	mov	a,#(___str_30 >> 8)
      002D39 C0 E0            [24] 1681 	push	acc
      002D3B 74 80            [12] 1682 	mov	a,#0x80
      002D3D C0 E0            [24] 1683 	push	acc
      002D3F 12 39 E3         [24] 1684 	lcall	_printf
      002D42 E5 81            [12] 1685 	mov	a,sp
      002D44 24 FB            [12] 1686 	add	a,#0xfb
      002D46 F5 81            [12] 1687 	mov	sp,a
                                   1688 ;	main.c:139: break;
      002D48 02 28 C6         [24] 1689 	ljmp	00119$
                                   1690 ;	main.c:141: case '6': {
      002D4B                       1691 00108$:
                                   1692 ;	main.c:142: printf("Enter the PHY register address to read:\n\r");
      002D4B 74 9B            [12] 1693 	mov	a,#___str_31
      002D4D C0 E0            [24] 1694 	push	acc
      002D4F 74 48            [12] 1695 	mov	a,#(___str_31 >> 8)
      002D51 C0 E0            [24] 1696 	push	acc
      002D53 74 80            [12] 1697 	mov	a,#0x80
      002D55 C0 E0            [24] 1698 	push	acc
      002D57 12 39 E3         [24] 1699 	lcall	_printf
      002D5A 15 81            [12] 1700 	dec	sp
      002D5C 15 81            [12] 1701 	dec	sp
      002D5E 15 81            [12] 1702 	dec	sp
                                   1703 ;	main.c:143: uint8_t addr = get_user_buffer_size();
      002D60 12 28 28         [24] 1704 	lcall	_get_user_buffer_size
                                   1705 ;	main.c:144: uint16_t data = phy_spi_read(addr);
      002D63 12 31 B2         [24] 1706 	lcall	_phy_spi_read
      002D66 AE 82            [24] 1707 	mov	r6, dpl
      002D68 AF 83            [24] 1708 	mov	r7, dph
                                   1709 ;	main.c:145: printf("PHY Read Data: 0x%04X\n\r", data);
      002D6A C0 06            [24] 1710 	push	ar6
      002D6C C0 07            [24] 1711 	push	ar7
      002D6E 74 C5            [12] 1712 	mov	a,#___str_32
      002D70 C0 E0            [24] 1713 	push	acc
      002D72 74 48            [12] 1714 	mov	a,#(___str_32 >> 8)
      002D74 C0 E0            [24] 1715 	push	acc
      002D76 74 80            [12] 1716 	mov	a,#0x80
      002D78 C0 E0            [24] 1717 	push	acc
      002D7A 12 39 E3         [24] 1718 	lcall	_printf
      002D7D E5 81            [12] 1719 	mov	a,sp
      002D7F 24 FB            [12] 1720 	add	a,#0xfb
      002D81 F5 81            [12] 1721 	mov	sp,a
                                   1722 ;	main.c:146: break;
      002D83 02 28 C6         [24] 1723 	ljmp	00119$
                                   1724 ;	main.c:148: case '7': {
      002D86                       1725 00109$:
                                   1726 ;	main.c:149: printf("Resetting ENC28J60...\n\r");
      002D86 74 DD            [12] 1727 	mov	a,#___str_33
      002D88 C0 E0            [24] 1728 	push	acc
      002D8A 74 48            [12] 1729 	mov	a,#(___str_33 >> 8)
      002D8C C0 E0            [24] 1730 	push	acc
      002D8E 74 80            [12] 1731 	mov	a,#0x80
      002D90 C0 E0            [24] 1732 	push	acc
      002D92 12 39 E3         [24] 1733 	lcall	_printf
      002D95 15 81            [12] 1734 	dec	sp
      002D97 15 81            [12] 1735 	dec	sp
      002D99 15 81            [12] 1736 	dec	sp
                                   1737 ;	main.c:150: enc_reset();
      002D9B 12 30 48         [24] 1738 	lcall	_enc_reset
                                   1739 ;	main.c:151: break;
      002D9E 02 28 C6         [24] 1740 	ljmp	00119$
                                   1741 ;	main.c:153: case '8': {
      002DA1                       1742 00110$:
                                   1743 ;	main.c:154: printf("Enter the ETH register address to read:\n\r");
      002DA1 74 F5            [12] 1744 	mov	a,#___str_34
      002DA3 C0 E0            [24] 1745 	push	acc
      002DA5 74 48            [12] 1746 	mov	a,#(___str_34 >> 8)
      002DA7 C0 E0            [24] 1747 	push	acc
      002DA9 74 80            [12] 1748 	mov	a,#0x80
      002DAB C0 E0            [24] 1749 	push	acc
      002DAD 12 39 E3         [24] 1750 	lcall	_printf
      002DB0 15 81            [12] 1751 	dec	sp
      002DB2 15 81            [12] 1752 	dec	sp
      002DB4 15 81            [12] 1753 	dec	sp
                                   1754 ;	main.c:155: uint8_t addr = get_user_buffer_size();
      002DB6 12 28 28         [24] 1755 	lcall	_get_user_buffer_size
      002DB9 AE 82            [24] 1756 	mov	r6, dpl
                                   1757 ;	main.c:156: printf("Enter the bank (0 or 1):\n\r");
      002DBB C0 06            [24] 1758 	push	ar6
      002DBD 74 1F            [12] 1759 	mov	a,#___str_35
      002DBF C0 E0            [24] 1760 	push	acc
      002DC1 74 49            [12] 1761 	mov	a,#(___str_35 >> 8)
      002DC3 C0 E0            [24] 1762 	push	acc
      002DC5 74 80            [12] 1763 	mov	a,#0x80
      002DC7 C0 E0            [24] 1764 	push	acc
      002DC9 12 39 E3         [24] 1765 	lcall	_printf
      002DCC 15 81            [12] 1766 	dec	sp
      002DCE 15 81            [12] 1767 	dec	sp
      002DD0 15 81            [12] 1768 	dec	sp
                                   1769 ;	main.c:157: uint8_t bank = get_user_buffer_size();
      002DD2 12 28 28         [24] 1770 	lcall	_get_user_buffer_size
      002DD5 AD 82            [24] 1771 	mov	r5, dpl
      002DD7 D0 06            [24] 1772 	pop	ar6
      002DD9 90 03 66         [24] 1773 	mov	dptr,#_eth_spi_read_PARM_2
      002DDC ED               [12] 1774 	mov	a,r5
      002DDD F0               [24] 1775 	movx	@dptr,a
                                   1776 ;	main.c:158: uint8_t data = eth_spi_read(addr, bank);
      002DDE 8E 82            [24] 1777 	mov	dpl, r6
      002DE0 12 30 53         [24] 1778 	lcall	_eth_spi_read
      002DE3 AF 82            [24] 1779 	mov	r7, dpl
                                   1780 ;	main.c:159: printf("ETH Register Data: 0x%02X\n\r", data);
      002DE5 7E 00            [12] 1781 	mov	r6,#0x00
      002DE7 C0 07            [24] 1782 	push	ar7
      002DE9 C0 06            [24] 1783 	push	ar6
      002DEB 74 3A            [12] 1784 	mov	a,#___str_36
      002DED C0 E0            [24] 1785 	push	acc
      002DEF 74 49            [12] 1786 	mov	a,#(___str_36 >> 8)
      002DF1 C0 E0            [24] 1787 	push	acc
      002DF3 74 80            [12] 1788 	mov	a,#0x80
      002DF5 C0 E0            [24] 1789 	push	acc
      002DF7 12 39 E3         [24] 1790 	lcall	_printf
      002DFA E5 81            [12] 1791 	mov	a,sp
      002DFC 24 FB            [12] 1792 	add	a,#0xfb
      002DFE F5 81            [12] 1793 	mov	sp,a
                                   1794 ;	main.c:160: break;
      002E00 02 28 C6         [24] 1795 	ljmp	00119$
                                   1796 ;	main.c:162: case '9': {
      002E03                       1797 00111$:
                                   1798 ;	main.c:163: printf("\n\rChoose an action: \n\r");
      002E03 74 79            [12] 1799 	mov	a,#___str_2
      002E05 C0 E0            [24] 1800 	push	acc
      002E07 74 45            [12] 1801 	mov	a,#(___str_2 >> 8)
      002E09 C0 E0            [24] 1802 	push	acc
      002E0B 74 80            [12] 1803 	mov	a,#0x80
      002E0D C0 E0            [24] 1804 	push	acc
      002E0F 12 39 E3         [24] 1805 	lcall	_printf
      002E12 15 81            [12] 1806 	dec	sp
      002E14 15 81            [12] 1807 	dec	sp
      002E16 15 81            [12] 1808 	dec	sp
                                   1809 ;	main.c:164: printf("1 --> Control Write\n\r");
      002E18 74 90            [12] 1810 	mov	a,#___str_3
      002E1A C0 E0            [24] 1811 	push	acc
      002E1C 74 45            [12] 1812 	mov	a,#(___str_3 >> 8)
      002E1E C0 E0            [24] 1813 	push	acc
      002E20 74 80            [12] 1814 	mov	a,#0x80
      002E22 C0 E0            [24] 1815 	push	acc
      002E24 12 39 E3         [24] 1816 	lcall	_printf
      002E27 15 81            [12] 1817 	dec	sp
      002E29 15 81            [12] 1818 	dec	sp
      002E2B 15 81            [12] 1819 	dec	sp
                                   1820 ;	main.c:165: printf("2 --> Buffer Write\n\r");
      002E2D 74 A6            [12] 1821 	mov	a,#___str_4
      002E2F C0 E0            [24] 1822 	push	acc
      002E31 74 45            [12] 1823 	mov	a,#(___str_4 >> 8)
      002E33 C0 E0            [24] 1824 	push	acc
      002E35 74 80            [12] 1825 	mov	a,#0x80
      002E37 C0 E0            [24] 1826 	push	acc
      002E39 12 39 E3         [24] 1827 	lcall	_printf
      002E3C 15 81            [12] 1828 	dec	sp
      002E3E 15 81            [12] 1829 	dec	sp
      002E40 15 81            [12] 1830 	dec	sp
                                   1831 ;	main.c:166: printf("3 --> Buffer Read\n\r");
      002E42 74 BB            [12] 1832 	mov	a,#___str_5
      002E44 C0 E0            [24] 1833 	push	acc
      002E46 74 45            [12] 1834 	mov	a,#(___str_5 >> 8)
      002E48 C0 E0            [24] 1835 	push	acc
      002E4A 74 80            [12] 1836 	mov	a,#0x80
      002E4C C0 E0            [24] 1837 	push	acc
      002E4E 12 39 E3         [24] 1838 	lcall	_printf
      002E51 15 81            [12] 1839 	dec	sp
      002E53 15 81            [12] 1840 	dec	sp
      002E55 15 81            [12] 1841 	dec	sp
                                   1842 ;	main.c:167: printf("4 --> MAC Register Read\n\r");
      002E57 74 CF            [12] 1843 	mov	a,#___str_6
      002E59 C0 E0            [24] 1844 	push	acc
      002E5B 74 45            [12] 1845 	mov	a,#(___str_6 >> 8)
      002E5D C0 E0            [24] 1846 	push	acc
      002E5F 74 80            [12] 1847 	mov	a,#0x80
      002E61 C0 E0            [24] 1848 	push	acc
      002E63 12 39 E3         [24] 1849 	lcall	_printf
      002E66 15 81            [12] 1850 	dec	sp
      002E68 15 81            [12] 1851 	dec	sp
      002E6A 15 81            [12] 1852 	dec	sp
                                   1853 ;	main.c:168: printf("5 --> PHY SPI Write\n\r");
      002E6C 74 E9            [12] 1854 	mov	a,#___str_7
      002E6E C0 E0            [24] 1855 	push	acc
      002E70 74 45            [12] 1856 	mov	a,#(___str_7 >> 8)
      002E72 C0 E0            [24] 1857 	push	acc
      002E74 74 80            [12] 1858 	mov	a,#0x80
      002E76 C0 E0            [24] 1859 	push	acc
      002E78 12 39 E3         [24] 1860 	lcall	_printf
      002E7B 15 81            [12] 1861 	dec	sp
      002E7D 15 81            [12] 1862 	dec	sp
      002E7F 15 81            [12] 1863 	dec	sp
                                   1864 ;	main.c:169: printf("6 --> PHY SPI Read\n\r");
      002E81 74 FF            [12] 1865 	mov	a,#___str_8
      002E83 C0 E0            [24] 1866 	push	acc
      002E85 74 45            [12] 1867 	mov	a,#(___str_8 >> 8)
      002E87 C0 E0            [24] 1868 	push	acc
      002E89 74 80            [12] 1869 	mov	a,#0x80
      002E8B C0 E0            [24] 1870 	push	acc
      002E8D 12 39 E3         [24] 1871 	lcall	_printf
      002E90 15 81            [12] 1872 	dec	sp
      002E92 15 81            [12] 1873 	dec	sp
      002E94 15 81            [12] 1874 	dec	sp
                                   1875 ;	main.c:170: printf("7 --> ENC Reset\n\r");
      002E96 74 14            [12] 1876 	mov	a,#___str_9
      002E98 C0 E0            [24] 1877 	push	acc
      002E9A 74 46            [12] 1878 	mov	a,#(___str_9 >> 8)
      002E9C C0 E0            [24] 1879 	push	acc
      002E9E 74 80            [12] 1880 	mov	a,#0x80
      002EA0 C0 E0            [24] 1881 	push	acc
      002EA2 12 39 E3         [24] 1882 	lcall	_printf
      002EA5 15 81            [12] 1883 	dec	sp
      002EA7 15 81            [12] 1884 	dec	sp
      002EA9 15 81            [12] 1885 	dec	sp
                                   1886 ;	main.c:171: printf("8 --> Read ETH Register\n\r");
      002EAB 74 26            [12] 1887 	mov	a,#___str_10
      002EAD C0 E0            [24] 1888 	push	acc
      002EAF 74 46            [12] 1889 	mov	a,#(___str_10 >> 8)
      002EB1 C0 E0            [24] 1890 	push	acc
      002EB3 74 80            [12] 1891 	mov	a,#0x80
      002EB5 C0 E0            [24] 1892 	push	acc
      002EB7 12 39 E3         [24] 1893 	lcall	_printf
      002EBA 15 81            [12] 1894 	dec	sp
      002EBC 15 81            [12] 1895 	dec	sp
      002EBE 15 81            [12] 1896 	dec	sp
                                   1897 ;	main.c:172: break;
      002EC0 02 28 C6         [24] 1898 	ljmp	00119$
                                   1899 ;	main.c:174: case 'A':{
      002EC3                       1900 00112$:
                                   1901 ;	main.c:175: init_ENC();
      002EC3 12 36 F6         [24] 1902 	lcall	_init_ENC
                                   1903 ;	main.c:177: send_arp_request();
      002EC6 12 23 B6         [24] 1904 	lcall	_send_arp_request
                                   1905 ;	main.c:178: break;
      002EC9 02 28 C6         [24] 1906 	ljmp	00119$
                                   1907 ;	main.c:180: case 'B':{
      002ECC                       1908 00113$:
                                   1909 ;	main.c:181: init_ENC();
      002ECC 12 36 F6         [24] 1910 	lcall	_init_ENC
                                   1911 ;	main.c:182: break;
      002ECF 02 28 C6         [24] 1912 	ljmp	00119$
                                   1913 ;	main.c:184: case 'C':{
      002ED2                       1914 00114$:
                                   1915 ;	main.c:185: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
      002ED2 74 56            [12] 1916 	mov	a,#___str_37
      002ED4 C0 E0            [24] 1917 	push	acc
      002ED6 74 49            [12] 1918 	mov	a,#(___str_37 >> 8)
      002ED8 C0 E0            [24] 1919 	push	acc
      002EDA 74 80            [12] 1920 	mov	a,#0x80
      002EDC C0 E0            [24] 1921 	push	acc
      002EDE 12 39 E3         [24] 1922 	lcall	_printf
      002EE1 15 81            [12] 1923 	dec	sp
      002EE3 15 81            [12] 1924 	dec	sp
      002EE5 15 81            [12] 1925 	dec	sp
                                   1926 ;	main.c:186: ENC_RESET = 0;
                                   1927 ;	assignBit
      002EE7 C2 90            [12] 1928 	clr	_P1_0
                                   1929 ;	main.c:187: for(int i = 0; i < 6000; i++);
      002EE9 7E 00            [12] 1930 	mov	r6,#0x00
      002EEB 7F 00            [12] 1931 	mov	r7,#0x00
      002EED                       1932 00128$:
      002EED C3               [12] 1933 	clr	c
      002EEE EE               [12] 1934 	mov	a,r6
      002EEF 94 70            [12] 1935 	subb	a,#0x70
      002EF1 EF               [12] 1936 	mov	a,r7
      002EF2 64 80            [12] 1937 	xrl	a,#0x80
      002EF4 94 97            [12] 1938 	subb	a,#0x97
      002EF6 50 07            [24] 1939 	jnc	00115$
      002EF8 0E               [12] 1940 	inc	r6
      002EF9 BE 00 F1         [24] 1941 	cjne	r6,#0x00,00128$
      002EFC 0F               [12] 1942 	inc	r7
      002EFD 80 EE            [24] 1943 	sjmp	00128$
      002EFF                       1944 00115$:
                                   1945 ;	main.c:188: ENC_RESET = 1;
                                   1946 ;	assignBit
      002EFF D2 90            [12] 1947 	setb	_P1_0
                                   1948 ;	main.c:189: break;
      002F01 02 28 C6         [24] 1949 	ljmp	00119$
                                   1950 ;	main.c:191: default: {
      002F04                       1951 00116$:
                                   1952 ;	main.c:192: printf("Invalid option. Please select a valid action.\n\r");
      002F04 74 89            [12] 1953 	mov	a,#___str_38
      002F06 C0 E0            [24] 1954 	push	acc
      002F08 74 49            [12] 1955 	mov	a,#(___str_38 >> 8)
      002F0A C0 E0            [24] 1956 	push	acc
      002F0C 74 80            [12] 1957 	mov	a,#0x80
      002F0E C0 E0            [24] 1958 	push	acc
      002F10 12 39 E3         [24] 1959 	lcall	_printf
      002F13 15 81            [12] 1960 	dec	sp
      002F15 15 81            [12] 1961 	dec	sp
      002F17 15 81            [12] 1962 	dec	sp
                                   1963 ;	main.c:195: }
                                   1964 ;	main.c:197: }
      002F19 02 28 C6         [24] 1965 	ljmp	00119$
                                   1966 	.area CSEG    (CODE)
                                   1967 	.area CONST   (CODE)
                                   1968 	.area CONST   (CODE)
      00455D                       1969 ___str_0:
      00455D 0A                    1970 	.db 0x0a
      00455E 0D                    1971 	.db 0x0d
      00455F 00                    1972 	.db 0x00
                                   1973 	.area CSEG    (CODE)
                                   1974 	.area CONST   (CODE)
      004560                       1975 ___str_1:
      004560 53 50 49 20 4F 70 65  1976 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      004576 0A                    1977 	.db 0x0a
      004577 0D                    1978 	.db 0x0d
      004578 00                    1979 	.db 0x00
                                   1980 	.area CSEG    (CODE)
                                   1981 	.area CONST   (CODE)
      004579                       1982 ___str_2:
      004579 0A                    1983 	.db 0x0a
      00457A 0D                    1984 	.db 0x0d
      00457B 43 68 6F 6F 73 65 20  1985 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      00458D 0A                    1986 	.db 0x0a
      00458E 0D                    1987 	.db 0x0d
      00458F 00                    1988 	.db 0x00
                                   1989 	.area CSEG    (CODE)
                                   1990 	.area CONST   (CODE)
      004590                       1991 ___str_3:
      004590 31 20 2D 2D 3E 20 43  1992 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      0045A3 0A                    1993 	.db 0x0a
      0045A4 0D                    1994 	.db 0x0d
      0045A5 00                    1995 	.db 0x00
                                   1996 	.area CSEG    (CODE)
                                   1997 	.area CONST   (CODE)
      0045A6                       1998 ___str_4:
      0045A6 32 20 2D 2D 3E 20 42  1999 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      0045B8 0A                    2000 	.db 0x0a
      0045B9 0D                    2001 	.db 0x0d
      0045BA 00                    2002 	.db 0x00
                                   2003 	.area CSEG    (CODE)
                                   2004 	.area CONST   (CODE)
      0045BB                       2005 ___str_5:
      0045BB 33 20 2D 2D 3E 20 42  2006 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      0045CC 0A                    2007 	.db 0x0a
      0045CD 0D                    2008 	.db 0x0d
      0045CE 00                    2009 	.db 0x00
                                   2010 	.area CSEG    (CODE)
                                   2011 	.area CONST   (CODE)
      0045CF                       2012 ___str_6:
      0045CF 34 20 2D 2D 3E 20 4D  2013 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      0045E6 0A                    2014 	.db 0x0a
      0045E7 0D                    2015 	.db 0x0d
      0045E8 00                    2016 	.db 0x00
                                   2017 	.area CSEG    (CODE)
                                   2018 	.area CONST   (CODE)
      0045E9                       2019 ___str_7:
      0045E9 35 20 2D 2D 3E 20 50  2020 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      0045FC 0A                    2021 	.db 0x0a
      0045FD 0D                    2022 	.db 0x0d
      0045FE 00                    2023 	.db 0x00
                                   2024 	.area CSEG    (CODE)
                                   2025 	.area CONST   (CODE)
      0045FF                       2026 ___str_8:
      0045FF 36 20 2D 2D 3E 20 50  2027 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      004611 0A                    2028 	.db 0x0a
      004612 0D                    2029 	.db 0x0d
      004613 00                    2030 	.db 0x00
                                   2031 	.area CSEG    (CODE)
                                   2032 	.area CONST   (CODE)
      004614                       2033 ___str_9:
      004614 37 20 2D 2D 3E 20 45  2034 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      004623 0A                    2035 	.db 0x0a
      004624 0D                    2036 	.db 0x0d
      004625 00                    2037 	.db 0x00
                                   2038 	.area CSEG    (CODE)
                                   2039 	.area CONST   (CODE)
      004626                       2040 ___str_10:
      004626 38 20 2D 2D 3E 20 52  2041 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      00463D 0A                    2042 	.db 0x0a
      00463E 0D                    2043 	.db 0x0d
      00463F 00                    2044 	.db 0x00
                                   2045 	.area CSEG    (CODE)
                                   2046 	.area CONST   (CODE)
      004640                       2047 ___str_11:
      004640 39 20 2D 2D 3E 20 44  2048 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      004652 0A                    2049 	.db 0x0a
      004653 0D                    2050 	.db 0x0d
      004654 00                    2051 	.db 0x00
                                   2052 	.area CSEG    (CODE)
                                   2053 	.area CONST   (CODE)
      004655                       2054 ___str_12:
      004655 41 20 2D 2D 3E 20 53  2055 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      00466B 0A                    2056 	.db 0x0a
      00466C 0D                    2057 	.db 0x0d
      00466D 00                    2058 	.db 0x00
                                   2059 	.area CSEG    (CODE)
                                   2060 	.area CONST   (CODE)
      00466E                       2061 ___str_13:
      00466E 42 20 2D 2D 3E 20 49  2062 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      004683 0A                    2063 	.db 0x0a
      004684 0D                    2064 	.db 0x0d
      004685 00                    2065 	.db 0x00
                                   2066 	.area CSEG    (CODE)
                                   2067 	.area CONST   (CODE)
      004686                       2068 ___str_14:
      004686 43 20 2D 2D 3E 20 48  2069 	.ascii "C --> Hard Reset(nRESET pin)"
             61 72 64 20 52 65 73
             65 74 28 6E 52 45 53
             45 54 20 70 69 6E 29
      0046A2 0A                    2070 	.db 0x0a
      0046A3 0D                    2071 	.db 0x0d
      0046A4 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                                   2074 	.area CONST   (CODE)
      0046A5                       2075 ___str_15:
      0046A5 45 6E 74 65 72 20 74  2076 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      0046C7 0A                    2077 	.db 0x0a
      0046C8 0D                    2078 	.db 0x0d
      0046C9 00                    2079 	.db 0x00
                                   2080 	.area CSEG    (CODE)
                                   2081 	.area CONST   (CODE)
      0046CA                       2082 ___str_16:
      0046CA 45 6E 74 65 72 20 74  2083 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      0046F4 0A                    2084 	.db 0x0a
      0046F5 0D                    2085 	.db 0x0d
      0046F6 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      0046F7                       2089 ___str_17:
      0046F7 45 6E 74 65 72 20 74  2090 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      004718 0A                    2091 	.db 0x0a
      004719 0D                    2092 	.db 0x0d
      00471A 00                    2093 	.db 0x00
                                   2094 	.area CSEG    (CODE)
                                   2095 	.area CONST   (CODE)
      00471B                       2096 ___str_18:
      00471B 45 6E 74 65 72 20 74  2097 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      00473E 0A                    2098 	.db 0x0a
      00473F 0D                    2099 	.db 0x0d
      004740 00                    2100 	.db 0x00
                                   2101 	.area CSEG    (CODE)
                                   2102 	.area CONST   (CODE)
      004741                       2103 ___str_19:
      004741 45 6E 74 65 72 20 74  2104 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      00475C 0A                    2105 	.db 0x0a
      00475D 0D                    2106 	.db 0x0d
      00475E 00                    2107 	.db 0x00
                                   2108 	.area CSEG    (CODE)
                                   2109 	.area CONST   (CODE)
      00475F                       2110 ___str_20:
      00475F 45 6E 74 65 72 20 25  2111 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      00477F 0A                    2112 	.db 0x0a
      004780 0D                    2113 	.db 0x0d
      004781 00                    2114 	.db 0x00
                                   2115 	.area CSEG    (CODE)
                                   2116 	.area CONST   (CODE)
      004782                       2117 ___str_21:
      004782 42 79 74 65 20 25 64  2118 	.ascii "Byte %d: "
             3A 20
      00478B 00                    2119 	.db 0x00
                                   2120 	.area CSEG    (CODE)
                                   2121 	.area CONST   (CODE)
      00478C                       2122 ___str_22:
      00478C 45 6E 74 65 72 20 74  2123 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      0047AE 0A                    2124 	.db 0x0a
      0047AF 0D                    2125 	.db 0x0d
      0047B0 00                    2126 	.db 0x00
                                   2127 	.area CSEG    (CODE)
                                   2128 	.area CONST   (CODE)
      0047B1                       2129 ___str_23:
      0047B1 52 65 61 64 20 44 61  2130 	.ascii "Read Data:"
             74 61 3A
      0047BB 0A                    2131 	.db 0x0a
      0047BC 0D                    2132 	.db 0x0d
      0047BD 00                    2133 	.db 0x00
                                   2134 	.area CSEG    (CODE)
                                   2135 	.area CONST   (CODE)
      0047BE                       2136 ___str_24:
      0047BE 42 79 74 65 20 25 64  2137 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      0047CD 0A                    2138 	.db 0x0a
      0047CE 0D                    2139 	.db 0x0d
      0047CF 00                    2140 	.db 0x00
                                   2141 	.area CSEG    (CODE)
                                   2142 	.area CONST   (CODE)
      0047D0                       2143 ___str_25:
      0047D0 45 6E 74 65 72 20 74  2144 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      0047F6 0A                    2145 	.db 0x0a
      0047F7 0D                    2146 	.db 0x0d
      0047F8 00                    2147 	.db 0x00
                                   2148 	.area CSEG    (CODE)
                                   2149 	.area CONST   (CODE)
      0047F9                       2150 ___str_26:
      0047F9 45 6E 74 65 72 20 74  2151 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      00481F 0A                    2152 	.db 0x0a
      004820 0D                    2153 	.db 0x0d
      004821 00                    2154 	.db 0x00
                                   2155 	.area CSEG    (CODE)
                                   2156 	.area CONST   (CODE)
      004822                       2157 ___str_27:
      004822 4D 41 43 20 52 65 67  2158 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      00483B 0A                    2159 	.db 0x0a
      00483C 0D                    2160 	.db 0x0d
      00483D 00                    2161 	.db 0x00
                                   2162 	.area CSEG    (CODE)
                                   2163 	.area CONST   (CODE)
      00483E                       2164 ___str_28:
      00483E 45 6E 74 65 72 20 74  2165 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      00485D 0A                    2166 	.db 0x0a
      00485E 0D                    2167 	.db 0x0d
      00485F 00                    2168 	.db 0x00
                                   2169 	.area CSEG    (CODE)
                                   2170 	.area CONST   (CODE)
      004860                       2171 ___str_29:
      004860 45 6E 74 65 72 20 74  2172 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      00487F 0A                    2173 	.db 0x0a
      004880 0D                    2174 	.db 0x0d
      004881 00                    2175 	.db 0x00
                                   2176 	.area CSEG    (CODE)
                                   2177 	.area CONST   (CODE)
      004882                       2178 ___str_30:
      004882 50 48 59 20 57 72 69  2179 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      004898 0A                    2180 	.db 0x0a
      004899 0D                    2181 	.db 0x0d
      00489A 00                    2182 	.db 0x00
                                   2183 	.area CSEG    (CODE)
                                   2184 	.area CONST   (CODE)
      00489B                       2185 ___str_31:
      00489B 45 6E 74 65 72 20 74  2186 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      0048C2 0A                    2187 	.db 0x0a
      0048C3 0D                    2188 	.db 0x0d
      0048C4 00                    2189 	.db 0x00
                                   2190 	.area CSEG    (CODE)
                                   2191 	.area CONST   (CODE)
      0048C5                       2192 ___str_32:
      0048C5 50 48 59 20 52 65 61  2193 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      0048DA 0A                    2194 	.db 0x0a
      0048DB 0D                    2195 	.db 0x0d
      0048DC 00                    2196 	.db 0x00
                                   2197 	.area CSEG    (CODE)
                                   2198 	.area CONST   (CODE)
      0048DD                       2199 ___str_33:
      0048DD 52 65 73 65 74 74 69  2200 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      0048F2 0A                    2201 	.db 0x0a
      0048F3 0D                    2202 	.db 0x0d
      0048F4 00                    2203 	.db 0x00
                                   2204 	.area CSEG    (CODE)
                                   2205 	.area CONST   (CODE)
      0048F5                       2206 ___str_34:
      0048F5 45 6E 74 65 72 20 74  2207 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      00491C 0A                    2208 	.db 0x0a
      00491D 0D                    2209 	.db 0x0d
      00491E 00                    2210 	.db 0x00
                                   2211 	.area CSEG    (CODE)
                                   2212 	.area CONST   (CODE)
      00491F                       2213 ___str_35:
      00491F 45 6E 74 65 72 20 74  2214 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      004937 0A                    2215 	.db 0x0a
      004938 0D                    2216 	.db 0x0d
      004939 00                    2217 	.db 0x00
                                   2218 	.area CSEG    (CODE)
                                   2219 	.area CONST   (CODE)
      00493A                       2220 ___str_36:
      00493A 45 54 48 20 52 65 67  2221 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      004953 0A                    2222 	.db 0x0a
      004954 0D                    2223 	.db 0x0d
      004955 00                    2224 	.db 0x00
                                   2225 	.area CSEG    (CODE)
                                   2226 	.area CONST   (CODE)
      004956                       2227 ___str_37:
      004956 20 52 65 73 65 74 74  2228 	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
             69 6E 67 20 45 4E 43
             20 75 73 69 6E 67 20
             52 45 53 45 54 20 70
             69 6E 20 69 6E 20 48
             61 72 64 77 61 72 65
             28 50 31 5F 30 29
      004986 0A                    2229 	.db 0x0a
      004987 0D                    2230 	.db 0x0d
      004988 00                    2231 	.db 0x00
                                   2232 	.area CSEG    (CODE)
                                   2233 	.area CONST   (CODE)
      004989                       2234 ___str_38:
      004989 49 6E 76 61 6C 69 64  2235 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      0049B6 0A                    2236 	.db 0x0a
      0049B7 0D                    2237 	.db 0x0d
      0049B8 00                    2238 	.db 0x00
                                   2239 	.area CSEG    (CODE)
                                   2240 	.area XINIT   (CODE)
                                   2241 	.area CABS    (ABS,CODE)

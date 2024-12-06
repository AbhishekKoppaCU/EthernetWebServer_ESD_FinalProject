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
                                     14 	.globl _RX_disable
                                     15 	.globl _send_arp_request
                                     16 	.globl _init_ENC
                                     17 	.globl _spi_control_write
                                     18 	.globl _eth_spi_read
                                     19 	.globl _phy_spi_write
                                     20 	.globl _phy_spi_read
                                     21 	.globl _spi_buffer_write
                                     22 	.globl _spi_buffer_read
                                     23 	.globl _mac_spi_read
                                     24 	.globl _enc_reset
                                     25 	.globl _configure_SPI
                                     26 	.globl _printf_tiny
                                     27 	.globl _putchar
                                     28 	.globl _getchar
                                     29 	.globl _printf
                                     30 	.globl _TF1
                                     31 	.globl _TR1
                                     32 	.globl _TF0
                                     33 	.globl _TR0
                                     34 	.globl _IE1
                                     35 	.globl _IT1
                                     36 	.globl _IE0
                                     37 	.globl _IT0
                                     38 	.globl _SM0
                                     39 	.globl _SM1
                                     40 	.globl _SM2
                                     41 	.globl _REN
                                     42 	.globl _TB8
                                     43 	.globl _RB8
                                     44 	.globl _TI
                                     45 	.globl _RI
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _F1
                                     53 	.globl _P
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD0
                                     61 	.globl _TXD
                                     62 	.globl _RXD0
                                     63 	.globl _RXD
                                     64 	.globl _P3_7
                                     65 	.globl _P3_6
                                     66 	.globl _P3_5
                                     67 	.globl _P3_4
                                     68 	.globl _P3_3
                                     69 	.globl _P3_2
                                     70 	.globl _P3_1
                                     71 	.globl _P3_0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _P1_7
                                     81 	.globl _P1_6
                                     82 	.globl _P1_5
                                     83 	.globl _P1_4
                                     84 	.globl _P1_3
                                     85 	.globl _P1_2
                                     86 	.globl _P1_1
                                     87 	.globl _P1_0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _PS
                                     97 	.globl _PT1
                                     98 	.globl _PX1
                                     99 	.globl _PT0
                                    100 	.globl _PX0
                                    101 	.globl _EA
                                    102 	.globl _ES
                                    103 	.globl _ET1
                                    104 	.globl _EX1
                                    105 	.globl _ET0
                                    106 	.globl _EX0
                                    107 	.globl _BREG_F7
                                    108 	.globl _BREG_F6
                                    109 	.globl _BREG_F5
                                    110 	.globl _BREG_F4
                                    111 	.globl _BREG_F3
                                    112 	.globl _BREG_F2
                                    113 	.globl _BREG_F1
                                    114 	.globl _BREG_F0
                                    115 	.globl _P5_7
                                    116 	.globl _P5_6
                                    117 	.globl _P5_5
                                    118 	.globl _P5_4
                                    119 	.globl _P5_3
                                    120 	.globl _P5_2
                                    121 	.globl _P5_1
                                    122 	.globl _P5_0
                                    123 	.globl _P4_7
                                    124 	.globl _P4_6
                                    125 	.globl _P4_5
                                    126 	.globl _P4_4
                                    127 	.globl _P4_3
                                    128 	.globl _P4_2
                                    129 	.globl _P4_1
                                    130 	.globl _P4_0
                                    131 	.globl _PX0L
                                    132 	.globl _PT0L
                                    133 	.globl _PX1L
                                    134 	.globl _PT1L
                                    135 	.globl _PSL
                                    136 	.globl _PT2L
                                    137 	.globl _PPCL
                                    138 	.globl _EC
                                    139 	.globl _CCF0
                                    140 	.globl _CCF1
                                    141 	.globl _CCF2
                                    142 	.globl _CCF3
                                    143 	.globl _CCF4
                                    144 	.globl _CR
                                    145 	.globl _CF
                                    146 	.globl _TF2
                                    147 	.globl _EXF2
                                    148 	.globl _RCLK
                                    149 	.globl _TCLK
                                    150 	.globl _EXEN2
                                    151 	.globl _TR2
                                    152 	.globl _C_T2
                                    153 	.globl _CP_RL2
                                    154 	.globl _T2CON_7
                                    155 	.globl _T2CON_6
                                    156 	.globl _T2CON_5
                                    157 	.globl _T2CON_4
                                    158 	.globl _T2CON_3
                                    159 	.globl _T2CON_2
                                    160 	.globl _T2CON_1
                                    161 	.globl _T2CON_0
                                    162 	.globl _PT2
                                    163 	.globl _ET2
                                    164 	.globl _TMOD
                                    165 	.globl _TL1
                                    166 	.globl _TL0
                                    167 	.globl _TH1
                                    168 	.globl _TH0
                                    169 	.globl _TCON
                                    170 	.globl _SP
                                    171 	.globl _SCON
                                    172 	.globl _SBUF0
                                    173 	.globl _SBUF
                                    174 	.globl _PSW
                                    175 	.globl _PCON
                                    176 	.globl _P3
                                    177 	.globl _P2
                                    178 	.globl _P1
                                    179 	.globl _P0
                                    180 	.globl _IP
                                    181 	.globl _IE
                                    182 	.globl _DP0L
                                    183 	.globl _DPL
                                    184 	.globl _DP0H
                                    185 	.globl _DPH
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _EECON
                                    189 	.globl _KBF
                                    190 	.globl _KBE
                                    191 	.globl _KBLS
                                    192 	.globl _BRL
                                    193 	.globl _BDRCON
                                    194 	.globl _T2MOD
                                    195 	.globl _SPDAT
                                    196 	.globl _SPSTA
                                    197 	.globl _SPCON
                                    198 	.globl _SADEN
                                    199 	.globl _SADDR
                                    200 	.globl _WDTPRG
                                    201 	.globl _WDTRST
                                    202 	.globl _P5
                                    203 	.globl _P4
                                    204 	.globl _IPH1
                                    205 	.globl _IPL1
                                    206 	.globl _IPH0
                                    207 	.globl _IPL0
                                    208 	.globl _IEN1
                                    209 	.globl _IEN0
                                    210 	.globl _CMOD
                                    211 	.globl _CL
                                    212 	.globl _CH
                                    213 	.globl _CCON
                                    214 	.globl _CCAPM4
                                    215 	.globl _CCAPM3
                                    216 	.globl _CCAPM2
                                    217 	.globl _CCAPM1
                                    218 	.globl _CCAPM0
                                    219 	.globl _CCAP4L
                                    220 	.globl _CCAP3L
                                    221 	.globl _CCAP2L
                                    222 	.globl _CCAP1L
                                    223 	.globl _CCAP0L
                                    224 	.globl _CCAP4H
                                    225 	.globl _CCAP3H
                                    226 	.globl _CCAP2H
                                    227 	.globl _CCAP1H
                                    228 	.globl _CCAP0H
                                    229 	.globl _CKCON1
                                    230 	.globl _CKCON0
                                    231 	.globl _CKRL
                                    232 	.globl _AUXR1
                                    233 	.globl _AUXR
                                    234 	.globl _TH2
                                    235 	.globl _TL2
                                    236 	.globl _RCAP2H
                                    237 	.globl _RCAP2L
                                    238 	.globl _T2CON
                                    239 ;--------------------------------------------------------
                                    240 ; special function registers
                                    241 ;--------------------------------------------------------
                                    242 	.area RSEG    (ABS,DATA)
      000000                        243 	.org 0x0000
                           0000C8   244 _T2CON	=	0x00c8
                           0000CA   245 _RCAP2L	=	0x00ca
                           0000CB   246 _RCAP2H	=	0x00cb
                           0000CC   247 _TL2	=	0x00cc
                           0000CD   248 _TH2	=	0x00cd
                           00008E   249 _AUXR	=	0x008e
                           0000A2   250 _AUXR1	=	0x00a2
                           000097   251 _CKRL	=	0x0097
                           00008F   252 _CKCON0	=	0x008f
                           0000AF   253 _CKCON1	=	0x00af
                           0000FA   254 _CCAP0H	=	0x00fa
                           0000FB   255 _CCAP1H	=	0x00fb
                           0000FC   256 _CCAP2H	=	0x00fc
                           0000FD   257 _CCAP3H	=	0x00fd
                           0000FE   258 _CCAP4H	=	0x00fe
                           0000EA   259 _CCAP0L	=	0x00ea
                           0000EB   260 _CCAP1L	=	0x00eb
                           0000EC   261 _CCAP2L	=	0x00ec
                           0000ED   262 _CCAP3L	=	0x00ed
                           0000EE   263 _CCAP4L	=	0x00ee
                           0000DA   264 _CCAPM0	=	0x00da
                           0000DB   265 _CCAPM1	=	0x00db
                           0000DC   266 _CCAPM2	=	0x00dc
                           0000DD   267 _CCAPM3	=	0x00dd
                           0000DE   268 _CCAPM4	=	0x00de
                           0000D8   269 _CCON	=	0x00d8
                           0000F9   270 _CH	=	0x00f9
                           0000E9   271 _CL	=	0x00e9
                           0000D9   272 _CMOD	=	0x00d9
                           0000A8   273 _IEN0	=	0x00a8
                           0000B1   274 _IEN1	=	0x00b1
                           0000B8   275 _IPL0	=	0x00b8
                           0000B7   276 _IPH0	=	0x00b7
                           0000B2   277 _IPL1	=	0x00b2
                           0000B3   278 _IPH1	=	0x00b3
                           0000C0   279 _P4	=	0x00c0
                           0000E8   280 _P5	=	0x00e8
                           0000A6   281 _WDTRST	=	0x00a6
                           0000A7   282 _WDTPRG	=	0x00a7
                           0000A9   283 _SADDR	=	0x00a9
                           0000B9   284 _SADEN	=	0x00b9
                           0000C3   285 _SPCON	=	0x00c3
                           0000C4   286 _SPSTA	=	0x00c4
                           0000C5   287 _SPDAT	=	0x00c5
                           0000C9   288 _T2MOD	=	0x00c9
                           00009B   289 _BDRCON	=	0x009b
                           00009A   290 _BRL	=	0x009a
                           00009C   291 _KBLS	=	0x009c
                           00009D   292 _KBE	=	0x009d
                           00009E   293 _KBF	=	0x009e
                           0000D2   294 _EECON	=	0x00d2
                           0000E0   295 _ACC	=	0x00e0
                           0000F0   296 _B	=	0x00f0
                           000083   297 _DPH	=	0x0083
                           000083   298 _DP0H	=	0x0083
                           000082   299 _DPL	=	0x0082
                           000082   300 _DP0L	=	0x0082
                           0000A8   301 _IE	=	0x00a8
                           0000B8   302 _IP	=	0x00b8
                           000080   303 _P0	=	0x0080
                           000090   304 _P1	=	0x0090
                           0000A0   305 _P2	=	0x00a0
                           0000B0   306 _P3	=	0x00b0
                           000087   307 _PCON	=	0x0087
                           0000D0   308 _PSW	=	0x00d0
                           000099   309 _SBUF	=	0x0099
                           000099   310 _SBUF0	=	0x0099
                           000098   311 _SCON	=	0x0098
                           000081   312 _SP	=	0x0081
                           000088   313 _TCON	=	0x0088
                           00008C   314 _TH0	=	0x008c
                           00008D   315 _TH1	=	0x008d
                           00008A   316 _TL0	=	0x008a
                           00008B   317 _TL1	=	0x008b
                           000089   318 _TMOD	=	0x0089
                                    319 ;--------------------------------------------------------
                                    320 ; special function bits
                                    321 ;--------------------------------------------------------
                                    322 	.area RSEG    (ABS,DATA)
      000000                        323 	.org 0x0000
                           0000AD   324 _ET2	=	0x00ad
                           0000BD   325 _PT2	=	0x00bd
                           0000C8   326 _T2CON_0	=	0x00c8
                           0000C9   327 _T2CON_1	=	0x00c9
                           0000CA   328 _T2CON_2	=	0x00ca
                           0000CB   329 _T2CON_3	=	0x00cb
                           0000CC   330 _T2CON_4	=	0x00cc
                           0000CD   331 _T2CON_5	=	0x00cd
                           0000CE   332 _T2CON_6	=	0x00ce
                           0000CF   333 _T2CON_7	=	0x00cf
                           0000C8   334 _CP_RL2	=	0x00c8
                           0000C9   335 _C_T2	=	0x00c9
                           0000CA   336 _TR2	=	0x00ca
                           0000CB   337 _EXEN2	=	0x00cb
                           0000CC   338 _TCLK	=	0x00cc
                           0000CD   339 _RCLK	=	0x00cd
                           0000CE   340 _EXF2	=	0x00ce
                           0000CF   341 _TF2	=	0x00cf
                           0000DF   342 _CF	=	0x00df
                           0000DE   343 _CR	=	0x00de
                           0000DC   344 _CCF4	=	0x00dc
                           0000DB   345 _CCF3	=	0x00db
                           0000DA   346 _CCF2	=	0x00da
                           0000D9   347 _CCF1	=	0x00d9
                           0000D8   348 _CCF0	=	0x00d8
                           0000AE   349 _EC	=	0x00ae
                           0000BE   350 _PPCL	=	0x00be
                           0000BD   351 _PT2L	=	0x00bd
                           0000BC   352 _PSL	=	0x00bc
                           0000BB   353 _PT1L	=	0x00bb
                           0000BA   354 _PX1L	=	0x00ba
                           0000B9   355 _PT0L	=	0x00b9
                           0000B8   356 _PX0L	=	0x00b8
                           0000C0   357 _P4_0	=	0x00c0
                           0000C1   358 _P4_1	=	0x00c1
                           0000C2   359 _P4_2	=	0x00c2
                           0000C3   360 _P4_3	=	0x00c3
                           0000C4   361 _P4_4	=	0x00c4
                           0000C5   362 _P4_5	=	0x00c5
                           0000C6   363 _P4_6	=	0x00c6
                           0000C7   364 _P4_7	=	0x00c7
                           0000E8   365 _P5_0	=	0x00e8
                           0000E9   366 _P5_1	=	0x00e9
                           0000EA   367 _P5_2	=	0x00ea
                           0000EB   368 _P5_3	=	0x00eb
                           0000EC   369 _P5_4	=	0x00ec
                           0000ED   370 _P5_5	=	0x00ed
                           0000EE   371 _P5_6	=	0x00ee
                           0000EF   372 _P5_7	=	0x00ef
                           0000F0   373 _BREG_F0	=	0x00f0
                           0000F1   374 _BREG_F1	=	0x00f1
                           0000F2   375 _BREG_F2	=	0x00f2
                           0000F3   376 _BREG_F3	=	0x00f3
                           0000F4   377 _BREG_F4	=	0x00f4
                           0000F5   378 _BREG_F5	=	0x00f5
                           0000F6   379 _BREG_F6	=	0x00f6
                           0000F7   380 _BREG_F7	=	0x00f7
                           0000A8   381 _EX0	=	0x00a8
                           0000A9   382 _ET0	=	0x00a9
                           0000AA   383 _EX1	=	0x00aa
                           0000AB   384 _ET1	=	0x00ab
                           0000AC   385 _ES	=	0x00ac
                           0000AF   386 _EA	=	0x00af
                           0000B8   387 _PX0	=	0x00b8
                           0000B9   388 _PT0	=	0x00b9
                           0000BA   389 _PX1	=	0x00ba
                           0000BB   390 _PT1	=	0x00bb
                           0000BC   391 _PS	=	0x00bc
                           000080   392 _P0_0	=	0x0080
                           000081   393 _P0_1	=	0x0081
                           000082   394 _P0_2	=	0x0082
                           000083   395 _P0_3	=	0x0083
                           000084   396 _P0_4	=	0x0084
                           000085   397 _P0_5	=	0x0085
                           000086   398 _P0_6	=	0x0086
                           000087   399 _P0_7	=	0x0087
                           000090   400 _P1_0	=	0x0090
                           000091   401 _P1_1	=	0x0091
                           000092   402 _P1_2	=	0x0092
                           000093   403 _P1_3	=	0x0093
                           000094   404 _P1_4	=	0x0094
                           000095   405 _P1_5	=	0x0095
                           000096   406 _P1_6	=	0x0096
                           000097   407 _P1_7	=	0x0097
                           0000A0   408 _P2_0	=	0x00a0
                           0000A1   409 _P2_1	=	0x00a1
                           0000A2   410 _P2_2	=	0x00a2
                           0000A3   411 _P2_3	=	0x00a3
                           0000A4   412 _P2_4	=	0x00a4
                           0000A5   413 _P2_5	=	0x00a5
                           0000A6   414 _P2_6	=	0x00a6
                           0000A7   415 _P2_7	=	0x00a7
                           0000B0   416 _P3_0	=	0x00b0
                           0000B1   417 _P3_1	=	0x00b1
                           0000B2   418 _P3_2	=	0x00b2
                           0000B3   419 _P3_3	=	0x00b3
                           0000B4   420 _P3_4	=	0x00b4
                           0000B5   421 _P3_5	=	0x00b5
                           0000B6   422 _P3_6	=	0x00b6
                           0000B7   423 _P3_7	=	0x00b7
                           0000B0   424 _RXD	=	0x00b0
                           0000B0   425 _RXD0	=	0x00b0
                           0000B1   426 _TXD	=	0x00b1
                           0000B1   427 _TXD0	=	0x00b1
                           0000B2   428 _INT0	=	0x00b2
                           0000B3   429 _INT1	=	0x00b3
                           0000B4   430 _T0	=	0x00b4
                           0000B5   431 _T1	=	0x00b5
                           0000B6   432 _WR	=	0x00b6
                           0000B7   433 _RD	=	0x00b7
                           0000D0   434 _P	=	0x00d0
                           0000D1   435 _F1	=	0x00d1
                           0000D2   436 _OV	=	0x00d2
                           0000D3   437 _RS0	=	0x00d3
                           0000D4   438 _RS1	=	0x00d4
                           0000D5   439 _F0	=	0x00d5
                           0000D6   440 _AC	=	0x00d6
                           0000D7   441 _CY	=	0x00d7
                           000098   442 _RI	=	0x0098
                           000099   443 _TI	=	0x0099
                           00009A   444 _RB8	=	0x009a
                           00009B   445 _TB8	=	0x009b
                           00009C   446 _REN	=	0x009c
                           00009D   447 _SM2	=	0x009d
                           00009E   448 _SM1	=	0x009e
                           00009F   449 _SM0	=	0x009f
                           000088   450 _IT0	=	0x0088
                           000089   451 _IE0	=	0x0089
                           00008A   452 _IT1	=	0x008a
                           00008B   453 _IE1	=	0x008b
                           00008C   454 _TR0	=	0x008c
                           00008D   455 _TF0	=	0x008d
                           00008E   456 _TR1	=	0x008e
                           00008F   457 _TF1	=	0x008f
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable register banks
                                    460 ;--------------------------------------------------------
                                    461 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        462 	.ds 8
                                    463 ;--------------------------------------------------------
                                    464 ; internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area DSEG    (DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; overlayable items in internal ram
                                    469 ;--------------------------------------------------------
                                    470 	.area	OSEG    (OVR,DATA)
      000013                        471 _hex_to_int_sloc0_1_0:
      000013                        472 	.ds 3
      000016                        473 _hex_to_int_sloc1_1_0:
      000016                        474 	.ds 1
      000017                        475 _hex_to_int_sloc2_1_0:
      000017                        476 	.ds 2
                                    477 ;--------------------------------------------------------
                                    478 ; Stack segment in internal ram
                                    479 ;--------------------------------------------------------
                                    480 	.area SSEG
      000022                        481 __start__stack:
      000022                        482 	.ds	1
                                    483 
                                    484 ;--------------------------------------------------------
                                    485 ; indirectly addressable internal ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area ISEG    (DATA)
                                    488 ;--------------------------------------------------------
                                    489 ; absolute internal ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area IABS    (ABS,DATA)
                                    492 	.area IABS    (ABS,DATA)
                                    493 ;--------------------------------------------------------
                                    494 ; bit data
                                    495 ;--------------------------------------------------------
                                    496 	.area BSEG    (BIT)
                                    497 ;--------------------------------------------------------
                                    498 ; paged external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area PSEG    (PAG,XDATA)
                                    501 ;--------------------------------------------------------
                                    502 ; uninitialized external ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area XSEG    (XDATA)
      00014F                        505 _hex_to_int_str_10000_74:
      00014F                        506 	.ds 3
      000152                        507 _hex_to_int_result_10000_75:
      000152                        508 	.ds 2
      000154                        509 _hex_to_int_ASCII_20000_76:
      000154                        510 	.ds 2
      000156                        511 _get_user_buffer_size_input_10000_81:
      000156                        512 	.ds 10
      000160                        513 _main_buffer_40003_94:
      000160                        514 	.ds 256
      000260                        515 _main_buffer_40003_99:
      000260                        516 	.ds 256
                                    517 ;--------------------------------------------------------
                                    518 ; absolute external ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area XABS    (ABS,XDATA)
                                    521 ;--------------------------------------------------------
                                    522 ; initialized external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area XISEG   (XDATA)
                                    525 	.area HOME    (CODE)
                                    526 	.area GSINIT0 (CODE)
                                    527 	.area GSINIT1 (CODE)
                                    528 	.area GSINIT2 (CODE)
                                    529 	.area GSINIT3 (CODE)
                                    530 	.area GSINIT4 (CODE)
                                    531 	.area GSINIT5 (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 	.area GSFINAL (CODE)
                                    534 	.area CSEG    (CODE)
                                    535 ;--------------------------------------------------------
                                    536 ; interrupt vector
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
      002000                        539 __interrupt_vect:
      002000 02 20 09         [24]  540 	ljmp	__sdcc_gsinit_startup
      002003 02 26 3A         [24]  541 	ljmp	_external_interrupt0_isr
                                    542 ;--------------------------------------------------------
                                    543 ; global & static initialisations
                                    544 ;--------------------------------------------------------
                                    545 	.area HOME    (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.area GSFINAL (CODE)
                                    548 	.area GSINIT  (CODE)
                                    549 	.globl __sdcc_gsinit_startup
                                    550 	.globl __sdcc_program_startup
                                    551 	.globl __start__stack
                                    552 	.globl __mcs51_genXINIT
                                    553 	.globl __mcs51_genXRAMCLEAR
                                    554 	.globl __mcs51_genRAMCLEAR
                                    555 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  556 	ljmp	__sdcc_program_startup
                                    557 ;--------------------------------------------------------
                                    558 ; Home
                                    559 ;--------------------------------------------------------
                                    560 	.area HOME    (CODE)
                                    561 	.area HOME    (CODE)
      002006                        562 __sdcc_program_startup:
      002006 02 28 D4         [24]  563 	ljmp	_main
                                    564 ;	return from main will return to caller
                                    565 ;--------------------------------------------------------
                                    566 ; code
                                    567 ;--------------------------------------------------------
                                    568 	.area CSEG    (CODE)
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'hex_to_int'
                                    571 ;------------------------------------------------------------
                                    572 ;str                       Allocated with name '_hex_to_int_str_10000_74'
                                    573 ;i                         Allocated with name '_hex_to_int_i_10000_75'
                                    574 ;result                    Allocated with name '_hex_to_int_result_10000_75'
                                    575 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_76'
                                    576 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    577 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    578 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    579 ;------------------------------------------------------------
                                    580 ;	main.c:12: int hex_to_int(char* str)
                                    581 ;	-----------------------------------------
                                    582 ;	 function hex_to_int
                                    583 ;	-----------------------------------------
      002696                        584 _hex_to_int:
                           000007   585 	ar7 = 0x07
                           000006   586 	ar6 = 0x06
                           000005   587 	ar5 = 0x05
                           000004   588 	ar4 = 0x04
                           000003   589 	ar3 = 0x03
                           000002   590 	ar2 = 0x02
                           000001   591 	ar1 = 0x01
                           000000   592 	ar0 = 0x00
      002696 AF F0            [24]  593 	mov	r7,b
      002698 AE 83            [24]  594 	mov	r6,dph
      00269A E5 82            [12]  595 	mov	a,dpl
      00269C 90 01 4F         [24]  596 	mov	dptr,#_hex_to_int_str_10000_74
      00269F F0               [24]  597 	movx	@dptr,a
      0026A0 EE               [12]  598 	mov	a,r6
      0026A1 A3               [24]  599 	inc	dptr
      0026A2 F0               [24]  600 	movx	@dptr,a
      0026A3 EF               [12]  601 	mov	a,r7
      0026A4 A3               [24]  602 	inc	dptr
      0026A5 F0               [24]  603 	movx	@dptr,a
                                    604 ;	main.c:15: int i = 0, result = 0;
      0026A6 90 01 52         [24]  605 	mov	dptr,#_hex_to_int_result_10000_75
      0026A9 E4               [12]  606 	clr	a
      0026AA F0               [24]  607 	movx	@dptr,a
      0026AB A3               [24]  608 	inc	dptr
      0026AC F0               [24]  609 	movx	@dptr,a
                                    610 ;	main.c:16: while(str[i] != '\0')
      0026AD 90 01 4F         [24]  611 	mov	dptr,#_hex_to_int_str_10000_74
      0026B0 E0               [24]  612 	movx	a,@dptr
      0026B1 FD               [12]  613 	mov	r5,a
      0026B2 A3               [24]  614 	inc	dptr
      0026B3 E0               [24]  615 	movx	a,@dptr
      0026B4 FE               [12]  616 	mov	r6,a
      0026B5 A3               [24]  617 	inc	dptr
      0026B6 E0               [24]  618 	movx	a,@dptr
      0026B7 FF               [12]  619 	mov	r7,a
      0026B8 8D 02            [24]  620 	mov	ar2,r5
      0026BA 8E 03            [24]  621 	mov	ar3,r6
      0026BC 8F 04            [24]  622 	mov	ar4,r7
      0026BE 8D 13            [24]  623 	mov	_hex_to_int_sloc0_1_0,r5
      0026C0 8E 14            [24]  624 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      0026C2 8F 15            [24]  625 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      0026C4 78 00            [12]  626 	mov	r0,#0x00
      0026C6 79 00            [12]  627 	mov	r1,#0x00
      0026C8                        628 00112$:
      0026C8 C0 02            [24]  629 	push	ar2
      0026CA C0 03            [24]  630 	push	ar3
      0026CC C0 04            [24]  631 	push	ar4
      0026CE E8               [12]  632 	mov	a,r0
      0026CF 25 13            [12]  633 	add	a, _hex_to_int_sloc0_1_0
      0026D1 FA               [12]  634 	mov	r2,a
      0026D2 E9               [12]  635 	mov	a,r1
      0026D3 35 14            [12]  636 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      0026D5 FB               [12]  637 	mov	r3,a
      0026D6 AC 15            [24]  638 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      0026D8 8A 82            [24]  639 	mov	dpl,r2
      0026DA 8B 83            [24]  640 	mov	dph,r3
      0026DC 8C F0            [24]  641 	mov	b,r4
      0026DE 12 44 38         [24]  642 	lcall	__gptrget
      0026E1 F5 16            [12]  643 	mov	_hex_to_int_sloc1_1_0,a
      0026E3 D0 04            [24]  644 	pop	ar4
      0026E5 D0 03            [24]  645 	pop	ar3
      0026E7 D0 02            [24]  646 	pop	ar2
      0026E9 E5 16            [12]  647 	mov	a,_hex_to_int_sloc1_1_0
      0026EB 70 03            [24]  648 	jnz	00166$
      0026ED 02 28 44         [24]  649 	ljmp	00114$
      0026F0                        650 00166$:
                                    651 ;	main.c:18: int ASCII = (int)str[i];
      0026F0 C0 02            [24]  652 	push	ar2
      0026F2 C0 03            [24]  653 	push	ar3
      0026F4 C0 04            [24]  654 	push	ar4
      0026F6 85 16 17         [24]  655 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      0026F9 75 18 00         [24]  656 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      0026FC 90 01 54         [24]  657 	mov	dptr,#_hex_to_int_ASCII_20000_76
      0026FF E5 17            [12]  658 	mov	a,_hex_to_int_sloc2_1_0
      002701 F0               [24]  659 	movx	@dptr,a
      002702 E5 18            [12]  660 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002704 A3               [24]  661 	inc	dptr
      002705 F0               [24]  662 	movx	@dptr,a
                                    663 ;	main.c:19: result *= 16;
      002706 90 01 52         [24]  664 	mov	dptr,#_hex_to_int_result_10000_75
      002709 E0               [24]  665 	movx	a,@dptr
      00270A FB               [12]  666 	mov	r3,a
      00270B A3               [24]  667 	inc	dptr
      00270C E0               [24]  668 	movx	a,@dptr
      00270D C4               [12]  669 	swap	a
      00270E 54 F0            [12]  670 	anl	a,#0xf0
      002710 CB               [12]  671 	xch	a,r3
      002711 C4               [12]  672 	swap	a
      002712 CB               [12]  673 	xch	a,r3
      002713 6B               [12]  674 	xrl	a,r3
      002714 CB               [12]  675 	xch	a,r3
      002715 54 F0            [12]  676 	anl	a,#0xf0
      002717 CB               [12]  677 	xch	a,r3
      002718 6B               [12]  678 	xrl	a,r3
      002719 FC               [12]  679 	mov	r4,a
      00271A 90 01 52         [24]  680 	mov	dptr,#_hex_to_int_result_10000_75
      00271D EB               [12]  681 	mov	a,r3
      00271E F0               [24]  682 	movx	@dptr,a
      00271F EC               [12]  683 	mov	a,r4
      002720 A3               [24]  684 	inc	dptr
      002721 F0               [24]  685 	movx	@dptr,a
                                    686 ;	main.c:20: if(ASCII >= '0' && ASCII <= '9')
      002722 C3               [12]  687 	clr	c
      002723 E5 17            [12]  688 	mov	a,_hex_to_int_sloc2_1_0
      002725 94 30            [12]  689 	subb	a,#0x30
      002727 E5 18            [12]  690 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002729 64 80            [12]  691 	xrl	a,#0x80
      00272B 94 80            [12]  692 	subb	a,#0x80
      00272D D0 04            [24]  693 	pop	ar4
      00272F D0 03            [24]  694 	pop	ar3
      002731 D0 02            [24]  695 	pop	ar2
      002733 40 3F            [24]  696 	jc	00109$
      002735 74 39            [12]  697 	mov	a,#0x39
      002737 95 17            [12]  698 	subb	a,_hex_to_int_sloc2_1_0
      002739 74 80            [12]  699 	mov	a,#(0x00 ^ 0x80)
      00273B 85 18 F0         [24]  700 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      00273E 63 F0 80         [24]  701 	xrl	b,#0x80
      002741 95 F0            [12]  702 	subb	a,b
      002743 40 2F            [24]  703 	jc	00109$
                                    704 ;	main.c:22: result += str[i] - 48;
      002745 C0 02            [24]  705 	push	ar2
      002747 C0 03            [24]  706 	push	ar3
      002749 C0 04            [24]  707 	push	ar4
      00274B E5 17            [12]  708 	mov	a,_hex_to_int_sloc2_1_0
      00274D 24 D0            [12]  709 	add	a,#0xd0
      00274F F5 17            [12]  710 	mov	_hex_to_int_sloc2_1_0,a
      002751 E5 18            [12]  711 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002753 34 FF            [12]  712 	addc	a,#0xff
      002755 F5 18            [12]  713 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002757 90 01 52         [24]  714 	mov	dptr,#_hex_to_int_result_10000_75
      00275A E0               [24]  715 	movx	a,@dptr
      00275B FA               [12]  716 	mov	r2,a
      00275C A3               [24]  717 	inc	dptr
      00275D E0               [24]  718 	movx	a,@dptr
      00275E FC               [12]  719 	mov	r4,a
      00275F 90 01 52         [24]  720 	mov	dptr,#_hex_to_int_result_10000_75
      002762 E5 17            [12]  721 	mov	a,_hex_to_int_sloc2_1_0
      002764 2A               [12]  722 	add	a, r2
      002765 F0               [24]  723 	movx	@dptr,a
      002766 E5 18            [12]  724 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002768 3C               [12]  725 	addc	a, r4
      002769 A3               [24]  726 	inc	dptr
      00276A F0               [24]  727 	movx	@dptr,a
      00276B D0 04            [24]  728 	pop	ar4
      00276D D0 03            [24]  729 	pop	ar3
      00276F D0 02            [24]  730 	pop	ar2
      002771 02 28 3C         [24]  731 	ljmp	00110$
      002774                        732 00109$:
                                    733 ;	main.c:24: else if(ASCII >= 'A' && ASCII <= 'F')
      002774 90 01 54         [24]  734 	mov	dptr,#_hex_to_int_ASCII_20000_76
      002777 E0               [24]  735 	movx	a,@dptr
      002778 F5 17            [12]  736 	mov	_hex_to_int_sloc2_1_0,a
      00277A A3               [24]  737 	inc	dptr
      00277B E0               [24]  738 	movx	a,@dptr
      00277C F5 18            [12]  739 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      00277E C3               [12]  740 	clr	c
      00277F E5 17            [12]  741 	mov	a,_hex_to_int_sloc2_1_0
      002781 94 41            [12]  742 	subb	a,#0x41
      002783 E5 18            [12]  743 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002785 64 80            [12]  744 	xrl	a,#0x80
      002787 94 80            [12]  745 	subb	a,#0x80
      002789 40 4E            [24]  746 	jc	00105$
      00278B 74 46            [12]  747 	mov	a,#0x46
      00278D 95 17            [12]  748 	subb	a,_hex_to_int_sloc2_1_0
      00278F 74 80            [12]  749 	mov	a,#(0x00 ^ 0x80)
      002791 85 18 F0         [24]  750 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002794 63 F0 80         [24]  751 	xrl	b,#0x80
      002797 95 F0            [12]  752 	subb	a,b
      002799 40 3E            [24]  753 	jc	00105$
                                    754 ;	main.c:26: result += str[i] - 55;
      00279B C0 05            [24]  755 	push	ar5
      00279D C0 06            [24]  756 	push	ar6
      00279F C0 07            [24]  757 	push	ar7
      0027A1 E8               [12]  758 	mov	a,r0
      0027A2 2A               [12]  759 	add	a, r2
      0027A3 FD               [12]  760 	mov	r5,a
      0027A4 E9               [12]  761 	mov	a,r1
      0027A5 3B               [12]  762 	addc	a, r3
      0027A6 FE               [12]  763 	mov	r6,a
      0027A7 8C 07            [24]  764 	mov	ar7,r4
      0027A9 8D 82            [24]  765 	mov	dpl,r5
      0027AB 8E 83            [24]  766 	mov	dph,r6
      0027AD 8F F0            [24]  767 	mov	b,r7
      0027AF 12 44 38         [24]  768 	lcall	__gptrget
      0027B2 7F 00            [12]  769 	mov	r7,#0x00
      0027B4 24 C9            [12]  770 	add	a,#0xc9
      0027B6 F5 17            [12]  771 	mov	_hex_to_int_sloc2_1_0,a
      0027B8 EF               [12]  772 	mov	a,r7
      0027B9 34 FF            [12]  773 	addc	a,#0xff
      0027BB F5 18            [12]  774 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0027BD 90 01 52         [24]  775 	mov	dptr,#_hex_to_int_result_10000_75
      0027C0 E0               [24]  776 	movx	a,@dptr
      0027C1 FE               [12]  777 	mov	r6,a
      0027C2 A3               [24]  778 	inc	dptr
      0027C3 E0               [24]  779 	movx	a,@dptr
      0027C4 FF               [12]  780 	mov	r7,a
      0027C5 90 01 52         [24]  781 	mov	dptr,#_hex_to_int_result_10000_75
      0027C8 E5 17            [12]  782 	mov	a,_hex_to_int_sloc2_1_0
      0027CA 2E               [12]  783 	add	a, r6
      0027CB F0               [24]  784 	movx	@dptr,a
      0027CC E5 18            [12]  785 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0027CE 3F               [12]  786 	addc	a, r7
      0027CF A3               [24]  787 	inc	dptr
      0027D0 F0               [24]  788 	movx	@dptr,a
      0027D1 D0 07            [24]  789 	pop	ar7
      0027D3 D0 06            [24]  790 	pop	ar6
      0027D5 D0 05            [24]  791 	pop	ar5
      0027D7 80 63            [24]  792 	sjmp	00110$
      0027D9                        793 00105$:
                                    794 ;	main.c:28: else if(ASCII >= 'a' && ASCII <= 'f')
      0027D9 90 01 54         [24]  795 	mov	dptr,#_hex_to_int_ASCII_20000_76
      0027DC E0               [24]  796 	movx	a,@dptr
      0027DD F5 17            [12]  797 	mov	_hex_to_int_sloc2_1_0,a
      0027DF A3               [24]  798 	inc	dptr
      0027E0 E0               [24]  799 	movx	a,@dptr
      0027E1 F5 18            [12]  800 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0027E3 C3               [12]  801 	clr	c
      0027E4 E5 17            [12]  802 	mov	a,_hex_to_int_sloc2_1_0
      0027E6 94 61            [12]  803 	subb	a,#0x61
      0027E8 E5 18            [12]  804 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0027EA 64 80            [12]  805 	xrl	a,#0x80
      0027EC 94 80            [12]  806 	subb	a,#0x80
      0027EE 40 4C            [24]  807 	jc	00110$
      0027F0 74 66            [12]  808 	mov	a,#0x66
      0027F2 95 17            [12]  809 	subb	a,_hex_to_int_sloc2_1_0
      0027F4 74 80            [12]  810 	mov	a,#(0x00 ^ 0x80)
      0027F6 85 18 F0         [24]  811 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      0027F9 63 F0 80         [24]  812 	xrl	b,#0x80
      0027FC 95 F0            [12]  813 	subb	a,b
      0027FE 40 3C            [24]  814 	jc	00110$
                                    815 ;	main.c:30: result += str[i] - 87;
      002800 C0 02            [24]  816 	push	ar2
      002802 C0 03            [24]  817 	push	ar3
      002804 C0 04            [24]  818 	push	ar4
      002806 E8               [12]  819 	mov	a,r0
      002807 2D               [12]  820 	add	a, r5
      002808 FA               [12]  821 	mov	r2,a
      002809 E9               [12]  822 	mov	a,r1
      00280A 3E               [12]  823 	addc	a, r6
      00280B FB               [12]  824 	mov	r3,a
      00280C 8F 04            [24]  825 	mov	ar4,r7
      00280E 8A 82            [24]  826 	mov	dpl,r2
      002810 8B 83            [24]  827 	mov	dph,r3
      002812 8C F0            [24]  828 	mov	b,r4
      002814 12 44 38         [24]  829 	lcall	__gptrget
      002817 7C 00            [12]  830 	mov	r4,#0x00
      002819 24 A9            [12]  831 	add	a,#0xa9
      00281B F5 17            [12]  832 	mov	_hex_to_int_sloc2_1_0,a
      00281D EC               [12]  833 	mov	a,r4
      00281E 34 FF            [12]  834 	addc	a,#0xff
      002820 F5 18            [12]  835 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002822 90 01 52         [24]  836 	mov	dptr,#_hex_to_int_result_10000_75
      002825 E0               [24]  837 	movx	a,@dptr
      002826 FB               [12]  838 	mov	r3,a
      002827 A3               [24]  839 	inc	dptr
      002828 E0               [24]  840 	movx	a,@dptr
      002829 FC               [12]  841 	mov	r4,a
      00282A 90 01 52         [24]  842 	mov	dptr,#_hex_to_int_result_10000_75
      00282D E5 17            [12]  843 	mov	a,_hex_to_int_sloc2_1_0
      00282F 2B               [12]  844 	add	a, r3
      002830 F0               [24]  845 	movx	@dptr,a
      002831 E5 18            [12]  846 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002833 3C               [12]  847 	addc	a, r4
      002834 A3               [24]  848 	inc	dptr
      002835 F0               [24]  849 	movx	@dptr,a
                                    850 ;	main.c:34: return result;
      002836 D0 04            [24]  851 	pop	ar4
      002838 D0 03            [24]  852 	pop	ar3
      00283A D0 02            [24]  853 	pop	ar2
                                    854 ;	main.c:30: result += str[i] - 87;
      00283C                        855 00110$:
                                    856 ;	main.c:32: i++;
      00283C 08               [12]  857 	inc	r0
      00283D B8 00 01         [24]  858 	cjne	r0,#0x00,00173$
      002840 09               [12]  859 	inc	r1
      002841                        860 00173$:
      002841 02 26 C8         [24]  861 	ljmp	00112$
      002844                        862 00114$:
                                    863 ;	main.c:34: return result;
      002844 90 01 52         [24]  864 	mov	dptr,#_hex_to_int_result_10000_75
      002847 E0               [24]  865 	movx	a,@dptr
      002848 FE               [12]  866 	mov	r6,a
      002849 A3               [24]  867 	inc	dptr
      00284A E0               [24]  868 	movx	a,@dptr
                                    869 ;	main.c:36: }
      00284B 8E 82            [24]  870 	mov	dpl,r6
      00284D F5 83            [12]  871 	mov	dph,a
      00284F 22               [24]  872 	ret
                                    873 ;------------------------------------------------------------
                                    874 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    875 ;------------------------------------------------------------
                                    876 ;i                         Allocated with name '_get_user_buffer_size_i_10000_81'
                                    877 ;output                    Allocated with name '_get_user_buffer_size_output_10000_81'
                                    878 ;input                     Allocated with name '_get_user_buffer_size_input_10000_81'
                                    879 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_81'
                                    880 ;------------------------------------------------------------
                                    881 ;	main.c:39: int get_user_buffer_size(void)
                                    882 ;	-----------------------------------------
                                    883 ;	 function get_user_buffer_size
                                    884 ;	-----------------------------------------
      002850                        885 _get_user_buffer_size:
                                    886 ;	main.c:45: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      002850 7E 00            [12]  887 	mov	r6,#0x00
      002852 7F 00            [12]  888 	mov	r7,#0x00
      002854                        889 00103$:
      002854 C0 07            [24]  890 	push	ar7
      002856 C0 06            [24]  891 	push	ar6
      002858 12 38 00         [24]  892 	lcall	_getchar
      00285B AC 82            [24]  893 	mov	r4, dpl
      00285D D0 06            [24]  894 	pop	ar6
      00285F D0 07            [24]  895 	pop	ar7
      002861 BC 0A 02         [24]  896 	cjne	r4,#0x0a,00133$
      002864 80 3A            [24]  897 	sjmp	00105$
      002866                        898 00133$:
      002866 BC 0D 02         [24]  899 	cjne	r4,#0x0d,00134$
      002869 80 35            [24]  900 	sjmp	00105$
      00286B                        901 00134$:
      00286B C3               [12]  902 	clr	c
      00286C EE               [12]  903 	mov	a,r6
      00286D 94 09            [12]  904 	subb	a,#0x09
      00286F EF               [12]  905 	mov	a,r7
      002870 64 80            [12]  906 	xrl	a,#0x80
      002872 94 80            [12]  907 	subb	a,#0x80
      002874 50 2A            [24]  908 	jnc	00105$
                                    909 ;	main.c:47: putchar(ch);
      002876 8C 03            [24]  910 	mov	ar3,r4
      002878 7D 00            [12]  911 	mov	r5,#0x00
      00287A 8B 82            [24]  912 	mov	dpl, r3
      00287C 8D 83            [24]  913 	mov	dph, r5
      00287E C0 07            [24]  914 	push	ar7
      002880 C0 06            [24]  915 	push	ar6
      002882 C0 04            [24]  916 	push	ar4
      002884 12 37 E1         [24]  917 	lcall	_putchar
      002887 D0 04            [24]  918 	pop	ar4
      002889 D0 06            [24]  919 	pop	ar6
      00288B D0 07            [24]  920 	pop	ar7
                                    921 ;	main.c:48: input[i] = ch;      //Append the input array with the received character
      00288D EE               [12]  922 	mov	a,r6
      00288E 24 56            [12]  923 	add	a, #_get_user_buffer_size_input_10000_81
      002890 F5 82            [12]  924 	mov	dpl,a
      002892 EF               [12]  925 	mov	a,r7
      002893 34 01            [12]  926 	addc	a, #(_get_user_buffer_size_input_10000_81 >> 8)
      002895 F5 83            [12]  927 	mov	dph,a
      002897 EC               [12]  928 	mov	a,r4
      002898 F0               [24]  929 	movx	@dptr,a
                                    930 ;	main.c:49: i++;
      002899 0E               [12]  931 	inc	r6
      00289A BE 00 B7         [24]  932 	cjne	r6,#0x00,00103$
      00289D 0F               [12]  933 	inc	r7
      00289E 80 B4            [24]  934 	sjmp	00103$
      0028A0                        935 00105$:
                                    936 ;	main.c:51: input[i] = '\0';
      0028A0 EE               [12]  937 	mov	a,r6
      0028A1 24 56            [12]  938 	add	a, #_get_user_buffer_size_input_10000_81
      0028A3 F5 82            [12]  939 	mov	dpl,a
      0028A5 EF               [12]  940 	mov	a,r7
      0028A6 34 01            [12]  941 	addc	a, #(_get_user_buffer_size_input_10000_81 >> 8)
      0028A8 F5 83            [12]  942 	mov	dph,a
      0028AA E4               [12]  943 	clr	a
      0028AB F0               [24]  944 	movx	@dptr,a
                                    945 ;	main.c:52: output = hex_to_int(input); //Convert the char hex data to int
      0028AC 90 01 56         [24]  946 	mov	dptr,#_get_user_buffer_size_input_10000_81
      0028AF F5 F0            [12]  947 	mov	b,a
      0028B1 12 26 96         [24]  948 	lcall	_hex_to_int
      0028B4 AE 82            [24]  949 	mov	r6, dpl
      0028B6 AF 83            [24]  950 	mov	r7, dph
                                    951 ;	main.c:53: printf_tiny("\n\r");
      0028B8 C0 07            [24]  952 	push	ar7
      0028BA C0 06            [24]  953 	push	ar6
      0028BC 74 90            [12]  954 	mov	a,#___str_0
      0028BE C0 E0            [24]  955 	push	acc
      0028C0 74 45            [12]  956 	mov	a,#(___str_0 >> 8)
      0028C2 C0 E0            [24]  957 	push	acc
      0028C4 12 38 9F         [24]  958 	lcall	_printf_tiny
      0028C7 15 81            [12]  959 	dec	sp
      0028C9 15 81            [12]  960 	dec	sp
      0028CB D0 06            [24]  961 	pop	ar6
      0028CD D0 07            [24]  962 	pop	ar7
                                    963 ;	main.c:55: return output;
      0028CF 8E 82            [24]  964 	mov	dpl, r6
      0028D1 8F 83            [24]  965 	mov	dph, r7
                                    966 ;	main.c:56: }
      0028D3 22               [24]  967 	ret
                                    968 ;------------------------------------------------------------
                                    969 ;Allocation info for local variables in function 'main'
                                    970 ;------------------------------------------------------------
                                    971 ;c                         Allocated with name '_main_c_20001_86'
                                    972 ;reg_bank                  Allocated with name '_main_reg_bank_40002_89'
                                    973 ;addr                      Allocated with name '_main_addr_40003_90'
                                    974 ;data                      Allocated with name '_main_data_40004_91'
                                    975 ;num_bytes                 Allocated with name '_main_num_bytes_40002_93'
                                    976 ;start_address             Allocated with name '_main_start_address_40003_94'
                                    977 ;buffer                    Allocated with name '_main_buffer_40003_94'
                                    978 ;i                         Allocated with name '_main_i_50003_95'
                                    979 ;num_bytes                 Allocated with name '_main_num_bytes_40002_98'
                                    980 ;start_address             Allocated with name '_main_start_address_40003_99'
                                    981 ;buffer                    Allocated with name '_main_buffer_40003_99'
                                    982 ;reg_bank                  Allocated with name '_main_reg_bank_40002_101'
                                    983 ;addr                      Allocated with name '_main_addr_40003_102'
                                    984 ;data                      Allocated with name '_main_data_40003_102'
                                    985 ;addr                      Allocated with name '_main_addr_40002_104'
                                    986 ;data                      Allocated with name '_main_data_40003_105'
                                    987 ;addr                      Allocated with name '_main_addr_40002_107'
                                    988 ;data                      Allocated with name '_main_data_40002_107'
                                    989 ;addr                      Allocated with name '_main_addr_40002_110'
                                    990 ;bank                      Allocated with name '_main_bank_40003_111'
                                    991 ;data                      Allocated with name '_main_data_40003_111'
                                    992 ;i                         Allocated with name '_main_i_50001_116'
                                    993 ;------------------------------------------------------------
                                    994 ;	main.c:58: void main(void)
                                    995 ;	-----------------------------------------
                                    996 ;	 function main
                                    997 ;	-----------------------------------------
      0028D4                        998 _main:
                                    999 ;	main.c:60: ENC_RESET = 1;
                                   1000 ;	assignBit
      0028D4 D2 90            [12] 1001 	setb	_P1_0
                                   1002 ;	main.c:61: printf("SPI Operations on 8051\n\r");
      0028D6 74 93            [12] 1003 	mov	a,#___str_1
      0028D8 C0 E0            [24] 1004 	push	acc
      0028DA 74 45            [12] 1005 	mov	a,#(___str_1 >> 8)
      0028DC C0 E0            [24] 1006 	push	acc
      0028DE 74 80            [12] 1007 	mov	a,#0x80
      0028E0 C0 E0            [24] 1008 	push	acc
      0028E2 12 3A 16         [24] 1009 	lcall	_printf
      0028E5 15 81            [12] 1010 	dec	sp
      0028E7 15 81            [12] 1011 	dec	sp
      0028E9 15 81            [12] 1012 	dec	sp
                                   1013 ;	main.c:62: configure_SPI();
      0028EB 12 30 4C         [24] 1014 	lcall	_configure_SPI
                                   1015 ;	main.c:63: RX_disable();
      0028EE 12 23 9C         [24] 1016 	lcall	_RX_disable
                                   1017 ;	main.c:65: while(1)
      0028F1                       1018 00118$:
                                   1019 ;	main.c:67: printf("\n\rChoose an action: \n\r");
      0028F1 74 AC            [12] 1020 	mov	a,#___str_2
      0028F3 C0 E0            [24] 1021 	push	acc
      0028F5 74 45            [12] 1022 	mov	a,#(___str_2 >> 8)
      0028F7 C0 E0            [24] 1023 	push	acc
      0028F9 74 80            [12] 1024 	mov	a,#0x80
      0028FB C0 E0            [24] 1025 	push	acc
      0028FD 12 3A 16         [24] 1026 	lcall	_printf
      002900 15 81            [12] 1027 	dec	sp
      002902 15 81            [12] 1028 	dec	sp
      002904 15 81            [12] 1029 	dec	sp
                                   1030 ;	main.c:68: printf("1 --> Control Write\n\r");
      002906 74 C3            [12] 1031 	mov	a,#___str_3
      002908 C0 E0            [24] 1032 	push	acc
      00290A 74 45            [12] 1033 	mov	a,#(___str_3 >> 8)
      00290C C0 E0            [24] 1034 	push	acc
      00290E 74 80            [12] 1035 	mov	a,#0x80
      002910 C0 E0            [24] 1036 	push	acc
      002912 12 3A 16         [24] 1037 	lcall	_printf
      002915 15 81            [12] 1038 	dec	sp
      002917 15 81            [12] 1039 	dec	sp
      002919 15 81            [12] 1040 	dec	sp
                                   1041 ;	main.c:69: printf("2 --> Buffer Write\n\r");
      00291B 74 D9            [12] 1042 	mov	a,#___str_4
      00291D C0 E0            [24] 1043 	push	acc
      00291F 74 45            [12] 1044 	mov	a,#(___str_4 >> 8)
      002921 C0 E0            [24] 1045 	push	acc
      002923 74 80            [12] 1046 	mov	a,#0x80
      002925 C0 E0            [24] 1047 	push	acc
      002927 12 3A 16         [24] 1048 	lcall	_printf
      00292A 15 81            [12] 1049 	dec	sp
      00292C 15 81            [12] 1050 	dec	sp
      00292E 15 81            [12] 1051 	dec	sp
                                   1052 ;	main.c:70: printf("3 --> Buffer Read\n\r");
      002930 74 EE            [12] 1053 	mov	a,#___str_5
      002932 C0 E0            [24] 1054 	push	acc
      002934 74 45            [12] 1055 	mov	a,#(___str_5 >> 8)
      002936 C0 E0            [24] 1056 	push	acc
      002938 74 80            [12] 1057 	mov	a,#0x80
      00293A C0 E0            [24] 1058 	push	acc
      00293C 12 3A 16         [24] 1059 	lcall	_printf
      00293F 15 81            [12] 1060 	dec	sp
      002941 15 81            [12] 1061 	dec	sp
      002943 15 81            [12] 1062 	dec	sp
                                   1063 ;	main.c:71: printf("4 --> MAC Register Read\n\r");
      002945 74 02            [12] 1064 	mov	a,#___str_6
      002947 C0 E0            [24] 1065 	push	acc
      002949 74 46            [12] 1066 	mov	a,#(___str_6 >> 8)
      00294B C0 E0            [24] 1067 	push	acc
      00294D 74 80            [12] 1068 	mov	a,#0x80
      00294F C0 E0            [24] 1069 	push	acc
      002951 12 3A 16         [24] 1070 	lcall	_printf
      002954 15 81            [12] 1071 	dec	sp
      002956 15 81            [12] 1072 	dec	sp
      002958 15 81            [12] 1073 	dec	sp
                                   1074 ;	main.c:72: printf("5 --> PHY SPI Write\n\r");
      00295A 74 1C            [12] 1075 	mov	a,#___str_7
      00295C C0 E0            [24] 1076 	push	acc
      00295E 74 46            [12] 1077 	mov	a,#(___str_7 >> 8)
      002960 C0 E0            [24] 1078 	push	acc
      002962 74 80            [12] 1079 	mov	a,#0x80
      002964 C0 E0            [24] 1080 	push	acc
      002966 12 3A 16         [24] 1081 	lcall	_printf
      002969 15 81            [12] 1082 	dec	sp
      00296B 15 81            [12] 1083 	dec	sp
      00296D 15 81            [12] 1084 	dec	sp
                                   1085 ;	main.c:73: printf("6 --> PHY SPI Read\n\r");
      00296F 74 32            [12] 1086 	mov	a,#___str_8
      002971 C0 E0            [24] 1087 	push	acc
      002973 74 46            [12] 1088 	mov	a,#(___str_8 >> 8)
      002975 C0 E0            [24] 1089 	push	acc
      002977 74 80            [12] 1090 	mov	a,#0x80
      002979 C0 E0            [24] 1091 	push	acc
      00297B 12 3A 16         [24] 1092 	lcall	_printf
      00297E 15 81            [12] 1093 	dec	sp
      002980 15 81            [12] 1094 	dec	sp
      002982 15 81            [12] 1095 	dec	sp
                                   1096 ;	main.c:74: printf("7 --> ENC Reset\n\r");
      002984 74 47            [12] 1097 	mov	a,#___str_9
      002986 C0 E0            [24] 1098 	push	acc
      002988 74 46            [12] 1099 	mov	a,#(___str_9 >> 8)
      00298A C0 E0            [24] 1100 	push	acc
      00298C 74 80            [12] 1101 	mov	a,#0x80
      00298E C0 E0            [24] 1102 	push	acc
      002990 12 3A 16         [24] 1103 	lcall	_printf
      002993 15 81            [12] 1104 	dec	sp
      002995 15 81            [12] 1105 	dec	sp
      002997 15 81            [12] 1106 	dec	sp
                                   1107 ;	main.c:75: printf("8 --> Read ETH Register\n\r");
      002999 74 59            [12] 1108 	mov	a,#___str_10
      00299B C0 E0            [24] 1109 	push	acc
      00299D 74 46            [12] 1110 	mov	a,#(___str_10 >> 8)
      00299F C0 E0            [24] 1111 	push	acc
      0029A1 74 80            [12] 1112 	mov	a,#0x80
      0029A3 C0 E0            [24] 1113 	push	acc
      0029A5 12 3A 16         [24] 1114 	lcall	_printf
      0029A8 15 81            [12] 1115 	dec	sp
      0029AA 15 81            [12] 1116 	dec	sp
      0029AC 15 81            [12] 1117 	dec	sp
                                   1118 ;	main.c:76: printf("9 --> Display Menu\n\r");
      0029AE 74 73            [12] 1119 	mov	a,#___str_11
      0029B0 C0 E0            [24] 1120 	push	acc
      0029B2 74 46            [12] 1121 	mov	a,#(___str_11 >> 8)
      0029B4 C0 E0            [24] 1122 	push	acc
      0029B6 74 80            [12] 1123 	mov	a,#0x80
      0029B8 C0 E0            [24] 1124 	push	acc
      0029BA 12 3A 16         [24] 1125 	lcall	_printf
      0029BD 15 81            [12] 1126 	dec	sp
      0029BF 15 81            [12] 1127 	dec	sp
      0029C1 15 81            [12] 1128 	dec	sp
                                   1129 ;	main.c:77: printf("A --> Send ARP Request\n\r");
      0029C3 74 88            [12] 1130 	mov	a,#___str_12
      0029C5 C0 E0            [24] 1131 	push	acc
      0029C7 74 46            [12] 1132 	mov	a,#(___str_12 >> 8)
      0029C9 C0 E0            [24] 1133 	push	acc
      0029CB 74 80            [12] 1134 	mov	a,#0x80
      0029CD C0 E0            [24] 1135 	push	acc
      0029CF 12 3A 16         [24] 1136 	lcall	_printf
      0029D2 15 81            [12] 1137 	dec	sp
      0029D4 15 81            [12] 1138 	dec	sp
      0029D6 15 81            [12] 1139 	dec	sp
                                   1140 ;	main.c:78: printf("B --> Init RX buffers\n\r");
      0029D8 74 A1            [12] 1141 	mov	a,#___str_13
      0029DA C0 E0            [24] 1142 	push	acc
      0029DC 74 46            [12] 1143 	mov	a,#(___str_13 >> 8)
      0029DE C0 E0            [24] 1144 	push	acc
      0029E0 74 80            [12] 1145 	mov	a,#0x80
      0029E2 C0 E0            [24] 1146 	push	acc
      0029E4 12 3A 16         [24] 1147 	lcall	_printf
      0029E7 15 81            [12] 1148 	dec	sp
      0029E9 15 81            [12] 1149 	dec	sp
      0029EB 15 81            [12] 1150 	dec	sp
                                   1151 ;	main.c:79: printf("C --> Hard Reset(nRESET pin)\n\r");
      0029ED 74 B9            [12] 1152 	mov	a,#___str_14
      0029EF C0 E0            [24] 1153 	push	acc
      0029F1 74 46            [12] 1154 	mov	a,#(___str_14 >> 8)
      0029F3 C0 E0            [24] 1155 	push	acc
      0029F5 74 80            [12] 1156 	mov	a,#0x80
      0029F7 C0 E0            [24] 1157 	push	acc
      0029F9 12 3A 16         [24] 1158 	lcall	_printf
      0029FC 15 81            [12] 1159 	dec	sp
      0029FE 15 81            [12] 1160 	dec	sp
      002A00 15 81            [12] 1161 	dec	sp
                                   1162 ;	main.c:81: char c = getchar();
      002A02 12 38 00         [24] 1163 	lcall	_getchar
      002A05 AE 82            [24] 1164 	mov	r6, dpl
                                   1165 ;	main.c:82: putchar(c);
      002A07 8E 05            [24] 1166 	mov	ar5,r6
      002A09 7F 00            [12] 1167 	mov	r7,#0x00
      002A0B 8D 82            [24] 1168 	mov	dpl, r5
      002A0D 8F 83            [24] 1169 	mov	dph, r7
      002A0F C0 06            [24] 1170 	push	ar6
      002A11 12 37 E1         [24] 1171 	lcall	_putchar
                                   1172 ;	main.c:83: printf("\n\r");
      002A14 74 90            [12] 1173 	mov	a,#___str_0
      002A16 C0 E0            [24] 1174 	push	acc
      002A18 74 45            [12] 1175 	mov	a,#(___str_0 >> 8)
      002A1A C0 E0            [24] 1176 	push	acc
      002A1C 74 80            [12] 1177 	mov	a,#0x80
      002A1E C0 E0            [24] 1178 	push	acc
      002A20 12 3A 16         [24] 1179 	lcall	_printf
      002A23 15 81            [12] 1180 	dec	sp
      002A25 15 81            [12] 1181 	dec	sp
      002A27 15 81            [12] 1182 	dec	sp
      002A29 D0 06            [24] 1183 	pop	ar6
                                   1184 ;	main.c:85: switch(c)
      002A2B BE 31 00         [24] 1185 	cjne	r6,#0x31,00172$
      002A2E                       1186 00172$:
      002A2E 50 03            [24] 1187 	jnc	00173$
      002A30 02 2E BD         [24] 1188 	ljmp	00115$
      002A33                       1189 00173$:
      002A33 EE               [12] 1190 	mov	a,r6
      002A34 24 BC            [12] 1191 	add	a,#0xff - 0x43
      002A36 50 03            [24] 1192 	jnc	00174$
      002A38 02 2E BD         [24] 1193 	ljmp	00115$
      002A3B                       1194 00174$:
      002A3B EE               [12] 1195 	mov	a,r6
      002A3C 24 CF            [12] 1196 	add	a,#0xcf
      002A3E FE               [12] 1197 	mov	r6,a
      002A3F 24 0A            [12] 1198 	add	a,#(00175$-3-.)
      002A41 83               [24] 1199 	movc	a,@a+pc
      002A42 F5 82            [12] 1200 	mov	dpl,a
      002A44 EE               [12] 1201 	mov	a,r6
      002A45 24 17            [12] 1202 	add	a,#(00176$-3-.)
      002A47 83               [24] 1203 	movc	a,@a+pc
      002A48 F5 83            [12] 1204 	mov	dph,a
      002A4A E4               [12] 1205 	clr	a
      002A4B 73               [24] 1206 	jmp	@a+dptr
      002A4C                       1207 00175$:
      002A4C 72                    1208 	.db	00101$
      002A4D DA                    1209 	.db	00102$
      002A4E D8                    1210 	.db	00104$
      002A4F 37                    1211 	.db	00105$
      002A50 99                    1212 	.db	00106$
      002A51 04                    1213 	.db	00107$
      002A52 3F                    1214 	.db	00108$
      002A53 5A                    1215 	.db	00109$
      002A54 BC                    1216 	.db	00110$
      002A55 BD                    1217 	.db	00115$
      002A56 BD                    1218 	.db	00115$
      002A57 BD                    1219 	.db	00115$
      002A58 BD                    1220 	.db	00115$
      002A59 BD                    1221 	.db	00115$
      002A5A BD                    1222 	.db	00115$
      002A5B BD                    1223 	.db	00115$
      002A5C 7C                    1224 	.db	00111$
      002A5D 85                    1225 	.db	00112$
      002A5E 8B                    1226 	.db	00113$
      002A5F                       1227 00176$:
      002A5F 2A                    1228 	.db	00101$>>8
      002A60 2A                    1229 	.db	00102$>>8
      002A61 2B                    1230 	.db	00104$>>8
      002A62 2C                    1231 	.db	00105$>>8
      002A63 2C                    1232 	.db	00106$>>8
      002A64 2D                    1233 	.db	00107$>>8
      002A65 2D                    1234 	.db	00108$>>8
      002A66 2D                    1235 	.db	00109$>>8
      002A67 2D                    1236 	.db	00110$>>8
      002A68 2E                    1237 	.db	00115$>>8
      002A69 2E                    1238 	.db	00115$>>8
      002A6A 2E                    1239 	.db	00115$>>8
      002A6B 2E                    1240 	.db	00115$>>8
      002A6C 2E                    1241 	.db	00115$>>8
      002A6D 2E                    1242 	.db	00115$>>8
      002A6E 2E                    1243 	.db	00115$>>8
      002A6F 2E                    1244 	.db	00111$>>8
      002A70 2E                    1245 	.db	00112$>>8
      002A71 2E                    1246 	.db	00113$>>8
                                   1247 ;	main.c:87: case '1': {
      002A72                       1248 00101$:
                                   1249 ;	main.c:88: printf("Enter the register bank to select:\n\r");
      002A72 74 D8            [12] 1250 	mov	a,#___str_15
      002A74 C0 E0            [24] 1251 	push	acc
      002A76 74 46            [12] 1252 	mov	a,#(___str_15 >> 8)
      002A78 C0 E0            [24] 1253 	push	acc
      002A7A 74 80            [12] 1254 	mov	a,#0x80
      002A7C C0 E0            [24] 1255 	push	acc
      002A7E 12 3A 16         [24] 1256 	lcall	_printf
      002A81 15 81            [12] 1257 	dec	sp
      002A83 15 81            [12] 1258 	dec	sp
      002A85 15 81            [12] 1259 	dec	sp
                                   1260 ;	main.c:89: uint8_t reg_bank = get_user_buffer_size();
      002A87 12 28 50         [24] 1261 	lcall	_get_user_buffer_size
      002A8A AE 82            [24] 1262 	mov	r6, dpl
                                   1263 ;	main.c:90: printf("Enter the address of the Control Register:\n\r");
      002A8C C0 06            [24] 1264 	push	ar6
      002A8E 74 FD            [12] 1265 	mov	a,#___str_16
      002A90 C0 E0            [24] 1266 	push	acc
      002A92 74 46            [12] 1267 	mov	a,#(___str_16 >> 8)
      002A94 C0 E0            [24] 1268 	push	acc
      002A96 74 80            [12] 1269 	mov	a,#0x80
      002A98 C0 E0            [24] 1270 	push	acc
      002A9A 12 3A 16         [24] 1271 	lcall	_printf
      002A9D 15 81            [12] 1272 	dec	sp
      002A9F 15 81            [12] 1273 	dec	sp
      002AA1 15 81            [12] 1274 	dec	sp
                                   1275 ;	main.c:91: uint8_t addr = get_user_buffer_size();
      002AA3 12 28 50         [24] 1276 	lcall	_get_user_buffer_size
      002AA6 AD 82            [24] 1277 	mov	r5, dpl
                                   1278 ;	main.c:92: printf("Enter the data you want to write:\n\r");
      002AA8 C0 05            [24] 1279 	push	ar5
      002AAA 74 2A            [12] 1280 	mov	a,#___str_17
      002AAC C0 E0            [24] 1281 	push	acc
      002AAE 74 47            [12] 1282 	mov	a,#(___str_17 >> 8)
      002AB0 C0 E0            [24] 1283 	push	acc
      002AB2 74 80            [12] 1284 	mov	a,#0x80
      002AB4 C0 E0            [24] 1285 	push	acc
      002AB6 12 3A 16         [24] 1286 	lcall	_printf
      002AB9 15 81            [12] 1287 	dec	sp
      002ABB 15 81            [12] 1288 	dec	sp
      002ABD 15 81            [12] 1289 	dec	sp
                                   1290 ;	main.c:93: uint8_t data = get_user_buffer_size();
      002ABF 12 28 50         [24] 1291 	lcall	_get_user_buffer_size
      002AC2 AC 82            [24] 1292 	mov	r4, dpl
      002AC4 D0 05            [24] 1293 	pop	ar5
      002AC6 D0 06            [24] 1294 	pop	ar6
                                   1295 ;	main.c:94: spi_control_write(reg_bank, addr, data);
      002AC8 90 03 63         [24] 1296 	mov	dptr,#_spi_control_write_PARM_2
      002ACB ED               [12] 1297 	mov	a,r5
      002ACC F0               [24] 1298 	movx	@dptr,a
      002ACD 90 03 64         [24] 1299 	mov	dptr,#_spi_control_write_PARM_3
      002AD0 EC               [12] 1300 	mov	a,r4
      002AD1 F0               [24] 1301 	movx	@dptr,a
      002AD2 8E 82            [24] 1302 	mov	dpl, r6
      002AD4 12 2F F0         [24] 1303 	lcall	_spi_control_write
                                   1304 ;	main.c:95: break;
      002AD7 02 28 F1         [24] 1305 	ljmp	00118$
                                   1306 ;	main.c:97: case '2': {
      002ADA                       1307 00102$:
                                   1308 ;	main.c:98: printf("Enter the number of bytes to write:\n\r");
      002ADA 74 4E            [12] 1309 	mov	a,#___str_18
      002ADC C0 E0            [24] 1310 	push	acc
      002ADE 74 47            [12] 1311 	mov	a,#(___str_18 >> 8)
      002AE0 C0 E0            [24] 1312 	push	acc
      002AE2 74 80            [12] 1313 	mov	a,#0x80
      002AE4 C0 E0            [24] 1314 	push	acc
      002AE6 12 3A 16         [24] 1315 	lcall	_printf
      002AE9 15 81            [12] 1316 	dec	sp
      002AEB 15 81            [12] 1317 	dec	sp
      002AED 15 81            [12] 1318 	dec	sp
                                   1319 ;	main.c:99: int num_bytes = get_user_buffer_size();
      002AEF 12 28 50         [24] 1320 	lcall	_get_user_buffer_size
      002AF2 AE 82            [24] 1321 	mov	r6, dpl
      002AF4 AF 83            [24] 1322 	mov	r7, dph
                                   1323 ;	main.c:100: printf("Enter the starting address:\n\r");
      002AF6 C0 07            [24] 1324 	push	ar7
      002AF8 C0 06            [24] 1325 	push	ar6
      002AFA 74 74            [12] 1326 	mov	a,#___str_19
      002AFC C0 E0            [24] 1327 	push	acc
      002AFE 74 47            [12] 1328 	mov	a,#(___str_19 >> 8)
      002B00 C0 E0            [24] 1329 	push	acc
      002B02 74 80            [12] 1330 	mov	a,#0x80
      002B04 C0 E0            [24] 1331 	push	acc
      002B06 12 3A 16         [24] 1332 	lcall	_printf
      002B09 15 81            [12] 1333 	dec	sp
      002B0B 15 81            [12] 1334 	dec	sp
      002B0D 15 81            [12] 1335 	dec	sp
                                   1336 ;	main.c:101: uint16_t start_address = get_user_buffer_size();
      002B0F 12 28 50         [24] 1337 	lcall	_get_user_buffer_size
      002B12 AC 82            [24] 1338 	mov	r4, dpl
      002B14 AD 83            [24] 1339 	mov	r5, dph
      002B16 D0 06            [24] 1340 	pop	ar6
      002B18 D0 07            [24] 1341 	pop	ar7
                                   1342 ;	main.c:103: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      002B1A C0 07            [24] 1343 	push	ar7
      002B1C C0 06            [24] 1344 	push	ar6
      002B1E C0 05            [24] 1345 	push	ar5
      002B20 C0 04            [24] 1346 	push	ar4
      002B22 C0 06            [24] 1347 	push	ar6
      002B24 C0 07            [24] 1348 	push	ar7
      002B26 74 92            [12] 1349 	mov	a,#___str_20
      002B28 C0 E0            [24] 1350 	push	acc
      002B2A 74 47            [12] 1351 	mov	a,#(___str_20 >> 8)
      002B2C C0 E0            [24] 1352 	push	acc
      002B2E 74 80            [12] 1353 	mov	a,#0x80
      002B30 C0 E0            [24] 1354 	push	acc
      002B32 12 3A 16         [24] 1355 	lcall	_printf
      002B35 E5 81            [12] 1356 	mov	a,sp
      002B37 24 FB            [12] 1357 	add	a,#0xfb
      002B39 F5 81            [12] 1358 	mov	sp,a
      002B3B D0 04            [24] 1359 	pop	ar4
      002B3D D0 05            [24] 1360 	pop	ar5
      002B3F D0 06            [24] 1361 	pop	ar6
      002B41 D0 07            [24] 1362 	pop	ar7
                                   1363 ;	main.c:104: for (int i = 0; i < num_bytes; i++) {
      002B43 7A 00            [12] 1364 	mov	r2,#0x00
      002B45 7B 00            [12] 1365 	mov	r3,#0x00
      002B47                       1366 00121$:
      002B47 C3               [12] 1367 	clr	c
      002B48 EA               [12] 1368 	mov	a,r2
      002B49 9E               [12] 1369 	subb	a,r6
      002B4A EB               [12] 1370 	mov	a,r3
      002B4B 64 80            [12] 1371 	xrl	a,#0x80
      002B4D 8F F0            [24] 1372 	mov	b,r7
      002B4F 63 F0 80         [24] 1373 	xrl	b,#0x80
      002B52 95 F0            [12] 1374 	subb	a,b
      002B54 50 63            [24] 1375 	jnc	00103$
                                   1376 ;	main.c:105: printf("Byte %d: ", i);
      002B56 C0 04            [24] 1377 	push	ar4
      002B58 C0 05            [24] 1378 	push	ar5
      002B5A C0 07            [24] 1379 	push	ar7
      002B5C C0 06            [24] 1380 	push	ar6
      002B5E C0 05            [24] 1381 	push	ar5
      002B60 C0 04            [24] 1382 	push	ar4
      002B62 C0 03            [24] 1383 	push	ar3
      002B64 C0 02            [24] 1384 	push	ar2
      002B66 C0 02            [24] 1385 	push	ar2
      002B68 C0 03            [24] 1386 	push	ar3
      002B6A 74 B5            [12] 1387 	mov	a,#___str_21
      002B6C C0 E0            [24] 1388 	push	acc
      002B6E 74 47            [12] 1389 	mov	a,#(___str_21 >> 8)
      002B70 C0 E0            [24] 1390 	push	acc
      002B72 74 80            [12] 1391 	mov	a,#0x80
      002B74 C0 E0            [24] 1392 	push	acc
      002B76 12 3A 16         [24] 1393 	lcall	_printf
      002B79 E5 81            [12] 1394 	mov	a,sp
      002B7B 24 FB            [12] 1395 	add	a,#0xfb
      002B7D F5 81            [12] 1396 	mov	sp,a
      002B7F D0 02            [24] 1397 	pop	ar2
      002B81 D0 03            [24] 1398 	pop	ar3
      002B83 D0 04            [24] 1399 	pop	ar4
      002B85 D0 05            [24] 1400 	pop	ar5
                                   1401 ;	main.c:106: buffer[i] = get_user_buffer_size();
      002B87 EA               [12] 1402 	mov	a,r2
      002B88 24 60            [12] 1403 	add	a, #_main_buffer_40003_94
      002B8A F8               [12] 1404 	mov	r0,a
      002B8B EB               [12] 1405 	mov	a,r3
      002B8C 34 01            [12] 1406 	addc	a, #(_main_buffer_40003_94 >> 8)
      002B8E F9               [12] 1407 	mov	r1,a
      002B8F C0 03            [24] 1408 	push	ar3
      002B91 C0 02            [24] 1409 	push	ar2
      002B93 C0 01            [24] 1410 	push	ar1
      002B95 C0 00            [24] 1411 	push	ar0
      002B97 12 28 50         [24] 1412 	lcall	_get_user_buffer_size
      002B9A AC 82            [24] 1413 	mov	r4, dpl
      002B9C D0 00            [24] 1414 	pop	ar0
      002B9E D0 01            [24] 1415 	pop	ar1
      002BA0 D0 02            [24] 1416 	pop	ar2
      002BA2 D0 03            [24] 1417 	pop	ar3
      002BA4 D0 06            [24] 1418 	pop	ar6
      002BA6 D0 07            [24] 1419 	pop	ar7
      002BA8 88 82            [24] 1420 	mov	dpl,r0
      002BAA 89 83            [24] 1421 	mov	dph,r1
      002BAC EC               [12] 1422 	mov	a,r4
      002BAD F0               [24] 1423 	movx	@dptr,a
                                   1424 ;	main.c:104: for (int i = 0; i < num_bytes; i++) {
      002BAE 0A               [12] 1425 	inc	r2
      002BAF BA 00 01         [24] 1426 	cjne	r2,#0x00,00178$
      002BB2 0B               [12] 1427 	inc	r3
      002BB3                       1428 00178$:
      002BB3 D0 05            [24] 1429 	pop	ar5
      002BB5 D0 04            [24] 1430 	pop	ar4
      002BB7 80 8E            [24] 1431 	sjmp	00121$
      002BB9                       1432 00103$:
                                   1433 ;	main.c:108: spi_buffer_write(num_bytes, start_address, buffer);
      002BB9 90 03 7D         [24] 1434 	mov	dptr,#_spi_buffer_write_PARM_2
      002BBC EC               [12] 1435 	mov	a,r4
      002BBD F0               [24] 1436 	movx	@dptr,a
      002BBE ED               [12] 1437 	mov	a,r5
      002BBF A3               [24] 1438 	inc	dptr
      002BC0 F0               [24] 1439 	movx	@dptr,a
      002BC1 90 03 7F         [24] 1440 	mov	dptr,#_spi_buffer_write_PARM_3
      002BC4 74 60            [12] 1441 	mov	a,#_main_buffer_40003_94
      002BC6 F0               [24] 1442 	movx	@dptr,a
      002BC7 74 01            [12] 1443 	mov	a,#(_main_buffer_40003_94 >> 8)
      002BC9 A3               [24] 1444 	inc	dptr
      002BCA F0               [24] 1445 	movx	@dptr,a
      002BCB E4               [12] 1446 	clr	a
      002BCC A3               [24] 1447 	inc	dptr
      002BCD F0               [24] 1448 	movx	@dptr,a
      002BCE 8E 82            [24] 1449 	mov	dpl, r6
      002BD0 8F 83            [24] 1450 	mov	dph, r7
      002BD2 12 35 6C         [24] 1451 	lcall	_spi_buffer_write
                                   1452 ;	main.c:109: break;
      002BD5 02 28 F1         [24] 1453 	ljmp	00118$
                                   1454 ;	main.c:111: case '3': {
      002BD8                       1455 00104$:
                                   1456 ;	main.c:112: printf("Enter the number of bytes to read:\n\r");
      002BD8 74 BF            [12] 1457 	mov	a,#___str_22
      002BDA C0 E0            [24] 1458 	push	acc
      002BDC 74 47            [12] 1459 	mov	a,#(___str_22 >> 8)
      002BDE C0 E0            [24] 1460 	push	acc
      002BE0 74 80            [12] 1461 	mov	a,#0x80
      002BE2 C0 E0            [24] 1462 	push	acc
      002BE4 12 3A 16         [24] 1463 	lcall	_printf
      002BE7 15 81            [12] 1464 	dec	sp
      002BE9 15 81            [12] 1465 	dec	sp
      002BEB 15 81            [12] 1466 	dec	sp
                                   1467 ;	main.c:113: int num_bytes = get_user_buffer_size();
      002BED 12 28 50         [24] 1468 	lcall	_get_user_buffer_size
      002BF0 AE 82            [24] 1469 	mov	r6, dpl
      002BF2 AF 83            [24] 1470 	mov	r7, dph
                                   1471 ;	main.c:114: printf("Enter the starting address:\n\r");
      002BF4 C0 07            [24] 1472 	push	ar7
      002BF6 C0 06            [24] 1473 	push	ar6
      002BF8 74 74            [12] 1474 	mov	a,#___str_19
      002BFA C0 E0            [24] 1475 	push	acc
      002BFC 74 47            [12] 1476 	mov	a,#(___str_19 >> 8)
      002BFE C0 E0            [24] 1477 	push	acc
      002C00 74 80            [12] 1478 	mov	a,#0x80
      002C02 C0 E0            [24] 1479 	push	acc
      002C04 12 3A 16         [24] 1480 	lcall	_printf
      002C07 15 81            [12] 1481 	dec	sp
      002C09 15 81            [12] 1482 	dec	sp
      002C0B 15 81            [12] 1483 	dec	sp
                                   1484 ;	main.c:115: uint16_t start_address = get_user_buffer_size();
      002C0D 12 28 50         [24] 1485 	lcall	_get_user_buffer_size
      002C10 AC 82            [24] 1486 	mov	r4, dpl
      002C12 AD 83            [24] 1487 	mov	r5, dph
      002C14 D0 06            [24] 1488 	pop	ar6
      002C16 D0 07            [24] 1489 	pop	ar7
                                   1490 ;	main.c:117: spi_buffer_read(num_bytes, start_address, buffer);
      002C18 90 03 74         [24] 1491 	mov	dptr,#_spi_buffer_read_PARM_2
      002C1B EC               [12] 1492 	mov	a,r4
      002C1C F0               [24] 1493 	movx	@dptr,a
      002C1D ED               [12] 1494 	mov	a,r5
      002C1E A3               [24] 1495 	inc	dptr
      002C1F F0               [24] 1496 	movx	@dptr,a
      002C20 90 03 76         [24] 1497 	mov	dptr,#_spi_buffer_read_PARM_3
      002C23 74 60            [12] 1498 	mov	a,#_main_buffer_40003_99
      002C25 F0               [24] 1499 	movx	@dptr,a
      002C26 74 02            [12] 1500 	mov	a,#(_main_buffer_40003_99 >> 8)
      002C28 A3               [24] 1501 	inc	dptr
      002C29 F0               [24] 1502 	movx	@dptr,a
      002C2A E4               [12] 1503 	clr	a
      002C2B A3               [24] 1504 	inc	dptr
      002C2C F0               [24] 1505 	movx	@dptr,a
      002C2D 8E 82            [24] 1506 	mov	dpl, r6
      002C2F 8F 83            [24] 1507 	mov	dph, r7
      002C31 12 33 CB         [24] 1508 	lcall	_spi_buffer_read
                                   1509 ;	main.c:145: break;
      002C34 02 28 F1         [24] 1510 	ljmp	00118$
                                   1511 ;	main.c:147: case '4': {
      002C37                       1512 00105$:
                                   1513 ;	main.c:148: printf("Enter the MAC register bank to select:\n\r");
      002C37 74 E4            [12] 1514 	mov	a,#___str_23
      002C39 C0 E0            [24] 1515 	push	acc
      002C3B 74 47            [12] 1516 	mov	a,#(___str_23 >> 8)
      002C3D C0 E0            [24] 1517 	push	acc
      002C3F 74 80            [12] 1518 	mov	a,#0x80
      002C41 C0 E0            [24] 1519 	push	acc
      002C43 12 3A 16         [24] 1520 	lcall	_printf
      002C46 15 81            [12] 1521 	dec	sp
      002C48 15 81            [12] 1522 	dec	sp
      002C4A 15 81            [12] 1523 	dec	sp
                                   1524 ;	main.c:149: uint8_t reg_bank = get_user_buffer_size();
      002C4C 12 28 50         [24] 1525 	lcall	_get_user_buffer_size
      002C4F AE 82            [24] 1526 	mov	r6, dpl
                                   1527 ;	main.c:150: printf("Enter the address of the MAC Register:\n\r");
      002C51 C0 06            [24] 1528 	push	ar6
      002C53 74 0D            [12] 1529 	mov	a,#___str_24
      002C55 C0 E0            [24] 1530 	push	acc
      002C57 74 48            [12] 1531 	mov	a,#(___str_24 >> 8)
      002C59 C0 E0            [24] 1532 	push	acc
      002C5B 74 80            [12] 1533 	mov	a,#0x80
      002C5D C0 E0            [24] 1534 	push	acc
      002C5F 12 3A 16         [24] 1535 	lcall	_printf
      002C62 15 81            [12] 1536 	dec	sp
      002C64 15 81            [12] 1537 	dec	sp
      002C66 15 81            [12] 1538 	dec	sp
                                   1539 ;	main.c:151: uint8_t addr = get_user_buffer_size();
      002C68 12 28 50         [24] 1540 	lcall	_get_user_buffer_size
      002C6B AD 82            [24] 1541 	mov	r5, dpl
      002C6D D0 06            [24] 1542 	pop	ar6
                                   1543 ;	main.c:152: uint8_t data = mac_spi_read(addr, reg_bank);
      002C6F 90 03 6C         [24] 1544 	mov	dptr,#_mac_spi_read_PARM_2
      002C72 EE               [12] 1545 	mov	a,r6
      002C73 F0               [24] 1546 	movx	@dptr,a
      002C74 8D 82            [24] 1547 	mov	dpl, r5
      002C76 12 31 66         [24] 1548 	lcall	_mac_spi_read
      002C79 AF 82            [24] 1549 	mov	r7, dpl
                                   1550 ;	main.c:153: printf("MAC Register Data: 0x%02X\n\r", data);
      002C7B 7E 00            [12] 1551 	mov	r6,#0x00
      002C7D C0 07            [24] 1552 	push	ar7
      002C7F C0 06            [24] 1553 	push	ar6
      002C81 74 36            [12] 1554 	mov	a,#___str_25
      002C83 C0 E0            [24] 1555 	push	acc
      002C85 74 48            [12] 1556 	mov	a,#(___str_25 >> 8)
      002C87 C0 E0            [24] 1557 	push	acc
      002C89 74 80            [12] 1558 	mov	a,#0x80
      002C8B C0 E0            [24] 1559 	push	acc
      002C8D 12 3A 16         [24] 1560 	lcall	_printf
      002C90 E5 81            [12] 1561 	mov	a,sp
      002C92 24 FB            [12] 1562 	add	a,#0xfb
      002C94 F5 81            [12] 1563 	mov	sp,a
                                   1564 ;	main.c:154: break;
      002C96 02 28 F1         [24] 1565 	ljmp	00118$
                                   1566 ;	main.c:156: case '5': {
      002C99                       1567 00106$:
                                   1568 ;	main.c:157: printf("Enter the PHY register address:\n\r");
      002C99 74 52            [12] 1569 	mov	a,#___str_26
      002C9B C0 E0            [24] 1570 	push	acc
      002C9D 74 48            [12] 1571 	mov	a,#(___str_26 >> 8)
      002C9F C0 E0            [24] 1572 	push	acc
      002CA1 74 80            [12] 1573 	mov	a,#0x80
      002CA3 C0 E0            [24] 1574 	push	acc
      002CA5 12 3A 16         [24] 1575 	lcall	_printf
      002CA8 15 81            [12] 1576 	dec	sp
      002CAA 15 81            [12] 1577 	dec	sp
      002CAC 15 81            [12] 1578 	dec	sp
                                   1579 ;	main.c:158: uint8_t addr = get_user_buffer_size();
      002CAE 12 28 50         [24] 1580 	lcall	_get_user_buffer_size
      002CB1 AE 82            [24] 1581 	mov	r6, dpl
                                   1582 ;	main.c:159: printf("Enter the 16-bit data to write:\n\r");
      002CB3 C0 06            [24] 1583 	push	ar6
      002CB5 74 74            [12] 1584 	mov	a,#___str_27
      002CB7 C0 E0            [24] 1585 	push	acc
      002CB9 74 48            [12] 1586 	mov	a,#(___str_27 >> 8)
      002CBB C0 E0            [24] 1587 	push	acc
      002CBD 74 80            [12] 1588 	mov	a,#0x80
      002CBF C0 E0            [24] 1589 	push	acc
      002CC1 12 3A 16         [24] 1590 	lcall	_printf
      002CC4 15 81            [12] 1591 	dec	sp
      002CC6 15 81            [12] 1592 	dec	sp
      002CC8 15 81            [12] 1593 	dec	sp
                                   1594 ;	main.c:160: uint16_t data = get_user_buffer_size();
      002CCA 12 28 50         [24] 1595 	lcall	_get_user_buffer_size
      002CCD AD 82            [24] 1596 	mov	r5, dpl
      002CCF AF 83            [24] 1597 	mov	r7, dph
      002CD1 D0 06            [24] 1598 	pop	ar6
                                   1599 ;	main.c:161: phy_spi_write(addr, data);
      002CD3 90 03 69         [24] 1600 	mov	dptr,#_phy_spi_write_PARM_2
      002CD6 ED               [12] 1601 	mov	a,r5
      002CD7 F0               [24] 1602 	movx	@dptr,a
      002CD8 EF               [12] 1603 	mov	a,r7
      002CD9 A3               [24] 1604 	inc	dptr
      002CDA F0               [24] 1605 	movx	@dptr,a
      002CDB 8E 82            [24] 1606 	mov	dpl, r6
      002CDD C0 07            [24] 1607 	push	ar7
      002CDF C0 05            [24] 1608 	push	ar5
      002CE1 12 30 E3         [24] 1609 	lcall	_phy_spi_write
      002CE4 D0 05            [24] 1610 	pop	ar5
      002CE6 D0 07            [24] 1611 	pop	ar7
                                   1612 ;	main.c:162: printf("PHY Write Data: 0x%04X\n\r", data);
      002CE8 C0 05            [24] 1613 	push	ar5
      002CEA C0 07            [24] 1614 	push	ar7
      002CEC 74 96            [12] 1615 	mov	a,#___str_28
      002CEE C0 E0            [24] 1616 	push	acc
      002CF0 74 48            [12] 1617 	mov	a,#(___str_28 >> 8)
      002CF2 C0 E0            [24] 1618 	push	acc
      002CF4 74 80            [12] 1619 	mov	a,#0x80
      002CF6 C0 E0            [24] 1620 	push	acc
      002CF8 12 3A 16         [24] 1621 	lcall	_printf
      002CFB E5 81            [12] 1622 	mov	a,sp
      002CFD 24 FB            [12] 1623 	add	a,#0xfb
      002CFF F5 81            [12] 1624 	mov	sp,a
                                   1625 ;	main.c:163: break;
      002D01 02 28 F1         [24] 1626 	ljmp	00118$
                                   1627 ;	main.c:165: case '6': {
      002D04                       1628 00107$:
                                   1629 ;	main.c:166: printf("Enter the PHY register address to read:\n\r");
      002D04 74 AF            [12] 1630 	mov	a,#___str_29
      002D06 C0 E0            [24] 1631 	push	acc
      002D08 74 48            [12] 1632 	mov	a,#(___str_29 >> 8)
      002D0A C0 E0            [24] 1633 	push	acc
      002D0C 74 80            [12] 1634 	mov	a,#0x80
      002D0E C0 E0            [24] 1635 	push	acc
      002D10 12 3A 16         [24] 1636 	lcall	_printf
      002D13 15 81            [12] 1637 	dec	sp
      002D15 15 81            [12] 1638 	dec	sp
      002D17 15 81            [12] 1639 	dec	sp
                                   1640 ;	main.c:167: uint8_t addr = get_user_buffer_size();
      002D19 12 28 50         [24] 1641 	lcall	_get_user_buffer_size
                                   1642 ;	main.c:168: uint16_t data = phy_spi_read(addr);
      002D1C 12 31 D4         [24] 1643 	lcall	_phy_spi_read
      002D1F AE 82            [24] 1644 	mov	r6, dpl
      002D21 AF 83            [24] 1645 	mov	r7, dph
                                   1646 ;	main.c:169: printf("PHY Read Data: 0x%04X\n\r", data);
      002D23 C0 06            [24] 1647 	push	ar6
      002D25 C0 07            [24] 1648 	push	ar7
      002D27 74 D9            [12] 1649 	mov	a,#___str_30
      002D29 C0 E0            [24] 1650 	push	acc
      002D2B 74 48            [12] 1651 	mov	a,#(___str_30 >> 8)
      002D2D C0 E0            [24] 1652 	push	acc
      002D2F 74 80            [12] 1653 	mov	a,#0x80
      002D31 C0 E0            [24] 1654 	push	acc
      002D33 12 3A 16         [24] 1655 	lcall	_printf
      002D36 E5 81            [12] 1656 	mov	a,sp
      002D38 24 FB            [12] 1657 	add	a,#0xfb
      002D3A F5 81            [12] 1658 	mov	sp,a
                                   1659 ;	main.c:170: break;
      002D3C 02 28 F1         [24] 1660 	ljmp	00118$
                                   1661 ;	main.c:172: case '7': {
      002D3F                       1662 00108$:
                                   1663 ;	main.c:173: printf("Resetting ENC28J60...\n\r");
      002D3F 74 F1            [12] 1664 	mov	a,#___str_31
      002D41 C0 E0            [24] 1665 	push	acc
      002D43 74 48            [12] 1666 	mov	a,#(___str_31 >> 8)
      002D45 C0 E0            [24] 1667 	push	acc
      002D47 74 80            [12] 1668 	mov	a,#0x80
      002D49 C0 E0            [24] 1669 	push	acc
      002D4B 12 3A 16         [24] 1670 	lcall	_printf
      002D4E 15 81            [12] 1671 	dec	sp
      002D50 15 81            [12] 1672 	dec	sp
      002D52 15 81            [12] 1673 	dec	sp
                                   1674 ;	main.c:174: enc_reset();
      002D54 12 30 6A         [24] 1675 	lcall	_enc_reset
                                   1676 ;	main.c:175: break;
      002D57 02 28 F1         [24] 1677 	ljmp	00118$
                                   1678 ;	main.c:177: case '8': {
      002D5A                       1679 00109$:
                                   1680 ;	main.c:178: printf("Enter the ETH register address to read:\n\r");
      002D5A 74 09            [12] 1681 	mov	a,#___str_32
      002D5C C0 E0            [24] 1682 	push	acc
      002D5E 74 49            [12] 1683 	mov	a,#(___str_32 >> 8)
      002D60 C0 E0            [24] 1684 	push	acc
      002D62 74 80            [12] 1685 	mov	a,#0x80
      002D64 C0 E0            [24] 1686 	push	acc
      002D66 12 3A 16         [24] 1687 	lcall	_printf
      002D69 15 81            [12] 1688 	dec	sp
      002D6B 15 81            [12] 1689 	dec	sp
      002D6D 15 81            [12] 1690 	dec	sp
                                   1691 ;	main.c:179: uint8_t addr = get_user_buffer_size();
      002D6F 12 28 50         [24] 1692 	lcall	_get_user_buffer_size
      002D72 AE 82            [24] 1693 	mov	r6, dpl
                                   1694 ;	main.c:180: printf("Enter the bank (0 or 1):\n\r");
      002D74 C0 06            [24] 1695 	push	ar6
      002D76 74 33            [12] 1696 	mov	a,#___str_33
      002D78 C0 E0            [24] 1697 	push	acc
      002D7A 74 49            [12] 1698 	mov	a,#(___str_33 >> 8)
      002D7C C0 E0            [24] 1699 	push	acc
      002D7E 74 80            [12] 1700 	mov	a,#0x80
      002D80 C0 E0            [24] 1701 	push	acc
      002D82 12 3A 16         [24] 1702 	lcall	_printf
      002D85 15 81            [12] 1703 	dec	sp
      002D87 15 81            [12] 1704 	dec	sp
      002D89 15 81            [12] 1705 	dec	sp
                                   1706 ;	main.c:181: uint8_t bank = get_user_buffer_size();
      002D8B 12 28 50         [24] 1707 	lcall	_get_user_buffer_size
      002D8E AD 82            [24] 1708 	mov	r5, dpl
      002D90 D0 06            [24] 1709 	pop	ar6
      002D92 90 03 67         [24] 1710 	mov	dptr,#_eth_spi_read_PARM_2
      002D95 ED               [12] 1711 	mov	a,r5
      002D96 F0               [24] 1712 	movx	@dptr,a
                                   1713 ;	main.c:182: uint8_t data = eth_spi_read(addr, bank);
      002D97 8E 82            [24] 1714 	mov	dpl, r6
      002D99 12 30 75         [24] 1715 	lcall	_eth_spi_read
      002D9C AF 82            [24] 1716 	mov	r7, dpl
                                   1717 ;	main.c:183: printf("ETH Register Data: 0x%02X\n\r", data);
      002D9E 7E 00            [12] 1718 	mov	r6,#0x00
      002DA0 C0 07            [24] 1719 	push	ar7
      002DA2 C0 06            [24] 1720 	push	ar6
      002DA4 74 4E            [12] 1721 	mov	a,#___str_34
      002DA6 C0 E0            [24] 1722 	push	acc
      002DA8 74 49            [12] 1723 	mov	a,#(___str_34 >> 8)
      002DAA C0 E0            [24] 1724 	push	acc
      002DAC 74 80            [12] 1725 	mov	a,#0x80
      002DAE C0 E0            [24] 1726 	push	acc
      002DB0 12 3A 16         [24] 1727 	lcall	_printf
      002DB3 E5 81            [12] 1728 	mov	a,sp
      002DB5 24 FB            [12] 1729 	add	a,#0xfb
      002DB7 F5 81            [12] 1730 	mov	sp,a
                                   1731 ;	main.c:184: break;
      002DB9 02 28 F1         [24] 1732 	ljmp	00118$
                                   1733 ;	main.c:186: case '9': {
      002DBC                       1734 00110$:
                                   1735 ;	main.c:187: printf("\n\rChoose an action: \n\r");
      002DBC 74 AC            [12] 1736 	mov	a,#___str_2
      002DBE C0 E0            [24] 1737 	push	acc
      002DC0 74 45            [12] 1738 	mov	a,#(___str_2 >> 8)
      002DC2 C0 E0            [24] 1739 	push	acc
      002DC4 74 80            [12] 1740 	mov	a,#0x80
      002DC6 C0 E0            [24] 1741 	push	acc
      002DC8 12 3A 16         [24] 1742 	lcall	_printf
      002DCB 15 81            [12] 1743 	dec	sp
      002DCD 15 81            [12] 1744 	dec	sp
      002DCF 15 81            [12] 1745 	dec	sp
                                   1746 ;	main.c:188: printf("1 --> Control Write\n\r");
      002DD1 74 C3            [12] 1747 	mov	a,#___str_3
      002DD3 C0 E0            [24] 1748 	push	acc
      002DD5 74 45            [12] 1749 	mov	a,#(___str_3 >> 8)
      002DD7 C0 E0            [24] 1750 	push	acc
      002DD9 74 80            [12] 1751 	mov	a,#0x80
      002DDB C0 E0            [24] 1752 	push	acc
      002DDD 12 3A 16         [24] 1753 	lcall	_printf
      002DE0 15 81            [12] 1754 	dec	sp
      002DE2 15 81            [12] 1755 	dec	sp
      002DE4 15 81            [12] 1756 	dec	sp
                                   1757 ;	main.c:189: printf("2 --> Buffer Write\n\r");
      002DE6 74 D9            [12] 1758 	mov	a,#___str_4
      002DE8 C0 E0            [24] 1759 	push	acc
      002DEA 74 45            [12] 1760 	mov	a,#(___str_4 >> 8)
      002DEC C0 E0            [24] 1761 	push	acc
      002DEE 74 80            [12] 1762 	mov	a,#0x80
      002DF0 C0 E0            [24] 1763 	push	acc
      002DF2 12 3A 16         [24] 1764 	lcall	_printf
      002DF5 15 81            [12] 1765 	dec	sp
      002DF7 15 81            [12] 1766 	dec	sp
      002DF9 15 81            [12] 1767 	dec	sp
                                   1768 ;	main.c:190: printf("3 --> Buffer Read\n\r");
      002DFB 74 EE            [12] 1769 	mov	a,#___str_5
      002DFD C0 E0            [24] 1770 	push	acc
      002DFF 74 45            [12] 1771 	mov	a,#(___str_5 >> 8)
      002E01 C0 E0            [24] 1772 	push	acc
      002E03 74 80            [12] 1773 	mov	a,#0x80
      002E05 C0 E0            [24] 1774 	push	acc
      002E07 12 3A 16         [24] 1775 	lcall	_printf
      002E0A 15 81            [12] 1776 	dec	sp
      002E0C 15 81            [12] 1777 	dec	sp
      002E0E 15 81            [12] 1778 	dec	sp
                                   1779 ;	main.c:191: printf("4 --> MAC Register Read\n\r");
      002E10 74 02            [12] 1780 	mov	a,#___str_6
      002E12 C0 E0            [24] 1781 	push	acc
      002E14 74 46            [12] 1782 	mov	a,#(___str_6 >> 8)
      002E16 C0 E0            [24] 1783 	push	acc
      002E18 74 80            [12] 1784 	mov	a,#0x80
      002E1A C0 E0            [24] 1785 	push	acc
      002E1C 12 3A 16         [24] 1786 	lcall	_printf
      002E1F 15 81            [12] 1787 	dec	sp
      002E21 15 81            [12] 1788 	dec	sp
      002E23 15 81            [12] 1789 	dec	sp
                                   1790 ;	main.c:192: printf("5 --> PHY SPI Write\n\r");
      002E25 74 1C            [12] 1791 	mov	a,#___str_7
      002E27 C0 E0            [24] 1792 	push	acc
      002E29 74 46            [12] 1793 	mov	a,#(___str_7 >> 8)
      002E2B C0 E0            [24] 1794 	push	acc
      002E2D 74 80            [12] 1795 	mov	a,#0x80
      002E2F C0 E0            [24] 1796 	push	acc
      002E31 12 3A 16         [24] 1797 	lcall	_printf
      002E34 15 81            [12] 1798 	dec	sp
      002E36 15 81            [12] 1799 	dec	sp
      002E38 15 81            [12] 1800 	dec	sp
                                   1801 ;	main.c:193: printf("6 --> PHY SPI Read\n\r");
      002E3A 74 32            [12] 1802 	mov	a,#___str_8
      002E3C C0 E0            [24] 1803 	push	acc
      002E3E 74 46            [12] 1804 	mov	a,#(___str_8 >> 8)
      002E40 C0 E0            [24] 1805 	push	acc
      002E42 74 80            [12] 1806 	mov	a,#0x80
      002E44 C0 E0            [24] 1807 	push	acc
      002E46 12 3A 16         [24] 1808 	lcall	_printf
      002E49 15 81            [12] 1809 	dec	sp
      002E4B 15 81            [12] 1810 	dec	sp
      002E4D 15 81            [12] 1811 	dec	sp
                                   1812 ;	main.c:194: printf("7 --> ENC Reset\n\r");
      002E4F 74 47            [12] 1813 	mov	a,#___str_9
      002E51 C0 E0            [24] 1814 	push	acc
      002E53 74 46            [12] 1815 	mov	a,#(___str_9 >> 8)
      002E55 C0 E0            [24] 1816 	push	acc
      002E57 74 80            [12] 1817 	mov	a,#0x80
      002E59 C0 E0            [24] 1818 	push	acc
      002E5B 12 3A 16         [24] 1819 	lcall	_printf
      002E5E 15 81            [12] 1820 	dec	sp
      002E60 15 81            [12] 1821 	dec	sp
      002E62 15 81            [12] 1822 	dec	sp
                                   1823 ;	main.c:195: printf("8 --> Read ETH Register\n\r");
      002E64 74 59            [12] 1824 	mov	a,#___str_10
      002E66 C0 E0            [24] 1825 	push	acc
      002E68 74 46            [12] 1826 	mov	a,#(___str_10 >> 8)
      002E6A C0 E0            [24] 1827 	push	acc
      002E6C 74 80            [12] 1828 	mov	a,#0x80
      002E6E C0 E0            [24] 1829 	push	acc
      002E70 12 3A 16         [24] 1830 	lcall	_printf
      002E73 15 81            [12] 1831 	dec	sp
      002E75 15 81            [12] 1832 	dec	sp
      002E77 15 81            [12] 1833 	dec	sp
                                   1834 ;	main.c:196: break;
      002E79 02 28 F1         [24] 1835 	ljmp	00118$
                                   1836 ;	main.c:198: case 'A':{
      002E7C                       1837 00111$:
                                   1838 ;	main.c:199: init_ENC();
      002E7C 12 37 18         [24] 1839 	lcall	_init_ENC
                                   1840 ;	main.c:201: send_arp_request();
      002E7F 12 23 DE         [24] 1841 	lcall	_send_arp_request
                                   1842 ;	main.c:202: break;
      002E82 02 28 F1         [24] 1843 	ljmp	00118$
                                   1844 ;	main.c:204: case 'B':{
      002E85                       1845 00112$:
                                   1846 ;	main.c:205: init_ENC();
      002E85 12 37 18         [24] 1847 	lcall	_init_ENC
                                   1848 ;	main.c:206: break;
      002E88 02 28 F1         [24] 1849 	ljmp	00118$
                                   1850 ;	main.c:208: case 'C':{
      002E8B                       1851 00113$:
                                   1852 ;	main.c:209: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
      002E8B 74 6A            [12] 1853 	mov	a,#___str_35
      002E8D C0 E0            [24] 1854 	push	acc
      002E8F 74 49            [12] 1855 	mov	a,#(___str_35 >> 8)
      002E91 C0 E0            [24] 1856 	push	acc
      002E93 74 80            [12] 1857 	mov	a,#0x80
      002E95 C0 E0            [24] 1858 	push	acc
      002E97 12 3A 16         [24] 1859 	lcall	_printf
      002E9A 15 81            [12] 1860 	dec	sp
      002E9C 15 81            [12] 1861 	dec	sp
      002E9E 15 81            [12] 1862 	dec	sp
                                   1863 ;	main.c:210: ENC_RESET = 0;
                                   1864 ;	assignBit
      002EA0 C2 90            [12] 1865 	clr	_P1_0
                                   1866 ;	main.c:211: for(int i = 0; i < 6000; i++);
      002EA2 7E 00            [12] 1867 	mov	r6,#0x00
      002EA4 7F 00            [12] 1868 	mov	r7,#0x00
      002EA6                       1869 00124$:
      002EA6 C3               [12] 1870 	clr	c
      002EA7 EE               [12] 1871 	mov	a,r6
      002EA8 94 70            [12] 1872 	subb	a,#0x70
      002EAA EF               [12] 1873 	mov	a,r7
      002EAB 64 80            [12] 1874 	xrl	a,#0x80
      002EAD 94 97            [12] 1875 	subb	a,#0x97
      002EAF 50 07            [24] 1876 	jnc	00114$
      002EB1 0E               [12] 1877 	inc	r6
      002EB2 BE 00 F1         [24] 1878 	cjne	r6,#0x00,00124$
      002EB5 0F               [12] 1879 	inc	r7
      002EB6 80 EE            [24] 1880 	sjmp	00124$
      002EB8                       1881 00114$:
                                   1882 ;	main.c:212: ENC_RESET = 1;
                                   1883 ;	assignBit
      002EB8 D2 90            [12] 1884 	setb	_P1_0
                                   1885 ;	main.c:213: break;
      002EBA 02 28 F1         [24] 1886 	ljmp	00118$
                                   1887 ;	main.c:215: default: {
      002EBD                       1888 00115$:
                                   1889 ;	main.c:216: printf("Invalid option. Please select a valid action.\n\r");
      002EBD 74 9D            [12] 1890 	mov	a,#___str_36
      002EBF C0 E0            [24] 1891 	push	acc
      002EC1 74 49            [12] 1892 	mov	a,#(___str_36 >> 8)
      002EC3 C0 E0            [24] 1893 	push	acc
      002EC5 74 80            [12] 1894 	mov	a,#0x80
      002EC7 C0 E0            [24] 1895 	push	acc
      002EC9 12 3A 16         [24] 1896 	lcall	_printf
      002ECC 15 81            [12] 1897 	dec	sp
      002ECE 15 81            [12] 1898 	dec	sp
      002ED0 15 81            [12] 1899 	dec	sp
                                   1900 ;	main.c:219: }
                                   1901 ;	main.c:221: }
      002ED2 02 28 F1         [24] 1902 	ljmp	00118$
                                   1903 	.area CSEG    (CODE)
                                   1904 	.area CONST   (CODE)
                                   1905 	.area CONST   (CODE)
      004590                       1906 ___str_0:
      004590 0A                    1907 	.db 0x0a
      004591 0D                    1908 	.db 0x0d
      004592 00                    1909 	.db 0x00
                                   1910 	.area CSEG    (CODE)
                                   1911 	.area CONST   (CODE)
      004593                       1912 ___str_1:
      004593 53 50 49 20 4F 70 65  1913 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      0045A9 0A                    1914 	.db 0x0a
      0045AA 0D                    1915 	.db 0x0d
      0045AB 00                    1916 	.db 0x00
                                   1917 	.area CSEG    (CODE)
                                   1918 	.area CONST   (CODE)
      0045AC                       1919 ___str_2:
      0045AC 0A                    1920 	.db 0x0a
      0045AD 0D                    1921 	.db 0x0d
      0045AE 43 68 6F 6F 73 65 20  1922 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      0045C0 0A                    1923 	.db 0x0a
      0045C1 0D                    1924 	.db 0x0d
      0045C2 00                    1925 	.db 0x00
                                   1926 	.area CSEG    (CODE)
                                   1927 	.area CONST   (CODE)
      0045C3                       1928 ___str_3:
      0045C3 31 20 2D 2D 3E 20 43  1929 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      0045D6 0A                    1930 	.db 0x0a
      0045D7 0D                    1931 	.db 0x0d
      0045D8 00                    1932 	.db 0x00
                                   1933 	.area CSEG    (CODE)
                                   1934 	.area CONST   (CODE)
      0045D9                       1935 ___str_4:
      0045D9 32 20 2D 2D 3E 20 42  1936 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      0045EB 0A                    1937 	.db 0x0a
      0045EC 0D                    1938 	.db 0x0d
      0045ED 00                    1939 	.db 0x00
                                   1940 	.area CSEG    (CODE)
                                   1941 	.area CONST   (CODE)
      0045EE                       1942 ___str_5:
      0045EE 33 20 2D 2D 3E 20 42  1943 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      0045FF 0A                    1944 	.db 0x0a
      004600 0D                    1945 	.db 0x0d
      004601 00                    1946 	.db 0x00
                                   1947 	.area CSEG    (CODE)
                                   1948 	.area CONST   (CODE)
      004602                       1949 ___str_6:
      004602 34 20 2D 2D 3E 20 4D  1950 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      004619 0A                    1951 	.db 0x0a
      00461A 0D                    1952 	.db 0x0d
      00461B 00                    1953 	.db 0x00
                                   1954 	.area CSEG    (CODE)
                                   1955 	.area CONST   (CODE)
      00461C                       1956 ___str_7:
      00461C 35 20 2D 2D 3E 20 50  1957 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      00462F 0A                    1958 	.db 0x0a
      004630 0D                    1959 	.db 0x0d
      004631 00                    1960 	.db 0x00
                                   1961 	.area CSEG    (CODE)
                                   1962 	.area CONST   (CODE)
      004632                       1963 ___str_8:
      004632 36 20 2D 2D 3E 20 50  1964 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      004644 0A                    1965 	.db 0x0a
      004645 0D                    1966 	.db 0x0d
      004646 00                    1967 	.db 0x00
                                   1968 	.area CSEG    (CODE)
                                   1969 	.area CONST   (CODE)
      004647                       1970 ___str_9:
      004647 37 20 2D 2D 3E 20 45  1971 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      004656 0A                    1972 	.db 0x0a
      004657 0D                    1973 	.db 0x0d
      004658 00                    1974 	.db 0x00
                                   1975 	.area CSEG    (CODE)
                                   1976 	.area CONST   (CODE)
      004659                       1977 ___str_10:
      004659 38 20 2D 2D 3E 20 52  1978 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      004670 0A                    1979 	.db 0x0a
      004671 0D                    1980 	.db 0x0d
      004672 00                    1981 	.db 0x00
                                   1982 	.area CSEG    (CODE)
                                   1983 	.area CONST   (CODE)
      004673                       1984 ___str_11:
      004673 39 20 2D 2D 3E 20 44  1985 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      004685 0A                    1986 	.db 0x0a
      004686 0D                    1987 	.db 0x0d
      004687 00                    1988 	.db 0x00
                                   1989 	.area CSEG    (CODE)
                                   1990 	.area CONST   (CODE)
      004688                       1991 ___str_12:
      004688 41 20 2D 2D 3E 20 53  1992 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      00469E 0A                    1993 	.db 0x0a
      00469F 0D                    1994 	.db 0x0d
      0046A0 00                    1995 	.db 0x00
                                   1996 	.area CSEG    (CODE)
                                   1997 	.area CONST   (CODE)
      0046A1                       1998 ___str_13:
      0046A1 42 20 2D 2D 3E 20 49  1999 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      0046B6 0A                    2000 	.db 0x0a
      0046B7 0D                    2001 	.db 0x0d
      0046B8 00                    2002 	.db 0x00
                                   2003 	.area CSEG    (CODE)
                                   2004 	.area CONST   (CODE)
      0046B9                       2005 ___str_14:
      0046B9 43 20 2D 2D 3E 20 48  2006 	.ascii "C --> Hard Reset(nRESET pin)"
             61 72 64 20 52 65 73
             65 74 28 6E 52 45 53
             45 54 20 70 69 6E 29
      0046D5 0A                    2007 	.db 0x0a
      0046D6 0D                    2008 	.db 0x0d
      0046D7 00                    2009 	.db 0x00
                                   2010 	.area CSEG    (CODE)
                                   2011 	.area CONST   (CODE)
      0046D8                       2012 ___str_15:
      0046D8 45 6E 74 65 72 20 74  2013 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      0046FA 0A                    2014 	.db 0x0a
      0046FB 0D                    2015 	.db 0x0d
      0046FC 00                    2016 	.db 0x00
                                   2017 	.area CSEG    (CODE)
                                   2018 	.area CONST   (CODE)
      0046FD                       2019 ___str_16:
      0046FD 45 6E 74 65 72 20 74  2020 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      004727 0A                    2021 	.db 0x0a
      004728 0D                    2022 	.db 0x0d
      004729 00                    2023 	.db 0x00
                                   2024 	.area CSEG    (CODE)
                                   2025 	.area CONST   (CODE)
      00472A                       2026 ___str_17:
      00472A 45 6E 74 65 72 20 74  2027 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      00474B 0A                    2028 	.db 0x0a
      00474C 0D                    2029 	.db 0x0d
      00474D 00                    2030 	.db 0x00
                                   2031 	.area CSEG    (CODE)
                                   2032 	.area CONST   (CODE)
      00474E                       2033 ___str_18:
      00474E 45 6E 74 65 72 20 74  2034 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      004771 0A                    2035 	.db 0x0a
      004772 0D                    2036 	.db 0x0d
      004773 00                    2037 	.db 0x00
                                   2038 	.area CSEG    (CODE)
                                   2039 	.area CONST   (CODE)
      004774                       2040 ___str_19:
      004774 45 6E 74 65 72 20 74  2041 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      00478F 0A                    2042 	.db 0x0a
      004790 0D                    2043 	.db 0x0d
      004791 00                    2044 	.db 0x00
                                   2045 	.area CSEG    (CODE)
                                   2046 	.area CONST   (CODE)
      004792                       2047 ___str_20:
      004792 45 6E 74 65 72 20 25  2048 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      0047B2 0A                    2049 	.db 0x0a
      0047B3 0D                    2050 	.db 0x0d
      0047B4 00                    2051 	.db 0x00
                                   2052 	.area CSEG    (CODE)
                                   2053 	.area CONST   (CODE)
      0047B5                       2054 ___str_21:
      0047B5 42 79 74 65 20 25 64  2055 	.ascii "Byte %d: "
             3A 20
      0047BE 00                    2056 	.db 0x00
                                   2057 	.area CSEG    (CODE)
                                   2058 	.area CONST   (CODE)
      0047BF                       2059 ___str_22:
      0047BF 45 6E 74 65 72 20 74  2060 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      0047E1 0A                    2061 	.db 0x0a
      0047E2 0D                    2062 	.db 0x0d
      0047E3 00                    2063 	.db 0x00
                                   2064 	.area CSEG    (CODE)
                                   2065 	.area CONST   (CODE)
      0047E4                       2066 ___str_23:
      0047E4 45 6E 74 65 72 20 74  2067 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      00480A 0A                    2068 	.db 0x0a
      00480B 0D                    2069 	.db 0x0d
      00480C 00                    2070 	.db 0x00
                                   2071 	.area CSEG    (CODE)
                                   2072 	.area CONST   (CODE)
      00480D                       2073 ___str_24:
      00480D 45 6E 74 65 72 20 74  2074 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      004833 0A                    2075 	.db 0x0a
      004834 0D                    2076 	.db 0x0d
      004835 00                    2077 	.db 0x00
                                   2078 	.area CSEG    (CODE)
                                   2079 	.area CONST   (CODE)
      004836                       2080 ___str_25:
      004836 4D 41 43 20 52 65 67  2081 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      00484F 0A                    2082 	.db 0x0a
      004850 0D                    2083 	.db 0x0d
      004851 00                    2084 	.db 0x00
                                   2085 	.area CSEG    (CODE)
                                   2086 	.area CONST   (CODE)
      004852                       2087 ___str_26:
      004852 45 6E 74 65 72 20 74  2088 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      004871 0A                    2089 	.db 0x0a
      004872 0D                    2090 	.db 0x0d
      004873 00                    2091 	.db 0x00
                                   2092 	.area CSEG    (CODE)
                                   2093 	.area CONST   (CODE)
      004874                       2094 ___str_27:
      004874 45 6E 74 65 72 20 74  2095 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      004893 0A                    2096 	.db 0x0a
      004894 0D                    2097 	.db 0x0d
      004895 00                    2098 	.db 0x00
                                   2099 	.area CSEG    (CODE)
                                   2100 	.area CONST   (CODE)
      004896                       2101 ___str_28:
      004896 50 48 59 20 57 72 69  2102 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      0048AC 0A                    2103 	.db 0x0a
      0048AD 0D                    2104 	.db 0x0d
      0048AE 00                    2105 	.db 0x00
                                   2106 	.area CSEG    (CODE)
                                   2107 	.area CONST   (CODE)
      0048AF                       2108 ___str_29:
      0048AF 45 6E 74 65 72 20 74  2109 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      0048D6 0A                    2110 	.db 0x0a
      0048D7 0D                    2111 	.db 0x0d
      0048D8 00                    2112 	.db 0x00
                                   2113 	.area CSEG    (CODE)
                                   2114 	.area CONST   (CODE)
      0048D9                       2115 ___str_30:
      0048D9 50 48 59 20 52 65 61  2116 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      0048EE 0A                    2117 	.db 0x0a
      0048EF 0D                    2118 	.db 0x0d
      0048F0 00                    2119 	.db 0x00
                                   2120 	.area CSEG    (CODE)
                                   2121 	.area CONST   (CODE)
      0048F1                       2122 ___str_31:
      0048F1 52 65 73 65 74 74 69  2123 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      004906 0A                    2124 	.db 0x0a
      004907 0D                    2125 	.db 0x0d
      004908 00                    2126 	.db 0x00
                                   2127 	.area CSEG    (CODE)
                                   2128 	.area CONST   (CODE)
      004909                       2129 ___str_32:
      004909 45 6E 74 65 72 20 74  2130 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      004930 0A                    2131 	.db 0x0a
      004931 0D                    2132 	.db 0x0d
      004932 00                    2133 	.db 0x00
                                   2134 	.area CSEG    (CODE)
                                   2135 	.area CONST   (CODE)
      004933                       2136 ___str_33:
      004933 45 6E 74 65 72 20 74  2137 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      00494B 0A                    2138 	.db 0x0a
      00494C 0D                    2139 	.db 0x0d
      00494D 00                    2140 	.db 0x00
                                   2141 	.area CSEG    (CODE)
                                   2142 	.area CONST   (CODE)
      00494E                       2143 ___str_34:
      00494E 45 54 48 20 52 65 67  2144 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      004967 0A                    2145 	.db 0x0a
      004968 0D                    2146 	.db 0x0d
      004969 00                    2147 	.db 0x00
                                   2148 	.area CSEG    (CODE)
                                   2149 	.area CONST   (CODE)
      00496A                       2150 ___str_35:
      00496A 20 52 65 73 65 74 74  2151 	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
             69 6E 67 20 45 4E 43
             20 75 73 69 6E 67 20
             52 45 53 45 54 20 70
             69 6E 20 69 6E 20 48
             61 72 64 77 61 72 65
             28 50 31 5F 30 29
      00499A 0A                    2152 	.db 0x0a
      00499B 0D                    2153 	.db 0x0d
      00499C 00                    2154 	.db 0x00
                                   2155 	.area CSEG    (CODE)
                                   2156 	.area CONST   (CODE)
      00499D                       2157 ___str_36:
      00499D 49 6E 76 61 6C 69 64  2158 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      0049CA 0A                    2159 	.db 0x0a
      0049CB 0D                    2160 	.db 0x0d
      0049CC 00                    2161 	.db 0x00
                                   2162 	.area CSEG    (CODE)
                                   2163 	.area XINIT   (CODE)
                                   2164 	.area CABS    (ABS,CODE)

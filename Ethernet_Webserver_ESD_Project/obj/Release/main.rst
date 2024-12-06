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
      002003 02 26 57         [24]  541 	ljmp	_external_interrupt0_isr
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
      002006 02 28 F1         [24]  563 	ljmp	_main
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
      0026B3                        584 _hex_to_int:
                           000007   585 	ar7 = 0x07
                           000006   586 	ar6 = 0x06
                           000005   587 	ar5 = 0x05
                           000004   588 	ar4 = 0x04
                           000003   589 	ar3 = 0x03
                           000002   590 	ar2 = 0x02
                           000001   591 	ar1 = 0x01
                           000000   592 	ar0 = 0x00
      0026B3 AF F0            [24]  593 	mov	r7,b
      0026B5 AE 83            [24]  594 	mov	r6,dph
      0026B7 E5 82            [12]  595 	mov	a,dpl
      0026B9 90 01 4F         [24]  596 	mov	dptr,#_hex_to_int_str_10000_74
      0026BC F0               [24]  597 	movx	@dptr,a
      0026BD EE               [12]  598 	mov	a,r6
      0026BE A3               [24]  599 	inc	dptr
      0026BF F0               [24]  600 	movx	@dptr,a
      0026C0 EF               [12]  601 	mov	a,r7
      0026C1 A3               [24]  602 	inc	dptr
      0026C2 F0               [24]  603 	movx	@dptr,a
                                    604 ;	main.c:15: int i = 0, result = 0;
      0026C3 90 01 52         [24]  605 	mov	dptr,#_hex_to_int_result_10000_75
      0026C6 E4               [12]  606 	clr	a
      0026C7 F0               [24]  607 	movx	@dptr,a
      0026C8 A3               [24]  608 	inc	dptr
      0026C9 F0               [24]  609 	movx	@dptr,a
                                    610 ;	main.c:16: while(str[i] != '\0')
      0026CA 90 01 4F         [24]  611 	mov	dptr,#_hex_to_int_str_10000_74
      0026CD E0               [24]  612 	movx	a,@dptr
      0026CE FD               [12]  613 	mov	r5,a
      0026CF A3               [24]  614 	inc	dptr
      0026D0 E0               [24]  615 	movx	a,@dptr
      0026D1 FE               [12]  616 	mov	r6,a
      0026D2 A3               [24]  617 	inc	dptr
      0026D3 E0               [24]  618 	movx	a,@dptr
      0026D4 FF               [12]  619 	mov	r7,a
      0026D5 8D 02            [24]  620 	mov	ar2,r5
      0026D7 8E 03            [24]  621 	mov	ar3,r6
      0026D9 8F 04            [24]  622 	mov	ar4,r7
      0026DB 8D 13            [24]  623 	mov	_hex_to_int_sloc0_1_0,r5
      0026DD 8E 14            [24]  624 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      0026DF 8F 15            [24]  625 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      0026E1 78 00            [12]  626 	mov	r0,#0x00
      0026E3 79 00            [12]  627 	mov	r1,#0x00
      0026E5                        628 00112$:
      0026E5 C0 02            [24]  629 	push	ar2
      0026E7 C0 03            [24]  630 	push	ar3
      0026E9 C0 04            [24]  631 	push	ar4
      0026EB E8               [12]  632 	mov	a,r0
      0026EC 25 13            [12]  633 	add	a, _hex_to_int_sloc0_1_0
      0026EE FA               [12]  634 	mov	r2,a
      0026EF E9               [12]  635 	mov	a,r1
      0026F0 35 14            [12]  636 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      0026F2 FB               [12]  637 	mov	r3,a
      0026F3 AC 15            [24]  638 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      0026F5 8A 82            [24]  639 	mov	dpl,r2
      0026F7 8B 83            [24]  640 	mov	dph,r3
      0026F9 8C F0            [24]  641 	mov	b,r4
      0026FB 12 45 03         [24]  642 	lcall	__gptrget
      0026FE F5 16            [12]  643 	mov	_hex_to_int_sloc1_1_0,a
      002700 D0 04            [24]  644 	pop	ar4
      002702 D0 03            [24]  645 	pop	ar3
      002704 D0 02            [24]  646 	pop	ar2
      002706 E5 16            [12]  647 	mov	a,_hex_to_int_sloc1_1_0
      002708 70 03            [24]  648 	jnz	00166$
      00270A 02 28 61         [24]  649 	ljmp	00114$
      00270D                        650 00166$:
                                    651 ;	main.c:18: int ASCII = (int)str[i];
      00270D C0 02            [24]  652 	push	ar2
      00270F C0 03            [24]  653 	push	ar3
      002711 C0 04            [24]  654 	push	ar4
      002713 85 16 17         [24]  655 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      002716 75 18 00         [24]  656 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      002719 90 01 54         [24]  657 	mov	dptr,#_hex_to_int_ASCII_20000_76
      00271C E5 17            [12]  658 	mov	a,_hex_to_int_sloc2_1_0
      00271E F0               [24]  659 	movx	@dptr,a
      00271F E5 18            [12]  660 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002721 A3               [24]  661 	inc	dptr
      002722 F0               [24]  662 	movx	@dptr,a
                                    663 ;	main.c:19: result *= 16;
      002723 90 01 52         [24]  664 	mov	dptr,#_hex_to_int_result_10000_75
      002726 E0               [24]  665 	movx	a,@dptr
      002727 FB               [12]  666 	mov	r3,a
      002728 A3               [24]  667 	inc	dptr
      002729 E0               [24]  668 	movx	a,@dptr
      00272A C4               [12]  669 	swap	a
      00272B 54 F0            [12]  670 	anl	a,#0xf0
      00272D CB               [12]  671 	xch	a,r3
      00272E C4               [12]  672 	swap	a
      00272F CB               [12]  673 	xch	a,r3
      002730 6B               [12]  674 	xrl	a,r3
      002731 CB               [12]  675 	xch	a,r3
      002732 54 F0            [12]  676 	anl	a,#0xf0
      002734 CB               [12]  677 	xch	a,r3
      002735 6B               [12]  678 	xrl	a,r3
      002736 FC               [12]  679 	mov	r4,a
      002737 90 01 52         [24]  680 	mov	dptr,#_hex_to_int_result_10000_75
      00273A EB               [12]  681 	mov	a,r3
      00273B F0               [24]  682 	movx	@dptr,a
      00273C EC               [12]  683 	mov	a,r4
      00273D A3               [24]  684 	inc	dptr
      00273E F0               [24]  685 	movx	@dptr,a
                                    686 ;	main.c:20: if(ASCII >= '0' && ASCII <= '9')
      00273F C3               [12]  687 	clr	c
      002740 E5 17            [12]  688 	mov	a,_hex_to_int_sloc2_1_0
      002742 94 30            [12]  689 	subb	a,#0x30
      002744 E5 18            [12]  690 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002746 64 80            [12]  691 	xrl	a,#0x80
      002748 94 80            [12]  692 	subb	a,#0x80
      00274A D0 04            [24]  693 	pop	ar4
      00274C D0 03            [24]  694 	pop	ar3
      00274E D0 02            [24]  695 	pop	ar2
      002750 40 3F            [24]  696 	jc	00109$
      002752 74 39            [12]  697 	mov	a,#0x39
      002754 95 17            [12]  698 	subb	a,_hex_to_int_sloc2_1_0
      002756 74 80            [12]  699 	mov	a,#(0x00 ^ 0x80)
      002758 85 18 F0         [24]  700 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      00275B 63 F0 80         [24]  701 	xrl	b,#0x80
      00275E 95 F0            [12]  702 	subb	a,b
      002760 40 2F            [24]  703 	jc	00109$
                                    704 ;	main.c:22: result += str[i] - 48;
      002762 C0 02            [24]  705 	push	ar2
      002764 C0 03            [24]  706 	push	ar3
      002766 C0 04            [24]  707 	push	ar4
      002768 E5 17            [12]  708 	mov	a,_hex_to_int_sloc2_1_0
      00276A 24 D0            [12]  709 	add	a,#0xd0
      00276C F5 17            [12]  710 	mov	_hex_to_int_sloc2_1_0,a
      00276E E5 18            [12]  711 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002770 34 FF            [12]  712 	addc	a,#0xff
      002772 F5 18            [12]  713 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002774 90 01 52         [24]  714 	mov	dptr,#_hex_to_int_result_10000_75
      002777 E0               [24]  715 	movx	a,@dptr
      002778 FA               [12]  716 	mov	r2,a
      002779 A3               [24]  717 	inc	dptr
      00277A E0               [24]  718 	movx	a,@dptr
      00277B FC               [12]  719 	mov	r4,a
      00277C 90 01 52         [24]  720 	mov	dptr,#_hex_to_int_result_10000_75
      00277F E5 17            [12]  721 	mov	a,_hex_to_int_sloc2_1_0
      002781 2A               [12]  722 	add	a, r2
      002782 F0               [24]  723 	movx	@dptr,a
      002783 E5 18            [12]  724 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002785 3C               [12]  725 	addc	a, r4
      002786 A3               [24]  726 	inc	dptr
      002787 F0               [24]  727 	movx	@dptr,a
      002788 D0 04            [24]  728 	pop	ar4
      00278A D0 03            [24]  729 	pop	ar3
      00278C D0 02            [24]  730 	pop	ar2
      00278E 02 28 59         [24]  731 	ljmp	00110$
      002791                        732 00109$:
                                    733 ;	main.c:24: else if(ASCII >= 'A' && ASCII <= 'F')
      002791 90 01 54         [24]  734 	mov	dptr,#_hex_to_int_ASCII_20000_76
      002794 E0               [24]  735 	movx	a,@dptr
      002795 F5 17            [12]  736 	mov	_hex_to_int_sloc2_1_0,a
      002797 A3               [24]  737 	inc	dptr
      002798 E0               [24]  738 	movx	a,@dptr
      002799 F5 18            [12]  739 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      00279B C3               [12]  740 	clr	c
      00279C E5 17            [12]  741 	mov	a,_hex_to_int_sloc2_1_0
      00279E 94 41            [12]  742 	subb	a,#0x41
      0027A0 E5 18            [12]  743 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0027A2 64 80            [12]  744 	xrl	a,#0x80
      0027A4 94 80            [12]  745 	subb	a,#0x80
      0027A6 40 4E            [24]  746 	jc	00105$
      0027A8 74 46            [12]  747 	mov	a,#0x46
      0027AA 95 17            [12]  748 	subb	a,_hex_to_int_sloc2_1_0
      0027AC 74 80            [12]  749 	mov	a,#(0x00 ^ 0x80)
      0027AE 85 18 F0         [24]  750 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      0027B1 63 F0 80         [24]  751 	xrl	b,#0x80
      0027B4 95 F0            [12]  752 	subb	a,b
      0027B6 40 3E            [24]  753 	jc	00105$
                                    754 ;	main.c:26: result += str[i] - 55;
      0027B8 C0 05            [24]  755 	push	ar5
      0027BA C0 06            [24]  756 	push	ar6
      0027BC C0 07            [24]  757 	push	ar7
      0027BE E8               [12]  758 	mov	a,r0
      0027BF 2A               [12]  759 	add	a, r2
      0027C0 FD               [12]  760 	mov	r5,a
      0027C1 E9               [12]  761 	mov	a,r1
      0027C2 3B               [12]  762 	addc	a, r3
      0027C3 FE               [12]  763 	mov	r6,a
      0027C4 8C 07            [24]  764 	mov	ar7,r4
      0027C6 8D 82            [24]  765 	mov	dpl,r5
      0027C8 8E 83            [24]  766 	mov	dph,r6
      0027CA 8F F0            [24]  767 	mov	b,r7
      0027CC 12 45 03         [24]  768 	lcall	__gptrget
      0027CF 7F 00            [12]  769 	mov	r7,#0x00
      0027D1 24 C9            [12]  770 	add	a,#0xc9
      0027D3 F5 17            [12]  771 	mov	_hex_to_int_sloc2_1_0,a
      0027D5 EF               [12]  772 	mov	a,r7
      0027D6 34 FF            [12]  773 	addc	a,#0xff
      0027D8 F5 18            [12]  774 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0027DA 90 01 52         [24]  775 	mov	dptr,#_hex_to_int_result_10000_75
      0027DD E0               [24]  776 	movx	a,@dptr
      0027DE FE               [12]  777 	mov	r6,a
      0027DF A3               [24]  778 	inc	dptr
      0027E0 E0               [24]  779 	movx	a,@dptr
      0027E1 FF               [12]  780 	mov	r7,a
      0027E2 90 01 52         [24]  781 	mov	dptr,#_hex_to_int_result_10000_75
      0027E5 E5 17            [12]  782 	mov	a,_hex_to_int_sloc2_1_0
      0027E7 2E               [12]  783 	add	a, r6
      0027E8 F0               [24]  784 	movx	@dptr,a
      0027E9 E5 18            [12]  785 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0027EB 3F               [12]  786 	addc	a, r7
      0027EC A3               [24]  787 	inc	dptr
      0027ED F0               [24]  788 	movx	@dptr,a
      0027EE D0 07            [24]  789 	pop	ar7
      0027F0 D0 06            [24]  790 	pop	ar6
      0027F2 D0 05            [24]  791 	pop	ar5
      0027F4 80 63            [24]  792 	sjmp	00110$
      0027F6                        793 00105$:
                                    794 ;	main.c:28: else if(ASCII >= 'a' && ASCII <= 'f')
      0027F6 90 01 54         [24]  795 	mov	dptr,#_hex_to_int_ASCII_20000_76
      0027F9 E0               [24]  796 	movx	a,@dptr
      0027FA F5 17            [12]  797 	mov	_hex_to_int_sloc2_1_0,a
      0027FC A3               [24]  798 	inc	dptr
      0027FD E0               [24]  799 	movx	a,@dptr
      0027FE F5 18            [12]  800 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002800 C3               [12]  801 	clr	c
      002801 E5 17            [12]  802 	mov	a,_hex_to_int_sloc2_1_0
      002803 94 61            [12]  803 	subb	a,#0x61
      002805 E5 18            [12]  804 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002807 64 80            [12]  805 	xrl	a,#0x80
      002809 94 80            [12]  806 	subb	a,#0x80
      00280B 40 4C            [24]  807 	jc	00110$
      00280D 74 66            [12]  808 	mov	a,#0x66
      00280F 95 17            [12]  809 	subb	a,_hex_to_int_sloc2_1_0
      002811 74 80            [12]  810 	mov	a,#(0x00 ^ 0x80)
      002813 85 18 F0         [24]  811 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002816 63 F0 80         [24]  812 	xrl	b,#0x80
      002819 95 F0            [12]  813 	subb	a,b
      00281B 40 3C            [24]  814 	jc	00110$
                                    815 ;	main.c:30: result += str[i] - 87;
      00281D C0 02            [24]  816 	push	ar2
      00281F C0 03            [24]  817 	push	ar3
      002821 C0 04            [24]  818 	push	ar4
      002823 E8               [12]  819 	mov	a,r0
      002824 2D               [12]  820 	add	a, r5
      002825 FA               [12]  821 	mov	r2,a
      002826 E9               [12]  822 	mov	a,r1
      002827 3E               [12]  823 	addc	a, r6
      002828 FB               [12]  824 	mov	r3,a
      002829 8F 04            [24]  825 	mov	ar4,r7
      00282B 8A 82            [24]  826 	mov	dpl,r2
      00282D 8B 83            [24]  827 	mov	dph,r3
      00282F 8C F0            [24]  828 	mov	b,r4
      002831 12 45 03         [24]  829 	lcall	__gptrget
      002834 7C 00            [12]  830 	mov	r4,#0x00
      002836 24 A9            [12]  831 	add	a,#0xa9
      002838 F5 17            [12]  832 	mov	_hex_to_int_sloc2_1_0,a
      00283A EC               [12]  833 	mov	a,r4
      00283B 34 FF            [12]  834 	addc	a,#0xff
      00283D F5 18            [12]  835 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      00283F 90 01 52         [24]  836 	mov	dptr,#_hex_to_int_result_10000_75
      002842 E0               [24]  837 	movx	a,@dptr
      002843 FB               [12]  838 	mov	r3,a
      002844 A3               [24]  839 	inc	dptr
      002845 E0               [24]  840 	movx	a,@dptr
      002846 FC               [12]  841 	mov	r4,a
      002847 90 01 52         [24]  842 	mov	dptr,#_hex_to_int_result_10000_75
      00284A E5 17            [12]  843 	mov	a,_hex_to_int_sloc2_1_0
      00284C 2B               [12]  844 	add	a, r3
      00284D F0               [24]  845 	movx	@dptr,a
      00284E E5 18            [12]  846 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002850 3C               [12]  847 	addc	a, r4
      002851 A3               [24]  848 	inc	dptr
      002852 F0               [24]  849 	movx	@dptr,a
                                    850 ;	main.c:34: return result;
      002853 D0 04            [24]  851 	pop	ar4
      002855 D0 03            [24]  852 	pop	ar3
      002857 D0 02            [24]  853 	pop	ar2
                                    854 ;	main.c:30: result += str[i] - 87;
      002859                        855 00110$:
                                    856 ;	main.c:32: i++;
      002859 08               [12]  857 	inc	r0
      00285A B8 00 01         [24]  858 	cjne	r0,#0x00,00173$
      00285D 09               [12]  859 	inc	r1
      00285E                        860 00173$:
      00285E 02 26 E5         [24]  861 	ljmp	00112$
      002861                        862 00114$:
                                    863 ;	main.c:34: return result;
      002861 90 01 52         [24]  864 	mov	dptr,#_hex_to_int_result_10000_75
      002864 E0               [24]  865 	movx	a,@dptr
      002865 FE               [12]  866 	mov	r6,a
      002866 A3               [24]  867 	inc	dptr
      002867 E0               [24]  868 	movx	a,@dptr
                                    869 ;	main.c:36: }
      002868 8E 82            [24]  870 	mov	dpl,r6
      00286A F5 83            [12]  871 	mov	dph,a
      00286C 22               [24]  872 	ret
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
      00286D                        885 _get_user_buffer_size:
                                    886 ;	main.c:45: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      00286D 7E 00            [12]  887 	mov	r6,#0x00
      00286F 7F 00            [12]  888 	mov	r7,#0x00
      002871                        889 00103$:
      002871 C0 07            [24]  890 	push	ar7
      002873 C0 06            [24]  891 	push	ar6
      002875 12 38 CB         [24]  892 	lcall	_getchar
      002878 AC 82            [24]  893 	mov	r4, dpl
      00287A D0 06            [24]  894 	pop	ar6
      00287C D0 07            [24]  895 	pop	ar7
      00287E BC 0A 02         [24]  896 	cjne	r4,#0x0a,00133$
      002881 80 3A            [24]  897 	sjmp	00105$
      002883                        898 00133$:
      002883 BC 0D 02         [24]  899 	cjne	r4,#0x0d,00134$
      002886 80 35            [24]  900 	sjmp	00105$
      002888                        901 00134$:
      002888 C3               [12]  902 	clr	c
      002889 EE               [12]  903 	mov	a,r6
      00288A 94 09            [12]  904 	subb	a,#0x09
      00288C EF               [12]  905 	mov	a,r7
      00288D 64 80            [12]  906 	xrl	a,#0x80
      00288F 94 80            [12]  907 	subb	a,#0x80
      002891 50 2A            [24]  908 	jnc	00105$
                                    909 ;	main.c:47: putchar(ch);
      002893 8C 03            [24]  910 	mov	ar3,r4
      002895 7D 00            [12]  911 	mov	r5,#0x00
      002897 8B 82            [24]  912 	mov	dpl, r3
      002899 8D 83            [24]  913 	mov	dph, r5
      00289B C0 07            [24]  914 	push	ar7
      00289D C0 06            [24]  915 	push	ar6
      00289F C0 04            [24]  916 	push	ar4
      0028A1 12 38 AC         [24]  917 	lcall	_putchar
      0028A4 D0 04            [24]  918 	pop	ar4
      0028A6 D0 06            [24]  919 	pop	ar6
      0028A8 D0 07            [24]  920 	pop	ar7
                                    921 ;	main.c:48: input[i] = ch;      //Append the input array with the received character
      0028AA EE               [12]  922 	mov	a,r6
      0028AB 24 56            [12]  923 	add	a, #_get_user_buffer_size_input_10000_81
      0028AD F5 82            [12]  924 	mov	dpl,a
      0028AF EF               [12]  925 	mov	a,r7
      0028B0 34 01            [12]  926 	addc	a, #(_get_user_buffer_size_input_10000_81 >> 8)
      0028B2 F5 83            [12]  927 	mov	dph,a
      0028B4 EC               [12]  928 	mov	a,r4
      0028B5 F0               [24]  929 	movx	@dptr,a
                                    930 ;	main.c:49: i++;
      0028B6 0E               [12]  931 	inc	r6
      0028B7 BE 00 B7         [24]  932 	cjne	r6,#0x00,00103$
      0028BA 0F               [12]  933 	inc	r7
      0028BB 80 B4            [24]  934 	sjmp	00103$
      0028BD                        935 00105$:
                                    936 ;	main.c:51: input[i] = '\0';
      0028BD EE               [12]  937 	mov	a,r6
      0028BE 24 56            [12]  938 	add	a, #_get_user_buffer_size_input_10000_81
      0028C0 F5 82            [12]  939 	mov	dpl,a
      0028C2 EF               [12]  940 	mov	a,r7
      0028C3 34 01            [12]  941 	addc	a, #(_get_user_buffer_size_input_10000_81 >> 8)
      0028C5 F5 83            [12]  942 	mov	dph,a
      0028C7 E4               [12]  943 	clr	a
      0028C8 F0               [24]  944 	movx	@dptr,a
                                    945 ;	main.c:52: output = hex_to_int(input); //Convert the char hex data to int
      0028C9 90 01 56         [24]  946 	mov	dptr,#_get_user_buffer_size_input_10000_81
      0028CC F5 F0            [12]  947 	mov	b,a
      0028CE 12 26 B3         [24]  948 	lcall	_hex_to_int
      0028D1 AE 82            [24]  949 	mov	r6, dpl
      0028D3 AF 83            [24]  950 	mov	r7, dph
                                    951 ;	main.c:53: printf_tiny("\n\r");
      0028D5 C0 07            [24]  952 	push	ar7
      0028D7 C0 06            [24]  953 	push	ar6
      0028D9 74 5B            [12]  954 	mov	a,#___str_0
      0028DB C0 E0            [24]  955 	push	acc
      0028DD 74 46            [12]  956 	mov	a,#(___str_0 >> 8)
      0028DF C0 E0            [24]  957 	push	acc
      0028E1 12 39 6A         [24]  958 	lcall	_printf_tiny
      0028E4 15 81            [12]  959 	dec	sp
      0028E6 15 81            [12]  960 	dec	sp
      0028E8 D0 06            [24]  961 	pop	ar6
      0028EA D0 07            [24]  962 	pop	ar7
                                    963 ;	main.c:55: return output;
      0028EC 8E 82            [24]  964 	mov	dpl, r6
      0028EE 8F 83            [24]  965 	mov	dph, r7
                                    966 ;	main.c:56: }
      0028F0 22               [24]  967 	ret
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
                                    982 ;current_erxrdpt           Allocated with name '_main_current_erxrdpt_40004_100'
                                    983 ;erxrdpt_low               Allocated with name '_main_erxrdpt_low_40004_100'
                                    984 ;erxrdpt_high              Allocated with name '_main_erxrdpt_high_40004_100'
                                    985 ;reg_bank                  Allocated with name '_main_reg_bank_40002_102'
                                    986 ;addr                      Allocated with name '_main_addr_40003_103'
                                    987 ;data                      Allocated with name '_main_data_40003_103'
                                    988 ;addr                      Allocated with name '_main_addr_40002_105'
                                    989 ;data                      Allocated with name '_main_data_40003_106'
                                    990 ;addr                      Allocated with name '_main_addr_40002_108'
                                    991 ;data                      Allocated with name '_main_data_40002_108'
                                    992 ;addr                      Allocated with name '_main_addr_40002_111'
                                    993 ;bank                      Allocated with name '_main_bank_40003_112'
                                    994 ;data                      Allocated with name '_main_data_40003_112'
                                    995 ;i                         Allocated with name '_main_i_50001_117'
                                    996 ;------------------------------------------------------------
                                    997 ;	main.c:58: void main(void)
                                    998 ;	-----------------------------------------
                                    999 ;	 function main
                                   1000 ;	-----------------------------------------
      0028F1                       1001 _main:
                                   1002 ;	main.c:60: ENC_RESET = 1;
                                   1003 ;	assignBit
      0028F1 D2 90            [12] 1004 	setb	_P1_0
                                   1005 ;	main.c:61: printf("SPI Operations on 8051\n\r");
      0028F3 74 5E            [12] 1006 	mov	a,#___str_1
      0028F5 C0 E0            [24] 1007 	push	acc
      0028F7 74 46            [12] 1008 	mov	a,#(___str_1 >> 8)
      0028F9 C0 E0            [24] 1009 	push	acc
      0028FB 74 80            [12] 1010 	mov	a,#0x80
      0028FD C0 E0            [24] 1011 	push	acc
      0028FF 12 3A E1         [24] 1012 	lcall	_printf
      002902 15 81            [12] 1013 	dec	sp
      002904 15 81            [12] 1014 	dec	sp
      002906 15 81            [12] 1015 	dec	sp
                                   1016 ;	main.c:62: configure_SPI();
      002908 12 31 18         [24] 1017 	lcall	_configure_SPI
                                   1018 ;	main.c:63: RX_disable();
      00290B 12 23 B6         [24] 1019 	lcall	_RX_disable
                                   1020 ;	main.c:65: while(1)
      00290E                       1021 00118$:
                                   1022 ;	main.c:67: printf("\n\rChoose an action: \n\r");
      00290E 74 77            [12] 1023 	mov	a,#___str_2
      002910 C0 E0            [24] 1024 	push	acc
      002912 74 46            [12] 1025 	mov	a,#(___str_2 >> 8)
      002914 C0 E0            [24] 1026 	push	acc
      002916 74 80            [12] 1027 	mov	a,#0x80
      002918 C0 E0            [24] 1028 	push	acc
      00291A 12 3A E1         [24] 1029 	lcall	_printf
      00291D 15 81            [12] 1030 	dec	sp
      00291F 15 81            [12] 1031 	dec	sp
      002921 15 81            [12] 1032 	dec	sp
                                   1033 ;	main.c:68: printf("1 --> Control Write\n\r");
      002923 74 8E            [12] 1034 	mov	a,#___str_3
      002925 C0 E0            [24] 1035 	push	acc
      002927 74 46            [12] 1036 	mov	a,#(___str_3 >> 8)
      002929 C0 E0            [24] 1037 	push	acc
      00292B 74 80            [12] 1038 	mov	a,#0x80
      00292D C0 E0            [24] 1039 	push	acc
      00292F 12 3A E1         [24] 1040 	lcall	_printf
      002932 15 81            [12] 1041 	dec	sp
      002934 15 81            [12] 1042 	dec	sp
      002936 15 81            [12] 1043 	dec	sp
                                   1044 ;	main.c:69: printf("2 --> Buffer Write\n\r");
      002938 74 A4            [12] 1045 	mov	a,#___str_4
      00293A C0 E0            [24] 1046 	push	acc
      00293C 74 46            [12] 1047 	mov	a,#(___str_4 >> 8)
      00293E C0 E0            [24] 1048 	push	acc
      002940 74 80            [12] 1049 	mov	a,#0x80
      002942 C0 E0            [24] 1050 	push	acc
      002944 12 3A E1         [24] 1051 	lcall	_printf
      002947 15 81            [12] 1052 	dec	sp
      002949 15 81            [12] 1053 	dec	sp
      00294B 15 81            [12] 1054 	dec	sp
                                   1055 ;	main.c:70: printf("3 --> Buffer Read\n\r");
      00294D 74 B9            [12] 1056 	mov	a,#___str_5
      00294F C0 E0            [24] 1057 	push	acc
      002951 74 46            [12] 1058 	mov	a,#(___str_5 >> 8)
      002953 C0 E0            [24] 1059 	push	acc
      002955 74 80            [12] 1060 	mov	a,#0x80
      002957 C0 E0            [24] 1061 	push	acc
      002959 12 3A E1         [24] 1062 	lcall	_printf
      00295C 15 81            [12] 1063 	dec	sp
      00295E 15 81            [12] 1064 	dec	sp
      002960 15 81            [12] 1065 	dec	sp
                                   1066 ;	main.c:71: printf("4 --> MAC Register Read\n\r");
      002962 74 CD            [12] 1067 	mov	a,#___str_6
      002964 C0 E0            [24] 1068 	push	acc
      002966 74 46            [12] 1069 	mov	a,#(___str_6 >> 8)
      002968 C0 E0            [24] 1070 	push	acc
      00296A 74 80            [12] 1071 	mov	a,#0x80
      00296C C0 E0            [24] 1072 	push	acc
      00296E 12 3A E1         [24] 1073 	lcall	_printf
      002971 15 81            [12] 1074 	dec	sp
      002973 15 81            [12] 1075 	dec	sp
      002975 15 81            [12] 1076 	dec	sp
                                   1077 ;	main.c:72: printf("5 --> PHY SPI Write\n\r");
      002977 74 E7            [12] 1078 	mov	a,#___str_7
      002979 C0 E0            [24] 1079 	push	acc
      00297B 74 46            [12] 1080 	mov	a,#(___str_7 >> 8)
      00297D C0 E0            [24] 1081 	push	acc
      00297F 74 80            [12] 1082 	mov	a,#0x80
      002981 C0 E0            [24] 1083 	push	acc
      002983 12 3A E1         [24] 1084 	lcall	_printf
      002986 15 81            [12] 1085 	dec	sp
      002988 15 81            [12] 1086 	dec	sp
      00298A 15 81            [12] 1087 	dec	sp
                                   1088 ;	main.c:73: printf("6 --> PHY SPI Read\n\r");
      00298C 74 FD            [12] 1089 	mov	a,#___str_8
      00298E C0 E0            [24] 1090 	push	acc
      002990 74 46            [12] 1091 	mov	a,#(___str_8 >> 8)
      002992 C0 E0            [24] 1092 	push	acc
      002994 74 80            [12] 1093 	mov	a,#0x80
      002996 C0 E0            [24] 1094 	push	acc
      002998 12 3A E1         [24] 1095 	lcall	_printf
      00299B 15 81            [12] 1096 	dec	sp
      00299D 15 81            [12] 1097 	dec	sp
      00299F 15 81            [12] 1098 	dec	sp
                                   1099 ;	main.c:74: printf("7 --> ENC Reset\n\r");
      0029A1 74 12            [12] 1100 	mov	a,#___str_9
      0029A3 C0 E0            [24] 1101 	push	acc
      0029A5 74 47            [12] 1102 	mov	a,#(___str_9 >> 8)
      0029A7 C0 E0            [24] 1103 	push	acc
      0029A9 74 80            [12] 1104 	mov	a,#0x80
      0029AB C0 E0            [24] 1105 	push	acc
      0029AD 12 3A E1         [24] 1106 	lcall	_printf
      0029B0 15 81            [12] 1107 	dec	sp
      0029B2 15 81            [12] 1108 	dec	sp
      0029B4 15 81            [12] 1109 	dec	sp
                                   1110 ;	main.c:75: printf("8 --> Read ETH Register\n\r");
      0029B6 74 24            [12] 1111 	mov	a,#___str_10
      0029B8 C0 E0            [24] 1112 	push	acc
      0029BA 74 47            [12] 1113 	mov	a,#(___str_10 >> 8)
      0029BC C0 E0            [24] 1114 	push	acc
      0029BE 74 80            [12] 1115 	mov	a,#0x80
      0029C0 C0 E0            [24] 1116 	push	acc
      0029C2 12 3A E1         [24] 1117 	lcall	_printf
      0029C5 15 81            [12] 1118 	dec	sp
      0029C7 15 81            [12] 1119 	dec	sp
      0029C9 15 81            [12] 1120 	dec	sp
                                   1121 ;	main.c:76: printf("9 --> Display Menu\n\r");
      0029CB 74 3E            [12] 1122 	mov	a,#___str_11
      0029CD C0 E0            [24] 1123 	push	acc
      0029CF 74 47            [12] 1124 	mov	a,#(___str_11 >> 8)
      0029D1 C0 E0            [24] 1125 	push	acc
      0029D3 74 80            [12] 1126 	mov	a,#0x80
      0029D5 C0 E0            [24] 1127 	push	acc
      0029D7 12 3A E1         [24] 1128 	lcall	_printf
      0029DA 15 81            [12] 1129 	dec	sp
      0029DC 15 81            [12] 1130 	dec	sp
      0029DE 15 81            [12] 1131 	dec	sp
                                   1132 ;	main.c:77: printf("A --> Send ARP Request\n\r");
      0029E0 74 53            [12] 1133 	mov	a,#___str_12
      0029E2 C0 E0            [24] 1134 	push	acc
      0029E4 74 47            [12] 1135 	mov	a,#(___str_12 >> 8)
      0029E6 C0 E0            [24] 1136 	push	acc
      0029E8 74 80            [12] 1137 	mov	a,#0x80
      0029EA C0 E0            [24] 1138 	push	acc
      0029EC 12 3A E1         [24] 1139 	lcall	_printf
      0029EF 15 81            [12] 1140 	dec	sp
      0029F1 15 81            [12] 1141 	dec	sp
      0029F3 15 81            [12] 1142 	dec	sp
                                   1143 ;	main.c:78: printf("B --> Init RX buffers\n\r");
      0029F5 74 6C            [12] 1144 	mov	a,#___str_13
      0029F7 C0 E0            [24] 1145 	push	acc
      0029F9 74 47            [12] 1146 	mov	a,#(___str_13 >> 8)
      0029FB C0 E0            [24] 1147 	push	acc
      0029FD 74 80            [12] 1148 	mov	a,#0x80
      0029FF C0 E0            [24] 1149 	push	acc
      002A01 12 3A E1         [24] 1150 	lcall	_printf
      002A04 15 81            [12] 1151 	dec	sp
      002A06 15 81            [12] 1152 	dec	sp
      002A08 15 81            [12] 1153 	dec	sp
                                   1154 ;	main.c:79: printf("C --> Hard Reset(nRESET pin)\n\r");
      002A0A 74 84            [12] 1155 	mov	a,#___str_14
      002A0C C0 E0            [24] 1156 	push	acc
      002A0E 74 47            [12] 1157 	mov	a,#(___str_14 >> 8)
      002A10 C0 E0            [24] 1158 	push	acc
      002A12 74 80            [12] 1159 	mov	a,#0x80
      002A14 C0 E0            [24] 1160 	push	acc
      002A16 12 3A E1         [24] 1161 	lcall	_printf
      002A19 15 81            [12] 1162 	dec	sp
      002A1B 15 81            [12] 1163 	dec	sp
      002A1D 15 81            [12] 1164 	dec	sp
                                   1165 ;	main.c:81: char c = getchar();
      002A1F 12 38 CB         [24] 1166 	lcall	_getchar
      002A22 AE 82            [24] 1167 	mov	r6, dpl
                                   1168 ;	main.c:82: putchar(c);
      002A24 8E 05            [24] 1169 	mov	ar5,r6
      002A26 7F 00            [12] 1170 	mov	r7,#0x00
      002A28 8D 82            [24] 1171 	mov	dpl, r5
      002A2A 8F 83            [24] 1172 	mov	dph, r7
      002A2C C0 06            [24] 1173 	push	ar6
      002A2E 12 38 AC         [24] 1174 	lcall	_putchar
                                   1175 ;	main.c:83: printf("\n\r");
      002A31 74 5B            [12] 1176 	mov	a,#___str_0
      002A33 C0 E0            [24] 1177 	push	acc
      002A35 74 46            [12] 1178 	mov	a,#(___str_0 >> 8)
      002A37 C0 E0            [24] 1179 	push	acc
      002A39 74 80            [12] 1180 	mov	a,#0x80
      002A3B C0 E0            [24] 1181 	push	acc
      002A3D 12 3A E1         [24] 1182 	lcall	_printf
      002A40 15 81            [12] 1183 	dec	sp
      002A42 15 81            [12] 1184 	dec	sp
      002A44 15 81            [12] 1185 	dec	sp
      002A46 D0 06            [24] 1186 	pop	ar6
                                   1187 ;	main.c:85: switch(c)
      002A48 BE 31 00         [24] 1188 	cjne	r6,#0x31,00172$
      002A4B                       1189 00172$:
      002A4B 50 03            [24] 1190 	jnc	00173$
      002A4D 02 2F 89         [24] 1191 	ljmp	00115$
      002A50                       1192 00173$:
      002A50 EE               [12] 1193 	mov	a,r6
      002A51 24 BC            [12] 1194 	add	a,#0xff - 0x43
      002A53 50 03            [24] 1195 	jnc	00174$
      002A55 02 2F 89         [24] 1196 	ljmp	00115$
      002A58                       1197 00174$:
      002A58 EE               [12] 1198 	mov	a,r6
      002A59 24 CF            [12] 1199 	add	a,#0xcf
      002A5B FE               [12] 1200 	mov	r6,a
      002A5C 24 0A            [12] 1201 	add	a,#(00175$-3-.)
      002A5E 83               [24] 1202 	movc	a,@a+pc
      002A5F F5 82            [12] 1203 	mov	dpl,a
      002A61 EE               [12] 1204 	mov	a,r6
      002A62 24 17            [12] 1205 	add	a,#(00176$-3-.)
      002A64 83               [24] 1206 	movc	a,@a+pc
      002A65 F5 83            [12] 1207 	mov	dph,a
      002A67 E4               [12] 1208 	clr	a
      002A68 73               [24] 1209 	jmp	@a+dptr
      002A69                       1210 00175$:
      002A69 8F                    1211 	.db	00101$
      002A6A F7                    1212 	.db	00102$
      002A6B F5                    1213 	.db	00104$
      002A6C 03                    1214 	.db	00105$
      002A6D 65                    1215 	.db	00106$
      002A6E D0                    1216 	.db	00107$
      002A6F 0B                    1217 	.db	00108$
      002A70 26                    1218 	.db	00109$
      002A71 88                    1219 	.db	00110$
      002A72 89                    1220 	.db	00115$
      002A73 89                    1221 	.db	00115$
      002A74 89                    1222 	.db	00115$
      002A75 89                    1223 	.db	00115$
      002A76 89                    1224 	.db	00115$
      002A77 89                    1225 	.db	00115$
      002A78 89                    1226 	.db	00115$
      002A79 48                    1227 	.db	00111$
      002A7A 51                    1228 	.db	00112$
      002A7B 57                    1229 	.db	00113$
      002A7C                       1230 00176$:
      002A7C 2A                    1231 	.db	00101$>>8
      002A7D 2A                    1232 	.db	00102$>>8
      002A7E 2B                    1233 	.db	00104$>>8
      002A7F 2D                    1234 	.db	00105$>>8
      002A80 2D                    1235 	.db	00106$>>8
      002A81 2D                    1236 	.db	00107$>>8
      002A82 2E                    1237 	.db	00108$>>8
      002A83 2E                    1238 	.db	00109$>>8
      002A84 2E                    1239 	.db	00110$>>8
      002A85 2F                    1240 	.db	00115$>>8
      002A86 2F                    1241 	.db	00115$>>8
      002A87 2F                    1242 	.db	00115$>>8
      002A88 2F                    1243 	.db	00115$>>8
      002A89 2F                    1244 	.db	00115$>>8
      002A8A 2F                    1245 	.db	00115$>>8
      002A8B 2F                    1246 	.db	00115$>>8
      002A8C 2F                    1247 	.db	00111$>>8
      002A8D 2F                    1248 	.db	00112$>>8
      002A8E 2F                    1249 	.db	00113$>>8
                                   1250 ;	main.c:87: case '1': {
      002A8F                       1251 00101$:
                                   1252 ;	main.c:88: printf("Enter the register bank to select:\n\r");
      002A8F 74 A3            [12] 1253 	mov	a,#___str_15
      002A91 C0 E0            [24] 1254 	push	acc
      002A93 74 47            [12] 1255 	mov	a,#(___str_15 >> 8)
      002A95 C0 E0            [24] 1256 	push	acc
      002A97 74 80            [12] 1257 	mov	a,#0x80
      002A99 C0 E0            [24] 1258 	push	acc
      002A9B 12 3A E1         [24] 1259 	lcall	_printf
      002A9E 15 81            [12] 1260 	dec	sp
      002AA0 15 81            [12] 1261 	dec	sp
      002AA2 15 81            [12] 1262 	dec	sp
                                   1263 ;	main.c:89: uint8_t reg_bank = get_user_buffer_size();
      002AA4 12 28 6D         [24] 1264 	lcall	_get_user_buffer_size
      002AA7 AE 82            [24] 1265 	mov	r6, dpl
                                   1266 ;	main.c:90: printf("Enter the address of the Control Register:\n\r");
      002AA9 C0 06            [24] 1267 	push	ar6
      002AAB 74 C8            [12] 1268 	mov	a,#___str_16
      002AAD C0 E0            [24] 1269 	push	acc
      002AAF 74 47            [12] 1270 	mov	a,#(___str_16 >> 8)
      002AB1 C0 E0            [24] 1271 	push	acc
      002AB3 74 80            [12] 1272 	mov	a,#0x80
      002AB5 C0 E0            [24] 1273 	push	acc
      002AB7 12 3A E1         [24] 1274 	lcall	_printf
      002ABA 15 81            [12] 1275 	dec	sp
      002ABC 15 81            [12] 1276 	dec	sp
      002ABE 15 81            [12] 1277 	dec	sp
                                   1278 ;	main.c:91: uint8_t addr = get_user_buffer_size();
      002AC0 12 28 6D         [24] 1279 	lcall	_get_user_buffer_size
      002AC3 AD 82            [24] 1280 	mov	r5, dpl
                                   1281 ;	main.c:92: printf("Enter the data you want to write:\n\r");
      002AC5 C0 05            [24] 1282 	push	ar5
      002AC7 74 F5            [12] 1283 	mov	a,#___str_17
      002AC9 C0 E0            [24] 1284 	push	acc
      002ACB 74 47            [12] 1285 	mov	a,#(___str_17 >> 8)
      002ACD C0 E0            [24] 1286 	push	acc
      002ACF 74 80            [12] 1287 	mov	a,#0x80
      002AD1 C0 E0            [24] 1288 	push	acc
      002AD3 12 3A E1         [24] 1289 	lcall	_printf
      002AD6 15 81            [12] 1290 	dec	sp
      002AD8 15 81            [12] 1291 	dec	sp
      002ADA 15 81            [12] 1292 	dec	sp
                                   1293 ;	main.c:93: uint8_t data = get_user_buffer_size();
      002ADC 12 28 6D         [24] 1294 	lcall	_get_user_buffer_size
      002ADF AC 82            [24] 1295 	mov	r4, dpl
      002AE1 D0 05            [24] 1296 	pop	ar5
      002AE3 D0 06            [24] 1297 	pop	ar6
                                   1298 ;	main.c:94: spi_control_write(reg_bank, addr, data);
      002AE5 90 03 63         [24] 1299 	mov	dptr,#_spi_control_write_PARM_2
      002AE8 ED               [12] 1300 	mov	a,r5
      002AE9 F0               [24] 1301 	movx	@dptr,a
      002AEA 90 03 64         [24] 1302 	mov	dptr,#_spi_control_write_PARM_3
      002AED EC               [12] 1303 	mov	a,r4
      002AEE F0               [24] 1304 	movx	@dptr,a
      002AEF 8E 82            [24] 1305 	mov	dpl, r6
      002AF1 12 30 BC         [24] 1306 	lcall	_spi_control_write
                                   1307 ;	main.c:95: break;
      002AF4 02 29 0E         [24] 1308 	ljmp	00118$
                                   1309 ;	main.c:97: case '2': {
      002AF7                       1310 00102$:
                                   1311 ;	main.c:98: printf("Enter the number of bytes to write:\n\r");
      002AF7 74 19            [12] 1312 	mov	a,#___str_18
      002AF9 C0 E0            [24] 1313 	push	acc
      002AFB 74 48            [12] 1314 	mov	a,#(___str_18 >> 8)
      002AFD C0 E0            [24] 1315 	push	acc
      002AFF 74 80            [12] 1316 	mov	a,#0x80
      002B01 C0 E0            [24] 1317 	push	acc
      002B03 12 3A E1         [24] 1318 	lcall	_printf
      002B06 15 81            [12] 1319 	dec	sp
      002B08 15 81            [12] 1320 	dec	sp
      002B0A 15 81            [12] 1321 	dec	sp
                                   1322 ;	main.c:99: int num_bytes = get_user_buffer_size();
      002B0C 12 28 6D         [24] 1323 	lcall	_get_user_buffer_size
      002B0F AE 82            [24] 1324 	mov	r6, dpl
      002B11 AF 83            [24] 1325 	mov	r7, dph
                                   1326 ;	main.c:100: printf("Enter the starting address:\n\r");
      002B13 C0 07            [24] 1327 	push	ar7
      002B15 C0 06            [24] 1328 	push	ar6
      002B17 74 3F            [12] 1329 	mov	a,#___str_19
      002B19 C0 E0            [24] 1330 	push	acc
      002B1B 74 48            [12] 1331 	mov	a,#(___str_19 >> 8)
      002B1D C0 E0            [24] 1332 	push	acc
      002B1F 74 80            [12] 1333 	mov	a,#0x80
      002B21 C0 E0            [24] 1334 	push	acc
      002B23 12 3A E1         [24] 1335 	lcall	_printf
      002B26 15 81            [12] 1336 	dec	sp
      002B28 15 81            [12] 1337 	dec	sp
      002B2A 15 81            [12] 1338 	dec	sp
                                   1339 ;	main.c:101: uint16_t start_address = get_user_buffer_size();
      002B2C 12 28 6D         [24] 1340 	lcall	_get_user_buffer_size
      002B2F AC 82            [24] 1341 	mov	r4, dpl
      002B31 AD 83            [24] 1342 	mov	r5, dph
      002B33 D0 06            [24] 1343 	pop	ar6
      002B35 D0 07            [24] 1344 	pop	ar7
                                   1345 ;	main.c:103: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      002B37 C0 07            [24] 1346 	push	ar7
      002B39 C0 06            [24] 1347 	push	ar6
      002B3B C0 05            [24] 1348 	push	ar5
      002B3D C0 04            [24] 1349 	push	ar4
      002B3F C0 06            [24] 1350 	push	ar6
      002B41 C0 07            [24] 1351 	push	ar7
      002B43 74 5D            [12] 1352 	mov	a,#___str_20
      002B45 C0 E0            [24] 1353 	push	acc
      002B47 74 48            [12] 1354 	mov	a,#(___str_20 >> 8)
      002B49 C0 E0            [24] 1355 	push	acc
      002B4B 74 80            [12] 1356 	mov	a,#0x80
      002B4D C0 E0            [24] 1357 	push	acc
      002B4F 12 3A E1         [24] 1358 	lcall	_printf
      002B52 E5 81            [12] 1359 	mov	a,sp
      002B54 24 FB            [12] 1360 	add	a,#0xfb
      002B56 F5 81            [12] 1361 	mov	sp,a
      002B58 D0 04            [24] 1362 	pop	ar4
      002B5A D0 05            [24] 1363 	pop	ar5
      002B5C D0 06            [24] 1364 	pop	ar6
      002B5E D0 07            [24] 1365 	pop	ar7
                                   1366 ;	main.c:104: for (int i = 0; i < num_bytes; i++) {
      002B60 7A 00            [12] 1367 	mov	r2,#0x00
      002B62 7B 00            [12] 1368 	mov	r3,#0x00
      002B64                       1369 00121$:
      002B64 C3               [12] 1370 	clr	c
      002B65 EA               [12] 1371 	mov	a,r2
      002B66 9E               [12] 1372 	subb	a,r6
      002B67 EB               [12] 1373 	mov	a,r3
      002B68 64 80            [12] 1374 	xrl	a,#0x80
      002B6A 8F F0            [24] 1375 	mov	b,r7
      002B6C 63 F0 80         [24] 1376 	xrl	b,#0x80
      002B6F 95 F0            [12] 1377 	subb	a,b
      002B71 50 63            [24] 1378 	jnc	00103$
                                   1379 ;	main.c:105: printf("Byte %d: ", i);
      002B73 C0 04            [24] 1380 	push	ar4
      002B75 C0 05            [24] 1381 	push	ar5
      002B77 C0 07            [24] 1382 	push	ar7
      002B79 C0 06            [24] 1383 	push	ar6
      002B7B C0 05            [24] 1384 	push	ar5
      002B7D C0 04            [24] 1385 	push	ar4
      002B7F C0 03            [24] 1386 	push	ar3
      002B81 C0 02            [24] 1387 	push	ar2
      002B83 C0 02            [24] 1388 	push	ar2
      002B85 C0 03            [24] 1389 	push	ar3
      002B87 74 80            [12] 1390 	mov	a,#___str_21
      002B89 C0 E0            [24] 1391 	push	acc
      002B8B 74 48            [12] 1392 	mov	a,#(___str_21 >> 8)
      002B8D C0 E0            [24] 1393 	push	acc
      002B8F 74 80            [12] 1394 	mov	a,#0x80
      002B91 C0 E0            [24] 1395 	push	acc
      002B93 12 3A E1         [24] 1396 	lcall	_printf
      002B96 E5 81            [12] 1397 	mov	a,sp
      002B98 24 FB            [12] 1398 	add	a,#0xfb
      002B9A F5 81            [12] 1399 	mov	sp,a
      002B9C D0 02            [24] 1400 	pop	ar2
      002B9E D0 03            [24] 1401 	pop	ar3
      002BA0 D0 04            [24] 1402 	pop	ar4
      002BA2 D0 05            [24] 1403 	pop	ar5
                                   1404 ;	main.c:106: buffer[i] = get_user_buffer_size();
      002BA4 EA               [12] 1405 	mov	a,r2
      002BA5 24 60            [12] 1406 	add	a, #_main_buffer_40003_94
      002BA7 F8               [12] 1407 	mov	r0,a
      002BA8 EB               [12] 1408 	mov	a,r3
      002BA9 34 01            [12] 1409 	addc	a, #(_main_buffer_40003_94 >> 8)
      002BAB F9               [12] 1410 	mov	r1,a
      002BAC C0 03            [24] 1411 	push	ar3
      002BAE C0 02            [24] 1412 	push	ar2
      002BB0 C0 01            [24] 1413 	push	ar1
      002BB2 C0 00            [24] 1414 	push	ar0
      002BB4 12 28 6D         [24] 1415 	lcall	_get_user_buffer_size
      002BB7 AC 82            [24] 1416 	mov	r4, dpl
      002BB9 D0 00            [24] 1417 	pop	ar0
      002BBB D0 01            [24] 1418 	pop	ar1
      002BBD D0 02            [24] 1419 	pop	ar2
      002BBF D0 03            [24] 1420 	pop	ar3
      002BC1 D0 06            [24] 1421 	pop	ar6
      002BC3 D0 07            [24] 1422 	pop	ar7
      002BC5 88 82            [24] 1423 	mov	dpl,r0
      002BC7 89 83            [24] 1424 	mov	dph,r1
      002BC9 EC               [12] 1425 	mov	a,r4
      002BCA F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	main.c:104: for (int i = 0; i < num_bytes; i++) {
      002BCB 0A               [12] 1428 	inc	r2
      002BCC BA 00 01         [24] 1429 	cjne	r2,#0x00,00178$
      002BCF 0B               [12] 1430 	inc	r3
      002BD0                       1431 00178$:
      002BD0 D0 05            [24] 1432 	pop	ar5
      002BD2 D0 04            [24] 1433 	pop	ar4
      002BD4 80 8E            [24] 1434 	sjmp	00121$
      002BD6                       1435 00103$:
                                   1436 ;	main.c:108: spi_buffer_write(num_bytes, start_address, buffer);
      002BD6 90 03 7D         [24] 1437 	mov	dptr,#_spi_buffer_write_PARM_2
      002BD9 EC               [12] 1438 	mov	a,r4
      002BDA F0               [24] 1439 	movx	@dptr,a
      002BDB ED               [12] 1440 	mov	a,r5
      002BDC A3               [24] 1441 	inc	dptr
      002BDD F0               [24] 1442 	movx	@dptr,a
      002BDE 90 03 7F         [24] 1443 	mov	dptr,#_spi_buffer_write_PARM_3
      002BE1 74 60            [12] 1444 	mov	a,#_main_buffer_40003_94
      002BE3 F0               [24] 1445 	movx	@dptr,a
      002BE4 74 01            [12] 1446 	mov	a,#(_main_buffer_40003_94 >> 8)
      002BE6 A3               [24] 1447 	inc	dptr
      002BE7 F0               [24] 1448 	movx	@dptr,a
      002BE8 E4               [12] 1449 	clr	a
      002BE9 A3               [24] 1450 	inc	dptr
      002BEA F0               [24] 1451 	movx	@dptr,a
      002BEB 8E 82            [24] 1452 	mov	dpl, r6
      002BED 8F 83            [24] 1453 	mov	dph, r7
      002BEF 12 36 38         [24] 1454 	lcall	_spi_buffer_write
                                   1455 ;	main.c:109: break;
      002BF2 02 29 0E         [24] 1456 	ljmp	00118$
                                   1457 ;	main.c:111: case '3': {
      002BF5                       1458 00104$:
                                   1459 ;	main.c:112: printf("Enter the number of bytes to read:\n\r");
      002BF5 74 8A            [12] 1460 	mov	a,#___str_22
      002BF7 C0 E0            [24] 1461 	push	acc
      002BF9 74 48            [12] 1462 	mov	a,#(___str_22 >> 8)
      002BFB C0 E0            [24] 1463 	push	acc
      002BFD 74 80            [12] 1464 	mov	a,#0x80
      002BFF C0 E0            [24] 1465 	push	acc
      002C01 12 3A E1         [24] 1466 	lcall	_printf
      002C04 15 81            [12] 1467 	dec	sp
      002C06 15 81            [12] 1468 	dec	sp
      002C08 15 81            [12] 1469 	dec	sp
                                   1470 ;	main.c:113: int num_bytes = get_user_buffer_size();
      002C0A 12 28 6D         [24] 1471 	lcall	_get_user_buffer_size
      002C0D AE 82            [24] 1472 	mov	r6, dpl
      002C0F AF 83            [24] 1473 	mov	r7, dph
                                   1474 ;	main.c:114: printf("Enter the starting address:\n\r");
      002C11 C0 07            [24] 1475 	push	ar7
      002C13 C0 06            [24] 1476 	push	ar6
      002C15 74 3F            [12] 1477 	mov	a,#___str_19
      002C17 C0 E0            [24] 1478 	push	acc
      002C19 74 48            [12] 1479 	mov	a,#(___str_19 >> 8)
      002C1B C0 E0            [24] 1480 	push	acc
      002C1D 74 80            [12] 1481 	mov	a,#0x80
      002C1F C0 E0            [24] 1482 	push	acc
      002C21 12 3A E1         [24] 1483 	lcall	_printf
      002C24 15 81            [12] 1484 	dec	sp
      002C26 15 81            [12] 1485 	dec	sp
      002C28 15 81            [12] 1486 	dec	sp
                                   1487 ;	main.c:115: uint16_t start_address = get_user_buffer_size();
      002C2A 12 28 6D         [24] 1488 	lcall	_get_user_buffer_size
      002C2D AC 82            [24] 1489 	mov	r4, dpl
      002C2F AD 83            [24] 1490 	mov	r5, dph
      002C31 D0 06            [24] 1491 	pop	ar6
      002C33 D0 07            [24] 1492 	pop	ar7
                                   1493 ;	main.c:117: spi_buffer_read(num_bytes, start_address, buffer);
      002C35 90 03 74         [24] 1494 	mov	dptr,#_spi_buffer_read_PARM_2
      002C38 EC               [12] 1495 	mov	a,r4
      002C39 F0               [24] 1496 	movx	@dptr,a
      002C3A ED               [12] 1497 	mov	a,r5
      002C3B A3               [24] 1498 	inc	dptr
      002C3C F0               [24] 1499 	movx	@dptr,a
      002C3D 90 03 76         [24] 1500 	mov	dptr,#_spi_buffer_read_PARM_3
      002C40 74 60            [12] 1501 	mov	a,#_main_buffer_40003_99
      002C42 F0               [24] 1502 	movx	@dptr,a
      002C43 74 02            [12] 1503 	mov	a,#(_main_buffer_40003_99 >> 8)
      002C45 A3               [24] 1504 	inc	dptr
      002C46 F0               [24] 1505 	movx	@dptr,a
      002C47 E4               [12] 1506 	clr	a
      002C48 A3               [24] 1507 	inc	dptr
      002C49 F0               [24] 1508 	movx	@dptr,a
      002C4A 8E 82            [24] 1509 	mov	dpl, r6
      002C4C 8F 83            [24] 1510 	mov	dph, r7
      002C4E C0 07            [24] 1511 	push	ar7
      002C50 C0 06            [24] 1512 	push	ar6
      002C52 12 34 97         [24] 1513 	lcall	_spi_buffer_read
      002C55 D0 06            [24] 1514 	pop	ar6
      002C57 D0 07            [24] 1515 	pop	ar7
                                   1516 ;	main.c:127: uint8_t erxrdpt_low = mac_spi_read(0x0C, 0);  // ERXRDPTL
      002C59 90 03 6C         [24] 1517 	mov	dptr,#_mac_spi_read_PARM_2
      002C5C E4               [12] 1518 	clr	a
      002C5D F0               [24] 1519 	movx	@dptr,a
      002C5E 75 82 0C         [24] 1520 	mov	dpl, #0x0c
      002C61 C0 07            [24] 1521 	push	ar7
      002C63 C0 06            [24] 1522 	push	ar6
      002C65 12 32 32         [24] 1523 	lcall	_mac_spi_read
      002C68 AD 82            [24] 1524 	mov	r5, dpl
      002C6A D0 06            [24] 1525 	pop	ar6
      002C6C D0 07            [24] 1526 	pop	ar7
                                   1527 ;	main.c:128: uint8_t erxrdpt_high = mac_spi_read(0x0D, 0); // ERXRDPTH
      002C6E 90 03 6C         [24] 1528 	mov	dptr,#_mac_spi_read_PARM_2
      002C71 E4               [12] 1529 	clr	a
      002C72 F0               [24] 1530 	movx	@dptr,a
      002C73 75 82 0D         [24] 1531 	mov	dpl, #0x0d
      002C76 C0 07            [24] 1532 	push	ar7
      002C78 C0 06            [24] 1533 	push	ar6
      002C7A C0 05            [24] 1534 	push	ar5
      002C7C 12 32 32         [24] 1535 	lcall	_mac_spi_read
      002C7F AC 82            [24] 1536 	mov	r4, dpl
      002C81 D0 05            [24] 1537 	pop	ar5
                                   1538 ;	main.c:129: current_erxrdpt = ((uint16_t)erxrdpt_high << 8) | erxrdpt_low;
      002C83 8C 03            [24] 1539 	mov	ar3,r4
      002C85 E4               [12] 1540 	clr	a
      002C86 FC               [12] 1541 	mov	r4,a
      002C87 FA               [12] 1542 	mov	r2,a
      002C88 ED               [12] 1543 	mov	a,r5
      002C89 42 04            [12] 1544 	orl	ar4,a
      002C8B EA               [12] 1545 	mov	a,r2
      002C8C 42 03            [12] 1546 	orl	ar3,a
                                   1547 ;	main.c:131: printf("Current ERXRDPT: 0x%04X\n\r", current_erxrdpt);
      002C8E C0 04            [24] 1548 	push	ar4
      002C90 C0 03            [24] 1549 	push	ar3
      002C92 C0 04            [24] 1550 	push	ar4
      002C94 C0 03            [24] 1551 	push	ar3
      002C96 74 AF            [12] 1552 	mov	a,#___str_23
      002C98 C0 E0            [24] 1553 	push	acc
      002C9A 74 48            [12] 1554 	mov	a,#(___str_23 >> 8)
      002C9C C0 E0            [24] 1555 	push	acc
      002C9E 74 80            [12] 1556 	mov	a,#0x80
      002CA0 C0 E0            [24] 1557 	push	acc
      002CA2 12 3A E1         [24] 1558 	lcall	_printf
      002CA5 E5 81            [12] 1559 	mov	a,sp
      002CA7 24 FB            [12] 1560 	add	a,#0xfb
      002CA9 F5 81            [12] 1561 	mov	sp,a
      002CAB D0 03            [24] 1562 	pop	ar3
      002CAD D0 04            [24] 1563 	pop	ar4
      002CAF D0 06            [24] 1564 	pop	ar6
      002CB1 D0 07            [24] 1565 	pop	ar7
                                   1566 ;	main.c:134: current_erxrdpt += num_bytes;
      002CB3 EE               [12] 1567 	mov	a,r6
      002CB4 2C               [12] 1568 	add	a, r4
      002CB5 FC               [12] 1569 	mov	r4,a
      002CB6 EF               [12] 1570 	mov	a,r7
      002CB7 3B               [12] 1571 	addc	a, r3
      002CB8 FB               [12] 1572 	mov	r3,a
                                   1573 ;	main.c:137: spi_control_write(0, 0x0C, (uint8_t)(current_erxrdpt & 0xFF));  // ERXRDPTL (low byte)
      002CB9 8C 07            [24] 1574 	mov	ar7,r4
      002CBB 90 03 63         [24] 1575 	mov	dptr,#_spi_control_write_PARM_2
      002CBE 74 0C            [12] 1576 	mov	a,#0x0c
      002CC0 F0               [24] 1577 	movx	@dptr,a
      002CC1 90 03 64         [24] 1578 	mov	dptr,#_spi_control_write_PARM_3
      002CC4 EF               [12] 1579 	mov	a,r7
      002CC5 F0               [24] 1580 	movx	@dptr,a
      002CC6 75 82 00         [24] 1581 	mov	dpl, #0x00
      002CC9 C0 04            [24] 1582 	push	ar4
      002CCB C0 03            [24] 1583 	push	ar3
      002CCD 12 30 BC         [24] 1584 	lcall	_spi_control_write
      002CD0 D0 03            [24] 1585 	pop	ar3
      002CD2 D0 04            [24] 1586 	pop	ar4
                                   1587 ;	main.c:138: spi_control_write(0, 0x0D, (uint8_t)((current_erxrdpt >> 8) & 0xFF));  // ERXRDPTH (high byte)
      002CD4 8B 07            [24] 1588 	mov	ar7,r3
      002CD6 90 03 63         [24] 1589 	mov	dptr,#_spi_control_write_PARM_2
      002CD9 74 0D            [12] 1590 	mov	a,#0x0d
      002CDB F0               [24] 1591 	movx	@dptr,a
      002CDC 90 03 64         [24] 1592 	mov	dptr,#_spi_control_write_PARM_3
      002CDF EF               [12] 1593 	mov	a,r7
      002CE0 F0               [24] 1594 	movx	@dptr,a
      002CE1 75 82 00         [24] 1595 	mov	dpl, #0x00
      002CE4 C0 04            [24] 1596 	push	ar4
      002CE6 C0 03            [24] 1597 	push	ar3
      002CE8 12 30 BC         [24] 1598 	lcall	_spi_control_write
                                   1599 ;	main.c:140: printf("Updated ERXRDPT to: 0x%04X\n\r", current_erxrdpt);
      002CEB 74 C9            [12] 1600 	mov	a,#___str_24
      002CED C0 E0            [24] 1601 	push	acc
      002CEF 74 48            [12] 1602 	mov	a,#(___str_24 >> 8)
      002CF1 C0 E0            [24] 1603 	push	acc
      002CF3 74 80            [12] 1604 	mov	a,#0x80
      002CF5 C0 E0            [24] 1605 	push	acc
      002CF7 12 3A E1         [24] 1606 	lcall	_printf
      002CFA E5 81            [12] 1607 	mov	a,sp
      002CFC 24 FB            [12] 1608 	add	a,#0xfb
      002CFE F5 81            [12] 1609 	mov	sp,a
                                   1610 ;	main.c:144: break;
      002D00 02 29 0E         [24] 1611 	ljmp	00118$
                                   1612 ;	main.c:146: case '4': {
      002D03                       1613 00105$:
                                   1614 ;	main.c:147: printf("Enter the MAC register bank to select:\n\r");
      002D03 74 E6            [12] 1615 	mov	a,#___str_25
      002D05 C0 E0            [24] 1616 	push	acc
      002D07 74 48            [12] 1617 	mov	a,#(___str_25 >> 8)
      002D09 C0 E0            [24] 1618 	push	acc
      002D0B 74 80            [12] 1619 	mov	a,#0x80
      002D0D C0 E0            [24] 1620 	push	acc
      002D0F 12 3A E1         [24] 1621 	lcall	_printf
      002D12 15 81            [12] 1622 	dec	sp
      002D14 15 81            [12] 1623 	dec	sp
      002D16 15 81            [12] 1624 	dec	sp
                                   1625 ;	main.c:148: uint8_t reg_bank = get_user_buffer_size();
      002D18 12 28 6D         [24] 1626 	lcall	_get_user_buffer_size
      002D1B AE 82            [24] 1627 	mov	r6, dpl
                                   1628 ;	main.c:149: printf("Enter the address of the MAC Register:\n\r");
      002D1D C0 06            [24] 1629 	push	ar6
      002D1F 74 0F            [12] 1630 	mov	a,#___str_26
      002D21 C0 E0            [24] 1631 	push	acc
      002D23 74 49            [12] 1632 	mov	a,#(___str_26 >> 8)
      002D25 C0 E0            [24] 1633 	push	acc
      002D27 74 80            [12] 1634 	mov	a,#0x80
      002D29 C0 E0            [24] 1635 	push	acc
      002D2B 12 3A E1         [24] 1636 	lcall	_printf
      002D2E 15 81            [12] 1637 	dec	sp
      002D30 15 81            [12] 1638 	dec	sp
      002D32 15 81            [12] 1639 	dec	sp
                                   1640 ;	main.c:150: uint8_t addr = get_user_buffer_size();
      002D34 12 28 6D         [24] 1641 	lcall	_get_user_buffer_size
      002D37 AD 82            [24] 1642 	mov	r5, dpl
      002D39 D0 06            [24] 1643 	pop	ar6
                                   1644 ;	main.c:151: uint8_t data = mac_spi_read(addr, reg_bank);
      002D3B 90 03 6C         [24] 1645 	mov	dptr,#_mac_spi_read_PARM_2
      002D3E EE               [12] 1646 	mov	a,r6
      002D3F F0               [24] 1647 	movx	@dptr,a
      002D40 8D 82            [24] 1648 	mov	dpl, r5
      002D42 12 32 32         [24] 1649 	lcall	_mac_spi_read
      002D45 AF 82            [24] 1650 	mov	r7, dpl
                                   1651 ;	main.c:152: printf("MAC Register Data: 0x%02X\n\r", data);
      002D47 7E 00            [12] 1652 	mov	r6,#0x00
      002D49 C0 07            [24] 1653 	push	ar7
      002D4B C0 06            [24] 1654 	push	ar6
      002D4D 74 38            [12] 1655 	mov	a,#___str_27
      002D4F C0 E0            [24] 1656 	push	acc
      002D51 74 49            [12] 1657 	mov	a,#(___str_27 >> 8)
      002D53 C0 E0            [24] 1658 	push	acc
      002D55 74 80            [12] 1659 	mov	a,#0x80
      002D57 C0 E0            [24] 1660 	push	acc
      002D59 12 3A E1         [24] 1661 	lcall	_printf
      002D5C E5 81            [12] 1662 	mov	a,sp
      002D5E 24 FB            [12] 1663 	add	a,#0xfb
      002D60 F5 81            [12] 1664 	mov	sp,a
                                   1665 ;	main.c:153: break;
      002D62 02 29 0E         [24] 1666 	ljmp	00118$
                                   1667 ;	main.c:155: case '5': {
      002D65                       1668 00106$:
                                   1669 ;	main.c:156: printf("Enter the PHY register address:\n\r");
      002D65 74 54            [12] 1670 	mov	a,#___str_28
      002D67 C0 E0            [24] 1671 	push	acc
      002D69 74 49            [12] 1672 	mov	a,#(___str_28 >> 8)
      002D6B C0 E0            [24] 1673 	push	acc
      002D6D 74 80            [12] 1674 	mov	a,#0x80
      002D6F C0 E0            [24] 1675 	push	acc
      002D71 12 3A E1         [24] 1676 	lcall	_printf
      002D74 15 81            [12] 1677 	dec	sp
      002D76 15 81            [12] 1678 	dec	sp
      002D78 15 81            [12] 1679 	dec	sp
                                   1680 ;	main.c:157: uint8_t addr = get_user_buffer_size();
      002D7A 12 28 6D         [24] 1681 	lcall	_get_user_buffer_size
      002D7D AE 82            [24] 1682 	mov	r6, dpl
                                   1683 ;	main.c:158: printf("Enter the 16-bit data to write:\n\r");
      002D7F C0 06            [24] 1684 	push	ar6
      002D81 74 76            [12] 1685 	mov	a,#___str_29
      002D83 C0 E0            [24] 1686 	push	acc
      002D85 74 49            [12] 1687 	mov	a,#(___str_29 >> 8)
      002D87 C0 E0            [24] 1688 	push	acc
      002D89 74 80            [12] 1689 	mov	a,#0x80
      002D8B C0 E0            [24] 1690 	push	acc
      002D8D 12 3A E1         [24] 1691 	lcall	_printf
      002D90 15 81            [12] 1692 	dec	sp
      002D92 15 81            [12] 1693 	dec	sp
      002D94 15 81            [12] 1694 	dec	sp
                                   1695 ;	main.c:159: uint16_t data = get_user_buffer_size();
      002D96 12 28 6D         [24] 1696 	lcall	_get_user_buffer_size
      002D99 AD 82            [24] 1697 	mov	r5, dpl
      002D9B AF 83            [24] 1698 	mov	r7, dph
      002D9D D0 06            [24] 1699 	pop	ar6
                                   1700 ;	main.c:160: phy_spi_write(addr, data);
      002D9F 90 03 69         [24] 1701 	mov	dptr,#_phy_spi_write_PARM_2
      002DA2 ED               [12] 1702 	mov	a,r5
      002DA3 F0               [24] 1703 	movx	@dptr,a
      002DA4 EF               [12] 1704 	mov	a,r7
      002DA5 A3               [24] 1705 	inc	dptr
      002DA6 F0               [24] 1706 	movx	@dptr,a
      002DA7 8E 82            [24] 1707 	mov	dpl, r6
      002DA9 C0 07            [24] 1708 	push	ar7
      002DAB C0 05            [24] 1709 	push	ar5
      002DAD 12 31 AF         [24] 1710 	lcall	_phy_spi_write
      002DB0 D0 05            [24] 1711 	pop	ar5
      002DB2 D0 07            [24] 1712 	pop	ar7
                                   1713 ;	main.c:161: printf("PHY Write Data: 0x%04X\n\r", data);
      002DB4 C0 05            [24] 1714 	push	ar5
      002DB6 C0 07            [24] 1715 	push	ar7
      002DB8 74 98            [12] 1716 	mov	a,#___str_30
      002DBA C0 E0            [24] 1717 	push	acc
      002DBC 74 49            [12] 1718 	mov	a,#(___str_30 >> 8)
      002DBE C0 E0            [24] 1719 	push	acc
      002DC0 74 80            [12] 1720 	mov	a,#0x80
      002DC2 C0 E0            [24] 1721 	push	acc
      002DC4 12 3A E1         [24] 1722 	lcall	_printf
      002DC7 E5 81            [12] 1723 	mov	a,sp
      002DC9 24 FB            [12] 1724 	add	a,#0xfb
      002DCB F5 81            [12] 1725 	mov	sp,a
                                   1726 ;	main.c:162: break;
      002DCD 02 29 0E         [24] 1727 	ljmp	00118$
                                   1728 ;	main.c:164: case '6': {
      002DD0                       1729 00107$:
                                   1730 ;	main.c:165: printf("Enter the PHY register address to read:\n\r");
      002DD0 74 B1            [12] 1731 	mov	a,#___str_31
      002DD2 C0 E0            [24] 1732 	push	acc
      002DD4 74 49            [12] 1733 	mov	a,#(___str_31 >> 8)
      002DD6 C0 E0            [24] 1734 	push	acc
      002DD8 74 80            [12] 1735 	mov	a,#0x80
      002DDA C0 E0            [24] 1736 	push	acc
      002DDC 12 3A E1         [24] 1737 	lcall	_printf
      002DDF 15 81            [12] 1738 	dec	sp
      002DE1 15 81            [12] 1739 	dec	sp
      002DE3 15 81            [12] 1740 	dec	sp
                                   1741 ;	main.c:166: uint8_t addr = get_user_buffer_size();
      002DE5 12 28 6D         [24] 1742 	lcall	_get_user_buffer_size
                                   1743 ;	main.c:167: uint16_t data = phy_spi_read(addr);
      002DE8 12 32 A0         [24] 1744 	lcall	_phy_spi_read
      002DEB AE 82            [24] 1745 	mov	r6, dpl
      002DED AF 83            [24] 1746 	mov	r7, dph
                                   1747 ;	main.c:168: printf("PHY Read Data: 0x%04X\n\r", data);
      002DEF C0 06            [24] 1748 	push	ar6
      002DF1 C0 07            [24] 1749 	push	ar7
      002DF3 74 DB            [12] 1750 	mov	a,#___str_32
      002DF5 C0 E0            [24] 1751 	push	acc
      002DF7 74 49            [12] 1752 	mov	a,#(___str_32 >> 8)
      002DF9 C0 E0            [24] 1753 	push	acc
      002DFB 74 80            [12] 1754 	mov	a,#0x80
      002DFD C0 E0            [24] 1755 	push	acc
      002DFF 12 3A E1         [24] 1756 	lcall	_printf
      002E02 E5 81            [12] 1757 	mov	a,sp
      002E04 24 FB            [12] 1758 	add	a,#0xfb
      002E06 F5 81            [12] 1759 	mov	sp,a
                                   1760 ;	main.c:169: break;
      002E08 02 29 0E         [24] 1761 	ljmp	00118$
                                   1762 ;	main.c:171: case '7': {
      002E0B                       1763 00108$:
                                   1764 ;	main.c:172: printf("Resetting ENC28J60...\n\r");
      002E0B 74 F3            [12] 1765 	mov	a,#___str_33
      002E0D C0 E0            [24] 1766 	push	acc
      002E0F 74 49            [12] 1767 	mov	a,#(___str_33 >> 8)
      002E11 C0 E0            [24] 1768 	push	acc
      002E13 74 80            [12] 1769 	mov	a,#0x80
      002E15 C0 E0            [24] 1770 	push	acc
      002E17 12 3A E1         [24] 1771 	lcall	_printf
      002E1A 15 81            [12] 1772 	dec	sp
      002E1C 15 81            [12] 1773 	dec	sp
      002E1E 15 81            [12] 1774 	dec	sp
                                   1775 ;	main.c:173: enc_reset();
      002E20 12 31 36         [24] 1776 	lcall	_enc_reset
                                   1777 ;	main.c:174: break;
      002E23 02 29 0E         [24] 1778 	ljmp	00118$
                                   1779 ;	main.c:176: case '8': {
      002E26                       1780 00109$:
                                   1781 ;	main.c:177: printf("Enter the ETH register address to read:\n\r");
      002E26 74 0B            [12] 1782 	mov	a,#___str_34
      002E28 C0 E0            [24] 1783 	push	acc
      002E2A 74 4A            [12] 1784 	mov	a,#(___str_34 >> 8)
      002E2C C0 E0            [24] 1785 	push	acc
      002E2E 74 80            [12] 1786 	mov	a,#0x80
      002E30 C0 E0            [24] 1787 	push	acc
      002E32 12 3A E1         [24] 1788 	lcall	_printf
      002E35 15 81            [12] 1789 	dec	sp
      002E37 15 81            [12] 1790 	dec	sp
      002E39 15 81            [12] 1791 	dec	sp
                                   1792 ;	main.c:178: uint8_t addr = get_user_buffer_size();
      002E3B 12 28 6D         [24] 1793 	lcall	_get_user_buffer_size
      002E3E AE 82            [24] 1794 	mov	r6, dpl
                                   1795 ;	main.c:179: printf("Enter the bank (0 or 1):\n\r");
      002E40 C0 06            [24] 1796 	push	ar6
      002E42 74 35            [12] 1797 	mov	a,#___str_35
      002E44 C0 E0            [24] 1798 	push	acc
      002E46 74 4A            [12] 1799 	mov	a,#(___str_35 >> 8)
      002E48 C0 E0            [24] 1800 	push	acc
      002E4A 74 80            [12] 1801 	mov	a,#0x80
      002E4C C0 E0            [24] 1802 	push	acc
      002E4E 12 3A E1         [24] 1803 	lcall	_printf
      002E51 15 81            [12] 1804 	dec	sp
      002E53 15 81            [12] 1805 	dec	sp
      002E55 15 81            [12] 1806 	dec	sp
                                   1807 ;	main.c:180: uint8_t bank = get_user_buffer_size();
      002E57 12 28 6D         [24] 1808 	lcall	_get_user_buffer_size
      002E5A AD 82            [24] 1809 	mov	r5, dpl
      002E5C D0 06            [24] 1810 	pop	ar6
      002E5E 90 03 67         [24] 1811 	mov	dptr,#_eth_spi_read_PARM_2
      002E61 ED               [12] 1812 	mov	a,r5
      002E62 F0               [24] 1813 	movx	@dptr,a
                                   1814 ;	main.c:181: uint8_t data = eth_spi_read(addr, bank);
      002E63 8E 82            [24] 1815 	mov	dpl, r6
      002E65 12 31 41         [24] 1816 	lcall	_eth_spi_read
      002E68 AF 82            [24] 1817 	mov	r7, dpl
                                   1818 ;	main.c:182: printf("ETH Register Data: 0x%02X\n\r", data);
      002E6A 7E 00            [12] 1819 	mov	r6,#0x00
      002E6C C0 07            [24] 1820 	push	ar7
      002E6E C0 06            [24] 1821 	push	ar6
      002E70 74 50            [12] 1822 	mov	a,#___str_36
      002E72 C0 E0            [24] 1823 	push	acc
      002E74 74 4A            [12] 1824 	mov	a,#(___str_36 >> 8)
      002E76 C0 E0            [24] 1825 	push	acc
      002E78 74 80            [12] 1826 	mov	a,#0x80
      002E7A C0 E0            [24] 1827 	push	acc
      002E7C 12 3A E1         [24] 1828 	lcall	_printf
      002E7F E5 81            [12] 1829 	mov	a,sp
      002E81 24 FB            [12] 1830 	add	a,#0xfb
      002E83 F5 81            [12] 1831 	mov	sp,a
                                   1832 ;	main.c:183: break;
      002E85 02 29 0E         [24] 1833 	ljmp	00118$
                                   1834 ;	main.c:185: case '9': {
      002E88                       1835 00110$:
                                   1836 ;	main.c:186: printf("\n\rChoose an action: \n\r");
      002E88 74 77            [12] 1837 	mov	a,#___str_2
      002E8A C0 E0            [24] 1838 	push	acc
      002E8C 74 46            [12] 1839 	mov	a,#(___str_2 >> 8)
      002E8E C0 E0            [24] 1840 	push	acc
      002E90 74 80            [12] 1841 	mov	a,#0x80
      002E92 C0 E0            [24] 1842 	push	acc
      002E94 12 3A E1         [24] 1843 	lcall	_printf
      002E97 15 81            [12] 1844 	dec	sp
      002E99 15 81            [12] 1845 	dec	sp
      002E9B 15 81            [12] 1846 	dec	sp
                                   1847 ;	main.c:187: printf("1 --> Control Write\n\r");
      002E9D 74 8E            [12] 1848 	mov	a,#___str_3
      002E9F C0 E0            [24] 1849 	push	acc
      002EA1 74 46            [12] 1850 	mov	a,#(___str_3 >> 8)
      002EA3 C0 E0            [24] 1851 	push	acc
      002EA5 74 80            [12] 1852 	mov	a,#0x80
      002EA7 C0 E0            [24] 1853 	push	acc
      002EA9 12 3A E1         [24] 1854 	lcall	_printf
      002EAC 15 81            [12] 1855 	dec	sp
      002EAE 15 81            [12] 1856 	dec	sp
      002EB0 15 81            [12] 1857 	dec	sp
                                   1858 ;	main.c:188: printf("2 --> Buffer Write\n\r");
      002EB2 74 A4            [12] 1859 	mov	a,#___str_4
      002EB4 C0 E0            [24] 1860 	push	acc
      002EB6 74 46            [12] 1861 	mov	a,#(___str_4 >> 8)
      002EB8 C0 E0            [24] 1862 	push	acc
      002EBA 74 80            [12] 1863 	mov	a,#0x80
      002EBC C0 E0            [24] 1864 	push	acc
      002EBE 12 3A E1         [24] 1865 	lcall	_printf
      002EC1 15 81            [12] 1866 	dec	sp
      002EC3 15 81            [12] 1867 	dec	sp
      002EC5 15 81            [12] 1868 	dec	sp
                                   1869 ;	main.c:189: printf("3 --> Buffer Read\n\r");
      002EC7 74 B9            [12] 1870 	mov	a,#___str_5
      002EC9 C0 E0            [24] 1871 	push	acc
      002ECB 74 46            [12] 1872 	mov	a,#(___str_5 >> 8)
      002ECD C0 E0            [24] 1873 	push	acc
      002ECF 74 80            [12] 1874 	mov	a,#0x80
      002ED1 C0 E0            [24] 1875 	push	acc
      002ED3 12 3A E1         [24] 1876 	lcall	_printf
      002ED6 15 81            [12] 1877 	dec	sp
      002ED8 15 81            [12] 1878 	dec	sp
      002EDA 15 81            [12] 1879 	dec	sp
                                   1880 ;	main.c:190: printf("4 --> MAC Register Read\n\r");
      002EDC 74 CD            [12] 1881 	mov	a,#___str_6
      002EDE C0 E0            [24] 1882 	push	acc
      002EE0 74 46            [12] 1883 	mov	a,#(___str_6 >> 8)
      002EE2 C0 E0            [24] 1884 	push	acc
      002EE4 74 80            [12] 1885 	mov	a,#0x80
      002EE6 C0 E0            [24] 1886 	push	acc
      002EE8 12 3A E1         [24] 1887 	lcall	_printf
      002EEB 15 81            [12] 1888 	dec	sp
      002EED 15 81            [12] 1889 	dec	sp
      002EEF 15 81            [12] 1890 	dec	sp
                                   1891 ;	main.c:191: printf("5 --> PHY SPI Write\n\r");
      002EF1 74 E7            [12] 1892 	mov	a,#___str_7
      002EF3 C0 E0            [24] 1893 	push	acc
      002EF5 74 46            [12] 1894 	mov	a,#(___str_7 >> 8)
      002EF7 C0 E0            [24] 1895 	push	acc
      002EF9 74 80            [12] 1896 	mov	a,#0x80
      002EFB C0 E0            [24] 1897 	push	acc
      002EFD 12 3A E1         [24] 1898 	lcall	_printf
      002F00 15 81            [12] 1899 	dec	sp
      002F02 15 81            [12] 1900 	dec	sp
      002F04 15 81            [12] 1901 	dec	sp
                                   1902 ;	main.c:192: printf("6 --> PHY SPI Read\n\r");
      002F06 74 FD            [12] 1903 	mov	a,#___str_8
      002F08 C0 E0            [24] 1904 	push	acc
      002F0A 74 46            [12] 1905 	mov	a,#(___str_8 >> 8)
      002F0C C0 E0            [24] 1906 	push	acc
      002F0E 74 80            [12] 1907 	mov	a,#0x80
      002F10 C0 E0            [24] 1908 	push	acc
      002F12 12 3A E1         [24] 1909 	lcall	_printf
      002F15 15 81            [12] 1910 	dec	sp
      002F17 15 81            [12] 1911 	dec	sp
      002F19 15 81            [12] 1912 	dec	sp
                                   1913 ;	main.c:193: printf("7 --> ENC Reset\n\r");
      002F1B 74 12            [12] 1914 	mov	a,#___str_9
      002F1D C0 E0            [24] 1915 	push	acc
      002F1F 74 47            [12] 1916 	mov	a,#(___str_9 >> 8)
      002F21 C0 E0            [24] 1917 	push	acc
      002F23 74 80            [12] 1918 	mov	a,#0x80
      002F25 C0 E0            [24] 1919 	push	acc
      002F27 12 3A E1         [24] 1920 	lcall	_printf
      002F2A 15 81            [12] 1921 	dec	sp
      002F2C 15 81            [12] 1922 	dec	sp
      002F2E 15 81            [12] 1923 	dec	sp
                                   1924 ;	main.c:194: printf("8 --> Read ETH Register\n\r");
      002F30 74 24            [12] 1925 	mov	a,#___str_10
      002F32 C0 E0            [24] 1926 	push	acc
      002F34 74 47            [12] 1927 	mov	a,#(___str_10 >> 8)
      002F36 C0 E0            [24] 1928 	push	acc
      002F38 74 80            [12] 1929 	mov	a,#0x80
      002F3A C0 E0            [24] 1930 	push	acc
      002F3C 12 3A E1         [24] 1931 	lcall	_printf
      002F3F 15 81            [12] 1932 	dec	sp
      002F41 15 81            [12] 1933 	dec	sp
      002F43 15 81            [12] 1934 	dec	sp
                                   1935 ;	main.c:195: break;
      002F45 02 29 0E         [24] 1936 	ljmp	00118$
                                   1937 ;	main.c:197: case 'A':{
      002F48                       1938 00111$:
                                   1939 ;	main.c:198: init_ENC();
      002F48 12 37 E4         [24] 1940 	lcall	_init_ENC
                                   1941 ;	main.c:200: send_arp_request();
      002F4B 12 23 F8         [24] 1942 	lcall	_send_arp_request
                                   1943 ;	main.c:201: break;
      002F4E 02 29 0E         [24] 1944 	ljmp	00118$
                                   1945 ;	main.c:203: case 'B':{
      002F51                       1946 00112$:
                                   1947 ;	main.c:204: init_ENC();
      002F51 12 37 E4         [24] 1948 	lcall	_init_ENC
                                   1949 ;	main.c:205: break;
      002F54 02 29 0E         [24] 1950 	ljmp	00118$
                                   1951 ;	main.c:207: case 'C':{
      002F57                       1952 00113$:
                                   1953 ;	main.c:208: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
      002F57 74 6C            [12] 1954 	mov	a,#___str_37
      002F59 C0 E0            [24] 1955 	push	acc
      002F5B 74 4A            [12] 1956 	mov	a,#(___str_37 >> 8)
      002F5D C0 E0            [24] 1957 	push	acc
      002F5F 74 80            [12] 1958 	mov	a,#0x80
      002F61 C0 E0            [24] 1959 	push	acc
      002F63 12 3A E1         [24] 1960 	lcall	_printf
      002F66 15 81            [12] 1961 	dec	sp
      002F68 15 81            [12] 1962 	dec	sp
      002F6A 15 81            [12] 1963 	dec	sp
                                   1964 ;	main.c:209: ENC_RESET = 0;
                                   1965 ;	assignBit
      002F6C C2 90            [12] 1966 	clr	_P1_0
                                   1967 ;	main.c:210: for(int i = 0; i < 6000; i++);
      002F6E 7E 00            [12] 1968 	mov	r6,#0x00
      002F70 7F 00            [12] 1969 	mov	r7,#0x00
      002F72                       1970 00124$:
      002F72 C3               [12] 1971 	clr	c
      002F73 EE               [12] 1972 	mov	a,r6
      002F74 94 70            [12] 1973 	subb	a,#0x70
      002F76 EF               [12] 1974 	mov	a,r7
      002F77 64 80            [12] 1975 	xrl	a,#0x80
      002F79 94 97            [12] 1976 	subb	a,#0x97
      002F7B 50 07            [24] 1977 	jnc	00114$
      002F7D 0E               [12] 1978 	inc	r6
      002F7E BE 00 F1         [24] 1979 	cjne	r6,#0x00,00124$
      002F81 0F               [12] 1980 	inc	r7
      002F82 80 EE            [24] 1981 	sjmp	00124$
      002F84                       1982 00114$:
                                   1983 ;	main.c:211: ENC_RESET = 1;
                                   1984 ;	assignBit
      002F84 D2 90            [12] 1985 	setb	_P1_0
                                   1986 ;	main.c:212: break;
      002F86 02 29 0E         [24] 1987 	ljmp	00118$
                                   1988 ;	main.c:214: default: {
      002F89                       1989 00115$:
                                   1990 ;	main.c:215: printf("Invalid option. Please select a valid action.\n\r");
      002F89 74 9F            [12] 1991 	mov	a,#___str_38
      002F8B C0 E0            [24] 1992 	push	acc
      002F8D 74 4A            [12] 1993 	mov	a,#(___str_38 >> 8)
      002F8F C0 E0            [24] 1994 	push	acc
      002F91 74 80            [12] 1995 	mov	a,#0x80
      002F93 C0 E0            [24] 1996 	push	acc
      002F95 12 3A E1         [24] 1997 	lcall	_printf
      002F98 15 81            [12] 1998 	dec	sp
      002F9A 15 81            [12] 1999 	dec	sp
      002F9C 15 81            [12] 2000 	dec	sp
                                   2001 ;	main.c:218: }
                                   2002 ;	main.c:220: }
      002F9E 02 29 0E         [24] 2003 	ljmp	00118$
                                   2004 	.area CSEG    (CODE)
                                   2005 	.area CONST   (CODE)
                                   2006 	.area CONST   (CODE)
      00465B                       2007 ___str_0:
      00465B 0A                    2008 	.db 0x0a
      00465C 0D                    2009 	.db 0x0d
      00465D 00                    2010 	.db 0x00
                                   2011 	.area CSEG    (CODE)
                                   2012 	.area CONST   (CODE)
      00465E                       2013 ___str_1:
      00465E 53 50 49 20 4F 70 65  2014 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      004674 0A                    2015 	.db 0x0a
      004675 0D                    2016 	.db 0x0d
      004676 00                    2017 	.db 0x00
                                   2018 	.area CSEG    (CODE)
                                   2019 	.area CONST   (CODE)
      004677                       2020 ___str_2:
      004677 0A                    2021 	.db 0x0a
      004678 0D                    2022 	.db 0x0d
      004679 43 68 6F 6F 73 65 20  2023 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      00468B 0A                    2024 	.db 0x0a
      00468C 0D                    2025 	.db 0x0d
      00468D 00                    2026 	.db 0x00
                                   2027 	.area CSEG    (CODE)
                                   2028 	.area CONST   (CODE)
      00468E                       2029 ___str_3:
      00468E 31 20 2D 2D 3E 20 43  2030 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      0046A1 0A                    2031 	.db 0x0a
      0046A2 0D                    2032 	.db 0x0d
      0046A3 00                    2033 	.db 0x00
                                   2034 	.area CSEG    (CODE)
                                   2035 	.area CONST   (CODE)
      0046A4                       2036 ___str_4:
      0046A4 32 20 2D 2D 3E 20 42  2037 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      0046B6 0A                    2038 	.db 0x0a
      0046B7 0D                    2039 	.db 0x0d
      0046B8 00                    2040 	.db 0x00
                                   2041 	.area CSEG    (CODE)
                                   2042 	.area CONST   (CODE)
      0046B9                       2043 ___str_5:
      0046B9 33 20 2D 2D 3E 20 42  2044 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      0046CA 0A                    2045 	.db 0x0a
      0046CB 0D                    2046 	.db 0x0d
      0046CC 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      0046CD                       2050 ___str_6:
      0046CD 34 20 2D 2D 3E 20 4D  2051 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      0046E4 0A                    2052 	.db 0x0a
      0046E5 0D                    2053 	.db 0x0d
      0046E6 00                    2054 	.db 0x00
                                   2055 	.area CSEG    (CODE)
                                   2056 	.area CONST   (CODE)
      0046E7                       2057 ___str_7:
      0046E7 35 20 2D 2D 3E 20 50  2058 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      0046FA 0A                    2059 	.db 0x0a
      0046FB 0D                    2060 	.db 0x0d
      0046FC 00                    2061 	.db 0x00
                                   2062 	.area CSEG    (CODE)
                                   2063 	.area CONST   (CODE)
      0046FD                       2064 ___str_8:
      0046FD 36 20 2D 2D 3E 20 50  2065 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      00470F 0A                    2066 	.db 0x0a
      004710 0D                    2067 	.db 0x0d
      004711 00                    2068 	.db 0x00
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
      004712                       2071 ___str_9:
      004712 37 20 2D 2D 3E 20 45  2072 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      004721 0A                    2073 	.db 0x0a
      004722 0D                    2074 	.db 0x0d
      004723 00                    2075 	.db 0x00
                                   2076 	.area CSEG    (CODE)
                                   2077 	.area CONST   (CODE)
      004724                       2078 ___str_10:
      004724 38 20 2D 2D 3E 20 52  2079 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      00473B 0A                    2080 	.db 0x0a
      00473C 0D                    2081 	.db 0x0d
      00473D 00                    2082 	.db 0x00
                                   2083 	.area CSEG    (CODE)
                                   2084 	.area CONST   (CODE)
      00473E                       2085 ___str_11:
      00473E 39 20 2D 2D 3E 20 44  2086 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      004750 0A                    2087 	.db 0x0a
      004751 0D                    2088 	.db 0x0d
      004752 00                    2089 	.db 0x00
                                   2090 	.area CSEG    (CODE)
                                   2091 	.area CONST   (CODE)
      004753                       2092 ___str_12:
      004753 41 20 2D 2D 3E 20 53  2093 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      004769 0A                    2094 	.db 0x0a
      00476A 0D                    2095 	.db 0x0d
      00476B 00                    2096 	.db 0x00
                                   2097 	.area CSEG    (CODE)
                                   2098 	.area CONST   (CODE)
      00476C                       2099 ___str_13:
      00476C 42 20 2D 2D 3E 20 49  2100 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      004781 0A                    2101 	.db 0x0a
      004782 0D                    2102 	.db 0x0d
      004783 00                    2103 	.db 0x00
                                   2104 	.area CSEG    (CODE)
                                   2105 	.area CONST   (CODE)
      004784                       2106 ___str_14:
      004784 43 20 2D 2D 3E 20 48  2107 	.ascii "C --> Hard Reset(nRESET pin)"
             61 72 64 20 52 65 73
             65 74 28 6E 52 45 53
             45 54 20 70 69 6E 29
      0047A0 0A                    2108 	.db 0x0a
      0047A1 0D                    2109 	.db 0x0d
      0047A2 00                    2110 	.db 0x00
                                   2111 	.area CSEG    (CODE)
                                   2112 	.area CONST   (CODE)
      0047A3                       2113 ___str_15:
      0047A3 45 6E 74 65 72 20 74  2114 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      0047C5 0A                    2115 	.db 0x0a
      0047C6 0D                    2116 	.db 0x0d
      0047C7 00                    2117 	.db 0x00
                                   2118 	.area CSEG    (CODE)
                                   2119 	.area CONST   (CODE)
      0047C8                       2120 ___str_16:
      0047C8 45 6E 74 65 72 20 74  2121 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      0047F2 0A                    2122 	.db 0x0a
      0047F3 0D                    2123 	.db 0x0d
      0047F4 00                    2124 	.db 0x00
                                   2125 	.area CSEG    (CODE)
                                   2126 	.area CONST   (CODE)
      0047F5                       2127 ___str_17:
      0047F5 45 6E 74 65 72 20 74  2128 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      004816 0A                    2129 	.db 0x0a
      004817 0D                    2130 	.db 0x0d
      004818 00                    2131 	.db 0x00
                                   2132 	.area CSEG    (CODE)
                                   2133 	.area CONST   (CODE)
      004819                       2134 ___str_18:
      004819 45 6E 74 65 72 20 74  2135 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      00483C 0A                    2136 	.db 0x0a
      00483D 0D                    2137 	.db 0x0d
      00483E 00                    2138 	.db 0x00
                                   2139 	.area CSEG    (CODE)
                                   2140 	.area CONST   (CODE)
      00483F                       2141 ___str_19:
      00483F 45 6E 74 65 72 20 74  2142 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      00485A 0A                    2143 	.db 0x0a
      00485B 0D                    2144 	.db 0x0d
      00485C 00                    2145 	.db 0x00
                                   2146 	.area CSEG    (CODE)
                                   2147 	.area CONST   (CODE)
      00485D                       2148 ___str_20:
      00485D 45 6E 74 65 72 20 25  2149 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      00487D 0A                    2150 	.db 0x0a
      00487E 0D                    2151 	.db 0x0d
      00487F 00                    2152 	.db 0x00
                                   2153 	.area CSEG    (CODE)
                                   2154 	.area CONST   (CODE)
      004880                       2155 ___str_21:
      004880 42 79 74 65 20 25 64  2156 	.ascii "Byte %d: "
             3A 20
      004889 00                    2157 	.db 0x00
                                   2158 	.area CSEG    (CODE)
                                   2159 	.area CONST   (CODE)
      00488A                       2160 ___str_22:
      00488A 45 6E 74 65 72 20 74  2161 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      0048AC 0A                    2162 	.db 0x0a
      0048AD 0D                    2163 	.db 0x0d
      0048AE 00                    2164 	.db 0x00
                                   2165 	.area CSEG    (CODE)
                                   2166 	.area CONST   (CODE)
      0048AF                       2167 ___str_23:
      0048AF 43 75 72 72 65 6E 74  2168 	.ascii "Current ERXRDPT: 0x%04X"
             20 45 52 58 52 44 50
             54 3A 20 30 78 25 30
             34 58
      0048C6 0A                    2169 	.db 0x0a
      0048C7 0D                    2170 	.db 0x0d
      0048C8 00                    2171 	.db 0x00
                                   2172 	.area CSEG    (CODE)
                                   2173 	.area CONST   (CODE)
      0048C9                       2174 ___str_24:
      0048C9 55 70 64 61 74 65 64  2175 	.ascii "Updated ERXRDPT to: 0x%04X"
             20 45 52 58 52 44 50
             54 20 74 6F 3A 20 30
             78 25 30 34 58
      0048E3 0A                    2176 	.db 0x0a
      0048E4 0D                    2177 	.db 0x0d
      0048E5 00                    2178 	.db 0x00
                                   2179 	.area CSEG    (CODE)
                                   2180 	.area CONST   (CODE)
      0048E6                       2181 ___str_25:
      0048E6 45 6E 74 65 72 20 74  2182 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      00490C 0A                    2183 	.db 0x0a
      00490D 0D                    2184 	.db 0x0d
      00490E 00                    2185 	.db 0x00
                                   2186 	.area CSEG    (CODE)
                                   2187 	.area CONST   (CODE)
      00490F                       2188 ___str_26:
      00490F 45 6E 74 65 72 20 74  2189 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      004935 0A                    2190 	.db 0x0a
      004936 0D                    2191 	.db 0x0d
      004937 00                    2192 	.db 0x00
                                   2193 	.area CSEG    (CODE)
                                   2194 	.area CONST   (CODE)
      004938                       2195 ___str_27:
      004938 4D 41 43 20 52 65 67  2196 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      004951 0A                    2197 	.db 0x0a
      004952 0D                    2198 	.db 0x0d
      004953 00                    2199 	.db 0x00
                                   2200 	.area CSEG    (CODE)
                                   2201 	.area CONST   (CODE)
      004954                       2202 ___str_28:
      004954 45 6E 74 65 72 20 74  2203 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      004973 0A                    2204 	.db 0x0a
      004974 0D                    2205 	.db 0x0d
      004975 00                    2206 	.db 0x00
                                   2207 	.area CSEG    (CODE)
                                   2208 	.area CONST   (CODE)
      004976                       2209 ___str_29:
      004976 45 6E 74 65 72 20 74  2210 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      004995 0A                    2211 	.db 0x0a
      004996 0D                    2212 	.db 0x0d
      004997 00                    2213 	.db 0x00
                                   2214 	.area CSEG    (CODE)
                                   2215 	.area CONST   (CODE)
      004998                       2216 ___str_30:
      004998 50 48 59 20 57 72 69  2217 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      0049AE 0A                    2218 	.db 0x0a
      0049AF 0D                    2219 	.db 0x0d
      0049B0 00                    2220 	.db 0x00
                                   2221 	.area CSEG    (CODE)
                                   2222 	.area CONST   (CODE)
      0049B1                       2223 ___str_31:
      0049B1 45 6E 74 65 72 20 74  2224 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      0049D8 0A                    2225 	.db 0x0a
      0049D9 0D                    2226 	.db 0x0d
      0049DA 00                    2227 	.db 0x00
                                   2228 	.area CSEG    (CODE)
                                   2229 	.area CONST   (CODE)
      0049DB                       2230 ___str_32:
      0049DB 50 48 59 20 52 65 61  2231 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      0049F0 0A                    2232 	.db 0x0a
      0049F1 0D                    2233 	.db 0x0d
      0049F2 00                    2234 	.db 0x00
                                   2235 	.area CSEG    (CODE)
                                   2236 	.area CONST   (CODE)
      0049F3                       2237 ___str_33:
      0049F3 52 65 73 65 74 74 69  2238 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      004A08 0A                    2239 	.db 0x0a
      004A09 0D                    2240 	.db 0x0d
      004A0A 00                    2241 	.db 0x00
                                   2242 	.area CSEG    (CODE)
                                   2243 	.area CONST   (CODE)
      004A0B                       2244 ___str_34:
      004A0B 45 6E 74 65 72 20 74  2245 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      004A32 0A                    2246 	.db 0x0a
      004A33 0D                    2247 	.db 0x0d
      004A34 00                    2248 	.db 0x00
                                   2249 	.area CSEG    (CODE)
                                   2250 	.area CONST   (CODE)
      004A35                       2251 ___str_35:
      004A35 45 6E 74 65 72 20 74  2252 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      004A4D 0A                    2253 	.db 0x0a
      004A4E 0D                    2254 	.db 0x0d
      004A4F 00                    2255 	.db 0x00
                                   2256 	.area CSEG    (CODE)
                                   2257 	.area CONST   (CODE)
      004A50                       2258 ___str_36:
      004A50 45 54 48 20 52 65 67  2259 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      004A69 0A                    2260 	.db 0x0a
      004A6A 0D                    2261 	.db 0x0d
      004A6B 00                    2262 	.db 0x00
                                   2263 	.area CSEG    (CODE)
                                   2264 	.area CONST   (CODE)
      004A6C                       2265 ___str_37:
      004A6C 20 52 65 73 65 74 74  2266 	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
             69 6E 67 20 45 4E 43
             20 75 73 69 6E 67 20
             52 45 53 45 54 20 70
             69 6E 20 69 6E 20 48
             61 72 64 77 61 72 65
             28 50 31 5F 30 29
      004A9C 0A                    2267 	.db 0x0a
      004A9D 0D                    2268 	.db 0x0d
      004A9E 00                    2269 	.db 0x00
                                   2270 	.area CSEG    (CODE)
                                   2271 	.area CONST   (CODE)
      004A9F                       2272 ___str_38:
      004A9F 49 6E 76 61 6C 69 64  2273 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      004ACC 0A                    2274 	.db 0x0a
      004ACD 0D                    2275 	.db 0x0d
      004ACE 00                    2276 	.db 0x00
                                   2277 	.area CSEG    (CODE)
                                   2278 	.area XINIT   (CODE)
                                   2279 	.area CABS    (ABS,CODE)

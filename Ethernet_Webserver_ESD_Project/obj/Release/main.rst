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
                                     15 	.globl _init_MAC
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
      000021                        481 __start__stack:
      000021                        482 	.ds	1
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
      00013A                        505 _hex_to_int_str_10000_69:
      00013A                        506 	.ds 3
      00013D                        507 _hex_to_int_result_10000_70:
      00013D                        508 	.ds 2
      00013F                        509 _hex_to_int_ASCII_20000_71:
      00013F                        510 	.ds 2
      000141                        511 _get_user_buffer_size_input_10000_76:
      000141                        512 	.ds 10
      00014B                        513 _main_buffer_40003_89:
      00014B                        514 	.ds 256
      00024B                        515 _main_buffer_40003_94:
      00024B                        516 	.ds 256
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
      002000 02 20 06         [24]  540 	ljmp	__sdcc_gsinit_startup
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
      00205F 02 20 03         [24]  555 	ljmp	__sdcc_program_startup
                                    556 ;--------------------------------------------------------
                                    557 ; Home
                                    558 ;--------------------------------------------------------
                                    559 	.area HOME    (CODE)
                                    560 	.area HOME    (CODE)
      002003                        561 __sdcc_program_startup:
      002003 02 27 D8         [24]  562 	ljmp	_main
                                    563 ;	return from main will return to caller
                                    564 ;--------------------------------------------------------
                                    565 ; code
                                    566 ;--------------------------------------------------------
                                    567 	.area CSEG    (CODE)
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'hex_to_int'
                                    570 ;------------------------------------------------------------
                                    571 ;str                       Allocated with name '_hex_to_int_str_10000_69'
                                    572 ;i                         Allocated with name '_hex_to_int_i_10000_70'
                                    573 ;result                    Allocated with name '_hex_to_int_result_10000_70'
                                    574 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_71'
                                    575 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    576 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    577 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    578 ;------------------------------------------------------------
                                    579 ;	main.c:9: int hex_to_int(char* str)
                                    580 ;	-----------------------------------------
                                    581 ;	 function hex_to_int
                                    582 ;	-----------------------------------------
      00259A                        583 _hex_to_int:
                           000007   584 	ar7 = 0x07
                           000006   585 	ar6 = 0x06
                           000005   586 	ar5 = 0x05
                           000004   587 	ar4 = 0x04
                           000003   588 	ar3 = 0x03
                           000002   589 	ar2 = 0x02
                           000001   590 	ar1 = 0x01
                           000000   591 	ar0 = 0x00
      00259A AF F0            [24]  592 	mov	r7,b
      00259C AE 83            [24]  593 	mov	r6,dph
      00259E E5 82            [12]  594 	mov	a,dpl
      0025A0 90 01 3A         [24]  595 	mov	dptr,#_hex_to_int_str_10000_69
      0025A3 F0               [24]  596 	movx	@dptr,a
      0025A4 EE               [12]  597 	mov	a,r6
      0025A5 A3               [24]  598 	inc	dptr
      0025A6 F0               [24]  599 	movx	@dptr,a
      0025A7 EF               [12]  600 	mov	a,r7
      0025A8 A3               [24]  601 	inc	dptr
      0025A9 F0               [24]  602 	movx	@dptr,a
                                    603 ;	main.c:12: int i = 0, result = 0;
      0025AA 90 01 3D         [24]  604 	mov	dptr,#_hex_to_int_result_10000_70
      0025AD E4               [12]  605 	clr	a
      0025AE F0               [24]  606 	movx	@dptr,a
      0025AF A3               [24]  607 	inc	dptr
      0025B0 F0               [24]  608 	movx	@dptr,a
                                    609 ;	main.c:13: while(str[i] != '\0')
      0025B1 90 01 3A         [24]  610 	mov	dptr,#_hex_to_int_str_10000_69
      0025B4 E0               [24]  611 	movx	a,@dptr
      0025B5 FD               [12]  612 	mov	r5,a
      0025B6 A3               [24]  613 	inc	dptr
      0025B7 E0               [24]  614 	movx	a,@dptr
      0025B8 FE               [12]  615 	mov	r6,a
      0025B9 A3               [24]  616 	inc	dptr
      0025BA E0               [24]  617 	movx	a,@dptr
      0025BB FF               [12]  618 	mov	r7,a
      0025BC 8D 02            [24]  619 	mov	ar2,r5
      0025BE 8E 03            [24]  620 	mov	ar3,r6
      0025C0 8F 04            [24]  621 	mov	ar4,r7
      0025C2 8D 13            [24]  622 	mov	_hex_to_int_sloc0_1_0,r5
      0025C4 8E 14            [24]  623 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      0025C6 8F 15            [24]  624 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      0025C8 78 00            [12]  625 	mov	r0,#0x00
      0025CA 79 00            [12]  626 	mov	r1,#0x00
      0025CC                        627 00112$:
      0025CC C0 02            [24]  628 	push	ar2
      0025CE C0 03            [24]  629 	push	ar3
      0025D0 C0 04            [24]  630 	push	ar4
      0025D2 E8               [12]  631 	mov	a,r0
      0025D3 25 13            [12]  632 	add	a, _hex_to_int_sloc0_1_0
      0025D5 FA               [12]  633 	mov	r2,a
      0025D6 E9               [12]  634 	mov	a,r1
      0025D7 35 14            [12]  635 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      0025D9 FB               [12]  636 	mov	r3,a
      0025DA AC 15            [24]  637 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      0025DC 8A 82            [24]  638 	mov	dpl,r2
      0025DE 8B 83            [24]  639 	mov	dph,r3
      0025E0 8C F0            [24]  640 	mov	b,r4
      0025E2 12 42 BC         [24]  641 	lcall	__gptrget
      0025E5 F5 16            [12]  642 	mov	_hex_to_int_sloc1_1_0,a
      0025E7 D0 04            [24]  643 	pop	ar4
      0025E9 D0 03            [24]  644 	pop	ar3
      0025EB D0 02            [24]  645 	pop	ar2
      0025ED E5 16            [12]  646 	mov	a,_hex_to_int_sloc1_1_0
      0025EF 70 03            [24]  647 	jnz	00166$
      0025F1 02 27 48         [24]  648 	ljmp	00114$
      0025F4                        649 00166$:
                                    650 ;	main.c:15: int ASCII = (int)str[i];
      0025F4 C0 02            [24]  651 	push	ar2
      0025F6 C0 03            [24]  652 	push	ar3
      0025F8 C0 04            [24]  653 	push	ar4
      0025FA 85 16 17         [24]  654 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      0025FD 75 18 00         [24]  655 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      002600 90 01 3F         [24]  656 	mov	dptr,#_hex_to_int_ASCII_20000_71
      002603 E5 17            [12]  657 	mov	a,_hex_to_int_sloc2_1_0
      002605 F0               [24]  658 	movx	@dptr,a
      002606 E5 18            [12]  659 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002608 A3               [24]  660 	inc	dptr
      002609 F0               [24]  661 	movx	@dptr,a
                                    662 ;	main.c:16: result *= 16;
      00260A 90 01 3D         [24]  663 	mov	dptr,#_hex_to_int_result_10000_70
      00260D E0               [24]  664 	movx	a,@dptr
      00260E FB               [12]  665 	mov	r3,a
      00260F A3               [24]  666 	inc	dptr
      002610 E0               [24]  667 	movx	a,@dptr
      002611 C4               [12]  668 	swap	a
      002612 54 F0            [12]  669 	anl	a,#0xf0
      002614 CB               [12]  670 	xch	a,r3
      002615 C4               [12]  671 	swap	a
      002616 CB               [12]  672 	xch	a,r3
      002617 6B               [12]  673 	xrl	a,r3
      002618 CB               [12]  674 	xch	a,r3
      002619 54 F0            [12]  675 	anl	a,#0xf0
      00261B CB               [12]  676 	xch	a,r3
      00261C 6B               [12]  677 	xrl	a,r3
      00261D FC               [12]  678 	mov	r4,a
      00261E 90 01 3D         [24]  679 	mov	dptr,#_hex_to_int_result_10000_70
      002621 EB               [12]  680 	mov	a,r3
      002622 F0               [24]  681 	movx	@dptr,a
      002623 EC               [12]  682 	mov	a,r4
      002624 A3               [24]  683 	inc	dptr
      002625 F0               [24]  684 	movx	@dptr,a
                                    685 ;	main.c:17: if(ASCII >= '0' && ASCII <= '9')
      002626 C3               [12]  686 	clr	c
      002627 E5 17            [12]  687 	mov	a,_hex_to_int_sloc2_1_0
      002629 94 30            [12]  688 	subb	a,#0x30
      00262B E5 18            [12]  689 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00262D 64 80            [12]  690 	xrl	a,#0x80
      00262F 94 80            [12]  691 	subb	a,#0x80
      002631 D0 04            [24]  692 	pop	ar4
      002633 D0 03            [24]  693 	pop	ar3
      002635 D0 02            [24]  694 	pop	ar2
      002637 40 3F            [24]  695 	jc	00109$
      002639 74 39            [12]  696 	mov	a,#0x39
      00263B 95 17            [12]  697 	subb	a,_hex_to_int_sloc2_1_0
      00263D 74 80            [12]  698 	mov	a,#(0x00 ^ 0x80)
      00263F 85 18 F0         [24]  699 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002642 63 F0 80         [24]  700 	xrl	b,#0x80
      002645 95 F0            [12]  701 	subb	a,b
      002647 40 2F            [24]  702 	jc	00109$
                                    703 ;	main.c:19: result += str[i] - 48;
      002649 C0 02            [24]  704 	push	ar2
      00264B C0 03            [24]  705 	push	ar3
      00264D C0 04            [24]  706 	push	ar4
      00264F E5 17            [12]  707 	mov	a,_hex_to_int_sloc2_1_0
      002651 24 D0            [12]  708 	add	a,#0xd0
      002653 F5 17            [12]  709 	mov	_hex_to_int_sloc2_1_0,a
      002655 E5 18            [12]  710 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002657 34 FF            [12]  711 	addc	a,#0xff
      002659 F5 18            [12]  712 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      00265B 90 01 3D         [24]  713 	mov	dptr,#_hex_to_int_result_10000_70
      00265E E0               [24]  714 	movx	a,@dptr
      00265F FA               [12]  715 	mov	r2,a
      002660 A3               [24]  716 	inc	dptr
      002661 E0               [24]  717 	movx	a,@dptr
      002662 FC               [12]  718 	mov	r4,a
      002663 90 01 3D         [24]  719 	mov	dptr,#_hex_to_int_result_10000_70
      002666 E5 17            [12]  720 	mov	a,_hex_to_int_sloc2_1_0
      002668 2A               [12]  721 	add	a, r2
      002669 F0               [24]  722 	movx	@dptr,a
      00266A E5 18            [12]  723 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00266C 3C               [12]  724 	addc	a, r4
      00266D A3               [24]  725 	inc	dptr
      00266E F0               [24]  726 	movx	@dptr,a
      00266F D0 04            [24]  727 	pop	ar4
      002671 D0 03            [24]  728 	pop	ar3
      002673 D0 02            [24]  729 	pop	ar2
      002675 02 27 40         [24]  730 	ljmp	00110$
      002678                        731 00109$:
                                    732 ;	main.c:21: else if(ASCII >= 'A' && ASCII <= 'F')
      002678 90 01 3F         [24]  733 	mov	dptr,#_hex_to_int_ASCII_20000_71
      00267B E0               [24]  734 	movx	a,@dptr
      00267C F5 17            [12]  735 	mov	_hex_to_int_sloc2_1_0,a
      00267E A3               [24]  736 	inc	dptr
      00267F E0               [24]  737 	movx	a,@dptr
      002680 F5 18            [12]  738 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002682 C3               [12]  739 	clr	c
      002683 E5 17            [12]  740 	mov	a,_hex_to_int_sloc2_1_0
      002685 94 41            [12]  741 	subb	a,#0x41
      002687 E5 18            [12]  742 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002689 64 80            [12]  743 	xrl	a,#0x80
      00268B 94 80            [12]  744 	subb	a,#0x80
      00268D 40 4E            [24]  745 	jc	00105$
      00268F 74 46            [12]  746 	mov	a,#0x46
      002691 95 17            [12]  747 	subb	a,_hex_to_int_sloc2_1_0
      002693 74 80            [12]  748 	mov	a,#(0x00 ^ 0x80)
      002695 85 18 F0         [24]  749 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002698 63 F0 80         [24]  750 	xrl	b,#0x80
      00269B 95 F0            [12]  751 	subb	a,b
      00269D 40 3E            [24]  752 	jc	00105$
                                    753 ;	main.c:23: result += str[i] - 55;
      00269F C0 05            [24]  754 	push	ar5
      0026A1 C0 06            [24]  755 	push	ar6
      0026A3 C0 07            [24]  756 	push	ar7
      0026A5 E8               [12]  757 	mov	a,r0
      0026A6 2A               [12]  758 	add	a, r2
      0026A7 FD               [12]  759 	mov	r5,a
      0026A8 E9               [12]  760 	mov	a,r1
      0026A9 3B               [12]  761 	addc	a, r3
      0026AA FE               [12]  762 	mov	r6,a
      0026AB 8C 07            [24]  763 	mov	ar7,r4
      0026AD 8D 82            [24]  764 	mov	dpl,r5
      0026AF 8E 83            [24]  765 	mov	dph,r6
      0026B1 8F F0            [24]  766 	mov	b,r7
      0026B3 12 42 BC         [24]  767 	lcall	__gptrget
      0026B6 7F 00            [12]  768 	mov	r7,#0x00
      0026B8 24 C9            [12]  769 	add	a,#0xc9
      0026BA F5 17            [12]  770 	mov	_hex_to_int_sloc2_1_0,a
      0026BC EF               [12]  771 	mov	a,r7
      0026BD 34 FF            [12]  772 	addc	a,#0xff
      0026BF F5 18            [12]  773 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0026C1 90 01 3D         [24]  774 	mov	dptr,#_hex_to_int_result_10000_70
      0026C4 E0               [24]  775 	movx	a,@dptr
      0026C5 FE               [12]  776 	mov	r6,a
      0026C6 A3               [24]  777 	inc	dptr
      0026C7 E0               [24]  778 	movx	a,@dptr
      0026C8 FF               [12]  779 	mov	r7,a
      0026C9 90 01 3D         [24]  780 	mov	dptr,#_hex_to_int_result_10000_70
      0026CC E5 17            [12]  781 	mov	a,_hex_to_int_sloc2_1_0
      0026CE 2E               [12]  782 	add	a, r6
      0026CF F0               [24]  783 	movx	@dptr,a
      0026D0 E5 18            [12]  784 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0026D2 3F               [12]  785 	addc	a, r7
      0026D3 A3               [24]  786 	inc	dptr
      0026D4 F0               [24]  787 	movx	@dptr,a
      0026D5 D0 07            [24]  788 	pop	ar7
      0026D7 D0 06            [24]  789 	pop	ar6
      0026D9 D0 05            [24]  790 	pop	ar5
      0026DB 80 63            [24]  791 	sjmp	00110$
      0026DD                        792 00105$:
                                    793 ;	main.c:25: else if(ASCII >= 'a' && ASCII <= 'f')
      0026DD 90 01 3F         [24]  794 	mov	dptr,#_hex_to_int_ASCII_20000_71
      0026E0 E0               [24]  795 	movx	a,@dptr
      0026E1 F5 17            [12]  796 	mov	_hex_to_int_sloc2_1_0,a
      0026E3 A3               [24]  797 	inc	dptr
      0026E4 E0               [24]  798 	movx	a,@dptr
      0026E5 F5 18            [12]  799 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0026E7 C3               [12]  800 	clr	c
      0026E8 E5 17            [12]  801 	mov	a,_hex_to_int_sloc2_1_0
      0026EA 94 61            [12]  802 	subb	a,#0x61
      0026EC E5 18            [12]  803 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0026EE 64 80            [12]  804 	xrl	a,#0x80
      0026F0 94 80            [12]  805 	subb	a,#0x80
      0026F2 40 4C            [24]  806 	jc	00110$
      0026F4 74 66            [12]  807 	mov	a,#0x66
      0026F6 95 17            [12]  808 	subb	a,_hex_to_int_sloc2_1_0
      0026F8 74 80            [12]  809 	mov	a,#(0x00 ^ 0x80)
      0026FA 85 18 F0         [24]  810 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      0026FD 63 F0 80         [24]  811 	xrl	b,#0x80
      002700 95 F0            [12]  812 	subb	a,b
      002702 40 3C            [24]  813 	jc	00110$
                                    814 ;	main.c:27: result += str[i] - 87;
      002704 C0 02            [24]  815 	push	ar2
      002706 C0 03            [24]  816 	push	ar3
      002708 C0 04            [24]  817 	push	ar4
      00270A E8               [12]  818 	mov	a,r0
      00270B 2D               [12]  819 	add	a, r5
      00270C FA               [12]  820 	mov	r2,a
      00270D E9               [12]  821 	mov	a,r1
      00270E 3E               [12]  822 	addc	a, r6
      00270F FB               [12]  823 	mov	r3,a
      002710 8F 04            [24]  824 	mov	ar4,r7
      002712 8A 82            [24]  825 	mov	dpl,r2
      002714 8B 83            [24]  826 	mov	dph,r3
      002716 8C F0            [24]  827 	mov	b,r4
      002718 12 42 BC         [24]  828 	lcall	__gptrget
      00271B 7C 00            [12]  829 	mov	r4,#0x00
      00271D 24 A9            [12]  830 	add	a,#0xa9
      00271F F5 17            [12]  831 	mov	_hex_to_int_sloc2_1_0,a
      002721 EC               [12]  832 	mov	a,r4
      002722 34 FF            [12]  833 	addc	a,#0xff
      002724 F5 18            [12]  834 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002726 90 01 3D         [24]  835 	mov	dptr,#_hex_to_int_result_10000_70
      002729 E0               [24]  836 	movx	a,@dptr
      00272A FB               [12]  837 	mov	r3,a
      00272B A3               [24]  838 	inc	dptr
      00272C E0               [24]  839 	movx	a,@dptr
      00272D FC               [12]  840 	mov	r4,a
      00272E 90 01 3D         [24]  841 	mov	dptr,#_hex_to_int_result_10000_70
      002731 E5 17            [12]  842 	mov	a,_hex_to_int_sloc2_1_0
      002733 2B               [12]  843 	add	a, r3
      002734 F0               [24]  844 	movx	@dptr,a
      002735 E5 18            [12]  845 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002737 3C               [12]  846 	addc	a, r4
      002738 A3               [24]  847 	inc	dptr
      002739 F0               [24]  848 	movx	@dptr,a
                                    849 ;	main.c:31: return result;
      00273A D0 04            [24]  850 	pop	ar4
      00273C D0 03            [24]  851 	pop	ar3
      00273E D0 02            [24]  852 	pop	ar2
                                    853 ;	main.c:27: result += str[i] - 87;
      002740                        854 00110$:
                                    855 ;	main.c:29: i++;
      002740 08               [12]  856 	inc	r0
      002741 B8 00 01         [24]  857 	cjne	r0,#0x00,00173$
      002744 09               [12]  858 	inc	r1
      002745                        859 00173$:
      002745 02 25 CC         [24]  860 	ljmp	00112$
      002748                        861 00114$:
                                    862 ;	main.c:31: return result;
      002748 90 01 3D         [24]  863 	mov	dptr,#_hex_to_int_result_10000_70
      00274B E0               [24]  864 	movx	a,@dptr
      00274C FE               [12]  865 	mov	r6,a
      00274D A3               [24]  866 	inc	dptr
      00274E E0               [24]  867 	movx	a,@dptr
                                    868 ;	main.c:33: }
      00274F 8E 82            [24]  869 	mov	dpl,r6
      002751 F5 83            [12]  870 	mov	dph,a
      002753 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    874 ;------------------------------------------------------------
                                    875 ;i                         Allocated with name '_get_user_buffer_size_i_10000_76'
                                    876 ;output                    Allocated with name '_get_user_buffer_size_output_10000_76'
                                    877 ;input                     Allocated with name '_get_user_buffer_size_input_10000_76'
                                    878 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_76'
                                    879 ;------------------------------------------------------------
                                    880 ;	main.c:36: int get_user_buffer_size(void)
                                    881 ;	-----------------------------------------
                                    882 ;	 function get_user_buffer_size
                                    883 ;	-----------------------------------------
      002754                        884 _get_user_buffer_size:
                                    885 ;	main.c:42: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      002754 7E 00            [12]  886 	mov	r6,#0x00
      002756 7F 00            [12]  887 	mov	r7,#0x00
      002758                        888 00103$:
      002758 C0 07            [24]  889 	push	ar7
      00275A C0 06            [24]  890 	push	ar6
      00275C 12 36 84         [24]  891 	lcall	_getchar
      00275F AC 82            [24]  892 	mov	r4, dpl
      002761 D0 06            [24]  893 	pop	ar6
      002763 D0 07            [24]  894 	pop	ar7
      002765 BC 0A 02         [24]  895 	cjne	r4,#0x0a,00133$
      002768 80 3A            [24]  896 	sjmp	00105$
      00276A                        897 00133$:
      00276A BC 0D 02         [24]  898 	cjne	r4,#0x0d,00134$
      00276D 80 35            [24]  899 	sjmp	00105$
      00276F                        900 00134$:
      00276F C3               [12]  901 	clr	c
      002770 EE               [12]  902 	mov	a,r6
      002771 94 09            [12]  903 	subb	a,#0x09
      002773 EF               [12]  904 	mov	a,r7
      002774 64 80            [12]  905 	xrl	a,#0x80
      002776 94 80            [12]  906 	subb	a,#0x80
      002778 50 2A            [24]  907 	jnc	00105$
                                    908 ;	main.c:44: putchar(ch);
      00277A 8C 03            [24]  909 	mov	ar3,r4
      00277C 7D 00            [12]  910 	mov	r5,#0x00
      00277E 8B 82            [24]  911 	mov	dpl, r3
      002780 8D 83            [24]  912 	mov	dph, r5
      002782 C0 07            [24]  913 	push	ar7
      002784 C0 06            [24]  914 	push	ar6
      002786 C0 04            [24]  915 	push	ar4
      002788 12 36 65         [24]  916 	lcall	_putchar
      00278B D0 04            [24]  917 	pop	ar4
      00278D D0 06            [24]  918 	pop	ar6
      00278F D0 07            [24]  919 	pop	ar7
                                    920 ;	main.c:45: input[i] = ch;      //Append the input array with the received character
      002791 EE               [12]  921 	mov	a,r6
      002792 24 41            [12]  922 	add	a, #_get_user_buffer_size_input_10000_76
      002794 F5 82            [12]  923 	mov	dpl,a
      002796 EF               [12]  924 	mov	a,r7
      002797 34 01            [12]  925 	addc	a, #(_get_user_buffer_size_input_10000_76 >> 8)
      002799 F5 83            [12]  926 	mov	dph,a
      00279B EC               [12]  927 	mov	a,r4
      00279C F0               [24]  928 	movx	@dptr,a
                                    929 ;	main.c:46: i++;
      00279D 0E               [12]  930 	inc	r6
      00279E BE 00 B7         [24]  931 	cjne	r6,#0x00,00103$
      0027A1 0F               [12]  932 	inc	r7
      0027A2 80 B4            [24]  933 	sjmp	00103$
      0027A4                        934 00105$:
                                    935 ;	main.c:48: input[i] = '\0';
      0027A4 EE               [12]  936 	mov	a,r6
      0027A5 24 41            [12]  937 	add	a, #_get_user_buffer_size_input_10000_76
      0027A7 F5 82            [12]  938 	mov	dpl,a
      0027A9 EF               [12]  939 	mov	a,r7
      0027AA 34 01            [12]  940 	addc	a, #(_get_user_buffer_size_input_10000_76 >> 8)
      0027AC F5 83            [12]  941 	mov	dph,a
      0027AE E4               [12]  942 	clr	a
      0027AF F0               [24]  943 	movx	@dptr,a
                                    944 ;	main.c:49: output = hex_to_int(input); //Convert the char hex data to int
      0027B0 90 01 41         [24]  945 	mov	dptr,#_get_user_buffer_size_input_10000_76
      0027B3 F5 F0            [12]  946 	mov	b,a
      0027B5 12 25 9A         [24]  947 	lcall	_hex_to_int
      0027B8 AE 82            [24]  948 	mov	r6, dpl
      0027BA AF 83            [24]  949 	mov	r7, dph
                                    950 ;	main.c:50: printf_tiny("\n\r");
      0027BC C0 07            [24]  951 	push	ar7
      0027BE C0 06            [24]  952 	push	ar6
      0027C0 74 ED            [12]  953 	mov	a,#___str_0
      0027C2 C0 E0            [24]  954 	push	acc
      0027C4 74 43            [12]  955 	mov	a,#(___str_0 >> 8)
      0027C6 C0 E0            [24]  956 	push	acc
      0027C8 12 37 23         [24]  957 	lcall	_printf_tiny
      0027CB 15 81            [12]  958 	dec	sp
      0027CD 15 81            [12]  959 	dec	sp
      0027CF D0 06            [24]  960 	pop	ar6
      0027D1 D0 07            [24]  961 	pop	ar7
                                    962 ;	main.c:52: return output;
      0027D3 8E 82            [24]  963 	mov	dpl, r6
      0027D5 8F 83            [24]  964 	mov	dph, r7
                                    965 ;	main.c:53: }
      0027D7 22               [24]  966 	ret
                                    967 ;------------------------------------------------------------
                                    968 ;Allocation info for local variables in function 'main'
                                    969 ;------------------------------------------------------------
                                    970 ;c                         Allocated with name '_main_c_20001_81'
                                    971 ;reg_bank                  Allocated with name '_main_reg_bank_40002_84'
                                    972 ;addr                      Allocated with name '_main_addr_40003_85'
                                    973 ;data                      Allocated with name '_main_data_40004_86'
                                    974 ;num_bytes                 Allocated with name '_main_num_bytes_40002_88'
                                    975 ;start_address             Allocated with name '_main_start_address_40003_89'
                                    976 ;buffer                    Allocated with name '_main_buffer_40003_89'
                                    977 ;i                         Allocated with name '_main_i_50003_90'
                                    978 ;num_bytes                 Allocated with name '_main_num_bytes_40002_93'
                                    979 ;start_address             Allocated with name '_main_start_address_40003_94'
                                    980 ;buffer                    Allocated with name '_main_buffer_40003_94'
                                    981 ;i                         Allocated with name '_main_i_50003_95'
                                    982 ;reg_bank                  Allocated with name '_main_reg_bank_40002_98'
                                    983 ;addr                      Allocated with name '_main_addr_40003_99'
                                    984 ;data                      Allocated with name '_main_data_40003_99'
                                    985 ;addr                      Allocated with name '_main_addr_40002_101'
                                    986 ;data                      Allocated with name '_main_data_40003_102'
                                    987 ;addr                      Allocated with name '_main_addr_40002_104'
                                    988 ;data                      Allocated with name '_main_data_40002_104'
                                    989 ;addr                      Allocated with name '_main_addr_40002_107'
                                    990 ;bank                      Allocated with name '_main_bank_40003_108'
                                    991 ;data                      Allocated with name '_main_data_40003_108'
                                    992 ;------------------------------------------------------------
                                    993 ;	main.c:55: void main(void)
                                    994 ;	-----------------------------------------
                                    995 ;	 function main
                                    996 ;	-----------------------------------------
      0027D8                        997 _main:
                                    998 ;	main.c:57: printf("SPI Operations on 8051\n\r");
      0027D8 74 F0            [12]  999 	mov	a,#___str_1
      0027DA C0 E0            [24] 1000 	push	acc
      0027DC 74 43            [12] 1001 	mov	a,#(___str_1 >> 8)
      0027DE C0 E0            [24] 1002 	push	acc
      0027E0 74 80            [12] 1003 	mov	a,#0x80
      0027E2 C0 E0            [24] 1004 	push	acc
      0027E4 12 38 9A         [24] 1005 	lcall	_printf
      0027E7 15 81            [12] 1006 	dec	sp
      0027E9 15 81            [12] 1007 	dec	sp
      0027EB 15 81            [12] 1008 	dec	sp
                                   1009 ;	main.c:58: configure_SPI();
      0027ED 12 2F 0C         [24] 1010 	lcall	_configure_SPI
                                   1011 ;	main.c:59: init_ENC();
      0027F0 12 35 D8         [24] 1012 	lcall	_init_ENC
                                   1013 ;	main.c:61: while(1)
      0027F3                       1014 00117$:
                                   1015 ;	main.c:63: printf("\n\rChoose an action: \n\r");
      0027F3 74 09            [12] 1016 	mov	a,#___str_2
      0027F5 C0 E0            [24] 1017 	push	acc
      0027F7 74 44            [12] 1018 	mov	a,#(___str_2 >> 8)
      0027F9 C0 E0            [24] 1019 	push	acc
      0027FB 74 80            [12] 1020 	mov	a,#0x80
      0027FD C0 E0            [24] 1021 	push	acc
      0027FF 12 38 9A         [24] 1022 	lcall	_printf
      002802 15 81            [12] 1023 	dec	sp
      002804 15 81            [12] 1024 	dec	sp
      002806 15 81            [12] 1025 	dec	sp
                                   1026 ;	main.c:64: printf("1 --> Control Write\n\r");
      002808 74 20            [12] 1027 	mov	a,#___str_3
      00280A C0 E0            [24] 1028 	push	acc
      00280C 74 44            [12] 1029 	mov	a,#(___str_3 >> 8)
      00280E C0 E0            [24] 1030 	push	acc
      002810 74 80            [12] 1031 	mov	a,#0x80
      002812 C0 E0            [24] 1032 	push	acc
      002814 12 38 9A         [24] 1033 	lcall	_printf
      002817 15 81            [12] 1034 	dec	sp
      002819 15 81            [12] 1035 	dec	sp
      00281B 15 81            [12] 1036 	dec	sp
                                   1037 ;	main.c:65: printf("2 --> Buffer Write\n\r");
      00281D 74 36            [12] 1038 	mov	a,#___str_4
      00281F C0 E0            [24] 1039 	push	acc
      002821 74 44            [12] 1040 	mov	a,#(___str_4 >> 8)
      002823 C0 E0            [24] 1041 	push	acc
      002825 74 80            [12] 1042 	mov	a,#0x80
      002827 C0 E0            [24] 1043 	push	acc
      002829 12 38 9A         [24] 1044 	lcall	_printf
      00282C 15 81            [12] 1045 	dec	sp
      00282E 15 81            [12] 1046 	dec	sp
      002830 15 81            [12] 1047 	dec	sp
                                   1048 ;	main.c:66: printf("3 --> Buffer Read\n\r");
      002832 74 4B            [12] 1049 	mov	a,#___str_5
      002834 C0 E0            [24] 1050 	push	acc
      002836 74 44            [12] 1051 	mov	a,#(___str_5 >> 8)
      002838 C0 E0            [24] 1052 	push	acc
      00283A 74 80            [12] 1053 	mov	a,#0x80
      00283C C0 E0            [24] 1054 	push	acc
      00283E 12 38 9A         [24] 1055 	lcall	_printf
      002841 15 81            [12] 1056 	dec	sp
      002843 15 81            [12] 1057 	dec	sp
      002845 15 81            [12] 1058 	dec	sp
                                   1059 ;	main.c:67: printf("4 --> MAC Register Read\n\r");
      002847 74 5F            [12] 1060 	mov	a,#___str_6
      002849 C0 E0            [24] 1061 	push	acc
      00284B 74 44            [12] 1062 	mov	a,#(___str_6 >> 8)
      00284D C0 E0            [24] 1063 	push	acc
      00284F 74 80            [12] 1064 	mov	a,#0x80
      002851 C0 E0            [24] 1065 	push	acc
      002853 12 38 9A         [24] 1066 	lcall	_printf
      002856 15 81            [12] 1067 	dec	sp
      002858 15 81            [12] 1068 	dec	sp
      00285A 15 81            [12] 1069 	dec	sp
                                   1070 ;	main.c:68: printf("5 --> PHY SPI Write\n\r");
      00285C 74 79            [12] 1071 	mov	a,#___str_7
      00285E C0 E0            [24] 1072 	push	acc
      002860 74 44            [12] 1073 	mov	a,#(___str_7 >> 8)
      002862 C0 E0            [24] 1074 	push	acc
      002864 74 80            [12] 1075 	mov	a,#0x80
      002866 C0 E0            [24] 1076 	push	acc
      002868 12 38 9A         [24] 1077 	lcall	_printf
      00286B 15 81            [12] 1078 	dec	sp
      00286D 15 81            [12] 1079 	dec	sp
      00286F 15 81            [12] 1080 	dec	sp
                                   1081 ;	main.c:69: printf("6 --> PHY SPI Read\n\r");
      002871 74 8F            [12] 1082 	mov	a,#___str_8
      002873 C0 E0            [24] 1083 	push	acc
      002875 74 44            [12] 1084 	mov	a,#(___str_8 >> 8)
      002877 C0 E0            [24] 1085 	push	acc
      002879 74 80            [12] 1086 	mov	a,#0x80
      00287B C0 E0            [24] 1087 	push	acc
      00287D 12 38 9A         [24] 1088 	lcall	_printf
      002880 15 81            [12] 1089 	dec	sp
      002882 15 81            [12] 1090 	dec	sp
      002884 15 81            [12] 1091 	dec	sp
                                   1092 ;	main.c:70: printf("7 --> ENC Reset\n\r");
      002886 74 A4            [12] 1093 	mov	a,#___str_9
      002888 C0 E0            [24] 1094 	push	acc
      00288A 74 44            [12] 1095 	mov	a,#(___str_9 >> 8)
      00288C C0 E0            [24] 1096 	push	acc
      00288E 74 80            [12] 1097 	mov	a,#0x80
      002890 C0 E0            [24] 1098 	push	acc
      002892 12 38 9A         [24] 1099 	lcall	_printf
      002895 15 81            [12] 1100 	dec	sp
      002897 15 81            [12] 1101 	dec	sp
      002899 15 81            [12] 1102 	dec	sp
                                   1103 ;	main.c:71: printf("8 --> Read ETH Register\n\r");
      00289B 74 B6            [12] 1104 	mov	a,#___str_10
      00289D C0 E0            [24] 1105 	push	acc
      00289F 74 44            [12] 1106 	mov	a,#(___str_10 >> 8)
      0028A1 C0 E0            [24] 1107 	push	acc
      0028A3 74 80            [12] 1108 	mov	a,#0x80
      0028A5 C0 E0            [24] 1109 	push	acc
      0028A7 12 38 9A         [24] 1110 	lcall	_printf
      0028AA 15 81            [12] 1111 	dec	sp
      0028AC 15 81            [12] 1112 	dec	sp
      0028AE 15 81            [12] 1113 	dec	sp
                                   1114 ;	main.c:72: printf("9 --> Display Menu\n\r");
      0028B0 74 D0            [12] 1115 	mov	a,#___str_11
      0028B2 C0 E0            [24] 1116 	push	acc
      0028B4 74 44            [12] 1117 	mov	a,#(___str_11 >> 8)
      0028B6 C0 E0            [24] 1118 	push	acc
      0028B8 74 80            [12] 1119 	mov	a,#0x80
      0028BA C0 E0            [24] 1120 	push	acc
      0028BC 12 38 9A         [24] 1121 	lcall	_printf
      0028BF 15 81            [12] 1122 	dec	sp
      0028C1 15 81            [12] 1123 	dec	sp
      0028C3 15 81            [12] 1124 	dec	sp
                                   1125 ;	main.c:73: printf("A --> Send ARP Request\n\r");
      0028C5 74 E5            [12] 1126 	mov	a,#___str_12
      0028C7 C0 E0            [24] 1127 	push	acc
      0028C9 74 44            [12] 1128 	mov	a,#(___str_12 >> 8)
      0028CB C0 E0            [24] 1129 	push	acc
      0028CD 74 80            [12] 1130 	mov	a,#0x80
      0028CF C0 E0            [24] 1131 	push	acc
      0028D1 12 38 9A         [24] 1132 	lcall	_printf
      0028D4 15 81            [12] 1133 	dec	sp
      0028D6 15 81            [12] 1134 	dec	sp
      0028D8 15 81            [12] 1135 	dec	sp
                                   1136 ;	main.c:74: printf("B --> Init RX buffers\n\r");
      0028DA 74 FE            [12] 1137 	mov	a,#___str_13
      0028DC C0 E0            [24] 1138 	push	acc
      0028DE 74 44            [12] 1139 	mov	a,#(___str_13 >> 8)
      0028E0 C0 E0            [24] 1140 	push	acc
      0028E2 74 80            [12] 1141 	mov	a,#0x80
      0028E4 C0 E0            [24] 1142 	push	acc
      0028E6 12 38 9A         [24] 1143 	lcall	_printf
      0028E9 15 81            [12] 1144 	dec	sp
      0028EB 15 81            [12] 1145 	dec	sp
      0028ED 15 81            [12] 1146 	dec	sp
                                   1147 ;	main.c:76: char c = getchar();
      0028EF 12 36 84         [24] 1148 	lcall	_getchar
      0028F2 AE 82            [24] 1149 	mov	r6, dpl
                                   1150 ;	main.c:77: putchar(c);
      0028F4 8E 05            [24] 1151 	mov	ar5,r6
      0028F6 7F 00            [12] 1152 	mov	r7,#0x00
      0028F8 8D 82            [24] 1153 	mov	dpl, r5
      0028FA 8F 83            [24] 1154 	mov	dph, r7
      0028FC C0 06            [24] 1155 	push	ar6
      0028FE 12 36 65         [24] 1156 	lcall	_putchar
                                   1157 ;	main.c:78: printf("\n\r");
      002901 74 ED            [12] 1158 	mov	a,#___str_0
      002903 C0 E0            [24] 1159 	push	acc
      002905 74 43            [12] 1160 	mov	a,#(___str_0 >> 8)
      002907 C0 E0            [24] 1161 	push	acc
      002909 74 80            [12] 1162 	mov	a,#0x80
      00290B C0 E0            [24] 1163 	push	acc
      00290D 12 38 9A         [24] 1164 	lcall	_printf
      002910 15 81            [12] 1165 	dec	sp
      002912 15 81            [12] 1166 	dec	sp
      002914 15 81            [12] 1167 	dec	sp
      002916 D0 06            [24] 1168 	pop	ar6
                                   1169 ;	main.c:80: switch(c)
      002918 BE 31 00         [24] 1170 	cjne	r6,#0x31,00170$
      00291B                       1171 00170$:
      00291B 50 03            [24] 1172 	jnc	00171$
      00291D 02 2D E8         [24] 1173 	ljmp	00114$
      002920                       1174 00171$:
      002920 EE               [12] 1175 	mov	a,r6
      002921 24 BD            [12] 1176 	add	a,#0xff - 0x42
      002923 50 03            [24] 1177 	jnc	00172$
      002925 02 2D E8         [24] 1178 	ljmp	00114$
      002928                       1179 00172$:
      002928 EE               [12] 1180 	mov	a,r6
      002929 24 CF            [12] 1181 	add	a,#0xcf
      00292B FE               [12] 1182 	mov	r6,a
      00292C 24 0A            [12] 1183 	add	a,#(00173$-3-.)
      00292E 83               [24] 1184 	movc	a,@a+pc
      00292F F5 82            [12] 1185 	mov	dpl,a
      002931 EE               [12] 1186 	mov	a,r6
      002932 24 16            [12] 1187 	add	a,#(00174$-3-.)
      002934 83               [24] 1188 	movc	a,@a+pc
      002935 F5 83            [12] 1189 	mov	dph,a
      002937 E4               [12] 1190 	clr	a
      002938 73               [24] 1191 	jmp	@a+dptr
      002939                       1192 00173$:
      002939 5D                    1193 	.db	00101$
      00293A C5                    1194 	.db	00102$
      00293B C3                    1195 	.db	00104$
      00293C 94                    1196 	.db	00106$
      00293D F6                    1197 	.db	00107$
      00293E 61                    1198 	.db	00108$
      00293F 9C                    1199 	.db	00109$
      002940 B7                    1200 	.db	00110$
      002941 19                    1201 	.db	00111$
      002942 E8                    1202 	.db	00114$
      002943 E8                    1203 	.db	00114$
      002944 E8                    1204 	.db	00114$
      002945 E8                    1205 	.db	00114$
      002946 E8                    1206 	.db	00114$
      002947 E8                    1207 	.db	00114$
      002948 E8                    1208 	.db	00114$
      002949 D9                    1209 	.db	00112$
      00294A E2                    1210 	.db	00113$
      00294B                       1211 00174$:
      00294B 29                    1212 	.db	00101$>>8
      00294C 29                    1213 	.db	00102$>>8
      00294D 2A                    1214 	.db	00104$>>8
      00294E 2B                    1215 	.db	00106$>>8
      00294F 2B                    1216 	.db	00107$>>8
      002950 2C                    1217 	.db	00108$>>8
      002951 2C                    1218 	.db	00109$>>8
      002952 2C                    1219 	.db	00110$>>8
      002953 2D                    1220 	.db	00111$>>8
      002954 2D                    1221 	.db	00114$>>8
      002955 2D                    1222 	.db	00114$>>8
      002956 2D                    1223 	.db	00114$>>8
      002957 2D                    1224 	.db	00114$>>8
      002958 2D                    1225 	.db	00114$>>8
      002959 2D                    1226 	.db	00114$>>8
      00295A 2D                    1227 	.db	00114$>>8
      00295B 2D                    1228 	.db	00112$>>8
      00295C 2D                    1229 	.db	00113$>>8
                                   1230 ;	main.c:82: case '1': {
      00295D                       1231 00101$:
                                   1232 ;	main.c:83: printf("Enter the register bank to select:\n\r");
      00295D 74 16            [12] 1233 	mov	a,#___str_14
      00295F C0 E0            [24] 1234 	push	acc
      002961 74 45            [12] 1235 	mov	a,#(___str_14 >> 8)
      002963 C0 E0            [24] 1236 	push	acc
      002965 74 80            [12] 1237 	mov	a,#0x80
      002967 C0 E0            [24] 1238 	push	acc
      002969 12 38 9A         [24] 1239 	lcall	_printf
      00296C 15 81            [12] 1240 	dec	sp
      00296E 15 81            [12] 1241 	dec	sp
      002970 15 81            [12] 1242 	dec	sp
                                   1243 ;	main.c:84: uint8_t reg_bank = get_user_buffer_size();
      002972 12 27 54         [24] 1244 	lcall	_get_user_buffer_size
      002975 AE 82            [24] 1245 	mov	r6, dpl
                                   1246 ;	main.c:85: printf("Enter the address of the Control Register:\n\r");
      002977 C0 06            [24] 1247 	push	ar6
      002979 74 3B            [12] 1248 	mov	a,#___str_15
      00297B C0 E0            [24] 1249 	push	acc
      00297D 74 45            [12] 1250 	mov	a,#(___str_15 >> 8)
      00297F C0 E0            [24] 1251 	push	acc
      002981 74 80            [12] 1252 	mov	a,#0x80
      002983 C0 E0            [24] 1253 	push	acc
      002985 12 38 9A         [24] 1254 	lcall	_printf
      002988 15 81            [12] 1255 	dec	sp
      00298A 15 81            [12] 1256 	dec	sp
      00298C 15 81            [12] 1257 	dec	sp
                                   1258 ;	main.c:86: uint8_t addr = get_user_buffer_size();
      00298E 12 27 54         [24] 1259 	lcall	_get_user_buffer_size
      002991 AD 82            [24] 1260 	mov	r5, dpl
                                   1261 ;	main.c:87: printf("Enter the data you want to write:\n\r");
      002993 C0 05            [24] 1262 	push	ar5
      002995 74 68            [12] 1263 	mov	a,#___str_16
      002997 C0 E0            [24] 1264 	push	acc
      002999 74 45            [12] 1265 	mov	a,#(___str_16 >> 8)
      00299B C0 E0            [24] 1266 	push	acc
      00299D 74 80            [12] 1267 	mov	a,#0x80
      00299F C0 E0            [24] 1268 	push	acc
      0029A1 12 38 9A         [24] 1269 	lcall	_printf
      0029A4 15 81            [12] 1270 	dec	sp
      0029A6 15 81            [12] 1271 	dec	sp
      0029A8 15 81            [12] 1272 	dec	sp
                                   1273 ;	main.c:88: uint8_t data = get_user_buffer_size();
      0029AA 12 27 54         [24] 1274 	lcall	_get_user_buffer_size
      0029AD AC 82            [24] 1275 	mov	r4, dpl
      0029AF D0 05            [24] 1276 	pop	ar5
      0029B1 D0 06            [24] 1277 	pop	ar6
                                   1278 ;	main.c:89: spi_control_write(reg_bank, addr, data);
      0029B3 90 03 4D         [24] 1279 	mov	dptr,#_spi_control_write_PARM_2
      0029B6 ED               [12] 1280 	mov	a,r5
      0029B7 F0               [24] 1281 	movx	@dptr,a
      0029B8 90 03 4E         [24] 1282 	mov	dptr,#_spi_control_write_PARM_3
      0029BB EC               [12] 1283 	mov	a,r4
      0029BC F0               [24] 1284 	movx	@dptr,a
      0029BD 8E 82            [24] 1285 	mov	dpl, r6
      0029BF 12 2E B0         [24] 1286 	lcall	_spi_control_write
                                   1287 ;	main.c:90: break;
      0029C2 02 27 F3         [24] 1288 	ljmp	00117$
                                   1289 ;	main.c:92: case '2': {
      0029C5                       1290 00102$:
                                   1291 ;	main.c:93: printf("Enter the number of bytes to write:\n\r");
      0029C5 74 8C            [12] 1292 	mov	a,#___str_17
      0029C7 C0 E0            [24] 1293 	push	acc
      0029C9 74 45            [12] 1294 	mov	a,#(___str_17 >> 8)
      0029CB C0 E0            [24] 1295 	push	acc
      0029CD 74 80            [12] 1296 	mov	a,#0x80
      0029CF C0 E0            [24] 1297 	push	acc
      0029D1 12 38 9A         [24] 1298 	lcall	_printf
      0029D4 15 81            [12] 1299 	dec	sp
      0029D6 15 81            [12] 1300 	dec	sp
      0029D8 15 81            [12] 1301 	dec	sp
                                   1302 ;	main.c:94: int num_bytes = get_user_buffer_size();
      0029DA 12 27 54         [24] 1303 	lcall	_get_user_buffer_size
      0029DD AE 82            [24] 1304 	mov	r6, dpl
      0029DF AF 83            [24] 1305 	mov	r7, dph
                                   1306 ;	main.c:95: printf("Enter the starting address:\n\r");
      0029E1 C0 07            [24] 1307 	push	ar7
      0029E3 C0 06            [24] 1308 	push	ar6
      0029E5 74 B2            [12] 1309 	mov	a,#___str_18
      0029E7 C0 E0            [24] 1310 	push	acc
      0029E9 74 45            [12] 1311 	mov	a,#(___str_18 >> 8)
      0029EB C0 E0            [24] 1312 	push	acc
      0029ED 74 80            [12] 1313 	mov	a,#0x80
      0029EF C0 E0            [24] 1314 	push	acc
      0029F1 12 38 9A         [24] 1315 	lcall	_printf
      0029F4 15 81            [12] 1316 	dec	sp
      0029F6 15 81            [12] 1317 	dec	sp
      0029F8 15 81            [12] 1318 	dec	sp
                                   1319 ;	main.c:96: uint16_t start_address = get_user_buffer_size();
      0029FA 12 27 54         [24] 1320 	lcall	_get_user_buffer_size
      0029FD AC 82            [24] 1321 	mov	r4, dpl
      0029FF AD 83            [24] 1322 	mov	r5, dph
      002A01 D0 06            [24] 1323 	pop	ar6
      002A03 D0 07            [24] 1324 	pop	ar7
                                   1325 ;	main.c:98: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      002A05 C0 07            [24] 1326 	push	ar7
      002A07 C0 06            [24] 1327 	push	ar6
      002A09 C0 05            [24] 1328 	push	ar5
      002A0B C0 04            [24] 1329 	push	ar4
      002A0D C0 06            [24] 1330 	push	ar6
      002A0F C0 07            [24] 1331 	push	ar7
      002A11 74 D0            [12] 1332 	mov	a,#___str_19
      002A13 C0 E0            [24] 1333 	push	acc
      002A15 74 45            [12] 1334 	mov	a,#(___str_19 >> 8)
      002A17 C0 E0            [24] 1335 	push	acc
      002A19 74 80            [12] 1336 	mov	a,#0x80
      002A1B C0 E0            [24] 1337 	push	acc
      002A1D 12 38 9A         [24] 1338 	lcall	_printf
      002A20 E5 81            [12] 1339 	mov	a,sp
      002A22 24 FB            [12] 1340 	add	a,#0xfb
      002A24 F5 81            [12] 1341 	mov	sp,a
      002A26 D0 04            [24] 1342 	pop	ar4
      002A28 D0 05            [24] 1343 	pop	ar5
      002A2A D0 06            [24] 1344 	pop	ar6
      002A2C D0 07            [24] 1345 	pop	ar7
                                   1346 ;	main.c:99: for (int i = 0; i < num_bytes; i++) {
      002A2E 7A 00            [12] 1347 	mov	r2,#0x00
      002A30 7B 00            [12] 1348 	mov	r3,#0x00
      002A32                       1349 00120$:
      002A32 C3               [12] 1350 	clr	c
      002A33 EA               [12] 1351 	mov	a,r2
      002A34 9E               [12] 1352 	subb	a,r6
      002A35 EB               [12] 1353 	mov	a,r3
      002A36 64 80            [12] 1354 	xrl	a,#0x80
      002A38 8F F0            [24] 1355 	mov	b,r7
      002A3A 63 F0 80         [24] 1356 	xrl	b,#0x80
      002A3D 95 F0            [12] 1357 	subb	a,b
      002A3F 50 63            [24] 1358 	jnc	00103$
                                   1359 ;	main.c:100: printf("Byte %d: ", i);
      002A41 C0 04            [24] 1360 	push	ar4
      002A43 C0 05            [24] 1361 	push	ar5
      002A45 C0 07            [24] 1362 	push	ar7
      002A47 C0 06            [24] 1363 	push	ar6
      002A49 C0 05            [24] 1364 	push	ar5
      002A4B C0 04            [24] 1365 	push	ar4
      002A4D C0 03            [24] 1366 	push	ar3
      002A4F C0 02            [24] 1367 	push	ar2
      002A51 C0 02            [24] 1368 	push	ar2
      002A53 C0 03            [24] 1369 	push	ar3
      002A55 74 F3            [12] 1370 	mov	a,#___str_20
      002A57 C0 E0            [24] 1371 	push	acc
      002A59 74 45            [12] 1372 	mov	a,#(___str_20 >> 8)
      002A5B C0 E0            [24] 1373 	push	acc
      002A5D 74 80            [12] 1374 	mov	a,#0x80
      002A5F C0 E0            [24] 1375 	push	acc
      002A61 12 38 9A         [24] 1376 	lcall	_printf
      002A64 E5 81            [12] 1377 	mov	a,sp
      002A66 24 FB            [12] 1378 	add	a,#0xfb
      002A68 F5 81            [12] 1379 	mov	sp,a
      002A6A D0 02            [24] 1380 	pop	ar2
      002A6C D0 03            [24] 1381 	pop	ar3
      002A6E D0 04            [24] 1382 	pop	ar4
      002A70 D0 05            [24] 1383 	pop	ar5
                                   1384 ;	main.c:101: buffer[i] = get_user_buffer_size();
      002A72 EA               [12] 1385 	mov	a,r2
      002A73 24 4B            [12] 1386 	add	a, #_main_buffer_40003_89
      002A75 F8               [12] 1387 	mov	r0,a
      002A76 EB               [12] 1388 	mov	a,r3
      002A77 34 01            [12] 1389 	addc	a, #(_main_buffer_40003_89 >> 8)
      002A79 F9               [12] 1390 	mov	r1,a
      002A7A C0 03            [24] 1391 	push	ar3
      002A7C C0 02            [24] 1392 	push	ar2
      002A7E C0 01            [24] 1393 	push	ar1
      002A80 C0 00            [24] 1394 	push	ar0
      002A82 12 27 54         [24] 1395 	lcall	_get_user_buffer_size
      002A85 AC 82            [24] 1396 	mov	r4, dpl
      002A87 D0 00            [24] 1397 	pop	ar0
      002A89 D0 01            [24] 1398 	pop	ar1
      002A8B D0 02            [24] 1399 	pop	ar2
      002A8D D0 03            [24] 1400 	pop	ar3
      002A8F D0 06            [24] 1401 	pop	ar6
      002A91 D0 07            [24] 1402 	pop	ar7
      002A93 88 82            [24] 1403 	mov	dpl,r0
      002A95 89 83            [24] 1404 	mov	dph,r1
      002A97 EC               [12] 1405 	mov	a,r4
      002A98 F0               [24] 1406 	movx	@dptr,a
                                   1407 ;	main.c:99: for (int i = 0; i < num_bytes; i++) {
      002A99 0A               [12] 1408 	inc	r2
      002A9A BA 00 01         [24] 1409 	cjne	r2,#0x00,00176$
      002A9D 0B               [12] 1410 	inc	r3
      002A9E                       1411 00176$:
      002A9E D0 05            [24] 1412 	pop	ar5
      002AA0 D0 04            [24] 1413 	pop	ar4
      002AA2 80 8E            [24] 1414 	sjmp	00120$
      002AA4                       1415 00103$:
                                   1416 ;	main.c:103: spi_buffer_write(num_bytes, start_address, buffer);
      002AA4 90 03 67         [24] 1417 	mov	dptr,#_spi_buffer_write_PARM_2
      002AA7 EC               [12] 1418 	mov	a,r4
      002AA8 F0               [24] 1419 	movx	@dptr,a
      002AA9 ED               [12] 1420 	mov	a,r5
      002AAA A3               [24] 1421 	inc	dptr
      002AAB F0               [24] 1422 	movx	@dptr,a
      002AAC 90 03 69         [24] 1423 	mov	dptr,#_spi_buffer_write_PARM_3
      002AAF 74 4B            [12] 1424 	mov	a,#_main_buffer_40003_89
      002AB1 F0               [24] 1425 	movx	@dptr,a
      002AB2 74 01            [12] 1426 	mov	a,#(_main_buffer_40003_89 >> 8)
      002AB4 A3               [24] 1427 	inc	dptr
      002AB5 F0               [24] 1428 	movx	@dptr,a
      002AB6 E4               [12] 1429 	clr	a
      002AB7 A3               [24] 1430 	inc	dptr
      002AB8 F0               [24] 1431 	movx	@dptr,a
      002AB9 8E 82            [24] 1432 	mov	dpl, r6
      002ABB 8F 83            [24] 1433 	mov	dph, r7
      002ABD 12 34 2C         [24] 1434 	lcall	_spi_buffer_write
                                   1435 ;	main.c:104: break;
      002AC0 02 27 F3         [24] 1436 	ljmp	00117$
                                   1437 ;	main.c:106: case '3': {
      002AC3                       1438 00104$:
                                   1439 ;	main.c:107: printf("Enter the number of bytes to read:\n\r");
      002AC3 74 FD            [12] 1440 	mov	a,#___str_21
      002AC5 C0 E0            [24] 1441 	push	acc
      002AC7 74 45            [12] 1442 	mov	a,#(___str_21 >> 8)
      002AC9 C0 E0            [24] 1443 	push	acc
      002ACB 74 80            [12] 1444 	mov	a,#0x80
      002ACD C0 E0            [24] 1445 	push	acc
      002ACF 12 38 9A         [24] 1446 	lcall	_printf
      002AD2 15 81            [12] 1447 	dec	sp
      002AD4 15 81            [12] 1448 	dec	sp
      002AD6 15 81            [12] 1449 	dec	sp
                                   1450 ;	main.c:108: int num_bytes = get_user_buffer_size();
      002AD8 12 27 54         [24] 1451 	lcall	_get_user_buffer_size
      002ADB AE 82            [24] 1452 	mov	r6, dpl
      002ADD AF 83            [24] 1453 	mov	r7, dph
                                   1454 ;	main.c:109: printf("Enter the starting address:\n\r");
      002ADF C0 07            [24] 1455 	push	ar7
      002AE1 C0 06            [24] 1456 	push	ar6
      002AE3 74 B2            [12] 1457 	mov	a,#___str_18
      002AE5 C0 E0            [24] 1458 	push	acc
      002AE7 74 45            [12] 1459 	mov	a,#(___str_18 >> 8)
      002AE9 C0 E0            [24] 1460 	push	acc
      002AEB 74 80            [12] 1461 	mov	a,#0x80
      002AED C0 E0            [24] 1462 	push	acc
      002AEF 12 38 9A         [24] 1463 	lcall	_printf
      002AF2 15 81            [12] 1464 	dec	sp
      002AF4 15 81            [12] 1465 	dec	sp
      002AF6 15 81            [12] 1466 	dec	sp
                                   1467 ;	main.c:110: uint16_t start_address = get_user_buffer_size();
      002AF8 12 27 54         [24] 1468 	lcall	_get_user_buffer_size
      002AFB AC 82            [24] 1469 	mov	r4, dpl
      002AFD AD 83            [24] 1470 	mov	r5, dph
      002AFF D0 06            [24] 1471 	pop	ar6
      002B01 D0 07            [24] 1472 	pop	ar7
                                   1473 ;	main.c:112: spi_buffer_read(num_bytes, start_address, buffer);
      002B03 90 03 5E         [24] 1474 	mov	dptr,#_spi_buffer_read_PARM_2
      002B06 EC               [12] 1475 	mov	a,r4
      002B07 F0               [24] 1476 	movx	@dptr,a
      002B08 ED               [12] 1477 	mov	a,r5
      002B09 A3               [24] 1478 	inc	dptr
      002B0A F0               [24] 1479 	movx	@dptr,a
      002B0B 90 03 60         [24] 1480 	mov	dptr,#_spi_buffer_read_PARM_3
      002B0E 74 4B            [12] 1481 	mov	a,#_main_buffer_40003_94
      002B10 F0               [24] 1482 	movx	@dptr,a
      002B11 74 02            [12] 1483 	mov	a,#(_main_buffer_40003_94 >> 8)
      002B13 A3               [24] 1484 	inc	dptr
      002B14 F0               [24] 1485 	movx	@dptr,a
      002B15 E4               [12] 1486 	clr	a
      002B16 A3               [24] 1487 	inc	dptr
      002B17 F0               [24] 1488 	movx	@dptr,a
      002B18 8E 82            [24] 1489 	mov	dpl, r6
      002B1A 8F 83            [24] 1490 	mov	dph, r7
      002B1C C0 07            [24] 1491 	push	ar7
      002B1E C0 06            [24] 1492 	push	ar6
      002B20 12 32 8B         [24] 1493 	lcall	_spi_buffer_read
                                   1494 ;	main.c:113: printf("Read Data:\n\r");
      002B23 74 22            [12] 1495 	mov	a,#___str_22
      002B25 C0 E0            [24] 1496 	push	acc
      002B27 74 46            [12] 1497 	mov	a,#(___str_22 >> 8)
      002B29 C0 E0            [24] 1498 	push	acc
      002B2B 74 80            [12] 1499 	mov	a,#0x80
      002B2D C0 E0            [24] 1500 	push	acc
      002B2F 12 38 9A         [24] 1501 	lcall	_printf
      002B32 15 81            [12] 1502 	dec	sp
      002B34 15 81            [12] 1503 	dec	sp
      002B36 15 81            [12] 1504 	dec	sp
      002B38 D0 06            [24] 1505 	pop	ar6
      002B3A D0 07            [24] 1506 	pop	ar7
                                   1507 ;	main.c:114: for (int i = 0; i < num_bytes; i++) {
      002B3C 7C 00            [12] 1508 	mov	r4,#0x00
      002B3E 7D 00            [12] 1509 	mov	r5,#0x00
      002B40                       1510 00123$:
      002B40 C3               [12] 1511 	clr	c
      002B41 EC               [12] 1512 	mov	a,r4
      002B42 9E               [12] 1513 	subb	a,r6
      002B43 ED               [12] 1514 	mov	a,r5
      002B44 64 80            [12] 1515 	xrl	a,#0x80
      002B46 8F F0            [24] 1516 	mov	b,r7
      002B48 63 F0 80         [24] 1517 	xrl	b,#0x80
      002B4B 95 F0            [12] 1518 	subb	a,b
      002B4D 40 03            [24] 1519 	jc	00177$
      002B4F 02 27 F3         [24] 1520 	ljmp	00117$
      002B52                       1521 00177$:
                                   1522 ;	main.c:115: printf("Byte %d: 0x%02X\n\r", i, buffer[i]);
      002B52 EC               [12] 1523 	mov	a,r4
      002B53 24 4B            [12] 1524 	add	a, #_main_buffer_40003_94
      002B55 F5 82            [12] 1525 	mov	dpl,a
      002B57 ED               [12] 1526 	mov	a,r5
      002B58 34 02            [12] 1527 	addc	a, #(_main_buffer_40003_94 >> 8)
      002B5A F5 83            [12] 1528 	mov	dph,a
      002B5C E0               [24] 1529 	movx	a,@dptr
      002B5D FB               [12] 1530 	mov	r3,a
      002B5E 7A 00            [12] 1531 	mov	r2,#0x00
      002B60 C0 07            [24] 1532 	push	ar7
      002B62 C0 06            [24] 1533 	push	ar6
      002B64 C0 05            [24] 1534 	push	ar5
      002B66 C0 04            [24] 1535 	push	ar4
      002B68 C0 03            [24] 1536 	push	ar3
      002B6A C0 02            [24] 1537 	push	ar2
      002B6C C0 04            [24] 1538 	push	ar4
      002B6E C0 05            [24] 1539 	push	ar5
      002B70 74 2F            [12] 1540 	mov	a,#___str_23
      002B72 C0 E0            [24] 1541 	push	acc
      002B74 74 46            [12] 1542 	mov	a,#(___str_23 >> 8)
      002B76 C0 E0            [24] 1543 	push	acc
      002B78 74 80            [12] 1544 	mov	a,#0x80
      002B7A C0 E0            [24] 1545 	push	acc
      002B7C 12 38 9A         [24] 1546 	lcall	_printf
      002B7F E5 81            [12] 1547 	mov	a,sp
      002B81 24 F9            [12] 1548 	add	a,#0xf9
      002B83 F5 81            [12] 1549 	mov	sp,a
      002B85 D0 04            [24] 1550 	pop	ar4
      002B87 D0 05            [24] 1551 	pop	ar5
      002B89 D0 06            [24] 1552 	pop	ar6
      002B8B D0 07            [24] 1553 	pop	ar7
                                   1554 ;	main.c:114: for (int i = 0; i < num_bytes; i++) {
      002B8D 0C               [12] 1555 	inc	r4
                                   1556 ;	main.c:119: case '4': {
      002B8E BC 00 AF         [24] 1557 	cjne	r4,#0x00,00123$
      002B91 0D               [12] 1558 	inc	r5
      002B92 80 AC            [24] 1559 	sjmp	00123$
      002B94                       1560 00106$:
                                   1561 ;	main.c:120: printf("Enter the MAC register bank to select:\n\r");
      002B94 74 41            [12] 1562 	mov	a,#___str_24
      002B96 C0 E0            [24] 1563 	push	acc
      002B98 74 46            [12] 1564 	mov	a,#(___str_24 >> 8)
      002B9A C0 E0            [24] 1565 	push	acc
      002B9C 74 80            [12] 1566 	mov	a,#0x80
      002B9E C0 E0            [24] 1567 	push	acc
      002BA0 12 38 9A         [24] 1568 	lcall	_printf
      002BA3 15 81            [12] 1569 	dec	sp
      002BA5 15 81            [12] 1570 	dec	sp
      002BA7 15 81            [12] 1571 	dec	sp
                                   1572 ;	main.c:121: uint8_t reg_bank = get_user_buffer_size();
      002BA9 12 27 54         [24] 1573 	lcall	_get_user_buffer_size
      002BAC AE 82            [24] 1574 	mov	r6, dpl
                                   1575 ;	main.c:122: printf("Enter the address of the MAC Register:\n\r");
      002BAE C0 06            [24] 1576 	push	ar6
      002BB0 74 6A            [12] 1577 	mov	a,#___str_25
      002BB2 C0 E0            [24] 1578 	push	acc
      002BB4 74 46            [12] 1579 	mov	a,#(___str_25 >> 8)
      002BB6 C0 E0            [24] 1580 	push	acc
      002BB8 74 80            [12] 1581 	mov	a,#0x80
      002BBA C0 E0            [24] 1582 	push	acc
      002BBC 12 38 9A         [24] 1583 	lcall	_printf
      002BBF 15 81            [12] 1584 	dec	sp
      002BC1 15 81            [12] 1585 	dec	sp
      002BC3 15 81            [12] 1586 	dec	sp
                                   1587 ;	main.c:123: uint8_t addr = get_user_buffer_size();
      002BC5 12 27 54         [24] 1588 	lcall	_get_user_buffer_size
      002BC8 AD 82            [24] 1589 	mov	r5, dpl
      002BCA D0 06            [24] 1590 	pop	ar6
                                   1591 ;	main.c:124: uint8_t data = mac_spi_read(addr, reg_bank);
      002BCC 90 03 56         [24] 1592 	mov	dptr,#_mac_spi_read_PARM_2
      002BCF EE               [12] 1593 	mov	a,r6
      002BD0 F0               [24] 1594 	movx	@dptr,a
      002BD1 8D 82            [24] 1595 	mov	dpl, r5
      002BD3 12 30 26         [24] 1596 	lcall	_mac_spi_read
      002BD6 AF 82            [24] 1597 	mov	r7, dpl
                                   1598 ;	main.c:125: printf("MAC Register Data: 0x%02X\n\r", data);
      002BD8 7E 00            [12] 1599 	mov	r6,#0x00
      002BDA C0 07            [24] 1600 	push	ar7
      002BDC C0 06            [24] 1601 	push	ar6
      002BDE 74 93            [12] 1602 	mov	a,#___str_26
      002BE0 C0 E0            [24] 1603 	push	acc
      002BE2 74 46            [12] 1604 	mov	a,#(___str_26 >> 8)
      002BE4 C0 E0            [24] 1605 	push	acc
      002BE6 74 80            [12] 1606 	mov	a,#0x80
      002BE8 C0 E0            [24] 1607 	push	acc
      002BEA 12 38 9A         [24] 1608 	lcall	_printf
      002BED E5 81            [12] 1609 	mov	a,sp
      002BEF 24 FB            [12] 1610 	add	a,#0xfb
      002BF1 F5 81            [12] 1611 	mov	sp,a
                                   1612 ;	main.c:126: break;
      002BF3 02 27 F3         [24] 1613 	ljmp	00117$
                                   1614 ;	main.c:128: case '5': {
      002BF6                       1615 00107$:
                                   1616 ;	main.c:129: printf("Enter the PHY register address:\n\r");
      002BF6 74 AF            [12] 1617 	mov	a,#___str_27
      002BF8 C0 E0            [24] 1618 	push	acc
      002BFA 74 46            [12] 1619 	mov	a,#(___str_27 >> 8)
      002BFC C0 E0            [24] 1620 	push	acc
      002BFE 74 80            [12] 1621 	mov	a,#0x80
      002C00 C0 E0            [24] 1622 	push	acc
      002C02 12 38 9A         [24] 1623 	lcall	_printf
      002C05 15 81            [12] 1624 	dec	sp
      002C07 15 81            [12] 1625 	dec	sp
      002C09 15 81            [12] 1626 	dec	sp
                                   1627 ;	main.c:130: uint8_t addr = get_user_buffer_size();
      002C0B 12 27 54         [24] 1628 	lcall	_get_user_buffer_size
      002C0E AE 82            [24] 1629 	mov	r6, dpl
                                   1630 ;	main.c:131: printf("Enter the 16-bit data to write:\n\r");
      002C10 C0 06            [24] 1631 	push	ar6
      002C12 74 D1            [12] 1632 	mov	a,#___str_28
      002C14 C0 E0            [24] 1633 	push	acc
      002C16 74 46            [12] 1634 	mov	a,#(___str_28 >> 8)
      002C18 C0 E0            [24] 1635 	push	acc
      002C1A 74 80            [12] 1636 	mov	a,#0x80
      002C1C C0 E0            [24] 1637 	push	acc
      002C1E 12 38 9A         [24] 1638 	lcall	_printf
      002C21 15 81            [12] 1639 	dec	sp
      002C23 15 81            [12] 1640 	dec	sp
      002C25 15 81            [12] 1641 	dec	sp
                                   1642 ;	main.c:132: uint16_t data = get_user_buffer_size();
      002C27 12 27 54         [24] 1643 	lcall	_get_user_buffer_size
      002C2A AD 82            [24] 1644 	mov	r5, dpl
      002C2C AF 83            [24] 1645 	mov	r7, dph
      002C2E D0 06            [24] 1646 	pop	ar6
                                   1647 ;	main.c:133: phy_spi_write(addr, data);
      002C30 90 03 53         [24] 1648 	mov	dptr,#_phy_spi_write_PARM_2
      002C33 ED               [12] 1649 	mov	a,r5
      002C34 F0               [24] 1650 	movx	@dptr,a
      002C35 EF               [12] 1651 	mov	a,r7
      002C36 A3               [24] 1652 	inc	dptr
      002C37 F0               [24] 1653 	movx	@dptr,a
      002C38 8E 82            [24] 1654 	mov	dpl, r6
      002C3A C0 07            [24] 1655 	push	ar7
      002C3C C0 05            [24] 1656 	push	ar5
      002C3E 12 2F A3         [24] 1657 	lcall	_phy_spi_write
      002C41 D0 05            [24] 1658 	pop	ar5
      002C43 D0 07            [24] 1659 	pop	ar7
                                   1660 ;	main.c:134: printf("PHY Write Data: 0x%04X\n\r", data);
      002C45 C0 05            [24] 1661 	push	ar5
      002C47 C0 07            [24] 1662 	push	ar7
      002C49 74 F3            [12] 1663 	mov	a,#___str_29
      002C4B C0 E0            [24] 1664 	push	acc
      002C4D 74 46            [12] 1665 	mov	a,#(___str_29 >> 8)
      002C4F C0 E0            [24] 1666 	push	acc
      002C51 74 80            [12] 1667 	mov	a,#0x80
      002C53 C0 E0            [24] 1668 	push	acc
      002C55 12 38 9A         [24] 1669 	lcall	_printf
      002C58 E5 81            [12] 1670 	mov	a,sp
      002C5A 24 FB            [12] 1671 	add	a,#0xfb
      002C5C F5 81            [12] 1672 	mov	sp,a
                                   1673 ;	main.c:135: break;
      002C5E 02 27 F3         [24] 1674 	ljmp	00117$
                                   1675 ;	main.c:137: case '6': {
      002C61                       1676 00108$:
                                   1677 ;	main.c:138: printf("Enter the PHY register address to read:\n\r");
      002C61 74 0C            [12] 1678 	mov	a,#___str_30
      002C63 C0 E0            [24] 1679 	push	acc
      002C65 74 47            [12] 1680 	mov	a,#(___str_30 >> 8)
      002C67 C0 E0            [24] 1681 	push	acc
      002C69 74 80            [12] 1682 	mov	a,#0x80
      002C6B C0 E0            [24] 1683 	push	acc
      002C6D 12 38 9A         [24] 1684 	lcall	_printf
      002C70 15 81            [12] 1685 	dec	sp
      002C72 15 81            [12] 1686 	dec	sp
      002C74 15 81            [12] 1687 	dec	sp
                                   1688 ;	main.c:139: uint8_t addr = get_user_buffer_size();
      002C76 12 27 54         [24] 1689 	lcall	_get_user_buffer_size
                                   1690 ;	main.c:140: uint16_t data = phy_spi_read(addr);
      002C79 12 30 94         [24] 1691 	lcall	_phy_spi_read
      002C7C AE 82            [24] 1692 	mov	r6, dpl
      002C7E AF 83            [24] 1693 	mov	r7, dph
                                   1694 ;	main.c:141: printf("PHY Read Data: 0x%04X\n\r", data);
      002C80 C0 06            [24] 1695 	push	ar6
      002C82 C0 07            [24] 1696 	push	ar7
      002C84 74 36            [12] 1697 	mov	a,#___str_31
      002C86 C0 E0            [24] 1698 	push	acc
      002C88 74 47            [12] 1699 	mov	a,#(___str_31 >> 8)
      002C8A C0 E0            [24] 1700 	push	acc
      002C8C 74 80            [12] 1701 	mov	a,#0x80
      002C8E C0 E0            [24] 1702 	push	acc
      002C90 12 38 9A         [24] 1703 	lcall	_printf
      002C93 E5 81            [12] 1704 	mov	a,sp
      002C95 24 FB            [12] 1705 	add	a,#0xfb
      002C97 F5 81            [12] 1706 	mov	sp,a
                                   1707 ;	main.c:142: break;
      002C99 02 27 F3         [24] 1708 	ljmp	00117$
                                   1709 ;	main.c:144: case '7': {
      002C9C                       1710 00109$:
                                   1711 ;	main.c:145: printf("Resetting ENC28J60...\n\r");
      002C9C 74 4E            [12] 1712 	mov	a,#___str_32
      002C9E C0 E0            [24] 1713 	push	acc
      002CA0 74 47            [12] 1714 	mov	a,#(___str_32 >> 8)
      002CA2 C0 E0            [24] 1715 	push	acc
      002CA4 74 80            [12] 1716 	mov	a,#0x80
      002CA6 C0 E0            [24] 1717 	push	acc
      002CA8 12 38 9A         [24] 1718 	lcall	_printf
      002CAB 15 81            [12] 1719 	dec	sp
      002CAD 15 81            [12] 1720 	dec	sp
      002CAF 15 81            [12] 1721 	dec	sp
                                   1722 ;	main.c:146: enc_reset();
      002CB1 12 2F 2A         [24] 1723 	lcall	_enc_reset
                                   1724 ;	main.c:147: break;
      002CB4 02 27 F3         [24] 1725 	ljmp	00117$
                                   1726 ;	main.c:149: case '8': {
      002CB7                       1727 00110$:
                                   1728 ;	main.c:150: printf("Enter the ETH register address to read:\n\r");
      002CB7 74 66            [12] 1729 	mov	a,#___str_33
      002CB9 C0 E0            [24] 1730 	push	acc
      002CBB 74 47            [12] 1731 	mov	a,#(___str_33 >> 8)
      002CBD C0 E0            [24] 1732 	push	acc
      002CBF 74 80            [12] 1733 	mov	a,#0x80
      002CC1 C0 E0            [24] 1734 	push	acc
      002CC3 12 38 9A         [24] 1735 	lcall	_printf
      002CC6 15 81            [12] 1736 	dec	sp
      002CC8 15 81            [12] 1737 	dec	sp
      002CCA 15 81            [12] 1738 	dec	sp
                                   1739 ;	main.c:151: uint8_t addr = get_user_buffer_size();
      002CCC 12 27 54         [24] 1740 	lcall	_get_user_buffer_size
      002CCF AE 82            [24] 1741 	mov	r6, dpl
                                   1742 ;	main.c:152: printf("Enter the bank (0 or 1):\n\r");
      002CD1 C0 06            [24] 1743 	push	ar6
      002CD3 74 90            [12] 1744 	mov	a,#___str_34
      002CD5 C0 E0            [24] 1745 	push	acc
      002CD7 74 47            [12] 1746 	mov	a,#(___str_34 >> 8)
      002CD9 C0 E0            [24] 1747 	push	acc
      002CDB 74 80            [12] 1748 	mov	a,#0x80
      002CDD C0 E0            [24] 1749 	push	acc
      002CDF 12 38 9A         [24] 1750 	lcall	_printf
      002CE2 15 81            [12] 1751 	dec	sp
      002CE4 15 81            [12] 1752 	dec	sp
      002CE6 15 81            [12] 1753 	dec	sp
                                   1754 ;	main.c:153: uint8_t bank = get_user_buffer_size();
      002CE8 12 27 54         [24] 1755 	lcall	_get_user_buffer_size
      002CEB AD 82            [24] 1756 	mov	r5, dpl
      002CED D0 06            [24] 1757 	pop	ar6
      002CEF 90 03 51         [24] 1758 	mov	dptr,#_eth_spi_read_PARM_2
      002CF2 ED               [12] 1759 	mov	a,r5
      002CF3 F0               [24] 1760 	movx	@dptr,a
                                   1761 ;	main.c:154: uint8_t data = eth_spi_read(addr, bank);
      002CF4 8E 82            [24] 1762 	mov	dpl, r6
      002CF6 12 2F 35         [24] 1763 	lcall	_eth_spi_read
      002CF9 AF 82            [24] 1764 	mov	r7, dpl
                                   1765 ;	main.c:155: printf("ETH Register Data: 0x%02X\n\r", data);
      002CFB 7E 00            [12] 1766 	mov	r6,#0x00
      002CFD C0 07            [24] 1767 	push	ar7
      002CFF C0 06            [24] 1768 	push	ar6
      002D01 74 AB            [12] 1769 	mov	a,#___str_35
      002D03 C0 E0            [24] 1770 	push	acc
      002D05 74 47            [12] 1771 	mov	a,#(___str_35 >> 8)
      002D07 C0 E0            [24] 1772 	push	acc
      002D09 74 80            [12] 1773 	mov	a,#0x80
      002D0B C0 E0            [24] 1774 	push	acc
      002D0D 12 38 9A         [24] 1775 	lcall	_printf
      002D10 E5 81            [12] 1776 	mov	a,sp
      002D12 24 FB            [12] 1777 	add	a,#0xfb
      002D14 F5 81            [12] 1778 	mov	sp,a
                                   1779 ;	main.c:156: break;
      002D16 02 27 F3         [24] 1780 	ljmp	00117$
                                   1781 ;	main.c:158: case '9': {
      002D19                       1782 00111$:
                                   1783 ;	main.c:159: printf("\n\rChoose an action: \n\r");
      002D19 74 09            [12] 1784 	mov	a,#___str_2
      002D1B C0 E0            [24] 1785 	push	acc
      002D1D 74 44            [12] 1786 	mov	a,#(___str_2 >> 8)
      002D1F C0 E0            [24] 1787 	push	acc
      002D21 74 80            [12] 1788 	mov	a,#0x80
      002D23 C0 E0            [24] 1789 	push	acc
      002D25 12 38 9A         [24] 1790 	lcall	_printf
      002D28 15 81            [12] 1791 	dec	sp
      002D2A 15 81            [12] 1792 	dec	sp
      002D2C 15 81            [12] 1793 	dec	sp
                                   1794 ;	main.c:160: printf("1 --> Control Write\n\r");
      002D2E 74 20            [12] 1795 	mov	a,#___str_3
      002D30 C0 E0            [24] 1796 	push	acc
      002D32 74 44            [12] 1797 	mov	a,#(___str_3 >> 8)
      002D34 C0 E0            [24] 1798 	push	acc
      002D36 74 80            [12] 1799 	mov	a,#0x80
      002D38 C0 E0            [24] 1800 	push	acc
      002D3A 12 38 9A         [24] 1801 	lcall	_printf
      002D3D 15 81            [12] 1802 	dec	sp
      002D3F 15 81            [12] 1803 	dec	sp
      002D41 15 81            [12] 1804 	dec	sp
                                   1805 ;	main.c:161: printf("2 --> Buffer Write\n\r");
      002D43 74 36            [12] 1806 	mov	a,#___str_4
      002D45 C0 E0            [24] 1807 	push	acc
      002D47 74 44            [12] 1808 	mov	a,#(___str_4 >> 8)
      002D49 C0 E0            [24] 1809 	push	acc
      002D4B 74 80            [12] 1810 	mov	a,#0x80
      002D4D C0 E0            [24] 1811 	push	acc
      002D4F 12 38 9A         [24] 1812 	lcall	_printf
      002D52 15 81            [12] 1813 	dec	sp
      002D54 15 81            [12] 1814 	dec	sp
      002D56 15 81            [12] 1815 	dec	sp
                                   1816 ;	main.c:162: printf("3 --> Buffer Read\n\r");
      002D58 74 4B            [12] 1817 	mov	a,#___str_5
      002D5A C0 E0            [24] 1818 	push	acc
      002D5C 74 44            [12] 1819 	mov	a,#(___str_5 >> 8)
      002D5E C0 E0            [24] 1820 	push	acc
      002D60 74 80            [12] 1821 	mov	a,#0x80
      002D62 C0 E0            [24] 1822 	push	acc
      002D64 12 38 9A         [24] 1823 	lcall	_printf
      002D67 15 81            [12] 1824 	dec	sp
      002D69 15 81            [12] 1825 	dec	sp
      002D6B 15 81            [12] 1826 	dec	sp
                                   1827 ;	main.c:163: printf("4 --> MAC Register Read\n\r");
      002D6D 74 5F            [12] 1828 	mov	a,#___str_6
      002D6F C0 E0            [24] 1829 	push	acc
      002D71 74 44            [12] 1830 	mov	a,#(___str_6 >> 8)
      002D73 C0 E0            [24] 1831 	push	acc
      002D75 74 80            [12] 1832 	mov	a,#0x80
      002D77 C0 E0            [24] 1833 	push	acc
      002D79 12 38 9A         [24] 1834 	lcall	_printf
      002D7C 15 81            [12] 1835 	dec	sp
      002D7E 15 81            [12] 1836 	dec	sp
      002D80 15 81            [12] 1837 	dec	sp
                                   1838 ;	main.c:164: printf("5 --> PHY SPI Write\n\r");
      002D82 74 79            [12] 1839 	mov	a,#___str_7
      002D84 C0 E0            [24] 1840 	push	acc
      002D86 74 44            [12] 1841 	mov	a,#(___str_7 >> 8)
      002D88 C0 E0            [24] 1842 	push	acc
      002D8A 74 80            [12] 1843 	mov	a,#0x80
      002D8C C0 E0            [24] 1844 	push	acc
      002D8E 12 38 9A         [24] 1845 	lcall	_printf
      002D91 15 81            [12] 1846 	dec	sp
      002D93 15 81            [12] 1847 	dec	sp
      002D95 15 81            [12] 1848 	dec	sp
                                   1849 ;	main.c:165: printf("6 --> PHY SPI Read\n\r");
      002D97 74 8F            [12] 1850 	mov	a,#___str_8
      002D99 C0 E0            [24] 1851 	push	acc
      002D9B 74 44            [12] 1852 	mov	a,#(___str_8 >> 8)
      002D9D C0 E0            [24] 1853 	push	acc
      002D9F 74 80            [12] 1854 	mov	a,#0x80
      002DA1 C0 E0            [24] 1855 	push	acc
      002DA3 12 38 9A         [24] 1856 	lcall	_printf
      002DA6 15 81            [12] 1857 	dec	sp
      002DA8 15 81            [12] 1858 	dec	sp
      002DAA 15 81            [12] 1859 	dec	sp
                                   1860 ;	main.c:166: printf("7 --> ENC Reset\n\r");
      002DAC 74 A4            [12] 1861 	mov	a,#___str_9
      002DAE C0 E0            [24] 1862 	push	acc
      002DB0 74 44            [12] 1863 	mov	a,#(___str_9 >> 8)
      002DB2 C0 E0            [24] 1864 	push	acc
      002DB4 74 80            [12] 1865 	mov	a,#0x80
      002DB6 C0 E0            [24] 1866 	push	acc
      002DB8 12 38 9A         [24] 1867 	lcall	_printf
      002DBB 15 81            [12] 1868 	dec	sp
      002DBD 15 81            [12] 1869 	dec	sp
      002DBF 15 81            [12] 1870 	dec	sp
                                   1871 ;	main.c:167: printf("8 --> Read ETH Register\n\r");
      002DC1 74 B6            [12] 1872 	mov	a,#___str_10
      002DC3 C0 E0            [24] 1873 	push	acc
      002DC5 74 44            [12] 1874 	mov	a,#(___str_10 >> 8)
      002DC7 C0 E0            [24] 1875 	push	acc
      002DC9 74 80            [12] 1876 	mov	a,#0x80
      002DCB C0 E0            [24] 1877 	push	acc
      002DCD 12 38 9A         [24] 1878 	lcall	_printf
      002DD0 15 81            [12] 1879 	dec	sp
      002DD2 15 81            [12] 1880 	dec	sp
      002DD4 15 81            [12] 1881 	dec	sp
                                   1882 ;	main.c:168: break;
      002DD6 02 27 F3         [24] 1883 	ljmp	00117$
                                   1884 ;	main.c:170: case 'A':{
      002DD9                       1885 00112$:
                                   1886 ;	main.c:171: init_MAC();
      002DD9 12 35 E7         [24] 1887 	lcall	_init_MAC
                                   1888 ;	main.c:172: send_arp_request();
      002DDC 12 23 B3         [24] 1889 	lcall	_send_arp_request
                                   1890 ;	main.c:173: break;
      002DDF 02 27 F3         [24] 1891 	ljmp	00117$
                                   1892 ;	main.c:175: case 'B':{
      002DE2                       1893 00113$:
                                   1894 ;	main.c:176: init_ENC();
      002DE2 12 35 D8         [24] 1895 	lcall	_init_ENC
                                   1896 ;	main.c:177: break;
      002DE5 02 27 F3         [24] 1897 	ljmp	00117$
                                   1898 ;	main.c:179: default: {
      002DE8                       1899 00114$:
                                   1900 ;	main.c:180: printf("Invalid option. Please select a valid action.\n\r");
      002DE8 74 C7            [12] 1901 	mov	a,#___str_36
      002DEA C0 E0            [24] 1902 	push	acc
      002DEC 74 47            [12] 1903 	mov	a,#(___str_36 >> 8)
      002DEE C0 E0            [24] 1904 	push	acc
      002DF0 74 80            [12] 1905 	mov	a,#0x80
      002DF2 C0 E0            [24] 1906 	push	acc
      002DF4 12 38 9A         [24] 1907 	lcall	_printf
      002DF7 15 81            [12] 1908 	dec	sp
      002DF9 15 81            [12] 1909 	dec	sp
      002DFB 15 81            [12] 1910 	dec	sp
                                   1911 ;	main.c:183: }
                                   1912 ;	main.c:185: }
      002DFD 02 27 F3         [24] 1913 	ljmp	00117$
                                   1914 	.area CSEG    (CODE)
                                   1915 	.area CONST   (CODE)
                                   1916 	.area CONST   (CODE)
      0043ED                       1917 ___str_0:
      0043ED 0A                    1918 	.db 0x0a
      0043EE 0D                    1919 	.db 0x0d
      0043EF 00                    1920 	.db 0x00
                                   1921 	.area CSEG    (CODE)
                                   1922 	.area CONST   (CODE)
      0043F0                       1923 ___str_1:
      0043F0 53 50 49 20 4F 70 65  1924 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      004406 0A                    1925 	.db 0x0a
      004407 0D                    1926 	.db 0x0d
      004408 00                    1927 	.db 0x00
                                   1928 	.area CSEG    (CODE)
                                   1929 	.area CONST   (CODE)
      004409                       1930 ___str_2:
      004409 0A                    1931 	.db 0x0a
      00440A 0D                    1932 	.db 0x0d
      00440B 43 68 6F 6F 73 65 20  1933 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      00441D 0A                    1934 	.db 0x0a
      00441E 0D                    1935 	.db 0x0d
      00441F 00                    1936 	.db 0x00
                                   1937 	.area CSEG    (CODE)
                                   1938 	.area CONST   (CODE)
      004420                       1939 ___str_3:
      004420 31 20 2D 2D 3E 20 43  1940 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      004433 0A                    1941 	.db 0x0a
      004434 0D                    1942 	.db 0x0d
      004435 00                    1943 	.db 0x00
                                   1944 	.area CSEG    (CODE)
                                   1945 	.area CONST   (CODE)
      004436                       1946 ___str_4:
      004436 32 20 2D 2D 3E 20 42  1947 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      004448 0A                    1948 	.db 0x0a
      004449 0D                    1949 	.db 0x0d
      00444A 00                    1950 	.db 0x00
                                   1951 	.area CSEG    (CODE)
                                   1952 	.area CONST   (CODE)
      00444B                       1953 ___str_5:
      00444B 33 20 2D 2D 3E 20 42  1954 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      00445C 0A                    1955 	.db 0x0a
      00445D 0D                    1956 	.db 0x0d
      00445E 00                    1957 	.db 0x00
                                   1958 	.area CSEG    (CODE)
                                   1959 	.area CONST   (CODE)
      00445F                       1960 ___str_6:
      00445F 34 20 2D 2D 3E 20 4D  1961 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      004476 0A                    1962 	.db 0x0a
      004477 0D                    1963 	.db 0x0d
      004478 00                    1964 	.db 0x00
                                   1965 	.area CSEG    (CODE)
                                   1966 	.area CONST   (CODE)
      004479                       1967 ___str_7:
      004479 35 20 2D 2D 3E 20 50  1968 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      00448C 0A                    1969 	.db 0x0a
      00448D 0D                    1970 	.db 0x0d
      00448E 00                    1971 	.db 0x00
                                   1972 	.area CSEG    (CODE)
                                   1973 	.area CONST   (CODE)
      00448F                       1974 ___str_8:
      00448F 36 20 2D 2D 3E 20 50  1975 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      0044A1 0A                    1976 	.db 0x0a
      0044A2 0D                    1977 	.db 0x0d
      0044A3 00                    1978 	.db 0x00
                                   1979 	.area CSEG    (CODE)
                                   1980 	.area CONST   (CODE)
      0044A4                       1981 ___str_9:
      0044A4 37 20 2D 2D 3E 20 45  1982 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      0044B3 0A                    1983 	.db 0x0a
      0044B4 0D                    1984 	.db 0x0d
      0044B5 00                    1985 	.db 0x00
                                   1986 	.area CSEG    (CODE)
                                   1987 	.area CONST   (CODE)
      0044B6                       1988 ___str_10:
      0044B6 38 20 2D 2D 3E 20 52  1989 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      0044CD 0A                    1990 	.db 0x0a
      0044CE 0D                    1991 	.db 0x0d
      0044CF 00                    1992 	.db 0x00
                                   1993 	.area CSEG    (CODE)
                                   1994 	.area CONST   (CODE)
      0044D0                       1995 ___str_11:
      0044D0 39 20 2D 2D 3E 20 44  1996 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      0044E2 0A                    1997 	.db 0x0a
      0044E3 0D                    1998 	.db 0x0d
      0044E4 00                    1999 	.db 0x00
                                   2000 	.area CSEG    (CODE)
                                   2001 	.area CONST   (CODE)
      0044E5                       2002 ___str_12:
      0044E5 41 20 2D 2D 3E 20 53  2003 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      0044FB 0A                    2004 	.db 0x0a
      0044FC 0D                    2005 	.db 0x0d
      0044FD 00                    2006 	.db 0x00
                                   2007 	.area CSEG    (CODE)
                                   2008 	.area CONST   (CODE)
      0044FE                       2009 ___str_13:
      0044FE 42 20 2D 2D 3E 20 49  2010 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      004513 0A                    2011 	.db 0x0a
      004514 0D                    2012 	.db 0x0d
      004515 00                    2013 	.db 0x00
                                   2014 	.area CSEG    (CODE)
                                   2015 	.area CONST   (CODE)
      004516                       2016 ___str_14:
      004516 45 6E 74 65 72 20 74  2017 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      004538 0A                    2018 	.db 0x0a
      004539 0D                    2019 	.db 0x0d
      00453A 00                    2020 	.db 0x00
                                   2021 	.area CSEG    (CODE)
                                   2022 	.area CONST   (CODE)
      00453B                       2023 ___str_15:
      00453B 45 6E 74 65 72 20 74  2024 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      004565 0A                    2025 	.db 0x0a
      004566 0D                    2026 	.db 0x0d
      004567 00                    2027 	.db 0x00
                                   2028 	.area CSEG    (CODE)
                                   2029 	.area CONST   (CODE)
      004568                       2030 ___str_16:
      004568 45 6E 74 65 72 20 74  2031 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      004589 0A                    2032 	.db 0x0a
      00458A 0D                    2033 	.db 0x0d
      00458B 00                    2034 	.db 0x00
                                   2035 	.area CSEG    (CODE)
                                   2036 	.area CONST   (CODE)
      00458C                       2037 ___str_17:
      00458C 45 6E 74 65 72 20 74  2038 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      0045AF 0A                    2039 	.db 0x0a
      0045B0 0D                    2040 	.db 0x0d
      0045B1 00                    2041 	.db 0x00
                                   2042 	.area CSEG    (CODE)
                                   2043 	.area CONST   (CODE)
      0045B2                       2044 ___str_18:
      0045B2 45 6E 74 65 72 20 74  2045 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      0045CD 0A                    2046 	.db 0x0a
      0045CE 0D                    2047 	.db 0x0d
      0045CF 00                    2048 	.db 0x00
                                   2049 	.area CSEG    (CODE)
                                   2050 	.area CONST   (CODE)
      0045D0                       2051 ___str_19:
      0045D0 45 6E 74 65 72 20 25  2052 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      0045F0 0A                    2053 	.db 0x0a
      0045F1 0D                    2054 	.db 0x0d
      0045F2 00                    2055 	.db 0x00
                                   2056 	.area CSEG    (CODE)
                                   2057 	.area CONST   (CODE)
      0045F3                       2058 ___str_20:
      0045F3 42 79 74 65 20 25 64  2059 	.ascii "Byte %d: "
             3A 20
      0045FC 00                    2060 	.db 0x00
                                   2061 	.area CSEG    (CODE)
                                   2062 	.area CONST   (CODE)
      0045FD                       2063 ___str_21:
      0045FD 45 6E 74 65 72 20 74  2064 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      00461F 0A                    2065 	.db 0x0a
      004620 0D                    2066 	.db 0x0d
      004621 00                    2067 	.db 0x00
                                   2068 	.area CSEG    (CODE)
                                   2069 	.area CONST   (CODE)
      004622                       2070 ___str_22:
      004622 52 65 61 64 20 44 61  2071 	.ascii "Read Data:"
             74 61 3A
      00462C 0A                    2072 	.db 0x0a
      00462D 0D                    2073 	.db 0x0d
      00462E 00                    2074 	.db 0x00
                                   2075 	.area CSEG    (CODE)
                                   2076 	.area CONST   (CODE)
      00462F                       2077 ___str_23:
      00462F 42 79 74 65 20 25 64  2078 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      00463E 0A                    2079 	.db 0x0a
      00463F 0D                    2080 	.db 0x0d
      004640 00                    2081 	.db 0x00
                                   2082 	.area CSEG    (CODE)
                                   2083 	.area CONST   (CODE)
      004641                       2084 ___str_24:
      004641 45 6E 74 65 72 20 74  2085 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      004667 0A                    2086 	.db 0x0a
      004668 0D                    2087 	.db 0x0d
      004669 00                    2088 	.db 0x00
                                   2089 	.area CSEG    (CODE)
                                   2090 	.area CONST   (CODE)
      00466A                       2091 ___str_25:
      00466A 45 6E 74 65 72 20 74  2092 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      004690 0A                    2093 	.db 0x0a
      004691 0D                    2094 	.db 0x0d
      004692 00                    2095 	.db 0x00
                                   2096 	.area CSEG    (CODE)
                                   2097 	.area CONST   (CODE)
      004693                       2098 ___str_26:
      004693 4D 41 43 20 52 65 67  2099 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      0046AC 0A                    2100 	.db 0x0a
      0046AD 0D                    2101 	.db 0x0d
      0046AE 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
      0046AF                       2105 ___str_27:
      0046AF 45 6E 74 65 72 20 74  2106 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      0046CE 0A                    2107 	.db 0x0a
      0046CF 0D                    2108 	.db 0x0d
      0046D0 00                    2109 	.db 0x00
                                   2110 	.area CSEG    (CODE)
                                   2111 	.area CONST   (CODE)
      0046D1                       2112 ___str_28:
      0046D1 45 6E 74 65 72 20 74  2113 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      0046F0 0A                    2114 	.db 0x0a
      0046F1 0D                    2115 	.db 0x0d
      0046F2 00                    2116 	.db 0x00
                                   2117 	.area CSEG    (CODE)
                                   2118 	.area CONST   (CODE)
      0046F3                       2119 ___str_29:
      0046F3 50 48 59 20 57 72 69  2120 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      004709 0A                    2121 	.db 0x0a
      00470A 0D                    2122 	.db 0x0d
      00470B 00                    2123 	.db 0x00
                                   2124 	.area CSEG    (CODE)
                                   2125 	.area CONST   (CODE)
      00470C                       2126 ___str_30:
      00470C 45 6E 74 65 72 20 74  2127 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      004733 0A                    2128 	.db 0x0a
      004734 0D                    2129 	.db 0x0d
      004735 00                    2130 	.db 0x00
                                   2131 	.area CSEG    (CODE)
                                   2132 	.area CONST   (CODE)
      004736                       2133 ___str_31:
      004736 50 48 59 20 52 65 61  2134 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      00474B 0A                    2135 	.db 0x0a
      00474C 0D                    2136 	.db 0x0d
      00474D 00                    2137 	.db 0x00
                                   2138 	.area CSEG    (CODE)
                                   2139 	.area CONST   (CODE)
      00474E                       2140 ___str_32:
      00474E 52 65 73 65 74 74 69  2141 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      004763 0A                    2142 	.db 0x0a
      004764 0D                    2143 	.db 0x0d
      004765 00                    2144 	.db 0x00
                                   2145 	.area CSEG    (CODE)
                                   2146 	.area CONST   (CODE)
      004766                       2147 ___str_33:
      004766 45 6E 74 65 72 20 74  2148 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      00478D 0A                    2149 	.db 0x0a
      00478E 0D                    2150 	.db 0x0d
      00478F 00                    2151 	.db 0x00
                                   2152 	.area CSEG    (CODE)
                                   2153 	.area CONST   (CODE)
      004790                       2154 ___str_34:
      004790 45 6E 74 65 72 20 74  2155 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      0047A8 0A                    2156 	.db 0x0a
      0047A9 0D                    2157 	.db 0x0d
      0047AA 00                    2158 	.db 0x00
                                   2159 	.area CSEG    (CODE)
                                   2160 	.area CONST   (CODE)
      0047AB                       2161 ___str_35:
      0047AB 45 54 48 20 52 65 67  2162 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      0047C4 0A                    2163 	.db 0x0a
      0047C5 0D                    2164 	.db 0x0d
      0047C6 00                    2165 	.db 0x00
                                   2166 	.area CSEG    (CODE)
                                   2167 	.area CONST   (CODE)
      0047C7                       2168 ___str_36:
      0047C7 49 6E 76 61 6C 69 64  2169 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      0047F4 0A                    2170 	.db 0x0a
      0047F5 0D                    2171 	.db 0x0d
      0047F6 00                    2172 	.db 0x00
                                   2173 	.area CSEG    (CODE)
                                   2174 	.area XINIT   (CODE)
                                   2175 	.area CABS    (ABS,CODE)

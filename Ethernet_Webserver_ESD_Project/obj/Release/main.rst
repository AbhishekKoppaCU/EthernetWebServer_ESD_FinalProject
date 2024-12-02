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
                                     14 	.globl _spi_control_write
                                     15 	.globl _eth_spi_read
                                     16 	.globl _phy_spi_write
                                     17 	.globl _phy_spi_read
                                     18 	.globl _spi_buffer_write
                                     19 	.globl _spi_buffer_read
                                     20 	.globl _mac_spi_read
                                     21 	.globl _enc_reset
                                     22 	.globl _configure_SPI
                                     23 	.globl _printf_tiny
                                     24 	.globl _putchar
                                     25 	.globl _getchar
                                     26 	.globl _printf
                                     27 	.globl _TF1
                                     28 	.globl _TR1
                                     29 	.globl _TF0
                                     30 	.globl _TR0
                                     31 	.globl _IE1
                                     32 	.globl _IT1
                                     33 	.globl _IE0
                                     34 	.globl _IT0
                                     35 	.globl _SM0
                                     36 	.globl _SM1
                                     37 	.globl _SM2
                                     38 	.globl _REN
                                     39 	.globl _TB8
                                     40 	.globl _RB8
                                     41 	.globl _TI
                                     42 	.globl _RI
                                     43 	.globl _CY
                                     44 	.globl _AC
                                     45 	.globl _F0
                                     46 	.globl _RS1
                                     47 	.globl _RS0
                                     48 	.globl _OV
                                     49 	.globl _F1
                                     50 	.globl _P
                                     51 	.globl _RD
                                     52 	.globl _WR
                                     53 	.globl _T1
                                     54 	.globl _T0
                                     55 	.globl _INT1
                                     56 	.globl _INT0
                                     57 	.globl _TXD0
                                     58 	.globl _TXD
                                     59 	.globl _RXD0
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _P2_7
                                     70 	.globl _P2_6
                                     71 	.globl _P2_5
                                     72 	.globl _P2_4
                                     73 	.globl _P2_3
                                     74 	.globl _P2_2
                                     75 	.globl _P2_1
                                     76 	.globl _P2_0
                                     77 	.globl _P1_7
                                     78 	.globl _P1_6
                                     79 	.globl _P1_5
                                     80 	.globl _P1_4
                                     81 	.globl _P1_3
                                     82 	.globl _P1_2
                                     83 	.globl _P1_1
                                     84 	.globl _P1_0
                                     85 	.globl _P0_7
                                     86 	.globl _P0_6
                                     87 	.globl _P0_5
                                     88 	.globl _P0_4
                                     89 	.globl _P0_3
                                     90 	.globl _P0_2
                                     91 	.globl _P0_1
                                     92 	.globl _P0_0
                                     93 	.globl _PS
                                     94 	.globl _PT1
                                     95 	.globl _PX1
                                     96 	.globl _PT0
                                     97 	.globl _PX0
                                     98 	.globl _EA
                                     99 	.globl _ES
                                    100 	.globl _ET1
                                    101 	.globl _EX1
                                    102 	.globl _ET0
                                    103 	.globl _EX0
                                    104 	.globl _BREG_F7
                                    105 	.globl _BREG_F6
                                    106 	.globl _BREG_F5
                                    107 	.globl _BREG_F4
                                    108 	.globl _BREG_F3
                                    109 	.globl _BREG_F2
                                    110 	.globl _BREG_F1
                                    111 	.globl _BREG_F0
                                    112 	.globl _P5_7
                                    113 	.globl _P5_6
                                    114 	.globl _P5_5
                                    115 	.globl _P5_4
                                    116 	.globl _P5_3
                                    117 	.globl _P5_2
                                    118 	.globl _P5_1
                                    119 	.globl _P5_0
                                    120 	.globl _P4_7
                                    121 	.globl _P4_6
                                    122 	.globl _P4_5
                                    123 	.globl _P4_4
                                    124 	.globl _P4_3
                                    125 	.globl _P4_2
                                    126 	.globl _P4_1
                                    127 	.globl _P4_0
                                    128 	.globl _PX0L
                                    129 	.globl _PT0L
                                    130 	.globl _PX1L
                                    131 	.globl _PT1L
                                    132 	.globl _PSL
                                    133 	.globl _PT2L
                                    134 	.globl _PPCL
                                    135 	.globl _EC
                                    136 	.globl _CCF0
                                    137 	.globl _CCF1
                                    138 	.globl _CCF2
                                    139 	.globl _CCF3
                                    140 	.globl _CCF4
                                    141 	.globl _CR
                                    142 	.globl _CF
                                    143 	.globl _TF2
                                    144 	.globl _EXF2
                                    145 	.globl _RCLK
                                    146 	.globl _TCLK
                                    147 	.globl _EXEN2
                                    148 	.globl _TR2
                                    149 	.globl _C_T2
                                    150 	.globl _CP_RL2
                                    151 	.globl _T2CON_7
                                    152 	.globl _T2CON_6
                                    153 	.globl _T2CON_5
                                    154 	.globl _T2CON_4
                                    155 	.globl _T2CON_3
                                    156 	.globl _T2CON_2
                                    157 	.globl _T2CON_1
                                    158 	.globl _T2CON_0
                                    159 	.globl _PT2
                                    160 	.globl _ET2
                                    161 	.globl _TMOD
                                    162 	.globl _TL1
                                    163 	.globl _TL0
                                    164 	.globl _TH1
                                    165 	.globl _TH0
                                    166 	.globl _TCON
                                    167 	.globl _SP
                                    168 	.globl _SCON
                                    169 	.globl _SBUF0
                                    170 	.globl _SBUF
                                    171 	.globl _PSW
                                    172 	.globl _PCON
                                    173 	.globl _P3
                                    174 	.globl _P2
                                    175 	.globl _P1
                                    176 	.globl _P0
                                    177 	.globl _IP
                                    178 	.globl _IE
                                    179 	.globl _DP0L
                                    180 	.globl _DPL
                                    181 	.globl _DP0H
                                    182 	.globl _DPH
                                    183 	.globl _B
                                    184 	.globl _ACC
                                    185 	.globl _EECON
                                    186 	.globl _KBF
                                    187 	.globl _KBE
                                    188 	.globl _KBLS
                                    189 	.globl _BRL
                                    190 	.globl _BDRCON
                                    191 	.globl _T2MOD
                                    192 	.globl _SPDAT
                                    193 	.globl _SPSTA
                                    194 	.globl _SPCON
                                    195 	.globl _SADEN
                                    196 	.globl _SADDR
                                    197 	.globl _WDTPRG
                                    198 	.globl _WDTRST
                                    199 	.globl _P5
                                    200 	.globl _P4
                                    201 	.globl _IPH1
                                    202 	.globl _IPL1
                                    203 	.globl _IPH0
                                    204 	.globl _IPL0
                                    205 	.globl _IEN1
                                    206 	.globl _IEN0
                                    207 	.globl _CMOD
                                    208 	.globl _CL
                                    209 	.globl _CH
                                    210 	.globl _CCON
                                    211 	.globl _CCAPM4
                                    212 	.globl _CCAPM3
                                    213 	.globl _CCAPM2
                                    214 	.globl _CCAPM1
                                    215 	.globl _CCAPM0
                                    216 	.globl _CCAP4L
                                    217 	.globl _CCAP3L
                                    218 	.globl _CCAP2L
                                    219 	.globl _CCAP1L
                                    220 	.globl _CCAP0L
                                    221 	.globl _CCAP4H
                                    222 	.globl _CCAP3H
                                    223 	.globl _CCAP2H
                                    224 	.globl _CCAP1H
                                    225 	.globl _CCAP0H
                                    226 	.globl _CKCON1
                                    227 	.globl _CKCON0
                                    228 	.globl _CKRL
                                    229 	.globl _AUXR1
                                    230 	.globl _AUXR
                                    231 	.globl _TH2
                                    232 	.globl _TL2
                                    233 	.globl _RCAP2H
                                    234 	.globl _RCAP2L
                                    235 	.globl _T2CON
                                    236 ;--------------------------------------------------------
                                    237 ; special function registers
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           0000C8   241 _T2CON	=	0x00c8
                           0000CA   242 _RCAP2L	=	0x00ca
                           0000CB   243 _RCAP2H	=	0x00cb
                           0000CC   244 _TL2	=	0x00cc
                           0000CD   245 _TH2	=	0x00cd
                           00008E   246 _AUXR	=	0x008e
                           0000A2   247 _AUXR1	=	0x00a2
                           000097   248 _CKRL	=	0x0097
                           00008F   249 _CKCON0	=	0x008f
                           0000AF   250 _CKCON1	=	0x00af
                           0000FA   251 _CCAP0H	=	0x00fa
                           0000FB   252 _CCAP1H	=	0x00fb
                           0000FC   253 _CCAP2H	=	0x00fc
                           0000FD   254 _CCAP3H	=	0x00fd
                           0000FE   255 _CCAP4H	=	0x00fe
                           0000EA   256 _CCAP0L	=	0x00ea
                           0000EB   257 _CCAP1L	=	0x00eb
                           0000EC   258 _CCAP2L	=	0x00ec
                           0000ED   259 _CCAP3L	=	0x00ed
                           0000EE   260 _CCAP4L	=	0x00ee
                           0000DA   261 _CCAPM0	=	0x00da
                           0000DB   262 _CCAPM1	=	0x00db
                           0000DC   263 _CCAPM2	=	0x00dc
                           0000DD   264 _CCAPM3	=	0x00dd
                           0000DE   265 _CCAPM4	=	0x00de
                           0000D8   266 _CCON	=	0x00d8
                           0000F9   267 _CH	=	0x00f9
                           0000E9   268 _CL	=	0x00e9
                           0000D9   269 _CMOD	=	0x00d9
                           0000A8   270 _IEN0	=	0x00a8
                           0000B1   271 _IEN1	=	0x00b1
                           0000B8   272 _IPL0	=	0x00b8
                           0000B7   273 _IPH0	=	0x00b7
                           0000B2   274 _IPL1	=	0x00b2
                           0000B3   275 _IPH1	=	0x00b3
                           0000C0   276 _P4	=	0x00c0
                           0000E8   277 _P5	=	0x00e8
                           0000A6   278 _WDTRST	=	0x00a6
                           0000A7   279 _WDTPRG	=	0x00a7
                           0000A9   280 _SADDR	=	0x00a9
                           0000B9   281 _SADEN	=	0x00b9
                           0000C3   282 _SPCON	=	0x00c3
                           0000C4   283 _SPSTA	=	0x00c4
                           0000C5   284 _SPDAT	=	0x00c5
                           0000C9   285 _T2MOD	=	0x00c9
                           00009B   286 _BDRCON	=	0x009b
                           00009A   287 _BRL	=	0x009a
                           00009C   288 _KBLS	=	0x009c
                           00009D   289 _KBE	=	0x009d
                           00009E   290 _KBF	=	0x009e
                           0000D2   291 _EECON	=	0x00d2
                           0000E0   292 _ACC	=	0x00e0
                           0000F0   293 _B	=	0x00f0
                           000083   294 _DPH	=	0x0083
                           000083   295 _DP0H	=	0x0083
                           000082   296 _DPL	=	0x0082
                           000082   297 _DP0L	=	0x0082
                           0000A8   298 _IE	=	0x00a8
                           0000B8   299 _IP	=	0x00b8
                           000080   300 _P0	=	0x0080
                           000090   301 _P1	=	0x0090
                           0000A0   302 _P2	=	0x00a0
                           0000B0   303 _P3	=	0x00b0
                           000087   304 _PCON	=	0x0087
                           0000D0   305 _PSW	=	0x00d0
                           000099   306 _SBUF	=	0x0099
                           000099   307 _SBUF0	=	0x0099
                           000098   308 _SCON	=	0x0098
                           000081   309 _SP	=	0x0081
                           000088   310 _TCON	=	0x0088
                           00008C   311 _TH0	=	0x008c
                           00008D   312 _TH1	=	0x008d
                           00008A   313 _TL0	=	0x008a
                           00008B   314 _TL1	=	0x008b
                           000089   315 _TMOD	=	0x0089
                                    316 ;--------------------------------------------------------
                                    317 ; special function bits
                                    318 ;--------------------------------------------------------
                                    319 	.area RSEG    (ABS,DATA)
      000000                        320 	.org 0x0000
                           0000AD   321 _ET2	=	0x00ad
                           0000BD   322 _PT2	=	0x00bd
                           0000C8   323 _T2CON_0	=	0x00c8
                           0000C9   324 _T2CON_1	=	0x00c9
                           0000CA   325 _T2CON_2	=	0x00ca
                           0000CB   326 _T2CON_3	=	0x00cb
                           0000CC   327 _T2CON_4	=	0x00cc
                           0000CD   328 _T2CON_5	=	0x00cd
                           0000CE   329 _T2CON_6	=	0x00ce
                           0000CF   330 _T2CON_7	=	0x00cf
                           0000C8   331 _CP_RL2	=	0x00c8
                           0000C9   332 _C_T2	=	0x00c9
                           0000CA   333 _TR2	=	0x00ca
                           0000CB   334 _EXEN2	=	0x00cb
                           0000CC   335 _TCLK	=	0x00cc
                           0000CD   336 _RCLK	=	0x00cd
                           0000CE   337 _EXF2	=	0x00ce
                           0000CF   338 _TF2	=	0x00cf
                           0000DF   339 _CF	=	0x00df
                           0000DE   340 _CR	=	0x00de
                           0000DC   341 _CCF4	=	0x00dc
                           0000DB   342 _CCF3	=	0x00db
                           0000DA   343 _CCF2	=	0x00da
                           0000D9   344 _CCF1	=	0x00d9
                           0000D8   345 _CCF0	=	0x00d8
                           0000AE   346 _EC	=	0x00ae
                           0000BE   347 _PPCL	=	0x00be
                           0000BD   348 _PT2L	=	0x00bd
                           0000BC   349 _PSL	=	0x00bc
                           0000BB   350 _PT1L	=	0x00bb
                           0000BA   351 _PX1L	=	0x00ba
                           0000B9   352 _PT0L	=	0x00b9
                           0000B8   353 _PX0L	=	0x00b8
                           0000C0   354 _P4_0	=	0x00c0
                           0000C1   355 _P4_1	=	0x00c1
                           0000C2   356 _P4_2	=	0x00c2
                           0000C3   357 _P4_3	=	0x00c3
                           0000C4   358 _P4_4	=	0x00c4
                           0000C5   359 _P4_5	=	0x00c5
                           0000C6   360 _P4_6	=	0x00c6
                           0000C7   361 _P4_7	=	0x00c7
                           0000E8   362 _P5_0	=	0x00e8
                           0000E9   363 _P5_1	=	0x00e9
                           0000EA   364 _P5_2	=	0x00ea
                           0000EB   365 _P5_3	=	0x00eb
                           0000EC   366 _P5_4	=	0x00ec
                           0000ED   367 _P5_5	=	0x00ed
                           0000EE   368 _P5_6	=	0x00ee
                           0000EF   369 _P5_7	=	0x00ef
                           0000F0   370 _BREG_F0	=	0x00f0
                           0000F1   371 _BREG_F1	=	0x00f1
                           0000F2   372 _BREG_F2	=	0x00f2
                           0000F3   373 _BREG_F3	=	0x00f3
                           0000F4   374 _BREG_F4	=	0x00f4
                           0000F5   375 _BREG_F5	=	0x00f5
                           0000F6   376 _BREG_F6	=	0x00f6
                           0000F7   377 _BREG_F7	=	0x00f7
                           0000A8   378 _EX0	=	0x00a8
                           0000A9   379 _ET0	=	0x00a9
                           0000AA   380 _EX1	=	0x00aa
                           0000AB   381 _ET1	=	0x00ab
                           0000AC   382 _ES	=	0x00ac
                           0000AF   383 _EA	=	0x00af
                           0000B8   384 _PX0	=	0x00b8
                           0000B9   385 _PT0	=	0x00b9
                           0000BA   386 _PX1	=	0x00ba
                           0000BB   387 _PT1	=	0x00bb
                           0000BC   388 _PS	=	0x00bc
                           000080   389 _P0_0	=	0x0080
                           000081   390 _P0_1	=	0x0081
                           000082   391 _P0_2	=	0x0082
                           000083   392 _P0_3	=	0x0083
                           000084   393 _P0_4	=	0x0084
                           000085   394 _P0_5	=	0x0085
                           000086   395 _P0_6	=	0x0086
                           000087   396 _P0_7	=	0x0087
                           000090   397 _P1_0	=	0x0090
                           000091   398 _P1_1	=	0x0091
                           000092   399 _P1_2	=	0x0092
                           000093   400 _P1_3	=	0x0093
                           000094   401 _P1_4	=	0x0094
                           000095   402 _P1_5	=	0x0095
                           000096   403 _P1_6	=	0x0096
                           000097   404 _P1_7	=	0x0097
                           0000A0   405 _P2_0	=	0x00a0
                           0000A1   406 _P2_1	=	0x00a1
                           0000A2   407 _P2_2	=	0x00a2
                           0000A3   408 _P2_3	=	0x00a3
                           0000A4   409 _P2_4	=	0x00a4
                           0000A5   410 _P2_5	=	0x00a5
                           0000A6   411 _P2_6	=	0x00a6
                           0000A7   412 _P2_7	=	0x00a7
                           0000B0   413 _P3_0	=	0x00b0
                           0000B1   414 _P3_1	=	0x00b1
                           0000B2   415 _P3_2	=	0x00b2
                           0000B3   416 _P3_3	=	0x00b3
                           0000B4   417 _P3_4	=	0x00b4
                           0000B5   418 _P3_5	=	0x00b5
                           0000B6   419 _P3_6	=	0x00b6
                           0000B7   420 _P3_7	=	0x00b7
                           0000B0   421 _RXD	=	0x00b0
                           0000B0   422 _RXD0	=	0x00b0
                           0000B1   423 _TXD	=	0x00b1
                           0000B1   424 _TXD0	=	0x00b1
                           0000B2   425 _INT0	=	0x00b2
                           0000B3   426 _INT1	=	0x00b3
                           0000B4   427 _T0	=	0x00b4
                           0000B5   428 _T1	=	0x00b5
                           0000B6   429 _WR	=	0x00b6
                           0000B7   430 _RD	=	0x00b7
                           0000D0   431 _P	=	0x00d0
                           0000D1   432 _F1	=	0x00d1
                           0000D2   433 _OV	=	0x00d2
                           0000D3   434 _RS0	=	0x00d3
                           0000D4   435 _RS1	=	0x00d4
                           0000D5   436 _F0	=	0x00d5
                           0000D6   437 _AC	=	0x00d6
                           0000D7   438 _CY	=	0x00d7
                           000098   439 _RI	=	0x0098
                           000099   440 _TI	=	0x0099
                           00009A   441 _RB8	=	0x009a
                           00009B   442 _TB8	=	0x009b
                           00009C   443 _REN	=	0x009c
                           00009D   444 _SM2	=	0x009d
                           00009E   445 _SM1	=	0x009e
                           00009F   446 _SM0	=	0x009f
                           000088   447 _IT0	=	0x0088
                           000089   448 _IE0	=	0x0089
                           00008A   449 _IT1	=	0x008a
                           00008B   450 _IE1	=	0x008b
                           00008C   451 _TR0	=	0x008c
                           00008D   452 _TF0	=	0x008d
                           00008E   453 _TR1	=	0x008e
                           00008F   454 _TF1	=	0x008f
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable register banks
                                    457 ;--------------------------------------------------------
                                    458 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        459 	.ds 8
                                    460 ;--------------------------------------------------------
                                    461 ; internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area DSEG    (DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable items in internal ram
                                    466 ;--------------------------------------------------------
                                    467 	.area	OSEG    (OVR,DATA)
      000013                        468 _hex_to_int_sloc0_1_0:
      000013                        469 	.ds 3
      000016                        470 _hex_to_int_sloc1_1_0:
      000016                        471 	.ds 1
      000017                        472 _hex_to_int_sloc2_1_0:
      000017                        473 	.ds 2
                                    474 ;--------------------------------------------------------
                                    475 ; Stack segment in internal ram
                                    476 ;--------------------------------------------------------
                                    477 	.area SSEG
      000019                        478 __start__stack:
      000019                        479 	.ds	1
                                    480 
                                    481 ;--------------------------------------------------------
                                    482 ; indirectly addressable internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area ISEG    (DATA)
                                    485 ;--------------------------------------------------------
                                    486 ; absolute internal ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area IABS    (ABS,DATA)
                                    489 	.area IABS    (ABS,DATA)
                                    490 ;--------------------------------------------------------
                                    491 ; bit data
                                    492 ;--------------------------------------------------------
                                    493 	.area BSEG    (BIT)
                                    494 ;--------------------------------------------------------
                                    495 ; paged external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area PSEG    (PAG,XDATA)
                                    498 ;--------------------------------------------------------
                                    499 ; uninitialized external ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area XSEG    (XDATA)
      000100                        502 _hex_to_int_str_10000_63:
      000100                        503 	.ds 3
      000103                        504 _hex_to_int_result_10000_64:
      000103                        505 	.ds 2
      000105                        506 _hex_to_int_ASCII_20000_65:
      000105                        507 	.ds 2
      000107                        508 _get_user_buffer_size_input_10000_70:
      000107                        509 	.ds 10
      000111                        510 _main_buffer_40003_83:
      000111                        511 	.ds 256
      000211                        512 _main_buffer_40003_88:
      000211                        513 	.ds 256
                                    514 ;--------------------------------------------------------
                                    515 ; absolute external ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XABS    (ABS,XDATA)
                                    518 ;--------------------------------------------------------
                                    519 ; initialized external ram data
                                    520 ;--------------------------------------------------------
                                    521 	.area XISEG   (XDATA)
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT0 (CODE)
                                    524 	.area GSINIT1 (CODE)
                                    525 	.area GSINIT2 (CODE)
                                    526 	.area GSINIT3 (CODE)
                                    527 	.area GSINIT4 (CODE)
                                    528 	.area GSINIT5 (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area CSEG    (CODE)
                                    532 ;--------------------------------------------------------
                                    533 ; interrupt vector
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
      002000                        536 __interrupt_vect:
      002000 02 20 06         [24]  537 	ljmp	__sdcc_gsinit_startup
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.globl __sdcc_gsinit_startup
                                    546 	.globl __sdcc_program_startup
                                    547 	.globl __start__stack
                                    548 	.globl __mcs51_genXINIT
                                    549 	.globl __mcs51_genXRAMCLEAR
                                    550 	.globl __mcs51_genRAMCLEAR
                                    551 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  552 	ljmp	__sdcc_program_startup
                                    553 ;--------------------------------------------------------
                                    554 ; Home
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area HOME    (CODE)
      002003                        558 __sdcc_program_startup:
      002003 02 22 A0         [24]  559 	ljmp	_main
                                    560 ;	return from main will return to caller
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'hex_to_int'
                                    567 ;------------------------------------------------------------
                                    568 ;str                       Allocated with name '_hex_to_int_str_10000_63'
                                    569 ;i                         Allocated with name '_hex_to_int_i_10000_64'
                                    570 ;result                    Allocated with name '_hex_to_int_result_10000_64'
                                    571 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_65'
                                    572 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    573 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    574 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    575 ;------------------------------------------------------------
                                    576 ;	main.c:8: int hex_to_int(char* str)
                                    577 ;	-----------------------------------------
                                    578 ;	 function hex_to_int
                                    579 ;	-----------------------------------------
      002062                        580 _hex_to_int:
                           000007   581 	ar7 = 0x07
                           000006   582 	ar6 = 0x06
                           000005   583 	ar5 = 0x05
                           000004   584 	ar4 = 0x04
                           000003   585 	ar3 = 0x03
                           000002   586 	ar2 = 0x02
                           000001   587 	ar1 = 0x01
                           000000   588 	ar0 = 0x00
      002062 AF F0            [24]  589 	mov	r7,b
      002064 AE 83            [24]  590 	mov	r6,dph
      002066 E5 82            [12]  591 	mov	a,dpl
      002068 90 01 00         [24]  592 	mov	dptr,#_hex_to_int_str_10000_63
      00206B F0               [24]  593 	movx	@dptr,a
      00206C EE               [12]  594 	mov	a,r6
      00206D A3               [24]  595 	inc	dptr
      00206E F0               [24]  596 	movx	@dptr,a
      00206F EF               [12]  597 	mov	a,r7
      002070 A3               [24]  598 	inc	dptr
      002071 F0               [24]  599 	movx	@dptr,a
                                    600 ;	main.c:11: int i = 0, result = 0;
      002072 90 01 03         [24]  601 	mov	dptr,#_hex_to_int_result_10000_64
      002075 E4               [12]  602 	clr	a
      002076 F0               [24]  603 	movx	@dptr,a
      002077 A3               [24]  604 	inc	dptr
      002078 F0               [24]  605 	movx	@dptr,a
                                    606 ;	main.c:12: while(str[i] != '\0')
      002079 90 01 00         [24]  607 	mov	dptr,#_hex_to_int_str_10000_63
      00207C E0               [24]  608 	movx	a,@dptr
      00207D FD               [12]  609 	mov	r5,a
      00207E A3               [24]  610 	inc	dptr
      00207F E0               [24]  611 	movx	a,@dptr
      002080 FE               [12]  612 	mov	r6,a
      002081 A3               [24]  613 	inc	dptr
      002082 E0               [24]  614 	movx	a,@dptr
      002083 FF               [12]  615 	mov	r7,a
      002084 8D 02            [24]  616 	mov	ar2,r5
      002086 8E 03            [24]  617 	mov	ar3,r6
      002088 8F 04            [24]  618 	mov	ar4,r7
      00208A 8D 13            [24]  619 	mov	_hex_to_int_sloc0_1_0,r5
      00208C 8E 14            [24]  620 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      00208E 8F 15            [24]  621 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      002090 78 00            [12]  622 	mov	r0,#0x00
      002092 79 00            [12]  623 	mov	r1,#0x00
      002094                        624 00112$:
      002094 C0 02            [24]  625 	push	ar2
      002096 C0 03            [24]  626 	push	ar3
      002098 C0 04            [24]  627 	push	ar4
      00209A E8               [12]  628 	mov	a,r0
      00209B 25 13            [12]  629 	add	a, _hex_to_int_sloc0_1_0
      00209D FA               [12]  630 	mov	r2,a
      00209E E9               [12]  631 	mov	a,r1
      00209F 35 14            [12]  632 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      0020A1 FB               [12]  633 	mov	r3,a
      0020A2 AC 15            [24]  634 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      0020A4 8A 82            [24]  635 	mov	dpl,r2
      0020A6 8B 83            [24]  636 	mov	dph,r3
      0020A8 8C F0            [24]  637 	mov	b,r4
      0020AA 12 3C FB         [24]  638 	lcall	__gptrget
      0020AD F5 16            [12]  639 	mov	_hex_to_int_sloc1_1_0,a
      0020AF D0 04            [24]  640 	pop	ar4
      0020B1 D0 03            [24]  641 	pop	ar3
      0020B3 D0 02            [24]  642 	pop	ar2
      0020B5 E5 16            [12]  643 	mov	a,_hex_to_int_sloc1_1_0
      0020B7 70 03            [24]  644 	jnz	00166$
      0020B9 02 22 10         [24]  645 	ljmp	00114$
      0020BC                        646 00166$:
                                    647 ;	main.c:14: int ASCII = (int)str[i];
      0020BC C0 02            [24]  648 	push	ar2
      0020BE C0 03            [24]  649 	push	ar3
      0020C0 C0 04            [24]  650 	push	ar4
      0020C2 85 16 17         [24]  651 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      0020C5 75 18 00         [24]  652 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      0020C8 90 01 05         [24]  653 	mov	dptr,#_hex_to_int_ASCII_20000_65
      0020CB E5 17            [12]  654 	mov	a,_hex_to_int_sloc2_1_0
      0020CD F0               [24]  655 	movx	@dptr,a
      0020CE E5 18            [12]  656 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0020D0 A3               [24]  657 	inc	dptr
      0020D1 F0               [24]  658 	movx	@dptr,a
                                    659 ;	main.c:15: result *= 16;
      0020D2 90 01 03         [24]  660 	mov	dptr,#_hex_to_int_result_10000_64
      0020D5 E0               [24]  661 	movx	a,@dptr
      0020D6 FB               [12]  662 	mov	r3,a
      0020D7 A3               [24]  663 	inc	dptr
      0020D8 E0               [24]  664 	movx	a,@dptr
      0020D9 C4               [12]  665 	swap	a
      0020DA 54 F0            [12]  666 	anl	a,#0xf0
      0020DC CB               [12]  667 	xch	a,r3
      0020DD C4               [12]  668 	swap	a
      0020DE CB               [12]  669 	xch	a,r3
      0020DF 6B               [12]  670 	xrl	a,r3
      0020E0 CB               [12]  671 	xch	a,r3
      0020E1 54 F0            [12]  672 	anl	a,#0xf0
      0020E3 CB               [12]  673 	xch	a,r3
      0020E4 6B               [12]  674 	xrl	a,r3
      0020E5 FC               [12]  675 	mov	r4,a
      0020E6 90 01 03         [24]  676 	mov	dptr,#_hex_to_int_result_10000_64
      0020E9 EB               [12]  677 	mov	a,r3
      0020EA F0               [24]  678 	movx	@dptr,a
      0020EB EC               [12]  679 	mov	a,r4
      0020EC A3               [24]  680 	inc	dptr
      0020ED F0               [24]  681 	movx	@dptr,a
                                    682 ;	main.c:16: if(ASCII >= '0' && ASCII <= '9')
      0020EE C3               [12]  683 	clr	c
      0020EF E5 17            [12]  684 	mov	a,_hex_to_int_sloc2_1_0
      0020F1 94 30            [12]  685 	subb	a,#0x30
      0020F3 E5 18            [12]  686 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0020F5 64 80            [12]  687 	xrl	a,#0x80
      0020F7 94 80            [12]  688 	subb	a,#0x80
      0020F9 D0 04            [24]  689 	pop	ar4
      0020FB D0 03            [24]  690 	pop	ar3
      0020FD D0 02            [24]  691 	pop	ar2
      0020FF 40 3F            [24]  692 	jc	00109$
      002101 74 39            [12]  693 	mov	a,#0x39
      002103 95 17            [12]  694 	subb	a,_hex_to_int_sloc2_1_0
      002105 74 80            [12]  695 	mov	a,#(0x00 ^ 0x80)
      002107 85 18 F0         [24]  696 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      00210A 63 F0 80         [24]  697 	xrl	b,#0x80
      00210D 95 F0            [12]  698 	subb	a,b
      00210F 40 2F            [24]  699 	jc	00109$
                                    700 ;	main.c:18: result += str[i] - 48;
      002111 C0 02            [24]  701 	push	ar2
      002113 C0 03            [24]  702 	push	ar3
      002115 C0 04            [24]  703 	push	ar4
      002117 E5 17            [12]  704 	mov	a,_hex_to_int_sloc2_1_0
      002119 24 D0            [12]  705 	add	a,#0xd0
      00211B F5 17            [12]  706 	mov	_hex_to_int_sloc2_1_0,a
      00211D E5 18            [12]  707 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00211F 34 FF            [12]  708 	addc	a,#0xff
      002121 F5 18            [12]  709 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002123 90 01 03         [24]  710 	mov	dptr,#_hex_to_int_result_10000_64
      002126 E0               [24]  711 	movx	a,@dptr
      002127 FA               [12]  712 	mov	r2,a
      002128 A3               [24]  713 	inc	dptr
      002129 E0               [24]  714 	movx	a,@dptr
      00212A FC               [12]  715 	mov	r4,a
      00212B 90 01 03         [24]  716 	mov	dptr,#_hex_to_int_result_10000_64
      00212E E5 17            [12]  717 	mov	a,_hex_to_int_sloc2_1_0
      002130 2A               [12]  718 	add	a, r2
      002131 F0               [24]  719 	movx	@dptr,a
      002132 E5 18            [12]  720 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002134 3C               [12]  721 	addc	a, r4
      002135 A3               [24]  722 	inc	dptr
      002136 F0               [24]  723 	movx	@dptr,a
      002137 D0 04            [24]  724 	pop	ar4
      002139 D0 03            [24]  725 	pop	ar3
      00213B D0 02            [24]  726 	pop	ar2
      00213D 02 22 08         [24]  727 	ljmp	00110$
      002140                        728 00109$:
                                    729 ;	main.c:20: else if(ASCII >= 'A' && ASCII <= 'F')
      002140 90 01 05         [24]  730 	mov	dptr,#_hex_to_int_ASCII_20000_65
      002143 E0               [24]  731 	movx	a,@dptr
      002144 F5 17            [12]  732 	mov	_hex_to_int_sloc2_1_0,a
      002146 A3               [24]  733 	inc	dptr
      002147 E0               [24]  734 	movx	a,@dptr
      002148 F5 18            [12]  735 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      00214A C3               [12]  736 	clr	c
      00214B E5 17            [12]  737 	mov	a,_hex_to_int_sloc2_1_0
      00214D 94 41            [12]  738 	subb	a,#0x41
      00214F E5 18            [12]  739 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002151 64 80            [12]  740 	xrl	a,#0x80
      002153 94 80            [12]  741 	subb	a,#0x80
      002155 40 4E            [24]  742 	jc	00105$
      002157 74 46            [12]  743 	mov	a,#0x46
      002159 95 17            [12]  744 	subb	a,_hex_to_int_sloc2_1_0
      00215B 74 80            [12]  745 	mov	a,#(0x00 ^ 0x80)
      00215D 85 18 F0         [24]  746 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002160 63 F0 80         [24]  747 	xrl	b,#0x80
      002163 95 F0            [12]  748 	subb	a,b
      002165 40 3E            [24]  749 	jc	00105$
                                    750 ;	main.c:22: result += str[i] - 55;
      002167 C0 05            [24]  751 	push	ar5
      002169 C0 06            [24]  752 	push	ar6
      00216B C0 07            [24]  753 	push	ar7
      00216D E8               [12]  754 	mov	a,r0
      00216E 2A               [12]  755 	add	a, r2
      00216F FD               [12]  756 	mov	r5,a
      002170 E9               [12]  757 	mov	a,r1
      002171 3B               [12]  758 	addc	a, r3
      002172 FE               [12]  759 	mov	r6,a
      002173 8C 07            [24]  760 	mov	ar7,r4
      002175 8D 82            [24]  761 	mov	dpl,r5
      002177 8E 83            [24]  762 	mov	dph,r6
      002179 8F F0            [24]  763 	mov	b,r7
      00217B 12 3C FB         [24]  764 	lcall	__gptrget
      00217E 7F 00            [12]  765 	mov	r7,#0x00
      002180 24 C9            [12]  766 	add	a,#0xc9
      002182 F5 17            [12]  767 	mov	_hex_to_int_sloc2_1_0,a
      002184 EF               [12]  768 	mov	a,r7
      002185 34 FF            [12]  769 	addc	a,#0xff
      002187 F5 18            [12]  770 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002189 90 01 03         [24]  771 	mov	dptr,#_hex_to_int_result_10000_64
      00218C E0               [24]  772 	movx	a,@dptr
      00218D FE               [12]  773 	mov	r6,a
      00218E A3               [24]  774 	inc	dptr
      00218F E0               [24]  775 	movx	a,@dptr
      002190 FF               [12]  776 	mov	r7,a
      002191 90 01 03         [24]  777 	mov	dptr,#_hex_to_int_result_10000_64
      002194 E5 17            [12]  778 	mov	a,_hex_to_int_sloc2_1_0
      002196 2E               [12]  779 	add	a, r6
      002197 F0               [24]  780 	movx	@dptr,a
      002198 E5 18            [12]  781 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00219A 3F               [12]  782 	addc	a, r7
      00219B A3               [24]  783 	inc	dptr
      00219C F0               [24]  784 	movx	@dptr,a
      00219D D0 07            [24]  785 	pop	ar7
      00219F D0 06            [24]  786 	pop	ar6
      0021A1 D0 05            [24]  787 	pop	ar5
      0021A3 80 63            [24]  788 	sjmp	00110$
      0021A5                        789 00105$:
                                    790 ;	main.c:24: else if(ASCII >= 'a' && ASCII <= 'f')
      0021A5 90 01 05         [24]  791 	mov	dptr,#_hex_to_int_ASCII_20000_65
      0021A8 E0               [24]  792 	movx	a,@dptr
      0021A9 F5 17            [12]  793 	mov	_hex_to_int_sloc2_1_0,a
      0021AB A3               [24]  794 	inc	dptr
      0021AC E0               [24]  795 	movx	a,@dptr
      0021AD F5 18            [12]  796 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0021AF C3               [12]  797 	clr	c
      0021B0 E5 17            [12]  798 	mov	a,_hex_to_int_sloc2_1_0
      0021B2 94 61            [12]  799 	subb	a,#0x61
      0021B4 E5 18            [12]  800 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0021B6 64 80            [12]  801 	xrl	a,#0x80
      0021B8 94 80            [12]  802 	subb	a,#0x80
      0021BA 40 4C            [24]  803 	jc	00110$
      0021BC 74 66            [12]  804 	mov	a,#0x66
      0021BE 95 17            [12]  805 	subb	a,_hex_to_int_sloc2_1_0
      0021C0 74 80            [12]  806 	mov	a,#(0x00 ^ 0x80)
      0021C2 85 18 F0         [24]  807 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      0021C5 63 F0 80         [24]  808 	xrl	b,#0x80
      0021C8 95 F0            [12]  809 	subb	a,b
      0021CA 40 3C            [24]  810 	jc	00110$
                                    811 ;	main.c:26: result += str[i] - 87;
      0021CC C0 02            [24]  812 	push	ar2
      0021CE C0 03            [24]  813 	push	ar3
      0021D0 C0 04            [24]  814 	push	ar4
      0021D2 E8               [12]  815 	mov	a,r0
      0021D3 2D               [12]  816 	add	a, r5
      0021D4 FA               [12]  817 	mov	r2,a
      0021D5 E9               [12]  818 	mov	a,r1
      0021D6 3E               [12]  819 	addc	a, r6
      0021D7 FB               [12]  820 	mov	r3,a
      0021D8 8F 04            [24]  821 	mov	ar4,r7
      0021DA 8A 82            [24]  822 	mov	dpl,r2
      0021DC 8B 83            [24]  823 	mov	dph,r3
      0021DE 8C F0            [24]  824 	mov	b,r4
      0021E0 12 3C FB         [24]  825 	lcall	__gptrget
      0021E3 7C 00            [12]  826 	mov	r4,#0x00
      0021E5 24 A9            [12]  827 	add	a,#0xa9
      0021E7 F5 17            [12]  828 	mov	_hex_to_int_sloc2_1_0,a
      0021E9 EC               [12]  829 	mov	a,r4
      0021EA 34 FF            [12]  830 	addc	a,#0xff
      0021EC F5 18            [12]  831 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0021EE 90 01 03         [24]  832 	mov	dptr,#_hex_to_int_result_10000_64
      0021F1 E0               [24]  833 	movx	a,@dptr
      0021F2 FB               [12]  834 	mov	r3,a
      0021F3 A3               [24]  835 	inc	dptr
      0021F4 E0               [24]  836 	movx	a,@dptr
      0021F5 FC               [12]  837 	mov	r4,a
      0021F6 90 01 03         [24]  838 	mov	dptr,#_hex_to_int_result_10000_64
      0021F9 E5 17            [12]  839 	mov	a,_hex_to_int_sloc2_1_0
      0021FB 2B               [12]  840 	add	a, r3
      0021FC F0               [24]  841 	movx	@dptr,a
      0021FD E5 18            [12]  842 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0021FF 3C               [12]  843 	addc	a, r4
      002200 A3               [24]  844 	inc	dptr
      002201 F0               [24]  845 	movx	@dptr,a
                                    846 ;	main.c:30: return result;
      002202 D0 04            [24]  847 	pop	ar4
      002204 D0 03            [24]  848 	pop	ar3
      002206 D0 02            [24]  849 	pop	ar2
                                    850 ;	main.c:26: result += str[i] - 87;
      002208                        851 00110$:
                                    852 ;	main.c:28: i++;
      002208 08               [12]  853 	inc	r0
      002209 B8 00 01         [24]  854 	cjne	r0,#0x00,00173$
      00220C 09               [12]  855 	inc	r1
      00220D                        856 00173$:
      00220D 02 20 94         [24]  857 	ljmp	00112$
      002210                        858 00114$:
                                    859 ;	main.c:30: return result;
      002210 90 01 03         [24]  860 	mov	dptr,#_hex_to_int_result_10000_64
      002213 E0               [24]  861 	movx	a,@dptr
      002214 FE               [12]  862 	mov	r6,a
      002215 A3               [24]  863 	inc	dptr
      002216 E0               [24]  864 	movx	a,@dptr
                                    865 ;	main.c:32: }
      002217 8E 82            [24]  866 	mov	dpl,r6
      002219 F5 83            [12]  867 	mov	dph,a
      00221B 22               [24]  868 	ret
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    871 ;------------------------------------------------------------
                                    872 ;i                         Allocated with name '_get_user_buffer_size_i_10000_70'
                                    873 ;output                    Allocated with name '_get_user_buffer_size_output_10000_70'
                                    874 ;input                     Allocated with name '_get_user_buffer_size_input_10000_70'
                                    875 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_70'
                                    876 ;------------------------------------------------------------
                                    877 ;	main.c:35: int get_user_buffer_size(void)
                                    878 ;	-----------------------------------------
                                    879 ;	 function get_user_buffer_size
                                    880 ;	-----------------------------------------
      00221C                        881 _get_user_buffer_size:
                                    882 ;	main.c:41: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      00221C 7E 00            [12]  883 	mov	r6,#0x00
      00221E 7F 00            [12]  884 	mov	r7,#0x00
      002220                        885 00103$:
      002220 C0 07            [24]  886 	push	ar7
      002222 C0 06            [24]  887 	push	ar6
      002224 12 30 C3         [24]  888 	lcall	_getchar
      002227 AC 82            [24]  889 	mov	r4, dpl
      002229 D0 06            [24]  890 	pop	ar6
      00222B D0 07            [24]  891 	pop	ar7
      00222D BC 0A 02         [24]  892 	cjne	r4,#0x0a,00133$
      002230 80 3A            [24]  893 	sjmp	00105$
      002232                        894 00133$:
      002232 BC 0D 02         [24]  895 	cjne	r4,#0x0d,00134$
      002235 80 35            [24]  896 	sjmp	00105$
      002237                        897 00134$:
      002237 C3               [12]  898 	clr	c
      002238 EE               [12]  899 	mov	a,r6
      002239 94 09            [12]  900 	subb	a,#0x09
      00223B EF               [12]  901 	mov	a,r7
      00223C 64 80            [12]  902 	xrl	a,#0x80
      00223E 94 80            [12]  903 	subb	a,#0x80
      002240 50 2A            [24]  904 	jnc	00105$
                                    905 ;	main.c:43: putchar(ch);
      002242 8C 03            [24]  906 	mov	ar3,r4
      002244 7D 00            [12]  907 	mov	r5,#0x00
      002246 8B 82            [24]  908 	mov	dpl, r3
      002248 8D 83            [24]  909 	mov	dph, r5
      00224A C0 07            [24]  910 	push	ar7
      00224C C0 06            [24]  911 	push	ar6
      00224E C0 04            [24]  912 	push	ar4
      002250 12 30 A4         [24]  913 	lcall	_putchar
      002253 D0 04            [24]  914 	pop	ar4
      002255 D0 06            [24]  915 	pop	ar6
      002257 D0 07            [24]  916 	pop	ar7
                                    917 ;	main.c:44: input[i] = ch;      //Append the input array with the received character
      002259 EE               [12]  918 	mov	a,r6
      00225A 24 07            [12]  919 	add	a, #_get_user_buffer_size_input_10000_70
      00225C F5 82            [12]  920 	mov	dpl,a
      00225E EF               [12]  921 	mov	a,r7
      00225F 34 01            [12]  922 	addc	a, #(_get_user_buffer_size_input_10000_70 >> 8)
      002261 F5 83            [12]  923 	mov	dph,a
      002263 EC               [12]  924 	mov	a,r4
      002264 F0               [24]  925 	movx	@dptr,a
                                    926 ;	main.c:45: i++;
      002265 0E               [12]  927 	inc	r6
      002266 BE 00 B7         [24]  928 	cjne	r6,#0x00,00103$
      002269 0F               [12]  929 	inc	r7
      00226A 80 B4            [24]  930 	sjmp	00103$
      00226C                        931 00105$:
                                    932 ;	main.c:47: input[i] = '\0';
      00226C EE               [12]  933 	mov	a,r6
      00226D 24 07            [12]  934 	add	a, #_get_user_buffer_size_input_10000_70
      00226F F5 82            [12]  935 	mov	dpl,a
      002271 EF               [12]  936 	mov	a,r7
      002272 34 01            [12]  937 	addc	a, #(_get_user_buffer_size_input_10000_70 >> 8)
      002274 F5 83            [12]  938 	mov	dph,a
      002276 E4               [12]  939 	clr	a
      002277 F0               [24]  940 	movx	@dptr,a
                                    941 ;	main.c:48: output = hex_to_int(input); //Convert the char hex data to int
      002278 90 01 07         [24]  942 	mov	dptr,#_get_user_buffer_size_input_10000_70
      00227B F5 F0            [12]  943 	mov	b,a
      00227D 12 20 62         [24]  944 	lcall	_hex_to_int
      002280 AE 82            [24]  945 	mov	r6, dpl
      002282 AF 83            [24]  946 	mov	r7, dph
                                    947 ;	main.c:49: printf_tiny("\n\r");
      002284 C0 07            [24]  948 	push	ar7
      002286 C0 06            [24]  949 	push	ar6
      002288 74 1B            [12]  950 	mov	a,#___str_0
      00228A C0 E0            [24]  951 	push	acc
      00228C 74 3D            [12]  952 	mov	a,#(___str_0 >> 8)
      00228E C0 E0            [24]  953 	push	acc
      002290 12 31 62         [24]  954 	lcall	_printf_tiny
      002293 15 81            [12]  955 	dec	sp
      002295 15 81            [12]  956 	dec	sp
      002297 D0 06            [24]  957 	pop	ar6
      002299 D0 07            [24]  958 	pop	ar7
                                    959 ;	main.c:51: return output;
      00229B 8E 82            [24]  960 	mov	dpl, r6
      00229D 8F 83            [24]  961 	mov	dph, r7
                                    962 ;	main.c:52: }
      00229F 22               [24]  963 	ret
                                    964 ;------------------------------------------------------------
                                    965 ;Allocation info for local variables in function 'main'
                                    966 ;------------------------------------------------------------
                                    967 ;c                         Allocated with name '_main_c_20001_75'
                                    968 ;reg_bank                  Allocated with name '_main_reg_bank_40002_78'
                                    969 ;addr                      Allocated with name '_main_addr_40003_79'
                                    970 ;data                      Allocated with name '_main_data_40004_80'
                                    971 ;num_bytes                 Allocated with name '_main_num_bytes_40002_82'
                                    972 ;start_address             Allocated with name '_main_start_address_40003_83'
                                    973 ;buffer                    Allocated with name '_main_buffer_40003_83'
                                    974 ;i                         Allocated with name '_main_i_50003_84'
                                    975 ;num_bytes                 Allocated with name '_main_num_bytes_40002_87'
                                    976 ;start_address             Allocated with name '_main_start_address_40003_88'
                                    977 ;buffer                    Allocated with name '_main_buffer_40003_88'
                                    978 ;i                         Allocated with name '_main_i_50003_89'
                                    979 ;reg_bank                  Allocated with name '_main_reg_bank_40002_92'
                                    980 ;addr                      Allocated with name '_main_addr_40003_93'
                                    981 ;data                      Allocated with name '_main_data_40003_93'
                                    982 ;addr                      Allocated with name '_main_addr_40002_95'
                                    983 ;data                      Allocated with name '_main_data_40003_96'
                                    984 ;addr                      Allocated with name '_main_addr_40002_98'
                                    985 ;data                      Allocated with name '_main_data_40002_98'
                                    986 ;addr                      Allocated with name '_main_addr_40002_101'
                                    987 ;bank                      Allocated with name '_main_bank_40003_102'
                                    988 ;data                      Allocated with name '_main_data_40003_102'
                                    989 ;------------------------------------------------------------
                                    990 ;	main.c:54: void main(void)
                                    991 ;	-----------------------------------------
                                    992 ;	 function main
                                    993 ;	-----------------------------------------
      0022A0                        994 _main:
                                    995 ;	main.c:56: printf("SPI Operations on 8051\n\r");
      0022A0 74 1E            [12]  996 	mov	a,#___str_1
      0022A2 C0 E0            [24]  997 	push	acc
      0022A4 74 3D            [12]  998 	mov	a,#(___str_1 >> 8)
      0022A6 C0 E0            [24]  999 	push	acc
      0022A8 74 80            [12] 1000 	mov	a,#0x80
      0022AA C0 E0            [24] 1001 	push	acc
      0022AC 12 32 B9         [24] 1002 	lcall	_printf
      0022AF 15 81            [12] 1003 	dec	sp
      0022B1 15 81            [12] 1004 	dec	sp
      0022B3 15 81            [12] 1005 	dec	sp
                                   1006 ;	main.c:57: configure_SPI();
      0022B5 12 29 86         [24] 1007 	lcall	_configure_SPI
                                   1008 ;	main.c:59: while(1)
      0022B8                       1009 00115$:
                                   1010 ;	main.c:61: printf("\n\rChoose an action: \n\r");
      0022B8 74 37            [12] 1011 	mov	a,#___str_2
      0022BA C0 E0            [24] 1012 	push	acc
      0022BC 74 3D            [12] 1013 	mov	a,#(___str_2 >> 8)
      0022BE C0 E0            [24] 1014 	push	acc
      0022C0 74 80            [12] 1015 	mov	a,#0x80
      0022C2 C0 E0            [24] 1016 	push	acc
      0022C4 12 32 B9         [24] 1017 	lcall	_printf
      0022C7 15 81            [12] 1018 	dec	sp
      0022C9 15 81            [12] 1019 	dec	sp
      0022CB 15 81            [12] 1020 	dec	sp
                                   1021 ;	main.c:62: printf("1 --> Control Write\n\r");
      0022CD 74 4E            [12] 1022 	mov	a,#___str_3
      0022CF C0 E0            [24] 1023 	push	acc
      0022D1 74 3D            [12] 1024 	mov	a,#(___str_3 >> 8)
      0022D3 C0 E0            [24] 1025 	push	acc
      0022D5 74 80            [12] 1026 	mov	a,#0x80
      0022D7 C0 E0            [24] 1027 	push	acc
      0022D9 12 32 B9         [24] 1028 	lcall	_printf
      0022DC 15 81            [12] 1029 	dec	sp
      0022DE 15 81            [12] 1030 	dec	sp
      0022E0 15 81            [12] 1031 	dec	sp
                                   1032 ;	main.c:63: printf("2 --> Buffer Write\n\r");
      0022E2 74 64            [12] 1033 	mov	a,#___str_4
      0022E4 C0 E0            [24] 1034 	push	acc
      0022E6 74 3D            [12] 1035 	mov	a,#(___str_4 >> 8)
      0022E8 C0 E0            [24] 1036 	push	acc
      0022EA 74 80            [12] 1037 	mov	a,#0x80
      0022EC C0 E0            [24] 1038 	push	acc
      0022EE 12 32 B9         [24] 1039 	lcall	_printf
      0022F1 15 81            [12] 1040 	dec	sp
      0022F3 15 81            [12] 1041 	dec	sp
      0022F5 15 81            [12] 1042 	dec	sp
                                   1043 ;	main.c:64: printf("3 --> Buffer Read\n\r");
      0022F7 74 79            [12] 1044 	mov	a,#___str_5
      0022F9 C0 E0            [24] 1045 	push	acc
      0022FB 74 3D            [12] 1046 	mov	a,#(___str_5 >> 8)
      0022FD C0 E0            [24] 1047 	push	acc
      0022FF 74 80            [12] 1048 	mov	a,#0x80
      002301 C0 E0            [24] 1049 	push	acc
      002303 12 32 B9         [24] 1050 	lcall	_printf
      002306 15 81            [12] 1051 	dec	sp
      002308 15 81            [12] 1052 	dec	sp
      00230A 15 81            [12] 1053 	dec	sp
                                   1054 ;	main.c:65: printf("4 --> MAC Register Read\n\r");
      00230C 74 8D            [12] 1055 	mov	a,#___str_6
      00230E C0 E0            [24] 1056 	push	acc
      002310 74 3D            [12] 1057 	mov	a,#(___str_6 >> 8)
      002312 C0 E0            [24] 1058 	push	acc
      002314 74 80            [12] 1059 	mov	a,#0x80
      002316 C0 E0            [24] 1060 	push	acc
      002318 12 32 B9         [24] 1061 	lcall	_printf
      00231B 15 81            [12] 1062 	dec	sp
      00231D 15 81            [12] 1063 	dec	sp
      00231F 15 81            [12] 1064 	dec	sp
                                   1065 ;	main.c:66: printf("5 --> PHY SPI Write\n\r");
      002321 74 A7            [12] 1066 	mov	a,#___str_7
      002323 C0 E0            [24] 1067 	push	acc
      002325 74 3D            [12] 1068 	mov	a,#(___str_7 >> 8)
      002327 C0 E0            [24] 1069 	push	acc
      002329 74 80            [12] 1070 	mov	a,#0x80
      00232B C0 E0            [24] 1071 	push	acc
      00232D 12 32 B9         [24] 1072 	lcall	_printf
      002330 15 81            [12] 1073 	dec	sp
      002332 15 81            [12] 1074 	dec	sp
      002334 15 81            [12] 1075 	dec	sp
                                   1076 ;	main.c:67: printf("6 --> PHY SPI Read\n\r");
      002336 74 BD            [12] 1077 	mov	a,#___str_8
      002338 C0 E0            [24] 1078 	push	acc
      00233A 74 3D            [12] 1079 	mov	a,#(___str_8 >> 8)
      00233C C0 E0            [24] 1080 	push	acc
      00233E 74 80            [12] 1081 	mov	a,#0x80
      002340 C0 E0            [24] 1082 	push	acc
      002342 12 32 B9         [24] 1083 	lcall	_printf
      002345 15 81            [12] 1084 	dec	sp
      002347 15 81            [12] 1085 	dec	sp
      002349 15 81            [12] 1086 	dec	sp
                                   1087 ;	main.c:68: printf("7 --> ENC Reset\n\r");
      00234B 74 D2            [12] 1088 	mov	a,#___str_9
      00234D C0 E0            [24] 1089 	push	acc
      00234F 74 3D            [12] 1090 	mov	a,#(___str_9 >> 8)
      002351 C0 E0            [24] 1091 	push	acc
      002353 74 80            [12] 1092 	mov	a,#0x80
      002355 C0 E0            [24] 1093 	push	acc
      002357 12 32 B9         [24] 1094 	lcall	_printf
      00235A 15 81            [12] 1095 	dec	sp
      00235C 15 81            [12] 1096 	dec	sp
      00235E 15 81            [12] 1097 	dec	sp
                                   1098 ;	main.c:69: printf("8 --> Read ETH Register\n\r");
      002360 74 E4            [12] 1099 	mov	a,#___str_10
      002362 C0 E0            [24] 1100 	push	acc
      002364 74 3D            [12] 1101 	mov	a,#(___str_10 >> 8)
      002366 C0 E0            [24] 1102 	push	acc
      002368 74 80            [12] 1103 	mov	a,#0x80
      00236A C0 E0            [24] 1104 	push	acc
      00236C 12 32 B9         [24] 1105 	lcall	_printf
      00236F 15 81            [12] 1106 	dec	sp
      002371 15 81            [12] 1107 	dec	sp
      002373 15 81            [12] 1108 	dec	sp
                                   1109 ;	main.c:70: printf("9 --> Display Menu\n\r");
      002375 74 FE            [12] 1110 	mov	a,#___str_11
      002377 C0 E0            [24] 1111 	push	acc
      002379 74 3D            [12] 1112 	mov	a,#(___str_11 >> 8)
      00237B C0 E0            [24] 1113 	push	acc
      00237D 74 80            [12] 1114 	mov	a,#0x80
      00237F C0 E0            [24] 1115 	push	acc
      002381 12 32 B9         [24] 1116 	lcall	_printf
      002384 15 81            [12] 1117 	dec	sp
      002386 15 81            [12] 1118 	dec	sp
      002388 15 81            [12] 1119 	dec	sp
                                   1120 ;	main.c:72: char c = getchar();
      00238A 12 30 C3         [24] 1121 	lcall	_getchar
      00238D AE 82            [24] 1122 	mov	r6, dpl
                                   1123 ;	main.c:73: putchar(c);
      00238F 8E 05            [24] 1124 	mov	ar5,r6
      002391 7F 00            [12] 1125 	mov	r7,#0x00
      002393 8D 82            [24] 1126 	mov	dpl, r5
      002395 8F 83            [24] 1127 	mov	dph, r7
      002397 C0 06            [24] 1128 	push	ar6
      002399 12 30 A4         [24] 1129 	lcall	_putchar
                                   1130 ;	main.c:74: printf("\n\r");
      00239C 74 1B            [12] 1131 	mov	a,#___str_0
      00239E C0 E0            [24] 1132 	push	acc
      0023A0 74 3D            [12] 1133 	mov	a,#(___str_0 >> 8)
      0023A2 C0 E0            [24] 1134 	push	acc
      0023A4 74 80            [12] 1135 	mov	a,#0x80
      0023A6 C0 E0            [24] 1136 	push	acc
      0023A8 12 32 B9         [24] 1137 	lcall	_printf
      0023AB 15 81            [12] 1138 	dec	sp
      0023AD 15 81            [12] 1139 	dec	sp
      0023AF 15 81            [12] 1140 	dec	sp
      0023B1 D0 06            [24] 1141 	pop	ar6
                                   1142 ;	main.c:76: switch(c)
      0023B3 BE 31 00         [24] 1143 	cjne	r6,#0x31,00168$
      0023B6                       1144 00168$:
      0023B6 50 03            [24] 1145 	jnc	00169$
      0023B8 02 28 62         [24] 1146 	ljmp	00112$
      0023BB                       1147 00169$:
      0023BB EE               [12] 1148 	mov	a,r6
      0023BC 24 C6            [12] 1149 	add	a,#0xff - 0x39
      0023BE 50 03            [24] 1150 	jnc	00170$
      0023C0 02 28 62         [24] 1151 	ljmp	00112$
      0023C3                       1152 00170$:
      0023C3 EE               [12] 1153 	mov	a,r6
      0023C4 24 CF            [12] 1154 	add	a,#0xcf
      0023C6 FE               [12] 1155 	mov	r6,a
      0023C7 24 0A            [12] 1156 	add	a,#(00171$-3-.)
      0023C9 83               [24] 1157 	movc	a,@a+pc
      0023CA F5 82            [12] 1158 	mov	dpl,a
      0023CC EE               [12] 1159 	mov	a,r6
      0023CD 24 0D            [12] 1160 	add	a,#(00172$-3-.)
      0023CF 83               [24] 1161 	movc	a,@a+pc
      0023D0 F5 83            [12] 1162 	mov	dph,a
      0023D2 E4               [12] 1163 	clr	a
      0023D3 73               [24] 1164 	jmp	@a+dptr
      0023D4                       1165 00171$:
      0023D4 E6                    1166 	.db	00101$
      0023D5 4E                    1167 	.db	00102$
      0023D6 4C                    1168 	.db	00104$
      0023D7 1D                    1169 	.db	00106$
      0023D8 7F                    1170 	.db	00107$
      0023D9 EA                    1171 	.db	00108$
      0023DA 25                    1172 	.db	00109$
      0023DB 40                    1173 	.db	00110$
      0023DC A2                    1174 	.db	00111$
      0023DD                       1175 00172$:
      0023DD 23                    1176 	.db	00101$>>8
      0023DE 24                    1177 	.db	00102$>>8
      0023DF 25                    1178 	.db	00104$>>8
      0023E0 26                    1179 	.db	00106$>>8
      0023E1 26                    1180 	.db	00107$>>8
      0023E2 26                    1181 	.db	00108$>>8
      0023E3 27                    1182 	.db	00109$>>8
      0023E4 27                    1183 	.db	00110$>>8
      0023E5 27                    1184 	.db	00111$>>8
                                   1185 ;	main.c:78: case '1': {
      0023E6                       1186 00101$:
                                   1187 ;	main.c:79: printf("Enter the register bank to select:\n\r");
      0023E6 74 13            [12] 1188 	mov	a,#___str_12
      0023E8 C0 E0            [24] 1189 	push	acc
      0023EA 74 3E            [12] 1190 	mov	a,#(___str_12 >> 8)
      0023EC C0 E0            [24] 1191 	push	acc
      0023EE 74 80            [12] 1192 	mov	a,#0x80
      0023F0 C0 E0            [24] 1193 	push	acc
      0023F2 12 32 B9         [24] 1194 	lcall	_printf
      0023F5 15 81            [12] 1195 	dec	sp
      0023F7 15 81            [12] 1196 	dec	sp
      0023F9 15 81            [12] 1197 	dec	sp
                                   1198 ;	main.c:80: uint8_t reg_bank = get_user_buffer_size();
      0023FB 12 22 1C         [24] 1199 	lcall	_get_user_buffer_size
      0023FE AE 82            [24] 1200 	mov	r6, dpl
                                   1201 ;	main.c:81: printf("Enter the address of the Control Register:\n\r");
      002400 C0 06            [24] 1202 	push	ar6
      002402 74 38            [12] 1203 	mov	a,#___str_13
      002404 C0 E0            [24] 1204 	push	acc
      002406 74 3E            [12] 1205 	mov	a,#(___str_13 >> 8)
      002408 C0 E0            [24] 1206 	push	acc
      00240A 74 80            [12] 1207 	mov	a,#0x80
      00240C C0 E0            [24] 1208 	push	acc
      00240E 12 32 B9         [24] 1209 	lcall	_printf
      002411 15 81            [12] 1210 	dec	sp
      002413 15 81            [12] 1211 	dec	sp
      002415 15 81            [12] 1212 	dec	sp
                                   1213 ;	main.c:82: uint8_t addr = get_user_buffer_size();
      002417 12 22 1C         [24] 1214 	lcall	_get_user_buffer_size
      00241A AD 82            [24] 1215 	mov	r5, dpl
                                   1216 ;	main.c:83: printf("Enter the data you want to write:\n\r");
      00241C C0 05            [24] 1217 	push	ar5
      00241E 74 65            [12] 1218 	mov	a,#___str_14
      002420 C0 E0            [24] 1219 	push	acc
      002422 74 3E            [12] 1220 	mov	a,#(___str_14 >> 8)
      002424 C0 E0            [24] 1221 	push	acc
      002426 74 80            [12] 1222 	mov	a,#0x80
      002428 C0 E0            [24] 1223 	push	acc
      00242A 12 32 B9         [24] 1224 	lcall	_printf
      00242D 15 81            [12] 1225 	dec	sp
      00242F 15 81            [12] 1226 	dec	sp
      002431 15 81            [12] 1227 	dec	sp
                                   1228 ;	main.c:84: uint8_t data = get_user_buffer_size();
      002433 12 22 1C         [24] 1229 	lcall	_get_user_buffer_size
      002436 AC 82            [24] 1230 	mov	r4, dpl
      002438 D0 05            [24] 1231 	pop	ar5
      00243A D0 06            [24] 1232 	pop	ar6
                                   1233 ;	main.c:85: spi_control_write(reg_bank, addr, data);
      00243C 90 03 13         [24] 1234 	mov	dptr,#_spi_control_write_PARM_2
      00243F ED               [12] 1235 	mov	a,r5
      002440 F0               [24] 1236 	movx	@dptr,a
      002441 90 03 14         [24] 1237 	mov	dptr,#_spi_control_write_PARM_3
      002444 EC               [12] 1238 	mov	a,r4
      002445 F0               [24] 1239 	movx	@dptr,a
      002446 8E 82            [24] 1240 	mov	dpl, r6
      002448 12 29 2A         [24] 1241 	lcall	_spi_control_write
                                   1242 ;	main.c:86: break;
      00244B 02 22 B8         [24] 1243 	ljmp	00115$
                                   1244 ;	main.c:88: case '2': {
      00244E                       1245 00102$:
                                   1246 ;	main.c:89: printf("Enter the number of bytes to write:\n\r");
      00244E 74 89            [12] 1247 	mov	a,#___str_15
      002450 C0 E0            [24] 1248 	push	acc
      002452 74 3E            [12] 1249 	mov	a,#(___str_15 >> 8)
      002454 C0 E0            [24] 1250 	push	acc
      002456 74 80            [12] 1251 	mov	a,#0x80
      002458 C0 E0            [24] 1252 	push	acc
      00245A 12 32 B9         [24] 1253 	lcall	_printf
      00245D 15 81            [12] 1254 	dec	sp
      00245F 15 81            [12] 1255 	dec	sp
      002461 15 81            [12] 1256 	dec	sp
                                   1257 ;	main.c:90: int num_bytes = get_user_buffer_size();
      002463 12 22 1C         [24] 1258 	lcall	_get_user_buffer_size
      002466 AE 82            [24] 1259 	mov	r6, dpl
      002468 AF 83            [24] 1260 	mov	r7, dph
                                   1261 ;	main.c:91: printf("Enter the starting address:\n\r");
      00246A C0 07            [24] 1262 	push	ar7
      00246C C0 06            [24] 1263 	push	ar6
      00246E 74 AF            [12] 1264 	mov	a,#___str_16
      002470 C0 E0            [24] 1265 	push	acc
      002472 74 3E            [12] 1266 	mov	a,#(___str_16 >> 8)
      002474 C0 E0            [24] 1267 	push	acc
      002476 74 80            [12] 1268 	mov	a,#0x80
      002478 C0 E0            [24] 1269 	push	acc
      00247A 12 32 B9         [24] 1270 	lcall	_printf
      00247D 15 81            [12] 1271 	dec	sp
      00247F 15 81            [12] 1272 	dec	sp
      002481 15 81            [12] 1273 	dec	sp
                                   1274 ;	main.c:92: uint16_t start_address = get_user_buffer_size();
      002483 12 22 1C         [24] 1275 	lcall	_get_user_buffer_size
      002486 AC 82            [24] 1276 	mov	r4, dpl
      002488 AD 83            [24] 1277 	mov	r5, dph
      00248A D0 06            [24] 1278 	pop	ar6
      00248C D0 07            [24] 1279 	pop	ar7
                                   1280 ;	main.c:94: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      00248E C0 07            [24] 1281 	push	ar7
      002490 C0 06            [24] 1282 	push	ar6
      002492 C0 05            [24] 1283 	push	ar5
      002494 C0 04            [24] 1284 	push	ar4
      002496 C0 06            [24] 1285 	push	ar6
      002498 C0 07            [24] 1286 	push	ar7
      00249A 74 CD            [12] 1287 	mov	a,#___str_17
      00249C C0 E0            [24] 1288 	push	acc
      00249E 74 3E            [12] 1289 	mov	a,#(___str_17 >> 8)
      0024A0 C0 E0            [24] 1290 	push	acc
      0024A2 74 80            [12] 1291 	mov	a,#0x80
      0024A4 C0 E0            [24] 1292 	push	acc
      0024A6 12 32 B9         [24] 1293 	lcall	_printf
      0024A9 E5 81            [12] 1294 	mov	a,sp
      0024AB 24 FB            [12] 1295 	add	a,#0xfb
      0024AD F5 81            [12] 1296 	mov	sp,a
      0024AF D0 04            [24] 1297 	pop	ar4
      0024B1 D0 05            [24] 1298 	pop	ar5
      0024B3 D0 06            [24] 1299 	pop	ar6
      0024B5 D0 07            [24] 1300 	pop	ar7
                                   1301 ;	main.c:95: for (int i = 0; i < num_bytes; i++) {
      0024B7 7A 00            [12] 1302 	mov	r2,#0x00
      0024B9 7B 00            [12] 1303 	mov	r3,#0x00
      0024BB                       1304 00118$:
      0024BB C3               [12] 1305 	clr	c
      0024BC EA               [12] 1306 	mov	a,r2
      0024BD 9E               [12] 1307 	subb	a,r6
      0024BE EB               [12] 1308 	mov	a,r3
      0024BF 64 80            [12] 1309 	xrl	a,#0x80
      0024C1 8F F0            [24] 1310 	mov	b,r7
      0024C3 63 F0 80         [24] 1311 	xrl	b,#0x80
      0024C6 95 F0            [12] 1312 	subb	a,b
      0024C8 50 63            [24] 1313 	jnc	00103$
                                   1314 ;	main.c:96: printf("Byte %d: ", i);
      0024CA C0 04            [24] 1315 	push	ar4
      0024CC C0 05            [24] 1316 	push	ar5
      0024CE C0 07            [24] 1317 	push	ar7
      0024D0 C0 06            [24] 1318 	push	ar6
      0024D2 C0 05            [24] 1319 	push	ar5
      0024D4 C0 04            [24] 1320 	push	ar4
      0024D6 C0 03            [24] 1321 	push	ar3
      0024D8 C0 02            [24] 1322 	push	ar2
      0024DA C0 02            [24] 1323 	push	ar2
      0024DC C0 03            [24] 1324 	push	ar3
      0024DE 74 F0            [12] 1325 	mov	a,#___str_18
      0024E0 C0 E0            [24] 1326 	push	acc
      0024E2 74 3E            [12] 1327 	mov	a,#(___str_18 >> 8)
      0024E4 C0 E0            [24] 1328 	push	acc
      0024E6 74 80            [12] 1329 	mov	a,#0x80
      0024E8 C0 E0            [24] 1330 	push	acc
      0024EA 12 32 B9         [24] 1331 	lcall	_printf
      0024ED E5 81            [12] 1332 	mov	a,sp
      0024EF 24 FB            [12] 1333 	add	a,#0xfb
      0024F1 F5 81            [12] 1334 	mov	sp,a
      0024F3 D0 02            [24] 1335 	pop	ar2
      0024F5 D0 03            [24] 1336 	pop	ar3
      0024F7 D0 04            [24] 1337 	pop	ar4
      0024F9 D0 05            [24] 1338 	pop	ar5
                                   1339 ;	main.c:97: buffer[i] = get_user_buffer_size();
      0024FB EA               [12] 1340 	mov	a,r2
      0024FC 24 11            [12] 1341 	add	a, #_main_buffer_40003_83
      0024FE F8               [12] 1342 	mov	r0,a
      0024FF EB               [12] 1343 	mov	a,r3
      002500 34 01            [12] 1344 	addc	a, #(_main_buffer_40003_83 >> 8)
      002502 F9               [12] 1345 	mov	r1,a
      002503 C0 03            [24] 1346 	push	ar3
      002505 C0 02            [24] 1347 	push	ar2
      002507 C0 01            [24] 1348 	push	ar1
      002509 C0 00            [24] 1349 	push	ar0
      00250B 12 22 1C         [24] 1350 	lcall	_get_user_buffer_size
      00250E AC 82            [24] 1351 	mov	r4, dpl
      002510 D0 00            [24] 1352 	pop	ar0
      002512 D0 01            [24] 1353 	pop	ar1
      002514 D0 02            [24] 1354 	pop	ar2
      002516 D0 03            [24] 1355 	pop	ar3
      002518 D0 06            [24] 1356 	pop	ar6
      00251A D0 07            [24] 1357 	pop	ar7
      00251C 88 82            [24] 1358 	mov	dpl,r0
      00251E 89 83            [24] 1359 	mov	dph,r1
      002520 EC               [12] 1360 	mov	a,r4
      002521 F0               [24] 1361 	movx	@dptr,a
                                   1362 ;	main.c:95: for (int i = 0; i < num_bytes; i++) {
      002522 0A               [12] 1363 	inc	r2
      002523 BA 00 01         [24] 1364 	cjne	r2,#0x00,00174$
      002526 0B               [12] 1365 	inc	r3
      002527                       1366 00174$:
      002527 D0 05            [24] 1367 	pop	ar5
      002529 D0 04            [24] 1368 	pop	ar4
      00252B 80 8E            [24] 1369 	sjmp	00118$
      00252D                       1370 00103$:
                                   1371 ;	main.c:99: spi_buffer_write(num_bytes, start_address, buffer);
      00252D 90 03 2D         [24] 1372 	mov	dptr,#_spi_buffer_write_PARM_2
      002530 EC               [12] 1373 	mov	a,r4
      002531 F0               [24] 1374 	movx	@dptr,a
      002532 ED               [12] 1375 	mov	a,r5
      002533 A3               [24] 1376 	inc	dptr
      002534 F0               [24] 1377 	movx	@dptr,a
      002535 90 03 2F         [24] 1378 	mov	dptr,#_spi_buffer_write_PARM_3
      002538 74 11            [12] 1379 	mov	a,#_main_buffer_40003_83
      00253A F0               [24] 1380 	movx	@dptr,a
      00253B 74 01            [12] 1381 	mov	a,#(_main_buffer_40003_83 >> 8)
      00253D A3               [24] 1382 	inc	dptr
      00253E F0               [24] 1383 	movx	@dptr,a
      00253F E4               [12] 1384 	clr	a
      002540 A3               [24] 1385 	inc	dptr
      002541 F0               [24] 1386 	movx	@dptr,a
      002542 8E 82            [24] 1387 	mov	dpl, r6
      002544 8F 83            [24] 1388 	mov	dph, r7
      002546 12 2E D5         [24] 1389 	lcall	_spi_buffer_write
                                   1390 ;	main.c:100: break;
      002549 02 22 B8         [24] 1391 	ljmp	00115$
                                   1392 ;	main.c:102: case '3': {
      00254C                       1393 00104$:
                                   1394 ;	main.c:103: printf("Enter the number of bytes to read:\n\r");
      00254C 74 FA            [12] 1395 	mov	a,#___str_19
      00254E C0 E0            [24] 1396 	push	acc
      002550 74 3E            [12] 1397 	mov	a,#(___str_19 >> 8)
      002552 C0 E0            [24] 1398 	push	acc
      002554 74 80            [12] 1399 	mov	a,#0x80
      002556 C0 E0            [24] 1400 	push	acc
      002558 12 32 B9         [24] 1401 	lcall	_printf
      00255B 15 81            [12] 1402 	dec	sp
      00255D 15 81            [12] 1403 	dec	sp
      00255F 15 81            [12] 1404 	dec	sp
                                   1405 ;	main.c:104: int num_bytes = get_user_buffer_size();
      002561 12 22 1C         [24] 1406 	lcall	_get_user_buffer_size
      002564 AE 82            [24] 1407 	mov	r6, dpl
      002566 AF 83            [24] 1408 	mov	r7, dph
                                   1409 ;	main.c:105: printf("Enter the starting address:\n\r");
      002568 C0 07            [24] 1410 	push	ar7
      00256A C0 06            [24] 1411 	push	ar6
      00256C 74 AF            [12] 1412 	mov	a,#___str_16
      00256E C0 E0            [24] 1413 	push	acc
      002570 74 3E            [12] 1414 	mov	a,#(___str_16 >> 8)
      002572 C0 E0            [24] 1415 	push	acc
      002574 74 80            [12] 1416 	mov	a,#0x80
      002576 C0 E0            [24] 1417 	push	acc
      002578 12 32 B9         [24] 1418 	lcall	_printf
      00257B 15 81            [12] 1419 	dec	sp
      00257D 15 81            [12] 1420 	dec	sp
      00257F 15 81            [12] 1421 	dec	sp
                                   1422 ;	main.c:106: uint16_t start_address = get_user_buffer_size();
      002581 12 22 1C         [24] 1423 	lcall	_get_user_buffer_size
      002584 AC 82            [24] 1424 	mov	r4, dpl
      002586 AD 83            [24] 1425 	mov	r5, dph
      002588 D0 06            [24] 1426 	pop	ar6
      00258A D0 07            [24] 1427 	pop	ar7
                                   1428 ;	main.c:108: spi_buffer_read(num_bytes, start_address, buffer);
      00258C 90 03 24         [24] 1429 	mov	dptr,#_spi_buffer_read_PARM_2
      00258F EC               [12] 1430 	mov	a,r4
      002590 F0               [24] 1431 	movx	@dptr,a
      002591 ED               [12] 1432 	mov	a,r5
      002592 A3               [24] 1433 	inc	dptr
      002593 F0               [24] 1434 	movx	@dptr,a
      002594 90 03 26         [24] 1435 	mov	dptr,#_spi_buffer_read_PARM_3
      002597 74 11            [12] 1436 	mov	a,#_main_buffer_40003_88
      002599 F0               [24] 1437 	movx	@dptr,a
      00259A 74 02            [12] 1438 	mov	a,#(_main_buffer_40003_88 >> 8)
      00259C A3               [24] 1439 	inc	dptr
      00259D F0               [24] 1440 	movx	@dptr,a
      00259E E4               [12] 1441 	clr	a
      00259F A3               [24] 1442 	inc	dptr
      0025A0 F0               [24] 1443 	movx	@dptr,a
      0025A1 8E 82            [24] 1444 	mov	dpl, r6
      0025A3 8F 83            [24] 1445 	mov	dph, r7
      0025A5 C0 07            [24] 1446 	push	ar7
      0025A7 C0 06            [24] 1447 	push	ar6
      0025A9 12 2D 05         [24] 1448 	lcall	_spi_buffer_read
                                   1449 ;	main.c:109: printf("Read Data:\n\r");
      0025AC 74 1F            [12] 1450 	mov	a,#___str_20
      0025AE C0 E0            [24] 1451 	push	acc
      0025B0 74 3F            [12] 1452 	mov	a,#(___str_20 >> 8)
      0025B2 C0 E0            [24] 1453 	push	acc
      0025B4 74 80            [12] 1454 	mov	a,#0x80
      0025B6 C0 E0            [24] 1455 	push	acc
      0025B8 12 32 B9         [24] 1456 	lcall	_printf
      0025BB 15 81            [12] 1457 	dec	sp
      0025BD 15 81            [12] 1458 	dec	sp
      0025BF 15 81            [12] 1459 	dec	sp
      0025C1 D0 06            [24] 1460 	pop	ar6
      0025C3 D0 07            [24] 1461 	pop	ar7
                                   1462 ;	main.c:110: for (int i = 0; i < num_bytes; i++) {
      0025C5 7C 00            [12] 1463 	mov	r4,#0x00
      0025C7 7D 00            [12] 1464 	mov	r5,#0x00
      0025C9                       1465 00121$:
      0025C9 C3               [12] 1466 	clr	c
      0025CA EC               [12] 1467 	mov	a,r4
      0025CB 9E               [12] 1468 	subb	a,r6
      0025CC ED               [12] 1469 	mov	a,r5
      0025CD 64 80            [12] 1470 	xrl	a,#0x80
      0025CF 8F F0            [24] 1471 	mov	b,r7
      0025D1 63 F0 80         [24] 1472 	xrl	b,#0x80
      0025D4 95 F0            [12] 1473 	subb	a,b
      0025D6 40 03            [24] 1474 	jc	00175$
      0025D8 02 22 B8         [24] 1475 	ljmp	00115$
      0025DB                       1476 00175$:
                                   1477 ;	main.c:111: printf("Byte %d: 0x%02X\n\r", i, buffer[i]);
      0025DB EC               [12] 1478 	mov	a,r4
      0025DC 24 11            [12] 1479 	add	a, #_main_buffer_40003_88
      0025DE F5 82            [12] 1480 	mov	dpl,a
      0025E0 ED               [12] 1481 	mov	a,r5
      0025E1 34 02            [12] 1482 	addc	a, #(_main_buffer_40003_88 >> 8)
      0025E3 F5 83            [12] 1483 	mov	dph,a
      0025E5 E0               [24] 1484 	movx	a,@dptr
      0025E6 FB               [12] 1485 	mov	r3,a
      0025E7 7A 00            [12] 1486 	mov	r2,#0x00
      0025E9 C0 07            [24] 1487 	push	ar7
      0025EB C0 06            [24] 1488 	push	ar6
      0025ED C0 05            [24] 1489 	push	ar5
      0025EF C0 04            [24] 1490 	push	ar4
      0025F1 C0 03            [24] 1491 	push	ar3
      0025F3 C0 02            [24] 1492 	push	ar2
      0025F5 C0 04            [24] 1493 	push	ar4
      0025F7 C0 05            [24] 1494 	push	ar5
      0025F9 74 2C            [12] 1495 	mov	a,#___str_21
      0025FB C0 E0            [24] 1496 	push	acc
      0025FD 74 3F            [12] 1497 	mov	a,#(___str_21 >> 8)
      0025FF C0 E0            [24] 1498 	push	acc
      002601 74 80            [12] 1499 	mov	a,#0x80
      002603 C0 E0            [24] 1500 	push	acc
      002605 12 32 B9         [24] 1501 	lcall	_printf
      002608 E5 81            [12] 1502 	mov	a,sp
      00260A 24 F9            [12] 1503 	add	a,#0xf9
      00260C F5 81            [12] 1504 	mov	sp,a
      00260E D0 04            [24] 1505 	pop	ar4
      002610 D0 05            [24] 1506 	pop	ar5
      002612 D0 06            [24] 1507 	pop	ar6
      002614 D0 07            [24] 1508 	pop	ar7
                                   1509 ;	main.c:110: for (int i = 0; i < num_bytes; i++) {
      002616 0C               [12] 1510 	inc	r4
                                   1511 ;	main.c:115: case '4': {
      002617 BC 00 AF         [24] 1512 	cjne	r4,#0x00,00121$
      00261A 0D               [12] 1513 	inc	r5
      00261B 80 AC            [24] 1514 	sjmp	00121$
      00261D                       1515 00106$:
                                   1516 ;	main.c:116: printf("Enter the MAC register bank to select:\n\r");
      00261D 74 3E            [12] 1517 	mov	a,#___str_22
      00261F C0 E0            [24] 1518 	push	acc
      002621 74 3F            [12] 1519 	mov	a,#(___str_22 >> 8)
      002623 C0 E0            [24] 1520 	push	acc
      002625 74 80            [12] 1521 	mov	a,#0x80
      002627 C0 E0            [24] 1522 	push	acc
      002629 12 32 B9         [24] 1523 	lcall	_printf
      00262C 15 81            [12] 1524 	dec	sp
      00262E 15 81            [12] 1525 	dec	sp
      002630 15 81            [12] 1526 	dec	sp
                                   1527 ;	main.c:117: uint8_t reg_bank = get_user_buffer_size();
      002632 12 22 1C         [24] 1528 	lcall	_get_user_buffer_size
      002635 AE 82            [24] 1529 	mov	r6, dpl
                                   1530 ;	main.c:118: printf("Enter the address of the MAC Register:\n\r");
      002637 C0 06            [24] 1531 	push	ar6
      002639 74 67            [12] 1532 	mov	a,#___str_23
      00263B C0 E0            [24] 1533 	push	acc
      00263D 74 3F            [12] 1534 	mov	a,#(___str_23 >> 8)
      00263F C0 E0            [24] 1535 	push	acc
      002641 74 80            [12] 1536 	mov	a,#0x80
      002643 C0 E0            [24] 1537 	push	acc
      002645 12 32 B9         [24] 1538 	lcall	_printf
      002648 15 81            [12] 1539 	dec	sp
      00264A 15 81            [12] 1540 	dec	sp
      00264C 15 81            [12] 1541 	dec	sp
                                   1542 ;	main.c:119: uint8_t addr = get_user_buffer_size();
      00264E 12 22 1C         [24] 1543 	lcall	_get_user_buffer_size
      002651 AD 82            [24] 1544 	mov	r5, dpl
      002653 D0 06            [24] 1545 	pop	ar6
                                   1546 ;	main.c:120: uint8_t data = mac_spi_read(addr, reg_bank);
      002655 90 03 1C         [24] 1547 	mov	dptr,#_mac_spi_read_PARM_2
      002658 EE               [12] 1548 	mov	a,r6
      002659 F0               [24] 1549 	movx	@dptr,a
      00265A 8D 82            [24] 1550 	mov	dpl, r5
      00265C 12 2A A0         [24] 1551 	lcall	_mac_spi_read
      00265F AF 82            [24] 1552 	mov	r7, dpl
                                   1553 ;	main.c:121: printf("MAC Register Data: 0x%02X\n\r", data);
      002661 7E 00            [12] 1554 	mov	r6,#0x00
      002663 C0 07            [24] 1555 	push	ar7
      002665 C0 06            [24] 1556 	push	ar6
      002667 74 90            [12] 1557 	mov	a,#___str_24
      002669 C0 E0            [24] 1558 	push	acc
      00266B 74 3F            [12] 1559 	mov	a,#(___str_24 >> 8)
      00266D C0 E0            [24] 1560 	push	acc
      00266F 74 80            [12] 1561 	mov	a,#0x80
      002671 C0 E0            [24] 1562 	push	acc
      002673 12 32 B9         [24] 1563 	lcall	_printf
      002676 E5 81            [12] 1564 	mov	a,sp
      002678 24 FB            [12] 1565 	add	a,#0xfb
      00267A F5 81            [12] 1566 	mov	sp,a
                                   1567 ;	main.c:122: break;
      00267C 02 22 B8         [24] 1568 	ljmp	00115$
                                   1569 ;	main.c:124: case '5': {
      00267F                       1570 00107$:
                                   1571 ;	main.c:125: printf("Enter the PHY register address:\n\r");
      00267F 74 AC            [12] 1572 	mov	a,#___str_25
      002681 C0 E0            [24] 1573 	push	acc
      002683 74 3F            [12] 1574 	mov	a,#(___str_25 >> 8)
      002685 C0 E0            [24] 1575 	push	acc
      002687 74 80            [12] 1576 	mov	a,#0x80
      002689 C0 E0            [24] 1577 	push	acc
      00268B 12 32 B9         [24] 1578 	lcall	_printf
      00268E 15 81            [12] 1579 	dec	sp
      002690 15 81            [12] 1580 	dec	sp
      002692 15 81            [12] 1581 	dec	sp
                                   1582 ;	main.c:126: uint8_t addr = get_user_buffer_size();
      002694 12 22 1C         [24] 1583 	lcall	_get_user_buffer_size
      002697 AE 82            [24] 1584 	mov	r6, dpl
                                   1585 ;	main.c:127: printf("Enter the 16-bit data to write:\n\r");
      002699 C0 06            [24] 1586 	push	ar6
      00269B 74 CE            [12] 1587 	mov	a,#___str_26
      00269D C0 E0            [24] 1588 	push	acc
      00269F 74 3F            [12] 1589 	mov	a,#(___str_26 >> 8)
      0026A1 C0 E0            [24] 1590 	push	acc
      0026A3 74 80            [12] 1591 	mov	a,#0x80
      0026A5 C0 E0            [24] 1592 	push	acc
      0026A7 12 32 B9         [24] 1593 	lcall	_printf
      0026AA 15 81            [12] 1594 	dec	sp
      0026AC 15 81            [12] 1595 	dec	sp
      0026AE 15 81            [12] 1596 	dec	sp
                                   1597 ;	main.c:128: uint16_t data = get_user_buffer_size();
      0026B0 12 22 1C         [24] 1598 	lcall	_get_user_buffer_size
      0026B3 AD 82            [24] 1599 	mov	r5, dpl
      0026B5 AF 83            [24] 1600 	mov	r7, dph
      0026B7 D0 06            [24] 1601 	pop	ar6
                                   1602 ;	main.c:129: phy_spi_write(addr, data);
      0026B9 90 03 19         [24] 1603 	mov	dptr,#_phy_spi_write_PARM_2
      0026BC ED               [12] 1604 	mov	a,r5
      0026BD F0               [24] 1605 	movx	@dptr,a
      0026BE EF               [12] 1606 	mov	a,r7
      0026BF A3               [24] 1607 	inc	dptr
      0026C0 F0               [24] 1608 	movx	@dptr,a
      0026C1 8E 82            [24] 1609 	mov	dpl, r6
      0026C3 C0 07            [24] 1610 	push	ar7
      0026C5 C0 05            [24] 1611 	push	ar5
      0026C7 12 2A 1D         [24] 1612 	lcall	_phy_spi_write
      0026CA D0 05            [24] 1613 	pop	ar5
      0026CC D0 07            [24] 1614 	pop	ar7
                                   1615 ;	main.c:130: printf("PHY Write Data: 0x%04X\n\r", data);
      0026CE C0 05            [24] 1616 	push	ar5
      0026D0 C0 07            [24] 1617 	push	ar7
      0026D2 74 F0            [12] 1618 	mov	a,#___str_27
      0026D4 C0 E0            [24] 1619 	push	acc
      0026D6 74 3F            [12] 1620 	mov	a,#(___str_27 >> 8)
      0026D8 C0 E0            [24] 1621 	push	acc
      0026DA 74 80            [12] 1622 	mov	a,#0x80
      0026DC C0 E0            [24] 1623 	push	acc
      0026DE 12 32 B9         [24] 1624 	lcall	_printf
      0026E1 E5 81            [12] 1625 	mov	a,sp
      0026E3 24 FB            [12] 1626 	add	a,#0xfb
      0026E5 F5 81            [12] 1627 	mov	sp,a
                                   1628 ;	main.c:131: break;
      0026E7 02 22 B8         [24] 1629 	ljmp	00115$
                                   1630 ;	main.c:133: case '6': {
      0026EA                       1631 00108$:
                                   1632 ;	main.c:134: printf("Enter the PHY register address to read:\n\r");
      0026EA 74 09            [12] 1633 	mov	a,#___str_28
      0026EC C0 E0            [24] 1634 	push	acc
      0026EE 74 40            [12] 1635 	mov	a,#(___str_28 >> 8)
      0026F0 C0 E0            [24] 1636 	push	acc
      0026F2 74 80            [12] 1637 	mov	a,#0x80
      0026F4 C0 E0            [24] 1638 	push	acc
      0026F6 12 32 B9         [24] 1639 	lcall	_printf
      0026F9 15 81            [12] 1640 	dec	sp
      0026FB 15 81            [12] 1641 	dec	sp
      0026FD 15 81            [12] 1642 	dec	sp
                                   1643 ;	main.c:135: uint8_t addr = get_user_buffer_size();
      0026FF 12 22 1C         [24] 1644 	lcall	_get_user_buffer_size
                                   1645 ;	main.c:136: uint16_t data = phy_spi_read(addr);
      002702 12 2B 0E         [24] 1646 	lcall	_phy_spi_read
      002705 AE 82            [24] 1647 	mov	r6, dpl
      002707 AF 83            [24] 1648 	mov	r7, dph
                                   1649 ;	main.c:137: printf("PHY Read Data: 0x%04X\n\r", data);
      002709 C0 06            [24] 1650 	push	ar6
      00270B C0 07            [24] 1651 	push	ar7
      00270D 74 33            [12] 1652 	mov	a,#___str_29
      00270F C0 E0            [24] 1653 	push	acc
      002711 74 40            [12] 1654 	mov	a,#(___str_29 >> 8)
      002713 C0 E0            [24] 1655 	push	acc
      002715 74 80            [12] 1656 	mov	a,#0x80
      002717 C0 E0            [24] 1657 	push	acc
      002719 12 32 B9         [24] 1658 	lcall	_printf
      00271C E5 81            [12] 1659 	mov	a,sp
      00271E 24 FB            [12] 1660 	add	a,#0xfb
      002720 F5 81            [12] 1661 	mov	sp,a
                                   1662 ;	main.c:138: break;
      002722 02 22 B8         [24] 1663 	ljmp	00115$
                                   1664 ;	main.c:140: case '7': {
      002725                       1665 00109$:
                                   1666 ;	main.c:141: printf("Resetting ENC28J60...\n\r");
      002725 74 4B            [12] 1667 	mov	a,#___str_30
      002727 C0 E0            [24] 1668 	push	acc
      002729 74 40            [12] 1669 	mov	a,#(___str_30 >> 8)
      00272B C0 E0            [24] 1670 	push	acc
      00272D 74 80            [12] 1671 	mov	a,#0x80
      00272F C0 E0            [24] 1672 	push	acc
      002731 12 32 B9         [24] 1673 	lcall	_printf
      002734 15 81            [12] 1674 	dec	sp
      002736 15 81            [12] 1675 	dec	sp
      002738 15 81            [12] 1676 	dec	sp
                                   1677 ;	main.c:142: enc_reset();
      00273A 12 29 A4         [24] 1678 	lcall	_enc_reset
                                   1679 ;	main.c:143: break;
      00273D 02 22 B8         [24] 1680 	ljmp	00115$
                                   1681 ;	main.c:145: case '8': {
      002740                       1682 00110$:
                                   1683 ;	main.c:146: printf("Enter the ETH register address to read:\n\r");
      002740 74 63            [12] 1684 	mov	a,#___str_31
      002742 C0 E0            [24] 1685 	push	acc
      002744 74 40            [12] 1686 	mov	a,#(___str_31 >> 8)
      002746 C0 E0            [24] 1687 	push	acc
      002748 74 80            [12] 1688 	mov	a,#0x80
      00274A C0 E0            [24] 1689 	push	acc
      00274C 12 32 B9         [24] 1690 	lcall	_printf
      00274F 15 81            [12] 1691 	dec	sp
      002751 15 81            [12] 1692 	dec	sp
      002753 15 81            [12] 1693 	dec	sp
                                   1694 ;	main.c:147: uint8_t addr = get_user_buffer_size();
      002755 12 22 1C         [24] 1695 	lcall	_get_user_buffer_size
      002758 AE 82            [24] 1696 	mov	r6, dpl
                                   1697 ;	main.c:148: printf("Enter the bank (0 or 1):\n\r");
      00275A C0 06            [24] 1698 	push	ar6
      00275C 74 8D            [12] 1699 	mov	a,#___str_32
      00275E C0 E0            [24] 1700 	push	acc
      002760 74 40            [12] 1701 	mov	a,#(___str_32 >> 8)
      002762 C0 E0            [24] 1702 	push	acc
      002764 74 80            [12] 1703 	mov	a,#0x80
      002766 C0 E0            [24] 1704 	push	acc
      002768 12 32 B9         [24] 1705 	lcall	_printf
      00276B 15 81            [12] 1706 	dec	sp
      00276D 15 81            [12] 1707 	dec	sp
      00276F 15 81            [12] 1708 	dec	sp
                                   1709 ;	main.c:149: uint8_t bank = get_user_buffer_size();
      002771 12 22 1C         [24] 1710 	lcall	_get_user_buffer_size
      002774 AD 82            [24] 1711 	mov	r5, dpl
      002776 D0 06            [24] 1712 	pop	ar6
      002778 90 03 17         [24] 1713 	mov	dptr,#_eth_spi_read_PARM_2
      00277B ED               [12] 1714 	mov	a,r5
      00277C F0               [24] 1715 	movx	@dptr,a
                                   1716 ;	main.c:150: uint8_t data = eth_spi_read(addr, bank);
      00277D 8E 82            [24] 1717 	mov	dpl, r6
      00277F 12 29 AF         [24] 1718 	lcall	_eth_spi_read
      002782 AF 82            [24] 1719 	mov	r7, dpl
                                   1720 ;	main.c:151: printf("ETH Register Data: 0x%02X\n\r", data);
      002784 7E 00            [12] 1721 	mov	r6,#0x00
      002786 C0 07            [24] 1722 	push	ar7
      002788 C0 06            [24] 1723 	push	ar6
      00278A 74 A8            [12] 1724 	mov	a,#___str_33
      00278C C0 E0            [24] 1725 	push	acc
      00278E 74 40            [12] 1726 	mov	a,#(___str_33 >> 8)
      002790 C0 E0            [24] 1727 	push	acc
      002792 74 80            [12] 1728 	mov	a,#0x80
      002794 C0 E0            [24] 1729 	push	acc
      002796 12 32 B9         [24] 1730 	lcall	_printf
      002799 E5 81            [12] 1731 	mov	a,sp
      00279B 24 FB            [12] 1732 	add	a,#0xfb
      00279D F5 81            [12] 1733 	mov	sp,a
                                   1734 ;	main.c:152: break;
      00279F 02 22 B8         [24] 1735 	ljmp	00115$
                                   1736 ;	main.c:154: case '9': {
      0027A2                       1737 00111$:
                                   1738 ;	main.c:155: printf("\n\rChoose an action: \n\r");
      0027A2 74 37            [12] 1739 	mov	a,#___str_2
      0027A4 C0 E0            [24] 1740 	push	acc
      0027A6 74 3D            [12] 1741 	mov	a,#(___str_2 >> 8)
      0027A8 C0 E0            [24] 1742 	push	acc
      0027AA 74 80            [12] 1743 	mov	a,#0x80
      0027AC C0 E0            [24] 1744 	push	acc
      0027AE 12 32 B9         [24] 1745 	lcall	_printf
      0027B1 15 81            [12] 1746 	dec	sp
      0027B3 15 81            [12] 1747 	dec	sp
      0027B5 15 81            [12] 1748 	dec	sp
                                   1749 ;	main.c:156: printf("1 --> Control Write\n\r");
      0027B7 74 4E            [12] 1750 	mov	a,#___str_3
      0027B9 C0 E0            [24] 1751 	push	acc
      0027BB 74 3D            [12] 1752 	mov	a,#(___str_3 >> 8)
      0027BD C0 E0            [24] 1753 	push	acc
      0027BF 74 80            [12] 1754 	mov	a,#0x80
      0027C1 C0 E0            [24] 1755 	push	acc
      0027C3 12 32 B9         [24] 1756 	lcall	_printf
      0027C6 15 81            [12] 1757 	dec	sp
      0027C8 15 81            [12] 1758 	dec	sp
      0027CA 15 81            [12] 1759 	dec	sp
                                   1760 ;	main.c:157: printf("2 --> Buffer Write\n\r");
      0027CC 74 64            [12] 1761 	mov	a,#___str_4
      0027CE C0 E0            [24] 1762 	push	acc
      0027D0 74 3D            [12] 1763 	mov	a,#(___str_4 >> 8)
      0027D2 C0 E0            [24] 1764 	push	acc
      0027D4 74 80            [12] 1765 	mov	a,#0x80
      0027D6 C0 E0            [24] 1766 	push	acc
      0027D8 12 32 B9         [24] 1767 	lcall	_printf
      0027DB 15 81            [12] 1768 	dec	sp
      0027DD 15 81            [12] 1769 	dec	sp
      0027DF 15 81            [12] 1770 	dec	sp
                                   1771 ;	main.c:158: printf("3 --> Buffer Read\n\r");
      0027E1 74 79            [12] 1772 	mov	a,#___str_5
      0027E3 C0 E0            [24] 1773 	push	acc
      0027E5 74 3D            [12] 1774 	mov	a,#(___str_5 >> 8)
      0027E7 C0 E0            [24] 1775 	push	acc
      0027E9 74 80            [12] 1776 	mov	a,#0x80
      0027EB C0 E0            [24] 1777 	push	acc
      0027ED 12 32 B9         [24] 1778 	lcall	_printf
      0027F0 15 81            [12] 1779 	dec	sp
      0027F2 15 81            [12] 1780 	dec	sp
      0027F4 15 81            [12] 1781 	dec	sp
                                   1782 ;	main.c:159: printf("4 --> MAC Register Read\n\r");
      0027F6 74 8D            [12] 1783 	mov	a,#___str_6
      0027F8 C0 E0            [24] 1784 	push	acc
      0027FA 74 3D            [12] 1785 	mov	a,#(___str_6 >> 8)
      0027FC C0 E0            [24] 1786 	push	acc
      0027FE 74 80            [12] 1787 	mov	a,#0x80
      002800 C0 E0            [24] 1788 	push	acc
      002802 12 32 B9         [24] 1789 	lcall	_printf
      002805 15 81            [12] 1790 	dec	sp
      002807 15 81            [12] 1791 	dec	sp
      002809 15 81            [12] 1792 	dec	sp
                                   1793 ;	main.c:160: printf("5 --> PHY SPI Write\n\r");
      00280B 74 A7            [12] 1794 	mov	a,#___str_7
      00280D C0 E0            [24] 1795 	push	acc
      00280F 74 3D            [12] 1796 	mov	a,#(___str_7 >> 8)
      002811 C0 E0            [24] 1797 	push	acc
      002813 74 80            [12] 1798 	mov	a,#0x80
      002815 C0 E0            [24] 1799 	push	acc
      002817 12 32 B9         [24] 1800 	lcall	_printf
      00281A 15 81            [12] 1801 	dec	sp
      00281C 15 81            [12] 1802 	dec	sp
      00281E 15 81            [12] 1803 	dec	sp
                                   1804 ;	main.c:161: printf("6 --> PHY SPI Read\n\r");
      002820 74 BD            [12] 1805 	mov	a,#___str_8
      002822 C0 E0            [24] 1806 	push	acc
      002824 74 3D            [12] 1807 	mov	a,#(___str_8 >> 8)
      002826 C0 E0            [24] 1808 	push	acc
      002828 74 80            [12] 1809 	mov	a,#0x80
      00282A C0 E0            [24] 1810 	push	acc
      00282C 12 32 B9         [24] 1811 	lcall	_printf
      00282F 15 81            [12] 1812 	dec	sp
      002831 15 81            [12] 1813 	dec	sp
      002833 15 81            [12] 1814 	dec	sp
                                   1815 ;	main.c:162: printf("7 --> ENC Reset\n\r");
      002835 74 D2            [12] 1816 	mov	a,#___str_9
      002837 C0 E0            [24] 1817 	push	acc
      002839 74 3D            [12] 1818 	mov	a,#(___str_9 >> 8)
      00283B C0 E0            [24] 1819 	push	acc
      00283D 74 80            [12] 1820 	mov	a,#0x80
      00283F C0 E0            [24] 1821 	push	acc
      002841 12 32 B9         [24] 1822 	lcall	_printf
      002844 15 81            [12] 1823 	dec	sp
      002846 15 81            [12] 1824 	dec	sp
      002848 15 81            [12] 1825 	dec	sp
                                   1826 ;	main.c:163: printf("8 --> Read ETH Register\n\r");
      00284A 74 E4            [12] 1827 	mov	a,#___str_10
      00284C C0 E0            [24] 1828 	push	acc
      00284E 74 3D            [12] 1829 	mov	a,#(___str_10 >> 8)
      002850 C0 E0            [24] 1830 	push	acc
      002852 74 80            [12] 1831 	mov	a,#0x80
      002854 C0 E0            [24] 1832 	push	acc
      002856 12 32 B9         [24] 1833 	lcall	_printf
      002859 15 81            [12] 1834 	dec	sp
      00285B 15 81            [12] 1835 	dec	sp
      00285D 15 81            [12] 1836 	dec	sp
                                   1837 ;	main.c:164: break;
      00285F 02 22 B8         [24] 1838 	ljmp	00115$
                                   1839 ;	main.c:166: default: {
      002862                       1840 00112$:
                                   1841 ;	main.c:167: printf("Invalid option. Please select a valid action.\n\r");
      002862 74 C4            [12] 1842 	mov	a,#___str_34
      002864 C0 E0            [24] 1843 	push	acc
      002866 74 40            [12] 1844 	mov	a,#(___str_34 >> 8)
      002868 C0 E0            [24] 1845 	push	acc
      00286A 74 80            [12] 1846 	mov	a,#0x80
      00286C C0 E0            [24] 1847 	push	acc
      00286E 12 32 B9         [24] 1848 	lcall	_printf
      002871 15 81            [12] 1849 	dec	sp
      002873 15 81            [12] 1850 	dec	sp
      002875 15 81            [12] 1851 	dec	sp
                                   1852 ;	main.c:170: }
                                   1853 ;	main.c:172: }
      002877 02 22 B8         [24] 1854 	ljmp	00115$
                                   1855 	.area CSEG    (CODE)
                                   1856 	.area CONST   (CODE)
                                   1857 	.area CONST   (CODE)
      003D1B                       1858 ___str_0:
      003D1B 0A                    1859 	.db 0x0a
      003D1C 0D                    1860 	.db 0x0d
      003D1D 00                    1861 	.db 0x00
                                   1862 	.area CSEG    (CODE)
                                   1863 	.area CONST   (CODE)
      003D1E                       1864 ___str_1:
      003D1E 53 50 49 20 4F 70 65  1865 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      003D34 0A                    1866 	.db 0x0a
      003D35 0D                    1867 	.db 0x0d
      003D36 00                    1868 	.db 0x00
                                   1869 	.area CSEG    (CODE)
                                   1870 	.area CONST   (CODE)
      003D37                       1871 ___str_2:
      003D37 0A                    1872 	.db 0x0a
      003D38 0D                    1873 	.db 0x0d
      003D39 43 68 6F 6F 73 65 20  1874 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      003D4B 0A                    1875 	.db 0x0a
      003D4C 0D                    1876 	.db 0x0d
      003D4D 00                    1877 	.db 0x00
                                   1878 	.area CSEG    (CODE)
                                   1879 	.area CONST   (CODE)
      003D4E                       1880 ___str_3:
      003D4E 31 20 2D 2D 3E 20 43  1881 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      003D61 0A                    1882 	.db 0x0a
      003D62 0D                    1883 	.db 0x0d
      003D63 00                    1884 	.db 0x00
                                   1885 	.area CSEG    (CODE)
                                   1886 	.area CONST   (CODE)
      003D64                       1887 ___str_4:
      003D64 32 20 2D 2D 3E 20 42  1888 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      003D76 0A                    1889 	.db 0x0a
      003D77 0D                    1890 	.db 0x0d
      003D78 00                    1891 	.db 0x00
                                   1892 	.area CSEG    (CODE)
                                   1893 	.area CONST   (CODE)
      003D79                       1894 ___str_5:
      003D79 33 20 2D 2D 3E 20 42  1895 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      003D8A 0A                    1896 	.db 0x0a
      003D8B 0D                    1897 	.db 0x0d
      003D8C 00                    1898 	.db 0x00
                                   1899 	.area CSEG    (CODE)
                                   1900 	.area CONST   (CODE)
      003D8D                       1901 ___str_6:
      003D8D 34 20 2D 2D 3E 20 4D  1902 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      003DA4 0A                    1903 	.db 0x0a
      003DA5 0D                    1904 	.db 0x0d
      003DA6 00                    1905 	.db 0x00
                                   1906 	.area CSEG    (CODE)
                                   1907 	.area CONST   (CODE)
      003DA7                       1908 ___str_7:
      003DA7 35 20 2D 2D 3E 20 50  1909 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      003DBA 0A                    1910 	.db 0x0a
      003DBB 0D                    1911 	.db 0x0d
      003DBC 00                    1912 	.db 0x00
                                   1913 	.area CSEG    (CODE)
                                   1914 	.area CONST   (CODE)
      003DBD                       1915 ___str_8:
      003DBD 36 20 2D 2D 3E 20 50  1916 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      003DCF 0A                    1917 	.db 0x0a
      003DD0 0D                    1918 	.db 0x0d
      003DD1 00                    1919 	.db 0x00
                                   1920 	.area CSEG    (CODE)
                                   1921 	.area CONST   (CODE)
      003DD2                       1922 ___str_9:
      003DD2 37 20 2D 2D 3E 20 45  1923 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      003DE1 0A                    1924 	.db 0x0a
      003DE2 0D                    1925 	.db 0x0d
      003DE3 00                    1926 	.db 0x00
                                   1927 	.area CSEG    (CODE)
                                   1928 	.area CONST   (CODE)
      003DE4                       1929 ___str_10:
      003DE4 38 20 2D 2D 3E 20 52  1930 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      003DFB 0A                    1931 	.db 0x0a
      003DFC 0D                    1932 	.db 0x0d
      003DFD 00                    1933 	.db 0x00
                                   1934 	.area CSEG    (CODE)
                                   1935 	.area CONST   (CODE)
      003DFE                       1936 ___str_11:
      003DFE 39 20 2D 2D 3E 20 44  1937 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      003E10 0A                    1938 	.db 0x0a
      003E11 0D                    1939 	.db 0x0d
      003E12 00                    1940 	.db 0x00
                                   1941 	.area CSEG    (CODE)
                                   1942 	.area CONST   (CODE)
      003E13                       1943 ___str_12:
      003E13 45 6E 74 65 72 20 74  1944 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      003E35 0A                    1945 	.db 0x0a
      003E36 0D                    1946 	.db 0x0d
      003E37 00                    1947 	.db 0x00
                                   1948 	.area CSEG    (CODE)
                                   1949 	.area CONST   (CODE)
      003E38                       1950 ___str_13:
      003E38 45 6E 74 65 72 20 74  1951 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      003E62 0A                    1952 	.db 0x0a
      003E63 0D                    1953 	.db 0x0d
      003E64 00                    1954 	.db 0x00
                                   1955 	.area CSEG    (CODE)
                                   1956 	.area CONST   (CODE)
      003E65                       1957 ___str_14:
      003E65 45 6E 74 65 72 20 74  1958 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      003E86 0A                    1959 	.db 0x0a
      003E87 0D                    1960 	.db 0x0d
      003E88 00                    1961 	.db 0x00
                                   1962 	.area CSEG    (CODE)
                                   1963 	.area CONST   (CODE)
      003E89                       1964 ___str_15:
      003E89 45 6E 74 65 72 20 74  1965 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      003EAC 0A                    1966 	.db 0x0a
      003EAD 0D                    1967 	.db 0x0d
      003EAE 00                    1968 	.db 0x00
                                   1969 	.area CSEG    (CODE)
                                   1970 	.area CONST   (CODE)
      003EAF                       1971 ___str_16:
      003EAF 45 6E 74 65 72 20 74  1972 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      003ECA 0A                    1973 	.db 0x0a
      003ECB 0D                    1974 	.db 0x0d
      003ECC 00                    1975 	.db 0x00
                                   1976 	.area CSEG    (CODE)
                                   1977 	.area CONST   (CODE)
      003ECD                       1978 ___str_17:
      003ECD 45 6E 74 65 72 20 25  1979 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      003EED 0A                    1980 	.db 0x0a
      003EEE 0D                    1981 	.db 0x0d
      003EEF 00                    1982 	.db 0x00
                                   1983 	.area CSEG    (CODE)
                                   1984 	.area CONST   (CODE)
      003EF0                       1985 ___str_18:
      003EF0 42 79 74 65 20 25 64  1986 	.ascii "Byte %d: "
             3A 20
      003EF9 00                    1987 	.db 0x00
                                   1988 	.area CSEG    (CODE)
                                   1989 	.area CONST   (CODE)
      003EFA                       1990 ___str_19:
      003EFA 45 6E 74 65 72 20 74  1991 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      003F1C 0A                    1992 	.db 0x0a
      003F1D 0D                    1993 	.db 0x0d
      003F1E 00                    1994 	.db 0x00
                                   1995 	.area CSEG    (CODE)
                                   1996 	.area CONST   (CODE)
      003F1F                       1997 ___str_20:
      003F1F 52 65 61 64 20 44 61  1998 	.ascii "Read Data:"
             74 61 3A
      003F29 0A                    1999 	.db 0x0a
      003F2A 0D                    2000 	.db 0x0d
      003F2B 00                    2001 	.db 0x00
                                   2002 	.area CSEG    (CODE)
                                   2003 	.area CONST   (CODE)
      003F2C                       2004 ___str_21:
      003F2C 42 79 74 65 20 25 64  2005 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      003F3B 0A                    2006 	.db 0x0a
      003F3C 0D                    2007 	.db 0x0d
      003F3D 00                    2008 	.db 0x00
                                   2009 	.area CSEG    (CODE)
                                   2010 	.area CONST   (CODE)
      003F3E                       2011 ___str_22:
      003F3E 45 6E 74 65 72 20 74  2012 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      003F64 0A                    2013 	.db 0x0a
      003F65 0D                    2014 	.db 0x0d
      003F66 00                    2015 	.db 0x00
                                   2016 	.area CSEG    (CODE)
                                   2017 	.area CONST   (CODE)
      003F67                       2018 ___str_23:
      003F67 45 6E 74 65 72 20 74  2019 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      003F8D 0A                    2020 	.db 0x0a
      003F8E 0D                    2021 	.db 0x0d
      003F8F 00                    2022 	.db 0x00
                                   2023 	.area CSEG    (CODE)
                                   2024 	.area CONST   (CODE)
      003F90                       2025 ___str_24:
      003F90 4D 41 43 20 52 65 67  2026 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      003FA9 0A                    2027 	.db 0x0a
      003FAA 0D                    2028 	.db 0x0d
      003FAB 00                    2029 	.db 0x00
                                   2030 	.area CSEG    (CODE)
                                   2031 	.area CONST   (CODE)
      003FAC                       2032 ___str_25:
      003FAC 45 6E 74 65 72 20 74  2033 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      003FCB 0A                    2034 	.db 0x0a
      003FCC 0D                    2035 	.db 0x0d
      003FCD 00                    2036 	.db 0x00
                                   2037 	.area CSEG    (CODE)
                                   2038 	.area CONST   (CODE)
      003FCE                       2039 ___str_26:
      003FCE 45 6E 74 65 72 20 74  2040 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      003FED 0A                    2041 	.db 0x0a
      003FEE 0D                    2042 	.db 0x0d
      003FEF 00                    2043 	.db 0x00
                                   2044 	.area CSEG    (CODE)
                                   2045 	.area CONST   (CODE)
      003FF0                       2046 ___str_27:
      003FF0 50 48 59 20 57 72 69  2047 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      004006 0A                    2048 	.db 0x0a
      004007 0D                    2049 	.db 0x0d
      004008 00                    2050 	.db 0x00
                                   2051 	.area CSEG    (CODE)
                                   2052 	.area CONST   (CODE)
      004009                       2053 ___str_28:
      004009 45 6E 74 65 72 20 74  2054 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      004030 0A                    2055 	.db 0x0a
      004031 0D                    2056 	.db 0x0d
      004032 00                    2057 	.db 0x00
                                   2058 	.area CSEG    (CODE)
                                   2059 	.area CONST   (CODE)
      004033                       2060 ___str_29:
      004033 50 48 59 20 52 65 61  2061 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      004048 0A                    2062 	.db 0x0a
      004049 0D                    2063 	.db 0x0d
      00404A 00                    2064 	.db 0x00
                                   2065 	.area CSEG    (CODE)
                                   2066 	.area CONST   (CODE)
      00404B                       2067 ___str_30:
      00404B 52 65 73 65 74 74 69  2068 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      004060 0A                    2069 	.db 0x0a
      004061 0D                    2070 	.db 0x0d
      004062 00                    2071 	.db 0x00
                                   2072 	.area CSEG    (CODE)
                                   2073 	.area CONST   (CODE)
      004063                       2074 ___str_31:
      004063 45 6E 74 65 72 20 74  2075 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      00408A 0A                    2076 	.db 0x0a
      00408B 0D                    2077 	.db 0x0d
      00408C 00                    2078 	.db 0x00
                                   2079 	.area CSEG    (CODE)
                                   2080 	.area CONST   (CODE)
      00408D                       2081 ___str_32:
      00408D 45 6E 74 65 72 20 74  2082 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      0040A5 0A                    2083 	.db 0x0a
      0040A6 0D                    2084 	.db 0x0d
      0040A7 00                    2085 	.db 0x00
                                   2086 	.area CSEG    (CODE)
                                   2087 	.area CONST   (CODE)
      0040A8                       2088 ___str_33:
      0040A8 45 54 48 20 52 65 67  2089 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      0040C1 0A                    2090 	.db 0x0a
      0040C2 0D                    2091 	.db 0x0d
      0040C3 00                    2092 	.db 0x00
                                   2093 	.area CSEG    (CODE)
                                   2094 	.area CONST   (CODE)
      0040C4                       2095 ___str_34:
      0040C4 49 6E 76 61 6C 69 64  2096 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      0040F1 0A                    2097 	.db 0x0a
      0040F2 0D                    2098 	.db 0x0d
      0040F3 00                    2099 	.db 0x00
                                   2100 	.area CSEG    (CODE)
                                   2101 	.area XINIT   (CODE)
                                   2102 	.area CABS    (ABS,CODE)

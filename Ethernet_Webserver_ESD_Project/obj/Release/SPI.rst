                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module SPI
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf
                                     12 	.globl _TF1
                                     13 	.globl _TR1
                                     14 	.globl _TF0
                                     15 	.globl _TR0
                                     16 	.globl _IE1
                                     17 	.globl _IT1
                                     18 	.globl _IE0
                                     19 	.globl _IT0
                                     20 	.globl _SM0
                                     21 	.globl _SM1
                                     22 	.globl _SM2
                                     23 	.globl _REN
                                     24 	.globl _TB8
                                     25 	.globl _RB8
                                     26 	.globl _TI
                                     27 	.globl _RI
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD0
                                     43 	.globl _TXD
                                     44 	.globl _RXD0
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _P0_7
                                     71 	.globl _P0_6
                                     72 	.globl _P0_5
                                     73 	.globl _P0_4
                                     74 	.globl _P0_3
                                     75 	.globl _P0_2
                                     76 	.globl _P0_1
                                     77 	.globl _P0_0
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _BREG_F7
                                     90 	.globl _BREG_F6
                                     91 	.globl _BREG_F5
                                     92 	.globl _BREG_F4
                                     93 	.globl _BREG_F3
                                     94 	.globl _BREG_F2
                                     95 	.globl _BREG_F1
                                     96 	.globl _BREG_F0
                                     97 	.globl _P5_7
                                     98 	.globl _P5_6
                                     99 	.globl _P5_5
                                    100 	.globl _P5_4
                                    101 	.globl _P5_3
                                    102 	.globl _P5_2
                                    103 	.globl _P5_1
                                    104 	.globl _P5_0
                                    105 	.globl _P4_7
                                    106 	.globl _P4_6
                                    107 	.globl _P4_5
                                    108 	.globl _P4_4
                                    109 	.globl _P4_3
                                    110 	.globl _P4_2
                                    111 	.globl _P4_1
                                    112 	.globl _P4_0
                                    113 	.globl _PX0L
                                    114 	.globl _PT0L
                                    115 	.globl _PX1L
                                    116 	.globl _PT1L
                                    117 	.globl _PSL
                                    118 	.globl _PT2L
                                    119 	.globl _PPCL
                                    120 	.globl _EC
                                    121 	.globl _CCF0
                                    122 	.globl _CCF1
                                    123 	.globl _CCF2
                                    124 	.globl _CCF3
                                    125 	.globl _CCF4
                                    126 	.globl _CR
                                    127 	.globl _CF
                                    128 	.globl _TF2
                                    129 	.globl _EXF2
                                    130 	.globl _RCLK
                                    131 	.globl _TCLK
                                    132 	.globl _EXEN2
                                    133 	.globl _TR2
                                    134 	.globl _C_T2
                                    135 	.globl _CP_RL2
                                    136 	.globl _T2CON_7
                                    137 	.globl _T2CON_6
                                    138 	.globl _T2CON_5
                                    139 	.globl _T2CON_4
                                    140 	.globl _T2CON_3
                                    141 	.globl _T2CON_2
                                    142 	.globl _T2CON_1
                                    143 	.globl _T2CON_0
                                    144 	.globl _PT2
                                    145 	.globl _ET2
                                    146 	.globl _TMOD
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TCON
                                    152 	.globl _SP
                                    153 	.globl _SCON
                                    154 	.globl _SBUF0
                                    155 	.globl _SBUF
                                    156 	.globl _PSW
                                    157 	.globl _PCON
                                    158 	.globl _P3
                                    159 	.globl _P2
                                    160 	.globl _P1
                                    161 	.globl _P0
                                    162 	.globl _IP
                                    163 	.globl _IE
                                    164 	.globl _DP0L
                                    165 	.globl _DPL
                                    166 	.globl _DP0H
                                    167 	.globl _DPH
                                    168 	.globl _B
                                    169 	.globl _ACC
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 	.globl _spi_buffer_write_PARM_3
                                    222 	.globl _spi_buffer_write_PARM_2
                                    223 	.globl _spi_buffer_read_PARM_3
                                    224 	.globl _spi_buffer_read_PARM_2
                                    225 	.globl _buffer_init_PARM_2
                                    226 	.globl _mac_spi_read_PARM_2
                                    227 	.globl _phy_spi_write_PARM_2
                                    228 	.globl _eth_spi_read_PARM_2
                                    229 	.globl _spi_control_write_PARM_3
                                    230 	.globl _spi_control_write_PARM_2
                                    231 	.globl _SPI_ReadByte
                                    232 	.globl _spi_set_autoinc
                                    233 	.globl _select_reg_bank
                                    234 	.globl _spi_control_write
                                    235 	.globl _configure_SPI
                                    236 	.globl _SPI_send
                                    237 	.globl _enc_reset
                                    238 	.globl _eth_spi_read
                                    239 	.globl _phy_spi_write
                                    240 	.globl _mac_spi_read
                                    241 	.globl _phy_spi_read
                                    242 	.globl _busy_wait
                                    243 	.globl _buffer_init
                                    244 	.globl _spi_buffer_read
                                    245 	.globl _spi_buffer_write
                                    246 ;--------------------------------------------------------
                                    247 ; special function registers
                                    248 ;--------------------------------------------------------
                                    249 	.area RSEG    (ABS,DATA)
      000000                        250 	.org 0x0000
                           0000C8   251 _T2CON	=	0x00c8
                           0000CA   252 _RCAP2L	=	0x00ca
                           0000CB   253 _RCAP2H	=	0x00cb
                           0000CC   254 _TL2	=	0x00cc
                           0000CD   255 _TH2	=	0x00cd
                           00008E   256 _AUXR	=	0x008e
                           0000A2   257 _AUXR1	=	0x00a2
                           000097   258 _CKRL	=	0x0097
                           00008F   259 _CKCON0	=	0x008f
                           0000AF   260 _CKCON1	=	0x00af
                           0000FA   261 _CCAP0H	=	0x00fa
                           0000FB   262 _CCAP1H	=	0x00fb
                           0000FC   263 _CCAP2H	=	0x00fc
                           0000FD   264 _CCAP3H	=	0x00fd
                           0000FE   265 _CCAP4H	=	0x00fe
                           0000EA   266 _CCAP0L	=	0x00ea
                           0000EB   267 _CCAP1L	=	0x00eb
                           0000EC   268 _CCAP2L	=	0x00ec
                           0000ED   269 _CCAP3L	=	0x00ed
                           0000EE   270 _CCAP4L	=	0x00ee
                           0000DA   271 _CCAPM0	=	0x00da
                           0000DB   272 _CCAPM1	=	0x00db
                           0000DC   273 _CCAPM2	=	0x00dc
                           0000DD   274 _CCAPM3	=	0x00dd
                           0000DE   275 _CCAPM4	=	0x00de
                           0000D8   276 _CCON	=	0x00d8
                           0000F9   277 _CH	=	0x00f9
                           0000E9   278 _CL	=	0x00e9
                           0000D9   279 _CMOD	=	0x00d9
                           0000A8   280 _IEN0	=	0x00a8
                           0000B1   281 _IEN1	=	0x00b1
                           0000B8   282 _IPL0	=	0x00b8
                           0000B7   283 _IPH0	=	0x00b7
                           0000B2   284 _IPL1	=	0x00b2
                           0000B3   285 _IPH1	=	0x00b3
                           0000C0   286 _P4	=	0x00c0
                           0000E8   287 _P5	=	0x00e8
                           0000A6   288 _WDTRST	=	0x00a6
                           0000A7   289 _WDTPRG	=	0x00a7
                           0000A9   290 _SADDR	=	0x00a9
                           0000B9   291 _SADEN	=	0x00b9
                           0000C3   292 _SPCON	=	0x00c3
                           0000C4   293 _SPSTA	=	0x00c4
                           0000C5   294 _SPDAT	=	0x00c5
                           0000C9   295 _T2MOD	=	0x00c9
                           00009B   296 _BDRCON	=	0x009b
                           00009A   297 _BRL	=	0x009a
                           00009C   298 _KBLS	=	0x009c
                           00009D   299 _KBE	=	0x009d
                           00009E   300 _KBF	=	0x009e
                           0000D2   301 _EECON	=	0x00d2
                           0000E0   302 _ACC	=	0x00e0
                           0000F0   303 _B	=	0x00f0
                           000083   304 _DPH	=	0x0083
                           000083   305 _DP0H	=	0x0083
                           000082   306 _DPL	=	0x0082
                           000082   307 _DP0L	=	0x0082
                           0000A8   308 _IE	=	0x00a8
                           0000B8   309 _IP	=	0x00b8
                           000080   310 _P0	=	0x0080
                           000090   311 _P1	=	0x0090
                           0000A0   312 _P2	=	0x00a0
                           0000B0   313 _P3	=	0x00b0
                           000087   314 _PCON	=	0x0087
                           0000D0   315 _PSW	=	0x00d0
                           000099   316 _SBUF	=	0x0099
                           000099   317 _SBUF0	=	0x0099
                           000098   318 _SCON	=	0x0098
                           000081   319 _SP	=	0x0081
                           000088   320 _TCON	=	0x0088
                           00008C   321 _TH0	=	0x008c
                           00008D   322 _TH1	=	0x008d
                           00008A   323 _TL0	=	0x008a
                           00008B   324 _TL1	=	0x008b
                           000089   325 _TMOD	=	0x0089
                                    326 ;--------------------------------------------------------
                                    327 ; special function bits
                                    328 ;--------------------------------------------------------
                                    329 	.area RSEG    (ABS,DATA)
      000000                        330 	.org 0x0000
                           0000AD   331 _ET2	=	0x00ad
                           0000BD   332 _PT2	=	0x00bd
                           0000C8   333 _T2CON_0	=	0x00c8
                           0000C9   334 _T2CON_1	=	0x00c9
                           0000CA   335 _T2CON_2	=	0x00ca
                           0000CB   336 _T2CON_3	=	0x00cb
                           0000CC   337 _T2CON_4	=	0x00cc
                           0000CD   338 _T2CON_5	=	0x00cd
                           0000CE   339 _T2CON_6	=	0x00ce
                           0000CF   340 _T2CON_7	=	0x00cf
                           0000C8   341 _CP_RL2	=	0x00c8
                           0000C9   342 _C_T2	=	0x00c9
                           0000CA   343 _TR2	=	0x00ca
                           0000CB   344 _EXEN2	=	0x00cb
                           0000CC   345 _TCLK	=	0x00cc
                           0000CD   346 _RCLK	=	0x00cd
                           0000CE   347 _EXF2	=	0x00ce
                           0000CF   348 _TF2	=	0x00cf
                           0000DF   349 _CF	=	0x00df
                           0000DE   350 _CR	=	0x00de
                           0000DC   351 _CCF4	=	0x00dc
                           0000DB   352 _CCF3	=	0x00db
                           0000DA   353 _CCF2	=	0x00da
                           0000D9   354 _CCF1	=	0x00d9
                           0000D8   355 _CCF0	=	0x00d8
                           0000AE   356 _EC	=	0x00ae
                           0000BE   357 _PPCL	=	0x00be
                           0000BD   358 _PT2L	=	0x00bd
                           0000BC   359 _PSL	=	0x00bc
                           0000BB   360 _PT1L	=	0x00bb
                           0000BA   361 _PX1L	=	0x00ba
                           0000B9   362 _PT0L	=	0x00b9
                           0000B8   363 _PX0L	=	0x00b8
                           0000C0   364 _P4_0	=	0x00c0
                           0000C1   365 _P4_1	=	0x00c1
                           0000C2   366 _P4_2	=	0x00c2
                           0000C3   367 _P4_3	=	0x00c3
                           0000C4   368 _P4_4	=	0x00c4
                           0000C5   369 _P4_5	=	0x00c5
                           0000C6   370 _P4_6	=	0x00c6
                           0000C7   371 _P4_7	=	0x00c7
                           0000E8   372 _P5_0	=	0x00e8
                           0000E9   373 _P5_1	=	0x00e9
                           0000EA   374 _P5_2	=	0x00ea
                           0000EB   375 _P5_3	=	0x00eb
                           0000EC   376 _P5_4	=	0x00ec
                           0000ED   377 _P5_5	=	0x00ed
                           0000EE   378 _P5_6	=	0x00ee
                           0000EF   379 _P5_7	=	0x00ef
                           0000F0   380 _BREG_F0	=	0x00f0
                           0000F1   381 _BREG_F1	=	0x00f1
                           0000F2   382 _BREG_F2	=	0x00f2
                           0000F3   383 _BREG_F3	=	0x00f3
                           0000F4   384 _BREG_F4	=	0x00f4
                           0000F5   385 _BREG_F5	=	0x00f5
                           0000F6   386 _BREG_F6	=	0x00f6
                           0000F7   387 _BREG_F7	=	0x00f7
                           0000A8   388 _EX0	=	0x00a8
                           0000A9   389 _ET0	=	0x00a9
                           0000AA   390 _EX1	=	0x00aa
                           0000AB   391 _ET1	=	0x00ab
                           0000AC   392 _ES	=	0x00ac
                           0000AF   393 _EA	=	0x00af
                           0000B8   394 _PX0	=	0x00b8
                           0000B9   395 _PT0	=	0x00b9
                           0000BA   396 _PX1	=	0x00ba
                           0000BB   397 _PT1	=	0x00bb
                           0000BC   398 _PS	=	0x00bc
                           000080   399 _P0_0	=	0x0080
                           000081   400 _P0_1	=	0x0081
                           000082   401 _P0_2	=	0x0082
                           000083   402 _P0_3	=	0x0083
                           000084   403 _P0_4	=	0x0084
                           000085   404 _P0_5	=	0x0085
                           000086   405 _P0_6	=	0x0086
                           000087   406 _P0_7	=	0x0087
                           000090   407 _P1_0	=	0x0090
                           000091   408 _P1_1	=	0x0091
                           000092   409 _P1_2	=	0x0092
                           000093   410 _P1_3	=	0x0093
                           000094   411 _P1_4	=	0x0094
                           000095   412 _P1_5	=	0x0095
                           000096   413 _P1_6	=	0x0096
                           000097   414 _P1_7	=	0x0097
                           0000A0   415 _P2_0	=	0x00a0
                           0000A1   416 _P2_1	=	0x00a1
                           0000A2   417 _P2_2	=	0x00a2
                           0000A3   418 _P2_3	=	0x00a3
                           0000A4   419 _P2_4	=	0x00a4
                           0000A5   420 _P2_5	=	0x00a5
                           0000A6   421 _P2_6	=	0x00a6
                           0000A7   422 _P2_7	=	0x00a7
                           0000B0   423 _P3_0	=	0x00b0
                           0000B1   424 _P3_1	=	0x00b1
                           0000B2   425 _P3_2	=	0x00b2
                           0000B3   426 _P3_3	=	0x00b3
                           0000B4   427 _P3_4	=	0x00b4
                           0000B5   428 _P3_5	=	0x00b5
                           0000B6   429 _P3_6	=	0x00b6
                           0000B7   430 _P3_7	=	0x00b7
                           0000B0   431 _RXD	=	0x00b0
                           0000B0   432 _RXD0	=	0x00b0
                           0000B1   433 _TXD	=	0x00b1
                           0000B1   434 _TXD0	=	0x00b1
                           0000B2   435 _INT0	=	0x00b2
                           0000B3   436 _INT1	=	0x00b3
                           0000B4   437 _T0	=	0x00b4
                           0000B5   438 _T1	=	0x00b5
                           0000B6   439 _WR	=	0x00b6
                           0000B7   440 _RD	=	0x00b7
                           0000D0   441 _P	=	0x00d0
                           0000D1   442 _F1	=	0x00d1
                           0000D2   443 _OV	=	0x00d2
                           0000D3   444 _RS0	=	0x00d3
                           0000D4   445 _RS1	=	0x00d4
                           0000D5   446 _F0	=	0x00d5
                           0000D6   447 _AC	=	0x00d6
                           0000D7   448 _CY	=	0x00d7
                           000098   449 _RI	=	0x0098
                           000099   450 _TI	=	0x0099
                           00009A   451 _RB8	=	0x009a
                           00009B   452 _TB8	=	0x009b
                           00009C   453 _REN	=	0x009c
                           00009D   454 _SM2	=	0x009d
                           00009E   455 _SM1	=	0x009e
                           00009F   456 _SM0	=	0x009f
                           000088   457 _IT0	=	0x0088
                           000089   458 _IE0	=	0x0089
                           00008A   459 _IT1	=	0x008a
                           00008B   460 _IE1	=	0x008b
                           00008C   461 _TR0	=	0x008c
                           00008D   462 _TF0	=	0x008d
                           00008E   463 _TR1	=	0x008e
                           00008F   464 _TF1	=	0x008f
                                    465 ;--------------------------------------------------------
                                    466 ; overlayable register banks
                                    467 ;--------------------------------------------------------
                                    468 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        469 	.ds 8
                                    470 ;--------------------------------------------------------
                                    471 ; internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area DSEG    (DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; overlayable items in internal ram
                                    476 ;--------------------------------------------------------
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area IABS    (ABS,DATA)
                                    485 	.area IABS    (ABS,DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; bit data
                                    488 ;--------------------------------------------------------
                                    489 	.area BSEG    (BIT)
                                    490 ;--------------------------------------------------------
                                    491 ; paged external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area PSEG    (PAG,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; uninitialized external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XSEG    (XDATA)
      000381                        498 _SPI_ReadByte_received_data_10000_113:
      000381                        499 	.ds 1
      000382                        500 _select_reg_bank_bank_10000_117:
      000382                        501 	.ds 1
      000383                        502 _select_reg_bank_data_10001_119:
      000383                        503 	.ds 1
      000384                        504 _spi_control_write_PARM_2:
      000384                        505 	.ds 1
      000385                        506 _spi_control_write_PARM_3:
      000385                        507 	.ds 1
      000386                        508 _spi_control_write_reg_bank_10000_122:
      000386                        509 	.ds 1
      000387                        510 _SPI_send_data_10000_126:
      000387                        511 	.ds 1
      000388                        512 _eth_spi_read_PARM_2:
      000388                        513 	.ds 1
      000389                        514 _eth_spi_read_addr_10000_131:
      000389                        515 	.ds 1
      00038A                        516 _phy_spi_write_PARM_2:
      00038A                        517 	.ds 2
      00038C                        518 _phy_spi_write_addr_10000_135:
      00038C                        519 	.ds 1
      00038D                        520 _mac_spi_read_PARM_2:
      00038D                        521 	.ds 1
      00038E                        522 _mac_spi_read_addr_10000_137:
      00038E                        523 	.ds 1
      00038F                        524 _phy_spi_read_addr_10000_141:
      00038F                        525 	.ds 1
      000390                        526 _busy_wait_data_10000_145:
      000390                        527 	.ds 1
      000391                        528 _buffer_init_PARM_2:
      000391                        529 	.ds 2
      000393                        530 _buffer_init_start_address_10000_147:
      000393                        531 	.ds 2
      000395                        532 _spi_buffer_read_PARM_2:
      000395                        533 	.ds 2
      000397                        534 _spi_buffer_read_PARM_3:
      000397                        535 	.ds 3
      00039A                        536 _spi_buffer_read_num_bytes_10000_151:
      00039A                        537 	.ds 2
      00039C                        538 _spi_buffer_write_PARM_2:
      00039C                        539 	.ds 2
      00039E                        540 _spi_buffer_write_PARM_3:
      00039E                        541 	.ds 3
      0003A1                        542 _spi_buffer_write_num_bytes_10000_161:
      0003A1                        543 	.ds 2
                                    544 ;--------------------------------------------------------
                                    545 ; absolute external ram data
                                    546 ;--------------------------------------------------------
                                    547 	.area XABS    (ABS,XDATA)
                                    548 ;--------------------------------------------------------
                                    549 ; initialized external ram data
                                    550 ;--------------------------------------------------------
                                    551 	.area XISEG   (XDATA)
                                    552 	.area HOME    (CODE)
                                    553 	.area GSINIT0 (CODE)
                                    554 	.area GSINIT1 (CODE)
                                    555 	.area GSINIT2 (CODE)
                                    556 	.area GSINIT3 (CODE)
                                    557 	.area GSINIT4 (CODE)
                                    558 	.area GSINIT5 (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.area GSFINAL (CODE)
                                    561 	.area CSEG    (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; global & static initialisations
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 	.area GSFINAL (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 ;--------------------------------------------------------
                                    570 ; Home
                                    571 ;--------------------------------------------------------
                                    572 	.area HOME    (CODE)
                                    573 	.area HOME    (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; code
                                    576 ;--------------------------------------------------------
                                    577 	.area CSEG    (CODE)
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'SPI_ReadByte'
                                    580 ;------------------------------------------------------------
                                    581 ;received_data             Allocated with name '_SPI_ReadByte_received_data_10000_113'
                                    582 ;------------------------------------------------------------
                                    583 ;	SPI.c:4: uint8_t SPI_ReadByte(void)
                                    584 ;	-----------------------------------------
                                    585 ;	 function SPI_ReadByte
                                    586 ;	-----------------------------------------
      00387D                        587 _SPI_ReadByte:
                           000007   588 	ar7 = 0x07
                           000006   589 	ar6 = 0x06
                           000005   590 	ar5 = 0x05
                           000004   591 	ar4 = 0x04
                           000003   592 	ar3 = 0x03
                           000002   593 	ar2 = 0x02
                           000001   594 	ar1 = 0x01
                           000000   595 	ar0 = 0x00
                                    596 ;	SPI.c:9: SPDAT = 0xFF;
      00387D 75 C5 FF         [24]  597 	mov	_SPDAT,#0xff
                                    598 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      003880                        599 00101$:
      003880 E5 C4            [12]  600 	mov	a,_SPSTA
      003882 30 E7 FB         [24]  601 	jnb	acc.7,00101$
                                    602 ;	SPI.c:17: received_data = SPDAT;
      003885 90 03 81         [24]  603 	mov	dptr,#_SPI_ReadByte_received_data_10000_113
      003888 E5 C5            [12]  604 	mov	a,_SPDAT
      00388A F0               [24]  605 	movx	@dptr,a
                                    606 ;	SPI.c:19: return received_data;
      00388B E0               [24]  607 	movx	a,@dptr
                                    608 ;	SPI.c:20: }
      00388C F5 82            [12]  609 	mov	dpl,a
      00388E 22               [24]  610 	ret
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    613 ;------------------------------------------------------------
                                    614 ;	SPI.c:22: void spi_set_autoinc(void)
                                    615 ;	-----------------------------------------
                                    616 ;	 function spi_set_autoinc
                                    617 ;	-----------------------------------------
      00388F                        618 _spi_set_autoinc:
                                    619 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    620 ;	assignBit
      00388F C2 91            [12]  621 	clr	_P1_1
                                    622 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      003891 75 82 5E         [24]  623 	mov	dpl, #0x5e
      003894 12 39 90         [24]  624 	lcall	_SPI_send
                                    625 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      003897 75 82 80         [24]  626 	mov	dpl, #0x80
      00389A 12 39 90         [24]  627 	lcall	_SPI_send
                                    628 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    629 ;	assignBit
      00389D D2 91            [12]  630 	setb	_P1_1
                                    631 ;	SPI.c:30: }
      00389F 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'select_reg_bank'
                                    635 ;------------------------------------------------------------
                                    636 ;bank                      Allocated with name '_select_reg_bank_bank_10000_117'
                                    637 ;data                      Allocated with name '_select_reg_bank_data_10001_119'
                                    638 ;i                         Allocated with name '_select_reg_bank_i_20001_121'
                                    639 ;------------------------------------------------------------
                                    640 ;	SPI.c:33: void select_reg_bank(uint8_t bank)
                                    641 ;	-----------------------------------------
                                    642 ;	 function select_reg_bank
                                    643 ;	-----------------------------------------
      0038A0                        644 _select_reg_bank:
      0038A0 E5 82            [12]  645 	mov	a,dpl
      0038A2 90 03 82         [24]  646 	mov	dptr,#_select_reg_bank_bank_10000_117
      0038A5 F0               [24]  647 	movx	@dptr,a
                                    648 ;	SPI.c:35: CS_LOW;
                                    649 ;	assignBit
      0038A6 C2 91            [12]  650 	clr	_P1_1
                                    651 ;	SPI.c:36: SPI_send(0X1F); // Send the address
      0038A8 75 82 1F         [24]  652 	mov	dpl, #0x1f
      0038AB 12 39 90         [24]  653 	lcall	_SPI_send
                                    654 ;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
      0038AE 12 38 7D         [24]  655 	lcall	_SPI_ReadByte
      0038B1 AF 82            [24]  656 	mov	r7, dpl
                                    657 ;	SPI.c:38: CS_HIGH;
                                    658 ;	assignBit
      0038B3 D2 91            [12]  659 	setb	_P1_1
                                    660 ;	SPI.c:41: data &= ~0x03; // Clear the last two bits
      0038B5 53 07 FC         [24]  661 	anl	ar7,#0xfc
                                    662 ;	SPI.c:42: switch (bank)
      0038B8 90 03 82         [24]  663 	mov	dptr,#_select_reg_bank_bank_10000_117
      0038BB E0               [24]  664 	movx	a,@dptr
      0038BC FE               [12]  665 	mov  r6,a
      0038BD 24 FC            [12]  666 	add	a,#0xff - 0x03
      0038BF 40 30            [24]  667 	jc	00105$
      0038C1 EE               [12]  668 	mov	a,r6
      0038C2 2E               [12]  669 	add	a,r6
                                    670 ;	SPI.c:44: case 0:
      0038C3 90 38 C7         [24]  671 	mov	dptr,#00133$
      0038C6 73               [24]  672 	jmp	@a+dptr
      0038C7                        673 00133$:
      0038C7 80 06            [24]  674 	sjmp	00101$
      0038C9 80 0B            [24]  675 	sjmp	00102$
      0038CB 80 12            [24]  676 	sjmp	00103$
      0038CD 80 19            [24]  677 	sjmp	00104$
      0038CF                        678 00101$:
                                    679 ;	SPI.c:45: data |= 0x00; // Last two bits: 00
      0038CF 90 03 83         [24]  680 	mov	dptr,#_select_reg_bank_data_10001_119
      0038D2 EF               [12]  681 	mov	a,r7
      0038D3 F0               [24]  682 	movx	@dptr,a
                                    683 ;	SPI.c:46: break;
                                    684 ;	SPI.c:47: case 1:
      0038D4 80 31            [24]  685 	sjmp	00115$
      0038D6                        686 00102$:
                                    687 ;	SPI.c:48: data |= 0x01; // Last two bits: 01
      0038D6 90 03 83         [24]  688 	mov	dptr,#_select_reg_bank_data_10001_119
      0038D9 74 01            [12]  689 	mov	a,#0x01
      0038DB 4F               [12]  690 	orl	a,r7
      0038DC F0               [24]  691 	movx	@dptr,a
                                    692 ;	SPI.c:49: break;
                                    693 ;	SPI.c:50: case 2:
      0038DD 80 28            [24]  694 	sjmp	00115$
      0038DF                        695 00103$:
                                    696 ;	SPI.c:51: data |= 0x02; // Last two bits: 10
      0038DF 90 03 83         [24]  697 	mov	dptr,#_select_reg_bank_data_10001_119
      0038E2 74 02            [12]  698 	mov	a,#0x02
      0038E4 4F               [12]  699 	orl	a,r7
      0038E5 F0               [24]  700 	movx	@dptr,a
                                    701 ;	SPI.c:52: break;
                                    702 ;	SPI.c:53: case 3:
      0038E6 80 1F            [24]  703 	sjmp	00115$
      0038E8                        704 00104$:
                                    705 ;	SPI.c:54: data |= 0x03; // Last two bits: 11
      0038E8 90 03 83         [24]  706 	mov	dptr,#_select_reg_bank_data_10001_119
      0038EB 74 03            [12]  707 	mov	a,#0x03
      0038ED 4F               [12]  708 	orl	a,r7
      0038EE F0               [24]  709 	movx	@dptr,a
                                    710 ;	SPI.c:55: break;
                                    711 ;	SPI.c:56: default:
      0038EF 80 16            [24]  712 	sjmp	00115$
      0038F1                        713 00105$:
                                    714 ;	SPI.c:57: printf("wrong bank");
      0038F1 74 2E            [12]  715 	mov	a,#___str_0
      0038F3 C0 E0            [24]  716 	push	acc
      0038F5 74 66            [12]  717 	mov	a,#(___str_0 >> 8)
      0038F7 C0 E0            [24]  718 	push	acc
      0038F9 74 80            [12]  719 	mov	a,#0x80
      0038FB C0 E0            [24]  720 	push	acc
      0038FD 12 54 C1         [24]  721 	lcall	_printf
      003900 15 81            [12]  722 	dec	sp
      003902 15 81            [12]  723 	dec	sp
      003904 15 81            [12]  724 	dec	sp
                                    725 ;	SPI.c:58: return;
                                    726 ;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
      003906 22               [24]  727 	ret
      003907                        728 00115$:
      003907 7F 00            [12]  729 	mov	r7,#0x00
      003909                        730 00109$:
      003909 BF 10 00         [24]  731 	cjne	r7,#0x10,00134$
      00390C                        732 00134$:
      00390C 50 03            [24]  733 	jnc	00107$
      00390E 0F               [12]  734 	inc	r7
      00390F 80 F8            [24]  735 	sjmp	00109$
      003911                        736 00107$:
                                    737 ;	SPI.c:63: CS_LOW;
                                    738 ;	assignBit
      003911 C2 91            [12]  739 	clr	_P1_1
                                    740 ;	SPI.c:64: SPI_send(0x5F);
      003913 75 82 5F         [24]  741 	mov	dpl, #0x5f
      003916 12 39 90         [24]  742 	lcall	_SPI_send
                                    743 ;	SPI.c:65: SPI_send(data); // Send the modified data
      003919 90 03 83         [24]  744 	mov	dptr,#_select_reg_bank_data_10001_119
      00391C E0               [24]  745 	movx	a,@dptr
      00391D F5 82            [12]  746 	mov	dpl,a
      00391F 12 39 90         [24]  747 	lcall	_SPI_send
                                    748 ;	SPI.c:66: CS_HIGH;
                                    749 ;	assignBit
      003922 D2 91            [12]  750 	setb	_P1_1
                                    751 ;	SPI.c:68: }
      003924 22               [24]  752 	ret
                                    753 ;------------------------------------------------------------
                                    754 ;Allocation info for local variables in function 'spi_control_write'
                                    755 ;------------------------------------------------------------
                                    756 ;addr                      Allocated with name '_spi_control_write_PARM_2'
                                    757 ;data                      Allocated with name '_spi_control_write_PARM_3'
                                    758 ;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_122'
                                    759 ;opcode                    Allocated with name '_spi_control_write_opcode_10000_123'
                                    760 ;------------------------------------------------------------
                                    761 ;	SPI.c:69: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
                                    762 ;	-----------------------------------------
                                    763 ;	 function spi_control_write
                                    764 ;	-----------------------------------------
      003925                        765 _spi_control_write:
      003925 E5 82            [12]  766 	mov	a,dpl
      003927 90 03 86         [24]  767 	mov	dptr,#_spi_control_write_reg_bank_10000_122
      00392A F0               [24]  768 	movx	@dptr,a
                                    769 ;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
      00392B 90 03 84         [24]  770 	mov	dptr,#_spi_control_write_PARM_2
      00392E E0               [24]  771 	movx	a,@dptr
      00392F 24 40            [12]  772 	add	a, #0x40
      003931 F0               [24]  773 	movx	@dptr,a
                                    774 ;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
      003932 90 03 86         [24]  775 	mov	dptr,#_spi_control_write_reg_bank_10000_122
      003935 E0               [24]  776 	movx	a,@dptr
      003936 F5 82            [12]  777 	mov	dpl,a
      003938 12 38 A0         [24]  778 	lcall	_select_reg_bank
                                    779 ;	SPI.c:77: CS_LOW;
                                    780 ;	assignBit
      00393B C2 91            [12]  781 	clr	_P1_1
                                    782 ;	SPI.c:80: SPI_send(addr);
      00393D 90 03 84         [24]  783 	mov	dptr,#_spi_control_write_PARM_2
      003940 E0               [24]  784 	movx	a,@dptr
      003941 FF               [12]  785 	mov	r7,a
      003942 F5 82            [12]  786 	mov	dpl,a
      003944 C0 07            [24]  787 	push	ar7
      003946 12 39 90         [24]  788 	lcall	_SPI_send
      003949 D0 07            [24]  789 	pop	ar7
                                    790 ;	SPI.c:83: SPI_send(data);
      00394B 90 03 85         [24]  791 	mov	dptr,#_spi_control_write_PARM_3
      00394E E0               [24]  792 	movx	a,@dptr
      00394F FE               [12]  793 	mov	r6,a
      003950 F5 82            [12]  794 	mov	dpl,a
      003952 C0 07            [24]  795 	push	ar7
      003954 C0 06            [24]  796 	push	ar6
      003956 12 39 90         [24]  797 	lcall	_SPI_send
      003959 D0 06            [24]  798 	pop	ar6
      00395B D0 07            [24]  799 	pop	ar7
                                    800 ;	SPI.c:86: CS_HIGH;
                                    801 ;	assignBit
      00395D D2 91            [12]  802 	setb	_P1_1
                                    803 ;	SPI.c:89: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      00395F 7D 00            [12]  804 	mov	r5,#0x00
      003961 7C 00            [12]  805 	mov	r4,#0x00
      003963 C0 06            [24]  806 	push	ar6
      003965 C0 05            [24]  807 	push	ar5
      003967 C0 07            [24]  808 	push	ar7
      003969 C0 04            [24]  809 	push	ar4
      00396B 74 39            [12]  810 	mov	a,#___str_1
      00396D C0 E0            [24]  811 	push	acc
      00396F 74 66            [12]  812 	mov	a,#(___str_1 >> 8)
      003971 C0 E0            [24]  813 	push	acc
      003973 74 80            [12]  814 	mov	a,#0x80
      003975 C0 E0            [24]  815 	push	acc
      003977 12 54 C1         [24]  816 	lcall	_printf
      00397A E5 81            [12]  817 	mov	a,sp
      00397C 24 F9            [12]  818 	add	a,#0xf9
      00397E F5 81            [12]  819 	mov	sp,a
                                    820 ;	SPI.c:90: }
      003980 22               [24]  821 	ret
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'configure_SPI'
                                    824 ;------------------------------------------------------------
                                    825 ;	SPI.c:93: void configure_SPI(void)
                                    826 ;	-----------------------------------------
                                    827 ;	 function configure_SPI
                                    828 ;	-----------------------------------------
      003981                        829 _configure_SPI:
                                    830 ;	SPI.c:95: CS_PIN = 1;
                                    831 ;	assignBit
      003981 D2 91            [12]  832 	setb	_P1_1
                                    833 ;	SPI.c:96: SPCON = 0x00;
      003983 75 C3 00         [24]  834 	mov	_SPCON,#0x00
                                    835 ;	SPI.c:97: SPCON |= SS_DISABLE;
      003986 43 C3 20         [24]  836 	orl	_SPCON,#0x20
                                    837 ;	SPI.c:98: SPCON |= MASTER_MODE;
      003989 43 C3 10         [24]  838 	orl	_SPCON,#0x10
                                    839 ;	SPI.c:99: SPCON |= SPI_ENABLE;
      00398C 43 C3 40         [24]  840 	orl	_SPCON,#0x40
                                    841 ;	SPI.c:100: }
      00398F 22               [24]  842 	ret
                                    843 ;------------------------------------------------------------
                                    844 ;Allocation info for local variables in function 'SPI_send'
                                    845 ;------------------------------------------------------------
                                    846 ;data                      Allocated with name '_SPI_send_data_10000_126'
                                    847 ;------------------------------------------------------------
                                    848 ;	SPI.c:103: void SPI_send(uint8_t data)
                                    849 ;	-----------------------------------------
                                    850 ;	 function SPI_send
                                    851 ;	-----------------------------------------
      003990                        852 _SPI_send:
      003990 E5 82            [12]  853 	mov	a,dpl
      003992 90 03 87         [24]  854 	mov	dptr,#_SPI_send_data_10000_126
      003995 F0               [24]  855 	movx	@dptr,a
                                    856 ;	SPI.c:106: SPDAT = data;           // Config + MSB of data
      003996 E0               [24]  857 	movx	a,@dptr
      003997 F5 C5            [12]  858 	mov	_SPDAT,a
                                    859 ;	SPI.c:108: while (!(SPSTA & 0x80))
      003999                        860 00101$:
      003999 E5 C4            [12]  861 	mov	a,_SPSTA
      00399B 30 E7 FB         [24]  862 	jnb	acc.7,00101$
                                    863 ;	SPI.c:113: }
      00399E 22               [24]  864 	ret
                                    865 ;------------------------------------------------------------
                                    866 ;Allocation info for local variables in function 'enc_reset'
                                    867 ;------------------------------------------------------------
                                    868 ;	SPI.c:115: void enc_reset(void)
                                    869 ;	-----------------------------------------
                                    870 ;	 function enc_reset
                                    871 ;	-----------------------------------------
      00399F                        872 _enc_reset:
                                    873 ;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    874 ;	assignBit
      00399F C2 91            [12]  875 	clr	_P1_1
                                    876 ;	SPI.c:118: SPI_send(0xFF);            // Send reset command
      0039A1 75 82 FF         [24]  877 	mov	dpl, #0xff
      0039A4 12 39 90         [24]  878 	lcall	_SPI_send
                                    879 ;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    880 ;	assignBit
      0039A7 D2 91            [12]  881 	setb	_P1_1
                                    882 ;	SPI.c:120: }
      0039A9 22               [24]  883 	ret
                                    884 ;------------------------------------------------------------
                                    885 ;Allocation info for local variables in function 'eth_spi_read'
                                    886 ;------------------------------------------------------------
                                    887 ;bank                      Allocated with name '_eth_spi_read_PARM_2'
                                    888 ;addr                      Allocated with name '_eth_spi_read_addr_10000_131'
                                    889 ;data                      Allocated with name '_eth_spi_read_data_10001_134'
                                    890 ;------------------------------------------------------------
                                    891 ;	SPI.c:122: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
                                    892 ;	-----------------------------------------
                                    893 ;	 function eth_spi_read
                                    894 ;	-----------------------------------------
      0039AA                        895 _eth_spi_read:
      0039AA E5 82            [12]  896 	mov	a,dpl
      0039AC 90 03 89         [24]  897 	mov	dptr,#_eth_spi_read_addr_10000_131
      0039AF F0               [24]  898 	movx	@dptr,a
                                    899 ;	SPI.c:124: if (addr > 0x1F) {
      0039B0 E0               [24]  900 	movx	a,@dptr
      0039B1 FF               [12]  901 	mov  r7,a
      0039B2 24 E0            [12]  902 	add	a,#0xff - 0x1f
      0039B4 50 19            [24]  903 	jnc	00102$
                                    904 ;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      0039B6 74 5E            [12]  905 	mov	a,#___str_2
      0039B8 C0 E0            [24]  906 	push	acc
      0039BA 74 66            [12]  907 	mov	a,#(___str_2 >> 8)
      0039BC C0 E0            [24]  908 	push	acc
      0039BE 74 80            [12]  909 	mov	a,#0x80
      0039C0 C0 E0            [24]  910 	push	acc
      0039C2 12 54 C1         [24]  911 	lcall	_printf
      0039C5 15 81            [12]  912 	dec	sp
      0039C7 15 81            [12]  913 	dec	sp
      0039C9 15 81            [12]  914 	dec	sp
                                    915 ;	SPI.c:126: return 0;
      0039CB 75 82 00         [24]  916 	mov	dpl, #0x00
      0039CE 22               [24]  917 	ret
      0039CF                        918 00102$:
                                    919 ;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
      0039CF 90 03 88         [24]  920 	mov	dptr,#_eth_spi_read_PARM_2
      0039D2 E0               [24]  921 	movx	a,@dptr
      0039D3 F5 82            [12]  922 	mov	dpl,a
      0039D5 C0 07            [24]  923 	push	ar7
      0039D7 12 38 A0         [24]  924 	lcall	_select_reg_bank
      0039DA D0 07            [24]  925 	pop	ar7
                                    926 ;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
                                    927 ;	assignBit
      0039DC C2 91            [12]  928 	clr	_P1_1
                                    929 ;	SPI.c:132: SPI_send(addr);            // Send the address
      0039DE 8F 82            [24]  930 	mov	dpl, r7
      0039E0 C0 07            [24]  931 	push	ar7
      0039E2 12 39 90         [24]  932 	lcall	_SPI_send
                                    933 ;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
      0039E5 12 38 7D         [24]  934 	lcall	_SPI_ReadByte
      0039E8 AE 82            [24]  935 	mov	r6, dpl
      0039EA D0 07            [24]  936 	pop	ar7
                                    937 ;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
                                    938 ;	assignBit
      0039EC D2 91            [12]  939 	setb	_P1_1
                                    940 ;	SPI.c:137: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      0039EE 8E 04            [24]  941 	mov	ar4,r6
      0039F0 7D 00            [12]  942 	mov	r5,#0x00
      0039F2 7B 00            [12]  943 	mov	r3,#0x00
      0039F4 C0 06            [24]  944 	push	ar6
      0039F6 C0 04            [24]  945 	push	ar4
      0039F8 C0 05            [24]  946 	push	ar5
      0039FA C0 07            [24]  947 	push	ar7
      0039FC C0 03            [24]  948 	push	ar3
      0039FE 74 98            [12]  949 	mov	a,#___str_3
      003A00 C0 E0            [24]  950 	push	acc
      003A02 74 66            [12]  951 	mov	a,#(___str_3 >> 8)
      003A04 C0 E0            [24]  952 	push	acc
      003A06 74 80            [12]  953 	mov	a,#0x80
      003A08 C0 E0            [24]  954 	push	acc
      003A0A 12 54 C1         [24]  955 	lcall	_printf
      003A0D E5 81            [12]  956 	mov	a,sp
      003A0F 24 F9            [12]  957 	add	a,#0xf9
      003A11 F5 81            [12]  958 	mov	sp,a
      003A13 D0 06            [24]  959 	pop	ar6
                                    960 ;	SPI.c:139: return data;
      003A15 8E 82            [24]  961 	mov	dpl, r6
                                    962 ;	SPI.c:140: }
      003A17 22               [24]  963 	ret
                                    964 ;------------------------------------------------------------
                                    965 ;Allocation info for local variables in function 'phy_spi_write'
                                    966 ;------------------------------------------------------------
                                    967 ;data                      Allocated with name '_phy_spi_write_PARM_2'
                                    968 ;addr                      Allocated with name '_phy_spi_write_addr_10000_135'
                                    969 ;------------------------------------------------------------
                                    970 ;	SPI.c:142: void phy_spi_write(uint8_t addr, uint16_t data)
                                    971 ;	-----------------------------------------
                                    972 ;	 function phy_spi_write
                                    973 ;	-----------------------------------------
      003A18                        974 _phy_spi_write:
      003A18 E5 82            [12]  975 	mov	a,dpl
      003A1A 90 03 8C         [24]  976 	mov	dptr,#_phy_spi_write_addr_10000_135
      003A1D F0               [24]  977 	movx	@dptr,a
                                    978 ;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
      003A1E E0               [24]  979 	movx	a,@dptr
      003A1F FF               [12]  980 	mov	r7,a
      003A20 90 03 84         [24]  981 	mov	dptr,#_spi_control_write_PARM_2
      003A23 74 14            [12]  982 	mov	a,#0x14
      003A25 F0               [24]  983 	movx	@dptr,a
      003A26 90 03 85         [24]  984 	mov	dptr,#_spi_control_write_PARM_3
      003A29 EF               [12]  985 	mov	a,r7
      003A2A F0               [24]  986 	movx	@dptr,a
      003A2B 75 82 02         [24]  987 	mov	dpl, #0x02
      003A2E C0 07            [24]  988 	push	ar7
      003A30 12 39 25         [24]  989 	lcall	_spi_control_write
      003A33 D0 07            [24]  990 	pop	ar7
                                    991 ;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      003A35 90 03 8A         [24]  992 	mov	dptr,#_phy_spi_write_PARM_2
      003A38 E0               [24]  993 	movx	a,@dptr
      003A39 FD               [12]  994 	mov	r5,a
      003A3A A3               [24]  995 	inc	dptr
      003A3B E0               [24]  996 	movx	a,@dptr
      003A3C FE               [12]  997 	mov	r6,a
      003A3D 8D 04            [24]  998 	mov	ar4,r5
      003A3F 90 03 84         [24]  999 	mov	dptr,#_spi_control_write_PARM_2
      003A42 74 16            [12] 1000 	mov	a,#0x16
      003A44 F0               [24] 1001 	movx	@dptr,a
      003A45 90 03 85         [24] 1002 	mov	dptr,#_spi_control_write_PARM_3
      003A48 EC               [12] 1003 	mov	a,r4
      003A49 F0               [24] 1004 	movx	@dptr,a
      003A4A 75 82 02         [24] 1005 	mov	dpl, #0x02
      003A4D C0 07            [24] 1006 	push	ar7
      003A4F C0 06            [24] 1007 	push	ar6
      003A51 C0 05            [24] 1008 	push	ar5
      003A53 12 39 25         [24] 1009 	lcall	_spi_control_write
      003A56 D0 05            [24] 1010 	pop	ar5
      003A58 D0 06            [24] 1011 	pop	ar6
      003A5A D0 07            [24] 1012 	pop	ar7
                                   1013 ;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      003A5C 8E 04            [24] 1014 	mov	ar4,r6
      003A5E 90 03 84         [24] 1015 	mov	dptr,#_spi_control_write_PARM_2
      003A61 74 17            [12] 1016 	mov	a,#0x17
      003A63 F0               [24] 1017 	movx	@dptr,a
      003A64 90 03 85         [24] 1018 	mov	dptr,#_spi_control_write_PARM_3
      003A67 EC               [12] 1019 	mov	a,r4
      003A68 F0               [24] 1020 	movx	@dptr,a
      003A69 75 82 02         [24] 1021 	mov	dpl, #0x02
      003A6C C0 07            [24] 1022 	push	ar7
      003A6E C0 06            [24] 1023 	push	ar6
      003A70 C0 05            [24] 1024 	push	ar5
      003A72 12 39 25         [24] 1025 	lcall	_spi_control_write
      003A75 D0 05            [24] 1026 	pop	ar5
      003A77 D0 06            [24] 1027 	pop	ar6
      003A79 D0 07            [24] 1028 	pop	ar7
                                   1029 ;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003A7B 7C 00            [12] 1030 	mov	r4,#0x00
      003A7D C0 05            [24] 1031 	push	ar5
      003A7F C0 06            [24] 1032 	push	ar6
      003A81 C0 07            [24] 1033 	push	ar7
      003A83 C0 04            [24] 1034 	push	ar4
      003A85 74 BC            [12] 1035 	mov	a,#___str_4
      003A87 C0 E0            [24] 1036 	push	acc
      003A89 74 66            [12] 1037 	mov	a,#(___str_4 >> 8)
      003A8B C0 E0            [24] 1038 	push	acc
      003A8D 74 80            [12] 1039 	mov	a,#0x80
      003A8F C0 E0            [24] 1040 	push	acc
      003A91 12 54 C1         [24] 1041 	lcall	_printf
      003A94 E5 81            [12] 1042 	mov	a,sp
      003A96 24 F9            [12] 1043 	add	a,#0xf9
      003A98 F5 81            [12] 1044 	mov	sp,a
                                   1045 ;	SPI.c:150: }
      003A9A 22               [24] 1046 	ret
                                   1047 ;------------------------------------------------------------
                                   1048 ;Allocation info for local variables in function 'mac_spi_read'
                                   1049 ;------------------------------------------------------------
                                   1050 ;bank                      Allocated with name '_mac_spi_read_PARM_2'
                                   1051 ;addr                      Allocated with name '_mac_spi_read_addr_10000_137'
                                   1052 ;data                      Allocated with name '_mac_spi_read_data_10001_140'
                                   1053 ;------------------------------------------------------------
                                   1054 ;	SPI.c:152: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
                                   1055 ;	-----------------------------------------
                                   1056 ;	 function mac_spi_read
                                   1057 ;	-----------------------------------------
      003A9B                       1058 _mac_spi_read:
      003A9B E5 82            [12] 1059 	mov	a,dpl
      003A9D 90 03 8E         [24] 1060 	mov	dptr,#_mac_spi_read_addr_10000_137
      003AA0 F0               [24] 1061 	movx	@dptr,a
                                   1062 ;	SPI.c:154: if (addr > 0x1F) {
      003AA1 E0               [24] 1063 	movx	a,@dptr
      003AA2 FF               [12] 1064 	mov  r7,a
      003AA3 24 E0            [12] 1065 	add	a,#0xff - 0x1f
      003AA5 50 19            [24] 1066 	jnc	00102$
                                   1067 ;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003AA7 74 5E            [12] 1068 	mov	a,#___str_2
      003AA9 C0 E0            [24] 1069 	push	acc
      003AAB 74 66            [12] 1070 	mov	a,#(___str_2 >> 8)
      003AAD C0 E0            [24] 1071 	push	acc
      003AAF 74 80            [12] 1072 	mov	a,#0x80
      003AB1 C0 E0            [24] 1073 	push	acc
      003AB3 12 54 C1         [24] 1074 	lcall	_printf
      003AB6 15 81            [12] 1075 	dec	sp
      003AB8 15 81            [12] 1076 	dec	sp
      003ABA 15 81            [12] 1077 	dec	sp
                                   1078 ;	SPI.c:156: return 0; // Return 0 if address is invalid
      003ABC 75 82 00         [24] 1079 	mov	dpl, #0x00
      003ABF 22               [24] 1080 	ret
      003AC0                       1081 00102$:
                                   1082 ;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
      003AC0 90 03 8D         [24] 1083 	mov	dptr,#_mac_spi_read_PARM_2
      003AC3 E0               [24] 1084 	movx	a,@dptr
      003AC4 F5 82            [12] 1085 	mov	dpl,a
      003AC6 C0 07            [24] 1086 	push	ar7
      003AC8 12 38 A0         [24] 1087 	lcall	_select_reg_bank
      003ACB D0 07            [24] 1088 	pop	ar7
                                   1089 ;	SPI.c:162: CS_LOW;
                                   1090 ;	assignBit
      003ACD C2 91            [12] 1091 	clr	_P1_1
                                   1092 ;	SPI.c:165: SPI_send(addr);
      003ACF 8F 82            [24] 1093 	mov	dpl, r7
      003AD1 12 39 90         [24] 1094 	lcall	_SPI_send
                                   1095 ;	SPI.c:168: uint8_t data = SPI_ReadByte();
      003AD4 12 38 7D         [24] 1096 	lcall	_SPI_ReadByte
      003AD7 AF 82            [24] 1097 	mov	r7, dpl
                                   1098 ;	SPI.c:171: CS_HIGH;
                                   1099 ;	assignBit
      003AD9 D2 91            [12] 1100 	setb	_P1_1
                                   1101 ;	SPI.c:176: return data;
      003ADB 8F 82            [24] 1102 	mov	dpl, r7
                                   1103 ;	SPI.c:177: }
      003ADD 22               [24] 1104 	ret
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'phy_spi_read'
                                   1107 ;------------------------------------------------------------
                                   1108 ;addr                      Allocated with name '_phy_spi_read_addr_10000_141'
                                   1109 ;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_143'
                                   1110 ;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_143'
                                   1111 ;data                      Allocated with name '_phy_spi_read_data_10001_143'
                                   1112 ;------------------------------------------------------------
                                   1113 ;	SPI.c:180: uint16_t phy_spi_read(uint8_t addr)
                                   1114 ;	-----------------------------------------
                                   1115 ;	 function phy_spi_read
                                   1116 ;	-----------------------------------------
      003ADE                       1117 _phy_spi_read:
      003ADE E5 82            [12] 1118 	mov	a,dpl
      003AE0 90 03 8F         [24] 1119 	mov	dptr,#_phy_spi_read_addr_10000_141
      003AE3 F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
      003AE4 E0               [24] 1122 	movx	a,@dptr
      003AE5 FF               [12] 1123 	mov	r7,a
      003AE6 90 03 84         [24] 1124 	mov	dptr,#_spi_control_write_PARM_2
      003AE9 74 14            [12] 1125 	mov	a,#0x14
      003AEB F0               [24] 1126 	movx	@dptr,a
      003AEC 90 03 85         [24] 1127 	mov	dptr,#_spi_control_write_PARM_3
      003AEF EF               [12] 1128 	mov	a,r7
      003AF0 F0               [24] 1129 	movx	@dptr,a
      003AF1 75 82 02         [24] 1130 	mov	dpl, #0x02
      003AF4 C0 07            [24] 1131 	push	ar7
      003AF6 12 39 25         [24] 1132 	lcall	_spi_control_write
      003AF9 D0 07            [24] 1133 	pop	ar7
                                   1134 ;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      003AFB 90 03 84         [24] 1135 	mov	dptr,#_spi_control_write_PARM_2
      003AFE 74 12            [12] 1136 	mov	a,#0x12
      003B00 F0               [24] 1137 	movx	@dptr,a
      003B01 90 03 85         [24] 1138 	mov	dptr,#_spi_control_write_PARM_3
      003B04 74 01            [12] 1139 	mov	a,#0x01
      003B06 F0               [24] 1140 	movx	@dptr,a
      003B07 75 82 02         [24] 1141 	mov	dpl, #0x02
      003B0A C0 07            [24] 1142 	push	ar7
      003B0C 12 39 25         [24] 1143 	lcall	_spi_control_write
                                   1144 ;	SPI.c:185: busy_wait();                          // Wait for the read to complete
      003B0F 12 3B 8B         [24] 1145 	lcall	_busy_wait
      003B12 D0 07            [24] 1146 	pop	ar7
                                   1147 ;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      003B14 90 03 84         [24] 1148 	mov	dptr,#_spi_control_write_PARM_2
      003B17 74 12            [12] 1149 	mov	a,#0x12
      003B19 F0               [24] 1150 	movx	@dptr,a
      003B1A 90 03 85         [24] 1151 	mov	dptr,#_spi_control_write_PARM_3
      003B1D E4               [12] 1152 	clr	a
      003B1E F0               [24] 1153 	movx	@dptr,a
      003B1F 75 82 02         [24] 1154 	mov	dpl, #0x02
      003B22 C0 07            [24] 1155 	push	ar7
      003B24 12 39 25         [24] 1156 	lcall	_spi_control_write
      003B27 D0 07            [24] 1157 	pop	ar7
                                   1158 ;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      003B29 90 03 8D         [24] 1159 	mov	dptr,#_mac_spi_read_PARM_2
      003B2C 74 02            [12] 1160 	mov	a,#0x02
      003B2E F0               [24] 1161 	movx	@dptr,a
      003B2F 75 82 18         [24] 1162 	mov	dpl, #0x18
      003B32 C0 07            [24] 1163 	push	ar7
      003B34 12 3A 9B         [24] 1164 	lcall	_mac_spi_read
      003B37 AE 82            [24] 1165 	mov	r6, dpl
      003B39 D0 07            [24] 1166 	pop	ar7
      003B3B 7D 00            [12] 1167 	mov	r5,#0x00
                                   1168 ;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003B3D 90 03 8D         [24] 1169 	mov	dptr,#_mac_spi_read_PARM_2
      003B40 74 02            [12] 1170 	mov	a,#0x02
      003B42 F0               [24] 1171 	movx	@dptr,a
      003B43 75 82 19         [24] 1172 	mov	dpl, #0x19
      003B46 C0 07            [24] 1173 	push	ar7
      003B48 C0 06            [24] 1174 	push	ar6
      003B4A C0 05            [24] 1175 	push	ar5
      003B4C 12 3A 9B         [24] 1176 	lcall	_mac_spi_read
      003B4F AC 82            [24] 1177 	mov	r4, dpl
      003B51 D0 05            [24] 1178 	pop	ar5
      003B53 D0 06            [24] 1179 	pop	ar6
      003B55 D0 07            [24] 1180 	pop	ar7
                                   1181 ;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      003B57 8C 03            [24] 1182 	mov	ar3,r4
      003B59 E4               [12] 1183 	clr	a
      003B5A 42 06            [12] 1184 	orl	ar6,a
      003B5C EB               [12] 1185 	mov	a,r3
      003B5D 42 05            [12] 1186 	orl	ar5,a
                                   1187 ;	SPI.c:195: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003B5F 7C 00            [12] 1188 	mov	r4,#0x00
      003B61 C0 06            [24] 1189 	push	ar6
      003B63 C0 05            [24] 1190 	push	ar5
      003B65 C0 06            [24] 1191 	push	ar6
      003B67 C0 05            [24] 1192 	push	ar5
      003B69 C0 07            [24] 1193 	push	ar7
      003B6B C0 04            [24] 1194 	push	ar4
      003B6D 74 E5            [12] 1195 	mov	a,#___str_5
      003B6F C0 E0            [24] 1196 	push	acc
      003B71 74 66            [12] 1197 	mov	a,#(___str_5 >> 8)
      003B73 C0 E0            [24] 1198 	push	acc
      003B75 74 80            [12] 1199 	mov	a,#0x80
      003B77 C0 E0            [24] 1200 	push	acc
      003B79 12 54 C1         [24] 1201 	lcall	_printf
      003B7C E5 81            [12] 1202 	mov	a,sp
      003B7E 24 F9            [12] 1203 	add	a,#0xf9
      003B80 F5 81            [12] 1204 	mov	sp,a
      003B82 D0 05            [24] 1205 	pop	ar5
      003B84 D0 06            [24] 1206 	pop	ar6
                                   1207 ;	SPI.c:197: return data;        // Combine MSB and LSB
      003B86 8E 82            [24] 1208 	mov	dpl, r6
      003B88 8D 83            [24] 1209 	mov	dph, r5
                                   1210 ;	SPI.c:198: }
      003B8A 22               [24] 1211 	ret
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'busy_wait'
                                   1214 ;------------------------------------------------------------
                                   1215 ;data                      Allocated with name '_busy_wait_data_10000_145'
                                   1216 ;------------------------------------------------------------
                                   1217 ;	SPI.c:200: void busy_wait(void)
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function busy_wait
                                   1220 ;	-----------------------------------------
      003B8B                       1221 _busy_wait:
                                   1222 ;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      003B8B 90 03 8D         [24] 1223 	mov	dptr,#_mac_spi_read_PARM_2
      003B8E 74 03            [12] 1224 	mov	a,#0x03
      003B90 F0               [24] 1225 	movx	@dptr,a
      003B91 75 82 0A         [24] 1226 	mov	dpl, #0x0a
      003B94 12 3A 9B         [24] 1227 	lcall	_mac_spi_read
      003B97 E5 82            [12] 1228 	mov	a, dpl
      003B99 90 03 90         [24] 1229 	mov	dptr,#_busy_wait_data_10000_145
      003B9C F0               [24] 1230 	movx	@dptr,a
                                   1231 ;	SPI.c:203: while (data & 0x01)
      003B9D                       1232 00101$:
      003B9D 90 03 90         [24] 1233 	mov	dptr,#_busy_wait_data_10000_145
      003BA0 E0               [24] 1234 	movx	a,@dptr
      003BA1 30 E0 14         [24] 1235 	jnb	acc.0,00104$
                                   1236 ;	SPI.c:205: data = mac_spi_read(0x0A, 3);
      003BA4 90 03 8D         [24] 1237 	mov	dptr,#_mac_spi_read_PARM_2
      003BA7 74 03            [12] 1238 	mov	a,#0x03
      003BA9 F0               [24] 1239 	movx	@dptr,a
      003BAA 75 82 0A         [24] 1240 	mov	dpl, #0x0a
      003BAD 12 3A 9B         [24] 1241 	lcall	_mac_spi_read
      003BB0 E5 82            [12] 1242 	mov	a, dpl
      003BB2 90 03 90         [24] 1243 	mov	dptr,#_busy_wait_data_10000_145
      003BB5 F0               [24] 1244 	movx	@dptr,a
      003BB6 80 E5            [24] 1245 	sjmp	00101$
      003BB8                       1246 00104$:
                                   1247 ;	SPI.c:207: }
      003BB8 22               [24] 1248 	ret
                                   1249 ;------------------------------------------------------------
                                   1250 ;Allocation info for local variables in function 'buffer_init'
                                   1251 ;------------------------------------------------------------
                                   1252 ;size                      Allocated with name '_buffer_init_PARM_2'
                                   1253 ;start_address             Allocated with name '_buffer_init_start_address_10000_147'
                                   1254 ;erxst                     Allocated with name '_buffer_init_erxst_10001_150'
                                   1255 ;erxnd                     Allocated with name '_buffer_init_erxnd_10001_150'
                                   1256 ;------------------------------------------------------------
                                   1257 ;	SPI.c:209: void buffer_init(uint16_t start_address, uint16_t size)
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function buffer_init
                                   1260 ;	-----------------------------------------
      003BB9                       1261 _buffer_init:
      003BB9 AF 83            [24] 1262 	mov	r7,dph
      003BBB E5 82            [12] 1263 	mov	a,dpl
      003BBD 90 03 93         [24] 1264 	mov	dptr,#_buffer_init_start_address_10000_147
      003BC0 F0               [24] 1265 	movx	@dptr,a
      003BC1 EF               [12] 1266 	mov	a,r7
      003BC2 A3               [24] 1267 	inc	dptr
      003BC3 F0               [24] 1268 	movx	@dptr,a
                                   1269 ;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      003BC4 90 03 93         [24] 1270 	mov	dptr,#_buffer_init_start_address_10000_147
      003BC7 E0               [24] 1271 	movx	a,@dptr
      003BC8 FE               [12] 1272 	mov	r6,a
      003BC9 A3               [24] 1273 	inc	dptr
      003BCA E0               [24] 1274 	movx	a,@dptr
      003BCB FF               [12] 1275 	mov	r7,a
      003BCC 8E 04            [24] 1276 	mov	ar4,r6
      003BCE 8F 05            [24] 1277 	mov	ar5,r7
      003BD0 C3               [12] 1278 	clr	c
      003BD1 74 FF            [12] 1279 	mov	a,#0xff
      003BD3 9C               [12] 1280 	subb	a,r4
      003BD4 74 1F            [12] 1281 	mov	a,#0x1f
      003BD6 9D               [12] 1282 	subb	a,r5
      003BD7 40 17            [24] 1283 	jc	00101$
      003BD9 90 03 91         [24] 1284 	mov	dptr,#_buffer_init_PARM_2
      003BDC E0               [24] 1285 	movx	a,@dptr
      003BDD FA               [12] 1286 	mov	r2,a
      003BDE A3               [24] 1287 	inc	dptr
      003BDF E0               [24] 1288 	movx	a,@dptr
      003BE0 FB               [12] 1289 	mov	r3,a
      003BE1 EA               [12] 1290 	mov	a,r2
      003BE2 2E               [12] 1291 	add	a, r6
      003BE3 F8               [12] 1292 	mov	r0,a
      003BE4 EB               [12] 1293 	mov	a,r3
      003BE5 3F               [12] 1294 	addc	a, r7
      003BE6 F9               [12] 1295 	mov	r1,a
      003BE7 C3               [12] 1296 	clr	c
      003BE8 74 FF            [12] 1297 	mov	a,#0xff
      003BEA 98               [12] 1298 	subb	a,r0
      003BEB 74 1F            [12] 1299 	mov	a,#0x1f
      003BED 99               [12] 1300 	subb	a,r1
      003BEE 50 2A            [24] 1301 	jnc	00102$
      003BF0                       1302 00101$:
                                   1303 ;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      003BF0 90 03 91         [24] 1304 	mov	dptr,#_buffer_init_PARM_2
      003BF3 E0               [24] 1305 	movx	a,@dptr
      003BF4 C0 E0            [24] 1306 	push	acc
      003BF6 A3               [24] 1307 	inc	dptr
      003BF7 E0               [24] 1308 	movx	a,@dptr
      003BF8 C0 E0            [24] 1309 	push	acc
      003BFA 90 03 93         [24] 1310 	mov	dptr,#_buffer_init_start_address_10000_147
      003BFD E0               [24] 1311 	movx	a,@dptr
      003BFE C0 E0            [24] 1312 	push	acc
      003C00 A3               [24] 1313 	inc	dptr
      003C01 E0               [24] 1314 	movx	a,@dptr
      003C02 C0 E0            [24] 1315 	push	acc
      003C04 74 0D            [12] 1316 	mov	a,#___str_6
      003C06 C0 E0            [24] 1317 	push	acc
      003C08 74 67            [12] 1318 	mov	a,#(___str_6 >> 8)
      003C0A C0 E0            [24] 1319 	push	acc
      003C0C 74 80            [12] 1320 	mov	a,#0x80
      003C0E C0 E0            [24] 1321 	push	acc
      003C10 12 54 C1         [24] 1322 	lcall	_printf
      003C13 E5 81            [12] 1323 	mov	a,sp
      003C15 24 F9            [12] 1324 	add	a,#0xf9
      003C17 F5 81            [12] 1325 	mov	sp,a
                                   1326 ;	SPI.c:213: return;
      003C19 22               [24] 1327 	ret
      003C1A                       1328 00102$:
                                   1329 ;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      003C1A 53 04 FE         [24] 1330 	anl	ar4,#0xfe
                                   1331 ;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      003C1D EA               [12] 1332 	mov	a,r2
      003C1E 2E               [12] 1333 	add	a, r6
      003C1F FE               [12] 1334 	mov	r6,a
      003C20 EB               [12] 1335 	mov	a,r3
      003C21 3F               [12] 1336 	addc	a, r7
      003C22 FF               [12] 1337 	mov	r7,a
      003C23 1E               [12] 1338 	dec	r6
      003C24 BE FF 01         [24] 1339 	cjne	r6,#0xff,00114$
      003C27 1F               [12] 1340 	dec	r7
      003C28                       1341 00114$:
      003C28 53 06 FE         [24] 1342 	anl	ar6,#0xfe
                                   1343 ;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      003C2B 8D 03            [24] 1344 	mov	ar3,r5
      003C2D 90 03 84         [24] 1345 	mov	dptr,#_spi_control_write_PARM_2
      003C30 74 08            [12] 1346 	mov	a,#0x08
      003C32 F0               [24] 1347 	movx	@dptr,a
      003C33 90 03 85         [24] 1348 	mov	dptr,#_spi_control_write_PARM_3
      003C36 EB               [12] 1349 	mov	a,r3
      003C37 F0               [24] 1350 	movx	@dptr,a
      003C38 75 82 00         [24] 1351 	mov	dpl, #0x00
      003C3B C0 07            [24] 1352 	push	ar7
      003C3D C0 06            [24] 1353 	push	ar6
      003C3F C0 05            [24] 1354 	push	ar5
      003C41 C0 04            [24] 1355 	push	ar4
      003C43 12 39 25         [24] 1356 	lcall	_spi_control_write
      003C46 D0 04            [24] 1357 	pop	ar4
      003C48 D0 05            [24] 1358 	pop	ar5
      003C4A D0 06            [24] 1359 	pop	ar6
      003C4C D0 07            [24] 1360 	pop	ar7
                                   1361 ;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003C4E 8C 03            [24] 1362 	mov	ar3,r4
      003C50 90 03 84         [24] 1363 	mov	dptr,#_spi_control_write_PARM_2
      003C53 74 09            [12] 1364 	mov	a,#0x09
      003C55 F0               [24] 1365 	movx	@dptr,a
      003C56 90 03 85         [24] 1366 	mov	dptr,#_spi_control_write_PARM_3
      003C59 EB               [12] 1367 	mov	a,r3
      003C5A F0               [24] 1368 	movx	@dptr,a
      003C5B 75 82 00         [24] 1369 	mov	dpl, #0x00
      003C5E C0 07            [24] 1370 	push	ar7
      003C60 C0 06            [24] 1371 	push	ar6
      003C62 C0 05            [24] 1372 	push	ar5
      003C64 C0 04            [24] 1373 	push	ar4
      003C66 12 39 25         [24] 1374 	lcall	_spi_control_write
      003C69 D0 04            [24] 1375 	pop	ar4
      003C6B D0 05            [24] 1376 	pop	ar5
      003C6D D0 06            [24] 1377 	pop	ar6
      003C6F D0 07            [24] 1378 	pop	ar7
                                   1379 ;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003C71 8F 03            [24] 1380 	mov	ar3,r7
      003C73 90 03 84         [24] 1381 	mov	dptr,#_spi_control_write_PARM_2
      003C76 74 0A            [12] 1382 	mov	a,#0x0a
      003C78 F0               [24] 1383 	movx	@dptr,a
      003C79 90 03 85         [24] 1384 	mov	dptr,#_spi_control_write_PARM_3
      003C7C EB               [12] 1385 	mov	a,r3
      003C7D F0               [24] 1386 	movx	@dptr,a
      003C7E 75 82 00         [24] 1387 	mov	dpl, #0x00
      003C81 C0 07            [24] 1388 	push	ar7
      003C83 C0 06            [24] 1389 	push	ar6
      003C85 C0 05            [24] 1390 	push	ar5
      003C87 C0 04            [24] 1391 	push	ar4
      003C89 12 39 25         [24] 1392 	lcall	_spi_control_write
      003C8C D0 04            [24] 1393 	pop	ar4
      003C8E D0 05            [24] 1394 	pop	ar5
      003C90 D0 06            [24] 1395 	pop	ar6
      003C92 D0 07            [24] 1396 	pop	ar7
                                   1397 ;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      003C94 8E 03            [24] 1398 	mov	ar3,r6
      003C96 90 03 84         [24] 1399 	mov	dptr,#_spi_control_write_PARM_2
      003C99 74 0B            [12] 1400 	mov	a,#0x0b
      003C9B F0               [24] 1401 	movx	@dptr,a
      003C9C 90 03 85         [24] 1402 	mov	dptr,#_spi_control_write_PARM_3
      003C9F EB               [12] 1403 	mov	a,r3
      003CA0 F0               [24] 1404 	movx	@dptr,a
      003CA1 75 82 00         [24] 1405 	mov	dpl, #0x00
      003CA4 C0 07            [24] 1406 	push	ar7
      003CA6 C0 06            [24] 1407 	push	ar6
      003CA8 C0 05            [24] 1408 	push	ar5
      003CAA C0 04            [24] 1409 	push	ar4
      003CAC 12 39 25         [24] 1410 	lcall	_spi_control_write
      003CAF D0 04            [24] 1411 	pop	ar4
      003CB1 D0 05            [24] 1412 	pop	ar5
      003CB3 D0 06            [24] 1413 	pop	ar6
      003CB5 D0 07            [24] 1414 	pop	ar7
                                   1415 ;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      003CB7 C0 06            [24] 1416 	push	ar6
      003CB9 C0 07            [24] 1417 	push	ar7
      003CBB C0 04            [24] 1418 	push	ar4
      003CBD C0 05            [24] 1419 	push	ar5
      003CBF 74 4B            [12] 1420 	mov	a,#___str_7
      003CC1 C0 E0            [24] 1421 	push	acc
      003CC3 74 67            [12] 1422 	mov	a,#(___str_7 >> 8)
      003CC5 C0 E0            [24] 1423 	push	acc
      003CC7 74 80            [12] 1424 	mov	a,#0x80
      003CC9 C0 E0            [24] 1425 	push	acc
      003CCB 12 54 C1         [24] 1426 	lcall	_printf
      003CCE E5 81            [12] 1427 	mov	a,sp
      003CD0 24 F9            [12] 1428 	add	a,#0xf9
      003CD2 F5 81            [12] 1429 	mov	sp,a
                                   1430 ;	SPI.c:229: }
      003CD4 22               [24] 1431 	ret
                                   1432 ;------------------------------------------------------------
                                   1433 ;Allocation info for local variables in function 'spi_buffer_read'
                                   1434 ;------------------------------------------------------------
                                   1435 ;start_address             Allocated with name '_spi_buffer_read_PARM_2'
                                   1436 ;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
                                   1437 ;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_151'
                                   1438 ;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_157'
                                   1439 ;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_157'
                                   1440 ;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_158'
                                   1441 ;i                         Allocated with name '_spi_buffer_read_i_20002_159'
                                   1442 ;------------------------------------------------------------
                                   1443 ;	SPI.c:232: uint16_t spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1444 ;	-----------------------------------------
                                   1445 ;	 function spi_buffer_read
                                   1446 ;	-----------------------------------------
      003CD5                       1447 _spi_buffer_read:
      003CD5 AF 83            [24] 1448 	mov	r7,dph
      003CD7 E5 82            [12] 1449 	mov	a,dpl
      003CD9 90 03 9A         [24] 1450 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003CDC F0               [24] 1451 	movx	@dptr,a
      003CDD EF               [12] 1452 	mov	a,r7
      003CDE A3               [24] 1453 	inc	dptr
      003CDF F0               [24] 1454 	movx	@dptr,a
                                   1455 ;	SPI.c:234: if (num_bytes < 1) {
      003CE0 90 03 9A         [24] 1456 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003CE3 E0               [24] 1457 	movx	a,@dptr
      003CE4 FE               [12] 1458 	mov	r6,a
      003CE5 A3               [24] 1459 	inc	dptr
      003CE6 E0               [24] 1460 	movx	a,@dptr
      003CE7 FF               [12] 1461 	mov	r7,a
      003CE8 C3               [12] 1462 	clr	c
      003CE9 EE               [12] 1463 	mov	a,r6
      003CEA 94 01            [12] 1464 	subb	a,#0x01
      003CEC EF               [12] 1465 	mov	a,r7
      003CED 64 80            [12] 1466 	xrl	a,#0x80
      003CEF 94 80            [12] 1467 	subb	a,#0x80
      003CF1 50 1A            [24] 1468 	jnc	00102$
                                   1469 ;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003CF3 C0 06            [24] 1470 	push	ar6
      003CF5 C0 07            [24] 1471 	push	ar7
      003CF7 74 7C            [12] 1472 	mov	a,#___str_8
      003CF9 C0 E0            [24] 1473 	push	acc
      003CFB 74 67            [12] 1474 	mov	a,#(___str_8 >> 8)
      003CFD C0 E0            [24] 1475 	push	acc
      003CFF 74 80            [12] 1476 	mov	a,#0x80
      003D01 C0 E0            [24] 1477 	push	acc
      003D03 12 54 C1         [24] 1478 	lcall	_printf
      003D06 E5 81            [12] 1479 	mov	a,sp
      003D08 24 FB            [12] 1480 	add	a,#0xfb
      003D0A F5 81            [12] 1481 	mov	sp,a
                                   1482 ;	SPI.c:236: return;
      003D0C 22               [24] 1483 	ret
      003D0D                       1484 00102$:
                                   1485 ;	SPI.c:238: if (start_address > 0x1FFF) {
      003D0D 90 03 95         [24] 1486 	mov	dptr,#_spi_buffer_read_PARM_2
      003D10 E0               [24] 1487 	movx	a,@dptr
      003D11 FC               [12] 1488 	mov	r4,a
      003D12 A3               [24] 1489 	inc	dptr
      003D13 E0               [24] 1490 	movx	a,@dptr
      003D14 FD               [12] 1491 	mov	r5,a
      003D15 8C 02            [24] 1492 	mov	ar2,r4
      003D17 8D 03            [24] 1493 	mov	ar3,r5
      003D19 C3               [12] 1494 	clr	c
      003D1A 74 FF            [12] 1495 	mov	a,#0xff
      003D1C 9A               [12] 1496 	subb	a,r2
      003D1D 74 1F            [12] 1497 	mov	a,#0x1f
      003D1F 9B               [12] 1498 	subb	a,r3
      003D20 50 1A            [24] 1499 	jnc	00107$
                                   1500 ;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
      003D22 C0 04            [24] 1501 	push	ar4
      003D24 C0 05            [24] 1502 	push	ar5
      003D26 74 9C            [12] 1503 	mov	a,#___str_9
      003D28 C0 E0            [24] 1504 	push	acc
      003D2A 74 67            [12] 1505 	mov	a,#(___str_9 >> 8)
      003D2C C0 E0            [24] 1506 	push	acc
      003D2E 74 80            [12] 1507 	mov	a,#0x80
      003D30 C0 E0            [24] 1508 	push	acc
      003D32 12 54 C1         [24] 1509 	lcall	_printf
      003D35 E5 81            [12] 1510 	mov	a,sp
      003D37 24 FB            [12] 1511 	add	a,#0xfb
      003D39 F5 81            [12] 1512 	mov	sp,a
                                   1513 ;	SPI.c:240: return;
      003D3B 22               [24] 1514 	ret
                                   1515 ;	SPI.c:243: || (start_address + num_bytes) > RX_BUFFER_END) {
      003D3C                       1516 00107$:
      003D3C 8E 00            [24] 1517 	mov	ar0,r6
      003D3E 8F 01            [24] 1518 	mov	ar1,r7
      003D40 E8               [12] 1519 	mov	a,r0
      003D41 2A               [12] 1520 	add	a, r2
      003D42 FA               [12] 1521 	mov	r2,a
      003D43 E9               [12] 1522 	mov	a,r1
      003D44 3B               [12] 1523 	addc	a, r3
      003D45 FB               [12] 1524 	mov	r3,a
      003D46 C3               [12] 1525 	clr	c
      003D47 74 FF            [12] 1526 	mov	a,#0xff
      003D49 9A               [12] 1527 	subb	a,r2
      003D4A 74 0B            [12] 1528 	mov	a,#0x0b
      003D4C 9B               [12] 1529 	subb	a,r3
      003D4D 50 21            [24] 1530 	jnc	00106$
                                   1531 ;	SPI.c:244: printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
      003D4F C0 06            [24] 1532 	push	ar6
      003D51 C0 07            [24] 1533 	push	ar7
      003D53 C0 04            [24] 1534 	push	ar4
      003D55 C0 05            [24] 1535 	push	ar5
      003D57 74 B6            [12] 1536 	mov	a,#___str_10
      003D59 C0 E0            [24] 1537 	push	acc
      003D5B 74 67            [12] 1538 	mov	a,#(___str_10 >> 8)
      003D5D C0 E0            [24] 1539 	push	acc
      003D5F 74 80            [12] 1540 	mov	a,#0x80
      003D61 C0 E0            [24] 1541 	push	acc
      003D63 12 54 C1         [24] 1542 	lcall	_printf
      003D66 E5 81            [12] 1543 	mov	a,sp
      003D68 24 F9            [12] 1544 	add	a,#0xf9
      003D6A F5 81            [12] 1545 	mov	sp,a
                                   1546 ;	SPI.c:246: return 0;
      003D6C 90 00 00         [24] 1547 	mov	dptr,#0x0000
      003D6F 22               [24] 1548 	ret
      003D70                       1549 00106$:
                                   1550 ;	SPI.c:249: if (num_bytes > 1) {
      003D70 C3               [12] 1551 	clr	c
      003D71 74 01            [12] 1552 	mov	a,#0x01
      003D73 9E               [12] 1553 	subb	a,r6
      003D74 74 80            [12] 1554 	mov	a,#(0x00 ^ 0x80)
      003D76 8F F0            [24] 1555 	mov	b,r7
      003D78 63 F0 80         [24] 1556 	xrl	b,#0x80
      003D7B 95 F0            [12] 1557 	subb	a,b
      003D7D 50 0B            [24] 1558 	jnc	00109$
                                   1559 ;	SPI.c:250: spi_set_autoinc();
      003D7F C0 05            [24] 1560 	push	ar5
      003D81 C0 04            [24] 1561 	push	ar4
      003D83 12 38 8F         [24] 1562 	lcall	_spi_set_autoinc
      003D86 D0 04            [24] 1563 	pop	ar4
      003D88 D0 05            [24] 1564 	pop	ar5
      003D8A                       1565 00109$:
                                   1566 ;	SPI.c:254: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003D8A 8D 07            [24] 1567 	mov	ar7,r5
                                   1568 ;	SPI.c:255: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003D8C 8C 06            [24] 1569 	mov	ar6,r4
                                   1570 ;	SPI.c:257: spi_control_write(0, 0x01, higher_byte); // High byte
      003D8E 90 03 84         [24] 1571 	mov	dptr,#_spi_control_write_PARM_2
      003D91 74 01            [12] 1572 	mov	a,#0x01
      003D93 F0               [24] 1573 	movx	@dptr,a
      003D94 90 03 85         [24] 1574 	mov	dptr,#_spi_control_write_PARM_3
      003D97 EF               [12] 1575 	mov	a,r7
      003D98 F0               [24] 1576 	movx	@dptr,a
      003D99 75 82 00         [24] 1577 	mov	dpl, #0x00
      003D9C C0 06            [24] 1578 	push	ar6
      003D9E C0 05            [24] 1579 	push	ar5
      003DA0 C0 04            [24] 1580 	push	ar4
      003DA2 12 39 25         [24] 1581 	lcall	_spi_control_write
      003DA5 D0 04            [24] 1582 	pop	ar4
      003DA7 D0 05            [24] 1583 	pop	ar5
      003DA9 D0 06            [24] 1584 	pop	ar6
                                   1585 ;	SPI.c:258: spi_control_write(0, 0x00, lower_byte); // Low byte
      003DAB 90 03 84         [24] 1586 	mov	dptr,#_spi_control_write_PARM_2
      003DAE E4               [12] 1587 	clr	a
      003DAF F0               [24] 1588 	movx	@dptr,a
      003DB0 90 03 85         [24] 1589 	mov	dptr,#_spi_control_write_PARM_3
      003DB3 EE               [12] 1590 	mov	a,r6
      003DB4 F0               [24] 1591 	movx	@dptr,a
      003DB5 75 82 00         [24] 1592 	mov	dpl, #0x00
      003DB8 C0 05            [24] 1593 	push	ar5
      003DBA C0 04            [24] 1594 	push	ar4
      003DBC 12 39 25         [24] 1595 	lcall	_spi_control_write
                                   1596 ;	SPI.c:261: CS_LOW; // Pull CS Low
                                   1597 ;	assignBit
      003DBF C2 91            [12] 1598 	clr	_P1_1
                                   1599 ;	SPI.c:262: SPI_send(opcode); // Send opcode
      003DC1 75 82 3A         [24] 1600 	mov	dpl, #0x3a
      003DC4 12 39 90         [24] 1601 	lcall	_SPI_send
      003DC7 D0 04            [24] 1602 	pop	ar4
      003DC9 D0 05            [24] 1603 	pop	ar5
                                   1604 ;	SPI.c:265: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003DCB 90 03 9A         [24] 1605 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003DCE E0               [24] 1606 	movx	a,@dptr
      003DCF FE               [12] 1607 	mov	r6,a
      003DD0 A3               [24] 1608 	inc	dptr
      003DD1 E0               [24] 1609 	movx	a,@dptr
      003DD2 FF               [12] 1610 	mov	r7,a
      003DD3 C0 07            [24] 1611 	push	ar7
      003DD5 C0 06            [24] 1612 	push	ar6
      003DD7 C0 04            [24] 1613 	push	ar4
      003DD9 C0 05            [24] 1614 	push	ar5
      003DDB C0 06            [24] 1615 	push	ar6
      003DDD C0 07            [24] 1616 	push	ar7
      003DDF 74 E2            [12] 1617 	mov	a,#___str_11
      003DE1 C0 E0            [24] 1618 	push	acc
      003DE3 74 67            [12] 1619 	mov	a,#(___str_11 >> 8)
      003DE5 C0 E0            [24] 1620 	push	acc
      003DE7 74 80            [12] 1621 	mov	a,#0x80
      003DE9 C0 E0            [24] 1622 	push	acc
      003DEB 12 54 C1         [24] 1623 	lcall	_printf
      003DEE E5 81            [12] 1624 	mov	a,sp
      003DF0 24 F9            [12] 1625 	add	a,#0xf9
      003DF2 F5 81            [12] 1626 	mov	sp,a
      003DF4 D0 06            [24] 1627 	pop	ar6
      003DF6 D0 07            [24] 1628 	pop	ar7
                                   1629 ;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
      003DF8 90 03 97         [24] 1630 	mov	dptr,#_spi_buffer_read_PARM_3
      003DFB E0               [24] 1631 	movx	a,@dptr
      003DFC FB               [12] 1632 	mov	r3,a
      003DFD A3               [24] 1633 	inc	dptr
      003DFE E0               [24] 1634 	movx	a,@dptr
      003DFF FC               [12] 1635 	mov	r4,a
      003E00 A3               [24] 1636 	inc	dptr
      003E01 E0               [24] 1637 	movx	a,@dptr
      003E02 FD               [12] 1638 	mov	r5,a
      003E03 79 00            [12] 1639 	mov	r1,#0x00
      003E05 7A 00            [12] 1640 	mov	r2,#0x00
      003E07                       1641 00112$:
      003E07 C3               [12] 1642 	clr	c
      003E08 E9               [12] 1643 	mov	a,r1
      003E09 9E               [12] 1644 	subb	a,r6
      003E0A EA               [12] 1645 	mov	a,r2
      003E0B 64 80            [12] 1646 	xrl	a,#0x80
      003E0D 8F F0            [24] 1647 	mov	b,r7
      003E0F 63 F0 80         [24] 1648 	xrl	b,#0x80
      003E12 95 F0            [12] 1649 	subb	a,b
      003E14 50 37            [24] 1650 	jnc	00110$
                                   1651 ;	SPI.c:267: *data_ptr = SPI_ReadByte(); // Read data
      003E16 C0 07            [24] 1652 	push	ar7
      003E18 C0 06            [24] 1653 	push	ar6
      003E1A C0 05            [24] 1654 	push	ar5
      003E1C C0 04            [24] 1655 	push	ar4
      003E1E C0 03            [24] 1656 	push	ar3
      003E20 C0 02            [24] 1657 	push	ar2
      003E22 C0 01            [24] 1658 	push	ar1
      003E24 12 38 7D         [24] 1659 	lcall	_SPI_ReadByte
      003E27 A8 82            [24] 1660 	mov	r0, dpl
      003E29 D0 01            [24] 1661 	pop	ar1
      003E2B D0 02            [24] 1662 	pop	ar2
      003E2D D0 03            [24] 1663 	pop	ar3
      003E2F D0 04            [24] 1664 	pop	ar4
      003E31 D0 05            [24] 1665 	pop	ar5
      003E33 D0 06            [24] 1666 	pop	ar6
      003E35 D0 07            [24] 1667 	pop	ar7
      003E37 8B 82            [24] 1668 	mov	dpl,r3
      003E39 8C 83            [24] 1669 	mov	dph,r4
      003E3B 8D F0            [24] 1670 	mov	b,r5
      003E3D E8               [12] 1671 	mov	a,r0
      003E3E 12 50 AB         [24] 1672 	lcall	__gptrput
      003E41 A3               [24] 1673 	inc	dptr
      003E42 AB 82            [24] 1674 	mov	r3,dpl
      003E44 AC 83            [24] 1675 	mov	r4,dph
                                   1676 ;	SPI.c:269: data_ptr++;
                                   1677 ;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
      003E46 09               [12] 1678 	inc	r1
      003E47 B9 00 BD         [24] 1679 	cjne	r1,#0x00,00112$
      003E4A 0A               [12] 1680 	inc	r2
      003E4B 80 BA            [24] 1681 	sjmp	00112$
      003E4D                       1682 00110$:
                                   1683 ;	SPI.c:271: CS_HIGH; // Pull CS High
                                   1684 ;	assignBit
      003E4D D2 91            [12] 1685 	setb	_P1_1
                                   1686 ;	SPI.c:272: return (uint16_t) num_bytes;
      003E4F 8E 82            [24] 1687 	mov	dpl, r6
      003E51 8F 83            [24] 1688 	mov	dph, r7
                                   1689 ;	SPI.c:273: }
      003E53 22               [24] 1690 	ret
                                   1691 ;------------------------------------------------------------
                                   1692 ;Allocation info for local variables in function 'spi_buffer_write'
                                   1693 ;------------------------------------------------------------
                                   1694 ;start_address             Allocated with name '_spi_buffer_write_PARM_2'
                                   1695 ;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
                                   1696 ;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_161'
                                   1697 ;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_166'
                                   1698 ;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_166'
                                   1699 ;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_167'
                                   1700 ;i                         Allocated with name '_spi_buffer_write_i_20002_168'
                                   1701 ;------------------------------------------------------------
                                   1702 ;	SPI.c:276: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1703 ;	-----------------------------------------
                                   1704 ;	 function spi_buffer_write
                                   1705 ;	-----------------------------------------
      003E54                       1706 _spi_buffer_write:
      003E54 AF 83            [24] 1707 	mov	r7,dph
      003E56 E5 82            [12] 1708 	mov	a,dpl
      003E58 90 03 A1         [24] 1709 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003E5B F0               [24] 1710 	movx	@dptr,a
      003E5C EF               [12] 1711 	mov	a,r7
      003E5D A3               [24] 1712 	inc	dptr
      003E5E F0               [24] 1713 	movx	@dptr,a
                                   1714 ;	SPI.c:278: if (num_bytes < 1)
      003E5F 90 03 A1         [24] 1715 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003E62 E0               [24] 1716 	movx	a,@dptr
      003E63 FE               [12] 1717 	mov	r6,a
      003E64 A3               [24] 1718 	inc	dptr
      003E65 E0               [24] 1719 	movx	a,@dptr
      003E66 FF               [12] 1720 	mov	r7,a
      003E67 C3               [12] 1721 	clr	c
      003E68 EE               [12] 1722 	mov	a,r6
      003E69 94 01            [12] 1723 	subb	a,#0x01
      003E6B EF               [12] 1724 	mov	a,r7
      003E6C 64 80            [12] 1725 	xrl	a,#0x80
      003E6E 94 80            [12] 1726 	subb	a,#0x80
      003E70 50 1A            [24] 1727 	jnc	00102$
                                   1728 ;	SPI.c:280: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003E72 C0 06            [24] 1729 	push	ar6
      003E74 C0 07            [24] 1730 	push	ar7
      003E76 74 7C            [12] 1731 	mov	a,#___str_8
      003E78 C0 E0            [24] 1732 	push	acc
      003E7A 74 67            [12] 1733 	mov	a,#(___str_8 >> 8)
      003E7C C0 E0            [24] 1734 	push	acc
      003E7E 74 80            [12] 1735 	mov	a,#0x80
      003E80 C0 E0            [24] 1736 	push	acc
      003E82 12 54 C1         [24] 1737 	lcall	_printf
      003E85 E5 81            [12] 1738 	mov	a,sp
      003E87 24 FB            [12] 1739 	add	a,#0xfb
      003E89 F5 81            [12] 1740 	mov	sp,a
                                   1741 ;	SPI.c:281: return;
      003E8B 22               [24] 1742 	ret
      003E8C                       1743 00102$:
                                   1744 ;	SPI.c:283: if (start_address > 0x1FFF) {
      003E8C 90 03 9C         [24] 1745 	mov	dptr,#_spi_buffer_write_PARM_2
      003E8F E0               [24] 1746 	movx	a,@dptr
      003E90 FC               [12] 1747 	mov	r4,a
      003E91 A3               [24] 1748 	inc	dptr
      003E92 E0               [24] 1749 	movx	a,@dptr
      003E93 FD               [12] 1750 	mov	r5,a
      003E94 8C 02            [24] 1751 	mov	ar2,r4
      003E96 8D 03            [24] 1752 	mov	ar3,r5
      003E98 C3               [12] 1753 	clr	c
      003E99 74 FF            [12] 1754 	mov	a,#0xff
      003E9B 9A               [12] 1755 	subb	a,r2
      003E9C 74 1F            [12] 1756 	mov	a,#0x1f
      003E9E 9B               [12] 1757 	subb	a,r3
      003E9F 50 1A            [24] 1758 	jnc	00104$
                                   1759 ;	SPI.c:284: printf("\n\rInvalid address: %04X\n\r", start_address);
      003EA1 C0 04            [24] 1760 	push	ar4
      003EA3 C0 05            [24] 1761 	push	ar5
      003EA5 74 9C            [12] 1762 	mov	a,#___str_9
      003EA7 C0 E0            [24] 1763 	push	acc
      003EA9 74 67            [12] 1764 	mov	a,#(___str_9 >> 8)
      003EAB C0 E0            [24] 1765 	push	acc
      003EAD 74 80            [12] 1766 	mov	a,#0x80
      003EAF C0 E0            [24] 1767 	push	acc
      003EB1 12 54 C1         [24] 1768 	lcall	_printf
      003EB4 E5 81            [12] 1769 	mov	a,sp
      003EB6 24 FB            [12] 1770 	add	a,#0xfb
      003EB8 F5 81            [12] 1771 	mov	sp,a
                                   1772 ;	SPI.c:285: return;
      003EBA 22               [24] 1773 	ret
      003EBB                       1774 00104$:
                                   1775 ;	SPI.c:289: if (num_bytes > 1) {
      003EBB C3               [12] 1776 	clr	c
      003EBC 74 01            [12] 1777 	mov	a,#0x01
      003EBE 9E               [12] 1778 	subb	a,r6
      003EBF 74 80            [12] 1779 	mov	a,#(0x00 ^ 0x80)
      003EC1 8F F0            [24] 1780 	mov	b,r7
      003EC3 63 F0 80         [24] 1781 	xrl	b,#0x80
      003EC6 95 F0            [12] 1782 	subb	a,b
      003EC8 50 0B            [24] 1783 	jnc	00106$
                                   1784 ;	SPI.c:290: spi_set_autoinc();
      003ECA C0 05            [24] 1785 	push	ar5
      003ECC C0 04            [24] 1786 	push	ar4
      003ECE 12 38 8F         [24] 1787 	lcall	_spi_set_autoinc
      003ED1 D0 04            [24] 1788 	pop	ar4
      003ED3 D0 05            [24] 1789 	pop	ar5
      003ED5                       1790 00106$:
                                   1791 ;	SPI.c:293: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003ED5 8D 07            [24] 1792 	mov	ar7,r5
                                   1793 ;	SPI.c:294: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003ED7 8C 06            [24] 1794 	mov	ar6,r4
                                   1795 ;	SPI.c:296: spi_control_write(0, 0x03, higher_byte); // High byte
      003ED9 90 03 84         [24] 1796 	mov	dptr,#_spi_control_write_PARM_2
      003EDC 74 03            [12] 1797 	mov	a,#0x03
      003EDE F0               [24] 1798 	movx	@dptr,a
      003EDF 90 03 85         [24] 1799 	mov	dptr,#_spi_control_write_PARM_3
      003EE2 EF               [12] 1800 	mov	a,r7
      003EE3 F0               [24] 1801 	movx	@dptr,a
      003EE4 75 82 00         [24] 1802 	mov	dpl, #0x00
      003EE7 C0 06            [24] 1803 	push	ar6
      003EE9 C0 05            [24] 1804 	push	ar5
      003EEB C0 04            [24] 1805 	push	ar4
      003EED 12 39 25         [24] 1806 	lcall	_spi_control_write
      003EF0 D0 04            [24] 1807 	pop	ar4
      003EF2 D0 05            [24] 1808 	pop	ar5
      003EF4 D0 06            [24] 1809 	pop	ar6
                                   1810 ;	SPI.c:297: spi_control_write(0, 0x02, lower_byte); // Low byte
      003EF6 90 03 84         [24] 1811 	mov	dptr,#_spi_control_write_PARM_2
      003EF9 74 02            [12] 1812 	mov	a,#0x02
      003EFB F0               [24] 1813 	movx	@dptr,a
      003EFC 90 03 85         [24] 1814 	mov	dptr,#_spi_control_write_PARM_3
      003EFF EE               [12] 1815 	mov	a,r6
      003F00 F0               [24] 1816 	movx	@dptr,a
      003F01 75 82 00         [24] 1817 	mov	dpl, #0x00
      003F04 C0 05            [24] 1818 	push	ar5
      003F06 C0 04            [24] 1819 	push	ar4
      003F08 12 39 25         [24] 1820 	lcall	_spi_control_write
                                   1821 ;	SPI.c:300: CS_LOW; // Pull CS Low
                                   1822 ;	assignBit
      003F0B C2 91            [12] 1823 	clr	_P1_1
                                   1824 ;	SPI.c:301: SPI_send(opcode); // Send opcode
      003F0D 75 82 7A         [24] 1825 	mov	dpl, #0x7a
      003F10 12 39 90         [24] 1826 	lcall	_SPI_send
      003F13 D0 04            [24] 1827 	pop	ar4
      003F15 D0 05            [24] 1828 	pop	ar5
                                   1829 ;	SPI.c:304: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003F17 90 03 A1         [24] 1830 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003F1A E0               [24] 1831 	movx	a,@dptr
      003F1B FE               [12] 1832 	mov	r6,a
      003F1C A3               [24] 1833 	inc	dptr
      003F1D E0               [24] 1834 	movx	a,@dptr
      003F1E FF               [12] 1835 	mov	r7,a
      003F1F C0 07            [24] 1836 	push	ar7
      003F21 C0 06            [24] 1837 	push	ar6
      003F23 C0 04            [24] 1838 	push	ar4
      003F25 C0 05            [24] 1839 	push	ar5
      003F27 C0 06            [24] 1840 	push	ar6
      003F29 C0 07            [24] 1841 	push	ar7
      003F2B 74 1D            [12] 1842 	mov	a,#___str_12
      003F2D C0 E0            [24] 1843 	push	acc
      003F2F 74 68            [12] 1844 	mov	a,#(___str_12 >> 8)
      003F31 C0 E0            [24] 1845 	push	acc
      003F33 74 80            [12] 1846 	mov	a,#0x80
      003F35 C0 E0            [24] 1847 	push	acc
      003F37 12 54 C1         [24] 1848 	lcall	_printf
      003F3A E5 81            [12] 1849 	mov	a,sp
      003F3C 24 F9            [12] 1850 	add	a,#0xf9
      003F3E F5 81            [12] 1851 	mov	sp,a
      003F40 D0 06            [24] 1852 	pop	ar6
      003F42 D0 07            [24] 1853 	pop	ar7
                                   1854 ;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
      003F44 90 03 9E         [24] 1855 	mov	dptr,#_spi_buffer_write_PARM_3
      003F47 E0               [24] 1856 	movx	a,@dptr
      003F48 FB               [12] 1857 	mov	r3,a
      003F49 A3               [24] 1858 	inc	dptr
      003F4A E0               [24] 1859 	movx	a,@dptr
      003F4B FC               [12] 1860 	mov	r4,a
      003F4C A3               [24] 1861 	inc	dptr
      003F4D E0               [24] 1862 	movx	a,@dptr
      003F4E FD               [12] 1863 	mov	r5,a
      003F4F 79 00            [12] 1864 	mov	r1,#0x00
      003F51 7A 00            [12] 1865 	mov	r2,#0x00
      003F53                       1866 00109$:
      003F53 C3               [12] 1867 	clr	c
      003F54 E9               [12] 1868 	mov	a,r1
      003F55 9E               [12] 1869 	subb	a,r6
      003F56 EA               [12] 1870 	mov	a,r2
      003F57 64 80            [12] 1871 	xrl	a,#0x80
      003F59 8F F0            [24] 1872 	mov	b,r7
      003F5B 63 F0 80         [24] 1873 	xrl	b,#0x80
      003F5E 95 F0            [12] 1874 	subb	a,b
      003F60 50 37            [24] 1875 	jnc	00107$
                                   1876 ;	SPI.c:307: SPI_send(*data_ptr); // Send data
      003F62 8B 82            [24] 1877 	mov	dpl,r3
      003F64 8C 83            [24] 1878 	mov	dph,r4
      003F66 8D F0            [24] 1879 	mov	b,r5
      003F68 12 5E E3         [24] 1880 	lcall	__gptrget
      003F6B F8               [12] 1881 	mov	r0,a
      003F6C A3               [24] 1882 	inc	dptr
      003F6D AB 82            [24] 1883 	mov	r3,dpl
      003F6F AC 83            [24] 1884 	mov	r4,dph
      003F71 88 82            [24] 1885 	mov	dpl, r0
      003F73 C0 07            [24] 1886 	push	ar7
      003F75 C0 06            [24] 1887 	push	ar6
      003F77 C0 05            [24] 1888 	push	ar5
      003F79 C0 04            [24] 1889 	push	ar4
      003F7B C0 03            [24] 1890 	push	ar3
      003F7D C0 02            [24] 1891 	push	ar2
      003F7F C0 01            [24] 1892 	push	ar1
      003F81 12 39 90         [24] 1893 	lcall	_SPI_send
      003F84 D0 01            [24] 1894 	pop	ar1
      003F86 D0 02            [24] 1895 	pop	ar2
      003F88 D0 03            [24] 1896 	pop	ar3
      003F8A D0 04            [24] 1897 	pop	ar4
      003F8C D0 05            [24] 1898 	pop	ar5
      003F8E D0 06            [24] 1899 	pop	ar6
      003F90 D0 07            [24] 1900 	pop	ar7
                                   1901 ;	SPI.c:308: data_ptr++;
                                   1902 ;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
      003F92 09               [12] 1903 	inc	r1
      003F93 B9 00 BD         [24] 1904 	cjne	r1,#0x00,00109$
      003F96 0A               [12] 1905 	inc	r2
      003F97 80 BA            [24] 1906 	sjmp	00109$
      003F99                       1907 00107$:
                                   1908 ;	SPI.c:310: CS_HIGH; // Pull CS High
                                   1909 ;	assignBit
      003F99 D2 91            [12] 1910 	setb	_P1_1
                                   1911 ;	SPI.c:311: }
      003F9B 22               [24] 1912 	ret
                                   1913 	.area CSEG    (CODE)
                                   1914 	.area CONST   (CODE)
                                   1915 	.area CONST   (CODE)
      00662E                       1916 ___str_0:
      00662E 77 72 6F 6E 67 20 62  1917 	.ascii "wrong bank"
             61 6E 6B
      006638 00                    1918 	.db 0x00
                                   1919 	.area CSEG    (CODE)
                                   1920 	.area CONST   (CODE)
      006639                       1921 ___str_1:
      006639 57 72 69 74 65 3A 20  1922 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      00665B 0A                    1923 	.db 0x0a
      00665C 0D                    1924 	.db 0x0d
      00665D 00                    1925 	.db 0x00
                                   1926 	.area CSEG    (CODE)
                                   1927 	.area CONST   (CODE)
      00665E                       1928 ___str_2:
      00665E 0A                    1929 	.db 0x0a
      00665F 0D                    1930 	.db 0x0d
      006660 49 6E 76 61 6C 69 64  1931 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      006695 0A                    1932 	.db 0x0a
      006696 0D                    1933 	.db 0x0d
      006697 00                    1934 	.db 0x00
                                   1935 	.area CSEG    (CODE)
                                   1936 	.area CONST   (CODE)
      006698                       1937 ___str_3:
      006698 52 65 61 64 3A 20 41  1938 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      0066B9 0A                    1939 	.db 0x0a
      0066BA 0D                    1940 	.db 0x0d
      0066BB 00                    1941 	.db 0x00
                                   1942 	.area CSEG    (CODE)
                                   1943 	.area CONST   (CODE)
      0066BC                       1944 ___str_4:
      0066BC 50 48 59 20 57 72 69  1945 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      0066E2 0A                    1946 	.db 0x0a
      0066E3 0D                    1947 	.db 0x0d
      0066E4 00                    1948 	.db 0x00
                                   1949 	.area CSEG    (CODE)
                                   1950 	.area CONST   (CODE)
      0066E5                       1951 ___str_5:
      0066E5 50 48 59 20 52 65 61  1952 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      00670A 0A                    1953 	.db 0x0a
      00670B 0D                    1954 	.db 0x0d
      00670C 00                    1955 	.db 0x00
                                   1956 	.area CSEG    (CODE)
                                   1957 	.area CONST   (CODE)
      00670D                       1958 ___str_6:
      00670D 0A                    1959 	.db 0x0a
      00670E 0D                    1960 	.db 0x0d
      00670F 49 6E 76 61 6C 69 64  1961 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      006748 0A                    1962 	.db 0x0a
      006749 0D                    1963 	.db 0x0d
      00674A 00                    1964 	.db 0x00
                                   1965 	.area CSEG    (CODE)
                                   1966 	.area CONST   (CODE)
      00674B                       1967 ___str_7:
      00674B 0A                    1968 	.db 0x0a
      00674C 0D                    1969 	.db 0x0d
      00674D 42 75 66 66 65 72 20  1970 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      006779 0A                    1971 	.db 0x0a
      00677A 0D                    1972 	.db 0x0d
      00677B 00                    1973 	.db 0x00
                                   1974 	.area CSEG    (CODE)
                                   1975 	.area CONST   (CODE)
      00677C                       1976 ___str_8:
      00677C 0A                    1977 	.db 0x0a
      00677D 0D                    1978 	.db 0x0d
      00677E 49 6E 76 61 6C 69 64  1979 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      006799 0A                    1980 	.db 0x0a
      00679A 0D                    1981 	.db 0x0d
      00679B 00                    1982 	.db 0x00
                                   1983 	.area CSEG    (CODE)
                                   1984 	.area CONST   (CODE)
      00679C                       1985 ___str_9:
      00679C 0A                    1986 	.db 0x0a
      00679D 0D                    1987 	.db 0x0d
      00679E 49 6E 76 61 6C 69 64  1988 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      0067B3 0A                    1989 	.db 0x0a
      0067B4 0D                    1990 	.db 0x0d
      0067B5 00                    1991 	.db 0x00
                                   1992 	.area CSEG    (CODE)
                                   1993 	.area CONST   (CODE)
      0067B6                       1994 ___str_10:
      0067B6 0A                    1995 	.db 0x0a
      0067B7 49 6E 76 61 6C 69 64  1996 	.ascii "Invalid RX Address: Start 0x%04X, Size %d"
             20 52 58 20 41 64 64
             72 65 73 73 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 53
             69 7A 65 20 25 64
      0067E0 0A                    1997 	.db 0x0a
      0067E1 00                    1998 	.db 0x00
                                   1999 	.area CSEG    (CODE)
                                   2000 	.area CONST   (CODE)
      0067E2                       2001 ___str_11:
      0067E2 52 65 61 64 69 6E 67  2002 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      00681A 0A                    2003 	.db 0x0a
      00681B 0D                    2004 	.db 0x0d
      00681C 00                    2005 	.db 0x00
                                   2006 	.area CSEG    (CODE)
                                   2007 	.area CONST   (CODE)
      00681D                       2008 ___str_12:
      00681D 57 72 69 74 69 6E 67  2009 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      006853 0A                    2010 	.db 0x0a
      006854 0D                    2011 	.db 0x0d
      006855 00                    2012 	.db 0x00
                                   2013 	.area CSEG    (CODE)
                                   2014 	.area XINIT   (CODE)
                                   2015 	.area CABS    (ABS,CODE)

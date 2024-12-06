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
      000363                        498 _SPI_ReadByte_received_data_10000_68:
      000363                        499 	.ds 1
      000364                        500 _select_reg_bank_bank_10000_72:
      000364                        501 	.ds 1
      000365                        502 _select_reg_bank_data_10001_74:
      000365                        503 	.ds 1
      000366                        504 _spi_control_write_PARM_2:
      000366                        505 	.ds 1
      000367                        506 _spi_control_write_PARM_3:
      000367                        507 	.ds 1
      000368                        508 _spi_control_write_reg_bank_10000_77:
      000368                        509 	.ds 1
      000369                        510 _SPI_send_data_10000_81:
      000369                        511 	.ds 1
      00036A                        512 _eth_spi_read_PARM_2:
      00036A                        513 	.ds 1
      00036B                        514 _eth_spi_read_addr_10000_86:
      00036B                        515 	.ds 1
      00036C                        516 _phy_spi_write_PARM_2:
      00036C                        517 	.ds 2
      00036E                        518 _phy_spi_write_addr_10000_90:
      00036E                        519 	.ds 1
      00036F                        520 _mac_spi_read_PARM_2:
      00036F                        521 	.ds 1
      000370                        522 _mac_spi_read_addr_10000_92:
      000370                        523 	.ds 1
      000371                        524 _phy_spi_read_addr_10000_96:
      000371                        525 	.ds 1
      000372                        526 _busy_wait_data_10000_100:
      000372                        527 	.ds 1
      000373                        528 _buffer_init_PARM_2:
      000373                        529 	.ds 2
      000375                        530 _buffer_init_start_address_10000_102:
      000375                        531 	.ds 2
      000377                        532 _spi_buffer_read_PARM_2:
      000377                        533 	.ds 2
      000379                        534 _spi_buffer_read_PARM_3:
      000379                        535 	.ds 3
      00037C                        536 _spi_buffer_read_num_bytes_10000_106:
      00037C                        537 	.ds 2
      00037E                        538 _spi_buffer_read_i_20002_113:
      00037E                        539 	.ds 2
      000380                        540 _spi_buffer_write_PARM_2:
      000380                        541 	.ds 2
      000382                        542 _spi_buffer_write_PARM_3:
      000382                        543 	.ds 3
      000385                        544 _spi_buffer_write_num_bytes_10000_115:
      000385                        545 	.ds 2
      000387                        546 _spi_buffer_write_i_20002_122:
      000387                        547 	.ds 2
                                    548 ;--------------------------------------------------------
                                    549 ; absolute external ram data
                                    550 ;--------------------------------------------------------
                                    551 	.area XABS    (ABS,XDATA)
                                    552 ;--------------------------------------------------------
                                    553 ; initialized external ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area XISEG   (XDATA)
                                    556 	.area HOME    (CODE)
                                    557 	.area GSINIT0 (CODE)
                                    558 	.area GSINIT1 (CODE)
                                    559 	.area GSINIT2 (CODE)
                                    560 	.area GSINIT3 (CODE)
                                    561 	.area GSINIT4 (CODE)
                                    562 	.area GSINIT5 (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.area GSFINAL (CODE)
                                    565 	.area CSEG    (CODE)
                                    566 ;--------------------------------------------------------
                                    567 ; global & static initialisations
                                    568 ;--------------------------------------------------------
                                    569 	.area HOME    (CODE)
                                    570 	.area GSINIT  (CODE)
                                    571 	.area GSFINAL (CODE)
                                    572 	.area GSINIT  (CODE)
                                    573 ;--------------------------------------------------------
                                    574 ; Home
                                    575 ;--------------------------------------------------------
                                    576 	.area HOME    (CODE)
                                    577 	.area HOME    (CODE)
                                    578 ;--------------------------------------------------------
                                    579 ; code
                                    580 ;--------------------------------------------------------
                                    581 	.area CSEG    (CODE)
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'SPI_ReadByte'
                                    584 ;------------------------------------------------------------
                                    585 ;received_data             Allocated with name '_SPI_ReadByte_received_data_10000_68'
                                    586 ;------------------------------------------------------------
                                    587 ;	SPI.c:4: uint8_t SPI_ReadByte(void)
                                    588 ;	-----------------------------------------
                                    589 ;	 function SPI_ReadByte
                                    590 ;	-----------------------------------------
      003347                        591 _SPI_ReadByte:
                           000007   592 	ar7 = 0x07
                           000006   593 	ar6 = 0x06
                           000005   594 	ar5 = 0x05
                           000004   595 	ar4 = 0x04
                           000003   596 	ar3 = 0x03
                           000002   597 	ar2 = 0x02
                           000001   598 	ar1 = 0x01
                           000000   599 	ar0 = 0x00
                                    600 ;	SPI.c:9: SPDAT = 0xFF;
      003347 75 C5 FF         [24]  601 	mov	_SPDAT,#0xff
                                    602 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      00334A                        603 00101$:
      00334A E5 C4            [12]  604 	mov	a,_SPSTA
      00334C 30 E7 FB         [24]  605 	jnb	acc.7,00101$
                                    606 ;	SPI.c:17: received_data = SPDAT;
      00334F 90 03 63         [24]  607 	mov	dptr,#_SPI_ReadByte_received_data_10000_68
      003352 E5 C5            [12]  608 	mov	a,_SPDAT
      003354 F0               [24]  609 	movx	@dptr,a
                                    610 ;	SPI.c:19: return received_data;
      003355 E0               [24]  611 	movx	a,@dptr
                                    612 ;	SPI.c:20: }
      003356 F5 82            [12]  613 	mov	dpl,a
      003358 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    617 ;------------------------------------------------------------
                                    618 ;	SPI.c:22: void spi_set_autoinc(void)
                                    619 ;	-----------------------------------------
                                    620 ;	 function spi_set_autoinc
                                    621 ;	-----------------------------------------
      003359                        622 _spi_set_autoinc:
                                    623 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    624 ;	assignBit
      003359 C2 91            [12]  625 	clr	_P1_1
                                    626 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      00335B 75 82 5E         [24]  627 	mov	dpl, #0x5e
      00335E 12 34 5A         [24]  628 	lcall	_SPI_send
                                    629 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      003361 75 82 80         [24]  630 	mov	dpl, #0x80
      003364 12 34 5A         [24]  631 	lcall	_SPI_send
                                    632 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    633 ;	assignBit
      003367 D2 91            [12]  634 	setb	_P1_1
                                    635 ;	SPI.c:30: }
      003369 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'select_reg_bank'
                                    639 ;------------------------------------------------------------
                                    640 ;bank                      Allocated with name '_select_reg_bank_bank_10000_72'
                                    641 ;data                      Allocated with name '_select_reg_bank_data_10001_74'
                                    642 ;i                         Allocated with name '_select_reg_bank_i_20001_76'
                                    643 ;------------------------------------------------------------
                                    644 ;	SPI.c:33: void select_reg_bank(uint8_t bank)
                                    645 ;	-----------------------------------------
                                    646 ;	 function select_reg_bank
                                    647 ;	-----------------------------------------
      00336A                        648 _select_reg_bank:
      00336A E5 82            [12]  649 	mov	a,dpl
      00336C 90 03 64         [24]  650 	mov	dptr,#_select_reg_bank_bank_10000_72
      00336F F0               [24]  651 	movx	@dptr,a
                                    652 ;	SPI.c:35: CS_LOW;
                                    653 ;	assignBit
      003370 C2 91            [12]  654 	clr	_P1_1
                                    655 ;	SPI.c:36: SPI_send(0X1F); // Send the address
      003372 75 82 1F         [24]  656 	mov	dpl, #0x1f
      003375 12 34 5A         [24]  657 	lcall	_SPI_send
                                    658 ;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
      003378 12 33 47         [24]  659 	lcall	_SPI_ReadByte
      00337B AF 82            [24]  660 	mov	r7, dpl
                                    661 ;	SPI.c:38: CS_HIGH;
                                    662 ;	assignBit
      00337D D2 91            [12]  663 	setb	_P1_1
                                    664 ;	SPI.c:41: data &= ~0x03; // Clear the last two bits
      00337F 53 07 FC         [24]  665 	anl	ar7,#0xfc
                                    666 ;	SPI.c:42: switch (bank)
      003382 90 03 64         [24]  667 	mov	dptr,#_select_reg_bank_bank_10000_72
      003385 E0               [24]  668 	movx	a,@dptr
      003386 FE               [12]  669 	mov  r6,a
      003387 24 FC            [12]  670 	add	a,#0xff - 0x03
      003389 40 30            [24]  671 	jc	00105$
      00338B EE               [12]  672 	mov	a,r6
      00338C 2E               [12]  673 	add	a,r6
                                    674 ;	SPI.c:44: case 0:
      00338D 90 33 91         [24]  675 	mov	dptr,#00133$
      003390 73               [24]  676 	jmp	@a+dptr
      003391                        677 00133$:
      003391 80 06            [24]  678 	sjmp	00101$
      003393 80 0B            [24]  679 	sjmp	00102$
      003395 80 12            [24]  680 	sjmp	00103$
      003397 80 19            [24]  681 	sjmp	00104$
      003399                        682 00101$:
                                    683 ;	SPI.c:45: data |= 0x00; // Last two bits: 00
      003399 90 03 65         [24]  684 	mov	dptr,#_select_reg_bank_data_10001_74
      00339C EF               [12]  685 	mov	a,r7
      00339D F0               [24]  686 	movx	@dptr,a
                                    687 ;	SPI.c:46: break;
                                    688 ;	SPI.c:47: case 1:
      00339E 80 31            [24]  689 	sjmp	00115$
      0033A0                        690 00102$:
                                    691 ;	SPI.c:48: data |= 0x01; // Last two bits: 01
      0033A0 90 03 65         [24]  692 	mov	dptr,#_select_reg_bank_data_10001_74
      0033A3 74 01            [12]  693 	mov	a,#0x01
      0033A5 4F               [12]  694 	orl	a,r7
      0033A6 F0               [24]  695 	movx	@dptr,a
                                    696 ;	SPI.c:49: break;
                                    697 ;	SPI.c:50: case 2:
      0033A7 80 28            [24]  698 	sjmp	00115$
      0033A9                        699 00103$:
                                    700 ;	SPI.c:51: data |= 0x02; // Last two bits: 10
      0033A9 90 03 65         [24]  701 	mov	dptr,#_select_reg_bank_data_10001_74
      0033AC 74 02            [12]  702 	mov	a,#0x02
      0033AE 4F               [12]  703 	orl	a,r7
      0033AF F0               [24]  704 	movx	@dptr,a
                                    705 ;	SPI.c:52: break;
                                    706 ;	SPI.c:53: case 3:
      0033B0 80 1F            [24]  707 	sjmp	00115$
      0033B2                        708 00104$:
                                    709 ;	SPI.c:54: data |= 0x03; // Last two bits: 11
      0033B2 90 03 65         [24]  710 	mov	dptr,#_select_reg_bank_data_10001_74
      0033B5 74 03            [12]  711 	mov	a,#0x03
      0033B7 4F               [12]  712 	orl	a,r7
      0033B8 F0               [24]  713 	movx	@dptr,a
                                    714 ;	SPI.c:55: break;
                                    715 ;	SPI.c:56: default:
      0033B9 80 16            [24]  716 	sjmp	00115$
      0033BB                        717 00105$:
                                    718 ;	SPI.c:57: printf("wrong bank");
      0033BB 74 6F            [12]  719 	mov	a,#___str_0
      0033BD C0 E0            [24]  720 	push	acc
      0033BF 74 4D            [12]  721 	mov	a,#(___str_0 >> 8)
      0033C1 C0 E0            [24]  722 	push	acc
      0033C3 74 80            [12]  723 	mov	a,#0x80
      0033C5 C0 E0            [24]  724 	push	acc
      0033C7 12 3D 4C         [24]  725 	lcall	_printf
      0033CA 15 81            [12]  726 	dec	sp
      0033CC 15 81            [12]  727 	dec	sp
      0033CE 15 81            [12]  728 	dec	sp
                                    729 ;	SPI.c:58: return;
                                    730 ;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
      0033D0 22               [24]  731 	ret
      0033D1                        732 00115$:
      0033D1 7F 00            [12]  733 	mov	r7,#0x00
      0033D3                        734 00109$:
      0033D3 BF 10 00         [24]  735 	cjne	r7,#0x10,00134$
      0033D6                        736 00134$:
      0033D6 50 03            [24]  737 	jnc	00107$
      0033D8 0F               [12]  738 	inc	r7
      0033D9 80 F8            [24]  739 	sjmp	00109$
      0033DB                        740 00107$:
                                    741 ;	SPI.c:63: CS_LOW;
                                    742 ;	assignBit
      0033DB C2 91            [12]  743 	clr	_P1_1
                                    744 ;	SPI.c:64: SPI_send(0x5F);
      0033DD 75 82 5F         [24]  745 	mov	dpl, #0x5f
      0033E0 12 34 5A         [24]  746 	lcall	_SPI_send
                                    747 ;	SPI.c:65: SPI_send(data); // Send the modified data
      0033E3 90 03 65         [24]  748 	mov	dptr,#_select_reg_bank_data_10001_74
      0033E6 E0               [24]  749 	movx	a,@dptr
      0033E7 F5 82            [12]  750 	mov	dpl,a
      0033E9 12 34 5A         [24]  751 	lcall	_SPI_send
                                    752 ;	SPI.c:66: CS_HIGH;
                                    753 ;	assignBit
      0033EC D2 91            [12]  754 	setb	_P1_1
                                    755 ;	SPI.c:68: }
      0033EE 22               [24]  756 	ret
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'spi_control_write'
                                    759 ;------------------------------------------------------------
                                    760 ;addr                      Allocated with name '_spi_control_write_PARM_2'
                                    761 ;data                      Allocated with name '_spi_control_write_PARM_3'
                                    762 ;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_77'
                                    763 ;opcode                    Allocated with name '_spi_control_write_opcode_10000_78'
                                    764 ;------------------------------------------------------------
                                    765 ;	SPI.c:69: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
                                    766 ;	-----------------------------------------
                                    767 ;	 function spi_control_write
                                    768 ;	-----------------------------------------
      0033EF                        769 _spi_control_write:
      0033EF E5 82            [12]  770 	mov	a,dpl
      0033F1 90 03 68         [24]  771 	mov	dptr,#_spi_control_write_reg_bank_10000_77
      0033F4 F0               [24]  772 	movx	@dptr,a
                                    773 ;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
      0033F5 90 03 66         [24]  774 	mov	dptr,#_spi_control_write_PARM_2
      0033F8 E0               [24]  775 	movx	a,@dptr
      0033F9 24 40            [12]  776 	add	a, #0x40
      0033FB F0               [24]  777 	movx	@dptr,a
                                    778 ;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
      0033FC 90 03 68         [24]  779 	mov	dptr,#_spi_control_write_reg_bank_10000_77
      0033FF E0               [24]  780 	movx	a,@dptr
      003400 F5 82            [12]  781 	mov	dpl,a
      003402 12 33 6A         [24]  782 	lcall	_select_reg_bank
                                    783 ;	SPI.c:77: CS_LOW;
                                    784 ;	assignBit
      003405 C2 91            [12]  785 	clr	_P1_1
                                    786 ;	SPI.c:80: SPI_send(addr);
      003407 90 03 66         [24]  787 	mov	dptr,#_spi_control_write_PARM_2
      00340A E0               [24]  788 	movx	a,@dptr
      00340B FF               [12]  789 	mov	r7,a
      00340C F5 82            [12]  790 	mov	dpl,a
      00340E C0 07            [24]  791 	push	ar7
      003410 12 34 5A         [24]  792 	lcall	_SPI_send
      003413 D0 07            [24]  793 	pop	ar7
                                    794 ;	SPI.c:83: SPI_send(data);
      003415 90 03 67         [24]  795 	mov	dptr,#_spi_control_write_PARM_3
      003418 E0               [24]  796 	movx	a,@dptr
      003419 FE               [12]  797 	mov	r6,a
      00341A F5 82            [12]  798 	mov	dpl,a
      00341C C0 07            [24]  799 	push	ar7
      00341E C0 06            [24]  800 	push	ar6
      003420 12 34 5A         [24]  801 	lcall	_SPI_send
      003423 D0 06            [24]  802 	pop	ar6
      003425 D0 07            [24]  803 	pop	ar7
                                    804 ;	SPI.c:86: CS_HIGH;
                                    805 ;	assignBit
      003427 D2 91            [12]  806 	setb	_P1_1
                                    807 ;	SPI.c:89: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      003429 7D 00            [12]  808 	mov	r5,#0x00
      00342B 7C 00            [12]  809 	mov	r4,#0x00
      00342D C0 06            [24]  810 	push	ar6
      00342F C0 05            [24]  811 	push	ar5
      003431 C0 07            [24]  812 	push	ar7
      003433 C0 04            [24]  813 	push	ar4
      003435 74 7A            [12]  814 	mov	a,#___str_1
      003437 C0 E0            [24]  815 	push	acc
      003439 74 4D            [12]  816 	mov	a,#(___str_1 >> 8)
      00343B C0 E0            [24]  817 	push	acc
      00343D 74 80            [12]  818 	mov	a,#0x80
      00343F C0 E0            [24]  819 	push	acc
      003441 12 3D 4C         [24]  820 	lcall	_printf
      003444 E5 81            [12]  821 	mov	a,sp
      003446 24 F9            [12]  822 	add	a,#0xf9
      003448 F5 81            [12]  823 	mov	sp,a
                                    824 ;	SPI.c:90: }
      00344A 22               [24]  825 	ret
                                    826 ;------------------------------------------------------------
                                    827 ;Allocation info for local variables in function 'configure_SPI'
                                    828 ;------------------------------------------------------------
                                    829 ;	SPI.c:93: void configure_SPI(void)
                                    830 ;	-----------------------------------------
                                    831 ;	 function configure_SPI
                                    832 ;	-----------------------------------------
      00344B                        833 _configure_SPI:
                                    834 ;	SPI.c:95: CS_PIN = 1;
                                    835 ;	assignBit
      00344B D2 91            [12]  836 	setb	_P1_1
                                    837 ;	SPI.c:96: SPCON = 0x00;
      00344D 75 C3 00         [24]  838 	mov	_SPCON,#0x00
                                    839 ;	SPI.c:97: SPCON |= SS_DISABLE;
      003450 43 C3 20         [24]  840 	orl	_SPCON,#0x20
                                    841 ;	SPI.c:98: SPCON |= MASTER_MODE;
      003453 43 C3 10         [24]  842 	orl	_SPCON,#0x10
                                    843 ;	SPI.c:99: SPCON |= SPI_ENABLE;
      003456 43 C3 40         [24]  844 	orl	_SPCON,#0x40
                                    845 ;	SPI.c:100: }
      003459 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'SPI_send'
                                    849 ;------------------------------------------------------------
                                    850 ;data                      Allocated with name '_SPI_send_data_10000_81'
                                    851 ;------------------------------------------------------------
                                    852 ;	SPI.c:103: void SPI_send(uint8_t data)
                                    853 ;	-----------------------------------------
                                    854 ;	 function SPI_send
                                    855 ;	-----------------------------------------
      00345A                        856 _SPI_send:
      00345A E5 82            [12]  857 	mov	a,dpl
      00345C 90 03 69         [24]  858 	mov	dptr,#_SPI_send_data_10000_81
      00345F F0               [24]  859 	movx	@dptr,a
                                    860 ;	SPI.c:106: SPDAT = data;           // Config + MSB of data
      003460 E0               [24]  861 	movx	a,@dptr
      003461 F5 C5            [12]  862 	mov	_SPDAT,a
                                    863 ;	SPI.c:108: while (!(SPSTA & 0x80))
      003463                        864 00101$:
      003463 E5 C4            [12]  865 	mov	a,_SPSTA
      003465 30 E7 FB         [24]  866 	jnb	acc.7,00101$
                                    867 ;	SPI.c:113: }
      003468 22               [24]  868 	ret
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'enc_reset'
                                    871 ;------------------------------------------------------------
                                    872 ;	SPI.c:115: void enc_reset(void)
                                    873 ;	-----------------------------------------
                                    874 ;	 function enc_reset
                                    875 ;	-----------------------------------------
      003469                        876 _enc_reset:
                                    877 ;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    878 ;	assignBit
      003469 C2 91            [12]  879 	clr	_P1_1
                                    880 ;	SPI.c:118: SPI_send(0xFF);            // Send reset command
      00346B 75 82 FF         [24]  881 	mov	dpl, #0xff
      00346E 12 34 5A         [24]  882 	lcall	_SPI_send
                                    883 ;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    884 ;	assignBit
      003471 D2 91            [12]  885 	setb	_P1_1
                                    886 ;	SPI.c:120: }
      003473 22               [24]  887 	ret
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'eth_spi_read'
                                    890 ;------------------------------------------------------------
                                    891 ;bank                      Allocated with name '_eth_spi_read_PARM_2'
                                    892 ;addr                      Allocated with name '_eth_spi_read_addr_10000_86'
                                    893 ;data                      Allocated with name '_eth_spi_read_data_10001_89'
                                    894 ;------------------------------------------------------------
                                    895 ;	SPI.c:122: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
                                    896 ;	-----------------------------------------
                                    897 ;	 function eth_spi_read
                                    898 ;	-----------------------------------------
      003474                        899 _eth_spi_read:
      003474 E5 82            [12]  900 	mov	a,dpl
      003476 90 03 6B         [24]  901 	mov	dptr,#_eth_spi_read_addr_10000_86
      003479 F0               [24]  902 	movx	@dptr,a
                                    903 ;	SPI.c:124: if (addr > 0x1F) {
      00347A E0               [24]  904 	movx	a,@dptr
      00347B FF               [12]  905 	mov  r7,a
      00347C 24 E0            [12]  906 	add	a,#0xff - 0x1f
      00347E 50 19            [24]  907 	jnc	00102$
                                    908 ;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003480 74 9F            [12]  909 	mov	a,#___str_2
      003482 C0 E0            [24]  910 	push	acc
      003484 74 4D            [12]  911 	mov	a,#(___str_2 >> 8)
      003486 C0 E0            [24]  912 	push	acc
      003488 74 80            [12]  913 	mov	a,#0x80
      00348A C0 E0            [24]  914 	push	acc
      00348C 12 3D 4C         [24]  915 	lcall	_printf
      00348F 15 81            [12]  916 	dec	sp
      003491 15 81            [12]  917 	dec	sp
      003493 15 81            [12]  918 	dec	sp
                                    919 ;	SPI.c:126: return 0;
      003495 75 82 00         [24]  920 	mov	dpl, #0x00
      003498 22               [24]  921 	ret
      003499                        922 00102$:
                                    923 ;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
      003499 90 03 6A         [24]  924 	mov	dptr,#_eth_spi_read_PARM_2
      00349C E0               [24]  925 	movx	a,@dptr
      00349D F5 82            [12]  926 	mov	dpl,a
      00349F C0 07            [24]  927 	push	ar7
      0034A1 12 33 6A         [24]  928 	lcall	_select_reg_bank
      0034A4 D0 07            [24]  929 	pop	ar7
                                    930 ;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
                                    931 ;	assignBit
      0034A6 C2 91            [12]  932 	clr	_P1_1
                                    933 ;	SPI.c:132: SPI_send(addr);            // Send the address
      0034A8 8F 82            [24]  934 	mov	dpl, r7
      0034AA C0 07            [24]  935 	push	ar7
      0034AC 12 34 5A         [24]  936 	lcall	_SPI_send
                                    937 ;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
      0034AF 12 33 47         [24]  938 	lcall	_SPI_ReadByte
      0034B2 AE 82            [24]  939 	mov	r6, dpl
      0034B4 D0 07            [24]  940 	pop	ar7
                                    941 ;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
                                    942 ;	assignBit
      0034B6 D2 91            [12]  943 	setb	_P1_1
                                    944 ;	SPI.c:137: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      0034B8 8E 04            [24]  945 	mov	ar4,r6
      0034BA 7D 00            [12]  946 	mov	r5,#0x00
      0034BC 7B 00            [12]  947 	mov	r3,#0x00
      0034BE C0 06            [24]  948 	push	ar6
      0034C0 C0 04            [24]  949 	push	ar4
      0034C2 C0 05            [24]  950 	push	ar5
      0034C4 C0 07            [24]  951 	push	ar7
      0034C6 C0 03            [24]  952 	push	ar3
      0034C8 74 D9            [12]  953 	mov	a,#___str_3
      0034CA C0 E0            [24]  954 	push	acc
      0034CC 74 4D            [12]  955 	mov	a,#(___str_3 >> 8)
      0034CE C0 E0            [24]  956 	push	acc
      0034D0 74 80            [12]  957 	mov	a,#0x80
      0034D2 C0 E0            [24]  958 	push	acc
      0034D4 12 3D 4C         [24]  959 	lcall	_printf
      0034D7 E5 81            [12]  960 	mov	a,sp
      0034D9 24 F9            [12]  961 	add	a,#0xf9
      0034DB F5 81            [12]  962 	mov	sp,a
      0034DD D0 06            [24]  963 	pop	ar6
                                    964 ;	SPI.c:139: return data;
      0034DF 8E 82            [24]  965 	mov	dpl, r6
                                    966 ;	SPI.c:140: }
      0034E1 22               [24]  967 	ret
                                    968 ;------------------------------------------------------------
                                    969 ;Allocation info for local variables in function 'phy_spi_write'
                                    970 ;------------------------------------------------------------
                                    971 ;data                      Allocated with name '_phy_spi_write_PARM_2'
                                    972 ;addr                      Allocated with name '_phy_spi_write_addr_10000_90'
                                    973 ;------------------------------------------------------------
                                    974 ;	SPI.c:142: void phy_spi_write(uint8_t addr, uint16_t data)
                                    975 ;	-----------------------------------------
                                    976 ;	 function phy_spi_write
                                    977 ;	-----------------------------------------
      0034E2                        978 _phy_spi_write:
      0034E2 E5 82            [12]  979 	mov	a,dpl
      0034E4 90 03 6E         [24]  980 	mov	dptr,#_phy_spi_write_addr_10000_90
      0034E7 F0               [24]  981 	movx	@dptr,a
                                    982 ;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
      0034E8 E0               [24]  983 	movx	a,@dptr
      0034E9 FF               [12]  984 	mov	r7,a
      0034EA 90 03 66         [24]  985 	mov	dptr,#_spi_control_write_PARM_2
      0034ED 74 14            [12]  986 	mov	a,#0x14
      0034EF F0               [24]  987 	movx	@dptr,a
      0034F0 90 03 67         [24]  988 	mov	dptr,#_spi_control_write_PARM_3
      0034F3 EF               [12]  989 	mov	a,r7
      0034F4 F0               [24]  990 	movx	@dptr,a
      0034F5 75 82 02         [24]  991 	mov	dpl, #0x02
      0034F8 C0 07            [24]  992 	push	ar7
      0034FA 12 33 EF         [24]  993 	lcall	_spi_control_write
      0034FD D0 07            [24]  994 	pop	ar7
                                    995 ;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      0034FF 90 03 6C         [24]  996 	mov	dptr,#_phy_spi_write_PARM_2
      003502 E0               [24]  997 	movx	a,@dptr
      003503 FD               [12]  998 	mov	r5,a
      003504 A3               [24]  999 	inc	dptr
      003505 E0               [24] 1000 	movx	a,@dptr
      003506 FE               [12] 1001 	mov	r6,a
      003507 8D 04            [24] 1002 	mov	ar4,r5
      003509 90 03 66         [24] 1003 	mov	dptr,#_spi_control_write_PARM_2
      00350C 74 16            [12] 1004 	mov	a,#0x16
      00350E F0               [24] 1005 	movx	@dptr,a
      00350F 90 03 67         [24] 1006 	mov	dptr,#_spi_control_write_PARM_3
      003512 EC               [12] 1007 	mov	a,r4
      003513 F0               [24] 1008 	movx	@dptr,a
      003514 75 82 02         [24] 1009 	mov	dpl, #0x02
      003517 C0 07            [24] 1010 	push	ar7
      003519 C0 06            [24] 1011 	push	ar6
      00351B C0 05            [24] 1012 	push	ar5
      00351D 12 33 EF         [24] 1013 	lcall	_spi_control_write
      003520 D0 05            [24] 1014 	pop	ar5
      003522 D0 06            [24] 1015 	pop	ar6
      003524 D0 07            [24] 1016 	pop	ar7
                                   1017 ;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      003526 8E 04            [24] 1018 	mov	ar4,r6
      003528 90 03 66         [24] 1019 	mov	dptr,#_spi_control_write_PARM_2
      00352B 74 17            [12] 1020 	mov	a,#0x17
      00352D F0               [24] 1021 	movx	@dptr,a
      00352E 90 03 67         [24] 1022 	mov	dptr,#_spi_control_write_PARM_3
      003531 EC               [12] 1023 	mov	a,r4
      003532 F0               [24] 1024 	movx	@dptr,a
      003533 75 82 02         [24] 1025 	mov	dpl, #0x02
      003536 C0 07            [24] 1026 	push	ar7
      003538 C0 06            [24] 1027 	push	ar6
      00353A C0 05            [24] 1028 	push	ar5
      00353C 12 33 EF         [24] 1029 	lcall	_spi_control_write
      00353F D0 05            [24] 1030 	pop	ar5
      003541 D0 06            [24] 1031 	pop	ar6
      003543 D0 07            [24] 1032 	pop	ar7
                                   1033 ;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003545 7C 00            [12] 1034 	mov	r4,#0x00
      003547 C0 05            [24] 1035 	push	ar5
      003549 C0 06            [24] 1036 	push	ar6
      00354B C0 07            [24] 1037 	push	ar7
      00354D C0 04            [24] 1038 	push	ar4
      00354F 74 FD            [12] 1039 	mov	a,#___str_4
      003551 C0 E0            [24] 1040 	push	acc
      003553 74 4D            [12] 1041 	mov	a,#(___str_4 >> 8)
      003555 C0 E0            [24] 1042 	push	acc
      003557 74 80            [12] 1043 	mov	a,#0x80
      003559 C0 E0            [24] 1044 	push	acc
      00355B 12 3D 4C         [24] 1045 	lcall	_printf
      00355E E5 81            [12] 1046 	mov	a,sp
      003560 24 F9            [12] 1047 	add	a,#0xf9
      003562 F5 81            [12] 1048 	mov	sp,a
                                   1049 ;	SPI.c:150: }
      003564 22               [24] 1050 	ret
                                   1051 ;------------------------------------------------------------
                                   1052 ;Allocation info for local variables in function 'mac_spi_read'
                                   1053 ;------------------------------------------------------------
                                   1054 ;bank                      Allocated with name '_mac_spi_read_PARM_2'
                                   1055 ;addr                      Allocated with name '_mac_spi_read_addr_10000_92'
                                   1056 ;data                      Allocated with name '_mac_spi_read_data_10001_95'
                                   1057 ;------------------------------------------------------------
                                   1058 ;	SPI.c:152: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function mac_spi_read
                                   1061 ;	-----------------------------------------
      003565                       1062 _mac_spi_read:
      003565 E5 82            [12] 1063 	mov	a,dpl
      003567 90 03 70         [24] 1064 	mov	dptr,#_mac_spi_read_addr_10000_92
      00356A F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	SPI.c:154: if (addr > 0x1F) {
      00356B E0               [24] 1067 	movx	a,@dptr
      00356C FF               [12] 1068 	mov  r7,a
      00356D 24 E0            [12] 1069 	add	a,#0xff - 0x1f
      00356F 50 19            [24] 1070 	jnc	00102$
                                   1071 ;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003571 74 9F            [12] 1072 	mov	a,#___str_2
      003573 C0 E0            [24] 1073 	push	acc
      003575 74 4D            [12] 1074 	mov	a,#(___str_2 >> 8)
      003577 C0 E0            [24] 1075 	push	acc
      003579 74 80            [12] 1076 	mov	a,#0x80
      00357B C0 E0            [24] 1077 	push	acc
      00357D 12 3D 4C         [24] 1078 	lcall	_printf
      003580 15 81            [12] 1079 	dec	sp
      003582 15 81            [12] 1080 	dec	sp
      003584 15 81            [12] 1081 	dec	sp
                                   1082 ;	SPI.c:156: return 0; // Return 0 if address is invalid
      003586 75 82 00         [24] 1083 	mov	dpl, #0x00
      003589 22               [24] 1084 	ret
      00358A                       1085 00102$:
                                   1086 ;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
      00358A 90 03 6F         [24] 1087 	mov	dptr,#_mac_spi_read_PARM_2
      00358D E0               [24] 1088 	movx	a,@dptr
      00358E F5 82            [12] 1089 	mov	dpl,a
      003590 C0 07            [24] 1090 	push	ar7
      003592 12 33 6A         [24] 1091 	lcall	_select_reg_bank
      003595 D0 07            [24] 1092 	pop	ar7
                                   1093 ;	SPI.c:162: CS_LOW;
                                   1094 ;	assignBit
      003597 C2 91            [12] 1095 	clr	_P1_1
                                   1096 ;	SPI.c:165: SPI_send(addr);
      003599 8F 82            [24] 1097 	mov	dpl, r7
      00359B C0 07            [24] 1098 	push	ar7
      00359D 12 34 5A         [24] 1099 	lcall	_SPI_send
                                   1100 ;	SPI.c:168: uint8_t data = SPI_ReadByte();
      0035A0 12 33 47         [24] 1101 	lcall	_SPI_ReadByte
      0035A3 AE 82            [24] 1102 	mov	r6, dpl
      0035A5 D0 07            [24] 1103 	pop	ar7
                                   1104 ;	SPI.c:171: CS_HIGH;
                                   1105 ;	assignBit
      0035A7 D2 91            [12] 1106 	setb	_P1_1
                                   1107 ;	SPI.c:174: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      0035A9 8E 04            [24] 1108 	mov	ar4,r6
      0035AB 7D 00            [12] 1109 	mov	r5,#0x00
      0035AD 7B 00            [12] 1110 	mov	r3,#0x00
      0035AF C0 06            [24] 1111 	push	ar6
      0035B1 C0 04            [24] 1112 	push	ar4
      0035B3 C0 05            [24] 1113 	push	ar5
      0035B5 C0 07            [24] 1114 	push	ar7
      0035B7 C0 03            [24] 1115 	push	ar3
      0035B9 74 26            [12] 1116 	mov	a,#___str_5
      0035BB C0 E0            [24] 1117 	push	acc
      0035BD 74 4E            [12] 1118 	mov	a,#(___str_5 >> 8)
      0035BF C0 E0            [24] 1119 	push	acc
      0035C1 74 80            [12] 1120 	mov	a,#0x80
      0035C3 C0 E0            [24] 1121 	push	acc
      0035C5 12 3D 4C         [24] 1122 	lcall	_printf
      0035C8 E5 81            [12] 1123 	mov	a,sp
      0035CA 24 F9            [12] 1124 	add	a,#0xf9
      0035CC F5 81            [12] 1125 	mov	sp,a
      0035CE D0 06            [24] 1126 	pop	ar6
                                   1127 ;	SPI.c:176: return data;
      0035D0 8E 82            [24] 1128 	mov	dpl, r6
                                   1129 ;	SPI.c:177: }
      0035D2 22               [24] 1130 	ret
                                   1131 ;------------------------------------------------------------
                                   1132 ;Allocation info for local variables in function 'phy_spi_read'
                                   1133 ;------------------------------------------------------------
                                   1134 ;addr                      Allocated with name '_phy_spi_read_addr_10000_96'
                                   1135 ;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_98'
                                   1136 ;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_98'
                                   1137 ;data                      Allocated with name '_phy_spi_read_data_10001_98'
                                   1138 ;------------------------------------------------------------
                                   1139 ;	SPI.c:180: uint16_t phy_spi_read(uint8_t addr)
                                   1140 ;	-----------------------------------------
                                   1141 ;	 function phy_spi_read
                                   1142 ;	-----------------------------------------
      0035D3                       1143 _phy_spi_read:
      0035D3 E5 82            [12] 1144 	mov	a,dpl
      0035D5 90 03 71         [24] 1145 	mov	dptr,#_phy_spi_read_addr_10000_96
      0035D8 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
      0035D9 E0               [24] 1148 	movx	a,@dptr
      0035DA FF               [12] 1149 	mov	r7,a
      0035DB 90 03 66         [24] 1150 	mov	dptr,#_spi_control_write_PARM_2
      0035DE 74 14            [12] 1151 	mov	a,#0x14
      0035E0 F0               [24] 1152 	movx	@dptr,a
      0035E1 90 03 67         [24] 1153 	mov	dptr,#_spi_control_write_PARM_3
      0035E4 EF               [12] 1154 	mov	a,r7
      0035E5 F0               [24] 1155 	movx	@dptr,a
      0035E6 75 82 02         [24] 1156 	mov	dpl, #0x02
      0035E9 C0 07            [24] 1157 	push	ar7
      0035EB 12 33 EF         [24] 1158 	lcall	_spi_control_write
      0035EE D0 07            [24] 1159 	pop	ar7
                                   1160 ;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      0035F0 90 03 66         [24] 1161 	mov	dptr,#_spi_control_write_PARM_2
      0035F3 74 12            [12] 1162 	mov	a,#0x12
      0035F5 F0               [24] 1163 	movx	@dptr,a
      0035F6 90 03 67         [24] 1164 	mov	dptr,#_spi_control_write_PARM_3
      0035F9 74 01            [12] 1165 	mov	a,#0x01
      0035FB F0               [24] 1166 	movx	@dptr,a
      0035FC 75 82 02         [24] 1167 	mov	dpl, #0x02
      0035FF C0 07            [24] 1168 	push	ar7
      003601 12 33 EF         [24] 1169 	lcall	_spi_control_write
                                   1170 ;	SPI.c:185: busy_wait();                          // Wait for the read to complete
      003604 12 36 80         [24] 1171 	lcall	_busy_wait
      003607 D0 07            [24] 1172 	pop	ar7
                                   1173 ;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      003609 90 03 66         [24] 1174 	mov	dptr,#_spi_control_write_PARM_2
      00360C 74 12            [12] 1175 	mov	a,#0x12
      00360E F0               [24] 1176 	movx	@dptr,a
      00360F 90 03 67         [24] 1177 	mov	dptr,#_spi_control_write_PARM_3
      003612 E4               [12] 1178 	clr	a
      003613 F0               [24] 1179 	movx	@dptr,a
      003614 75 82 02         [24] 1180 	mov	dpl, #0x02
      003617 C0 07            [24] 1181 	push	ar7
      003619 12 33 EF         [24] 1182 	lcall	_spi_control_write
      00361C D0 07            [24] 1183 	pop	ar7
                                   1184 ;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      00361E 90 03 6F         [24] 1185 	mov	dptr,#_mac_spi_read_PARM_2
      003621 74 02            [12] 1186 	mov	a,#0x02
      003623 F0               [24] 1187 	movx	@dptr,a
      003624 75 82 18         [24] 1188 	mov	dpl, #0x18
      003627 C0 07            [24] 1189 	push	ar7
      003629 12 35 65         [24] 1190 	lcall	_mac_spi_read
      00362C AE 82            [24] 1191 	mov	r6, dpl
      00362E D0 07            [24] 1192 	pop	ar7
      003630 7D 00            [12] 1193 	mov	r5,#0x00
                                   1194 ;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003632 90 03 6F         [24] 1195 	mov	dptr,#_mac_spi_read_PARM_2
      003635 74 02            [12] 1196 	mov	a,#0x02
      003637 F0               [24] 1197 	movx	@dptr,a
      003638 75 82 19         [24] 1198 	mov	dpl, #0x19
      00363B C0 07            [24] 1199 	push	ar7
      00363D C0 06            [24] 1200 	push	ar6
      00363F C0 05            [24] 1201 	push	ar5
      003641 12 35 65         [24] 1202 	lcall	_mac_spi_read
      003644 AC 82            [24] 1203 	mov	r4, dpl
      003646 D0 05            [24] 1204 	pop	ar5
      003648 D0 06            [24] 1205 	pop	ar6
      00364A D0 07            [24] 1206 	pop	ar7
                                   1207 ;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      00364C 8C 03            [24] 1208 	mov	ar3,r4
      00364E E4               [12] 1209 	clr	a
      00364F 42 06            [12] 1210 	orl	ar6,a
      003651 EB               [12] 1211 	mov	a,r3
      003652 42 05            [12] 1212 	orl	ar5,a
                                   1213 ;	SPI.c:195: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003654 7C 00            [12] 1214 	mov	r4,#0x00
      003656 C0 06            [24] 1215 	push	ar6
      003658 C0 05            [24] 1216 	push	ar5
      00365A C0 06            [24] 1217 	push	ar6
      00365C C0 05            [24] 1218 	push	ar5
      00365E C0 07            [24] 1219 	push	ar7
      003660 C0 04            [24] 1220 	push	ar4
      003662 74 49            [12] 1221 	mov	a,#___str_6
      003664 C0 E0            [24] 1222 	push	acc
      003666 74 4E            [12] 1223 	mov	a,#(___str_6 >> 8)
      003668 C0 E0            [24] 1224 	push	acc
      00366A 74 80            [12] 1225 	mov	a,#0x80
      00366C C0 E0            [24] 1226 	push	acc
      00366E 12 3D 4C         [24] 1227 	lcall	_printf
      003671 E5 81            [12] 1228 	mov	a,sp
      003673 24 F9            [12] 1229 	add	a,#0xf9
      003675 F5 81            [12] 1230 	mov	sp,a
      003677 D0 05            [24] 1231 	pop	ar5
      003679 D0 06            [24] 1232 	pop	ar6
                                   1233 ;	SPI.c:197: return data;        // Combine MSB and LSB
      00367B 8E 82            [24] 1234 	mov	dpl, r6
      00367D 8D 83            [24] 1235 	mov	dph, r5
                                   1236 ;	SPI.c:198: }
      00367F 22               [24] 1237 	ret
                                   1238 ;------------------------------------------------------------
                                   1239 ;Allocation info for local variables in function 'busy_wait'
                                   1240 ;------------------------------------------------------------
                                   1241 ;data                      Allocated with name '_busy_wait_data_10000_100'
                                   1242 ;------------------------------------------------------------
                                   1243 ;	SPI.c:200: void busy_wait(void)
                                   1244 ;	-----------------------------------------
                                   1245 ;	 function busy_wait
                                   1246 ;	-----------------------------------------
      003680                       1247 _busy_wait:
                                   1248 ;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      003680 90 03 6F         [24] 1249 	mov	dptr,#_mac_spi_read_PARM_2
      003683 74 03            [12] 1250 	mov	a,#0x03
      003685 F0               [24] 1251 	movx	@dptr,a
      003686 75 82 0A         [24] 1252 	mov	dpl, #0x0a
      003689 12 35 65         [24] 1253 	lcall	_mac_spi_read
      00368C E5 82            [12] 1254 	mov	a, dpl
      00368E 90 03 72         [24] 1255 	mov	dptr,#_busy_wait_data_10000_100
      003691 F0               [24] 1256 	movx	@dptr,a
                                   1257 ;	SPI.c:203: while (data & 0x01)
      003692                       1258 00101$:
      003692 90 03 72         [24] 1259 	mov	dptr,#_busy_wait_data_10000_100
      003695 E0               [24] 1260 	movx	a,@dptr
      003696 30 E0 14         [24] 1261 	jnb	acc.0,00104$
                                   1262 ;	SPI.c:205: data = mac_spi_read(0x0A, 3);
      003699 90 03 6F         [24] 1263 	mov	dptr,#_mac_spi_read_PARM_2
      00369C 74 03            [12] 1264 	mov	a,#0x03
      00369E F0               [24] 1265 	movx	@dptr,a
      00369F 75 82 0A         [24] 1266 	mov	dpl, #0x0a
      0036A2 12 35 65         [24] 1267 	lcall	_mac_spi_read
      0036A5 E5 82            [12] 1268 	mov	a, dpl
      0036A7 90 03 72         [24] 1269 	mov	dptr,#_busy_wait_data_10000_100
      0036AA F0               [24] 1270 	movx	@dptr,a
      0036AB 80 E5            [24] 1271 	sjmp	00101$
      0036AD                       1272 00104$:
                                   1273 ;	SPI.c:207: }
      0036AD 22               [24] 1274 	ret
                                   1275 ;------------------------------------------------------------
                                   1276 ;Allocation info for local variables in function 'buffer_init'
                                   1277 ;------------------------------------------------------------
                                   1278 ;size                      Allocated with name '_buffer_init_PARM_2'
                                   1279 ;start_address             Allocated with name '_buffer_init_start_address_10000_102'
                                   1280 ;erxst                     Allocated with name '_buffer_init_erxst_10001_105'
                                   1281 ;erxnd                     Allocated with name '_buffer_init_erxnd_10001_105'
                                   1282 ;------------------------------------------------------------
                                   1283 ;	SPI.c:209: void buffer_init(uint16_t start_address, uint16_t size)
                                   1284 ;	-----------------------------------------
                                   1285 ;	 function buffer_init
                                   1286 ;	-----------------------------------------
      0036AE                       1287 _buffer_init:
      0036AE AF 83            [24] 1288 	mov	r7,dph
      0036B0 E5 82            [12] 1289 	mov	a,dpl
      0036B2 90 03 75         [24] 1290 	mov	dptr,#_buffer_init_start_address_10000_102
      0036B5 F0               [24] 1291 	movx	@dptr,a
      0036B6 EF               [12] 1292 	mov	a,r7
      0036B7 A3               [24] 1293 	inc	dptr
      0036B8 F0               [24] 1294 	movx	@dptr,a
                                   1295 ;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      0036B9 90 03 75         [24] 1296 	mov	dptr,#_buffer_init_start_address_10000_102
      0036BC E0               [24] 1297 	movx	a,@dptr
      0036BD FE               [12] 1298 	mov	r6,a
      0036BE A3               [24] 1299 	inc	dptr
      0036BF E0               [24] 1300 	movx	a,@dptr
      0036C0 FF               [12] 1301 	mov	r7,a
      0036C1 8E 04            [24] 1302 	mov	ar4,r6
      0036C3 8F 05            [24] 1303 	mov	ar5,r7
      0036C5 C3               [12] 1304 	clr	c
      0036C6 74 FF            [12] 1305 	mov	a,#0xff
      0036C8 9C               [12] 1306 	subb	a,r4
      0036C9 74 1F            [12] 1307 	mov	a,#0x1f
      0036CB 9D               [12] 1308 	subb	a,r5
      0036CC 40 17            [24] 1309 	jc	00101$
      0036CE 90 03 73         [24] 1310 	mov	dptr,#_buffer_init_PARM_2
      0036D1 E0               [24] 1311 	movx	a,@dptr
      0036D2 FA               [12] 1312 	mov	r2,a
      0036D3 A3               [24] 1313 	inc	dptr
      0036D4 E0               [24] 1314 	movx	a,@dptr
      0036D5 FB               [12] 1315 	mov	r3,a
      0036D6 EA               [12] 1316 	mov	a,r2
      0036D7 2E               [12] 1317 	add	a, r6
      0036D8 F8               [12] 1318 	mov	r0,a
      0036D9 EB               [12] 1319 	mov	a,r3
      0036DA 3F               [12] 1320 	addc	a, r7
      0036DB F9               [12] 1321 	mov	r1,a
      0036DC C3               [12] 1322 	clr	c
      0036DD 74 FF            [12] 1323 	mov	a,#0xff
      0036DF 98               [12] 1324 	subb	a,r0
      0036E0 74 1F            [12] 1325 	mov	a,#0x1f
      0036E2 99               [12] 1326 	subb	a,r1
      0036E3 50 2A            [24] 1327 	jnc	00102$
      0036E5                       1328 00101$:
                                   1329 ;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      0036E5 90 03 73         [24] 1330 	mov	dptr,#_buffer_init_PARM_2
      0036E8 E0               [24] 1331 	movx	a,@dptr
      0036E9 C0 E0            [24] 1332 	push	acc
      0036EB A3               [24] 1333 	inc	dptr
      0036EC E0               [24] 1334 	movx	a,@dptr
      0036ED C0 E0            [24] 1335 	push	acc
      0036EF 90 03 75         [24] 1336 	mov	dptr,#_buffer_init_start_address_10000_102
      0036F2 E0               [24] 1337 	movx	a,@dptr
      0036F3 C0 E0            [24] 1338 	push	acc
      0036F5 A3               [24] 1339 	inc	dptr
      0036F6 E0               [24] 1340 	movx	a,@dptr
      0036F7 C0 E0            [24] 1341 	push	acc
      0036F9 74 71            [12] 1342 	mov	a,#___str_7
      0036FB C0 E0            [24] 1343 	push	acc
      0036FD 74 4E            [12] 1344 	mov	a,#(___str_7 >> 8)
      0036FF C0 E0            [24] 1345 	push	acc
      003701 74 80            [12] 1346 	mov	a,#0x80
      003703 C0 E0            [24] 1347 	push	acc
      003705 12 3D 4C         [24] 1348 	lcall	_printf
      003708 E5 81            [12] 1349 	mov	a,sp
      00370A 24 F9            [12] 1350 	add	a,#0xf9
      00370C F5 81            [12] 1351 	mov	sp,a
                                   1352 ;	SPI.c:213: return;
      00370E 22               [24] 1353 	ret
      00370F                       1354 00102$:
                                   1355 ;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      00370F 53 04 FE         [24] 1356 	anl	ar4,#0xfe
                                   1357 ;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      003712 EA               [12] 1358 	mov	a,r2
      003713 2E               [12] 1359 	add	a, r6
      003714 FE               [12] 1360 	mov	r6,a
      003715 EB               [12] 1361 	mov	a,r3
      003716 3F               [12] 1362 	addc	a, r7
      003717 FF               [12] 1363 	mov	r7,a
      003718 1E               [12] 1364 	dec	r6
      003719 BE FF 01         [24] 1365 	cjne	r6,#0xff,00114$
      00371C 1F               [12] 1366 	dec	r7
      00371D                       1367 00114$:
      00371D 53 06 FE         [24] 1368 	anl	ar6,#0xfe
                                   1369 ;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      003720 8D 03            [24] 1370 	mov	ar3,r5
      003722 90 03 66         [24] 1371 	mov	dptr,#_spi_control_write_PARM_2
      003725 74 08            [12] 1372 	mov	a,#0x08
      003727 F0               [24] 1373 	movx	@dptr,a
      003728 90 03 67         [24] 1374 	mov	dptr,#_spi_control_write_PARM_3
      00372B EB               [12] 1375 	mov	a,r3
      00372C F0               [24] 1376 	movx	@dptr,a
      00372D 75 82 00         [24] 1377 	mov	dpl, #0x00
      003730 C0 07            [24] 1378 	push	ar7
      003732 C0 06            [24] 1379 	push	ar6
      003734 C0 05            [24] 1380 	push	ar5
      003736 C0 04            [24] 1381 	push	ar4
      003738 12 33 EF         [24] 1382 	lcall	_spi_control_write
      00373B D0 04            [24] 1383 	pop	ar4
      00373D D0 05            [24] 1384 	pop	ar5
      00373F D0 06            [24] 1385 	pop	ar6
      003741 D0 07            [24] 1386 	pop	ar7
                                   1387 ;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003743 8C 03            [24] 1388 	mov	ar3,r4
      003745 90 03 66         [24] 1389 	mov	dptr,#_spi_control_write_PARM_2
      003748 74 09            [12] 1390 	mov	a,#0x09
      00374A F0               [24] 1391 	movx	@dptr,a
      00374B 90 03 67         [24] 1392 	mov	dptr,#_spi_control_write_PARM_3
      00374E EB               [12] 1393 	mov	a,r3
      00374F F0               [24] 1394 	movx	@dptr,a
      003750 75 82 00         [24] 1395 	mov	dpl, #0x00
      003753 C0 07            [24] 1396 	push	ar7
      003755 C0 06            [24] 1397 	push	ar6
      003757 C0 05            [24] 1398 	push	ar5
      003759 C0 04            [24] 1399 	push	ar4
      00375B 12 33 EF         [24] 1400 	lcall	_spi_control_write
      00375E D0 04            [24] 1401 	pop	ar4
      003760 D0 05            [24] 1402 	pop	ar5
      003762 D0 06            [24] 1403 	pop	ar6
      003764 D0 07            [24] 1404 	pop	ar7
                                   1405 ;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003766 8F 03            [24] 1406 	mov	ar3,r7
      003768 90 03 66         [24] 1407 	mov	dptr,#_spi_control_write_PARM_2
      00376B 74 0A            [12] 1408 	mov	a,#0x0a
      00376D F0               [24] 1409 	movx	@dptr,a
      00376E 90 03 67         [24] 1410 	mov	dptr,#_spi_control_write_PARM_3
      003771 EB               [12] 1411 	mov	a,r3
      003772 F0               [24] 1412 	movx	@dptr,a
      003773 75 82 00         [24] 1413 	mov	dpl, #0x00
      003776 C0 07            [24] 1414 	push	ar7
      003778 C0 06            [24] 1415 	push	ar6
      00377A C0 05            [24] 1416 	push	ar5
      00377C C0 04            [24] 1417 	push	ar4
      00377E 12 33 EF         [24] 1418 	lcall	_spi_control_write
      003781 D0 04            [24] 1419 	pop	ar4
      003783 D0 05            [24] 1420 	pop	ar5
      003785 D0 06            [24] 1421 	pop	ar6
      003787 D0 07            [24] 1422 	pop	ar7
                                   1423 ;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      003789 8E 03            [24] 1424 	mov	ar3,r6
      00378B 90 03 66         [24] 1425 	mov	dptr,#_spi_control_write_PARM_2
      00378E 74 0B            [12] 1426 	mov	a,#0x0b
      003790 F0               [24] 1427 	movx	@dptr,a
      003791 90 03 67         [24] 1428 	mov	dptr,#_spi_control_write_PARM_3
      003794 EB               [12] 1429 	mov	a,r3
      003795 F0               [24] 1430 	movx	@dptr,a
      003796 75 82 00         [24] 1431 	mov	dpl, #0x00
      003799 C0 07            [24] 1432 	push	ar7
      00379B C0 06            [24] 1433 	push	ar6
      00379D C0 05            [24] 1434 	push	ar5
      00379F C0 04            [24] 1435 	push	ar4
      0037A1 12 33 EF         [24] 1436 	lcall	_spi_control_write
      0037A4 D0 04            [24] 1437 	pop	ar4
      0037A6 D0 05            [24] 1438 	pop	ar5
      0037A8 D0 06            [24] 1439 	pop	ar6
      0037AA D0 07            [24] 1440 	pop	ar7
                                   1441 ;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      0037AC C0 06            [24] 1442 	push	ar6
      0037AE C0 07            [24] 1443 	push	ar7
      0037B0 C0 04            [24] 1444 	push	ar4
      0037B2 C0 05            [24] 1445 	push	ar5
      0037B4 74 AF            [12] 1446 	mov	a,#___str_8
      0037B6 C0 E0            [24] 1447 	push	acc
      0037B8 74 4E            [12] 1448 	mov	a,#(___str_8 >> 8)
      0037BA C0 E0            [24] 1449 	push	acc
      0037BC 74 80            [12] 1450 	mov	a,#0x80
      0037BE C0 E0            [24] 1451 	push	acc
      0037C0 12 3D 4C         [24] 1452 	lcall	_printf
      0037C3 E5 81            [12] 1453 	mov	a,sp
      0037C5 24 F9            [12] 1454 	add	a,#0xf9
      0037C7 F5 81            [12] 1455 	mov	sp,a
                                   1456 ;	SPI.c:229: }
      0037C9 22               [24] 1457 	ret
                                   1458 ;------------------------------------------------------------
                                   1459 ;Allocation info for local variables in function 'spi_buffer_read'
                                   1460 ;------------------------------------------------------------
                                   1461 ;start_address             Allocated with name '_spi_buffer_read_PARM_2'
                                   1462 ;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
                                   1463 ;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_106'
                                   1464 ;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_111'
                                   1465 ;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_111'
                                   1466 ;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_112'
                                   1467 ;i                         Allocated with name '_spi_buffer_read_i_20002_113'
                                   1468 ;------------------------------------------------------------
                                   1469 ;	SPI.c:232: void spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1470 ;	-----------------------------------------
                                   1471 ;	 function spi_buffer_read
                                   1472 ;	-----------------------------------------
      0037CA                       1473 _spi_buffer_read:
      0037CA AF 83            [24] 1474 	mov	r7,dph
      0037CC E5 82            [12] 1475 	mov	a,dpl
      0037CE 90 03 7C         [24] 1476 	mov	dptr,#_spi_buffer_read_num_bytes_10000_106
      0037D1 F0               [24] 1477 	movx	@dptr,a
      0037D2 EF               [12] 1478 	mov	a,r7
      0037D3 A3               [24] 1479 	inc	dptr
      0037D4 F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	SPI.c:234: if (num_bytes < 1) {
      0037D5 90 03 7C         [24] 1482 	mov	dptr,#_spi_buffer_read_num_bytes_10000_106
      0037D8 E0               [24] 1483 	movx	a,@dptr
      0037D9 FE               [12] 1484 	mov	r6,a
      0037DA A3               [24] 1485 	inc	dptr
      0037DB E0               [24] 1486 	movx	a,@dptr
      0037DC FF               [12] 1487 	mov	r7,a
      0037DD C3               [12] 1488 	clr	c
      0037DE EE               [12] 1489 	mov	a,r6
      0037DF 94 01            [12] 1490 	subb	a,#0x01
      0037E1 EF               [12] 1491 	mov	a,r7
      0037E2 64 80            [12] 1492 	xrl	a,#0x80
      0037E4 94 80            [12] 1493 	subb	a,#0x80
      0037E6 50 1A            [24] 1494 	jnc	00102$
                                   1495 ;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      0037E8 C0 06            [24] 1496 	push	ar6
      0037EA C0 07            [24] 1497 	push	ar7
      0037EC 74 E0            [12] 1498 	mov	a,#___str_9
      0037EE C0 E0            [24] 1499 	push	acc
      0037F0 74 4E            [12] 1500 	mov	a,#(___str_9 >> 8)
      0037F2 C0 E0            [24] 1501 	push	acc
      0037F4 74 80            [12] 1502 	mov	a,#0x80
      0037F6 C0 E0            [24] 1503 	push	acc
      0037F8 12 3D 4C         [24] 1504 	lcall	_printf
      0037FB E5 81            [12] 1505 	mov	a,sp
      0037FD 24 FB            [12] 1506 	add	a,#0xfb
      0037FF F5 81            [12] 1507 	mov	sp,a
                                   1508 ;	SPI.c:236: return;
      003801 22               [24] 1509 	ret
      003802                       1510 00102$:
                                   1511 ;	SPI.c:238: if (start_address > 0x1FFF) {
      003802 90 03 77         [24] 1512 	mov	dptr,#_spi_buffer_read_PARM_2
      003805 E0               [24] 1513 	movx	a,@dptr
      003806 FC               [12] 1514 	mov	r4,a
      003807 A3               [24] 1515 	inc	dptr
      003808 E0               [24] 1516 	movx	a,@dptr
      003809 FD               [12] 1517 	mov	r5,a
      00380A 8C 02            [24] 1518 	mov	ar2,r4
      00380C 8D 03            [24] 1519 	mov	ar3,r5
      00380E C3               [12] 1520 	clr	c
      00380F 74 FF            [12] 1521 	mov	a,#0xff
      003811 9A               [12] 1522 	subb	a,r2
      003812 74 1F            [12] 1523 	mov	a,#0x1f
      003814 9B               [12] 1524 	subb	a,r3
      003815 50 1A            [24] 1525 	jnc	00104$
                                   1526 ;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
      003817 C0 04            [24] 1527 	push	ar4
      003819 C0 05            [24] 1528 	push	ar5
      00381B 74 00            [12] 1529 	mov	a,#___str_10
      00381D C0 E0            [24] 1530 	push	acc
      00381F 74 4F            [12] 1531 	mov	a,#(___str_10 >> 8)
      003821 C0 E0            [24] 1532 	push	acc
      003823 74 80            [12] 1533 	mov	a,#0x80
      003825 C0 E0            [24] 1534 	push	acc
      003827 12 3D 4C         [24] 1535 	lcall	_printf
      00382A E5 81            [12] 1536 	mov	a,sp
      00382C 24 FB            [12] 1537 	add	a,#0xfb
      00382E F5 81            [12] 1538 	mov	sp,a
                                   1539 ;	SPI.c:240: return;
      003830 22               [24] 1540 	ret
      003831                       1541 00104$:
                                   1542 ;	SPI.c:243: if (num_bytes > 1) {
      003831 C3               [12] 1543 	clr	c
      003832 74 01            [12] 1544 	mov	a,#0x01
      003834 9E               [12] 1545 	subb	a,r6
      003835 74 80            [12] 1546 	mov	a,#(0x00 ^ 0x80)
      003837 8F F0            [24] 1547 	mov	b,r7
      003839 63 F0 80         [24] 1548 	xrl	b,#0x80
      00383C 95 F0            [12] 1549 	subb	a,b
      00383E 50 0B            [24] 1550 	jnc	00106$
                                   1551 ;	SPI.c:244: spi_set_autoinc();
      003840 C0 05            [24] 1552 	push	ar5
      003842 C0 04            [24] 1553 	push	ar4
      003844 12 33 59         [24] 1554 	lcall	_spi_set_autoinc
      003847 D0 04            [24] 1555 	pop	ar4
      003849 D0 05            [24] 1556 	pop	ar5
      00384B                       1557 00106$:
                                   1558 ;	SPI.c:248: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      00384B 8D 07            [24] 1559 	mov	ar7,r5
                                   1560 ;	SPI.c:249: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      00384D 8C 06            [24] 1561 	mov	ar6,r4
                                   1562 ;	SPI.c:251: spi_control_write(0, 0x01, higher_byte); // High byte
      00384F 90 03 66         [24] 1563 	mov	dptr,#_spi_control_write_PARM_2
      003852 74 01            [12] 1564 	mov	a,#0x01
      003854 F0               [24] 1565 	movx	@dptr,a
      003855 90 03 67         [24] 1566 	mov	dptr,#_spi_control_write_PARM_3
      003858 EF               [12] 1567 	mov	a,r7
      003859 F0               [24] 1568 	movx	@dptr,a
      00385A 75 82 00         [24] 1569 	mov	dpl, #0x00
      00385D C0 06            [24] 1570 	push	ar6
      00385F C0 05            [24] 1571 	push	ar5
      003861 C0 04            [24] 1572 	push	ar4
      003863 12 33 EF         [24] 1573 	lcall	_spi_control_write
      003866 D0 04            [24] 1574 	pop	ar4
      003868 D0 05            [24] 1575 	pop	ar5
      00386A D0 06            [24] 1576 	pop	ar6
                                   1577 ;	SPI.c:252: spi_control_write(0, 0x00, lower_byte); // Low byte
      00386C 90 03 66         [24] 1578 	mov	dptr,#_spi_control_write_PARM_2
      00386F E4               [12] 1579 	clr	a
      003870 F0               [24] 1580 	movx	@dptr,a
      003871 90 03 67         [24] 1581 	mov	dptr,#_spi_control_write_PARM_3
      003874 EE               [12] 1582 	mov	a,r6
      003875 F0               [24] 1583 	movx	@dptr,a
      003876 75 82 00         [24] 1584 	mov	dpl, #0x00
      003879 C0 05            [24] 1585 	push	ar5
      00387B C0 04            [24] 1586 	push	ar4
      00387D 12 33 EF         [24] 1587 	lcall	_spi_control_write
                                   1588 ;	SPI.c:255: CS_LOW; // Pull CS Low
                                   1589 ;	assignBit
      003880 C2 91            [12] 1590 	clr	_P1_1
                                   1591 ;	SPI.c:256: SPI_send(opcode); // Send opcode
      003882 75 82 3A         [24] 1592 	mov	dpl, #0x3a
      003885 12 34 5A         [24] 1593 	lcall	_SPI_send
      003888 D0 04            [24] 1594 	pop	ar4
      00388A D0 05            [24] 1595 	pop	ar5
                                   1596 ;	SPI.c:259: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      00388C 90 03 7C         [24] 1597 	mov	dptr,#_spi_buffer_read_num_bytes_10000_106
      00388F E0               [24] 1598 	movx	a,@dptr
      003890 FE               [12] 1599 	mov	r6,a
      003891 A3               [24] 1600 	inc	dptr
      003892 E0               [24] 1601 	movx	a,@dptr
      003893 FF               [12] 1602 	mov	r7,a
      003894 C0 07            [24] 1603 	push	ar7
      003896 C0 06            [24] 1604 	push	ar6
      003898 C0 04            [24] 1605 	push	ar4
      00389A C0 05            [24] 1606 	push	ar5
      00389C C0 06            [24] 1607 	push	ar6
      00389E C0 07            [24] 1608 	push	ar7
      0038A0 74 1A            [12] 1609 	mov	a,#___str_11
      0038A2 C0 E0            [24] 1610 	push	acc
      0038A4 74 4F            [12] 1611 	mov	a,#(___str_11 >> 8)
      0038A6 C0 E0            [24] 1612 	push	acc
      0038A8 74 80            [12] 1613 	mov	a,#0x80
      0038AA C0 E0            [24] 1614 	push	acc
      0038AC 12 3D 4C         [24] 1615 	lcall	_printf
      0038AF E5 81            [12] 1616 	mov	a,sp
      0038B1 24 F9            [12] 1617 	add	a,#0xf9
      0038B3 F5 81            [12] 1618 	mov	sp,a
      0038B5 D0 06            [24] 1619 	pop	ar6
      0038B7 D0 07            [24] 1620 	pop	ar7
                                   1621 ;	SPI.c:260: for (int i = 0; i < num_bytes; i++) {
      0038B9 90 03 7E         [24] 1622 	mov	dptr,#_spi_buffer_read_i_20002_113
      0038BC E4               [12] 1623 	clr	a
      0038BD F0               [24] 1624 	movx	@dptr,a
      0038BE A3               [24] 1625 	inc	dptr
      0038BF F0               [24] 1626 	movx	@dptr,a
      0038C0 90 03 79         [24] 1627 	mov	dptr,#_spi_buffer_read_PARM_3
      0038C3 E0               [24] 1628 	movx	a,@dptr
      0038C4 FB               [12] 1629 	mov	r3,a
      0038C5 A3               [24] 1630 	inc	dptr
      0038C6 E0               [24] 1631 	movx	a,@dptr
      0038C7 FC               [12] 1632 	mov	r4,a
      0038C8 A3               [24] 1633 	inc	dptr
      0038C9 E0               [24] 1634 	movx	a,@dptr
      0038CA FD               [12] 1635 	mov	r5,a
      0038CB                       1636 00109$:
      0038CB 90 03 7E         [24] 1637 	mov	dptr,#_spi_buffer_read_i_20002_113
      0038CE E0               [24] 1638 	movx	a,@dptr
      0038CF F9               [12] 1639 	mov	r1,a
      0038D0 A3               [24] 1640 	inc	dptr
      0038D1 E0               [24] 1641 	movx	a,@dptr
      0038D2 FA               [12] 1642 	mov	r2,a
      0038D3 C3               [12] 1643 	clr	c
      0038D4 E9               [12] 1644 	mov	a,r1
      0038D5 9E               [12] 1645 	subb	a,r6
      0038D6 EA               [12] 1646 	mov	a,r2
      0038D7 64 80            [12] 1647 	xrl	a,#0x80
      0038D9 8F F0            [24] 1648 	mov	b,r7
      0038DB 63 F0 80         [24] 1649 	xrl	b,#0x80
      0038DE 95 F0            [12] 1650 	subb	a,b
      0038E0 40 03            [24] 1651 	jc	00147$
      0038E2 02 39 68         [24] 1652 	ljmp	00107$
      0038E5                       1653 00147$:
                                   1654 ;	SPI.c:261: *data_ptr = SPI_ReadByte(); // Read data
      0038E5 C0 06            [24] 1655 	push	ar6
      0038E7 C0 07            [24] 1656 	push	ar7
      0038E9 C0 07            [24] 1657 	push	ar7
      0038EB C0 06            [24] 1658 	push	ar6
      0038ED C0 05            [24] 1659 	push	ar5
      0038EF C0 04            [24] 1660 	push	ar4
      0038F1 C0 03            [24] 1661 	push	ar3
      0038F3 C0 02            [24] 1662 	push	ar2
      0038F5 C0 01            [24] 1663 	push	ar1
      0038F7 12 33 47         [24] 1664 	lcall	_SPI_ReadByte
      0038FA A8 82            [24] 1665 	mov	r0, dpl
      0038FC D0 01            [24] 1666 	pop	ar1
      0038FE D0 02            [24] 1667 	pop	ar2
      003900 D0 03            [24] 1668 	pop	ar3
      003902 D0 04            [24] 1669 	pop	ar4
      003904 D0 05            [24] 1670 	pop	ar5
      003906 D0 06            [24] 1671 	pop	ar6
      003908 D0 07            [24] 1672 	pop	ar7
      00390A 8B 82            [24] 1673 	mov	dpl,r3
      00390C 8C 83            [24] 1674 	mov	dph,r4
      00390E 8D F0            [24] 1675 	mov	b,r5
      003910 E8               [12] 1676 	mov	a,r0
      003911 12 3B BA         [24] 1677 	lcall	__gptrput
      003914 A3               [24] 1678 	inc	dptr
      003915 AB 82            [24] 1679 	mov	r3,dpl
      003917 AC 83            [24] 1680 	mov	r4,dph
                                   1681 ;	SPI.c:262: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003919 7F 00            [12] 1682 	mov	r7,#0x00
      00391B 09               [12] 1683 	inc	r1
      00391C B9 00 01         [24] 1684 	cjne	r1,#0x00,00148$
      00391F 0A               [12] 1685 	inc	r2
      003920                       1686 00148$:
      003920 C0 07            [24] 1687 	push	ar7
      003922 C0 06            [24] 1688 	push	ar6
      003924 C0 05            [24] 1689 	push	ar5
      003926 C0 04            [24] 1690 	push	ar4
      003928 C0 03            [24] 1691 	push	ar3
      00392A C0 02            [24] 1692 	push	ar2
      00392C C0 01            [24] 1693 	push	ar1
      00392E C0 00            [24] 1694 	push	ar0
      003930 C0 07            [24] 1695 	push	ar7
      003932 C0 01            [24] 1696 	push	ar1
      003934 C0 02            [24] 1697 	push	ar2
      003936 74 55            [12] 1698 	mov	a,#___str_12
      003938 C0 E0            [24] 1699 	push	acc
      00393A 74 4F            [12] 1700 	mov	a,#(___str_12 >> 8)
      00393C C0 E0            [24] 1701 	push	acc
      00393E 74 80            [12] 1702 	mov	a,#0x80
      003940 C0 E0            [24] 1703 	push	acc
      003942 12 3D 4C         [24] 1704 	lcall	_printf
      003945 E5 81            [12] 1705 	mov	a,sp
      003947 24 F9            [12] 1706 	add	a,#0xf9
      003949 F5 81            [12] 1707 	mov	sp,a
      00394B D0 01            [24] 1708 	pop	ar1
      00394D D0 02            [24] 1709 	pop	ar2
      00394F D0 03            [24] 1710 	pop	ar3
      003951 D0 04            [24] 1711 	pop	ar4
      003953 D0 05            [24] 1712 	pop	ar5
      003955 D0 06            [24] 1713 	pop	ar6
      003957 D0 07            [24] 1714 	pop	ar7
                                   1715 ;	SPI.c:263: data_ptr++;
                                   1716 ;	SPI.c:260: for (int i = 0; i < num_bytes; i++) {
      003959 90 03 7E         [24] 1717 	mov	dptr,#_spi_buffer_read_i_20002_113
      00395C E9               [12] 1718 	mov	a,r1
      00395D F0               [24] 1719 	movx	@dptr,a
      00395E EA               [12] 1720 	mov	a,r2
      00395F A3               [24] 1721 	inc	dptr
      003960 F0               [24] 1722 	movx	@dptr,a
      003961 D0 07            [24] 1723 	pop	ar7
      003963 D0 06            [24] 1724 	pop	ar6
      003965 02 38 CB         [24] 1725 	ljmp	00109$
      003968                       1726 00107$:
                                   1727 ;	SPI.c:265: CS_HIGH; // Pull CS High
                                   1728 ;	assignBit
      003968 D2 91            [12] 1729 	setb	_P1_1
                                   1730 ;	SPI.c:266: }
      00396A 22               [24] 1731 	ret
                                   1732 ;------------------------------------------------------------
                                   1733 ;Allocation info for local variables in function 'spi_buffer_write'
                                   1734 ;------------------------------------------------------------
                                   1735 ;start_address             Allocated with name '_spi_buffer_write_PARM_2'
                                   1736 ;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
                                   1737 ;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_115'
                                   1738 ;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_120'
                                   1739 ;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_120'
                                   1740 ;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_121'
                                   1741 ;i                         Allocated with name '_spi_buffer_write_i_20002_122'
                                   1742 ;------------------------------------------------------------
                                   1743 ;	SPI.c:269: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1744 ;	-----------------------------------------
                                   1745 ;	 function spi_buffer_write
                                   1746 ;	-----------------------------------------
      00396B                       1747 _spi_buffer_write:
      00396B AF 83            [24] 1748 	mov	r7,dph
      00396D E5 82            [12] 1749 	mov	a,dpl
      00396F 90 03 85         [24] 1750 	mov	dptr,#_spi_buffer_write_num_bytes_10000_115
      003972 F0               [24] 1751 	movx	@dptr,a
      003973 EF               [12] 1752 	mov	a,r7
      003974 A3               [24] 1753 	inc	dptr
      003975 F0               [24] 1754 	movx	@dptr,a
                                   1755 ;	SPI.c:271: if (num_bytes < 1)
      003976 90 03 85         [24] 1756 	mov	dptr,#_spi_buffer_write_num_bytes_10000_115
      003979 E0               [24] 1757 	movx	a,@dptr
      00397A FE               [12] 1758 	mov	r6,a
      00397B A3               [24] 1759 	inc	dptr
      00397C E0               [24] 1760 	movx	a,@dptr
      00397D FF               [12] 1761 	mov	r7,a
      00397E C3               [12] 1762 	clr	c
      00397F EE               [12] 1763 	mov	a,r6
      003980 94 01            [12] 1764 	subb	a,#0x01
      003982 EF               [12] 1765 	mov	a,r7
      003983 64 80            [12] 1766 	xrl	a,#0x80
      003985 94 80            [12] 1767 	subb	a,#0x80
      003987 50 1A            [24] 1768 	jnc	00102$
                                   1769 ;	SPI.c:273: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003989 C0 06            [24] 1770 	push	ar6
      00398B C0 07            [24] 1771 	push	ar7
      00398D 74 E0            [12] 1772 	mov	a,#___str_9
      00398F C0 E0            [24] 1773 	push	acc
      003991 74 4E            [12] 1774 	mov	a,#(___str_9 >> 8)
      003993 C0 E0            [24] 1775 	push	acc
      003995 74 80            [12] 1776 	mov	a,#0x80
      003997 C0 E0            [24] 1777 	push	acc
      003999 12 3D 4C         [24] 1778 	lcall	_printf
      00399C E5 81            [12] 1779 	mov	a,sp
      00399E 24 FB            [12] 1780 	add	a,#0xfb
      0039A0 F5 81            [12] 1781 	mov	sp,a
                                   1782 ;	SPI.c:274: return;
      0039A2 22               [24] 1783 	ret
      0039A3                       1784 00102$:
                                   1785 ;	SPI.c:276: if (start_address > 0x1FFF) {
      0039A3 90 03 80         [24] 1786 	mov	dptr,#_spi_buffer_write_PARM_2
      0039A6 E0               [24] 1787 	movx	a,@dptr
      0039A7 FC               [12] 1788 	mov	r4,a
      0039A8 A3               [24] 1789 	inc	dptr
      0039A9 E0               [24] 1790 	movx	a,@dptr
      0039AA FD               [12] 1791 	mov	r5,a
      0039AB 8C 02            [24] 1792 	mov	ar2,r4
      0039AD 8D 03            [24] 1793 	mov	ar3,r5
      0039AF C3               [12] 1794 	clr	c
      0039B0 74 FF            [12] 1795 	mov	a,#0xff
      0039B2 9A               [12] 1796 	subb	a,r2
      0039B3 74 1F            [12] 1797 	mov	a,#0x1f
      0039B5 9B               [12] 1798 	subb	a,r3
      0039B6 50 1A            [24] 1799 	jnc	00104$
                                   1800 ;	SPI.c:277: printf("\n\rInvalid address: %04X\n\r", start_address);
      0039B8 C0 04            [24] 1801 	push	ar4
      0039BA C0 05            [24] 1802 	push	ar5
      0039BC 74 00            [12] 1803 	mov	a,#___str_10
      0039BE C0 E0            [24] 1804 	push	acc
      0039C0 74 4F            [12] 1805 	mov	a,#(___str_10 >> 8)
      0039C2 C0 E0            [24] 1806 	push	acc
      0039C4 74 80            [12] 1807 	mov	a,#0x80
      0039C6 C0 E0            [24] 1808 	push	acc
      0039C8 12 3D 4C         [24] 1809 	lcall	_printf
      0039CB E5 81            [12] 1810 	mov	a,sp
      0039CD 24 FB            [12] 1811 	add	a,#0xfb
      0039CF F5 81            [12] 1812 	mov	sp,a
                                   1813 ;	SPI.c:278: return;
      0039D1 22               [24] 1814 	ret
      0039D2                       1815 00104$:
                                   1816 ;	SPI.c:282: if (num_bytes > 1) {
      0039D2 C3               [12] 1817 	clr	c
      0039D3 74 01            [12] 1818 	mov	a,#0x01
      0039D5 9E               [12] 1819 	subb	a,r6
      0039D6 74 80            [12] 1820 	mov	a,#(0x00 ^ 0x80)
      0039D8 8F F0            [24] 1821 	mov	b,r7
      0039DA 63 F0 80         [24] 1822 	xrl	b,#0x80
      0039DD 95 F0            [12] 1823 	subb	a,b
      0039DF 50 0B            [24] 1824 	jnc	00106$
                                   1825 ;	SPI.c:283: spi_set_autoinc();
      0039E1 C0 05            [24] 1826 	push	ar5
      0039E3 C0 04            [24] 1827 	push	ar4
      0039E5 12 33 59         [24] 1828 	lcall	_spi_set_autoinc
      0039E8 D0 04            [24] 1829 	pop	ar4
      0039EA D0 05            [24] 1830 	pop	ar5
      0039EC                       1831 00106$:
                                   1832 ;	SPI.c:286: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      0039EC 8D 07            [24] 1833 	mov	ar7,r5
                                   1834 ;	SPI.c:287: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      0039EE 8C 06            [24] 1835 	mov	ar6,r4
                                   1836 ;	SPI.c:289: spi_control_write(0, 0x03, higher_byte); // High byte
      0039F0 90 03 66         [24] 1837 	mov	dptr,#_spi_control_write_PARM_2
      0039F3 74 03            [12] 1838 	mov	a,#0x03
      0039F5 F0               [24] 1839 	movx	@dptr,a
      0039F6 90 03 67         [24] 1840 	mov	dptr,#_spi_control_write_PARM_3
      0039F9 EF               [12] 1841 	mov	a,r7
      0039FA F0               [24] 1842 	movx	@dptr,a
      0039FB 75 82 00         [24] 1843 	mov	dpl, #0x00
      0039FE C0 06            [24] 1844 	push	ar6
      003A00 C0 05            [24] 1845 	push	ar5
      003A02 C0 04            [24] 1846 	push	ar4
      003A04 12 33 EF         [24] 1847 	lcall	_spi_control_write
      003A07 D0 04            [24] 1848 	pop	ar4
      003A09 D0 05            [24] 1849 	pop	ar5
      003A0B D0 06            [24] 1850 	pop	ar6
                                   1851 ;	SPI.c:290: spi_control_write(0, 0x02, lower_byte); // Low byte
      003A0D 90 03 66         [24] 1852 	mov	dptr,#_spi_control_write_PARM_2
      003A10 74 02            [12] 1853 	mov	a,#0x02
      003A12 F0               [24] 1854 	movx	@dptr,a
      003A13 90 03 67         [24] 1855 	mov	dptr,#_spi_control_write_PARM_3
      003A16 EE               [12] 1856 	mov	a,r6
      003A17 F0               [24] 1857 	movx	@dptr,a
      003A18 75 82 00         [24] 1858 	mov	dpl, #0x00
      003A1B C0 05            [24] 1859 	push	ar5
      003A1D C0 04            [24] 1860 	push	ar4
      003A1F 12 33 EF         [24] 1861 	lcall	_spi_control_write
                                   1862 ;	SPI.c:293: CS_LOW; // Pull CS Low
                                   1863 ;	assignBit
      003A22 C2 91            [12] 1864 	clr	_P1_1
                                   1865 ;	SPI.c:294: SPI_send(opcode); // Send opcode
      003A24 75 82 7A         [24] 1866 	mov	dpl, #0x7a
      003A27 12 34 5A         [24] 1867 	lcall	_SPI_send
      003A2A D0 04            [24] 1868 	pop	ar4
      003A2C D0 05            [24] 1869 	pop	ar5
                                   1870 ;	SPI.c:297: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003A2E 90 03 85         [24] 1871 	mov	dptr,#_spi_buffer_write_num_bytes_10000_115
      003A31 E0               [24] 1872 	movx	a,@dptr
      003A32 FE               [12] 1873 	mov	r6,a
      003A33 A3               [24] 1874 	inc	dptr
      003A34 E0               [24] 1875 	movx	a,@dptr
      003A35 FF               [12] 1876 	mov	r7,a
      003A36 C0 07            [24] 1877 	push	ar7
      003A38 C0 06            [24] 1878 	push	ar6
      003A3A C0 04            [24] 1879 	push	ar4
      003A3C C0 05            [24] 1880 	push	ar5
      003A3E C0 06            [24] 1881 	push	ar6
      003A40 C0 07            [24] 1882 	push	ar7
      003A42 74 67            [12] 1883 	mov	a,#___str_13
      003A44 C0 E0            [24] 1884 	push	acc
      003A46 74 4F            [12] 1885 	mov	a,#(___str_13 >> 8)
      003A48 C0 E0            [24] 1886 	push	acc
      003A4A 74 80            [12] 1887 	mov	a,#0x80
      003A4C C0 E0            [24] 1888 	push	acc
      003A4E 12 3D 4C         [24] 1889 	lcall	_printf
      003A51 E5 81            [12] 1890 	mov	a,sp
      003A53 24 F9            [12] 1891 	add	a,#0xf9
      003A55 F5 81            [12] 1892 	mov	sp,a
      003A57 D0 06            [24] 1893 	pop	ar6
      003A59 D0 07            [24] 1894 	pop	ar7
                                   1895 ;	SPI.c:298: for (int i = 0; i < num_bytes; i++) {
      003A5B 90 03 87         [24] 1896 	mov	dptr,#_spi_buffer_write_i_20002_122
      003A5E E4               [12] 1897 	clr	a
      003A5F F0               [24] 1898 	movx	@dptr,a
      003A60 A3               [24] 1899 	inc	dptr
      003A61 F0               [24] 1900 	movx	@dptr,a
      003A62 90 03 82         [24] 1901 	mov	dptr,#_spi_buffer_write_PARM_3
      003A65 E0               [24] 1902 	movx	a,@dptr
      003A66 FB               [12] 1903 	mov	r3,a
      003A67 A3               [24] 1904 	inc	dptr
      003A68 E0               [24] 1905 	movx	a,@dptr
      003A69 FC               [12] 1906 	mov	r4,a
      003A6A A3               [24] 1907 	inc	dptr
      003A6B E0               [24] 1908 	movx	a,@dptr
      003A6C FD               [12] 1909 	mov	r5,a
      003A6D                       1910 00109$:
      003A6D 90 03 87         [24] 1911 	mov	dptr,#_spi_buffer_write_i_20002_122
      003A70 E0               [24] 1912 	movx	a,@dptr
      003A71 F9               [12] 1913 	mov	r1,a
      003A72 A3               [24] 1914 	inc	dptr
      003A73 E0               [24] 1915 	movx	a,@dptr
      003A74 FA               [12] 1916 	mov	r2,a
      003A75 C3               [12] 1917 	clr	c
      003A76 E9               [12] 1918 	mov	a,r1
      003A77 9E               [12] 1919 	subb	a,r6
      003A78 EA               [12] 1920 	mov	a,r2
      003A79 64 80            [12] 1921 	xrl	a,#0x80
      003A7B 8F F0            [24] 1922 	mov	b,r7
      003A7D 63 F0 80         [24] 1923 	xrl	b,#0x80
      003A80 95 F0            [12] 1924 	subb	a,b
      003A82 40 03            [24] 1925 	jc	00147$
      003A84 02 3B 14         [24] 1926 	ljmp	00107$
      003A87                       1927 00147$:
                                   1928 ;	SPI.c:299: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003A87 C0 06            [24] 1929 	push	ar6
      003A89 C0 07            [24] 1930 	push	ar7
      003A8B 8B 82            [24] 1931 	mov	dpl,r3
      003A8D 8C 83            [24] 1932 	mov	dph,r4
      003A8F 8D F0            [24] 1933 	mov	b,r5
      003A91 12 47 6E         [24] 1934 	lcall	__gptrget
      003A94 F8               [12] 1935 	mov	r0,a
      003A95 7F 00            [12] 1936 	mov	r7,#0x00
      003A97 09               [12] 1937 	inc	r1
      003A98 B9 00 01         [24] 1938 	cjne	r1,#0x00,00148$
      003A9B 0A               [12] 1939 	inc	r2
      003A9C                       1940 00148$:
      003A9C C0 07            [24] 1941 	push	ar7
      003A9E C0 06            [24] 1942 	push	ar6
      003AA0 C0 05            [24] 1943 	push	ar5
      003AA2 C0 04            [24] 1944 	push	ar4
      003AA4 C0 03            [24] 1945 	push	ar3
      003AA6 C0 02            [24] 1946 	push	ar2
      003AA8 C0 01            [24] 1947 	push	ar1
      003AAA C0 00            [24] 1948 	push	ar0
      003AAC C0 07            [24] 1949 	push	ar7
      003AAE C0 01            [24] 1950 	push	ar1
      003AB0 C0 02            [24] 1951 	push	ar2
      003AB2 74 55            [12] 1952 	mov	a,#___str_12
      003AB4 C0 E0            [24] 1953 	push	acc
      003AB6 74 4F            [12] 1954 	mov	a,#(___str_12 >> 8)
      003AB8 C0 E0            [24] 1955 	push	acc
      003ABA 74 80            [12] 1956 	mov	a,#0x80
      003ABC C0 E0            [24] 1957 	push	acc
      003ABE 12 3D 4C         [24] 1958 	lcall	_printf
      003AC1 E5 81            [12] 1959 	mov	a,sp
      003AC3 24 F9            [12] 1960 	add	a,#0xf9
      003AC5 F5 81            [12] 1961 	mov	sp,a
      003AC7 D0 01            [24] 1962 	pop	ar1
      003AC9 D0 02            [24] 1963 	pop	ar2
      003ACB D0 03            [24] 1964 	pop	ar3
      003ACD D0 04            [24] 1965 	pop	ar4
      003ACF D0 05            [24] 1966 	pop	ar5
      003AD1 D0 06            [24] 1967 	pop	ar6
      003AD3 D0 07            [24] 1968 	pop	ar7
                                   1969 ;	SPI.c:300: SPI_send(*data_ptr); // Send data
      003AD5 8B 82            [24] 1970 	mov	dpl,r3
      003AD7 8C 83            [24] 1971 	mov	dph,r4
      003AD9 8D F0            [24] 1972 	mov	b,r5
      003ADB 12 47 6E         [24] 1973 	lcall	__gptrget
      003ADE FF               [12] 1974 	mov	r7,a
      003ADF A3               [24] 1975 	inc	dptr
      003AE0 AB 82            [24] 1976 	mov	r3,dpl
      003AE2 AC 83            [24] 1977 	mov	r4,dph
      003AE4 8F 82            [24] 1978 	mov	dpl, r7
      003AE6 C0 07            [24] 1979 	push	ar7
      003AE8 C0 06            [24] 1980 	push	ar6
      003AEA C0 05            [24] 1981 	push	ar5
      003AEC C0 04            [24] 1982 	push	ar4
      003AEE C0 03            [24] 1983 	push	ar3
      003AF0 C0 02            [24] 1984 	push	ar2
      003AF2 C0 01            [24] 1985 	push	ar1
      003AF4 12 34 5A         [24] 1986 	lcall	_SPI_send
      003AF7 D0 01            [24] 1987 	pop	ar1
      003AF9 D0 02            [24] 1988 	pop	ar2
      003AFB D0 03            [24] 1989 	pop	ar3
      003AFD D0 04            [24] 1990 	pop	ar4
      003AFF D0 05            [24] 1991 	pop	ar5
      003B01 D0 06            [24] 1992 	pop	ar6
      003B03 D0 07            [24] 1993 	pop	ar7
                                   1994 ;	SPI.c:301: data_ptr++;
                                   1995 ;	SPI.c:298: for (int i = 0; i < num_bytes; i++) {
      003B05 90 03 87         [24] 1996 	mov	dptr,#_spi_buffer_write_i_20002_122
      003B08 E9               [12] 1997 	mov	a,r1
      003B09 F0               [24] 1998 	movx	@dptr,a
      003B0A EA               [12] 1999 	mov	a,r2
      003B0B A3               [24] 2000 	inc	dptr
      003B0C F0               [24] 2001 	movx	@dptr,a
      003B0D D0 07            [24] 2002 	pop	ar7
      003B0F D0 06            [24] 2003 	pop	ar6
      003B11 02 3A 6D         [24] 2004 	ljmp	00109$
      003B14                       2005 00107$:
                                   2006 ;	SPI.c:303: CS_HIGH; // Pull CS High
                                   2007 ;	assignBit
      003B14 D2 91            [12] 2008 	setb	_P1_1
                                   2009 ;	SPI.c:304: }
      003B16 22               [24] 2010 	ret
                                   2011 	.area CSEG    (CODE)
                                   2012 	.area CONST   (CODE)
                                   2013 	.area CONST   (CODE)
      004D6F                       2014 ___str_0:
      004D6F 77 72 6F 6E 67 20 62  2015 	.ascii "wrong bank"
             61 6E 6B
      004D79 00                    2016 	.db 0x00
                                   2017 	.area CSEG    (CODE)
                                   2018 	.area CONST   (CODE)
      004D7A                       2019 ___str_1:
      004D7A 57 72 69 74 65 3A 20  2020 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      004D9C 0A                    2021 	.db 0x0a
      004D9D 0D                    2022 	.db 0x0d
      004D9E 00                    2023 	.db 0x00
                                   2024 	.area CSEG    (CODE)
                                   2025 	.area CONST   (CODE)
      004D9F                       2026 ___str_2:
      004D9F 0A                    2027 	.db 0x0a
      004DA0 0D                    2028 	.db 0x0d
      004DA1 49 6E 76 61 6C 69 64  2029 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      004DD6 0A                    2030 	.db 0x0a
      004DD7 0D                    2031 	.db 0x0d
      004DD8 00                    2032 	.db 0x00
                                   2033 	.area CSEG    (CODE)
                                   2034 	.area CONST   (CODE)
      004DD9                       2035 ___str_3:
      004DD9 52 65 61 64 3A 20 41  2036 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004DFA 0A                    2037 	.db 0x0a
      004DFB 0D                    2038 	.db 0x0d
      004DFC 00                    2039 	.db 0x00
                                   2040 	.area CSEG    (CODE)
                                   2041 	.area CONST   (CODE)
      004DFD                       2042 ___str_4:
      004DFD 50 48 59 20 57 72 69  2043 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      004E23 0A                    2044 	.db 0x0a
      004E24 0D                    2045 	.db 0x0d
      004E25 00                    2046 	.db 0x00
                                   2047 	.area CSEG    (CODE)
                                   2048 	.area CONST   (CODE)
      004E26                       2049 ___str_5:
      004E26 52 65 61 64 3A 20 41  2050 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004E47 0A                    2051 	.db 0x0a
      004E48 00                    2052 	.db 0x00
                                   2053 	.area CSEG    (CODE)
                                   2054 	.area CONST   (CODE)
      004E49                       2055 ___str_6:
      004E49 50 48 59 20 52 65 61  2056 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      004E6E 0A                    2057 	.db 0x0a
      004E6F 0D                    2058 	.db 0x0d
      004E70 00                    2059 	.db 0x00
                                   2060 	.area CSEG    (CODE)
                                   2061 	.area CONST   (CODE)
      004E71                       2062 ___str_7:
      004E71 0A                    2063 	.db 0x0a
      004E72 0D                    2064 	.db 0x0d
      004E73 49 6E 76 61 6C 69 64  2065 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      004EAC 0A                    2066 	.db 0x0a
      004EAD 0D                    2067 	.db 0x0d
      004EAE 00                    2068 	.db 0x00
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
      004EAF                       2071 ___str_8:
      004EAF 0A                    2072 	.db 0x0a
      004EB0 0D                    2073 	.db 0x0d
      004EB1 42 75 66 66 65 72 20  2074 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      004EDD 0A                    2075 	.db 0x0a
      004EDE 0D                    2076 	.db 0x0d
      004EDF 00                    2077 	.db 0x00
                                   2078 	.area CSEG    (CODE)
                                   2079 	.area CONST   (CODE)
      004EE0                       2080 ___str_9:
      004EE0 0A                    2081 	.db 0x0a
      004EE1 0D                    2082 	.db 0x0d
      004EE2 49 6E 76 61 6C 69 64  2083 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      004EFD 0A                    2084 	.db 0x0a
      004EFE 0D                    2085 	.db 0x0d
      004EFF 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      004F00                       2089 ___str_10:
      004F00 0A                    2090 	.db 0x0a
      004F01 0D                    2091 	.db 0x0d
      004F02 49 6E 76 61 6C 69 64  2092 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      004F17 0A                    2093 	.db 0x0a
      004F18 0D                    2094 	.db 0x0d
      004F19 00                    2095 	.db 0x00
                                   2096 	.area CSEG    (CODE)
                                   2097 	.area CONST   (CODE)
      004F1A                       2098 ___str_11:
      004F1A 52 65 61 64 69 6E 67  2099 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      004F52 0A                    2100 	.db 0x0a
      004F53 0D                    2101 	.db 0x0d
      004F54 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
      004F55                       2105 ___str_12:
      004F55 42 79 74 65 20 25 64  2106 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      004F64 0A                    2107 	.db 0x0a
      004F65 0D                    2108 	.db 0x0d
      004F66 00                    2109 	.db 0x00
                                   2110 	.area CSEG    (CODE)
                                   2111 	.area CONST   (CODE)
      004F67                       2112 ___str_13:
      004F67 57 72 69 74 69 6E 67  2113 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      004F9D 0A                    2114 	.db 0x0a
      004F9E 0D                    2115 	.db 0x0d
      004F9F 00                    2116 	.db 0x00
                                   2117 	.area CSEG    (CODE)
                                   2118 	.area XINIT   (CODE)
                                   2119 	.area CABS    (ABS,CODE)

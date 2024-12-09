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
      000381                        498 _SPI_ReadByte_received_data_10000_115:
      000381                        499 	.ds 1
      000382                        500 _select_reg_bank_bank_10000_119:
      000382                        501 	.ds 1
      000383                        502 _select_reg_bank_data_10001_121:
      000383                        503 	.ds 1
      000384                        504 _spi_control_write_PARM_2:
      000384                        505 	.ds 1
      000385                        506 _spi_control_write_PARM_3:
      000385                        507 	.ds 1
      000386                        508 _spi_control_write_reg_bank_10000_124:
      000386                        509 	.ds 1
      000387                        510 _SPI_send_data_10000_128:
      000387                        511 	.ds 1
      000388                        512 _eth_spi_read_PARM_2:
      000388                        513 	.ds 1
      000389                        514 _eth_spi_read_addr_10000_133:
      000389                        515 	.ds 1
      00038A                        516 _phy_spi_write_PARM_2:
      00038A                        517 	.ds 2
      00038C                        518 _phy_spi_write_addr_10000_137:
      00038C                        519 	.ds 1
      00038D                        520 _mac_spi_read_PARM_2:
      00038D                        521 	.ds 1
      00038E                        522 _mac_spi_read_addr_10000_139:
      00038E                        523 	.ds 1
      00038F                        524 _phy_spi_read_addr_10000_143:
      00038F                        525 	.ds 1
      000390                        526 _busy_wait_data_10000_147:
      000390                        527 	.ds 1
      000391                        528 _buffer_init_PARM_2:
      000391                        529 	.ds 2
      000393                        530 _buffer_init_start_address_10000_149:
      000393                        531 	.ds 2
      000395                        532 _spi_buffer_read_PARM_2:
      000395                        533 	.ds 2
      000397                        534 _spi_buffer_read_PARM_3:
      000397                        535 	.ds 3
      00039A                        536 _spi_buffer_read_num_bytes_10000_153:
      00039A                        537 	.ds 2
      00039C                        538 _spi_buffer_write_PARM_2:
      00039C                        539 	.ds 2
      00039E                        540 _spi_buffer_write_PARM_3:
      00039E                        541 	.ds 3
      0003A1                        542 _spi_buffer_write_num_bytes_10000_163:
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
                                    581 ;received_data             Allocated with name '_SPI_ReadByte_received_data_10000_115'
                                    582 ;------------------------------------------------------------
                                    583 ;	SPI.c:4: uint8_t SPI_ReadByte(void)
                                    584 ;	-----------------------------------------
                                    585 ;	 function SPI_ReadByte
                                    586 ;	-----------------------------------------
      0038D2                        587 _SPI_ReadByte:
                           000007   588 	ar7 = 0x07
                           000006   589 	ar6 = 0x06
                           000005   590 	ar5 = 0x05
                           000004   591 	ar4 = 0x04
                           000003   592 	ar3 = 0x03
                           000002   593 	ar2 = 0x02
                           000001   594 	ar1 = 0x01
                           000000   595 	ar0 = 0x00
                                    596 ;	SPI.c:9: SPDAT = 0xFF;
      0038D2 75 C5 FF         [24]  597 	mov	_SPDAT,#0xff
                                    598 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      0038D5                        599 00101$:
      0038D5 E5 C4            [12]  600 	mov	a,_SPSTA
      0038D7 30 E7 FB         [24]  601 	jnb	acc.7,00101$
                                    602 ;	SPI.c:17: received_data = SPDAT;
      0038DA 90 03 81         [24]  603 	mov	dptr,#_SPI_ReadByte_received_data_10000_115
      0038DD E5 C5            [12]  604 	mov	a,_SPDAT
      0038DF F0               [24]  605 	movx	@dptr,a
                                    606 ;	SPI.c:19: return received_data;
      0038E0 E0               [24]  607 	movx	a,@dptr
                                    608 ;	SPI.c:20: }
      0038E1 F5 82            [12]  609 	mov	dpl,a
      0038E3 22               [24]  610 	ret
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    613 ;------------------------------------------------------------
                                    614 ;	SPI.c:22: void spi_set_autoinc(void)
                                    615 ;	-----------------------------------------
                                    616 ;	 function spi_set_autoinc
                                    617 ;	-----------------------------------------
      0038E4                        618 _spi_set_autoinc:
                                    619 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    620 ;	assignBit
      0038E4 C2 91            [12]  621 	clr	_P1_1
                                    622 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      0038E6 75 82 5E         [24]  623 	mov	dpl, #0x5e
      0038E9 12 39 B6         [24]  624 	lcall	_SPI_send
                                    625 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      0038EC 75 82 80         [24]  626 	mov	dpl, #0x80
      0038EF 12 39 B6         [24]  627 	lcall	_SPI_send
                                    628 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    629 ;	assignBit
      0038F2 D2 91            [12]  630 	setb	_P1_1
                                    631 ;	SPI.c:30: }
      0038F4 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'select_reg_bank'
                                    635 ;------------------------------------------------------------
                                    636 ;bank                      Allocated with name '_select_reg_bank_bank_10000_119'
                                    637 ;data                      Allocated with name '_select_reg_bank_data_10001_121'
                                    638 ;i                         Allocated with name '_select_reg_bank_i_20001_123'
                                    639 ;------------------------------------------------------------
                                    640 ;	SPI.c:33: void select_reg_bank(uint8_t bank)
                                    641 ;	-----------------------------------------
                                    642 ;	 function select_reg_bank
                                    643 ;	-----------------------------------------
      0038F5                        644 _select_reg_bank:
      0038F5 E5 82            [12]  645 	mov	a,dpl
      0038F7 90 03 82         [24]  646 	mov	dptr,#_select_reg_bank_bank_10000_119
      0038FA F0               [24]  647 	movx	@dptr,a
                                    648 ;	SPI.c:35: CS_LOW;
                                    649 ;	assignBit
      0038FB C2 91            [12]  650 	clr	_P1_1
                                    651 ;	SPI.c:36: SPI_send(0X1F); // Send the address
      0038FD 75 82 1F         [24]  652 	mov	dpl, #0x1f
      003900 12 39 B6         [24]  653 	lcall	_SPI_send
                                    654 ;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
      003903 12 38 D2         [24]  655 	lcall	_SPI_ReadByte
      003906 AF 82            [24]  656 	mov	r7, dpl
                                    657 ;	SPI.c:38: CS_HIGH;
                                    658 ;	assignBit
      003908 D2 91            [12]  659 	setb	_P1_1
                                    660 ;	SPI.c:41: data &= ~0x03; // Clear the last two bits
      00390A 53 07 FC         [24]  661 	anl	ar7,#0xfc
                                    662 ;	SPI.c:42: switch (bank)
      00390D 90 03 82         [24]  663 	mov	dptr,#_select_reg_bank_bank_10000_119
      003910 E0               [24]  664 	movx	a,@dptr
      003911 FE               [12]  665 	mov  r6,a
      003912 24 FC            [12]  666 	add	a,#0xff - 0x03
      003914 40 30            [24]  667 	jc	00105$
      003916 EE               [12]  668 	mov	a,r6
      003917 2E               [12]  669 	add	a,r6
                                    670 ;	SPI.c:44: case 0:
      003918 90 39 1C         [24]  671 	mov	dptr,#00133$
      00391B 73               [24]  672 	jmp	@a+dptr
      00391C                        673 00133$:
      00391C 80 06            [24]  674 	sjmp	00101$
      00391E 80 0B            [24]  675 	sjmp	00102$
      003920 80 12            [24]  676 	sjmp	00103$
      003922 80 19            [24]  677 	sjmp	00104$
      003924                        678 00101$:
                                    679 ;	SPI.c:45: data |= 0x00; // Last two bits: 00
      003924 90 03 83         [24]  680 	mov	dptr,#_select_reg_bank_data_10001_121
      003927 EF               [12]  681 	mov	a,r7
      003928 F0               [24]  682 	movx	@dptr,a
                                    683 ;	SPI.c:46: break;
                                    684 ;	SPI.c:47: case 1:
      003929 80 31            [24]  685 	sjmp	00115$
      00392B                        686 00102$:
                                    687 ;	SPI.c:48: data |= 0x01; // Last two bits: 01
      00392B 90 03 83         [24]  688 	mov	dptr,#_select_reg_bank_data_10001_121
      00392E 74 01            [12]  689 	mov	a,#0x01
      003930 4F               [12]  690 	orl	a,r7
      003931 F0               [24]  691 	movx	@dptr,a
                                    692 ;	SPI.c:49: break;
                                    693 ;	SPI.c:50: case 2:
      003932 80 28            [24]  694 	sjmp	00115$
      003934                        695 00103$:
                                    696 ;	SPI.c:51: data |= 0x02; // Last two bits: 10
      003934 90 03 83         [24]  697 	mov	dptr,#_select_reg_bank_data_10001_121
      003937 74 02            [12]  698 	mov	a,#0x02
      003939 4F               [12]  699 	orl	a,r7
      00393A F0               [24]  700 	movx	@dptr,a
                                    701 ;	SPI.c:52: break;
                                    702 ;	SPI.c:53: case 3:
      00393B 80 1F            [24]  703 	sjmp	00115$
      00393D                        704 00104$:
                                    705 ;	SPI.c:54: data |= 0x03; // Last two bits: 11
      00393D 90 03 83         [24]  706 	mov	dptr,#_select_reg_bank_data_10001_121
      003940 74 03            [12]  707 	mov	a,#0x03
      003942 4F               [12]  708 	orl	a,r7
      003943 F0               [24]  709 	movx	@dptr,a
                                    710 ;	SPI.c:55: break;
                                    711 ;	SPI.c:56: default:
      003944 80 16            [24]  712 	sjmp	00115$
      003946                        713 00105$:
                                    714 ;	SPI.c:57: printf("wrong bank");
      003946 74 5E            [12]  715 	mov	a,#___str_0
      003948 C0 E0            [24]  716 	push	acc
      00394A 74 76            [12]  717 	mov	a,#(___str_0 >> 8)
      00394C C0 E0            [24]  718 	push	acc
      00394E 74 80            [12]  719 	mov	a,#0x80
      003950 C0 E0            [24]  720 	push	acc
      003952 12 64 F1         [24]  721 	lcall	_printf
      003955 15 81            [12]  722 	dec	sp
      003957 15 81            [12]  723 	dec	sp
      003959 15 81            [12]  724 	dec	sp
                                    725 ;	SPI.c:58: return;
                                    726 ;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
      00395B 22               [24]  727 	ret
      00395C                        728 00115$:
      00395C 7F 00            [12]  729 	mov	r7,#0x00
      00395E                        730 00109$:
      00395E BF 10 00         [24]  731 	cjne	r7,#0x10,00134$
      003961                        732 00134$:
      003961 50 03            [24]  733 	jnc	00107$
      003963 0F               [12]  734 	inc	r7
      003964 80 F8            [24]  735 	sjmp	00109$
      003966                        736 00107$:
                                    737 ;	SPI.c:63: CS_LOW;
                                    738 ;	assignBit
      003966 C2 91            [12]  739 	clr	_P1_1
                                    740 ;	SPI.c:64: SPI_send(0x5F);
      003968 75 82 5F         [24]  741 	mov	dpl, #0x5f
      00396B 12 39 B6         [24]  742 	lcall	_SPI_send
                                    743 ;	SPI.c:65: SPI_send(data); // Send the modified data
      00396E 90 03 83         [24]  744 	mov	dptr,#_select_reg_bank_data_10001_121
      003971 E0               [24]  745 	movx	a,@dptr
      003972 F5 82            [12]  746 	mov	dpl,a
      003974 12 39 B6         [24]  747 	lcall	_SPI_send
                                    748 ;	SPI.c:66: CS_HIGH;
                                    749 ;	assignBit
      003977 D2 91            [12]  750 	setb	_P1_1
                                    751 ;	SPI.c:68: }
      003979 22               [24]  752 	ret
                                    753 ;------------------------------------------------------------
                                    754 ;Allocation info for local variables in function 'spi_control_write'
                                    755 ;------------------------------------------------------------
                                    756 ;addr                      Allocated with name '_spi_control_write_PARM_2'
                                    757 ;data                      Allocated with name '_spi_control_write_PARM_3'
                                    758 ;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_124'
                                    759 ;opcode                    Allocated with name '_spi_control_write_opcode_10000_125'
                                    760 ;------------------------------------------------------------
                                    761 ;	SPI.c:69: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
                                    762 ;	-----------------------------------------
                                    763 ;	 function spi_control_write
                                    764 ;	-----------------------------------------
      00397A                        765 _spi_control_write:
      00397A E5 82            [12]  766 	mov	a,dpl
      00397C 90 03 86         [24]  767 	mov	dptr,#_spi_control_write_reg_bank_10000_124
      00397F F0               [24]  768 	movx	@dptr,a
                                    769 ;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
      003980 90 03 84         [24]  770 	mov	dptr,#_spi_control_write_PARM_2
      003983 E0               [24]  771 	movx	a,@dptr
      003984 24 40            [12]  772 	add	a, #0x40
      003986 F0               [24]  773 	movx	@dptr,a
                                    774 ;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
      003987 90 03 86         [24]  775 	mov	dptr,#_spi_control_write_reg_bank_10000_124
      00398A E0               [24]  776 	movx	a,@dptr
      00398B F5 82            [12]  777 	mov	dpl,a
      00398D 12 38 F5         [24]  778 	lcall	_select_reg_bank
                                    779 ;	SPI.c:77: CS_LOW;
                                    780 ;	assignBit
      003990 C2 91            [12]  781 	clr	_P1_1
                                    782 ;	SPI.c:80: SPI_send(addr);
      003992 90 03 84         [24]  783 	mov	dptr,#_spi_control_write_PARM_2
      003995 E0               [24]  784 	movx	a,@dptr
      003996 F5 82            [12]  785 	mov	dpl,a
      003998 12 39 B6         [24]  786 	lcall	_SPI_send
                                    787 ;	SPI.c:83: SPI_send(data);
      00399B 90 03 85         [24]  788 	mov	dptr,#_spi_control_write_PARM_3
      00399E E0               [24]  789 	movx	a,@dptr
      00399F F5 82            [12]  790 	mov	dpl,a
      0039A1 12 39 B6         [24]  791 	lcall	_SPI_send
                                    792 ;	SPI.c:86: CS_HIGH;
                                    793 ;	assignBit
      0039A4 D2 91            [12]  794 	setb	_P1_1
                                    795 ;	SPI.c:90: }
      0039A6 22               [24]  796 	ret
                                    797 ;------------------------------------------------------------
                                    798 ;Allocation info for local variables in function 'configure_SPI'
                                    799 ;------------------------------------------------------------
                                    800 ;	SPI.c:93: void configure_SPI(void)
                                    801 ;	-----------------------------------------
                                    802 ;	 function configure_SPI
                                    803 ;	-----------------------------------------
      0039A7                        804 _configure_SPI:
                                    805 ;	SPI.c:95: CS_PIN = 1;
                                    806 ;	assignBit
      0039A7 D2 91            [12]  807 	setb	_P1_1
                                    808 ;	SPI.c:96: SPCON = 0x00;
      0039A9 75 C3 00         [24]  809 	mov	_SPCON,#0x00
                                    810 ;	SPI.c:97: SPCON |= SS_DISABLE;
      0039AC 43 C3 20         [24]  811 	orl	_SPCON,#0x20
                                    812 ;	SPI.c:98: SPCON |= MASTER_MODE;
      0039AF 43 C3 10         [24]  813 	orl	_SPCON,#0x10
                                    814 ;	SPI.c:99: SPCON |= SPI_ENABLE;
      0039B2 43 C3 40         [24]  815 	orl	_SPCON,#0x40
                                    816 ;	SPI.c:100: }
      0039B5 22               [24]  817 	ret
                                    818 ;------------------------------------------------------------
                                    819 ;Allocation info for local variables in function 'SPI_send'
                                    820 ;------------------------------------------------------------
                                    821 ;data                      Allocated with name '_SPI_send_data_10000_128'
                                    822 ;------------------------------------------------------------
                                    823 ;	SPI.c:103: void SPI_send(uint8_t data)
                                    824 ;	-----------------------------------------
                                    825 ;	 function SPI_send
                                    826 ;	-----------------------------------------
      0039B6                        827 _SPI_send:
      0039B6 E5 82            [12]  828 	mov	a,dpl
      0039B8 90 03 87         [24]  829 	mov	dptr,#_SPI_send_data_10000_128
      0039BB F0               [24]  830 	movx	@dptr,a
                                    831 ;	SPI.c:106: SPDAT = data;           // Config + MSB of data
      0039BC E0               [24]  832 	movx	a,@dptr
      0039BD F5 C5            [12]  833 	mov	_SPDAT,a
                                    834 ;	SPI.c:108: while (!(SPSTA & 0x80))
      0039BF                        835 00101$:
      0039BF E5 C4            [12]  836 	mov	a,_SPSTA
      0039C1 30 E7 FB         [24]  837 	jnb	acc.7,00101$
                                    838 ;	SPI.c:113: }
      0039C4 22               [24]  839 	ret
                                    840 ;------------------------------------------------------------
                                    841 ;Allocation info for local variables in function 'enc_reset'
                                    842 ;------------------------------------------------------------
                                    843 ;	SPI.c:115: void enc_reset(void)
                                    844 ;	-----------------------------------------
                                    845 ;	 function enc_reset
                                    846 ;	-----------------------------------------
      0039C5                        847 _enc_reset:
                                    848 ;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    849 ;	assignBit
      0039C5 C2 91            [12]  850 	clr	_P1_1
                                    851 ;	SPI.c:118: SPI_send(0xFF);            // Send reset command
      0039C7 75 82 FF         [24]  852 	mov	dpl, #0xff
      0039CA 12 39 B6         [24]  853 	lcall	_SPI_send
                                    854 ;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    855 ;	assignBit
      0039CD D2 91            [12]  856 	setb	_P1_1
                                    857 ;	SPI.c:120: }
      0039CF 22               [24]  858 	ret
                                    859 ;------------------------------------------------------------
                                    860 ;Allocation info for local variables in function 'eth_spi_read'
                                    861 ;------------------------------------------------------------
                                    862 ;bank                      Allocated with name '_eth_spi_read_PARM_2'
                                    863 ;addr                      Allocated with name '_eth_spi_read_addr_10000_133'
                                    864 ;data                      Allocated with name '_eth_spi_read_data_10001_136'
                                    865 ;------------------------------------------------------------
                                    866 ;	SPI.c:122: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
                                    867 ;	-----------------------------------------
                                    868 ;	 function eth_spi_read
                                    869 ;	-----------------------------------------
      0039D0                        870 _eth_spi_read:
      0039D0 E5 82            [12]  871 	mov	a,dpl
      0039D2 90 03 89         [24]  872 	mov	dptr,#_eth_spi_read_addr_10000_133
      0039D5 F0               [24]  873 	movx	@dptr,a
                                    874 ;	SPI.c:124: if (addr > 0x1F) {
      0039D6 E0               [24]  875 	movx	a,@dptr
      0039D7 FF               [12]  876 	mov  r7,a
      0039D8 24 E0            [12]  877 	add	a,#0xff - 0x1f
      0039DA 50 19            [24]  878 	jnc	00102$
                                    879 ;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      0039DC 74 69            [12]  880 	mov	a,#___str_1
      0039DE C0 E0            [24]  881 	push	acc
      0039E0 74 76            [12]  882 	mov	a,#(___str_1 >> 8)
      0039E2 C0 E0            [24]  883 	push	acc
      0039E4 74 80            [12]  884 	mov	a,#0x80
      0039E6 C0 E0            [24]  885 	push	acc
      0039E8 12 64 F1         [24]  886 	lcall	_printf
      0039EB 15 81            [12]  887 	dec	sp
      0039ED 15 81            [12]  888 	dec	sp
      0039EF 15 81            [12]  889 	dec	sp
                                    890 ;	SPI.c:126: return 0;
      0039F1 75 82 00         [24]  891 	mov	dpl, #0x00
      0039F4 22               [24]  892 	ret
      0039F5                        893 00102$:
                                    894 ;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
      0039F5 90 03 88         [24]  895 	mov	dptr,#_eth_spi_read_PARM_2
      0039F8 E0               [24]  896 	movx	a,@dptr
      0039F9 F5 82            [12]  897 	mov	dpl,a
      0039FB C0 07            [24]  898 	push	ar7
      0039FD 12 38 F5         [24]  899 	lcall	_select_reg_bank
      003A00 D0 07            [24]  900 	pop	ar7
                                    901 ;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
                                    902 ;	assignBit
      003A02 C2 91            [12]  903 	clr	_P1_1
                                    904 ;	SPI.c:132: SPI_send(addr);            // Send the address
      003A04 8F 82            [24]  905 	mov	dpl, r7
      003A06 12 39 B6         [24]  906 	lcall	_SPI_send
                                    907 ;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
      003A09 12 38 D2         [24]  908 	lcall	_SPI_ReadByte
      003A0C AF 82            [24]  909 	mov	r7, dpl
                                    910 ;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
                                    911 ;	assignBit
      003A0E D2 91            [12]  912 	setb	_P1_1
                                    913 ;	SPI.c:139: return data;
      003A10 8F 82            [24]  914 	mov	dpl, r7
                                    915 ;	SPI.c:140: }
      003A12 22               [24]  916 	ret
                                    917 ;------------------------------------------------------------
                                    918 ;Allocation info for local variables in function 'phy_spi_write'
                                    919 ;------------------------------------------------------------
                                    920 ;data                      Allocated with name '_phy_spi_write_PARM_2'
                                    921 ;addr                      Allocated with name '_phy_spi_write_addr_10000_137'
                                    922 ;------------------------------------------------------------
                                    923 ;	SPI.c:142: void phy_spi_write(uint8_t addr, uint16_t data)
                                    924 ;	-----------------------------------------
                                    925 ;	 function phy_spi_write
                                    926 ;	-----------------------------------------
      003A13                        927 _phy_spi_write:
      003A13 E5 82            [12]  928 	mov	a,dpl
      003A15 90 03 8C         [24]  929 	mov	dptr,#_phy_spi_write_addr_10000_137
      003A18 F0               [24]  930 	movx	@dptr,a
                                    931 ;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
      003A19 E0               [24]  932 	movx	a,@dptr
      003A1A FF               [12]  933 	mov	r7,a
      003A1B 90 03 84         [24]  934 	mov	dptr,#_spi_control_write_PARM_2
      003A1E 74 14            [12]  935 	mov	a,#0x14
      003A20 F0               [24]  936 	movx	@dptr,a
      003A21 90 03 85         [24]  937 	mov	dptr,#_spi_control_write_PARM_3
      003A24 EF               [12]  938 	mov	a,r7
      003A25 F0               [24]  939 	movx	@dptr,a
      003A26 75 82 02         [24]  940 	mov	dpl, #0x02
      003A29 C0 07            [24]  941 	push	ar7
      003A2B 12 39 7A         [24]  942 	lcall	_spi_control_write
      003A2E D0 07            [24]  943 	pop	ar7
                                    944 ;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      003A30 90 03 8A         [24]  945 	mov	dptr,#_phy_spi_write_PARM_2
      003A33 E0               [24]  946 	movx	a,@dptr
      003A34 FD               [12]  947 	mov	r5,a
      003A35 A3               [24]  948 	inc	dptr
      003A36 E0               [24]  949 	movx	a,@dptr
      003A37 FE               [12]  950 	mov	r6,a
      003A38 8D 04            [24]  951 	mov	ar4,r5
      003A3A 90 03 84         [24]  952 	mov	dptr,#_spi_control_write_PARM_2
      003A3D 74 16            [12]  953 	mov	a,#0x16
      003A3F F0               [24]  954 	movx	@dptr,a
      003A40 90 03 85         [24]  955 	mov	dptr,#_spi_control_write_PARM_3
      003A43 EC               [12]  956 	mov	a,r4
      003A44 F0               [24]  957 	movx	@dptr,a
      003A45 75 82 02         [24]  958 	mov	dpl, #0x02
      003A48 C0 07            [24]  959 	push	ar7
      003A4A C0 06            [24]  960 	push	ar6
      003A4C C0 05            [24]  961 	push	ar5
      003A4E 12 39 7A         [24]  962 	lcall	_spi_control_write
      003A51 D0 05            [24]  963 	pop	ar5
      003A53 D0 06            [24]  964 	pop	ar6
      003A55 D0 07            [24]  965 	pop	ar7
                                    966 ;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      003A57 8E 04            [24]  967 	mov	ar4,r6
      003A59 90 03 84         [24]  968 	mov	dptr,#_spi_control_write_PARM_2
      003A5C 74 17            [12]  969 	mov	a,#0x17
      003A5E F0               [24]  970 	movx	@dptr,a
      003A5F 90 03 85         [24]  971 	mov	dptr,#_spi_control_write_PARM_3
      003A62 EC               [12]  972 	mov	a,r4
      003A63 F0               [24]  973 	movx	@dptr,a
      003A64 75 82 02         [24]  974 	mov	dpl, #0x02
      003A67 C0 07            [24]  975 	push	ar7
      003A69 C0 06            [24]  976 	push	ar6
      003A6B C0 05            [24]  977 	push	ar5
      003A6D 12 39 7A         [24]  978 	lcall	_spi_control_write
      003A70 D0 05            [24]  979 	pop	ar5
      003A72 D0 06            [24]  980 	pop	ar6
      003A74 D0 07            [24]  981 	pop	ar7
                                    982 ;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003A76 7C 00            [12]  983 	mov	r4,#0x00
      003A78 C0 05            [24]  984 	push	ar5
      003A7A C0 06            [24]  985 	push	ar6
      003A7C C0 07            [24]  986 	push	ar7
      003A7E C0 04            [24]  987 	push	ar4
      003A80 74 A3            [12]  988 	mov	a,#___str_2
      003A82 C0 E0            [24]  989 	push	acc
      003A84 74 76            [12]  990 	mov	a,#(___str_2 >> 8)
      003A86 C0 E0            [24]  991 	push	acc
      003A88 74 80            [12]  992 	mov	a,#0x80
      003A8A C0 E0            [24]  993 	push	acc
      003A8C 12 64 F1         [24]  994 	lcall	_printf
      003A8F E5 81            [12]  995 	mov	a,sp
      003A91 24 F9            [12]  996 	add	a,#0xf9
      003A93 F5 81            [12]  997 	mov	sp,a
                                    998 ;	SPI.c:150: }
      003A95 22               [24]  999 	ret
                                   1000 ;------------------------------------------------------------
                                   1001 ;Allocation info for local variables in function 'mac_spi_read'
                                   1002 ;------------------------------------------------------------
                                   1003 ;bank                      Allocated with name '_mac_spi_read_PARM_2'
                                   1004 ;addr                      Allocated with name '_mac_spi_read_addr_10000_139'
                                   1005 ;data                      Allocated with name '_mac_spi_read_data_10001_142'
                                   1006 ;------------------------------------------------------------
                                   1007 ;	SPI.c:152: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
                                   1008 ;	-----------------------------------------
                                   1009 ;	 function mac_spi_read
                                   1010 ;	-----------------------------------------
      003A96                       1011 _mac_spi_read:
      003A96 E5 82            [12] 1012 	mov	a,dpl
      003A98 90 03 8E         [24] 1013 	mov	dptr,#_mac_spi_read_addr_10000_139
      003A9B F0               [24] 1014 	movx	@dptr,a
                                   1015 ;	SPI.c:154: if (addr > 0x1F) {
      003A9C E0               [24] 1016 	movx	a,@dptr
      003A9D FF               [12] 1017 	mov  r7,a
      003A9E 24 E0            [12] 1018 	add	a,#0xff - 0x1f
      003AA0 50 19            [24] 1019 	jnc	00102$
                                   1020 ;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003AA2 74 69            [12] 1021 	mov	a,#___str_1
      003AA4 C0 E0            [24] 1022 	push	acc
      003AA6 74 76            [12] 1023 	mov	a,#(___str_1 >> 8)
      003AA8 C0 E0            [24] 1024 	push	acc
      003AAA 74 80            [12] 1025 	mov	a,#0x80
      003AAC C0 E0            [24] 1026 	push	acc
      003AAE 12 64 F1         [24] 1027 	lcall	_printf
      003AB1 15 81            [12] 1028 	dec	sp
      003AB3 15 81            [12] 1029 	dec	sp
      003AB5 15 81            [12] 1030 	dec	sp
                                   1031 ;	SPI.c:156: return 0; // Return 0 if address is invalid
      003AB7 75 82 00         [24] 1032 	mov	dpl, #0x00
      003ABA 22               [24] 1033 	ret
      003ABB                       1034 00102$:
                                   1035 ;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
      003ABB 90 03 8D         [24] 1036 	mov	dptr,#_mac_spi_read_PARM_2
      003ABE E0               [24] 1037 	movx	a,@dptr
      003ABF F5 82            [12] 1038 	mov	dpl,a
      003AC1 C0 07            [24] 1039 	push	ar7
      003AC3 12 38 F5         [24] 1040 	lcall	_select_reg_bank
      003AC6 D0 07            [24] 1041 	pop	ar7
                                   1042 ;	SPI.c:162: CS_LOW;
                                   1043 ;	assignBit
      003AC8 C2 91            [12] 1044 	clr	_P1_1
                                   1045 ;	SPI.c:165: SPI_send(addr);
      003ACA 8F 82            [24] 1046 	mov	dpl, r7
      003ACC 12 39 B6         [24] 1047 	lcall	_SPI_send
                                   1048 ;	SPI.c:168: uint8_t data = SPI_ReadByte();
      003ACF 12 38 D2         [24] 1049 	lcall	_SPI_ReadByte
      003AD2 AF 82            [24] 1050 	mov	r7, dpl
                                   1051 ;	SPI.c:171: CS_HIGH;
                                   1052 ;	assignBit
      003AD4 D2 91            [12] 1053 	setb	_P1_1
                                   1054 ;	SPI.c:176: return data;
      003AD6 8F 82            [24] 1055 	mov	dpl, r7
                                   1056 ;	SPI.c:177: }
      003AD8 22               [24] 1057 	ret
                                   1058 ;------------------------------------------------------------
                                   1059 ;Allocation info for local variables in function 'phy_spi_read'
                                   1060 ;------------------------------------------------------------
                                   1061 ;addr                      Allocated with name '_phy_spi_read_addr_10000_143'
                                   1062 ;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_145'
                                   1063 ;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_145'
                                   1064 ;data                      Allocated with name '_phy_spi_read_data_10001_145'
                                   1065 ;------------------------------------------------------------
                                   1066 ;	SPI.c:180: uint16_t phy_spi_read(uint8_t addr)
                                   1067 ;	-----------------------------------------
                                   1068 ;	 function phy_spi_read
                                   1069 ;	-----------------------------------------
      003AD9                       1070 _phy_spi_read:
      003AD9 E5 82            [12] 1071 	mov	a,dpl
      003ADB 90 03 8F         [24] 1072 	mov	dptr,#_phy_spi_read_addr_10000_143
      003ADE F0               [24] 1073 	movx	@dptr,a
                                   1074 ;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
      003ADF E0               [24] 1075 	movx	a,@dptr
      003AE0 FF               [12] 1076 	mov	r7,a
      003AE1 90 03 84         [24] 1077 	mov	dptr,#_spi_control_write_PARM_2
      003AE4 74 14            [12] 1078 	mov	a,#0x14
      003AE6 F0               [24] 1079 	movx	@dptr,a
      003AE7 90 03 85         [24] 1080 	mov	dptr,#_spi_control_write_PARM_3
      003AEA EF               [12] 1081 	mov	a,r7
      003AEB F0               [24] 1082 	movx	@dptr,a
      003AEC 75 82 02         [24] 1083 	mov	dpl, #0x02
      003AEF 12 39 7A         [24] 1084 	lcall	_spi_control_write
                                   1085 ;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      003AF2 90 03 84         [24] 1086 	mov	dptr,#_spi_control_write_PARM_2
      003AF5 74 12            [12] 1087 	mov	a,#0x12
      003AF7 F0               [24] 1088 	movx	@dptr,a
      003AF8 90 03 85         [24] 1089 	mov	dptr,#_spi_control_write_PARM_3
      003AFB 74 01            [12] 1090 	mov	a,#0x01
      003AFD F0               [24] 1091 	movx	@dptr,a
      003AFE 75 82 02         [24] 1092 	mov	dpl, #0x02
      003B01 12 39 7A         [24] 1093 	lcall	_spi_control_write
                                   1094 ;	SPI.c:185: busy_wait();                          // Wait for the read to complete
      003B04 12 3B 4B         [24] 1095 	lcall	_busy_wait
                                   1096 ;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      003B07 90 03 84         [24] 1097 	mov	dptr,#_spi_control_write_PARM_2
      003B0A 74 12            [12] 1098 	mov	a,#0x12
      003B0C F0               [24] 1099 	movx	@dptr,a
      003B0D 90 03 85         [24] 1100 	mov	dptr,#_spi_control_write_PARM_3
      003B10 E4               [12] 1101 	clr	a
      003B11 F0               [24] 1102 	movx	@dptr,a
      003B12 75 82 02         [24] 1103 	mov	dpl, #0x02
      003B15 12 39 7A         [24] 1104 	lcall	_spi_control_write
                                   1105 ;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      003B18 90 03 8D         [24] 1106 	mov	dptr,#_mac_spi_read_PARM_2
      003B1B 74 02            [12] 1107 	mov	a,#0x02
      003B1D F0               [24] 1108 	movx	@dptr,a
      003B1E 75 82 18         [24] 1109 	mov	dpl, #0x18
      003B21 12 3A 96         [24] 1110 	lcall	_mac_spi_read
      003B24 AF 82            [24] 1111 	mov	r7, dpl
      003B26 7E 00            [12] 1112 	mov	r6,#0x00
                                   1113 ;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003B28 90 03 8D         [24] 1114 	mov	dptr,#_mac_spi_read_PARM_2
      003B2B 74 02            [12] 1115 	mov	a,#0x02
      003B2D F0               [24] 1116 	movx	@dptr,a
      003B2E 75 82 19         [24] 1117 	mov	dpl, #0x19
      003B31 C0 07            [24] 1118 	push	ar7
      003B33 C0 06            [24] 1119 	push	ar6
      003B35 12 3A 96         [24] 1120 	lcall	_mac_spi_read
      003B38 AD 82            [24] 1121 	mov	r5, dpl
      003B3A D0 06            [24] 1122 	pop	ar6
      003B3C D0 07            [24] 1123 	pop	ar7
                                   1124 ;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      003B3E 8D 04            [24] 1125 	mov	ar4,r5
      003B40 E4               [12] 1126 	clr	a
      003B41 42 07            [12] 1127 	orl	ar7,a
      003B43 EC               [12] 1128 	mov	a,r4
      003B44 42 06            [12] 1129 	orl	ar6,a
                                   1130 ;	SPI.c:197: return data;        // Combine MSB and LSB
      003B46 8F 82            [24] 1131 	mov	dpl, r7
      003B48 8E 83            [24] 1132 	mov	dph, r6
                                   1133 ;	SPI.c:198: }
      003B4A 22               [24] 1134 	ret
                                   1135 ;------------------------------------------------------------
                                   1136 ;Allocation info for local variables in function 'busy_wait'
                                   1137 ;------------------------------------------------------------
                                   1138 ;data                      Allocated with name '_busy_wait_data_10000_147'
                                   1139 ;------------------------------------------------------------
                                   1140 ;	SPI.c:200: void busy_wait(void)
                                   1141 ;	-----------------------------------------
                                   1142 ;	 function busy_wait
                                   1143 ;	-----------------------------------------
      003B4B                       1144 _busy_wait:
                                   1145 ;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      003B4B 90 03 8D         [24] 1146 	mov	dptr,#_mac_spi_read_PARM_2
      003B4E 74 03            [12] 1147 	mov	a,#0x03
      003B50 F0               [24] 1148 	movx	@dptr,a
      003B51 75 82 0A         [24] 1149 	mov	dpl, #0x0a
      003B54 12 3A 96         [24] 1150 	lcall	_mac_spi_read
      003B57 E5 82            [12] 1151 	mov	a, dpl
      003B59 90 03 90         [24] 1152 	mov	dptr,#_busy_wait_data_10000_147
      003B5C F0               [24] 1153 	movx	@dptr,a
                                   1154 ;	SPI.c:203: while (data & 0x01)
      003B5D                       1155 00101$:
      003B5D 90 03 90         [24] 1156 	mov	dptr,#_busy_wait_data_10000_147
      003B60 E0               [24] 1157 	movx	a,@dptr
      003B61 30 E0 14         [24] 1158 	jnb	acc.0,00104$
                                   1159 ;	SPI.c:205: data = mac_spi_read(0x0A, 3);
      003B64 90 03 8D         [24] 1160 	mov	dptr,#_mac_spi_read_PARM_2
      003B67 74 03            [12] 1161 	mov	a,#0x03
      003B69 F0               [24] 1162 	movx	@dptr,a
      003B6A 75 82 0A         [24] 1163 	mov	dpl, #0x0a
      003B6D 12 3A 96         [24] 1164 	lcall	_mac_spi_read
      003B70 E5 82            [12] 1165 	mov	a, dpl
      003B72 90 03 90         [24] 1166 	mov	dptr,#_busy_wait_data_10000_147
      003B75 F0               [24] 1167 	movx	@dptr,a
      003B76 80 E5            [24] 1168 	sjmp	00101$
      003B78                       1169 00104$:
                                   1170 ;	SPI.c:207: }
      003B78 22               [24] 1171 	ret
                                   1172 ;------------------------------------------------------------
                                   1173 ;Allocation info for local variables in function 'buffer_init'
                                   1174 ;------------------------------------------------------------
                                   1175 ;size                      Allocated with name '_buffer_init_PARM_2'
                                   1176 ;start_address             Allocated with name '_buffer_init_start_address_10000_149'
                                   1177 ;erxst                     Allocated with name '_buffer_init_erxst_10001_152'
                                   1178 ;erxnd                     Allocated with name '_buffer_init_erxnd_10001_152'
                                   1179 ;------------------------------------------------------------
                                   1180 ;	SPI.c:209: void buffer_init(uint16_t start_address, uint16_t size)
                                   1181 ;	-----------------------------------------
                                   1182 ;	 function buffer_init
                                   1183 ;	-----------------------------------------
      003B79                       1184 _buffer_init:
      003B79 AF 83            [24] 1185 	mov	r7,dph
      003B7B E5 82            [12] 1186 	mov	a,dpl
      003B7D 90 03 93         [24] 1187 	mov	dptr,#_buffer_init_start_address_10000_149
      003B80 F0               [24] 1188 	movx	@dptr,a
      003B81 EF               [12] 1189 	mov	a,r7
      003B82 A3               [24] 1190 	inc	dptr
      003B83 F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      003B84 90 03 93         [24] 1193 	mov	dptr,#_buffer_init_start_address_10000_149
      003B87 E0               [24] 1194 	movx	a,@dptr
      003B88 FE               [12] 1195 	mov	r6,a
      003B89 A3               [24] 1196 	inc	dptr
      003B8A E0               [24] 1197 	movx	a,@dptr
      003B8B FF               [12] 1198 	mov	r7,a
      003B8C 8E 04            [24] 1199 	mov	ar4,r6
      003B8E 8F 05            [24] 1200 	mov	ar5,r7
      003B90 C3               [12] 1201 	clr	c
      003B91 74 FF            [12] 1202 	mov	a,#0xff
      003B93 9C               [12] 1203 	subb	a,r4
      003B94 74 1F            [12] 1204 	mov	a,#0x1f
      003B96 9D               [12] 1205 	subb	a,r5
      003B97 40 17            [24] 1206 	jc	00101$
      003B99 90 03 91         [24] 1207 	mov	dptr,#_buffer_init_PARM_2
      003B9C E0               [24] 1208 	movx	a,@dptr
      003B9D FA               [12] 1209 	mov	r2,a
      003B9E A3               [24] 1210 	inc	dptr
      003B9F E0               [24] 1211 	movx	a,@dptr
      003BA0 FB               [12] 1212 	mov	r3,a
      003BA1 EA               [12] 1213 	mov	a,r2
      003BA2 2E               [12] 1214 	add	a, r6
      003BA3 F8               [12] 1215 	mov	r0,a
      003BA4 EB               [12] 1216 	mov	a,r3
      003BA5 3F               [12] 1217 	addc	a, r7
      003BA6 F9               [12] 1218 	mov	r1,a
      003BA7 C3               [12] 1219 	clr	c
      003BA8 74 FF            [12] 1220 	mov	a,#0xff
      003BAA 98               [12] 1221 	subb	a,r0
      003BAB 74 1F            [12] 1222 	mov	a,#0x1f
      003BAD 99               [12] 1223 	subb	a,r1
      003BAE 50 2A            [24] 1224 	jnc	00102$
      003BB0                       1225 00101$:
                                   1226 ;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      003BB0 90 03 91         [24] 1227 	mov	dptr,#_buffer_init_PARM_2
      003BB3 E0               [24] 1228 	movx	a,@dptr
      003BB4 C0 E0            [24] 1229 	push	acc
      003BB6 A3               [24] 1230 	inc	dptr
      003BB7 E0               [24] 1231 	movx	a,@dptr
      003BB8 C0 E0            [24] 1232 	push	acc
      003BBA 90 03 93         [24] 1233 	mov	dptr,#_buffer_init_start_address_10000_149
      003BBD E0               [24] 1234 	movx	a,@dptr
      003BBE C0 E0            [24] 1235 	push	acc
      003BC0 A3               [24] 1236 	inc	dptr
      003BC1 E0               [24] 1237 	movx	a,@dptr
      003BC2 C0 E0            [24] 1238 	push	acc
      003BC4 74 CC            [12] 1239 	mov	a,#___str_3
      003BC6 C0 E0            [24] 1240 	push	acc
      003BC8 74 76            [12] 1241 	mov	a,#(___str_3 >> 8)
      003BCA C0 E0            [24] 1242 	push	acc
      003BCC 74 80            [12] 1243 	mov	a,#0x80
      003BCE C0 E0            [24] 1244 	push	acc
      003BD0 12 64 F1         [24] 1245 	lcall	_printf
      003BD3 E5 81            [12] 1246 	mov	a,sp
      003BD5 24 F9            [12] 1247 	add	a,#0xf9
      003BD7 F5 81            [12] 1248 	mov	sp,a
                                   1249 ;	SPI.c:213: return;
      003BD9 22               [24] 1250 	ret
      003BDA                       1251 00102$:
                                   1252 ;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      003BDA 53 04 FE         [24] 1253 	anl	ar4,#0xfe
                                   1254 ;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      003BDD EA               [12] 1255 	mov	a,r2
      003BDE 2E               [12] 1256 	add	a, r6
      003BDF FE               [12] 1257 	mov	r6,a
      003BE0 EB               [12] 1258 	mov	a,r3
      003BE1 3F               [12] 1259 	addc	a, r7
      003BE2 FF               [12] 1260 	mov	r7,a
      003BE3 1E               [12] 1261 	dec	r6
      003BE4 BE FF 01         [24] 1262 	cjne	r6,#0xff,00114$
      003BE7 1F               [12] 1263 	dec	r7
      003BE8                       1264 00114$:
      003BE8 53 06 FE         [24] 1265 	anl	ar6,#0xfe
                                   1266 ;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      003BEB 8D 03            [24] 1267 	mov	ar3,r5
      003BED 90 03 84         [24] 1268 	mov	dptr,#_spi_control_write_PARM_2
      003BF0 74 08            [12] 1269 	mov	a,#0x08
      003BF2 F0               [24] 1270 	movx	@dptr,a
      003BF3 90 03 85         [24] 1271 	mov	dptr,#_spi_control_write_PARM_3
      003BF6 EB               [12] 1272 	mov	a,r3
      003BF7 F0               [24] 1273 	movx	@dptr,a
      003BF8 75 82 00         [24] 1274 	mov	dpl, #0x00
      003BFB C0 07            [24] 1275 	push	ar7
      003BFD C0 06            [24] 1276 	push	ar6
      003BFF C0 05            [24] 1277 	push	ar5
      003C01 C0 04            [24] 1278 	push	ar4
      003C03 12 39 7A         [24] 1279 	lcall	_spi_control_write
      003C06 D0 04            [24] 1280 	pop	ar4
      003C08 D0 05            [24] 1281 	pop	ar5
      003C0A D0 06            [24] 1282 	pop	ar6
      003C0C D0 07            [24] 1283 	pop	ar7
                                   1284 ;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003C0E 8C 03            [24] 1285 	mov	ar3,r4
      003C10 90 03 84         [24] 1286 	mov	dptr,#_spi_control_write_PARM_2
      003C13 74 09            [12] 1287 	mov	a,#0x09
      003C15 F0               [24] 1288 	movx	@dptr,a
      003C16 90 03 85         [24] 1289 	mov	dptr,#_spi_control_write_PARM_3
      003C19 EB               [12] 1290 	mov	a,r3
      003C1A F0               [24] 1291 	movx	@dptr,a
      003C1B 75 82 00         [24] 1292 	mov	dpl, #0x00
      003C1E C0 07            [24] 1293 	push	ar7
      003C20 C0 06            [24] 1294 	push	ar6
      003C22 C0 05            [24] 1295 	push	ar5
      003C24 C0 04            [24] 1296 	push	ar4
      003C26 12 39 7A         [24] 1297 	lcall	_spi_control_write
      003C29 D0 04            [24] 1298 	pop	ar4
      003C2B D0 05            [24] 1299 	pop	ar5
      003C2D D0 06            [24] 1300 	pop	ar6
      003C2F D0 07            [24] 1301 	pop	ar7
                                   1302 ;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003C31 8F 03            [24] 1303 	mov	ar3,r7
      003C33 90 03 84         [24] 1304 	mov	dptr,#_spi_control_write_PARM_2
      003C36 74 0A            [12] 1305 	mov	a,#0x0a
      003C38 F0               [24] 1306 	movx	@dptr,a
      003C39 90 03 85         [24] 1307 	mov	dptr,#_spi_control_write_PARM_3
      003C3C EB               [12] 1308 	mov	a,r3
      003C3D F0               [24] 1309 	movx	@dptr,a
      003C3E 75 82 00         [24] 1310 	mov	dpl, #0x00
      003C41 C0 07            [24] 1311 	push	ar7
      003C43 C0 06            [24] 1312 	push	ar6
      003C45 C0 05            [24] 1313 	push	ar5
      003C47 C0 04            [24] 1314 	push	ar4
      003C49 12 39 7A         [24] 1315 	lcall	_spi_control_write
      003C4C D0 04            [24] 1316 	pop	ar4
      003C4E D0 05            [24] 1317 	pop	ar5
      003C50 D0 06            [24] 1318 	pop	ar6
      003C52 D0 07            [24] 1319 	pop	ar7
                                   1320 ;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      003C54 8E 03            [24] 1321 	mov	ar3,r6
      003C56 90 03 84         [24] 1322 	mov	dptr,#_spi_control_write_PARM_2
      003C59 74 0B            [12] 1323 	mov	a,#0x0b
      003C5B F0               [24] 1324 	movx	@dptr,a
      003C5C 90 03 85         [24] 1325 	mov	dptr,#_spi_control_write_PARM_3
      003C5F EB               [12] 1326 	mov	a,r3
      003C60 F0               [24] 1327 	movx	@dptr,a
      003C61 75 82 00         [24] 1328 	mov	dpl, #0x00
      003C64 C0 07            [24] 1329 	push	ar7
      003C66 C0 06            [24] 1330 	push	ar6
      003C68 C0 05            [24] 1331 	push	ar5
      003C6A C0 04            [24] 1332 	push	ar4
      003C6C 12 39 7A         [24] 1333 	lcall	_spi_control_write
      003C6F D0 04            [24] 1334 	pop	ar4
      003C71 D0 05            [24] 1335 	pop	ar5
      003C73 D0 06            [24] 1336 	pop	ar6
      003C75 D0 07            [24] 1337 	pop	ar7
                                   1338 ;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      003C77 C0 06            [24] 1339 	push	ar6
      003C79 C0 07            [24] 1340 	push	ar7
      003C7B C0 04            [24] 1341 	push	ar4
      003C7D C0 05            [24] 1342 	push	ar5
      003C7F 74 0A            [12] 1343 	mov	a,#___str_4
      003C81 C0 E0            [24] 1344 	push	acc
      003C83 74 77            [12] 1345 	mov	a,#(___str_4 >> 8)
      003C85 C0 E0            [24] 1346 	push	acc
      003C87 74 80            [12] 1347 	mov	a,#0x80
      003C89 C0 E0            [24] 1348 	push	acc
      003C8B 12 64 F1         [24] 1349 	lcall	_printf
      003C8E E5 81            [12] 1350 	mov	a,sp
      003C90 24 F9            [12] 1351 	add	a,#0xf9
      003C92 F5 81            [12] 1352 	mov	sp,a
                                   1353 ;	SPI.c:229: }
      003C94 22               [24] 1354 	ret
                                   1355 ;------------------------------------------------------------
                                   1356 ;Allocation info for local variables in function 'spi_buffer_read'
                                   1357 ;------------------------------------------------------------
                                   1358 ;start_address             Allocated with name '_spi_buffer_read_PARM_2'
                                   1359 ;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
                                   1360 ;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_153'
                                   1361 ;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_159'
                                   1362 ;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_159'
                                   1363 ;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_160'
                                   1364 ;i                         Allocated with name '_spi_buffer_read_i_20002_161'
                                   1365 ;------------------------------------------------------------
                                   1366 ;	SPI.c:232: uint16_t spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1367 ;	-----------------------------------------
                                   1368 ;	 function spi_buffer_read
                                   1369 ;	-----------------------------------------
      003C95                       1370 _spi_buffer_read:
      003C95 AF 83            [24] 1371 	mov	r7,dph
      003C97 E5 82            [12] 1372 	mov	a,dpl
      003C99 90 03 9A         [24] 1373 	mov	dptr,#_spi_buffer_read_num_bytes_10000_153
      003C9C F0               [24] 1374 	movx	@dptr,a
      003C9D EF               [12] 1375 	mov	a,r7
      003C9E A3               [24] 1376 	inc	dptr
      003C9F F0               [24] 1377 	movx	@dptr,a
                                   1378 ;	SPI.c:234: if (num_bytes < 1) {
      003CA0 90 03 9A         [24] 1379 	mov	dptr,#_spi_buffer_read_num_bytes_10000_153
      003CA3 E0               [24] 1380 	movx	a,@dptr
      003CA4 FE               [12] 1381 	mov	r6,a
      003CA5 A3               [24] 1382 	inc	dptr
      003CA6 E0               [24] 1383 	movx	a,@dptr
      003CA7 FF               [12] 1384 	mov	r7,a
      003CA8 C3               [12] 1385 	clr	c
      003CA9 EE               [12] 1386 	mov	a,r6
      003CAA 94 01            [12] 1387 	subb	a,#0x01
      003CAC EF               [12] 1388 	mov	a,r7
      003CAD 64 80            [12] 1389 	xrl	a,#0x80
      003CAF 94 80            [12] 1390 	subb	a,#0x80
      003CB1 50 1A            [24] 1391 	jnc	00102$
                                   1392 ;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003CB3 C0 06            [24] 1393 	push	ar6
      003CB5 C0 07            [24] 1394 	push	ar7
      003CB7 74 3B            [12] 1395 	mov	a,#___str_5
      003CB9 C0 E0            [24] 1396 	push	acc
      003CBB 74 77            [12] 1397 	mov	a,#(___str_5 >> 8)
      003CBD C0 E0            [24] 1398 	push	acc
      003CBF 74 80            [12] 1399 	mov	a,#0x80
      003CC1 C0 E0            [24] 1400 	push	acc
      003CC3 12 64 F1         [24] 1401 	lcall	_printf
      003CC6 E5 81            [12] 1402 	mov	a,sp
      003CC8 24 FB            [12] 1403 	add	a,#0xfb
      003CCA F5 81            [12] 1404 	mov	sp,a
                                   1405 ;	SPI.c:236: return;
      003CCC 22               [24] 1406 	ret
      003CCD                       1407 00102$:
                                   1408 ;	SPI.c:238: if (start_address > 0x1FFF) {
      003CCD 90 03 95         [24] 1409 	mov	dptr,#_spi_buffer_read_PARM_2
      003CD0 E0               [24] 1410 	movx	a,@dptr
      003CD1 FC               [12] 1411 	mov	r4,a
      003CD2 A3               [24] 1412 	inc	dptr
      003CD3 E0               [24] 1413 	movx	a,@dptr
      003CD4 FD               [12] 1414 	mov	r5,a
      003CD5 8C 02            [24] 1415 	mov	ar2,r4
      003CD7 8D 03            [24] 1416 	mov	ar3,r5
      003CD9 C3               [12] 1417 	clr	c
      003CDA 74 FF            [12] 1418 	mov	a,#0xff
      003CDC 9A               [12] 1419 	subb	a,r2
      003CDD 74 1F            [12] 1420 	mov	a,#0x1f
      003CDF 9B               [12] 1421 	subb	a,r3
      003CE0 50 1A            [24] 1422 	jnc	00107$
                                   1423 ;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
      003CE2 C0 04            [24] 1424 	push	ar4
      003CE4 C0 05            [24] 1425 	push	ar5
      003CE6 74 5B            [12] 1426 	mov	a,#___str_6
      003CE8 C0 E0            [24] 1427 	push	acc
      003CEA 74 77            [12] 1428 	mov	a,#(___str_6 >> 8)
      003CEC C0 E0            [24] 1429 	push	acc
      003CEE 74 80            [12] 1430 	mov	a,#0x80
      003CF0 C0 E0            [24] 1431 	push	acc
      003CF2 12 64 F1         [24] 1432 	lcall	_printf
      003CF5 E5 81            [12] 1433 	mov	a,sp
      003CF7 24 FB            [12] 1434 	add	a,#0xfb
      003CF9 F5 81            [12] 1435 	mov	sp,a
                                   1436 ;	SPI.c:240: return;
      003CFB 22               [24] 1437 	ret
                                   1438 ;	SPI.c:243: || (start_address + num_bytes) > RX_BUFFER_END) {
      003CFC                       1439 00107$:
      003CFC 8E 00            [24] 1440 	mov	ar0,r6
      003CFE 8F 01            [24] 1441 	mov	ar1,r7
      003D00 E8               [12] 1442 	mov	a,r0
      003D01 2A               [12] 1443 	add	a, r2
      003D02 FA               [12] 1444 	mov	r2,a
      003D03 E9               [12] 1445 	mov	a,r1
      003D04 3B               [12] 1446 	addc	a, r3
      003D05 FB               [12] 1447 	mov	r3,a
      003D06 C3               [12] 1448 	clr	c
      003D07 74 FF            [12] 1449 	mov	a,#0xff
      003D09 9A               [12] 1450 	subb	a,r2
      003D0A 74 1B            [12] 1451 	mov	a,#0x1b
      003D0C 9B               [12] 1452 	subb	a,r3
      003D0D 50 21            [24] 1453 	jnc	00106$
                                   1454 ;	SPI.c:244: printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
      003D0F C0 06            [24] 1455 	push	ar6
      003D11 C0 07            [24] 1456 	push	ar7
      003D13 C0 04            [24] 1457 	push	ar4
      003D15 C0 05            [24] 1458 	push	ar5
      003D17 74 75            [12] 1459 	mov	a,#___str_7
      003D19 C0 E0            [24] 1460 	push	acc
      003D1B 74 77            [12] 1461 	mov	a,#(___str_7 >> 8)
      003D1D C0 E0            [24] 1462 	push	acc
      003D1F 74 80            [12] 1463 	mov	a,#0x80
      003D21 C0 E0            [24] 1464 	push	acc
      003D23 12 64 F1         [24] 1465 	lcall	_printf
      003D26 E5 81            [12] 1466 	mov	a,sp
      003D28 24 F9            [12] 1467 	add	a,#0xf9
      003D2A F5 81            [12] 1468 	mov	sp,a
                                   1469 ;	SPI.c:246: return 0;
      003D2C 90 00 00         [24] 1470 	mov	dptr,#0x0000
      003D2F 22               [24] 1471 	ret
      003D30                       1472 00106$:
                                   1473 ;	SPI.c:249: if (num_bytes > 1) {
      003D30 C3               [12] 1474 	clr	c
      003D31 74 01            [12] 1475 	mov	a,#0x01
      003D33 9E               [12] 1476 	subb	a,r6
      003D34 74 80            [12] 1477 	mov	a,#(0x00 ^ 0x80)
      003D36 8F F0            [24] 1478 	mov	b,r7
      003D38 63 F0 80         [24] 1479 	xrl	b,#0x80
      003D3B 95 F0            [12] 1480 	subb	a,b
      003D3D 50 0B            [24] 1481 	jnc	00109$
                                   1482 ;	SPI.c:250: spi_set_autoinc();
      003D3F C0 05            [24] 1483 	push	ar5
      003D41 C0 04            [24] 1484 	push	ar4
      003D43 12 38 E4         [24] 1485 	lcall	_spi_set_autoinc
      003D46 D0 04            [24] 1486 	pop	ar4
      003D48 D0 05            [24] 1487 	pop	ar5
      003D4A                       1488 00109$:
                                   1489 ;	SPI.c:254: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003D4A 8D 07            [24] 1490 	mov	ar7,r5
                                   1491 ;	SPI.c:255: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003D4C 8C 06            [24] 1492 	mov	ar6,r4
                                   1493 ;	SPI.c:257: spi_control_write(0, 0x01, higher_byte); // High byte
      003D4E 90 03 84         [24] 1494 	mov	dptr,#_spi_control_write_PARM_2
      003D51 74 01            [12] 1495 	mov	a,#0x01
      003D53 F0               [24] 1496 	movx	@dptr,a
      003D54 90 03 85         [24] 1497 	mov	dptr,#_spi_control_write_PARM_3
      003D57 EF               [12] 1498 	mov	a,r7
      003D58 F0               [24] 1499 	movx	@dptr,a
      003D59 75 82 00         [24] 1500 	mov	dpl, #0x00
      003D5C C0 06            [24] 1501 	push	ar6
      003D5E C0 05            [24] 1502 	push	ar5
      003D60 C0 04            [24] 1503 	push	ar4
      003D62 12 39 7A         [24] 1504 	lcall	_spi_control_write
      003D65 D0 04            [24] 1505 	pop	ar4
      003D67 D0 05            [24] 1506 	pop	ar5
      003D69 D0 06            [24] 1507 	pop	ar6
                                   1508 ;	SPI.c:258: spi_control_write(0, 0x00, lower_byte); // Low byte
      003D6B 90 03 84         [24] 1509 	mov	dptr,#_spi_control_write_PARM_2
      003D6E E4               [12] 1510 	clr	a
      003D6F F0               [24] 1511 	movx	@dptr,a
      003D70 90 03 85         [24] 1512 	mov	dptr,#_spi_control_write_PARM_3
      003D73 EE               [12] 1513 	mov	a,r6
      003D74 F0               [24] 1514 	movx	@dptr,a
      003D75 75 82 00         [24] 1515 	mov	dpl, #0x00
      003D78 C0 05            [24] 1516 	push	ar5
      003D7A C0 04            [24] 1517 	push	ar4
      003D7C 12 39 7A         [24] 1518 	lcall	_spi_control_write
                                   1519 ;	SPI.c:261: CS_LOW; // Pull CS Low
                                   1520 ;	assignBit
      003D7F C2 91            [12] 1521 	clr	_P1_1
                                   1522 ;	SPI.c:262: SPI_send(opcode); // Send opcode
      003D81 75 82 3A         [24] 1523 	mov	dpl, #0x3a
      003D84 12 39 B6         [24] 1524 	lcall	_SPI_send
      003D87 D0 04            [24] 1525 	pop	ar4
      003D89 D0 05            [24] 1526 	pop	ar5
                                   1527 ;	SPI.c:265: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003D8B 90 03 9A         [24] 1528 	mov	dptr,#_spi_buffer_read_num_bytes_10000_153
      003D8E E0               [24] 1529 	movx	a,@dptr
      003D8F FE               [12] 1530 	mov	r6,a
      003D90 A3               [24] 1531 	inc	dptr
      003D91 E0               [24] 1532 	movx	a,@dptr
      003D92 FF               [12] 1533 	mov	r7,a
      003D93 C0 07            [24] 1534 	push	ar7
      003D95 C0 06            [24] 1535 	push	ar6
      003D97 C0 04            [24] 1536 	push	ar4
      003D99 C0 05            [24] 1537 	push	ar5
      003D9B C0 06            [24] 1538 	push	ar6
      003D9D C0 07            [24] 1539 	push	ar7
      003D9F 74 A1            [12] 1540 	mov	a,#___str_8
      003DA1 C0 E0            [24] 1541 	push	acc
      003DA3 74 77            [12] 1542 	mov	a,#(___str_8 >> 8)
      003DA5 C0 E0            [24] 1543 	push	acc
      003DA7 74 80            [12] 1544 	mov	a,#0x80
      003DA9 C0 E0            [24] 1545 	push	acc
      003DAB 12 64 F1         [24] 1546 	lcall	_printf
      003DAE E5 81            [12] 1547 	mov	a,sp
      003DB0 24 F9            [12] 1548 	add	a,#0xf9
      003DB2 F5 81            [12] 1549 	mov	sp,a
      003DB4 D0 06            [24] 1550 	pop	ar6
      003DB6 D0 07            [24] 1551 	pop	ar7
                                   1552 ;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
      003DB8 90 03 97         [24] 1553 	mov	dptr,#_spi_buffer_read_PARM_3
      003DBB E0               [24] 1554 	movx	a,@dptr
      003DBC FB               [12] 1555 	mov	r3,a
      003DBD A3               [24] 1556 	inc	dptr
      003DBE E0               [24] 1557 	movx	a,@dptr
      003DBF FC               [12] 1558 	mov	r4,a
      003DC0 A3               [24] 1559 	inc	dptr
      003DC1 E0               [24] 1560 	movx	a,@dptr
      003DC2 FD               [12] 1561 	mov	r5,a
      003DC3 79 00            [12] 1562 	mov	r1,#0x00
      003DC5 7A 00            [12] 1563 	mov	r2,#0x00
      003DC7                       1564 00112$:
      003DC7 C3               [12] 1565 	clr	c
      003DC8 E9               [12] 1566 	mov	a,r1
      003DC9 9E               [12] 1567 	subb	a,r6
      003DCA EA               [12] 1568 	mov	a,r2
      003DCB 64 80            [12] 1569 	xrl	a,#0x80
      003DCD 8F F0            [24] 1570 	mov	b,r7
      003DCF 63 F0 80         [24] 1571 	xrl	b,#0x80
      003DD2 95 F0            [12] 1572 	subb	a,b
      003DD4 50 37            [24] 1573 	jnc	00110$
                                   1574 ;	SPI.c:267: *data_ptr = SPI_ReadByte(); // Read data
      003DD6 C0 07            [24] 1575 	push	ar7
      003DD8 C0 06            [24] 1576 	push	ar6
      003DDA C0 05            [24] 1577 	push	ar5
      003DDC C0 04            [24] 1578 	push	ar4
      003DDE C0 03            [24] 1579 	push	ar3
      003DE0 C0 02            [24] 1580 	push	ar2
      003DE2 C0 01            [24] 1581 	push	ar1
      003DE4 12 38 D2         [24] 1582 	lcall	_SPI_ReadByte
      003DE7 A8 82            [24] 1583 	mov	r0, dpl
      003DE9 D0 01            [24] 1584 	pop	ar1
      003DEB D0 02            [24] 1585 	pop	ar2
      003DED D0 03            [24] 1586 	pop	ar3
      003DEF D0 04            [24] 1587 	pop	ar4
      003DF1 D0 05            [24] 1588 	pop	ar5
      003DF3 D0 06            [24] 1589 	pop	ar6
      003DF5 D0 07            [24] 1590 	pop	ar7
      003DF7 8B 82            [24] 1591 	mov	dpl,r3
      003DF9 8C 83            [24] 1592 	mov	dph,r4
      003DFB 8D F0            [24] 1593 	mov	b,r5
      003DFD E8               [12] 1594 	mov	a,r0
      003DFE 12 5F A0         [24] 1595 	lcall	__gptrput
      003E01 A3               [24] 1596 	inc	dptr
      003E02 AB 82            [24] 1597 	mov	r3,dpl
      003E04 AC 83            [24] 1598 	mov	r4,dph
                                   1599 ;	SPI.c:269: data_ptr++;
                                   1600 ;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
      003E06 09               [12] 1601 	inc	r1
      003E07 B9 00 BD         [24] 1602 	cjne	r1,#0x00,00112$
      003E0A 0A               [12] 1603 	inc	r2
      003E0B 80 BA            [24] 1604 	sjmp	00112$
      003E0D                       1605 00110$:
                                   1606 ;	SPI.c:271: CS_HIGH; // Pull CS High
                                   1607 ;	assignBit
      003E0D D2 91            [12] 1608 	setb	_P1_1
                                   1609 ;	SPI.c:272: return (uint16_t) num_bytes;
      003E0F 8E 82            [24] 1610 	mov	dpl, r6
      003E11 8F 83            [24] 1611 	mov	dph, r7
                                   1612 ;	SPI.c:273: }
      003E13 22               [24] 1613 	ret
                                   1614 ;------------------------------------------------------------
                                   1615 ;Allocation info for local variables in function 'spi_buffer_write'
                                   1616 ;------------------------------------------------------------
                                   1617 ;start_address             Allocated with name '_spi_buffer_write_PARM_2'
                                   1618 ;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
                                   1619 ;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_163'
                                   1620 ;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_168'
                                   1621 ;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_168'
                                   1622 ;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_169'
                                   1623 ;i                         Allocated with name '_spi_buffer_write_i_20002_170'
                                   1624 ;------------------------------------------------------------
                                   1625 ;	SPI.c:276: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1626 ;	-----------------------------------------
                                   1627 ;	 function spi_buffer_write
                                   1628 ;	-----------------------------------------
      003E14                       1629 _spi_buffer_write:
      003E14 AF 83            [24] 1630 	mov	r7,dph
      003E16 E5 82            [12] 1631 	mov	a,dpl
      003E18 90 03 A1         [24] 1632 	mov	dptr,#_spi_buffer_write_num_bytes_10000_163
      003E1B F0               [24] 1633 	movx	@dptr,a
      003E1C EF               [12] 1634 	mov	a,r7
      003E1D A3               [24] 1635 	inc	dptr
      003E1E F0               [24] 1636 	movx	@dptr,a
                                   1637 ;	SPI.c:278: if (num_bytes < 1)
      003E1F 90 03 A1         [24] 1638 	mov	dptr,#_spi_buffer_write_num_bytes_10000_163
      003E22 E0               [24] 1639 	movx	a,@dptr
      003E23 FE               [12] 1640 	mov	r6,a
      003E24 A3               [24] 1641 	inc	dptr
      003E25 E0               [24] 1642 	movx	a,@dptr
      003E26 FF               [12] 1643 	mov	r7,a
      003E27 C3               [12] 1644 	clr	c
      003E28 EE               [12] 1645 	mov	a,r6
      003E29 94 01            [12] 1646 	subb	a,#0x01
      003E2B EF               [12] 1647 	mov	a,r7
      003E2C 64 80            [12] 1648 	xrl	a,#0x80
      003E2E 94 80            [12] 1649 	subb	a,#0x80
      003E30 50 1A            [24] 1650 	jnc	00102$
                                   1651 ;	SPI.c:280: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003E32 C0 06            [24] 1652 	push	ar6
      003E34 C0 07            [24] 1653 	push	ar7
      003E36 74 3B            [12] 1654 	mov	a,#___str_5
      003E38 C0 E0            [24] 1655 	push	acc
      003E3A 74 77            [12] 1656 	mov	a,#(___str_5 >> 8)
      003E3C C0 E0            [24] 1657 	push	acc
      003E3E 74 80            [12] 1658 	mov	a,#0x80
      003E40 C0 E0            [24] 1659 	push	acc
      003E42 12 64 F1         [24] 1660 	lcall	_printf
      003E45 E5 81            [12] 1661 	mov	a,sp
      003E47 24 FB            [12] 1662 	add	a,#0xfb
      003E49 F5 81            [12] 1663 	mov	sp,a
                                   1664 ;	SPI.c:281: return;
      003E4B 22               [24] 1665 	ret
      003E4C                       1666 00102$:
                                   1667 ;	SPI.c:283: if (start_address > 0x1FFF) {
      003E4C 90 03 9C         [24] 1668 	mov	dptr,#_spi_buffer_write_PARM_2
      003E4F E0               [24] 1669 	movx	a,@dptr
      003E50 FC               [12] 1670 	mov	r4,a
      003E51 A3               [24] 1671 	inc	dptr
      003E52 E0               [24] 1672 	movx	a,@dptr
      003E53 FD               [12] 1673 	mov	r5,a
      003E54 8C 02            [24] 1674 	mov	ar2,r4
      003E56 8D 03            [24] 1675 	mov	ar3,r5
      003E58 C3               [12] 1676 	clr	c
      003E59 74 FF            [12] 1677 	mov	a,#0xff
      003E5B 9A               [12] 1678 	subb	a,r2
      003E5C 74 1F            [12] 1679 	mov	a,#0x1f
      003E5E 9B               [12] 1680 	subb	a,r3
      003E5F 50 1A            [24] 1681 	jnc	00104$
                                   1682 ;	SPI.c:284: printf("\n\rInvalid address: %04X\n\r", start_address);
      003E61 C0 04            [24] 1683 	push	ar4
      003E63 C0 05            [24] 1684 	push	ar5
      003E65 74 5B            [12] 1685 	mov	a,#___str_6
      003E67 C0 E0            [24] 1686 	push	acc
      003E69 74 77            [12] 1687 	mov	a,#(___str_6 >> 8)
      003E6B C0 E0            [24] 1688 	push	acc
      003E6D 74 80            [12] 1689 	mov	a,#0x80
      003E6F C0 E0            [24] 1690 	push	acc
      003E71 12 64 F1         [24] 1691 	lcall	_printf
      003E74 E5 81            [12] 1692 	mov	a,sp
      003E76 24 FB            [12] 1693 	add	a,#0xfb
      003E78 F5 81            [12] 1694 	mov	sp,a
                                   1695 ;	SPI.c:285: return;
      003E7A 22               [24] 1696 	ret
      003E7B                       1697 00104$:
                                   1698 ;	SPI.c:289: if (num_bytes > 1) {
      003E7B C3               [12] 1699 	clr	c
      003E7C 74 01            [12] 1700 	mov	a,#0x01
      003E7E 9E               [12] 1701 	subb	a,r6
      003E7F 74 80            [12] 1702 	mov	a,#(0x00 ^ 0x80)
      003E81 8F F0            [24] 1703 	mov	b,r7
      003E83 63 F0 80         [24] 1704 	xrl	b,#0x80
      003E86 95 F0            [12] 1705 	subb	a,b
      003E88 50 0B            [24] 1706 	jnc	00106$
                                   1707 ;	SPI.c:290: spi_set_autoinc();
      003E8A C0 05            [24] 1708 	push	ar5
      003E8C C0 04            [24] 1709 	push	ar4
      003E8E 12 38 E4         [24] 1710 	lcall	_spi_set_autoinc
      003E91 D0 04            [24] 1711 	pop	ar4
      003E93 D0 05            [24] 1712 	pop	ar5
      003E95                       1713 00106$:
                                   1714 ;	SPI.c:293: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003E95 8D 07            [24] 1715 	mov	ar7,r5
                                   1716 ;	SPI.c:294: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
                                   1717 ;	SPI.c:296: spi_control_write(0, 0x03, higher_byte); // High byte
      003E97 90 03 84         [24] 1718 	mov	dptr,#_spi_control_write_PARM_2
      003E9A 74 03            [12] 1719 	mov	a,#0x03
      003E9C F0               [24] 1720 	movx	@dptr,a
      003E9D 90 03 85         [24] 1721 	mov	dptr,#_spi_control_write_PARM_3
      003EA0 EF               [12] 1722 	mov	a,r7
      003EA1 F0               [24] 1723 	movx	@dptr,a
      003EA2 75 82 00         [24] 1724 	mov	dpl, #0x00
      003EA5 C0 04            [24] 1725 	push	ar4
      003EA7 12 39 7A         [24] 1726 	lcall	_spi_control_write
      003EAA D0 04            [24] 1727 	pop	ar4
                                   1728 ;	SPI.c:297: spi_control_write(0, 0x02, lower_byte); // Low byte
      003EAC 90 03 84         [24] 1729 	mov	dptr,#_spi_control_write_PARM_2
      003EAF 74 02            [12] 1730 	mov	a,#0x02
      003EB1 F0               [24] 1731 	movx	@dptr,a
      003EB2 90 03 85         [24] 1732 	mov	dptr,#_spi_control_write_PARM_3
      003EB5 EC               [12] 1733 	mov	a,r4
      003EB6 F0               [24] 1734 	movx	@dptr,a
      003EB7 75 82 00         [24] 1735 	mov	dpl, #0x00
      003EBA 12 39 7A         [24] 1736 	lcall	_spi_control_write
                                   1737 ;	SPI.c:300: CS_LOW; // Pull CS Low
                                   1738 ;	assignBit
      003EBD C2 91            [12] 1739 	clr	_P1_1
                                   1740 ;	SPI.c:301: SPI_send(opcode); // Send opcode
      003EBF 75 82 7A         [24] 1741 	mov	dpl, #0x7a
      003EC2 12 39 B6         [24] 1742 	lcall	_SPI_send
                                   1743 ;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
      003EC5 90 03 A1         [24] 1744 	mov	dptr,#_spi_buffer_write_num_bytes_10000_163
      003EC8 E0               [24] 1745 	movx	a,@dptr
      003EC9 FE               [12] 1746 	mov	r6,a
      003ECA A3               [24] 1747 	inc	dptr
      003ECB E0               [24] 1748 	movx	a,@dptr
      003ECC FF               [12] 1749 	mov	r7,a
      003ECD 90 03 9E         [24] 1750 	mov	dptr,#_spi_buffer_write_PARM_3
      003ED0 E0               [24] 1751 	movx	a,@dptr
      003ED1 FB               [12] 1752 	mov	r3,a
      003ED2 A3               [24] 1753 	inc	dptr
      003ED3 E0               [24] 1754 	movx	a,@dptr
      003ED4 FC               [12] 1755 	mov	r4,a
      003ED5 A3               [24] 1756 	inc	dptr
      003ED6 E0               [24] 1757 	movx	a,@dptr
      003ED7 FD               [12] 1758 	mov	r5,a
      003ED8 79 00            [12] 1759 	mov	r1,#0x00
      003EDA 7A 00            [12] 1760 	mov	r2,#0x00
      003EDC                       1761 00109$:
      003EDC C3               [12] 1762 	clr	c
      003EDD E9               [12] 1763 	mov	a,r1
      003EDE 9E               [12] 1764 	subb	a,r6
      003EDF EA               [12] 1765 	mov	a,r2
      003EE0 64 80            [12] 1766 	xrl	a,#0x80
      003EE2 8F F0            [24] 1767 	mov	b,r7
      003EE4 63 F0 80         [24] 1768 	xrl	b,#0x80
      003EE7 95 F0            [12] 1769 	subb	a,b
      003EE9 50 37            [24] 1770 	jnc	00107$
                                   1771 ;	SPI.c:307: SPI_send(*data_ptr); // Send data
      003EEB 8B 82            [24] 1772 	mov	dpl,r3
      003EED 8C 83            [24] 1773 	mov	dph,r4
      003EEF 8D F0            [24] 1774 	mov	b,r5
      003EF1 12 6F 13         [24] 1775 	lcall	__gptrget
      003EF4 F8               [12] 1776 	mov	r0,a
      003EF5 A3               [24] 1777 	inc	dptr
      003EF6 AB 82            [24] 1778 	mov	r3,dpl
      003EF8 AC 83            [24] 1779 	mov	r4,dph
      003EFA 88 82            [24] 1780 	mov	dpl, r0
      003EFC C0 07            [24] 1781 	push	ar7
      003EFE C0 06            [24] 1782 	push	ar6
      003F00 C0 05            [24] 1783 	push	ar5
      003F02 C0 04            [24] 1784 	push	ar4
      003F04 C0 03            [24] 1785 	push	ar3
      003F06 C0 02            [24] 1786 	push	ar2
      003F08 C0 01            [24] 1787 	push	ar1
      003F0A 12 39 B6         [24] 1788 	lcall	_SPI_send
      003F0D D0 01            [24] 1789 	pop	ar1
      003F0F D0 02            [24] 1790 	pop	ar2
      003F11 D0 03            [24] 1791 	pop	ar3
      003F13 D0 04            [24] 1792 	pop	ar4
      003F15 D0 05            [24] 1793 	pop	ar5
      003F17 D0 06            [24] 1794 	pop	ar6
      003F19 D0 07            [24] 1795 	pop	ar7
                                   1796 ;	SPI.c:308: data_ptr++;
                                   1797 ;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
      003F1B 09               [12] 1798 	inc	r1
      003F1C B9 00 BD         [24] 1799 	cjne	r1,#0x00,00109$
      003F1F 0A               [12] 1800 	inc	r2
      003F20 80 BA            [24] 1801 	sjmp	00109$
      003F22                       1802 00107$:
                                   1803 ;	SPI.c:310: CS_HIGH; // Pull CS High
                                   1804 ;	assignBit
      003F22 D2 91            [12] 1805 	setb	_P1_1
                                   1806 ;	SPI.c:311: }
      003F24 22               [24] 1807 	ret
                                   1808 	.area CSEG    (CODE)
                                   1809 	.area CONST   (CODE)
                                   1810 	.area CONST   (CODE)
      00765E                       1811 ___str_0:
      00765E 77 72 6F 6E 67 20 62  1812 	.ascii "wrong bank"
             61 6E 6B
      007668 00                    1813 	.db 0x00
                                   1814 	.area CSEG    (CODE)
                                   1815 	.area CONST   (CODE)
      007669                       1816 ___str_1:
      007669 0A                    1817 	.db 0x0a
      00766A 0D                    1818 	.db 0x0d
      00766B 49 6E 76 61 6C 69 64  1819 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      0076A0 0A                    1820 	.db 0x0a
      0076A1 0D                    1821 	.db 0x0d
      0076A2 00                    1822 	.db 0x00
                                   1823 	.area CSEG    (CODE)
                                   1824 	.area CONST   (CODE)
      0076A3                       1825 ___str_2:
      0076A3 50 48 59 20 57 72 69  1826 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      0076C9 0A                    1827 	.db 0x0a
      0076CA 0D                    1828 	.db 0x0d
      0076CB 00                    1829 	.db 0x00
                                   1830 	.area CSEG    (CODE)
                                   1831 	.area CONST   (CODE)
      0076CC                       1832 ___str_3:
      0076CC 0A                    1833 	.db 0x0a
      0076CD 0D                    1834 	.db 0x0d
      0076CE 49 6E 76 61 6C 69 64  1835 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      007707 0A                    1836 	.db 0x0a
      007708 0D                    1837 	.db 0x0d
      007709 00                    1838 	.db 0x00
                                   1839 	.area CSEG    (CODE)
                                   1840 	.area CONST   (CODE)
      00770A                       1841 ___str_4:
      00770A 0A                    1842 	.db 0x0a
      00770B 0D                    1843 	.db 0x0d
      00770C 42 75 66 66 65 72 20  1844 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      007738 0A                    1845 	.db 0x0a
      007739 0D                    1846 	.db 0x0d
      00773A 00                    1847 	.db 0x00
                                   1848 	.area CSEG    (CODE)
                                   1849 	.area CONST   (CODE)
      00773B                       1850 ___str_5:
      00773B 0A                    1851 	.db 0x0a
      00773C 0D                    1852 	.db 0x0d
      00773D 49 6E 76 61 6C 69 64  1853 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      007758 0A                    1854 	.db 0x0a
      007759 0D                    1855 	.db 0x0d
      00775A 00                    1856 	.db 0x00
                                   1857 	.area CSEG    (CODE)
                                   1858 	.area CONST   (CODE)
      00775B                       1859 ___str_6:
      00775B 0A                    1860 	.db 0x0a
      00775C 0D                    1861 	.db 0x0d
      00775D 49 6E 76 61 6C 69 64  1862 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      007772 0A                    1863 	.db 0x0a
      007773 0D                    1864 	.db 0x0d
      007774 00                    1865 	.db 0x00
                                   1866 	.area CSEG    (CODE)
                                   1867 	.area CONST   (CODE)
      007775                       1868 ___str_7:
      007775 0A                    1869 	.db 0x0a
      007776 49 6E 76 61 6C 69 64  1870 	.ascii "Invalid RX Address: Start 0x%04X, Size %d"
             20 52 58 20 41 64 64
             72 65 73 73 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 53
             69 7A 65 20 25 64
      00779F 0A                    1871 	.db 0x0a
      0077A0 00                    1872 	.db 0x00
                                   1873 	.area CSEG    (CODE)
                                   1874 	.area CONST   (CODE)
      0077A1                       1875 ___str_8:
      0077A1 52 65 61 64 69 6E 67  1876 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      0077D9 0A                    1877 	.db 0x0a
      0077DA 0D                    1878 	.db 0x0d
      0077DB 00                    1879 	.db 0x00
                                   1880 	.area CSEG    (CODE)
                                   1881 	.area XINIT   (CODE)
                                   1882 	.area CABS    (ABS,CODE)

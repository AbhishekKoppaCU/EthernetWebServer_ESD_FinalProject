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
      000377                        498 _SPI_ReadByte_received_data_10000_68:
      000377                        499 	.ds 1
      000378                        500 _select_reg_bank_bank_10000_72:
      000378                        501 	.ds 1
      000379                        502 _select_reg_bank_data_10001_74:
      000379                        503 	.ds 1
      00037A                        504 _spi_control_write_PARM_2:
      00037A                        505 	.ds 1
      00037B                        506 _spi_control_write_PARM_3:
      00037B                        507 	.ds 1
      00037C                        508 _spi_control_write_reg_bank_10000_77:
      00037C                        509 	.ds 1
      00037D                        510 _SPI_send_data_10000_81:
      00037D                        511 	.ds 1
      00037E                        512 _eth_spi_read_PARM_2:
      00037E                        513 	.ds 1
      00037F                        514 _eth_spi_read_addr_10000_86:
      00037F                        515 	.ds 1
      000380                        516 _phy_spi_write_PARM_2:
      000380                        517 	.ds 2
      000382                        518 _phy_spi_write_addr_10000_90:
      000382                        519 	.ds 1
      000383                        520 _mac_spi_read_PARM_2:
      000383                        521 	.ds 1
      000384                        522 _mac_spi_read_addr_10000_92:
      000384                        523 	.ds 1
      000385                        524 _phy_spi_read_addr_10000_96:
      000385                        525 	.ds 1
      000386                        526 _busy_wait_data_10000_100:
      000386                        527 	.ds 1
      000387                        528 _buffer_init_PARM_2:
      000387                        529 	.ds 2
      000389                        530 _buffer_init_start_address_10000_102:
      000389                        531 	.ds 2
      00038B                        532 _spi_buffer_read_PARM_2:
      00038B                        533 	.ds 2
      00038D                        534 _spi_buffer_read_PARM_3:
      00038D                        535 	.ds 3
      000390                        536 _spi_buffer_read_num_bytes_10000_106:
      000390                        537 	.ds 2
      000392                        538 _spi_buffer_read_i_20002_113:
      000392                        539 	.ds 2
      000394                        540 _spi_buffer_write_PARM_2:
      000394                        541 	.ds 2
      000396                        542 _spi_buffer_write_PARM_3:
      000396                        543 	.ds 3
      000399                        544 _spi_buffer_write_num_bytes_10000_115:
      000399                        545 	.ds 2
      00039B                        546 _spi_buffer_write_i_20002_122:
      00039B                        547 	.ds 2
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
      003377                        591 _SPI_ReadByte:
                           000007   592 	ar7 = 0x07
                           000006   593 	ar6 = 0x06
                           000005   594 	ar5 = 0x05
                           000004   595 	ar4 = 0x04
                           000003   596 	ar3 = 0x03
                           000002   597 	ar2 = 0x02
                           000001   598 	ar1 = 0x01
                           000000   599 	ar0 = 0x00
                                    600 ;	SPI.c:9: SPDAT = 0xFF;
      003377 75 C5 FF         [24]  601 	mov	_SPDAT,#0xff
                                    602 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      00337A                        603 00101$:
      00337A E5 C4            [12]  604 	mov	a,_SPSTA
      00337C 30 E7 FB         [24]  605 	jnb	acc.7,00101$
                                    606 ;	SPI.c:17: received_data = SPDAT;
      00337F 90 03 77         [24]  607 	mov	dptr,#_SPI_ReadByte_received_data_10000_68
      003382 E5 C5            [12]  608 	mov	a,_SPDAT
      003384 F0               [24]  609 	movx	@dptr,a
                                    610 ;	SPI.c:19: return received_data;
      003385 E0               [24]  611 	movx	a,@dptr
                                    612 ;	SPI.c:20: }
      003386 F5 82            [12]  613 	mov	dpl,a
      003388 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    617 ;------------------------------------------------------------
                                    618 ;	SPI.c:22: void spi_set_autoinc(void)
                                    619 ;	-----------------------------------------
                                    620 ;	 function spi_set_autoinc
                                    621 ;	-----------------------------------------
      003389                        622 _spi_set_autoinc:
                                    623 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    624 ;	assignBit
      003389 C2 91            [12]  625 	clr	_P1_1
                                    626 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      00338B 75 82 5E         [24]  627 	mov	dpl, #0x5e
      00338E 12 34 8A         [24]  628 	lcall	_SPI_send
                                    629 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      003391 75 82 80         [24]  630 	mov	dpl, #0x80
      003394 12 34 8A         [24]  631 	lcall	_SPI_send
                                    632 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    633 ;	assignBit
      003397 D2 91            [12]  634 	setb	_P1_1
                                    635 ;	SPI.c:30: }
      003399 22               [24]  636 	ret
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
      00339A                        648 _select_reg_bank:
      00339A E5 82            [12]  649 	mov	a,dpl
      00339C 90 03 78         [24]  650 	mov	dptr,#_select_reg_bank_bank_10000_72
      00339F F0               [24]  651 	movx	@dptr,a
                                    652 ;	SPI.c:35: CS_LOW;
                                    653 ;	assignBit
      0033A0 C2 91            [12]  654 	clr	_P1_1
                                    655 ;	SPI.c:36: SPI_send(0X1F); // Send the address
      0033A2 75 82 1F         [24]  656 	mov	dpl, #0x1f
      0033A5 12 34 8A         [24]  657 	lcall	_SPI_send
                                    658 ;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
      0033A8 12 33 77         [24]  659 	lcall	_SPI_ReadByte
      0033AB AF 82            [24]  660 	mov	r7, dpl
                                    661 ;	SPI.c:38: CS_HIGH;
                                    662 ;	assignBit
      0033AD D2 91            [12]  663 	setb	_P1_1
                                    664 ;	SPI.c:41: data &= ~0x03; // Clear the last two bits
      0033AF 53 07 FC         [24]  665 	anl	ar7,#0xfc
                                    666 ;	SPI.c:42: switch (bank)
      0033B2 90 03 78         [24]  667 	mov	dptr,#_select_reg_bank_bank_10000_72
      0033B5 E0               [24]  668 	movx	a,@dptr
      0033B6 FE               [12]  669 	mov  r6,a
      0033B7 24 FC            [12]  670 	add	a,#0xff - 0x03
      0033B9 40 30            [24]  671 	jc	00105$
      0033BB EE               [12]  672 	mov	a,r6
      0033BC 2E               [12]  673 	add	a,r6
                                    674 ;	SPI.c:44: case 0:
      0033BD 90 33 C1         [24]  675 	mov	dptr,#00133$
      0033C0 73               [24]  676 	jmp	@a+dptr
      0033C1                        677 00133$:
      0033C1 80 06            [24]  678 	sjmp	00101$
      0033C3 80 0B            [24]  679 	sjmp	00102$
      0033C5 80 12            [24]  680 	sjmp	00103$
      0033C7 80 19            [24]  681 	sjmp	00104$
      0033C9                        682 00101$:
                                    683 ;	SPI.c:45: data |= 0x00; // Last two bits: 00
      0033C9 90 03 79         [24]  684 	mov	dptr,#_select_reg_bank_data_10001_74
      0033CC EF               [12]  685 	mov	a,r7
      0033CD F0               [24]  686 	movx	@dptr,a
                                    687 ;	SPI.c:46: break;
                                    688 ;	SPI.c:47: case 1:
      0033CE 80 31            [24]  689 	sjmp	00115$
      0033D0                        690 00102$:
                                    691 ;	SPI.c:48: data |= 0x01; // Last two bits: 01
      0033D0 90 03 79         [24]  692 	mov	dptr,#_select_reg_bank_data_10001_74
      0033D3 74 01            [12]  693 	mov	a,#0x01
      0033D5 4F               [12]  694 	orl	a,r7
      0033D6 F0               [24]  695 	movx	@dptr,a
                                    696 ;	SPI.c:49: break;
                                    697 ;	SPI.c:50: case 2:
      0033D7 80 28            [24]  698 	sjmp	00115$
      0033D9                        699 00103$:
                                    700 ;	SPI.c:51: data |= 0x02; // Last two bits: 10
      0033D9 90 03 79         [24]  701 	mov	dptr,#_select_reg_bank_data_10001_74
      0033DC 74 02            [12]  702 	mov	a,#0x02
      0033DE 4F               [12]  703 	orl	a,r7
      0033DF F0               [24]  704 	movx	@dptr,a
                                    705 ;	SPI.c:52: break;
                                    706 ;	SPI.c:53: case 3:
      0033E0 80 1F            [24]  707 	sjmp	00115$
      0033E2                        708 00104$:
                                    709 ;	SPI.c:54: data |= 0x03; // Last two bits: 11
      0033E2 90 03 79         [24]  710 	mov	dptr,#_select_reg_bank_data_10001_74
      0033E5 74 03            [12]  711 	mov	a,#0x03
      0033E7 4F               [12]  712 	orl	a,r7
      0033E8 F0               [24]  713 	movx	@dptr,a
                                    714 ;	SPI.c:55: break;
                                    715 ;	SPI.c:56: default:
      0033E9 80 16            [24]  716 	sjmp	00115$
      0033EB                        717 00105$:
                                    718 ;	SPI.c:57: printf("wrong bank");
      0033EB 74 9F            [12]  719 	mov	a,#___str_0
      0033ED C0 E0            [24]  720 	push	acc
      0033EF 74 4D            [12]  721 	mov	a,#(___str_0 >> 8)
      0033F1 C0 E0            [24]  722 	push	acc
      0033F3 74 80            [12]  723 	mov	a,#0x80
      0033F5 C0 E0            [24]  724 	push	acc
      0033F7 12 3D 7C         [24]  725 	lcall	_printf
      0033FA 15 81            [12]  726 	dec	sp
      0033FC 15 81            [12]  727 	dec	sp
      0033FE 15 81            [12]  728 	dec	sp
                                    729 ;	SPI.c:58: return;
                                    730 ;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
      003400 22               [24]  731 	ret
      003401                        732 00115$:
      003401 7F 00            [12]  733 	mov	r7,#0x00
      003403                        734 00109$:
      003403 BF 10 00         [24]  735 	cjne	r7,#0x10,00134$
      003406                        736 00134$:
      003406 50 03            [24]  737 	jnc	00107$
      003408 0F               [12]  738 	inc	r7
      003409 80 F8            [24]  739 	sjmp	00109$
      00340B                        740 00107$:
                                    741 ;	SPI.c:63: CS_LOW;
                                    742 ;	assignBit
      00340B C2 91            [12]  743 	clr	_P1_1
                                    744 ;	SPI.c:64: SPI_send(0x5F);
      00340D 75 82 5F         [24]  745 	mov	dpl, #0x5f
      003410 12 34 8A         [24]  746 	lcall	_SPI_send
                                    747 ;	SPI.c:65: SPI_send(data); // Send the modified data
      003413 90 03 79         [24]  748 	mov	dptr,#_select_reg_bank_data_10001_74
      003416 E0               [24]  749 	movx	a,@dptr
      003417 F5 82            [12]  750 	mov	dpl,a
      003419 12 34 8A         [24]  751 	lcall	_SPI_send
                                    752 ;	SPI.c:66: CS_HIGH;
                                    753 ;	assignBit
      00341C D2 91            [12]  754 	setb	_P1_1
                                    755 ;	SPI.c:68: }
      00341E 22               [24]  756 	ret
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
      00341F                        769 _spi_control_write:
      00341F E5 82            [12]  770 	mov	a,dpl
      003421 90 03 7C         [24]  771 	mov	dptr,#_spi_control_write_reg_bank_10000_77
      003424 F0               [24]  772 	movx	@dptr,a
                                    773 ;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
      003425 90 03 7A         [24]  774 	mov	dptr,#_spi_control_write_PARM_2
      003428 E0               [24]  775 	movx	a,@dptr
      003429 24 40            [12]  776 	add	a, #0x40
      00342B F0               [24]  777 	movx	@dptr,a
                                    778 ;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
      00342C 90 03 7C         [24]  779 	mov	dptr,#_spi_control_write_reg_bank_10000_77
      00342F E0               [24]  780 	movx	a,@dptr
      003430 F5 82            [12]  781 	mov	dpl,a
      003432 12 33 9A         [24]  782 	lcall	_select_reg_bank
                                    783 ;	SPI.c:77: CS_LOW;
                                    784 ;	assignBit
      003435 C2 91            [12]  785 	clr	_P1_1
                                    786 ;	SPI.c:80: SPI_send(addr);
      003437 90 03 7A         [24]  787 	mov	dptr,#_spi_control_write_PARM_2
      00343A E0               [24]  788 	movx	a,@dptr
      00343B FF               [12]  789 	mov	r7,a
      00343C F5 82            [12]  790 	mov	dpl,a
      00343E C0 07            [24]  791 	push	ar7
      003440 12 34 8A         [24]  792 	lcall	_SPI_send
      003443 D0 07            [24]  793 	pop	ar7
                                    794 ;	SPI.c:83: SPI_send(data);
      003445 90 03 7B         [24]  795 	mov	dptr,#_spi_control_write_PARM_3
      003448 E0               [24]  796 	movx	a,@dptr
      003449 FE               [12]  797 	mov	r6,a
      00344A F5 82            [12]  798 	mov	dpl,a
      00344C C0 07            [24]  799 	push	ar7
      00344E C0 06            [24]  800 	push	ar6
      003450 12 34 8A         [24]  801 	lcall	_SPI_send
      003453 D0 06            [24]  802 	pop	ar6
      003455 D0 07            [24]  803 	pop	ar7
                                    804 ;	SPI.c:86: CS_HIGH;
                                    805 ;	assignBit
      003457 D2 91            [12]  806 	setb	_P1_1
                                    807 ;	SPI.c:89: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      003459 7D 00            [12]  808 	mov	r5,#0x00
      00345B 7C 00            [12]  809 	mov	r4,#0x00
      00345D C0 06            [24]  810 	push	ar6
      00345F C0 05            [24]  811 	push	ar5
      003461 C0 07            [24]  812 	push	ar7
      003463 C0 04            [24]  813 	push	ar4
      003465 74 AA            [12]  814 	mov	a,#___str_1
      003467 C0 E0            [24]  815 	push	acc
      003469 74 4D            [12]  816 	mov	a,#(___str_1 >> 8)
      00346B C0 E0            [24]  817 	push	acc
      00346D 74 80            [12]  818 	mov	a,#0x80
      00346F C0 E0            [24]  819 	push	acc
      003471 12 3D 7C         [24]  820 	lcall	_printf
      003474 E5 81            [12]  821 	mov	a,sp
      003476 24 F9            [12]  822 	add	a,#0xf9
      003478 F5 81            [12]  823 	mov	sp,a
                                    824 ;	SPI.c:90: }
      00347A 22               [24]  825 	ret
                                    826 ;------------------------------------------------------------
                                    827 ;Allocation info for local variables in function 'configure_SPI'
                                    828 ;------------------------------------------------------------
                                    829 ;	SPI.c:93: void configure_SPI(void)
                                    830 ;	-----------------------------------------
                                    831 ;	 function configure_SPI
                                    832 ;	-----------------------------------------
      00347B                        833 _configure_SPI:
                                    834 ;	SPI.c:95: CS_PIN = 1;
                                    835 ;	assignBit
      00347B D2 91            [12]  836 	setb	_P1_1
                                    837 ;	SPI.c:96: SPCON = 0x00;
      00347D 75 C3 00         [24]  838 	mov	_SPCON,#0x00
                                    839 ;	SPI.c:97: SPCON |= SS_DISABLE;
      003480 43 C3 20         [24]  840 	orl	_SPCON,#0x20
                                    841 ;	SPI.c:98: SPCON |= MASTER_MODE;
      003483 43 C3 10         [24]  842 	orl	_SPCON,#0x10
                                    843 ;	SPI.c:99: SPCON |= SPI_ENABLE;
      003486 43 C3 40         [24]  844 	orl	_SPCON,#0x40
                                    845 ;	SPI.c:100: }
      003489 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'SPI_send'
                                    849 ;------------------------------------------------------------
                                    850 ;data                      Allocated with name '_SPI_send_data_10000_81'
                                    851 ;------------------------------------------------------------
                                    852 ;	SPI.c:103: void SPI_send(uint8_t data)
                                    853 ;	-----------------------------------------
                                    854 ;	 function SPI_send
                                    855 ;	-----------------------------------------
      00348A                        856 _SPI_send:
      00348A E5 82            [12]  857 	mov	a,dpl
      00348C 90 03 7D         [24]  858 	mov	dptr,#_SPI_send_data_10000_81
      00348F F0               [24]  859 	movx	@dptr,a
                                    860 ;	SPI.c:106: SPDAT = data;           // Config + MSB of data
      003490 E0               [24]  861 	movx	a,@dptr
      003491 F5 C5            [12]  862 	mov	_SPDAT,a
                                    863 ;	SPI.c:108: while (!(SPSTA & 0x80))
      003493                        864 00101$:
      003493 E5 C4            [12]  865 	mov	a,_SPSTA
      003495 30 E7 FB         [24]  866 	jnb	acc.7,00101$
                                    867 ;	SPI.c:113: }
      003498 22               [24]  868 	ret
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'enc_reset'
                                    871 ;------------------------------------------------------------
                                    872 ;	SPI.c:115: void enc_reset(void)
                                    873 ;	-----------------------------------------
                                    874 ;	 function enc_reset
                                    875 ;	-----------------------------------------
      003499                        876 _enc_reset:
                                    877 ;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    878 ;	assignBit
      003499 C2 91            [12]  879 	clr	_P1_1
                                    880 ;	SPI.c:118: SPI_send(0xFF);            // Send reset command
      00349B 75 82 FF         [24]  881 	mov	dpl, #0xff
      00349E 12 34 8A         [24]  882 	lcall	_SPI_send
                                    883 ;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    884 ;	assignBit
      0034A1 D2 91            [12]  885 	setb	_P1_1
                                    886 ;	SPI.c:120: }
      0034A3 22               [24]  887 	ret
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
      0034A4                        899 _eth_spi_read:
      0034A4 E5 82            [12]  900 	mov	a,dpl
      0034A6 90 03 7F         [24]  901 	mov	dptr,#_eth_spi_read_addr_10000_86
      0034A9 F0               [24]  902 	movx	@dptr,a
                                    903 ;	SPI.c:124: if (addr > 0x1F) {
      0034AA E0               [24]  904 	movx	a,@dptr
      0034AB FF               [12]  905 	mov  r7,a
      0034AC 24 E0            [12]  906 	add	a,#0xff - 0x1f
      0034AE 50 19            [24]  907 	jnc	00102$
                                    908 ;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      0034B0 74 CF            [12]  909 	mov	a,#___str_2
      0034B2 C0 E0            [24]  910 	push	acc
      0034B4 74 4D            [12]  911 	mov	a,#(___str_2 >> 8)
      0034B6 C0 E0            [24]  912 	push	acc
      0034B8 74 80            [12]  913 	mov	a,#0x80
      0034BA C0 E0            [24]  914 	push	acc
      0034BC 12 3D 7C         [24]  915 	lcall	_printf
      0034BF 15 81            [12]  916 	dec	sp
      0034C1 15 81            [12]  917 	dec	sp
      0034C3 15 81            [12]  918 	dec	sp
                                    919 ;	SPI.c:126: return 0;
      0034C5 75 82 00         [24]  920 	mov	dpl, #0x00
      0034C8 22               [24]  921 	ret
      0034C9                        922 00102$:
                                    923 ;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
      0034C9 90 03 7E         [24]  924 	mov	dptr,#_eth_spi_read_PARM_2
      0034CC E0               [24]  925 	movx	a,@dptr
      0034CD F5 82            [12]  926 	mov	dpl,a
      0034CF C0 07            [24]  927 	push	ar7
      0034D1 12 33 9A         [24]  928 	lcall	_select_reg_bank
      0034D4 D0 07            [24]  929 	pop	ar7
                                    930 ;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
                                    931 ;	assignBit
      0034D6 C2 91            [12]  932 	clr	_P1_1
                                    933 ;	SPI.c:132: SPI_send(addr);            // Send the address
      0034D8 8F 82            [24]  934 	mov	dpl, r7
      0034DA C0 07            [24]  935 	push	ar7
      0034DC 12 34 8A         [24]  936 	lcall	_SPI_send
                                    937 ;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
      0034DF 12 33 77         [24]  938 	lcall	_SPI_ReadByte
      0034E2 AE 82            [24]  939 	mov	r6, dpl
      0034E4 D0 07            [24]  940 	pop	ar7
                                    941 ;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
                                    942 ;	assignBit
      0034E6 D2 91            [12]  943 	setb	_P1_1
                                    944 ;	SPI.c:137: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      0034E8 8E 04            [24]  945 	mov	ar4,r6
      0034EA 7D 00            [12]  946 	mov	r5,#0x00
      0034EC 7B 00            [12]  947 	mov	r3,#0x00
      0034EE C0 06            [24]  948 	push	ar6
      0034F0 C0 04            [24]  949 	push	ar4
      0034F2 C0 05            [24]  950 	push	ar5
      0034F4 C0 07            [24]  951 	push	ar7
      0034F6 C0 03            [24]  952 	push	ar3
      0034F8 74 09            [12]  953 	mov	a,#___str_3
      0034FA C0 E0            [24]  954 	push	acc
      0034FC 74 4E            [12]  955 	mov	a,#(___str_3 >> 8)
      0034FE C0 E0            [24]  956 	push	acc
      003500 74 80            [12]  957 	mov	a,#0x80
      003502 C0 E0            [24]  958 	push	acc
      003504 12 3D 7C         [24]  959 	lcall	_printf
      003507 E5 81            [12]  960 	mov	a,sp
      003509 24 F9            [12]  961 	add	a,#0xf9
      00350B F5 81            [12]  962 	mov	sp,a
      00350D D0 06            [24]  963 	pop	ar6
                                    964 ;	SPI.c:139: return data;
      00350F 8E 82            [24]  965 	mov	dpl, r6
                                    966 ;	SPI.c:140: }
      003511 22               [24]  967 	ret
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
      003512                        978 _phy_spi_write:
      003512 E5 82            [12]  979 	mov	a,dpl
      003514 90 03 82         [24]  980 	mov	dptr,#_phy_spi_write_addr_10000_90
      003517 F0               [24]  981 	movx	@dptr,a
                                    982 ;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
      003518 E0               [24]  983 	movx	a,@dptr
      003519 FF               [12]  984 	mov	r7,a
      00351A 90 03 7A         [24]  985 	mov	dptr,#_spi_control_write_PARM_2
      00351D 74 14            [12]  986 	mov	a,#0x14
      00351F F0               [24]  987 	movx	@dptr,a
      003520 90 03 7B         [24]  988 	mov	dptr,#_spi_control_write_PARM_3
      003523 EF               [12]  989 	mov	a,r7
      003524 F0               [24]  990 	movx	@dptr,a
      003525 75 82 02         [24]  991 	mov	dpl, #0x02
      003528 C0 07            [24]  992 	push	ar7
      00352A 12 34 1F         [24]  993 	lcall	_spi_control_write
      00352D D0 07            [24]  994 	pop	ar7
                                    995 ;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      00352F 90 03 80         [24]  996 	mov	dptr,#_phy_spi_write_PARM_2
      003532 E0               [24]  997 	movx	a,@dptr
      003533 FD               [12]  998 	mov	r5,a
      003534 A3               [24]  999 	inc	dptr
      003535 E0               [24] 1000 	movx	a,@dptr
      003536 FE               [12] 1001 	mov	r6,a
      003537 8D 04            [24] 1002 	mov	ar4,r5
      003539 90 03 7A         [24] 1003 	mov	dptr,#_spi_control_write_PARM_2
      00353C 74 16            [12] 1004 	mov	a,#0x16
      00353E F0               [24] 1005 	movx	@dptr,a
      00353F 90 03 7B         [24] 1006 	mov	dptr,#_spi_control_write_PARM_3
      003542 EC               [12] 1007 	mov	a,r4
      003543 F0               [24] 1008 	movx	@dptr,a
      003544 75 82 02         [24] 1009 	mov	dpl, #0x02
      003547 C0 07            [24] 1010 	push	ar7
      003549 C0 06            [24] 1011 	push	ar6
      00354B C0 05            [24] 1012 	push	ar5
      00354D 12 34 1F         [24] 1013 	lcall	_spi_control_write
      003550 D0 05            [24] 1014 	pop	ar5
      003552 D0 06            [24] 1015 	pop	ar6
      003554 D0 07            [24] 1016 	pop	ar7
                                   1017 ;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      003556 8E 04            [24] 1018 	mov	ar4,r6
      003558 90 03 7A         [24] 1019 	mov	dptr,#_spi_control_write_PARM_2
      00355B 74 17            [12] 1020 	mov	a,#0x17
      00355D F0               [24] 1021 	movx	@dptr,a
      00355E 90 03 7B         [24] 1022 	mov	dptr,#_spi_control_write_PARM_3
      003561 EC               [12] 1023 	mov	a,r4
      003562 F0               [24] 1024 	movx	@dptr,a
      003563 75 82 02         [24] 1025 	mov	dpl, #0x02
      003566 C0 07            [24] 1026 	push	ar7
      003568 C0 06            [24] 1027 	push	ar6
      00356A C0 05            [24] 1028 	push	ar5
      00356C 12 34 1F         [24] 1029 	lcall	_spi_control_write
      00356F D0 05            [24] 1030 	pop	ar5
      003571 D0 06            [24] 1031 	pop	ar6
      003573 D0 07            [24] 1032 	pop	ar7
                                   1033 ;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003575 7C 00            [12] 1034 	mov	r4,#0x00
      003577 C0 05            [24] 1035 	push	ar5
      003579 C0 06            [24] 1036 	push	ar6
      00357B C0 07            [24] 1037 	push	ar7
      00357D C0 04            [24] 1038 	push	ar4
      00357F 74 2D            [12] 1039 	mov	a,#___str_4
      003581 C0 E0            [24] 1040 	push	acc
      003583 74 4E            [12] 1041 	mov	a,#(___str_4 >> 8)
      003585 C0 E0            [24] 1042 	push	acc
      003587 74 80            [12] 1043 	mov	a,#0x80
      003589 C0 E0            [24] 1044 	push	acc
      00358B 12 3D 7C         [24] 1045 	lcall	_printf
      00358E E5 81            [12] 1046 	mov	a,sp
      003590 24 F9            [12] 1047 	add	a,#0xf9
      003592 F5 81            [12] 1048 	mov	sp,a
                                   1049 ;	SPI.c:150: }
      003594 22               [24] 1050 	ret
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
      003595                       1062 _mac_spi_read:
      003595 E5 82            [12] 1063 	mov	a,dpl
      003597 90 03 84         [24] 1064 	mov	dptr,#_mac_spi_read_addr_10000_92
      00359A F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	SPI.c:154: if (addr > 0x1F) {
      00359B E0               [24] 1067 	movx	a,@dptr
      00359C FF               [12] 1068 	mov  r7,a
      00359D 24 E0            [12] 1069 	add	a,#0xff - 0x1f
      00359F 50 19            [24] 1070 	jnc	00102$
                                   1071 ;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      0035A1 74 CF            [12] 1072 	mov	a,#___str_2
      0035A3 C0 E0            [24] 1073 	push	acc
      0035A5 74 4D            [12] 1074 	mov	a,#(___str_2 >> 8)
      0035A7 C0 E0            [24] 1075 	push	acc
      0035A9 74 80            [12] 1076 	mov	a,#0x80
      0035AB C0 E0            [24] 1077 	push	acc
      0035AD 12 3D 7C         [24] 1078 	lcall	_printf
      0035B0 15 81            [12] 1079 	dec	sp
      0035B2 15 81            [12] 1080 	dec	sp
      0035B4 15 81            [12] 1081 	dec	sp
                                   1082 ;	SPI.c:156: return 0; // Return 0 if address is invalid
      0035B6 75 82 00         [24] 1083 	mov	dpl, #0x00
      0035B9 22               [24] 1084 	ret
      0035BA                       1085 00102$:
                                   1086 ;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
      0035BA 90 03 83         [24] 1087 	mov	dptr,#_mac_spi_read_PARM_2
      0035BD E0               [24] 1088 	movx	a,@dptr
      0035BE F5 82            [12] 1089 	mov	dpl,a
      0035C0 C0 07            [24] 1090 	push	ar7
      0035C2 12 33 9A         [24] 1091 	lcall	_select_reg_bank
      0035C5 D0 07            [24] 1092 	pop	ar7
                                   1093 ;	SPI.c:162: CS_LOW;
                                   1094 ;	assignBit
      0035C7 C2 91            [12] 1095 	clr	_P1_1
                                   1096 ;	SPI.c:165: SPI_send(addr);
      0035C9 8F 82            [24] 1097 	mov	dpl, r7
      0035CB C0 07            [24] 1098 	push	ar7
      0035CD 12 34 8A         [24] 1099 	lcall	_SPI_send
                                   1100 ;	SPI.c:168: uint8_t data = SPI_ReadByte();
      0035D0 12 33 77         [24] 1101 	lcall	_SPI_ReadByte
      0035D3 AE 82            [24] 1102 	mov	r6, dpl
      0035D5 D0 07            [24] 1103 	pop	ar7
                                   1104 ;	SPI.c:171: CS_HIGH;
                                   1105 ;	assignBit
      0035D7 D2 91            [12] 1106 	setb	_P1_1
                                   1107 ;	SPI.c:174: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      0035D9 8E 04            [24] 1108 	mov	ar4,r6
      0035DB 7D 00            [12] 1109 	mov	r5,#0x00
      0035DD 7B 00            [12] 1110 	mov	r3,#0x00
      0035DF C0 06            [24] 1111 	push	ar6
      0035E1 C0 04            [24] 1112 	push	ar4
      0035E3 C0 05            [24] 1113 	push	ar5
      0035E5 C0 07            [24] 1114 	push	ar7
      0035E7 C0 03            [24] 1115 	push	ar3
      0035E9 74 56            [12] 1116 	mov	a,#___str_5
      0035EB C0 E0            [24] 1117 	push	acc
      0035ED 74 4E            [12] 1118 	mov	a,#(___str_5 >> 8)
      0035EF C0 E0            [24] 1119 	push	acc
      0035F1 74 80            [12] 1120 	mov	a,#0x80
      0035F3 C0 E0            [24] 1121 	push	acc
      0035F5 12 3D 7C         [24] 1122 	lcall	_printf
      0035F8 E5 81            [12] 1123 	mov	a,sp
      0035FA 24 F9            [12] 1124 	add	a,#0xf9
      0035FC F5 81            [12] 1125 	mov	sp,a
      0035FE D0 06            [24] 1126 	pop	ar6
                                   1127 ;	SPI.c:176: return data;
      003600 8E 82            [24] 1128 	mov	dpl, r6
                                   1129 ;	SPI.c:177: }
      003602 22               [24] 1130 	ret
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
      003603                       1143 _phy_spi_read:
      003603 E5 82            [12] 1144 	mov	a,dpl
      003605 90 03 85         [24] 1145 	mov	dptr,#_phy_spi_read_addr_10000_96
      003608 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
      003609 E0               [24] 1148 	movx	a,@dptr
      00360A FF               [12] 1149 	mov	r7,a
      00360B 90 03 7A         [24] 1150 	mov	dptr,#_spi_control_write_PARM_2
      00360E 74 14            [12] 1151 	mov	a,#0x14
      003610 F0               [24] 1152 	movx	@dptr,a
      003611 90 03 7B         [24] 1153 	mov	dptr,#_spi_control_write_PARM_3
      003614 EF               [12] 1154 	mov	a,r7
      003615 F0               [24] 1155 	movx	@dptr,a
      003616 75 82 02         [24] 1156 	mov	dpl, #0x02
      003619 C0 07            [24] 1157 	push	ar7
      00361B 12 34 1F         [24] 1158 	lcall	_spi_control_write
      00361E D0 07            [24] 1159 	pop	ar7
                                   1160 ;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      003620 90 03 7A         [24] 1161 	mov	dptr,#_spi_control_write_PARM_2
      003623 74 12            [12] 1162 	mov	a,#0x12
      003625 F0               [24] 1163 	movx	@dptr,a
      003626 90 03 7B         [24] 1164 	mov	dptr,#_spi_control_write_PARM_3
      003629 74 01            [12] 1165 	mov	a,#0x01
      00362B F0               [24] 1166 	movx	@dptr,a
      00362C 75 82 02         [24] 1167 	mov	dpl, #0x02
      00362F C0 07            [24] 1168 	push	ar7
      003631 12 34 1F         [24] 1169 	lcall	_spi_control_write
                                   1170 ;	SPI.c:185: busy_wait();                          // Wait for the read to complete
      003634 12 36 B0         [24] 1171 	lcall	_busy_wait
      003637 D0 07            [24] 1172 	pop	ar7
                                   1173 ;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      003639 90 03 7A         [24] 1174 	mov	dptr,#_spi_control_write_PARM_2
      00363C 74 12            [12] 1175 	mov	a,#0x12
      00363E F0               [24] 1176 	movx	@dptr,a
      00363F 90 03 7B         [24] 1177 	mov	dptr,#_spi_control_write_PARM_3
      003642 E4               [12] 1178 	clr	a
      003643 F0               [24] 1179 	movx	@dptr,a
      003644 75 82 02         [24] 1180 	mov	dpl, #0x02
      003647 C0 07            [24] 1181 	push	ar7
      003649 12 34 1F         [24] 1182 	lcall	_spi_control_write
      00364C D0 07            [24] 1183 	pop	ar7
                                   1184 ;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      00364E 90 03 83         [24] 1185 	mov	dptr,#_mac_spi_read_PARM_2
      003651 74 02            [12] 1186 	mov	a,#0x02
      003653 F0               [24] 1187 	movx	@dptr,a
      003654 75 82 18         [24] 1188 	mov	dpl, #0x18
      003657 C0 07            [24] 1189 	push	ar7
      003659 12 35 95         [24] 1190 	lcall	_mac_spi_read
      00365C AE 82            [24] 1191 	mov	r6, dpl
      00365E D0 07            [24] 1192 	pop	ar7
      003660 7D 00            [12] 1193 	mov	r5,#0x00
                                   1194 ;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003662 90 03 83         [24] 1195 	mov	dptr,#_mac_spi_read_PARM_2
      003665 74 02            [12] 1196 	mov	a,#0x02
      003667 F0               [24] 1197 	movx	@dptr,a
      003668 75 82 19         [24] 1198 	mov	dpl, #0x19
      00366B C0 07            [24] 1199 	push	ar7
      00366D C0 06            [24] 1200 	push	ar6
      00366F C0 05            [24] 1201 	push	ar5
      003671 12 35 95         [24] 1202 	lcall	_mac_spi_read
      003674 AC 82            [24] 1203 	mov	r4, dpl
      003676 D0 05            [24] 1204 	pop	ar5
      003678 D0 06            [24] 1205 	pop	ar6
      00367A D0 07            [24] 1206 	pop	ar7
                                   1207 ;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      00367C 8C 03            [24] 1208 	mov	ar3,r4
      00367E E4               [12] 1209 	clr	a
      00367F 42 06            [12] 1210 	orl	ar6,a
      003681 EB               [12] 1211 	mov	a,r3
      003682 42 05            [12] 1212 	orl	ar5,a
                                   1213 ;	SPI.c:195: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003684 7C 00            [12] 1214 	mov	r4,#0x00
      003686 C0 06            [24] 1215 	push	ar6
      003688 C0 05            [24] 1216 	push	ar5
      00368A C0 06            [24] 1217 	push	ar6
      00368C C0 05            [24] 1218 	push	ar5
      00368E C0 07            [24] 1219 	push	ar7
      003690 C0 04            [24] 1220 	push	ar4
      003692 74 79            [12] 1221 	mov	a,#___str_6
      003694 C0 E0            [24] 1222 	push	acc
      003696 74 4E            [12] 1223 	mov	a,#(___str_6 >> 8)
      003698 C0 E0            [24] 1224 	push	acc
      00369A 74 80            [12] 1225 	mov	a,#0x80
      00369C C0 E0            [24] 1226 	push	acc
      00369E 12 3D 7C         [24] 1227 	lcall	_printf
      0036A1 E5 81            [12] 1228 	mov	a,sp
      0036A3 24 F9            [12] 1229 	add	a,#0xf9
      0036A5 F5 81            [12] 1230 	mov	sp,a
      0036A7 D0 05            [24] 1231 	pop	ar5
      0036A9 D0 06            [24] 1232 	pop	ar6
                                   1233 ;	SPI.c:197: return data;        // Combine MSB and LSB
      0036AB 8E 82            [24] 1234 	mov	dpl, r6
      0036AD 8D 83            [24] 1235 	mov	dph, r5
                                   1236 ;	SPI.c:198: }
      0036AF 22               [24] 1237 	ret
                                   1238 ;------------------------------------------------------------
                                   1239 ;Allocation info for local variables in function 'busy_wait'
                                   1240 ;------------------------------------------------------------
                                   1241 ;data                      Allocated with name '_busy_wait_data_10000_100'
                                   1242 ;------------------------------------------------------------
                                   1243 ;	SPI.c:200: void busy_wait(void)
                                   1244 ;	-----------------------------------------
                                   1245 ;	 function busy_wait
                                   1246 ;	-----------------------------------------
      0036B0                       1247 _busy_wait:
                                   1248 ;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      0036B0 90 03 83         [24] 1249 	mov	dptr,#_mac_spi_read_PARM_2
      0036B3 74 03            [12] 1250 	mov	a,#0x03
      0036B5 F0               [24] 1251 	movx	@dptr,a
      0036B6 75 82 0A         [24] 1252 	mov	dpl, #0x0a
      0036B9 12 35 95         [24] 1253 	lcall	_mac_spi_read
      0036BC E5 82            [12] 1254 	mov	a, dpl
      0036BE 90 03 86         [24] 1255 	mov	dptr,#_busy_wait_data_10000_100
      0036C1 F0               [24] 1256 	movx	@dptr,a
                                   1257 ;	SPI.c:203: while (data & 0x01)
      0036C2                       1258 00101$:
      0036C2 90 03 86         [24] 1259 	mov	dptr,#_busy_wait_data_10000_100
      0036C5 E0               [24] 1260 	movx	a,@dptr
      0036C6 30 E0 14         [24] 1261 	jnb	acc.0,00104$
                                   1262 ;	SPI.c:205: data = mac_spi_read(0x0A, 3);
      0036C9 90 03 83         [24] 1263 	mov	dptr,#_mac_spi_read_PARM_2
      0036CC 74 03            [12] 1264 	mov	a,#0x03
      0036CE F0               [24] 1265 	movx	@dptr,a
      0036CF 75 82 0A         [24] 1266 	mov	dpl, #0x0a
      0036D2 12 35 95         [24] 1267 	lcall	_mac_spi_read
      0036D5 E5 82            [12] 1268 	mov	a, dpl
      0036D7 90 03 86         [24] 1269 	mov	dptr,#_busy_wait_data_10000_100
      0036DA F0               [24] 1270 	movx	@dptr,a
      0036DB 80 E5            [24] 1271 	sjmp	00101$
      0036DD                       1272 00104$:
                                   1273 ;	SPI.c:207: }
      0036DD 22               [24] 1274 	ret
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
      0036DE                       1287 _buffer_init:
      0036DE AF 83            [24] 1288 	mov	r7,dph
      0036E0 E5 82            [12] 1289 	mov	a,dpl
      0036E2 90 03 89         [24] 1290 	mov	dptr,#_buffer_init_start_address_10000_102
      0036E5 F0               [24] 1291 	movx	@dptr,a
      0036E6 EF               [12] 1292 	mov	a,r7
      0036E7 A3               [24] 1293 	inc	dptr
      0036E8 F0               [24] 1294 	movx	@dptr,a
                                   1295 ;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      0036E9 90 03 89         [24] 1296 	mov	dptr,#_buffer_init_start_address_10000_102
      0036EC E0               [24] 1297 	movx	a,@dptr
      0036ED FE               [12] 1298 	mov	r6,a
      0036EE A3               [24] 1299 	inc	dptr
      0036EF E0               [24] 1300 	movx	a,@dptr
      0036F0 FF               [12] 1301 	mov	r7,a
      0036F1 8E 04            [24] 1302 	mov	ar4,r6
      0036F3 8F 05            [24] 1303 	mov	ar5,r7
      0036F5 C3               [12] 1304 	clr	c
      0036F6 74 FF            [12] 1305 	mov	a,#0xff
      0036F8 9C               [12] 1306 	subb	a,r4
      0036F9 74 1F            [12] 1307 	mov	a,#0x1f
      0036FB 9D               [12] 1308 	subb	a,r5
      0036FC 40 17            [24] 1309 	jc	00101$
      0036FE 90 03 87         [24] 1310 	mov	dptr,#_buffer_init_PARM_2
      003701 E0               [24] 1311 	movx	a,@dptr
      003702 FA               [12] 1312 	mov	r2,a
      003703 A3               [24] 1313 	inc	dptr
      003704 E0               [24] 1314 	movx	a,@dptr
      003705 FB               [12] 1315 	mov	r3,a
      003706 EA               [12] 1316 	mov	a,r2
      003707 2E               [12] 1317 	add	a, r6
      003708 F8               [12] 1318 	mov	r0,a
      003709 EB               [12] 1319 	mov	a,r3
      00370A 3F               [12] 1320 	addc	a, r7
      00370B F9               [12] 1321 	mov	r1,a
      00370C C3               [12] 1322 	clr	c
      00370D 74 FF            [12] 1323 	mov	a,#0xff
      00370F 98               [12] 1324 	subb	a,r0
      003710 74 1F            [12] 1325 	mov	a,#0x1f
      003712 99               [12] 1326 	subb	a,r1
      003713 50 2A            [24] 1327 	jnc	00102$
      003715                       1328 00101$:
                                   1329 ;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      003715 90 03 87         [24] 1330 	mov	dptr,#_buffer_init_PARM_2
      003718 E0               [24] 1331 	movx	a,@dptr
      003719 C0 E0            [24] 1332 	push	acc
      00371B A3               [24] 1333 	inc	dptr
      00371C E0               [24] 1334 	movx	a,@dptr
      00371D C0 E0            [24] 1335 	push	acc
      00371F 90 03 89         [24] 1336 	mov	dptr,#_buffer_init_start_address_10000_102
      003722 E0               [24] 1337 	movx	a,@dptr
      003723 C0 E0            [24] 1338 	push	acc
      003725 A3               [24] 1339 	inc	dptr
      003726 E0               [24] 1340 	movx	a,@dptr
      003727 C0 E0            [24] 1341 	push	acc
      003729 74 A1            [12] 1342 	mov	a,#___str_7
      00372B C0 E0            [24] 1343 	push	acc
      00372D 74 4E            [12] 1344 	mov	a,#(___str_7 >> 8)
      00372F C0 E0            [24] 1345 	push	acc
      003731 74 80            [12] 1346 	mov	a,#0x80
      003733 C0 E0            [24] 1347 	push	acc
      003735 12 3D 7C         [24] 1348 	lcall	_printf
      003738 E5 81            [12] 1349 	mov	a,sp
      00373A 24 F9            [12] 1350 	add	a,#0xf9
      00373C F5 81            [12] 1351 	mov	sp,a
                                   1352 ;	SPI.c:213: return;
      00373E 22               [24] 1353 	ret
      00373F                       1354 00102$:
                                   1355 ;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      00373F 53 04 FE         [24] 1356 	anl	ar4,#0xfe
                                   1357 ;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      003742 EA               [12] 1358 	mov	a,r2
      003743 2E               [12] 1359 	add	a, r6
      003744 FE               [12] 1360 	mov	r6,a
      003745 EB               [12] 1361 	mov	a,r3
      003746 3F               [12] 1362 	addc	a, r7
      003747 FF               [12] 1363 	mov	r7,a
      003748 1E               [12] 1364 	dec	r6
      003749 BE FF 01         [24] 1365 	cjne	r6,#0xff,00114$
      00374C 1F               [12] 1366 	dec	r7
      00374D                       1367 00114$:
      00374D 53 06 FE         [24] 1368 	anl	ar6,#0xfe
                                   1369 ;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      003750 8D 03            [24] 1370 	mov	ar3,r5
      003752 90 03 7A         [24] 1371 	mov	dptr,#_spi_control_write_PARM_2
      003755 74 08            [12] 1372 	mov	a,#0x08
      003757 F0               [24] 1373 	movx	@dptr,a
      003758 90 03 7B         [24] 1374 	mov	dptr,#_spi_control_write_PARM_3
      00375B EB               [12] 1375 	mov	a,r3
      00375C F0               [24] 1376 	movx	@dptr,a
      00375D 75 82 00         [24] 1377 	mov	dpl, #0x00
      003760 C0 07            [24] 1378 	push	ar7
      003762 C0 06            [24] 1379 	push	ar6
      003764 C0 05            [24] 1380 	push	ar5
      003766 C0 04            [24] 1381 	push	ar4
      003768 12 34 1F         [24] 1382 	lcall	_spi_control_write
      00376B D0 04            [24] 1383 	pop	ar4
      00376D D0 05            [24] 1384 	pop	ar5
      00376F D0 06            [24] 1385 	pop	ar6
      003771 D0 07            [24] 1386 	pop	ar7
                                   1387 ;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003773 8C 03            [24] 1388 	mov	ar3,r4
      003775 90 03 7A         [24] 1389 	mov	dptr,#_spi_control_write_PARM_2
      003778 74 09            [12] 1390 	mov	a,#0x09
      00377A F0               [24] 1391 	movx	@dptr,a
      00377B 90 03 7B         [24] 1392 	mov	dptr,#_spi_control_write_PARM_3
      00377E EB               [12] 1393 	mov	a,r3
      00377F F0               [24] 1394 	movx	@dptr,a
      003780 75 82 00         [24] 1395 	mov	dpl, #0x00
      003783 C0 07            [24] 1396 	push	ar7
      003785 C0 06            [24] 1397 	push	ar6
      003787 C0 05            [24] 1398 	push	ar5
      003789 C0 04            [24] 1399 	push	ar4
      00378B 12 34 1F         [24] 1400 	lcall	_spi_control_write
      00378E D0 04            [24] 1401 	pop	ar4
      003790 D0 05            [24] 1402 	pop	ar5
      003792 D0 06            [24] 1403 	pop	ar6
      003794 D0 07            [24] 1404 	pop	ar7
                                   1405 ;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003796 8F 03            [24] 1406 	mov	ar3,r7
      003798 90 03 7A         [24] 1407 	mov	dptr,#_spi_control_write_PARM_2
      00379B 74 0A            [12] 1408 	mov	a,#0x0a
      00379D F0               [24] 1409 	movx	@dptr,a
      00379E 90 03 7B         [24] 1410 	mov	dptr,#_spi_control_write_PARM_3
      0037A1 EB               [12] 1411 	mov	a,r3
      0037A2 F0               [24] 1412 	movx	@dptr,a
      0037A3 75 82 00         [24] 1413 	mov	dpl, #0x00
      0037A6 C0 07            [24] 1414 	push	ar7
      0037A8 C0 06            [24] 1415 	push	ar6
      0037AA C0 05            [24] 1416 	push	ar5
      0037AC C0 04            [24] 1417 	push	ar4
      0037AE 12 34 1F         [24] 1418 	lcall	_spi_control_write
      0037B1 D0 04            [24] 1419 	pop	ar4
      0037B3 D0 05            [24] 1420 	pop	ar5
      0037B5 D0 06            [24] 1421 	pop	ar6
      0037B7 D0 07            [24] 1422 	pop	ar7
                                   1423 ;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      0037B9 8E 03            [24] 1424 	mov	ar3,r6
      0037BB 90 03 7A         [24] 1425 	mov	dptr,#_spi_control_write_PARM_2
      0037BE 74 0B            [12] 1426 	mov	a,#0x0b
      0037C0 F0               [24] 1427 	movx	@dptr,a
      0037C1 90 03 7B         [24] 1428 	mov	dptr,#_spi_control_write_PARM_3
      0037C4 EB               [12] 1429 	mov	a,r3
      0037C5 F0               [24] 1430 	movx	@dptr,a
      0037C6 75 82 00         [24] 1431 	mov	dpl, #0x00
      0037C9 C0 07            [24] 1432 	push	ar7
      0037CB C0 06            [24] 1433 	push	ar6
      0037CD C0 05            [24] 1434 	push	ar5
      0037CF C0 04            [24] 1435 	push	ar4
      0037D1 12 34 1F         [24] 1436 	lcall	_spi_control_write
      0037D4 D0 04            [24] 1437 	pop	ar4
      0037D6 D0 05            [24] 1438 	pop	ar5
      0037D8 D0 06            [24] 1439 	pop	ar6
      0037DA D0 07            [24] 1440 	pop	ar7
                                   1441 ;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      0037DC C0 06            [24] 1442 	push	ar6
      0037DE C0 07            [24] 1443 	push	ar7
      0037E0 C0 04            [24] 1444 	push	ar4
      0037E2 C0 05            [24] 1445 	push	ar5
      0037E4 74 DF            [12] 1446 	mov	a,#___str_8
      0037E6 C0 E0            [24] 1447 	push	acc
      0037E8 74 4E            [12] 1448 	mov	a,#(___str_8 >> 8)
      0037EA C0 E0            [24] 1449 	push	acc
      0037EC 74 80            [12] 1450 	mov	a,#0x80
      0037EE C0 E0            [24] 1451 	push	acc
      0037F0 12 3D 7C         [24] 1452 	lcall	_printf
      0037F3 E5 81            [12] 1453 	mov	a,sp
      0037F5 24 F9            [12] 1454 	add	a,#0xf9
      0037F7 F5 81            [12] 1455 	mov	sp,a
                                   1456 ;	SPI.c:229: }
      0037F9 22               [24] 1457 	ret
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
      0037FA                       1473 _spi_buffer_read:
      0037FA AF 83            [24] 1474 	mov	r7,dph
      0037FC E5 82            [12] 1475 	mov	a,dpl
      0037FE 90 03 90         [24] 1476 	mov	dptr,#_spi_buffer_read_num_bytes_10000_106
      003801 F0               [24] 1477 	movx	@dptr,a
      003802 EF               [12] 1478 	mov	a,r7
      003803 A3               [24] 1479 	inc	dptr
      003804 F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	SPI.c:234: if (num_bytes < 1) {
      003805 90 03 90         [24] 1482 	mov	dptr,#_spi_buffer_read_num_bytes_10000_106
      003808 E0               [24] 1483 	movx	a,@dptr
      003809 FE               [12] 1484 	mov	r6,a
      00380A A3               [24] 1485 	inc	dptr
      00380B E0               [24] 1486 	movx	a,@dptr
      00380C FF               [12] 1487 	mov	r7,a
      00380D C3               [12] 1488 	clr	c
      00380E EE               [12] 1489 	mov	a,r6
      00380F 94 01            [12] 1490 	subb	a,#0x01
      003811 EF               [12] 1491 	mov	a,r7
      003812 64 80            [12] 1492 	xrl	a,#0x80
      003814 94 80            [12] 1493 	subb	a,#0x80
      003816 50 1A            [24] 1494 	jnc	00102$
                                   1495 ;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003818 C0 06            [24] 1496 	push	ar6
      00381A C0 07            [24] 1497 	push	ar7
      00381C 74 10            [12] 1498 	mov	a,#___str_9
      00381E C0 E0            [24] 1499 	push	acc
      003820 74 4F            [12] 1500 	mov	a,#(___str_9 >> 8)
      003822 C0 E0            [24] 1501 	push	acc
      003824 74 80            [12] 1502 	mov	a,#0x80
      003826 C0 E0            [24] 1503 	push	acc
      003828 12 3D 7C         [24] 1504 	lcall	_printf
      00382B E5 81            [12] 1505 	mov	a,sp
      00382D 24 FB            [12] 1506 	add	a,#0xfb
      00382F F5 81            [12] 1507 	mov	sp,a
                                   1508 ;	SPI.c:236: return;
      003831 22               [24] 1509 	ret
      003832                       1510 00102$:
                                   1511 ;	SPI.c:238: if (start_address > 0x1FFF) {
      003832 90 03 8B         [24] 1512 	mov	dptr,#_spi_buffer_read_PARM_2
      003835 E0               [24] 1513 	movx	a,@dptr
      003836 FC               [12] 1514 	mov	r4,a
      003837 A3               [24] 1515 	inc	dptr
      003838 E0               [24] 1516 	movx	a,@dptr
      003839 FD               [12] 1517 	mov	r5,a
      00383A 8C 02            [24] 1518 	mov	ar2,r4
      00383C 8D 03            [24] 1519 	mov	ar3,r5
      00383E C3               [12] 1520 	clr	c
      00383F 74 FF            [12] 1521 	mov	a,#0xff
      003841 9A               [12] 1522 	subb	a,r2
      003842 74 1F            [12] 1523 	mov	a,#0x1f
      003844 9B               [12] 1524 	subb	a,r3
      003845 50 1A            [24] 1525 	jnc	00104$
                                   1526 ;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
      003847 C0 04            [24] 1527 	push	ar4
      003849 C0 05            [24] 1528 	push	ar5
      00384B 74 30            [12] 1529 	mov	a,#___str_10
      00384D C0 E0            [24] 1530 	push	acc
      00384F 74 4F            [12] 1531 	mov	a,#(___str_10 >> 8)
      003851 C0 E0            [24] 1532 	push	acc
      003853 74 80            [12] 1533 	mov	a,#0x80
      003855 C0 E0            [24] 1534 	push	acc
      003857 12 3D 7C         [24] 1535 	lcall	_printf
      00385A E5 81            [12] 1536 	mov	a,sp
      00385C 24 FB            [12] 1537 	add	a,#0xfb
      00385E F5 81            [12] 1538 	mov	sp,a
                                   1539 ;	SPI.c:240: return;
      003860 22               [24] 1540 	ret
      003861                       1541 00104$:
                                   1542 ;	SPI.c:243: if (num_bytes > 1) {
      003861 C3               [12] 1543 	clr	c
      003862 74 01            [12] 1544 	mov	a,#0x01
      003864 9E               [12] 1545 	subb	a,r6
      003865 74 80            [12] 1546 	mov	a,#(0x00 ^ 0x80)
      003867 8F F0            [24] 1547 	mov	b,r7
      003869 63 F0 80         [24] 1548 	xrl	b,#0x80
      00386C 95 F0            [12] 1549 	subb	a,b
      00386E 50 0B            [24] 1550 	jnc	00106$
                                   1551 ;	SPI.c:244: spi_set_autoinc();
      003870 C0 05            [24] 1552 	push	ar5
      003872 C0 04            [24] 1553 	push	ar4
      003874 12 33 89         [24] 1554 	lcall	_spi_set_autoinc
      003877 D0 04            [24] 1555 	pop	ar4
      003879 D0 05            [24] 1556 	pop	ar5
      00387B                       1557 00106$:
                                   1558 ;	SPI.c:248: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      00387B 8D 07            [24] 1559 	mov	ar7,r5
                                   1560 ;	SPI.c:249: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      00387D 8C 06            [24] 1561 	mov	ar6,r4
                                   1562 ;	SPI.c:251: spi_control_write(0, 0x01, higher_byte); // High byte
      00387F 90 03 7A         [24] 1563 	mov	dptr,#_spi_control_write_PARM_2
      003882 74 01            [12] 1564 	mov	a,#0x01
      003884 F0               [24] 1565 	movx	@dptr,a
      003885 90 03 7B         [24] 1566 	mov	dptr,#_spi_control_write_PARM_3
      003888 EF               [12] 1567 	mov	a,r7
      003889 F0               [24] 1568 	movx	@dptr,a
      00388A 75 82 00         [24] 1569 	mov	dpl, #0x00
      00388D C0 06            [24] 1570 	push	ar6
      00388F C0 05            [24] 1571 	push	ar5
      003891 C0 04            [24] 1572 	push	ar4
      003893 12 34 1F         [24] 1573 	lcall	_spi_control_write
      003896 D0 04            [24] 1574 	pop	ar4
      003898 D0 05            [24] 1575 	pop	ar5
      00389A D0 06            [24] 1576 	pop	ar6
                                   1577 ;	SPI.c:252: spi_control_write(0, 0x00, lower_byte); // Low byte
      00389C 90 03 7A         [24] 1578 	mov	dptr,#_spi_control_write_PARM_2
      00389F E4               [12] 1579 	clr	a
      0038A0 F0               [24] 1580 	movx	@dptr,a
      0038A1 90 03 7B         [24] 1581 	mov	dptr,#_spi_control_write_PARM_3
      0038A4 EE               [12] 1582 	mov	a,r6
      0038A5 F0               [24] 1583 	movx	@dptr,a
      0038A6 75 82 00         [24] 1584 	mov	dpl, #0x00
      0038A9 C0 05            [24] 1585 	push	ar5
      0038AB C0 04            [24] 1586 	push	ar4
      0038AD 12 34 1F         [24] 1587 	lcall	_spi_control_write
                                   1588 ;	SPI.c:255: CS_LOW; // Pull CS Low
                                   1589 ;	assignBit
      0038B0 C2 91            [12] 1590 	clr	_P1_1
                                   1591 ;	SPI.c:256: SPI_send(opcode); // Send opcode
      0038B2 75 82 3A         [24] 1592 	mov	dpl, #0x3a
      0038B5 12 34 8A         [24] 1593 	lcall	_SPI_send
      0038B8 D0 04            [24] 1594 	pop	ar4
      0038BA D0 05            [24] 1595 	pop	ar5
                                   1596 ;	SPI.c:259: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      0038BC 90 03 90         [24] 1597 	mov	dptr,#_spi_buffer_read_num_bytes_10000_106
      0038BF E0               [24] 1598 	movx	a,@dptr
      0038C0 FE               [12] 1599 	mov	r6,a
      0038C1 A3               [24] 1600 	inc	dptr
      0038C2 E0               [24] 1601 	movx	a,@dptr
      0038C3 FF               [12] 1602 	mov	r7,a
      0038C4 C0 07            [24] 1603 	push	ar7
      0038C6 C0 06            [24] 1604 	push	ar6
      0038C8 C0 04            [24] 1605 	push	ar4
      0038CA C0 05            [24] 1606 	push	ar5
      0038CC C0 06            [24] 1607 	push	ar6
      0038CE C0 07            [24] 1608 	push	ar7
      0038D0 74 4A            [12] 1609 	mov	a,#___str_11
      0038D2 C0 E0            [24] 1610 	push	acc
      0038D4 74 4F            [12] 1611 	mov	a,#(___str_11 >> 8)
      0038D6 C0 E0            [24] 1612 	push	acc
      0038D8 74 80            [12] 1613 	mov	a,#0x80
      0038DA C0 E0            [24] 1614 	push	acc
      0038DC 12 3D 7C         [24] 1615 	lcall	_printf
      0038DF E5 81            [12] 1616 	mov	a,sp
      0038E1 24 F9            [12] 1617 	add	a,#0xf9
      0038E3 F5 81            [12] 1618 	mov	sp,a
      0038E5 D0 06            [24] 1619 	pop	ar6
      0038E7 D0 07            [24] 1620 	pop	ar7
                                   1621 ;	SPI.c:260: for (int i = 0; i < num_bytes; i++) {
      0038E9 90 03 92         [24] 1622 	mov	dptr,#_spi_buffer_read_i_20002_113
      0038EC E4               [12] 1623 	clr	a
      0038ED F0               [24] 1624 	movx	@dptr,a
      0038EE A3               [24] 1625 	inc	dptr
      0038EF F0               [24] 1626 	movx	@dptr,a
      0038F0 90 03 8D         [24] 1627 	mov	dptr,#_spi_buffer_read_PARM_3
      0038F3 E0               [24] 1628 	movx	a,@dptr
      0038F4 FB               [12] 1629 	mov	r3,a
      0038F5 A3               [24] 1630 	inc	dptr
      0038F6 E0               [24] 1631 	movx	a,@dptr
      0038F7 FC               [12] 1632 	mov	r4,a
      0038F8 A3               [24] 1633 	inc	dptr
      0038F9 E0               [24] 1634 	movx	a,@dptr
      0038FA FD               [12] 1635 	mov	r5,a
      0038FB                       1636 00109$:
      0038FB 90 03 92         [24] 1637 	mov	dptr,#_spi_buffer_read_i_20002_113
      0038FE E0               [24] 1638 	movx	a,@dptr
      0038FF F9               [12] 1639 	mov	r1,a
      003900 A3               [24] 1640 	inc	dptr
      003901 E0               [24] 1641 	movx	a,@dptr
      003902 FA               [12] 1642 	mov	r2,a
      003903 C3               [12] 1643 	clr	c
      003904 E9               [12] 1644 	mov	a,r1
      003905 9E               [12] 1645 	subb	a,r6
      003906 EA               [12] 1646 	mov	a,r2
      003907 64 80            [12] 1647 	xrl	a,#0x80
      003909 8F F0            [24] 1648 	mov	b,r7
      00390B 63 F0 80         [24] 1649 	xrl	b,#0x80
      00390E 95 F0            [12] 1650 	subb	a,b
      003910 40 03            [24] 1651 	jc	00147$
      003912 02 39 98         [24] 1652 	ljmp	00107$
      003915                       1653 00147$:
                                   1654 ;	SPI.c:261: *data_ptr = SPI_ReadByte(); // Read data
      003915 C0 06            [24] 1655 	push	ar6
      003917 C0 07            [24] 1656 	push	ar7
      003919 C0 07            [24] 1657 	push	ar7
      00391B C0 06            [24] 1658 	push	ar6
      00391D C0 05            [24] 1659 	push	ar5
      00391F C0 04            [24] 1660 	push	ar4
      003921 C0 03            [24] 1661 	push	ar3
      003923 C0 02            [24] 1662 	push	ar2
      003925 C0 01            [24] 1663 	push	ar1
      003927 12 33 77         [24] 1664 	lcall	_SPI_ReadByte
      00392A A8 82            [24] 1665 	mov	r0, dpl
      00392C D0 01            [24] 1666 	pop	ar1
      00392E D0 02            [24] 1667 	pop	ar2
      003930 D0 03            [24] 1668 	pop	ar3
      003932 D0 04            [24] 1669 	pop	ar4
      003934 D0 05            [24] 1670 	pop	ar5
      003936 D0 06            [24] 1671 	pop	ar6
      003938 D0 07            [24] 1672 	pop	ar7
      00393A 8B 82            [24] 1673 	mov	dpl,r3
      00393C 8C 83            [24] 1674 	mov	dph,r4
      00393E 8D F0            [24] 1675 	mov	b,r5
      003940 E8               [12] 1676 	mov	a,r0
      003941 12 3B EA         [24] 1677 	lcall	__gptrput
      003944 A3               [24] 1678 	inc	dptr
      003945 AB 82            [24] 1679 	mov	r3,dpl
      003947 AC 83            [24] 1680 	mov	r4,dph
                                   1681 ;	SPI.c:262: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003949 7F 00            [12] 1682 	mov	r7,#0x00
      00394B 09               [12] 1683 	inc	r1
      00394C B9 00 01         [24] 1684 	cjne	r1,#0x00,00148$
      00394F 0A               [12] 1685 	inc	r2
      003950                       1686 00148$:
      003950 C0 07            [24] 1687 	push	ar7
      003952 C0 06            [24] 1688 	push	ar6
      003954 C0 05            [24] 1689 	push	ar5
      003956 C0 04            [24] 1690 	push	ar4
      003958 C0 03            [24] 1691 	push	ar3
      00395A C0 02            [24] 1692 	push	ar2
      00395C C0 01            [24] 1693 	push	ar1
      00395E C0 00            [24] 1694 	push	ar0
      003960 C0 07            [24] 1695 	push	ar7
      003962 C0 01            [24] 1696 	push	ar1
      003964 C0 02            [24] 1697 	push	ar2
      003966 74 85            [12] 1698 	mov	a,#___str_12
      003968 C0 E0            [24] 1699 	push	acc
      00396A 74 4F            [12] 1700 	mov	a,#(___str_12 >> 8)
      00396C C0 E0            [24] 1701 	push	acc
      00396E 74 80            [12] 1702 	mov	a,#0x80
      003970 C0 E0            [24] 1703 	push	acc
      003972 12 3D 7C         [24] 1704 	lcall	_printf
      003975 E5 81            [12] 1705 	mov	a,sp
      003977 24 F9            [12] 1706 	add	a,#0xf9
      003979 F5 81            [12] 1707 	mov	sp,a
      00397B D0 01            [24] 1708 	pop	ar1
      00397D D0 02            [24] 1709 	pop	ar2
      00397F D0 03            [24] 1710 	pop	ar3
      003981 D0 04            [24] 1711 	pop	ar4
      003983 D0 05            [24] 1712 	pop	ar5
      003985 D0 06            [24] 1713 	pop	ar6
      003987 D0 07            [24] 1714 	pop	ar7
                                   1715 ;	SPI.c:263: data_ptr++;
                                   1716 ;	SPI.c:260: for (int i = 0; i < num_bytes; i++) {
      003989 90 03 92         [24] 1717 	mov	dptr,#_spi_buffer_read_i_20002_113
      00398C E9               [12] 1718 	mov	a,r1
      00398D F0               [24] 1719 	movx	@dptr,a
      00398E EA               [12] 1720 	mov	a,r2
      00398F A3               [24] 1721 	inc	dptr
      003990 F0               [24] 1722 	movx	@dptr,a
      003991 D0 07            [24] 1723 	pop	ar7
      003993 D0 06            [24] 1724 	pop	ar6
      003995 02 38 FB         [24] 1725 	ljmp	00109$
      003998                       1726 00107$:
                                   1727 ;	SPI.c:265: CS_HIGH; // Pull CS High
                                   1728 ;	assignBit
      003998 D2 91            [12] 1729 	setb	_P1_1
                                   1730 ;	SPI.c:266: }
      00399A 22               [24] 1731 	ret
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
      00399B                       1747 _spi_buffer_write:
      00399B AF 83            [24] 1748 	mov	r7,dph
      00399D E5 82            [12] 1749 	mov	a,dpl
      00399F 90 03 99         [24] 1750 	mov	dptr,#_spi_buffer_write_num_bytes_10000_115
      0039A2 F0               [24] 1751 	movx	@dptr,a
      0039A3 EF               [12] 1752 	mov	a,r7
      0039A4 A3               [24] 1753 	inc	dptr
      0039A5 F0               [24] 1754 	movx	@dptr,a
                                   1755 ;	SPI.c:271: if (num_bytes < 1)
      0039A6 90 03 99         [24] 1756 	mov	dptr,#_spi_buffer_write_num_bytes_10000_115
      0039A9 E0               [24] 1757 	movx	a,@dptr
      0039AA FE               [12] 1758 	mov	r6,a
      0039AB A3               [24] 1759 	inc	dptr
      0039AC E0               [24] 1760 	movx	a,@dptr
      0039AD FF               [12] 1761 	mov	r7,a
      0039AE C3               [12] 1762 	clr	c
      0039AF EE               [12] 1763 	mov	a,r6
      0039B0 94 01            [12] 1764 	subb	a,#0x01
      0039B2 EF               [12] 1765 	mov	a,r7
      0039B3 64 80            [12] 1766 	xrl	a,#0x80
      0039B5 94 80            [12] 1767 	subb	a,#0x80
      0039B7 50 1A            [24] 1768 	jnc	00102$
                                   1769 ;	SPI.c:273: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      0039B9 C0 06            [24] 1770 	push	ar6
      0039BB C0 07            [24] 1771 	push	ar7
      0039BD 74 10            [12] 1772 	mov	a,#___str_9
      0039BF C0 E0            [24] 1773 	push	acc
      0039C1 74 4F            [12] 1774 	mov	a,#(___str_9 >> 8)
      0039C3 C0 E0            [24] 1775 	push	acc
      0039C5 74 80            [12] 1776 	mov	a,#0x80
      0039C7 C0 E0            [24] 1777 	push	acc
      0039C9 12 3D 7C         [24] 1778 	lcall	_printf
      0039CC E5 81            [12] 1779 	mov	a,sp
      0039CE 24 FB            [12] 1780 	add	a,#0xfb
      0039D0 F5 81            [12] 1781 	mov	sp,a
                                   1782 ;	SPI.c:274: return;
      0039D2 22               [24] 1783 	ret
      0039D3                       1784 00102$:
                                   1785 ;	SPI.c:276: if (start_address > 0x1FFF) {
      0039D3 90 03 94         [24] 1786 	mov	dptr,#_spi_buffer_write_PARM_2
      0039D6 E0               [24] 1787 	movx	a,@dptr
      0039D7 FC               [12] 1788 	mov	r4,a
      0039D8 A3               [24] 1789 	inc	dptr
      0039D9 E0               [24] 1790 	movx	a,@dptr
      0039DA FD               [12] 1791 	mov	r5,a
      0039DB 8C 02            [24] 1792 	mov	ar2,r4
      0039DD 8D 03            [24] 1793 	mov	ar3,r5
      0039DF C3               [12] 1794 	clr	c
      0039E0 74 FF            [12] 1795 	mov	a,#0xff
      0039E2 9A               [12] 1796 	subb	a,r2
      0039E3 74 1F            [12] 1797 	mov	a,#0x1f
      0039E5 9B               [12] 1798 	subb	a,r3
      0039E6 50 1A            [24] 1799 	jnc	00104$
                                   1800 ;	SPI.c:277: printf("\n\rInvalid address: %04X\n\r", start_address);
      0039E8 C0 04            [24] 1801 	push	ar4
      0039EA C0 05            [24] 1802 	push	ar5
      0039EC 74 30            [12] 1803 	mov	a,#___str_10
      0039EE C0 E0            [24] 1804 	push	acc
      0039F0 74 4F            [12] 1805 	mov	a,#(___str_10 >> 8)
      0039F2 C0 E0            [24] 1806 	push	acc
      0039F4 74 80            [12] 1807 	mov	a,#0x80
      0039F6 C0 E0            [24] 1808 	push	acc
      0039F8 12 3D 7C         [24] 1809 	lcall	_printf
      0039FB E5 81            [12] 1810 	mov	a,sp
      0039FD 24 FB            [12] 1811 	add	a,#0xfb
      0039FF F5 81            [12] 1812 	mov	sp,a
                                   1813 ;	SPI.c:278: return;
      003A01 22               [24] 1814 	ret
      003A02                       1815 00104$:
                                   1816 ;	SPI.c:282: if (num_bytes > 1) {
      003A02 C3               [12] 1817 	clr	c
      003A03 74 01            [12] 1818 	mov	a,#0x01
      003A05 9E               [12] 1819 	subb	a,r6
      003A06 74 80            [12] 1820 	mov	a,#(0x00 ^ 0x80)
      003A08 8F F0            [24] 1821 	mov	b,r7
      003A0A 63 F0 80         [24] 1822 	xrl	b,#0x80
      003A0D 95 F0            [12] 1823 	subb	a,b
      003A0F 50 0B            [24] 1824 	jnc	00106$
                                   1825 ;	SPI.c:283: spi_set_autoinc();
      003A11 C0 05            [24] 1826 	push	ar5
      003A13 C0 04            [24] 1827 	push	ar4
      003A15 12 33 89         [24] 1828 	lcall	_spi_set_autoinc
      003A18 D0 04            [24] 1829 	pop	ar4
      003A1A D0 05            [24] 1830 	pop	ar5
      003A1C                       1831 00106$:
                                   1832 ;	SPI.c:286: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003A1C 8D 07            [24] 1833 	mov	ar7,r5
                                   1834 ;	SPI.c:287: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003A1E 8C 06            [24] 1835 	mov	ar6,r4
                                   1836 ;	SPI.c:289: spi_control_write(0, 0x03, higher_byte); // High byte
      003A20 90 03 7A         [24] 1837 	mov	dptr,#_spi_control_write_PARM_2
      003A23 74 03            [12] 1838 	mov	a,#0x03
      003A25 F0               [24] 1839 	movx	@dptr,a
      003A26 90 03 7B         [24] 1840 	mov	dptr,#_spi_control_write_PARM_3
      003A29 EF               [12] 1841 	mov	a,r7
      003A2A F0               [24] 1842 	movx	@dptr,a
      003A2B 75 82 00         [24] 1843 	mov	dpl, #0x00
      003A2E C0 06            [24] 1844 	push	ar6
      003A30 C0 05            [24] 1845 	push	ar5
      003A32 C0 04            [24] 1846 	push	ar4
      003A34 12 34 1F         [24] 1847 	lcall	_spi_control_write
      003A37 D0 04            [24] 1848 	pop	ar4
      003A39 D0 05            [24] 1849 	pop	ar5
      003A3B D0 06            [24] 1850 	pop	ar6
                                   1851 ;	SPI.c:290: spi_control_write(0, 0x02, lower_byte); // Low byte
      003A3D 90 03 7A         [24] 1852 	mov	dptr,#_spi_control_write_PARM_2
      003A40 74 02            [12] 1853 	mov	a,#0x02
      003A42 F0               [24] 1854 	movx	@dptr,a
      003A43 90 03 7B         [24] 1855 	mov	dptr,#_spi_control_write_PARM_3
      003A46 EE               [12] 1856 	mov	a,r6
      003A47 F0               [24] 1857 	movx	@dptr,a
      003A48 75 82 00         [24] 1858 	mov	dpl, #0x00
      003A4B C0 05            [24] 1859 	push	ar5
      003A4D C0 04            [24] 1860 	push	ar4
      003A4F 12 34 1F         [24] 1861 	lcall	_spi_control_write
                                   1862 ;	SPI.c:293: CS_LOW; // Pull CS Low
                                   1863 ;	assignBit
      003A52 C2 91            [12] 1864 	clr	_P1_1
                                   1865 ;	SPI.c:294: SPI_send(opcode); // Send opcode
      003A54 75 82 7A         [24] 1866 	mov	dpl, #0x7a
      003A57 12 34 8A         [24] 1867 	lcall	_SPI_send
      003A5A D0 04            [24] 1868 	pop	ar4
      003A5C D0 05            [24] 1869 	pop	ar5
                                   1870 ;	SPI.c:297: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003A5E 90 03 99         [24] 1871 	mov	dptr,#_spi_buffer_write_num_bytes_10000_115
      003A61 E0               [24] 1872 	movx	a,@dptr
      003A62 FE               [12] 1873 	mov	r6,a
      003A63 A3               [24] 1874 	inc	dptr
      003A64 E0               [24] 1875 	movx	a,@dptr
      003A65 FF               [12] 1876 	mov	r7,a
      003A66 C0 07            [24] 1877 	push	ar7
      003A68 C0 06            [24] 1878 	push	ar6
      003A6A C0 04            [24] 1879 	push	ar4
      003A6C C0 05            [24] 1880 	push	ar5
      003A6E C0 06            [24] 1881 	push	ar6
      003A70 C0 07            [24] 1882 	push	ar7
      003A72 74 97            [12] 1883 	mov	a,#___str_13
      003A74 C0 E0            [24] 1884 	push	acc
      003A76 74 4F            [12] 1885 	mov	a,#(___str_13 >> 8)
      003A78 C0 E0            [24] 1886 	push	acc
      003A7A 74 80            [12] 1887 	mov	a,#0x80
      003A7C C0 E0            [24] 1888 	push	acc
      003A7E 12 3D 7C         [24] 1889 	lcall	_printf
      003A81 E5 81            [12] 1890 	mov	a,sp
      003A83 24 F9            [12] 1891 	add	a,#0xf9
      003A85 F5 81            [12] 1892 	mov	sp,a
      003A87 D0 06            [24] 1893 	pop	ar6
      003A89 D0 07            [24] 1894 	pop	ar7
                                   1895 ;	SPI.c:298: for (int i = 0; i < num_bytes; i++) {
      003A8B 90 03 9B         [24] 1896 	mov	dptr,#_spi_buffer_write_i_20002_122
      003A8E E4               [12] 1897 	clr	a
      003A8F F0               [24] 1898 	movx	@dptr,a
      003A90 A3               [24] 1899 	inc	dptr
      003A91 F0               [24] 1900 	movx	@dptr,a
      003A92 90 03 96         [24] 1901 	mov	dptr,#_spi_buffer_write_PARM_3
      003A95 E0               [24] 1902 	movx	a,@dptr
      003A96 FB               [12] 1903 	mov	r3,a
      003A97 A3               [24] 1904 	inc	dptr
      003A98 E0               [24] 1905 	movx	a,@dptr
      003A99 FC               [12] 1906 	mov	r4,a
      003A9A A3               [24] 1907 	inc	dptr
      003A9B E0               [24] 1908 	movx	a,@dptr
      003A9C FD               [12] 1909 	mov	r5,a
      003A9D                       1910 00109$:
      003A9D 90 03 9B         [24] 1911 	mov	dptr,#_spi_buffer_write_i_20002_122
      003AA0 E0               [24] 1912 	movx	a,@dptr
      003AA1 F9               [12] 1913 	mov	r1,a
      003AA2 A3               [24] 1914 	inc	dptr
      003AA3 E0               [24] 1915 	movx	a,@dptr
      003AA4 FA               [12] 1916 	mov	r2,a
      003AA5 C3               [12] 1917 	clr	c
      003AA6 E9               [12] 1918 	mov	a,r1
      003AA7 9E               [12] 1919 	subb	a,r6
      003AA8 EA               [12] 1920 	mov	a,r2
      003AA9 64 80            [12] 1921 	xrl	a,#0x80
      003AAB 8F F0            [24] 1922 	mov	b,r7
      003AAD 63 F0 80         [24] 1923 	xrl	b,#0x80
      003AB0 95 F0            [12] 1924 	subb	a,b
      003AB2 40 03            [24] 1925 	jc	00147$
      003AB4 02 3B 44         [24] 1926 	ljmp	00107$
      003AB7                       1927 00147$:
                                   1928 ;	SPI.c:299: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003AB7 C0 06            [24] 1929 	push	ar6
      003AB9 C0 07            [24] 1930 	push	ar7
      003ABB 8B 82            [24] 1931 	mov	dpl,r3
      003ABD 8C 83            [24] 1932 	mov	dph,r4
      003ABF 8D F0            [24] 1933 	mov	b,r5
      003AC1 12 47 9E         [24] 1934 	lcall	__gptrget
      003AC4 F8               [12] 1935 	mov	r0,a
      003AC5 7F 00            [12] 1936 	mov	r7,#0x00
      003AC7 09               [12] 1937 	inc	r1
      003AC8 B9 00 01         [24] 1938 	cjne	r1,#0x00,00148$
      003ACB 0A               [12] 1939 	inc	r2
      003ACC                       1940 00148$:
      003ACC C0 07            [24] 1941 	push	ar7
      003ACE C0 06            [24] 1942 	push	ar6
      003AD0 C0 05            [24] 1943 	push	ar5
      003AD2 C0 04            [24] 1944 	push	ar4
      003AD4 C0 03            [24] 1945 	push	ar3
      003AD6 C0 02            [24] 1946 	push	ar2
      003AD8 C0 01            [24] 1947 	push	ar1
      003ADA C0 00            [24] 1948 	push	ar0
      003ADC C0 07            [24] 1949 	push	ar7
      003ADE C0 01            [24] 1950 	push	ar1
      003AE0 C0 02            [24] 1951 	push	ar2
      003AE2 74 85            [12] 1952 	mov	a,#___str_12
      003AE4 C0 E0            [24] 1953 	push	acc
      003AE6 74 4F            [12] 1954 	mov	a,#(___str_12 >> 8)
      003AE8 C0 E0            [24] 1955 	push	acc
      003AEA 74 80            [12] 1956 	mov	a,#0x80
      003AEC C0 E0            [24] 1957 	push	acc
      003AEE 12 3D 7C         [24] 1958 	lcall	_printf
      003AF1 E5 81            [12] 1959 	mov	a,sp
      003AF3 24 F9            [12] 1960 	add	a,#0xf9
      003AF5 F5 81            [12] 1961 	mov	sp,a
      003AF7 D0 01            [24] 1962 	pop	ar1
      003AF9 D0 02            [24] 1963 	pop	ar2
      003AFB D0 03            [24] 1964 	pop	ar3
      003AFD D0 04            [24] 1965 	pop	ar4
      003AFF D0 05            [24] 1966 	pop	ar5
      003B01 D0 06            [24] 1967 	pop	ar6
      003B03 D0 07            [24] 1968 	pop	ar7
                                   1969 ;	SPI.c:300: SPI_send(*data_ptr); // Send data
      003B05 8B 82            [24] 1970 	mov	dpl,r3
      003B07 8C 83            [24] 1971 	mov	dph,r4
      003B09 8D F0            [24] 1972 	mov	b,r5
      003B0B 12 47 9E         [24] 1973 	lcall	__gptrget
      003B0E FF               [12] 1974 	mov	r7,a
      003B0F A3               [24] 1975 	inc	dptr
      003B10 AB 82            [24] 1976 	mov	r3,dpl
      003B12 AC 83            [24] 1977 	mov	r4,dph
      003B14 8F 82            [24] 1978 	mov	dpl, r7
      003B16 C0 07            [24] 1979 	push	ar7
      003B18 C0 06            [24] 1980 	push	ar6
      003B1A C0 05            [24] 1981 	push	ar5
      003B1C C0 04            [24] 1982 	push	ar4
      003B1E C0 03            [24] 1983 	push	ar3
      003B20 C0 02            [24] 1984 	push	ar2
      003B22 C0 01            [24] 1985 	push	ar1
      003B24 12 34 8A         [24] 1986 	lcall	_SPI_send
      003B27 D0 01            [24] 1987 	pop	ar1
      003B29 D0 02            [24] 1988 	pop	ar2
      003B2B D0 03            [24] 1989 	pop	ar3
      003B2D D0 04            [24] 1990 	pop	ar4
      003B2F D0 05            [24] 1991 	pop	ar5
      003B31 D0 06            [24] 1992 	pop	ar6
      003B33 D0 07            [24] 1993 	pop	ar7
                                   1994 ;	SPI.c:301: data_ptr++;
                                   1995 ;	SPI.c:298: for (int i = 0; i < num_bytes; i++) {
      003B35 90 03 9B         [24] 1996 	mov	dptr,#_spi_buffer_write_i_20002_122
      003B38 E9               [12] 1997 	mov	a,r1
      003B39 F0               [24] 1998 	movx	@dptr,a
      003B3A EA               [12] 1999 	mov	a,r2
      003B3B A3               [24] 2000 	inc	dptr
      003B3C F0               [24] 2001 	movx	@dptr,a
      003B3D D0 07            [24] 2002 	pop	ar7
      003B3F D0 06            [24] 2003 	pop	ar6
      003B41 02 3A 9D         [24] 2004 	ljmp	00109$
      003B44                       2005 00107$:
                                   2006 ;	SPI.c:303: CS_HIGH; // Pull CS High
                                   2007 ;	assignBit
      003B44 D2 91            [12] 2008 	setb	_P1_1
                                   2009 ;	SPI.c:304: }
      003B46 22               [24] 2010 	ret
                                   2011 	.area CSEG    (CODE)
                                   2012 	.area CONST   (CODE)
                                   2013 	.area CONST   (CODE)
      004D9F                       2014 ___str_0:
      004D9F 77 72 6F 6E 67 20 62  2015 	.ascii "wrong bank"
             61 6E 6B
      004DA9 00                    2016 	.db 0x00
                                   2017 	.area CSEG    (CODE)
                                   2018 	.area CONST   (CODE)
      004DAA                       2019 ___str_1:
      004DAA 57 72 69 74 65 3A 20  2020 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      004DCC 0A                    2021 	.db 0x0a
      004DCD 0D                    2022 	.db 0x0d
      004DCE 00                    2023 	.db 0x00
                                   2024 	.area CSEG    (CODE)
                                   2025 	.area CONST   (CODE)
      004DCF                       2026 ___str_2:
      004DCF 0A                    2027 	.db 0x0a
      004DD0 0D                    2028 	.db 0x0d
      004DD1 49 6E 76 61 6C 69 64  2029 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      004E06 0A                    2030 	.db 0x0a
      004E07 0D                    2031 	.db 0x0d
      004E08 00                    2032 	.db 0x00
                                   2033 	.area CSEG    (CODE)
                                   2034 	.area CONST   (CODE)
      004E09                       2035 ___str_3:
      004E09 52 65 61 64 3A 20 41  2036 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004E2A 0A                    2037 	.db 0x0a
      004E2B 0D                    2038 	.db 0x0d
      004E2C 00                    2039 	.db 0x00
                                   2040 	.area CSEG    (CODE)
                                   2041 	.area CONST   (CODE)
      004E2D                       2042 ___str_4:
      004E2D 50 48 59 20 57 72 69  2043 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      004E53 0A                    2044 	.db 0x0a
      004E54 0D                    2045 	.db 0x0d
      004E55 00                    2046 	.db 0x00
                                   2047 	.area CSEG    (CODE)
                                   2048 	.area CONST   (CODE)
      004E56                       2049 ___str_5:
      004E56 52 65 61 64 3A 20 41  2050 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004E77 0A                    2051 	.db 0x0a
      004E78 00                    2052 	.db 0x00
                                   2053 	.area CSEG    (CODE)
                                   2054 	.area CONST   (CODE)
      004E79                       2055 ___str_6:
      004E79 50 48 59 20 52 65 61  2056 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      004E9E 0A                    2057 	.db 0x0a
      004E9F 0D                    2058 	.db 0x0d
      004EA0 00                    2059 	.db 0x00
                                   2060 	.area CSEG    (CODE)
                                   2061 	.area CONST   (CODE)
      004EA1                       2062 ___str_7:
      004EA1 0A                    2063 	.db 0x0a
      004EA2 0D                    2064 	.db 0x0d
      004EA3 49 6E 76 61 6C 69 64  2065 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      004EDC 0A                    2066 	.db 0x0a
      004EDD 0D                    2067 	.db 0x0d
      004EDE 00                    2068 	.db 0x00
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
      004EDF                       2071 ___str_8:
      004EDF 0A                    2072 	.db 0x0a
      004EE0 0D                    2073 	.db 0x0d
      004EE1 42 75 66 66 65 72 20  2074 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      004F0D 0A                    2075 	.db 0x0a
      004F0E 0D                    2076 	.db 0x0d
      004F0F 00                    2077 	.db 0x00
                                   2078 	.area CSEG    (CODE)
                                   2079 	.area CONST   (CODE)
      004F10                       2080 ___str_9:
      004F10 0A                    2081 	.db 0x0a
      004F11 0D                    2082 	.db 0x0d
      004F12 49 6E 76 61 6C 69 64  2083 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      004F2D 0A                    2084 	.db 0x0a
      004F2E 0D                    2085 	.db 0x0d
      004F2F 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      004F30                       2089 ___str_10:
      004F30 0A                    2090 	.db 0x0a
      004F31 0D                    2091 	.db 0x0d
      004F32 49 6E 76 61 6C 69 64  2092 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      004F47 0A                    2093 	.db 0x0a
      004F48 0D                    2094 	.db 0x0d
      004F49 00                    2095 	.db 0x00
                                   2096 	.area CSEG    (CODE)
                                   2097 	.area CONST   (CODE)
      004F4A                       2098 ___str_11:
      004F4A 52 65 61 64 69 6E 67  2099 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      004F82 0A                    2100 	.db 0x0a
      004F83 0D                    2101 	.db 0x0d
      004F84 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
      004F85                       2105 ___str_12:
      004F85 42 79 74 65 20 25 64  2106 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      004F94 0A                    2107 	.db 0x0a
      004F95 0D                    2108 	.db 0x0d
      004F96 00                    2109 	.db 0x00
                                   2110 	.area CSEG    (CODE)
                                   2111 	.area CONST   (CODE)
      004F97                       2112 ___str_13:
      004F97 57 72 69 74 69 6E 67  2113 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      004FCD 0A                    2114 	.db 0x0a
      004FCE 0D                    2115 	.db 0x0d
      004FCF 00                    2116 	.db 0x00
                                   2117 	.area CSEG    (CODE)
                                   2118 	.area XINIT   (CODE)
                                   2119 	.area CABS    (ABS,CODE)

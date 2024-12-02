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
      000311                        498 _SPI_ReadByte_received_data_10000_60:
      000311                        499 	.ds 1
      000312                        500 _select_reg_bank_bank_10000_64:
      000312                        501 	.ds 1
      000313                        502 _spi_control_write_PARM_2:
      000313                        503 	.ds 1
      000314                        504 _spi_control_write_PARM_3:
      000314                        505 	.ds 1
      000315                        506 _spi_control_write_reg_bank_10000_66:
      000315                        507 	.ds 1
      000316                        508 _SPI_send_data_10000_70:
      000316                        509 	.ds 1
      000317                        510 _eth_spi_read_PARM_2:
      000317                        511 	.ds 1
      000318                        512 _eth_spi_read_addr_10000_75:
      000318                        513 	.ds 1
      000319                        514 _phy_spi_write_PARM_2:
      000319                        515 	.ds 2
      00031B                        516 _phy_spi_write_addr_10000_79:
      00031B                        517 	.ds 1
      00031C                        518 _mac_spi_read_PARM_2:
      00031C                        519 	.ds 1
      00031D                        520 _mac_spi_read_addr_10000_81:
      00031D                        521 	.ds 1
      00031E                        522 _phy_spi_read_addr_10000_85:
      00031E                        523 	.ds 1
      00031F                        524 _busy_wait_data_10000_89:
      00031F                        525 	.ds 1
      000320                        526 _buffer_init_PARM_2:
      000320                        527 	.ds 2
      000322                        528 _buffer_init_start_address_10000_91:
      000322                        529 	.ds 2
      000324                        530 _spi_buffer_read_PARM_2:
      000324                        531 	.ds 2
      000326                        532 _spi_buffer_read_PARM_3:
      000326                        533 	.ds 3
      000329                        534 _spi_buffer_read_num_bytes_10000_95:
      000329                        535 	.ds 2
      00032B                        536 _spi_buffer_read_i_20002_102:
      00032B                        537 	.ds 2
      00032D                        538 _spi_buffer_write_PARM_2:
      00032D                        539 	.ds 2
      00032F                        540 _spi_buffer_write_PARM_3:
      00032F                        541 	.ds 3
      000332                        542 _spi_buffer_write_num_bytes_10000_104:
      000332                        543 	.ds 2
      000334                        544 _spi_buffer_write_i_20002_111:
      000334                        545 	.ds 2
                                    546 ;--------------------------------------------------------
                                    547 ; absolute external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area XABS    (ABS,XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; initialized external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XISEG   (XDATA)
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT0 (CODE)
                                    556 	.area GSINIT1 (CODE)
                                    557 	.area GSINIT2 (CODE)
                                    558 	.area GSINIT3 (CODE)
                                    559 	.area GSINIT4 (CODE)
                                    560 	.area GSINIT5 (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.area GSFINAL (CODE)
                                    563 	.area CSEG    (CODE)
                                    564 ;--------------------------------------------------------
                                    565 ; global & static initialisations
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.area GSFINAL (CODE)
                                    570 	.area GSINIT  (CODE)
                                    571 ;--------------------------------------------------------
                                    572 ; Home
                                    573 ;--------------------------------------------------------
                                    574 	.area HOME    (CODE)
                                    575 	.area HOME    (CODE)
                                    576 ;--------------------------------------------------------
                                    577 ; code
                                    578 ;--------------------------------------------------------
                                    579 	.area CSEG    (CODE)
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'SPI_ReadByte'
                                    582 ;------------------------------------------------------------
                                    583 ;received_data             Allocated with name '_SPI_ReadByte_received_data_10000_60'
                                    584 ;------------------------------------------------------------
                                    585 ;	SPI.c:4: uint8_t SPI_ReadByte(void)
                                    586 ;	-----------------------------------------
                                    587 ;	 function SPI_ReadByte
                                    588 ;	-----------------------------------------
      0028ED                        589 _SPI_ReadByte:
                           000007   590 	ar7 = 0x07
                           000006   591 	ar6 = 0x06
                           000005   592 	ar5 = 0x05
                           000004   593 	ar4 = 0x04
                           000003   594 	ar3 = 0x03
                           000002   595 	ar2 = 0x02
                           000001   596 	ar1 = 0x01
                           000000   597 	ar0 = 0x00
                                    598 ;	SPI.c:9: SPDAT = 0xFF;
      0028ED 75 C5 FF         [24]  599 	mov	_SPDAT,#0xff
                                    600 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      0028F0                        601 00101$:
      0028F0 E5 C4            [12]  602 	mov	a,_SPSTA
      0028F2 30 E7 FB         [24]  603 	jnb	acc.7,00101$
                                    604 ;	SPI.c:17: received_data = SPDAT;
      0028F5 90 03 11         [24]  605 	mov	dptr,#_SPI_ReadByte_received_data_10000_60
      0028F8 E5 C5            [12]  606 	mov	a,_SPDAT
      0028FA F0               [24]  607 	movx	@dptr,a
                                    608 ;	SPI.c:19: return received_data;
      0028FB E0               [24]  609 	movx	a,@dptr
                                    610 ;	SPI.c:20: }
      0028FC F5 82            [12]  611 	mov	dpl,a
      0028FE 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    615 ;------------------------------------------------------------
                                    616 ;	SPI.c:22: void spi_set_autoinc(void)
                                    617 ;	-----------------------------------------
                                    618 ;	 function spi_set_autoinc
                                    619 ;	-----------------------------------------
      0028FF                        620 _spi_set_autoinc:
                                    621 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    622 ;	assignBit
      0028FF C2 91            [12]  623 	clr	_P1_1
                                    624 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      002901 75 82 5E         [24]  625 	mov	dpl, #0x5e
      002904 12 29 95         [24]  626 	lcall	_SPI_send
                                    627 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      002907 75 82 80         [24]  628 	mov	dpl, #0x80
      00290A 12 29 95         [24]  629 	lcall	_SPI_send
                                    630 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    631 ;	assignBit
      00290D D2 91            [12]  632 	setb	_P1_1
                                    633 ;	SPI.c:30: }
      00290F 22               [24]  634 	ret
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'select_reg_bank'
                                    637 ;------------------------------------------------------------
                                    638 ;bank                      Allocated with name '_select_reg_bank_bank_10000_64'
                                    639 ;------------------------------------------------------------
                                    640 ;	SPI.c:32: void select_reg_bank(uint8_t bank)
                                    641 ;	-----------------------------------------
                                    642 ;	 function select_reg_bank
                                    643 ;	-----------------------------------------
      002910                        644 _select_reg_bank:
      002910 E5 82            [12]  645 	mov	a,dpl
      002912 90 03 12         [24]  646 	mov	dptr,#_select_reg_bank_bank_10000_64
      002915 F0               [24]  647 	movx	@dptr,a
                                    648 ;	SPI.c:35: CS_LOW;
                                    649 ;	assignBit
      002916 C2 91            [12]  650 	clr	_P1_1
                                    651 ;	SPI.c:38: SPI_send(0x5F);
      002918 75 82 5F         [24]  652 	mov	dpl, #0x5f
      00291B 12 29 95         [24]  653 	lcall	_SPI_send
                                    654 ;	SPI.c:41: SPI_send(bank);
      00291E 90 03 12         [24]  655 	mov	dptr,#_select_reg_bank_bank_10000_64
      002921 E0               [24]  656 	movx	a,@dptr
      002922 F5 82            [12]  657 	mov	dpl,a
      002924 12 29 95         [24]  658 	lcall	_SPI_send
                                    659 ;	SPI.c:44: CS_HIGH;
                                    660 ;	assignBit
      002927 D2 91            [12]  661 	setb	_P1_1
                                    662 ;	SPI.c:45: }
      002929 22               [24]  663 	ret
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'spi_control_write'
                                    666 ;------------------------------------------------------------
                                    667 ;addr                      Allocated with name '_spi_control_write_PARM_2'
                                    668 ;data                      Allocated with name '_spi_control_write_PARM_3'
                                    669 ;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_66'
                                    670 ;opcode                    Allocated with name '_spi_control_write_opcode_10000_67'
                                    671 ;------------------------------------------------------------
                                    672 ;	SPI.c:46: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
                                    673 ;	-----------------------------------------
                                    674 ;	 function spi_control_write
                                    675 ;	-----------------------------------------
      00292A                        676 _spi_control_write:
      00292A E5 82            [12]  677 	mov	a,dpl
      00292C 90 03 15         [24]  678 	mov	dptr,#_spi_control_write_reg_bank_10000_66
      00292F F0               [24]  679 	movx	@dptr,a
                                    680 ;	SPI.c:49: addr = addr + opcode; // Add the opcode to the address
      002930 90 03 13         [24]  681 	mov	dptr,#_spi_control_write_PARM_2
      002933 E0               [24]  682 	movx	a,@dptr
      002934 24 40            [12]  683 	add	a, #0x40
      002936 F0               [24]  684 	movx	@dptr,a
                                    685 ;	SPI.c:51: select_reg_bank(reg_bank); // Function to select the register bank
      002937 90 03 15         [24]  686 	mov	dptr,#_spi_control_write_reg_bank_10000_66
      00293A E0               [24]  687 	movx	a,@dptr
      00293B F5 82            [12]  688 	mov	dpl,a
      00293D 12 29 10         [24]  689 	lcall	_select_reg_bank
                                    690 ;	SPI.c:54: CS_LOW;
                                    691 ;	assignBit
      002940 C2 91            [12]  692 	clr	_P1_1
                                    693 ;	SPI.c:57: SPI_send(addr);
      002942 90 03 13         [24]  694 	mov	dptr,#_spi_control_write_PARM_2
      002945 E0               [24]  695 	movx	a,@dptr
      002946 FF               [12]  696 	mov	r7,a
      002947 F5 82            [12]  697 	mov	dpl,a
      002949 C0 07            [24]  698 	push	ar7
      00294B 12 29 95         [24]  699 	lcall	_SPI_send
      00294E D0 07            [24]  700 	pop	ar7
                                    701 ;	SPI.c:60: SPI_send(data);
      002950 90 03 14         [24]  702 	mov	dptr,#_spi_control_write_PARM_3
      002953 E0               [24]  703 	movx	a,@dptr
      002954 FE               [12]  704 	mov	r6,a
      002955 F5 82            [12]  705 	mov	dpl,a
      002957 C0 07            [24]  706 	push	ar7
      002959 C0 06            [24]  707 	push	ar6
      00295B 12 29 95         [24]  708 	lcall	_SPI_send
      00295E D0 06            [24]  709 	pop	ar6
      002960 D0 07            [24]  710 	pop	ar7
                                    711 ;	SPI.c:63: CS_HIGH;
                                    712 ;	assignBit
      002962 D2 91            [12]  713 	setb	_P1_1
                                    714 ;	SPI.c:66: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      002964 7D 00            [12]  715 	mov	r5,#0x00
      002966 7C 00            [12]  716 	mov	r4,#0x00
      002968 C0 06            [24]  717 	push	ar6
      00296A C0 05            [24]  718 	push	ar5
      00296C C0 07            [24]  719 	push	ar7
      00296E C0 04            [24]  720 	push	ar4
      002970 74 F4            [12]  721 	mov	a,#___str_0
      002972 C0 E0            [24]  722 	push	acc
      002974 74 40            [12]  723 	mov	a,#(___str_0 >> 8)
      002976 C0 E0            [24]  724 	push	acc
      002978 74 80            [12]  725 	mov	a,#0x80
      00297A C0 E0            [24]  726 	push	acc
      00297C 12 32 B9         [24]  727 	lcall	_printf
      00297F E5 81            [12]  728 	mov	a,sp
      002981 24 F9            [12]  729 	add	a,#0xf9
      002983 F5 81            [12]  730 	mov	sp,a
                                    731 ;	SPI.c:67: }
      002985 22               [24]  732 	ret
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'configure_SPI'
                                    735 ;------------------------------------------------------------
                                    736 ;	SPI.c:70: void configure_SPI(void)
                                    737 ;	-----------------------------------------
                                    738 ;	 function configure_SPI
                                    739 ;	-----------------------------------------
      002986                        740 _configure_SPI:
                                    741 ;	SPI.c:72: CS_PIN = 1;
                                    742 ;	assignBit
      002986 D2 91            [12]  743 	setb	_P1_1
                                    744 ;	SPI.c:73: SPCON = 0x00;
      002988 75 C3 00         [24]  745 	mov	_SPCON,#0x00
                                    746 ;	SPI.c:74: SPCON |= SS_DISABLE;
      00298B 43 C3 20         [24]  747 	orl	_SPCON,#0x20
                                    748 ;	SPI.c:75: SPCON |= MASTER_MODE;
      00298E 43 C3 10         [24]  749 	orl	_SPCON,#0x10
                                    750 ;	SPI.c:76: SPCON |= SPI_ENABLE;
      002991 43 C3 40         [24]  751 	orl	_SPCON,#0x40
                                    752 ;	SPI.c:77: }
      002994 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'SPI_send'
                                    756 ;------------------------------------------------------------
                                    757 ;data                      Allocated with name '_SPI_send_data_10000_70'
                                    758 ;------------------------------------------------------------
                                    759 ;	SPI.c:80: void SPI_send(uint8_t data)
                                    760 ;	-----------------------------------------
                                    761 ;	 function SPI_send
                                    762 ;	-----------------------------------------
      002995                        763 _SPI_send:
      002995 E5 82            [12]  764 	mov	a,dpl
      002997 90 03 16         [24]  765 	mov	dptr,#_SPI_send_data_10000_70
      00299A F0               [24]  766 	movx	@dptr,a
                                    767 ;	SPI.c:83: SPDAT = data;           // Config + MSB of data
      00299B E0               [24]  768 	movx	a,@dptr
      00299C F5 C5            [12]  769 	mov	_SPDAT,a
                                    770 ;	SPI.c:85: while (!(SPSTA & 0x80))
      00299E                        771 00101$:
      00299E E5 C4            [12]  772 	mov	a,_SPSTA
      0029A0 30 E7 FB         [24]  773 	jnb	acc.7,00101$
                                    774 ;	SPI.c:90: }
      0029A3 22               [24]  775 	ret
                                    776 ;------------------------------------------------------------
                                    777 ;Allocation info for local variables in function 'enc_reset'
                                    778 ;------------------------------------------------------------
                                    779 ;	SPI.c:92: void enc_reset(void)
                                    780 ;	-----------------------------------------
                                    781 ;	 function enc_reset
                                    782 ;	-----------------------------------------
      0029A4                        783 _enc_reset:
                                    784 ;	SPI.c:94: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    785 ;	assignBit
      0029A4 C2 91            [12]  786 	clr	_P1_1
                                    787 ;	SPI.c:95: SPI_send(0xFF);            // Send reset command
      0029A6 75 82 FF         [24]  788 	mov	dpl, #0xff
      0029A9 12 29 95         [24]  789 	lcall	_SPI_send
                                    790 ;	SPI.c:96: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    791 ;	assignBit
      0029AC D2 91            [12]  792 	setb	_P1_1
                                    793 ;	SPI.c:97: }
      0029AE 22               [24]  794 	ret
                                    795 ;------------------------------------------------------------
                                    796 ;Allocation info for local variables in function 'eth_spi_read'
                                    797 ;------------------------------------------------------------
                                    798 ;bank                      Allocated with name '_eth_spi_read_PARM_2'
                                    799 ;addr                      Allocated with name '_eth_spi_read_addr_10000_75'
                                    800 ;data                      Allocated with name '_eth_spi_read_data_10001_78'
                                    801 ;------------------------------------------------------------
                                    802 ;	SPI.c:99: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
                                    803 ;	-----------------------------------------
                                    804 ;	 function eth_spi_read
                                    805 ;	-----------------------------------------
      0029AF                        806 _eth_spi_read:
      0029AF E5 82            [12]  807 	mov	a,dpl
      0029B1 90 03 18         [24]  808 	mov	dptr,#_eth_spi_read_addr_10000_75
      0029B4 F0               [24]  809 	movx	@dptr,a
                                    810 ;	SPI.c:101: if (addr > 0x1F) {
      0029B5 E0               [24]  811 	movx	a,@dptr
      0029B6 FF               [12]  812 	mov  r7,a
      0029B7 24 E0            [12]  813 	add	a,#0xff - 0x1f
      0029B9 50 19            [24]  814 	jnc	00102$
                                    815 ;	SPI.c:102: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      0029BB 74 19            [12]  816 	mov	a,#___str_1
      0029BD C0 E0            [24]  817 	push	acc
      0029BF 74 41            [12]  818 	mov	a,#(___str_1 >> 8)
      0029C1 C0 E0            [24]  819 	push	acc
      0029C3 74 80            [12]  820 	mov	a,#0x80
      0029C5 C0 E0            [24]  821 	push	acc
      0029C7 12 32 B9         [24]  822 	lcall	_printf
      0029CA 15 81            [12]  823 	dec	sp
      0029CC 15 81            [12]  824 	dec	sp
      0029CE 15 81            [12]  825 	dec	sp
                                    826 ;	SPI.c:103: return 0;
      0029D0 75 82 00         [24]  827 	mov	dpl, #0x00
      0029D3 22               [24]  828 	ret
      0029D4                        829 00102$:
                                    830 ;	SPI.c:106: select_reg_bank(bank);     // Select the appropriate bank
      0029D4 90 03 17         [24]  831 	mov	dptr,#_eth_spi_read_PARM_2
      0029D7 E0               [24]  832 	movx	a,@dptr
      0029D8 F5 82            [12]  833 	mov	dpl,a
      0029DA C0 07            [24]  834 	push	ar7
      0029DC 12 29 10         [24]  835 	lcall	_select_reg_bank
      0029DF D0 07            [24]  836 	pop	ar7
                                    837 ;	SPI.c:108: CS_LOW;                    // Pull CS low to start communication
                                    838 ;	assignBit
      0029E1 C2 91            [12]  839 	clr	_P1_1
                                    840 ;	SPI.c:109: SPI_send(addr);            // Send the address
      0029E3 8F 82            [24]  841 	mov	dpl, r7
      0029E5 C0 07            [24]  842 	push	ar7
      0029E7 12 29 95         [24]  843 	lcall	_SPI_send
                                    844 ;	SPI.c:110: uint8_t data = SPI_ReadByte(); // Read the data
      0029EA 12 28 ED         [24]  845 	lcall	_SPI_ReadByte
      0029ED AE 82            [24]  846 	mov	r6, dpl
      0029EF D0 07            [24]  847 	pop	ar7
                                    848 ;	SPI.c:111: CS_HIGH;                   // Pull CS high to end communication
                                    849 ;	assignBit
      0029F1 D2 91            [12]  850 	setb	_P1_1
                                    851 ;	SPI.c:114: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      0029F3 8E 04            [24]  852 	mov	ar4,r6
      0029F5 7D 00            [12]  853 	mov	r5,#0x00
      0029F7 7B 00            [12]  854 	mov	r3,#0x00
      0029F9 C0 06            [24]  855 	push	ar6
      0029FB C0 04            [24]  856 	push	ar4
      0029FD C0 05            [24]  857 	push	ar5
      0029FF C0 07            [24]  858 	push	ar7
      002A01 C0 03            [24]  859 	push	ar3
      002A03 74 53            [12]  860 	mov	a,#___str_2
      002A05 C0 E0            [24]  861 	push	acc
      002A07 74 41            [12]  862 	mov	a,#(___str_2 >> 8)
      002A09 C0 E0            [24]  863 	push	acc
      002A0B 74 80            [12]  864 	mov	a,#0x80
      002A0D C0 E0            [24]  865 	push	acc
      002A0F 12 32 B9         [24]  866 	lcall	_printf
      002A12 E5 81            [12]  867 	mov	a,sp
      002A14 24 F9            [12]  868 	add	a,#0xf9
      002A16 F5 81            [12]  869 	mov	sp,a
      002A18 D0 06            [24]  870 	pop	ar6
                                    871 ;	SPI.c:116: return data;
      002A1A 8E 82            [24]  872 	mov	dpl, r6
                                    873 ;	SPI.c:117: }
      002A1C 22               [24]  874 	ret
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'phy_spi_write'
                                    877 ;------------------------------------------------------------
                                    878 ;data                      Allocated with name '_phy_spi_write_PARM_2'
                                    879 ;addr                      Allocated with name '_phy_spi_write_addr_10000_79'
                                    880 ;------------------------------------------------------------
                                    881 ;	SPI.c:119: void phy_spi_write(uint8_t addr, uint16_t data)
                                    882 ;	-----------------------------------------
                                    883 ;	 function phy_spi_write
                                    884 ;	-----------------------------------------
      002A1D                        885 _phy_spi_write:
      002A1D E5 82            [12]  886 	mov	a,dpl
      002A1F 90 03 1B         [24]  887 	mov	dptr,#_phy_spi_write_addr_10000_79
      002A22 F0               [24]  888 	movx	@dptr,a
                                    889 ;	SPI.c:121: spi_control_write(2, 0x14, addr);                      // Write PHY address
      002A23 E0               [24]  890 	movx	a,@dptr
      002A24 FF               [12]  891 	mov	r7,a
      002A25 90 03 13         [24]  892 	mov	dptr,#_spi_control_write_PARM_2
      002A28 74 14            [12]  893 	mov	a,#0x14
      002A2A F0               [24]  894 	movx	@dptr,a
      002A2B 90 03 14         [24]  895 	mov	dptr,#_spi_control_write_PARM_3
      002A2E EF               [12]  896 	mov	a,r7
      002A2F F0               [24]  897 	movx	@dptr,a
      002A30 75 82 02         [24]  898 	mov	dpl, #0x02
      002A33 C0 07            [24]  899 	push	ar7
      002A35 12 29 2A         [24]  900 	lcall	_spi_control_write
      002A38 D0 07            [24]  901 	pop	ar7
                                    902 ;	SPI.c:122: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      002A3A 90 03 19         [24]  903 	mov	dptr,#_phy_spi_write_PARM_2
      002A3D E0               [24]  904 	movx	a,@dptr
      002A3E FD               [12]  905 	mov	r5,a
      002A3F A3               [24]  906 	inc	dptr
      002A40 E0               [24]  907 	movx	a,@dptr
      002A41 FE               [12]  908 	mov	r6,a
      002A42 8D 04            [24]  909 	mov	ar4,r5
      002A44 90 03 13         [24]  910 	mov	dptr,#_spi_control_write_PARM_2
      002A47 74 16            [12]  911 	mov	a,#0x16
      002A49 F0               [24]  912 	movx	@dptr,a
      002A4A 90 03 14         [24]  913 	mov	dptr,#_spi_control_write_PARM_3
      002A4D EC               [12]  914 	mov	a,r4
      002A4E F0               [24]  915 	movx	@dptr,a
      002A4F 75 82 02         [24]  916 	mov	dpl, #0x02
      002A52 C0 07            [24]  917 	push	ar7
      002A54 C0 06            [24]  918 	push	ar6
      002A56 C0 05            [24]  919 	push	ar5
      002A58 12 29 2A         [24]  920 	lcall	_spi_control_write
      002A5B D0 05            [24]  921 	pop	ar5
      002A5D D0 06            [24]  922 	pop	ar6
      002A5F D0 07            [24]  923 	pop	ar7
                                    924 ;	SPI.c:123: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      002A61 8E 04            [24]  925 	mov	ar4,r6
      002A63 90 03 13         [24]  926 	mov	dptr,#_spi_control_write_PARM_2
      002A66 74 17            [12]  927 	mov	a,#0x17
      002A68 F0               [24]  928 	movx	@dptr,a
      002A69 90 03 14         [24]  929 	mov	dptr,#_spi_control_write_PARM_3
      002A6C EC               [12]  930 	mov	a,r4
      002A6D F0               [24]  931 	movx	@dptr,a
      002A6E 75 82 02         [24]  932 	mov	dpl, #0x02
      002A71 C0 07            [24]  933 	push	ar7
      002A73 C0 06            [24]  934 	push	ar6
      002A75 C0 05            [24]  935 	push	ar5
      002A77 12 29 2A         [24]  936 	lcall	_spi_control_write
      002A7A D0 05            [24]  937 	pop	ar5
      002A7C D0 06            [24]  938 	pop	ar6
      002A7E D0 07            [24]  939 	pop	ar7
                                    940 ;	SPI.c:126: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      002A80 7C 00            [12]  941 	mov	r4,#0x00
      002A82 C0 05            [24]  942 	push	ar5
      002A84 C0 06            [24]  943 	push	ar6
      002A86 C0 07            [24]  944 	push	ar7
      002A88 C0 04            [24]  945 	push	ar4
      002A8A 74 77            [12]  946 	mov	a,#___str_3
      002A8C C0 E0            [24]  947 	push	acc
      002A8E 74 41            [12]  948 	mov	a,#(___str_3 >> 8)
      002A90 C0 E0            [24]  949 	push	acc
      002A92 74 80            [12]  950 	mov	a,#0x80
      002A94 C0 E0            [24]  951 	push	acc
      002A96 12 32 B9         [24]  952 	lcall	_printf
      002A99 E5 81            [12]  953 	mov	a,sp
      002A9B 24 F9            [12]  954 	add	a,#0xf9
      002A9D F5 81            [12]  955 	mov	sp,a
                                    956 ;	SPI.c:127: }
      002A9F 22               [24]  957 	ret
                                    958 ;------------------------------------------------------------
                                    959 ;Allocation info for local variables in function 'mac_spi_read'
                                    960 ;------------------------------------------------------------
                                    961 ;bank                      Allocated with name '_mac_spi_read_PARM_2'
                                    962 ;addr                      Allocated with name '_mac_spi_read_addr_10000_81'
                                    963 ;data                      Allocated with name '_mac_spi_read_data_10001_84'
                                    964 ;------------------------------------------------------------
                                    965 ;	SPI.c:129: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
                                    966 ;	-----------------------------------------
                                    967 ;	 function mac_spi_read
                                    968 ;	-----------------------------------------
      002AA0                        969 _mac_spi_read:
      002AA0 E5 82            [12]  970 	mov	a,dpl
      002AA2 90 03 1D         [24]  971 	mov	dptr,#_mac_spi_read_addr_10000_81
      002AA5 F0               [24]  972 	movx	@dptr,a
                                    973 ;	SPI.c:131: if (addr > 0x1F) {
      002AA6 E0               [24]  974 	movx	a,@dptr
      002AA7 FF               [12]  975 	mov  r7,a
      002AA8 24 E0            [12]  976 	add	a,#0xff - 0x1f
      002AAA 50 19            [24]  977 	jnc	00102$
                                    978 ;	SPI.c:132: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      002AAC 74 19            [12]  979 	mov	a,#___str_1
      002AAE C0 E0            [24]  980 	push	acc
      002AB0 74 41            [12]  981 	mov	a,#(___str_1 >> 8)
      002AB2 C0 E0            [24]  982 	push	acc
      002AB4 74 80            [12]  983 	mov	a,#0x80
      002AB6 C0 E0            [24]  984 	push	acc
      002AB8 12 32 B9         [24]  985 	lcall	_printf
      002ABB 15 81            [12]  986 	dec	sp
      002ABD 15 81            [12]  987 	dec	sp
      002ABF 15 81            [12]  988 	dec	sp
                                    989 ;	SPI.c:133: return 0; // Return 0 if address is invalid
      002AC1 75 82 00         [24]  990 	mov	dpl, #0x00
      002AC4 22               [24]  991 	ret
      002AC5                        992 00102$:
                                    993 ;	SPI.c:136: select_reg_bank(bank); // Select the appropriate register bank
      002AC5 90 03 1C         [24]  994 	mov	dptr,#_mac_spi_read_PARM_2
      002AC8 E0               [24]  995 	movx	a,@dptr
      002AC9 F5 82            [12]  996 	mov	dpl,a
      002ACB C0 07            [24]  997 	push	ar7
      002ACD 12 29 10         [24]  998 	lcall	_select_reg_bank
      002AD0 D0 07            [24]  999 	pop	ar7
                                   1000 ;	SPI.c:139: CS_LOW;
                                   1001 ;	assignBit
      002AD2 C2 91            [12] 1002 	clr	_P1_1
                                   1003 ;	SPI.c:142: SPI_send(addr);
      002AD4 8F 82            [24] 1004 	mov	dpl, r7
      002AD6 C0 07            [24] 1005 	push	ar7
      002AD8 12 29 95         [24] 1006 	lcall	_SPI_send
                                   1007 ;	SPI.c:145: uint8_t data = SPI_ReadByte();
      002ADB 12 28 ED         [24] 1008 	lcall	_SPI_ReadByte
      002ADE AE 82            [24] 1009 	mov	r6, dpl
      002AE0 D0 07            [24] 1010 	pop	ar7
                                   1011 ;	SPI.c:148: CS_HIGH;
                                   1012 ;	assignBit
      002AE2 D2 91            [12] 1013 	setb	_P1_1
                                   1014 ;	SPI.c:151: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      002AE4 8E 04            [24] 1015 	mov	ar4,r6
      002AE6 7D 00            [12] 1016 	mov	r5,#0x00
      002AE8 7B 00            [12] 1017 	mov	r3,#0x00
      002AEA C0 06            [24] 1018 	push	ar6
      002AEC C0 04            [24] 1019 	push	ar4
      002AEE C0 05            [24] 1020 	push	ar5
      002AF0 C0 07            [24] 1021 	push	ar7
      002AF2 C0 03            [24] 1022 	push	ar3
      002AF4 74 A0            [12] 1023 	mov	a,#___str_4
      002AF6 C0 E0            [24] 1024 	push	acc
      002AF8 74 41            [12] 1025 	mov	a,#(___str_4 >> 8)
      002AFA C0 E0            [24] 1026 	push	acc
      002AFC 74 80            [12] 1027 	mov	a,#0x80
      002AFE C0 E0            [24] 1028 	push	acc
      002B00 12 32 B9         [24] 1029 	lcall	_printf
      002B03 E5 81            [12] 1030 	mov	a,sp
      002B05 24 F9            [12] 1031 	add	a,#0xf9
      002B07 F5 81            [12] 1032 	mov	sp,a
      002B09 D0 06            [24] 1033 	pop	ar6
                                   1034 ;	SPI.c:153: return data;
      002B0B 8E 82            [24] 1035 	mov	dpl, r6
                                   1036 ;	SPI.c:154: }
      002B0D 22               [24] 1037 	ret
                                   1038 ;------------------------------------------------------------
                                   1039 ;Allocation info for local variables in function 'phy_spi_read'
                                   1040 ;------------------------------------------------------------
                                   1041 ;addr                      Allocated with name '_phy_spi_read_addr_10000_85'
                                   1042 ;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_87'
                                   1043 ;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_87'
                                   1044 ;data                      Allocated with name '_phy_spi_read_data_10001_87'
                                   1045 ;------------------------------------------------------------
                                   1046 ;	SPI.c:157: uint16_t phy_spi_read(uint8_t addr)
                                   1047 ;	-----------------------------------------
                                   1048 ;	 function phy_spi_read
                                   1049 ;	-----------------------------------------
      002B0E                       1050 _phy_spi_read:
      002B0E E5 82            [12] 1051 	mov	a,dpl
      002B10 90 03 1E         [24] 1052 	mov	dptr,#_phy_spi_read_addr_10000_85
      002B13 F0               [24] 1053 	movx	@dptr,a
                                   1054 ;	SPI.c:159: spi_control_write(2, 0x14, addr);     // Write PHY address
      002B14 E0               [24] 1055 	movx	a,@dptr
      002B15 FF               [12] 1056 	mov	r7,a
      002B16 90 03 13         [24] 1057 	mov	dptr,#_spi_control_write_PARM_2
      002B19 74 14            [12] 1058 	mov	a,#0x14
      002B1B F0               [24] 1059 	movx	@dptr,a
      002B1C 90 03 14         [24] 1060 	mov	dptr,#_spi_control_write_PARM_3
      002B1F EF               [12] 1061 	mov	a,r7
      002B20 F0               [24] 1062 	movx	@dptr,a
      002B21 75 82 02         [24] 1063 	mov	dpl, #0x02
      002B24 C0 07            [24] 1064 	push	ar7
      002B26 12 29 2A         [24] 1065 	lcall	_spi_control_write
      002B29 D0 07            [24] 1066 	pop	ar7
                                   1067 ;	SPI.c:160: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      002B2B 90 03 13         [24] 1068 	mov	dptr,#_spi_control_write_PARM_2
      002B2E 74 12            [12] 1069 	mov	a,#0x12
      002B30 F0               [24] 1070 	movx	@dptr,a
      002B31 90 03 14         [24] 1071 	mov	dptr,#_spi_control_write_PARM_3
      002B34 74 01            [12] 1072 	mov	a,#0x01
      002B36 F0               [24] 1073 	movx	@dptr,a
      002B37 75 82 02         [24] 1074 	mov	dpl, #0x02
      002B3A C0 07            [24] 1075 	push	ar7
      002B3C 12 29 2A         [24] 1076 	lcall	_spi_control_write
                                   1077 ;	SPI.c:162: busy_wait();                          // Wait for the read to complete
      002B3F 12 2B BB         [24] 1078 	lcall	_busy_wait
      002B42 D0 07            [24] 1079 	pop	ar7
                                   1080 ;	SPI.c:164: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      002B44 90 03 13         [24] 1081 	mov	dptr,#_spi_control_write_PARM_2
      002B47 74 12            [12] 1082 	mov	a,#0x12
      002B49 F0               [24] 1083 	movx	@dptr,a
      002B4A 90 03 14         [24] 1084 	mov	dptr,#_spi_control_write_PARM_3
      002B4D E4               [12] 1085 	clr	a
      002B4E F0               [24] 1086 	movx	@dptr,a
      002B4F 75 82 02         [24] 1087 	mov	dpl, #0x02
      002B52 C0 07            [24] 1088 	push	ar7
      002B54 12 29 2A         [24] 1089 	lcall	_spi_control_write
      002B57 D0 07            [24] 1090 	pop	ar7
                                   1091 ;	SPI.c:166: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      002B59 90 03 1C         [24] 1092 	mov	dptr,#_mac_spi_read_PARM_2
      002B5C 74 02            [12] 1093 	mov	a,#0x02
      002B5E F0               [24] 1094 	movx	@dptr,a
      002B5F 75 82 18         [24] 1095 	mov	dpl, #0x18
      002B62 C0 07            [24] 1096 	push	ar7
      002B64 12 2A A0         [24] 1097 	lcall	_mac_spi_read
      002B67 AE 82            [24] 1098 	mov	r6, dpl
      002B69 D0 07            [24] 1099 	pop	ar7
      002B6B 7D 00            [12] 1100 	mov	r5,#0x00
                                   1101 ;	SPI.c:167: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      002B6D 90 03 1C         [24] 1102 	mov	dptr,#_mac_spi_read_PARM_2
      002B70 74 02            [12] 1103 	mov	a,#0x02
      002B72 F0               [24] 1104 	movx	@dptr,a
      002B73 75 82 19         [24] 1105 	mov	dpl, #0x19
      002B76 C0 07            [24] 1106 	push	ar7
      002B78 C0 06            [24] 1107 	push	ar6
      002B7A C0 05            [24] 1108 	push	ar5
      002B7C 12 2A A0         [24] 1109 	lcall	_mac_spi_read
      002B7F AC 82            [24] 1110 	mov	r4, dpl
      002B81 D0 05            [24] 1111 	pop	ar5
      002B83 D0 06            [24] 1112 	pop	ar6
      002B85 D0 07            [24] 1113 	pop	ar7
                                   1114 ;	SPI.c:169: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      002B87 8C 03            [24] 1115 	mov	ar3,r4
      002B89 E4               [12] 1116 	clr	a
      002B8A 42 06            [12] 1117 	orl	ar6,a
      002B8C EB               [12] 1118 	mov	a,r3
      002B8D 42 05            [12] 1119 	orl	ar5,a
                                   1120 ;	SPI.c:172: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      002B8F 7C 00            [12] 1121 	mov	r4,#0x00
      002B91 C0 06            [24] 1122 	push	ar6
      002B93 C0 05            [24] 1123 	push	ar5
      002B95 C0 06            [24] 1124 	push	ar6
      002B97 C0 05            [24] 1125 	push	ar5
      002B99 C0 07            [24] 1126 	push	ar7
      002B9B C0 04            [24] 1127 	push	ar4
      002B9D 74 C3            [12] 1128 	mov	a,#___str_5
      002B9F C0 E0            [24] 1129 	push	acc
      002BA1 74 41            [12] 1130 	mov	a,#(___str_5 >> 8)
      002BA3 C0 E0            [24] 1131 	push	acc
      002BA5 74 80            [12] 1132 	mov	a,#0x80
      002BA7 C0 E0            [24] 1133 	push	acc
      002BA9 12 32 B9         [24] 1134 	lcall	_printf
      002BAC E5 81            [12] 1135 	mov	a,sp
      002BAE 24 F9            [12] 1136 	add	a,#0xf9
      002BB0 F5 81            [12] 1137 	mov	sp,a
      002BB2 D0 05            [24] 1138 	pop	ar5
      002BB4 D0 06            [24] 1139 	pop	ar6
                                   1140 ;	SPI.c:174: return data;        // Combine MSB and LSB
      002BB6 8E 82            [24] 1141 	mov	dpl, r6
      002BB8 8D 83            [24] 1142 	mov	dph, r5
                                   1143 ;	SPI.c:175: }
      002BBA 22               [24] 1144 	ret
                                   1145 ;------------------------------------------------------------
                                   1146 ;Allocation info for local variables in function 'busy_wait'
                                   1147 ;------------------------------------------------------------
                                   1148 ;data                      Allocated with name '_busy_wait_data_10000_89'
                                   1149 ;------------------------------------------------------------
                                   1150 ;	SPI.c:177: void busy_wait(void)
                                   1151 ;	-----------------------------------------
                                   1152 ;	 function busy_wait
                                   1153 ;	-----------------------------------------
      002BBB                       1154 _busy_wait:
                                   1155 ;	SPI.c:179: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      002BBB 90 03 1C         [24] 1156 	mov	dptr,#_mac_spi_read_PARM_2
      002BBE 74 03            [12] 1157 	mov	a,#0x03
      002BC0 F0               [24] 1158 	movx	@dptr,a
      002BC1 75 82 0A         [24] 1159 	mov	dpl, #0x0a
      002BC4 12 2A A0         [24] 1160 	lcall	_mac_spi_read
      002BC7 E5 82            [12] 1161 	mov	a, dpl
      002BC9 90 03 1F         [24] 1162 	mov	dptr,#_busy_wait_data_10000_89
      002BCC F0               [24] 1163 	movx	@dptr,a
                                   1164 ;	SPI.c:180: while (data & 0x01)
      002BCD                       1165 00101$:
      002BCD 90 03 1F         [24] 1166 	mov	dptr,#_busy_wait_data_10000_89
      002BD0 E0               [24] 1167 	movx	a,@dptr
      002BD1 30 E0 14         [24] 1168 	jnb	acc.0,00104$
                                   1169 ;	SPI.c:182: data = mac_spi_read(0x0A, 3);
      002BD4 90 03 1C         [24] 1170 	mov	dptr,#_mac_spi_read_PARM_2
      002BD7 74 03            [12] 1171 	mov	a,#0x03
      002BD9 F0               [24] 1172 	movx	@dptr,a
      002BDA 75 82 0A         [24] 1173 	mov	dpl, #0x0a
      002BDD 12 2A A0         [24] 1174 	lcall	_mac_spi_read
      002BE0 E5 82            [12] 1175 	mov	a, dpl
      002BE2 90 03 1F         [24] 1176 	mov	dptr,#_busy_wait_data_10000_89
      002BE5 F0               [24] 1177 	movx	@dptr,a
      002BE6 80 E5            [24] 1178 	sjmp	00101$
      002BE8                       1179 00104$:
                                   1180 ;	SPI.c:184: }
      002BE8 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'buffer_init'
                                   1184 ;------------------------------------------------------------
                                   1185 ;size                      Allocated with name '_buffer_init_PARM_2'
                                   1186 ;start_address             Allocated with name '_buffer_init_start_address_10000_91'
                                   1187 ;erxst                     Allocated with name '_buffer_init_erxst_10001_94'
                                   1188 ;erxnd                     Allocated with name '_buffer_init_erxnd_10001_94'
                                   1189 ;------------------------------------------------------------
                                   1190 ;	SPI.c:186: void buffer_init(uint16_t start_address, uint16_t size)
                                   1191 ;	-----------------------------------------
                                   1192 ;	 function buffer_init
                                   1193 ;	-----------------------------------------
      002BE9                       1194 _buffer_init:
      002BE9 AF 83            [24] 1195 	mov	r7,dph
      002BEB E5 82            [12] 1196 	mov	a,dpl
      002BED 90 03 22         [24] 1197 	mov	dptr,#_buffer_init_start_address_10000_91
      002BF0 F0               [24] 1198 	movx	@dptr,a
      002BF1 EF               [12] 1199 	mov	a,r7
      002BF2 A3               [24] 1200 	inc	dptr
      002BF3 F0               [24] 1201 	movx	@dptr,a
                                   1202 ;	SPI.c:188: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      002BF4 90 03 22         [24] 1203 	mov	dptr,#_buffer_init_start_address_10000_91
      002BF7 E0               [24] 1204 	movx	a,@dptr
      002BF8 FE               [12] 1205 	mov	r6,a
      002BF9 A3               [24] 1206 	inc	dptr
      002BFA E0               [24] 1207 	movx	a,@dptr
      002BFB FF               [12] 1208 	mov	r7,a
      002BFC 8E 04            [24] 1209 	mov	ar4,r6
      002BFE 8F 05            [24] 1210 	mov	ar5,r7
      002C00 C3               [12] 1211 	clr	c
      002C01 74 FF            [12] 1212 	mov	a,#0xff
      002C03 9C               [12] 1213 	subb	a,r4
      002C04 74 1F            [12] 1214 	mov	a,#0x1f
      002C06 9D               [12] 1215 	subb	a,r5
      002C07 40 17            [24] 1216 	jc	00101$
      002C09 90 03 20         [24] 1217 	mov	dptr,#_buffer_init_PARM_2
      002C0C E0               [24] 1218 	movx	a,@dptr
      002C0D FA               [12] 1219 	mov	r2,a
      002C0E A3               [24] 1220 	inc	dptr
      002C0F E0               [24] 1221 	movx	a,@dptr
      002C10 FB               [12] 1222 	mov	r3,a
      002C11 EA               [12] 1223 	mov	a,r2
      002C12 2E               [12] 1224 	add	a, r6
      002C13 F8               [12] 1225 	mov	r0,a
      002C14 EB               [12] 1226 	mov	a,r3
      002C15 3F               [12] 1227 	addc	a, r7
      002C16 F9               [12] 1228 	mov	r1,a
      002C17 C3               [12] 1229 	clr	c
      002C18 74 FF            [12] 1230 	mov	a,#0xff
      002C1A 98               [12] 1231 	subb	a,r0
      002C1B 74 1F            [12] 1232 	mov	a,#0x1f
      002C1D 99               [12] 1233 	subb	a,r1
      002C1E 50 2A            [24] 1234 	jnc	00102$
      002C20                       1235 00101$:
                                   1236 ;	SPI.c:189: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      002C20 90 03 20         [24] 1237 	mov	dptr,#_buffer_init_PARM_2
      002C23 E0               [24] 1238 	movx	a,@dptr
      002C24 C0 E0            [24] 1239 	push	acc
      002C26 A3               [24] 1240 	inc	dptr
      002C27 E0               [24] 1241 	movx	a,@dptr
      002C28 C0 E0            [24] 1242 	push	acc
      002C2A 90 03 22         [24] 1243 	mov	dptr,#_buffer_init_start_address_10000_91
      002C2D E0               [24] 1244 	movx	a,@dptr
      002C2E C0 E0            [24] 1245 	push	acc
      002C30 A3               [24] 1246 	inc	dptr
      002C31 E0               [24] 1247 	movx	a,@dptr
      002C32 C0 E0            [24] 1248 	push	acc
      002C34 74 EB            [12] 1249 	mov	a,#___str_6
      002C36 C0 E0            [24] 1250 	push	acc
      002C38 74 41            [12] 1251 	mov	a,#(___str_6 >> 8)
      002C3A C0 E0            [24] 1252 	push	acc
      002C3C 74 80            [12] 1253 	mov	a,#0x80
      002C3E C0 E0            [24] 1254 	push	acc
      002C40 12 32 B9         [24] 1255 	lcall	_printf
      002C43 E5 81            [12] 1256 	mov	a,sp
      002C45 24 F9            [12] 1257 	add	a,#0xf9
      002C47 F5 81            [12] 1258 	mov	sp,a
                                   1259 ;	SPI.c:190: return;
      002C49 22               [24] 1260 	ret
      002C4A                       1261 00102$:
                                   1262 ;	SPI.c:194: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      002C4A 53 04 FE         [24] 1263 	anl	ar4,#0xfe
                                   1264 ;	SPI.c:195: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      002C4D EA               [12] 1265 	mov	a,r2
      002C4E 2E               [12] 1266 	add	a, r6
      002C4F FE               [12] 1267 	mov	r6,a
      002C50 EB               [12] 1268 	mov	a,r3
      002C51 3F               [12] 1269 	addc	a, r7
      002C52 FF               [12] 1270 	mov	r7,a
      002C53 1E               [12] 1271 	dec	r6
      002C54 BE FF 01         [24] 1272 	cjne	r6,#0xff,00114$
      002C57 1F               [12] 1273 	dec	r7
      002C58                       1274 00114$:
      002C58 53 06 FE         [24] 1275 	anl	ar6,#0xfe
                                   1276 ;	SPI.c:198: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      002C5B 8D 03            [24] 1277 	mov	ar3,r5
      002C5D 90 03 13         [24] 1278 	mov	dptr,#_spi_control_write_PARM_2
      002C60 74 08            [12] 1279 	mov	a,#0x08
      002C62 F0               [24] 1280 	movx	@dptr,a
      002C63 90 03 14         [24] 1281 	mov	dptr,#_spi_control_write_PARM_3
      002C66 EB               [12] 1282 	mov	a,r3
      002C67 F0               [24] 1283 	movx	@dptr,a
      002C68 75 82 00         [24] 1284 	mov	dpl, #0x00
      002C6B C0 07            [24] 1285 	push	ar7
      002C6D C0 06            [24] 1286 	push	ar6
      002C6F C0 05            [24] 1287 	push	ar5
      002C71 C0 04            [24] 1288 	push	ar4
      002C73 12 29 2A         [24] 1289 	lcall	_spi_control_write
      002C76 D0 04            [24] 1290 	pop	ar4
      002C78 D0 05            [24] 1291 	pop	ar5
      002C7A D0 06            [24] 1292 	pop	ar6
      002C7C D0 07            [24] 1293 	pop	ar7
                                   1294 ;	SPI.c:199: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      002C7E 8C 03            [24] 1295 	mov	ar3,r4
      002C80 90 03 13         [24] 1296 	mov	dptr,#_spi_control_write_PARM_2
      002C83 74 09            [12] 1297 	mov	a,#0x09
      002C85 F0               [24] 1298 	movx	@dptr,a
      002C86 90 03 14         [24] 1299 	mov	dptr,#_spi_control_write_PARM_3
      002C89 EB               [12] 1300 	mov	a,r3
      002C8A F0               [24] 1301 	movx	@dptr,a
      002C8B 75 82 00         [24] 1302 	mov	dpl, #0x00
      002C8E C0 07            [24] 1303 	push	ar7
      002C90 C0 06            [24] 1304 	push	ar6
      002C92 C0 05            [24] 1305 	push	ar5
      002C94 C0 04            [24] 1306 	push	ar4
      002C96 12 29 2A         [24] 1307 	lcall	_spi_control_write
      002C99 D0 04            [24] 1308 	pop	ar4
      002C9B D0 05            [24] 1309 	pop	ar5
      002C9D D0 06            [24] 1310 	pop	ar6
      002C9F D0 07            [24] 1311 	pop	ar7
                                   1312 ;	SPI.c:202: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      002CA1 8F 03            [24] 1313 	mov	ar3,r7
      002CA3 90 03 13         [24] 1314 	mov	dptr,#_spi_control_write_PARM_2
      002CA6 74 0A            [12] 1315 	mov	a,#0x0a
      002CA8 F0               [24] 1316 	movx	@dptr,a
      002CA9 90 03 14         [24] 1317 	mov	dptr,#_spi_control_write_PARM_3
      002CAC EB               [12] 1318 	mov	a,r3
      002CAD F0               [24] 1319 	movx	@dptr,a
      002CAE 75 82 00         [24] 1320 	mov	dpl, #0x00
      002CB1 C0 07            [24] 1321 	push	ar7
      002CB3 C0 06            [24] 1322 	push	ar6
      002CB5 C0 05            [24] 1323 	push	ar5
      002CB7 C0 04            [24] 1324 	push	ar4
      002CB9 12 29 2A         [24] 1325 	lcall	_spi_control_write
      002CBC D0 04            [24] 1326 	pop	ar4
      002CBE D0 05            [24] 1327 	pop	ar5
      002CC0 D0 06            [24] 1328 	pop	ar6
      002CC2 D0 07            [24] 1329 	pop	ar7
                                   1330 ;	SPI.c:203: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      002CC4 8E 03            [24] 1331 	mov	ar3,r6
      002CC6 90 03 13         [24] 1332 	mov	dptr,#_spi_control_write_PARM_2
      002CC9 74 0B            [12] 1333 	mov	a,#0x0b
      002CCB F0               [24] 1334 	movx	@dptr,a
      002CCC 90 03 14         [24] 1335 	mov	dptr,#_spi_control_write_PARM_3
      002CCF EB               [12] 1336 	mov	a,r3
      002CD0 F0               [24] 1337 	movx	@dptr,a
      002CD1 75 82 00         [24] 1338 	mov	dpl, #0x00
      002CD4 C0 07            [24] 1339 	push	ar7
      002CD6 C0 06            [24] 1340 	push	ar6
      002CD8 C0 05            [24] 1341 	push	ar5
      002CDA C0 04            [24] 1342 	push	ar4
      002CDC 12 29 2A         [24] 1343 	lcall	_spi_control_write
      002CDF D0 04            [24] 1344 	pop	ar4
      002CE1 D0 05            [24] 1345 	pop	ar5
      002CE3 D0 06            [24] 1346 	pop	ar6
      002CE5 D0 07            [24] 1347 	pop	ar7
                                   1348 ;	SPI.c:205: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      002CE7 C0 06            [24] 1349 	push	ar6
      002CE9 C0 07            [24] 1350 	push	ar7
      002CEB C0 04            [24] 1351 	push	ar4
      002CED C0 05            [24] 1352 	push	ar5
      002CEF 74 29            [12] 1353 	mov	a,#___str_7
      002CF1 C0 E0            [24] 1354 	push	acc
      002CF3 74 42            [12] 1355 	mov	a,#(___str_7 >> 8)
      002CF5 C0 E0            [24] 1356 	push	acc
      002CF7 74 80            [12] 1357 	mov	a,#0x80
      002CF9 C0 E0            [24] 1358 	push	acc
      002CFB 12 32 B9         [24] 1359 	lcall	_printf
      002CFE E5 81            [12] 1360 	mov	a,sp
      002D00 24 F9            [12] 1361 	add	a,#0xf9
      002D02 F5 81            [12] 1362 	mov	sp,a
                                   1363 ;	SPI.c:206: }
      002D04 22               [24] 1364 	ret
                                   1365 ;------------------------------------------------------------
                                   1366 ;Allocation info for local variables in function 'spi_buffer_read'
                                   1367 ;------------------------------------------------------------
                                   1368 ;start_address             Allocated with name '_spi_buffer_read_PARM_2'
                                   1369 ;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
                                   1370 ;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_95'
                                   1371 ;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_100'
                                   1372 ;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_100'
                                   1373 ;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_101'
                                   1374 ;i                         Allocated with name '_spi_buffer_read_i_20002_102'
                                   1375 ;------------------------------------------------------------
                                   1376 ;	SPI.c:209: void spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1377 ;	-----------------------------------------
                                   1378 ;	 function spi_buffer_read
                                   1379 ;	-----------------------------------------
      002D05                       1380 _spi_buffer_read:
      002D05 AF 83            [24] 1381 	mov	r7,dph
      002D07 E5 82            [12] 1382 	mov	a,dpl
      002D09 90 03 29         [24] 1383 	mov	dptr,#_spi_buffer_read_num_bytes_10000_95
      002D0C F0               [24] 1384 	movx	@dptr,a
      002D0D EF               [12] 1385 	mov	a,r7
      002D0E A3               [24] 1386 	inc	dptr
      002D0F F0               [24] 1387 	movx	@dptr,a
                                   1388 ;	SPI.c:211: if (num_bytes < 1) {
      002D10 90 03 29         [24] 1389 	mov	dptr,#_spi_buffer_read_num_bytes_10000_95
      002D13 E0               [24] 1390 	movx	a,@dptr
      002D14 FE               [12] 1391 	mov	r6,a
      002D15 A3               [24] 1392 	inc	dptr
      002D16 E0               [24] 1393 	movx	a,@dptr
      002D17 FF               [12] 1394 	mov	r7,a
      002D18 C3               [12] 1395 	clr	c
      002D19 EE               [12] 1396 	mov	a,r6
      002D1A 94 01            [12] 1397 	subb	a,#0x01
      002D1C EF               [12] 1398 	mov	a,r7
      002D1D 64 80            [12] 1399 	xrl	a,#0x80
      002D1F 94 80            [12] 1400 	subb	a,#0x80
      002D21 50 1A            [24] 1401 	jnc	00102$
                                   1402 ;	SPI.c:212: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      002D23 C0 06            [24] 1403 	push	ar6
      002D25 C0 07            [24] 1404 	push	ar7
      002D27 74 5A            [12] 1405 	mov	a,#___str_8
      002D29 C0 E0            [24] 1406 	push	acc
      002D2B 74 42            [12] 1407 	mov	a,#(___str_8 >> 8)
      002D2D C0 E0            [24] 1408 	push	acc
      002D2F 74 80            [12] 1409 	mov	a,#0x80
      002D31 C0 E0            [24] 1410 	push	acc
      002D33 12 32 B9         [24] 1411 	lcall	_printf
      002D36 E5 81            [12] 1412 	mov	a,sp
      002D38 24 FB            [12] 1413 	add	a,#0xfb
      002D3A F5 81            [12] 1414 	mov	sp,a
                                   1415 ;	SPI.c:213: return;
      002D3C 22               [24] 1416 	ret
      002D3D                       1417 00102$:
                                   1418 ;	SPI.c:215: if (start_address > 0x1FFF) {
      002D3D 90 03 24         [24] 1419 	mov	dptr,#_spi_buffer_read_PARM_2
      002D40 E0               [24] 1420 	movx	a,@dptr
      002D41 FC               [12] 1421 	mov	r4,a
      002D42 A3               [24] 1422 	inc	dptr
      002D43 E0               [24] 1423 	movx	a,@dptr
      002D44 FD               [12] 1424 	mov	r5,a
      002D45 8C 02            [24] 1425 	mov	ar2,r4
      002D47 8D 03            [24] 1426 	mov	ar3,r5
      002D49 C3               [12] 1427 	clr	c
      002D4A 74 FF            [12] 1428 	mov	a,#0xff
      002D4C 9A               [12] 1429 	subb	a,r2
      002D4D 74 1F            [12] 1430 	mov	a,#0x1f
      002D4F 9B               [12] 1431 	subb	a,r3
      002D50 50 1A            [24] 1432 	jnc	00104$
                                   1433 ;	SPI.c:216: printf("\n\rInvalid address: %04X\n\r", start_address);
      002D52 C0 04            [24] 1434 	push	ar4
      002D54 C0 05            [24] 1435 	push	ar5
      002D56 74 7A            [12] 1436 	mov	a,#___str_9
      002D58 C0 E0            [24] 1437 	push	acc
      002D5A 74 42            [12] 1438 	mov	a,#(___str_9 >> 8)
      002D5C C0 E0            [24] 1439 	push	acc
      002D5E 74 80            [12] 1440 	mov	a,#0x80
      002D60 C0 E0            [24] 1441 	push	acc
      002D62 12 32 B9         [24] 1442 	lcall	_printf
      002D65 E5 81            [12] 1443 	mov	a,sp
      002D67 24 FB            [12] 1444 	add	a,#0xfb
      002D69 F5 81            [12] 1445 	mov	sp,a
                                   1446 ;	SPI.c:217: return;
      002D6B 22               [24] 1447 	ret
      002D6C                       1448 00104$:
                                   1449 ;	SPI.c:220: if (num_bytes > 1) {
      002D6C C3               [12] 1450 	clr	c
      002D6D 74 01            [12] 1451 	mov	a,#0x01
      002D6F 9E               [12] 1452 	subb	a,r6
      002D70 74 80            [12] 1453 	mov	a,#(0x00 ^ 0x80)
      002D72 8F F0            [24] 1454 	mov	b,r7
      002D74 63 F0 80         [24] 1455 	xrl	b,#0x80
      002D77 95 F0            [12] 1456 	subb	a,b
      002D79 50 0B            [24] 1457 	jnc	00106$
                                   1458 ;	SPI.c:221: spi_set_autoinc();
      002D7B C0 05            [24] 1459 	push	ar5
      002D7D C0 04            [24] 1460 	push	ar4
      002D7F 12 28 FF         [24] 1461 	lcall	_spi_set_autoinc
      002D82 D0 04            [24] 1462 	pop	ar4
      002D84 D0 05            [24] 1463 	pop	ar5
      002D86                       1464 00106$:
                                   1465 ;	SPI.c:224: buffer_init(start_address, num_bytes);
      002D86 90 03 29         [24] 1466 	mov	dptr,#_spi_buffer_read_num_bytes_10000_95
      002D89 E0               [24] 1467 	movx	a,@dptr
      002D8A FE               [12] 1468 	mov	r6,a
      002D8B A3               [24] 1469 	inc	dptr
      002D8C E0               [24] 1470 	movx	a,@dptr
      002D8D FF               [12] 1471 	mov	r7,a
      002D8E 90 03 20         [24] 1472 	mov	dptr,#_buffer_init_PARM_2
      002D91 EE               [12] 1473 	mov	a,r6
      002D92 F0               [24] 1474 	movx	@dptr,a
      002D93 EF               [12] 1475 	mov	a,r7
      002D94 A3               [24] 1476 	inc	dptr
      002D95 F0               [24] 1477 	movx	@dptr,a
      002D96 8C 82            [24] 1478 	mov	dpl, r4
      002D98 8D 83            [24] 1479 	mov	dph, r5
      002D9A C0 07            [24] 1480 	push	ar7
      002D9C C0 06            [24] 1481 	push	ar6
      002D9E C0 05            [24] 1482 	push	ar5
      002DA0 C0 04            [24] 1483 	push	ar4
      002DA2 12 2B E9         [24] 1484 	lcall	_buffer_init
      002DA5 D0 04            [24] 1485 	pop	ar4
      002DA7 D0 05            [24] 1486 	pop	ar5
      002DA9 D0 06            [24] 1487 	pop	ar6
      002DAB D0 07            [24] 1488 	pop	ar7
                                   1489 ;	SPI.c:225: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      002DAD 8D 03            [24] 1490 	mov	ar3,r5
                                   1491 ;	SPI.c:226: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      002DAF 8C 02            [24] 1492 	mov	ar2,r4
                                   1493 ;	SPI.c:228: spi_control_write(0, 0x01, higher_byte); // High byte
      002DB1 90 03 13         [24] 1494 	mov	dptr,#_spi_control_write_PARM_2
      002DB4 74 01            [12] 1495 	mov	a,#0x01
      002DB6 F0               [24] 1496 	movx	@dptr,a
      002DB7 90 03 14         [24] 1497 	mov	dptr,#_spi_control_write_PARM_3
      002DBA EB               [12] 1498 	mov	a,r3
      002DBB F0               [24] 1499 	movx	@dptr,a
      002DBC 75 82 00         [24] 1500 	mov	dpl, #0x00
      002DBF C0 07            [24] 1501 	push	ar7
      002DC1 C0 06            [24] 1502 	push	ar6
      002DC3 C0 05            [24] 1503 	push	ar5
      002DC5 C0 04            [24] 1504 	push	ar4
      002DC7 C0 02            [24] 1505 	push	ar2
      002DC9 12 29 2A         [24] 1506 	lcall	_spi_control_write
      002DCC D0 02            [24] 1507 	pop	ar2
      002DCE D0 04            [24] 1508 	pop	ar4
      002DD0 D0 05            [24] 1509 	pop	ar5
      002DD2 D0 06            [24] 1510 	pop	ar6
      002DD4 D0 07            [24] 1511 	pop	ar7
                                   1512 ;	SPI.c:229: spi_control_write(0, 0x00, lower_byte); // Low byte
      002DD6 90 03 13         [24] 1513 	mov	dptr,#_spi_control_write_PARM_2
      002DD9 E4               [12] 1514 	clr	a
      002DDA F0               [24] 1515 	movx	@dptr,a
      002DDB 90 03 14         [24] 1516 	mov	dptr,#_spi_control_write_PARM_3
      002DDE EA               [12] 1517 	mov	a,r2
      002DDF F0               [24] 1518 	movx	@dptr,a
      002DE0 75 82 00         [24] 1519 	mov	dpl, #0x00
      002DE3 C0 07            [24] 1520 	push	ar7
      002DE5 C0 06            [24] 1521 	push	ar6
      002DE7 C0 05            [24] 1522 	push	ar5
      002DE9 C0 04            [24] 1523 	push	ar4
      002DEB 12 29 2A         [24] 1524 	lcall	_spi_control_write
                                   1525 ;	SPI.c:232: CS_LOW; // Pull CS Low
                                   1526 ;	assignBit
      002DEE C2 91            [12] 1527 	clr	_P1_1
                                   1528 ;	SPI.c:233: SPI_send(opcode); // Send opcode
      002DF0 75 82 3A         [24] 1529 	mov	dpl, #0x3a
      002DF3 12 29 95         [24] 1530 	lcall	_SPI_send
      002DF6 D0 04            [24] 1531 	pop	ar4
      002DF8 D0 05            [24] 1532 	pop	ar5
      002DFA D0 06            [24] 1533 	pop	ar6
      002DFC D0 07            [24] 1534 	pop	ar7
                                   1535 ;	SPI.c:236: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      002DFE C0 07            [24] 1536 	push	ar7
      002E00 C0 06            [24] 1537 	push	ar6
      002E02 C0 04            [24] 1538 	push	ar4
      002E04 C0 05            [24] 1539 	push	ar5
      002E06 C0 06            [24] 1540 	push	ar6
      002E08 C0 07            [24] 1541 	push	ar7
      002E0A 74 94            [12] 1542 	mov	a,#___str_10
      002E0C C0 E0            [24] 1543 	push	acc
      002E0E 74 42            [12] 1544 	mov	a,#(___str_10 >> 8)
      002E10 C0 E0            [24] 1545 	push	acc
      002E12 74 80            [12] 1546 	mov	a,#0x80
      002E14 C0 E0            [24] 1547 	push	acc
      002E16 12 32 B9         [24] 1548 	lcall	_printf
      002E19 E5 81            [12] 1549 	mov	a,sp
      002E1B 24 F9            [12] 1550 	add	a,#0xf9
      002E1D F5 81            [12] 1551 	mov	sp,a
      002E1F D0 06            [24] 1552 	pop	ar6
      002E21 D0 07            [24] 1553 	pop	ar7
                                   1554 ;	SPI.c:237: for (int i = 0; i < num_bytes; i++) {
      002E23 90 03 2B         [24] 1555 	mov	dptr,#_spi_buffer_read_i_20002_102
      002E26 E4               [12] 1556 	clr	a
      002E27 F0               [24] 1557 	movx	@dptr,a
      002E28 A3               [24] 1558 	inc	dptr
      002E29 F0               [24] 1559 	movx	@dptr,a
      002E2A 90 03 26         [24] 1560 	mov	dptr,#_spi_buffer_read_PARM_3
      002E2D E0               [24] 1561 	movx	a,@dptr
      002E2E FB               [12] 1562 	mov	r3,a
      002E2F A3               [24] 1563 	inc	dptr
      002E30 E0               [24] 1564 	movx	a,@dptr
      002E31 FC               [12] 1565 	mov	r4,a
      002E32 A3               [24] 1566 	inc	dptr
      002E33 E0               [24] 1567 	movx	a,@dptr
      002E34 FD               [12] 1568 	mov	r5,a
      002E35                       1569 00109$:
      002E35 90 03 2B         [24] 1570 	mov	dptr,#_spi_buffer_read_i_20002_102
      002E38 E0               [24] 1571 	movx	a,@dptr
      002E39 F9               [12] 1572 	mov	r1,a
      002E3A A3               [24] 1573 	inc	dptr
      002E3B E0               [24] 1574 	movx	a,@dptr
      002E3C FA               [12] 1575 	mov	r2,a
      002E3D C3               [12] 1576 	clr	c
      002E3E E9               [12] 1577 	mov	a,r1
      002E3F 9E               [12] 1578 	subb	a,r6
      002E40 EA               [12] 1579 	mov	a,r2
      002E41 64 80            [12] 1580 	xrl	a,#0x80
      002E43 8F F0            [24] 1581 	mov	b,r7
      002E45 63 F0 80         [24] 1582 	xrl	b,#0x80
      002E48 95 F0            [12] 1583 	subb	a,b
      002E4A 40 03            [24] 1584 	jc	00147$
      002E4C 02 2E D2         [24] 1585 	ljmp	00107$
      002E4F                       1586 00147$:
                                   1587 ;	SPI.c:238: *data_ptr = SPI_ReadByte(); // Read data
      002E4F C0 06            [24] 1588 	push	ar6
      002E51 C0 07            [24] 1589 	push	ar7
      002E53 C0 07            [24] 1590 	push	ar7
      002E55 C0 06            [24] 1591 	push	ar6
      002E57 C0 05            [24] 1592 	push	ar5
      002E59 C0 04            [24] 1593 	push	ar4
      002E5B C0 03            [24] 1594 	push	ar3
      002E5D C0 02            [24] 1595 	push	ar2
      002E5F C0 01            [24] 1596 	push	ar1
      002E61 12 28 ED         [24] 1597 	lcall	_SPI_ReadByte
      002E64 A8 82            [24] 1598 	mov	r0, dpl
      002E66 D0 01            [24] 1599 	pop	ar1
      002E68 D0 02            [24] 1600 	pop	ar2
      002E6A D0 03            [24] 1601 	pop	ar3
      002E6C D0 04            [24] 1602 	pop	ar4
      002E6E D0 05            [24] 1603 	pop	ar5
      002E70 D0 06            [24] 1604 	pop	ar6
      002E72 D0 07            [24] 1605 	pop	ar7
      002E74 8B 82            [24] 1606 	mov	dpl,r3
      002E76 8C 83            [24] 1607 	mov	dph,r4
      002E78 8D F0            [24] 1608 	mov	b,r5
      002E7A E8               [12] 1609 	mov	a,r0
      002E7B 12 31 47         [24] 1610 	lcall	__gptrput
      002E7E A3               [24] 1611 	inc	dptr
      002E7F AB 82            [24] 1612 	mov	r3,dpl
      002E81 AC 83            [24] 1613 	mov	r4,dph
                                   1614 ;	SPI.c:239: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      002E83 7F 00            [12] 1615 	mov	r7,#0x00
      002E85 09               [12] 1616 	inc	r1
      002E86 B9 00 01         [24] 1617 	cjne	r1,#0x00,00148$
      002E89 0A               [12] 1618 	inc	r2
      002E8A                       1619 00148$:
      002E8A C0 07            [24] 1620 	push	ar7
      002E8C C0 06            [24] 1621 	push	ar6
      002E8E C0 05            [24] 1622 	push	ar5
      002E90 C0 04            [24] 1623 	push	ar4
      002E92 C0 03            [24] 1624 	push	ar3
      002E94 C0 02            [24] 1625 	push	ar2
      002E96 C0 01            [24] 1626 	push	ar1
      002E98 C0 00            [24] 1627 	push	ar0
      002E9A C0 07            [24] 1628 	push	ar7
      002E9C C0 01            [24] 1629 	push	ar1
      002E9E C0 02            [24] 1630 	push	ar2
      002EA0 74 CF            [12] 1631 	mov	a,#___str_11
      002EA2 C0 E0            [24] 1632 	push	acc
      002EA4 74 42            [12] 1633 	mov	a,#(___str_11 >> 8)
      002EA6 C0 E0            [24] 1634 	push	acc
      002EA8 74 80            [12] 1635 	mov	a,#0x80
      002EAA C0 E0            [24] 1636 	push	acc
      002EAC 12 32 B9         [24] 1637 	lcall	_printf
      002EAF E5 81            [12] 1638 	mov	a,sp
      002EB1 24 F9            [12] 1639 	add	a,#0xf9
      002EB3 F5 81            [12] 1640 	mov	sp,a
      002EB5 D0 01            [24] 1641 	pop	ar1
      002EB7 D0 02            [24] 1642 	pop	ar2
      002EB9 D0 03            [24] 1643 	pop	ar3
      002EBB D0 04            [24] 1644 	pop	ar4
      002EBD D0 05            [24] 1645 	pop	ar5
      002EBF D0 06            [24] 1646 	pop	ar6
      002EC1 D0 07            [24] 1647 	pop	ar7
                                   1648 ;	SPI.c:240: data_ptr++;
                                   1649 ;	SPI.c:237: for (int i = 0; i < num_bytes; i++) {
      002EC3 90 03 2B         [24] 1650 	mov	dptr,#_spi_buffer_read_i_20002_102
      002EC6 E9               [12] 1651 	mov	a,r1
      002EC7 F0               [24] 1652 	movx	@dptr,a
      002EC8 EA               [12] 1653 	mov	a,r2
      002EC9 A3               [24] 1654 	inc	dptr
      002ECA F0               [24] 1655 	movx	@dptr,a
      002ECB D0 07            [24] 1656 	pop	ar7
      002ECD D0 06            [24] 1657 	pop	ar6
      002ECF 02 2E 35         [24] 1658 	ljmp	00109$
      002ED2                       1659 00107$:
                                   1660 ;	SPI.c:242: CS_HIGH; // Pull CS High
                                   1661 ;	assignBit
      002ED2 D2 91            [12] 1662 	setb	_P1_1
                                   1663 ;	SPI.c:243: }
      002ED4 22               [24] 1664 	ret
                                   1665 ;------------------------------------------------------------
                                   1666 ;Allocation info for local variables in function 'spi_buffer_write'
                                   1667 ;------------------------------------------------------------
                                   1668 ;start_address             Allocated with name '_spi_buffer_write_PARM_2'
                                   1669 ;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
                                   1670 ;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_104'
                                   1671 ;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_109'
                                   1672 ;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_109'
                                   1673 ;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_110'
                                   1674 ;i                         Allocated with name '_spi_buffer_write_i_20002_111'
                                   1675 ;------------------------------------------------------------
                                   1676 ;	SPI.c:246: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1677 ;	-----------------------------------------
                                   1678 ;	 function spi_buffer_write
                                   1679 ;	-----------------------------------------
      002ED5                       1680 _spi_buffer_write:
      002ED5 AF 83            [24] 1681 	mov	r7,dph
      002ED7 E5 82            [12] 1682 	mov	a,dpl
      002ED9 90 03 32         [24] 1683 	mov	dptr,#_spi_buffer_write_num_bytes_10000_104
      002EDC F0               [24] 1684 	movx	@dptr,a
      002EDD EF               [12] 1685 	mov	a,r7
      002EDE A3               [24] 1686 	inc	dptr
      002EDF F0               [24] 1687 	movx	@dptr,a
                                   1688 ;	SPI.c:248: if (num_bytes < 1)
      002EE0 90 03 32         [24] 1689 	mov	dptr,#_spi_buffer_write_num_bytes_10000_104
      002EE3 E0               [24] 1690 	movx	a,@dptr
      002EE4 FE               [12] 1691 	mov	r6,a
      002EE5 A3               [24] 1692 	inc	dptr
      002EE6 E0               [24] 1693 	movx	a,@dptr
      002EE7 FF               [12] 1694 	mov	r7,a
      002EE8 C3               [12] 1695 	clr	c
      002EE9 EE               [12] 1696 	mov	a,r6
      002EEA 94 01            [12] 1697 	subb	a,#0x01
      002EEC EF               [12] 1698 	mov	a,r7
      002EED 64 80            [12] 1699 	xrl	a,#0x80
      002EEF 94 80            [12] 1700 	subb	a,#0x80
      002EF1 50 1A            [24] 1701 	jnc	00102$
                                   1702 ;	SPI.c:250: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      002EF3 C0 06            [24] 1703 	push	ar6
      002EF5 C0 07            [24] 1704 	push	ar7
      002EF7 74 5A            [12] 1705 	mov	a,#___str_8
      002EF9 C0 E0            [24] 1706 	push	acc
      002EFB 74 42            [12] 1707 	mov	a,#(___str_8 >> 8)
      002EFD C0 E0            [24] 1708 	push	acc
      002EFF 74 80            [12] 1709 	mov	a,#0x80
      002F01 C0 E0            [24] 1710 	push	acc
      002F03 12 32 B9         [24] 1711 	lcall	_printf
      002F06 E5 81            [12] 1712 	mov	a,sp
      002F08 24 FB            [12] 1713 	add	a,#0xfb
      002F0A F5 81            [12] 1714 	mov	sp,a
                                   1715 ;	SPI.c:251: return;
      002F0C 22               [24] 1716 	ret
      002F0D                       1717 00102$:
                                   1718 ;	SPI.c:253: if (start_address > 0x1FFF) {
      002F0D 90 03 2D         [24] 1719 	mov	dptr,#_spi_buffer_write_PARM_2
      002F10 E0               [24] 1720 	movx	a,@dptr
      002F11 FC               [12] 1721 	mov	r4,a
      002F12 A3               [24] 1722 	inc	dptr
      002F13 E0               [24] 1723 	movx	a,@dptr
      002F14 FD               [12] 1724 	mov	r5,a
      002F15 8C 02            [24] 1725 	mov	ar2,r4
      002F17 8D 03            [24] 1726 	mov	ar3,r5
      002F19 C3               [12] 1727 	clr	c
      002F1A 74 FF            [12] 1728 	mov	a,#0xff
      002F1C 9A               [12] 1729 	subb	a,r2
      002F1D 74 1F            [12] 1730 	mov	a,#0x1f
      002F1F 9B               [12] 1731 	subb	a,r3
      002F20 50 1A            [24] 1732 	jnc	00104$
                                   1733 ;	SPI.c:254: printf("\n\rInvalid address: %04X\n\r", start_address);
      002F22 C0 04            [24] 1734 	push	ar4
      002F24 C0 05            [24] 1735 	push	ar5
      002F26 74 7A            [12] 1736 	mov	a,#___str_9
      002F28 C0 E0            [24] 1737 	push	acc
      002F2A 74 42            [12] 1738 	mov	a,#(___str_9 >> 8)
      002F2C C0 E0            [24] 1739 	push	acc
      002F2E 74 80            [12] 1740 	mov	a,#0x80
      002F30 C0 E0            [24] 1741 	push	acc
      002F32 12 32 B9         [24] 1742 	lcall	_printf
      002F35 E5 81            [12] 1743 	mov	a,sp
      002F37 24 FB            [12] 1744 	add	a,#0xfb
      002F39 F5 81            [12] 1745 	mov	sp,a
                                   1746 ;	SPI.c:255: return;
      002F3B 22               [24] 1747 	ret
      002F3C                       1748 00104$:
                                   1749 ;	SPI.c:258: buffer_init(0x0000, start_address - 1);
      002F3C 1A               [12] 1750 	dec	r2
      002F3D BA FF 01         [24] 1751 	cjne	r2,#0xff,00146$
      002F40 1B               [12] 1752 	dec	r3
      002F41                       1753 00146$:
      002F41 90 03 20         [24] 1754 	mov	dptr,#_buffer_init_PARM_2
      002F44 EA               [12] 1755 	mov	a,r2
      002F45 F0               [24] 1756 	movx	@dptr,a
      002F46 EB               [12] 1757 	mov	a,r3
      002F47 A3               [24] 1758 	inc	dptr
      002F48 F0               [24] 1759 	movx	@dptr,a
      002F49 90 00 00         [24] 1760 	mov	dptr,#0x0000
      002F4C C0 07            [24] 1761 	push	ar7
      002F4E C0 06            [24] 1762 	push	ar6
      002F50 C0 05            [24] 1763 	push	ar5
      002F52 C0 04            [24] 1764 	push	ar4
      002F54 12 2B E9         [24] 1765 	lcall	_buffer_init
      002F57 D0 04            [24] 1766 	pop	ar4
      002F59 D0 05            [24] 1767 	pop	ar5
      002F5B D0 06            [24] 1768 	pop	ar6
      002F5D D0 07            [24] 1769 	pop	ar7
                                   1770 ;	SPI.c:259: if (num_bytes > 1) {
      002F5F C3               [12] 1771 	clr	c
      002F60 74 01            [12] 1772 	mov	a,#0x01
      002F62 9E               [12] 1773 	subb	a,r6
      002F63 74 80            [12] 1774 	mov	a,#(0x00 ^ 0x80)
      002F65 8F F0            [24] 1775 	mov	b,r7
      002F67 63 F0 80         [24] 1776 	xrl	b,#0x80
      002F6A 95 F0            [12] 1777 	subb	a,b
      002F6C 50 0B            [24] 1778 	jnc	00106$
                                   1779 ;	SPI.c:260: spi_set_autoinc();
      002F6E C0 05            [24] 1780 	push	ar5
      002F70 C0 04            [24] 1781 	push	ar4
      002F72 12 28 FF         [24] 1782 	lcall	_spi_set_autoinc
      002F75 D0 04            [24] 1783 	pop	ar4
      002F77 D0 05            [24] 1784 	pop	ar5
      002F79                       1785 00106$:
                                   1786 ;	SPI.c:263: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      002F79 8D 07            [24] 1787 	mov	ar7,r5
                                   1788 ;	SPI.c:264: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      002F7B 8C 06            [24] 1789 	mov	ar6,r4
                                   1790 ;	SPI.c:266: spi_control_write(0, 0x03, higher_byte); // High byte
      002F7D 90 03 13         [24] 1791 	mov	dptr,#_spi_control_write_PARM_2
      002F80 74 03            [12] 1792 	mov	a,#0x03
      002F82 F0               [24] 1793 	movx	@dptr,a
      002F83 90 03 14         [24] 1794 	mov	dptr,#_spi_control_write_PARM_3
      002F86 EF               [12] 1795 	mov	a,r7
      002F87 F0               [24] 1796 	movx	@dptr,a
      002F88 75 82 00         [24] 1797 	mov	dpl, #0x00
      002F8B C0 06            [24] 1798 	push	ar6
      002F8D C0 05            [24] 1799 	push	ar5
      002F8F C0 04            [24] 1800 	push	ar4
      002F91 12 29 2A         [24] 1801 	lcall	_spi_control_write
      002F94 D0 04            [24] 1802 	pop	ar4
      002F96 D0 05            [24] 1803 	pop	ar5
      002F98 D0 06            [24] 1804 	pop	ar6
                                   1805 ;	SPI.c:267: spi_control_write(0, 0x02, lower_byte); // Low byte
      002F9A 90 03 13         [24] 1806 	mov	dptr,#_spi_control_write_PARM_2
      002F9D 74 02            [12] 1807 	mov	a,#0x02
      002F9F F0               [24] 1808 	movx	@dptr,a
      002FA0 90 03 14         [24] 1809 	mov	dptr,#_spi_control_write_PARM_3
      002FA3 EE               [12] 1810 	mov	a,r6
      002FA4 F0               [24] 1811 	movx	@dptr,a
      002FA5 75 82 00         [24] 1812 	mov	dpl, #0x00
      002FA8 C0 05            [24] 1813 	push	ar5
      002FAA C0 04            [24] 1814 	push	ar4
      002FAC 12 29 2A         [24] 1815 	lcall	_spi_control_write
                                   1816 ;	SPI.c:270: CS_LOW; // Pull CS Low
                                   1817 ;	assignBit
      002FAF C2 91            [12] 1818 	clr	_P1_1
                                   1819 ;	SPI.c:271: SPI_send(opcode); // Send opcode
      002FB1 75 82 7A         [24] 1820 	mov	dpl, #0x7a
      002FB4 12 29 95         [24] 1821 	lcall	_SPI_send
      002FB7 D0 04            [24] 1822 	pop	ar4
      002FB9 D0 05            [24] 1823 	pop	ar5
                                   1824 ;	SPI.c:274: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      002FBB 90 03 32         [24] 1825 	mov	dptr,#_spi_buffer_write_num_bytes_10000_104
      002FBE E0               [24] 1826 	movx	a,@dptr
      002FBF FE               [12] 1827 	mov	r6,a
      002FC0 A3               [24] 1828 	inc	dptr
      002FC1 E0               [24] 1829 	movx	a,@dptr
      002FC2 FF               [12] 1830 	mov	r7,a
      002FC3 C0 07            [24] 1831 	push	ar7
      002FC5 C0 06            [24] 1832 	push	ar6
      002FC7 C0 04            [24] 1833 	push	ar4
      002FC9 C0 05            [24] 1834 	push	ar5
      002FCB C0 06            [24] 1835 	push	ar6
      002FCD C0 07            [24] 1836 	push	ar7
      002FCF 74 E1            [12] 1837 	mov	a,#___str_12
      002FD1 C0 E0            [24] 1838 	push	acc
      002FD3 74 42            [12] 1839 	mov	a,#(___str_12 >> 8)
      002FD5 C0 E0            [24] 1840 	push	acc
      002FD7 74 80            [12] 1841 	mov	a,#0x80
      002FD9 C0 E0            [24] 1842 	push	acc
      002FDB 12 32 B9         [24] 1843 	lcall	_printf
      002FDE E5 81            [12] 1844 	mov	a,sp
      002FE0 24 F9            [12] 1845 	add	a,#0xf9
      002FE2 F5 81            [12] 1846 	mov	sp,a
      002FE4 D0 06            [24] 1847 	pop	ar6
      002FE6 D0 07            [24] 1848 	pop	ar7
                                   1849 ;	SPI.c:275: for (int i = 0; i < num_bytes; i++) {
      002FE8 90 03 34         [24] 1850 	mov	dptr,#_spi_buffer_write_i_20002_111
      002FEB E4               [12] 1851 	clr	a
      002FEC F0               [24] 1852 	movx	@dptr,a
      002FED A3               [24] 1853 	inc	dptr
      002FEE F0               [24] 1854 	movx	@dptr,a
      002FEF 90 03 2F         [24] 1855 	mov	dptr,#_spi_buffer_write_PARM_3
      002FF2 E0               [24] 1856 	movx	a,@dptr
      002FF3 FB               [12] 1857 	mov	r3,a
      002FF4 A3               [24] 1858 	inc	dptr
      002FF5 E0               [24] 1859 	movx	a,@dptr
      002FF6 FC               [12] 1860 	mov	r4,a
      002FF7 A3               [24] 1861 	inc	dptr
      002FF8 E0               [24] 1862 	movx	a,@dptr
      002FF9 FD               [12] 1863 	mov	r5,a
      002FFA                       1864 00109$:
      002FFA 90 03 34         [24] 1865 	mov	dptr,#_spi_buffer_write_i_20002_111
      002FFD E0               [24] 1866 	movx	a,@dptr
      002FFE F9               [12] 1867 	mov	r1,a
      002FFF A3               [24] 1868 	inc	dptr
      003000 E0               [24] 1869 	movx	a,@dptr
      003001 FA               [12] 1870 	mov	r2,a
      003002 C3               [12] 1871 	clr	c
      003003 E9               [12] 1872 	mov	a,r1
      003004 9E               [12] 1873 	subb	a,r6
      003005 EA               [12] 1874 	mov	a,r2
      003006 64 80            [12] 1875 	xrl	a,#0x80
      003008 8F F0            [24] 1876 	mov	b,r7
      00300A 63 F0 80         [24] 1877 	xrl	b,#0x80
      00300D 95 F0            [12] 1878 	subb	a,b
      00300F 40 03            [24] 1879 	jc	00148$
      003011 02 30 A1         [24] 1880 	ljmp	00107$
      003014                       1881 00148$:
                                   1882 ;	SPI.c:276: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003014 C0 06            [24] 1883 	push	ar6
      003016 C0 07            [24] 1884 	push	ar7
      003018 8B 82            [24] 1885 	mov	dpl,r3
      00301A 8C 83            [24] 1886 	mov	dph,r4
      00301C 8D F0            [24] 1887 	mov	b,r5
      00301E 12 3C FB         [24] 1888 	lcall	__gptrget
      003021 F8               [12] 1889 	mov	r0,a
      003022 7F 00            [12] 1890 	mov	r7,#0x00
      003024 09               [12] 1891 	inc	r1
      003025 B9 00 01         [24] 1892 	cjne	r1,#0x00,00149$
      003028 0A               [12] 1893 	inc	r2
      003029                       1894 00149$:
      003029 C0 07            [24] 1895 	push	ar7
      00302B C0 06            [24] 1896 	push	ar6
      00302D C0 05            [24] 1897 	push	ar5
      00302F C0 04            [24] 1898 	push	ar4
      003031 C0 03            [24] 1899 	push	ar3
      003033 C0 02            [24] 1900 	push	ar2
      003035 C0 01            [24] 1901 	push	ar1
      003037 C0 00            [24] 1902 	push	ar0
      003039 C0 07            [24] 1903 	push	ar7
      00303B C0 01            [24] 1904 	push	ar1
      00303D C0 02            [24] 1905 	push	ar2
      00303F 74 CF            [12] 1906 	mov	a,#___str_11
      003041 C0 E0            [24] 1907 	push	acc
      003043 74 42            [12] 1908 	mov	a,#(___str_11 >> 8)
      003045 C0 E0            [24] 1909 	push	acc
      003047 74 80            [12] 1910 	mov	a,#0x80
      003049 C0 E0            [24] 1911 	push	acc
      00304B 12 32 B9         [24] 1912 	lcall	_printf
      00304E E5 81            [12] 1913 	mov	a,sp
      003050 24 F9            [12] 1914 	add	a,#0xf9
      003052 F5 81            [12] 1915 	mov	sp,a
      003054 D0 01            [24] 1916 	pop	ar1
      003056 D0 02            [24] 1917 	pop	ar2
      003058 D0 03            [24] 1918 	pop	ar3
      00305A D0 04            [24] 1919 	pop	ar4
      00305C D0 05            [24] 1920 	pop	ar5
      00305E D0 06            [24] 1921 	pop	ar6
      003060 D0 07            [24] 1922 	pop	ar7
                                   1923 ;	SPI.c:277: SPI_send(*data_ptr); // Send data
      003062 8B 82            [24] 1924 	mov	dpl,r3
      003064 8C 83            [24] 1925 	mov	dph,r4
      003066 8D F0            [24] 1926 	mov	b,r5
      003068 12 3C FB         [24] 1927 	lcall	__gptrget
      00306B FF               [12] 1928 	mov	r7,a
      00306C A3               [24] 1929 	inc	dptr
      00306D AB 82            [24] 1930 	mov	r3,dpl
      00306F AC 83            [24] 1931 	mov	r4,dph
      003071 8F 82            [24] 1932 	mov	dpl, r7
      003073 C0 07            [24] 1933 	push	ar7
      003075 C0 06            [24] 1934 	push	ar6
      003077 C0 05            [24] 1935 	push	ar5
      003079 C0 04            [24] 1936 	push	ar4
      00307B C0 03            [24] 1937 	push	ar3
      00307D C0 02            [24] 1938 	push	ar2
      00307F C0 01            [24] 1939 	push	ar1
      003081 12 29 95         [24] 1940 	lcall	_SPI_send
      003084 D0 01            [24] 1941 	pop	ar1
      003086 D0 02            [24] 1942 	pop	ar2
      003088 D0 03            [24] 1943 	pop	ar3
      00308A D0 04            [24] 1944 	pop	ar4
      00308C D0 05            [24] 1945 	pop	ar5
      00308E D0 06            [24] 1946 	pop	ar6
      003090 D0 07            [24] 1947 	pop	ar7
                                   1948 ;	SPI.c:278: data_ptr++;
                                   1949 ;	SPI.c:275: for (int i = 0; i < num_bytes; i++) {
      003092 90 03 34         [24] 1950 	mov	dptr,#_spi_buffer_write_i_20002_111
      003095 E9               [12] 1951 	mov	a,r1
      003096 F0               [24] 1952 	movx	@dptr,a
      003097 EA               [12] 1953 	mov	a,r2
      003098 A3               [24] 1954 	inc	dptr
      003099 F0               [24] 1955 	movx	@dptr,a
      00309A D0 07            [24] 1956 	pop	ar7
      00309C D0 06            [24] 1957 	pop	ar6
      00309E 02 2F FA         [24] 1958 	ljmp	00109$
      0030A1                       1959 00107$:
                                   1960 ;	SPI.c:280: CS_HIGH; // Pull CS High
                                   1961 ;	assignBit
      0030A1 D2 91            [12] 1962 	setb	_P1_1
                                   1963 ;	SPI.c:281: }
      0030A3 22               [24] 1964 	ret
                                   1965 	.area CSEG    (CODE)
                                   1966 	.area CONST   (CODE)
                                   1967 	.area CONST   (CODE)
      0040F4                       1968 ___str_0:
      0040F4 57 72 69 74 65 3A 20  1969 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      004116 0A                    1970 	.db 0x0a
      004117 0D                    1971 	.db 0x0d
      004118 00                    1972 	.db 0x00
                                   1973 	.area CSEG    (CODE)
                                   1974 	.area CONST   (CODE)
      004119                       1975 ___str_1:
      004119 0A                    1976 	.db 0x0a
      00411A 0D                    1977 	.db 0x0d
      00411B 49 6E 76 61 6C 69 64  1978 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      004150 0A                    1979 	.db 0x0a
      004151 0D                    1980 	.db 0x0d
      004152 00                    1981 	.db 0x00
                                   1982 	.area CSEG    (CODE)
                                   1983 	.area CONST   (CODE)
      004153                       1984 ___str_2:
      004153 52 65 61 64 3A 20 41  1985 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004174 0A                    1986 	.db 0x0a
      004175 0D                    1987 	.db 0x0d
      004176 00                    1988 	.db 0x00
                                   1989 	.area CSEG    (CODE)
                                   1990 	.area CONST   (CODE)
      004177                       1991 ___str_3:
      004177 50 48 59 20 57 72 69  1992 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      00419D 0A                    1993 	.db 0x0a
      00419E 0D                    1994 	.db 0x0d
      00419F 00                    1995 	.db 0x00
                                   1996 	.area CSEG    (CODE)
                                   1997 	.area CONST   (CODE)
      0041A0                       1998 ___str_4:
      0041A0 52 65 61 64 3A 20 41  1999 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      0041C1 0A                    2000 	.db 0x0a
      0041C2 00                    2001 	.db 0x00
                                   2002 	.area CSEG    (CODE)
                                   2003 	.area CONST   (CODE)
      0041C3                       2004 ___str_5:
      0041C3 50 48 59 20 52 65 61  2005 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      0041E8 0A                    2006 	.db 0x0a
      0041E9 0D                    2007 	.db 0x0d
      0041EA 00                    2008 	.db 0x00
                                   2009 	.area CSEG    (CODE)
                                   2010 	.area CONST   (CODE)
      0041EB                       2011 ___str_6:
      0041EB 0A                    2012 	.db 0x0a
      0041EC 0D                    2013 	.db 0x0d
      0041ED 49 6E 76 61 6C 69 64  2014 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      004226 0A                    2015 	.db 0x0a
      004227 0D                    2016 	.db 0x0d
      004228 00                    2017 	.db 0x00
                                   2018 	.area CSEG    (CODE)
                                   2019 	.area CONST   (CODE)
      004229                       2020 ___str_7:
      004229 0A                    2021 	.db 0x0a
      00422A 0D                    2022 	.db 0x0d
      00422B 42 75 66 66 65 72 20  2023 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      004257 0A                    2024 	.db 0x0a
      004258 0D                    2025 	.db 0x0d
      004259 00                    2026 	.db 0x00
                                   2027 	.area CSEG    (CODE)
                                   2028 	.area CONST   (CODE)
      00425A                       2029 ___str_8:
      00425A 0A                    2030 	.db 0x0a
      00425B 0D                    2031 	.db 0x0d
      00425C 49 6E 76 61 6C 69 64  2032 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      004277 0A                    2033 	.db 0x0a
      004278 0D                    2034 	.db 0x0d
      004279 00                    2035 	.db 0x00
                                   2036 	.area CSEG    (CODE)
                                   2037 	.area CONST   (CODE)
      00427A                       2038 ___str_9:
      00427A 0A                    2039 	.db 0x0a
      00427B 0D                    2040 	.db 0x0d
      00427C 49 6E 76 61 6C 69 64  2041 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      004291 0A                    2042 	.db 0x0a
      004292 0D                    2043 	.db 0x0d
      004293 00                    2044 	.db 0x00
                                   2045 	.area CSEG    (CODE)
                                   2046 	.area CONST   (CODE)
      004294                       2047 ___str_10:
      004294 52 65 61 64 69 6E 67  2048 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      0042CC 0A                    2049 	.db 0x0a
      0042CD 0D                    2050 	.db 0x0d
      0042CE 00                    2051 	.db 0x00
                                   2052 	.area CSEG    (CODE)
                                   2053 	.area CONST   (CODE)
      0042CF                       2054 ___str_11:
      0042CF 42 79 74 65 20 25 64  2055 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      0042DE 0A                    2056 	.db 0x0a
      0042DF 0D                    2057 	.db 0x0d
      0042E0 00                    2058 	.db 0x00
                                   2059 	.area CSEG    (CODE)
                                   2060 	.area CONST   (CODE)
      0042E1                       2061 ___str_12:
      0042E1 57 72 69 74 69 6E 67  2062 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      004317 0A                    2063 	.db 0x0a
      004318 0D                    2064 	.db 0x0d
      004319 00                    2065 	.db 0x00
                                   2066 	.area CSEG    (CODE)
                                   2067 	.area XINIT   (CODE)
                                   2068 	.area CABS    (ABS,CODE)

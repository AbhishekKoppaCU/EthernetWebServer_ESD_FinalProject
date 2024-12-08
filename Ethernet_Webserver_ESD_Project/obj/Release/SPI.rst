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
      00039C                        538 _spi_buffer_read_i_20002_159:
      00039C                        539 	.ds 2
      00039E                        540 _spi_buffer_write_PARM_2:
      00039E                        541 	.ds 2
      0003A0                        542 _spi_buffer_write_PARM_3:
      0003A0                        543 	.ds 3
      0003A3                        544 _spi_buffer_write_num_bytes_10000_161:
      0003A3                        545 	.ds 2
      0003A5                        546 _spi_buffer_write_i_20002_168:
      0003A5                        547 	.ds 2
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
                                    585 ;received_data             Allocated with name '_SPI_ReadByte_received_data_10000_113'
                                    586 ;------------------------------------------------------------
                                    587 ;	SPI.c:4: uint8_t SPI_ReadByte(void)
                                    588 ;	-----------------------------------------
                                    589 ;	 function SPI_ReadByte
                                    590 ;	-----------------------------------------
      0038DC                        591 _SPI_ReadByte:
                           000007   592 	ar7 = 0x07
                           000006   593 	ar6 = 0x06
                           000005   594 	ar5 = 0x05
                           000004   595 	ar4 = 0x04
                           000003   596 	ar3 = 0x03
                           000002   597 	ar2 = 0x02
                           000001   598 	ar1 = 0x01
                           000000   599 	ar0 = 0x00
                                    600 ;	SPI.c:9: SPDAT = 0xFF;
      0038DC 75 C5 FF         [24]  601 	mov	_SPDAT,#0xff
                                    602 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      0038DF                        603 00101$:
      0038DF E5 C4            [12]  604 	mov	a,_SPSTA
      0038E1 30 E7 FB         [24]  605 	jnb	acc.7,00101$
                                    606 ;	SPI.c:17: received_data = SPDAT;
      0038E4 90 03 81         [24]  607 	mov	dptr,#_SPI_ReadByte_received_data_10000_113
      0038E7 E5 C5            [12]  608 	mov	a,_SPDAT
      0038E9 F0               [24]  609 	movx	@dptr,a
                                    610 ;	SPI.c:19: return received_data;
      0038EA E0               [24]  611 	movx	a,@dptr
                                    612 ;	SPI.c:20: }
      0038EB F5 82            [12]  613 	mov	dpl,a
      0038ED 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    617 ;------------------------------------------------------------
                                    618 ;	SPI.c:22: void spi_set_autoinc(void)
                                    619 ;	-----------------------------------------
                                    620 ;	 function spi_set_autoinc
                                    621 ;	-----------------------------------------
      0038EE                        622 _spi_set_autoinc:
                                    623 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    624 ;	assignBit
      0038EE C2 91            [12]  625 	clr	_P1_1
                                    626 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      0038F0 75 82 5E         [24]  627 	mov	dpl, #0x5e
      0038F3 12 39 EF         [24]  628 	lcall	_SPI_send
                                    629 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      0038F6 75 82 80         [24]  630 	mov	dpl, #0x80
      0038F9 12 39 EF         [24]  631 	lcall	_SPI_send
                                    632 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    633 ;	assignBit
      0038FC D2 91            [12]  634 	setb	_P1_1
                                    635 ;	SPI.c:30: }
      0038FE 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function 'select_reg_bank'
                                    639 ;------------------------------------------------------------
                                    640 ;bank                      Allocated with name '_select_reg_bank_bank_10000_117'
                                    641 ;data                      Allocated with name '_select_reg_bank_data_10001_119'
                                    642 ;i                         Allocated with name '_select_reg_bank_i_20001_121'
                                    643 ;------------------------------------------------------------
                                    644 ;	SPI.c:33: void select_reg_bank(uint8_t bank)
                                    645 ;	-----------------------------------------
                                    646 ;	 function select_reg_bank
                                    647 ;	-----------------------------------------
      0038FF                        648 _select_reg_bank:
      0038FF E5 82            [12]  649 	mov	a,dpl
      003901 90 03 82         [24]  650 	mov	dptr,#_select_reg_bank_bank_10000_117
      003904 F0               [24]  651 	movx	@dptr,a
                                    652 ;	SPI.c:35: CS_LOW;
                                    653 ;	assignBit
      003905 C2 91            [12]  654 	clr	_P1_1
                                    655 ;	SPI.c:36: SPI_send(0X1F); // Send the address
      003907 75 82 1F         [24]  656 	mov	dpl, #0x1f
      00390A 12 39 EF         [24]  657 	lcall	_SPI_send
                                    658 ;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
      00390D 12 38 DC         [24]  659 	lcall	_SPI_ReadByte
      003910 AF 82            [24]  660 	mov	r7, dpl
                                    661 ;	SPI.c:38: CS_HIGH;
                                    662 ;	assignBit
      003912 D2 91            [12]  663 	setb	_P1_1
                                    664 ;	SPI.c:41: data &= ~0x03; // Clear the last two bits
      003914 53 07 FC         [24]  665 	anl	ar7,#0xfc
                                    666 ;	SPI.c:42: switch (bank)
      003917 90 03 82         [24]  667 	mov	dptr,#_select_reg_bank_bank_10000_117
      00391A E0               [24]  668 	movx	a,@dptr
      00391B FE               [12]  669 	mov  r6,a
      00391C 24 FC            [12]  670 	add	a,#0xff - 0x03
      00391E 40 30            [24]  671 	jc	00105$
      003920 EE               [12]  672 	mov	a,r6
      003921 2E               [12]  673 	add	a,r6
                                    674 ;	SPI.c:44: case 0:
      003922 90 39 26         [24]  675 	mov	dptr,#00133$
      003925 73               [24]  676 	jmp	@a+dptr
      003926                        677 00133$:
      003926 80 06            [24]  678 	sjmp	00101$
      003928 80 0B            [24]  679 	sjmp	00102$
      00392A 80 12            [24]  680 	sjmp	00103$
      00392C 80 19            [24]  681 	sjmp	00104$
      00392E                        682 00101$:
                                    683 ;	SPI.c:45: data |= 0x00; // Last two bits: 00
      00392E 90 03 83         [24]  684 	mov	dptr,#_select_reg_bank_data_10001_119
      003931 EF               [12]  685 	mov	a,r7
      003932 F0               [24]  686 	movx	@dptr,a
                                    687 ;	SPI.c:46: break;
                                    688 ;	SPI.c:47: case 1:
      003933 80 31            [24]  689 	sjmp	00115$
      003935                        690 00102$:
                                    691 ;	SPI.c:48: data |= 0x01; // Last two bits: 01
      003935 90 03 83         [24]  692 	mov	dptr,#_select_reg_bank_data_10001_119
      003938 74 01            [12]  693 	mov	a,#0x01
      00393A 4F               [12]  694 	orl	a,r7
      00393B F0               [24]  695 	movx	@dptr,a
                                    696 ;	SPI.c:49: break;
                                    697 ;	SPI.c:50: case 2:
      00393C 80 28            [24]  698 	sjmp	00115$
      00393E                        699 00103$:
                                    700 ;	SPI.c:51: data |= 0x02; // Last two bits: 10
      00393E 90 03 83         [24]  701 	mov	dptr,#_select_reg_bank_data_10001_119
      003941 74 02            [12]  702 	mov	a,#0x02
      003943 4F               [12]  703 	orl	a,r7
      003944 F0               [24]  704 	movx	@dptr,a
                                    705 ;	SPI.c:52: break;
                                    706 ;	SPI.c:53: case 3:
      003945 80 1F            [24]  707 	sjmp	00115$
      003947                        708 00104$:
                                    709 ;	SPI.c:54: data |= 0x03; // Last two bits: 11
      003947 90 03 83         [24]  710 	mov	dptr,#_select_reg_bank_data_10001_119
      00394A 74 03            [12]  711 	mov	a,#0x03
      00394C 4F               [12]  712 	orl	a,r7
      00394D F0               [24]  713 	movx	@dptr,a
                                    714 ;	SPI.c:55: break;
                                    715 ;	SPI.c:56: default:
      00394E 80 16            [24]  716 	sjmp	00115$
      003950                        717 00105$:
                                    718 ;	SPI.c:57: printf("wrong bank");
      003950 74 23            [12]  719 	mov	a,#___str_0
      003952 C0 E0            [24]  720 	push	acc
      003954 74 63            [12]  721 	mov	a,#(___str_0 >> 8)
      003956 C0 E0            [24]  722 	push	acc
      003958 74 80            [12]  723 	mov	a,#0x80
      00395A C0 E0            [24]  724 	push	acc
      00395C 12 51 98         [24]  725 	lcall	_printf
      00395F 15 81            [12]  726 	dec	sp
      003961 15 81            [12]  727 	dec	sp
      003963 15 81            [12]  728 	dec	sp
                                    729 ;	SPI.c:58: return;
                                    730 ;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
      003965 22               [24]  731 	ret
      003966                        732 00115$:
      003966 7F 00            [12]  733 	mov	r7,#0x00
      003968                        734 00109$:
      003968 BF 10 00         [24]  735 	cjne	r7,#0x10,00134$
      00396B                        736 00134$:
      00396B 50 03            [24]  737 	jnc	00107$
      00396D 0F               [12]  738 	inc	r7
      00396E 80 F8            [24]  739 	sjmp	00109$
      003970                        740 00107$:
                                    741 ;	SPI.c:63: CS_LOW;
                                    742 ;	assignBit
      003970 C2 91            [12]  743 	clr	_P1_1
                                    744 ;	SPI.c:64: SPI_send(0x5F);
      003972 75 82 5F         [24]  745 	mov	dpl, #0x5f
      003975 12 39 EF         [24]  746 	lcall	_SPI_send
                                    747 ;	SPI.c:65: SPI_send(data); // Send the modified data
      003978 90 03 83         [24]  748 	mov	dptr,#_select_reg_bank_data_10001_119
      00397B E0               [24]  749 	movx	a,@dptr
      00397C F5 82            [12]  750 	mov	dpl,a
      00397E 12 39 EF         [24]  751 	lcall	_SPI_send
                                    752 ;	SPI.c:66: CS_HIGH;
                                    753 ;	assignBit
      003981 D2 91            [12]  754 	setb	_P1_1
                                    755 ;	SPI.c:68: }
      003983 22               [24]  756 	ret
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'spi_control_write'
                                    759 ;------------------------------------------------------------
                                    760 ;addr                      Allocated with name '_spi_control_write_PARM_2'
                                    761 ;data                      Allocated with name '_spi_control_write_PARM_3'
                                    762 ;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_122'
                                    763 ;opcode                    Allocated with name '_spi_control_write_opcode_10000_123'
                                    764 ;------------------------------------------------------------
                                    765 ;	SPI.c:69: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
                                    766 ;	-----------------------------------------
                                    767 ;	 function spi_control_write
                                    768 ;	-----------------------------------------
      003984                        769 _spi_control_write:
      003984 E5 82            [12]  770 	mov	a,dpl
      003986 90 03 86         [24]  771 	mov	dptr,#_spi_control_write_reg_bank_10000_122
      003989 F0               [24]  772 	movx	@dptr,a
                                    773 ;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
      00398A 90 03 84         [24]  774 	mov	dptr,#_spi_control_write_PARM_2
      00398D E0               [24]  775 	movx	a,@dptr
      00398E 24 40            [12]  776 	add	a, #0x40
      003990 F0               [24]  777 	movx	@dptr,a
                                    778 ;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
      003991 90 03 86         [24]  779 	mov	dptr,#_spi_control_write_reg_bank_10000_122
      003994 E0               [24]  780 	movx	a,@dptr
      003995 F5 82            [12]  781 	mov	dpl,a
      003997 12 38 FF         [24]  782 	lcall	_select_reg_bank
                                    783 ;	SPI.c:77: CS_LOW;
                                    784 ;	assignBit
      00399A C2 91            [12]  785 	clr	_P1_1
                                    786 ;	SPI.c:80: SPI_send(addr);
      00399C 90 03 84         [24]  787 	mov	dptr,#_spi_control_write_PARM_2
      00399F E0               [24]  788 	movx	a,@dptr
      0039A0 FF               [12]  789 	mov	r7,a
      0039A1 F5 82            [12]  790 	mov	dpl,a
      0039A3 C0 07            [24]  791 	push	ar7
      0039A5 12 39 EF         [24]  792 	lcall	_SPI_send
      0039A8 D0 07            [24]  793 	pop	ar7
                                    794 ;	SPI.c:83: SPI_send(data);
      0039AA 90 03 85         [24]  795 	mov	dptr,#_spi_control_write_PARM_3
      0039AD E0               [24]  796 	movx	a,@dptr
      0039AE FE               [12]  797 	mov	r6,a
      0039AF F5 82            [12]  798 	mov	dpl,a
      0039B1 C0 07            [24]  799 	push	ar7
      0039B3 C0 06            [24]  800 	push	ar6
      0039B5 12 39 EF         [24]  801 	lcall	_SPI_send
      0039B8 D0 06            [24]  802 	pop	ar6
      0039BA D0 07            [24]  803 	pop	ar7
                                    804 ;	SPI.c:86: CS_HIGH;
                                    805 ;	assignBit
      0039BC D2 91            [12]  806 	setb	_P1_1
                                    807 ;	SPI.c:89: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      0039BE 7D 00            [12]  808 	mov	r5,#0x00
      0039C0 7C 00            [12]  809 	mov	r4,#0x00
      0039C2 C0 06            [24]  810 	push	ar6
      0039C4 C0 05            [24]  811 	push	ar5
      0039C6 C0 07            [24]  812 	push	ar7
      0039C8 C0 04            [24]  813 	push	ar4
      0039CA 74 2E            [12]  814 	mov	a,#___str_1
      0039CC C0 E0            [24]  815 	push	acc
      0039CE 74 63            [12]  816 	mov	a,#(___str_1 >> 8)
      0039D0 C0 E0            [24]  817 	push	acc
      0039D2 74 80            [12]  818 	mov	a,#0x80
      0039D4 C0 E0            [24]  819 	push	acc
      0039D6 12 51 98         [24]  820 	lcall	_printf
      0039D9 E5 81            [12]  821 	mov	a,sp
      0039DB 24 F9            [12]  822 	add	a,#0xf9
      0039DD F5 81            [12]  823 	mov	sp,a
                                    824 ;	SPI.c:90: }
      0039DF 22               [24]  825 	ret
                                    826 ;------------------------------------------------------------
                                    827 ;Allocation info for local variables in function 'configure_SPI'
                                    828 ;------------------------------------------------------------
                                    829 ;	SPI.c:93: void configure_SPI(void)
                                    830 ;	-----------------------------------------
                                    831 ;	 function configure_SPI
                                    832 ;	-----------------------------------------
      0039E0                        833 _configure_SPI:
                                    834 ;	SPI.c:95: CS_PIN = 1;
                                    835 ;	assignBit
      0039E0 D2 91            [12]  836 	setb	_P1_1
                                    837 ;	SPI.c:96: SPCON = 0x00;
      0039E2 75 C3 00         [24]  838 	mov	_SPCON,#0x00
                                    839 ;	SPI.c:97: SPCON |= SS_DISABLE;
      0039E5 43 C3 20         [24]  840 	orl	_SPCON,#0x20
                                    841 ;	SPI.c:98: SPCON |= MASTER_MODE;
      0039E8 43 C3 10         [24]  842 	orl	_SPCON,#0x10
                                    843 ;	SPI.c:99: SPCON |= SPI_ENABLE;
      0039EB 43 C3 40         [24]  844 	orl	_SPCON,#0x40
                                    845 ;	SPI.c:100: }
      0039EE 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'SPI_send'
                                    849 ;------------------------------------------------------------
                                    850 ;data                      Allocated with name '_SPI_send_data_10000_126'
                                    851 ;------------------------------------------------------------
                                    852 ;	SPI.c:103: void SPI_send(uint8_t data)
                                    853 ;	-----------------------------------------
                                    854 ;	 function SPI_send
                                    855 ;	-----------------------------------------
      0039EF                        856 _SPI_send:
      0039EF E5 82            [12]  857 	mov	a,dpl
      0039F1 90 03 87         [24]  858 	mov	dptr,#_SPI_send_data_10000_126
      0039F4 F0               [24]  859 	movx	@dptr,a
                                    860 ;	SPI.c:106: SPDAT = data;           // Config + MSB of data
      0039F5 E0               [24]  861 	movx	a,@dptr
      0039F6 F5 C5            [12]  862 	mov	_SPDAT,a
                                    863 ;	SPI.c:108: while (!(SPSTA & 0x80))
      0039F8                        864 00101$:
      0039F8 E5 C4            [12]  865 	mov	a,_SPSTA
      0039FA 30 E7 FB         [24]  866 	jnb	acc.7,00101$
                                    867 ;	SPI.c:113: }
      0039FD 22               [24]  868 	ret
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'enc_reset'
                                    871 ;------------------------------------------------------------
                                    872 ;	SPI.c:115: void enc_reset(void)
                                    873 ;	-----------------------------------------
                                    874 ;	 function enc_reset
                                    875 ;	-----------------------------------------
      0039FE                        876 _enc_reset:
                                    877 ;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    878 ;	assignBit
      0039FE C2 91            [12]  879 	clr	_P1_1
                                    880 ;	SPI.c:118: SPI_send(0xFF);            // Send reset command
      003A00 75 82 FF         [24]  881 	mov	dpl, #0xff
      003A03 12 39 EF         [24]  882 	lcall	_SPI_send
                                    883 ;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    884 ;	assignBit
      003A06 D2 91            [12]  885 	setb	_P1_1
                                    886 ;	SPI.c:120: }
      003A08 22               [24]  887 	ret
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'eth_spi_read'
                                    890 ;------------------------------------------------------------
                                    891 ;bank                      Allocated with name '_eth_spi_read_PARM_2'
                                    892 ;addr                      Allocated with name '_eth_spi_read_addr_10000_131'
                                    893 ;data                      Allocated with name '_eth_spi_read_data_10001_134'
                                    894 ;------------------------------------------------------------
                                    895 ;	SPI.c:122: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
                                    896 ;	-----------------------------------------
                                    897 ;	 function eth_spi_read
                                    898 ;	-----------------------------------------
      003A09                        899 _eth_spi_read:
      003A09 E5 82            [12]  900 	mov	a,dpl
      003A0B 90 03 89         [24]  901 	mov	dptr,#_eth_spi_read_addr_10000_131
      003A0E F0               [24]  902 	movx	@dptr,a
                                    903 ;	SPI.c:124: if (addr > 0x1F) {
      003A0F E0               [24]  904 	movx	a,@dptr
      003A10 FF               [12]  905 	mov  r7,a
      003A11 24 E0            [12]  906 	add	a,#0xff - 0x1f
      003A13 50 19            [24]  907 	jnc	00102$
                                    908 ;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003A15 74 53            [12]  909 	mov	a,#___str_2
      003A17 C0 E0            [24]  910 	push	acc
      003A19 74 63            [12]  911 	mov	a,#(___str_2 >> 8)
      003A1B C0 E0            [24]  912 	push	acc
      003A1D 74 80            [12]  913 	mov	a,#0x80
      003A1F C0 E0            [24]  914 	push	acc
      003A21 12 51 98         [24]  915 	lcall	_printf
      003A24 15 81            [12]  916 	dec	sp
      003A26 15 81            [12]  917 	dec	sp
      003A28 15 81            [12]  918 	dec	sp
                                    919 ;	SPI.c:126: return 0;
      003A2A 75 82 00         [24]  920 	mov	dpl, #0x00
      003A2D 22               [24]  921 	ret
      003A2E                        922 00102$:
                                    923 ;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
      003A2E 90 03 88         [24]  924 	mov	dptr,#_eth_spi_read_PARM_2
      003A31 E0               [24]  925 	movx	a,@dptr
      003A32 F5 82            [12]  926 	mov	dpl,a
      003A34 C0 07            [24]  927 	push	ar7
      003A36 12 38 FF         [24]  928 	lcall	_select_reg_bank
      003A39 D0 07            [24]  929 	pop	ar7
                                    930 ;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
                                    931 ;	assignBit
      003A3B C2 91            [12]  932 	clr	_P1_1
                                    933 ;	SPI.c:132: SPI_send(addr);            // Send the address
      003A3D 8F 82            [24]  934 	mov	dpl, r7
      003A3F C0 07            [24]  935 	push	ar7
      003A41 12 39 EF         [24]  936 	lcall	_SPI_send
                                    937 ;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
      003A44 12 38 DC         [24]  938 	lcall	_SPI_ReadByte
      003A47 AE 82            [24]  939 	mov	r6, dpl
      003A49 D0 07            [24]  940 	pop	ar7
                                    941 ;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
                                    942 ;	assignBit
      003A4B D2 91            [12]  943 	setb	_P1_1
                                    944 ;	SPI.c:137: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      003A4D 8E 04            [24]  945 	mov	ar4,r6
      003A4F 7D 00            [12]  946 	mov	r5,#0x00
      003A51 7B 00            [12]  947 	mov	r3,#0x00
      003A53 C0 06            [24]  948 	push	ar6
      003A55 C0 04            [24]  949 	push	ar4
      003A57 C0 05            [24]  950 	push	ar5
      003A59 C0 07            [24]  951 	push	ar7
      003A5B C0 03            [24]  952 	push	ar3
      003A5D 74 8D            [12]  953 	mov	a,#___str_3
      003A5F C0 E0            [24]  954 	push	acc
      003A61 74 63            [12]  955 	mov	a,#(___str_3 >> 8)
      003A63 C0 E0            [24]  956 	push	acc
      003A65 74 80            [12]  957 	mov	a,#0x80
      003A67 C0 E0            [24]  958 	push	acc
      003A69 12 51 98         [24]  959 	lcall	_printf
      003A6C E5 81            [12]  960 	mov	a,sp
      003A6E 24 F9            [12]  961 	add	a,#0xf9
      003A70 F5 81            [12]  962 	mov	sp,a
      003A72 D0 06            [24]  963 	pop	ar6
                                    964 ;	SPI.c:139: return data;
      003A74 8E 82            [24]  965 	mov	dpl, r6
                                    966 ;	SPI.c:140: }
      003A76 22               [24]  967 	ret
                                    968 ;------------------------------------------------------------
                                    969 ;Allocation info for local variables in function 'phy_spi_write'
                                    970 ;------------------------------------------------------------
                                    971 ;data                      Allocated with name '_phy_spi_write_PARM_2'
                                    972 ;addr                      Allocated with name '_phy_spi_write_addr_10000_135'
                                    973 ;------------------------------------------------------------
                                    974 ;	SPI.c:142: void phy_spi_write(uint8_t addr, uint16_t data)
                                    975 ;	-----------------------------------------
                                    976 ;	 function phy_spi_write
                                    977 ;	-----------------------------------------
      003A77                        978 _phy_spi_write:
      003A77 E5 82            [12]  979 	mov	a,dpl
      003A79 90 03 8C         [24]  980 	mov	dptr,#_phy_spi_write_addr_10000_135
      003A7C F0               [24]  981 	movx	@dptr,a
                                    982 ;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
      003A7D E0               [24]  983 	movx	a,@dptr
      003A7E FF               [12]  984 	mov	r7,a
      003A7F 90 03 84         [24]  985 	mov	dptr,#_spi_control_write_PARM_2
      003A82 74 14            [12]  986 	mov	a,#0x14
      003A84 F0               [24]  987 	movx	@dptr,a
      003A85 90 03 85         [24]  988 	mov	dptr,#_spi_control_write_PARM_3
      003A88 EF               [12]  989 	mov	a,r7
      003A89 F0               [24]  990 	movx	@dptr,a
      003A8A 75 82 02         [24]  991 	mov	dpl, #0x02
      003A8D C0 07            [24]  992 	push	ar7
      003A8F 12 39 84         [24]  993 	lcall	_spi_control_write
      003A92 D0 07            [24]  994 	pop	ar7
                                    995 ;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      003A94 90 03 8A         [24]  996 	mov	dptr,#_phy_spi_write_PARM_2
      003A97 E0               [24]  997 	movx	a,@dptr
      003A98 FD               [12]  998 	mov	r5,a
      003A99 A3               [24]  999 	inc	dptr
      003A9A E0               [24] 1000 	movx	a,@dptr
      003A9B FE               [12] 1001 	mov	r6,a
      003A9C 8D 04            [24] 1002 	mov	ar4,r5
      003A9E 90 03 84         [24] 1003 	mov	dptr,#_spi_control_write_PARM_2
      003AA1 74 16            [12] 1004 	mov	a,#0x16
      003AA3 F0               [24] 1005 	movx	@dptr,a
      003AA4 90 03 85         [24] 1006 	mov	dptr,#_spi_control_write_PARM_3
      003AA7 EC               [12] 1007 	mov	a,r4
      003AA8 F0               [24] 1008 	movx	@dptr,a
      003AA9 75 82 02         [24] 1009 	mov	dpl, #0x02
      003AAC C0 07            [24] 1010 	push	ar7
      003AAE C0 06            [24] 1011 	push	ar6
      003AB0 C0 05            [24] 1012 	push	ar5
      003AB2 12 39 84         [24] 1013 	lcall	_spi_control_write
      003AB5 D0 05            [24] 1014 	pop	ar5
      003AB7 D0 06            [24] 1015 	pop	ar6
      003AB9 D0 07            [24] 1016 	pop	ar7
                                   1017 ;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      003ABB 8E 04            [24] 1018 	mov	ar4,r6
      003ABD 90 03 84         [24] 1019 	mov	dptr,#_spi_control_write_PARM_2
      003AC0 74 17            [12] 1020 	mov	a,#0x17
      003AC2 F0               [24] 1021 	movx	@dptr,a
      003AC3 90 03 85         [24] 1022 	mov	dptr,#_spi_control_write_PARM_3
      003AC6 EC               [12] 1023 	mov	a,r4
      003AC7 F0               [24] 1024 	movx	@dptr,a
      003AC8 75 82 02         [24] 1025 	mov	dpl, #0x02
      003ACB C0 07            [24] 1026 	push	ar7
      003ACD C0 06            [24] 1027 	push	ar6
      003ACF C0 05            [24] 1028 	push	ar5
      003AD1 12 39 84         [24] 1029 	lcall	_spi_control_write
      003AD4 D0 05            [24] 1030 	pop	ar5
      003AD6 D0 06            [24] 1031 	pop	ar6
      003AD8 D0 07            [24] 1032 	pop	ar7
                                   1033 ;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003ADA 7C 00            [12] 1034 	mov	r4,#0x00
      003ADC C0 05            [24] 1035 	push	ar5
      003ADE C0 06            [24] 1036 	push	ar6
      003AE0 C0 07            [24] 1037 	push	ar7
      003AE2 C0 04            [24] 1038 	push	ar4
      003AE4 74 B1            [12] 1039 	mov	a,#___str_4
      003AE6 C0 E0            [24] 1040 	push	acc
      003AE8 74 63            [12] 1041 	mov	a,#(___str_4 >> 8)
      003AEA C0 E0            [24] 1042 	push	acc
      003AEC 74 80            [12] 1043 	mov	a,#0x80
      003AEE C0 E0            [24] 1044 	push	acc
      003AF0 12 51 98         [24] 1045 	lcall	_printf
      003AF3 E5 81            [12] 1046 	mov	a,sp
      003AF5 24 F9            [12] 1047 	add	a,#0xf9
      003AF7 F5 81            [12] 1048 	mov	sp,a
                                   1049 ;	SPI.c:150: }
      003AF9 22               [24] 1050 	ret
                                   1051 ;------------------------------------------------------------
                                   1052 ;Allocation info for local variables in function 'mac_spi_read'
                                   1053 ;------------------------------------------------------------
                                   1054 ;bank                      Allocated with name '_mac_spi_read_PARM_2'
                                   1055 ;addr                      Allocated with name '_mac_spi_read_addr_10000_137'
                                   1056 ;data                      Allocated with name '_mac_spi_read_data_10001_140'
                                   1057 ;------------------------------------------------------------
                                   1058 ;	SPI.c:152: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function mac_spi_read
                                   1061 ;	-----------------------------------------
      003AFA                       1062 _mac_spi_read:
      003AFA E5 82            [12] 1063 	mov	a,dpl
      003AFC 90 03 8E         [24] 1064 	mov	dptr,#_mac_spi_read_addr_10000_137
      003AFF F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	SPI.c:154: if (addr > 0x1F) {
      003B00 E0               [24] 1067 	movx	a,@dptr
      003B01 FF               [12] 1068 	mov  r7,a
      003B02 24 E0            [12] 1069 	add	a,#0xff - 0x1f
      003B04 50 19            [24] 1070 	jnc	00102$
                                   1071 ;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003B06 74 53            [12] 1072 	mov	a,#___str_2
      003B08 C0 E0            [24] 1073 	push	acc
      003B0A 74 63            [12] 1074 	mov	a,#(___str_2 >> 8)
      003B0C C0 E0            [24] 1075 	push	acc
      003B0E 74 80            [12] 1076 	mov	a,#0x80
      003B10 C0 E0            [24] 1077 	push	acc
      003B12 12 51 98         [24] 1078 	lcall	_printf
      003B15 15 81            [12] 1079 	dec	sp
      003B17 15 81            [12] 1080 	dec	sp
      003B19 15 81            [12] 1081 	dec	sp
                                   1082 ;	SPI.c:156: return 0; // Return 0 if address is invalid
      003B1B 75 82 00         [24] 1083 	mov	dpl, #0x00
      003B1E 22               [24] 1084 	ret
      003B1F                       1085 00102$:
                                   1086 ;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
      003B1F 90 03 8D         [24] 1087 	mov	dptr,#_mac_spi_read_PARM_2
      003B22 E0               [24] 1088 	movx	a,@dptr
      003B23 F5 82            [12] 1089 	mov	dpl,a
      003B25 C0 07            [24] 1090 	push	ar7
      003B27 12 38 FF         [24] 1091 	lcall	_select_reg_bank
      003B2A D0 07            [24] 1092 	pop	ar7
                                   1093 ;	SPI.c:162: CS_LOW;
                                   1094 ;	assignBit
      003B2C C2 91            [12] 1095 	clr	_P1_1
                                   1096 ;	SPI.c:165: SPI_send(addr);
      003B2E 8F 82            [24] 1097 	mov	dpl, r7
      003B30 12 39 EF         [24] 1098 	lcall	_SPI_send
                                   1099 ;	SPI.c:168: uint8_t data = SPI_ReadByte();
      003B33 12 38 DC         [24] 1100 	lcall	_SPI_ReadByte
      003B36 AF 82            [24] 1101 	mov	r7, dpl
                                   1102 ;	SPI.c:171: CS_HIGH;
                                   1103 ;	assignBit
      003B38 D2 91            [12] 1104 	setb	_P1_1
                                   1105 ;	SPI.c:176: return data;
      003B3A 8F 82            [24] 1106 	mov	dpl, r7
                                   1107 ;	SPI.c:177: }
      003B3C 22               [24] 1108 	ret
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'phy_spi_read'
                                   1111 ;------------------------------------------------------------
                                   1112 ;addr                      Allocated with name '_phy_spi_read_addr_10000_141'
                                   1113 ;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_143'
                                   1114 ;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_143'
                                   1115 ;data                      Allocated with name '_phy_spi_read_data_10001_143'
                                   1116 ;------------------------------------------------------------
                                   1117 ;	SPI.c:180: uint16_t phy_spi_read(uint8_t addr)
                                   1118 ;	-----------------------------------------
                                   1119 ;	 function phy_spi_read
                                   1120 ;	-----------------------------------------
      003B3D                       1121 _phy_spi_read:
      003B3D E5 82            [12] 1122 	mov	a,dpl
      003B3F 90 03 8F         [24] 1123 	mov	dptr,#_phy_spi_read_addr_10000_141
      003B42 F0               [24] 1124 	movx	@dptr,a
                                   1125 ;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
      003B43 E0               [24] 1126 	movx	a,@dptr
      003B44 FF               [12] 1127 	mov	r7,a
      003B45 90 03 84         [24] 1128 	mov	dptr,#_spi_control_write_PARM_2
      003B48 74 14            [12] 1129 	mov	a,#0x14
      003B4A F0               [24] 1130 	movx	@dptr,a
      003B4B 90 03 85         [24] 1131 	mov	dptr,#_spi_control_write_PARM_3
      003B4E EF               [12] 1132 	mov	a,r7
      003B4F F0               [24] 1133 	movx	@dptr,a
      003B50 75 82 02         [24] 1134 	mov	dpl, #0x02
      003B53 C0 07            [24] 1135 	push	ar7
      003B55 12 39 84         [24] 1136 	lcall	_spi_control_write
      003B58 D0 07            [24] 1137 	pop	ar7
                                   1138 ;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      003B5A 90 03 84         [24] 1139 	mov	dptr,#_spi_control_write_PARM_2
      003B5D 74 12            [12] 1140 	mov	a,#0x12
      003B5F F0               [24] 1141 	movx	@dptr,a
      003B60 90 03 85         [24] 1142 	mov	dptr,#_spi_control_write_PARM_3
      003B63 74 01            [12] 1143 	mov	a,#0x01
      003B65 F0               [24] 1144 	movx	@dptr,a
      003B66 75 82 02         [24] 1145 	mov	dpl, #0x02
      003B69 C0 07            [24] 1146 	push	ar7
      003B6B 12 39 84         [24] 1147 	lcall	_spi_control_write
                                   1148 ;	SPI.c:185: busy_wait();                          // Wait for the read to complete
      003B6E 12 3B EA         [24] 1149 	lcall	_busy_wait
      003B71 D0 07            [24] 1150 	pop	ar7
                                   1151 ;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      003B73 90 03 84         [24] 1152 	mov	dptr,#_spi_control_write_PARM_2
      003B76 74 12            [12] 1153 	mov	a,#0x12
      003B78 F0               [24] 1154 	movx	@dptr,a
      003B79 90 03 85         [24] 1155 	mov	dptr,#_spi_control_write_PARM_3
      003B7C E4               [12] 1156 	clr	a
      003B7D F0               [24] 1157 	movx	@dptr,a
      003B7E 75 82 02         [24] 1158 	mov	dpl, #0x02
      003B81 C0 07            [24] 1159 	push	ar7
      003B83 12 39 84         [24] 1160 	lcall	_spi_control_write
      003B86 D0 07            [24] 1161 	pop	ar7
                                   1162 ;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      003B88 90 03 8D         [24] 1163 	mov	dptr,#_mac_spi_read_PARM_2
      003B8B 74 02            [12] 1164 	mov	a,#0x02
      003B8D F0               [24] 1165 	movx	@dptr,a
      003B8E 75 82 18         [24] 1166 	mov	dpl, #0x18
      003B91 C0 07            [24] 1167 	push	ar7
      003B93 12 3A FA         [24] 1168 	lcall	_mac_spi_read
      003B96 AE 82            [24] 1169 	mov	r6, dpl
      003B98 D0 07            [24] 1170 	pop	ar7
      003B9A 7D 00            [12] 1171 	mov	r5,#0x00
                                   1172 ;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003B9C 90 03 8D         [24] 1173 	mov	dptr,#_mac_spi_read_PARM_2
      003B9F 74 02            [12] 1174 	mov	a,#0x02
      003BA1 F0               [24] 1175 	movx	@dptr,a
      003BA2 75 82 19         [24] 1176 	mov	dpl, #0x19
      003BA5 C0 07            [24] 1177 	push	ar7
      003BA7 C0 06            [24] 1178 	push	ar6
      003BA9 C0 05            [24] 1179 	push	ar5
      003BAB 12 3A FA         [24] 1180 	lcall	_mac_spi_read
      003BAE AC 82            [24] 1181 	mov	r4, dpl
      003BB0 D0 05            [24] 1182 	pop	ar5
      003BB2 D0 06            [24] 1183 	pop	ar6
      003BB4 D0 07            [24] 1184 	pop	ar7
                                   1185 ;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      003BB6 8C 03            [24] 1186 	mov	ar3,r4
      003BB8 E4               [12] 1187 	clr	a
      003BB9 42 06            [12] 1188 	orl	ar6,a
      003BBB EB               [12] 1189 	mov	a,r3
      003BBC 42 05            [12] 1190 	orl	ar5,a
                                   1191 ;	SPI.c:195: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003BBE 7C 00            [12] 1192 	mov	r4,#0x00
      003BC0 C0 06            [24] 1193 	push	ar6
      003BC2 C0 05            [24] 1194 	push	ar5
      003BC4 C0 06            [24] 1195 	push	ar6
      003BC6 C0 05            [24] 1196 	push	ar5
      003BC8 C0 07            [24] 1197 	push	ar7
      003BCA C0 04            [24] 1198 	push	ar4
      003BCC 74 DA            [12] 1199 	mov	a,#___str_5
      003BCE C0 E0            [24] 1200 	push	acc
      003BD0 74 63            [12] 1201 	mov	a,#(___str_5 >> 8)
      003BD2 C0 E0            [24] 1202 	push	acc
      003BD4 74 80            [12] 1203 	mov	a,#0x80
      003BD6 C0 E0            [24] 1204 	push	acc
      003BD8 12 51 98         [24] 1205 	lcall	_printf
      003BDB E5 81            [12] 1206 	mov	a,sp
      003BDD 24 F9            [12] 1207 	add	a,#0xf9
      003BDF F5 81            [12] 1208 	mov	sp,a
      003BE1 D0 05            [24] 1209 	pop	ar5
      003BE3 D0 06            [24] 1210 	pop	ar6
                                   1211 ;	SPI.c:197: return data;        // Combine MSB and LSB
      003BE5 8E 82            [24] 1212 	mov	dpl, r6
      003BE7 8D 83            [24] 1213 	mov	dph, r5
                                   1214 ;	SPI.c:198: }
      003BE9 22               [24] 1215 	ret
                                   1216 ;------------------------------------------------------------
                                   1217 ;Allocation info for local variables in function 'busy_wait'
                                   1218 ;------------------------------------------------------------
                                   1219 ;data                      Allocated with name '_busy_wait_data_10000_145'
                                   1220 ;------------------------------------------------------------
                                   1221 ;	SPI.c:200: void busy_wait(void)
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function busy_wait
                                   1224 ;	-----------------------------------------
      003BEA                       1225 _busy_wait:
                                   1226 ;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      003BEA 90 03 8D         [24] 1227 	mov	dptr,#_mac_spi_read_PARM_2
      003BED 74 03            [12] 1228 	mov	a,#0x03
      003BEF F0               [24] 1229 	movx	@dptr,a
      003BF0 75 82 0A         [24] 1230 	mov	dpl, #0x0a
      003BF3 12 3A FA         [24] 1231 	lcall	_mac_spi_read
      003BF6 E5 82            [12] 1232 	mov	a, dpl
      003BF8 90 03 90         [24] 1233 	mov	dptr,#_busy_wait_data_10000_145
      003BFB F0               [24] 1234 	movx	@dptr,a
                                   1235 ;	SPI.c:203: while (data & 0x01)
      003BFC                       1236 00101$:
      003BFC 90 03 90         [24] 1237 	mov	dptr,#_busy_wait_data_10000_145
      003BFF E0               [24] 1238 	movx	a,@dptr
      003C00 30 E0 14         [24] 1239 	jnb	acc.0,00104$
                                   1240 ;	SPI.c:205: data = mac_spi_read(0x0A, 3);
      003C03 90 03 8D         [24] 1241 	mov	dptr,#_mac_spi_read_PARM_2
      003C06 74 03            [12] 1242 	mov	a,#0x03
      003C08 F0               [24] 1243 	movx	@dptr,a
      003C09 75 82 0A         [24] 1244 	mov	dpl, #0x0a
      003C0C 12 3A FA         [24] 1245 	lcall	_mac_spi_read
      003C0F E5 82            [12] 1246 	mov	a, dpl
      003C11 90 03 90         [24] 1247 	mov	dptr,#_busy_wait_data_10000_145
      003C14 F0               [24] 1248 	movx	@dptr,a
      003C15 80 E5            [24] 1249 	sjmp	00101$
      003C17                       1250 00104$:
                                   1251 ;	SPI.c:207: }
      003C17 22               [24] 1252 	ret
                                   1253 ;------------------------------------------------------------
                                   1254 ;Allocation info for local variables in function 'buffer_init'
                                   1255 ;------------------------------------------------------------
                                   1256 ;size                      Allocated with name '_buffer_init_PARM_2'
                                   1257 ;start_address             Allocated with name '_buffer_init_start_address_10000_147'
                                   1258 ;erxst                     Allocated with name '_buffer_init_erxst_10001_150'
                                   1259 ;erxnd                     Allocated with name '_buffer_init_erxnd_10001_150'
                                   1260 ;------------------------------------------------------------
                                   1261 ;	SPI.c:209: void buffer_init(uint16_t start_address, uint16_t size)
                                   1262 ;	-----------------------------------------
                                   1263 ;	 function buffer_init
                                   1264 ;	-----------------------------------------
      003C18                       1265 _buffer_init:
      003C18 AF 83            [24] 1266 	mov	r7,dph
      003C1A E5 82            [12] 1267 	mov	a,dpl
      003C1C 90 03 93         [24] 1268 	mov	dptr,#_buffer_init_start_address_10000_147
      003C1F F0               [24] 1269 	movx	@dptr,a
      003C20 EF               [12] 1270 	mov	a,r7
      003C21 A3               [24] 1271 	inc	dptr
      003C22 F0               [24] 1272 	movx	@dptr,a
                                   1273 ;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      003C23 90 03 93         [24] 1274 	mov	dptr,#_buffer_init_start_address_10000_147
      003C26 E0               [24] 1275 	movx	a,@dptr
      003C27 FE               [12] 1276 	mov	r6,a
      003C28 A3               [24] 1277 	inc	dptr
      003C29 E0               [24] 1278 	movx	a,@dptr
      003C2A FF               [12] 1279 	mov	r7,a
      003C2B 8E 04            [24] 1280 	mov	ar4,r6
      003C2D 8F 05            [24] 1281 	mov	ar5,r7
      003C2F C3               [12] 1282 	clr	c
      003C30 74 FF            [12] 1283 	mov	a,#0xff
      003C32 9C               [12] 1284 	subb	a,r4
      003C33 74 1F            [12] 1285 	mov	a,#0x1f
      003C35 9D               [12] 1286 	subb	a,r5
      003C36 40 17            [24] 1287 	jc	00101$
      003C38 90 03 91         [24] 1288 	mov	dptr,#_buffer_init_PARM_2
      003C3B E0               [24] 1289 	movx	a,@dptr
      003C3C FA               [12] 1290 	mov	r2,a
      003C3D A3               [24] 1291 	inc	dptr
      003C3E E0               [24] 1292 	movx	a,@dptr
      003C3F FB               [12] 1293 	mov	r3,a
      003C40 EA               [12] 1294 	mov	a,r2
      003C41 2E               [12] 1295 	add	a, r6
      003C42 F8               [12] 1296 	mov	r0,a
      003C43 EB               [12] 1297 	mov	a,r3
      003C44 3F               [12] 1298 	addc	a, r7
      003C45 F9               [12] 1299 	mov	r1,a
      003C46 C3               [12] 1300 	clr	c
      003C47 74 FF            [12] 1301 	mov	a,#0xff
      003C49 98               [12] 1302 	subb	a,r0
      003C4A 74 1F            [12] 1303 	mov	a,#0x1f
      003C4C 99               [12] 1304 	subb	a,r1
      003C4D 50 2A            [24] 1305 	jnc	00102$
      003C4F                       1306 00101$:
                                   1307 ;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      003C4F 90 03 91         [24] 1308 	mov	dptr,#_buffer_init_PARM_2
      003C52 E0               [24] 1309 	movx	a,@dptr
      003C53 C0 E0            [24] 1310 	push	acc
      003C55 A3               [24] 1311 	inc	dptr
      003C56 E0               [24] 1312 	movx	a,@dptr
      003C57 C0 E0            [24] 1313 	push	acc
      003C59 90 03 93         [24] 1314 	mov	dptr,#_buffer_init_start_address_10000_147
      003C5C E0               [24] 1315 	movx	a,@dptr
      003C5D C0 E0            [24] 1316 	push	acc
      003C5F A3               [24] 1317 	inc	dptr
      003C60 E0               [24] 1318 	movx	a,@dptr
      003C61 C0 E0            [24] 1319 	push	acc
      003C63 74 02            [12] 1320 	mov	a,#___str_6
      003C65 C0 E0            [24] 1321 	push	acc
      003C67 74 64            [12] 1322 	mov	a,#(___str_6 >> 8)
      003C69 C0 E0            [24] 1323 	push	acc
      003C6B 74 80            [12] 1324 	mov	a,#0x80
      003C6D C0 E0            [24] 1325 	push	acc
      003C6F 12 51 98         [24] 1326 	lcall	_printf
      003C72 E5 81            [12] 1327 	mov	a,sp
      003C74 24 F9            [12] 1328 	add	a,#0xf9
      003C76 F5 81            [12] 1329 	mov	sp,a
                                   1330 ;	SPI.c:213: return;
      003C78 22               [24] 1331 	ret
      003C79                       1332 00102$:
                                   1333 ;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      003C79 53 04 FE         [24] 1334 	anl	ar4,#0xfe
                                   1335 ;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      003C7C EA               [12] 1336 	mov	a,r2
      003C7D 2E               [12] 1337 	add	a, r6
      003C7E FE               [12] 1338 	mov	r6,a
      003C7F EB               [12] 1339 	mov	a,r3
      003C80 3F               [12] 1340 	addc	a, r7
      003C81 FF               [12] 1341 	mov	r7,a
      003C82 1E               [12] 1342 	dec	r6
      003C83 BE FF 01         [24] 1343 	cjne	r6,#0xff,00114$
      003C86 1F               [12] 1344 	dec	r7
      003C87                       1345 00114$:
      003C87 53 06 FE         [24] 1346 	anl	ar6,#0xfe
                                   1347 ;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      003C8A 8D 03            [24] 1348 	mov	ar3,r5
      003C8C 90 03 84         [24] 1349 	mov	dptr,#_spi_control_write_PARM_2
      003C8F 74 08            [12] 1350 	mov	a,#0x08
      003C91 F0               [24] 1351 	movx	@dptr,a
      003C92 90 03 85         [24] 1352 	mov	dptr,#_spi_control_write_PARM_3
      003C95 EB               [12] 1353 	mov	a,r3
      003C96 F0               [24] 1354 	movx	@dptr,a
      003C97 75 82 00         [24] 1355 	mov	dpl, #0x00
      003C9A C0 07            [24] 1356 	push	ar7
      003C9C C0 06            [24] 1357 	push	ar6
      003C9E C0 05            [24] 1358 	push	ar5
      003CA0 C0 04            [24] 1359 	push	ar4
      003CA2 12 39 84         [24] 1360 	lcall	_spi_control_write
      003CA5 D0 04            [24] 1361 	pop	ar4
      003CA7 D0 05            [24] 1362 	pop	ar5
      003CA9 D0 06            [24] 1363 	pop	ar6
      003CAB D0 07            [24] 1364 	pop	ar7
                                   1365 ;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003CAD 8C 03            [24] 1366 	mov	ar3,r4
      003CAF 90 03 84         [24] 1367 	mov	dptr,#_spi_control_write_PARM_2
      003CB2 74 09            [12] 1368 	mov	a,#0x09
      003CB4 F0               [24] 1369 	movx	@dptr,a
      003CB5 90 03 85         [24] 1370 	mov	dptr,#_spi_control_write_PARM_3
      003CB8 EB               [12] 1371 	mov	a,r3
      003CB9 F0               [24] 1372 	movx	@dptr,a
      003CBA 75 82 00         [24] 1373 	mov	dpl, #0x00
      003CBD C0 07            [24] 1374 	push	ar7
      003CBF C0 06            [24] 1375 	push	ar6
      003CC1 C0 05            [24] 1376 	push	ar5
      003CC3 C0 04            [24] 1377 	push	ar4
      003CC5 12 39 84         [24] 1378 	lcall	_spi_control_write
      003CC8 D0 04            [24] 1379 	pop	ar4
      003CCA D0 05            [24] 1380 	pop	ar5
      003CCC D0 06            [24] 1381 	pop	ar6
      003CCE D0 07            [24] 1382 	pop	ar7
                                   1383 ;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003CD0 8F 03            [24] 1384 	mov	ar3,r7
      003CD2 90 03 84         [24] 1385 	mov	dptr,#_spi_control_write_PARM_2
      003CD5 74 0A            [12] 1386 	mov	a,#0x0a
      003CD7 F0               [24] 1387 	movx	@dptr,a
      003CD8 90 03 85         [24] 1388 	mov	dptr,#_spi_control_write_PARM_3
      003CDB EB               [12] 1389 	mov	a,r3
      003CDC F0               [24] 1390 	movx	@dptr,a
      003CDD 75 82 00         [24] 1391 	mov	dpl, #0x00
      003CE0 C0 07            [24] 1392 	push	ar7
      003CE2 C0 06            [24] 1393 	push	ar6
      003CE4 C0 05            [24] 1394 	push	ar5
      003CE6 C0 04            [24] 1395 	push	ar4
      003CE8 12 39 84         [24] 1396 	lcall	_spi_control_write
      003CEB D0 04            [24] 1397 	pop	ar4
      003CED D0 05            [24] 1398 	pop	ar5
      003CEF D0 06            [24] 1399 	pop	ar6
      003CF1 D0 07            [24] 1400 	pop	ar7
                                   1401 ;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      003CF3 8E 03            [24] 1402 	mov	ar3,r6
      003CF5 90 03 84         [24] 1403 	mov	dptr,#_spi_control_write_PARM_2
      003CF8 74 0B            [12] 1404 	mov	a,#0x0b
      003CFA F0               [24] 1405 	movx	@dptr,a
      003CFB 90 03 85         [24] 1406 	mov	dptr,#_spi_control_write_PARM_3
      003CFE EB               [12] 1407 	mov	a,r3
      003CFF F0               [24] 1408 	movx	@dptr,a
      003D00 75 82 00         [24] 1409 	mov	dpl, #0x00
      003D03 C0 07            [24] 1410 	push	ar7
      003D05 C0 06            [24] 1411 	push	ar6
      003D07 C0 05            [24] 1412 	push	ar5
      003D09 C0 04            [24] 1413 	push	ar4
      003D0B 12 39 84         [24] 1414 	lcall	_spi_control_write
      003D0E D0 04            [24] 1415 	pop	ar4
      003D10 D0 05            [24] 1416 	pop	ar5
      003D12 D0 06            [24] 1417 	pop	ar6
      003D14 D0 07            [24] 1418 	pop	ar7
                                   1419 ;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      003D16 C0 06            [24] 1420 	push	ar6
      003D18 C0 07            [24] 1421 	push	ar7
      003D1A C0 04            [24] 1422 	push	ar4
      003D1C C0 05            [24] 1423 	push	ar5
      003D1E 74 40            [12] 1424 	mov	a,#___str_7
      003D20 C0 E0            [24] 1425 	push	acc
      003D22 74 64            [12] 1426 	mov	a,#(___str_7 >> 8)
      003D24 C0 E0            [24] 1427 	push	acc
      003D26 74 80            [12] 1428 	mov	a,#0x80
      003D28 C0 E0            [24] 1429 	push	acc
      003D2A 12 51 98         [24] 1430 	lcall	_printf
      003D2D E5 81            [12] 1431 	mov	a,sp
      003D2F 24 F9            [12] 1432 	add	a,#0xf9
      003D31 F5 81            [12] 1433 	mov	sp,a
                                   1434 ;	SPI.c:229: }
      003D33 22               [24] 1435 	ret
                                   1436 ;------------------------------------------------------------
                                   1437 ;Allocation info for local variables in function 'spi_buffer_read'
                                   1438 ;------------------------------------------------------------
                                   1439 ;start_address             Allocated with name '_spi_buffer_read_PARM_2'
                                   1440 ;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
                                   1441 ;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_151'
                                   1442 ;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_157'
                                   1443 ;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_157'
                                   1444 ;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_158'
                                   1445 ;i                         Allocated with name '_spi_buffer_read_i_20002_159'
                                   1446 ;------------------------------------------------------------
                                   1447 ;	SPI.c:232: uint16_t spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1448 ;	-----------------------------------------
                                   1449 ;	 function spi_buffer_read
                                   1450 ;	-----------------------------------------
      003D34                       1451 _spi_buffer_read:
      003D34 AF 83            [24] 1452 	mov	r7,dph
      003D36 E5 82            [12] 1453 	mov	a,dpl
      003D38 90 03 9A         [24] 1454 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003D3B F0               [24] 1455 	movx	@dptr,a
      003D3C EF               [12] 1456 	mov	a,r7
      003D3D A3               [24] 1457 	inc	dptr
      003D3E F0               [24] 1458 	movx	@dptr,a
                                   1459 ;	SPI.c:234: if (num_bytes < 1) {
      003D3F 90 03 9A         [24] 1460 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003D42 E0               [24] 1461 	movx	a,@dptr
      003D43 FE               [12] 1462 	mov	r6,a
      003D44 A3               [24] 1463 	inc	dptr
      003D45 E0               [24] 1464 	movx	a,@dptr
      003D46 FF               [12] 1465 	mov	r7,a
      003D47 C3               [12] 1466 	clr	c
      003D48 EE               [12] 1467 	mov	a,r6
      003D49 94 01            [12] 1468 	subb	a,#0x01
      003D4B EF               [12] 1469 	mov	a,r7
      003D4C 64 80            [12] 1470 	xrl	a,#0x80
      003D4E 94 80            [12] 1471 	subb	a,#0x80
      003D50 50 1A            [24] 1472 	jnc	00102$
                                   1473 ;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003D52 C0 06            [24] 1474 	push	ar6
      003D54 C0 07            [24] 1475 	push	ar7
      003D56 74 71            [12] 1476 	mov	a,#___str_8
      003D58 C0 E0            [24] 1477 	push	acc
      003D5A 74 64            [12] 1478 	mov	a,#(___str_8 >> 8)
      003D5C C0 E0            [24] 1479 	push	acc
      003D5E 74 80            [12] 1480 	mov	a,#0x80
      003D60 C0 E0            [24] 1481 	push	acc
      003D62 12 51 98         [24] 1482 	lcall	_printf
      003D65 E5 81            [12] 1483 	mov	a,sp
      003D67 24 FB            [12] 1484 	add	a,#0xfb
      003D69 F5 81            [12] 1485 	mov	sp,a
                                   1486 ;	SPI.c:236: return;
      003D6B 22               [24] 1487 	ret
      003D6C                       1488 00102$:
                                   1489 ;	SPI.c:238: if (start_address > 0x1FFF) {
      003D6C 90 03 95         [24] 1490 	mov	dptr,#_spi_buffer_read_PARM_2
      003D6F E0               [24] 1491 	movx	a,@dptr
      003D70 FC               [12] 1492 	mov	r4,a
      003D71 A3               [24] 1493 	inc	dptr
      003D72 E0               [24] 1494 	movx	a,@dptr
      003D73 FD               [12] 1495 	mov	r5,a
      003D74 8C 02            [24] 1496 	mov	ar2,r4
      003D76 8D 03            [24] 1497 	mov	ar3,r5
      003D78 C3               [12] 1498 	clr	c
      003D79 74 FF            [12] 1499 	mov	a,#0xff
      003D7B 9A               [12] 1500 	subb	a,r2
      003D7C 74 1F            [12] 1501 	mov	a,#0x1f
      003D7E 9B               [12] 1502 	subb	a,r3
      003D7F 50 1A            [24] 1503 	jnc	00107$
                                   1504 ;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
      003D81 C0 04            [24] 1505 	push	ar4
      003D83 C0 05            [24] 1506 	push	ar5
      003D85 74 91            [12] 1507 	mov	a,#___str_9
      003D87 C0 E0            [24] 1508 	push	acc
      003D89 74 64            [12] 1509 	mov	a,#(___str_9 >> 8)
      003D8B C0 E0            [24] 1510 	push	acc
      003D8D 74 80            [12] 1511 	mov	a,#0x80
      003D8F C0 E0            [24] 1512 	push	acc
      003D91 12 51 98         [24] 1513 	lcall	_printf
      003D94 E5 81            [12] 1514 	mov	a,sp
      003D96 24 FB            [12] 1515 	add	a,#0xfb
      003D98 F5 81            [12] 1516 	mov	sp,a
                                   1517 ;	SPI.c:240: return;
      003D9A 22               [24] 1518 	ret
                                   1519 ;	SPI.c:243: || (start_address + num_bytes) > RX_BUFFER_END) {
      003D9B                       1520 00107$:
      003D9B 8E 00            [24] 1521 	mov	ar0,r6
      003D9D 8F 01            [24] 1522 	mov	ar1,r7
      003D9F E8               [12] 1523 	mov	a,r0
      003DA0 2A               [12] 1524 	add	a, r2
      003DA1 FA               [12] 1525 	mov	r2,a
      003DA2 E9               [12] 1526 	mov	a,r1
      003DA3 3B               [12] 1527 	addc	a, r3
      003DA4 FB               [12] 1528 	mov	r3,a
      003DA5 C3               [12] 1529 	clr	c
      003DA6 74 FF            [12] 1530 	mov	a,#0xff
      003DA8 9A               [12] 1531 	subb	a,r2
      003DA9 74 0B            [12] 1532 	mov	a,#0x0b
      003DAB 9B               [12] 1533 	subb	a,r3
      003DAC 50 21            [24] 1534 	jnc	00106$
                                   1535 ;	SPI.c:244: printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
      003DAE C0 06            [24] 1536 	push	ar6
      003DB0 C0 07            [24] 1537 	push	ar7
      003DB2 C0 04            [24] 1538 	push	ar4
      003DB4 C0 05            [24] 1539 	push	ar5
      003DB6 74 AB            [12] 1540 	mov	a,#___str_10
      003DB8 C0 E0            [24] 1541 	push	acc
      003DBA 74 64            [12] 1542 	mov	a,#(___str_10 >> 8)
      003DBC C0 E0            [24] 1543 	push	acc
      003DBE 74 80            [12] 1544 	mov	a,#0x80
      003DC0 C0 E0            [24] 1545 	push	acc
      003DC2 12 51 98         [24] 1546 	lcall	_printf
      003DC5 E5 81            [12] 1547 	mov	a,sp
      003DC7 24 F9            [12] 1548 	add	a,#0xf9
      003DC9 F5 81            [12] 1549 	mov	sp,a
                                   1550 ;	SPI.c:246: return 0;
      003DCB 90 00 00         [24] 1551 	mov	dptr,#0x0000
      003DCE 22               [24] 1552 	ret
      003DCF                       1553 00106$:
                                   1554 ;	SPI.c:249: if (num_bytes > 1) {
      003DCF C3               [12] 1555 	clr	c
      003DD0 74 01            [12] 1556 	mov	a,#0x01
      003DD2 9E               [12] 1557 	subb	a,r6
      003DD3 74 80            [12] 1558 	mov	a,#(0x00 ^ 0x80)
      003DD5 8F F0            [24] 1559 	mov	b,r7
      003DD7 63 F0 80         [24] 1560 	xrl	b,#0x80
      003DDA 95 F0            [12] 1561 	subb	a,b
      003DDC 50 0B            [24] 1562 	jnc	00109$
                                   1563 ;	SPI.c:250: spi_set_autoinc();
      003DDE C0 05            [24] 1564 	push	ar5
      003DE0 C0 04            [24] 1565 	push	ar4
      003DE2 12 38 EE         [24] 1566 	lcall	_spi_set_autoinc
      003DE5 D0 04            [24] 1567 	pop	ar4
      003DE7 D0 05            [24] 1568 	pop	ar5
      003DE9                       1569 00109$:
                                   1570 ;	SPI.c:254: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003DE9 8D 07            [24] 1571 	mov	ar7,r5
                                   1572 ;	SPI.c:255: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003DEB 8C 06            [24] 1573 	mov	ar6,r4
                                   1574 ;	SPI.c:257: spi_control_write(0, 0x01, higher_byte); // High byte
      003DED 90 03 84         [24] 1575 	mov	dptr,#_spi_control_write_PARM_2
      003DF0 74 01            [12] 1576 	mov	a,#0x01
      003DF2 F0               [24] 1577 	movx	@dptr,a
      003DF3 90 03 85         [24] 1578 	mov	dptr,#_spi_control_write_PARM_3
      003DF6 EF               [12] 1579 	mov	a,r7
      003DF7 F0               [24] 1580 	movx	@dptr,a
      003DF8 75 82 00         [24] 1581 	mov	dpl, #0x00
      003DFB C0 06            [24] 1582 	push	ar6
      003DFD C0 05            [24] 1583 	push	ar5
      003DFF C0 04            [24] 1584 	push	ar4
      003E01 12 39 84         [24] 1585 	lcall	_spi_control_write
      003E04 D0 04            [24] 1586 	pop	ar4
      003E06 D0 05            [24] 1587 	pop	ar5
      003E08 D0 06            [24] 1588 	pop	ar6
                                   1589 ;	SPI.c:258: spi_control_write(0, 0x00, lower_byte); // Low byte
      003E0A 90 03 84         [24] 1590 	mov	dptr,#_spi_control_write_PARM_2
      003E0D E4               [12] 1591 	clr	a
      003E0E F0               [24] 1592 	movx	@dptr,a
      003E0F 90 03 85         [24] 1593 	mov	dptr,#_spi_control_write_PARM_3
      003E12 EE               [12] 1594 	mov	a,r6
      003E13 F0               [24] 1595 	movx	@dptr,a
      003E14 75 82 00         [24] 1596 	mov	dpl, #0x00
      003E17 C0 05            [24] 1597 	push	ar5
      003E19 C0 04            [24] 1598 	push	ar4
      003E1B 12 39 84         [24] 1599 	lcall	_spi_control_write
                                   1600 ;	SPI.c:261: CS_LOW; // Pull CS Low
                                   1601 ;	assignBit
      003E1E C2 91            [12] 1602 	clr	_P1_1
                                   1603 ;	SPI.c:262: SPI_send(opcode); // Send opcode
      003E20 75 82 3A         [24] 1604 	mov	dpl, #0x3a
      003E23 12 39 EF         [24] 1605 	lcall	_SPI_send
      003E26 D0 04            [24] 1606 	pop	ar4
      003E28 D0 05            [24] 1607 	pop	ar5
                                   1608 ;	SPI.c:265: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003E2A 90 03 9A         [24] 1609 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003E2D E0               [24] 1610 	movx	a,@dptr
      003E2E FE               [12] 1611 	mov	r6,a
      003E2F A3               [24] 1612 	inc	dptr
      003E30 E0               [24] 1613 	movx	a,@dptr
      003E31 FF               [12] 1614 	mov	r7,a
      003E32 C0 07            [24] 1615 	push	ar7
      003E34 C0 06            [24] 1616 	push	ar6
      003E36 C0 04            [24] 1617 	push	ar4
      003E38 C0 05            [24] 1618 	push	ar5
      003E3A C0 06            [24] 1619 	push	ar6
      003E3C C0 07            [24] 1620 	push	ar7
      003E3E 74 D7            [12] 1621 	mov	a,#___str_11
      003E40 C0 E0            [24] 1622 	push	acc
      003E42 74 64            [12] 1623 	mov	a,#(___str_11 >> 8)
      003E44 C0 E0            [24] 1624 	push	acc
      003E46 74 80            [12] 1625 	mov	a,#0x80
      003E48 C0 E0            [24] 1626 	push	acc
      003E4A 12 51 98         [24] 1627 	lcall	_printf
      003E4D E5 81            [12] 1628 	mov	a,sp
      003E4F 24 F9            [12] 1629 	add	a,#0xf9
      003E51 F5 81            [12] 1630 	mov	sp,a
      003E53 D0 06            [24] 1631 	pop	ar6
      003E55 D0 07            [24] 1632 	pop	ar7
                                   1633 ;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
      003E57 90 03 9C         [24] 1634 	mov	dptr,#_spi_buffer_read_i_20002_159
      003E5A E4               [12] 1635 	clr	a
      003E5B F0               [24] 1636 	movx	@dptr,a
      003E5C A3               [24] 1637 	inc	dptr
      003E5D F0               [24] 1638 	movx	@dptr,a
      003E5E 90 03 97         [24] 1639 	mov	dptr,#_spi_buffer_read_PARM_3
      003E61 E0               [24] 1640 	movx	a,@dptr
      003E62 FB               [12] 1641 	mov	r3,a
      003E63 A3               [24] 1642 	inc	dptr
      003E64 E0               [24] 1643 	movx	a,@dptr
      003E65 FC               [12] 1644 	mov	r4,a
      003E66 A3               [24] 1645 	inc	dptr
      003E67 E0               [24] 1646 	movx	a,@dptr
      003E68 FD               [12] 1647 	mov	r5,a
      003E69                       1648 00112$:
      003E69 90 03 9C         [24] 1649 	mov	dptr,#_spi_buffer_read_i_20002_159
      003E6C E0               [24] 1650 	movx	a,@dptr
      003E6D F9               [12] 1651 	mov	r1,a
      003E6E A3               [24] 1652 	inc	dptr
      003E6F E0               [24] 1653 	movx	a,@dptr
      003E70 FA               [12] 1654 	mov	r2,a
      003E71 C3               [12] 1655 	clr	c
      003E72 E9               [12] 1656 	mov	a,r1
      003E73 9E               [12] 1657 	subb	a,r6
      003E74 EA               [12] 1658 	mov	a,r2
      003E75 64 80            [12] 1659 	xrl	a,#0x80
      003E77 8F F0            [24] 1660 	mov	b,r7
      003E79 63 F0 80         [24] 1661 	xrl	b,#0x80
      003E7C 95 F0            [12] 1662 	subb	a,b
      003E7E 40 03            [24] 1663 	jc	00157$
      003E80 02 3F 06         [24] 1664 	ljmp	00110$
      003E83                       1665 00157$:
                                   1666 ;	SPI.c:267: *data_ptr = SPI_ReadByte(); // Read data
      003E83 C0 06            [24] 1667 	push	ar6
      003E85 C0 07            [24] 1668 	push	ar7
      003E87 C0 07            [24] 1669 	push	ar7
      003E89 C0 06            [24] 1670 	push	ar6
      003E8B C0 05            [24] 1671 	push	ar5
      003E8D C0 04            [24] 1672 	push	ar4
      003E8F C0 03            [24] 1673 	push	ar3
      003E91 C0 02            [24] 1674 	push	ar2
      003E93 C0 01            [24] 1675 	push	ar1
      003E95 12 38 DC         [24] 1676 	lcall	_SPI_ReadByte
      003E98 A8 82            [24] 1677 	mov	r0, dpl
      003E9A D0 01            [24] 1678 	pop	ar1
      003E9C D0 02            [24] 1679 	pop	ar2
      003E9E D0 03            [24] 1680 	pop	ar3
      003EA0 D0 04            [24] 1681 	pop	ar4
      003EA2 D0 05            [24] 1682 	pop	ar5
      003EA4 D0 06            [24] 1683 	pop	ar6
      003EA6 D0 07            [24] 1684 	pop	ar7
      003EA8 8B 82            [24] 1685 	mov	dpl,r3
      003EAA 8C 83            [24] 1686 	mov	dph,r4
      003EAC 8D F0            [24] 1687 	mov	b,r5
      003EAE E8               [12] 1688 	mov	a,r0
      003EAF 12 4D 82         [24] 1689 	lcall	__gptrput
      003EB2 A3               [24] 1690 	inc	dptr
      003EB3 AB 82            [24] 1691 	mov	r3,dpl
      003EB5 AC 83            [24] 1692 	mov	r4,dph
                                   1693 ;	SPI.c:268: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003EB7 7F 00            [12] 1694 	mov	r7,#0x00
      003EB9 09               [12] 1695 	inc	r1
      003EBA B9 00 01         [24] 1696 	cjne	r1,#0x00,00158$
      003EBD 0A               [12] 1697 	inc	r2
      003EBE                       1698 00158$:
      003EBE C0 07            [24] 1699 	push	ar7
      003EC0 C0 06            [24] 1700 	push	ar6
      003EC2 C0 05            [24] 1701 	push	ar5
      003EC4 C0 04            [24] 1702 	push	ar4
      003EC6 C0 03            [24] 1703 	push	ar3
      003EC8 C0 02            [24] 1704 	push	ar2
      003ECA C0 01            [24] 1705 	push	ar1
      003ECC C0 00            [24] 1706 	push	ar0
      003ECE C0 07            [24] 1707 	push	ar7
      003ED0 C0 01            [24] 1708 	push	ar1
      003ED2 C0 02            [24] 1709 	push	ar2
      003ED4 74 12            [12] 1710 	mov	a,#___str_12
      003ED6 C0 E0            [24] 1711 	push	acc
      003ED8 74 65            [12] 1712 	mov	a,#(___str_12 >> 8)
      003EDA C0 E0            [24] 1713 	push	acc
      003EDC 74 80            [12] 1714 	mov	a,#0x80
      003EDE C0 E0            [24] 1715 	push	acc
      003EE0 12 51 98         [24] 1716 	lcall	_printf
      003EE3 E5 81            [12] 1717 	mov	a,sp
      003EE5 24 F9            [12] 1718 	add	a,#0xf9
      003EE7 F5 81            [12] 1719 	mov	sp,a
      003EE9 D0 01            [24] 1720 	pop	ar1
      003EEB D0 02            [24] 1721 	pop	ar2
      003EED D0 03            [24] 1722 	pop	ar3
      003EEF D0 04            [24] 1723 	pop	ar4
      003EF1 D0 05            [24] 1724 	pop	ar5
      003EF3 D0 06            [24] 1725 	pop	ar6
      003EF5 D0 07            [24] 1726 	pop	ar7
                                   1727 ;	SPI.c:269: data_ptr++;
                                   1728 ;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
      003EF7 90 03 9C         [24] 1729 	mov	dptr,#_spi_buffer_read_i_20002_159
      003EFA E9               [12] 1730 	mov	a,r1
      003EFB F0               [24] 1731 	movx	@dptr,a
      003EFC EA               [12] 1732 	mov	a,r2
      003EFD A3               [24] 1733 	inc	dptr
      003EFE F0               [24] 1734 	movx	@dptr,a
      003EFF D0 07            [24] 1735 	pop	ar7
      003F01 D0 06            [24] 1736 	pop	ar6
      003F03 02 3E 69         [24] 1737 	ljmp	00112$
      003F06                       1738 00110$:
                                   1739 ;	SPI.c:271: CS_HIGH; // Pull CS High
                                   1740 ;	assignBit
      003F06 D2 91            [12] 1741 	setb	_P1_1
                                   1742 ;	SPI.c:272: return (uint16_t) num_bytes;
      003F08 8E 82            [24] 1743 	mov	dpl, r6
      003F0A 8F 83            [24] 1744 	mov	dph, r7
                                   1745 ;	SPI.c:273: }
      003F0C 22               [24] 1746 	ret
                                   1747 ;------------------------------------------------------------
                                   1748 ;Allocation info for local variables in function 'spi_buffer_write'
                                   1749 ;------------------------------------------------------------
                                   1750 ;start_address             Allocated with name '_spi_buffer_write_PARM_2'
                                   1751 ;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
                                   1752 ;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_161'
                                   1753 ;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_166'
                                   1754 ;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_166'
                                   1755 ;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_167'
                                   1756 ;i                         Allocated with name '_spi_buffer_write_i_20002_168'
                                   1757 ;------------------------------------------------------------
                                   1758 ;	SPI.c:276: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1759 ;	-----------------------------------------
                                   1760 ;	 function spi_buffer_write
                                   1761 ;	-----------------------------------------
      003F0D                       1762 _spi_buffer_write:
      003F0D AF 83            [24] 1763 	mov	r7,dph
      003F0F E5 82            [12] 1764 	mov	a,dpl
      003F11 90 03 A3         [24] 1765 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003F14 F0               [24] 1766 	movx	@dptr,a
      003F15 EF               [12] 1767 	mov	a,r7
      003F16 A3               [24] 1768 	inc	dptr
      003F17 F0               [24] 1769 	movx	@dptr,a
                                   1770 ;	SPI.c:278: if (num_bytes < 1)
      003F18 90 03 A3         [24] 1771 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003F1B E0               [24] 1772 	movx	a,@dptr
      003F1C FE               [12] 1773 	mov	r6,a
      003F1D A3               [24] 1774 	inc	dptr
      003F1E E0               [24] 1775 	movx	a,@dptr
      003F1F FF               [12] 1776 	mov	r7,a
      003F20 C3               [12] 1777 	clr	c
      003F21 EE               [12] 1778 	mov	a,r6
      003F22 94 01            [12] 1779 	subb	a,#0x01
      003F24 EF               [12] 1780 	mov	a,r7
      003F25 64 80            [12] 1781 	xrl	a,#0x80
      003F27 94 80            [12] 1782 	subb	a,#0x80
      003F29 50 1A            [24] 1783 	jnc	00102$
                                   1784 ;	SPI.c:280: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003F2B C0 06            [24] 1785 	push	ar6
      003F2D C0 07            [24] 1786 	push	ar7
      003F2F 74 71            [12] 1787 	mov	a,#___str_8
      003F31 C0 E0            [24] 1788 	push	acc
      003F33 74 64            [12] 1789 	mov	a,#(___str_8 >> 8)
      003F35 C0 E0            [24] 1790 	push	acc
      003F37 74 80            [12] 1791 	mov	a,#0x80
      003F39 C0 E0            [24] 1792 	push	acc
      003F3B 12 51 98         [24] 1793 	lcall	_printf
      003F3E E5 81            [12] 1794 	mov	a,sp
      003F40 24 FB            [12] 1795 	add	a,#0xfb
      003F42 F5 81            [12] 1796 	mov	sp,a
                                   1797 ;	SPI.c:281: return;
      003F44 22               [24] 1798 	ret
      003F45                       1799 00102$:
                                   1800 ;	SPI.c:283: if (start_address > 0x1FFF) {
      003F45 90 03 9E         [24] 1801 	mov	dptr,#_spi_buffer_write_PARM_2
      003F48 E0               [24] 1802 	movx	a,@dptr
      003F49 FC               [12] 1803 	mov	r4,a
      003F4A A3               [24] 1804 	inc	dptr
      003F4B E0               [24] 1805 	movx	a,@dptr
      003F4C FD               [12] 1806 	mov	r5,a
      003F4D 8C 02            [24] 1807 	mov	ar2,r4
      003F4F 8D 03            [24] 1808 	mov	ar3,r5
      003F51 C3               [12] 1809 	clr	c
      003F52 74 FF            [12] 1810 	mov	a,#0xff
      003F54 9A               [12] 1811 	subb	a,r2
      003F55 74 1F            [12] 1812 	mov	a,#0x1f
      003F57 9B               [12] 1813 	subb	a,r3
      003F58 50 1A            [24] 1814 	jnc	00104$
                                   1815 ;	SPI.c:284: printf("\n\rInvalid address: %04X\n\r", start_address);
      003F5A C0 04            [24] 1816 	push	ar4
      003F5C C0 05            [24] 1817 	push	ar5
      003F5E 74 91            [12] 1818 	mov	a,#___str_9
      003F60 C0 E0            [24] 1819 	push	acc
      003F62 74 64            [12] 1820 	mov	a,#(___str_9 >> 8)
      003F64 C0 E0            [24] 1821 	push	acc
      003F66 74 80            [12] 1822 	mov	a,#0x80
      003F68 C0 E0            [24] 1823 	push	acc
      003F6A 12 51 98         [24] 1824 	lcall	_printf
      003F6D E5 81            [12] 1825 	mov	a,sp
      003F6F 24 FB            [12] 1826 	add	a,#0xfb
      003F71 F5 81            [12] 1827 	mov	sp,a
                                   1828 ;	SPI.c:285: return;
      003F73 22               [24] 1829 	ret
      003F74                       1830 00104$:
                                   1831 ;	SPI.c:289: if (num_bytes > 1) {
      003F74 C3               [12] 1832 	clr	c
      003F75 74 01            [12] 1833 	mov	a,#0x01
      003F77 9E               [12] 1834 	subb	a,r6
      003F78 74 80            [12] 1835 	mov	a,#(0x00 ^ 0x80)
      003F7A 8F F0            [24] 1836 	mov	b,r7
      003F7C 63 F0 80         [24] 1837 	xrl	b,#0x80
      003F7F 95 F0            [12] 1838 	subb	a,b
      003F81 50 0B            [24] 1839 	jnc	00106$
                                   1840 ;	SPI.c:290: spi_set_autoinc();
      003F83 C0 05            [24] 1841 	push	ar5
      003F85 C0 04            [24] 1842 	push	ar4
      003F87 12 38 EE         [24] 1843 	lcall	_spi_set_autoinc
      003F8A D0 04            [24] 1844 	pop	ar4
      003F8C D0 05            [24] 1845 	pop	ar5
      003F8E                       1846 00106$:
                                   1847 ;	SPI.c:293: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003F8E 8D 07            [24] 1848 	mov	ar7,r5
                                   1849 ;	SPI.c:294: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003F90 8C 06            [24] 1850 	mov	ar6,r4
                                   1851 ;	SPI.c:296: spi_control_write(0, 0x03, higher_byte); // High byte
      003F92 90 03 84         [24] 1852 	mov	dptr,#_spi_control_write_PARM_2
      003F95 74 03            [12] 1853 	mov	a,#0x03
      003F97 F0               [24] 1854 	movx	@dptr,a
      003F98 90 03 85         [24] 1855 	mov	dptr,#_spi_control_write_PARM_3
      003F9B EF               [12] 1856 	mov	a,r7
      003F9C F0               [24] 1857 	movx	@dptr,a
      003F9D 75 82 00         [24] 1858 	mov	dpl, #0x00
      003FA0 C0 06            [24] 1859 	push	ar6
      003FA2 C0 05            [24] 1860 	push	ar5
      003FA4 C0 04            [24] 1861 	push	ar4
      003FA6 12 39 84         [24] 1862 	lcall	_spi_control_write
      003FA9 D0 04            [24] 1863 	pop	ar4
      003FAB D0 05            [24] 1864 	pop	ar5
      003FAD D0 06            [24] 1865 	pop	ar6
                                   1866 ;	SPI.c:297: spi_control_write(0, 0x02, lower_byte); // Low byte
      003FAF 90 03 84         [24] 1867 	mov	dptr,#_spi_control_write_PARM_2
      003FB2 74 02            [12] 1868 	mov	a,#0x02
      003FB4 F0               [24] 1869 	movx	@dptr,a
      003FB5 90 03 85         [24] 1870 	mov	dptr,#_spi_control_write_PARM_3
      003FB8 EE               [12] 1871 	mov	a,r6
      003FB9 F0               [24] 1872 	movx	@dptr,a
      003FBA 75 82 00         [24] 1873 	mov	dpl, #0x00
      003FBD C0 05            [24] 1874 	push	ar5
      003FBF C0 04            [24] 1875 	push	ar4
      003FC1 12 39 84         [24] 1876 	lcall	_spi_control_write
                                   1877 ;	SPI.c:300: CS_LOW; // Pull CS Low
                                   1878 ;	assignBit
      003FC4 C2 91            [12] 1879 	clr	_P1_1
                                   1880 ;	SPI.c:301: SPI_send(opcode); // Send opcode
      003FC6 75 82 7A         [24] 1881 	mov	dpl, #0x7a
      003FC9 12 39 EF         [24] 1882 	lcall	_SPI_send
      003FCC D0 04            [24] 1883 	pop	ar4
      003FCE D0 05            [24] 1884 	pop	ar5
                                   1885 ;	SPI.c:304: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003FD0 90 03 A3         [24] 1886 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003FD3 E0               [24] 1887 	movx	a,@dptr
      003FD4 FE               [12] 1888 	mov	r6,a
      003FD5 A3               [24] 1889 	inc	dptr
      003FD6 E0               [24] 1890 	movx	a,@dptr
      003FD7 FF               [12] 1891 	mov	r7,a
      003FD8 C0 07            [24] 1892 	push	ar7
      003FDA C0 06            [24] 1893 	push	ar6
      003FDC C0 04            [24] 1894 	push	ar4
      003FDE C0 05            [24] 1895 	push	ar5
      003FE0 C0 06            [24] 1896 	push	ar6
      003FE2 C0 07            [24] 1897 	push	ar7
      003FE4 74 24            [12] 1898 	mov	a,#___str_13
      003FE6 C0 E0            [24] 1899 	push	acc
      003FE8 74 65            [12] 1900 	mov	a,#(___str_13 >> 8)
      003FEA C0 E0            [24] 1901 	push	acc
      003FEC 74 80            [12] 1902 	mov	a,#0x80
      003FEE C0 E0            [24] 1903 	push	acc
      003FF0 12 51 98         [24] 1904 	lcall	_printf
      003FF3 E5 81            [12] 1905 	mov	a,sp
      003FF5 24 F9            [12] 1906 	add	a,#0xf9
      003FF7 F5 81            [12] 1907 	mov	sp,a
      003FF9 D0 06            [24] 1908 	pop	ar6
      003FFB D0 07            [24] 1909 	pop	ar7
                                   1910 ;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
      003FFD 90 03 A5         [24] 1911 	mov	dptr,#_spi_buffer_write_i_20002_168
      004000 E4               [12] 1912 	clr	a
      004001 F0               [24] 1913 	movx	@dptr,a
      004002 A3               [24] 1914 	inc	dptr
      004003 F0               [24] 1915 	movx	@dptr,a
      004004 90 03 A0         [24] 1916 	mov	dptr,#_spi_buffer_write_PARM_3
      004007 E0               [24] 1917 	movx	a,@dptr
      004008 FB               [12] 1918 	mov	r3,a
      004009 A3               [24] 1919 	inc	dptr
      00400A E0               [24] 1920 	movx	a,@dptr
      00400B FC               [12] 1921 	mov	r4,a
      00400C A3               [24] 1922 	inc	dptr
      00400D E0               [24] 1923 	movx	a,@dptr
      00400E FD               [12] 1924 	mov	r5,a
      00400F                       1925 00109$:
      00400F 90 03 A5         [24] 1926 	mov	dptr,#_spi_buffer_write_i_20002_168
      004012 E0               [24] 1927 	movx	a,@dptr
      004013 F9               [12] 1928 	mov	r1,a
      004014 A3               [24] 1929 	inc	dptr
      004015 E0               [24] 1930 	movx	a,@dptr
      004016 FA               [12] 1931 	mov	r2,a
      004017 C3               [12] 1932 	clr	c
      004018 E9               [12] 1933 	mov	a,r1
      004019 9E               [12] 1934 	subb	a,r6
      00401A EA               [12] 1935 	mov	a,r2
      00401B 64 80            [12] 1936 	xrl	a,#0x80
      00401D 8F F0            [24] 1937 	mov	b,r7
      00401F 63 F0 80         [24] 1938 	xrl	b,#0x80
      004022 95 F0            [12] 1939 	subb	a,b
      004024 40 03            [24] 1940 	jc	00147$
      004026 02 40 B6         [24] 1941 	ljmp	00107$
      004029                       1942 00147$:
                                   1943 ;	SPI.c:306: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      004029 C0 06            [24] 1944 	push	ar6
      00402B C0 07            [24] 1945 	push	ar7
      00402D 8B 82            [24] 1946 	mov	dpl,r3
      00402F 8C 83            [24] 1947 	mov	dph,r4
      004031 8D F0            [24] 1948 	mov	b,r5
      004033 12 5B BA         [24] 1949 	lcall	__gptrget
      004036 F8               [12] 1950 	mov	r0,a
      004037 7F 00            [12] 1951 	mov	r7,#0x00
      004039 09               [12] 1952 	inc	r1
      00403A B9 00 01         [24] 1953 	cjne	r1,#0x00,00148$
      00403D 0A               [12] 1954 	inc	r2
      00403E                       1955 00148$:
      00403E C0 07            [24] 1956 	push	ar7
      004040 C0 06            [24] 1957 	push	ar6
      004042 C0 05            [24] 1958 	push	ar5
      004044 C0 04            [24] 1959 	push	ar4
      004046 C0 03            [24] 1960 	push	ar3
      004048 C0 02            [24] 1961 	push	ar2
      00404A C0 01            [24] 1962 	push	ar1
      00404C C0 00            [24] 1963 	push	ar0
      00404E C0 07            [24] 1964 	push	ar7
      004050 C0 01            [24] 1965 	push	ar1
      004052 C0 02            [24] 1966 	push	ar2
      004054 74 12            [12] 1967 	mov	a,#___str_12
      004056 C0 E0            [24] 1968 	push	acc
      004058 74 65            [12] 1969 	mov	a,#(___str_12 >> 8)
      00405A C0 E0            [24] 1970 	push	acc
      00405C 74 80            [12] 1971 	mov	a,#0x80
      00405E C0 E0            [24] 1972 	push	acc
      004060 12 51 98         [24] 1973 	lcall	_printf
      004063 E5 81            [12] 1974 	mov	a,sp
      004065 24 F9            [12] 1975 	add	a,#0xf9
      004067 F5 81            [12] 1976 	mov	sp,a
      004069 D0 01            [24] 1977 	pop	ar1
      00406B D0 02            [24] 1978 	pop	ar2
      00406D D0 03            [24] 1979 	pop	ar3
      00406F D0 04            [24] 1980 	pop	ar4
      004071 D0 05            [24] 1981 	pop	ar5
      004073 D0 06            [24] 1982 	pop	ar6
      004075 D0 07            [24] 1983 	pop	ar7
                                   1984 ;	SPI.c:307: SPI_send(*data_ptr); // Send data
      004077 8B 82            [24] 1985 	mov	dpl,r3
      004079 8C 83            [24] 1986 	mov	dph,r4
      00407B 8D F0            [24] 1987 	mov	b,r5
      00407D 12 5B BA         [24] 1988 	lcall	__gptrget
      004080 FF               [12] 1989 	mov	r7,a
      004081 A3               [24] 1990 	inc	dptr
      004082 AB 82            [24] 1991 	mov	r3,dpl
      004084 AC 83            [24] 1992 	mov	r4,dph
      004086 8F 82            [24] 1993 	mov	dpl, r7
      004088 C0 07            [24] 1994 	push	ar7
      00408A C0 06            [24] 1995 	push	ar6
      00408C C0 05            [24] 1996 	push	ar5
      00408E C0 04            [24] 1997 	push	ar4
      004090 C0 03            [24] 1998 	push	ar3
      004092 C0 02            [24] 1999 	push	ar2
      004094 C0 01            [24] 2000 	push	ar1
      004096 12 39 EF         [24] 2001 	lcall	_SPI_send
      004099 D0 01            [24] 2002 	pop	ar1
      00409B D0 02            [24] 2003 	pop	ar2
      00409D D0 03            [24] 2004 	pop	ar3
      00409F D0 04            [24] 2005 	pop	ar4
      0040A1 D0 05            [24] 2006 	pop	ar5
      0040A3 D0 06            [24] 2007 	pop	ar6
      0040A5 D0 07            [24] 2008 	pop	ar7
                                   2009 ;	SPI.c:308: data_ptr++;
                                   2010 ;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
      0040A7 90 03 A5         [24] 2011 	mov	dptr,#_spi_buffer_write_i_20002_168
      0040AA E9               [12] 2012 	mov	a,r1
      0040AB F0               [24] 2013 	movx	@dptr,a
      0040AC EA               [12] 2014 	mov	a,r2
      0040AD A3               [24] 2015 	inc	dptr
      0040AE F0               [24] 2016 	movx	@dptr,a
      0040AF D0 07            [24] 2017 	pop	ar7
      0040B1 D0 06            [24] 2018 	pop	ar6
      0040B3 02 40 0F         [24] 2019 	ljmp	00109$
      0040B6                       2020 00107$:
                                   2021 ;	SPI.c:310: CS_HIGH; // Pull CS High
                                   2022 ;	assignBit
      0040B6 D2 91            [12] 2023 	setb	_P1_1
                                   2024 ;	SPI.c:311: }
      0040B8 22               [24] 2025 	ret
                                   2026 	.area CSEG    (CODE)
                                   2027 	.area CONST   (CODE)
                                   2028 	.area CONST   (CODE)
      006323                       2029 ___str_0:
      006323 77 72 6F 6E 67 20 62  2030 	.ascii "wrong bank"
             61 6E 6B
      00632D 00                    2031 	.db 0x00
                                   2032 	.area CSEG    (CODE)
                                   2033 	.area CONST   (CODE)
      00632E                       2034 ___str_1:
      00632E 57 72 69 74 65 3A 20  2035 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      006350 0A                    2036 	.db 0x0a
      006351 0D                    2037 	.db 0x0d
      006352 00                    2038 	.db 0x00
                                   2039 	.area CSEG    (CODE)
                                   2040 	.area CONST   (CODE)
      006353                       2041 ___str_2:
      006353 0A                    2042 	.db 0x0a
      006354 0D                    2043 	.db 0x0d
      006355 49 6E 76 61 6C 69 64  2044 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      00638A 0A                    2045 	.db 0x0a
      00638B 0D                    2046 	.db 0x0d
      00638C 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      00638D                       2050 ___str_3:
      00638D 52 65 61 64 3A 20 41  2051 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      0063AE 0A                    2052 	.db 0x0a
      0063AF 0D                    2053 	.db 0x0d
      0063B0 00                    2054 	.db 0x00
                                   2055 	.area CSEG    (CODE)
                                   2056 	.area CONST   (CODE)
      0063B1                       2057 ___str_4:
      0063B1 50 48 59 20 57 72 69  2058 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      0063D7 0A                    2059 	.db 0x0a
      0063D8 0D                    2060 	.db 0x0d
      0063D9 00                    2061 	.db 0x00
                                   2062 	.area CSEG    (CODE)
                                   2063 	.area CONST   (CODE)
      0063DA                       2064 ___str_5:
      0063DA 50 48 59 20 52 65 61  2065 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      0063FF 0A                    2066 	.db 0x0a
      006400 0D                    2067 	.db 0x0d
      006401 00                    2068 	.db 0x00
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
      006402                       2071 ___str_6:
      006402 0A                    2072 	.db 0x0a
      006403 0D                    2073 	.db 0x0d
      006404 49 6E 76 61 6C 69 64  2074 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      00643D 0A                    2075 	.db 0x0a
      00643E 0D                    2076 	.db 0x0d
      00643F 00                    2077 	.db 0x00
                                   2078 	.area CSEG    (CODE)
                                   2079 	.area CONST   (CODE)
      006440                       2080 ___str_7:
      006440 0A                    2081 	.db 0x0a
      006441 0D                    2082 	.db 0x0d
      006442 42 75 66 66 65 72 20  2083 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      00646E 0A                    2084 	.db 0x0a
      00646F 0D                    2085 	.db 0x0d
      006470 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      006471                       2089 ___str_8:
      006471 0A                    2090 	.db 0x0a
      006472 0D                    2091 	.db 0x0d
      006473 49 6E 76 61 6C 69 64  2092 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      00648E 0A                    2093 	.db 0x0a
      00648F 0D                    2094 	.db 0x0d
      006490 00                    2095 	.db 0x00
                                   2096 	.area CSEG    (CODE)
                                   2097 	.area CONST   (CODE)
      006491                       2098 ___str_9:
      006491 0A                    2099 	.db 0x0a
      006492 0D                    2100 	.db 0x0d
      006493 49 6E 76 61 6C 69 64  2101 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      0064A8 0A                    2102 	.db 0x0a
      0064A9 0D                    2103 	.db 0x0d
      0064AA 00                    2104 	.db 0x00
                                   2105 	.area CSEG    (CODE)
                                   2106 	.area CONST   (CODE)
      0064AB                       2107 ___str_10:
      0064AB 0A                    2108 	.db 0x0a
      0064AC 49 6E 76 61 6C 69 64  2109 	.ascii "Invalid RX Address: Start 0x%04X, Size %d"
             20 52 58 20 41 64 64
             72 65 73 73 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 53
             69 7A 65 20 25 64
      0064D5 0A                    2110 	.db 0x0a
      0064D6 00                    2111 	.db 0x00
                                   2112 	.area CSEG    (CODE)
                                   2113 	.area CONST   (CODE)
      0064D7                       2114 ___str_11:
      0064D7 52 65 61 64 69 6E 67  2115 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      00650F 0A                    2116 	.db 0x0a
      006510 0D                    2117 	.db 0x0d
      006511 00                    2118 	.db 0x00
                                   2119 	.area CSEG    (CODE)
                                   2120 	.area CONST   (CODE)
      006512                       2121 ___str_12:
      006512 42 79 74 65 20 25 64  2122 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      006521 0A                    2123 	.db 0x0a
      006522 0D                    2124 	.db 0x0d
      006523 00                    2125 	.db 0x00
                                   2126 	.area CSEG    (CODE)
                                   2127 	.area CONST   (CODE)
      006524                       2128 ___str_13:
      006524 57 72 69 74 69 6E 67  2129 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      00655A 0A                    2130 	.db 0x0a
      00655B 0D                    2131 	.db 0x0d
      00655C 00                    2132 	.db 0x00
                                   2133 	.area CSEG    (CODE)
                                   2134 	.area XINIT   (CODE)
                                   2135 	.area CABS    (ABS,CODE)

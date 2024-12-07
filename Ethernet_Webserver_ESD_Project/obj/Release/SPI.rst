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
      0038D5                        591 _SPI_ReadByte:
                           000007   592 	ar7 = 0x07
                           000006   593 	ar6 = 0x06
                           000005   594 	ar5 = 0x05
                           000004   595 	ar4 = 0x04
                           000003   596 	ar3 = 0x03
                           000002   597 	ar2 = 0x02
                           000001   598 	ar1 = 0x01
                           000000   599 	ar0 = 0x00
                                    600 ;	SPI.c:9: SPDAT = 0xFF;
      0038D5 75 C5 FF         [24]  601 	mov	_SPDAT,#0xff
                                    602 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      0038D8                        603 00101$:
      0038D8 E5 C4            [12]  604 	mov	a,_SPSTA
      0038DA 30 E7 FB         [24]  605 	jnb	acc.7,00101$
                                    606 ;	SPI.c:17: received_data = SPDAT;
      0038DD 90 03 81         [24]  607 	mov	dptr,#_SPI_ReadByte_received_data_10000_113
      0038E0 E5 C5            [12]  608 	mov	a,_SPDAT
      0038E2 F0               [24]  609 	movx	@dptr,a
                                    610 ;	SPI.c:19: return received_data;
      0038E3 E0               [24]  611 	movx	a,@dptr
                                    612 ;	SPI.c:20: }
      0038E4 F5 82            [12]  613 	mov	dpl,a
      0038E6 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    617 ;------------------------------------------------------------
                                    618 ;	SPI.c:22: void spi_set_autoinc(void)
                                    619 ;	-----------------------------------------
                                    620 ;	 function spi_set_autoinc
                                    621 ;	-----------------------------------------
      0038E7                        622 _spi_set_autoinc:
                                    623 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    624 ;	assignBit
      0038E7 C2 91            [12]  625 	clr	_P1_1
                                    626 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      0038E9 75 82 5E         [24]  627 	mov	dpl, #0x5e
      0038EC 12 39 E8         [24]  628 	lcall	_SPI_send
                                    629 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      0038EF 75 82 80         [24]  630 	mov	dpl, #0x80
      0038F2 12 39 E8         [24]  631 	lcall	_SPI_send
                                    632 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    633 ;	assignBit
      0038F5 D2 91            [12]  634 	setb	_P1_1
                                    635 ;	SPI.c:30: }
      0038F7 22               [24]  636 	ret
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
      0038F8                        648 _select_reg_bank:
      0038F8 E5 82            [12]  649 	mov	a,dpl
      0038FA 90 03 82         [24]  650 	mov	dptr,#_select_reg_bank_bank_10000_117
      0038FD F0               [24]  651 	movx	@dptr,a
                                    652 ;	SPI.c:35: CS_LOW;
                                    653 ;	assignBit
      0038FE C2 91            [12]  654 	clr	_P1_1
                                    655 ;	SPI.c:36: SPI_send(0X1F); // Send the address
      003900 75 82 1F         [24]  656 	mov	dpl, #0x1f
      003903 12 39 E8         [24]  657 	lcall	_SPI_send
                                    658 ;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
      003906 12 38 D5         [24]  659 	lcall	_SPI_ReadByte
      003909 AF 82            [24]  660 	mov	r7, dpl
                                    661 ;	SPI.c:38: CS_HIGH;
                                    662 ;	assignBit
      00390B D2 91            [12]  663 	setb	_P1_1
                                    664 ;	SPI.c:41: data &= ~0x03; // Clear the last two bits
      00390D 53 07 FC         [24]  665 	anl	ar7,#0xfc
                                    666 ;	SPI.c:42: switch (bank)
      003910 90 03 82         [24]  667 	mov	dptr,#_select_reg_bank_bank_10000_117
      003913 E0               [24]  668 	movx	a,@dptr
      003914 FE               [12]  669 	mov  r6,a
      003915 24 FC            [12]  670 	add	a,#0xff - 0x03
      003917 40 30            [24]  671 	jc	00105$
      003919 EE               [12]  672 	mov	a,r6
      00391A 2E               [12]  673 	add	a,r6
                                    674 ;	SPI.c:44: case 0:
      00391B 90 39 1F         [24]  675 	mov	dptr,#00133$
      00391E 73               [24]  676 	jmp	@a+dptr
      00391F                        677 00133$:
      00391F 80 06            [24]  678 	sjmp	00101$
      003921 80 0B            [24]  679 	sjmp	00102$
      003923 80 12            [24]  680 	sjmp	00103$
      003925 80 19            [24]  681 	sjmp	00104$
      003927                        682 00101$:
                                    683 ;	SPI.c:45: data |= 0x00; // Last two bits: 00
      003927 90 03 83         [24]  684 	mov	dptr,#_select_reg_bank_data_10001_119
      00392A EF               [12]  685 	mov	a,r7
      00392B F0               [24]  686 	movx	@dptr,a
                                    687 ;	SPI.c:46: break;
                                    688 ;	SPI.c:47: case 1:
      00392C 80 31            [24]  689 	sjmp	00115$
      00392E                        690 00102$:
                                    691 ;	SPI.c:48: data |= 0x01; // Last two bits: 01
      00392E 90 03 83         [24]  692 	mov	dptr,#_select_reg_bank_data_10001_119
      003931 74 01            [12]  693 	mov	a,#0x01
      003933 4F               [12]  694 	orl	a,r7
      003934 F0               [24]  695 	movx	@dptr,a
                                    696 ;	SPI.c:49: break;
                                    697 ;	SPI.c:50: case 2:
      003935 80 28            [24]  698 	sjmp	00115$
      003937                        699 00103$:
                                    700 ;	SPI.c:51: data |= 0x02; // Last two bits: 10
      003937 90 03 83         [24]  701 	mov	dptr,#_select_reg_bank_data_10001_119
      00393A 74 02            [12]  702 	mov	a,#0x02
      00393C 4F               [12]  703 	orl	a,r7
      00393D F0               [24]  704 	movx	@dptr,a
                                    705 ;	SPI.c:52: break;
                                    706 ;	SPI.c:53: case 3:
      00393E 80 1F            [24]  707 	sjmp	00115$
      003940                        708 00104$:
                                    709 ;	SPI.c:54: data |= 0x03; // Last two bits: 11
      003940 90 03 83         [24]  710 	mov	dptr,#_select_reg_bank_data_10001_119
      003943 74 03            [12]  711 	mov	a,#0x03
      003945 4F               [12]  712 	orl	a,r7
      003946 F0               [24]  713 	movx	@dptr,a
                                    714 ;	SPI.c:55: break;
                                    715 ;	SPI.c:56: default:
      003947 80 16            [24]  716 	sjmp	00115$
      003949                        717 00105$:
                                    718 ;	SPI.c:57: printf("wrong bank");
      003949 74 94            [12]  719 	mov	a,#___str_0
      00394B C0 E0            [24]  720 	push	acc
      00394D 74 62            [12]  721 	mov	a,#(___str_0 >> 8)
      00394F C0 E0            [24]  722 	push	acc
      003951 74 80            [12]  723 	mov	a,#0x80
      003953 C0 E0            [24]  724 	push	acc
      003955 12 51 09         [24]  725 	lcall	_printf
      003958 15 81            [12]  726 	dec	sp
      00395A 15 81            [12]  727 	dec	sp
      00395C 15 81            [12]  728 	dec	sp
                                    729 ;	SPI.c:58: return;
                                    730 ;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
      00395E 22               [24]  731 	ret
      00395F                        732 00115$:
      00395F 7F 00            [12]  733 	mov	r7,#0x00
      003961                        734 00109$:
      003961 BF 10 00         [24]  735 	cjne	r7,#0x10,00134$
      003964                        736 00134$:
      003964 50 03            [24]  737 	jnc	00107$
      003966 0F               [12]  738 	inc	r7
      003967 80 F8            [24]  739 	sjmp	00109$
      003969                        740 00107$:
                                    741 ;	SPI.c:63: CS_LOW;
                                    742 ;	assignBit
      003969 C2 91            [12]  743 	clr	_P1_1
                                    744 ;	SPI.c:64: SPI_send(0x5F);
      00396B 75 82 5F         [24]  745 	mov	dpl, #0x5f
      00396E 12 39 E8         [24]  746 	lcall	_SPI_send
                                    747 ;	SPI.c:65: SPI_send(data); // Send the modified data
      003971 90 03 83         [24]  748 	mov	dptr,#_select_reg_bank_data_10001_119
      003974 E0               [24]  749 	movx	a,@dptr
      003975 F5 82            [12]  750 	mov	dpl,a
      003977 12 39 E8         [24]  751 	lcall	_SPI_send
                                    752 ;	SPI.c:66: CS_HIGH;
                                    753 ;	assignBit
      00397A D2 91            [12]  754 	setb	_P1_1
                                    755 ;	SPI.c:68: }
      00397C 22               [24]  756 	ret
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
      00397D                        769 _spi_control_write:
      00397D E5 82            [12]  770 	mov	a,dpl
      00397F 90 03 86         [24]  771 	mov	dptr,#_spi_control_write_reg_bank_10000_122
      003982 F0               [24]  772 	movx	@dptr,a
                                    773 ;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
      003983 90 03 84         [24]  774 	mov	dptr,#_spi_control_write_PARM_2
      003986 E0               [24]  775 	movx	a,@dptr
      003987 24 40            [12]  776 	add	a, #0x40
      003989 F0               [24]  777 	movx	@dptr,a
                                    778 ;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
      00398A 90 03 86         [24]  779 	mov	dptr,#_spi_control_write_reg_bank_10000_122
      00398D E0               [24]  780 	movx	a,@dptr
      00398E F5 82            [12]  781 	mov	dpl,a
      003990 12 38 F8         [24]  782 	lcall	_select_reg_bank
                                    783 ;	SPI.c:77: CS_LOW;
                                    784 ;	assignBit
      003993 C2 91            [12]  785 	clr	_P1_1
                                    786 ;	SPI.c:80: SPI_send(addr);
      003995 90 03 84         [24]  787 	mov	dptr,#_spi_control_write_PARM_2
      003998 E0               [24]  788 	movx	a,@dptr
      003999 FF               [12]  789 	mov	r7,a
      00399A F5 82            [12]  790 	mov	dpl,a
      00399C C0 07            [24]  791 	push	ar7
      00399E 12 39 E8         [24]  792 	lcall	_SPI_send
      0039A1 D0 07            [24]  793 	pop	ar7
                                    794 ;	SPI.c:83: SPI_send(data);
      0039A3 90 03 85         [24]  795 	mov	dptr,#_spi_control_write_PARM_3
      0039A6 E0               [24]  796 	movx	a,@dptr
      0039A7 FE               [12]  797 	mov	r6,a
      0039A8 F5 82            [12]  798 	mov	dpl,a
      0039AA C0 07            [24]  799 	push	ar7
      0039AC C0 06            [24]  800 	push	ar6
      0039AE 12 39 E8         [24]  801 	lcall	_SPI_send
      0039B1 D0 06            [24]  802 	pop	ar6
      0039B3 D0 07            [24]  803 	pop	ar7
                                    804 ;	SPI.c:86: CS_HIGH;
                                    805 ;	assignBit
      0039B5 D2 91            [12]  806 	setb	_P1_1
                                    807 ;	SPI.c:89: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      0039B7 7D 00            [12]  808 	mov	r5,#0x00
      0039B9 7C 00            [12]  809 	mov	r4,#0x00
      0039BB C0 06            [24]  810 	push	ar6
      0039BD C0 05            [24]  811 	push	ar5
      0039BF C0 07            [24]  812 	push	ar7
      0039C1 C0 04            [24]  813 	push	ar4
      0039C3 74 9F            [12]  814 	mov	a,#___str_1
      0039C5 C0 E0            [24]  815 	push	acc
      0039C7 74 62            [12]  816 	mov	a,#(___str_1 >> 8)
      0039C9 C0 E0            [24]  817 	push	acc
      0039CB 74 80            [12]  818 	mov	a,#0x80
      0039CD C0 E0            [24]  819 	push	acc
      0039CF 12 51 09         [24]  820 	lcall	_printf
      0039D2 E5 81            [12]  821 	mov	a,sp
      0039D4 24 F9            [12]  822 	add	a,#0xf9
      0039D6 F5 81            [12]  823 	mov	sp,a
                                    824 ;	SPI.c:90: }
      0039D8 22               [24]  825 	ret
                                    826 ;------------------------------------------------------------
                                    827 ;Allocation info for local variables in function 'configure_SPI'
                                    828 ;------------------------------------------------------------
                                    829 ;	SPI.c:93: void configure_SPI(void)
                                    830 ;	-----------------------------------------
                                    831 ;	 function configure_SPI
                                    832 ;	-----------------------------------------
      0039D9                        833 _configure_SPI:
                                    834 ;	SPI.c:95: CS_PIN = 1;
                                    835 ;	assignBit
      0039D9 D2 91            [12]  836 	setb	_P1_1
                                    837 ;	SPI.c:96: SPCON = 0x00;
      0039DB 75 C3 00         [24]  838 	mov	_SPCON,#0x00
                                    839 ;	SPI.c:97: SPCON |= SS_DISABLE;
      0039DE 43 C3 20         [24]  840 	orl	_SPCON,#0x20
                                    841 ;	SPI.c:98: SPCON |= MASTER_MODE;
      0039E1 43 C3 10         [24]  842 	orl	_SPCON,#0x10
                                    843 ;	SPI.c:99: SPCON |= SPI_ENABLE;
      0039E4 43 C3 40         [24]  844 	orl	_SPCON,#0x40
                                    845 ;	SPI.c:100: }
      0039E7 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'SPI_send'
                                    849 ;------------------------------------------------------------
                                    850 ;data                      Allocated with name '_SPI_send_data_10000_126'
                                    851 ;------------------------------------------------------------
                                    852 ;	SPI.c:103: void SPI_send(uint8_t data)
                                    853 ;	-----------------------------------------
                                    854 ;	 function SPI_send
                                    855 ;	-----------------------------------------
      0039E8                        856 _SPI_send:
      0039E8 E5 82            [12]  857 	mov	a,dpl
      0039EA 90 03 87         [24]  858 	mov	dptr,#_SPI_send_data_10000_126
      0039ED F0               [24]  859 	movx	@dptr,a
                                    860 ;	SPI.c:106: SPDAT = data;           // Config + MSB of data
      0039EE E0               [24]  861 	movx	a,@dptr
      0039EF F5 C5            [12]  862 	mov	_SPDAT,a
                                    863 ;	SPI.c:108: while (!(SPSTA & 0x80))
      0039F1                        864 00101$:
      0039F1 E5 C4            [12]  865 	mov	a,_SPSTA
      0039F3 30 E7 FB         [24]  866 	jnb	acc.7,00101$
                                    867 ;	SPI.c:113: }
      0039F6 22               [24]  868 	ret
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'enc_reset'
                                    871 ;------------------------------------------------------------
                                    872 ;	SPI.c:115: void enc_reset(void)
                                    873 ;	-----------------------------------------
                                    874 ;	 function enc_reset
                                    875 ;	-----------------------------------------
      0039F7                        876 _enc_reset:
                                    877 ;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    878 ;	assignBit
      0039F7 C2 91            [12]  879 	clr	_P1_1
                                    880 ;	SPI.c:118: SPI_send(0xFF);            // Send reset command
      0039F9 75 82 FF         [24]  881 	mov	dpl, #0xff
      0039FC 12 39 E8         [24]  882 	lcall	_SPI_send
                                    883 ;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    884 ;	assignBit
      0039FF D2 91            [12]  885 	setb	_P1_1
                                    886 ;	SPI.c:120: }
      003A01 22               [24]  887 	ret
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
      003A02                        899 _eth_spi_read:
      003A02 E5 82            [12]  900 	mov	a,dpl
      003A04 90 03 89         [24]  901 	mov	dptr,#_eth_spi_read_addr_10000_131
      003A07 F0               [24]  902 	movx	@dptr,a
                                    903 ;	SPI.c:124: if (addr > 0x1F) {
      003A08 E0               [24]  904 	movx	a,@dptr
      003A09 FF               [12]  905 	mov  r7,a
      003A0A 24 E0            [12]  906 	add	a,#0xff - 0x1f
      003A0C 50 19            [24]  907 	jnc	00102$
                                    908 ;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003A0E 74 C4            [12]  909 	mov	a,#___str_2
      003A10 C0 E0            [24]  910 	push	acc
      003A12 74 62            [12]  911 	mov	a,#(___str_2 >> 8)
      003A14 C0 E0            [24]  912 	push	acc
      003A16 74 80            [12]  913 	mov	a,#0x80
      003A18 C0 E0            [24]  914 	push	acc
      003A1A 12 51 09         [24]  915 	lcall	_printf
      003A1D 15 81            [12]  916 	dec	sp
      003A1F 15 81            [12]  917 	dec	sp
      003A21 15 81            [12]  918 	dec	sp
                                    919 ;	SPI.c:126: return 0;
      003A23 75 82 00         [24]  920 	mov	dpl, #0x00
      003A26 22               [24]  921 	ret
      003A27                        922 00102$:
                                    923 ;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
      003A27 90 03 88         [24]  924 	mov	dptr,#_eth_spi_read_PARM_2
      003A2A E0               [24]  925 	movx	a,@dptr
      003A2B F5 82            [12]  926 	mov	dpl,a
      003A2D C0 07            [24]  927 	push	ar7
      003A2F 12 38 F8         [24]  928 	lcall	_select_reg_bank
      003A32 D0 07            [24]  929 	pop	ar7
                                    930 ;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
                                    931 ;	assignBit
      003A34 C2 91            [12]  932 	clr	_P1_1
                                    933 ;	SPI.c:132: SPI_send(addr);            // Send the address
      003A36 8F 82            [24]  934 	mov	dpl, r7
      003A38 C0 07            [24]  935 	push	ar7
      003A3A 12 39 E8         [24]  936 	lcall	_SPI_send
                                    937 ;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
      003A3D 12 38 D5         [24]  938 	lcall	_SPI_ReadByte
      003A40 AE 82            [24]  939 	mov	r6, dpl
      003A42 D0 07            [24]  940 	pop	ar7
                                    941 ;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
                                    942 ;	assignBit
      003A44 D2 91            [12]  943 	setb	_P1_1
                                    944 ;	SPI.c:137: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      003A46 8E 04            [24]  945 	mov	ar4,r6
      003A48 7D 00            [12]  946 	mov	r5,#0x00
      003A4A 7B 00            [12]  947 	mov	r3,#0x00
      003A4C C0 06            [24]  948 	push	ar6
      003A4E C0 04            [24]  949 	push	ar4
      003A50 C0 05            [24]  950 	push	ar5
      003A52 C0 07            [24]  951 	push	ar7
      003A54 C0 03            [24]  952 	push	ar3
      003A56 74 FE            [12]  953 	mov	a,#___str_3
      003A58 C0 E0            [24]  954 	push	acc
      003A5A 74 62            [12]  955 	mov	a,#(___str_3 >> 8)
      003A5C C0 E0            [24]  956 	push	acc
      003A5E 74 80            [12]  957 	mov	a,#0x80
      003A60 C0 E0            [24]  958 	push	acc
      003A62 12 51 09         [24]  959 	lcall	_printf
      003A65 E5 81            [12]  960 	mov	a,sp
      003A67 24 F9            [12]  961 	add	a,#0xf9
      003A69 F5 81            [12]  962 	mov	sp,a
      003A6B D0 06            [24]  963 	pop	ar6
                                    964 ;	SPI.c:139: return data;
      003A6D 8E 82            [24]  965 	mov	dpl, r6
                                    966 ;	SPI.c:140: }
      003A6F 22               [24]  967 	ret
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
      003A70                        978 _phy_spi_write:
      003A70 E5 82            [12]  979 	mov	a,dpl
      003A72 90 03 8C         [24]  980 	mov	dptr,#_phy_spi_write_addr_10000_135
      003A75 F0               [24]  981 	movx	@dptr,a
                                    982 ;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
      003A76 E0               [24]  983 	movx	a,@dptr
      003A77 FF               [12]  984 	mov	r7,a
      003A78 90 03 84         [24]  985 	mov	dptr,#_spi_control_write_PARM_2
      003A7B 74 14            [12]  986 	mov	a,#0x14
      003A7D F0               [24]  987 	movx	@dptr,a
      003A7E 90 03 85         [24]  988 	mov	dptr,#_spi_control_write_PARM_3
      003A81 EF               [12]  989 	mov	a,r7
      003A82 F0               [24]  990 	movx	@dptr,a
      003A83 75 82 02         [24]  991 	mov	dpl, #0x02
      003A86 C0 07            [24]  992 	push	ar7
      003A88 12 39 7D         [24]  993 	lcall	_spi_control_write
      003A8B D0 07            [24]  994 	pop	ar7
                                    995 ;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      003A8D 90 03 8A         [24]  996 	mov	dptr,#_phy_spi_write_PARM_2
      003A90 E0               [24]  997 	movx	a,@dptr
      003A91 FD               [12]  998 	mov	r5,a
      003A92 A3               [24]  999 	inc	dptr
      003A93 E0               [24] 1000 	movx	a,@dptr
      003A94 FE               [12] 1001 	mov	r6,a
      003A95 8D 04            [24] 1002 	mov	ar4,r5
      003A97 90 03 84         [24] 1003 	mov	dptr,#_spi_control_write_PARM_2
      003A9A 74 16            [12] 1004 	mov	a,#0x16
      003A9C F0               [24] 1005 	movx	@dptr,a
      003A9D 90 03 85         [24] 1006 	mov	dptr,#_spi_control_write_PARM_3
      003AA0 EC               [12] 1007 	mov	a,r4
      003AA1 F0               [24] 1008 	movx	@dptr,a
      003AA2 75 82 02         [24] 1009 	mov	dpl, #0x02
      003AA5 C0 07            [24] 1010 	push	ar7
      003AA7 C0 06            [24] 1011 	push	ar6
      003AA9 C0 05            [24] 1012 	push	ar5
      003AAB 12 39 7D         [24] 1013 	lcall	_spi_control_write
      003AAE D0 05            [24] 1014 	pop	ar5
      003AB0 D0 06            [24] 1015 	pop	ar6
      003AB2 D0 07            [24] 1016 	pop	ar7
                                   1017 ;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      003AB4 8E 04            [24] 1018 	mov	ar4,r6
      003AB6 90 03 84         [24] 1019 	mov	dptr,#_spi_control_write_PARM_2
      003AB9 74 17            [12] 1020 	mov	a,#0x17
      003ABB F0               [24] 1021 	movx	@dptr,a
      003ABC 90 03 85         [24] 1022 	mov	dptr,#_spi_control_write_PARM_3
      003ABF EC               [12] 1023 	mov	a,r4
      003AC0 F0               [24] 1024 	movx	@dptr,a
      003AC1 75 82 02         [24] 1025 	mov	dpl, #0x02
      003AC4 C0 07            [24] 1026 	push	ar7
      003AC6 C0 06            [24] 1027 	push	ar6
      003AC8 C0 05            [24] 1028 	push	ar5
      003ACA 12 39 7D         [24] 1029 	lcall	_spi_control_write
      003ACD D0 05            [24] 1030 	pop	ar5
      003ACF D0 06            [24] 1031 	pop	ar6
      003AD1 D0 07            [24] 1032 	pop	ar7
                                   1033 ;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003AD3 7C 00            [12] 1034 	mov	r4,#0x00
      003AD5 C0 05            [24] 1035 	push	ar5
      003AD7 C0 06            [24] 1036 	push	ar6
      003AD9 C0 07            [24] 1037 	push	ar7
      003ADB C0 04            [24] 1038 	push	ar4
      003ADD 74 22            [12] 1039 	mov	a,#___str_4
      003ADF C0 E0            [24] 1040 	push	acc
      003AE1 74 63            [12] 1041 	mov	a,#(___str_4 >> 8)
      003AE3 C0 E0            [24] 1042 	push	acc
      003AE5 74 80            [12] 1043 	mov	a,#0x80
      003AE7 C0 E0            [24] 1044 	push	acc
      003AE9 12 51 09         [24] 1045 	lcall	_printf
      003AEC E5 81            [12] 1046 	mov	a,sp
      003AEE 24 F9            [12] 1047 	add	a,#0xf9
      003AF0 F5 81            [12] 1048 	mov	sp,a
                                   1049 ;	SPI.c:150: }
      003AF2 22               [24] 1050 	ret
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
      003AF3                       1062 _mac_spi_read:
      003AF3 E5 82            [12] 1063 	mov	a,dpl
      003AF5 90 03 8E         [24] 1064 	mov	dptr,#_mac_spi_read_addr_10000_137
      003AF8 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	SPI.c:154: if (addr > 0x1F) {
      003AF9 E0               [24] 1067 	movx	a,@dptr
      003AFA FF               [12] 1068 	mov  r7,a
      003AFB 24 E0            [12] 1069 	add	a,#0xff - 0x1f
      003AFD 50 19            [24] 1070 	jnc	00102$
                                   1071 ;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003AFF 74 C4            [12] 1072 	mov	a,#___str_2
      003B01 C0 E0            [24] 1073 	push	acc
      003B03 74 62            [12] 1074 	mov	a,#(___str_2 >> 8)
      003B05 C0 E0            [24] 1075 	push	acc
      003B07 74 80            [12] 1076 	mov	a,#0x80
      003B09 C0 E0            [24] 1077 	push	acc
      003B0B 12 51 09         [24] 1078 	lcall	_printf
      003B0E 15 81            [12] 1079 	dec	sp
      003B10 15 81            [12] 1080 	dec	sp
      003B12 15 81            [12] 1081 	dec	sp
                                   1082 ;	SPI.c:156: return 0; // Return 0 if address is invalid
      003B14 75 82 00         [24] 1083 	mov	dpl, #0x00
      003B17 22               [24] 1084 	ret
      003B18                       1085 00102$:
                                   1086 ;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
      003B18 90 03 8D         [24] 1087 	mov	dptr,#_mac_spi_read_PARM_2
      003B1B E0               [24] 1088 	movx	a,@dptr
      003B1C F5 82            [12] 1089 	mov	dpl,a
      003B1E C0 07            [24] 1090 	push	ar7
      003B20 12 38 F8         [24] 1091 	lcall	_select_reg_bank
      003B23 D0 07            [24] 1092 	pop	ar7
                                   1093 ;	SPI.c:162: CS_LOW;
                                   1094 ;	assignBit
      003B25 C2 91            [12] 1095 	clr	_P1_1
                                   1096 ;	SPI.c:165: SPI_send(addr);
      003B27 8F 82            [24] 1097 	mov	dpl, r7
      003B29 12 39 E8         [24] 1098 	lcall	_SPI_send
                                   1099 ;	SPI.c:168: uint8_t data = SPI_ReadByte();
      003B2C 12 38 D5         [24] 1100 	lcall	_SPI_ReadByte
      003B2F AF 82            [24] 1101 	mov	r7, dpl
                                   1102 ;	SPI.c:171: CS_HIGH;
                                   1103 ;	assignBit
      003B31 D2 91            [12] 1104 	setb	_P1_1
                                   1105 ;	SPI.c:176: return data;
      003B33 8F 82            [24] 1106 	mov	dpl, r7
                                   1107 ;	SPI.c:177: }
      003B35 22               [24] 1108 	ret
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
      003B36                       1121 _phy_spi_read:
      003B36 E5 82            [12] 1122 	mov	a,dpl
      003B38 90 03 8F         [24] 1123 	mov	dptr,#_phy_spi_read_addr_10000_141
      003B3B F0               [24] 1124 	movx	@dptr,a
                                   1125 ;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
      003B3C E0               [24] 1126 	movx	a,@dptr
      003B3D FF               [12] 1127 	mov	r7,a
      003B3E 90 03 84         [24] 1128 	mov	dptr,#_spi_control_write_PARM_2
      003B41 74 14            [12] 1129 	mov	a,#0x14
      003B43 F0               [24] 1130 	movx	@dptr,a
      003B44 90 03 85         [24] 1131 	mov	dptr,#_spi_control_write_PARM_3
      003B47 EF               [12] 1132 	mov	a,r7
      003B48 F0               [24] 1133 	movx	@dptr,a
      003B49 75 82 02         [24] 1134 	mov	dpl, #0x02
      003B4C C0 07            [24] 1135 	push	ar7
      003B4E 12 39 7D         [24] 1136 	lcall	_spi_control_write
      003B51 D0 07            [24] 1137 	pop	ar7
                                   1138 ;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      003B53 90 03 84         [24] 1139 	mov	dptr,#_spi_control_write_PARM_2
      003B56 74 12            [12] 1140 	mov	a,#0x12
      003B58 F0               [24] 1141 	movx	@dptr,a
      003B59 90 03 85         [24] 1142 	mov	dptr,#_spi_control_write_PARM_3
      003B5C 74 01            [12] 1143 	mov	a,#0x01
      003B5E F0               [24] 1144 	movx	@dptr,a
      003B5F 75 82 02         [24] 1145 	mov	dpl, #0x02
      003B62 C0 07            [24] 1146 	push	ar7
      003B64 12 39 7D         [24] 1147 	lcall	_spi_control_write
                                   1148 ;	SPI.c:185: busy_wait();                          // Wait for the read to complete
      003B67 12 3B E3         [24] 1149 	lcall	_busy_wait
      003B6A D0 07            [24] 1150 	pop	ar7
                                   1151 ;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      003B6C 90 03 84         [24] 1152 	mov	dptr,#_spi_control_write_PARM_2
      003B6F 74 12            [12] 1153 	mov	a,#0x12
      003B71 F0               [24] 1154 	movx	@dptr,a
      003B72 90 03 85         [24] 1155 	mov	dptr,#_spi_control_write_PARM_3
      003B75 E4               [12] 1156 	clr	a
      003B76 F0               [24] 1157 	movx	@dptr,a
      003B77 75 82 02         [24] 1158 	mov	dpl, #0x02
      003B7A C0 07            [24] 1159 	push	ar7
      003B7C 12 39 7D         [24] 1160 	lcall	_spi_control_write
      003B7F D0 07            [24] 1161 	pop	ar7
                                   1162 ;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      003B81 90 03 8D         [24] 1163 	mov	dptr,#_mac_spi_read_PARM_2
      003B84 74 02            [12] 1164 	mov	a,#0x02
      003B86 F0               [24] 1165 	movx	@dptr,a
      003B87 75 82 18         [24] 1166 	mov	dpl, #0x18
      003B8A C0 07            [24] 1167 	push	ar7
      003B8C 12 3A F3         [24] 1168 	lcall	_mac_spi_read
      003B8F AE 82            [24] 1169 	mov	r6, dpl
      003B91 D0 07            [24] 1170 	pop	ar7
      003B93 7D 00            [12] 1171 	mov	r5,#0x00
                                   1172 ;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003B95 90 03 8D         [24] 1173 	mov	dptr,#_mac_spi_read_PARM_2
      003B98 74 02            [12] 1174 	mov	a,#0x02
      003B9A F0               [24] 1175 	movx	@dptr,a
      003B9B 75 82 19         [24] 1176 	mov	dpl, #0x19
      003B9E C0 07            [24] 1177 	push	ar7
      003BA0 C0 06            [24] 1178 	push	ar6
      003BA2 C0 05            [24] 1179 	push	ar5
      003BA4 12 3A F3         [24] 1180 	lcall	_mac_spi_read
      003BA7 AC 82            [24] 1181 	mov	r4, dpl
      003BA9 D0 05            [24] 1182 	pop	ar5
      003BAB D0 06            [24] 1183 	pop	ar6
      003BAD D0 07            [24] 1184 	pop	ar7
                                   1185 ;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      003BAF 8C 03            [24] 1186 	mov	ar3,r4
      003BB1 E4               [12] 1187 	clr	a
      003BB2 42 06            [12] 1188 	orl	ar6,a
      003BB4 EB               [12] 1189 	mov	a,r3
      003BB5 42 05            [12] 1190 	orl	ar5,a
                                   1191 ;	SPI.c:195: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003BB7 7C 00            [12] 1192 	mov	r4,#0x00
      003BB9 C0 06            [24] 1193 	push	ar6
      003BBB C0 05            [24] 1194 	push	ar5
      003BBD C0 06            [24] 1195 	push	ar6
      003BBF C0 05            [24] 1196 	push	ar5
      003BC1 C0 07            [24] 1197 	push	ar7
      003BC3 C0 04            [24] 1198 	push	ar4
      003BC5 74 4B            [12] 1199 	mov	a,#___str_5
      003BC7 C0 E0            [24] 1200 	push	acc
      003BC9 74 63            [12] 1201 	mov	a,#(___str_5 >> 8)
      003BCB C0 E0            [24] 1202 	push	acc
      003BCD 74 80            [12] 1203 	mov	a,#0x80
      003BCF C0 E0            [24] 1204 	push	acc
      003BD1 12 51 09         [24] 1205 	lcall	_printf
      003BD4 E5 81            [12] 1206 	mov	a,sp
      003BD6 24 F9            [12] 1207 	add	a,#0xf9
      003BD8 F5 81            [12] 1208 	mov	sp,a
      003BDA D0 05            [24] 1209 	pop	ar5
      003BDC D0 06            [24] 1210 	pop	ar6
                                   1211 ;	SPI.c:197: return data;        // Combine MSB and LSB
      003BDE 8E 82            [24] 1212 	mov	dpl, r6
      003BE0 8D 83            [24] 1213 	mov	dph, r5
                                   1214 ;	SPI.c:198: }
      003BE2 22               [24] 1215 	ret
                                   1216 ;------------------------------------------------------------
                                   1217 ;Allocation info for local variables in function 'busy_wait'
                                   1218 ;------------------------------------------------------------
                                   1219 ;data                      Allocated with name '_busy_wait_data_10000_145'
                                   1220 ;------------------------------------------------------------
                                   1221 ;	SPI.c:200: void busy_wait(void)
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function busy_wait
                                   1224 ;	-----------------------------------------
      003BE3                       1225 _busy_wait:
                                   1226 ;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      003BE3 90 03 8D         [24] 1227 	mov	dptr,#_mac_spi_read_PARM_2
      003BE6 74 03            [12] 1228 	mov	a,#0x03
      003BE8 F0               [24] 1229 	movx	@dptr,a
      003BE9 75 82 0A         [24] 1230 	mov	dpl, #0x0a
      003BEC 12 3A F3         [24] 1231 	lcall	_mac_spi_read
      003BEF E5 82            [12] 1232 	mov	a, dpl
      003BF1 90 03 90         [24] 1233 	mov	dptr,#_busy_wait_data_10000_145
      003BF4 F0               [24] 1234 	movx	@dptr,a
                                   1235 ;	SPI.c:203: while (data & 0x01)
      003BF5                       1236 00101$:
      003BF5 90 03 90         [24] 1237 	mov	dptr,#_busy_wait_data_10000_145
      003BF8 E0               [24] 1238 	movx	a,@dptr
      003BF9 30 E0 14         [24] 1239 	jnb	acc.0,00104$
                                   1240 ;	SPI.c:205: data = mac_spi_read(0x0A, 3);
      003BFC 90 03 8D         [24] 1241 	mov	dptr,#_mac_spi_read_PARM_2
      003BFF 74 03            [12] 1242 	mov	a,#0x03
      003C01 F0               [24] 1243 	movx	@dptr,a
      003C02 75 82 0A         [24] 1244 	mov	dpl, #0x0a
      003C05 12 3A F3         [24] 1245 	lcall	_mac_spi_read
      003C08 E5 82            [12] 1246 	mov	a, dpl
      003C0A 90 03 90         [24] 1247 	mov	dptr,#_busy_wait_data_10000_145
      003C0D F0               [24] 1248 	movx	@dptr,a
      003C0E 80 E5            [24] 1249 	sjmp	00101$
      003C10                       1250 00104$:
                                   1251 ;	SPI.c:207: }
      003C10 22               [24] 1252 	ret
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
      003C11                       1265 _buffer_init:
      003C11 AF 83            [24] 1266 	mov	r7,dph
      003C13 E5 82            [12] 1267 	mov	a,dpl
      003C15 90 03 93         [24] 1268 	mov	dptr,#_buffer_init_start_address_10000_147
      003C18 F0               [24] 1269 	movx	@dptr,a
      003C19 EF               [12] 1270 	mov	a,r7
      003C1A A3               [24] 1271 	inc	dptr
      003C1B F0               [24] 1272 	movx	@dptr,a
                                   1273 ;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      003C1C 90 03 93         [24] 1274 	mov	dptr,#_buffer_init_start_address_10000_147
      003C1F E0               [24] 1275 	movx	a,@dptr
      003C20 FE               [12] 1276 	mov	r6,a
      003C21 A3               [24] 1277 	inc	dptr
      003C22 E0               [24] 1278 	movx	a,@dptr
      003C23 FF               [12] 1279 	mov	r7,a
      003C24 8E 04            [24] 1280 	mov	ar4,r6
      003C26 8F 05            [24] 1281 	mov	ar5,r7
      003C28 C3               [12] 1282 	clr	c
      003C29 74 FF            [12] 1283 	mov	a,#0xff
      003C2B 9C               [12] 1284 	subb	a,r4
      003C2C 74 1F            [12] 1285 	mov	a,#0x1f
      003C2E 9D               [12] 1286 	subb	a,r5
      003C2F 40 17            [24] 1287 	jc	00101$
      003C31 90 03 91         [24] 1288 	mov	dptr,#_buffer_init_PARM_2
      003C34 E0               [24] 1289 	movx	a,@dptr
      003C35 FA               [12] 1290 	mov	r2,a
      003C36 A3               [24] 1291 	inc	dptr
      003C37 E0               [24] 1292 	movx	a,@dptr
      003C38 FB               [12] 1293 	mov	r3,a
      003C39 EA               [12] 1294 	mov	a,r2
      003C3A 2E               [12] 1295 	add	a, r6
      003C3B F8               [12] 1296 	mov	r0,a
      003C3C EB               [12] 1297 	mov	a,r3
      003C3D 3F               [12] 1298 	addc	a, r7
      003C3E F9               [12] 1299 	mov	r1,a
      003C3F C3               [12] 1300 	clr	c
      003C40 74 FF            [12] 1301 	mov	a,#0xff
      003C42 98               [12] 1302 	subb	a,r0
      003C43 74 1F            [12] 1303 	mov	a,#0x1f
      003C45 99               [12] 1304 	subb	a,r1
      003C46 50 2A            [24] 1305 	jnc	00102$
      003C48                       1306 00101$:
                                   1307 ;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      003C48 90 03 91         [24] 1308 	mov	dptr,#_buffer_init_PARM_2
      003C4B E0               [24] 1309 	movx	a,@dptr
      003C4C C0 E0            [24] 1310 	push	acc
      003C4E A3               [24] 1311 	inc	dptr
      003C4F E0               [24] 1312 	movx	a,@dptr
      003C50 C0 E0            [24] 1313 	push	acc
      003C52 90 03 93         [24] 1314 	mov	dptr,#_buffer_init_start_address_10000_147
      003C55 E0               [24] 1315 	movx	a,@dptr
      003C56 C0 E0            [24] 1316 	push	acc
      003C58 A3               [24] 1317 	inc	dptr
      003C59 E0               [24] 1318 	movx	a,@dptr
      003C5A C0 E0            [24] 1319 	push	acc
      003C5C 74 73            [12] 1320 	mov	a,#___str_6
      003C5E C0 E0            [24] 1321 	push	acc
      003C60 74 63            [12] 1322 	mov	a,#(___str_6 >> 8)
      003C62 C0 E0            [24] 1323 	push	acc
      003C64 74 80            [12] 1324 	mov	a,#0x80
      003C66 C0 E0            [24] 1325 	push	acc
      003C68 12 51 09         [24] 1326 	lcall	_printf
      003C6B E5 81            [12] 1327 	mov	a,sp
      003C6D 24 F9            [12] 1328 	add	a,#0xf9
      003C6F F5 81            [12] 1329 	mov	sp,a
                                   1330 ;	SPI.c:213: return;
      003C71 22               [24] 1331 	ret
      003C72                       1332 00102$:
                                   1333 ;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      003C72 53 04 FE         [24] 1334 	anl	ar4,#0xfe
                                   1335 ;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      003C75 EA               [12] 1336 	mov	a,r2
      003C76 2E               [12] 1337 	add	a, r6
      003C77 FE               [12] 1338 	mov	r6,a
      003C78 EB               [12] 1339 	mov	a,r3
      003C79 3F               [12] 1340 	addc	a, r7
      003C7A FF               [12] 1341 	mov	r7,a
      003C7B 1E               [12] 1342 	dec	r6
      003C7C BE FF 01         [24] 1343 	cjne	r6,#0xff,00114$
      003C7F 1F               [12] 1344 	dec	r7
      003C80                       1345 00114$:
      003C80 53 06 FE         [24] 1346 	anl	ar6,#0xfe
                                   1347 ;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      003C83 8D 03            [24] 1348 	mov	ar3,r5
      003C85 90 03 84         [24] 1349 	mov	dptr,#_spi_control_write_PARM_2
      003C88 74 08            [12] 1350 	mov	a,#0x08
      003C8A F0               [24] 1351 	movx	@dptr,a
      003C8B 90 03 85         [24] 1352 	mov	dptr,#_spi_control_write_PARM_3
      003C8E EB               [12] 1353 	mov	a,r3
      003C8F F0               [24] 1354 	movx	@dptr,a
      003C90 75 82 00         [24] 1355 	mov	dpl, #0x00
      003C93 C0 07            [24] 1356 	push	ar7
      003C95 C0 06            [24] 1357 	push	ar6
      003C97 C0 05            [24] 1358 	push	ar5
      003C99 C0 04            [24] 1359 	push	ar4
      003C9B 12 39 7D         [24] 1360 	lcall	_spi_control_write
      003C9E D0 04            [24] 1361 	pop	ar4
      003CA0 D0 05            [24] 1362 	pop	ar5
      003CA2 D0 06            [24] 1363 	pop	ar6
      003CA4 D0 07            [24] 1364 	pop	ar7
                                   1365 ;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003CA6 8C 03            [24] 1366 	mov	ar3,r4
      003CA8 90 03 84         [24] 1367 	mov	dptr,#_spi_control_write_PARM_2
      003CAB 74 09            [12] 1368 	mov	a,#0x09
      003CAD F0               [24] 1369 	movx	@dptr,a
      003CAE 90 03 85         [24] 1370 	mov	dptr,#_spi_control_write_PARM_3
      003CB1 EB               [12] 1371 	mov	a,r3
      003CB2 F0               [24] 1372 	movx	@dptr,a
      003CB3 75 82 00         [24] 1373 	mov	dpl, #0x00
      003CB6 C0 07            [24] 1374 	push	ar7
      003CB8 C0 06            [24] 1375 	push	ar6
      003CBA C0 05            [24] 1376 	push	ar5
      003CBC C0 04            [24] 1377 	push	ar4
      003CBE 12 39 7D         [24] 1378 	lcall	_spi_control_write
      003CC1 D0 04            [24] 1379 	pop	ar4
      003CC3 D0 05            [24] 1380 	pop	ar5
      003CC5 D0 06            [24] 1381 	pop	ar6
      003CC7 D0 07            [24] 1382 	pop	ar7
                                   1383 ;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003CC9 8F 03            [24] 1384 	mov	ar3,r7
      003CCB 90 03 84         [24] 1385 	mov	dptr,#_spi_control_write_PARM_2
      003CCE 74 0A            [12] 1386 	mov	a,#0x0a
      003CD0 F0               [24] 1387 	movx	@dptr,a
      003CD1 90 03 85         [24] 1388 	mov	dptr,#_spi_control_write_PARM_3
      003CD4 EB               [12] 1389 	mov	a,r3
      003CD5 F0               [24] 1390 	movx	@dptr,a
      003CD6 75 82 00         [24] 1391 	mov	dpl, #0x00
      003CD9 C0 07            [24] 1392 	push	ar7
      003CDB C0 06            [24] 1393 	push	ar6
      003CDD C0 05            [24] 1394 	push	ar5
      003CDF C0 04            [24] 1395 	push	ar4
      003CE1 12 39 7D         [24] 1396 	lcall	_spi_control_write
      003CE4 D0 04            [24] 1397 	pop	ar4
      003CE6 D0 05            [24] 1398 	pop	ar5
      003CE8 D0 06            [24] 1399 	pop	ar6
      003CEA D0 07            [24] 1400 	pop	ar7
                                   1401 ;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      003CEC 8E 03            [24] 1402 	mov	ar3,r6
      003CEE 90 03 84         [24] 1403 	mov	dptr,#_spi_control_write_PARM_2
      003CF1 74 0B            [12] 1404 	mov	a,#0x0b
      003CF3 F0               [24] 1405 	movx	@dptr,a
      003CF4 90 03 85         [24] 1406 	mov	dptr,#_spi_control_write_PARM_3
      003CF7 EB               [12] 1407 	mov	a,r3
      003CF8 F0               [24] 1408 	movx	@dptr,a
      003CF9 75 82 00         [24] 1409 	mov	dpl, #0x00
      003CFC C0 07            [24] 1410 	push	ar7
      003CFE C0 06            [24] 1411 	push	ar6
      003D00 C0 05            [24] 1412 	push	ar5
      003D02 C0 04            [24] 1413 	push	ar4
      003D04 12 39 7D         [24] 1414 	lcall	_spi_control_write
      003D07 D0 04            [24] 1415 	pop	ar4
      003D09 D0 05            [24] 1416 	pop	ar5
      003D0B D0 06            [24] 1417 	pop	ar6
      003D0D D0 07            [24] 1418 	pop	ar7
                                   1419 ;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      003D0F C0 06            [24] 1420 	push	ar6
      003D11 C0 07            [24] 1421 	push	ar7
      003D13 C0 04            [24] 1422 	push	ar4
      003D15 C0 05            [24] 1423 	push	ar5
      003D17 74 B1            [12] 1424 	mov	a,#___str_7
      003D19 C0 E0            [24] 1425 	push	acc
      003D1B 74 63            [12] 1426 	mov	a,#(___str_7 >> 8)
      003D1D C0 E0            [24] 1427 	push	acc
      003D1F 74 80            [12] 1428 	mov	a,#0x80
      003D21 C0 E0            [24] 1429 	push	acc
      003D23 12 51 09         [24] 1430 	lcall	_printf
      003D26 E5 81            [12] 1431 	mov	a,sp
      003D28 24 F9            [12] 1432 	add	a,#0xf9
      003D2A F5 81            [12] 1433 	mov	sp,a
                                   1434 ;	SPI.c:229: }
      003D2C 22               [24] 1435 	ret
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
      003D2D                       1451 _spi_buffer_read:
      003D2D AF 83            [24] 1452 	mov	r7,dph
      003D2F E5 82            [12] 1453 	mov	a,dpl
      003D31 90 03 9A         [24] 1454 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003D34 F0               [24] 1455 	movx	@dptr,a
      003D35 EF               [12] 1456 	mov	a,r7
      003D36 A3               [24] 1457 	inc	dptr
      003D37 F0               [24] 1458 	movx	@dptr,a
                                   1459 ;	SPI.c:234: if (num_bytes < 1) {
      003D38 90 03 9A         [24] 1460 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003D3B E0               [24] 1461 	movx	a,@dptr
      003D3C FE               [12] 1462 	mov	r6,a
      003D3D A3               [24] 1463 	inc	dptr
      003D3E E0               [24] 1464 	movx	a,@dptr
      003D3F FF               [12] 1465 	mov	r7,a
      003D40 C3               [12] 1466 	clr	c
      003D41 EE               [12] 1467 	mov	a,r6
      003D42 94 01            [12] 1468 	subb	a,#0x01
      003D44 EF               [12] 1469 	mov	a,r7
      003D45 64 80            [12] 1470 	xrl	a,#0x80
      003D47 94 80            [12] 1471 	subb	a,#0x80
      003D49 50 1A            [24] 1472 	jnc	00102$
                                   1473 ;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003D4B C0 06            [24] 1474 	push	ar6
      003D4D C0 07            [24] 1475 	push	ar7
      003D4F 74 E2            [12] 1476 	mov	a,#___str_8
      003D51 C0 E0            [24] 1477 	push	acc
      003D53 74 63            [12] 1478 	mov	a,#(___str_8 >> 8)
      003D55 C0 E0            [24] 1479 	push	acc
      003D57 74 80            [12] 1480 	mov	a,#0x80
      003D59 C0 E0            [24] 1481 	push	acc
      003D5B 12 51 09         [24] 1482 	lcall	_printf
      003D5E E5 81            [12] 1483 	mov	a,sp
      003D60 24 FB            [12] 1484 	add	a,#0xfb
      003D62 F5 81            [12] 1485 	mov	sp,a
                                   1486 ;	SPI.c:236: return;
      003D64 22               [24] 1487 	ret
      003D65                       1488 00102$:
                                   1489 ;	SPI.c:238: if (start_address > 0x1FFF) {
      003D65 90 03 95         [24] 1490 	mov	dptr,#_spi_buffer_read_PARM_2
      003D68 E0               [24] 1491 	movx	a,@dptr
      003D69 FC               [12] 1492 	mov	r4,a
      003D6A A3               [24] 1493 	inc	dptr
      003D6B E0               [24] 1494 	movx	a,@dptr
      003D6C FD               [12] 1495 	mov	r5,a
      003D6D 8C 02            [24] 1496 	mov	ar2,r4
      003D6F 8D 03            [24] 1497 	mov	ar3,r5
      003D71 C3               [12] 1498 	clr	c
      003D72 74 FF            [12] 1499 	mov	a,#0xff
      003D74 9A               [12] 1500 	subb	a,r2
      003D75 74 1F            [12] 1501 	mov	a,#0x1f
      003D77 9B               [12] 1502 	subb	a,r3
      003D78 50 1A            [24] 1503 	jnc	00107$
                                   1504 ;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
      003D7A C0 04            [24] 1505 	push	ar4
      003D7C C0 05            [24] 1506 	push	ar5
      003D7E 74 02            [12] 1507 	mov	a,#___str_9
      003D80 C0 E0            [24] 1508 	push	acc
      003D82 74 64            [12] 1509 	mov	a,#(___str_9 >> 8)
      003D84 C0 E0            [24] 1510 	push	acc
      003D86 74 80            [12] 1511 	mov	a,#0x80
      003D88 C0 E0            [24] 1512 	push	acc
      003D8A 12 51 09         [24] 1513 	lcall	_printf
      003D8D E5 81            [12] 1514 	mov	a,sp
      003D8F 24 FB            [12] 1515 	add	a,#0xfb
      003D91 F5 81            [12] 1516 	mov	sp,a
                                   1517 ;	SPI.c:240: return;
      003D93 22               [24] 1518 	ret
                                   1519 ;	SPI.c:243: || (start_address + num_bytes) > RX_BUFFER_END) {
      003D94                       1520 00107$:
      003D94 8E 00            [24] 1521 	mov	ar0,r6
      003D96 8F 01            [24] 1522 	mov	ar1,r7
      003D98 E8               [12] 1523 	mov	a,r0
      003D99 2A               [12] 1524 	add	a, r2
      003D9A FA               [12] 1525 	mov	r2,a
      003D9B E9               [12] 1526 	mov	a,r1
      003D9C 3B               [12] 1527 	addc	a, r3
      003D9D FB               [12] 1528 	mov	r3,a
      003D9E C3               [12] 1529 	clr	c
      003D9F 74 FF            [12] 1530 	mov	a,#0xff
      003DA1 9A               [12] 1531 	subb	a,r2
      003DA2 74 0B            [12] 1532 	mov	a,#0x0b
      003DA4 9B               [12] 1533 	subb	a,r3
      003DA5 50 21            [24] 1534 	jnc	00106$
                                   1535 ;	SPI.c:244: printf("\nInvalid RX Address: Start 0x%04X, Size %d\n", start_address,
      003DA7 C0 06            [24] 1536 	push	ar6
      003DA9 C0 07            [24] 1537 	push	ar7
      003DAB C0 04            [24] 1538 	push	ar4
      003DAD C0 05            [24] 1539 	push	ar5
      003DAF 74 1C            [12] 1540 	mov	a,#___str_10
      003DB1 C0 E0            [24] 1541 	push	acc
      003DB3 74 64            [12] 1542 	mov	a,#(___str_10 >> 8)
      003DB5 C0 E0            [24] 1543 	push	acc
      003DB7 74 80            [12] 1544 	mov	a,#0x80
      003DB9 C0 E0            [24] 1545 	push	acc
      003DBB 12 51 09         [24] 1546 	lcall	_printf
      003DBE E5 81            [12] 1547 	mov	a,sp
      003DC0 24 F9            [12] 1548 	add	a,#0xf9
      003DC2 F5 81            [12] 1549 	mov	sp,a
                                   1550 ;	SPI.c:246: return 0;
      003DC4 90 00 00         [24] 1551 	mov	dptr,#0x0000
      003DC7 22               [24] 1552 	ret
      003DC8                       1553 00106$:
                                   1554 ;	SPI.c:249: if (num_bytes > 1) {
      003DC8 C3               [12] 1555 	clr	c
      003DC9 74 01            [12] 1556 	mov	a,#0x01
      003DCB 9E               [12] 1557 	subb	a,r6
      003DCC 74 80            [12] 1558 	mov	a,#(0x00 ^ 0x80)
      003DCE 8F F0            [24] 1559 	mov	b,r7
      003DD0 63 F0 80         [24] 1560 	xrl	b,#0x80
      003DD3 95 F0            [12] 1561 	subb	a,b
      003DD5 50 0B            [24] 1562 	jnc	00109$
                                   1563 ;	SPI.c:250: spi_set_autoinc();
      003DD7 C0 05            [24] 1564 	push	ar5
      003DD9 C0 04            [24] 1565 	push	ar4
      003DDB 12 38 E7         [24] 1566 	lcall	_spi_set_autoinc
      003DDE D0 04            [24] 1567 	pop	ar4
      003DE0 D0 05            [24] 1568 	pop	ar5
      003DE2                       1569 00109$:
                                   1570 ;	SPI.c:254: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003DE2 8D 07            [24] 1571 	mov	ar7,r5
                                   1572 ;	SPI.c:255: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003DE4 8C 06            [24] 1573 	mov	ar6,r4
                                   1574 ;	SPI.c:257: spi_control_write(0, 0x01, higher_byte); // High byte
      003DE6 90 03 84         [24] 1575 	mov	dptr,#_spi_control_write_PARM_2
      003DE9 74 01            [12] 1576 	mov	a,#0x01
      003DEB F0               [24] 1577 	movx	@dptr,a
      003DEC 90 03 85         [24] 1578 	mov	dptr,#_spi_control_write_PARM_3
      003DEF EF               [12] 1579 	mov	a,r7
      003DF0 F0               [24] 1580 	movx	@dptr,a
      003DF1 75 82 00         [24] 1581 	mov	dpl, #0x00
      003DF4 C0 06            [24] 1582 	push	ar6
      003DF6 C0 05            [24] 1583 	push	ar5
      003DF8 C0 04            [24] 1584 	push	ar4
      003DFA 12 39 7D         [24] 1585 	lcall	_spi_control_write
      003DFD D0 04            [24] 1586 	pop	ar4
      003DFF D0 05            [24] 1587 	pop	ar5
      003E01 D0 06            [24] 1588 	pop	ar6
                                   1589 ;	SPI.c:258: spi_control_write(0, 0x00, lower_byte); // Low byte
      003E03 90 03 84         [24] 1590 	mov	dptr,#_spi_control_write_PARM_2
      003E06 E4               [12] 1591 	clr	a
      003E07 F0               [24] 1592 	movx	@dptr,a
      003E08 90 03 85         [24] 1593 	mov	dptr,#_spi_control_write_PARM_3
      003E0B EE               [12] 1594 	mov	a,r6
      003E0C F0               [24] 1595 	movx	@dptr,a
      003E0D 75 82 00         [24] 1596 	mov	dpl, #0x00
      003E10 C0 05            [24] 1597 	push	ar5
      003E12 C0 04            [24] 1598 	push	ar4
      003E14 12 39 7D         [24] 1599 	lcall	_spi_control_write
                                   1600 ;	SPI.c:261: CS_LOW; // Pull CS Low
                                   1601 ;	assignBit
      003E17 C2 91            [12] 1602 	clr	_P1_1
                                   1603 ;	SPI.c:262: SPI_send(opcode); // Send opcode
      003E19 75 82 3A         [24] 1604 	mov	dpl, #0x3a
      003E1C 12 39 E8         [24] 1605 	lcall	_SPI_send
      003E1F D0 04            [24] 1606 	pop	ar4
      003E21 D0 05            [24] 1607 	pop	ar5
                                   1608 ;	SPI.c:265: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003E23 90 03 9A         [24] 1609 	mov	dptr,#_spi_buffer_read_num_bytes_10000_151
      003E26 E0               [24] 1610 	movx	a,@dptr
      003E27 FE               [12] 1611 	mov	r6,a
      003E28 A3               [24] 1612 	inc	dptr
      003E29 E0               [24] 1613 	movx	a,@dptr
      003E2A FF               [12] 1614 	mov	r7,a
      003E2B C0 07            [24] 1615 	push	ar7
      003E2D C0 06            [24] 1616 	push	ar6
      003E2F C0 04            [24] 1617 	push	ar4
      003E31 C0 05            [24] 1618 	push	ar5
      003E33 C0 06            [24] 1619 	push	ar6
      003E35 C0 07            [24] 1620 	push	ar7
      003E37 74 48            [12] 1621 	mov	a,#___str_11
      003E39 C0 E0            [24] 1622 	push	acc
      003E3B 74 64            [12] 1623 	mov	a,#(___str_11 >> 8)
      003E3D C0 E0            [24] 1624 	push	acc
      003E3F 74 80            [12] 1625 	mov	a,#0x80
      003E41 C0 E0            [24] 1626 	push	acc
      003E43 12 51 09         [24] 1627 	lcall	_printf
      003E46 E5 81            [12] 1628 	mov	a,sp
      003E48 24 F9            [12] 1629 	add	a,#0xf9
      003E4A F5 81            [12] 1630 	mov	sp,a
      003E4C D0 06            [24] 1631 	pop	ar6
      003E4E D0 07            [24] 1632 	pop	ar7
                                   1633 ;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
      003E50 90 03 9C         [24] 1634 	mov	dptr,#_spi_buffer_read_i_20002_159
      003E53 E4               [12] 1635 	clr	a
      003E54 F0               [24] 1636 	movx	@dptr,a
      003E55 A3               [24] 1637 	inc	dptr
      003E56 F0               [24] 1638 	movx	@dptr,a
      003E57 90 03 97         [24] 1639 	mov	dptr,#_spi_buffer_read_PARM_3
      003E5A E0               [24] 1640 	movx	a,@dptr
      003E5B FB               [12] 1641 	mov	r3,a
      003E5C A3               [24] 1642 	inc	dptr
      003E5D E0               [24] 1643 	movx	a,@dptr
      003E5E FC               [12] 1644 	mov	r4,a
      003E5F A3               [24] 1645 	inc	dptr
      003E60 E0               [24] 1646 	movx	a,@dptr
      003E61 FD               [12] 1647 	mov	r5,a
      003E62                       1648 00112$:
      003E62 90 03 9C         [24] 1649 	mov	dptr,#_spi_buffer_read_i_20002_159
      003E65 E0               [24] 1650 	movx	a,@dptr
      003E66 F9               [12] 1651 	mov	r1,a
      003E67 A3               [24] 1652 	inc	dptr
      003E68 E0               [24] 1653 	movx	a,@dptr
      003E69 FA               [12] 1654 	mov	r2,a
      003E6A C3               [12] 1655 	clr	c
      003E6B E9               [12] 1656 	mov	a,r1
      003E6C 9E               [12] 1657 	subb	a,r6
      003E6D EA               [12] 1658 	mov	a,r2
      003E6E 64 80            [12] 1659 	xrl	a,#0x80
      003E70 8F F0            [24] 1660 	mov	b,r7
      003E72 63 F0 80         [24] 1661 	xrl	b,#0x80
      003E75 95 F0            [12] 1662 	subb	a,b
      003E77 40 03            [24] 1663 	jc	00157$
      003E79 02 3E FF         [24] 1664 	ljmp	00110$
      003E7C                       1665 00157$:
                                   1666 ;	SPI.c:267: *data_ptr = SPI_ReadByte(); // Read data
      003E7C C0 06            [24] 1667 	push	ar6
      003E7E C0 07            [24] 1668 	push	ar7
      003E80 C0 07            [24] 1669 	push	ar7
      003E82 C0 06            [24] 1670 	push	ar6
      003E84 C0 05            [24] 1671 	push	ar5
      003E86 C0 04            [24] 1672 	push	ar4
      003E88 C0 03            [24] 1673 	push	ar3
      003E8A C0 02            [24] 1674 	push	ar2
      003E8C C0 01            [24] 1675 	push	ar1
      003E8E 12 38 D5         [24] 1676 	lcall	_SPI_ReadByte
      003E91 A8 82            [24] 1677 	mov	r0, dpl
      003E93 D0 01            [24] 1678 	pop	ar1
      003E95 D0 02            [24] 1679 	pop	ar2
      003E97 D0 03            [24] 1680 	pop	ar3
      003E99 D0 04            [24] 1681 	pop	ar4
      003E9B D0 05            [24] 1682 	pop	ar5
      003E9D D0 06            [24] 1683 	pop	ar6
      003E9F D0 07            [24] 1684 	pop	ar7
      003EA1 8B 82            [24] 1685 	mov	dpl,r3
      003EA3 8C 83            [24] 1686 	mov	dph,r4
      003EA5 8D F0            [24] 1687 	mov	b,r5
      003EA7 E8               [12] 1688 	mov	a,r0
      003EA8 12 4C F3         [24] 1689 	lcall	__gptrput
      003EAB A3               [24] 1690 	inc	dptr
      003EAC AB 82            [24] 1691 	mov	r3,dpl
      003EAE AC 83            [24] 1692 	mov	r4,dph
                                   1693 ;	SPI.c:268: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003EB0 7F 00            [12] 1694 	mov	r7,#0x00
      003EB2 09               [12] 1695 	inc	r1
      003EB3 B9 00 01         [24] 1696 	cjne	r1,#0x00,00158$
      003EB6 0A               [12] 1697 	inc	r2
      003EB7                       1698 00158$:
      003EB7 C0 07            [24] 1699 	push	ar7
      003EB9 C0 06            [24] 1700 	push	ar6
      003EBB C0 05            [24] 1701 	push	ar5
      003EBD C0 04            [24] 1702 	push	ar4
      003EBF C0 03            [24] 1703 	push	ar3
      003EC1 C0 02            [24] 1704 	push	ar2
      003EC3 C0 01            [24] 1705 	push	ar1
      003EC5 C0 00            [24] 1706 	push	ar0
      003EC7 C0 07            [24] 1707 	push	ar7
      003EC9 C0 01            [24] 1708 	push	ar1
      003ECB C0 02            [24] 1709 	push	ar2
      003ECD 74 83            [12] 1710 	mov	a,#___str_12
      003ECF C0 E0            [24] 1711 	push	acc
      003ED1 74 64            [12] 1712 	mov	a,#(___str_12 >> 8)
      003ED3 C0 E0            [24] 1713 	push	acc
      003ED5 74 80            [12] 1714 	mov	a,#0x80
      003ED7 C0 E0            [24] 1715 	push	acc
      003ED9 12 51 09         [24] 1716 	lcall	_printf
      003EDC E5 81            [12] 1717 	mov	a,sp
      003EDE 24 F9            [12] 1718 	add	a,#0xf9
      003EE0 F5 81            [12] 1719 	mov	sp,a
      003EE2 D0 01            [24] 1720 	pop	ar1
      003EE4 D0 02            [24] 1721 	pop	ar2
      003EE6 D0 03            [24] 1722 	pop	ar3
      003EE8 D0 04            [24] 1723 	pop	ar4
      003EEA D0 05            [24] 1724 	pop	ar5
      003EEC D0 06            [24] 1725 	pop	ar6
      003EEE D0 07            [24] 1726 	pop	ar7
                                   1727 ;	SPI.c:269: data_ptr++;
                                   1728 ;	SPI.c:266: for (int i = 0; i < num_bytes; i++) {
      003EF0 90 03 9C         [24] 1729 	mov	dptr,#_spi_buffer_read_i_20002_159
      003EF3 E9               [12] 1730 	mov	a,r1
      003EF4 F0               [24] 1731 	movx	@dptr,a
      003EF5 EA               [12] 1732 	mov	a,r2
      003EF6 A3               [24] 1733 	inc	dptr
      003EF7 F0               [24] 1734 	movx	@dptr,a
      003EF8 D0 07            [24] 1735 	pop	ar7
      003EFA D0 06            [24] 1736 	pop	ar6
      003EFC 02 3E 62         [24] 1737 	ljmp	00112$
      003EFF                       1738 00110$:
                                   1739 ;	SPI.c:271: CS_HIGH; // Pull CS High
                                   1740 ;	assignBit
      003EFF D2 91            [12] 1741 	setb	_P1_1
                                   1742 ;	SPI.c:272: return (uint16_t) num_bytes;
      003F01 8E 82            [24] 1743 	mov	dpl, r6
      003F03 8F 83            [24] 1744 	mov	dph, r7
                                   1745 ;	SPI.c:273: }
      003F05 22               [24] 1746 	ret
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
      003F06                       1762 _spi_buffer_write:
      003F06 AF 83            [24] 1763 	mov	r7,dph
      003F08 E5 82            [12] 1764 	mov	a,dpl
      003F0A 90 03 A3         [24] 1765 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003F0D F0               [24] 1766 	movx	@dptr,a
      003F0E EF               [12] 1767 	mov	a,r7
      003F0F A3               [24] 1768 	inc	dptr
      003F10 F0               [24] 1769 	movx	@dptr,a
                                   1770 ;	SPI.c:278: if (num_bytes < 1)
      003F11 90 03 A3         [24] 1771 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003F14 E0               [24] 1772 	movx	a,@dptr
      003F15 FE               [12] 1773 	mov	r6,a
      003F16 A3               [24] 1774 	inc	dptr
      003F17 E0               [24] 1775 	movx	a,@dptr
      003F18 FF               [12] 1776 	mov	r7,a
      003F19 C3               [12] 1777 	clr	c
      003F1A EE               [12] 1778 	mov	a,r6
      003F1B 94 01            [12] 1779 	subb	a,#0x01
      003F1D EF               [12] 1780 	mov	a,r7
      003F1E 64 80            [12] 1781 	xrl	a,#0x80
      003F20 94 80            [12] 1782 	subb	a,#0x80
      003F22 50 1A            [24] 1783 	jnc	00102$
                                   1784 ;	SPI.c:280: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003F24 C0 06            [24] 1785 	push	ar6
      003F26 C0 07            [24] 1786 	push	ar7
      003F28 74 E2            [12] 1787 	mov	a,#___str_8
      003F2A C0 E0            [24] 1788 	push	acc
      003F2C 74 63            [12] 1789 	mov	a,#(___str_8 >> 8)
      003F2E C0 E0            [24] 1790 	push	acc
      003F30 74 80            [12] 1791 	mov	a,#0x80
      003F32 C0 E0            [24] 1792 	push	acc
      003F34 12 51 09         [24] 1793 	lcall	_printf
      003F37 E5 81            [12] 1794 	mov	a,sp
      003F39 24 FB            [12] 1795 	add	a,#0xfb
      003F3B F5 81            [12] 1796 	mov	sp,a
                                   1797 ;	SPI.c:281: return;
      003F3D 22               [24] 1798 	ret
      003F3E                       1799 00102$:
                                   1800 ;	SPI.c:283: if (start_address > 0x1FFF) {
      003F3E 90 03 9E         [24] 1801 	mov	dptr,#_spi_buffer_write_PARM_2
      003F41 E0               [24] 1802 	movx	a,@dptr
      003F42 FC               [12] 1803 	mov	r4,a
      003F43 A3               [24] 1804 	inc	dptr
      003F44 E0               [24] 1805 	movx	a,@dptr
      003F45 FD               [12] 1806 	mov	r5,a
      003F46 8C 02            [24] 1807 	mov	ar2,r4
      003F48 8D 03            [24] 1808 	mov	ar3,r5
      003F4A C3               [12] 1809 	clr	c
      003F4B 74 FF            [12] 1810 	mov	a,#0xff
      003F4D 9A               [12] 1811 	subb	a,r2
      003F4E 74 1F            [12] 1812 	mov	a,#0x1f
      003F50 9B               [12] 1813 	subb	a,r3
      003F51 50 1A            [24] 1814 	jnc	00104$
                                   1815 ;	SPI.c:284: printf("\n\rInvalid address: %04X\n\r", start_address);
      003F53 C0 04            [24] 1816 	push	ar4
      003F55 C0 05            [24] 1817 	push	ar5
      003F57 74 02            [12] 1818 	mov	a,#___str_9
      003F59 C0 E0            [24] 1819 	push	acc
      003F5B 74 64            [12] 1820 	mov	a,#(___str_9 >> 8)
      003F5D C0 E0            [24] 1821 	push	acc
      003F5F 74 80            [12] 1822 	mov	a,#0x80
      003F61 C0 E0            [24] 1823 	push	acc
      003F63 12 51 09         [24] 1824 	lcall	_printf
      003F66 E5 81            [12] 1825 	mov	a,sp
      003F68 24 FB            [12] 1826 	add	a,#0xfb
      003F6A F5 81            [12] 1827 	mov	sp,a
                                   1828 ;	SPI.c:285: return;
      003F6C 22               [24] 1829 	ret
      003F6D                       1830 00104$:
                                   1831 ;	SPI.c:289: if (num_bytes > 1) {
      003F6D C3               [12] 1832 	clr	c
      003F6E 74 01            [12] 1833 	mov	a,#0x01
      003F70 9E               [12] 1834 	subb	a,r6
      003F71 74 80            [12] 1835 	mov	a,#(0x00 ^ 0x80)
      003F73 8F F0            [24] 1836 	mov	b,r7
      003F75 63 F0 80         [24] 1837 	xrl	b,#0x80
      003F78 95 F0            [12] 1838 	subb	a,b
      003F7A 50 0B            [24] 1839 	jnc	00106$
                                   1840 ;	SPI.c:290: spi_set_autoinc();
      003F7C C0 05            [24] 1841 	push	ar5
      003F7E C0 04            [24] 1842 	push	ar4
      003F80 12 38 E7         [24] 1843 	lcall	_spi_set_autoinc
      003F83 D0 04            [24] 1844 	pop	ar4
      003F85 D0 05            [24] 1845 	pop	ar5
      003F87                       1846 00106$:
                                   1847 ;	SPI.c:293: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003F87 8D 07            [24] 1848 	mov	ar7,r5
                                   1849 ;	SPI.c:294: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003F89 8C 06            [24] 1850 	mov	ar6,r4
                                   1851 ;	SPI.c:296: spi_control_write(0, 0x03, higher_byte); // High byte
      003F8B 90 03 84         [24] 1852 	mov	dptr,#_spi_control_write_PARM_2
      003F8E 74 03            [12] 1853 	mov	a,#0x03
      003F90 F0               [24] 1854 	movx	@dptr,a
      003F91 90 03 85         [24] 1855 	mov	dptr,#_spi_control_write_PARM_3
      003F94 EF               [12] 1856 	mov	a,r7
      003F95 F0               [24] 1857 	movx	@dptr,a
      003F96 75 82 00         [24] 1858 	mov	dpl, #0x00
      003F99 C0 06            [24] 1859 	push	ar6
      003F9B C0 05            [24] 1860 	push	ar5
      003F9D C0 04            [24] 1861 	push	ar4
      003F9F 12 39 7D         [24] 1862 	lcall	_spi_control_write
      003FA2 D0 04            [24] 1863 	pop	ar4
      003FA4 D0 05            [24] 1864 	pop	ar5
      003FA6 D0 06            [24] 1865 	pop	ar6
                                   1866 ;	SPI.c:297: spi_control_write(0, 0x02, lower_byte); // Low byte
      003FA8 90 03 84         [24] 1867 	mov	dptr,#_spi_control_write_PARM_2
      003FAB 74 02            [12] 1868 	mov	a,#0x02
      003FAD F0               [24] 1869 	movx	@dptr,a
      003FAE 90 03 85         [24] 1870 	mov	dptr,#_spi_control_write_PARM_3
      003FB1 EE               [12] 1871 	mov	a,r6
      003FB2 F0               [24] 1872 	movx	@dptr,a
      003FB3 75 82 00         [24] 1873 	mov	dpl, #0x00
      003FB6 C0 05            [24] 1874 	push	ar5
      003FB8 C0 04            [24] 1875 	push	ar4
      003FBA 12 39 7D         [24] 1876 	lcall	_spi_control_write
                                   1877 ;	SPI.c:300: CS_LOW; // Pull CS Low
                                   1878 ;	assignBit
      003FBD C2 91            [12] 1879 	clr	_P1_1
                                   1880 ;	SPI.c:301: SPI_send(opcode); // Send opcode
      003FBF 75 82 7A         [24] 1881 	mov	dpl, #0x7a
      003FC2 12 39 E8         [24] 1882 	lcall	_SPI_send
      003FC5 D0 04            [24] 1883 	pop	ar4
      003FC7 D0 05            [24] 1884 	pop	ar5
                                   1885 ;	SPI.c:304: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003FC9 90 03 A3         [24] 1886 	mov	dptr,#_spi_buffer_write_num_bytes_10000_161
      003FCC E0               [24] 1887 	movx	a,@dptr
      003FCD FE               [12] 1888 	mov	r6,a
      003FCE A3               [24] 1889 	inc	dptr
      003FCF E0               [24] 1890 	movx	a,@dptr
      003FD0 FF               [12] 1891 	mov	r7,a
      003FD1 C0 07            [24] 1892 	push	ar7
      003FD3 C0 06            [24] 1893 	push	ar6
      003FD5 C0 04            [24] 1894 	push	ar4
      003FD7 C0 05            [24] 1895 	push	ar5
      003FD9 C0 06            [24] 1896 	push	ar6
      003FDB C0 07            [24] 1897 	push	ar7
      003FDD 74 95            [12] 1898 	mov	a,#___str_13
      003FDF C0 E0            [24] 1899 	push	acc
      003FE1 74 64            [12] 1900 	mov	a,#(___str_13 >> 8)
      003FE3 C0 E0            [24] 1901 	push	acc
      003FE5 74 80            [12] 1902 	mov	a,#0x80
      003FE7 C0 E0            [24] 1903 	push	acc
      003FE9 12 51 09         [24] 1904 	lcall	_printf
      003FEC E5 81            [12] 1905 	mov	a,sp
      003FEE 24 F9            [12] 1906 	add	a,#0xf9
      003FF0 F5 81            [12] 1907 	mov	sp,a
      003FF2 D0 06            [24] 1908 	pop	ar6
      003FF4 D0 07            [24] 1909 	pop	ar7
                                   1910 ;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
      003FF6 90 03 A5         [24] 1911 	mov	dptr,#_spi_buffer_write_i_20002_168
      003FF9 E4               [12] 1912 	clr	a
      003FFA F0               [24] 1913 	movx	@dptr,a
      003FFB A3               [24] 1914 	inc	dptr
      003FFC F0               [24] 1915 	movx	@dptr,a
      003FFD 90 03 A0         [24] 1916 	mov	dptr,#_spi_buffer_write_PARM_3
      004000 E0               [24] 1917 	movx	a,@dptr
      004001 FB               [12] 1918 	mov	r3,a
      004002 A3               [24] 1919 	inc	dptr
      004003 E0               [24] 1920 	movx	a,@dptr
      004004 FC               [12] 1921 	mov	r4,a
      004005 A3               [24] 1922 	inc	dptr
      004006 E0               [24] 1923 	movx	a,@dptr
      004007 FD               [12] 1924 	mov	r5,a
      004008                       1925 00109$:
      004008 90 03 A5         [24] 1926 	mov	dptr,#_spi_buffer_write_i_20002_168
      00400B E0               [24] 1927 	movx	a,@dptr
      00400C F9               [12] 1928 	mov	r1,a
      00400D A3               [24] 1929 	inc	dptr
      00400E E0               [24] 1930 	movx	a,@dptr
      00400F FA               [12] 1931 	mov	r2,a
      004010 C3               [12] 1932 	clr	c
      004011 E9               [12] 1933 	mov	a,r1
      004012 9E               [12] 1934 	subb	a,r6
      004013 EA               [12] 1935 	mov	a,r2
      004014 64 80            [12] 1936 	xrl	a,#0x80
      004016 8F F0            [24] 1937 	mov	b,r7
      004018 63 F0 80         [24] 1938 	xrl	b,#0x80
      00401B 95 F0            [12] 1939 	subb	a,b
      00401D 40 03            [24] 1940 	jc	00147$
      00401F 02 40 AF         [24] 1941 	ljmp	00107$
      004022                       1942 00147$:
                                   1943 ;	SPI.c:306: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      004022 C0 06            [24] 1944 	push	ar6
      004024 C0 07            [24] 1945 	push	ar7
      004026 8B 82            [24] 1946 	mov	dpl,r3
      004028 8C 83            [24] 1947 	mov	dph,r4
      00402A 8D F0            [24] 1948 	mov	b,r5
      00402C 12 5B 2B         [24] 1949 	lcall	__gptrget
      00402F F8               [12] 1950 	mov	r0,a
      004030 7F 00            [12] 1951 	mov	r7,#0x00
      004032 09               [12] 1952 	inc	r1
      004033 B9 00 01         [24] 1953 	cjne	r1,#0x00,00148$
      004036 0A               [12] 1954 	inc	r2
      004037                       1955 00148$:
      004037 C0 07            [24] 1956 	push	ar7
      004039 C0 06            [24] 1957 	push	ar6
      00403B C0 05            [24] 1958 	push	ar5
      00403D C0 04            [24] 1959 	push	ar4
      00403F C0 03            [24] 1960 	push	ar3
      004041 C0 02            [24] 1961 	push	ar2
      004043 C0 01            [24] 1962 	push	ar1
      004045 C0 00            [24] 1963 	push	ar0
      004047 C0 07            [24] 1964 	push	ar7
      004049 C0 01            [24] 1965 	push	ar1
      00404B C0 02            [24] 1966 	push	ar2
      00404D 74 83            [12] 1967 	mov	a,#___str_12
      00404F C0 E0            [24] 1968 	push	acc
      004051 74 64            [12] 1969 	mov	a,#(___str_12 >> 8)
      004053 C0 E0            [24] 1970 	push	acc
      004055 74 80            [12] 1971 	mov	a,#0x80
      004057 C0 E0            [24] 1972 	push	acc
      004059 12 51 09         [24] 1973 	lcall	_printf
      00405C E5 81            [12] 1974 	mov	a,sp
      00405E 24 F9            [12] 1975 	add	a,#0xf9
      004060 F5 81            [12] 1976 	mov	sp,a
      004062 D0 01            [24] 1977 	pop	ar1
      004064 D0 02            [24] 1978 	pop	ar2
      004066 D0 03            [24] 1979 	pop	ar3
      004068 D0 04            [24] 1980 	pop	ar4
      00406A D0 05            [24] 1981 	pop	ar5
      00406C D0 06            [24] 1982 	pop	ar6
      00406E D0 07            [24] 1983 	pop	ar7
                                   1984 ;	SPI.c:307: SPI_send(*data_ptr); // Send data
      004070 8B 82            [24] 1985 	mov	dpl,r3
      004072 8C 83            [24] 1986 	mov	dph,r4
      004074 8D F0            [24] 1987 	mov	b,r5
      004076 12 5B 2B         [24] 1988 	lcall	__gptrget
      004079 FF               [12] 1989 	mov	r7,a
      00407A A3               [24] 1990 	inc	dptr
      00407B AB 82            [24] 1991 	mov	r3,dpl
      00407D AC 83            [24] 1992 	mov	r4,dph
      00407F 8F 82            [24] 1993 	mov	dpl, r7
      004081 C0 07            [24] 1994 	push	ar7
      004083 C0 06            [24] 1995 	push	ar6
      004085 C0 05            [24] 1996 	push	ar5
      004087 C0 04            [24] 1997 	push	ar4
      004089 C0 03            [24] 1998 	push	ar3
      00408B C0 02            [24] 1999 	push	ar2
      00408D C0 01            [24] 2000 	push	ar1
      00408F 12 39 E8         [24] 2001 	lcall	_SPI_send
      004092 D0 01            [24] 2002 	pop	ar1
      004094 D0 02            [24] 2003 	pop	ar2
      004096 D0 03            [24] 2004 	pop	ar3
      004098 D0 04            [24] 2005 	pop	ar4
      00409A D0 05            [24] 2006 	pop	ar5
      00409C D0 06            [24] 2007 	pop	ar6
      00409E D0 07            [24] 2008 	pop	ar7
                                   2009 ;	SPI.c:308: data_ptr++;
                                   2010 ;	SPI.c:305: for (int i = 0; i < num_bytes; i++) {
      0040A0 90 03 A5         [24] 2011 	mov	dptr,#_spi_buffer_write_i_20002_168
      0040A3 E9               [12] 2012 	mov	a,r1
      0040A4 F0               [24] 2013 	movx	@dptr,a
      0040A5 EA               [12] 2014 	mov	a,r2
      0040A6 A3               [24] 2015 	inc	dptr
      0040A7 F0               [24] 2016 	movx	@dptr,a
      0040A8 D0 07            [24] 2017 	pop	ar7
      0040AA D0 06            [24] 2018 	pop	ar6
      0040AC 02 40 08         [24] 2019 	ljmp	00109$
      0040AF                       2020 00107$:
                                   2021 ;	SPI.c:310: CS_HIGH; // Pull CS High
                                   2022 ;	assignBit
      0040AF D2 91            [12] 2023 	setb	_P1_1
                                   2024 ;	SPI.c:311: }
      0040B1 22               [24] 2025 	ret
                                   2026 	.area CSEG    (CODE)
                                   2027 	.area CONST   (CODE)
                                   2028 	.area CONST   (CODE)
      006294                       2029 ___str_0:
      006294 77 72 6F 6E 67 20 62  2030 	.ascii "wrong bank"
             61 6E 6B
      00629E 00                    2031 	.db 0x00
                                   2032 	.area CSEG    (CODE)
                                   2033 	.area CONST   (CODE)
      00629F                       2034 ___str_1:
      00629F 57 72 69 74 65 3A 20  2035 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      0062C1 0A                    2036 	.db 0x0a
      0062C2 0D                    2037 	.db 0x0d
      0062C3 00                    2038 	.db 0x00
                                   2039 	.area CSEG    (CODE)
                                   2040 	.area CONST   (CODE)
      0062C4                       2041 ___str_2:
      0062C4 0A                    2042 	.db 0x0a
      0062C5 0D                    2043 	.db 0x0d
      0062C6 49 6E 76 61 6C 69 64  2044 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      0062FB 0A                    2045 	.db 0x0a
      0062FC 0D                    2046 	.db 0x0d
      0062FD 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      0062FE                       2050 ___str_3:
      0062FE 52 65 61 64 3A 20 41  2051 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      00631F 0A                    2052 	.db 0x0a
      006320 0D                    2053 	.db 0x0d
      006321 00                    2054 	.db 0x00
                                   2055 	.area CSEG    (CODE)
                                   2056 	.area CONST   (CODE)
      006322                       2057 ___str_4:
      006322 50 48 59 20 57 72 69  2058 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      006348 0A                    2059 	.db 0x0a
      006349 0D                    2060 	.db 0x0d
      00634A 00                    2061 	.db 0x00
                                   2062 	.area CSEG    (CODE)
                                   2063 	.area CONST   (CODE)
      00634B                       2064 ___str_5:
      00634B 50 48 59 20 52 65 61  2065 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      006370 0A                    2066 	.db 0x0a
      006371 0D                    2067 	.db 0x0d
      006372 00                    2068 	.db 0x00
                                   2069 	.area CSEG    (CODE)
                                   2070 	.area CONST   (CODE)
      006373                       2071 ___str_6:
      006373 0A                    2072 	.db 0x0a
      006374 0D                    2073 	.db 0x0d
      006375 49 6E 76 61 6C 69 64  2074 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      0063AE 0A                    2075 	.db 0x0a
      0063AF 0D                    2076 	.db 0x0d
      0063B0 00                    2077 	.db 0x00
                                   2078 	.area CSEG    (CODE)
                                   2079 	.area CONST   (CODE)
      0063B1                       2080 ___str_7:
      0063B1 0A                    2081 	.db 0x0a
      0063B2 0D                    2082 	.db 0x0d
      0063B3 42 75 66 66 65 72 20  2083 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      0063DF 0A                    2084 	.db 0x0a
      0063E0 0D                    2085 	.db 0x0d
      0063E1 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      0063E2                       2089 ___str_8:
      0063E2 0A                    2090 	.db 0x0a
      0063E3 0D                    2091 	.db 0x0d
      0063E4 49 6E 76 61 6C 69 64  2092 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      0063FF 0A                    2093 	.db 0x0a
      006400 0D                    2094 	.db 0x0d
      006401 00                    2095 	.db 0x00
                                   2096 	.area CSEG    (CODE)
                                   2097 	.area CONST   (CODE)
      006402                       2098 ___str_9:
      006402 0A                    2099 	.db 0x0a
      006403 0D                    2100 	.db 0x0d
      006404 49 6E 76 61 6C 69 64  2101 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      006419 0A                    2102 	.db 0x0a
      00641A 0D                    2103 	.db 0x0d
      00641B 00                    2104 	.db 0x00
                                   2105 	.area CSEG    (CODE)
                                   2106 	.area CONST   (CODE)
      00641C                       2107 ___str_10:
      00641C 0A                    2108 	.db 0x0a
      00641D 49 6E 76 61 6C 69 64  2109 	.ascii "Invalid RX Address: Start 0x%04X, Size %d"
             20 52 58 20 41 64 64
             72 65 73 73 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 53
             69 7A 65 20 25 64
      006446 0A                    2110 	.db 0x0a
      006447 00                    2111 	.db 0x00
                                   2112 	.area CSEG    (CODE)
                                   2113 	.area CONST   (CODE)
      006448                       2114 ___str_11:
      006448 52 65 61 64 69 6E 67  2115 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      006480 0A                    2116 	.db 0x0a
      006481 0D                    2117 	.db 0x0d
      006482 00                    2118 	.db 0x00
                                   2119 	.area CSEG    (CODE)
                                   2120 	.area CONST   (CODE)
      006483                       2121 ___str_12:
      006483 42 79 74 65 20 25 64  2122 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      006492 0A                    2123 	.db 0x0a
      006493 0D                    2124 	.db 0x0d
      006494 00                    2125 	.db 0x00
                                   2126 	.area CSEG    (CODE)
                                   2127 	.area CONST   (CODE)
      006495                       2128 ___str_13:
      006495 57 72 69 74 69 6E 67  2129 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      0064CB 0A                    2130 	.db 0x0a
      0064CC 0D                    2131 	.db 0x0d
      0064CD 00                    2132 	.db 0x00
                                   2133 	.area CSEG    (CODE)
                                   2134 	.area XINIT   (CODE)
                                   2135 	.area CABS    (ABS,CODE)

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
                                     11 	.globl _enc28j60_init_rx_buffer
                                     12 	.globl _printf
                                     13 	.globl _TF1
                                     14 	.globl _TR1
                                     15 	.globl _TF0
                                     16 	.globl _TR0
                                     17 	.globl _IE1
                                     18 	.globl _IT1
                                     19 	.globl _IE0
                                     20 	.globl _IT0
                                     21 	.globl _SM0
                                     22 	.globl _SM1
                                     23 	.globl _SM2
                                     24 	.globl _REN
                                     25 	.globl _TB8
                                     26 	.globl _RB8
                                     27 	.globl _TI
                                     28 	.globl _RI
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD0
                                     44 	.globl _TXD
                                     45 	.globl _RXD0
                                     46 	.globl _RXD
                                     47 	.globl _P3_7
                                     48 	.globl _P3_6
                                     49 	.globl _P3_5
                                     50 	.globl _P3_4
                                     51 	.globl _P3_3
                                     52 	.globl _P3_2
                                     53 	.globl _P3_1
                                     54 	.globl _P3_0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _P0_7
                                     72 	.globl _P0_6
                                     73 	.globl _P0_5
                                     74 	.globl _P0_4
                                     75 	.globl _P0_3
                                     76 	.globl _P0_2
                                     77 	.globl _P0_1
                                     78 	.globl _P0_0
                                     79 	.globl _PS
                                     80 	.globl _PT1
                                     81 	.globl _PX1
                                     82 	.globl _PT0
                                     83 	.globl _PX0
                                     84 	.globl _EA
                                     85 	.globl _ES
                                     86 	.globl _ET1
                                     87 	.globl _EX1
                                     88 	.globl _ET0
                                     89 	.globl _EX0
                                     90 	.globl _BREG_F7
                                     91 	.globl _BREG_F6
                                     92 	.globl _BREG_F5
                                     93 	.globl _BREG_F4
                                     94 	.globl _BREG_F3
                                     95 	.globl _BREG_F2
                                     96 	.globl _BREG_F1
                                     97 	.globl _BREG_F0
                                     98 	.globl _P5_7
                                     99 	.globl _P5_6
                                    100 	.globl _P5_5
                                    101 	.globl _P5_4
                                    102 	.globl _P5_3
                                    103 	.globl _P5_2
                                    104 	.globl _P5_1
                                    105 	.globl _P5_0
                                    106 	.globl _P4_7
                                    107 	.globl _P4_6
                                    108 	.globl _P4_5
                                    109 	.globl _P4_4
                                    110 	.globl _P4_3
                                    111 	.globl _P4_2
                                    112 	.globl _P4_1
                                    113 	.globl _P4_0
                                    114 	.globl _PX0L
                                    115 	.globl _PT0L
                                    116 	.globl _PX1L
                                    117 	.globl _PT1L
                                    118 	.globl _PSL
                                    119 	.globl _PT2L
                                    120 	.globl _PPCL
                                    121 	.globl _EC
                                    122 	.globl _CCF0
                                    123 	.globl _CCF1
                                    124 	.globl _CCF2
                                    125 	.globl _CCF3
                                    126 	.globl _CCF4
                                    127 	.globl _CR
                                    128 	.globl _CF
                                    129 	.globl _TF2
                                    130 	.globl _EXF2
                                    131 	.globl _RCLK
                                    132 	.globl _TCLK
                                    133 	.globl _EXEN2
                                    134 	.globl _TR2
                                    135 	.globl _C_T2
                                    136 	.globl _CP_RL2
                                    137 	.globl _T2CON_7
                                    138 	.globl _T2CON_6
                                    139 	.globl _T2CON_5
                                    140 	.globl _T2CON_4
                                    141 	.globl _T2CON_3
                                    142 	.globl _T2CON_2
                                    143 	.globl _T2CON_1
                                    144 	.globl _T2CON_0
                                    145 	.globl _PT2
                                    146 	.globl _ET2
                                    147 	.globl _TMOD
                                    148 	.globl _TL1
                                    149 	.globl _TL0
                                    150 	.globl _TH1
                                    151 	.globl _TH0
                                    152 	.globl _TCON
                                    153 	.globl _SP
                                    154 	.globl _SCON
                                    155 	.globl _SBUF0
                                    156 	.globl _SBUF
                                    157 	.globl _PSW
                                    158 	.globl _PCON
                                    159 	.globl _P3
                                    160 	.globl _P2
                                    161 	.globl _P1
                                    162 	.globl _P0
                                    163 	.globl _IP
                                    164 	.globl _IE
                                    165 	.globl _DP0L
                                    166 	.globl _DPL
                                    167 	.globl _DP0H
                                    168 	.globl _DPH
                                    169 	.globl _B
                                    170 	.globl _ACC
                                    171 	.globl _EECON
                                    172 	.globl _KBF
                                    173 	.globl _KBE
                                    174 	.globl _KBLS
                                    175 	.globl _BRL
                                    176 	.globl _BDRCON
                                    177 	.globl _T2MOD
                                    178 	.globl _SPDAT
                                    179 	.globl _SPSTA
                                    180 	.globl _SPCON
                                    181 	.globl _SADEN
                                    182 	.globl _SADDR
                                    183 	.globl _WDTPRG
                                    184 	.globl _WDTRST
                                    185 	.globl _P5
                                    186 	.globl _P4
                                    187 	.globl _IPH1
                                    188 	.globl _IPL1
                                    189 	.globl _IPH0
                                    190 	.globl _IPL0
                                    191 	.globl _IEN1
                                    192 	.globl _IEN0
                                    193 	.globl _CMOD
                                    194 	.globl _CL
                                    195 	.globl _CH
                                    196 	.globl _CCON
                                    197 	.globl _CCAPM4
                                    198 	.globl _CCAPM3
                                    199 	.globl _CCAPM2
                                    200 	.globl _CCAPM1
                                    201 	.globl _CCAPM0
                                    202 	.globl _CCAP4L
                                    203 	.globl _CCAP3L
                                    204 	.globl _CCAP2L
                                    205 	.globl _CCAP1L
                                    206 	.globl _CCAP0L
                                    207 	.globl _CCAP4H
                                    208 	.globl _CCAP3H
                                    209 	.globl _CCAP2H
                                    210 	.globl _CCAP1H
                                    211 	.globl _CCAP0H
                                    212 	.globl _CKCON1
                                    213 	.globl _CKCON0
                                    214 	.globl _CKRL
                                    215 	.globl _AUXR1
                                    216 	.globl _AUXR
                                    217 	.globl _TH2
                                    218 	.globl _TL2
                                    219 	.globl _RCAP2H
                                    220 	.globl _RCAP2L
                                    221 	.globl _T2CON
                                    222 	.globl _spi_buffer_write_PARM_3
                                    223 	.globl _spi_buffer_write_PARM_2
                                    224 	.globl _spi_buffer_read_PARM_3
                                    225 	.globl _spi_buffer_read_PARM_2
                                    226 	.globl _buffer_init_PARM_2
                                    227 	.globl _mac_spi_read_PARM_2
                                    228 	.globl _phy_spi_write_PARM_2
                                    229 	.globl _eth_spi_read_PARM_2
                                    230 	.globl _spi_control_write_PARM_3
                                    231 	.globl _spi_control_write_PARM_2
                                    232 	.globl _SPI_ReadByte
                                    233 	.globl _spi_set_autoinc
                                    234 	.globl _select_reg_bank
                                    235 	.globl _spi_control_write
                                    236 	.globl _configure_SPI
                                    237 	.globl _SPI_send
                                    238 	.globl _enc_reset
                                    239 	.globl _eth_spi_read
                                    240 	.globl _phy_spi_write
                                    241 	.globl _mac_spi_read
                                    242 	.globl _phy_spi_read
                                    243 	.globl _busy_wait
                                    244 	.globl _buffer_init
                                    245 	.globl _spi_buffer_read
                                    246 	.globl _spi_buffer_write
                                    247 	.globl _init_ENC
                                    248 	.globl _init_MAC
                                    249 ;--------------------------------------------------------
                                    250 ; special function registers
                                    251 ;--------------------------------------------------------
                                    252 	.area RSEG    (ABS,DATA)
      000000                        253 	.org 0x0000
                           0000C8   254 _T2CON	=	0x00c8
                           0000CA   255 _RCAP2L	=	0x00ca
                           0000CB   256 _RCAP2H	=	0x00cb
                           0000CC   257 _TL2	=	0x00cc
                           0000CD   258 _TH2	=	0x00cd
                           00008E   259 _AUXR	=	0x008e
                           0000A2   260 _AUXR1	=	0x00a2
                           000097   261 _CKRL	=	0x0097
                           00008F   262 _CKCON0	=	0x008f
                           0000AF   263 _CKCON1	=	0x00af
                           0000FA   264 _CCAP0H	=	0x00fa
                           0000FB   265 _CCAP1H	=	0x00fb
                           0000FC   266 _CCAP2H	=	0x00fc
                           0000FD   267 _CCAP3H	=	0x00fd
                           0000FE   268 _CCAP4H	=	0x00fe
                           0000EA   269 _CCAP0L	=	0x00ea
                           0000EB   270 _CCAP1L	=	0x00eb
                           0000EC   271 _CCAP2L	=	0x00ec
                           0000ED   272 _CCAP3L	=	0x00ed
                           0000EE   273 _CCAP4L	=	0x00ee
                           0000DA   274 _CCAPM0	=	0x00da
                           0000DB   275 _CCAPM1	=	0x00db
                           0000DC   276 _CCAPM2	=	0x00dc
                           0000DD   277 _CCAPM3	=	0x00dd
                           0000DE   278 _CCAPM4	=	0x00de
                           0000D8   279 _CCON	=	0x00d8
                           0000F9   280 _CH	=	0x00f9
                           0000E9   281 _CL	=	0x00e9
                           0000D9   282 _CMOD	=	0x00d9
                           0000A8   283 _IEN0	=	0x00a8
                           0000B1   284 _IEN1	=	0x00b1
                           0000B8   285 _IPL0	=	0x00b8
                           0000B7   286 _IPH0	=	0x00b7
                           0000B2   287 _IPL1	=	0x00b2
                           0000B3   288 _IPH1	=	0x00b3
                           0000C0   289 _P4	=	0x00c0
                           0000E8   290 _P5	=	0x00e8
                           0000A6   291 _WDTRST	=	0x00a6
                           0000A7   292 _WDTPRG	=	0x00a7
                           0000A9   293 _SADDR	=	0x00a9
                           0000B9   294 _SADEN	=	0x00b9
                           0000C3   295 _SPCON	=	0x00c3
                           0000C4   296 _SPSTA	=	0x00c4
                           0000C5   297 _SPDAT	=	0x00c5
                           0000C9   298 _T2MOD	=	0x00c9
                           00009B   299 _BDRCON	=	0x009b
                           00009A   300 _BRL	=	0x009a
                           00009C   301 _KBLS	=	0x009c
                           00009D   302 _KBE	=	0x009d
                           00009E   303 _KBF	=	0x009e
                           0000D2   304 _EECON	=	0x00d2
                           0000E0   305 _ACC	=	0x00e0
                           0000F0   306 _B	=	0x00f0
                           000083   307 _DPH	=	0x0083
                           000083   308 _DP0H	=	0x0083
                           000082   309 _DPL	=	0x0082
                           000082   310 _DP0L	=	0x0082
                           0000A8   311 _IE	=	0x00a8
                           0000B8   312 _IP	=	0x00b8
                           000080   313 _P0	=	0x0080
                           000090   314 _P1	=	0x0090
                           0000A0   315 _P2	=	0x00a0
                           0000B0   316 _P3	=	0x00b0
                           000087   317 _PCON	=	0x0087
                           0000D0   318 _PSW	=	0x00d0
                           000099   319 _SBUF	=	0x0099
                           000099   320 _SBUF0	=	0x0099
                           000098   321 _SCON	=	0x0098
                           000081   322 _SP	=	0x0081
                           000088   323 _TCON	=	0x0088
                           00008C   324 _TH0	=	0x008c
                           00008D   325 _TH1	=	0x008d
                           00008A   326 _TL0	=	0x008a
                           00008B   327 _TL1	=	0x008b
                           000089   328 _TMOD	=	0x0089
                                    329 ;--------------------------------------------------------
                                    330 ; special function bits
                                    331 ;--------------------------------------------------------
                                    332 	.area RSEG    (ABS,DATA)
      000000                        333 	.org 0x0000
                           0000AD   334 _ET2	=	0x00ad
                           0000BD   335 _PT2	=	0x00bd
                           0000C8   336 _T2CON_0	=	0x00c8
                           0000C9   337 _T2CON_1	=	0x00c9
                           0000CA   338 _T2CON_2	=	0x00ca
                           0000CB   339 _T2CON_3	=	0x00cb
                           0000CC   340 _T2CON_4	=	0x00cc
                           0000CD   341 _T2CON_5	=	0x00cd
                           0000CE   342 _T2CON_6	=	0x00ce
                           0000CF   343 _T2CON_7	=	0x00cf
                           0000C8   344 _CP_RL2	=	0x00c8
                           0000C9   345 _C_T2	=	0x00c9
                           0000CA   346 _TR2	=	0x00ca
                           0000CB   347 _EXEN2	=	0x00cb
                           0000CC   348 _TCLK	=	0x00cc
                           0000CD   349 _RCLK	=	0x00cd
                           0000CE   350 _EXF2	=	0x00ce
                           0000CF   351 _TF2	=	0x00cf
                           0000DF   352 _CF	=	0x00df
                           0000DE   353 _CR	=	0x00de
                           0000DC   354 _CCF4	=	0x00dc
                           0000DB   355 _CCF3	=	0x00db
                           0000DA   356 _CCF2	=	0x00da
                           0000D9   357 _CCF1	=	0x00d9
                           0000D8   358 _CCF0	=	0x00d8
                           0000AE   359 _EC	=	0x00ae
                           0000BE   360 _PPCL	=	0x00be
                           0000BD   361 _PT2L	=	0x00bd
                           0000BC   362 _PSL	=	0x00bc
                           0000BB   363 _PT1L	=	0x00bb
                           0000BA   364 _PX1L	=	0x00ba
                           0000B9   365 _PT0L	=	0x00b9
                           0000B8   366 _PX0L	=	0x00b8
                           0000C0   367 _P4_0	=	0x00c0
                           0000C1   368 _P4_1	=	0x00c1
                           0000C2   369 _P4_2	=	0x00c2
                           0000C3   370 _P4_3	=	0x00c3
                           0000C4   371 _P4_4	=	0x00c4
                           0000C5   372 _P4_5	=	0x00c5
                           0000C6   373 _P4_6	=	0x00c6
                           0000C7   374 _P4_7	=	0x00c7
                           0000E8   375 _P5_0	=	0x00e8
                           0000E9   376 _P5_1	=	0x00e9
                           0000EA   377 _P5_2	=	0x00ea
                           0000EB   378 _P5_3	=	0x00eb
                           0000EC   379 _P5_4	=	0x00ec
                           0000ED   380 _P5_5	=	0x00ed
                           0000EE   381 _P5_6	=	0x00ee
                           0000EF   382 _P5_7	=	0x00ef
                           0000F0   383 _BREG_F0	=	0x00f0
                           0000F1   384 _BREG_F1	=	0x00f1
                           0000F2   385 _BREG_F2	=	0x00f2
                           0000F3   386 _BREG_F3	=	0x00f3
                           0000F4   387 _BREG_F4	=	0x00f4
                           0000F5   388 _BREG_F5	=	0x00f5
                           0000F6   389 _BREG_F6	=	0x00f6
                           0000F7   390 _BREG_F7	=	0x00f7
                           0000A8   391 _EX0	=	0x00a8
                           0000A9   392 _ET0	=	0x00a9
                           0000AA   393 _EX1	=	0x00aa
                           0000AB   394 _ET1	=	0x00ab
                           0000AC   395 _ES	=	0x00ac
                           0000AF   396 _EA	=	0x00af
                           0000B8   397 _PX0	=	0x00b8
                           0000B9   398 _PT0	=	0x00b9
                           0000BA   399 _PX1	=	0x00ba
                           0000BB   400 _PT1	=	0x00bb
                           0000BC   401 _PS	=	0x00bc
                           000080   402 _P0_0	=	0x0080
                           000081   403 _P0_1	=	0x0081
                           000082   404 _P0_2	=	0x0082
                           000083   405 _P0_3	=	0x0083
                           000084   406 _P0_4	=	0x0084
                           000085   407 _P0_5	=	0x0085
                           000086   408 _P0_6	=	0x0086
                           000087   409 _P0_7	=	0x0087
                           000090   410 _P1_0	=	0x0090
                           000091   411 _P1_1	=	0x0091
                           000092   412 _P1_2	=	0x0092
                           000093   413 _P1_3	=	0x0093
                           000094   414 _P1_4	=	0x0094
                           000095   415 _P1_5	=	0x0095
                           000096   416 _P1_6	=	0x0096
                           000097   417 _P1_7	=	0x0097
                           0000A0   418 _P2_0	=	0x00a0
                           0000A1   419 _P2_1	=	0x00a1
                           0000A2   420 _P2_2	=	0x00a2
                           0000A3   421 _P2_3	=	0x00a3
                           0000A4   422 _P2_4	=	0x00a4
                           0000A5   423 _P2_5	=	0x00a5
                           0000A6   424 _P2_6	=	0x00a6
                           0000A7   425 _P2_7	=	0x00a7
                           0000B0   426 _P3_0	=	0x00b0
                           0000B1   427 _P3_1	=	0x00b1
                           0000B2   428 _P3_2	=	0x00b2
                           0000B3   429 _P3_3	=	0x00b3
                           0000B4   430 _P3_4	=	0x00b4
                           0000B5   431 _P3_5	=	0x00b5
                           0000B6   432 _P3_6	=	0x00b6
                           0000B7   433 _P3_7	=	0x00b7
                           0000B0   434 _RXD	=	0x00b0
                           0000B0   435 _RXD0	=	0x00b0
                           0000B1   436 _TXD	=	0x00b1
                           0000B1   437 _TXD0	=	0x00b1
                           0000B2   438 _INT0	=	0x00b2
                           0000B3   439 _INT1	=	0x00b3
                           0000B4   440 _T0	=	0x00b4
                           0000B5   441 _T1	=	0x00b5
                           0000B6   442 _WR	=	0x00b6
                           0000B7   443 _RD	=	0x00b7
                           0000D0   444 _P	=	0x00d0
                           0000D1   445 _F1	=	0x00d1
                           0000D2   446 _OV	=	0x00d2
                           0000D3   447 _RS0	=	0x00d3
                           0000D4   448 _RS1	=	0x00d4
                           0000D5   449 _F0	=	0x00d5
                           0000D6   450 _AC	=	0x00d6
                           0000D7   451 _CY	=	0x00d7
                           000098   452 _RI	=	0x0098
                           000099   453 _TI	=	0x0099
                           00009A   454 _RB8	=	0x009a
                           00009B   455 _TB8	=	0x009b
                           00009C   456 _REN	=	0x009c
                           00009D   457 _SM2	=	0x009d
                           00009E   458 _SM1	=	0x009e
                           00009F   459 _SM0	=	0x009f
                           000088   460 _IT0	=	0x0088
                           000089   461 _IE0	=	0x0089
                           00008A   462 _IT1	=	0x008a
                           00008B   463 _IE1	=	0x008b
                           00008C   464 _TR0	=	0x008c
                           00008D   465 _TF0	=	0x008d
                           00008E   466 _TR1	=	0x008e
                           00008F   467 _TF1	=	0x008f
                                    468 ;--------------------------------------------------------
                                    469 ; overlayable register banks
                                    470 ;--------------------------------------------------------
                                    471 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        472 	.ds 8
                                    473 ;--------------------------------------------------------
                                    474 ; internal ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area DSEG    (DATA)
                                    477 ;--------------------------------------------------------
                                    478 ; overlayable items in internal ram
                                    479 ;--------------------------------------------------------
                                    480 ;--------------------------------------------------------
                                    481 ; indirectly addressable internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area ISEG    (DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; absolute internal ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area IABS    (ABS,DATA)
                                    488 	.area IABS    (ABS,DATA)
                                    489 ;--------------------------------------------------------
                                    490 ; bit data
                                    491 ;--------------------------------------------------------
                                    492 	.area BSEG    (BIT)
                                    493 ;--------------------------------------------------------
                                    494 ; paged external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area PSEG    (PAG,XDATA)
                                    497 ;--------------------------------------------------------
                                    498 ; uninitialized external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XSEG    (XDATA)
      000360                        501 _SPI_ReadByte_received_data_10000_66:
      000360                        502 	.ds 1
      000361                        503 _select_reg_bank_bank_10000_70:
      000361                        504 	.ds 1
      000362                        505 _select_reg_bank_data_10001_72:
      000362                        506 	.ds 1
      000363                        507 _spi_control_write_PARM_2:
      000363                        508 	.ds 1
      000364                        509 _spi_control_write_PARM_3:
      000364                        510 	.ds 1
      000365                        511 _spi_control_write_reg_bank_10000_75:
      000365                        512 	.ds 1
      000366                        513 _SPI_send_data_10000_79:
      000366                        514 	.ds 1
      000367                        515 _eth_spi_read_PARM_2:
      000367                        516 	.ds 1
      000368                        517 _eth_spi_read_addr_10000_84:
      000368                        518 	.ds 1
      000369                        519 _phy_spi_write_PARM_2:
      000369                        520 	.ds 2
      00036B                        521 _phy_spi_write_addr_10000_88:
      00036B                        522 	.ds 1
      00036C                        523 _mac_spi_read_PARM_2:
      00036C                        524 	.ds 1
      00036D                        525 _mac_spi_read_addr_10000_90:
      00036D                        526 	.ds 1
      00036E                        527 _phy_spi_read_addr_10000_94:
      00036E                        528 	.ds 1
      00036F                        529 _busy_wait_data_10000_98:
      00036F                        530 	.ds 1
      000370                        531 _buffer_init_PARM_2:
      000370                        532 	.ds 2
      000372                        533 _buffer_init_start_address_10000_100:
      000372                        534 	.ds 2
      000374                        535 _spi_buffer_read_PARM_2:
      000374                        536 	.ds 2
      000376                        537 _spi_buffer_read_PARM_3:
      000376                        538 	.ds 3
      000379                        539 _spi_buffer_read_num_bytes_10000_104:
      000379                        540 	.ds 2
      00037B                        541 _spi_buffer_read_i_20002_111:
      00037B                        542 	.ds 2
      00037D                        543 _spi_buffer_write_PARM_2:
      00037D                        544 	.ds 2
      00037F                        545 _spi_buffer_write_PARM_3:
      00037F                        546 	.ds 3
      000382                        547 _spi_buffer_write_num_bytes_10000_113:
      000382                        548 	.ds 2
      000384                        549 _spi_buffer_write_i_20002_120:
      000384                        550 	.ds 2
                                    551 ;--------------------------------------------------------
                                    552 ; absolute external ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area XABS    (ABS,XDATA)
                                    555 ;--------------------------------------------------------
                                    556 ; initialized external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XISEG   (XDATA)
                                    559 	.area HOME    (CODE)
                                    560 	.area GSINIT0 (CODE)
                                    561 	.area GSINIT1 (CODE)
                                    562 	.area GSINIT2 (CODE)
                                    563 	.area GSINIT3 (CODE)
                                    564 	.area GSINIT4 (CODE)
                                    565 	.area GSINIT5 (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 	.area GSFINAL (CODE)
                                    568 	.area CSEG    (CODE)
                                    569 ;--------------------------------------------------------
                                    570 ; global & static initialisations
                                    571 ;--------------------------------------------------------
                                    572 	.area HOME    (CODE)
                                    573 	.area GSINIT  (CODE)
                                    574 	.area GSFINAL (CODE)
                                    575 	.area GSINIT  (CODE)
                                    576 ;--------------------------------------------------------
                                    577 ; Home
                                    578 ;--------------------------------------------------------
                                    579 	.area HOME    (CODE)
                                    580 	.area HOME    (CODE)
                                    581 ;--------------------------------------------------------
                                    582 ; code
                                    583 ;--------------------------------------------------------
                                    584 	.area CSEG    (CODE)
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'SPI_ReadByte'
                                    587 ;------------------------------------------------------------
                                    588 ;received_data             Allocated with name '_SPI_ReadByte_received_data_10000_66'
                                    589 ;------------------------------------------------------------
                                    590 ;	SPI.c:4: uint8_t SPI_ReadByte(void)
                                    591 ;	-----------------------------------------
                                    592 ;	 function SPI_ReadByte
                                    593 ;	-----------------------------------------
      002F48                        594 _SPI_ReadByte:
                           000007   595 	ar7 = 0x07
                           000006   596 	ar6 = 0x06
                           000005   597 	ar5 = 0x05
                           000004   598 	ar4 = 0x04
                           000003   599 	ar3 = 0x03
                           000002   600 	ar2 = 0x02
                           000001   601 	ar1 = 0x01
                           000000   602 	ar0 = 0x00
                                    603 ;	SPI.c:9: SPDAT = 0xFF;
      002F48 75 C5 FF         [24]  604 	mov	_SPDAT,#0xff
                                    605 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      002F4B                        606 00101$:
      002F4B E5 C4            [12]  607 	mov	a,_SPSTA
      002F4D 30 E7 FB         [24]  608 	jnb	acc.7,00101$
                                    609 ;	SPI.c:17: received_data = SPDAT;
      002F50 90 03 60         [24]  610 	mov	dptr,#_SPI_ReadByte_received_data_10000_66
      002F53 E5 C5            [12]  611 	mov	a,_SPDAT
      002F55 F0               [24]  612 	movx	@dptr,a
                                    613 ;	SPI.c:19: return received_data;
      002F56 E0               [24]  614 	movx	a,@dptr
                                    615 ;	SPI.c:20: }
      002F57 F5 82            [12]  616 	mov	dpl,a
      002F59 22               [24]  617 	ret
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    620 ;------------------------------------------------------------
                                    621 ;	SPI.c:22: void spi_set_autoinc(void)
                                    622 ;	-----------------------------------------
                                    623 ;	 function spi_set_autoinc
                                    624 ;	-----------------------------------------
      002F5A                        625 _spi_set_autoinc:
                                    626 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    627 ;	assignBit
      002F5A C2 91            [12]  628 	clr	_P1_1
                                    629 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      002F5C 75 82 5E         [24]  630 	mov	dpl, #0x5e
      002F5F 12 30 5B         [24]  631 	lcall	_SPI_send
                                    632 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      002F62 75 82 80         [24]  633 	mov	dpl, #0x80
      002F65 12 30 5B         [24]  634 	lcall	_SPI_send
                                    635 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    636 ;	assignBit
      002F68 D2 91            [12]  637 	setb	_P1_1
                                    638 ;	SPI.c:30: }
      002F6A 22               [24]  639 	ret
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'select_reg_bank'
                                    642 ;------------------------------------------------------------
                                    643 ;bank                      Allocated with name '_select_reg_bank_bank_10000_70'
                                    644 ;data                      Allocated with name '_select_reg_bank_data_10001_72'
                                    645 ;i                         Allocated with name '_select_reg_bank_i_20001_74'
                                    646 ;------------------------------------------------------------
                                    647 ;	SPI.c:33: void select_reg_bank(uint8_t bank)
                                    648 ;	-----------------------------------------
                                    649 ;	 function select_reg_bank
                                    650 ;	-----------------------------------------
      002F6B                        651 _select_reg_bank:
      002F6B E5 82            [12]  652 	mov	a,dpl
      002F6D 90 03 61         [24]  653 	mov	dptr,#_select_reg_bank_bank_10000_70
      002F70 F0               [24]  654 	movx	@dptr,a
                                    655 ;	SPI.c:35: CS_LOW;
                                    656 ;	assignBit
      002F71 C2 91            [12]  657 	clr	_P1_1
                                    658 ;	SPI.c:36: SPI_send(0X1F); // Send the address
      002F73 75 82 1F         [24]  659 	mov	dpl, #0x1f
      002F76 12 30 5B         [24]  660 	lcall	_SPI_send
                                    661 ;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
      002F79 12 2F 48         [24]  662 	lcall	_SPI_ReadByte
      002F7C AF 82            [24]  663 	mov	r7, dpl
                                    664 ;	SPI.c:38: CS_HIGH;
                                    665 ;	assignBit
      002F7E D2 91            [12]  666 	setb	_P1_1
                                    667 ;	SPI.c:41: data &= ~0x03; // Clear the last two bits
      002F80 53 07 FC         [24]  668 	anl	ar7,#0xfc
                                    669 ;	SPI.c:42: switch (bank)
      002F83 90 03 61         [24]  670 	mov	dptr,#_select_reg_bank_bank_10000_70
      002F86 E0               [24]  671 	movx	a,@dptr
      002F87 FE               [12]  672 	mov  r6,a
      002F88 24 FC            [12]  673 	add	a,#0xff - 0x03
      002F8A 40 30            [24]  674 	jc	00105$
      002F8C EE               [12]  675 	mov	a,r6
      002F8D 2E               [12]  676 	add	a,r6
                                    677 ;	SPI.c:44: case 0:
      002F8E 90 2F 92         [24]  678 	mov	dptr,#00133$
      002F91 73               [24]  679 	jmp	@a+dptr
      002F92                        680 00133$:
      002F92 80 06            [24]  681 	sjmp	00101$
      002F94 80 0B            [24]  682 	sjmp	00102$
      002F96 80 12            [24]  683 	sjmp	00103$
      002F98 80 19            [24]  684 	sjmp	00104$
      002F9A                        685 00101$:
                                    686 ;	SPI.c:45: data |= 0x00; // Last two bits: 00
      002F9A 90 03 62         [24]  687 	mov	dptr,#_select_reg_bank_data_10001_72
      002F9D EF               [12]  688 	mov	a,r7
      002F9E F0               [24]  689 	movx	@dptr,a
                                    690 ;	SPI.c:46: break;
                                    691 ;	SPI.c:47: case 1:
      002F9F 80 31            [24]  692 	sjmp	00115$
      002FA1                        693 00102$:
                                    694 ;	SPI.c:48: data |= 0x01; // Last two bits: 01
      002FA1 90 03 62         [24]  695 	mov	dptr,#_select_reg_bank_data_10001_72
      002FA4 74 01            [12]  696 	mov	a,#0x01
      002FA6 4F               [12]  697 	orl	a,r7
      002FA7 F0               [24]  698 	movx	@dptr,a
                                    699 ;	SPI.c:49: break;
                                    700 ;	SPI.c:50: case 2:
      002FA8 80 28            [24]  701 	sjmp	00115$
      002FAA                        702 00103$:
                                    703 ;	SPI.c:51: data |= 0x02; // Last two bits: 10
      002FAA 90 03 62         [24]  704 	mov	dptr,#_select_reg_bank_data_10001_72
      002FAD 74 02            [12]  705 	mov	a,#0x02
      002FAF 4F               [12]  706 	orl	a,r7
      002FB0 F0               [24]  707 	movx	@dptr,a
                                    708 ;	SPI.c:52: break;
                                    709 ;	SPI.c:53: case 3:
      002FB1 80 1F            [24]  710 	sjmp	00115$
      002FB3                        711 00104$:
                                    712 ;	SPI.c:54: data |= 0x03; // Last two bits: 11
      002FB3 90 03 62         [24]  713 	mov	dptr,#_select_reg_bank_data_10001_72
      002FB6 74 03            [12]  714 	mov	a,#0x03
      002FB8 4F               [12]  715 	orl	a,r7
      002FB9 F0               [24]  716 	movx	@dptr,a
                                    717 ;	SPI.c:55: break;
                                    718 ;	SPI.c:56: default:
      002FBA 80 16            [24]  719 	sjmp	00115$
      002FBC                        720 00105$:
                                    721 ;	SPI.c:57: printf("wrong bank");
      002FBC 74 CD            [12]  722 	mov	a,#___str_0
      002FBE C0 E0            [24]  723 	push	acc
      002FC0 74 49            [12]  724 	mov	a,#(___str_0 >> 8)
      002FC2 C0 E0            [24]  725 	push	acc
      002FC4 74 80            [12]  726 	mov	a,#0x80
      002FC6 C0 E0            [24]  727 	push	acc
      002FC8 12 3A 16         [24]  728 	lcall	_printf
      002FCB 15 81            [12]  729 	dec	sp
      002FCD 15 81            [12]  730 	dec	sp
      002FCF 15 81            [12]  731 	dec	sp
                                    732 ;	SPI.c:58: return;
                                    733 ;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
      002FD1 22               [24]  734 	ret
      002FD2                        735 00115$:
      002FD2 7F 00            [12]  736 	mov	r7,#0x00
      002FD4                        737 00109$:
      002FD4 BF 10 00         [24]  738 	cjne	r7,#0x10,00134$
      002FD7                        739 00134$:
      002FD7 50 03            [24]  740 	jnc	00107$
      002FD9 0F               [12]  741 	inc	r7
      002FDA 80 F8            [24]  742 	sjmp	00109$
      002FDC                        743 00107$:
                                    744 ;	SPI.c:63: CS_LOW;
                                    745 ;	assignBit
      002FDC C2 91            [12]  746 	clr	_P1_1
                                    747 ;	SPI.c:64: SPI_send(0x5F);
      002FDE 75 82 5F         [24]  748 	mov	dpl, #0x5f
      002FE1 12 30 5B         [24]  749 	lcall	_SPI_send
                                    750 ;	SPI.c:65: SPI_send(data); // Send the modified data
      002FE4 90 03 62         [24]  751 	mov	dptr,#_select_reg_bank_data_10001_72
      002FE7 E0               [24]  752 	movx	a,@dptr
      002FE8 F5 82            [12]  753 	mov	dpl,a
      002FEA 12 30 5B         [24]  754 	lcall	_SPI_send
                                    755 ;	SPI.c:66: CS_HIGH;
                                    756 ;	assignBit
      002FED D2 91            [12]  757 	setb	_P1_1
                                    758 ;	SPI.c:68: }
      002FEF 22               [24]  759 	ret
                                    760 ;------------------------------------------------------------
                                    761 ;Allocation info for local variables in function 'spi_control_write'
                                    762 ;------------------------------------------------------------
                                    763 ;addr                      Allocated with name '_spi_control_write_PARM_2'
                                    764 ;data                      Allocated with name '_spi_control_write_PARM_3'
                                    765 ;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_75'
                                    766 ;opcode                    Allocated with name '_spi_control_write_opcode_10000_76'
                                    767 ;------------------------------------------------------------
                                    768 ;	SPI.c:69: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
                                    769 ;	-----------------------------------------
                                    770 ;	 function spi_control_write
                                    771 ;	-----------------------------------------
      002FF0                        772 _spi_control_write:
      002FF0 E5 82            [12]  773 	mov	a,dpl
      002FF2 90 03 65         [24]  774 	mov	dptr,#_spi_control_write_reg_bank_10000_75
      002FF5 F0               [24]  775 	movx	@dptr,a
                                    776 ;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
      002FF6 90 03 63         [24]  777 	mov	dptr,#_spi_control_write_PARM_2
      002FF9 E0               [24]  778 	movx	a,@dptr
      002FFA 24 40            [12]  779 	add	a, #0x40
      002FFC F0               [24]  780 	movx	@dptr,a
                                    781 ;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
      002FFD 90 03 65         [24]  782 	mov	dptr,#_spi_control_write_reg_bank_10000_75
      003000 E0               [24]  783 	movx	a,@dptr
      003001 F5 82            [12]  784 	mov	dpl,a
      003003 12 2F 6B         [24]  785 	lcall	_select_reg_bank
                                    786 ;	SPI.c:77: CS_LOW;
                                    787 ;	assignBit
      003006 C2 91            [12]  788 	clr	_P1_1
                                    789 ;	SPI.c:80: SPI_send(addr);
      003008 90 03 63         [24]  790 	mov	dptr,#_spi_control_write_PARM_2
      00300B E0               [24]  791 	movx	a,@dptr
      00300C FF               [12]  792 	mov	r7,a
      00300D F5 82            [12]  793 	mov	dpl,a
      00300F C0 07            [24]  794 	push	ar7
      003011 12 30 5B         [24]  795 	lcall	_SPI_send
      003014 D0 07            [24]  796 	pop	ar7
                                    797 ;	SPI.c:83: SPI_send(data);
      003016 90 03 64         [24]  798 	mov	dptr,#_spi_control_write_PARM_3
      003019 E0               [24]  799 	movx	a,@dptr
      00301A FE               [12]  800 	mov	r6,a
      00301B F5 82            [12]  801 	mov	dpl,a
      00301D C0 07            [24]  802 	push	ar7
      00301F C0 06            [24]  803 	push	ar6
      003021 12 30 5B         [24]  804 	lcall	_SPI_send
      003024 D0 06            [24]  805 	pop	ar6
      003026 D0 07            [24]  806 	pop	ar7
                                    807 ;	SPI.c:86: CS_HIGH;
                                    808 ;	assignBit
      003028 D2 91            [12]  809 	setb	_P1_1
                                    810 ;	SPI.c:89: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      00302A 7D 00            [12]  811 	mov	r5,#0x00
      00302C 7C 00            [12]  812 	mov	r4,#0x00
      00302E C0 06            [24]  813 	push	ar6
      003030 C0 05            [24]  814 	push	ar5
      003032 C0 07            [24]  815 	push	ar7
      003034 C0 04            [24]  816 	push	ar4
      003036 74 D8            [12]  817 	mov	a,#___str_1
      003038 C0 E0            [24]  818 	push	acc
      00303A 74 49            [12]  819 	mov	a,#(___str_1 >> 8)
      00303C C0 E0            [24]  820 	push	acc
      00303E 74 80            [12]  821 	mov	a,#0x80
      003040 C0 E0            [24]  822 	push	acc
      003042 12 3A 16         [24]  823 	lcall	_printf
      003045 E5 81            [12]  824 	mov	a,sp
      003047 24 F9            [12]  825 	add	a,#0xf9
      003049 F5 81            [12]  826 	mov	sp,a
                                    827 ;	SPI.c:90: }
      00304B 22               [24]  828 	ret
                                    829 ;------------------------------------------------------------
                                    830 ;Allocation info for local variables in function 'configure_SPI'
                                    831 ;------------------------------------------------------------
                                    832 ;	SPI.c:93: void configure_SPI(void)
                                    833 ;	-----------------------------------------
                                    834 ;	 function configure_SPI
                                    835 ;	-----------------------------------------
      00304C                        836 _configure_SPI:
                                    837 ;	SPI.c:95: CS_PIN = 1;
                                    838 ;	assignBit
      00304C D2 91            [12]  839 	setb	_P1_1
                                    840 ;	SPI.c:96: SPCON = 0x00;
      00304E 75 C3 00         [24]  841 	mov	_SPCON,#0x00
                                    842 ;	SPI.c:97: SPCON |= SS_DISABLE;
      003051 43 C3 20         [24]  843 	orl	_SPCON,#0x20
                                    844 ;	SPI.c:98: SPCON |= MASTER_MODE;
      003054 43 C3 10         [24]  845 	orl	_SPCON,#0x10
                                    846 ;	SPI.c:99: SPCON |= SPI_ENABLE;
      003057 43 C3 40         [24]  847 	orl	_SPCON,#0x40
                                    848 ;	SPI.c:100: }
      00305A 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'SPI_send'
                                    852 ;------------------------------------------------------------
                                    853 ;data                      Allocated with name '_SPI_send_data_10000_79'
                                    854 ;------------------------------------------------------------
                                    855 ;	SPI.c:103: void SPI_send(uint8_t data)
                                    856 ;	-----------------------------------------
                                    857 ;	 function SPI_send
                                    858 ;	-----------------------------------------
      00305B                        859 _SPI_send:
      00305B E5 82            [12]  860 	mov	a,dpl
      00305D 90 03 66         [24]  861 	mov	dptr,#_SPI_send_data_10000_79
      003060 F0               [24]  862 	movx	@dptr,a
                                    863 ;	SPI.c:106: SPDAT = data;           // Config + MSB of data
      003061 E0               [24]  864 	movx	a,@dptr
      003062 F5 C5            [12]  865 	mov	_SPDAT,a
                                    866 ;	SPI.c:108: while (!(SPSTA & 0x80))
      003064                        867 00101$:
      003064 E5 C4            [12]  868 	mov	a,_SPSTA
      003066 30 E7 FB         [24]  869 	jnb	acc.7,00101$
                                    870 ;	SPI.c:113: }
      003069 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'enc_reset'
                                    874 ;------------------------------------------------------------
                                    875 ;	SPI.c:115: void enc_reset(void)
                                    876 ;	-----------------------------------------
                                    877 ;	 function enc_reset
                                    878 ;	-----------------------------------------
      00306A                        879 _enc_reset:
                                    880 ;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    881 ;	assignBit
      00306A C2 91            [12]  882 	clr	_P1_1
                                    883 ;	SPI.c:118: SPI_send(0xFF);            // Send reset command
      00306C 75 82 FF         [24]  884 	mov	dpl, #0xff
      00306F 12 30 5B         [24]  885 	lcall	_SPI_send
                                    886 ;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    887 ;	assignBit
      003072 D2 91            [12]  888 	setb	_P1_1
                                    889 ;	SPI.c:120: }
      003074 22               [24]  890 	ret
                                    891 ;------------------------------------------------------------
                                    892 ;Allocation info for local variables in function 'eth_spi_read'
                                    893 ;------------------------------------------------------------
                                    894 ;bank                      Allocated with name '_eth_spi_read_PARM_2'
                                    895 ;addr                      Allocated with name '_eth_spi_read_addr_10000_84'
                                    896 ;data                      Allocated with name '_eth_spi_read_data_10001_87'
                                    897 ;------------------------------------------------------------
                                    898 ;	SPI.c:122: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
                                    899 ;	-----------------------------------------
                                    900 ;	 function eth_spi_read
                                    901 ;	-----------------------------------------
      003075                        902 _eth_spi_read:
      003075 E5 82            [12]  903 	mov	a,dpl
      003077 90 03 68         [24]  904 	mov	dptr,#_eth_spi_read_addr_10000_84
      00307A F0               [24]  905 	movx	@dptr,a
                                    906 ;	SPI.c:124: if (addr > 0x1F) {
      00307B E0               [24]  907 	movx	a,@dptr
      00307C FF               [12]  908 	mov  r7,a
      00307D 24 E0            [12]  909 	add	a,#0xff - 0x1f
      00307F 50 19            [24]  910 	jnc	00102$
                                    911 ;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003081 74 FD            [12]  912 	mov	a,#___str_2
      003083 C0 E0            [24]  913 	push	acc
      003085 74 49            [12]  914 	mov	a,#(___str_2 >> 8)
      003087 C0 E0            [24]  915 	push	acc
      003089 74 80            [12]  916 	mov	a,#0x80
      00308B C0 E0            [24]  917 	push	acc
      00308D 12 3A 16         [24]  918 	lcall	_printf
      003090 15 81            [12]  919 	dec	sp
      003092 15 81            [12]  920 	dec	sp
      003094 15 81            [12]  921 	dec	sp
                                    922 ;	SPI.c:126: return 0;
      003096 75 82 00         [24]  923 	mov	dpl, #0x00
      003099 22               [24]  924 	ret
      00309A                        925 00102$:
                                    926 ;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
      00309A 90 03 67         [24]  927 	mov	dptr,#_eth_spi_read_PARM_2
      00309D E0               [24]  928 	movx	a,@dptr
      00309E F5 82            [12]  929 	mov	dpl,a
      0030A0 C0 07            [24]  930 	push	ar7
      0030A2 12 2F 6B         [24]  931 	lcall	_select_reg_bank
      0030A5 D0 07            [24]  932 	pop	ar7
                                    933 ;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
                                    934 ;	assignBit
      0030A7 C2 91            [12]  935 	clr	_P1_1
                                    936 ;	SPI.c:132: SPI_send(addr);            // Send the address
      0030A9 8F 82            [24]  937 	mov	dpl, r7
      0030AB C0 07            [24]  938 	push	ar7
      0030AD 12 30 5B         [24]  939 	lcall	_SPI_send
                                    940 ;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
      0030B0 12 2F 48         [24]  941 	lcall	_SPI_ReadByte
      0030B3 AE 82            [24]  942 	mov	r6, dpl
      0030B5 D0 07            [24]  943 	pop	ar7
                                    944 ;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
                                    945 ;	assignBit
      0030B7 D2 91            [12]  946 	setb	_P1_1
                                    947 ;	SPI.c:137: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      0030B9 8E 04            [24]  948 	mov	ar4,r6
      0030BB 7D 00            [12]  949 	mov	r5,#0x00
      0030BD 7B 00            [12]  950 	mov	r3,#0x00
      0030BF C0 06            [24]  951 	push	ar6
      0030C1 C0 04            [24]  952 	push	ar4
      0030C3 C0 05            [24]  953 	push	ar5
      0030C5 C0 07            [24]  954 	push	ar7
      0030C7 C0 03            [24]  955 	push	ar3
      0030C9 74 37            [12]  956 	mov	a,#___str_3
      0030CB C0 E0            [24]  957 	push	acc
      0030CD 74 4A            [12]  958 	mov	a,#(___str_3 >> 8)
      0030CF C0 E0            [24]  959 	push	acc
      0030D1 74 80            [12]  960 	mov	a,#0x80
      0030D3 C0 E0            [24]  961 	push	acc
      0030D5 12 3A 16         [24]  962 	lcall	_printf
      0030D8 E5 81            [12]  963 	mov	a,sp
      0030DA 24 F9            [12]  964 	add	a,#0xf9
      0030DC F5 81            [12]  965 	mov	sp,a
      0030DE D0 06            [24]  966 	pop	ar6
                                    967 ;	SPI.c:139: return data;
      0030E0 8E 82            [24]  968 	mov	dpl, r6
                                    969 ;	SPI.c:140: }
      0030E2 22               [24]  970 	ret
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'phy_spi_write'
                                    973 ;------------------------------------------------------------
                                    974 ;data                      Allocated with name '_phy_spi_write_PARM_2'
                                    975 ;addr                      Allocated with name '_phy_spi_write_addr_10000_88'
                                    976 ;------------------------------------------------------------
                                    977 ;	SPI.c:142: void phy_spi_write(uint8_t addr, uint16_t data)
                                    978 ;	-----------------------------------------
                                    979 ;	 function phy_spi_write
                                    980 ;	-----------------------------------------
      0030E3                        981 _phy_spi_write:
      0030E3 E5 82            [12]  982 	mov	a,dpl
      0030E5 90 03 6B         [24]  983 	mov	dptr,#_phy_spi_write_addr_10000_88
      0030E8 F0               [24]  984 	movx	@dptr,a
                                    985 ;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
      0030E9 E0               [24]  986 	movx	a,@dptr
      0030EA FF               [12]  987 	mov	r7,a
      0030EB 90 03 63         [24]  988 	mov	dptr,#_spi_control_write_PARM_2
      0030EE 74 14            [12]  989 	mov	a,#0x14
      0030F0 F0               [24]  990 	movx	@dptr,a
      0030F1 90 03 64         [24]  991 	mov	dptr,#_spi_control_write_PARM_3
      0030F4 EF               [12]  992 	mov	a,r7
      0030F5 F0               [24]  993 	movx	@dptr,a
      0030F6 75 82 02         [24]  994 	mov	dpl, #0x02
      0030F9 C0 07            [24]  995 	push	ar7
      0030FB 12 2F F0         [24]  996 	lcall	_spi_control_write
      0030FE D0 07            [24]  997 	pop	ar7
                                    998 ;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      003100 90 03 69         [24]  999 	mov	dptr,#_phy_spi_write_PARM_2
      003103 E0               [24] 1000 	movx	a,@dptr
      003104 FD               [12] 1001 	mov	r5,a
      003105 A3               [24] 1002 	inc	dptr
      003106 E0               [24] 1003 	movx	a,@dptr
      003107 FE               [12] 1004 	mov	r6,a
      003108 8D 04            [24] 1005 	mov	ar4,r5
      00310A 90 03 63         [24] 1006 	mov	dptr,#_spi_control_write_PARM_2
      00310D 74 16            [12] 1007 	mov	a,#0x16
      00310F F0               [24] 1008 	movx	@dptr,a
      003110 90 03 64         [24] 1009 	mov	dptr,#_spi_control_write_PARM_3
      003113 EC               [12] 1010 	mov	a,r4
      003114 F0               [24] 1011 	movx	@dptr,a
      003115 75 82 02         [24] 1012 	mov	dpl, #0x02
      003118 C0 07            [24] 1013 	push	ar7
      00311A C0 06            [24] 1014 	push	ar6
      00311C C0 05            [24] 1015 	push	ar5
      00311E 12 2F F0         [24] 1016 	lcall	_spi_control_write
      003121 D0 05            [24] 1017 	pop	ar5
      003123 D0 06            [24] 1018 	pop	ar6
      003125 D0 07            [24] 1019 	pop	ar7
                                   1020 ;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      003127 8E 04            [24] 1021 	mov	ar4,r6
      003129 90 03 63         [24] 1022 	mov	dptr,#_spi_control_write_PARM_2
      00312C 74 17            [12] 1023 	mov	a,#0x17
      00312E F0               [24] 1024 	movx	@dptr,a
      00312F 90 03 64         [24] 1025 	mov	dptr,#_spi_control_write_PARM_3
      003132 EC               [12] 1026 	mov	a,r4
      003133 F0               [24] 1027 	movx	@dptr,a
      003134 75 82 02         [24] 1028 	mov	dpl, #0x02
      003137 C0 07            [24] 1029 	push	ar7
      003139 C0 06            [24] 1030 	push	ar6
      00313B C0 05            [24] 1031 	push	ar5
      00313D 12 2F F0         [24] 1032 	lcall	_spi_control_write
      003140 D0 05            [24] 1033 	pop	ar5
      003142 D0 06            [24] 1034 	pop	ar6
      003144 D0 07            [24] 1035 	pop	ar7
                                   1036 ;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003146 7C 00            [12] 1037 	mov	r4,#0x00
      003148 C0 05            [24] 1038 	push	ar5
      00314A C0 06            [24] 1039 	push	ar6
      00314C C0 07            [24] 1040 	push	ar7
      00314E C0 04            [24] 1041 	push	ar4
      003150 74 5B            [12] 1042 	mov	a,#___str_4
      003152 C0 E0            [24] 1043 	push	acc
      003154 74 4A            [12] 1044 	mov	a,#(___str_4 >> 8)
      003156 C0 E0            [24] 1045 	push	acc
      003158 74 80            [12] 1046 	mov	a,#0x80
      00315A C0 E0            [24] 1047 	push	acc
      00315C 12 3A 16         [24] 1048 	lcall	_printf
      00315F E5 81            [12] 1049 	mov	a,sp
      003161 24 F9            [12] 1050 	add	a,#0xf9
      003163 F5 81            [12] 1051 	mov	sp,a
                                   1052 ;	SPI.c:150: }
      003165 22               [24] 1053 	ret
                                   1054 ;------------------------------------------------------------
                                   1055 ;Allocation info for local variables in function 'mac_spi_read'
                                   1056 ;------------------------------------------------------------
                                   1057 ;bank                      Allocated with name '_mac_spi_read_PARM_2'
                                   1058 ;addr                      Allocated with name '_mac_spi_read_addr_10000_90'
                                   1059 ;data                      Allocated with name '_mac_spi_read_data_10001_93'
                                   1060 ;------------------------------------------------------------
                                   1061 ;	SPI.c:152: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function mac_spi_read
                                   1064 ;	-----------------------------------------
      003166                       1065 _mac_spi_read:
      003166 E5 82            [12] 1066 	mov	a,dpl
      003168 90 03 6D         [24] 1067 	mov	dptr,#_mac_spi_read_addr_10000_90
      00316B F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	SPI.c:154: if (addr > 0x1F) {
      00316C E0               [24] 1070 	movx	a,@dptr
      00316D FF               [12] 1071 	mov  r7,a
      00316E 24 E0            [12] 1072 	add	a,#0xff - 0x1f
      003170 50 19            [24] 1073 	jnc	00102$
                                   1074 ;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003172 74 FD            [12] 1075 	mov	a,#___str_2
      003174 C0 E0            [24] 1076 	push	acc
      003176 74 49            [12] 1077 	mov	a,#(___str_2 >> 8)
      003178 C0 E0            [24] 1078 	push	acc
      00317A 74 80            [12] 1079 	mov	a,#0x80
      00317C C0 E0            [24] 1080 	push	acc
      00317E 12 3A 16         [24] 1081 	lcall	_printf
      003181 15 81            [12] 1082 	dec	sp
      003183 15 81            [12] 1083 	dec	sp
      003185 15 81            [12] 1084 	dec	sp
                                   1085 ;	SPI.c:156: return 0; // Return 0 if address is invalid
      003187 75 82 00         [24] 1086 	mov	dpl, #0x00
      00318A 22               [24] 1087 	ret
      00318B                       1088 00102$:
                                   1089 ;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
      00318B 90 03 6C         [24] 1090 	mov	dptr,#_mac_spi_read_PARM_2
      00318E E0               [24] 1091 	movx	a,@dptr
      00318F F5 82            [12] 1092 	mov	dpl,a
      003191 C0 07            [24] 1093 	push	ar7
      003193 12 2F 6B         [24] 1094 	lcall	_select_reg_bank
      003196 D0 07            [24] 1095 	pop	ar7
                                   1096 ;	SPI.c:162: CS_LOW;
                                   1097 ;	assignBit
      003198 C2 91            [12] 1098 	clr	_P1_1
                                   1099 ;	SPI.c:165: SPI_send(addr);
      00319A 8F 82            [24] 1100 	mov	dpl, r7
      00319C C0 07            [24] 1101 	push	ar7
      00319E 12 30 5B         [24] 1102 	lcall	_SPI_send
                                   1103 ;	SPI.c:168: uint8_t data = SPI_ReadByte();
      0031A1 12 2F 48         [24] 1104 	lcall	_SPI_ReadByte
      0031A4 AE 82            [24] 1105 	mov	r6, dpl
      0031A6 D0 07            [24] 1106 	pop	ar7
                                   1107 ;	SPI.c:171: CS_HIGH;
                                   1108 ;	assignBit
      0031A8 D2 91            [12] 1109 	setb	_P1_1
                                   1110 ;	SPI.c:174: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      0031AA 8E 04            [24] 1111 	mov	ar4,r6
      0031AC 7D 00            [12] 1112 	mov	r5,#0x00
      0031AE 7B 00            [12] 1113 	mov	r3,#0x00
      0031B0 C0 06            [24] 1114 	push	ar6
      0031B2 C0 04            [24] 1115 	push	ar4
      0031B4 C0 05            [24] 1116 	push	ar5
      0031B6 C0 07            [24] 1117 	push	ar7
      0031B8 C0 03            [24] 1118 	push	ar3
      0031BA 74 84            [12] 1119 	mov	a,#___str_5
      0031BC C0 E0            [24] 1120 	push	acc
      0031BE 74 4A            [12] 1121 	mov	a,#(___str_5 >> 8)
      0031C0 C0 E0            [24] 1122 	push	acc
      0031C2 74 80            [12] 1123 	mov	a,#0x80
      0031C4 C0 E0            [24] 1124 	push	acc
      0031C6 12 3A 16         [24] 1125 	lcall	_printf
      0031C9 E5 81            [12] 1126 	mov	a,sp
      0031CB 24 F9            [12] 1127 	add	a,#0xf9
      0031CD F5 81            [12] 1128 	mov	sp,a
      0031CF D0 06            [24] 1129 	pop	ar6
                                   1130 ;	SPI.c:176: return data;
      0031D1 8E 82            [24] 1131 	mov	dpl, r6
                                   1132 ;	SPI.c:177: }
      0031D3 22               [24] 1133 	ret
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'phy_spi_read'
                                   1136 ;------------------------------------------------------------
                                   1137 ;addr                      Allocated with name '_phy_spi_read_addr_10000_94'
                                   1138 ;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_96'
                                   1139 ;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_96'
                                   1140 ;data                      Allocated with name '_phy_spi_read_data_10001_96'
                                   1141 ;------------------------------------------------------------
                                   1142 ;	SPI.c:180: uint16_t phy_spi_read(uint8_t addr)
                                   1143 ;	-----------------------------------------
                                   1144 ;	 function phy_spi_read
                                   1145 ;	-----------------------------------------
      0031D4                       1146 _phy_spi_read:
      0031D4 E5 82            [12] 1147 	mov	a,dpl
      0031D6 90 03 6E         [24] 1148 	mov	dptr,#_phy_spi_read_addr_10000_94
      0031D9 F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
      0031DA E0               [24] 1151 	movx	a,@dptr
      0031DB FF               [12] 1152 	mov	r7,a
      0031DC 90 03 63         [24] 1153 	mov	dptr,#_spi_control_write_PARM_2
      0031DF 74 14            [12] 1154 	mov	a,#0x14
      0031E1 F0               [24] 1155 	movx	@dptr,a
      0031E2 90 03 64         [24] 1156 	mov	dptr,#_spi_control_write_PARM_3
      0031E5 EF               [12] 1157 	mov	a,r7
      0031E6 F0               [24] 1158 	movx	@dptr,a
      0031E7 75 82 02         [24] 1159 	mov	dpl, #0x02
      0031EA C0 07            [24] 1160 	push	ar7
      0031EC 12 2F F0         [24] 1161 	lcall	_spi_control_write
      0031EF D0 07            [24] 1162 	pop	ar7
                                   1163 ;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      0031F1 90 03 63         [24] 1164 	mov	dptr,#_spi_control_write_PARM_2
      0031F4 74 12            [12] 1165 	mov	a,#0x12
      0031F6 F0               [24] 1166 	movx	@dptr,a
      0031F7 90 03 64         [24] 1167 	mov	dptr,#_spi_control_write_PARM_3
      0031FA 74 01            [12] 1168 	mov	a,#0x01
      0031FC F0               [24] 1169 	movx	@dptr,a
      0031FD 75 82 02         [24] 1170 	mov	dpl, #0x02
      003200 C0 07            [24] 1171 	push	ar7
      003202 12 2F F0         [24] 1172 	lcall	_spi_control_write
                                   1173 ;	SPI.c:185: busy_wait();                          // Wait for the read to complete
      003205 12 32 81         [24] 1174 	lcall	_busy_wait
      003208 D0 07            [24] 1175 	pop	ar7
                                   1176 ;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      00320A 90 03 63         [24] 1177 	mov	dptr,#_spi_control_write_PARM_2
      00320D 74 12            [12] 1178 	mov	a,#0x12
      00320F F0               [24] 1179 	movx	@dptr,a
      003210 90 03 64         [24] 1180 	mov	dptr,#_spi_control_write_PARM_3
      003213 E4               [12] 1181 	clr	a
      003214 F0               [24] 1182 	movx	@dptr,a
      003215 75 82 02         [24] 1183 	mov	dpl, #0x02
      003218 C0 07            [24] 1184 	push	ar7
      00321A 12 2F F0         [24] 1185 	lcall	_spi_control_write
      00321D D0 07            [24] 1186 	pop	ar7
                                   1187 ;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      00321F 90 03 6C         [24] 1188 	mov	dptr,#_mac_spi_read_PARM_2
      003222 74 02            [12] 1189 	mov	a,#0x02
      003224 F0               [24] 1190 	movx	@dptr,a
      003225 75 82 18         [24] 1191 	mov	dpl, #0x18
      003228 C0 07            [24] 1192 	push	ar7
      00322A 12 31 66         [24] 1193 	lcall	_mac_spi_read
      00322D AE 82            [24] 1194 	mov	r6, dpl
      00322F D0 07            [24] 1195 	pop	ar7
      003231 7D 00            [12] 1196 	mov	r5,#0x00
                                   1197 ;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003233 90 03 6C         [24] 1198 	mov	dptr,#_mac_spi_read_PARM_2
      003236 74 02            [12] 1199 	mov	a,#0x02
      003238 F0               [24] 1200 	movx	@dptr,a
      003239 75 82 19         [24] 1201 	mov	dpl, #0x19
      00323C C0 07            [24] 1202 	push	ar7
      00323E C0 06            [24] 1203 	push	ar6
      003240 C0 05            [24] 1204 	push	ar5
      003242 12 31 66         [24] 1205 	lcall	_mac_spi_read
      003245 AC 82            [24] 1206 	mov	r4, dpl
      003247 D0 05            [24] 1207 	pop	ar5
      003249 D0 06            [24] 1208 	pop	ar6
      00324B D0 07            [24] 1209 	pop	ar7
                                   1210 ;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      00324D 8C 03            [24] 1211 	mov	ar3,r4
      00324F E4               [12] 1212 	clr	a
      003250 42 06            [12] 1213 	orl	ar6,a
      003252 EB               [12] 1214 	mov	a,r3
      003253 42 05            [12] 1215 	orl	ar5,a
                                   1216 ;	SPI.c:195: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003255 7C 00            [12] 1217 	mov	r4,#0x00
      003257 C0 06            [24] 1218 	push	ar6
      003259 C0 05            [24] 1219 	push	ar5
      00325B C0 06            [24] 1220 	push	ar6
      00325D C0 05            [24] 1221 	push	ar5
      00325F C0 07            [24] 1222 	push	ar7
      003261 C0 04            [24] 1223 	push	ar4
      003263 74 A7            [12] 1224 	mov	a,#___str_6
      003265 C0 E0            [24] 1225 	push	acc
      003267 74 4A            [12] 1226 	mov	a,#(___str_6 >> 8)
      003269 C0 E0            [24] 1227 	push	acc
      00326B 74 80            [12] 1228 	mov	a,#0x80
      00326D C0 E0            [24] 1229 	push	acc
      00326F 12 3A 16         [24] 1230 	lcall	_printf
      003272 E5 81            [12] 1231 	mov	a,sp
      003274 24 F9            [12] 1232 	add	a,#0xf9
      003276 F5 81            [12] 1233 	mov	sp,a
      003278 D0 05            [24] 1234 	pop	ar5
      00327A D0 06            [24] 1235 	pop	ar6
                                   1236 ;	SPI.c:197: return data;        // Combine MSB and LSB
      00327C 8E 82            [24] 1237 	mov	dpl, r6
      00327E 8D 83            [24] 1238 	mov	dph, r5
                                   1239 ;	SPI.c:198: }
      003280 22               [24] 1240 	ret
                                   1241 ;------------------------------------------------------------
                                   1242 ;Allocation info for local variables in function 'busy_wait'
                                   1243 ;------------------------------------------------------------
                                   1244 ;data                      Allocated with name '_busy_wait_data_10000_98'
                                   1245 ;------------------------------------------------------------
                                   1246 ;	SPI.c:200: void busy_wait(void)
                                   1247 ;	-----------------------------------------
                                   1248 ;	 function busy_wait
                                   1249 ;	-----------------------------------------
      003281                       1250 _busy_wait:
                                   1251 ;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      003281 90 03 6C         [24] 1252 	mov	dptr,#_mac_spi_read_PARM_2
      003284 74 03            [12] 1253 	mov	a,#0x03
      003286 F0               [24] 1254 	movx	@dptr,a
      003287 75 82 0A         [24] 1255 	mov	dpl, #0x0a
      00328A 12 31 66         [24] 1256 	lcall	_mac_spi_read
      00328D E5 82            [12] 1257 	mov	a, dpl
      00328F 90 03 6F         [24] 1258 	mov	dptr,#_busy_wait_data_10000_98
      003292 F0               [24] 1259 	movx	@dptr,a
                                   1260 ;	SPI.c:203: while (data & 0x01)
      003293                       1261 00101$:
      003293 90 03 6F         [24] 1262 	mov	dptr,#_busy_wait_data_10000_98
      003296 E0               [24] 1263 	movx	a,@dptr
      003297 30 E0 14         [24] 1264 	jnb	acc.0,00104$
                                   1265 ;	SPI.c:205: data = mac_spi_read(0x0A, 3);
      00329A 90 03 6C         [24] 1266 	mov	dptr,#_mac_spi_read_PARM_2
      00329D 74 03            [12] 1267 	mov	a,#0x03
      00329F F0               [24] 1268 	movx	@dptr,a
      0032A0 75 82 0A         [24] 1269 	mov	dpl, #0x0a
      0032A3 12 31 66         [24] 1270 	lcall	_mac_spi_read
      0032A6 E5 82            [12] 1271 	mov	a, dpl
      0032A8 90 03 6F         [24] 1272 	mov	dptr,#_busy_wait_data_10000_98
      0032AB F0               [24] 1273 	movx	@dptr,a
      0032AC 80 E5            [24] 1274 	sjmp	00101$
      0032AE                       1275 00104$:
                                   1276 ;	SPI.c:207: }
      0032AE 22               [24] 1277 	ret
                                   1278 ;------------------------------------------------------------
                                   1279 ;Allocation info for local variables in function 'buffer_init'
                                   1280 ;------------------------------------------------------------
                                   1281 ;size                      Allocated with name '_buffer_init_PARM_2'
                                   1282 ;start_address             Allocated with name '_buffer_init_start_address_10000_100'
                                   1283 ;erxst                     Allocated with name '_buffer_init_erxst_10001_103'
                                   1284 ;erxnd                     Allocated with name '_buffer_init_erxnd_10001_103'
                                   1285 ;------------------------------------------------------------
                                   1286 ;	SPI.c:209: void buffer_init(uint16_t start_address, uint16_t size)
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function buffer_init
                                   1289 ;	-----------------------------------------
      0032AF                       1290 _buffer_init:
      0032AF AF 83            [24] 1291 	mov	r7,dph
      0032B1 E5 82            [12] 1292 	mov	a,dpl
      0032B3 90 03 72         [24] 1293 	mov	dptr,#_buffer_init_start_address_10000_100
      0032B6 F0               [24] 1294 	movx	@dptr,a
      0032B7 EF               [12] 1295 	mov	a,r7
      0032B8 A3               [24] 1296 	inc	dptr
      0032B9 F0               [24] 1297 	movx	@dptr,a
                                   1298 ;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      0032BA 90 03 72         [24] 1299 	mov	dptr,#_buffer_init_start_address_10000_100
      0032BD E0               [24] 1300 	movx	a,@dptr
      0032BE FE               [12] 1301 	mov	r6,a
      0032BF A3               [24] 1302 	inc	dptr
      0032C0 E0               [24] 1303 	movx	a,@dptr
      0032C1 FF               [12] 1304 	mov	r7,a
      0032C2 8E 04            [24] 1305 	mov	ar4,r6
      0032C4 8F 05            [24] 1306 	mov	ar5,r7
      0032C6 C3               [12] 1307 	clr	c
      0032C7 74 FF            [12] 1308 	mov	a,#0xff
      0032C9 9C               [12] 1309 	subb	a,r4
      0032CA 74 1F            [12] 1310 	mov	a,#0x1f
      0032CC 9D               [12] 1311 	subb	a,r5
      0032CD 40 17            [24] 1312 	jc	00101$
      0032CF 90 03 70         [24] 1313 	mov	dptr,#_buffer_init_PARM_2
      0032D2 E0               [24] 1314 	movx	a,@dptr
      0032D3 FA               [12] 1315 	mov	r2,a
      0032D4 A3               [24] 1316 	inc	dptr
      0032D5 E0               [24] 1317 	movx	a,@dptr
      0032D6 FB               [12] 1318 	mov	r3,a
      0032D7 EA               [12] 1319 	mov	a,r2
      0032D8 2E               [12] 1320 	add	a, r6
      0032D9 F8               [12] 1321 	mov	r0,a
      0032DA EB               [12] 1322 	mov	a,r3
      0032DB 3F               [12] 1323 	addc	a, r7
      0032DC F9               [12] 1324 	mov	r1,a
      0032DD C3               [12] 1325 	clr	c
      0032DE 74 FF            [12] 1326 	mov	a,#0xff
      0032E0 98               [12] 1327 	subb	a,r0
      0032E1 74 1F            [12] 1328 	mov	a,#0x1f
      0032E3 99               [12] 1329 	subb	a,r1
      0032E4 50 2A            [24] 1330 	jnc	00102$
      0032E6                       1331 00101$:
                                   1332 ;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      0032E6 90 03 70         [24] 1333 	mov	dptr,#_buffer_init_PARM_2
      0032E9 E0               [24] 1334 	movx	a,@dptr
      0032EA C0 E0            [24] 1335 	push	acc
      0032EC A3               [24] 1336 	inc	dptr
      0032ED E0               [24] 1337 	movx	a,@dptr
      0032EE C0 E0            [24] 1338 	push	acc
      0032F0 90 03 72         [24] 1339 	mov	dptr,#_buffer_init_start_address_10000_100
      0032F3 E0               [24] 1340 	movx	a,@dptr
      0032F4 C0 E0            [24] 1341 	push	acc
      0032F6 A3               [24] 1342 	inc	dptr
      0032F7 E0               [24] 1343 	movx	a,@dptr
      0032F8 C0 E0            [24] 1344 	push	acc
      0032FA 74 CF            [12] 1345 	mov	a,#___str_7
      0032FC C0 E0            [24] 1346 	push	acc
      0032FE 74 4A            [12] 1347 	mov	a,#(___str_7 >> 8)
      003300 C0 E0            [24] 1348 	push	acc
      003302 74 80            [12] 1349 	mov	a,#0x80
      003304 C0 E0            [24] 1350 	push	acc
      003306 12 3A 16         [24] 1351 	lcall	_printf
      003309 E5 81            [12] 1352 	mov	a,sp
      00330B 24 F9            [12] 1353 	add	a,#0xf9
      00330D F5 81            [12] 1354 	mov	sp,a
                                   1355 ;	SPI.c:213: return;
      00330F 22               [24] 1356 	ret
      003310                       1357 00102$:
                                   1358 ;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      003310 53 04 FE         [24] 1359 	anl	ar4,#0xfe
                                   1360 ;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      003313 EA               [12] 1361 	mov	a,r2
      003314 2E               [12] 1362 	add	a, r6
      003315 FE               [12] 1363 	mov	r6,a
      003316 EB               [12] 1364 	mov	a,r3
      003317 3F               [12] 1365 	addc	a, r7
      003318 FF               [12] 1366 	mov	r7,a
      003319 1E               [12] 1367 	dec	r6
      00331A BE FF 01         [24] 1368 	cjne	r6,#0xff,00114$
      00331D 1F               [12] 1369 	dec	r7
      00331E                       1370 00114$:
      00331E 53 06 FE         [24] 1371 	anl	ar6,#0xfe
                                   1372 ;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      003321 8D 03            [24] 1373 	mov	ar3,r5
      003323 90 03 63         [24] 1374 	mov	dptr,#_spi_control_write_PARM_2
      003326 74 08            [12] 1375 	mov	a,#0x08
      003328 F0               [24] 1376 	movx	@dptr,a
      003329 90 03 64         [24] 1377 	mov	dptr,#_spi_control_write_PARM_3
      00332C EB               [12] 1378 	mov	a,r3
      00332D F0               [24] 1379 	movx	@dptr,a
      00332E 75 82 00         [24] 1380 	mov	dpl, #0x00
      003331 C0 07            [24] 1381 	push	ar7
      003333 C0 06            [24] 1382 	push	ar6
      003335 C0 05            [24] 1383 	push	ar5
      003337 C0 04            [24] 1384 	push	ar4
      003339 12 2F F0         [24] 1385 	lcall	_spi_control_write
      00333C D0 04            [24] 1386 	pop	ar4
      00333E D0 05            [24] 1387 	pop	ar5
      003340 D0 06            [24] 1388 	pop	ar6
      003342 D0 07            [24] 1389 	pop	ar7
                                   1390 ;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003344 8C 03            [24] 1391 	mov	ar3,r4
      003346 90 03 63         [24] 1392 	mov	dptr,#_spi_control_write_PARM_2
      003349 74 09            [12] 1393 	mov	a,#0x09
      00334B F0               [24] 1394 	movx	@dptr,a
      00334C 90 03 64         [24] 1395 	mov	dptr,#_spi_control_write_PARM_3
      00334F EB               [12] 1396 	mov	a,r3
      003350 F0               [24] 1397 	movx	@dptr,a
      003351 75 82 00         [24] 1398 	mov	dpl, #0x00
      003354 C0 07            [24] 1399 	push	ar7
      003356 C0 06            [24] 1400 	push	ar6
      003358 C0 05            [24] 1401 	push	ar5
      00335A C0 04            [24] 1402 	push	ar4
      00335C 12 2F F0         [24] 1403 	lcall	_spi_control_write
      00335F D0 04            [24] 1404 	pop	ar4
      003361 D0 05            [24] 1405 	pop	ar5
      003363 D0 06            [24] 1406 	pop	ar6
      003365 D0 07            [24] 1407 	pop	ar7
                                   1408 ;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003367 8F 03            [24] 1409 	mov	ar3,r7
      003369 90 03 63         [24] 1410 	mov	dptr,#_spi_control_write_PARM_2
      00336C 74 0A            [12] 1411 	mov	a,#0x0a
      00336E F0               [24] 1412 	movx	@dptr,a
      00336F 90 03 64         [24] 1413 	mov	dptr,#_spi_control_write_PARM_3
      003372 EB               [12] 1414 	mov	a,r3
      003373 F0               [24] 1415 	movx	@dptr,a
      003374 75 82 00         [24] 1416 	mov	dpl, #0x00
      003377 C0 07            [24] 1417 	push	ar7
      003379 C0 06            [24] 1418 	push	ar6
      00337B C0 05            [24] 1419 	push	ar5
      00337D C0 04            [24] 1420 	push	ar4
      00337F 12 2F F0         [24] 1421 	lcall	_spi_control_write
      003382 D0 04            [24] 1422 	pop	ar4
      003384 D0 05            [24] 1423 	pop	ar5
      003386 D0 06            [24] 1424 	pop	ar6
      003388 D0 07            [24] 1425 	pop	ar7
                                   1426 ;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      00338A 8E 03            [24] 1427 	mov	ar3,r6
      00338C 90 03 63         [24] 1428 	mov	dptr,#_spi_control_write_PARM_2
      00338F 74 0B            [12] 1429 	mov	a,#0x0b
      003391 F0               [24] 1430 	movx	@dptr,a
      003392 90 03 64         [24] 1431 	mov	dptr,#_spi_control_write_PARM_3
      003395 EB               [12] 1432 	mov	a,r3
      003396 F0               [24] 1433 	movx	@dptr,a
      003397 75 82 00         [24] 1434 	mov	dpl, #0x00
      00339A C0 07            [24] 1435 	push	ar7
      00339C C0 06            [24] 1436 	push	ar6
      00339E C0 05            [24] 1437 	push	ar5
      0033A0 C0 04            [24] 1438 	push	ar4
      0033A2 12 2F F0         [24] 1439 	lcall	_spi_control_write
      0033A5 D0 04            [24] 1440 	pop	ar4
      0033A7 D0 05            [24] 1441 	pop	ar5
      0033A9 D0 06            [24] 1442 	pop	ar6
      0033AB D0 07            [24] 1443 	pop	ar7
                                   1444 ;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      0033AD C0 06            [24] 1445 	push	ar6
      0033AF C0 07            [24] 1446 	push	ar7
      0033B1 C0 04            [24] 1447 	push	ar4
      0033B3 C0 05            [24] 1448 	push	ar5
      0033B5 74 0D            [12] 1449 	mov	a,#___str_8
      0033B7 C0 E0            [24] 1450 	push	acc
      0033B9 74 4B            [12] 1451 	mov	a,#(___str_8 >> 8)
      0033BB C0 E0            [24] 1452 	push	acc
      0033BD 74 80            [12] 1453 	mov	a,#0x80
      0033BF C0 E0            [24] 1454 	push	acc
      0033C1 12 3A 16         [24] 1455 	lcall	_printf
      0033C4 E5 81            [12] 1456 	mov	a,sp
      0033C6 24 F9            [12] 1457 	add	a,#0xf9
      0033C8 F5 81            [12] 1458 	mov	sp,a
                                   1459 ;	SPI.c:229: }
      0033CA 22               [24] 1460 	ret
                                   1461 ;------------------------------------------------------------
                                   1462 ;Allocation info for local variables in function 'spi_buffer_read'
                                   1463 ;------------------------------------------------------------
                                   1464 ;start_address             Allocated with name '_spi_buffer_read_PARM_2'
                                   1465 ;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
                                   1466 ;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_104'
                                   1467 ;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_109'
                                   1468 ;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_109'
                                   1469 ;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_110'
                                   1470 ;i                         Allocated with name '_spi_buffer_read_i_20002_111'
                                   1471 ;------------------------------------------------------------
                                   1472 ;	SPI.c:232: void spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1473 ;	-----------------------------------------
                                   1474 ;	 function spi_buffer_read
                                   1475 ;	-----------------------------------------
      0033CB                       1476 _spi_buffer_read:
      0033CB AF 83            [24] 1477 	mov	r7,dph
      0033CD E5 82            [12] 1478 	mov	a,dpl
      0033CF 90 03 79         [24] 1479 	mov	dptr,#_spi_buffer_read_num_bytes_10000_104
      0033D2 F0               [24] 1480 	movx	@dptr,a
      0033D3 EF               [12] 1481 	mov	a,r7
      0033D4 A3               [24] 1482 	inc	dptr
      0033D5 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	SPI.c:234: if (num_bytes < 1) {
      0033D6 90 03 79         [24] 1485 	mov	dptr,#_spi_buffer_read_num_bytes_10000_104
      0033D9 E0               [24] 1486 	movx	a,@dptr
      0033DA FE               [12] 1487 	mov	r6,a
      0033DB A3               [24] 1488 	inc	dptr
      0033DC E0               [24] 1489 	movx	a,@dptr
      0033DD FF               [12] 1490 	mov	r7,a
      0033DE C3               [12] 1491 	clr	c
      0033DF EE               [12] 1492 	mov	a,r6
      0033E0 94 01            [12] 1493 	subb	a,#0x01
      0033E2 EF               [12] 1494 	mov	a,r7
      0033E3 64 80            [12] 1495 	xrl	a,#0x80
      0033E5 94 80            [12] 1496 	subb	a,#0x80
      0033E7 50 1A            [24] 1497 	jnc	00102$
                                   1498 ;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      0033E9 C0 06            [24] 1499 	push	ar6
      0033EB C0 07            [24] 1500 	push	ar7
      0033ED 74 3E            [12] 1501 	mov	a,#___str_9
      0033EF C0 E0            [24] 1502 	push	acc
      0033F1 74 4B            [12] 1503 	mov	a,#(___str_9 >> 8)
      0033F3 C0 E0            [24] 1504 	push	acc
      0033F5 74 80            [12] 1505 	mov	a,#0x80
      0033F7 C0 E0            [24] 1506 	push	acc
      0033F9 12 3A 16         [24] 1507 	lcall	_printf
      0033FC E5 81            [12] 1508 	mov	a,sp
      0033FE 24 FB            [12] 1509 	add	a,#0xfb
      003400 F5 81            [12] 1510 	mov	sp,a
                                   1511 ;	SPI.c:236: return;
      003402 22               [24] 1512 	ret
      003403                       1513 00102$:
                                   1514 ;	SPI.c:238: if (start_address > 0x1FFF) {
      003403 90 03 74         [24] 1515 	mov	dptr,#_spi_buffer_read_PARM_2
      003406 E0               [24] 1516 	movx	a,@dptr
      003407 FC               [12] 1517 	mov	r4,a
      003408 A3               [24] 1518 	inc	dptr
      003409 E0               [24] 1519 	movx	a,@dptr
      00340A FD               [12] 1520 	mov	r5,a
      00340B 8C 02            [24] 1521 	mov	ar2,r4
      00340D 8D 03            [24] 1522 	mov	ar3,r5
      00340F C3               [12] 1523 	clr	c
      003410 74 FF            [12] 1524 	mov	a,#0xff
      003412 9A               [12] 1525 	subb	a,r2
      003413 74 1F            [12] 1526 	mov	a,#0x1f
      003415 9B               [12] 1527 	subb	a,r3
      003416 50 1A            [24] 1528 	jnc	00104$
                                   1529 ;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
      003418 C0 04            [24] 1530 	push	ar4
      00341A C0 05            [24] 1531 	push	ar5
      00341C 74 5E            [12] 1532 	mov	a,#___str_10
      00341E C0 E0            [24] 1533 	push	acc
      003420 74 4B            [12] 1534 	mov	a,#(___str_10 >> 8)
      003422 C0 E0            [24] 1535 	push	acc
      003424 74 80            [12] 1536 	mov	a,#0x80
      003426 C0 E0            [24] 1537 	push	acc
      003428 12 3A 16         [24] 1538 	lcall	_printf
      00342B E5 81            [12] 1539 	mov	a,sp
      00342D 24 FB            [12] 1540 	add	a,#0xfb
      00342F F5 81            [12] 1541 	mov	sp,a
                                   1542 ;	SPI.c:240: return;
      003431 22               [24] 1543 	ret
      003432                       1544 00104$:
                                   1545 ;	SPI.c:243: if (num_bytes > 1) {
      003432 C3               [12] 1546 	clr	c
      003433 74 01            [12] 1547 	mov	a,#0x01
      003435 9E               [12] 1548 	subb	a,r6
      003436 74 80            [12] 1549 	mov	a,#(0x00 ^ 0x80)
      003438 8F F0            [24] 1550 	mov	b,r7
      00343A 63 F0 80         [24] 1551 	xrl	b,#0x80
      00343D 95 F0            [12] 1552 	subb	a,b
      00343F 50 0B            [24] 1553 	jnc	00106$
                                   1554 ;	SPI.c:244: spi_set_autoinc();
      003441 C0 05            [24] 1555 	push	ar5
      003443 C0 04            [24] 1556 	push	ar4
      003445 12 2F 5A         [24] 1557 	lcall	_spi_set_autoinc
      003448 D0 04            [24] 1558 	pop	ar4
      00344A D0 05            [24] 1559 	pop	ar5
      00344C                       1560 00106$:
                                   1561 ;	SPI.c:248: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      00344C 8D 07            [24] 1562 	mov	ar7,r5
                                   1563 ;	SPI.c:249: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      00344E 8C 06            [24] 1564 	mov	ar6,r4
                                   1565 ;	SPI.c:251: spi_control_write(0, 0x01, higher_byte); // High byte
      003450 90 03 63         [24] 1566 	mov	dptr,#_spi_control_write_PARM_2
      003453 74 01            [12] 1567 	mov	a,#0x01
      003455 F0               [24] 1568 	movx	@dptr,a
      003456 90 03 64         [24] 1569 	mov	dptr,#_spi_control_write_PARM_3
      003459 EF               [12] 1570 	mov	a,r7
      00345A F0               [24] 1571 	movx	@dptr,a
      00345B 75 82 00         [24] 1572 	mov	dpl, #0x00
      00345E C0 06            [24] 1573 	push	ar6
      003460 C0 05            [24] 1574 	push	ar5
      003462 C0 04            [24] 1575 	push	ar4
      003464 12 2F F0         [24] 1576 	lcall	_spi_control_write
      003467 D0 04            [24] 1577 	pop	ar4
      003469 D0 05            [24] 1578 	pop	ar5
      00346B D0 06            [24] 1579 	pop	ar6
                                   1580 ;	SPI.c:252: spi_control_write(0, 0x00, lower_byte); // Low byte
      00346D 90 03 63         [24] 1581 	mov	dptr,#_spi_control_write_PARM_2
      003470 E4               [12] 1582 	clr	a
      003471 F0               [24] 1583 	movx	@dptr,a
      003472 90 03 64         [24] 1584 	mov	dptr,#_spi_control_write_PARM_3
      003475 EE               [12] 1585 	mov	a,r6
      003476 F0               [24] 1586 	movx	@dptr,a
      003477 75 82 00         [24] 1587 	mov	dpl, #0x00
      00347A C0 05            [24] 1588 	push	ar5
      00347C C0 04            [24] 1589 	push	ar4
      00347E 12 2F F0         [24] 1590 	lcall	_spi_control_write
                                   1591 ;	SPI.c:255: CS_LOW; // Pull CS Low
                                   1592 ;	assignBit
      003481 C2 91            [12] 1593 	clr	_P1_1
                                   1594 ;	SPI.c:256: SPI_send(opcode); // Send opcode
      003483 75 82 3A         [24] 1595 	mov	dpl, #0x3a
      003486 12 30 5B         [24] 1596 	lcall	_SPI_send
      003489 D0 04            [24] 1597 	pop	ar4
      00348B D0 05            [24] 1598 	pop	ar5
                                   1599 ;	SPI.c:259: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      00348D 90 03 79         [24] 1600 	mov	dptr,#_spi_buffer_read_num_bytes_10000_104
      003490 E0               [24] 1601 	movx	a,@dptr
      003491 FE               [12] 1602 	mov	r6,a
      003492 A3               [24] 1603 	inc	dptr
      003493 E0               [24] 1604 	movx	a,@dptr
      003494 FF               [12] 1605 	mov	r7,a
      003495 C0 07            [24] 1606 	push	ar7
      003497 C0 06            [24] 1607 	push	ar6
      003499 C0 04            [24] 1608 	push	ar4
      00349B C0 05            [24] 1609 	push	ar5
      00349D C0 06            [24] 1610 	push	ar6
      00349F C0 07            [24] 1611 	push	ar7
      0034A1 74 78            [12] 1612 	mov	a,#___str_11
      0034A3 C0 E0            [24] 1613 	push	acc
      0034A5 74 4B            [12] 1614 	mov	a,#(___str_11 >> 8)
      0034A7 C0 E0            [24] 1615 	push	acc
      0034A9 74 80            [12] 1616 	mov	a,#0x80
      0034AB C0 E0            [24] 1617 	push	acc
      0034AD 12 3A 16         [24] 1618 	lcall	_printf
      0034B0 E5 81            [12] 1619 	mov	a,sp
      0034B2 24 F9            [12] 1620 	add	a,#0xf9
      0034B4 F5 81            [12] 1621 	mov	sp,a
      0034B6 D0 06            [24] 1622 	pop	ar6
      0034B8 D0 07            [24] 1623 	pop	ar7
                                   1624 ;	SPI.c:260: for (int i = 0; i < num_bytes; i++) {
      0034BA 90 03 7B         [24] 1625 	mov	dptr,#_spi_buffer_read_i_20002_111
      0034BD E4               [12] 1626 	clr	a
      0034BE F0               [24] 1627 	movx	@dptr,a
      0034BF A3               [24] 1628 	inc	dptr
      0034C0 F0               [24] 1629 	movx	@dptr,a
      0034C1 90 03 76         [24] 1630 	mov	dptr,#_spi_buffer_read_PARM_3
      0034C4 E0               [24] 1631 	movx	a,@dptr
      0034C5 FB               [12] 1632 	mov	r3,a
      0034C6 A3               [24] 1633 	inc	dptr
      0034C7 E0               [24] 1634 	movx	a,@dptr
      0034C8 FC               [12] 1635 	mov	r4,a
      0034C9 A3               [24] 1636 	inc	dptr
      0034CA E0               [24] 1637 	movx	a,@dptr
      0034CB FD               [12] 1638 	mov	r5,a
      0034CC                       1639 00109$:
      0034CC 90 03 7B         [24] 1640 	mov	dptr,#_spi_buffer_read_i_20002_111
      0034CF E0               [24] 1641 	movx	a,@dptr
      0034D0 F9               [12] 1642 	mov	r1,a
      0034D1 A3               [24] 1643 	inc	dptr
      0034D2 E0               [24] 1644 	movx	a,@dptr
      0034D3 FA               [12] 1645 	mov	r2,a
      0034D4 C3               [12] 1646 	clr	c
      0034D5 E9               [12] 1647 	mov	a,r1
      0034D6 9E               [12] 1648 	subb	a,r6
      0034D7 EA               [12] 1649 	mov	a,r2
      0034D8 64 80            [12] 1650 	xrl	a,#0x80
      0034DA 8F F0            [24] 1651 	mov	b,r7
      0034DC 63 F0 80         [24] 1652 	xrl	b,#0x80
      0034DF 95 F0            [12] 1653 	subb	a,b
      0034E1 40 03            [24] 1654 	jc	00147$
      0034E3 02 35 69         [24] 1655 	ljmp	00107$
      0034E6                       1656 00147$:
                                   1657 ;	SPI.c:261: *data_ptr = SPI_ReadByte(); // Read data
      0034E6 C0 06            [24] 1658 	push	ar6
      0034E8 C0 07            [24] 1659 	push	ar7
      0034EA C0 07            [24] 1660 	push	ar7
      0034EC C0 06            [24] 1661 	push	ar6
      0034EE C0 05            [24] 1662 	push	ar5
      0034F0 C0 04            [24] 1663 	push	ar4
      0034F2 C0 03            [24] 1664 	push	ar3
      0034F4 C0 02            [24] 1665 	push	ar2
      0034F6 C0 01            [24] 1666 	push	ar1
      0034F8 12 2F 48         [24] 1667 	lcall	_SPI_ReadByte
      0034FB A8 82            [24] 1668 	mov	r0, dpl
      0034FD D0 01            [24] 1669 	pop	ar1
      0034FF D0 02            [24] 1670 	pop	ar2
      003501 D0 03            [24] 1671 	pop	ar3
      003503 D0 04            [24] 1672 	pop	ar4
      003505 D0 05            [24] 1673 	pop	ar5
      003507 D0 06            [24] 1674 	pop	ar6
      003509 D0 07            [24] 1675 	pop	ar7
      00350B 8B 82            [24] 1676 	mov	dpl,r3
      00350D 8C 83            [24] 1677 	mov	dph,r4
      00350F 8D F0            [24] 1678 	mov	b,r5
      003511 E8               [12] 1679 	mov	a,r0
      003512 12 38 84         [24] 1680 	lcall	__gptrput
      003515 A3               [24] 1681 	inc	dptr
      003516 AB 82            [24] 1682 	mov	r3,dpl
      003518 AC 83            [24] 1683 	mov	r4,dph
                                   1684 ;	SPI.c:262: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      00351A 7F 00            [12] 1685 	mov	r7,#0x00
      00351C 09               [12] 1686 	inc	r1
      00351D B9 00 01         [24] 1687 	cjne	r1,#0x00,00148$
      003520 0A               [12] 1688 	inc	r2
      003521                       1689 00148$:
      003521 C0 07            [24] 1690 	push	ar7
      003523 C0 06            [24] 1691 	push	ar6
      003525 C0 05            [24] 1692 	push	ar5
      003527 C0 04            [24] 1693 	push	ar4
      003529 C0 03            [24] 1694 	push	ar3
      00352B C0 02            [24] 1695 	push	ar2
      00352D C0 01            [24] 1696 	push	ar1
      00352F C0 00            [24] 1697 	push	ar0
      003531 C0 07            [24] 1698 	push	ar7
      003533 C0 01            [24] 1699 	push	ar1
      003535 C0 02            [24] 1700 	push	ar2
      003537 74 B3            [12] 1701 	mov	a,#___str_12
      003539 C0 E0            [24] 1702 	push	acc
      00353B 74 4B            [12] 1703 	mov	a,#(___str_12 >> 8)
      00353D C0 E0            [24] 1704 	push	acc
      00353F 74 80            [12] 1705 	mov	a,#0x80
      003541 C0 E0            [24] 1706 	push	acc
      003543 12 3A 16         [24] 1707 	lcall	_printf
      003546 E5 81            [12] 1708 	mov	a,sp
      003548 24 F9            [12] 1709 	add	a,#0xf9
      00354A F5 81            [12] 1710 	mov	sp,a
      00354C D0 01            [24] 1711 	pop	ar1
      00354E D0 02            [24] 1712 	pop	ar2
      003550 D0 03            [24] 1713 	pop	ar3
      003552 D0 04            [24] 1714 	pop	ar4
      003554 D0 05            [24] 1715 	pop	ar5
      003556 D0 06            [24] 1716 	pop	ar6
      003558 D0 07            [24] 1717 	pop	ar7
                                   1718 ;	SPI.c:263: data_ptr++;
                                   1719 ;	SPI.c:260: for (int i = 0; i < num_bytes; i++) {
      00355A 90 03 7B         [24] 1720 	mov	dptr,#_spi_buffer_read_i_20002_111
      00355D E9               [12] 1721 	mov	a,r1
      00355E F0               [24] 1722 	movx	@dptr,a
      00355F EA               [12] 1723 	mov	a,r2
      003560 A3               [24] 1724 	inc	dptr
      003561 F0               [24] 1725 	movx	@dptr,a
      003562 D0 07            [24] 1726 	pop	ar7
      003564 D0 06            [24] 1727 	pop	ar6
      003566 02 34 CC         [24] 1728 	ljmp	00109$
      003569                       1729 00107$:
                                   1730 ;	SPI.c:265: CS_HIGH; // Pull CS High
                                   1731 ;	assignBit
      003569 D2 91            [12] 1732 	setb	_P1_1
                                   1733 ;	SPI.c:266: }
      00356B 22               [24] 1734 	ret
                                   1735 ;------------------------------------------------------------
                                   1736 ;Allocation info for local variables in function 'spi_buffer_write'
                                   1737 ;------------------------------------------------------------
                                   1738 ;start_address             Allocated with name '_spi_buffer_write_PARM_2'
                                   1739 ;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
                                   1740 ;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_113'
                                   1741 ;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_118'
                                   1742 ;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_118'
                                   1743 ;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_119'
                                   1744 ;i                         Allocated with name '_spi_buffer_write_i_20002_120'
                                   1745 ;------------------------------------------------------------
                                   1746 ;	SPI.c:269: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1747 ;	-----------------------------------------
                                   1748 ;	 function spi_buffer_write
                                   1749 ;	-----------------------------------------
      00356C                       1750 _spi_buffer_write:
      00356C AF 83            [24] 1751 	mov	r7,dph
      00356E E5 82            [12] 1752 	mov	a,dpl
      003570 90 03 82         [24] 1753 	mov	dptr,#_spi_buffer_write_num_bytes_10000_113
      003573 F0               [24] 1754 	movx	@dptr,a
      003574 EF               [12] 1755 	mov	a,r7
      003575 A3               [24] 1756 	inc	dptr
      003576 F0               [24] 1757 	movx	@dptr,a
                                   1758 ;	SPI.c:271: if (num_bytes < 1)
      003577 90 03 82         [24] 1759 	mov	dptr,#_spi_buffer_write_num_bytes_10000_113
      00357A E0               [24] 1760 	movx	a,@dptr
      00357B FE               [12] 1761 	mov	r6,a
      00357C A3               [24] 1762 	inc	dptr
      00357D E0               [24] 1763 	movx	a,@dptr
      00357E FF               [12] 1764 	mov	r7,a
      00357F C3               [12] 1765 	clr	c
      003580 EE               [12] 1766 	mov	a,r6
      003581 94 01            [12] 1767 	subb	a,#0x01
      003583 EF               [12] 1768 	mov	a,r7
      003584 64 80            [12] 1769 	xrl	a,#0x80
      003586 94 80            [12] 1770 	subb	a,#0x80
      003588 50 1A            [24] 1771 	jnc	00102$
                                   1772 ;	SPI.c:273: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      00358A C0 06            [24] 1773 	push	ar6
      00358C C0 07            [24] 1774 	push	ar7
      00358E 74 3E            [12] 1775 	mov	a,#___str_9
      003590 C0 E0            [24] 1776 	push	acc
      003592 74 4B            [12] 1777 	mov	a,#(___str_9 >> 8)
      003594 C0 E0            [24] 1778 	push	acc
      003596 74 80            [12] 1779 	mov	a,#0x80
      003598 C0 E0            [24] 1780 	push	acc
      00359A 12 3A 16         [24] 1781 	lcall	_printf
      00359D E5 81            [12] 1782 	mov	a,sp
      00359F 24 FB            [12] 1783 	add	a,#0xfb
      0035A1 F5 81            [12] 1784 	mov	sp,a
                                   1785 ;	SPI.c:274: return;
      0035A3 22               [24] 1786 	ret
      0035A4                       1787 00102$:
                                   1788 ;	SPI.c:276: if (start_address > 0x1FFF) {
      0035A4 90 03 7D         [24] 1789 	mov	dptr,#_spi_buffer_write_PARM_2
      0035A7 E0               [24] 1790 	movx	a,@dptr
      0035A8 FC               [12] 1791 	mov	r4,a
      0035A9 A3               [24] 1792 	inc	dptr
      0035AA E0               [24] 1793 	movx	a,@dptr
      0035AB FD               [12] 1794 	mov	r5,a
      0035AC 8C 02            [24] 1795 	mov	ar2,r4
      0035AE 8D 03            [24] 1796 	mov	ar3,r5
      0035B0 C3               [12] 1797 	clr	c
      0035B1 74 FF            [12] 1798 	mov	a,#0xff
      0035B3 9A               [12] 1799 	subb	a,r2
      0035B4 74 1F            [12] 1800 	mov	a,#0x1f
      0035B6 9B               [12] 1801 	subb	a,r3
      0035B7 50 1A            [24] 1802 	jnc	00104$
                                   1803 ;	SPI.c:277: printf("\n\rInvalid address: %04X\n\r", start_address);
      0035B9 C0 04            [24] 1804 	push	ar4
      0035BB C0 05            [24] 1805 	push	ar5
      0035BD 74 5E            [12] 1806 	mov	a,#___str_10
      0035BF C0 E0            [24] 1807 	push	acc
      0035C1 74 4B            [12] 1808 	mov	a,#(___str_10 >> 8)
      0035C3 C0 E0            [24] 1809 	push	acc
      0035C5 74 80            [12] 1810 	mov	a,#0x80
      0035C7 C0 E0            [24] 1811 	push	acc
      0035C9 12 3A 16         [24] 1812 	lcall	_printf
      0035CC E5 81            [12] 1813 	mov	a,sp
      0035CE 24 FB            [12] 1814 	add	a,#0xfb
      0035D0 F5 81            [12] 1815 	mov	sp,a
                                   1816 ;	SPI.c:278: return;
      0035D2 22               [24] 1817 	ret
      0035D3                       1818 00104$:
                                   1819 ;	SPI.c:282: if (num_bytes > 1) {
      0035D3 C3               [12] 1820 	clr	c
      0035D4 74 01            [12] 1821 	mov	a,#0x01
      0035D6 9E               [12] 1822 	subb	a,r6
      0035D7 74 80            [12] 1823 	mov	a,#(0x00 ^ 0x80)
      0035D9 8F F0            [24] 1824 	mov	b,r7
      0035DB 63 F0 80         [24] 1825 	xrl	b,#0x80
      0035DE 95 F0            [12] 1826 	subb	a,b
      0035E0 50 0B            [24] 1827 	jnc	00106$
                                   1828 ;	SPI.c:283: spi_set_autoinc();
      0035E2 C0 05            [24] 1829 	push	ar5
      0035E4 C0 04            [24] 1830 	push	ar4
      0035E6 12 2F 5A         [24] 1831 	lcall	_spi_set_autoinc
      0035E9 D0 04            [24] 1832 	pop	ar4
      0035EB D0 05            [24] 1833 	pop	ar5
      0035ED                       1834 00106$:
                                   1835 ;	SPI.c:286: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      0035ED 8D 07            [24] 1836 	mov	ar7,r5
                                   1837 ;	SPI.c:287: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      0035EF 8C 06            [24] 1838 	mov	ar6,r4
                                   1839 ;	SPI.c:289: spi_control_write(0, 0x03, higher_byte); // High byte
      0035F1 90 03 63         [24] 1840 	mov	dptr,#_spi_control_write_PARM_2
      0035F4 74 03            [12] 1841 	mov	a,#0x03
      0035F6 F0               [24] 1842 	movx	@dptr,a
      0035F7 90 03 64         [24] 1843 	mov	dptr,#_spi_control_write_PARM_3
      0035FA EF               [12] 1844 	mov	a,r7
      0035FB F0               [24] 1845 	movx	@dptr,a
      0035FC 75 82 00         [24] 1846 	mov	dpl, #0x00
      0035FF C0 06            [24] 1847 	push	ar6
      003601 C0 05            [24] 1848 	push	ar5
      003603 C0 04            [24] 1849 	push	ar4
      003605 12 2F F0         [24] 1850 	lcall	_spi_control_write
      003608 D0 04            [24] 1851 	pop	ar4
      00360A D0 05            [24] 1852 	pop	ar5
      00360C D0 06            [24] 1853 	pop	ar6
                                   1854 ;	SPI.c:290: spi_control_write(0, 0x02, lower_byte); // Low byte
      00360E 90 03 63         [24] 1855 	mov	dptr,#_spi_control_write_PARM_2
      003611 74 02            [12] 1856 	mov	a,#0x02
      003613 F0               [24] 1857 	movx	@dptr,a
      003614 90 03 64         [24] 1858 	mov	dptr,#_spi_control_write_PARM_3
      003617 EE               [12] 1859 	mov	a,r6
      003618 F0               [24] 1860 	movx	@dptr,a
      003619 75 82 00         [24] 1861 	mov	dpl, #0x00
      00361C C0 05            [24] 1862 	push	ar5
      00361E C0 04            [24] 1863 	push	ar4
      003620 12 2F F0         [24] 1864 	lcall	_spi_control_write
                                   1865 ;	SPI.c:293: CS_LOW; // Pull CS Low
                                   1866 ;	assignBit
      003623 C2 91            [12] 1867 	clr	_P1_1
                                   1868 ;	SPI.c:294: SPI_send(opcode); // Send opcode
      003625 75 82 7A         [24] 1869 	mov	dpl, #0x7a
      003628 12 30 5B         [24] 1870 	lcall	_SPI_send
      00362B D0 04            [24] 1871 	pop	ar4
      00362D D0 05            [24] 1872 	pop	ar5
                                   1873 ;	SPI.c:297: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      00362F 90 03 82         [24] 1874 	mov	dptr,#_spi_buffer_write_num_bytes_10000_113
      003632 E0               [24] 1875 	movx	a,@dptr
      003633 FE               [12] 1876 	mov	r6,a
      003634 A3               [24] 1877 	inc	dptr
      003635 E0               [24] 1878 	movx	a,@dptr
      003636 FF               [12] 1879 	mov	r7,a
      003637 C0 07            [24] 1880 	push	ar7
      003639 C0 06            [24] 1881 	push	ar6
      00363B C0 04            [24] 1882 	push	ar4
      00363D C0 05            [24] 1883 	push	ar5
      00363F C0 06            [24] 1884 	push	ar6
      003641 C0 07            [24] 1885 	push	ar7
      003643 74 C5            [12] 1886 	mov	a,#___str_13
      003645 C0 E0            [24] 1887 	push	acc
      003647 74 4B            [12] 1888 	mov	a,#(___str_13 >> 8)
      003649 C0 E0            [24] 1889 	push	acc
      00364B 74 80            [12] 1890 	mov	a,#0x80
      00364D C0 E0            [24] 1891 	push	acc
      00364F 12 3A 16         [24] 1892 	lcall	_printf
      003652 E5 81            [12] 1893 	mov	a,sp
      003654 24 F9            [12] 1894 	add	a,#0xf9
      003656 F5 81            [12] 1895 	mov	sp,a
      003658 D0 06            [24] 1896 	pop	ar6
      00365A D0 07            [24] 1897 	pop	ar7
                                   1898 ;	SPI.c:298: for (int i = 0; i < num_bytes; i++) {
      00365C 90 03 84         [24] 1899 	mov	dptr,#_spi_buffer_write_i_20002_120
      00365F E4               [12] 1900 	clr	a
      003660 F0               [24] 1901 	movx	@dptr,a
      003661 A3               [24] 1902 	inc	dptr
      003662 F0               [24] 1903 	movx	@dptr,a
      003663 90 03 7F         [24] 1904 	mov	dptr,#_spi_buffer_write_PARM_3
      003666 E0               [24] 1905 	movx	a,@dptr
      003667 FB               [12] 1906 	mov	r3,a
      003668 A3               [24] 1907 	inc	dptr
      003669 E0               [24] 1908 	movx	a,@dptr
      00366A FC               [12] 1909 	mov	r4,a
      00366B A3               [24] 1910 	inc	dptr
      00366C E0               [24] 1911 	movx	a,@dptr
      00366D FD               [12] 1912 	mov	r5,a
      00366E                       1913 00109$:
      00366E 90 03 84         [24] 1914 	mov	dptr,#_spi_buffer_write_i_20002_120
      003671 E0               [24] 1915 	movx	a,@dptr
      003672 F9               [12] 1916 	mov	r1,a
      003673 A3               [24] 1917 	inc	dptr
      003674 E0               [24] 1918 	movx	a,@dptr
      003675 FA               [12] 1919 	mov	r2,a
      003676 C3               [12] 1920 	clr	c
      003677 E9               [12] 1921 	mov	a,r1
      003678 9E               [12] 1922 	subb	a,r6
      003679 EA               [12] 1923 	mov	a,r2
      00367A 64 80            [12] 1924 	xrl	a,#0x80
      00367C 8F F0            [24] 1925 	mov	b,r7
      00367E 63 F0 80         [24] 1926 	xrl	b,#0x80
      003681 95 F0            [12] 1927 	subb	a,b
      003683 40 03            [24] 1928 	jc	00147$
      003685 02 37 15         [24] 1929 	ljmp	00107$
      003688                       1930 00147$:
                                   1931 ;	SPI.c:299: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003688 C0 06            [24] 1932 	push	ar6
      00368A C0 07            [24] 1933 	push	ar7
      00368C 8B 82            [24] 1934 	mov	dpl,r3
      00368E 8C 83            [24] 1935 	mov	dph,r4
      003690 8D F0            [24] 1936 	mov	b,r5
      003692 12 44 38         [24] 1937 	lcall	__gptrget
      003695 F8               [12] 1938 	mov	r0,a
      003696 7F 00            [12] 1939 	mov	r7,#0x00
      003698 09               [12] 1940 	inc	r1
      003699 B9 00 01         [24] 1941 	cjne	r1,#0x00,00148$
      00369C 0A               [12] 1942 	inc	r2
      00369D                       1943 00148$:
      00369D C0 07            [24] 1944 	push	ar7
      00369F C0 06            [24] 1945 	push	ar6
      0036A1 C0 05            [24] 1946 	push	ar5
      0036A3 C0 04            [24] 1947 	push	ar4
      0036A5 C0 03            [24] 1948 	push	ar3
      0036A7 C0 02            [24] 1949 	push	ar2
      0036A9 C0 01            [24] 1950 	push	ar1
      0036AB C0 00            [24] 1951 	push	ar0
      0036AD C0 07            [24] 1952 	push	ar7
      0036AF C0 01            [24] 1953 	push	ar1
      0036B1 C0 02            [24] 1954 	push	ar2
      0036B3 74 B3            [12] 1955 	mov	a,#___str_12
      0036B5 C0 E0            [24] 1956 	push	acc
      0036B7 74 4B            [12] 1957 	mov	a,#(___str_12 >> 8)
      0036B9 C0 E0            [24] 1958 	push	acc
      0036BB 74 80            [12] 1959 	mov	a,#0x80
      0036BD C0 E0            [24] 1960 	push	acc
      0036BF 12 3A 16         [24] 1961 	lcall	_printf
      0036C2 E5 81            [12] 1962 	mov	a,sp
      0036C4 24 F9            [12] 1963 	add	a,#0xf9
      0036C6 F5 81            [12] 1964 	mov	sp,a
      0036C8 D0 01            [24] 1965 	pop	ar1
      0036CA D0 02            [24] 1966 	pop	ar2
      0036CC D0 03            [24] 1967 	pop	ar3
      0036CE D0 04            [24] 1968 	pop	ar4
      0036D0 D0 05            [24] 1969 	pop	ar5
      0036D2 D0 06            [24] 1970 	pop	ar6
      0036D4 D0 07            [24] 1971 	pop	ar7
                                   1972 ;	SPI.c:300: SPI_send(*data_ptr); // Send data
      0036D6 8B 82            [24] 1973 	mov	dpl,r3
      0036D8 8C 83            [24] 1974 	mov	dph,r4
      0036DA 8D F0            [24] 1975 	mov	b,r5
      0036DC 12 44 38         [24] 1976 	lcall	__gptrget
      0036DF FF               [12] 1977 	mov	r7,a
      0036E0 A3               [24] 1978 	inc	dptr
      0036E1 AB 82            [24] 1979 	mov	r3,dpl
      0036E3 AC 83            [24] 1980 	mov	r4,dph
      0036E5 8F 82            [24] 1981 	mov	dpl, r7
      0036E7 C0 07            [24] 1982 	push	ar7
      0036E9 C0 06            [24] 1983 	push	ar6
      0036EB C0 05            [24] 1984 	push	ar5
      0036ED C0 04            [24] 1985 	push	ar4
      0036EF C0 03            [24] 1986 	push	ar3
      0036F1 C0 02            [24] 1987 	push	ar2
      0036F3 C0 01            [24] 1988 	push	ar1
      0036F5 12 30 5B         [24] 1989 	lcall	_SPI_send
      0036F8 D0 01            [24] 1990 	pop	ar1
      0036FA D0 02            [24] 1991 	pop	ar2
      0036FC D0 03            [24] 1992 	pop	ar3
      0036FE D0 04            [24] 1993 	pop	ar4
      003700 D0 05            [24] 1994 	pop	ar5
      003702 D0 06            [24] 1995 	pop	ar6
      003704 D0 07            [24] 1996 	pop	ar7
                                   1997 ;	SPI.c:301: data_ptr++;
                                   1998 ;	SPI.c:298: for (int i = 0; i < num_bytes; i++) {
      003706 90 03 84         [24] 1999 	mov	dptr,#_spi_buffer_write_i_20002_120
      003709 E9               [12] 2000 	mov	a,r1
      00370A F0               [24] 2001 	movx	@dptr,a
      00370B EA               [12] 2002 	mov	a,r2
      00370C A3               [24] 2003 	inc	dptr
      00370D F0               [24] 2004 	movx	@dptr,a
      00370E D0 07            [24] 2005 	pop	ar7
      003710 D0 06            [24] 2006 	pop	ar6
      003712 02 36 6E         [24] 2007 	ljmp	00109$
      003715                       2008 00107$:
                                   2009 ;	SPI.c:303: CS_HIGH; // Pull CS High
                                   2010 ;	assignBit
      003715 D2 91            [12] 2011 	setb	_P1_1
                                   2012 ;	SPI.c:304: }
      003717 22               [24] 2013 	ret
                                   2014 ;------------------------------------------------------------
                                   2015 ;Allocation info for local variables in function 'init_ENC'
                                   2016 ;------------------------------------------------------------
                                   2017 ;	SPI.c:306: void init_ENC(void)
                                   2018 ;	-----------------------------------------
                                   2019 ;	 function init_ENC
                                   2020 ;	-----------------------------------------
      003718                       2021 _init_ENC:
                                   2022 ;	SPI.c:308: spi_control_write(1, 0x18, 0x41);
      003718 90 03 63         [24] 2023 	mov	dptr,#_spi_control_write_PARM_2
      00371B 74 18            [12] 2024 	mov	a,#0x18
      00371D F0               [24] 2025 	movx	@dptr,a
      00371E 90 03 64         [24] 2026 	mov	dptr,#_spi_control_write_PARM_3
      003721 74 41            [12] 2027 	mov	a,#0x41
      003723 F0               [24] 2028 	movx	@dptr,a
      003724 75 82 01         [24] 2029 	mov	dpl, #0x01
      003727 12 2F F0         [24] 2030 	lcall	_spi_control_write
                                   2031 ;	SPI.c:310: enc28j60_init_rx_buffer(0x0800, 0x1FFF);
      00372A 90 01 06         [24] 2032 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      00372D 74 FF            [12] 2033 	mov	a,#0xff
      00372F F0               [24] 2034 	movx	@dptr,a
      003730 74 1F            [12] 2035 	mov	a,#0x1f
      003732 A3               [24] 2036 	inc	dptr
      003733 F0               [24] 2037 	movx	@dptr,a
      003734 90 08 00         [24] 2038 	mov	dptr,#0x0800
      003737 12 21 71         [24] 2039 	lcall	_enc28j60_init_rx_buffer
                                   2040 ;	SPI.c:312: IT0 = 1;  // Edge-triggered mode for INT0
                                   2041 ;	assignBit
      00373A D2 88            [12] 2042 	setb	_IT0
                                   2043 ;	SPI.c:313: EX0 = 1;  // Enable INT0
                                   2044 ;	assignBit
      00373C D2 A8            [12] 2045 	setb	_EX0
                                   2046 ;	SPI.c:314: EA = 1;   // Enable global interrupts
                                   2047 ;	assignBit
      00373E D2 AF            [12] 2048 	setb	_EA
                                   2049 ;	SPI.c:317: spi_control_write(0x02, 0x00, 0x01); // Write 0x01 to MACON1 (address 0x00 in bank 2)
      003740 90 03 63         [24] 2050 	mov	dptr,#_spi_control_write_PARM_2
      003743 E4               [12] 2051 	clr	a
      003744 F0               [24] 2052 	movx	@dptr,a
      003745 90 03 64         [24] 2053 	mov	dptr,#_spi_control_write_PARM_3
      003748 04               [12] 2054 	inc	a
      003749 F0               [24] 2055 	movx	@dptr,a
      00374A 75 82 02         [24] 2056 	mov	dpl, #0x02
      00374D 12 2F F0         [24] 2057 	lcall	_spi_control_write
                                   2058 ;	SPI.c:318: spi_control_write(0x02, 0x02, 0x70); // Write 0x30 to MACON3 (address 0x02 in bank 2)
      003750 90 03 63         [24] 2059 	mov	dptr,#_spi_control_write_PARM_2
      003753 74 02            [12] 2060 	mov	a,#0x02
      003755 F0               [24] 2061 	movx	@dptr,a
      003756 90 03 64         [24] 2062 	mov	dptr,#_spi_control_write_PARM_3
      003759 74 70            [12] 2063 	mov	a,#0x70
      00375B F0               [24] 2064 	movx	@dptr,a
      00375C 75 82 02         [24] 2065 	mov	dpl, #0x02
      00375F 12 2F F0         [24] 2066 	lcall	_spi_control_write
                                   2067 ;	SPI.c:319: spi_control_write(0x02, 0x03, 0x40); // Write 0x40 to MACON4 (address 0x02 in bank 2) - DEFER bit
      003762 90 03 63         [24] 2068 	mov	dptr,#_spi_control_write_PARM_2
      003765 74 03            [12] 2069 	mov	a,#0x03
      003767 F0               [24] 2070 	movx	@dptr,a
      003768 90 03 64         [24] 2071 	mov	dptr,#_spi_control_write_PARM_3
      00376B 74 40            [12] 2072 	mov	a,#0x40
      00376D F0               [24] 2073 	movx	@dptr,a
      00376E 75 82 02         [24] 2074 	mov	dpl, #0x02
      003771 12 2F F0         [24] 2075 	lcall	_spi_control_write
                                   2076 ;	SPI.c:320: spi_control_write(0x02, 0x0A, 0xEE); // Write 0xEE to MAMXFLL (low byte, address 0x0A in bank 2)
      003774 90 03 63         [24] 2077 	mov	dptr,#_spi_control_write_PARM_2
      003777 74 0A            [12] 2078 	mov	a,#0x0a
      003779 F0               [24] 2079 	movx	@dptr,a
      00377A 90 03 64         [24] 2080 	mov	dptr,#_spi_control_write_PARM_3
      00377D 74 EE            [12] 2081 	mov	a,#0xee
      00377F F0               [24] 2082 	movx	@dptr,a
      003780 75 82 02         [24] 2083 	mov	dpl, #0x02
      003783 12 2F F0         [24] 2084 	lcall	_spi_control_write
                                   2085 ;	SPI.c:321: spi_control_write(0x02, 0x0B, 0x05); // Write 0x05 to MAMXFLH (high byte, address 0x0B in bank 2)
      003786 90 03 63         [24] 2086 	mov	dptr,#_spi_control_write_PARM_2
      003789 74 0B            [12] 2087 	mov	a,#0x0b
      00378B F0               [24] 2088 	movx	@dptr,a
      00378C 90 03 64         [24] 2089 	mov	dptr,#_spi_control_write_PARM_3
      00378F 74 05            [12] 2090 	mov	a,#0x05
      003791 F0               [24] 2091 	movx	@dptr,a
      003792 75 82 02         [24] 2092 	mov	dpl, #0x02
      003795 12 2F F0         [24] 2093 	lcall	_spi_control_write
                                   2094 ;	SPI.c:322: spi_control_write(0x02, 0x04, 0x12); // Write 0x15 to MABBIPG (address 0x04 in bank 2)
      003798 90 03 63         [24] 2095 	mov	dptr,#_spi_control_write_PARM_2
      00379B 74 04            [12] 2096 	mov	a,#0x04
      00379D F0               [24] 2097 	movx	@dptr,a
      00379E 90 03 64         [24] 2098 	mov	dptr,#_spi_control_write_PARM_3
      0037A1 74 12            [12] 2099 	mov	a,#0x12
      0037A3 F0               [24] 2100 	movx	@dptr,a
      0037A4 75 82 02         [24] 2101 	mov	dpl, #0x02
      0037A7 12 2F F0         [24] 2102 	lcall	_spi_control_write
                                   2103 ;	SPI.c:323: spi_control_write(0x02, 0x06, 0x12); // Write 0x12 to MAIPGL (low byte, address 0x06 in bank 2)
      0037AA 90 03 63         [24] 2104 	mov	dptr,#_spi_control_write_PARM_2
      0037AD 74 06            [12] 2105 	mov	a,#0x06
      0037AF F0               [24] 2106 	movx	@dptr,a
      0037B0 90 03 64         [24] 2107 	mov	dptr,#_spi_control_write_PARM_3
      0037B3 74 12            [12] 2108 	mov	a,#0x12
      0037B5 F0               [24] 2109 	movx	@dptr,a
      0037B6 75 82 02         [24] 2110 	mov	dpl, #0x02
      0037B9 12 2F F0         [24] 2111 	lcall	_spi_control_write
                                   2112 ;	SPI.c:324: spi_control_write(0x02, 0x07, 0x0C); // Write 0x12 to MAIPGH (low byte, address 0x06 in bank 2)
      0037BC 90 03 63         [24] 2113 	mov	dptr,#_spi_control_write_PARM_2
      0037BF 74 07            [12] 2114 	mov	a,#0x07
      0037C1 F0               [24] 2115 	movx	@dptr,a
      0037C2 90 03 64         [24] 2116 	mov	dptr,#_spi_control_write_PARM_3
      0037C5 74 0C            [12] 2117 	mov	a,#0x0c
      0037C7 F0               [24] 2118 	movx	@dptr,a
      0037C8 75 82 02         [24] 2119 	mov	dpl, #0x02
      0037CB 12 2F F0         [24] 2120 	lcall	_spi_control_write
                                   2121 ;	SPI.c:328: spi_control_write(0, 0x1B, 0x81);
      0037CE 90 03 63         [24] 2122 	mov	dptr,#_spi_control_write_PARM_2
      0037D1 74 1B            [12] 2123 	mov	a,#0x1b
      0037D3 F0               [24] 2124 	movx	@dptr,a
      0037D4 90 03 64         [24] 2125 	mov	dptr,#_spi_control_write_PARM_3
      0037D7 74 81            [12] 2126 	mov	a,#0x81
      0037D9 F0               [24] 2127 	movx	@dptr,a
      0037DA 75 82 00         [24] 2128 	mov	dpl, #0x00
                                   2129 ;	SPI.c:330: }
      0037DD 02 2F F0         [24] 2130 	ljmp	_spi_control_write
                                   2131 ;------------------------------------------------------------
                                   2132 ;Allocation info for local variables in function 'init_MAC'
                                   2133 ;------------------------------------------------------------
                                   2134 ;	SPI.c:332: void init_MAC(void)
                                   2135 ;	-----------------------------------------
                                   2136 ;	 function init_MAC
                                   2137 ;	-----------------------------------------
      0037E0                       2138 _init_MAC:
                                   2139 ;	SPI.c:335: }
      0037E0 22               [24] 2140 	ret
                                   2141 	.area CSEG    (CODE)
                                   2142 	.area CONST   (CODE)
                                   2143 	.area CONST   (CODE)
      0049CD                       2144 ___str_0:
      0049CD 77 72 6F 6E 67 20 62  2145 	.ascii "wrong bank"
             61 6E 6B
      0049D7 00                    2146 	.db 0x00
                                   2147 	.area CSEG    (CODE)
                                   2148 	.area CONST   (CODE)
      0049D8                       2149 ___str_1:
      0049D8 57 72 69 74 65 3A 20  2150 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      0049FA 0A                    2151 	.db 0x0a
      0049FB 0D                    2152 	.db 0x0d
      0049FC 00                    2153 	.db 0x00
                                   2154 	.area CSEG    (CODE)
                                   2155 	.area CONST   (CODE)
      0049FD                       2156 ___str_2:
      0049FD 0A                    2157 	.db 0x0a
      0049FE 0D                    2158 	.db 0x0d
      0049FF 49 6E 76 61 6C 69 64  2159 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      004A34 0A                    2160 	.db 0x0a
      004A35 0D                    2161 	.db 0x0d
      004A36 00                    2162 	.db 0x00
                                   2163 	.area CSEG    (CODE)
                                   2164 	.area CONST   (CODE)
      004A37                       2165 ___str_3:
      004A37 52 65 61 64 3A 20 41  2166 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004A58 0A                    2167 	.db 0x0a
      004A59 0D                    2168 	.db 0x0d
      004A5A 00                    2169 	.db 0x00
                                   2170 	.area CSEG    (CODE)
                                   2171 	.area CONST   (CODE)
      004A5B                       2172 ___str_4:
      004A5B 50 48 59 20 57 72 69  2173 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      004A81 0A                    2174 	.db 0x0a
      004A82 0D                    2175 	.db 0x0d
      004A83 00                    2176 	.db 0x00
                                   2177 	.area CSEG    (CODE)
                                   2178 	.area CONST   (CODE)
      004A84                       2179 ___str_5:
      004A84 52 65 61 64 3A 20 41  2180 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004AA5 0A                    2181 	.db 0x0a
      004AA6 00                    2182 	.db 0x00
                                   2183 	.area CSEG    (CODE)
                                   2184 	.area CONST   (CODE)
      004AA7                       2185 ___str_6:
      004AA7 50 48 59 20 52 65 61  2186 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      004ACC 0A                    2187 	.db 0x0a
      004ACD 0D                    2188 	.db 0x0d
      004ACE 00                    2189 	.db 0x00
                                   2190 	.area CSEG    (CODE)
                                   2191 	.area CONST   (CODE)
      004ACF                       2192 ___str_7:
      004ACF 0A                    2193 	.db 0x0a
      004AD0 0D                    2194 	.db 0x0d
      004AD1 49 6E 76 61 6C 69 64  2195 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      004B0A 0A                    2196 	.db 0x0a
      004B0B 0D                    2197 	.db 0x0d
      004B0C 00                    2198 	.db 0x00
                                   2199 	.area CSEG    (CODE)
                                   2200 	.area CONST   (CODE)
      004B0D                       2201 ___str_8:
      004B0D 0A                    2202 	.db 0x0a
      004B0E 0D                    2203 	.db 0x0d
      004B0F 42 75 66 66 65 72 20  2204 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      004B3B 0A                    2205 	.db 0x0a
      004B3C 0D                    2206 	.db 0x0d
      004B3D 00                    2207 	.db 0x00
                                   2208 	.area CSEG    (CODE)
                                   2209 	.area CONST   (CODE)
      004B3E                       2210 ___str_9:
      004B3E 0A                    2211 	.db 0x0a
      004B3F 0D                    2212 	.db 0x0d
      004B40 49 6E 76 61 6C 69 64  2213 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      004B5B 0A                    2214 	.db 0x0a
      004B5C 0D                    2215 	.db 0x0d
      004B5D 00                    2216 	.db 0x00
                                   2217 	.area CSEG    (CODE)
                                   2218 	.area CONST   (CODE)
      004B5E                       2219 ___str_10:
      004B5E 0A                    2220 	.db 0x0a
      004B5F 0D                    2221 	.db 0x0d
      004B60 49 6E 76 61 6C 69 64  2222 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      004B75 0A                    2223 	.db 0x0a
      004B76 0D                    2224 	.db 0x0d
      004B77 00                    2225 	.db 0x00
                                   2226 	.area CSEG    (CODE)
                                   2227 	.area CONST   (CODE)
      004B78                       2228 ___str_11:
      004B78 52 65 61 64 69 6E 67  2229 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      004BB0 0A                    2230 	.db 0x0a
      004BB1 0D                    2231 	.db 0x0d
      004BB2 00                    2232 	.db 0x00
                                   2233 	.area CSEG    (CODE)
                                   2234 	.area CONST   (CODE)
      004BB3                       2235 ___str_12:
      004BB3 42 79 74 65 20 25 64  2236 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      004BC2 0A                    2237 	.db 0x0a
      004BC3 0D                    2238 	.db 0x0d
      004BC4 00                    2239 	.db 0x00
                                   2240 	.area CSEG    (CODE)
                                   2241 	.area CONST   (CODE)
      004BC5                       2242 ___str_13:
      004BC5 57 72 69 74 69 6E 67  2243 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      004BFB 0A                    2244 	.db 0x0a
      004BFC 0D                    2245 	.db 0x0d
      004BFD 00                    2246 	.db 0x00
                                   2247 	.area CSEG    (CODE)
                                   2248 	.area XINIT   (CODE)
                                   2249 	.area CABS    (ABS,CODE)

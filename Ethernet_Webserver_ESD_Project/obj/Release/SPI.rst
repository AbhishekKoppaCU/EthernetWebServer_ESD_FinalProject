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
      000368                        501 _SPI_ReadByte_received_data_10000_64:
      000368                        502 	.ds 1
      000369                        503 _select_reg_bank_bank_10000_68:
      000369                        504 	.ds 1
      00036A                        505 _spi_control_write_PARM_2:
      00036A                        506 	.ds 1
      00036B                        507 _spi_control_write_PARM_3:
      00036B                        508 	.ds 1
      00036C                        509 _spi_control_write_reg_bank_10000_70:
      00036C                        510 	.ds 1
      00036D                        511 _SPI_send_data_10000_74:
      00036D                        512 	.ds 1
      00036E                        513 _eth_spi_read_PARM_2:
      00036E                        514 	.ds 1
      00036F                        515 _eth_spi_read_addr_10000_79:
      00036F                        516 	.ds 1
      000370                        517 _phy_spi_write_PARM_2:
      000370                        518 	.ds 2
      000372                        519 _phy_spi_write_addr_10000_83:
      000372                        520 	.ds 1
      000373                        521 _mac_spi_read_PARM_2:
      000373                        522 	.ds 1
      000374                        523 _mac_spi_read_addr_10000_85:
      000374                        524 	.ds 1
      000375                        525 _phy_spi_read_addr_10000_89:
      000375                        526 	.ds 1
      000376                        527 _busy_wait_data_10000_93:
      000376                        528 	.ds 1
      000377                        529 _buffer_init_PARM_2:
      000377                        530 	.ds 2
      000379                        531 _buffer_init_start_address_10000_95:
      000379                        532 	.ds 2
      00037B                        533 _spi_buffer_read_PARM_2:
      00037B                        534 	.ds 2
      00037D                        535 _spi_buffer_read_PARM_3:
      00037D                        536 	.ds 3
      000380                        537 _spi_buffer_read_num_bytes_10000_99:
      000380                        538 	.ds 2
      000382                        539 _spi_buffer_read_i_20002_106:
      000382                        540 	.ds 2
      000384                        541 _spi_buffer_write_PARM_2:
      000384                        542 	.ds 2
      000386                        543 _spi_buffer_write_PARM_3:
      000386                        544 	.ds 3
      000389                        545 _spi_buffer_write_num_bytes_10000_108:
      000389                        546 	.ds 2
      00038B                        547 _spi_buffer_write_i_20002_115:
      00038B                        548 	.ds 2
                                    549 ;--------------------------------------------------------
                                    550 ; absolute external ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area XABS    (ABS,XDATA)
                                    553 ;--------------------------------------------------------
                                    554 ; initialized external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area XISEG   (XDATA)
                                    557 	.area HOME    (CODE)
                                    558 	.area GSINIT0 (CODE)
                                    559 	.area GSINIT1 (CODE)
                                    560 	.area GSINIT2 (CODE)
                                    561 	.area GSINIT3 (CODE)
                                    562 	.area GSINIT4 (CODE)
                                    563 	.area GSINIT5 (CODE)
                                    564 	.area GSINIT  (CODE)
                                    565 	.area GSFINAL (CODE)
                                    566 	.area CSEG    (CODE)
                                    567 ;--------------------------------------------------------
                                    568 ; global & static initialisations
                                    569 ;--------------------------------------------------------
                                    570 	.area HOME    (CODE)
                                    571 	.area GSINIT  (CODE)
                                    572 	.area GSFINAL (CODE)
                                    573 	.area GSINIT  (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; Home
                                    576 ;--------------------------------------------------------
                                    577 	.area HOME    (CODE)
                                    578 	.area HOME    (CODE)
                                    579 ;--------------------------------------------------------
                                    580 ; code
                                    581 ;--------------------------------------------------------
                                    582 	.area CSEG    (CODE)
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'SPI_ReadByte'
                                    585 ;------------------------------------------------------------
                                    586 ;received_data             Allocated with name '_SPI_ReadByte_received_data_10000_64'
                                    587 ;------------------------------------------------------------
                                    588 ;	SPI.c:4: uint8_t SPI_ReadByte(void)
                                    589 ;	-----------------------------------------
                                    590 ;	 function SPI_ReadByte
                                    591 ;	-----------------------------------------
      002F16                        592 _SPI_ReadByte:
                           000007   593 	ar7 = 0x07
                           000006   594 	ar6 = 0x06
                           000005   595 	ar5 = 0x05
                           000004   596 	ar4 = 0x04
                           000003   597 	ar3 = 0x03
                           000002   598 	ar2 = 0x02
                           000001   599 	ar1 = 0x01
                           000000   600 	ar0 = 0x00
                                    601 ;	SPI.c:9: SPDAT = 0xFF;
      002F16 75 C5 FF         [24]  602 	mov	_SPDAT,#0xff
                                    603 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      002F19                        604 00101$:
      002F19 E5 C4            [12]  605 	mov	a,_SPSTA
      002F1B 30 E7 FB         [24]  606 	jnb	acc.7,00101$
                                    607 ;	SPI.c:17: received_data = SPDAT;
      002F1E 90 03 68         [24]  608 	mov	dptr,#_SPI_ReadByte_received_data_10000_64
      002F21 E5 C5            [12]  609 	mov	a,_SPDAT
      002F23 F0               [24]  610 	movx	@dptr,a
                                    611 ;	SPI.c:19: return received_data;
      002F24 E0               [24]  612 	movx	a,@dptr
                                    613 ;	SPI.c:20: }
      002F25 F5 82            [12]  614 	mov	dpl,a
      002F27 22               [24]  615 	ret
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    618 ;------------------------------------------------------------
                                    619 ;	SPI.c:22: void spi_set_autoinc(void)
                                    620 ;	-----------------------------------------
                                    621 ;	 function spi_set_autoinc
                                    622 ;	-----------------------------------------
      002F28                        623 _spi_set_autoinc:
                                    624 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    625 ;	assignBit
      002F28 C2 91            [12]  626 	clr	_P1_1
                                    627 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      002F2A 75 82 5E         [24]  628 	mov	dpl, #0x5e
      002F2D 12 2F BE         [24]  629 	lcall	_SPI_send
                                    630 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      002F30 75 82 80         [24]  631 	mov	dpl, #0x80
      002F33 12 2F BE         [24]  632 	lcall	_SPI_send
                                    633 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    634 ;	assignBit
      002F36 D2 91            [12]  635 	setb	_P1_1
                                    636 ;	SPI.c:30: }
      002F38 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'select_reg_bank'
                                    640 ;------------------------------------------------------------
                                    641 ;bank                      Allocated with name '_select_reg_bank_bank_10000_68'
                                    642 ;------------------------------------------------------------
                                    643 ;	SPI.c:32: void select_reg_bank(uint8_t bank)
                                    644 ;	-----------------------------------------
                                    645 ;	 function select_reg_bank
                                    646 ;	-----------------------------------------
      002F39                        647 _select_reg_bank:
      002F39 E5 82            [12]  648 	mov	a,dpl
      002F3B 90 03 69         [24]  649 	mov	dptr,#_select_reg_bank_bank_10000_68
      002F3E F0               [24]  650 	movx	@dptr,a
                                    651 ;	SPI.c:35: CS_LOW;
                                    652 ;	assignBit
      002F3F C2 91            [12]  653 	clr	_P1_1
                                    654 ;	SPI.c:38: SPI_send(0x5F);
      002F41 75 82 5F         [24]  655 	mov	dpl, #0x5f
      002F44 12 2F BE         [24]  656 	lcall	_SPI_send
                                    657 ;	SPI.c:41: SPI_send(bank);
      002F47 90 03 69         [24]  658 	mov	dptr,#_select_reg_bank_bank_10000_68
      002F4A E0               [24]  659 	movx	a,@dptr
      002F4B F5 82            [12]  660 	mov	dpl,a
      002F4D 12 2F BE         [24]  661 	lcall	_SPI_send
                                    662 ;	SPI.c:44: CS_HIGH;
                                    663 ;	assignBit
      002F50 D2 91            [12]  664 	setb	_P1_1
                                    665 ;	SPI.c:45: }
      002F52 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'spi_control_write'
                                    669 ;------------------------------------------------------------
                                    670 ;addr                      Allocated with name '_spi_control_write_PARM_2'
                                    671 ;data                      Allocated with name '_spi_control_write_PARM_3'
                                    672 ;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_70'
                                    673 ;opcode                    Allocated with name '_spi_control_write_opcode_10000_71'
                                    674 ;------------------------------------------------------------
                                    675 ;	SPI.c:46: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
                                    676 ;	-----------------------------------------
                                    677 ;	 function spi_control_write
                                    678 ;	-----------------------------------------
      002F53                        679 _spi_control_write:
      002F53 E5 82            [12]  680 	mov	a,dpl
      002F55 90 03 6C         [24]  681 	mov	dptr,#_spi_control_write_reg_bank_10000_70
      002F58 F0               [24]  682 	movx	@dptr,a
                                    683 ;	SPI.c:49: addr = addr + opcode; // Add the opcode to the address
      002F59 90 03 6A         [24]  684 	mov	dptr,#_spi_control_write_PARM_2
      002F5C E0               [24]  685 	movx	a,@dptr
      002F5D 24 40            [12]  686 	add	a, #0x40
      002F5F F0               [24]  687 	movx	@dptr,a
                                    688 ;	SPI.c:51: select_reg_bank(reg_bank); // Function to select the register bank
      002F60 90 03 6C         [24]  689 	mov	dptr,#_spi_control_write_reg_bank_10000_70
      002F63 E0               [24]  690 	movx	a,@dptr
      002F64 F5 82            [12]  691 	mov	dpl,a
      002F66 12 2F 39         [24]  692 	lcall	_select_reg_bank
                                    693 ;	SPI.c:54: CS_LOW;
                                    694 ;	assignBit
      002F69 C2 91            [12]  695 	clr	_P1_1
                                    696 ;	SPI.c:57: SPI_send(addr);
      002F6B 90 03 6A         [24]  697 	mov	dptr,#_spi_control_write_PARM_2
      002F6E E0               [24]  698 	movx	a,@dptr
      002F6F FF               [12]  699 	mov	r7,a
      002F70 F5 82            [12]  700 	mov	dpl,a
      002F72 C0 07            [24]  701 	push	ar7
      002F74 12 2F BE         [24]  702 	lcall	_SPI_send
      002F77 D0 07            [24]  703 	pop	ar7
                                    704 ;	SPI.c:60: SPI_send(data);
      002F79 90 03 6B         [24]  705 	mov	dptr,#_spi_control_write_PARM_3
      002F7C E0               [24]  706 	movx	a,@dptr
      002F7D FE               [12]  707 	mov	r6,a
      002F7E F5 82            [12]  708 	mov	dpl,a
      002F80 C0 07            [24]  709 	push	ar7
      002F82 C0 06            [24]  710 	push	ar6
      002F84 12 2F BE         [24]  711 	lcall	_SPI_send
      002F87 D0 06            [24]  712 	pop	ar6
      002F89 D0 07            [24]  713 	pop	ar7
                                    714 ;	SPI.c:63: CS_HIGH;
                                    715 ;	assignBit
      002F8B D2 91            [12]  716 	setb	_P1_1
                                    717 ;	SPI.c:66: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      002F8D 7D 00            [12]  718 	mov	r5,#0x00
      002F8F 7C 00            [12]  719 	mov	r4,#0x00
      002F91 C0 06            [24]  720 	push	ar6
      002F93 C0 05            [24]  721 	push	ar5
      002F95 C0 07            [24]  722 	push	ar7
      002F97 C0 04            [24]  723 	push	ar4
      002F99 74 9A            [12]  724 	mov	a,#___str_0
      002F9B C0 E0            [24]  725 	push	acc
      002F9D 74 48            [12]  726 	mov	a,#(___str_0 >> 8)
      002F9F C0 E0            [24]  727 	push	acc
      002FA1 74 80            [12]  728 	mov	a,#0x80
      002FA3 C0 E0            [24]  729 	push	acc
      002FA5 12 39 3D         [24]  730 	lcall	_printf
      002FA8 E5 81            [12]  731 	mov	a,sp
      002FAA 24 F9            [12]  732 	add	a,#0xf9
      002FAC F5 81            [12]  733 	mov	sp,a
                                    734 ;	SPI.c:67: }
      002FAE 22               [24]  735 	ret
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'configure_SPI'
                                    738 ;------------------------------------------------------------
                                    739 ;	SPI.c:70: void configure_SPI(void)
                                    740 ;	-----------------------------------------
                                    741 ;	 function configure_SPI
                                    742 ;	-----------------------------------------
      002FAF                        743 _configure_SPI:
                                    744 ;	SPI.c:72: CS_PIN = 1;
                                    745 ;	assignBit
      002FAF D2 91            [12]  746 	setb	_P1_1
                                    747 ;	SPI.c:73: SPCON = 0x00;
      002FB1 75 C3 00         [24]  748 	mov	_SPCON,#0x00
                                    749 ;	SPI.c:74: SPCON |= SS_DISABLE;
      002FB4 43 C3 20         [24]  750 	orl	_SPCON,#0x20
                                    751 ;	SPI.c:75: SPCON |= MASTER_MODE;
      002FB7 43 C3 10         [24]  752 	orl	_SPCON,#0x10
                                    753 ;	SPI.c:76: SPCON |= SPI_ENABLE;
      002FBA 43 C3 40         [24]  754 	orl	_SPCON,#0x40
                                    755 ;	SPI.c:77: }
      002FBD 22               [24]  756 	ret
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'SPI_send'
                                    759 ;------------------------------------------------------------
                                    760 ;data                      Allocated with name '_SPI_send_data_10000_74'
                                    761 ;------------------------------------------------------------
                                    762 ;	SPI.c:80: void SPI_send(uint8_t data)
                                    763 ;	-----------------------------------------
                                    764 ;	 function SPI_send
                                    765 ;	-----------------------------------------
      002FBE                        766 _SPI_send:
      002FBE E5 82            [12]  767 	mov	a,dpl
      002FC0 90 03 6D         [24]  768 	mov	dptr,#_SPI_send_data_10000_74
      002FC3 F0               [24]  769 	movx	@dptr,a
                                    770 ;	SPI.c:83: SPDAT = data;           // Config + MSB of data
      002FC4 E0               [24]  771 	movx	a,@dptr
      002FC5 F5 C5            [12]  772 	mov	_SPDAT,a
                                    773 ;	SPI.c:85: while (!(SPSTA & 0x80))
      002FC7                        774 00101$:
      002FC7 E5 C4            [12]  775 	mov	a,_SPSTA
      002FC9 30 E7 FB         [24]  776 	jnb	acc.7,00101$
                                    777 ;	SPI.c:90: }
      002FCC 22               [24]  778 	ret
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'enc_reset'
                                    781 ;------------------------------------------------------------
                                    782 ;	SPI.c:92: void enc_reset(void)
                                    783 ;	-----------------------------------------
                                    784 ;	 function enc_reset
                                    785 ;	-----------------------------------------
      002FCD                        786 _enc_reset:
                                    787 ;	SPI.c:94: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    788 ;	assignBit
      002FCD C2 91            [12]  789 	clr	_P1_1
                                    790 ;	SPI.c:95: SPI_send(0xFF);            // Send reset command
      002FCF 75 82 FF         [24]  791 	mov	dpl, #0xff
      002FD2 12 2F BE         [24]  792 	lcall	_SPI_send
                                    793 ;	SPI.c:96: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    794 ;	assignBit
      002FD5 D2 91            [12]  795 	setb	_P1_1
                                    796 ;	SPI.c:97: }
      002FD7 22               [24]  797 	ret
                                    798 ;------------------------------------------------------------
                                    799 ;Allocation info for local variables in function 'eth_spi_read'
                                    800 ;------------------------------------------------------------
                                    801 ;bank                      Allocated with name '_eth_spi_read_PARM_2'
                                    802 ;addr                      Allocated with name '_eth_spi_read_addr_10000_79'
                                    803 ;data                      Allocated with name '_eth_spi_read_data_10001_82'
                                    804 ;------------------------------------------------------------
                                    805 ;	SPI.c:99: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
                                    806 ;	-----------------------------------------
                                    807 ;	 function eth_spi_read
                                    808 ;	-----------------------------------------
      002FD8                        809 _eth_spi_read:
      002FD8 E5 82            [12]  810 	mov	a,dpl
      002FDA 90 03 6F         [24]  811 	mov	dptr,#_eth_spi_read_addr_10000_79
      002FDD F0               [24]  812 	movx	@dptr,a
                                    813 ;	SPI.c:101: if (addr > 0x1F) {
      002FDE E0               [24]  814 	movx	a,@dptr
      002FDF FF               [12]  815 	mov  r7,a
      002FE0 24 E0            [12]  816 	add	a,#0xff - 0x1f
      002FE2 50 19            [24]  817 	jnc	00102$
                                    818 ;	SPI.c:102: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      002FE4 74 BF            [12]  819 	mov	a,#___str_1
      002FE6 C0 E0            [24]  820 	push	acc
      002FE8 74 48            [12]  821 	mov	a,#(___str_1 >> 8)
      002FEA C0 E0            [24]  822 	push	acc
      002FEC 74 80            [12]  823 	mov	a,#0x80
      002FEE C0 E0            [24]  824 	push	acc
      002FF0 12 39 3D         [24]  825 	lcall	_printf
      002FF3 15 81            [12]  826 	dec	sp
      002FF5 15 81            [12]  827 	dec	sp
      002FF7 15 81            [12]  828 	dec	sp
                                    829 ;	SPI.c:103: return 0;
      002FF9 75 82 00         [24]  830 	mov	dpl, #0x00
      002FFC 22               [24]  831 	ret
      002FFD                        832 00102$:
                                    833 ;	SPI.c:106: select_reg_bank(bank);     // Select the appropriate bank
      002FFD 90 03 6E         [24]  834 	mov	dptr,#_eth_spi_read_PARM_2
      003000 E0               [24]  835 	movx	a,@dptr
      003001 F5 82            [12]  836 	mov	dpl,a
      003003 C0 07            [24]  837 	push	ar7
      003005 12 2F 39         [24]  838 	lcall	_select_reg_bank
      003008 D0 07            [24]  839 	pop	ar7
                                    840 ;	SPI.c:108: CS_LOW;                    // Pull CS low to start communication
                                    841 ;	assignBit
      00300A C2 91            [12]  842 	clr	_P1_1
                                    843 ;	SPI.c:109: SPI_send(addr);            // Send the address
      00300C 8F 82            [24]  844 	mov	dpl, r7
      00300E C0 07            [24]  845 	push	ar7
      003010 12 2F BE         [24]  846 	lcall	_SPI_send
                                    847 ;	SPI.c:110: uint8_t data = SPI_ReadByte(); // Read the data
      003013 12 2F 16         [24]  848 	lcall	_SPI_ReadByte
      003016 AE 82            [24]  849 	mov	r6, dpl
      003018 D0 07            [24]  850 	pop	ar7
                                    851 ;	SPI.c:111: CS_HIGH;                   // Pull CS high to end communication
                                    852 ;	assignBit
      00301A D2 91            [12]  853 	setb	_P1_1
                                    854 ;	SPI.c:114: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      00301C 8E 04            [24]  855 	mov	ar4,r6
      00301E 7D 00            [12]  856 	mov	r5,#0x00
      003020 7B 00            [12]  857 	mov	r3,#0x00
      003022 C0 06            [24]  858 	push	ar6
      003024 C0 04            [24]  859 	push	ar4
      003026 C0 05            [24]  860 	push	ar5
      003028 C0 07            [24]  861 	push	ar7
      00302A C0 03            [24]  862 	push	ar3
      00302C 74 F9            [12]  863 	mov	a,#___str_2
      00302E C0 E0            [24]  864 	push	acc
      003030 74 48            [12]  865 	mov	a,#(___str_2 >> 8)
      003032 C0 E0            [24]  866 	push	acc
      003034 74 80            [12]  867 	mov	a,#0x80
      003036 C0 E0            [24]  868 	push	acc
      003038 12 39 3D         [24]  869 	lcall	_printf
      00303B E5 81            [12]  870 	mov	a,sp
      00303D 24 F9            [12]  871 	add	a,#0xf9
      00303F F5 81            [12]  872 	mov	sp,a
      003041 D0 06            [24]  873 	pop	ar6
                                    874 ;	SPI.c:116: return data;
      003043 8E 82            [24]  875 	mov	dpl, r6
                                    876 ;	SPI.c:117: }
      003045 22               [24]  877 	ret
                                    878 ;------------------------------------------------------------
                                    879 ;Allocation info for local variables in function 'phy_spi_write'
                                    880 ;------------------------------------------------------------
                                    881 ;data                      Allocated with name '_phy_spi_write_PARM_2'
                                    882 ;addr                      Allocated with name '_phy_spi_write_addr_10000_83'
                                    883 ;------------------------------------------------------------
                                    884 ;	SPI.c:119: void phy_spi_write(uint8_t addr, uint16_t data)
                                    885 ;	-----------------------------------------
                                    886 ;	 function phy_spi_write
                                    887 ;	-----------------------------------------
      003046                        888 _phy_spi_write:
      003046 E5 82            [12]  889 	mov	a,dpl
      003048 90 03 72         [24]  890 	mov	dptr,#_phy_spi_write_addr_10000_83
      00304B F0               [24]  891 	movx	@dptr,a
                                    892 ;	SPI.c:121: spi_control_write(2, 0x14, addr);                      // Write PHY address
      00304C E0               [24]  893 	movx	a,@dptr
      00304D FF               [12]  894 	mov	r7,a
      00304E 90 03 6A         [24]  895 	mov	dptr,#_spi_control_write_PARM_2
      003051 74 14            [12]  896 	mov	a,#0x14
      003053 F0               [24]  897 	movx	@dptr,a
      003054 90 03 6B         [24]  898 	mov	dptr,#_spi_control_write_PARM_3
      003057 EF               [12]  899 	mov	a,r7
      003058 F0               [24]  900 	movx	@dptr,a
      003059 75 82 02         [24]  901 	mov	dpl, #0x02
      00305C C0 07            [24]  902 	push	ar7
      00305E 12 2F 53         [24]  903 	lcall	_spi_control_write
      003061 D0 07            [24]  904 	pop	ar7
                                    905 ;	SPI.c:122: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      003063 90 03 70         [24]  906 	mov	dptr,#_phy_spi_write_PARM_2
      003066 E0               [24]  907 	movx	a,@dptr
      003067 FD               [12]  908 	mov	r5,a
      003068 A3               [24]  909 	inc	dptr
      003069 E0               [24]  910 	movx	a,@dptr
      00306A FE               [12]  911 	mov	r6,a
      00306B 8D 04            [24]  912 	mov	ar4,r5
      00306D 90 03 6A         [24]  913 	mov	dptr,#_spi_control_write_PARM_2
      003070 74 16            [12]  914 	mov	a,#0x16
      003072 F0               [24]  915 	movx	@dptr,a
      003073 90 03 6B         [24]  916 	mov	dptr,#_spi_control_write_PARM_3
      003076 EC               [12]  917 	mov	a,r4
      003077 F0               [24]  918 	movx	@dptr,a
      003078 75 82 02         [24]  919 	mov	dpl, #0x02
      00307B C0 07            [24]  920 	push	ar7
      00307D C0 06            [24]  921 	push	ar6
      00307F C0 05            [24]  922 	push	ar5
      003081 12 2F 53         [24]  923 	lcall	_spi_control_write
      003084 D0 05            [24]  924 	pop	ar5
      003086 D0 06            [24]  925 	pop	ar6
      003088 D0 07            [24]  926 	pop	ar7
                                    927 ;	SPI.c:123: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      00308A 8E 04            [24]  928 	mov	ar4,r6
      00308C 90 03 6A         [24]  929 	mov	dptr,#_spi_control_write_PARM_2
      00308F 74 17            [12]  930 	mov	a,#0x17
      003091 F0               [24]  931 	movx	@dptr,a
      003092 90 03 6B         [24]  932 	mov	dptr,#_spi_control_write_PARM_3
      003095 EC               [12]  933 	mov	a,r4
      003096 F0               [24]  934 	movx	@dptr,a
      003097 75 82 02         [24]  935 	mov	dpl, #0x02
      00309A C0 07            [24]  936 	push	ar7
      00309C C0 06            [24]  937 	push	ar6
      00309E C0 05            [24]  938 	push	ar5
      0030A0 12 2F 53         [24]  939 	lcall	_spi_control_write
      0030A3 D0 05            [24]  940 	pop	ar5
      0030A5 D0 06            [24]  941 	pop	ar6
      0030A7 D0 07            [24]  942 	pop	ar7
                                    943 ;	SPI.c:126: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      0030A9 7C 00            [12]  944 	mov	r4,#0x00
      0030AB C0 05            [24]  945 	push	ar5
      0030AD C0 06            [24]  946 	push	ar6
      0030AF C0 07            [24]  947 	push	ar7
      0030B1 C0 04            [24]  948 	push	ar4
      0030B3 74 1D            [12]  949 	mov	a,#___str_3
      0030B5 C0 E0            [24]  950 	push	acc
      0030B7 74 49            [12]  951 	mov	a,#(___str_3 >> 8)
      0030B9 C0 E0            [24]  952 	push	acc
      0030BB 74 80            [12]  953 	mov	a,#0x80
      0030BD C0 E0            [24]  954 	push	acc
      0030BF 12 39 3D         [24]  955 	lcall	_printf
      0030C2 E5 81            [12]  956 	mov	a,sp
      0030C4 24 F9            [12]  957 	add	a,#0xf9
      0030C6 F5 81            [12]  958 	mov	sp,a
                                    959 ;	SPI.c:127: }
      0030C8 22               [24]  960 	ret
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'mac_spi_read'
                                    963 ;------------------------------------------------------------
                                    964 ;bank                      Allocated with name '_mac_spi_read_PARM_2'
                                    965 ;addr                      Allocated with name '_mac_spi_read_addr_10000_85'
                                    966 ;data                      Allocated with name '_mac_spi_read_data_10001_88'
                                    967 ;------------------------------------------------------------
                                    968 ;	SPI.c:129: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
                                    969 ;	-----------------------------------------
                                    970 ;	 function mac_spi_read
                                    971 ;	-----------------------------------------
      0030C9                        972 _mac_spi_read:
      0030C9 E5 82            [12]  973 	mov	a,dpl
      0030CB 90 03 74         [24]  974 	mov	dptr,#_mac_spi_read_addr_10000_85
      0030CE F0               [24]  975 	movx	@dptr,a
                                    976 ;	SPI.c:131: if (addr > 0x1F) {
      0030CF E0               [24]  977 	movx	a,@dptr
      0030D0 FF               [12]  978 	mov  r7,a
      0030D1 24 E0            [12]  979 	add	a,#0xff - 0x1f
      0030D3 50 19            [24]  980 	jnc	00102$
                                    981 ;	SPI.c:132: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      0030D5 74 BF            [12]  982 	mov	a,#___str_1
      0030D7 C0 E0            [24]  983 	push	acc
      0030D9 74 48            [12]  984 	mov	a,#(___str_1 >> 8)
      0030DB C0 E0            [24]  985 	push	acc
      0030DD 74 80            [12]  986 	mov	a,#0x80
      0030DF C0 E0            [24]  987 	push	acc
      0030E1 12 39 3D         [24]  988 	lcall	_printf
      0030E4 15 81            [12]  989 	dec	sp
      0030E6 15 81            [12]  990 	dec	sp
      0030E8 15 81            [12]  991 	dec	sp
                                    992 ;	SPI.c:133: return 0; // Return 0 if address is invalid
      0030EA 75 82 00         [24]  993 	mov	dpl, #0x00
      0030ED 22               [24]  994 	ret
      0030EE                        995 00102$:
                                    996 ;	SPI.c:136: select_reg_bank(bank); // Select the appropriate register bank
      0030EE 90 03 73         [24]  997 	mov	dptr,#_mac_spi_read_PARM_2
      0030F1 E0               [24]  998 	movx	a,@dptr
      0030F2 F5 82            [12]  999 	mov	dpl,a
      0030F4 C0 07            [24] 1000 	push	ar7
      0030F6 12 2F 39         [24] 1001 	lcall	_select_reg_bank
      0030F9 D0 07            [24] 1002 	pop	ar7
                                   1003 ;	SPI.c:139: CS_LOW;
                                   1004 ;	assignBit
      0030FB C2 91            [12] 1005 	clr	_P1_1
                                   1006 ;	SPI.c:142: SPI_send(addr);
      0030FD 8F 82            [24] 1007 	mov	dpl, r7
      0030FF C0 07            [24] 1008 	push	ar7
      003101 12 2F BE         [24] 1009 	lcall	_SPI_send
                                   1010 ;	SPI.c:145: uint8_t data = SPI_ReadByte();
      003104 12 2F 16         [24] 1011 	lcall	_SPI_ReadByte
      003107 AE 82            [24] 1012 	mov	r6, dpl
      003109 D0 07            [24] 1013 	pop	ar7
                                   1014 ;	SPI.c:148: CS_HIGH;
                                   1015 ;	assignBit
      00310B D2 91            [12] 1016 	setb	_P1_1
                                   1017 ;	SPI.c:151: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      00310D 8E 04            [24] 1018 	mov	ar4,r6
      00310F 7D 00            [12] 1019 	mov	r5,#0x00
      003111 7B 00            [12] 1020 	mov	r3,#0x00
      003113 C0 06            [24] 1021 	push	ar6
      003115 C0 04            [24] 1022 	push	ar4
      003117 C0 05            [24] 1023 	push	ar5
      003119 C0 07            [24] 1024 	push	ar7
      00311B C0 03            [24] 1025 	push	ar3
      00311D 74 46            [12] 1026 	mov	a,#___str_4
      00311F C0 E0            [24] 1027 	push	acc
      003121 74 49            [12] 1028 	mov	a,#(___str_4 >> 8)
      003123 C0 E0            [24] 1029 	push	acc
      003125 74 80            [12] 1030 	mov	a,#0x80
      003127 C0 E0            [24] 1031 	push	acc
      003129 12 39 3D         [24] 1032 	lcall	_printf
      00312C E5 81            [12] 1033 	mov	a,sp
      00312E 24 F9            [12] 1034 	add	a,#0xf9
      003130 F5 81            [12] 1035 	mov	sp,a
      003132 D0 06            [24] 1036 	pop	ar6
                                   1037 ;	SPI.c:153: return data;
      003134 8E 82            [24] 1038 	mov	dpl, r6
                                   1039 ;	SPI.c:154: }
      003136 22               [24] 1040 	ret
                                   1041 ;------------------------------------------------------------
                                   1042 ;Allocation info for local variables in function 'phy_spi_read'
                                   1043 ;------------------------------------------------------------
                                   1044 ;addr                      Allocated with name '_phy_spi_read_addr_10000_89'
                                   1045 ;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_91'
                                   1046 ;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_91'
                                   1047 ;data                      Allocated with name '_phy_spi_read_data_10001_91'
                                   1048 ;------------------------------------------------------------
                                   1049 ;	SPI.c:157: uint16_t phy_spi_read(uint8_t addr)
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function phy_spi_read
                                   1052 ;	-----------------------------------------
      003137                       1053 _phy_spi_read:
      003137 E5 82            [12] 1054 	mov	a,dpl
      003139 90 03 75         [24] 1055 	mov	dptr,#_phy_spi_read_addr_10000_89
      00313C F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	SPI.c:159: spi_control_write(2, 0x14, addr);     // Write PHY address
      00313D E0               [24] 1058 	movx	a,@dptr
      00313E FF               [12] 1059 	mov	r7,a
      00313F 90 03 6A         [24] 1060 	mov	dptr,#_spi_control_write_PARM_2
      003142 74 14            [12] 1061 	mov	a,#0x14
      003144 F0               [24] 1062 	movx	@dptr,a
      003145 90 03 6B         [24] 1063 	mov	dptr,#_spi_control_write_PARM_3
      003148 EF               [12] 1064 	mov	a,r7
      003149 F0               [24] 1065 	movx	@dptr,a
      00314A 75 82 02         [24] 1066 	mov	dpl, #0x02
      00314D C0 07            [24] 1067 	push	ar7
      00314F 12 2F 53         [24] 1068 	lcall	_spi_control_write
      003152 D0 07            [24] 1069 	pop	ar7
                                   1070 ;	SPI.c:160: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      003154 90 03 6A         [24] 1071 	mov	dptr,#_spi_control_write_PARM_2
      003157 74 12            [12] 1072 	mov	a,#0x12
      003159 F0               [24] 1073 	movx	@dptr,a
      00315A 90 03 6B         [24] 1074 	mov	dptr,#_spi_control_write_PARM_3
      00315D 74 01            [12] 1075 	mov	a,#0x01
      00315F F0               [24] 1076 	movx	@dptr,a
      003160 75 82 02         [24] 1077 	mov	dpl, #0x02
      003163 C0 07            [24] 1078 	push	ar7
      003165 12 2F 53         [24] 1079 	lcall	_spi_control_write
                                   1080 ;	SPI.c:162: busy_wait();                          // Wait for the read to complete
      003168 12 31 E4         [24] 1081 	lcall	_busy_wait
      00316B D0 07            [24] 1082 	pop	ar7
                                   1083 ;	SPI.c:164: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      00316D 90 03 6A         [24] 1084 	mov	dptr,#_spi_control_write_PARM_2
      003170 74 12            [12] 1085 	mov	a,#0x12
      003172 F0               [24] 1086 	movx	@dptr,a
      003173 90 03 6B         [24] 1087 	mov	dptr,#_spi_control_write_PARM_3
      003176 E4               [12] 1088 	clr	a
      003177 F0               [24] 1089 	movx	@dptr,a
      003178 75 82 02         [24] 1090 	mov	dpl, #0x02
      00317B C0 07            [24] 1091 	push	ar7
      00317D 12 2F 53         [24] 1092 	lcall	_spi_control_write
      003180 D0 07            [24] 1093 	pop	ar7
                                   1094 ;	SPI.c:166: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      003182 90 03 73         [24] 1095 	mov	dptr,#_mac_spi_read_PARM_2
      003185 74 02            [12] 1096 	mov	a,#0x02
      003187 F0               [24] 1097 	movx	@dptr,a
      003188 75 82 18         [24] 1098 	mov	dpl, #0x18
      00318B C0 07            [24] 1099 	push	ar7
      00318D 12 30 C9         [24] 1100 	lcall	_mac_spi_read
      003190 AE 82            [24] 1101 	mov	r6, dpl
      003192 D0 07            [24] 1102 	pop	ar7
      003194 7D 00            [12] 1103 	mov	r5,#0x00
                                   1104 ;	SPI.c:167: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003196 90 03 73         [24] 1105 	mov	dptr,#_mac_spi_read_PARM_2
      003199 74 02            [12] 1106 	mov	a,#0x02
      00319B F0               [24] 1107 	movx	@dptr,a
      00319C 75 82 19         [24] 1108 	mov	dpl, #0x19
      00319F C0 07            [24] 1109 	push	ar7
      0031A1 C0 06            [24] 1110 	push	ar6
      0031A3 C0 05            [24] 1111 	push	ar5
      0031A5 12 30 C9         [24] 1112 	lcall	_mac_spi_read
      0031A8 AC 82            [24] 1113 	mov	r4, dpl
      0031AA D0 05            [24] 1114 	pop	ar5
      0031AC D0 06            [24] 1115 	pop	ar6
      0031AE D0 07            [24] 1116 	pop	ar7
                                   1117 ;	SPI.c:169: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      0031B0 8C 03            [24] 1118 	mov	ar3,r4
      0031B2 E4               [12] 1119 	clr	a
      0031B3 42 06            [12] 1120 	orl	ar6,a
      0031B5 EB               [12] 1121 	mov	a,r3
      0031B6 42 05            [12] 1122 	orl	ar5,a
                                   1123 ;	SPI.c:172: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      0031B8 7C 00            [12] 1124 	mov	r4,#0x00
      0031BA C0 06            [24] 1125 	push	ar6
      0031BC C0 05            [24] 1126 	push	ar5
      0031BE C0 06            [24] 1127 	push	ar6
      0031C0 C0 05            [24] 1128 	push	ar5
      0031C2 C0 07            [24] 1129 	push	ar7
      0031C4 C0 04            [24] 1130 	push	ar4
      0031C6 74 69            [12] 1131 	mov	a,#___str_5
      0031C8 C0 E0            [24] 1132 	push	acc
      0031CA 74 49            [12] 1133 	mov	a,#(___str_5 >> 8)
      0031CC C0 E0            [24] 1134 	push	acc
      0031CE 74 80            [12] 1135 	mov	a,#0x80
      0031D0 C0 E0            [24] 1136 	push	acc
      0031D2 12 39 3D         [24] 1137 	lcall	_printf
      0031D5 E5 81            [12] 1138 	mov	a,sp
      0031D7 24 F9            [12] 1139 	add	a,#0xf9
      0031D9 F5 81            [12] 1140 	mov	sp,a
      0031DB D0 05            [24] 1141 	pop	ar5
      0031DD D0 06            [24] 1142 	pop	ar6
                                   1143 ;	SPI.c:174: return data;        // Combine MSB and LSB
      0031DF 8E 82            [24] 1144 	mov	dpl, r6
      0031E1 8D 83            [24] 1145 	mov	dph, r5
                                   1146 ;	SPI.c:175: }
      0031E3 22               [24] 1147 	ret
                                   1148 ;------------------------------------------------------------
                                   1149 ;Allocation info for local variables in function 'busy_wait'
                                   1150 ;------------------------------------------------------------
                                   1151 ;data                      Allocated with name '_busy_wait_data_10000_93'
                                   1152 ;------------------------------------------------------------
                                   1153 ;	SPI.c:177: void busy_wait(void)
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function busy_wait
                                   1156 ;	-----------------------------------------
      0031E4                       1157 _busy_wait:
                                   1158 ;	SPI.c:179: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      0031E4 90 03 73         [24] 1159 	mov	dptr,#_mac_spi_read_PARM_2
      0031E7 74 03            [12] 1160 	mov	a,#0x03
      0031E9 F0               [24] 1161 	movx	@dptr,a
      0031EA 75 82 0A         [24] 1162 	mov	dpl, #0x0a
      0031ED 12 30 C9         [24] 1163 	lcall	_mac_spi_read
      0031F0 E5 82            [12] 1164 	mov	a, dpl
      0031F2 90 03 76         [24] 1165 	mov	dptr,#_busy_wait_data_10000_93
      0031F5 F0               [24] 1166 	movx	@dptr,a
                                   1167 ;	SPI.c:180: while (data & 0x01)
      0031F6                       1168 00101$:
      0031F6 90 03 76         [24] 1169 	mov	dptr,#_busy_wait_data_10000_93
      0031F9 E0               [24] 1170 	movx	a,@dptr
      0031FA 30 E0 14         [24] 1171 	jnb	acc.0,00104$
                                   1172 ;	SPI.c:182: data = mac_spi_read(0x0A, 3);
      0031FD 90 03 73         [24] 1173 	mov	dptr,#_mac_spi_read_PARM_2
      003200 74 03            [12] 1174 	mov	a,#0x03
      003202 F0               [24] 1175 	movx	@dptr,a
      003203 75 82 0A         [24] 1176 	mov	dpl, #0x0a
      003206 12 30 C9         [24] 1177 	lcall	_mac_spi_read
      003209 E5 82            [12] 1178 	mov	a, dpl
      00320B 90 03 76         [24] 1179 	mov	dptr,#_busy_wait_data_10000_93
      00320E F0               [24] 1180 	movx	@dptr,a
      00320F 80 E5            [24] 1181 	sjmp	00101$
      003211                       1182 00104$:
                                   1183 ;	SPI.c:184: }
      003211 22               [24] 1184 	ret
                                   1185 ;------------------------------------------------------------
                                   1186 ;Allocation info for local variables in function 'buffer_init'
                                   1187 ;------------------------------------------------------------
                                   1188 ;size                      Allocated with name '_buffer_init_PARM_2'
                                   1189 ;start_address             Allocated with name '_buffer_init_start_address_10000_95'
                                   1190 ;erxst                     Allocated with name '_buffer_init_erxst_10001_98'
                                   1191 ;erxnd                     Allocated with name '_buffer_init_erxnd_10001_98'
                                   1192 ;------------------------------------------------------------
                                   1193 ;	SPI.c:186: void buffer_init(uint16_t start_address, uint16_t size)
                                   1194 ;	-----------------------------------------
                                   1195 ;	 function buffer_init
                                   1196 ;	-----------------------------------------
      003212                       1197 _buffer_init:
      003212 AF 83            [24] 1198 	mov	r7,dph
      003214 E5 82            [12] 1199 	mov	a,dpl
      003216 90 03 79         [24] 1200 	mov	dptr,#_buffer_init_start_address_10000_95
      003219 F0               [24] 1201 	movx	@dptr,a
      00321A EF               [12] 1202 	mov	a,r7
      00321B A3               [24] 1203 	inc	dptr
      00321C F0               [24] 1204 	movx	@dptr,a
                                   1205 ;	SPI.c:188: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      00321D 90 03 79         [24] 1206 	mov	dptr,#_buffer_init_start_address_10000_95
      003220 E0               [24] 1207 	movx	a,@dptr
      003221 FE               [12] 1208 	mov	r6,a
      003222 A3               [24] 1209 	inc	dptr
      003223 E0               [24] 1210 	movx	a,@dptr
      003224 FF               [12] 1211 	mov	r7,a
      003225 8E 04            [24] 1212 	mov	ar4,r6
      003227 8F 05            [24] 1213 	mov	ar5,r7
      003229 C3               [12] 1214 	clr	c
      00322A 74 FF            [12] 1215 	mov	a,#0xff
      00322C 9C               [12] 1216 	subb	a,r4
      00322D 74 1F            [12] 1217 	mov	a,#0x1f
      00322F 9D               [12] 1218 	subb	a,r5
      003230 40 17            [24] 1219 	jc	00101$
      003232 90 03 77         [24] 1220 	mov	dptr,#_buffer_init_PARM_2
      003235 E0               [24] 1221 	movx	a,@dptr
      003236 FA               [12] 1222 	mov	r2,a
      003237 A3               [24] 1223 	inc	dptr
      003238 E0               [24] 1224 	movx	a,@dptr
      003239 FB               [12] 1225 	mov	r3,a
      00323A EA               [12] 1226 	mov	a,r2
      00323B 2E               [12] 1227 	add	a, r6
      00323C F8               [12] 1228 	mov	r0,a
      00323D EB               [12] 1229 	mov	a,r3
      00323E 3F               [12] 1230 	addc	a, r7
      00323F F9               [12] 1231 	mov	r1,a
      003240 C3               [12] 1232 	clr	c
      003241 74 FF            [12] 1233 	mov	a,#0xff
      003243 98               [12] 1234 	subb	a,r0
      003244 74 1F            [12] 1235 	mov	a,#0x1f
      003246 99               [12] 1236 	subb	a,r1
      003247 50 2A            [24] 1237 	jnc	00102$
      003249                       1238 00101$:
                                   1239 ;	SPI.c:189: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      003249 90 03 77         [24] 1240 	mov	dptr,#_buffer_init_PARM_2
      00324C E0               [24] 1241 	movx	a,@dptr
      00324D C0 E0            [24] 1242 	push	acc
      00324F A3               [24] 1243 	inc	dptr
      003250 E0               [24] 1244 	movx	a,@dptr
      003251 C0 E0            [24] 1245 	push	acc
      003253 90 03 79         [24] 1246 	mov	dptr,#_buffer_init_start_address_10000_95
      003256 E0               [24] 1247 	movx	a,@dptr
      003257 C0 E0            [24] 1248 	push	acc
      003259 A3               [24] 1249 	inc	dptr
      00325A E0               [24] 1250 	movx	a,@dptr
      00325B C0 E0            [24] 1251 	push	acc
      00325D 74 91            [12] 1252 	mov	a,#___str_6
      00325F C0 E0            [24] 1253 	push	acc
      003261 74 49            [12] 1254 	mov	a,#(___str_6 >> 8)
      003263 C0 E0            [24] 1255 	push	acc
      003265 74 80            [12] 1256 	mov	a,#0x80
      003267 C0 E0            [24] 1257 	push	acc
      003269 12 39 3D         [24] 1258 	lcall	_printf
      00326C E5 81            [12] 1259 	mov	a,sp
      00326E 24 F9            [12] 1260 	add	a,#0xf9
      003270 F5 81            [12] 1261 	mov	sp,a
                                   1262 ;	SPI.c:190: return;
      003272 22               [24] 1263 	ret
      003273                       1264 00102$:
                                   1265 ;	SPI.c:194: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      003273 53 04 FE         [24] 1266 	anl	ar4,#0xfe
                                   1267 ;	SPI.c:195: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      003276 EA               [12] 1268 	mov	a,r2
      003277 2E               [12] 1269 	add	a, r6
      003278 FE               [12] 1270 	mov	r6,a
      003279 EB               [12] 1271 	mov	a,r3
      00327A 3F               [12] 1272 	addc	a, r7
      00327B FF               [12] 1273 	mov	r7,a
      00327C 1E               [12] 1274 	dec	r6
      00327D BE FF 01         [24] 1275 	cjne	r6,#0xff,00114$
      003280 1F               [12] 1276 	dec	r7
      003281                       1277 00114$:
      003281 53 06 FE         [24] 1278 	anl	ar6,#0xfe
                                   1279 ;	SPI.c:198: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      003284 8D 03            [24] 1280 	mov	ar3,r5
      003286 90 03 6A         [24] 1281 	mov	dptr,#_spi_control_write_PARM_2
      003289 74 08            [12] 1282 	mov	a,#0x08
      00328B F0               [24] 1283 	movx	@dptr,a
      00328C 90 03 6B         [24] 1284 	mov	dptr,#_spi_control_write_PARM_3
      00328F EB               [12] 1285 	mov	a,r3
      003290 F0               [24] 1286 	movx	@dptr,a
      003291 75 82 00         [24] 1287 	mov	dpl, #0x00
      003294 C0 07            [24] 1288 	push	ar7
      003296 C0 06            [24] 1289 	push	ar6
      003298 C0 05            [24] 1290 	push	ar5
      00329A C0 04            [24] 1291 	push	ar4
      00329C 12 2F 53         [24] 1292 	lcall	_spi_control_write
      00329F D0 04            [24] 1293 	pop	ar4
      0032A1 D0 05            [24] 1294 	pop	ar5
      0032A3 D0 06            [24] 1295 	pop	ar6
      0032A5 D0 07            [24] 1296 	pop	ar7
                                   1297 ;	SPI.c:199: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      0032A7 8C 03            [24] 1298 	mov	ar3,r4
      0032A9 90 03 6A         [24] 1299 	mov	dptr,#_spi_control_write_PARM_2
      0032AC 74 09            [12] 1300 	mov	a,#0x09
      0032AE F0               [24] 1301 	movx	@dptr,a
      0032AF 90 03 6B         [24] 1302 	mov	dptr,#_spi_control_write_PARM_3
      0032B2 EB               [12] 1303 	mov	a,r3
      0032B3 F0               [24] 1304 	movx	@dptr,a
      0032B4 75 82 00         [24] 1305 	mov	dpl, #0x00
      0032B7 C0 07            [24] 1306 	push	ar7
      0032B9 C0 06            [24] 1307 	push	ar6
      0032BB C0 05            [24] 1308 	push	ar5
      0032BD C0 04            [24] 1309 	push	ar4
      0032BF 12 2F 53         [24] 1310 	lcall	_spi_control_write
      0032C2 D0 04            [24] 1311 	pop	ar4
      0032C4 D0 05            [24] 1312 	pop	ar5
      0032C6 D0 06            [24] 1313 	pop	ar6
      0032C8 D0 07            [24] 1314 	pop	ar7
                                   1315 ;	SPI.c:202: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      0032CA 8F 03            [24] 1316 	mov	ar3,r7
      0032CC 90 03 6A         [24] 1317 	mov	dptr,#_spi_control_write_PARM_2
      0032CF 74 0A            [12] 1318 	mov	a,#0x0a
      0032D1 F0               [24] 1319 	movx	@dptr,a
      0032D2 90 03 6B         [24] 1320 	mov	dptr,#_spi_control_write_PARM_3
      0032D5 EB               [12] 1321 	mov	a,r3
      0032D6 F0               [24] 1322 	movx	@dptr,a
      0032D7 75 82 00         [24] 1323 	mov	dpl, #0x00
      0032DA C0 07            [24] 1324 	push	ar7
      0032DC C0 06            [24] 1325 	push	ar6
      0032DE C0 05            [24] 1326 	push	ar5
      0032E0 C0 04            [24] 1327 	push	ar4
      0032E2 12 2F 53         [24] 1328 	lcall	_spi_control_write
      0032E5 D0 04            [24] 1329 	pop	ar4
      0032E7 D0 05            [24] 1330 	pop	ar5
      0032E9 D0 06            [24] 1331 	pop	ar6
      0032EB D0 07            [24] 1332 	pop	ar7
                                   1333 ;	SPI.c:203: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      0032ED 8E 03            [24] 1334 	mov	ar3,r6
      0032EF 90 03 6A         [24] 1335 	mov	dptr,#_spi_control_write_PARM_2
      0032F2 74 0B            [12] 1336 	mov	a,#0x0b
      0032F4 F0               [24] 1337 	movx	@dptr,a
      0032F5 90 03 6B         [24] 1338 	mov	dptr,#_spi_control_write_PARM_3
      0032F8 EB               [12] 1339 	mov	a,r3
      0032F9 F0               [24] 1340 	movx	@dptr,a
      0032FA 75 82 00         [24] 1341 	mov	dpl, #0x00
      0032FD C0 07            [24] 1342 	push	ar7
      0032FF C0 06            [24] 1343 	push	ar6
      003301 C0 05            [24] 1344 	push	ar5
      003303 C0 04            [24] 1345 	push	ar4
      003305 12 2F 53         [24] 1346 	lcall	_spi_control_write
      003308 D0 04            [24] 1347 	pop	ar4
      00330A D0 05            [24] 1348 	pop	ar5
      00330C D0 06            [24] 1349 	pop	ar6
      00330E D0 07            [24] 1350 	pop	ar7
                                   1351 ;	SPI.c:205: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      003310 C0 06            [24] 1352 	push	ar6
      003312 C0 07            [24] 1353 	push	ar7
      003314 C0 04            [24] 1354 	push	ar4
      003316 C0 05            [24] 1355 	push	ar5
      003318 74 CF            [12] 1356 	mov	a,#___str_7
      00331A C0 E0            [24] 1357 	push	acc
      00331C 74 49            [12] 1358 	mov	a,#(___str_7 >> 8)
      00331E C0 E0            [24] 1359 	push	acc
      003320 74 80            [12] 1360 	mov	a,#0x80
      003322 C0 E0            [24] 1361 	push	acc
      003324 12 39 3D         [24] 1362 	lcall	_printf
      003327 E5 81            [12] 1363 	mov	a,sp
      003329 24 F9            [12] 1364 	add	a,#0xf9
      00332B F5 81            [12] 1365 	mov	sp,a
                                   1366 ;	SPI.c:206: }
      00332D 22               [24] 1367 	ret
                                   1368 ;------------------------------------------------------------
                                   1369 ;Allocation info for local variables in function 'spi_buffer_read'
                                   1370 ;------------------------------------------------------------
                                   1371 ;start_address             Allocated with name '_spi_buffer_read_PARM_2'
                                   1372 ;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
                                   1373 ;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_99'
                                   1374 ;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_104'
                                   1375 ;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_104'
                                   1376 ;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_105'
                                   1377 ;i                         Allocated with name '_spi_buffer_read_i_20002_106'
                                   1378 ;------------------------------------------------------------
                                   1379 ;	SPI.c:209: void spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1380 ;	-----------------------------------------
                                   1381 ;	 function spi_buffer_read
                                   1382 ;	-----------------------------------------
      00332E                       1383 _spi_buffer_read:
      00332E AF 83            [24] 1384 	mov	r7,dph
      003330 E5 82            [12] 1385 	mov	a,dpl
      003332 90 03 80         [24] 1386 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      003335 F0               [24] 1387 	movx	@dptr,a
      003336 EF               [12] 1388 	mov	a,r7
      003337 A3               [24] 1389 	inc	dptr
      003338 F0               [24] 1390 	movx	@dptr,a
                                   1391 ;	SPI.c:211: if (num_bytes < 1) {
      003339 90 03 80         [24] 1392 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      00333C E0               [24] 1393 	movx	a,@dptr
      00333D FE               [12] 1394 	mov	r6,a
      00333E A3               [24] 1395 	inc	dptr
      00333F E0               [24] 1396 	movx	a,@dptr
      003340 FF               [12] 1397 	mov	r7,a
      003341 C3               [12] 1398 	clr	c
      003342 EE               [12] 1399 	mov	a,r6
      003343 94 01            [12] 1400 	subb	a,#0x01
      003345 EF               [12] 1401 	mov	a,r7
      003346 64 80            [12] 1402 	xrl	a,#0x80
      003348 94 80            [12] 1403 	subb	a,#0x80
      00334A 50 1A            [24] 1404 	jnc	00102$
                                   1405 ;	SPI.c:212: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      00334C C0 06            [24] 1406 	push	ar6
      00334E C0 07            [24] 1407 	push	ar7
      003350 74 00            [12] 1408 	mov	a,#___str_8
      003352 C0 E0            [24] 1409 	push	acc
      003354 74 4A            [12] 1410 	mov	a,#(___str_8 >> 8)
      003356 C0 E0            [24] 1411 	push	acc
      003358 74 80            [12] 1412 	mov	a,#0x80
      00335A C0 E0            [24] 1413 	push	acc
      00335C 12 39 3D         [24] 1414 	lcall	_printf
      00335F E5 81            [12] 1415 	mov	a,sp
      003361 24 FB            [12] 1416 	add	a,#0xfb
      003363 F5 81            [12] 1417 	mov	sp,a
                                   1418 ;	SPI.c:213: return;
      003365 22               [24] 1419 	ret
      003366                       1420 00102$:
                                   1421 ;	SPI.c:215: if (start_address > 0x1FFF) {
      003366 90 03 7B         [24] 1422 	mov	dptr,#_spi_buffer_read_PARM_2
      003369 E0               [24] 1423 	movx	a,@dptr
      00336A FC               [12] 1424 	mov	r4,a
      00336B A3               [24] 1425 	inc	dptr
      00336C E0               [24] 1426 	movx	a,@dptr
      00336D FD               [12] 1427 	mov	r5,a
      00336E 8C 02            [24] 1428 	mov	ar2,r4
      003370 8D 03            [24] 1429 	mov	ar3,r5
      003372 C3               [12] 1430 	clr	c
      003373 74 FF            [12] 1431 	mov	a,#0xff
      003375 9A               [12] 1432 	subb	a,r2
      003376 74 1F            [12] 1433 	mov	a,#0x1f
      003378 9B               [12] 1434 	subb	a,r3
      003379 50 1A            [24] 1435 	jnc	00104$
                                   1436 ;	SPI.c:216: printf("\n\rInvalid address: %04X\n\r", start_address);
      00337B C0 04            [24] 1437 	push	ar4
      00337D C0 05            [24] 1438 	push	ar5
      00337F 74 20            [12] 1439 	mov	a,#___str_9
      003381 C0 E0            [24] 1440 	push	acc
      003383 74 4A            [12] 1441 	mov	a,#(___str_9 >> 8)
      003385 C0 E0            [24] 1442 	push	acc
      003387 74 80            [12] 1443 	mov	a,#0x80
      003389 C0 E0            [24] 1444 	push	acc
      00338B 12 39 3D         [24] 1445 	lcall	_printf
      00338E E5 81            [12] 1446 	mov	a,sp
      003390 24 FB            [12] 1447 	add	a,#0xfb
      003392 F5 81            [12] 1448 	mov	sp,a
                                   1449 ;	SPI.c:217: return;
      003394 22               [24] 1450 	ret
      003395                       1451 00104$:
                                   1452 ;	SPI.c:220: if (num_bytes > 1) {
      003395 C3               [12] 1453 	clr	c
      003396 74 01            [12] 1454 	mov	a,#0x01
      003398 9E               [12] 1455 	subb	a,r6
      003399 74 80            [12] 1456 	mov	a,#(0x00 ^ 0x80)
      00339B 8F F0            [24] 1457 	mov	b,r7
      00339D 63 F0 80         [24] 1458 	xrl	b,#0x80
      0033A0 95 F0            [12] 1459 	subb	a,b
      0033A2 50 0B            [24] 1460 	jnc	00106$
                                   1461 ;	SPI.c:221: spi_set_autoinc();
      0033A4 C0 05            [24] 1462 	push	ar5
      0033A6 C0 04            [24] 1463 	push	ar4
      0033A8 12 2F 28         [24] 1464 	lcall	_spi_set_autoinc
      0033AB D0 04            [24] 1465 	pop	ar4
      0033AD D0 05            [24] 1466 	pop	ar5
      0033AF                       1467 00106$:
                                   1468 ;	SPI.c:225: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      0033AF 8D 07            [24] 1469 	mov	ar7,r5
                                   1470 ;	SPI.c:226: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      0033B1 8C 06            [24] 1471 	mov	ar6,r4
                                   1472 ;	SPI.c:228: spi_control_write(0, 0x01, higher_byte); // High byte
      0033B3 90 03 6A         [24] 1473 	mov	dptr,#_spi_control_write_PARM_2
      0033B6 74 01            [12] 1474 	mov	a,#0x01
      0033B8 F0               [24] 1475 	movx	@dptr,a
      0033B9 90 03 6B         [24] 1476 	mov	dptr,#_spi_control_write_PARM_3
      0033BC EF               [12] 1477 	mov	a,r7
      0033BD F0               [24] 1478 	movx	@dptr,a
      0033BE 75 82 00         [24] 1479 	mov	dpl, #0x00
      0033C1 C0 06            [24] 1480 	push	ar6
      0033C3 C0 05            [24] 1481 	push	ar5
      0033C5 C0 04            [24] 1482 	push	ar4
      0033C7 12 2F 53         [24] 1483 	lcall	_spi_control_write
      0033CA D0 04            [24] 1484 	pop	ar4
      0033CC D0 05            [24] 1485 	pop	ar5
      0033CE D0 06            [24] 1486 	pop	ar6
                                   1487 ;	SPI.c:229: spi_control_write(0, 0x00, lower_byte); // Low byte
      0033D0 90 03 6A         [24] 1488 	mov	dptr,#_spi_control_write_PARM_2
      0033D3 E4               [12] 1489 	clr	a
      0033D4 F0               [24] 1490 	movx	@dptr,a
      0033D5 90 03 6B         [24] 1491 	mov	dptr,#_spi_control_write_PARM_3
      0033D8 EE               [12] 1492 	mov	a,r6
      0033D9 F0               [24] 1493 	movx	@dptr,a
      0033DA 75 82 00         [24] 1494 	mov	dpl, #0x00
      0033DD C0 05            [24] 1495 	push	ar5
      0033DF C0 04            [24] 1496 	push	ar4
      0033E1 12 2F 53         [24] 1497 	lcall	_spi_control_write
                                   1498 ;	SPI.c:232: CS_LOW; // Pull CS Low
                                   1499 ;	assignBit
      0033E4 C2 91            [12] 1500 	clr	_P1_1
                                   1501 ;	SPI.c:233: SPI_send(opcode); // Send opcode
      0033E6 75 82 3A         [24] 1502 	mov	dpl, #0x3a
      0033E9 12 2F BE         [24] 1503 	lcall	_SPI_send
      0033EC D0 04            [24] 1504 	pop	ar4
      0033EE D0 05            [24] 1505 	pop	ar5
                                   1506 ;	SPI.c:236: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      0033F0 90 03 80         [24] 1507 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      0033F3 E0               [24] 1508 	movx	a,@dptr
      0033F4 FE               [12] 1509 	mov	r6,a
      0033F5 A3               [24] 1510 	inc	dptr
      0033F6 E0               [24] 1511 	movx	a,@dptr
      0033F7 FF               [12] 1512 	mov	r7,a
      0033F8 C0 07            [24] 1513 	push	ar7
      0033FA C0 06            [24] 1514 	push	ar6
      0033FC C0 04            [24] 1515 	push	ar4
      0033FE C0 05            [24] 1516 	push	ar5
      003400 C0 06            [24] 1517 	push	ar6
      003402 C0 07            [24] 1518 	push	ar7
      003404 74 3A            [12] 1519 	mov	a,#___str_10
      003406 C0 E0            [24] 1520 	push	acc
      003408 74 4A            [12] 1521 	mov	a,#(___str_10 >> 8)
      00340A C0 E0            [24] 1522 	push	acc
      00340C 74 80            [12] 1523 	mov	a,#0x80
      00340E C0 E0            [24] 1524 	push	acc
      003410 12 39 3D         [24] 1525 	lcall	_printf
      003413 E5 81            [12] 1526 	mov	a,sp
      003415 24 F9            [12] 1527 	add	a,#0xf9
      003417 F5 81            [12] 1528 	mov	sp,a
      003419 D0 06            [24] 1529 	pop	ar6
      00341B D0 07            [24] 1530 	pop	ar7
                                   1531 ;	SPI.c:237: for (int i = 0; i < num_bytes; i++) {
      00341D 90 03 82         [24] 1532 	mov	dptr,#_spi_buffer_read_i_20002_106
      003420 E4               [12] 1533 	clr	a
      003421 F0               [24] 1534 	movx	@dptr,a
      003422 A3               [24] 1535 	inc	dptr
      003423 F0               [24] 1536 	movx	@dptr,a
      003424 90 03 7D         [24] 1537 	mov	dptr,#_spi_buffer_read_PARM_3
      003427 E0               [24] 1538 	movx	a,@dptr
      003428 FB               [12] 1539 	mov	r3,a
      003429 A3               [24] 1540 	inc	dptr
      00342A E0               [24] 1541 	movx	a,@dptr
      00342B FC               [12] 1542 	mov	r4,a
      00342C A3               [24] 1543 	inc	dptr
      00342D E0               [24] 1544 	movx	a,@dptr
      00342E FD               [12] 1545 	mov	r5,a
      00342F                       1546 00109$:
      00342F 90 03 82         [24] 1547 	mov	dptr,#_spi_buffer_read_i_20002_106
      003432 E0               [24] 1548 	movx	a,@dptr
      003433 F9               [12] 1549 	mov	r1,a
      003434 A3               [24] 1550 	inc	dptr
      003435 E0               [24] 1551 	movx	a,@dptr
      003436 FA               [12] 1552 	mov	r2,a
      003437 C3               [12] 1553 	clr	c
      003438 E9               [12] 1554 	mov	a,r1
      003439 9E               [12] 1555 	subb	a,r6
      00343A EA               [12] 1556 	mov	a,r2
      00343B 64 80            [12] 1557 	xrl	a,#0x80
      00343D 8F F0            [24] 1558 	mov	b,r7
      00343F 63 F0 80         [24] 1559 	xrl	b,#0x80
      003442 95 F0            [12] 1560 	subb	a,b
      003444 40 03            [24] 1561 	jc	00147$
      003446 02 34 CC         [24] 1562 	ljmp	00107$
      003449                       1563 00147$:
                                   1564 ;	SPI.c:238: *data_ptr = SPI_ReadByte(); // Read data
      003449 C0 06            [24] 1565 	push	ar6
      00344B C0 07            [24] 1566 	push	ar7
      00344D C0 07            [24] 1567 	push	ar7
      00344F C0 06            [24] 1568 	push	ar6
      003451 C0 05            [24] 1569 	push	ar5
      003453 C0 04            [24] 1570 	push	ar4
      003455 C0 03            [24] 1571 	push	ar3
      003457 C0 02            [24] 1572 	push	ar2
      003459 C0 01            [24] 1573 	push	ar1
      00345B 12 2F 16         [24] 1574 	lcall	_SPI_ReadByte
      00345E A8 82            [24] 1575 	mov	r0, dpl
      003460 D0 01            [24] 1576 	pop	ar1
      003462 D0 02            [24] 1577 	pop	ar2
      003464 D0 03            [24] 1578 	pop	ar3
      003466 D0 04            [24] 1579 	pop	ar4
      003468 D0 05            [24] 1580 	pop	ar5
      00346A D0 06            [24] 1581 	pop	ar6
      00346C D0 07            [24] 1582 	pop	ar7
      00346E 8B 82            [24] 1583 	mov	dpl,r3
      003470 8C 83            [24] 1584 	mov	dph,r4
      003472 8D F0            [24] 1585 	mov	b,r5
      003474 E8               [12] 1586 	mov	a,r0
      003475 12 37 AB         [24] 1587 	lcall	__gptrput
      003478 A3               [24] 1588 	inc	dptr
      003479 AB 82            [24] 1589 	mov	r3,dpl
      00347B AC 83            [24] 1590 	mov	r4,dph
                                   1591 ;	SPI.c:239: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      00347D 7F 00            [12] 1592 	mov	r7,#0x00
      00347F 09               [12] 1593 	inc	r1
      003480 B9 00 01         [24] 1594 	cjne	r1,#0x00,00148$
      003483 0A               [12] 1595 	inc	r2
      003484                       1596 00148$:
      003484 C0 07            [24] 1597 	push	ar7
      003486 C0 06            [24] 1598 	push	ar6
      003488 C0 05            [24] 1599 	push	ar5
      00348A C0 04            [24] 1600 	push	ar4
      00348C C0 03            [24] 1601 	push	ar3
      00348E C0 02            [24] 1602 	push	ar2
      003490 C0 01            [24] 1603 	push	ar1
      003492 C0 00            [24] 1604 	push	ar0
      003494 C0 07            [24] 1605 	push	ar7
      003496 C0 01            [24] 1606 	push	ar1
      003498 C0 02            [24] 1607 	push	ar2
      00349A 74 75            [12] 1608 	mov	a,#___str_11
      00349C C0 E0            [24] 1609 	push	acc
      00349E 74 4A            [12] 1610 	mov	a,#(___str_11 >> 8)
      0034A0 C0 E0            [24] 1611 	push	acc
      0034A2 74 80            [12] 1612 	mov	a,#0x80
      0034A4 C0 E0            [24] 1613 	push	acc
      0034A6 12 39 3D         [24] 1614 	lcall	_printf
      0034A9 E5 81            [12] 1615 	mov	a,sp
      0034AB 24 F9            [12] 1616 	add	a,#0xf9
      0034AD F5 81            [12] 1617 	mov	sp,a
      0034AF D0 01            [24] 1618 	pop	ar1
      0034B1 D0 02            [24] 1619 	pop	ar2
      0034B3 D0 03            [24] 1620 	pop	ar3
      0034B5 D0 04            [24] 1621 	pop	ar4
      0034B7 D0 05            [24] 1622 	pop	ar5
      0034B9 D0 06            [24] 1623 	pop	ar6
      0034BB D0 07            [24] 1624 	pop	ar7
                                   1625 ;	SPI.c:240: data_ptr++;
                                   1626 ;	SPI.c:237: for (int i = 0; i < num_bytes; i++) {
      0034BD 90 03 82         [24] 1627 	mov	dptr,#_spi_buffer_read_i_20002_106
      0034C0 E9               [12] 1628 	mov	a,r1
      0034C1 F0               [24] 1629 	movx	@dptr,a
      0034C2 EA               [12] 1630 	mov	a,r2
      0034C3 A3               [24] 1631 	inc	dptr
      0034C4 F0               [24] 1632 	movx	@dptr,a
      0034C5 D0 07            [24] 1633 	pop	ar7
      0034C7 D0 06            [24] 1634 	pop	ar6
      0034C9 02 34 2F         [24] 1635 	ljmp	00109$
      0034CC                       1636 00107$:
                                   1637 ;	SPI.c:242: CS_HIGH; // Pull CS High
                                   1638 ;	assignBit
      0034CC D2 91            [12] 1639 	setb	_P1_1
                                   1640 ;	SPI.c:243: }
      0034CE 22               [24] 1641 	ret
                                   1642 ;------------------------------------------------------------
                                   1643 ;Allocation info for local variables in function 'spi_buffer_write'
                                   1644 ;------------------------------------------------------------
                                   1645 ;start_address             Allocated with name '_spi_buffer_write_PARM_2'
                                   1646 ;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
                                   1647 ;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_108'
                                   1648 ;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_113'
                                   1649 ;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_113'
                                   1650 ;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_114'
                                   1651 ;i                         Allocated with name '_spi_buffer_write_i_20002_115'
                                   1652 ;------------------------------------------------------------
                                   1653 ;	SPI.c:246: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1654 ;	-----------------------------------------
                                   1655 ;	 function spi_buffer_write
                                   1656 ;	-----------------------------------------
      0034CF                       1657 _spi_buffer_write:
      0034CF AF 83            [24] 1658 	mov	r7,dph
      0034D1 E5 82            [12] 1659 	mov	a,dpl
      0034D3 90 03 89         [24] 1660 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      0034D6 F0               [24] 1661 	movx	@dptr,a
      0034D7 EF               [12] 1662 	mov	a,r7
      0034D8 A3               [24] 1663 	inc	dptr
      0034D9 F0               [24] 1664 	movx	@dptr,a
                                   1665 ;	SPI.c:248: if (num_bytes < 1)
      0034DA 90 03 89         [24] 1666 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      0034DD E0               [24] 1667 	movx	a,@dptr
      0034DE FE               [12] 1668 	mov	r6,a
      0034DF A3               [24] 1669 	inc	dptr
      0034E0 E0               [24] 1670 	movx	a,@dptr
      0034E1 FF               [12] 1671 	mov	r7,a
      0034E2 C3               [12] 1672 	clr	c
      0034E3 EE               [12] 1673 	mov	a,r6
      0034E4 94 01            [12] 1674 	subb	a,#0x01
      0034E6 EF               [12] 1675 	mov	a,r7
      0034E7 64 80            [12] 1676 	xrl	a,#0x80
      0034E9 94 80            [12] 1677 	subb	a,#0x80
      0034EB 50 1A            [24] 1678 	jnc	00102$
                                   1679 ;	SPI.c:250: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      0034ED C0 06            [24] 1680 	push	ar6
      0034EF C0 07            [24] 1681 	push	ar7
      0034F1 74 00            [12] 1682 	mov	a,#___str_8
      0034F3 C0 E0            [24] 1683 	push	acc
      0034F5 74 4A            [12] 1684 	mov	a,#(___str_8 >> 8)
      0034F7 C0 E0            [24] 1685 	push	acc
      0034F9 74 80            [12] 1686 	mov	a,#0x80
      0034FB C0 E0            [24] 1687 	push	acc
      0034FD 12 39 3D         [24] 1688 	lcall	_printf
      003500 E5 81            [12] 1689 	mov	a,sp
      003502 24 FB            [12] 1690 	add	a,#0xfb
      003504 F5 81            [12] 1691 	mov	sp,a
                                   1692 ;	SPI.c:251: return;
      003506 22               [24] 1693 	ret
      003507                       1694 00102$:
                                   1695 ;	SPI.c:253: if (start_address > 0x1FFF) {
      003507 90 03 84         [24] 1696 	mov	dptr,#_spi_buffer_write_PARM_2
      00350A E0               [24] 1697 	movx	a,@dptr
      00350B FC               [12] 1698 	mov	r4,a
      00350C A3               [24] 1699 	inc	dptr
      00350D E0               [24] 1700 	movx	a,@dptr
      00350E FD               [12] 1701 	mov	r5,a
      00350F 8C 02            [24] 1702 	mov	ar2,r4
      003511 8D 03            [24] 1703 	mov	ar3,r5
      003513 C3               [12] 1704 	clr	c
      003514 74 FF            [12] 1705 	mov	a,#0xff
      003516 9A               [12] 1706 	subb	a,r2
      003517 74 1F            [12] 1707 	mov	a,#0x1f
      003519 9B               [12] 1708 	subb	a,r3
      00351A 50 1A            [24] 1709 	jnc	00104$
                                   1710 ;	SPI.c:254: printf("\n\rInvalid address: %04X\n\r", start_address);
      00351C C0 04            [24] 1711 	push	ar4
      00351E C0 05            [24] 1712 	push	ar5
      003520 74 20            [12] 1713 	mov	a,#___str_9
      003522 C0 E0            [24] 1714 	push	acc
      003524 74 4A            [12] 1715 	mov	a,#(___str_9 >> 8)
      003526 C0 E0            [24] 1716 	push	acc
      003528 74 80            [12] 1717 	mov	a,#0x80
      00352A C0 E0            [24] 1718 	push	acc
      00352C 12 39 3D         [24] 1719 	lcall	_printf
      00352F E5 81            [12] 1720 	mov	a,sp
      003531 24 FB            [12] 1721 	add	a,#0xfb
      003533 F5 81            [12] 1722 	mov	sp,a
                                   1723 ;	SPI.c:255: return;
      003535 22               [24] 1724 	ret
      003536                       1725 00104$:
                                   1726 ;	SPI.c:259: if (num_bytes > 1) {
      003536 C3               [12] 1727 	clr	c
      003537 74 01            [12] 1728 	mov	a,#0x01
      003539 9E               [12] 1729 	subb	a,r6
      00353A 74 80            [12] 1730 	mov	a,#(0x00 ^ 0x80)
      00353C 8F F0            [24] 1731 	mov	b,r7
      00353E 63 F0 80         [24] 1732 	xrl	b,#0x80
      003541 95 F0            [12] 1733 	subb	a,b
      003543 50 0B            [24] 1734 	jnc	00106$
                                   1735 ;	SPI.c:260: spi_set_autoinc();
      003545 C0 05            [24] 1736 	push	ar5
      003547 C0 04            [24] 1737 	push	ar4
      003549 12 2F 28         [24] 1738 	lcall	_spi_set_autoinc
      00354C D0 04            [24] 1739 	pop	ar4
      00354E D0 05            [24] 1740 	pop	ar5
      003550                       1741 00106$:
                                   1742 ;	SPI.c:263: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003550 8D 07            [24] 1743 	mov	ar7,r5
                                   1744 ;	SPI.c:264: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      003552 8C 06            [24] 1745 	mov	ar6,r4
                                   1746 ;	SPI.c:266: spi_control_write(0, 0x03, higher_byte); // High byte
      003554 90 03 6A         [24] 1747 	mov	dptr,#_spi_control_write_PARM_2
      003557 74 03            [12] 1748 	mov	a,#0x03
      003559 F0               [24] 1749 	movx	@dptr,a
      00355A 90 03 6B         [24] 1750 	mov	dptr,#_spi_control_write_PARM_3
      00355D EF               [12] 1751 	mov	a,r7
      00355E F0               [24] 1752 	movx	@dptr,a
      00355F 75 82 00         [24] 1753 	mov	dpl, #0x00
      003562 C0 06            [24] 1754 	push	ar6
      003564 C0 05            [24] 1755 	push	ar5
      003566 C0 04            [24] 1756 	push	ar4
      003568 12 2F 53         [24] 1757 	lcall	_spi_control_write
      00356B D0 04            [24] 1758 	pop	ar4
      00356D D0 05            [24] 1759 	pop	ar5
      00356F D0 06            [24] 1760 	pop	ar6
                                   1761 ;	SPI.c:267: spi_control_write(0, 0x02, lower_byte); // Low byte
      003571 90 03 6A         [24] 1762 	mov	dptr,#_spi_control_write_PARM_2
      003574 74 02            [12] 1763 	mov	a,#0x02
      003576 F0               [24] 1764 	movx	@dptr,a
      003577 90 03 6B         [24] 1765 	mov	dptr,#_spi_control_write_PARM_3
      00357A EE               [12] 1766 	mov	a,r6
      00357B F0               [24] 1767 	movx	@dptr,a
      00357C 75 82 00         [24] 1768 	mov	dpl, #0x00
      00357F C0 05            [24] 1769 	push	ar5
      003581 C0 04            [24] 1770 	push	ar4
      003583 12 2F 53         [24] 1771 	lcall	_spi_control_write
                                   1772 ;	SPI.c:270: CS_LOW; // Pull CS Low
                                   1773 ;	assignBit
      003586 C2 91            [12] 1774 	clr	_P1_1
                                   1775 ;	SPI.c:271: SPI_send(opcode); // Send opcode
      003588 75 82 7A         [24] 1776 	mov	dpl, #0x7a
      00358B 12 2F BE         [24] 1777 	lcall	_SPI_send
      00358E D0 04            [24] 1778 	pop	ar4
      003590 D0 05            [24] 1779 	pop	ar5
                                   1780 ;	SPI.c:274: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003592 90 03 89         [24] 1781 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      003595 E0               [24] 1782 	movx	a,@dptr
      003596 FE               [12] 1783 	mov	r6,a
      003597 A3               [24] 1784 	inc	dptr
      003598 E0               [24] 1785 	movx	a,@dptr
      003599 FF               [12] 1786 	mov	r7,a
      00359A C0 07            [24] 1787 	push	ar7
      00359C C0 06            [24] 1788 	push	ar6
      00359E C0 04            [24] 1789 	push	ar4
      0035A0 C0 05            [24] 1790 	push	ar5
      0035A2 C0 06            [24] 1791 	push	ar6
      0035A4 C0 07            [24] 1792 	push	ar7
      0035A6 74 87            [12] 1793 	mov	a,#___str_12
      0035A8 C0 E0            [24] 1794 	push	acc
      0035AA 74 4A            [12] 1795 	mov	a,#(___str_12 >> 8)
      0035AC C0 E0            [24] 1796 	push	acc
      0035AE 74 80            [12] 1797 	mov	a,#0x80
      0035B0 C0 E0            [24] 1798 	push	acc
      0035B2 12 39 3D         [24] 1799 	lcall	_printf
      0035B5 E5 81            [12] 1800 	mov	a,sp
      0035B7 24 F9            [12] 1801 	add	a,#0xf9
      0035B9 F5 81            [12] 1802 	mov	sp,a
      0035BB D0 06            [24] 1803 	pop	ar6
      0035BD D0 07            [24] 1804 	pop	ar7
                                   1805 ;	SPI.c:275: for (int i = 0; i < num_bytes; i++) {
      0035BF 90 03 8B         [24] 1806 	mov	dptr,#_spi_buffer_write_i_20002_115
      0035C2 E4               [12] 1807 	clr	a
      0035C3 F0               [24] 1808 	movx	@dptr,a
      0035C4 A3               [24] 1809 	inc	dptr
      0035C5 F0               [24] 1810 	movx	@dptr,a
      0035C6 90 03 86         [24] 1811 	mov	dptr,#_spi_buffer_write_PARM_3
      0035C9 E0               [24] 1812 	movx	a,@dptr
      0035CA FB               [12] 1813 	mov	r3,a
      0035CB A3               [24] 1814 	inc	dptr
      0035CC E0               [24] 1815 	movx	a,@dptr
      0035CD FC               [12] 1816 	mov	r4,a
      0035CE A3               [24] 1817 	inc	dptr
      0035CF E0               [24] 1818 	movx	a,@dptr
      0035D0 FD               [12] 1819 	mov	r5,a
      0035D1                       1820 00109$:
      0035D1 90 03 8B         [24] 1821 	mov	dptr,#_spi_buffer_write_i_20002_115
      0035D4 E0               [24] 1822 	movx	a,@dptr
      0035D5 F9               [12] 1823 	mov	r1,a
      0035D6 A3               [24] 1824 	inc	dptr
      0035D7 E0               [24] 1825 	movx	a,@dptr
      0035D8 FA               [12] 1826 	mov	r2,a
      0035D9 C3               [12] 1827 	clr	c
      0035DA E9               [12] 1828 	mov	a,r1
      0035DB 9E               [12] 1829 	subb	a,r6
      0035DC EA               [12] 1830 	mov	a,r2
      0035DD 64 80            [12] 1831 	xrl	a,#0x80
      0035DF 8F F0            [24] 1832 	mov	b,r7
      0035E1 63 F0 80         [24] 1833 	xrl	b,#0x80
      0035E4 95 F0            [12] 1834 	subb	a,b
      0035E6 40 03            [24] 1835 	jc	00147$
      0035E8 02 36 78         [24] 1836 	ljmp	00107$
      0035EB                       1837 00147$:
                                   1838 ;	SPI.c:276: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      0035EB C0 06            [24] 1839 	push	ar6
      0035ED C0 07            [24] 1840 	push	ar7
      0035EF 8B 82            [24] 1841 	mov	dpl,r3
      0035F1 8C 83            [24] 1842 	mov	dph,r4
      0035F3 8D F0            [24] 1843 	mov	b,r5
      0035F5 12 43 5F         [24] 1844 	lcall	__gptrget
      0035F8 F8               [12] 1845 	mov	r0,a
      0035F9 7F 00            [12] 1846 	mov	r7,#0x00
      0035FB 09               [12] 1847 	inc	r1
      0035FC B9 00 01         [24] 1848 	cjne	r1,#0x00,00148$
      0035FF 0A               [12] 1849 	inc	r2
      003600                       1850 00148$:
      003600 C0 07            [24] 1851 	push	ar7
      003602 C0 06            [24] 1852 	push	ar6
      003604 C0 05            [24] 1853 	push	ar5
      003606 C0 04            [24] 1854 	push	ar4
      003608 C0 03            [24] 1855 	push	ar3
      00360A C0 02            [24] 1856 	push	ar2
      00360C C0 01            [24] 1857 	push	ar1
      00360E C0 00            [24] 1858 	push	ar0
      003610 C0 07            [24] 1859 	push	ar7
      003612 C0 01            [24] 1860 	push	ar1
      003614 C0 02            [24] 1861 	push	ar2
      003616 74 75            [12] 1862 	mov	a,#___str_11
      003618 C0 E0            [24] 1863 	push	acc
      00361A 74 4A            [12] 1864 	mov	a,#(___str_11 >> 8)
      00361C C0 E0            [24] 1865 	push	acc
      00361E 74 80            [12] 1866 	mov	a,#0x80
      003620 C0 E0            [24] 1867 	push	acc
      003622 12 39 3D         [24] 1868 	lcall	_printf
      003625 E5 81            [12] 1869 	mov	a,sp
      003627 24 F9            [12] 1870 	add	a,#0xf9
      003629 F5 81            [12] 1871 	mov	sp,a
      00362B D0 01            [24] 1872 	pop	ar1
      00362D D0 02            [24] 1873 	pop	ar2
      00362F D0 03            [24] 1874 	pop	ar3
      003631 D0 04            [24] 1875 	pop	ar4
      003633 D0 05            [24] 1876 	pop	ar5
      003635 D0 06            [24] 1877 	pop	ar6
      003637 D0 07            [24] 1878 	pop	ar7
                                   1879 ;	SPI.c:277: SPI_send(*data_ptr); // Send data
      003639 8B 82            [24] 1880 	mov	dpl,r3
      00363B 8C 83            [24] 1881 	mov	dph,r4
      00363D 8D F0            [24] 1882 	mov	b,r5
      00363F 12 43 5F         [24] 1883 	lcall	__gptrget
      003642 FF               [12] 1884 	mov	r7,a
      003643 A3               [24] 1885 	inc	dptr
      003644 AB 82            [24] 1886 	mov	r3,dpl
      003646 AC 83            [24] 1887 	mov	r4,dph
      003648 8F 82            [24] 1888 	mov	dpl, r7
      00364A C0 07            [24] 1889 	push	ar7
      00364C C0 06            [24] 1890 	push	ar6
      00364E C0 05            [24] 1891 	push	ar5
      003650 C0 04            [24] 1892 	push	ar4
      003652 C0 03            [24] 1893 	push	ar3
      003654 C0 02            [24] 1894 	push	ar2
      003656 C0 01            [24] 1895 	push	ar1
      003658 12 2F BE         [24] 1896 	lcall	_SPI_send
      00365B D0 01            [24] 1897 	pop	ar1
      00365D D0 02            [24] 1898 	pop	ar2
      00365F D0 03            [24] 1899 	pop	ar3
      003661 D0 04            [24] 1900 	pop	ar4
      003663 D0 05            [24] 1901 	pop	ar5
      003665 D0 06            [24] 1902 	pop	ar6
      003667 D0 07            [24] 1903 	pop	ar7
                                   1904 ;	SPI.c:278: data_ptr++;
                                   1905 ;	SPI.c:275: for (int i = 0; i < num_bytes; i++) {
      003669 90 03 8B         [24] 1906 	mov	dptr,#_spi_buffer_write_i_20002_115
      00366C E9               [12] 1907 	mov	a,r1
      00366D F0               [24] 1908 	movx	@dptr,a
      00366E EA               [12] 1909 	mov	a,r2
      00366F A3               [24] 1910 	inc	dptr
      003670 F0               [24] 1911 	movx	@dptr,a
      003671 D0 07            [24] 1912 	pop	ar7
      003673 D0 06            [24] 1913 	pop	ar6
      003675 02 35 D1         [24] 1914 	ljmp	00109$
      003678                       1915 00107$:
                                   1916 ;	SPI.c:280: CS_HIGH; // Pull CS High
                                   1917 ;	assignBit
      003678 D2 91            [12] 1918 	setb	_P1_1
                                   1919 ;	SPI.c:281: }
      00367A 22               [24] 1920 	ret
                                   1921 ;------------------------------------------------------------
                                   1922 ;Allocation info for local variables in function 'init_ENC'
                                   1923 ;------------------------------------------------------------
                                   1924 ;	SPI.c:283: void init_ENC(void)
                                   1925 ;	-----------------------------------------
                                   1926 ;	 function init_ENC
                                   1927 ;	-----------------------------------------
      00367B                       1928 _init_ENC:
                                   1929 ;	SPI.c:286: enc28j60_init_rx_buffer(0x0000, 0x0010);
      00367B 90 01 06         [24] 1930 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      00367E 74 10            [12] 1931 	mov	a,#0x10
      003680 F0               [24] 1932 	movx	@dptr,a
      003681 E4               [12] 1933 	clr	a
      003682 A3               [24] 1934 	inc	dptr
      003683 F0               [24] 1935 	movx	@dptr,a
      003684 90 00 00         [24] 1936 	mov	dptr,#0x0000
                                   1937 ;	SPI.c:288: }
      003687 02 21 6E         [24] 1938 	ljmp	_enc28j60_init_rx_buffer
                                   1939 ;------------------------------------------------------------
                                   1940 ;Allocation info for local variables in function 'init_MAC'
                                   1941 ;------------------------------------------------------------
                                   1942 ;	SPI.c:290: void init_MAC(void)
                                   1943 ;	-----------------------------------------
                                   1944 ;	 function init_MAC
                                   1945 ;	-----------------------------------------
      00368A                       1946 _init_MAC:
                                   1947 ;	SPI.c:293: spi_control_write(0x02, 0x02, 0x70); // Write 0x30 to MACON3 (address 0x02 in bank 2)
      00368A 90 03 6A         [24] 1948 	mov	dptr,#_spi_control_write_PARM_2
      00368D 74 02            [12] 1949 	mov	a,#0x02
      00368F F0               [24] 1950 	movx	@dptr,a
      003690 90 03 6B         [24] 1951 	mov	dptr,#_spi_control_write_PARM_3
      003693 74 70            [12] 1952 	mov	a,#0x70
      003695 F0               [24] 1953 	movx	@dptr,a
      003696 75 82 02         [24] 1954 	mov	dpl, #0x02
      003699 12 2F 53         [24] 1955 	lcall	_spi_control_write
                                   1956 ;	SPI.c:294: spi_control_write(0x02, 0x03, 0x40); // Write 0x40 to MACON4 (address 0x02 in bank 2) - DEFER bit
      00369C 90 03 6A         [24] 1957 	mov	dptr,#_spi_control_write_PARM_2
      00369F 74 03            [12] 1958 	mov	a,#0x03
      0036A1 F0               [24] 1959 	movx	@dptr,a
      0036A2 90 03 6B         [24] 1960 	mov	dptr,#_spi_control_write_PARM_3
      0036A5 74 40            [12] 1961 	mov	a,#0x40
      0036A7 F0               [24] 1962 	movx	@dptr,a
      0036A8 75 82 02         [24] 1963 	mov	dpl, #0x02
      0036AB 12 2F 53         [24] 1964 	lcall	_spi_control_write
                                   1965 ;	SPI.c:295: spi_control_write(0x02, 0x0A, 0xEE); // Write 0xEE to MAMXFLL (low byte, address 0x0A in bank 2)
      0036AE 90 03 6A         [24] 1966 	mov	dptr,#_spi_control_write_PARM_2
      0036B1 74 0A            [12] 1967 	mov	a,#0x0a
      0036B3 F0               [24] 1968 	movx	@dptr,a
      0036B4 90 03 6B         [24] 1969 	mov	dptr,#_spi_control_write_PARM_3
      0036B7 74 EE            [12] 1970 	mov	a,#0xee
      0036B9 F0               [24] 1971 	movx	@dptr,a
      0036BA 75 82 02         [24] 1972 	mov	dpl, #0x02
      0036BD 12 2F 53         [24] 1973 	lcall	_spi_control_write
                                   1974 ;	SPI.c:296: spi_control_write(0x02, 0x0B, 0x05); // Write 0x05 to MAMXFLH (high byte, address 0x0B in bank 2)
      0036C0 90 03 6A         [24] 1975 	mov	dptr,#_spi_control_write_PARM_2
      0036C3 74 0B            [12] 1976 	mov	a,#0x0b
      0036C5 F0               [24] 1977 	movx	@dptr,a
      0036C6 90 03 6B         [24] 1978 	mov	dptr,#_spi_control_write_PARM_3
      0036C9 74 05            [12] 1979 	mov	a,#0x05
      0036CB F0               [24] 1980 	movx	@dptr,a
      0036CC 75 82 02         [24] 1981 	mov	dpl, #0x02
      0036CF 12 2F 53         [24] 1982 	lcall	_spi_control_write
                                   1983 ;	SPI.c:297: spi_control_write(0x02, 0x04, 0x12); // Write 0x15 to MABBIPG (address 0x04 in bank 2)
      0036D2 90 03 6A         [24] 1984 	mov	dptr,#_spi_control_write_PARM_2
      0036D5 74 04            [12] 1985 	mov	a,#0x04
      0036D7 F0               [24] 1986 	movx	@dptr,a
      0036D8 90 03 6B         [24] 1987 	mov	dptr,#_spi_control_write_PARM_3
      0036DB 74 12            [12] 1988 	mov	a,#0x12
      0036DD F0               [24] 1989 	movx	@dptr,a
      0036DE 75 82 02         [24] 1990 	mov	dpl, #0x02
      0036E1 12 2F 53         [24] 1991 	lcall	_spi_control_write
                                   1992 ;	SPI.c:298: spi_control_write(0x02, 0x06, 0x12); // Write 0x12 to MAIPGL (low byte, address 0x06 in bank 2)
      0036E4 90 03 6A         [24] 1993 	mov	dptr,#_spi_control_write_PARM_2
      0036E7 74 06            [12] 1994 	mov	a,#0x06
      0036E9 F0               [24] 1995 	movx	@dptr,a
      0036EA 90 03 6B         [24] 1996 	mov	dptr,#_spi_control_write_PARM_3
      0036ED 74 12            [12] 1997 	mov	a,#0x12
      0036EF F0               [24] 1998 	movx	@dptr,a
      0036F0 75 82 02         [24] 1999 	mov	dpl, #0x02
      0036F3 12 2F 53         [24] 2000 	lcall	_spi_control_write
                                   2001 ;	SPI.c:299: spi_control_write(0x02, 0x07, 0x0C); // Write 0x12 to MAIPGH (low byte, address 0x06 in bank 2)
      0036F6 90 03 6A         [24] 2002 	mov	dptr,#_spi_control_write_PARM_2
      0036F9 74 07            [12] 2003 	mov	a,#0x07
      0036FB F0               [24] 2004 	movx	@dptr,a
      0036FC 90 03 6B         [24] 2005 	mov	dptr,#_spi_control_write_PARM_3
      0036FF 74 0C            [12] 2006 	mov	a,#0x0c
      003701 F0               [24] 2007 	movx	@dptr,a
      003702 75 82 02         [24] 2008 	mov	dpl, #0x02
                                   2009 ;	SPI.c:300: }
      003705 02 2F 53         [24] 2010 	ljmp	_spi_control_write
                                   2011 	.area CSEG    (CODE)
                                   2012 	.area CONST   (CODE)
                                   2013 	.area CONST   (CODE)
      00489A                       2014 ___str_0:
      00489A 57 72 69 74 65 3A 20  2015 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      0048BC 0A                    2016 	.db 0x0a
      0048BD 0D                    2017 	.db 0x0d
      0048BE 00                    2018 	.db 0x00
                                   2019 	.area CSEG    (CODE)
                                   2020 	.area CONST   (CODE)
      0048BF                       2021 ___str_1:
      0048BF 0A                    2022 	.db 0x0a
      0048C0 0D                    2023 	.db 0x0d
      0048C1 49 6E 76 61 6C 69 64  2024 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      0048F6 0A                    2025 	.db 0x0a
      0048F7 0D                    2026 	.db 0x0d
      0048F8 00                    2027 	.db 0x00
                                   2028 	.area CSEG    (CODE)
                                   2029 	.area CONST   (CODE)
      0048F9                       2030 ___str_2:
      0048F9 52 65 61 64 3A 20 41  2031 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      00491A 0A                    2032 	.db 0x0a
      00491B 0D                    2033 	.db 0x0d
      00491C 00                    2034 	.db 0x00
                                   2035 	.area CSEG    (CODE)
                                   2036 	.area CONST   (CODE)
      00491D                       2037 ___str_3:
      00491D 50 48 59 20 57 72 69  2038 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      004943 0A                    2039 	.db 0x0a
      004944 0D                    2040 	.db 0x0d
      004945 00                    2041 	.db 0x00
                                   2042 	.area CSEG    (CODE)
                                   2043 	.area CONST   (CODE)
      004946                       2044 ___str_4:
      004946 52 65 61 64 3A 20 41  2045 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004967 0A                    2046 	.db 0x0a
      004968 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      004969                       2050 ___str_5:
      004969 50 48 59 20 52 65 61  2051 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      00498E 0A                    2052 	.db 0x0a
      00498F 0D                    2053 	.db 0x0d
      004990 00                    2054 	.db 0x00
                                   2055 	.area CSEG    (CODE)
                                   2056 	.area CONST   (CODE)
      004991                       2057 ___str_6:
      004991 0A                    2058 	.db 0x0a
      004992 0D                    2059 	.db 0x0d
      004993 49 6E 76 61 6C 69 64  2060 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      0049CC 0A                    2061 	.db 0x0a
      0049CD 0D                    2062 	.db 0x0d
      0049CE 00                    2063 	.db 0x00
                                   2064 	.area CSEG    (CODE)
                                   2065 	.area CONST   (CODE)
      0049CF                       2066 ___str_7:
      0049CF 0A                    2067 	.db 0x0a
      0049D0 0D                    2068 	.db 0x0d
      0049D1 42 75 66 66 65 72 20  2069 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      0049FD 0A                    2070 	.db 0x0a
      0049FE 0D                    2071 	.db 0x0d
      0049FF 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                                   2074 	.area CONST   (CODE)
      004A00                       2075 ___str_8:
      004A00 0A                    2076 	.db 0x0a
      004A01 0D                    2077 	.db 0x0d
      004A02 49 6E 76 61 6C 69 64  2078 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      004A1D 0A                    2079 	.db 0x0a
      004A1E 0D                    2080 	.db 0x0d
      004A1F 00                    2081 	.db 0x00
                                   2082 	.area CSEG    (CODE)
                                   2083 	.area CONST   (CODE)
      004A20                       2084 ___str_9:
      004A20 0A                    2085 	.db 0x0a
      004A21 0D                    2086 	.db 0x0d
      004A22 49 6E 76 61 6C 69 64  2087 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      004A37 0A                    2088 	.db 0x0a
      004A38 0D                    2089 	.db 0x0d
      004A39 00                    2090 	.db 0x00
                                   2091 	.area CSEG    (CODE)
                                   2092 	.area CONST   (CODE)
      004A3A                       2093 ___str_10:
      004A3A 52 65 61 64 69 6E 67  2094 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      004A72 0A                    2095 	.db 0x0a
      004A73 0D                    2096 	.db 0x0d
      004A74 00                    2097 	.db 0x00
                                   2098 	.area CSEG    (CODE)
                                   2099 	.area CONST   (CODE)
      004A75                       2100 ___str_11:
      004A75 42 79 74 65 20 25 64  2101 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      004A84 0A                    2102 	.db 0x0a
      004A85 0D                    2103 	.db 0x0d
      004A86 00                    2104 	.db 0x00
                                   2105 	.area CSEG    (CODE)
                                   2106 	.area CONST   (CODE)
      004A87                       2107 ___str_12:
      004A87 57 72 69 74 69 6E 67  2108 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      004ABD 0A                    2109 	.db 0x0a
      004ABE 0D                    2110 	.db 0x0d
      004ABF 00                    2111 	.db 0x00
                                   2112 	.area CSEG    (CODE)
                                   2113 	.area XINIT   (CODE)
                                   2114 	.area CABS    (ABS,CODE)

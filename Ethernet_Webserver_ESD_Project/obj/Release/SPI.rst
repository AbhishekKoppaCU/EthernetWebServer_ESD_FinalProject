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
      000360                        501 _SPI_ReadByte_received_data_10000_64:
      000360                        502 	.ds 1
      000361                        503 _select_reg_bank_bank_10000_68:
      000361                        504 	.ds 1
      000362                        505 _spi_control_write_PARM_2:
      000362                        506 	.ds 1
      000363                        507 _spi_control_write_PARM_3:
      000363                        508 	.ds 1
      000364                        509 _spi_control_write_reg_bank_10000_70:
      000364                        510 	.ds 1
      000365                        511 _SPI_send_data_10000_74:
      000365                        512 	.ds 1
      000366                        513 _eth_spi_read_PARM_2:
      000366                        514 	.ds 1
      000367                        515 _eth_spi_read_addr_10000_79:
      000367                        516 	.ds 1
      000368                        517 _phy_spi_write_PARM_2:
      000368                        518 	.ds 2
      00036A                        519 _phy_spi_write_addr_10000_83:
      00036A                        520 	.ds 1
      00036B                        521 _mac_spi_read_PARM_2:
      00036B                        522 	.ds 1
      00036C                        523 _mac_spi_read_addr_10000_85:
      00036C                        524 	.ds 1
      00036D                        525 _phy_spi_read_addr_10000_89:
      00036D                        526 	.ds 1
      00036E                        527 _busy_wait_data_10000_93:
      00036E                        528 	.ds 1
      00036F                        529 _buffer_init_PARM_2:
      00036F                        530 	.ds 2
      000371                        531 _buffer_init_start_address_10000_95:
      000371                        532 	.ds 2
      000373                        533 _spi_buffer_read_PARM_2:
      000373                        534 	.ds 2
      000375                        535 _spi_buffer_read_PARM_3:
      000375                        536 	.ds 3
      000378                        537 _spi_buffer_read_num_bytes_10000_99:
      000378                        538 	.ds 2
      00037A                        539 _spi_buffer_read_i_20002_106:
      00037A                        540 	.ds 2
      00037C                        541 _spi_buffer_write_PARM_2:
      00037C                        542 	.ds 2
      00037E                        543 _spi_buffer_write_PARM_3:
      00037E                        544 	.ds 3
      000381                        545 _spi_buffer_write_num_bytes_10000_108:
      000381                        546 	.ds 2
      000383                        547 _spi_buffer_write_i_20002_115:
      000383                        548 	.ds 2
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
      002F8F                        592 _SPI_ReadByte:
                           000007   593 	ar7 = 0x07
                           000006   594 	ar6 = 0x06
                           000005   595 	ar5 = 0x05
                           000004   596 	ar4 = 0x04
                           000003   597 	ar3 = 0x03
                           000002   598 	ar2 = 0x02
                           000001   599 	ar1 = 0x01
                           000000   600 	ar0 = 0x00
                                    601 ;	SPI.c:9: SPDAT = 0xFF;
      002F8F 75 C5 FF         [24]  602 	mov	_SPDAT,#0xff
                                    603 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      002F92                        604 00101$:
      002F92 E5 C4            [12]  605 	mov	a,_SPSTA
      002F94 30 E7 FB         [24]  606 	jnb	acc.7,00101$
                                    607 ;	SPI.c:17: received_data = SPDAT;
      002F97 90 03 60         [24]  608 	mov	dptr,#_SPI_ReadByte_received_data_10000_64
      002F9A E5 C5            [12]  609 	mov	a,_SPDAT
      002F9C F0               [24]  610 	movx	@dptr,a
                                    611 ;	SPI.c:19: return received_data;
      002F9D E0               [24]  612 	movx	a,@dptr
                                    613 ;	SPI.c:20: }
      002F9E F5 82            [12]  614 	mov	dpl,a
      002FA0 22               [24]  615 	ret
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    618 ;------------------------------------------------------------
                                    619 ;	SPI.c:22: void spi_set_autoinc(void)
                                    620 ;	-----------------------------------------
                                    621 ;	 function spi_set_autoinc
                                    622 ;	-----------------------------------------
      002FA1                        623 _spi_set_autoinc:
                                    624 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    625 ;	assignBit
      002FA1 C2 91            [12]  626 	clr	_P1_1
                                    627 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      002FA3 75 82 5E         [24]  628 	mov	dpl, #0x5e
      002FA6 12 30 39         [24]  629 	lcall	_SPI_send
                                    630 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      002FA9 75 82 80         [24]  631 	mov	dpl, #0x80
      002FAC 12 30 39         [24]  632 	lcall	_SPI_send
                                    633 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    634 ;	assignBit
      002FAF D2 91            [12]  635 	setb	_P1_1
                                    636 ;	SPI.c:30: }
      002FB1 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'select_reg_bank'
                                    640 ;------------------------------------------------------------
                                    641 ;bank                      Allocated with name '_select_reg_bank_bank_10000_68'
                                    642 ;------------------------------------------------------------
                                    643 ;	SPI.c:32: void select_reg_bank(uint8_t bank)
                                    644 ;	-----------------------------------------
                                    645 ;	 function select_reg_bank
                                    646 ;	-----------------------------------------
      002FB2                        647 _select_reg_bank:
      002FB2 E5 82            [12]  648 	mov	a,dpl
      002FB4 90 03 61         [24]  649 	mov	dptr,#_select_reg_bank_bank_10000_68
      002FB7 F0               [24]  650 	movx	@dptr,a
                                    651 ;	SPI.c:35: CS_LOW;
                                    652 ;	assignBit
      002FB8 C2 91            [12]  653 	clr	_P1_1
                                    654 ;	SPI.c:38: SPI_send(0x5F);
      002FBA 75 82 5F         [24]  655 	mov	dpl, #0x5f
      002FBD 12 30 39         [24]  656 	lcall	_SPI_send
                                    657 ;	SPI.c:41: SPI_send(bank + 4);
      002FC0 90 03 61         [24]  658 	mov	dptr,#_select_reg_bank_bank_10000_68
      002FC3 E0               [24]  659 	movx	a,@dptr
      002FC4 24 04            [12]  660 	add	a,#0x04
      002FC6 F5 82            [12]  661 	mov	dpl,a
      002FC8 12 30 39         [24]  662 	lcall	_SPI_send
                                    663 ;	SPI.c:44: CS_HIGH;
                                    664 ;	assignBit
      002FCB D2 91            [12]  665 	setb	_P1_1
                                    666 ;	SPI.c:45: }
      002FCD 22               [24]  667 	ret
                                    668 ;------------------------------------------------------------
                                    669 ;Allocation info for local variables in function 'spi_control_write'
                                    670 ;------------------------------------------------------------
                                    671 ;addr                      Allocated with name '_spi_control_write_PARM_2'
                                    672 ;data                      Allocated with name '_spi_control_write_PARM_3'
                                    673 ;reg_bank                  Allocated with name '_spi_control_write_reg_bank_10000_70'
                                    674 ;opcode                    Allocated with name '_spi_control_write_opcode_10000_71'
                                    675 ;------------------------------------------------------------
                                    676 ;	SPI.c:46: void spi_control_write(uint8_t reg_bank, uint8_t addr, uint8_t data)
                                    677 ;	-----------------------------------------
                                    678 ;	 function spi_control_write
                                    679 ;	-----------------------------------------
      002FCE                        680 _spi_control_write:
      002FCE E5 82            [12]  681 	mov	a,dpl
      002FD0 90 03 64         [24]  682 	mov	dptr,#_spi_control_write_reg_bank_10000_70
      002FD3 F0               [24]  683 	movx	@dptr,a
                                    684 ;	SPI.c:49: addr = addr + opcode; // Add the opcode to the address
      002FD4 90 03 62         [24]  685 	mov	dptr,#_spi_control_write_PARM_2
      002FD7 E0               [24]  686 	movx	a,@dptr
      002FD8 24 40            [12]  687 	add	a, #0x40
      002FDA F0               [24]  688 	movx	@dptr,a
                                    689 ;	SPI.c:51: select_reg_bank(reg_bank); // Function to select the register bank
      002FDB 90 03 64         [24]  690 	mov	dptr,#_spi_control_write_reg_bank_10000_70
      002FDE E0               [24]  691 	movx	a,@dptr
      002FDF F5 82            [12]  692 	mov	dpl,a
      002FE1 12 2F B2         [24]  693 	lcall	_select_reg_bank
                                    694 ;	SPI.c:54: CS_LOW;
                                    695 ;	assignBit
      002FE4 C2 91            [12]  696 	clr	_P1_1
                                    697 ;	SPI.c:57: SPI_send(addr);
      002FE6 90 03 62         [24]  698 	mov	dptr,#_spi_control_write_PARM_2
      002FE9 E0               [24]  699 	movx	a,@dptr
      002FEA FF               [12]  700 	mov	r7,a
      002FEB F5 82            [12]  701 	mov	dpl,a
      002FED C0 07            [24]  702 	push	ar7
      002FEF 12 30 39         [24]  703 	lcall	_SPI_send
      002FF2 D0 07            [24]  704 	pop	ar7
                                    705 ;	SPI.c:60: SPI_send(data);
      002FF4 90 03 63         [24]  706 	mov	dptr,#_spi_control_write_PARM_3
      002FF7 E0               [24]  707 	movx	a,@dptr
      002FF8 FE               [12]  708 	mov	r6,a
      002FF9 F5 82            [12]  709 	mov	dpl,a
      002FFB C0 07            [24]  710 	push	ar7
      002FFD C0 06            [24]  711 	push	ar6
      002FFF 12 30 39         [24]  712 	lcall	_SPI_send
      003002 D0 06            [24]  713 	pop	ar6
      003004 D0 07            [24]  714 	pop	ar7
                                    715 ;	SPI.c:63: CS_HIGH;
                                    716 ;	assignBit
      003006 D2 91            [12]  717 	setb	_P1_1
                                    718 ;	SPI.c:66: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      003008 7D 00            [12]  719 	mov	r5,#0x00
      00300A 7C 00            [12]  720 	mov	r4,#0x00
      00300C C0 06            [24]  721 	push	ar6
      00300E C0 05            [24]  722 	push	ar5
      003010 C0 07            [24]  723 	push	ar7
      003012 C0 04            [24]  724 	push	ar4
      003014 74 B9            [12]  725 	mov	a,#___str_0
      003016 C0 E0            [24]  726 	push	acc
      003018 74 49            [12]  727 	mov	a,#(___str_0 >> 8)
      00301A C0 E0            [24]  728 	push	acc
      00301C 74 80            [12]  729 	mov	a,#0x80
      00301E C0 E0            [24]  730 	push	acc
      003020 12 39 E3         [24]  731 	lcall	_printf
      003023 E5 81            [12]  732 	mov	a,sp
      003025 24 F9            [12]  733 	add	a,#0xf9
      003027 F5 81            [12]  734 	mov	sp,a
                                    735 ;	SPI.c:67: }
      003029 22               [24]  736 	ret
                                    737 ;------------------------------------------------------------
                                    738 ;Allocation info for local variables in function 'configure_SPI'
                                    739 ;------------------------------------------------------------
                                    740 ;	SPI.c:70: void configure_SPI(void)
                                    741 ;	-----------------------------------------
                                    742 ;	 function configure_SPI
                                    743 ;	-----------------------------------------
      00302A                        744 _configure_SPI:
                                    745 ;	SPI.c:72: CS_PIN = 1;
                                    746 ;	assignBit
      00302A D2 91            [12]  747 	setb	_P1_1
                                    748 ;	SPI.c:73: SPCON = 0x00;
      00302C 75 C3 00         [24]  749 	mov	_SPCON,#0x00
                                    750 ;	SPI.c:74: SPCON |= SS_DISABLE;
      00302F 43 C3 20         [24]  751 	orl	_SPCON,#0x20
                                    752 ;	SPI.c:75: SPCON |= MASTER_MODE;
      003032 43 C3 10         [24]  753 	orl	_SPCON,#0x10
                                    754 ;	SPI.c:76: SPCON |= SPI_ENABLE;
      003035 43 C3 40         [24]  755 	orl	_SPCON,#0x40
                                    756 ;	SPI.c:77: }
      003038 22               [24]  757 	ret
                                    758 ;------------------------------------------------------------
                                    759 ;Allocation info for local variables in function 'SPI_send'
                                    760 ;------------------------------------------------------------
                                    761 ;data                      Allocated with name '_SPI_send_data_10000_74'
                                    762 ;------------------------------------------------------------
                                    763 ;	SPI.c:80: void SPI_send(uint8_t data)
                                    764 ;	-----------------------------------------
                                    765 ;	 function SPI_send
                                    766 ;	-----------------------------------------
      003039                        767 _SPI_send:
      003039 E5 82            [12]  768 	mov	a,dpl
      00303B 90 03 65         [24]  769 	mov	dptr,#_SPI_send_data_10000_74
      00303E F0               [24]  770 	movx	@dptr,a
                                    771 ;	SPI.c:83: SPDAT = data;           // Config + MSB of data
      00303F E0               [24]  772 	movx	a,@dptr
      003040 F5 C5            [12]  773 	mov	_SPDAT,a
                                    774 ;	SPI.c:85: while (!(SPSTA & 0x80))
      003042                        775 00101$:
      003042 E5 C4            [12]  776 	mov	a,_SPSTA
      003044 30 E7 FB         [24]  777 	jnb	acc.7,00101$
                                    778 ;	SPI.c:90: }
      003047 22               [24]  779 	ret
                                    780 ;------------------------------------------------------------
                                    781 ;Allocation info for local variables in function 'enc_reset'
                                    782 ;------------------------------------------------------------
                                    783 ;	SPI.c:92: void enc_reset(void)
                                    784 ;	-----------------------------------------
                                    785 ;	 function enc_reset
                                    786 ;	-----------------------------------------
      003048                        787 _enc_reset:
                                    788 ;	SPI.c:94: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    789 ;	assignBit
      003048 C2 91            [12]  790 	clr	_P1_1
                                    791 ;	SPI.c:95: SPI_send(0xFF);            // Send reset command
      00304A 75 82 FF         [24]  792 	mov	dpl, #0xff
      00304D 12 30 39         [24]  793 	lcall	_SPI_send
                                    794 ;	SPI.c:96: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    795 ;	assignBit
      003050 D2 91            [12]  796 	setb	_P1_1
                                    797 ;	SPI.c:97: }
      003052 22               [24]  798 	ret
                                    799 ;------------------------------------------------------------
                                    800 ;Allocation info for local variables in function 'eth_spi_read'
                                    801 ;------------------------------------------------------------
                                    802 ;bank                      Allocated with name '_eth_spi_read_PARM_2'
                                    803 ;addr                      Allocated with name '_eth_spi_read_addr_10000_79'
                                    804 ;data                      Allocated with name '_eth_spi_read_data_10001_82'
                                    805 ;------------------------------------------------------------
                                    806 ;	SPI.c:99: uint8_t eth_spi_read(uint8_t addr, uint8_t bank)
                                    807 ;	-----------------------------------------
                                    808 ;	 function eth_spi_read
                                    809 ;	-----------------------------------------
      003053                        810 _eth_spi_read:
      003053 E5 82            [12]  811 	mov	a,dpl
      003055 90 03 67         [24]  812 	mov	dptr,#_eth_spi_read_addr_10000_79
      003058 F0               [24]  813 	movx	@dptr,a
                                    814 ;	SPI.c:101: if (addr > 0x1F) {
      003059 E0               [24]  815 	movx	a,@dptr
      00305A FF               [12]  816 	mov  r7,a
      00305B 24 E0            [12]  817 	add	a,#0xff - 0x1f
      00305D 50 19            [24]  818 	jnc	00102$
                                    819 ;	SPI.c:102: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      00305F 74 DE            [12]  820 	mov	a,#___str_1
      003061 C0 E0            [24]  821 	push	acc
      003063 74 49            [12]  822 	mov	a,#(___str_1 >> 8)
      003065 C0 E0            [24]  823 	push	acc
      003067 74 80            [12]  824 	mov	a,#0x80
      003069 C0 E0            [24]  825 	push	acc
      00306B 12 39 E3         [24]  826 	lcall	_printf
      00306E 15 81            [12]  827 	dec	sp
      003070 15 81            [12]  828 	dec	sp
      003072 15 81            [12]  829 	dec	sp
                                    830 ;	SPI.c:103: return 0;
      003074 75 82 00         [24]  831 	mov	dpl, #0x00
      003077 22               [24]  832 	ret
      003078                        833 00102$:
                                    834 ;	SPI.c:106: select_reg_bank(bank);     // Select the appropriate bank
      003078 90 03 66         [24]  835 	mov	dptr,#_eth_spi_read_PARM_2
      00307B E0               [24]  836 	movx	a,@dptr
      00307C F5 82            [12]  837 	mov	dpl,a
      00307E C0 07            [24]  838 	push	ar7
      003080 12 2F B2         [24]  839 	lcall	_select_reg_bank
      003083 D0 07            [24]  840 	pop	ar7
                                    841 ;	SPI.c:108: CS_LOW;                    // Pull CS low to start communication
                                    842 ;	assignBit
      003085 C2 91            [12]  843 	clr	_P1_1
                                    844 ;	SPI.c:109: SPI_send(addr);            // Send the address
      003087 8F 82            [24]  845 	mov	dpl, r7
      003089 C0 07            [24]  846 	push	ar7
      00308B 12 30 39         [24]  847 	lcall	_SPI_send
                                    848 ;	SPI.c:110: uint8_t data = SPI_ReadByte(); // Read the data
      00308E 12 2F 8F         [24]  849 	lcall	_SPI_ReadByte
      003091 AE 82            [24]  850 	mov	r6, dpl
      003093 D0 07            [24]  851 	pop	ar7
                                    852 ;	SPI.c:111: CS_HIGH;                   // Pull CS high to end communication
                                    853 ;	assignBit
      003095 D2 91            [12]  854 	setb	_P1_1
                                    855 ;	SPI.c:114: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      003097 8E 04            [24]  856 	mov	ar4,r6
      003099 7D 00            [12]  857 	mov	r5,#0x00
      00309B 7B 00            [12]  858 	mov	r3,#0x00
      00309D C0 06            [24]  859 	push	ar6
      00309F C0 04            [24]  860 	push	ar4
      0030A1 C0 05            [24]  861 	push	ar5
      0030A3 C0 07            [24]  862 	push	ar7
      0030A5 C0 03            [24]  863 	push	ar3
      0030A7 74 18            [12]  864 	mov	a,#___str_2
      0030A9 C0 E0            [24]  865 	push	acc
      0030AB 74 4A            [12]  866 	mov	a,#(___str_2 >> 8)
      0030AD C0 E0            [24]  867 	push	acc
      0030AF 74 80            [12]  868 	mov	a,#0x80
      0030B1 C0 E0            [24]  869 	push	acc
      0030B3 12 39 E3         [24]  870 	lcall	_printf
      0030B6 E5 81            [12]  871 	mov	a,sp
      0030B8 24 F9            [12]  872 	add	a,#0xf9
      0030BA F5 81            [12]  873 	mov	sp,a
      0030BC D0 06            [24]  874 	pop	ar6
                                    875 ;	SPI.c:116: return data;
      0030BE 8E 82            [24]  876 	mov	dpl, r6
                                    877 ;	SPI.c:117: }
      0030C0 22               [24]  878 	ret
                                    879 ;------------------------------------------------------------
                                    880 ;Allocation info for local variables in function 'phy_spi_write'
                                    881 ;------------------------------------------------------------
                                    882 ;data                      Allocated with name '_phy_spi_write_PARM_2'
                                    883 ;addr                      Allocated with name '_phy_spi_write_addr_10000_83'
                                    884 ;------------------------------------------------------------
                                    885 ;	SPI.c:119: void phy_spi_write(uint8_t addr, uint16_t data)
                                    886 ;	-----------------------------------------
                                    887 ;	 function phy_spi_write
                                    888 ;	-----------------------------------------
      0030C1                        889 _phy_spi_write:
      0030C1 E5 82            [12]  890 	mov	a,dpl
      0030C3 90 03 6A         [24]  891 	mov	dptr,#_phy_spi_write_addr_10000_83
      0030C6 F0               [24]  892 	movx	@dptr,a
                                    893 ;	SPI.c:121: spi_control_write(2, 0x14, addr);                      // Write PHY address
      0030C7 E0               [24]  894 	movx	a,@dptr
      0030C8 FF               [12]  895 	mov	r7,a
      0030C9 90 03 62         [24]  896 	mov	dptr,#_spi_control_write_PARM_2
      0030CC 74 14            [12]  897 	mov	a,#0x14
      0030CE F0               [24]  898 	movx	@dptr,a
      0030CF 90 03 63         [24]  899 	mov	dptr,#_spi_control_write_PARM_3
      0030D2 EF               [12]  900 	mov	a,r7
      0030D3 F0               [24]  901 	movx	@dptr,a
      0030D4 75 82 02         [24]  902 	mov	dpl, #0x02
      0030D7 C0 07            [24]  903 	push	ar7
      0030D9 12 2F CE         [24]  904 	lcall	_spi_control_write
      0030DC D0 07            [24]  905 	pop	ar7
                                    906 ;	SPI.c:122: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      0030DE 90 03 68         [24]  907 	mov	dptr,#_phy_spi_write_PARM_2
      0030E1 E0               [24]  908 	movx	a,@dptr
      0030E2 FD               [12]  909 	mov	r5,a
      0030E3 A3               [24]  910 	inc	dptr
      0030E4 E0               [24]  911 	movx	a,@dptr
      0030E5 FE               [12]  912 	mov	r6,a
      0030E6 8D 04            [24]  913 	mov	ar4,r5
      0030E8 90 03 62         [24]  914 	mov	dptr,#_spi_control_write_PARM_2
      0030EB 74 16            [12]  915 	mov	a,#0x16
      0030ED F0               [24]  916 	movx	@dptr,a
      0030EE 90 03 63         [24]  917 	mov	dptr,#_spi_control_write_PARM_3
      0030F1 EC               [12]  918 	mov	a,r4
      0030F2 F0               [24]  919 	movx	@dptr,a
      0030F3 75 82 02         [24]  920 	mov	dpl, #0x02
      0030F6 C0 07            [24]  921 	push	ar7
      0030F8 C0 06            [24]  922 	push	ar6
      0030FA C0 05            [24]  923 	push	ar5
      0030FC 12 2F CE         [24]  924 	lcall	_spi_control_write
      0030FF D0 05            [24]  925 	pop	ar5
      003101 D0 06            [24]  926 	pop	ar6
      003103 D0 07            [24]  927 	pop	ar7
                                    928 ;	SPI.c:123: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      003105 8E 04            [24]  929 	mov	ar4,r6
      003107 90 03 62         [24]  930 	mov	dptr,#_spi_control_write_PARM_2
      00310A 74 17            [12]  931 	mov	a,#0x17
      00310C F0               [24]  932 	movx	@dptr,a
      00310D 90 03 63         [24]  933 	mov	dptr,#_spi_control_write_PARM_3
      003110 EC               [12]  934 	mov	a,r4
      003111 F0               [24]  935 	movx	@dptr,a
      003112 75 82 02         [24]  936 	mov	dpl, #0x02
      003115 C0 07            [24]  937 	push	ar7
      003117 C0 06            [24]  938 	push	ar6
      003119 C0 05            [24]  939 	push	ar5
      00311B 12 2F CE         [24]  940 	lcall	_spi_control_write
      00311E D0 05            [24]  941 	pop	ar5
      003120 D0 06            [24]  942 	pop	ar6
      003122 D0 07            [24]  943 	pop	ar7
                                    944 ;	SPI.c:126: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003124 7C 00            [12]  945 	mov	r4,#0x00
      003126 C0 05            [24]  946 	push	ar5
      003128 C0 06            [24]  947 	push	ar6
      00312A C0 07            [24]  948 	push	ar7
      00312C C0 04            [24]  949 	push	ar4
      00312E 74 3C            [12]  950 	mov	a,#___str_3
      003130 C0 E0            [24]  951 	push	acc
      003132 74 4A            [12]  952 	mov	a,#(___str_3 >> 8)
      003134 C0 E0            [24]  953 	push	acc
      003136 74 80            [12]  954 	mov	a,#0x80
      003138 C0 E0            [24]  955 	push	acc
      00313A 12 39 E3         [24]  956 	lcall	_printf
      00313D E5 81            [12]  957 	mov	a,sp
      00313F 24 F9            [12]  958 	add	a,#0xf9
      003141 F5 81            [12]  959 	mov	sp,a
                                    960 ;	SPI.c:127: }
      003143 22               [24]  961 	ret
                                    962 ;------------------------------------------------------------
                                    963 ;Allocation info for local variables in function 'mac_spi_read'
                                    964 ;------------------------------------------------------------
                                    965 ;bank                      Allocated with name '_mac_spi_read_PARM_2'
                                    966 ;addr                      Allocated with name '_mac_spi_read_addr_10000_85'
                                    967 ;data                      Allocated with name '_mac_spi_read_data_10001_88'
                                    968 ;------------------------------------------------------------
                                    969 ;	SPI.c:129: uint8_t mac_spi_read(uint8_t addr, uint8_t bank)
                                    970 ;	-----------------------------------------
                                    971 ;	 function mac_spi_read
                                    972 ;	-----------------------------------------
      003144                        973 _mac_spi_read:
      003144 E5 82            [12]  974 	mov	a,dpl
      003146 90 03 6C         [24]  975 	mov	dptr,#_mac_spi_read_addr_10000_85
      003149 F0               [24]  976 	movx	@dptr,a
                                    977 ;	SPI.c:131: if (addr > 0x1F) {
      00314A E0               [24]  978 	movx	a,@dptr
      00314B FF               [12]  979 	mov  r7,a
      00314C 24 E0            [12]  980 	add	a,#0xff - 0x1f
      00314E 50 19            [24]  981 	jnc	00102$
                                    982 ;	SPI.c:132: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003150 74 DE            [12]  983 	mov	a,#___str_1
      003152 C0 E0            [24]  984 	push	acc
      003154 74 49            [12]  985 	mov	a,#(___str_1 >> 8)
      003156 C0 E0            [24]  986 	push	acc
      003158 74 80            [12]  987 	mov	a,#0x80
      00315A C0 E0            [24]  988 	push	acc
      00315C 12 39 E3         [24]  989 	lcall	_printf
      00315F 15 81            [12]  990 	dec	sp
      003161 15 81            [12]  991 	dec	sp
      003163 15 81            [12]  992 	dec	sp
                                    993 ;	SPI.c:133: return 0; // Return 0 if address is invalid
      003165 75 82 00         [24]  994 	mov	dpl, #0x00
      003168 22               [24]  995 	ret
      003169                        996 00102$:
                                    997 ;	SPI.c:136: select_reg_bank(bank); // Select the appropriate register bank
      003169 90 03 6B         [24]  998 	mov	dptr,#_mac_spi_read_PARM_2
      00316C E0               [24]  999 	movx	a,@dptr
      00316D F5 82            [12] 1000 	mov	dpl,a
      00316F C0 07            [24] 1001 	push	ar7
      003171 12 2F B2         [24] 1002 	lcall	_select_reg_bank
      003174 D0 07            [24] 1003 	pop	ar7
                                   1004 ;	SPI.c:139: CS_LOW;
                                   1005 ;	assignBit
      003176 C2 91            [12] 1006 	clr	_P1_1
                                   1007 ;	SPI.c:142: SPI_send(addr);
      003178 8F 82            [24] 1008 	mov	dpl, r7
      00317A C0 07            [24] 1009 	push	ar7
      00317C 12 30 39         [24] 1010 	lcall	_SPI_send
                                   1011 ;	SPI.c:145: uint8_t data = SPI_ReadByte();
      00317F 12 2F 8F         [24] 1012 	lcall	_SPI_ReadByte
      003182 AE 82            [24] 1013 	mov	r6, dpl
      003184 D0 07            [24] 1014 	pop	ar7
                                   1015 ;	SPI.c:148: CS_HIGH;
                                   1016 ;	assignBit
      003186 D2 91            [12] 1017 	setb	_P1_1
                                   1018 ;	SPI.c:151: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      003188 8E 04            [24] 1019 	mov	ar4,r6
      00318A 7D 00            [12] 1020 	mov	r5,#0x00
      00318C 7B 00            [12] 1021 	mov	r3,#0x00
      00318E C0 06            [24] 1022 	push	ar6
      003190 C0 04            [24] 1023 	push	ar4
      003192 C0 05            [24] 1024 	push	ar5
      003194 C0 07            [24] 1025 	push	ar7
      003196 C0 03            [24] 1026 	push	ar3
      003198 74 65            [12] 1027 	mov	a,#___str_4
      00319A C0 E0            [24] 1028 	push	acc
      00319C 74 4A            [12] 1029 	mov	a,#(___str_4 >> 8)
      00319E C0 E0            [24] 1030 	push	acc
      0031A0 74 80            [12] 1031 	mov	a,#0x80
      0031A2 C0 E0            [24] 1032 	push	acc
      0031A4 12 39 E3         [24] 1033 	lcall	_printf
      0031A7 E5 81            [12] 1034 	mov	a,sp
      0031A9 24 F9            [12] 1035 	add	a,#0xf9
      0031AB F5 81            [12] 1036 	mov	sp,a
      0031AD D0 06            [24] 1037 	pop	ar6
                                   1038 ;	SPI.c:153: return data;
      0031AF 8E 82            [24] 1039 	mov	dpl, r6
                                   1040 ;	SPI.c:154: }
      0031B1 22               [24] 1041 	ret
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'phy_spi_read'
                                   1044 ;------------------------------------------------------------
                                   1045 ;addr                      Allocated with name '_phy_spi_read_addr_10000_89'
                                   1046 ;data_LSB                  Allocated with name '_phy_spi_read_data_LSB_10001_91'
                                   1047 ;data_MSB                  Allocated with name '_phy_spi_read_data_MSB_10001_91'
                                   1048 ;data                      Allocated with name '_phy_spi_read_data_10001_91'
                                   1049 ;------------------------------------------------------------
                                   1050 ;	SPI.c:157: uint16_t phy_spi_read(uint8_t addr)
                                   1051 ;	-----------------------------------------
                                   1052 ;	 function phy_spi_read
                                   1053 ;	-----------------------------------------
      0031B2                       1054 _phy_spi_read:
      0031B2 E5 82            [12] 1055 	mov	a,dpl
      0031B4 90 03 6D         [24] 1056 	mov	dptr,#_phy_spi_read_addr_10000_89
      0031B7 F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	SPI.c:159: spi_control_write(2, 0x14, addr);     // Write PHY address
      0031B8 E0               [24] 1059 	movx	a,@dptr
      0031B9 FF               [12] 1060 	mov	r7,a
      0031BA 90 03 62         [24] 1061 	mov	dptr,#_spi_control_write_PARM_2
      0031BD 74 14            [12] 1062 	mov	a,#0x14
      0031BF F0               [24] 1063 	movx	@dptr,a
      0031C0 90 03 63         [24] 1064 	mov	dptr,#_spi_control_write_PARM_3
      0031C3 EF               [12] 1065 	mov	a,r7
      0031C4 F0               [24] 1066 	movx	@dptr,a
      0031C5 75 82 02         [24] 1067 	mov	dpl, #0x02
      0031C8 C0 07            [24] 1068 	push	ar7
      0031CA 12 2F CE         [24] 1069 	lcall	_spi_control_write
      0031CD D0 07            [24] 1070 	pop	ar7
                                   1071 ;	SPI.c:160: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      0031CF 90 03 62         [24] 1072 	mov	dptr,#_spi_control_write_PARM_2
      0031D2 74 12            [12] 1073 	mov	a,#0x12
      0031D4 F0               [24] 1074 	movx	@dptr,a
      0031D5 90 03 63         [24] 1075 	mov	dptr,#_spi_control_write_PARM_3
      0031D8 74 01            [12] 1076 	mov	a,#0x01
      0031DA F0               [24] 1077 	movx	@dptr,a
      0031DB 75 82 02         [24] 1078 	mov	dpl, #0x02
      0031DE C0 07            [24] 1079 	push	ar7
      0031E0 12 2F CE         [24] 1080 	lcall	_spi_control_write
                                   1081 ;	SPI.c:162: busy_wait();                          // Wait for the read to complete
      0031E3 12 32 5F         [24] 1082 	lcall	_busy_wait
      0031E6 D0 07            [24] 1083 	pop	ar7
                                   1084 ;	SPI.c:164: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      0031E8 90 03 62         [24] 1085 	mov	dptr,#_spi_control_write_PARM_2
      0031EB 74 12            [12] 1086 	mov	a,#0x12
      0031ED F0               [24] 1087 	movx	@dptr,a
      0031EE 90 03 63         [24] 1088 	mov	dptr,#_spi_control_write_PARM_3
      0031F1 E4               [12] 1089 	clr	a
      0031F2 F0               [24] 1090 	movx	@dptr,a
      0031F3 75 82 02         [24] 1091 	mov	dpl, #0x02
      0031F6 C0 07            [24] 1092 	push	ar7
      0031F8 12 2F CE         [24] 1093 	lcall	_spi_control_write
      0031FB D0 07            [24] 1094 	pop	ar7
                                   1095 ;	SPI.c:166: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      0031FD 90 03 6B         [24] 1096 	mov	dptr,#_mac_spi_read_PARM_2
      003200 74 02            [12] 1097 	mov	a,#0x02
      003202 F0               [24] 1098 	movx	@dptr,a
      003203 75 82 18         [24] 1099 	mov	dpl, #0x18
      003206 C0 07            [24] 1100 	push	ar7
      003208 12 31 44         [24] 1101 	lcall	_mac_spi_read
      00320B AE 82            [24] 1102 	mov	r6, dpl
      00320D D0 07            [24] 1103 	pop	ar7
      00320F 7D 00            [12] 1104 	mov	r5,#0x00
                                   1105 ;	SPI.c:167: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      003211 90 03 6B         [24] 1106 	mov	dptr,#_mac_spi_read_PARM_2
      003214 74 02            [12] 1107 	mov	a,#0x02
      003216 F0               [24] 1108 	movx	@dptr,a
      003217 75 82 19         [24] 1109 	mov	dpl, #0x19
      00321A C0 07            [24] 1110 	push	ar7
      00321C C0 06            [24] 1111 	push	ar6
      00321E C0 05            [24] 1112 	push	ar5
      003220 12 31 44         [24] 1113 	lcall	_mac_spi_read
      003223 AC 82            [24] 1114 	mov	r4, dpl
      003225 D0 05            [24] 1115 	pop	ar5
      003227 D0 06            [24] 1116 	pop	ar6
      003229 D0 07            [24] 1117 	pop	ar7
                                   1118 ;	SPI.c:169: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      00322B 8C 03            [24] 1119 	mov	ar3,r4
      00322D E4               [12] 1120 	clr	a
      00322E 42 06            [12] 1121 	orl	ar6,a
      003230 EB               [12] 1122 	mov	a,r3
      003231 42 05            [12] 1123 	orl	ar5,a
                                   1124 ;	SPI.c:172: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003233 7C 00            [12] 1125 	mov	r4,#0x00
      003235 C0 06            [24] 1126 	push	ar6
      003237 C0 05            [24] 1127 	push	ar5
      003239 C0 06            [24] 1128 	push	ar6
      00323B C0 05            [24] 1129 	push	ar5
      00323D C0 07            [24] 1130 	push	ar7
      00323F C0 04            [24] 1131 	push	ar4
      003241 74 88            [12] 1132 	mov	a,#___str_5
      003243 C0 E0            [24] 1133 	push	acc
      003245 74 4A            [12] 1134 	mov	a,#(___str_5 >> 8)
      003247 C0 E0            [24] 1135 	push	acc
      003249 74 80            [12] 1136 	mov	a,#0x80
      00324B C0 E0            [24] 1137 	push	acc
      00324D 12 39 E3         [24] 1138 	lcall	_printf
      003250 E5 81            [12] 1139 	mov	a,sp
      003252 24 F9            [12] 1140 	add	a,#0xf9
      003254 F5 81            [12] 1141 	mov	sp,a
      003256 D0 05            [24] 1142 	pop	ar5
      003258 D0 06            [24] 1143 	pop	ar6
                                   1144 ;	SPI.c:174: return data;        // Combine MSB and LSB
      00325A 8E 82            [24] 1145 	mov	dpl, r6
      00325C 8D 83            [24] 1146 	mov	dph, r5
                                   1147 ;	SPI.c:175: }
      00325E 22               [24] 1148 	ret
                                   1149 ;------------------------------------------------------------
                                   1150 ;Allocation info for local variables in function 'busy_wait'
                                   1151 ;------------------------------------------------------------
                                   1152 ;data                      Allocated with name '_busy_wait_data_10000_93'
                                   1153 ;------------------------------------------------------------
                                   1154 ;	SPI.c:177: void busy_wait(void)
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function busy_wait
                                   1157 ;	-----------------------------------------
      00325F                       1158 _busy_wait:
                                   1159 ;	SPI.c:179: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      00325F 90 03 6B         [24] 1160 	mov	dptr,#_mac_spi_read_PARM_2
      003262 74 03            [12] 1161 	mov	a,#0x03
      003264 F0               [24] 1162 	movx	@dptr,a
      003265 75 82 0A         [24] 1163 	mov	dpl, #0x0a
      003268 12 31 44         [24] 1164 	lcall	_mac_spi_read
      00326B E5 82            [12] 1165 	mov	a, dpl
      00326D 90 03 6E         [24] 1166 	mov	dptr,#_busy_wait_data_10000_93
      003270 F0               [24] 1167 	movx	@dptr,a
                                   1168 ;	SPI.c:180: while (data & 0x01)
      003271                       1169 00101$:
      003271 90 03 6E         [24] 1170 	mov	dptr,#_busy_wait_data_10000_93
      003274 E0               [24] 1171 	movx	a,@dptr
      003275 30 E0 14         [24] 1172 	jnb	acc.0,00104$
                                   1173 ;	SPI.c:182: data = mac_spi_read(0x0A, 3);
      003278 90 03 6B         [24] 1174 	mov	dptr,#_mac_spi_read_PARM_2
      00327B 74 03            [12] 1175 	mov	a,#0x03
      00327D F0               [24] 1176 	movx	@dptr,a
      00327E 75 82 0A         [24] 1177 	mov	dpl, #0x0a
      003281 12 31 44         [24] 1178 	lcall	_mac_spi_read
      003284 E5 82            [12] 1179 	mov	a, dpl
      003286 90 03 6E         [24] 1180 	mov	dptr,#_busy_wait_data_10000_93
      003289 F0               [24] 1181 	movx	@dptr,a
      00328A 80 E5            [24] 1182 	sjmp	00101$
      00328C                       1183 00104$:
                                   1184 ;	SPI.c:184: }
      00328C 22               [24] 1185 	ret
                                   1186 ;------------------------------------------------------------
                                   1187 ;Allocation info for local variables in function 'buffer_init'
                                   1188 ;------------------------------------------------------------
                                   1189 ;size                      Allocated with name '_buffer_init_PARM_2'
                                   1190 ;start_address             Allocated with name '_buffer_init_start_address_10000_95'
                                   1191 ;erxst                     Allocated with name '_buffer_init_erxst_10001_98'
                                   1192 ;erxnd                     Allocated with name '_buffer_init_erxnd_10001_98'
                                   1193 ;------------------------------------------------------------
                                   1194 ;	SPI.c:186: void buffer_init(uint16_t start_address, uint16_t size)
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function buffer_init
                                   1197 ;	-----------------------------------------
      00328D                       1198 _buffer_init:
      00328D AF 83            [24] 1199 	mov	r7,dph
      00328F E5 82            [12] 1200 	mov	a,dpl
      003291 90 03 71         [24] 1201 	mov	dptr,#_buffer_init_start_address_10000_95
      003294 F0               [24] 1202 	movx	@dptr,a
      003295 EF               [12] 1203 	mov	a,r7
      003296 A3               [24] 1204 	inc	dptr
      003297 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	SPI.c:188: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      003298 90 03 71         [24] 1207 	mov	dptr,#_buffer_init_start_address_10000_95
      00329B E0               [24] 1208 	movx	a,@dptr
      00329C FE               [12] 1209 	mov	r6,a
      00329D A3               [24] 1210 	inc	dptr
      00329E E0               [24] 1211 	movx	a,@dptr
      00329F FF               [12] 1212 	mov	r7,a
      0032A0 8E 04            [24] 1213 	mov	ar4,r6
      0032A2 8F 05            [24] 1214 	mov	ar5,r7
      0032A4 C3               [12] 1215 	clr	c
      0032A5 74 FF            [12] 1216 	mov	a,#0xff
      0032A7 9C               [12] 1217 	subb	a,r4
      0032A8 74 1F            [12] 1218 	mov	a,#0x1f
      0032AA 9D               [12] 1219 	subb	a,r5
      0032AB 40 17            [24] 1220 	jc	00101$
      0032AD 90 03 6F         [24] 1221 	mov	dptr,#_buffer_init_PARM_2
      0032B0 E0               [24] 1222 	movx	a,@dptr
      0032B1 FA               [12] 1223 	mov	r2,a
      0032B2 A3               [24] 1224 	inc	dptr
      0032B3 E0               [24] 1225 	movx	a,@dptr
      0032B4 FB               [12] 1226 	mov	r3,a
      0032B5 EA               [12] 1227 	mov	a,r2
      0032B6 2E               [12] 1228 	add	a, r6
      0032B7 F8               [12] 1229 	mov	r0,a
      0032B8 EB               [12] 1230 	mov	a,r3
      0032B9 3F               [12] 1231 	addc	a, r7
      0032BA F9               [12] 1232 	mov	r1,a
      0032BB C3               [12] 1233 	clr	c
      0032BC 74 FF            [12] 1234 	mov	a,#0xff
      0032BE 98               [12] 1235 	subb	a,r0
      0032BF 74 1F            [12] 1236 	mov	a,#0x1f
      0032C1 99               [12] 1237 	subb	a,r1
      0032C2 50 2A            [24] 1238 	jnc	00102$
      0032C4                       1239 00101$:
                                   1240 ;	SPI.c:189: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      0032C4 90 03 6F         [24] 1241 	mov	dptr,#_buffer_init_PARM_2
      0032C7 E0               [24] 1242 	movx	a,@dptr
      0032C8 C0 E0            [24] 1243 	push	acc
      0032CA A3               [24] 1244 	inc	dptr
      0032CB E0               [24] 1245 	movx	a,@dptr
      0032CC C0 E0            [24] 1246 	push	acc
      0032CE 90 03 71         [24] 1247 	mov	dptr,#_buffer_init_start_address_10000_95
      0032D1 E0               [24] 1248 	movx	a,@dptr
      0032D2 C0 E0            [24] 1249 	push	acc
      0032D4 A3               [24] 1250 	inc	dptr
      0032D5 E0               [24] 1251 	movx	a,@dptr
      0032D6 C0 E0            [24] 1252 	push	acc
      0032D8 74 B0            [12] 1253 	mov	a,#___str_6
      0032DA C0 E0            [24] 1254 	push	acc
      0032DC 74 4A            [12] 1255 	mov	a,#(___str_6 >> 8)
      0032DE C0 E0            [24] 1256 	push	acc
      0032E0 74 80            [12] 1257 	mov	a,#0x80
      0032E2 C0 E0            [24] 1258 	push	acc
      0032E4 12 39 E3         [24] 1259 	lcall	_printf
      0032E7 E5 81            [12] 1260 	mov	a,sp
      0032E9 24 F9            [12] 1261 	add	a,#0xf9
      0032EB F5 81            [12] 1262 	mov	sp,a
                                   1263 ;	SPI.c:190: return;
      0032ED 22               [24] 1264 	ret
      0032EE                       1265 00102$:
                                   1266 ;	SPI.c:194: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      0032EE 53 04 FE         [24] 1267 	anl	ar4,#0xfe
                                   1268 ;	SPI.c:195: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      0032F1 EA               [12] 1269 	mov	a,r2
      0032F2 2E               [12] 1270 	add	a, r6
      0032F3 FE               [12] 1271 	mov	r6,a
      0032F4 EB               [12] 1272 	mov	a,r3
      0032F5 3F               [12] 1273 	addc	a, r7
      0032F6 FF               [12] 1274 	mov	r7,a
      0032F7 1E               [12] 1275 	dec	r6
      0032F8 BE FF 01         [24] 1276 	cjne	r6,#0xff,00114$
      0032FB 1F               [12] 1277 	dec	r7
      0032FC                       1278 00114$:
      0032FC 53 06 FE         [24] 1279 	anl	ar6,#0xfe
                                   1280 ;	SPI.c:198: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      0032FF 8D 03            [24] 1281 	mov	ar3,r5
      003301 90 03 62         [24] 1282 	mov	dptr,#_spi_control_write_PARM_2
      003304 74 08            [12] 1283 	mov	a,#0x08
      003306 F0               [24] 1284 	movx	@dptr,a
      003307 90 03 63         [24] 1285 	mov	dptr,#_spi_control_write_PARM_3
      00330A EB               [12] 1286 	mov	a,r3
      00330B F0               [24] 1287 	movx	@dptr,a
      00330C 75 82 00         [24] 1288 	mov	dpl, #0x00
      00330F C0 07            [24] 1289 	push	ar7
      003311 C0 06            [24] 1290 	push	ar6
      003313 C0 05            [24] 1291 	push	ar5
      003315 C0 04            [24] 1292 	push	ar4
      003317 12 2F CE         [24] 1293 	lcall	_spi_control_write
      00331A D0 04            [24] 1294 	pop	ar4
      00331C D0 05            [24] 1295 	pop	ar5
      00331E D0 06            [24] 1296 	pop	ar6
      003320 D0 07            [24] 1297 	pop	ar7
                                   1298 ;	SPI.c:199: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003322 8C 03            [24] 1299 	mov	ar3,r4
      003324 90 03 62         [24] 1300 	mov	dptr,#_spi_control_write_PARM_2
      003327 74 09            [12] 1301 	mov	a,#0x09
      003329 F0               [24] 1302 	movx	@dptr,a
      00332A 90 03 63         [24] 1303 	mov	dptr,#_spi_control_write_PARM_3
      00332D EB               [12] 1304 	mov	a,r3
      00332E F0               [24] 1305 	movx	@dptr,a
      00332F 75 82 00         [24] 1306 	mov	dpl, #0x00
      003332 C0 07            [24] 1307 	push	ar7
      003334 C0 06            [24] 1308 	push	ar6
      003336 C0 05            [24] 1309 	push	ar5
      003338 C0 04            [24] 1310 	push	ar4
      00333A 12 2F CE         [24] 1311 	lcall	_spi_control_write
      00333D D0 04            [24] 1312 	pop	ar4
      00333F D0 05            [24] 1313 	pop	ar5
      003341 D0 06            [24] 1314 	pop	ar6
      003343 D0 07            [24] 1315 	pop	ar7
                                   1316 ;	SPI.c:202: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003345 8F 03            [24] 1317 	mov	ar3,r7
      003347 90 03 62         [24] 1318 	mov	dptr,#_spi_control_write_PARM_2
      00334A 74 0A            [12] 1319 	mov	a,#0x0a
      00334C F0               [24] 1320 	movx	@dptr,a
      00334D 90 03 63         [24] 1321 	mov	dptr,#_spi_control_write_PARM_3
      003350 EB               [12] 1322 	mov	a,r3
      003351 F0               [24] 1323 	movx	@dptr,a
      003352 75 82 00         [24] 1324 	mov	dpl, #0x00
      003355 C0 07            [24] 1325 	push	ar7
      003357 C0 06            [24] 1326 	push	ar6
      003359 C0 05            [24] 1327 	push	ar5
      00335B C0 04            [24] 1328 	push	ar4
      00335D 12 2F CE         [24] 1329 	lcall	_spi_control_write
      003360 D0 04            [24] 1330 	pop	ar4
      003362 D0 05            [24] 1331 	pop	ar5
      003364 D0 06            [24] 1332 	pop	ar6
      003366 D0 07            [24] 1333 	pop	ar7
                                   1334 ;	SPI.c:203: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      003368 8E 03            [24] 1335 	mov	ar3,r6
      00336A 90 03 62         [24] 1336 	mov	dptr,#_spi_control_write_PARM_2
      00336D 74 0B            [12] 1337 	mov	a,#0x0b
      00336F F0               [24] 1338 	movx	@dptr,a
      003370 90 03 63         [24] 1339 	mov	dptr,#_spi_control_write_PARM_3
      003373 EB               [12] 1340 	mov	a,r3
      003374 F0               [24] 1341 	movx	@dptr,a
      003375 75 82 00         [24] 1342 	mov	dpl, #0x00
      003378 C0 07            [24] 1343 	push	ar7
      00337A C0 06            [24] 1344 	push	ar6
      00337C C0 05            [24] 1345 	push	ar5
      00337E C0 04            [24] 1346 	push	ar4
      003380 12 2F CE         [24] 1347 	lcall	_spi_control_write
      003383 D0 04            [24] 1348 	pop	ar4
      003385 D0 05            [24] 1349 	pop	ar5
      003387 D0 06            [24] 1350 	pop	ar6
      003389 D0 07            [24] 1351 	pop	ar7
                                   1352 ;	SPI.c:205: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      00338B C0 06            [24] 1353 	push	ar6
      00338D C0 07            [24] 1354 	push	ar7
      00338F C0 04            [24] 1355 	push	ar4
      003391 C0 05            [24] 1356 	push	ar5
      003393 74 EE            [12] 1357 	mov	a,#___str_7
      003395 C0 E0            [24] 1358 	push	acc
      003397 74 4A            [12] 1359 	mov	a,#(___str_7 >> 8)
      003399 C0 E0            [24] 1360 	push	acc
      00339B 74 80            [12] 1361 	mov	a,#0x80
      00339D C0 E0            [24] 1362 	push	acc
      00339F 12 39 E3         [24] 1363 	lcall	_printf
      0033A2 E5 81            [12] 1364 	mov	a,sp
      0033A4 24 F9            [12] 1365 	add	a,#0xf9
      0033A6 F5 81            [12] 1366 	mov	sp,a
                                   1367 ;	SPI.c:206: }
      0033A8 22               [24] 1368 	ret
                                   1369 ;------------------------------------------------------------
                                   1370 ;Allocation info for local variables in function 'spi_buffer_read'
                                   1371 ;------------------------------------------------------------
                                   1372 ;start_address             Allocated with name '_spi_buffer_read_PARM_2'
                                   1373 ;data_ptr                  Allocated with name '_spi_buffer_read_PARM_3'
                                   1374 ;num_bytes                 Allocated with name '_spi_buffer_read_num_bytes_10000_99'
                                   1375 ;higher_byte               Allocated with name '_spi_buffer_read_higher_byte_10001_104'
                                   1376 ;lower_byte                Allocated with name '_spi_buffer_read_lower_byte_10001_104'
                                   1377 ;opcode                    Allocated with name '_spi_buffer_read_opcode_10002_105'
                                   1378 ;i                         Allocated with name '_spi_buffer_read_i_20002_106'
                                   1379 ;------------------------------------------------------------
                                   1380 ;	SPI.c:209: void spi_buffer_read(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1381 ;	-----------------------------------------
                                   1382 ;	 function spi_buffer_read
                                   1383 ;	-----------------------------------------
      0033A9                       1384 _spi_buffer_read:
      0033A9 AF 83            [24] 1385 	mov	r7,dph
      0033AB E5 82            [12] 1386 	mov	a,dpl
      0033AD 90 03 78         [24] 1387 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      0033B0 F0               [24] 1388 	movx	@dptr,a
      0033B1 EF               [12] 1389 	mov	a,r7
      0033B2 A3               [24] 1390 	inc	dptr
      0033B3 F0               [24] 1391 	movx	@dptr,a
                                   1392 ;	SPI.c:211: if (num_bytes < 1) {
      0033B4 90 03 78         [24] 1393 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      0033B7 E0               [24] 1394 	movx	a,@dptr
      0033B8 FE               [12] 1395 	mov	r6,a
      0033B9 A3               [24] 1396 	inc	dptr
      0033BA E0               [24] 1397 	movx	a,@dptr
      0033BB FF               [12] 1398 	mov	r7,a
      0033BC C3               [12] 1399 	clr	c
      0033BD EE               [12] 1400 	mov	a,r6
      0033BE 94 01            [12] 1401 	subb	a,#0x01
      0033C0 EF               [12] 1402 	mov	a,r7
      0033C1 64 80            [12] 1403 	xrl	a,#0x80
      0033C3 94 80            [12] 1404 	subb	a,#0x80
      0033C5 50 1A            [24] 1405 	jnc	00102$
                                   1406 ;	SPI.c:212: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      0033C7 C0 06            [24] 1407 	push	ar6
      0033C9 C0 07            [24] 1408 	push	ar7
      0033CB 74 1F            [12] 1409 	mov	a,#___str_8
      0033CD C0 E0            [24] 1410 	push	acc
      0033CF 74 4B            [12] 1411 	mov	a,#(___str_8 >> 8)
      0033D1 C0 E0            [24] 1412 	push	acc
      0033D3 74 80            [12] 1413 	mov	a,#0x80
      0033D5 C0 E0            [24] 1414 	push	acc
      0033D7 12 39 E3         [24] 1415 	lcall	_printf
      0033DA E5 81            [12] 1416 	mov	a,sp
      0033DC 24 FB            [12] 1417 	add	a,#0xfb
      0033DE F5 81            [12] 1418 	mov	sp,a
                                   1419 ;	SPI.c:213: return;
      0033E0 22               [24] 1420 	ret
      0033E1                       1421 00102$:
                                   1422 ;	SPI.c:215: if (start_address > 0x1FFF) {
      0033E1 90 03 73         [24] 1423 	mov	dptr,#_spi_buffer_read_PARM_2
      0033E4 E0               [24] 1424 	movx	a,@dptr
      0033E5 FC               [12] 1425 	mov	r4,a
      0033E6 A3               [24] 1426 	inc	dptr
      0033E7 E0               [24] 1427 	movx	a,@dptr
      0033E8 FD               [12] 1428 	mov	r5,a
      0033E9 8C 02            [24] 1429 	mov	ar2,r4
      0033EB 8D 03            [24] 1430 	mov	ar3,r5
      0033ED C3               [12] 1431 	clr	c
      0033EE 74 FF            [12] 1432 	mov	a,#0xff
      0033F0 9A               [12] 1433 	subb	a,r2
      0033F1 74 1F            [12] 1434 	mov	a,#0x1f
      0033F3 9B               [12] 1435 	subb	a,r3
      0033F4 50 1A            [24] 1436 	jnc	00104$
                                   1437 ;	SPI.c:216: printf("\n\rInvalid address: %04X\n\r", start_address);
      0033F6 C0 04            [24] 1438 	push	ar4
      0033F8 C0 05            [24] 1439 	push	ar5
      0033FA 74 3F            [12] 1440 	mov	a,#___str_9
      0033FC C0 E0            [24] 1441 	push	acc
      0033FE 74 4B            [12] 1442 	mov	a,#(___str_9 >> 8)
      003400 C0 E0            [24] 1443 	push	acc
      003402 74 80            [12] 1444 	mov	a,#0x80
      003404 C0 E0            [24] 1445 	push	acc
      003406 12 39 E3         [24] 1446 	lcall	_printf
      003409 E5 81            [12] 1447 	mov	a,sp
      00340B 24 FB            [12] 1448 	add	a,#0xfb
      00340D F5 81            [12] 1449 	mov	sp,a
                                   1450 ;	SPI.c:217: return;
      00340F 22               [24] 1451 	ret
      003410                       1452 00104$:
                                   1453 ;	SPI.c:220: if (num_bytes > 1) {
      003410 C3               [12] 1454 	clr	c
      003411 74 01            [12] 1455 	mov	a,#0x01
      003413 9E               [12] 1456 	subb	a,r6
      003414 74 80            [12] 1457 	mov	a,#(0x00 ^ 0x80)
      003416 8F F0            [24] 1458 	mov	b,r7
      003418 63 F0 80         [24] 1459 	xrl	b,#0x80
      00341B 95 F0            [12] 1460 	subb	a,b
      00341D 50 0B            [24] 1461 	jnc	00106$
                                   1462 ;	SPI.c:221: spi_set_autoinc();
      00341F C0 05            [24] 1463 	push	ar5
      003421 C0 04            [24] 1464 	push	ar4
      003423 12 2F A1         [24] 1465 	lcall	_spi_set_autoinc
      003426 D0 04            [24] 1466 	pop	ar4
      003428 D0 05            [24] 1467 	pop	ar5
      00342A                       1468 00106$:
                                   1469 ;	SPI.c:225: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      00342A 8D 07            [24] 1470 	mov	ar7,r5
                                   1471 ;	SPI.c:226: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      00342C 8C 06            [24] 1472 	mov	ar6,r4
                                   1473 ;	SPI.c:228: spi_control_write(0, 0x01, higher_byte); // High byte
      00342E 90 03 62         [24] 1474 	mov	dptr,#_spi_control_write_PARM_2
      003431 74 01            [12] 1475 	mov	a,#0x01
      003433 F0               [24] 1476 	movx	@dptr,a
      003434 90 03 63         [24] 1477 	mov	dptr,#_spi_control_write_PARM_3
      003437 EF               [12] 1478 	mov	a,r7
      003438 F0               [24] 1479 	movx	@dptr,a
      003439 75 82 00         [24] 1480 	mov	dpl, #0x00
      00343C C0 06            [24] 1481 	push	ar6
      00343E C0 05            [24] 1482 	push	ar5
      003440 C0 04            [24] 1483 	push	ar4
      003442 12 2F CE         [24] 1484 	lcall	_spi_control_write
      003445 D0 04            [24] 1485 	pop	ar4
      003447 D0 05            [24] 1486 	pop	ar5
      003449 D0 06            [24] 1487 	pop	ar6
                                   1488 ;	SPI.c:229: spi_control_write(0, 0x00, lower_byte); // Low byte
      00344B 90 03 62         [24] 1489 	mov	dptr,#_spi_control_write_PARM_2
      00344E E4               [12] 1490 	clr	a
      00344F F0               [24] 1491 	movx	@dptr,a
      003450 90 03 63         [24] 1492 	mov	dptr,#_spi_control_write_PARM_3
      003453 EE               [12] 1493 	mov	a,r6
      003454 F0               [24] 1494 	movx	@dptr,a
      003455 75 82 00         [24] 1495 	mov	dpl, #0x00
      003458 C0 05            [24] 1496 	push	ar5
      00345A C0 04            [24] 1497 	push	ar4
      00345C 12 2F CE         [24] 1498 	lcall	_spi_control_write
                                   1499 ;	SPI.c:232: CS_LOW; // Pull CS Low
                                   1500 ;	assignBit
      00345F C2 91            [12] 1501 	clr	_P1_1
                                   1502 ;	SPI.c:233: SPI_send(opcode); // Send opcode
      003461 75 82 3A         [24] 1503 	mov	dpl, #0x3a
      003464 12 30 39         [24] 1504 	lcall	_SPI_send
      003467 D0 04            [24] 1505 	pop	ar4
      003469 D0 05            [24] 1506 	pop	ar5
                                   1507 ;	SPI.c:236: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      00346B 90 03 78         [24] 1508 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      00346E E0               [24] 1509 	movx	a,@dptr
      00346F FE               [12] 1510 	mov	r6,a
      003470 A3               [24] 1511 	inc	dptr
      003471 E0               [24] 1512 	movx	a,@dptr
      003472 FF               [12] 1513 	mov	r7,a
      003473 C0 07            [24] 1514 	push	ar7
      003475 C0 06            [24] 1515 	push	ar6
      003477 C0 04            [24] 1516 	push	ar4
      003479 C0 05            [24] 1517 	push	ar5
      00347B C0 06            [24] 1518 	push	ar6
      00347D C0 07            [24] 1519 	push	ar7
      00347F 74 59            [12] 1520 	mov	a,#___str_10
      003481 C0 E0            [24] 1521 	push	acc
      003483 74 4B            [12] 1522 	mov	a,#(___str_10 >> 8)
      003485 C0 E0            [24] 1523 	push	acc
      003487 74 80            [12] 1524 	mov	a,#0x80
      003489 C0 E0            [24] 1525 	push	acc
      00348B 12 39 E3         [24] 1526 	lcall	_printf
      00348E E5 81            [12] 1527 	mov	a,sp
      003490 24 F9            [12] 1528 	add	a,#0xf9
      003492 F5 81            [12] 1529 	mov	sp,a
      003494 D0 06            [24] 1530 	pop	ar6
      003496 D0 07            [24] 1531 	pop	ar7
                                   1532 ;	SPI.c:237: for (int i = 0; i < num_bytes; i++) {
      003498 90 03 7A         [24] 1533 	mov	dptr,#_spi_buffer_read_i_20002_106
      00349B E4               [12] 1534 	clr	a
      00349C F0               [24] 1535 	movx	@dptr,a
      00349D A3               [24] 1536 	inc	dptr
      00349E F0               [24] 1537 	movx	@dptr,a
      00349F 90 03 75         [24] 1538 	mov	dptr,#_spi_buffer_read_PARM_3
      0034A2 E0               [24] 1539 	movx	a,@dptr
      0034A3 FB               [12] 1540 	mov	r3,a
      0034A4 A3               [24] 1541 	inc	dptr
      0034A5 E0               [24] 1542 	movx	a,@dptr
      0034A6 FC               [12] 1543 	mov	r4,a
      0034A7 A3               [24] 1544 	inc	dptr
      0034A8 E0               [24] 1545 	movx	a,@dptr
      0034A9 FD               [12] 1546 	mov	r5,a
      0034AA                       1547 00109$:
      0034AA 90 03 7A         [24] 1548 	mov	dptr,#_spi_buffer_read_i_20002_106
      0034AD E0               [24] 1549 	movx	a,@dptr
      0034AE F9               [12] 1550 	mov	r1,a
      0034AF A3               [24] 1551 	inc	dptr
      0034B0 E0               [24] 1552 	movx	a,@dptr
      0034B1 FA               [12] 1553 	mov	r2,a
      0034B2 C3               [12] 1554 	clr	c
      0034B3 E9               [12] 1555 	mov	a,r1
      0034B4 9E               [12] 1556 	subb	a,r6
      0034B5 EA               [12] 1557 	mov	a,r2
      0034B6 64 80            [12] 1558 	xrl	a,#0x80
      0034B8 8F F0            [24] 1559 	mov	b,r7
      0034BA 63 F0 80         [24] 1560 	xrl	b,#0x80
      0034BD 95 F0            [12] 1561 	subb	a,b
      0034BF 40 03            [24] 1562 	jc	00147$
      0034C1 02 35 47         [24] 1563 	ljmp	00107$
      0034C4                       1564 00147$:
                                   1565 ;	SPI.c:238: *data_ptr = SPI_ReadByte(); // Read data
      0034C4 C0 06            [24] 1566 	push	ar6
      0034C6 C0 07            [24] 1567 	push	ar7
      0034C8 C0 07            [24] 1568 	push	ar7
      0034CA C0 06            [24] 1569 	push	ar6
      0034CC C0 05            [24] 1570 	push	ar5
      0034CE C0 04            [24] 1571 	push	ar4
      0034D0 C0 03            [24] 1572 	push	ar3
      0034D2 C0 02            [24] 1573 	push	ar2
      0034D4 C0 01            [24] 1574 	push	ar1
      0034D6 12 2F 8F         [24] 1575 	lcall	_SPI_ReadByte
      0034D9 A8 82            [24] 1576 	mov	r0, dpl
      0034DB D0 01            [24] 1577 	pop	ar1
      0034DD D0 02            [24] 1578 	pop	ar2
      0034DF D0 03            [24] 1579 	pop	ar3
      0034E1 D0 04            [24] 1580 	pop	ar4
      0034E3 D0 05            [24] 1581 	pop	ar5
      0034E5 D0 06            [24] 1582 	pop	ar6
      0034E7 D0 07            [24] 1583 	pop	ar7
      0034E9 8B 82            [24] 1584 	mov	dpl,r3
      0034EB 8C 83            [24] 1585 	mov	dph,r4
      0034ED 8D F0            [24] 1586 	mov	b,r5
      0034EF E8               [12] 1587 	mov	a,r0
      0034F0 12 38 51         [24] 1588 	lcall	__gptrput
      0034F3 A3               [24] 1589 	inc	dptr
      0034F4 AB 82            [24] 1590 	mov	r3,dpl
      0034F6 AC 83            [24] 1591 	mov	r4,dph
                                   1592 ;	SPI.c:239: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      0034F8 7F 00            [12] 1593 	mov	r7,#0x00
      0034FA 09               [12] 1594 	inc	r1
      0034FB B9 00 01         [24] 1595 	cjne	r1,#0x00,00148$
      0034FE 0A               [12] 1596 	inc	r2
      0034FF                       1597 00148$:
      0034FF C0 07            [24] 1598 	push	ar7
      003501 C0 06            [24] 1599 	push	ar6
      003503 C0 05            [24] 1600 	push	ar5
      003505 C0 04            [24] 1601 	push	ar4
      003507 C0 03            [24] 1602 	push	ar3
      003509 C0 02            [24] 1603 	push	ar2
      00350B C0 01            [24] 1604 	push	ar1
      00350D C0 00            [24] 1605 	push	ar0
      00350F C0 07            [24] 1606 	push	ar7
      003511 C0 01            [24] 1607 	push	ar1
      003513 C0 02            [24] 1608 	push	ar2
      003515 74 94            [12] 1609 	mov	a,#___str_11
      003517 C0 E0            [24] 1610 	push	acc
      003519 74 4B            [12] 1611 	mov	a,#(___str_11 >> 8)
      00351B C0 E0            [24] 1612 	push	acc
      00351D 74 80            [12] 1613 	mov	a,#0x80
      00351F C0 E0            [24] 1614 	push	acc
      003521 12 39 E3         [24] 1615 	lcall	_printf
      003524 E5 81            [12] 1616 	mov	a,sp
      003526 24 F9            [12] 1617 	add	a,#0xf9
      003528 F5 81            [12] 1618 	mov	sp,a
      00352A D0 01            [24] 1619 	pop	ar1
      00352C D0 02            [24] 1620 	pop	ar2
      00352E D0 03            [24] 1621 	pop	ar3
      003530 D0 04            [24] 1622 	pop	ar4
      003532 D0 05            [24] 1623 	pop	ar5
      003534 D0 06            [24] 1624 	pop	ar6
      003536 D0 07            [24] 1625 	pop	ar7
                                   1626 ;	SPI.c:240: data_ptr++;
                                   1627 ;	SPI.c:237: for (int i = 0; i < num_bytes; i++) {
      003538 90 03 7A         [24] 1628 	mov	dptr,#_spi_buffer_read_i_20002_106
      00353B E9               [12] 1629 	mov	a,r1
      00353C F0               [24] 1630 	movx	@dptr,a
      00353D EA               [12] 1631 	mov	a,r2
      00353E A3               [24] 1632 	inc	dptr
      00353F F0               [24] 1633 	movx	@dptr,a
      003540 D0 07            [24] 1634 	pop	ar7
      003542 D0 06            [24] 1635 	pop	ar6
      003544 02 34 AA         [24] 1636 	ljmp	00109$
      003547                       1637 00107$:
                                   1638 ;	SPI.c:242: CS_HIGH; // Pull CS High
                                   1639 ;	assignBit
      003547 D2 91            [12] 1640 	setb	_P1_1
                                   1641 ;	SPI.c:243: }
      003549 22               [24] 1642 	ret
                                   1643 ;------------------------------------------------------------
                                   1644 ;Allocation info for local variables in function 'spi_buffer_write'
                                   1645 ;------------------------------------------------------------
                                   1646 ;start_address             Allocated with name '_spi_buffer_write_PARM_2'
                                   1647 ;data_ptr                  Allocated with name '_spi_buffer_write_PARM_3'
                                   1648 ;num_bytes                 Allocated with name '_spi_buffer_write_num_bytes_10000_108'
                                   1649 ;higher_byte               Allocated with name '_spi_buffer_write_higher_byte_10001_113'
                                   1650 ;lower_byte                Allocated with name '_spi_buffer_write_lower_byte_10001_113'
                                   1651 ;opcode                    Allocated with name '_spi_buffer_write_opcode_10002_114'
                                   1652 ;i                         Allocated with name '_spi_buffer_write_i_20002_115'
                                   1653 ;------------------------------------------------------------
                                   1654 ;	SPI.c:246: void spi_buffer_write(int num_bytes, uint16_t start_address, uint8_t *data_ptr)
                                   1655 ;	-----------------------------------------
                                   1656 ;	 function spi_buffer_write
                                   1657 ;	-----------------------------------------
      00354A                       1658 _spi_buffer_write:
      00354A AF 83            [24] 1659 	mov	r7,dph
      00354C E5 82            [12] 1660 	mov	a,dpl
      00354E 90 03 81         [24] 1661 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      003551 F0               [24] 1662 	movx	@dptr,a
      003552 EF               [12] 1663 	mov	a,r7
      003553 A3               [24] 1664 	inc	dptr
      003554 F0               [24] 1665 	movx	@dptr,a
                                   1666 ;	SPI.c:248: if (num_bytes < 1)
      003555 90 03 81         [24] 1667 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      003558 E0               [24] 1668 	movx	a,@dptr
      003559 FE               [12] 1669 	mov	r6,a
      00355A A3               [24] 1670 	inc	dptr
      00355B E0               [24] 1671 	movx	a,@dptr
      00355C FF               [12] 1672 	mov	r7,a
      00355D C3               [12] 1673 	clr	c
      00355E EE               [12] 1674 	mov	a,r6
      00355F 94 01            [12] 1675 	subb	a,#0x01
      003561 EF               [12] 1676 	mov	a,r7
      003562 64 80            [12] 1677 	xrl	a,#0x80
      003564 94 80            [12] 1678 	subb	a,#0x80
      003566 50 1A            [24] 1679 	jnc	00102$
                                   1680 ;	SPI.c:250: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003568 C0 06            [24] 1681 	push	ar6
      00356A C0 07            [24] 1682 	push	ar7
      00356C 74 1F            [12] 1683 	mov	a,#___str_8
      00356E C0 E0            [24] 1684 	push	acc
      003570 74 4B            [12] 1685 	mov	a,#(___str_8 >> 8)
      003572 C0 E0            [24] 1686 	push	acc
      003574 74 80            [12] 1687 	mov	a,#0x80
      003576 C0 E0            [24] 1688 	push	acc
      003578 12 39 E3         [24] 1689 	lcall	_printf
      00357B E5 81            [12] 1690 	mov	a,sp
      00357D 24 FB            [12] 1691 	add	a,#0xfb
      00357F F5 81            [12] 1692 	mov	sp,a
                                   1693 ;	SPI.c:251: return;
      003581 22               [24] 1694 	ret
      003582                       1695 00102$:
                                   1696 ;	SPI.c:253: if (start_address > 0x1FFF) {
      003582 90 03 7C         [24] 1697 	mov	dptr,#_spi_buffer_write_PARM_2
      003585 E0               [24] 1698 	movx	a,@dptr
      003586 FC               [12] 1699 	mov	r4,a
      003587 A3               [24] 1700 	inc	dptr
      003588 E0               [24] 1701 	movx	a,@dptr
      003589 FD               [12] 1702 	mov	r5,a
      00358A 8C 02            [24] 1703 	mov	ar2,r4
      00358C 8D 03            [24] 1704 	mov	ar3,r5
      00358E C3               [12] 1705 	clr	c
      00358F 74 FF            [12] 1706 	mov	a,#0xff
      003591 9A               [12] 1707 	subb	a,r2
      003592 74 1F            [12] 1708 	mov	a,#0x1f
      003594 9B               [12] 1709 	subb	a,r3
      003595 50 1A            [24] 1710 	jnc	00104$
                                   1711 ;	SPI.c:254: printf("\n\rInvalid address: %04X\n\r", start_address);
      003597 C0 04            [24] 1712 	push	ar4
      003599 C0 05            [24] 1713 	push	ar5
      00359B 74 3F            [12] 1714 	mov	a,#___str_9
      00359D C0 E0            [24] 1715 	push	acc
      00359F 74 4B            [12] 1716 	mov	a,#(___str_9 >> 8)
      0035A1 C0 E0            [24] 1717 	push	acc
      0035A3 74 80            [12] 1718 	mov	a,#0x80
      0035A5 C0 E0            [24] 1719 	push	acc
      0035A7 12 39 E3         [24] 1720 	lcall	_printf
      0035AA E5 81            [12] 1721 	mov	a,sp
      0035AC 24 FB            [12] 1722 	add	a,#0xfb
      0035AE F5 81            [12] 1723 	mov	sp,a
                                   1724 ;	SPI.c:255: return;
      0035B0 22               [24] 1725 	ret
      0035B1                       1726 00104$:
                                   1727 ;	SPI.c:259: if (num_bytes > 1) {
      0035B1 C3               [12] 1728 	clr	c
      0035B2 74 01            [12] 1729 	mov	a,#0x01
      0035B4 9E               [12] 1730 	subb	a,r6
      0035B5 74 80            [12] 1731 	mov	a,#(0x00 ^ 0x80)
      0035B7 8F F0            [24] 1732 	mov	b,r7
      0035B9 63 F0 80         [24] 1733 	xrl	b,#0x80
      0035BC 95 F0            [12] 1734 	subb	a,b
      0035BE 50 0B            [24] 1735 	jnc	00106$
                                   1736 ;	SPI.c:260: spi_set_autoinc();
      0035C0 C0 05            [24] 1737 	push	ar5
      0035C2 C0 04            [24] 1738 	push	ar4
      0035C4 12 2F A1         [24] 1739 	lcall	_spi_set_autoinc
      0035C7 D0 04            [24] 1740 	pop	ar4
      0035C9 D0 05            [24] 1741 	pop	ar5
      0035CB                       1742 00106$:
                                   1743 ;	SPI.c:263: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      0035CB 8D 07            [24] 1744 	mov	ar7,r5
                                   1745 ;	SPI.c:264: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      0035CD 8C 06            [24] 1746 	mov	ar6,r4
                                   1747 ;	SPI.c:266: spi_control_write(0, 0x03, higher_byte); // High byte
      0035CF 90 03 62         [24] 1748 	mov	dptr,#_spi_control_write_PARM_2
      0035D2 74 03            [12] 1749 	mov	a,#0x03
      0035D4 F0               [24] 1750 	movx	@dptr,a
      0035D5 90 03 63         [24] 1751 	mov	dptr,#_spi_control_write_PARM_3
      0035D8 EF               [12] 1752 	mov	a,r7
      0035D9 F0               [24] 1753 	movx	@dptr,a
      0035DA 75 82 00         [24] 1754 	mov	dpl, #0x00
      0035DD C0 06            [24] 1755 	push	ar6
      0035DF C0 05            [24] 1756 	push	ar5
      0035E1 C0 04            [24] 1757 	push	ar4
      0035E3 12 2F CE         [24] 1758 	lcall	_spi_control_write
      0035E6 D0 04            [24] 1759 	pop	ar4
      0035E8 D0 05            [24] 1760 	pop	ar5
      0035EA D0 06            [24] 1761 	pop	ar6
                                   1762 ;	SPI.c:267: spi_control_write(0, 0x02, lower_byte); // Low byte
      0035EC 90 03 62         [24] 1763 	mov	dptr,#_spi_control_write_PARM_2
      0035EF 74 02            [12] 1764 	mov	a,#0x02
      0035F1 F0               [24] 1765 	movx	@dptr,a
      0035F2 90 03 63         [24] 1766 	mov	dptr,#_spi_control_write_PARM_3
      0035F5 EE               [12] 1767 	mov	a,r6
      0035F6 F0               [24] 1768 	movx	@dptr,a
      0035F7 75 82 00         [24] 1769 	mov	dpl, #0x00
      0035FA C0 05            [24] 1770 	push	ar5
      0035FC C0 04            [24] 1771 	push	ar4
      0035FE 12 2F CE         [24] 1772 	lcall	_spi_control_write
                                   1773 ;	SPI.c:270: CS_LOW; // Pull CS Low
                                   1774 ;	assignBit
      003601 C2 91            [12] 1775 	clr	_P1_1
                                   1776 ;	SPI.c:271: SPI_send(opcode); // Send opcode
      003603 75 82 7A         [24] 1777 	mov	dpl, #0x7a
      003606 12 30 39         [24] 1778 	lcall	_SPI_send
      003609 D0 04            [24] 1779 	pop	ar4
      00360B D0 05            [24] 1780 	pop	ar5
                                   1781 ;	SPI.c:274: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      00360D 90 03 81         [24] 1782 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      003610 E0               [24] 1783 	movx	a,@dptr
      003611 FE               [12] 1784 	mov	r6,a
      003612 A3               [24] 1785 	inc	dptr
      003613 E0               [24] 1786 	movx	a,@dptr
      003614 FF               [12] 1787 	mov	r7,a
      003615 C0 07            [24] 1788 	push	ar7
      003617 C0 06            [24] 1789 	push	ar6
      003619 C0 04            [24] 1790 	push	ar4
      00361B C0 05            [24] 1791 	push	ar5
      00361D C0 06            [24] 1792 	push	ar6
      00361F C0 07            [24] 1793 	push	ar7
      003621 74 A6            [12] 1794 	mov	a,#___str_12
      003623 C0 E0            [24] 1795 	push	acc
      003625 74 4B            [12] 1796 	mov	a,#(___str_12 >> 8)
      003627 C0 E0            [24] 1797 	push	acc
      003629 74 80            [12] 1798 	mov	a,#0x80
      00362B C0 E0            [24] 1799 	push	acc
      00362D 12 39 E3         [24] 1800 	lcall	_printf
      003630 E5 81            [12] 1801 	mov	a,sp
      003632 24 F9            [12] 1802 	add	a,#0xf9
      003634 F5 81            [12] 1803 	mov	sp,a
      003636 D0 06            [24] 1804 	pop	ar6
      003638 D0 07            [24] 1805 	pop	ar7
                                   1806 ;	SPI.c:275: for (int i = 0; i < num_bytes; i++) {
      00363A 90 03 83         [24] 1807 	mov	dptr,#_spi_buffer_write_i_20002_115
      00363D E4               [12] 1808 	clr	a
      00363E F0               [24] 1809 	movx	@dptr,a
      00363F A3               [24] 1810 	inc	dptr
      003640 F0               [24] 1811 	movx	@dptr,a
      003641 90 03 7E         [24] 1812 	mov	dptr,#_spi_buffer_write_PARM_3
      003644 E0               [24] 1813 	movx	a,@dptr
      003645 FB               [12] 1814 	mov	r3,a
      003646 A3               [24] 1815 	inc	dptr
      003647 E0               [24] 1816 	movx	a,@dptr
      003648 FC               [12] 1817 	mov	r4,a
      003649 A3               [24] 1818 	inc	dptr
      00364A E0               [24] 1819 	movx	a,@dptr
      00364B FD               [12] 1820 	mov	r5,a
      00364C                       1821 00109$:
      00364C 90 03 83         [24] 1822 	mov	dptr,#_spi_buffer_write_i_20002_115
      00364F E0               [24] 1823 	movx	a,@dptr
      003650 F9               [12] 1824 	mov	r1,a
      003651 A3               [24] 1825 	inc	dptr
      003652 E0               [24] 1826 	movx	a,@dptr
      003653 FA               [12] 1827 	mov	r2,a
      003654 C3               [12] 1828 	clr	c
      003655 E9               [12] 1829 	mov	a,r1
      003656 9E               [12] 1830 	subb	a,r6
      003657 EA               [12] 1831 	mov	a,r2
      003658 64 80            [12] 1832 	xrl	a,#0x80
      00365A 8F F0            [24] 1833 	mov	b,r7
      00365C 63 F0 80         [24] 1834 	xrl	b,#0x80
      00365F 95 F0            [12] 1835 	subb	a,b
      003661 40 03            [24] 1836 	jc	00147$
      003663 02 36 F3         [24] 1837 	ljmp	00107$
      003666                       1838 00147$:
                                   1839 ;	SPI.c:276: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003666 C0 06            [24] 1840 	push	ar6
      003668 C0 07            [24] 1841 	push	ar7
      00366A 8B 82            [24] 1842 	mov	dpl,r3
      00366C 8C 83            [24] 1843 	mov	dph,r4
      00366E 8D F0            [24] 1844 	mov	b,r5
      003670 12 44 05         [24] 1845 	lcall	__gptrget
      003673 F8               [12] 1846 	mov	r0,a
      003674 7F 00            [12] 1847 	mov	r7,#0x00
      003676 09               [12] 1848 	inc	r1
      003677 B9 00 01         [24] 1849 	cjne	r1,#0x00,00148$
      00367A 0A               [12] 1850 	inc	r2
      00367B                       1851 00148$:
      00367B C0 07            [24] 1852 	push	ar7
      00367D C0 06            [24] 1853 	push	ar6
      00367F C0 05            [24] 1854 	push	ar5
      003681 C0 04            [24] 1855 	push	ar4
      003683 C0 03            [24] 1856 	push	ar3
      003685 C0 02            [24] 1857 	push	ar2
      003687 C0 01            [24] 1858 	push	ar1
      003689 C0 00            [24] 1859 	push	ar0
      00368B C0 07            [24] 1860 	push	ar7
      00368D C0 01            [24] 1861 	push	ar1
      00368F C0 02            [24] 1862 	push	ar2
      003691 74 94            [12] 1863 	mov	a,#___str_11
      003693 C0 E0            [24] 1864 	push	acc
      003695 74 4B            [12] 1865 	mov	a,#(___str_11 >> 8)
      003697 C0 E0            [24] 1866 	push	acc
      003699 74 80            [12] 1867 	mov	a,#0x80
      00369B C0 E0            [24] 1868 	push	acc
      00369D 12 39 E3         [24] 1869 	lcall	_printf
      0036A0 E5 81            [12] 1870 	mov	a,sp
      0036A2 24 F9            [12] 1871 	add	a,#0xf9
      0036A4 F5 81            [12] 1872 	mov	sp,a
      0036A6 D0 01            [24] 1873 	pop	ar1
      0036A8 D0 02            [24] 1874 	pop	ar2
      0036AA D0 03            [24] 1875 	pop	ar3
      0036AC D0 04            [24] 1876 	pop	ar4
      0036AE D0 05            [24] 1877 	pop	ar5
      0036B0 D0 06            [24] 1878 	pop	ar6
      0036B2 D0 07            [24] 1879 	pop	ar7
                                   1880 ;	SPI.c:277: SPI_send(*data_ptr); // Send data
      0036B4 8B 82            [24] 1881 	mov	dpl,r3
      0036B6 8C 83            [24] 1882 	mov	dph,r4
      0036B8 8D F0            [24] 1883 	mov	b,r5
      0036BA 12 44 05         [24] 1884 	lcall	__gptrget
      0036BD FF               [12] 1885 	mov	r7,a
      0036BE A3               [24] 1886 	inc	dptr
      0036BF AB 82            [24] 1887 	mov	r3,dpl
      0036C1 AC 83            [24] 1888 	mov	r4,dph
      0036C3 8F 82            [24] 1889 	mov	dpl, r7
      0036C5 C0 07            [24] 1890 	push	ar7
      0036C7 C0 06            [24] 1891 	push	ar6
      0036C9 C0 05            [24] 1892 	push	ar5
      0036CB C0 04            [24] 1893 	push	ar4
      0036CD C0 03            [24] 1894 	push	ar3
      0036CF C0 02            [24] 1895 	push	ar2
      0036D1 C0 01            [24] 1896 	push	ar1
      0036D3 12 30 39         [24] 1897 	lcall	_SPI_send
      0036D6 D0 01            [24] 1898 	pop	ar1
      0036D8 D0 02            [24] 1899 	pop	ar2
      0036DA D0 03            [24] 1900 	pop	ar3
      0036DC D0 04            [24] 1901 	pop	ar4
      0036DE D0 05            [24] 1902 	pop	ar5
      0036E0 D0 06            [24] 1903 	pop	ar6
      0036E2 D0 07            [24] 1904 	pop	ar7
                                   1905 ;	SPI.c:278: data_ptr++;
                                   1906 ;	SPI.c:275: for (int i = 0; i < num_bytes; i++) {
      0036E4 90 03 83         [24] 1907 	mov	dptr,#_spi_buffer_write_i_20002_115
      0036E7 E9               [12] 1908 	mov	a,r1
      0036E8 F0               [24] 1909 	movx	@dptr,a
      0036E9 EA               [12] 1910 	mov	a,r2
      0036EA A3               [24] 1911 	inc	dptr
      0036EB F0               [24] 1912 	movx	@dptr,a
      0036EC D0 07            [24] 1913 	pop	ar7
      0036EE D0 06            [24] 1914 	pop	ar6
      0036F0 02 36 4C         [24] 1915 	ljmp	00109$
      0036F3                       1916 00107$:
                                   1917 ;	SPI.c:280: CS_HIGH; // Pull CS High
                                   1918 ;	assignBit
      0036F3 D2 91            [12] 1919 	setb	_P1_1
                                   1920 ;	SPI.c:281: }
      0036F5 22               [24] 1921 	ret
                                   1922 ;------------------------------------------------------------
                                   1923 ;Allocation info for local variables in function 'init_ENC'
                                   1924 ;------------------------------------------------------------
                                   1925 ;	SPI.c:283: void init_ENC(void)
                                   1926 ;	-----------------------------------------
                                   1927 ;	 function init_ENC
                                   1928 ;	-----------------------------------------
      0036F6                       1929 _init_ENC:
                                   1930 ;	SPI.c:285: spi_control_write(1, 0x18, 0x41);
      0036F6 90 03 62         [24] 1931 	mov	dptr,#_spi_control_write_PARM_2
      0036F9 74 18            [12] 1932 	mov	a,#0x18
      0036FB F0               [24] 1933 	movx	@dptr,a
      0036FC 90 03 63         [24] 1934 	mov	dptr,#_spi_control_write_PARM_3
      0036FF 74 41            [12] 1935 	mov	a,#0x41
      003701 F0               [24] 1936 	movx	@dptr,a
      003702 75 82 01         [24] 1937 	mov	dpl, #0x01
      003705 12 2F CE         [24] 1938 	lcall	_spi_control_write
                                   1939 ;	SPI.c:287: enc28j60_init_rx_buffer(0x0000, 0x00FF);
      003708 90 01 06         [24] 1940 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      00370B 74 FF            [12] 1941 	mov	a,#0xff
      00370D F0               [24] 1942 	movx	@dptr,a
      00370E E4               [12] 1943 	clr	a
      00370F A3               [24] 1944 	inc	dptr
      003710 F0               [24] 1945 	movx	@dptr,a
      003711 90 00 00         [24] 1946 	mov	dptr,#0x0000
      003714 12 21 71         [24] 1947 	lcall	_enc28j60_init_rx_buffer
                                   1948 ;	SPI.c:289: IT0 = 1;  // Edge-triggered mode for INT0
                                   1949 ;	assignBit
      003717 D2 88            [12] 1950 	setb	_IT0
                                   1951 ;	SPI.c:290: EX0 = 1;  // Enable INT0
                                   1952 ;	assignBit
      003719 D2 A8            [12] 1953 	setb	_EX0
                                   1954 ;	SPI.c:291: EA = 1;   // Enable global interrupts
                                   1955 ;	assignBit
      00371B D2 AF            [12] 1956 	setb	_EA
                                   1957 ;	SPI.c:295: spi_control_write(0x02, 0x02, 0x70); // Write 0x30 to MACON3 (address 0x02 in bank 2)
      00371D 90 03 62         [24] 1958 	mov	dptr,#_spi_control_write_PARM_2
      003720 74 02            [12] 1959 	mov	a,#0x02
      003722 F0               [24] 1960 	movx	@dptr,a
      003723 90 03 63         [24] 1961 	mov	dptr,#_spi_control_write_PARM_3
      003726 74 70            [12] 1962 	mov	a,#0x70
      003728 F0               [24] 1963 	movx	@dptr,a
      003729 75 82 02         [24] 1964 	mov	dpl, #0x02
      00372C 12 2F CE         [24] 1965 	lcall	_spi_control_write
                                   1966 ;	SPI.c:296: spi_control_write(0x02, 0x03, 0x40); // Write 0x40 to MACON4 (address 0x02 in bank 2) - DEFER bit
      00372F 90 03 62         [24] 1967 	mov	dptr,#_spi_control_write_PARM_2
      003732 74 03            [12] 1968 	mov	a,#0x03
      003734 F0               [24] 1969 	movx	@dptr,a
      003735 90 03 63         [24] 1970 	mov	dptr,#_spi_control_write_PARM_3
      003738 74 40            [12] 1971 	mov	a,#0x40
      00373A F0               [24] 1972 	movx	@dptr,a
      00373B 75 82 02         [24] 1973 	mov	dpl, #0x02
      00373E 12 2F CE         [24] 1974 	lcall	_spi_control_write
                                   1975 ;	SPI.c:297: spi_control_write(0x02, 0x0A, 0xEE); // Write 0xEE to MAMXFLL (low byte, address 0x0A in bank 2)
      003741 90 03 62         [24] 1976 	mov	dptr,#_spi_control_write_PARM_2
      003744 74 0A            [12] 1977 	mov	a,#0x0a
      003746 F0               [24] 1978 	movx	@dptr,a
      003747 90 03 63         [24] 1979 	mov	dptr,#_spi_control_write_PARM_3
      00374A 74 EE            [12] 1980 	mov	a,#0xee
      00374C F0               [24] 1981 	movx	@dptr,a
      00374D 75 82 02         [24] 1982 	mov	dpl, #0x02
      003750 12 2F CE         [24] 1983 	lcall	_spi_control_write
                                   1984 ;	SPI.c:298: spi_control_write(0x02, 0x0B, 0x05); // Write 0x05 to MAMXFLH (high byte, address 0x0B in bank 2)
      003753 90 03 62         [24] 1985 	mov	dptr,#_spi_control_write_PARM_2
      003756 74 0B            [12] 1986 	mov	a,#0x0b
      003758 F0               [24] 1987 	movx	@dptr,a
      003759 90 03 63         [24] 1988 	mov	dptr,#_spi_control_write_PARM_3
      00375C 74 05            [12] 1989 	mov	a,#0x05
      00375E F0               [24] 1990 	movx	@dptr,a
      00375F 75 82 02         [24] 1991 	mov	dpl, #0x02
      003762 12 2F CE         [24] 1992 	lcall	_spi_control_write
                                   1993 ;	SPI.c:299: spi_control_write(0x02, 0x04, 0x12); // Write 0x15 to MABBIPG (address 0x04 in bank 2)
      003765 90 03 62         [24] 1994 	mov	dptr,#_spi_control_write_PARM_2
      003768 74 04            [12] 1995 	mov	a,#0x04
      00376A F0               [24] 1996 	movx	@dptr,a
      00376B 90 03 63         [24] 1997 	mov	dptr,#_spi_control_write_PARM_3
      00376E 74 12            [12] 1998 	mov	a,#0x12
      003770 F0               [24] 1999 	movx	@dptr,a
      003771 75 82 02         [24] 2000 	mov	dpl, #0x02
      003774 12 2F CE         [24] 2001 	lcall	_spi_control_write
                                   2002 ;	SPI.c:300: spi_control_write(0x02, 0x06, 0x12); // Write 0x12 to MAIPGL (low byte, address 0x06 in bank 2)
      003777 90 03 62         [24] 2003 	mov	dptr,#_spi_control_write_PARM_2
      00377A 74 06            [12] 2004 	mov	a,#0x06
      00377C F0               [24] 2005 	movx	@dptr,a
      00377D 90 03 63         [24] 2006 	mov	dptr,#_spi_control_write_PARM_3
      003780 74 12            [12] 2007 	mov	a,#0x12
      003782 F0               [24] 2008 	movx	@dptr,a
      003783 75 82 02         [24] 2009 	mov	dpl, #0x02
      003786 12 2F CE         [24] 2010 	lcall	_spi_control_write
                                   2011 ;	SPI.c:301: spi_control_write(0x02, 0x07, 0x0C); // Write 0x12 to MAIPGH (low byte, address 0x06 in bank 2)
      003789 90 03 62         [24] 2012 	mov	dptr,#_spi_control_write_PARM_2
      00378C 74 07            [12] 2013 	mov	a,#0x07
      00378E F0               [24] 2014 	movx	@dptr,a
      00378F 90 03 63         [24] 2015 	mov	dptr,#_spi_control_write_PARM_3
      003792 74 0C            [12] 2016 	mov	a,#0x0c
      003794 F0               [24] 2017 	movx	@dptr,a
      003795 75 82 02         [24] 2018 	mov	dpl, #0x02
      003798 12 2F CE         [24] 2019 	lcall	_spi_control_write
                                   2020 ;	SPI.c:305: spi_control_write(0, 0x1B, 0xC0);
      00379B 90 03 62         [24] 2021 	mov	dptr,#_spi_control_write_PARM_2
      00379E 74 1B            [12] 2022 	mov	a,#0x1b
      0037A0 F0               [24] 2023 	movx	@dptr,a
      0037A1 90 03 63         [24] 2024 	mov	dptr,#_spi_control_write_PARM_3
      0037A4 74 C0            [12] 2025 	mov	a,#0xc0
      0037A6 F0               [24] 2026 	movx	@dptr,a
      0037A7 75 82 00         [24] 2027 	mov	dpl, #0x00
                                   2028 ;	SPI.c:307: }
      0037AA 02 2F CE         [24] 2029 	ljmp	_spi_control_write
                                   2030 ;------------------------------------------------------------
                                   2031 ;Allocation info for local variables in function 'init_MAC'
                                   2032 ;------------------------------------------------------------
                                   2033 ;	SPI.c:309: void init_MAC(void)
                                   2034 ;	-----------------------------------------
                                   2035 ;	 function init_MAC
                                   2036 ;	-----------------------------------------
      0037AD                       2037 _init_MAC:
                                   2038 ;	SPI.c:312: }
      0037AD 22               [24] 2039 	ret
                                   2040 	.area CSEG    (CODE)
                                   2041 	.area CONST   (CODE)
                                   2042 	.area CONST   (CODE)
      0049B9                       2043 ___str_0:
      0049B9 57 72 69 74 65 3A 20  2044 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      0049DB 0A                    2045 	.db 0x0a
      0049DC 0D                    2046 	.db 0x0d
      0049DD 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      0049DE                       2050 ___str_1:
      0049DE 0A                    2051 	.db 0x0a
      0049DF 0D                    2052 	.db 0x0d
      0049E0 49 6E 76 61 6C 69 64  2053 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      004A15 0A                    2054 	.db 0x0a
      004A16 0D                    2055 	.db 0x0d
      004A17 00                    2056 	.db 0x00
                                   2057 	.area CSEG    (CODE)
                                   2058 	.area CONST   (CODE)
      004A18                       2059 ___str_2:
      004A18 52 65 61 64 3A 20 41  2060 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004A39 0A                    2061 	.db 0x0a
      004A3A 0D                    2062 	.db 0x0d
      004A3B 00                    2063 	.db 0x00
                                   2064 	.area CSEG    (CODE)
                                   2065 	.area CONST   (CODE)
      004A3C                       2066 ___str_3:
      004A3C 50 48 59 20 57 72 69  2067 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      004A62 0A                    2068 	.db 0x0a
      004A63 0D                    2069 	.db 0x0d
      004A64 00                    2070 	.db 0x00
                                   2071 	.area CSEG    (CODE)
                                   2072 	.area CONST   (CODE)
      004A65                       2073 ___str_4:
      004A65 52 65 61 64 3A 20 41  2074 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004A86 0A                    2075 	.db 0x0a
      004A87 00                    2076 	.db 0x00
                                   2077 	.area CSEG    (CODE)
                                   2078 	.area CONST   (CODE)
      004A88                       2079 ___str_5:
      004A88 50 48 59 20 52 65 61  2080 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      004AAD 0A                    2081 	.db 0x0a
      004AAE 0D                    2082 	.db 0x0d
      004AAF 00                    2083 	.db 0x00
                                   2084 	.area CSEG    (CODE)
                                   2085 	.area CONST   (CODE)
      004AB0                       2086 ___str_6:
      004AB0 0A                    2087 	.db 0x0a
      004AB1 0D                    2088 	.db 0x0d
      004AB2 49 6E 76 61 6C 69 64  2089 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      004AEB 0A                    2090 	.db 0x0a
      004AEC 0D                    2091 	.db 0x0d
      004AED 00                    2092 	.db 0x00
                                   2093 	.area CSEG    (CODE)
                                   2094 	.area CONST   (CODE)
      004AEE                       2095 ___str_7:
      004AEE 0A                    2096 	.db 0x0a
      004AEF 0D                    2097 	.db 0x0d
      004AF0 42 75 66 66 65 72 20  2098 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      004B1C 0A                    2099 	.db 0x0a
      004B1D 0D                    2100 	.db 0x0d
      004B1E 00                    2101 	.db 0x00
                                   2102 	.area CSEG    (CODE)
                                   2103 	.area CONST   (CODE)
      004B1F                       2104 ___str_8:
      004B1F 0A                    2105 	.db 0x0a
      004B20 0D                    2106 	.db 0x0d
      004B21 49 6E 76 61 6C 69 64  2107 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      004B3C 0A                    2108 	.db 0x0a
      004B3D 0D                    2109 	.db 0x0d
      004B3E 00                    2110 	.db 0x00
                                   2111 	.area CSEG    (CODE)
                                   2112 	.area CONST   (CODE)
      004B3F                       2113 ___str_9:
      004B3F 0A                    2114 	.db 0x0a
      004B40 0D                    2115 	.db 0x0d
      004B41 49 6E 76 61 6C 69 64  2116 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      004B56 0A                    2117 	.db 0x0a
      004B57 0D                    2118 	.db 0x0d
      004B58 00                    2119 	.db 0x00
                                   2120 	.area CSEG    (CODE)
                                   2121 	.area CONST   (CODE)
      004B59                       2122 ___str_10:
      004B59 52 65 61 64 69 6E 67  2123 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      004B91 0A                    2124 	.db 0x0a
      004B92 0D                    2125 	.db 0x0d
      004B93 00                    2126 	.db 0x00
                                   2127 	.area CSEG    (CODE)
                                   2128 	.area CONST   (CODE)
      004B94                       2129 ___str_11:
      004B94 42 79 74 65 20 25 64  2130 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      004BA3 0A                    2131 	.db 0x0a
      004BA4 0D                    2132 	.db 0x0d
      004BA5 00                    2133 	.db 0x00
                                   2134 	.area CSEG    (CODE)
                                   2135 	.area CONST   (CODE)
      004BA6                       2136 ___str_12:
      004BA6 57 72 69 74 69 6E 67  2137 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      004BDC 0A                    2138 	.db 0x0a
      004BDD 0D                    2139 	.db 0x0d
      004BDE 00                    2140 	.db 0x00
                                   2141 	.area CSEG    (CODE)
                                   2142 	.area XINIT   (CODE)
                                   2143 	.area CABS    (ABS,CODE)

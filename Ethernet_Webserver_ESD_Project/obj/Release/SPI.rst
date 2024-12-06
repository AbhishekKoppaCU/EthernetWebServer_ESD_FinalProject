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
      003014                        594 _SPI_ReadByte:
                           000007   595 	ar7 = 0x07
                           000006   596 	ar6 = 0x06
                           000005   597 	ar5 = 0x05
                           000004   598 	ar4 = 0x04
                           000003   599 	ar3 = 0x03
                           000002   600 	ar2 = 0x02
                           000001   601 	ar1 = 0x01
                           000000   602 	ar0 = 0x00
                                    603 ;	SPI.c:9: SPDAT = 0xFF;
      003014 75 C5 FF         [24]  604 	mov	_SPDAT,#0xff
                                    605 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      003017                        606 00101$:
      003017 E5 C4            [12]  607 	mov	a,_SPSTA
      003019 30 E7 FB         [24]  608 	jnb	acc.7,00101$
                                    609 ;	SPI.c:17: received_data = SPDAT;
      00301C 90 03 60         [24]  610 	mov	dptr,#_SPI_ReadByte_received_data_10000_66
      00301F E5 C5            [12]  611 	mov	a,_SPDAT
      003021 F0               [24]  612 	movx	@dptr,a
                                    613 ;	SPI.c:19: return received_data;
      003022 E0               [24]  614 	movx	a,@dptr
                                    615 ;	SPI.c:20: }
      003023 F5 82            [12]  616 	mov	dpl,a
      003025 22               [24]  617 	ret
                                    618 ;------------------------------------------------------------
                                    619 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    620 ;------------------------------------------------------------
                                    621 ;	SPI.c:22: void spi_set_autoinc(void)
                                    622 ;	-----------------------------------------
                                    623 ;	 function spi_set_autoinc
                                    624 ;	-----------------------------------------
      003026                        625 _spi_set_autoinc:
                                    626 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    627 ;	assignBit
      003026 C2 91            [12]  628 	clr	_P1_1
                                    629 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      003028 75 82 5E         [24]  630 	mov	dpl, #0x5e
      00302B 12 31 27         [24]  631 	lcall	_SPI_send
                                    632 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      00302E 75 82 80         [24]  633 	mov	dpl, #0x80
      003031 12 31 27         [24]  634 	lcall	_SPI_send
                                    635 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    636 ;	assignBit
      003034 D2 91            [12]  637 	setb	_P1_1
                                    638 ;	SPI.c:30: }
      003036 22               [24]  639 	ret
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
      003037                        651 _select_reg_bank:
      003037 E5 82            [12]  652 	mov	a,dpl
      003039 90 03 61         [24]  653 	mov	dptr,#_select_reg_bank_bank_10000_70
      00303C F0               [24]  654 	movx	@dptr,a
                                    655 ;	SPI.c:35: CS_LOW;
                                    656 ;	assignBit
      00303D C2 91            [12]  657 	clr	_P1_1
                                    658 ;	SPI.c:36: SPI_send(0X1F); // Send the address
      00303F 75 82 1F         [24]  659 	mov	dpl, #0x1f
      003042 12 31 27         [24]  660 	lcall	_SPI_send
                                    661 ;	SPI.c:37: uint8_t data = SPI_ReadByte(); // Read the data
      003045 12 30 14         [24]  662 	lcall	_SPI_ReadByte
      003048 AF 82            [24]  663 	mov	r7, dpl
                                    664 ;	SPI.c:38: CS_HIGH;
                                    665 ;	assignBit
      00304A D2 91            [12]  666 	setb	_P1_1
                                    667 ;	SPI.c:41: data &= ~0x03; // Clear the last two bits
      00304C 53 07 FC         [24]  668 	anl	ar7,#0xfc
                                    669 ;	SPI.c:42: switch (bank)
      00304F 90 03 61         [24]  670 	mov	dptr,#_select_reg_bank_bank_10000_70
      003052 E0               [24]  671 	movx	a,@dptr
      003053 FE               [12]  672 	mov  r6,a
      003054 24 FC            [12]  673 	add	a,#0xff - 0x03
      003056 40 30            [24]  674 	jc	00105$
      003058 EE               [12]  675 	mov	a,r6
      003059 2E               [12]  676 	add	a,r6
                                    677 ;	SPI.c:44: case 0:
      00305A 90 30 5E         [24]  678 	mov	dptr,#00133$
      00305D 73               [24]  679 	jmp	@a+dptr
      00305E                        680 00133$:
      00305E 80 06            [24]  681 	sjmp	00101$
      003060 80 0B            [24]  682 	sjmp	00102$
      003062 80 12            [24]  683 	sjmp	00103$
      003064 80 19            [24]  684 	sjmp	00104$
      003066                        685 00101$:
                                    686 ;	SPI.c:45: data |= 0x00; // Last two bits: 00
      003066 90 03 62         [24]  687 	mov	dptr,#_select_reg_bank_data_10001_72
      003069 EF               [12]  688 	mov	a,r7
      00306A F0               [24]  689 	movx	@dptr,a
                                    690 ;	SPI.c:46: break;
                                    691 ;	SPI.c:47: case 1:
      00306B 80 31            [24]  692 	sjmp	00115$
      00306D                        693 00102$:
                                    694 ;	SPI.c:48: data |= 0x01; // Last two bits: 01
      00306D 90 03 62         [24]  695 	mov	dptr,#_select_reg_bank_data_10001_72
      003070 74 01            [12]  696 	mov	a,#0x01
      003072 4F               [12]  697 	orl	a,r7
      003073 F0               [24]  698 	movx	@dptr,a
                                    699 ;	SPI.c:49: break;
                                    700 ;	SPI.c:50: case 2:
      003074 80 28            [24]  701 	sjmp	00115$
      003076                        702 00103$:
                                    703 ;	SPI.c:51: data |= 0x02; // Last two bits: 10
      003076 90 03 62         [24]  704 	mov	dptr,#_select_reg_bank_data_10001_72
      003079 74 02            [12]  705 	mov	a,#0x02
      00307B 4F               [12]  706 	orl	a,r7
      00307C F0               [24]  707 	movx	@dptr,a
                                    708 ;	SPI.c:52: break;
                                    709 ;	SPI.c:53: case 3:
      00307D 80 1F            [24]  710 	sjmp	00115$
      00307F                        711 00104$:
                                    712 ;	SPI.c:54: data |= 0x03; // Last two bits: 11
      00307F 90 03 62         [24]  713 	mov	dptr,#_select_reg_bank_data_10001_72
      003082 74 03            [12]  714 	mov	a,#0x03
      003084 4F               [12]  715 	orl	a,r7
      003085 F0               [24]  716 	movx	@dptr,a
                                    717 ;	SPI.c:55: break;
                                    718 ;	SPI.c:56: default:
      003086 80 16            [24]  719 	sjmp	00115$
      003088                        720 00105$:
                                    721 ;	SPI.c:57: printf("wrong bank");
      003088 74 CF            [12]  722 	mov	a,#___str_0
      00308A C0 E0            [24]  723 	push	acc
      00308C 74 4A            [12]  724 	mov	a,#(___str_0 >> 8)
      00308E C0 E0            [24]  725 	push	acc
      003090 74 80            [12]  726 	mov	a,#0x80
      003092 C0 E0            [24]  727 	push	acc
      003094 12 3A E1         [24]  728 	lcall	_printf
      003097 15 81            [12]  729 	dec	sp
      003099 15 81            [12]  730 	dec	sp
      00309B 15 81            [12]  731 	dec	sp
                                    732 ;	SPI.c:58: return;
                                    733 ;	SPI.c:61: for (int i = 0; i < 16; i++); // Delay
      00309D 22               [24]  734 	ret
      00309E                        735 00115$:
      00309E 7F 00            [12]  736 	mov	r7,#0x00
      0030A0                        737 00109$:
      0030A0 BF 10 00         [24]  738 	cjne	r7,#0x10,00134$
      0030A3                        739 00134$:
      0030A3 50 03            [24]  740 	jnc	00107$
      0030A5 0F               [12]  741 	inc	r7
      0030A6 80 F8            [24]  742 	sjmp	00109$
      0030A8                        743 00107$:
                                    744 ;	SPI.c:63: CS_LOW;
                                    745 ;	assignBit
      0030A8 C2 91            [12]  746 	clr	_P1_1
                                    747 ;	SPI.c:64: SPI_send(0x5F);
      0030AA 75 82 5F         [24]  748 	mov	dpl, #0x5f
      0030AD 12 31 27         [24]  749 	lcall	_SPI_send
                                    750 ;	SPI.c:65: SPI_send(data); // Send the modified data
      0030B0 90 03 62         [24]  751 	mov	dptr,#_select_reg_bank_data_10001_72
      0030B3 E0               [24]  752 	movx	a,@dptr
      0030B4 F5 82            [12]  753 	mov	dpl,a
      0030B6 12 31 27         [24]  754 	lcall	_SPI_send
                                    755 ;	SPI.c:66: CS_HIGH;
                                    756 ;	assignBit
      0030B9 D2 91            [12]  757 	setb	_P1_1
                                    758 ;	SPI.c:68: }
      0030BB 22               [24]  759 	ret
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
      0030BC                        772 _spi_control_write:
      0030BC E5 82            [12]  773 	mov	a,dpl
      0030BE 90 03 65         [24]  774 	mov	dptr,#_spi_control_write_reg_bank_10000_75
      0030C1 F0               [24]  775 	movx	@dptr,a
                                    776 ;	SPI.c:72: addr = addr + opcode; // Add the opcode to the address
      0030C2 90 03 63         [24]  777 	mov	dptr,#_spi_control_write_PARM_2
      0030C5 E0               [24]  778 	movx	a,@dptr
      0030C6 24 40            [12]  779 	add	a, #0x40
      0030C8 F0               [24]  780 	movx	@dptr,a
                                    781 ;	SPI.c:74: select_reg_bank(reg_bank); // Function to select the register bank
      0030C9 90 03 65         [24]  782 	mov	dptr,#_spi_control_write_reg_bank_10000_75
      0030CC E0               [24]  783 	movx	a,@dptr
      0030CD F5 82            [12]  784 	mov	dpl,a
      0030CF 12 30 37         [24]  785 	lcall	_select_reg_bank
                                    786 ;	SPI.c:77: CS_LOW;
                                    787 ;	assignBit
      0030D2 C2 91            [12]  788 	clr	_P1_1
                                    789 ;	SPI.c:80: SPI_send(addr);
      0030D4 90 03 63         [24]  790 	mov	dptr,#_spi_control_write_PARM_2
      0030D7 E0               [24]  791 	movx	a,@dptr
      0030D8 FF               [12]  792 	mov	r7,a
      0030D9 F5 82            [12]  793 	mov	dpl,a
      0030DB C0 07            [24]  794 	push	ar7
      0030DD 12 31 27         [24]  795 	lcall	_SPI_send
      0030E0 D0 07            [24]  796 	pop	ar7
                                    797 ;	SPI.c:83: SPI_send(data);
      0030E2 90 03 64         [24]  798 	mov	dptr,#_spi_control_write_PARM_3
      0030E5 E0               [24]  799 	movx	a,@dptr
      0030E6 FE               [12]  800 	mov	r6,a
      0030E7 F5 82            [12]  801 	mov	dpl,a
      0030E9 C0 07            [24]  802 	push	ar7
      0030EB C0 06            [24]  803 	push	ar6
      0030ED 12 31 27         [24]  804 	lcall	_SPI_send
      0030F0 D0 06            [24]  805 	pop	ar6
      0030F2 D0 07            [24]  806 	pop	ar7
                                    807 ;	SPI.c:86: CS_HIGH;
                                    808 ;	assignBit
      0030F4 D2 91            [12]  809 	setb	_P1_1
                                    810 ;	SPI.c:89: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      0030F6 7D 00            [12]  811 	mov	r5,#0x00
      0030F8 7C 00            [12]  812 	mov	r4,#0x00
      0030FA C0 06            [24]  813 	push	ar6
      0030FC C0 05            [24]  814 	push	ar5
      0030FE C0 07            [24]  815 	push	ar7
      003100 C0 04            [24]  816 	push	ar4
      003102 74 DA            [12]  817 	mov	a,#___str_1
      003104 C0 E0            [24]  818 	push	acc
      003106 74 4A            [12]  819 	mov	a,#(___str_1 >> 8)
      003108 C0 E0            [24]  820 	push	acc
      00310A 74 80            [12]  821 	mov	a,#0x80
      00310C C0 E0            [24]  822 	push	acc
      00310E 12 3A E1         [24]  823 	lcall	_printf
      003111 E5 81            [12]  824 	mov	a,sp
      003113 24 F9            [12]  825 	add	a,#0xf9
      003115 F5 81            [12]  826 	mov	sp,a
                                    827 ;	SPI.c:90: }
      003117 22               [24]  828 	ret
                                    829 ;------------------------------------------------------------
                                    830 ;Allocation info for local variables in function 'configure_SPI'
                                    831 ;------------------------------------------------------------
                                    832 ;	SPI.c:93: void configure_SPI(void)
                                    833 ;	-----------------------------------------
                                    834 ;	 function configure_SPI
                                    835 ;	-----------------------------------------
      003118                        836 _configure_SPI:
                                    837 ;	SPI.c:95: CS_PIN = 1;
                                    838 ;	assignBit
      003118 D2 91            [12]  839 	setb	_P1_1
                                    840 ;	SPI.c:96: SPCON = 0x00;
      00311A 75 C3 00         [24]  841 	mov	_SPCON,#0x00
                                    842 ;	SPI.c:97: SPCON |= SS_DISABLE;
      00311D 43 C3 20         [24]  843 	orl	_SPCON,#0x20
                                    844 ;	SPI.c:98: SPCON |= MASTER_MODE;
      003120 43 C3 10         [24]  845 	orl	_SPCON,#0x10
                                    846 ;	SPI.c:99: SPCON |= SPI_ENABLE;
      003123 43 C3 40         [24]  847 	orl	_SPCON,#0x40
                                    848 ;	SPI.c:100: }
      003126 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'SPI_send'
                                    852 ;------------------------------------------------------------
                                    853 ;data                      Allocated with name '_SPI_send_data_10000_79'
                                    854 ;------------------------------------------------------------
                                    855 ;	SPI.c:103: void SPI_send(uint8_t data)
                                    856 ;	-----------------------------------------
                                    857 ;	 function SPI_send
                                    858 ;	-----------------------------------------
      003127                        859 _SPI_send:
      003127 E5 82            [12]  860 	mov	a,dpl
      003129 90 03 66         [24]  861 	mov	dptr,#_SPI_send_data_10000_79
      00312C F0               [24]  862 	movx	@dptr,a
                                    863 ;	SPI.c:106: SPDAT = data;           // Config + MSB of data
      00312D E0               [24]  864 	movx	a,@dptr
      00312E F5 C5            [12]  865 	mov	_SPDAT,a
                                    866 ;	SPI.c:108: while (!(SPSTA & 0x80))
      003130                        867 00101$:
      003130 E5 C4            [12]  868 	mov	a,_SPSTA
      003132 30 E7 FB         [24]  869 	jnb	acc.7,00101$
                                    870 ;	SPI.c:113: }
      003135 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'enc_reset'
                                    874 ;------------------------------------------------------------
                                    875 ;	SPI.c:115: void enc_reset(void)
                                    876 ;	-----------------------------------------
                                    877 ;	 function enc_reset
                                    878 ;	-----------------------------------------
      003136                        879 _enc_reset:
                                    880 ;	SPI.c:117: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    881 ;	assignBit
      003136 C2 91            [12]  882 	clr	_P1_1
                                    883 ;	SPI.c:118: SPI_send(0xFF);            // Send reset command
      003138 75 82 FF         [24]  884 	mov	dpl, #0xff
      00313B 12 31 27         [24]  885 	lcall	_SPI_send
                                    886 ;	SPI.c:119: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    887 ;	assignBit
      00313E D2 91            [12]  888 	setb	_P1_1
                                    889 ;	SPI.c:120: }
      003140 22               [24]  890 	ret
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
      003141                        902 _eth_spi_read:
      003141 E5 82            [12]  903 	mov	a,dpl
      003143 90 03 68         [24]  904 	mov	dptr,#_eth_spi_read_addr_10000_84
      003146 F0               [24]  905 	movx	@dptr,a
                                    906 ;	SPI.c:124: if (addr > 0x1F) {
      003147 E0               [24]  907 	movx	a,@dptr
      003148 FF               [12]  908 	mov  r7,a
      003149 24 E0            [12]  909 	add	a,#0xff - 0x1f
      00314B 50 19            [24]  910 	jnc	00102$
                                    911 ;	SPI.c:125: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      00314D 74 FF            [12]  912 	mov	a,#___str_2
      00314F C0 E0            [24]  913 	push	acc
      003151 74 4A            [12]  914 	mov	a,#(___str_2 >> 8)
      003153 C0 E0            [24]  915 	push	acc
      003155 74 80            [12]  916 	mov	a,#0x80
      003157 C0 E0            [24]  917 	push	acc
      003159 12 3A E1         [24]  918 	lcall	_printf
      00315C 15 81            [12]  919 	dec	sp
      00315E 15 81            [12]  920 	dec	sp
      003160 15 81            [12]  921 	dec	sp
                                    922 ;	SPI.c:126: return 0;
      003162 75 82 00         [24]  923 	mov	dpl, #0x00
      003165 22               [24]  924 	ret
      003166                        925 00102$:
                                    926 ;	SPI.c:129: select_reg_bank(bank);     // Select the appropriate bank
      003166 90 03 67         [24]  927 	mov	dptr,#_eth_spi_read_PARM_2
      003169 E0               [24]  928 	movx	a,@dptr
      00316A F5 82            [12]  929 	mov	dpl,a
      00316C C0 07            [24]  930 	push	ar7
      00316E 12 30 37         [24]  931 	lcall	_select_reg_bank
      003171 D0 07            [24]  932 	pop	ar7
                                    933 ;	SPI.c:131: CS_LOW;                    // Pull CS low to start communication
                                    934 ;	assignBit
      003173 C2 91            [12]  935 	clr	_P1_1
                                    936 ;	SPI.c:132: SPI_send(addr);            // Send the address
      003175 8F 82            [24]  937 	mov	dpl, r7
      003177 C0 07            [24]  938 	push	ar7
      003179 12 31 27         [24]  939 	lcall	_SPI_send
                                    940 ;	SPI.c:133: uint8_t data = SPI_ReadByte(); // Read the data
      00317C 12 30 14         [24]  941 	lcall	_SPI_ReadByte
      00317F AE 82            [24]  942 	mov	r6, dpl
      003181 D0 07            [24]  943 	pop	ar7
                                    944 ;	SPI.c:134: CS_HIGH;                   // Pull CS high to end communication
                                    945 ;	assignBit
      003183 D2 91            [12]  946 	setb	_P1_1
                                    947 ;	SPI.c:137: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      003185 8E 04            [24]  948 	mov	ar4,r6
      003187 7D 00            [12]  949 	mov	r5,#0x00
      003189 7B 00            [12]  950 	mov	r3,#0x00
      00318B C0 06            [24]  951 	push	ar6
      00318D C0 04            [24]  952 	push	ar4
      00318F C0 05            [24]  953 	push	ar5
      003191 C0 07            [24]  954 	push	ar7
      003193 C0 03            [24]  955 	push	ar3
      003195 74 39            [12]  956 	mov	a,#___str_3
      003197 C0 E0            [24]  957 	push	acc
      003199 74 4B            [12]  958 	mov	a,#(___str_3 >> 8)
      00319B C0 E0            [24]  959 	push	acc
      00319D 74 80            [12]  960 	mov	a,#0x80
      00319F C0 E0            [24]  961 	push	acc
      0031A1 12 3A E1         [24]  962 	lcall	_printf
      0031A4 E5 81            [12]  963 	mov	a,sp
      0031A6 24 F9            [12]  964 	add	a,#0xf9
      0031A8 F5 81            [12]  965 	mov	sp,a
      0031AA D0 06            [24]  966 	pop	ar6
                                    967 ;	SPI.c:139: return data;
      0031AC 8E 82            [24]  968 	mov	dpl, r6
                                    969 ;	SPI.c:140: }
      0031AE 22               [24]  970 	ret
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
      0031AF                        981 _phy_spi_write:
      0031AF E5 82            [12]  982 	mov	a,dpl
      0031B1 90 03 6B         [24]  983 	mov	dptr,#_phy_spi_write_addr_10000_88
      0031B4 F0               [24]  984 	movx	@dptr,a
                                    985 ;	SPI.c:144: spi_control_write(2, 0x14, addr);                      // Write PHY address
      0031B5 E0               [24]  986 	movx	a,@dptr
      0031B6 FF               [12]  987 	mov	r7,a
      0031B7 90 03 63         [24]  988 	mov	dptr,#_spi_control_write_PARM_2
      0031BA 74 14            [12]  989 	mov	a,#0x14
      0031BC F0               [24]  990 	movx	@dptr,a
      0031BD 90 03 64         [24]  991 	mov	dptr,#_spi_control_write_PARM_3
      0031C0 EF               [12]  992 	mov	a,r7
      0031C1 F0               [24]  993 	movx	@dptr,a
      0031C2 75 82 02         [24]  994 	mov	dpl, #0x02
      0031C5 C0 07            [24]  995 	push	ar7
      0031C7 12 30 BC         [24]  996 	lcall	_spi_control_write
      0031CA D0 07            [24]  997 	pop	ar7
                                    998 ;	SPI.c:145: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      0031CC 90 03 69         [24]  999 	mov	dptr,#_phy_spi_write_PARM_2
      0031CF E0               [24] 1000 	movx	a,@dptr
      0031D0 FD               [12] 1001 	mov	r5,a
      0031D1 A3               [24] 1002 	inc	dptr
      0031D2 E0               [24] 1003 	movx	a,@dptr
      0031D3 FE               [12] 1004 	mov	r6,a
      0031D4 8D 04            [24] 1005 	mov	ar4,r5
      0031D6 90 03 63         [24] 1006 	mov	dptr,#_spi_control_write_PARM_2
      0031D9 74 16            [12] 1007 	mov	a,#0x16
      0031DB F0               [24] 1008 	movx	@dptr,a
      0031DC 90 03 64         [24] 1009 	mov	dptr,#_spi_control_write_PARM_3
      0031DF EC               [12] 1010 	mov	a,r4
      0031E0 F0               [24] 1011 	movx	@dptr,a
      0031E1 75 82 02         [24] 1012 	mov	dpl, #0x02
      0031E4 C0 07            [24] 1013 	push	ar7
      0031E6 C0 06            [24] 1014 	push	ar6
      0031E8 C0 05            [24] 1015 	push	ar5
      0031EA 12 30 BC         [24] 1016 	lcall	_spi_control_write
      0031ED D0 05            [24] 1017 	pop	ar5
      0031EF D0 06            [24] 1018 	pop	ar6
      0031F1 D0 07            [24] 1019 	pop	ar7
                                   1020 ;	SPI.c:146: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      0031F3 8E 04            [24] 1021 	mov	ar4,r6
      0031F5 90 03 63         [24] 1022 	mov	dptr,#_spi_control_write_PARM_2
      0031F8 74 17            [12] 1023 	mov	a,#0x17
      0031FA F0               [24] 1024 	movx	@dptr,a
      0031FB 90 03 64         [24] 1025 	mov	dptr,#_spi_control_write_PARM_3
      0031FE EC               [12] 1026 	mov	a,r4
      0031FF F0               [24] 1027 	movx	@dptr,a
      003200 75 82 02         [24] 1028 	mov	dpl, #0x02
      003203 C0 07            [24] 1029 	push	ar7
      003205 C0 06            [24] 1030 	push	ar6
      003207 C0 05            [24] 1031 	push	ar5
      003209 12 30 BC         [24] 1032 	lcall	_spi_control_write
      00320C D0 05            [24] 1033 	pop	ar5
      00320E D0 06            [24] 1034 	pop	ar6
      003210 D0 07            [24] 1035 	pop	ar7
                                   1036 ;	SPI.c:149: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003212 7C 00            [12] 1037 	mov	r4,#0x00
      003214 C0 05            [24] 1038 	push	ar5
      003216 C0 06            [24] 1039 	push	ar6
      003218 C0 07            [24] 1040 	push	ar7
      00321A C0 04            [24] 1041 	push	ar4
      00321C 74 5D            [12] 1042 	mov	a,#___str_4
      00321E C0 E0            [24] 1043 	push	acc
      003220 74 4B            [12] 1044 	mov	a,#(___str_4 >> 8)
      003222 C0 E0            [24] 1045 	push	acc
      003224 74 80            [12] 1046 	mov	a,#0x80
      003226 C0 E0            [24] 1047 	push	acc
      003228 12 3A E1         [24] 1048 	lcall	_printf
      00322B E5 81            [12] 1049 	mov	a,sp
      00322D 24 F9            [12] 1050 	add	a,#0xf9
      00322F F5 81            [12] 1051 	mov	sp,a
                                   1052 ;	SPI.c:150: }
      003231 22               [24] 1053 	ret
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
      003232                       1065 _mac_spi_read:
      003232 E5 82            [12] 1066 	mov	a,dpl
      003234 90 03 6D         [24] 1067 	mov	dptr,#_mac_spi_read_addr_10000_90
      003237 F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	SPI.c:154: if (addr > 0x1F) {
      003238 E0               [24] 1070 	movx	a,@dptr
      003239 FF               [12] 1071 	mov  r7,a
      00323A 24 E0            [12] 1072 	add	a,#0xff - 0x1f
      00323C 50 19            [24] 1073 	jnc	00102$
                                   1074 ;	SPI.c:155: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      00323E 74 FF            [12] 1075 	mov	a,#___str_2
      003240 C0 E0            [24] 1076 	push	acc
      003242 74 4A            [12] 1077 	mov	a,#(___str_2 >> 8)
      003244 C0 E0            [24] 1078 	push	acc
      003246 74 80            [12] 1079 	mov	a,#0x80
      003248 C0 E0            [24] 1080 	push	acc
      00324A 12 3A E1         [24] 1081 	lcall	_printf
      00324D 15 81            [12] 1082 	dec	sp
      00324F 15 81            [12] 1083 	dec	sp
      003251 15 81            [12] 1084 	dec	sp
                                   1085 ;	SPI.c:156: return 0; // Return 0 if address is invalid
      003253 75 82 00         [24] 1086 	mov	dpl, #0x00
      003256 22               [24] 1087 	ret
      003257                       1088 00102$:
                                   1089 ;	SPI.c:159: select_reg_bank(bank); // Select the appropriate register bank
      003257 90 03 6C         [24] 1090 	mov	dptr,#_mac_spi_read_PARM_2
      00325A E0               [24] 1091 	movx	a,@dptr
      00325B F5 82            [12] 1092 	mov	dpl,a
      00325D C0 07            [24] 1093 	push	ar7
      00325F 12 30 37         [24] 1094 	lcall	_select_reg_bank
      003262 D0 07            [24] 1095 	pop	ar7
                                   1096 ;	SPI.c:162: CS_LOW;
                                   1097 ;	assignBit
      003264 C2 91            [12] 1098 	clr	_P1_1
                                   1099 ;	SPI.c:165: SPI_send(addr);
      003266 8F 82            [24] 1100 	mov	dpl, r7
      003268 C0 07            [24] 1101 	push	ar7
      00326A 12 31 27         [24] 1102 	lcall	_SPI_send
                                   1103 ;	SPI.c:168: uint8_t data = SPI_ReadByte();
      00326D 12 30 14         [24] 1104 	lcall	_SPI_ReadByte
      003270 AE 82            [24] 1105 	mov	r6, dpl
      003272 D0 07            [24] 1106 	pop	ar7
                                   1107 ;	SPI.c:171: CS_HIGH;
                                   1108 ;	assignBit
      003274 D2 91            [12] 1109 	setb	_P1_1
                                   1110 ;	SPI.c:174: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      003276 8E 04            [24] 1111 	mov	ar4,r6
      003278 7D 00            [12] 1112 	mov	r5,#0x00
      00327A 7B 00            [12] 1113 	mov	r3,#0x00
      00327C C0 06            [24] 1114 	push	ar6
      00327E C0 04            [24] 1115 	push	ar4
      003280 C0 05            [24] 1116 	push	ar5
      003282 C0 07            [24] 1117 	push	ar7
      003284 C0 03            [24] 1118 	push	ar3
      003286 74 86            [12] 1119 	mov	a,#___str_5
      003288 C0 E0            [24] 1120 	push	acc
      00328A 74 4B            [12] 1121 	mov	a,#(___str_5 >> 8)
      00328C C0 E0            [24] 1122 	push	acc
      00328E 74 80            [12] 1123 	mov	a,#0x80
      003290 C0 E0            [24] 1124 	push	acc
      003292 12 3A E1         [24] 1125 	lcall	_printf
      003295 E5 81            [12] 1126 	mov	a,sp
      003297 24 F9            [12] 1127 	add	a,#0xf9
      003299 F5 81            [12] 1128 	mov	sp,a
      00329B D0 06            [24] 1129 	pop	ar6
                                   1130 ;	SPI.c:176: return data;
      00329D 8E 82            [24] 1131 	mov	dpl, r6
                                   1132 ;	SPI.c:177: }
      00329F 22               [24] 1133 	ret
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
      0032A0                       1146 _phy_spi_read:
      0032A0 E5 82            [12] 1147 	mov	a,dpl
      0032A2 90 03 6E         [24] 1148 	mov	dptr,#_phy_spi_read_addr_10000_94
      0032A5 F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	SPI.c:182: spi_control_write(2, 0x14, addr);     // Write PHY address
      0032A6 E0               [24] 1151 	movx	a,@dptr
      0032A7 FF               [12] 1152 	mov	r7,a
      0032A8 90 03 63         [24] 1153 	mov	dptr,#_spi_control_write_PARM_2
      0032AB 74 14            [12] 1154 	mov	a,#0x14
      0032AD F0               [24] 1155 	movx	@dptr,a
      0032AE 90 03 64         [24] 1156 	mov	dptr,#_spi_control_write_PARM_3
      0032B1 EF               [12] 1157 	mov	a,r7
      0032B2 F0               [24] 1158 	movx	@dptr,a
      0032B3 75 82 02         [24] 1159 	mov	dpl, #0x02
      0032B6 C0 07            [24] 1160 	push	ar7
      0032B8 12 30 BC         [24] 1161 	lcall	_spi_control_write
      0032BB D0 07            [24] 1162 	pop	ar7
                                   1163 ;	SPI.c:183: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      0032BD 90 03 63         [24] 1164 	mov	dptr,#_spi_control_write_PARM_2
      0032C0 74 12            [12] 1165 	mov	a,#0x12
      0032C2 F0               [24] 1166 	movx	@dptr,a
      0032C3 90 03 64         [24] 1167 	mov	dptr,#_spi_control_write_PARM_3
      0032C6 74 01            [12] 1168 	mov	a,#0x01
      0032C8 F0               [24] 1169 	movx	@dptr,a
      0032C9 75 82 02         [24] 1170 	mov	dpl, #0x02
      0032CC C0 07            [24] 1171 	push	ar7
      0032CE 12 30 BC         [24] 1172 	lcall	_spi_control_write
                                   1173 ;	SPI.c:185: busy_wait();                          // Wait for the read to complete
      0032D1 12 33 4D         [24] 1174 	lcall	_busy_wait
      0032D4 D0 07            [24] 1175 	pop	ar7
                                   1176 ;	SPI.c:187: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      0032D6 90 03 63         [24] 1177 	mov	dptr,#_spi_control_write_PARM_2
      0032D9 74 12            [12] 1178 	mov	a,#0x12
      0032DB F0               [24] 1179 	movx	@dptr,a
      0032DC 90 03 64         [24] 1180 	mov	dptr,#_spi_control_write_PARM_3
      0032DF E4               [12] 1181 	clr	a
      0032E0 F0               [24] 1182 	movx	@dptr,a
      0032E1 75 82 02         [24] 1183 	mov	dpl, #0x02
      0032E4 C0 07            [24] 1184 	push	ar7
      0032E6 12 30 BC         [24] 1185 	lcall	_spi_control_write
      0032E9 D0 07            [24] 1186 	pop	ar7
                                   1187 ;	SPI.c:189: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      0032EB 90 03 6C         [24] 1188 	mov	dptr,#_mac_spi_read_PARM_2
      0032EE 74 02            [12] 1189 	mov	a,#0x02
      0032F0 F0               [24] 1190 	movx	@dptr,a
      0032F1 75 82 18         [24] 1191 	mov	dpl, #0x18
      0032F4 C0 07            [24] 1192 	push	ar7
      0032F6 12 32 32         [24] 1193 	lcall	_mac_spi_read
      0032F9 AE 82            [24] 1194 	mov	r6, dpl
      0032FB D0 07            [24] 1195 	pop	ar7
      0032FD 7D 00            [12] 1196 	mov	r5,#0x00
                                   1197 ;	SPI.c:190: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      0032FF 90 03 6C         [24] 1198 	mov	dptr,#_mac_spi_read_PARM_2
      003302 74 02            [12] 1199 	mov	a,#0x02
      003304 F0               [24] 1200 	movx	@dptr,a
      003305 75 82 19         [24] 1201 	mov	dpl, #0x19
      003308 C0 07            [24] 1202 	push	ar7
      00330A C0 06            [24] 1203 	push	ar6
      00330C C0 05            [24] 1204 	push	ar5
      00330E 12 32 32         [24] 1205 	lcall	_mac_spi_read
      003311 AC 82            [24] 1206 	mov	r4, dpl
      003313 D0 05            [24] 1207 	pop	ar5
      003315 D0 06            [24] 1208 	pop	ar6
      003317 D0 07            [24] 1209 	pop	ar7
                                   1210 ;	SPI.c:192: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      003319 8C 03            [24] 1211 	mov	ar3,r4
      00331B E4               [12] 1212 	clr	a
      00331C 42 06            [12] 1213 	orl	ar6,a
      00331E EB               [12] 1214 	mov	a,r3
      00331F 42 05            [12] 1215 	orl	ar5,a
                                   1216 ;	SPI.c:195: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003321 7C 00            [12] 1217 	mov	r4,#0x00
      003323 C0 06            [24] 1218 	push	ar6
      003325 C0 05            [24] 1219 	push	ar5
      003327 C0 06            [24] 1220 	push	ar6
      003329 C0 05            [24] 1221 	push	ar5
      00332B C0 07            [24] 1222 	push	ar7
      00332D C0 04            [24] 1223 	push	ar4
      00332F 74 A9            [12] 1224 	mov	a,#___str_6
      003331 C0 E0            [24] 1225 	push	acc
      003333 74 4B            [12] 1226 	mov	a,#(___str_6 >> 8)
      003335 C0 E0            [24] 1227 	push	acc
      003337 74 80            [12] 1228 	mov	a,#0x80
      003339 C0 E0            [24] 1229 	push	acc
      00333B 12 3A E1         [24] 1230 	lcall	_printf
      00333E E5 81            [12] 1231 	mov	a,sp
      003340 24 F9            [12] 1232 	add	a,#0xf9
      003342 F5 81            [12] 1233 	mov	sp,a
      003344 D0 05            [24] 1234 	pop	ar5
      003346 D0 06            [24] 1235 	pop	ar6
                                   1236 ;	SPI.c:197: return data;        // Combine MSB and LSB
      003348 8E 82            [24] 1237 	mov	dpl, r6
      00334A 8D 83            [24] 1238 	mov	dph, r5
                                   1239 ;	SPI.c:198: }
      00334C 22               [24] 1240 	ret
                                   1241 ;------------------------------------------------------------
                                   1242 ;Allocation info for local variables in function 'busy_wait'
                                   1243 ;------------------------------------------------------------
                                   1244 ;data                      Allocated with name '_busy_wait_data_10000_98'
                                   1245 ;------------------------------------------------------------
                                   1246 ;	SPI.c:200: void busy_wait(void)
                                   1247 ;	-----------------------------------------
                                   1248 ;	 function busy_wait
                                   1249 ;	-----------------------------------------
      00334D                       1250 _busy_wait:
                                   1251 ;	SPI.c:202: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      00334D 90 03 6C         [24] 1252 	mov	dptr,#_mac_spi_read_PARM_2
      003350 74 03            [12] 1253 	mov	a,#0x03
      003352 F0               [24] 1254 	movx	@dptr,a
      003353 75 82 0A         [24] 1255 	mov	dpl, #0x0a
      003356 12 32 32         [24] 1256 	lcall	_mac_spi_read
      003359 E5 82            [12] 1257 	mov	a, dpl
      00335B 90 03 6F         [24] 1258 	mov	dptr,#_busy_wait_data_10000_98
      00335E F0               [24] 1259 	movx	@dptr,a
                                   1260 ;	SPI.c:203: while (data & 0x01)
      00335F                       1261 00101$:
      00335F 90 03 6F         [24] 1262 	mov	dptr,#_busy_wait_data_10000_98
      003362 E0               [24] 1263 	movx	a,@dptr
      003363 30 E0 14         [24] 1264 	jnb	acc.0,00104$
                                   1265 ;	SPI.c:205: data = mac_spi_read(0x0A, 3);
      003366 90 03 6C         [24] 1266 	mov	dptr,#_mac_spi_read_PARM_2
      003369 74 03            [12] 1267 	mov	a,#0x03
      00336B F0               [24] 1268 	movx	@dptr,a
      00336C 75 82 0A         [24] 1269 	mov	dpl, #0x0a
      00336F 12 32 32         [24] 1270 	lcall	_mac_spi_read
      003372 E5 82            [12] 1271 	mov	a, dpl
      003374 90 03 6F         [24] 1272 	mov	dptr,#_busy_wait_data_10000_98
      003377 F0               [24] 1273 	movx	@dptr,a
      003378 80 E5            [24] 1274 	sjmp	00101$
      00337A                       1275 00104$:
                                   1276 ;	SPI.c:207: }
      00337A 22               [24] 1277 	ret
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
      00337B                       1290 _buffer_init:
      00337B AF 83            [24] 1291 	mov	r7,dph
      00337D E5 82            [12] 1292 	mov	a,dpl
      00337F 90 03 72         [24] 1293 	mov	dptr,#_buffer_init_start_address_10000_100
      003382 F0               [24] 1294 	movx	@dptr,a
      003383 EF               [12] 1295 	mov	a,r7
      003384 A3               [24] 1296 	inc	dptr
      003385 F0               [24] 1297 	movx	@dptr,a
                                   1298 ;	SPI.c:211: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      003386 90 03 72         [24] 1299 	mov	dptr,#_buffer_init_start_address_10000_100
      003389 E0               [24] 1300 	movx	a,@dptr
      00338A FE               [12] 1301 	mov	r6,a
      00338B A3               [24] 1302 	inc	dptr
      00338C E0               [24] 1303 	movx	a,@dptr
      00338D FF               [12] 1304 	mov	r7,a
      00338E 8E 04            [24] 1305 	mov	ar4,r6
      003390 8F 05            [24] 1306 	mov	ar5,r7
      003392 C3               [12] 1307 	clr	c
      003393 74 FF            [12] 1308 	mov	a,#0xff
      003395 9C               [12] 1309 	subb	a,r4
      003396 74 1F            [12] 1310 	mov	a,#0x1f
      003398 9D               [12] 1311 	subb	a,r5
      003399 40 17            [24] 1312 	jc	00101$
      00339B 90 03 70         [24] 1313 	mov	dptr,#_buffer_init_PARM_2
      00339E E0               [24] 1314 	movx	a,@dptr
      00339F FA               [12] 1315 	mov	r2,a
      0033A0 A3               [24] 1316 	inc	dptr
      0033A1 E0               [24] 1317 	movx	a,@dptr
      0033A2 FB               [12] 1318 	mov	r3,a
      0033A3 EA               [12] 1319 	mov	a,r2
      0033A4 2E               [12] 1320 	add	a, r6
      0033A5 F8               [12] 1321 	mov	r0,a
      0033A6 EB               [12] 1322 	mov	a,r3
      0033A7 3F               [12] 1323 	addc	a, r7
      0033A8 F9               [12] 1324 	mov	r1,a
      0033A9 C3               [12] 1325 	clr	c
      0033AA 74 FF            [12] 1326 	mov	a,#0xff
      0033AC 98               [12] 1327 	subb	a,r0
      0033AD 74 1F            [12] 1328 	mov	a,#0x1f
      0033AF 99               [12] 1329 	subb	a,r1
      0033B0 50 2A            [24] 1330 	jnc	00102$
      0033B2                       1331 00101$:
                                   1332 ;	SPI.c:212: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      0033B2 90 03 70         [24] 1333 	mov	dptr,#_buffer_init_PARM_2
      0033B5 E0               [24] 1334 	movx	a,@dptr
      0033B6 C0 E0            [24] 1335 	push	acc
      0033B8 A3               [24] 1336 	inc	dptr
      0033B9 E0               [24] 1337 	movx	a,@dptr
      0033BA C0 E0            [24] 1338 	push	acc
      0033BC 90 03 72         [24] 1339 	mov	dptr,#_buffer_init_start_address_10000_100
      0033BF E0               [24] 1340 	movx	a,@dptr
      0033C0 C0 E0            [24] 1341 	push	acc
      0033C2 A3               [24] 1342 	inc	dptr
      0033C3 E0               [24] 1343 	movx	a,@dptr
      0033C4 C0 E0            [24] 1344 	push	acc
      0033C6 74 D1            [12] 1345 	mov	a,#___str_7
      0033C8 C0 E0            [24] 1346 	push	acc
      0033CA 74 4B            [12] 1347 	mov	a,#(___str_7 >> 8)
      0033CC C0 E0            [24] 1348 	push	acc
      0033CE 74 80            [12] 1349 	mov	a,#0x80
      0033D0 C0 E0            [24] 1350 	push	acc
      0033D2 12 3A E1         [24] 1351 	lcall	_printf
      0033D5 E5 81            [12] 1352 	mov	a,sp
      0033D7 24 F9            [12] 1353 	add	a,#0xf9
      0033D9 F5 81            [12] 1354 	mov	sp,a
                                   1355 ;	SPI.c:213: return;
      0033DB 22               [24] 1356 	ret
      0033DC                       1357 00102$:
                                   1358 ;	SPI.c:217: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      0033DC 53 04 FE         [24] 1359 	anl	ar4,#0xfe
                                   1360 ;	SPI.c:218: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      0033DF EA               [12] 1361 	mov	a,r2
      0033E0 2E               [12] 1362 	add	a, r6
      0033E1 FE               [12] 1363 	mov	r6,a
      0033E2 EB               [12] 1364 	mov	a,r3
      0033E3 3F               [12] 1365 	addc	a, r7
      0033E4 FF               [12] 1366 	mov	r7,a
      0033E5 1E               [12] 1367 	dec	r6
      0033E6 BE FF 01         [24] 1368 	cjne	r6,#0xff,00114$
      0033E9 1F               [12] 1369 	dec	r7
      0033EA                       1370 00114$:
      0033EA 53 06 FE         [24] 1371 	anl	ar6,#0xfe
                                   1372 ;	SPI.c:221: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      0033ED 8D 03            [24] 1373 	mov	ar3,r5
      0033EF 90 03 63         [24] 1374 	mov	dptr,#_spi_control_write_PARM_2
      0033F2 74 08            [12] 1375 	mov	a,#0x08
      0033F4 F0               [24] 1376 	movx	@dptr,a
      0033F5 90 03 64         [24] 1377 	mov	dptr,#_spi_control_write_PARM_3
      0033F8 EB               [12] 1378 	mov	a,r3
      0033F9 F0               [24] 1379 	movx	@dptr,a
      0033FA 75 82 00         [24] 1380 	mov	dpl, #0x00
      0033FD C0 07            [24] 1381 	push	ar7
      0033FF C0 06            [24] 1382 	push	ar6
      003401 C0 05            [24] 1383 	push	ar5
      003403 C0 04            [24] 1384 	push	ar4
      003405 12 30 BC         [24] 1385 	lcall	_spi_control_write
      003408 D0 04            [24] 1386 	pop	ar4
      00340A D0 05            [24] 1387 	pop	ar5
      00340C D0 06            [24] 1388 	pop	ar6
      00340E D0 07            [24] 1389 	pop	ar7
                                   1390 ;	SPI.c:222: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003410 8C 03            [24] 1391 	mov	ar3,r4
      003412 90 03 63         [24] 1392 	mov	dptr,#_spi_control_write_PARM_2
      003415 74 09            [12] 1393 	mov	a,#0x09
      003417 F0               [24] 1394 	movx	@dptr,a
      003418 90 03 64         [24] 1395 	mov	dptr,#_spi_control_write_PARM_3
      00341B EB               [12] 1396 	mov	a,r3
      00341C F0               [24] 1397 	movx	@dptr,a
      00341D 75 82 00         [24] 1398 	mov	dpl, #0x00
      003420 C0 07            [24] 1399 	push	ar7
      003422 C0 06            [24] 1400 	push	ar6
      003424 C0 05            [24] 1401 	push	ar5
      003426 C0 04            [24] 1402 	push	ar4
      003428 12 30 BC         [24] 1403 	lcall	_spi_control_write
      00342B D0 04            [24] 1404 	pop	ar4
      00342D D0 05            [24] 1405 	pop	ar5
      00342F D0 06            [24] 1406 	pop	ar6
      003431 D0 07            [24] 1407 	pop	ar7
                                   1408 ;	SPI.c:225: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003433 8F 03            [24] 1409 	mov	ar3,r7
      003435 90 03 63         [24] 1410 	mov	dptr,#_spi_control_write_PARM_2
      003438 74 0A            [12] 1411 	mov	a,#0x0a
      00343A F0               [24] 1412 	movx	@dptr,a
      00343B 90 03 64         [24] 1413 	mov	dptr,#_spi_control_write_PARM_3
      00343E EB               [12] 1414 	mov	a,r3
      00343F F0               [24] 1415 	movx	@dptr,a
      003440 75 82 00         [24] 1416 	mov	dpl, #0x00
      003443 C0 07            [24] 1417 	push	ar7
      003445 C0 06            [24] 1418 	push	ar6
      003447 C0 05            [24] 1419 	push	ar5
      003449 C0 04            [24] 1420 	push	ar4
      00344B 12 30 BC         [24] 1421 	lcall	_spi_control_write
      00344E D0 04            [24] 1422 	pop	ar4
      003450 D0 05            [24] 1423 	pop	ar5
      003452 D0 06            [24] 1424 	pop	ar6
      003454 D0 07            [24] 1425 	pop	ar7
                                   1426 ;	SPI.c:226: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      003456 8E 03            [24] 1427 	mov	ar3,r6
      003458 90 03 63         [24] 1428 	mov	dptr,#_spi_control_write_PARM_2
      00345B 74 0B            [12] 1429 	mov	a,#0x0b
      00345D F0               [24] 1430 	movx	@dptr,a
      00345E 90 03 64         [24] 1431 	mov	dptr,#_spi_control_write_PARM_3
      003461 EB               [12] 1432 	mov	a,r3
      003462 F0               [24] 1433 	movx	@dptr,a
      003463 75 82 00         [24] 1434 	mov	dpl, #0x00
      003466 C0 07            [24] 1435 	push	ar7
      003468 C0 06            [24] 1436 	push	ar6
      00346A C0 05            [24] 1437 	push	ar5
      00346C C0 04            [24] 1438 	push	ar4
      00346E 12 30 BC         [24] 1439 	lcall	_spi_control_write
      003471 D0 04            [24] 1440 	pop	ar4
      003473 D0 05            [24] 1441 	pop	ar5
      003475 D0 06            [24] 1442 	pop	ar6
      003477 D0 07            [24] 1443 	pop	ar7
                                   1444 ;	SPI.c:228: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      003479 C0 06            [24] 1445 	push	ar6
      00347B C0 07            [24] 1446 	push	ar7
      00347D C0 04            [24] 1447 	push	ar4
      00347F C0 05            [24] 1448 	push	ar5
      003481 74 0F            [12] 1449 	mov	a,#___str_8
      003483 C0 E0            [24] 1450 	push	acc
      003485 74 4C            [12] 1451 	mov	a,#(___str_8 >> 8)
      003487 C0 E0            [24] 1452 	push	acc
      003489 74 80            [12] 1453 	mov	a,#0x80
      00348B C0 E0            [24] 1454 	push	acc
      00348D 12 3A E1         [24] 1455 	lcall	_printf
      003490 E5 81            [12] 1456 	mov	a,sp
      003492 24 F9            [12] 1457 	add	a,#0xf9
      003494 F5 81            [12] 1458 	mov	sp,a
                                   1459 ;	SPI.c:229: }
      003496 22               [24] 1460 	ret
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
      003497                       1476 _spi_buffer_read:
      003497 AF 83            [24] 1477 	mov	r7,dph
      003499 E5 82            [12] 1478 	mov	a,dpl
      00349B 90 03 79         [24] 1479 	mov	dptr,#_spi_buffer_read_num_bytes_10000_104
      00349E F0               [24] 1480 	movx	@dptr,a
      00349F EF               [12] 1481 	mov	a,r7
      0034A0 A3               [24] 1482 	inc	dptr
      0034A1 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	SPI.c:234: if (num_bytes < 1) {
      0034A2 90 03 79         [24] 1485 	mov	dptr,#_spi_buffer_read_num_bytes_10000_104
      0034A5 E0               [24] 1486 	movx	a,@dptr
      0034A6 FE               [12] 1487 	mov	r6,a
      0034A7 A3               [24] 1488 	inc	dptr
      0034A8 E0               [24] 1489 	movx	a,@dptr
      0034A9 FF               [12] 1490 	mov	r7,a
      0034AA C3               [12] 1491 	clr	c
      0034AB EE               [12] 1492 	mov	a,r6
      0034AC 94 01            [12] 1493 	subb	a,#0x01
      0034AE EF               [12] 1494 	mov	a,r7
      0034AF 64 80            [12] 1495 	xrl	a,#0x80
      0034B1 94 80            [12] 1496 	subb	a,#0x80
      0034B3 50 1A            [24] 1497 	jnc	00102$
                                   1498 ;	SPI.c:235: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      0034B5 C0 06            [24] 1499 	push	ar6
      0034B7 C0 07            [24] 1500 	push	ar7
      0034B9 74 40            [12] 1501 	mov	a,#___str_9
      0034BB C0 E0            [24] 1502 	push	acc
      0034BD 74 4C            [12] 1503 	mov	a,#(___str_9 >> 8)
      0034BF C0 E0            [24] 1504 	push	acc
      0034C1 74 80            [12] 1505 	mov	a,#0x80
      0034C3 C0 E0            [24] 1506 	push	acc
      0034C5 12 3A E1         [24] 1507 	lcall	_printf
      0034C8 E5 81            [12] 1508 	mov	a,sp
      0034CA 24 FB            [12] 1509 	add	a,#0xfb
      0034CC F5 81            [12] 1510 	mov	sp,a
                                   1511 ;	SPI.c:236: return;
      0034CE 22               [24] 1512 	ret
      0034CF                       1513 00102$:
                                   1514 ;	SPI.c:238: if (start_address > 0x1FFF) {
      0034CF 90 03 74         [24] 1515 	mov	dptr,#_spi_buffer_read_PARM_2
      0034D2 E0               [24] 1516 	movx	a,@dptr
      0034D3 FC               [12] 1517 	mov	r4,a
      0034D4 A3               [24] 1518 	inc	dptr
      0034D5 E0               [24] 1519 	movx	a,@dptr
      0034D6 FD               [12] 1520 	mov	r5,a
      0034D7 8C 02            [24] 1521 	mov	ar2,r4
      0034D9 8D 03            [24] 1522 	mov	ar3,r5
      0034DB C3               [12] 1523 	clr	c
      0034DC 74 FF            [12] 1524 	mov	a,#0xff
      0034DE 9A               [12] 1525 	subb	a,r2
      0034DF 74 1F            [12] 1526 	mov	a,#0x1f
      0034E1 9B               [12] 1527 	subb	a,r3
      0034E2 50 1A            [24] 1528 	jnc	00104$
                                   1529 ;	SPI.c:239: printf("\n\rInvalid address: %04X\n\r", start_address);
      0034E4 C0 04            [24] 1530 	push	ar4
      0034E6 C0 05            [24] 1531 	push	ar5
      0034E8 74 60            [12] 1532 	mov	a,#___str_10
      0034EA C0 E0            [24] 1533 	push	acc
      0034EC 74 4C            [12] 1534 	mov	a,#(___str_10 >> 8)
      0034EE C0 E0            [24] 1535 	push	acc
      0034F0 74 80            [12] 1536 	mov	a,#0x80
      0034F2 C0 E0            [24] 1537 	push	acc
      0034F4 12 3A E1         [24] 1538 	lcall	_printf
      0034F7 E5 81            [12] 1539 	mov	a,sp
      0034F9 24 FB            [12] 1540 	add	a,#0xfb
      0034FB F5 81            [12] 1541 	mov	sp,a
                                   1542 ;	SPI.c:240: return;
      0034FD 22               [24] 1543 	ret
      0034FE                       1544 00104$:
                                   1545 ;	SPI.c:243: if (num_bytes > 1) {
      0034FE C3               [12] 1546 	clr	c
      0034FF 74 01            [12] 1547 	mov	a,#0x01
      003501 9E               [12] 1548 	subb	a,r6
      003502 74 80            [12] 1549 	mov	a,#(0x00 ^ 0x80)
      003504 8F F0            [24] 1550 	mov	b,r7
      003506 63 F0 80         [24] 1551 	xrl	b,#0x80
      003509 95 F0            [12] 1552 	subb	a,b
      00350B 50 0B            [24] 1553 	jnc	00106$
                                   1554 ;	SPI.c:244: spi_set_autoinc();
      00350D C0 05            [24] 1555 	push	ar5
      00350F C0 04            [24] 1556 	push	ar4
      003511 12 30 26         [24] 1557 	lcall	_spi_set_autoinc
      003514 D0 04            [24] 1558 	pop	ar4
      003516 D0 05            [24] 1559 	pop	ar5
      003518                       1560 00106$:
                                   1561 ;	SPI.c:248: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      003518 8D 07            [24] 1562 	mov	ar7,r5
                                   1563 ;	SPI.c:249: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      00351A 8C 06            [24] 1564 	mov	ar6,r4
                                   1565 ;	SPI.c:251: spi_control_write(0, 0x01, higher_byte); // High byte
      00351C 90 03 63         [24] 1566 	mov	dptr,#_spi_control_write_PARM_2
      00351F 74 01            [12] 1567 	mov	a,#0x01
      003521 F0               [24] 1568 	movx	@dptr,a
      003522 90 03 64         [24] 1569 	mov	dptr,#_spi_control_write_PARM_3
      003525 EF               [12] 1570 	mov	a,r7
      003526 F0               [24] 1571 	movx	@dptr,a
      003527 75 82 00         [24] 1572 	mov	dpl, #0x00
      00352A C0 06            [24] 1573 	push	ar6
      00352C C0 05            [24] 1574 	push	ar5
      00352E C0 04            [24] 1575 	push	ar4
      003530 12 30 BC         [24] 1576 	lcall	_spi_control_write
      003533 D0 04            [24] 1577 	pop	ar4
      003535 D0 05            [24] 1578 	pop	ar5
      003537 D0 06            [24] 1579 	pop	ar6
                                   1580 ;	SPI.c:252: spi_control_write(0, 0x00, lower_byte); // Low byte
      003539 90 03 63         [24] 1581 	mov	dptr,#_spi_control_write_PARM_2
      00353C E4               [12] 1582 	clr	a
      00353D F0               [24] 1583 	movx	@dptr,a
      00353E 90 03 64         [24] 1584 	mov	dptr,#_spi_control_write_PARM_3
      003541 EE               [12] 1585 	mov	a,r6
      003542 F0               [24] 1586 	movx	@dptr,a
      003543 75 82 00         [24] 1587 	mov	dpl, #0x00
      003546 C0 05            [24] 1588 	push	ar5
      003548 C0 04            [24] 1589 	push	ar4
      00354A 12 30 BC         [24] 1590 	lcall	_spi_control_write
                                   1591 ;	SPI.c:255: CS_LOW; // Pull CS Low
                                   1592 ;	assignBit
      00354D C2 91            [12] 1593 	clr	_P1_1
                                   1594 ;	SPI.c:256: SPI_send(opcode); // Send opcode
      00354F 75 82 3A         [24] 1595 	mov	dpl, #0x3a
      003552 12 31 27         [24] 1596 	lcall	_SPI_send
      003555 D0 04            [24] 1597 	pop	ar4
      003557 D0 05            [24] 1598 	pop	ar5
                                   1599 ;	SPI.c:259: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      003559 90 03 79         [24] 1600 	mov	dptr,#_spi_buffer_read_num_bytes_10000_104
      00355C E0               [24] 1601 	movx	a,@dptr
      00355D FE               [12] 1602 	mov	r6,a
      00355E A3               [24] 1603 	inc	dptr
      00355F E0               [24] 1604 	movx	a,@dptr
      003560 FF               [12] 1605 	mov	r7,a
      003561 C0 07            [24] 1606 	push	ar7
      003563 C0 06            [24] 1607 	push	ar6
      003565 C0 04            [24] 1608 	push	ar4
      003567 C0 05            [24] 1609 	push	ar5
      003569 C0 06            [24] 1610 	push	ar6
      00356B C0 07            [24] 1611 	push	ar7
      00356D 74 7A            [12] 1612 	mov	a,#___str_11
      00356F C0 E0            [24] 1613 	push	acc
      003571 74 4C            [12] 1614 	mov	a,#(___str_11 >> 8)
      003573 C0 E0            [24] 1615 	push	acc
      003575 74 80            [12] 1616 	mov	a,#0x80
      003577 C0 E0            [24] 1617 	push	acc
      003579 12 3A E1         [24] 1618 	lcall	_printf
      00357C E5 81            [12] 1619 	mov	a,sp
      00357E 24 F9            [12] 1620 	add	a,#0xf9
      003580 F5 81            [12] 1621 	mov	sp,a
      003582 D0 06            [24] 1622 	pop	ar6
      003584 D0 07            [24] 1623 	pop	ar7
                                   1624 ;	SPI.c:260: for (int i = 0; i < num_bytes; i++) {
      003586 90 03 7B         [24] 1625 	mov	dptr,#_spi_buffer_read_i_20002_111
      003589 E4               [12] 1626 	clr	a
      00358A F0               [24] 1627 	movx	@dptr,a
      00358B A3               [24] 1628 	inc	dptr
      00358C F0               [24] 1629 	movx	@dptr,a
      00358D 90 03 76         [24] 1630 	mov	dptr,#_spi_buffer_read_PARM_3
      003590 E0               [24] 1631 	movx	a,@dptr
      003591 FB               [12] 1632 	mov	r3,a
      003592 A3               [24] 1633 	inc	dptr
      003593 E0               [24] 1634 	movx	a,@dptr
      003594 FC               [12] 1635 	mov	r4,a
      003595 A3               [24] 1636 	inc	dptr
      003596 E0               [24] 1637 	movx	a,@dptr
      003597 FD               [12] 1638 	mov	r5,a
      003598                       1639 00109$:
      003598 90 03 7B         [24] 1640 	mov	dptr,#_spi_buffer_read_i_20002_111
      00359B E0               [24] 1641 	movx	a,@dptr
      00359C F9               [12] 1642 	mov	r1,a
      00359D A3               [24] 1643 	inc	dptr
      00359E E0               [24] 1644 	movx	a,@dptr
      00359F FA               [12] 1645 	mov	r2,a
      0035A0 C3               [12] 1646 	clr	c
      0035A1 E9               [12] 1647 	mov	a,r1
      0035A2 9E               [12] 1648 	subb	a,r6
      0035A3 EA               [12] 1649 	mov	a,r2
      0035A4 64 80            [12] 1650 	xrl	a,#0x80
      0035A6 8F F0            [24] 1651 	mov	b,r7
      0035A8 63 F0 80         [24] 1652 	xrl	b,#0x80
      0035AB 95 F0            [12] 1653 	subb	a,b
      0035AD 40 03            [24] 1654 	jc	00147$
      0035AF 02 36 35         [24] 1655 	ljmp	00107$
      0035B2                       1656 00147$:
                                   1657 ;	SPI.c:261: *data_ptr = SPI_ReadByte(); // Read data
      0035B2 C0 06            [24] 1658 	push	ar6
      0035B4 C0 07            [24] 1659 	push	ar7
      0035B6 C0 07            [24] 1660 	push	ar7
      0035B8 C0 06            [24] 1661 	push	ar6
      0035BA C0 05            [24] 1662 	push	ar5
      0035BC C0 04            [24] 1663 	push	ar4
      0035BE C0 03            [24] 1664 	push	ar3
      0035C0 C0 02            [24] 1665 	push	ar2
      0035C2 C0 01            [24] 1666 	push	ar1
      0035C4 12 30 14         [24] 1667 	lcall	_SPI_ReadByte
      0035C7 A8 82            [24] 1668 	mov	r0, dpl
      0035C9 D0 01            [24] 1669 	pop	ar1
      0035CB D0 02            [24] 1670 	pop	ar2
      0035CD D0 03            [24] 1671 	pop	ar3
      0035CF D0 04            [24] 1672 	pop	ar4
      0035D1 D0 05            [24] 1673 	pop	ar5
      0035D3 D0 06            [24] 1674 	pop	ar6
      0035D5 D0 07            [24] 1675 	pop	ar7
      0035D7 8B 82            [24] 1676 	mov	dpl,r3
      0035D9 8C 83            [24] 1677 	mov	dph,r4
      0035DB 8D F0            [24] 1678 	mov	b,r5
      0035DD E8               [12] 1679 	mov	a,r0
      0035DE 12 39 4F         [24] 1680 	lcall	__gptrput
      0035E1 A3               [24] 1681 	inc	dptr
      0035E2 AB 82            [24] 1682 	mov	r3,dpl
      0035E4 AC 83            [24] 1683 	mov	r4,dph
                                   1684 ;	SPI.c:262: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      0035E6 7F 00            [12] 1685 	mov	r7,#0x00
      0035E8 09               [12] 1686 	inc	r1
      0035E9 B9 00 01         [24] 1687 	cjne	r1,#0x00,00148$
      0035EC 0A               [12] 1688 	inc	r2
      0035ED                       1689 00148$:
      0035ED C0 07            [24] 1690 	push	ar7
      0035EF C0 06            [24] 1691 	push	ar6
      0035F1 C0 05            [24] 1692 	push	ar5
      0035F3 C0 04            [24] 1693 	push	ar4
      0035F5 C0 03            [24] 1694 	push	ar3
      0035F7 C0 02            [24] 1695 	push	ar2
      0035F9 C0 01            [24] 1696 	push	ar1
      0035FB C0 00            [24] 1697 	push	ar0
      0035FD C0 07            [24] 1698 	push	ar7
      0035FF C0 01            [24] 1699 	push	ar1
      003601 C0 02            [24] 1700 	push	ar2
      003603 74 B5            [12] 1701 	mov	a,#___str_12
      003605 C0 E0            [24] 1702 	push	acc
      003607 74 4C            [12] 1703 	mov	a,#(___str_12 >> 8)
      003609 C0 E0            [24] 1704 	push	acc
      00360B 74 80            [12] 1705 	mov	a,#0x80
      00360D C0 E0            [24] 1706 	push	acc
      00360F 12 3A E1         [24] 1707 	lcall	_printf
      003612 E5 81            [12] 1708 	mov	a,sp
      003614 24 F9            [12] 1709 	add	a,#0xf9
      003616 F5 81            [12] 1710 	mov	sp,a
      003618 D0 01            [24] 1711 	pop	ar1
      00361A D0 02            [24] 1712 	pop	ar2
      00361C D0 03            [24] 1713 	pop	ar3
      00361E D0 04            [24] 1714 	pop	ar4
      003620 D0 05            [24] 1715 	pop	ar5
      003622 D0 06            [24] 1716 	pop	ar6
      003624 D0 07            [24] 1717 	pop	ar7
                                   1718 ;	SPI.c:263: data_ptr++;
                                   1719 ;	SPI.c:260: for (int i = 0; i < num_bytes; i++) {
      003626 90 03 7B         [24] 1720 	mov	dptr,#_spi_buffer_read_i_20002_111
      003629 E9               [12] 1721 	mov	a,r1
      00362A F0               [24] 1722 	movx	@dptr,a
      00362B EA               [12] 1723 	mov	a,r2
      00362C A3               [24] 1724 	inc	dptr
      00362D F0               [24] 1725 	movx	@dptr,a
      00362E D0 07            [24] 1726 	pop	ar7
      003630 D0 06            [24] 1727 	pop	ar6
      003632 02 35 98         [24] 1728 	ljmp	00109$
      003635                       1729 00107$:
                                   1730 ;	SPI.c:265: CS_HIGH; // Pull CS High
                                   1731 ;	assignBit
      003635 D2 91            [12] 1732 	setb	_P1_1
                                   1733 ;	SPI.c:266: }
      003637 22               [24] 1734 	ret
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
      003638                       1750 _spi_buffer_write:
      003638 AF 83            [24] 1751 	mov	r7,dph
      00363A E5 82            [12] 1752 	mov	a,dpl
      00363C 90 03 82         [24] 1753 	mov	dptr,#_spi_buffer_write_num_bytes_10000_113
      00363F F0               [24] 1754 	movx	@dptr,a
      003640 EF               [12] 1755 	mov	a,r7
      003641 A3               [24] 1756 	inc	dptr
      003642 F0               [24] 1757 	movx	@dptr,a
                                   1758 ;	SPI.c:271: if (num_bytes < 1)
      003643 90 03 82         [24] 1759 	mov	dptr,#_spi_buffer_write_num_bytes_10000_113
      003646 E0               [24] 1760 	movx	a,@dptr
      003647 FE               [12] 1761 	mov	r6,a
      003648 A3               [24] 1762 	inc	dptr
      003649 E0               [24] 1763 	movx	a,@dptr
      00364A FF               [12] 1764 	mov	r7,a
      00364B C3               [12] 1765 	clr	c
      00364C EE               [12] 1766 	mov	a,r6
      00364D 94 01            [12] 1767 	subb	a,#0x01
      00364F EF               [12] 1768 	mov	a,r7
      003650 64 80            [12] 1769 	xrl	a,#0x80
      003652 94 80            [12] 1770 	subb	a,#0x80
      003654 50 1A            [24] 1771 	jnc	00102$
                                   1772 ;	SPI.c:273: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      003656 C0 06            [24] 1773 	push	ar6
      003658 C0 07            [24] 1774 	push	ar7
      00365A 74 40            [12] 1775 	mov	a,#___str_9
      00365C C0 E0            [24] 1776 	push	acc
      00365E 74 4C            [12] 1777 	mov	a,#(___str_9 >> 8)
      003660 C0 E0            [24] 1778 	push	acc
      003662 74 80            [12] 1779 	mov	a,#0x80
      003664 C0 E0            [24] 1780 	push	acc
      003666 12 3A E1         [24] 1781 	lcall	_printf
      003669 E5 81            [12] 1782 	mov	a,sp
      00366B 24 FB            [12] 1783 	add	a,#0xfb
      00366D F5 81            [12] 1784 	mov	sp,a
                                   1785 ;	SPI.c:274: return;
      00366F 22               [24] 1786 	ret
      003670                       1787 00102$:
                                   1788 ;	SPI.c:276: if (start_address > 0x1FFF) {
      003670 90 03 7D         [24] 1789 	mov	dptr,#_spi_buffer_write_PARM_2
      003673 E0               [24] 1790 	movx	a,@dptr
      003674 FC               [12] 1791 	mov	r4,a
      003675 A3               [24] 1792 	inc	dptr
      003676 E0               [24] 1793 	movx	a,@dptr
      003677 FD               [12] 1794 	mov	r5,a
      003678 8C 02            [24] 1795 	mov	ar2,r4
      00367A 8D 03            [24] 1796 	mov	ar3,r5
      00367C C3               [12] 1797 	clr	c
      00367D 74 FF            [12] 1798 	mov	a,#0xff
      00367F 9A               [12] 1799 	subb	a,r2
      003680 74 1F            [12] 1800 	mov	a,#0x1f
      003682 9B               [12] 1801 	subb	a,r3
      003683 50 1A            [24] 1802 	jnc	00104$
                                   1803 ;	SPI.c:277: printf("\n\rInvalid address: %04X\n\r", start_address);
      003685 C0 04            [24] 1804 	push	ar4
      003687 C0 05            [24] 1805 	push	ar5
      003689 74 60            [12] 1806 	mov	a,#___str_10
      00368B C0 E0            [24] 1807 	push	acc
      00368D 74 4C            [12] 1808 	mov	a,#(___str_10 >> 8)
      00368F C0 E0            [24] 1809 	push	acc
      003691 74 80            [12] 1810 	mov	a,#0x80
      003693 C0 E0            [24] 1811 	push	acc
      003695 12 3A E1         [24] 1812 	lcall	_printf
      003698 E5 81            [12] 1813 	mov	a,sp
      00369A 24 FB            [12] 1814 	add	a,#0xfb
      00369C F5 81            [12] 1815 	mov	sp,a
                                   1816 ;	SPI.c:278: return;
      00369E 22               [24] 1817 	ret
      00369F                       1818 00104$:
                                   1819 ;	SPI.c:282: if (num_bytes > 1) {
      00369F C3               [12] 1820 	clr	c
      0036A0 74 01            [12] 1821 	mov	a,#0x01
      0036A2 9E               [12] 1822 	subb	a,r6
      0036A3 74 80            [12] 1823 	mov	a,#(0x00 ^ 0x80)
      0036A5 8F F0            [24] 1824 	mov	b,r7
      0036A7 63 F0 80         [24] 1825 	xrl	b,#0x80
      0036AA 95 F0            [12] 1826 	subb	a,b
      0036AC 50 0B            [24] 1827 	jnc	00106$
                                   1828 ;	SPI.c:283: spi_set_autoinc();
      0036AE C0 05            [24] 1829 	push	ar5
      0036B0 C0 04            [24] 1830 	push	ar4
      0036B2 12 30 26         [24] 1831 	lcall	_spi_set_autoinc
      0036B5 D0 04            [24] 1832 	pop	ar4
      0036B7 D0 05            [24] 1833 	pop	ar5
      0036B9                       1834 00106$:
                                   1835 ;	SPI.c:286: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      0036B9 8D 07            [24] 1836 	mov	ar7,r5
                                   1837 ;	SPI.c:287: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      0036BB 8C 06            [24] 1838 	mov	ar6,r4
                                   1839 ;	SPI.c:289: spi_control_write(0, 0x03, higher_byte); // High byte
      0036BD 90 03 63         [24] 1840 	mov	dptr,#_spi_control_write_PARM_2
      0036C0 74 03            [12] 1841 	mov	a,#0x03
      0036C2 F0               [24] 1842 	movx	@dptr,a
      0036C3 90 03 64         [24] 1843 	mov	dptr,#_spi_control_write_PARM_3
      0036C6 EF               [12] 1844 	mov	a,r7
      0036C7 F0               [24] 1845 	movx	@dptr,a
      0036C8 75 82 00         [24] 1846 	mov	dpl, #0x00
      0036CB C0 06            [24] 1847 	push	ar6
      0036CD C0 05            [24] 1848 	push	ar5
      0036CF C0 04            [24] 1849 	push	ar4
      0036D1 12 30 BC         [24] 1850 	lcall	_spi_control_write
      0036D4 D0 04            [24] 1851 	pop	ar4
      0036D6 D0 05            [24] 1852 	pop	ar5
      0036D8 D0 06            [24] 1853 	pop	ar6
                                   1854 ;	SPI.c:290: spi_control_write(0, 0x02, lower_byte); // Low byte
      0036DA 90 03 63         [24] 1855 	mov	dptr,#_spi_control_write_PARM_2
      0036DD 74 02            [12] 1856 	mov	a,#0x02
      0036DF F0               [24] 1857 	movx	@dptr,a
      0036E0 90 03 64         [24] 1858 	mov	dptr,#_spi_control_write_PARM_3
      0036E3 EE               [12] 1859 	mov	a,r6
      0036E4 F0               [24] 1860 	movx	@dptr,a
      0036E5 75 82 00         [24] 1861 	mov	dpl, #0x00
      0036E8 C0 05            [24] 1862 	push	ar5
      0036EA C0 04            [24] 1863 	push	ar4
      0036EC 12 30 BC         [24] 1864 	lcall	_spi_control_write
                                   1865 ;	SPI.c:293: CS_LOW; // Pull CS Low
                                   1866 ;	assignBit
      0036EF C2 91            [12] 1867 	clr	_P1_1
                                   1868 ;	SPI.c:294: SPI_send(opcode); // Send opcode
      0036F1 75 82 7A         [24] 1869 	mov	dpl, #0x7a
      0036F4 12 31 27         [24] 1870 	lcall	_SPI_send
      0036F7 D0 04            [24] 1871 	pop	ar4
      0036F9 D0 05            [24] 1872 	pop	ar5
                                   1873 ;	SPI.c:297: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      0036FB 90 03 82         [24] 1874 	mov	dptr,#_spi_buffer_write_num_bytes_10000_113
      0036FE E0               [24] 1875 	movx	a,@dptr
      0036FF FE               [12] 1876 	mov	r6,a
      003700 A3               [24] 1877 	inc	dptr
      003701 E0               [24] 1878 	movx	a,@dptr
      003702 FF               [12] 1879 	mov	r7,a
      003703 C0 07            [24] 1880 	push	ar7
      003705 C0 06            [24] 1881 	push	ar6
      003707 C0 04            [24] 1882 	push	ar4
      003709 C0 05            [24] 1883 	push	ar5
      00370B C0 06            [24] 1884 	push	ar6
      00370D C0 07            [24] 1885 	push	ar7
      00370F 74 C7            [12] 1886 	mov	a,#___str_13
      003711 C0 E0            [24] 1887 	push	acc
      003713 74 4C            [12] 1888 	mov	a,#(___str_13 >> 8)
      003715 C0 E0            [24] 1889 	push	acc
      003717 74 80            [12] 1890 	mov	a,#0x80
      003719 C0 E0            [24] 1891 	push	acc
      00371B 12 3A E1         [24] 1892 	lcall	_printf
      00371E E5 81            [12] 1893 	mov	a,sp
      003720 24 F9            [12] 1894 	add	a,#0xf9
      003722 F5 81            [12] 1895 	mov	sp,a
      003724 D0 06            [24] 1896 	pop	ar6
      003726 D0 07            [24] 1897 	pop	ar7
                                   1898 ;	SPI.c:298: for (int i = 0; i < num_bytes; i++) {
      003728 90 03 84         [24] 1899 	mov	dptr,#_spi_buffer_write_i_20002_120
      00372B E4               [12] 1900 	clr	a
      00372C F0               [24] 1901 	movx	@dptr,a
      00372D A3               [24] 1902 	inc	dptr
      00372E F0               [24] 1903 	movx	@dptr,a
      00372F 90 03 7F         [24] 1904 	mov	dptr,#_spi_buffer_write_PARM_3
      003732 E0               [24] 1905 	movx	a,@dptr
      003733 FB               [12] 1906 	mov	r3,a
      003734 A3               [24] 1907 	inc	dptr
      003735 E0               [24] 1908 	movx	a,@dptr
      003736 FC               [12] 1909 	mov	r4,a
      003737 A3               [24] 1910 	inc	dptr
      003738 E0               [24] 1911 	movx	a,@dptr
      003739 FD               [12] 1912 	mov	r5,a
      00373A                       1913 00109$:
      00373A 90 03 84         [24] 1914 	mov	dptr,#_spi_buffer_write_i_20002_120
      00373D E0               [24] 1915 	movx	a,@dptr
      00373E F9               [12] 1916 	mov	r1,a
      00373F A3               [24] 1917 	inc	dptr
      003740 E0               [24] 1918 	movx	a,@dptr
      003741 FA               [12] 1919 	mov	r2,a
      003742 C3               [12] 1920 	clr	c
      003743 E9               [12] 1921 	mov	a,r1
      003744 9E               [12] 1922 	subb	a,r6
      003745 EA               [12] 1923 	mov	a,r2
      003746 64 80            [12] 1924 	xrl	a,#0x80
      003748 8F F0            [24] 1925 	mov	b,r7
      00374A 63 F0 80         [24] 1926 	xrl	b,#0x80
      00374D 95 F0            [12] 1927 	subb	a,b
      00374F 40 03            [24] 1928 	jc	00147$
      003751 02 37 E1         [24] 1929 	ljmp	00107$
      003754                       1930 00147$:
                                   1931 ;	SPI.c:299: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003754 C0 06            [24] 1932 	push	ar6
      003756 C0 07            [24] 1933 	push	ar7
      003758 8B 82            [24] 1934 	mov	dpl,r3
      00375A 8C 83            [24] 1935 	mov	dph,r4
      00375C 8D F0            [24] 1936 	mov	b,r5
      00375E 12 45 03         [24] 1937 	lcall	__gptrget
      003761 F8               [12] 1938 	mov	r0,a
      003762 7F 00            [12] 1939 	mov	r7,#0x00
      003764 09               [12] 1940 	inc	r1
      003765 B9 00 01         [24] 1941 	cjne	r1,#0x00,00148$
      003768 0A               [12] 1942 	inc	r2
      003769                       1943 00148$:
      003769 C0 07            [24] 1944 	push	ar7
      00376B C0 06            [24] 1945 	push	ar6
      00376D C0 05            [24] 1946 	push	ar5
      00376F C0 04            [24] 1947 	push	ar4
      003771 C0 03            [24] 1948 	push	ar3
      003773 C0 02            [24] 1949 	push	ar2
      003775 C0 01            [24] 1950 	push	ar1
      003777 C0 00            [24] 1951 	push	ar0
      003779 C0 07            [24] 1952 	push	ar7
      00377B C0 01            [24] 1953 	push	ar1
      00377D C0 02            [24] 1954 	push	ar2
      00377F 74 B5            [12] 1955 	mov	a,#___str_12
      003781 C0 E0            [24] 1956 	push	acc
      003783 74 4C            [12] 1957 	mov	a,#(___str_12 >> 8)
      003785 C0 E0            [24] 1958 	push	acc
      003787 74 80            [12] 1959 	mov	a,#0x80
      003789 C0 E0            [24] 1960 	push	acc
      00378B 12 3A E1         [24] 1961 	lcall	_printf
      00378E E5 81            [12] 1962 	mov	a,sp
      003790 24 F9            [12] 1963 	add	a,#0xf9
      003792 F5 81            [12] 1964 	mov	sp,a
      003794 D0 01            [24] 1965 	pop	ar1
      003796 D0 02            [24] 1966 	pop	ar2
      003798 D0 03            [24] 1967 	pop	ar3
      00379A D0 04            [24] 1968 	pop	ar4
      00379C D0 05            [24] 1969 	pop	ar5
      00379E D0 06            [24] 1970 	pop	ar6
      0037A0 D0 07            [24] 1971 	pop	ar7
                                   1972 ;	SPI.c:300: SPI_send(*data_ptr); // Send data
      0037A2 8B 82            [24] 1973 	mov	dpl,r3
      0037A4 8C 83            [24] 1974 	mov	dph,r4
      0037A6 8D F0            [24] 1975 	mov	b,r5
      0037A8 12 45 03         [24] 1976 	lcall	__gptrget
      0037AB FF               [12] 1977 	mov	r7,a
      0037AC A3               [24] 1978 	inc	dptr
      0037AD AB 82            [24] 1979 	mov	r3,dpl
      0037AF AC 83            [24] 1980 	mov	r4,dph
      0037B1 8F 82            [24] 1981 	mov	dpl, r7
      0037B3 C0 07            [24] 1982 	push	ar7
      0037B5 C0 06            [24] 1983 	push	ar6
      0037B7 C0 05            [24] 1984 	push	ar5
      0037B9 C0 04            [24] 1985 	push	ar4
      0037BB C0 03            [24] 1986 	push	ar3
      0037BD C0 02            [24] 1987 	push	ar2
      0037BF C0 01            [24] 1988 	push	ar1
      0037C1 12 31 27         [24] 1989 	lcall	_SPI_send
      0037C4 D0 01            [24] 1990 	pop	ar1
      0037C6 D0 02            [24] 1991 	pop	ar2
      0037C8 D0 03            [24] 1992 	pop	ar3
      0037CA D0 04            [24] 1993 	pop	ar4
      0037CC D0 05            [24] 1994 	pop	ar5
      0037CE D0 06            [24] 1995 	pop	ar6
      0037D0 D0 07            [24] 1996 	pop	ar7
                                   1997 ;	SPI.c:301: data_ptr++;
                                   1998 ;	SPI.c:298: for (int i = 0; i < num_bytes; i++) {
      0037D2 90 03 84         [24] 1999 	mov	dptr,#_spi_buffer_write_i_20002_120
      0037D5 E9               [12] 2000 	mov	a,r1
      0037D6 F0               [24] 2001 	movx	@dptr,a
      0037D7 EA               [12] 2002 	mov	a,r2
      0037D8 A3               [24] 2003 	inc	dptr
      0037D9 F0               [24] 2004 	movx	@dptr,a
      0037DA D0 07            [24] 2005 	pop	ar7
      0037DC D0 06            [24] 2006 	pop	ar6
      0037DE 02 37 3A         [24] 2007 	ljmp	00109$
      0037E1                       2008 00107$:
                                   2009 ;	SPI.c:303: CS_HIGH; // Pull CS High
                                   2010 ;	assignBit
      0037E1 D2 91            [12] 2011 	setb	_P1_1
                                   2012 ;	SPI.c:304: }
      0037E3 22               [24] 2013 	ret
                                   2014 ;------------------------------------------------------------
                                   2015 ;Allocation info for local variables in function 'init_ENC'
                                   2016 ;------------------------------------------------------------
                                   2017 ;	SPI.c:306: void init_ENC(void)
                                   2018 ;	-----------------------------------------
                                   2019 ;	 function init_ENC
                                   2020 ;	-----------------------------------------
      0037E4                       2021 _init_ENC:
                                   2022 ;	SPI.c:308: spi_control_write(1, 0x18, 0x41);
      0037E4 90 03 63         [24] 2023 	mov	dptr,#_spi_control_write_PARM_2
      0037E7 74 18            [12] 2024 	mov	a,#0x18
      0037E9 F0               [24] 2025 	movx	@dptr,a
      0037EA 90 03 64         [24] 2026 	mov	dptr,#_spi_control_write_PARM_3
      0037ED 74 41            [12] 2027 	mov	a,#0x41
      0037EF F0               [24] 2028 	movx	@dptr,a
      0037F0 75 82 01         [24] 2029 	mov	dpl, #0x01
      0037F3 12 30 BC         [24] 2030 	lcall	_spi_control_write
                                   2031 ;	SPI.c:310: enc28j60_init_rx_buffer(0x0000, 0x00FF);
      0037F6 90 01 06         [24] 2032 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      0037F9 74 FF            [12] 2033 	mov	a,#0xff
      0037FB F0               [24] 2034 	movx	@dptr,a
      0037FC E4               [12] 2035 	clr	a
      0037FD A3               [24] 2036 	inc	dptr
      0037FE F0               [24] 2037 	movx	@dptr,a
      0037FF 90 00 00         [24] 2038 	mov	dptr,#0x0000
      003802 12 21 71         [24] 2039 	lcall	_enc28j60_init_rx_buffer
                                   2040 ;	SPI.c:312: IT0 = 1;  // Edge-triggered mode for INT0
                                   2041 ;	assignBit
      003805 D2 88            [12] 2042 	setb	_IT0
                                   2043 ;	SPI.c:313: EX0 = 1;  // Enable INT0
                                   2044 ;	assignBit
      003807 D2 A8            [12] 2045 	setb	_EX0
                                   2046 ;	SPI.c:314: EA = 1;   // Enable global interrupts
                                   2047 ;	assignBit
      003809 D2 AF            [12] 2048 	setb	_EA
                                   2049 ;	SPI.c:317: spi_control_write(0x02, 0x00, 0x01); // Write 0x01 to MACON1 (address 0x00 in bank 2)
      00380B 90 03 63         [24] 2050 	mov	dptr,#_spi_control_write_PARM_2
      00380E E4               [12] 2051 	clr	a
      00380F F0               [24] 2052 	movx	@dptr,a
      003810 90 03 64         [24] 2053 	mov	dptr,#_spi_control_write_PARM_3
      003813 04               [12] 2054 	inc	a
      003814 F0               [24] 2055 	movx	@dptr,a
      003815 75 82 02         [24] 2056 	mov	dpl, #0x02
      003818 12 30 BC         [24] 2057 	lcall	_spi_control_write
                                   2058 ;	SPI.c:318: spi_control_write(0x02, 0x02, 0x70); // Write 0x30 to MACON3 (address 0x02 in bank 2)
      00381B 90 03 63         [24] 2059 	mov	dptr,#_spi_control_write_PARM_2
      00381E 74 02            [12] 2060 	mov	a,#0x02
      003820 F0               [24] 2061 	movx	@dptr,a
      003821 90 03 64         [24] 2062 	mov	dptr,#_spi_control_write_PARM_3
      003824 74 70            [12] 2063 	mov	a,#0x70
      003826 F0               [24] 2064 	movx	@dptr,a
      003827 75 82 02         [24] 2065 	mov	dpl, #0x02
      00382A 12 30 BC         [24] 2066 	lcall	_spi_control_write
                                   2067 ;	SPI.c:319: spi_control_write(0x02, 0x03, 0x40); // Write 0x40 to MACON4 (address 0x02 in bank 2) - DEFER bit
      00382D 90 03 63         [24] 2068 	mov	dptr,#_spi_control_write_PARM_2
      003830 74 03            [12] 2069 	mov	a,#0x03
      003832 F0               [24] 2070 	movx	@dptr,a
      003833 90 03 64         [24] 2071 	mov	dptr,#_spi_control_write_PARM_3
      003836 74 40            [12] 2072 	mov	a,#0x40
      003838 F0               [24] 2073 	movx	@dptr,a
      003839 75 82 02         [24] 2074 	mov	dpl, #0x02
      00383C 12 30 BC         [24] 2075 	lcall	_spi_control_write
                                   2076 ;	SPI.c:320: spi_control_write(0x02, 0x0A, 0xEE); // Write 0xEE to MAMXFLL (low byte, address 0x0A in bank 2)
      00383F 90 03 63         [24] 2077 	mov	dptr,#_spi_control_write_PARM_2
      003842 74 0A            [12] 2078 	mov	a,#0x0a
      003844 F0               [24] 2079 	movx	@dptr,a
      003845 90 03 64         [24] 2080 	mov	dptr,#_spi_control_write_PARM_3
      003848 74 EE            [12] 2081 	mov	a,#0xee
      00384A F0               [24] 2082 	movx	@dptr,a
      00384B 75 82 02         [24] 2083 	mov	dpl, #0x02
      00384E 12 30 BC         [24] 2084 	lcall	_spi_control_write
                                   2085 ;	SPI.c:321: spi_control_write(0x02, 0x0B, 0x05); // Write 0x05 to MAMXFLH (high byte, address 0x0B in bank 2)
      003851 90 03 63         [24] 2086 	mov	dptr,#_spi_control_write_PARM_2
      003854 74 0B            [12] 2087 	mov	a,#0x0b
      003856 F0               [24] 2088 	movx	@dptr,a
      003857 90 03 64         [24] 2089 	mov	dptr,#_spi_control_write_PARM_3
      00385A 74 05            [12] 2090 	mov	a,#0x05
      00385C F0               [24] 2091 	movx	@dptr,a
      00385D 75 82 02         [24] 2092 	mov	dpl, #0x02
      003860 12 30 BC         [24] 2093 	lcall	_spi_control_write
                                   2094 ;	SPI.c:322: spi_control_write(0x02, 0x04, 0x12); // Write 0x15 to MABBIPG (address 0x04 in bank 2)
      003863 90 03 63         [24] 2095 	mov	dptr,#_spi_control_write_PARM_2
      003866 74 04            [12] 2096 	mov	a,#0x04
      003868 F0               [24] 2097 	movx	@dptr,a
      003869 90 03 64         [24] 2098 	mov	dptr,#_spi_control_write_PARM_3
      00386C 74 12            [12] 2099 	mov	a,#0x12
      00386E F0               [24] 2100 	movx	@dptr,a
      00386F 75 82 02         [24] 2101 	mov	dpl, #0x02
      003872 12 30 BC         [24] 2102 	lcall	_spi_control_write
                                   2103 ;	SPI.c:323: spi_control_write(0x02, 0x06, 0x12); // Write 0x12 to MAIPGL (low byte, address 0x06 in bank 2)
      003875 90 03 63         [24] 2104 	mov	dptr,#_spi_control_write_PARM_2
      003878 74 06            [12] 2105 	mov	a,#0x06
      00387A F0               [24] 2106 	movx	@dptr,a
      00387B 90 03 64         [24] 2107 	mov	dptr,#_spi_control_write_PARM_3
      00387E 74 12            [12] 2108 	mov	a,#0x12
      003880 F0               [24] 2109 	movx	@dptr,a
      003881 75 82 02         [24] 2110 	mov	dpl, #0x02
      003884 12 30 BC         [24] 2111 	lcall	_spi_control_write
                                   2112 ;	SPI.c:324: spi_control_write(0x02, 0x07, 0x0C); // Write 0x12 to MAIPGH (low byte, address 0x06 in bank 2)
      003887 90 03 63         [24] 2113 	mov	dptr,#_spi_control_write_PARM_2
      00388A 74 07            [12] 2114 	mov	a,#0x07
      00388C F0               [24] 2115 	movx	@dptr,a
      00388D 90 03 64         [24] 2116 	mov	dptr,#_spi_control_write_PARM_3
      003890 74 0C            [12] 2117 	mov	a,#0x0c
      003892 F0               [24] 2118 	movx	@dptr,a
      003893 75 82 02         [24] 2119 	mov	dpl, #0x02
      003896 12 30 BC         [24] 2120 	lcall	_spi_control_write
                                   2121 ;	SPI.c:328: spi_control_write(0, 0x1B, 0x81);
      003899 90 03 63         [24] 2122 	mov	dptr,#_spi_control_write_PARM_2
      00389C 74 1B            [12] 2123 	mov	a,#0x1b
      00389E F0               [24] 2124 	movx	@dptr,a
      00389F 90 03 64         [24] 2125 	mov	dptr,#_spi_control_write_PARM_3
      0038A2 74 81            [12] 2126 	mov	a,#0x81
      0038A4 F0               [24] 2127 	movx	@dptr,a
      0038A5 75 82 00         [24] 2128 	mov	dpl, #0x00
                                   2129 ;	SPI.c:330: }
      0038A8 02 30 BC         [24] 2130 	ljmp	_spi_control_write
                                   2131 ;------------------------------------------------------------
                                   2132 ;Allocation info for local variables in function 'init_MAC'
                                   2133 ;------------------------------------------------------------
                                   2134 ;	SPI.c:332: void init_MAC(void)
                                   2135 ;	-----------------------------------------
                                   2136 ;	 function init_MAC
                                   2137 ;	-----------------------------------------
      0038AB                       2138 _init_MAC:
                                   2139 ;	SPI.c:335: }
      0038AB 22               [24] 2140 	ret
                                   2141 	.area CSEG    (CODE)
                                   2142 	.area CONST   (CODE)
                                   2143 	.area CONST   (CODE)
      004ACF                       2144 ___str_0:
      004ACF 77 72 6F 6E 67 20 62  2145 	.ascii "wrong bank"
             61 6E 6B
      004AD9 00                    2146 	.db 0x00
                                   2147 	.area CSEG    (CODE)
                                   2148 	.area CONST   (CODE)
      004ADA                       2149 ___str_1:
      004ADA 57 72 69 74 65 3A 20  2150 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      004AFC 0A                    2151 	.db 0x0a
      004AFD 0D                    2152 	.db 0x0d
      004AFE 00                    2153 	.db 0x00
                                   2154 	.area CSEG    (CODE)
                                   2155 	.area CONST   (CODE)
      004AFF                       2156 ___str_2:
      004AFF 0A                    2157 	.db 0x0a
      004B00 0D                    2158 	.db 0x0d
      004B01 49 6E 76 61 6C 69 64  2159 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      004B36 0A                    2160 	.db 0x0a
      004B37 0D                    2161 	.db 0x0d
      004B38 00                    2162 	.db 0x00
                                   2163 	.area CSEG    (CODE)
                                   2164 	.area CONST   (CODE)
      004B39                       2165 ___str_3:
      004B39 52 65 61 64 3A 20 41  2166 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004B5A 0A                    2167 	.db 0x0a
      004B5B 0D                    2168 	.db 0x0d
      004B5C 00                    2169 	.db 0x00
                                   2170 	.area CSEG    (CODE)
                                   2171 	.area CONST   (CODE)
      004B5D                       2172 ___str_4:
      004B5D 50 48 59 20 57 72 69  2173 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      004B83 0A                    2174 	.db 0x0a
      004B84 0D                    2175 	.db 0x0d
      004B85 00                    2176 	.db 0x00
                                   2177 	.area CSEG    (CODE)
                                   2178 	.area CONST   (CODE)
      004B86                       2179 ___str_5:
      004B86 52 65 61 64 3A 20 41  2180 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004BA7 0A                    2181 	.db 0x0a
      004BA8 00                    2182 	.db 0x00
                                   2183 	.area CSEG    (CODE)
                                   2184 	.area CONST   (CODE)
      004BA9                       2185 ___str_6:
      004BA9 50 48 59 20 52 65 61  2186 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      004BCE 0A                    2187 	.db 0x0a
      004BCF 0D                    2188 	.db 0x0d
      004BD0 00                    2189 	.db 0x00
                                   2190 	.area CSEG    (CODE)
                                   2191 	.area CONST   (CODE)
      004BD1                       2192 ___str_7:
      004BD1 0A                    2193 	.db 0x0a
      004BD2 0D                    2194 	.db 0x0d
      004BD3 49 6E 76 61 6C 69 64  2195 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      004C0C 0A                    2196 	.db 0x0a
      004C0D 0D                    2197 	.db 0x0d
      004C0E 00                    2198 	.db 0x00
                                   2199 	.area CSEG    (CODE)
                                   2200 	.area CONST   (CODE)
      004C0F                       2201 ___str_8:
      004C0F 0A                    2202 	.db 0x0a
      004C10 0D                    2203 	.db 0x0d
      004C11 42 75 66 66 65 72 20  2204 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      004C3D 0A                    2205 	.db 0x0a
      004C3E 0D                    2206 	.db 0x0d
      004C3F 00                    2207 	.db 0x00
                                   2208 	.area CSEG    (CODE)
                                   2209 	.area CONST   (CODE)
      004C40                       2210 ___str_9:
      004C40 0A                    2211 	.db 0x0a
      004C41 0D                    2212 	.db 0x0d
      004C42 49 6E 76 61 6C 69 64  2213 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      004C5D 0A                    2214 	.db 0x0a
      004C5E 0D                    2215 	.db 0x0d
      004C5F 00                    2216 	.db 0x00
                                   2217 	.area CSEG    (CODE)
                                   2218 	.area CONST   (CODE)
      004C60                       2219 ___str_10:
      004C60 0A                    2220 	.db 0x0a
      004C61 0D                    2221 	.db 0x0d
      004C62 49 6E 76 61 6C 69 64  2222 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      004C77 0A                    2223 	.db 0x0a
      004C78 0D                    2224 	.db 0x0d
      004C79 00                    2225 	.db 0x00
                                   2226 	.area CSEG    (CODE)
                                   2227 	.area CONST   (CODE)
      004C7A                       2228 ___str_11:
      004C7A 52 65 61 64 69 6E 67  2229 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      004CB2 0A                    2230 	.db 0x0a
      004CB3 0D                    2231 	.db 0x0d
      004CB4 00                    2232 	.db 0x00
                                   2233 	.area CSEG    (CODE)
                                   2234 	.area CONST   (CODE)
      004CB5                       2235 ___str_12:
      004CB5 42 79 74 65 20 25 64  2236 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      004CC4 0A                    2237 	.db 0x0a
      004CC5 0D                    2238 	.db 0x0d
      004CC6 00                    2239 	.db 0x00
                                   2240 	.area CSEG    (CODE)
                                   2241 	.area CONST   (CODE)
      004CC7                       2242 ___str_13:
      004CC7 57 72 69 74 69 6E 67  2243 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      004CFD 0A                    2244 	.db 0x0a
      004CFE 0D                    2245 	.db 0x0d
      004CFF 00                    2246 	.db 0x00
                                   2247 	.area CSEG    (CODE)
                                   2248 	.area XINIT   (CODE)
                                   2249 	.area CABS    (ABS,CODE)

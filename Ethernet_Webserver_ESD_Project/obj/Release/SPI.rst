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
      00034B                        501 _SPI_ReadByte_received_data_10000_64:
      00034B                        502 	.ds 1
      00034C                        503 _select_reg_bank_bank_10000_68:
      00034C                        504 	.ds 1
      00034D                        505 _spi_control_write_PARM_2:
      00034D                        506 	.ds 1
      00034E                        507 _spi_control_write_PARM_3:
      00034E                        508 	.ds 1
      00034F                        509 _spi_control_write_reg_bank_10000_70:
      00034F                        510 	.ds 1
      000350                        511 _SPI_send_data_10000_74:
      000350                        512 	.ds 1
      000351                        513 _eth_spi_read_PARM_2:
      000351                        514 	.ds 1
      000352                        515 _eth_spi_read_addr_10000_79:
      000352                        516 	.ds 1
      000353                        517 _phy_spi_write_PARM_2:
      000353                        518 	.ds 2
      000355                        519 _phy_spi_write_addr_10000_83:
      000355                        520 	.ds 1
      000356                        521 _mac_spi_read_PARM_2:
      000356                        522 	.ds 1
      000357                        523 _mac_spi_read_addr_10000_85:
      000357                        524 	.ds 1
      000358                        525 _phy_spi_read_addr_10000_89:
      000358                        526 	.ds 1
      000359                        527 _busy_wait_data_10000_93:
      000359                        528 	.ds 1
      00035A                        529 _buffer_init_PARM_2:
      00035A                        530 	.ds 2
      00035C                        531 _buffer_init_start_address_10000_95:
      00035C                        532 	.ds 2
      00035E                        533 _spi_buffer_read_PARM_2:
      00035E                        534 	.ds 2
      000360                        535 _spi_buffer_read_PARM_3:
      000360                        536 	.ds 3
      000363                        537 _spi_buffer_read_num_bytes_10000_99:
      000363                        538 	.ds 2
      000365                        539 _spi_buffer_read_i_20002_106:
      000365                        540 	.ds 2
      000367                        541 _spi_buffer_write_PARM_2:
      000367                        542 	.ds 2
      000369                        543 _spi_buffer_write_PARM_3:
      000369                        544 	.ds 3
      00036C                        545 _spi_buffer_write_num_bytes_10000_108:
      00036C                        546 	.ds 2
      00036E                        547 _spi_buffer_write_i_20002_115:
      00036E                        548 	.ds 2
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
      002E73                        592 _SPI_ReadByte:
                           000007   593 	ar7 = 0x07
                           000006   594 	ar6 = 0x06
                           000005   595 	ar5 = 0x05
                           000004   596 	ar4 = 0x04
                           000003   597 	ar3 = 0x03
                           000002   598 	ar2 = 0x02
                           000001   599 	ar1 = 0x01
                           000000   600 	ar0 = 0x00
                                    601 ;	SPI.c:9: SPDAT = 0xFF;
      002E73 75 C5 FF         [24]  602 	mov	_SPDAT,#0xff
                                    603 ;	SPI.c:12: while (!(SPSTA & 0x80)) {
      002E76                        604 00101$:
      002E76 E5 C4            [12]  605 	mov	a,_SPSTA
      002E78 30 E7 FB         [24]  606 	jnb	acc.7,00101$
                                    607 ;	SPI.c:17: received_data = SPDAT;
      002E7B 90 03 4B         [24]  608 	mov	dptr,#_SPI_ReadByte_received_data_10000_64
      002E7E E5 C5            [12]  609 	mov	a,_SPDAT
      002E80 F0               [24]  610 	movx	@dptr,a
                                    611 ;	SPI.c:19: return received_data;
      002E81 E0               [24]  612 	movx	a,@dptr
                                    613 ;	SPI.c:20: }
      002E82 F5 82            [12]  614 	mov	dpl,a
      002E84 22               [24]  615 	ret
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'spi_set_autoinc'
                                    618 ;------------------------------------------------------------
                                    619 ;	SPI.c:22: void spi_set_autoinc(void)
                                    620 ;	-----------------------------------------
                                    621 ;	 function spi_set_autoinc
                                    622 ;	-----------------------------------------
      002E85                        623 _spi_set_autoinc:
                                    624 ;	SPI.c:24: CS_LOW;                          // Pull CS low to select the ENC28J60
                                    625 ;	assignBit
      002E85 C2 91            [12]  626 	clr	_P1_1
                                    627 ;	SPI.c:26: SPI_send(0x5E);                  // Write ECON2 register address
      002E87 75 82 5E         [24]  628 	mov	dpl, #0x5e
      002E8A 12 2F 1B         [24]  629 	lcall	_SPI_send
                                    630 ;	SPI.c:27: SPI_send(0x80);                  // Set the AUTOINC bit
      002E8D 75 82 80         [24]  631 	mov	dpl, #0x80
      002E90 12 2F 1B         [24]  632 	lcall	_SPI_send
                                    633 ;	SPI.c:29: CS_HIGH;                         // Pull CS high to deselect the ENC28J60
                                    634 ;	assignBit
      002E93 D2 91            [12]  635 	setb	_P1_1
                                    636 ;	SPI.c:30: }
      002E95 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'select_reg_bank'
                                    640 ;------------------------------------------------------------
                                    641 ;bank                      Allocated with name '_select_reg_bank_bank_10000_68'
                                    642 ;------------------------------------------------------------
                                    643 ;	SPI.c:32: void select_reg_bank(uint8_t bank)
                                    644 ;	-----------------------------------------
                                    645 ;	 function select_reg_bank
                                    646 ;	-----------------------------------------
      002E96                        647 _select_reg_bank:
      002E96 E5 82            [12]  648 	mov	a,dpl
      002E98 90 03 4C         [24]  649 	mov	dptr,#_select_reg_bank_bank_10000_68
      002E9B F0               [24]  650 	movx	@dptr,a
                                    651 ;	SPI.c:35: CS_LOW;
                                    652 ;	assignBit
      002E9C C2 91            [12]  653 	clr	_P1_1
                                    654 ;	SPI.c:38: SPI_send(0x5F);
      002E9E 75 82 5F         [24]  655 	mov	dpl, #0x5f
      002EA1 12 2F 1B         [24]  656 	lcall	_SPI_send
                                    657 ;	SPI.c:41: SPI_send(bank);
      002EA4 90 03 4C         [24]  658 	mov	dptr,#_select_reg_bank_bank_10000_68
      002EA7 E0               [24]  659 	movx	a,@dptr
      002EA8 F5 82            [12]  660 	mov	dpl,a
      002EAA 12 2F 1B         [24]  661 	lcall	_SPI_send
                                    662 ;	SPI.c:44: CS_HIGH;
                                    663 ;	assignBit
      002EAD D2 91            [12]  664 	setb	_P1_1
                                    665 ;	SPI.c:45: }
      002EAF 22               [24]  666 	ret
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
      002EB0                        679 _spi_control_write:
      002EB0 E5 82            [12]  680 	mov	a,dpl
      002EB2 90 03 4F         [24]  681 	mov	dptr,#_spi_control_write_reg_bank_10000_70
      002EB5 F0               [24]  682 	movx	@dptr,a
                                    683 ;	SPI.c:49: addr = addr + opcode; // Add the opcode to the address
      002EB6 90 03 4D         [24]  684 	mov	dptr,#_spi_control_write_PARM_2
      002EB9 E0               [24]  685 	movx	a,@dptr
      002EBA 24 40            [12]  686 	add	a, #0x40
      002EBC F0               [24]  687 	movx	@dptr,a
                                    688 ;	SPI.c:51: select_reg_bank(reg_bank); // Function to select the register bank
      002EBD 90 03 4F         [24]  689 	mov	dptr,#_spi_control_write_reg_bank_10000_70
      002EC0 E0               [24]  690 	movx	a,@dptr
      002EC1 F5 82            [12]  691 	mov	dpl,a
      002EC3 12 2E 96         [24]  692 	lcall	_select_reg_bank
                                    693 ;	SPI.c:54: CS_LOW;
                                    694 ;	assignBit
      002EC6 C2 91            [12]  695 	clr	_P1_1
                                    696 ;	SPI.c:57: SPI_send(addr);
      002EC8 90 03 4D         [24]  697 	mov	dptr,#_spi_control_write_PARM_2
      002ECB E0               [24]  698 	movx	a,@dptr
      002ECC FF               [12]  699 	mov	r7,a
      002ECD F5 82            [12]  700 	mov	dpl,a
      002ECF C0 07            [24]  701 	push	ar7
      002ED1 12 2F 1B         [24]  702 	lcall	_SPI_send
      002ED4 D0 07            [24]  703 	pop	ar7
                                    704 ;	SPI.c:60: SPI_send(data);
      002ED6 90 03 4E         [24]  705 	mov	dptr,#_spi_control_write_PARM_3
      002ED9 E0               [24]  706 	movx	a,@dptr
      002EDA FE               [12]  707 	mov	r6,a
      002EDB F5 82            [12]  708 	mov	dpl,a
      002EDD C0 07            [24]  709 	push	ar7
      002EDF C0 06            [24]  710 	push	ar6
      002EE1 12 2F 1B         [24]  711 	lcall	_SPI_send
      002EE4 D0 06            [24]  712 	pop	ar6
      002EE6 D0 07            [24]  713 	pop	ar7
                                    714 ;	SPI.c:63: CS_HIGH;
                                    715 ;	assignBit
      002EE8 D2 91            [12]  716 	setb	_P1_1
                                    717 ;	SPI.c:66: printf("Write: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      002EEA 7D 00            [12]  718 	mov	r5,#0x00
      002EEC 7C 00            [12]  719 	mov	r4,#0x00
      002EEE C0 06            [24]  720 	push	ar6
      002EF0 C0 05            [24]  721 	push	ar5
      002EF2 C0 07            [24]  722 	push	ar7
      002EF4 C0 04            [24]  723 	push	ar4
      002EF6 74 F7            [12]  724 	mov	a,#___str_0
      002EF8 C0 E0            [24]  725 	push	acc
      002EFA 74 47            [12]  726 	mov	a,#(___str_0 >> 8)
      002EFC C0 E0            [24]  727 	push	acc
      002EFE 74 80            [12]  728 	mov	a,#0x80
      002F00 C0 E0            [24]  729 	push	acc
      002F02 12 38 9A         [24]  730 	lcall	_printf
      002F05 E5 81            [12]  731 	mov	a,sp
      002F07 24 F9            [12]  732 	add	a,#0xf9
      002F09 F5 81            [12]  733 	mov	sp,a
                                    734 ;	SPI.c:67: }
      002F0B 22               [24]  735 	ret
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'configure_SPI'
                                    738 ;------------------------------------------------------------
                                    739 ;	SPI.c:70: void configure_SPI(void)
                                    740 ;	-----------------------------------------
                                    741 ;	 function configure_SPI
                                    742 ;	-----------------------------------------
      002F0C                        743 _configure_SPI:
                                    744 ;	SPI.c:72: CS_PIN = 1;
                                    745 ;	assignBit
      002F0C D2 91            [12]  746 	setb	_P1_1
                                    747 ;	SPI.c:73: SPCON = 0x00;
      002F0E 75 C3 00         [24]  748 	mov	_SPCON,#0x00
                                    749 ;	SPI.c:74: SPCON |= SS_DISABLE;
      002F11 43 C3 20         [24]  750 	orl	_SPCON,#0x20
                                    751 ;	SPI.c:75: SPCON |= MASTER_MODE;
      002F14 43 C3 10         [24]  752 	orl	_SPCON,#0x10
                                    753 ;	SPI.c:76: SPCON |= SPI_ENABLE;
      002F17 43 C3 40         [24]  754 	orl	_SPCON,#0x40
                                    755 ;	SPI.c:77: }
      002F1A 22               [24]  756 	ret
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'SPI_send'
                                    759 ;------------------------------------------------------------
                                    760 ;data                      Allocated with name '_SPI_send_data_10000_74'
                                    761 ;------------------------------------------------------------
                                    762 ;	SPI.c:80: void SPI_send(uint8_t data)
                                    763 ;	-----------------------------------------
                                    764 ;	 function SPI_send
                                    765 ;	-----------------------------------------
      002F1B                        766 _SPI_send:
      002F1B E5 82            [12]  767 	mov	a,dpl
      002F1D 90 03 50         [24]  768 	mov	dptr,#_SPI_send_data_10000_74
      002F20 F0               [24]  769 	movx	@dptr,a
                                    770 ;	SPI.c:83: SPDAT = data;           // Config + MSB of data
      002F21 E0               [24]  771 	movx	a,@dptr
      002F22 F5 C5            [12]  772 	mov	_SPDAT,a
                                    773 ;	SPI.c:85: while (!(SPSTA & 0x80))
      002F24                        774 00101$:
      002F24 E5 C4            [12]  775 	mov	a,_SPSTA
      002F26 30 E7 FB         [24]  776 	jnb	acc.7,00101$
                                    777 ;	SPI.c:90: }
      002F29 22               [24]  778 	ret
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'enc_reset'
                                    781 ;------------------------------------------------------------
                                    782 ;	SPI.c:92: void enc_reset(void)
                                    783 ;	-----------------------------------------
                                    784 ;	 function enc_reset
                                    785 ;	-----------------------------------------
      002F2A                        786 _enc_reset:
                                    787 ;	SPI.c:94: CS_LOW;                    // Pull CS low to select the ENC28J60
                                    788 ;	assignBit
      002F2A C2 91            [12]  789 	clr	_P1_1
                                    790 ;	SPI.c:95: SPI_send(0xFF);            // Send reset command
      002F2C 75 82 FF         [24]  791 	mov	dpl, #0xff
      002F2F 12 2F 1B         [24]  792 	lcall	_SPI_send
                                    793 ;	SPI.c:96: CS_HIGH;                   // Pull CS high to deselect the ENC28J60
                                    794 ;	assignBit
      002F32 D2 91            [12]  795 	setb	_P1_1
                                    796 ;	SPI.c:97: }
      002F34 22               [24]  797 	ret
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
      002F35                        809 _eth_spi_read:
      002F35 E5 82            [12]  810 	mov	a,dpl
      002F37 90 03 52         [24]  811 	mov	dptr,#_eth_spi_read_addr_10000_79
      002F3A F0               [24]  812 	movx	@dptr,a
                                    813 ;	SPI.c:101: if (addr > 0x1F) {
      002F3B E0               [24]  814 	movx	a,@dptr
      002F3C FF               [12]  815 	mov  r7,a
      002F3D 24 E0            [12]  816 	add	a,#0xff - 0x1f
      002F3F 50 19            [24]  817 	jnc	00102$
                                    818 ;	SPI.c:102: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      002F41 74 1C            [12]  819 	mov	a,#___str_1
      002F43 C0 E0            [24]  820 	push	acc
      002F45 74 48            [12]  821 	mov	a,#(___str_1 >> 8)
      002F47 C0 E0            [24]  822 	push	acc
      002F49 74 80            [12]  823 	mov	a,#0x80
      002F4B C0 E0            [24]  824 	push	acc
      002F4D 12 38 9A         [24]  825 	lcall	_printf
      002F50 15 81            [12]  826 	dec	sp
      002F52 15 81            [12]  827 	dec	sp
      002F54 15 81            [12]  828 	dec	sp
                                    829 ;	SPI.c:103: return 0;
      002F56 75 82 00         [24]  830 	mov	dpl, #0x00
      002F59 22               [24]  831 	ret
      002F5A                        832 00102$:
                                    833 ;	SPI.c:106: select_reg_bank(bank);     // Select the appropriate bank
      002F5A 90 03 51         [24]  834 	mov	dptr,#_eth_spi_read_PARM_2
      002F5D E0               [24]  835 	movx	a,@dptr
      002F5E F5 82            [12]  836 	mov	dpl,a
      002F60 C0 07            [24]  837 	push	ar7
      002F62 12 2E 96         [24]  838 	lcall	_select_reg_bank
      002F65 D0 07            [24]  839 	pop	ar7
                                    840 ;	SPI.c:108: CS_LOW;                    // Pull CS low to start communication
                                    841 ;	assignBit
      002F67 C2 91            [12]  842 	clr	_P1_1
                                    843 ;	SPI.c:109: SPI_send(addr);            // Send the address
      002F69 8F 82            [24]  844 	mov	dpl, r7
      002F6B C0 07            [24]  845 	push	ar7
      002F6D 12 2F 1B         [24]  846 	lcall	_SPI_send
                                    847 ;	SPI.c:110: uint8_t data = SPI_ReadByte(); // Read the data
      002F70 12 2E 73         [24]  848 	lcall	_SPI_ReadByte
      002F73 AE 82            [24]  849 	mov	r6, dpl
      002F75 D0 07            [24]  850 	pop	ar7
                                    851 ;	SPI.c:111: CS_HIGH;                   // Pull CS high to end communication
                                    852 ;	assignBit
      002F77 D2 91            [12]  853 	setb	_P1_1
                                    854 ;	SPI.c:114: printf("Read: Address 0x%02X, Data 0x%02X\n\r", addr, data);
      002F79 8E 04            [24]  855 	mov	ar4,r6
      002F7B 7D 00            [12]  856 	mov	r5,#0x00
      002F7D 7B 00            [12]  857 	mov	r3,#0x00
      002F7F C0 06            [24]  858 	push	ar6
      002F81 C0 04            [24]  859 	push	ar4
      002F83 C0 05            [24]  860 	push	ar5
      002F85 C0 07            [24]  861 	push	ar7
      002F87 C0 03            [24]  862 	push	ar3
      002F89 74 56            [12]  863 	mov	a,#___str_2
      002F8B C0 E0            [24]  864 	push	acc
      002F8D 74 48            [12]  865 	mov	a,#(___str_2 >> 8)
      002F8F C0 E0            [24]  866 	push	acc
      002F91 74 80            [12]  867 	mov	a,#0x80
      002F93 C0 E0            [24]  868 	push	acc
      002F95 12 38 9A         [24]  869 	lcall	_printf
      002F98 E5 81            [12]  870 	mov	a,sp
      002F9A 24 F9            [12]  871 	add	a,#0xf9
      002F9C F5 81            [12]  872 	mov	sp,a
      002F9E D0 06            [24]  873 	pop	ar6
                                    874 ;	SPI.c:116: return data;
      002FA0 8E 82            [24]  875 	mov	dpl, r6
                                    876 ;	SPI.c:117: }
      002FA2 22               [24]  877 	ret
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
      002FA3                        888 _phy_spi_write:
      002FA3 E5 82            [12]  889 	mov	a,dpl
      002FA5 90 03 55         [24]  890 	mov	dptr,#_phy_spi_write_addr_10000_83
      002FA8 F0               [24]  891 	movx	@dptr,a
                                    892 ;	SPI.c:121: spi_control_write(2, 0x14, addr);                      // Write PHY address
      002FA9 E0               [24]  893 	movx	a,@dptr
      002FAA FF               [12]  894 	mov	r7,a
      002FAB 90 03 4D         [24]  895 	mov	dptr,#_spi_control_write_PARM_2
      002FAE 74 14            [12]  896 	mov	a,#0x14
      002FB0 F0               [24]  897 	movx	@dptr,a
      002FB1 90 03 4E         [24]  898 	mov	dptr,#_spi_control_write_PARM_3
      002FB4 EF               [12]  899 	mov	a,r7
      002FB5 F0               [24]  900 	movx	@dptr,a
      002FB6 75 82 02         [24]  901 	mov	dpl, #0x02
      002FB9 C0 07            [24]  902 	push	ar7
      002FBB 12 2E B0         [24]  903 	lcall	_spi_control_write
      002FBE D0 07            [24]  904 	pop	ar7
                                    905 ;	SPI.c:122: spi_control_write(2, 0x16, (uint8_t)(data & 0xFF));    // Write LSB of data
      002FC0 90 03 53         [24]  906 	mov	dptr,#_phy_spi_write_PARM_2
      002FC3 E0               [24]  907 	movx	a,@dptr
      002FC4 FD               [12]  908 	mov	r5,a
      002FC5 A3               [24]  909 	inc	dptr
      002FC6 E0               [24]  910 	movx	a,@dptr
      002FC7 FE               [12]  911 	mov	r6,a
      002FC8 8D 04            [24]  912 	mov	ar4,r5
      002FCA 90 03 4D         [24]  913 	mov	dptr,#_spi_control_write_PARM_2
      002FCD 74 16            [12]  914 	mov	a,#0x16
      002FCF F0               [24]  915 	movx	@dptr,a
      002FD0 90 03 4E         [24]  916 	mov	dptr,#_spi_control_write_PARM_3
      002FD3 EC               [12]  917 	mov	a,r4
      002FD4 F0               [24]  918 	movx	@dptr,a
      002FD5 75 82 02         [24]  919 	mov	dpl, #0x02
      002FD8 C0 07            [24]  920 	push	ar7
      002FDA C0 06            [24]  921 	push	ar6
      002FDC C0 05            [24]  922 	push	ar5
      002FDE 12 2E B0         [24]  923 	lcall	_spi_control_write
      002FE1 D0 05            [24]  924 	pop	ar5
      002FE3 D0 06            [24]  925 	pop	ar6
      002FE5 D0 07            [24]  926 	pop	ar7
                                    927 ;	SPI.c:123: spi_control_write(2, 0x17, (uint8_t)((data >> 8) & 0xFF)); // Write MSB of data
      002FE7 8E 04            [24]  928 	mov	ar4,r6
      002FE9 90 03 4D         [24]  929 	mov	dptr,#_spi_control_write_PARM_2
      002FEC 74 17            [12]  930 	mov	a,#0x17
      002FEE F0               [24]  931 	movx	@dptr,a
      002FEF 90 03 4E         [24]  932 	mov	dptr,#_spi_control_write_PARM_3
      002FF2 EC               [12]  933 	mov	a,r4
      002FF3 F0               [24]  934 	movx	@dptr,a
      002FF4 75 82 02         [24]  935 	mov	dpl, #0x02
      002FF7 C0 07            [24]  936 	push	ar7
      002FF9 C0 06            [24]  937 	push	ar6
      002FFB C0 05            [24]  938 	push	ar5
      002FFD 12 2E B0         [24]  939 	lcall	_spi_control_write
      003000 D0 05            [24]  940 	pop	ar5
      003002 D0 06            [24]  941 	pop	ar6
      003004 D0 07            [24]  942 	pop	ar7
                                    943 ;	SPI.c:126: printf("PHY Write: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003006 7C 00            [12]  944 	mov	r4,#0x00
      003008 C0 05            [24]  945 	push	ar5
      00300A C0 06            [24]  946 	push	ar6
      00300C C0 07            [24]  947 	push	ar7
      00300E C0 04            [24]  948 	push	ar4
      003010 74 7A            [12]  949 	mov	a,#___str_3
      003012 C0 E0            [24]  950 	push	acc
      003014 74 48            [12]  951 	mov	a,#(___str_3 >> 8)
      003016 C0 E0            [24]  952 	push	acc
      003018 74 80            [12]  953 	mov	a,#0x80
      00301A C0 E0            [24]  954 	push	acc
      00301C 12 38 9A         [24]  955 	lcall	_printf
      00301F E5 81            [12]  956 	mov	a,sp
      003021 24 F9            [12]  957 	add	a,#0xf9
      003023 F5 81            [12]  958 	mov	sp,a
                                    959 ;	SPI.c:127: }
      003025 22               [24]  960 	ret
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
      003026                        972 _mac_spi_read:
      003026 E5 82            [12]  973 	mov	a,dpl
      003028 90 03 57         [24]  974 	mov	dptr,#_mac_spi_read_addr_10000_85
      00302B F0               [24]  975 	movx	@dptr,a
                                    976 ;	SPI.c:131: if (addr > 0x1F) {
      00302C E0               [24]  977 	movx	a,@dptr
      00302D FF               [12]  978 	mov  r7,a
      00302E 24 E0            [12]  979 	add	a,#0xff - 0x1f
      003030 50 19            [24]  980 	jnc	00102$
                                    981 ;	SPI.c:132: printf("\n\rInvalid address: MAC register address range [0, 0x1F]\n\r");
      003032 74 1C            [12]  982 	mov	a,#___str_1
      003034 C0 E0            [24]  983 	push	acc
      003036 74 48            [12]  984 	mov	a,#(___str_1 >> 8)
      003038 C0 E0            [24]  985 	push	acc
      00303A 74 80            [12]  986 	mov	a,#0x80
      00303C C0 E0            [24]  987 	push	acc
      00303E 12 38 9A         [24]  988 	lcall	_printf
      003041 15 81            [12]  989 	dec	sp
      003043 15 81            [12]  990 	dec	sp
      003045 15 81            [12]  991 	dec	sp
                                    992 ;	SPI.c:133: return 0; // Return 0 if address is invalid
      003047 75 82 00         [24]  993 	mov	dpl, #0x00
      00304A 22               [24]  994 	ret
      00304B                        995 00102$:
                                    996 ;	SPI.c:136: select_reg_bank(bank); // Select the appropriate register bank
      00304B 90 03 56         [24]  997 	mov	dptr,#_mac_spi_read_PARM_2
      00304E E0               [24]  998 	movx	a,@dptr
      00304F F5 82            [12]  999 	mov	dpl,a
      003051 C0 07            [24] 1000 	push	ar7
      003053 12 2E 96         [24] 1001 	lcall	_select_reg_bank
      003056 D0 07            [24] 1002 	pop	ar7
                                   1003 ;	SPI.c:139: CS_LOW;
                                   1004 ;	assignBit
      003058 C2 91            [12] 1005 	clr	_P1_1
                                   1006 ;	SPI.c:142: SPI_send(addr);
      00305A 8F 82            [24] 1007 	mov	dpl, r7
      00305C C0 07            [24] 1008 	push	ar7
      00305E 12 2F 1B         [24] 1009 	lcall	_SPI_send
                                   1010 ;	SPI.c:145: uint8_t data = SPI_ReadByte();
      003061 12 2E 73         [24] 1011 	lcall	_SPI_ReadByte
      003064 AE 82            [24] 1012 	mov	r6, dpl
      003066 D0 07            [24] 1013 	pop	ar7
                                   1014 ;	SPI.c:148: CS_HIGH;
                                   1015 ;	assignBit
      003068 D2 91            [12] 1016 	setb	_P1_1
                                   1017 ;	SPI.c:151: printf("Read: Address 0x%02X, Data 0x%02X\n", addr, data);
      00306A 8E 04            [24] 1018 	mov	ar4,r6
      00306C 7D 00            [12] 1019 	mov	r5,#0x00
      00306E 7B 00            [12] 1020 	mov	r3,#0x00
      003070 C0 06            [24] 1021 	push	ar6
      003072 C0 04            [24] 1022 	push	ar4
      003074 C0 05            [24] 1023 	push	ar5
      003076 C0 07            [24] 1024 	push	ar7
      003078 C0 03            [24] 1025 	push	ar3
      00307A 74 A3            [12] 1026 	mov	a,#___str_4
      00307C C0 E0            [24] 1027 	push	acc
      00307E 74 48            [12] 1028 	mov	a,#(___str_4 >> 8)
      003080 C0 E0            [24] 1029 	push	acc
      003082 74 80            [12] 1030 	mov	a,#0x80
      003084 C0 E0            [24] 1031 	push	acc
      003086 12 38 9A         [24] 1032 	lcall	_printf
      003089 E5 81            [12] 1033 	mov	a,sp
      00308B 24 F9            [12] 1034 	add	a,#0xf9
      00308D F5 81            [12] 1035 	mov	sp,a
      00308F D0 06            [24] 1036 	pop	ar6
                                   1037 ;	SPI.c:153: return data;
      003091 8E 82            [24] 1038 	mov	dpl, r6
                                   1039 ;	SPI.c:154: }
      003093 22               [24] 1040 	ret
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
      003094                       1053 _phy_spi_read:
      003094 E5 82            [12] 1054 	mov	a,dpl
      003096 90 03 58         [24] 1055 	mov	dptr,#_phy_spi_read_addr_10000_89
      003099 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	SPI.c:159: spi_control_write(2, 0x14, addr);     // Write PHY address
      00309A E0               [24] 1058 	movx	a,@dptr
      00309B FF               [12] 1059 	mov	r7,a
      00309C 90 03 4D         [24] 1060 	mov	dptr,#_spi_control_write_PARM_2
      00309F 74 14            [12] 1061 	mov	a,#0x14
      0030A1 F0               [24] 1062 	movx	@dptr,a
      0030A2 90 03 4E         [24] 1063 	mov	dptr,#_spi_control_write_PARM_3
      0030A5 EF               [12] 1064 	mov	a,r7
      0030A6 F0               [24] 1065 	movx	@dptr,a
      0030A7 75 82 02         [24] 1066 	mov	dpl, #0x02
      0030AA C0 07            [24] 1067 	push	ar7
      0030AC 12 2E B0         [24] 1068 	lcall	_spi_control_write
      0030AF D0 07            [24] 1069 	pop	ar7
                                   1070 ;	SPI.c:160: spi_control_write(2, 0x12, 1);        // Set MICMD.MIIRD bit
      0030B1 90 03 4D         [24] 1071 	mov	dptr,#_spi_control_write_PARM_2
      0030B4 74 12            [12] 1072 	mov	a,#0x12
      0030B6 F0               [24] 1073 	movx	@dptr,a
      0030B7 90 03 4E         [24] 1074 	mov	dptr,#_spi_control_write_PARM_3
      0030BA 74 01            [12] 1075 	mov	a,#0x01
      0030BC F0               [24] 1076 	movx	@dptr,a
      0030BD 75 82 02         [24] 1077 	mov	dpl, #0x02
      0030C0 C0 07            [24] 1078 	push	ar7
      0030C2 12 2E B0         [24] 1079 	lcall	_spi_control_write
                                   1080 ;	SPI.c:162: busy_wait();                          // Wait for the read to complete
      0030C5 12 31 41         [24] 1081 	lcall	_busy_wait
      0030C8 D0 07            [24] 1082 	pop	ar7
                                   1083 ;	SPI.c:164: spi_control_write(2, 0x12, 0);        // Clear MICMD.MIIRD bit
      0030CA 90 03 4D         [24] 1084 	mov	dptr,#_spi_control_write_PARM_2
      0030CD 74 12            [12] 1085 	mov	a,#0x12
      0030CF F0               [24] 1086 	movx	@dptr,a
      0030D0 90 03 4E         [24] 1087 	mov	dptr,#_spi_control_write_PARM_3
      0030D3 E4               [12] 1088 	clr	a
      0030D4 F0               [24] 1089 	movx	@dptr,a
      0030D5 75 82 02         [24] 1090 	mov	dpl, #0x02
      0030D8 C0 07            [24] 1091 	push	ar7
      0030DA 12 2E B0         [24] 1092 	lcall	_spi_control_write
      0030DD D0 07            [24] 1093 	pop	ar7
                                   1094 ;	SPI.c:166: uint16_t data_LSB = mac_spi_read(0x18, 2); // Read LSB of data
      0030DF 90 03 56         [24] 1095 	mov	dptr,#_mac_spi_read_PARM_2
      0030E2 74 02            [12] 1096 	mov	a,#0x02
      0030E4 F0               [24] 1097 	movx	@dptr,a
      0030E5 75 82 18         [24] 1098 	mov	dpl, #0x18
      0030E8 C0 07            [24] 1099 	push	ar7
      0030EA 12 30 26         [24] 1100 	lcall	_mac_spi_read
      0030ED AE 82            [24] 1101 	mov	r6, dpl
      0030EF D0 07            [24] 1102 	pop	ar7
      0030F1 7D 00            [12] 1103 	mov	r5,#0x00
                                   1104 ;	SPI.c:167: uint16_t data_MSB = mac_spi_read(0x19, 2); // Read MSB of data
      0030F3 90 03 56         [24] 1105 	mov	dptr,#_mac_spi_read_PARM_2
      0030F6 74 02            [12] 1106 	mov	a,#0x02
      0030F8 F0               [24] 1107 	movx	@dptr,a
      0030F9 75 82 19         [24] 1108 	mov	dpl, #0x19
      0030FC C0 07            [24] 1109 	push	ar7
      0030FE C0 06            [24] 1110 	push	ar6
      003100 C0 05            [24] 1111 	push	ar5
      003102 12 30 26         [24] 1112 	lcall	_mac_spi_read
      003105 AC 82            [24] 1113 	mov	r4, dpl
      003107 D0 05            [24] 1114 	pop	ar5
      003109 D0 06            [24] 1115 	pop	ar6
      00310B D0 07            [24] 1116 	pop	ar7
                                   1117 ;	SPI.c:169: uint16_t data = (data_MSB << 8) | data_LSB;        // Combine MSB and LSB
      00310D 8C 03            [24] 1118 	mov	ar3,r4
      00310F E4               [12] 1119 	clr	a
      003110 42 06            [12] 1120 	orl	ar6,a
      003112 EB               [12] 1121 	mov	a,r3
      003113 42 05            [12] 1122 	orl	ar5,a
                                   1123 ;	SPI.c:172: printf("PHY Read: Address 0x%02X, Data 0x%04X\n\r", addr, data);
      003115 7C 00            [12] 1124 	mov	r4,#0x00
      003117 C0 06            [24] 1125 	push	ar6
      003119 C0 05            [24] 1126 	push	ar5
      00311B C0 06            [24] 1127 	push	ar6
      00311D C0 05            [24] 1128 	push	ar5
      00311F C0 07            [24] 1129 	push	ar7
      003121 C0 04            [24] 1130 	push	ar4
      003123 74 C6            [12] 1131 	mov	a,#___str_5
      003125 C0 E0            [24] 1132 	push	acc
      003127 74 48            [12] 1133 	mov	a,#(___str_5 >> 8)
      003129 C0 E0            [24] 1134 	push	acc
      00312B 74 80            [12] 1135 	mov	a,#0x80
      00312D C0 E0            [24] 1136 	push	acc
      00312F 12 38 9A         [24] 1137 	lcall	_printf
      003132 E5 81            [12] 1138 	mov	a,sp
      003134 24 F9            [12] 1139 	add	a,#0xf9
      003136 F5 81            [12] 1140 	mov	sp,a
      003138 D0 05            [24] 1141 	pop	ar5
      00313A D0 06            [24] 1142 	pop	ar6
                                   1143 ;	SPI.c:174: return data;        // Combine MSB and LSB
      00313C 8E 82            [24] 1144 	mov	dpl, r6
      00313E 8D 83            [24] 1145 	mov	dph, r5
                                   1146 ;	SPI.c:175: }
      003140 22               [24] 1147 	ret
                                   1148 ;------------------------------------------------------------
                                   1149 ;Allocation info for local variables in function 'busy_wait'
                                   1150 ;------------------------------------------------------------
                                   1151 ;data                      Allocated with name '_busy_wait_data_10000_93'
                                   1152 ;------------------------------------------------------------
                                   1153 ;	SPI.c:177: void busy_wait(void)
                                   1154 ;	-----------------------------------------
                                   1155 ;	 function busy_wait
                                   1156 ;	-----------------------------------------
      003141                       1157 _busy_wait:
                                   1158 ;	SPI.c:179: uint8_t data = mac_spi_read(0x0A, 3); // Read ESTAT register (bank 3)
      003141 90 03 56         [24] 1159 	mov	dptr,#_mac_spi_read_PARM_2
      003144 74 03            [12] 1160 	mov	a,#0x03
      003146 F0               [24] 1161 	movx	@dptr,a
      003147 75 82 0A         [24] 1162 	mov	dpl, #0x0a
      00314A 12 30 26         [24] 1163 	lcall	_mac_spi_read
      00314D E5 82            [12] 1164 	mov	a, dpl
      00314F 90 03 59         [24] 1165 	mov	dptr,#_busy_wait_data_10000_93
      003152 F0               [24] 1166 	movx	@dptr,a
                                   1167 ;	SPI.c:180: while (data & 0x01)
      003153                       1168 00101$:
      003153 90 03 59         [24] 1169 	mov	dptr,#_busy_wait_data_10000_93
      003156 E0               [24] 1170 	movx	a,@dptr
      003157 30 E0 14         [24] 1171 	jnb	acc.0,00104$
                                   1172 ;	SPI.c:182: data = mac_spi_read(0x0A, 3);
      00315A 90 03 56         [24] 1173 	mov	dptr,#_mac_spi_read_PARM_2
      00315D 74 03            [12] 1174 	mov	a,#0x03
      00315F F0               [24] 1175 	movx	@dptr,a
      003160 75 82 0A         [24] 1176 	mov	dpl, #0x0a
      003163 12 30 26         [24] 1177 	lcall	_mac_spi_read
      003166 E5 82            [12] 1178 	mov	a, dpl
      003168 90 03 59         [24] 1179 	mov	dptr,#_busy_wait_data_10000_93
      00316B F0               [24] 1180 	movx	@dptr,a
      00316C 80 E5            [24] 1181 	sjmp	00101$
      00316E                       1182 00104$:
                                   1183 ;	SPI.c:184: }
      00316E 22               [24] 1184 	ret
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
      00316F                       1197 _buffer_init:
      00316F AF 83            [24] 1198 	mov	r7,dph
      003171 E5 82            [12] 1199 	mov	a,dpl
      003173 90 03 5C         [24] 1200 	mov	dptr,#_buffer_init_start_address_10000_95
      003176 F0               [24] 1201 	movx	@dptr,a
      003177 EF               [12] 1202 	mov	a,r7
      003178 A3               [24] 1203 	inc	dptr
      003179 F0               [24] 1204 	movx	@dptr,a
                                   1205 ;	SPI.c:188: if (start_address > 0x1FFF || (start_address + size) > 0x1FFF) {
      00317A 90 03 5C         [24] 1206 	mov	dptr,#_buffer_init_start_address_10000_95
      00317D E0               [24] 1207 	movx	a,@dptr
      00317E FE               [12] 1208 	mov	r6,a
      00317F A3               [24] 1209 	inc	dptr
      003180 E0               [24] 1210 	movx	a,@dptr
      003181 FF               [12] 1211 	mov	r7,a
      003182 8E 04            [24] 1212 	mov	ar4,r6
      003184 8F 05            [24] 1213 	mov	ar5,r7
      003186 C3               [12] 1214 	clr	c
      003187 74 FF            [12] 1215 	mov	a,#0xff
      003189 9C               [12] 1216 	subb	a,r4
      00318A 74 1F            [12] 1217 	mov	a,#0x1f
      00318C 9D               [12] 1218 	subb	a,r5
      00318D 40 17            [24] 1219 	jc	00101$
      00318F 90 03 5A         [24] 1220 	mov	dptr,#_buffer_init_PARM_2
      003192 E0               [24] 1221 	movx	a,@dptr
      003193 FA               [12] 1222 	mov	r2,a
      003194 A3               [24] 1223 	inc	dptr
      003195 E0               [24] 1224 	movx	a,@dptr
      003196 FB               [12] 1225 	mov	r3,a
      003197 EA               [12] 1226 	mov	a,r2
      003198 2E               [12] 1227 	add	a, r6
      003199 F8               [12] 1228 	mov	r0,a
      00319A EB               [12] 1229 	mov	a,r3
      00319B 3F               [12] 1230 	addc	a, r7
      00319C F9               [12] 1231 	mov	r1,a
      00319D C3               [12] 1232 	clr	c
      00319E 74 FF            [12] 1233 	mov	a,#0xff
      0031A0 98               [12] 1234 	subb	a,r0
      0031A1 74 1F            [12] 1235 	mov	a,#0x1f
      0031A3 99               [12] 1236 	subb	a,r1
      0031A4 50 2A            [24] 1237 	jnc	00102$
      0031A6                       1238 00101$:
                                   1239 ;	SPI.c:189: printf("\n\rInvalid Buffer Address or Size: Start 0x%04X, Size 0x%04X\n\r", start_address, size);
      0031A6 90 03 5A         [24] 1240 	mov	dptr,#_buffer_init_PARM_2
      0031A9 E0               [24] 1241 	movx	a,@dptr
      0031AA C0 E0            [24] 1242 	push	acc
      0031AC A3               [24] 1243 	inc	dptr
      0031AD E0               [24] 1244 	movx	a,@dptr
      0031AE C0 E0            [24] 1245 	push	acc
      0031B0 90 03 5C         [24] 1246 	mov	dptr,#_buffer_init_start_address_10000_95
      0031B3 E0               [24] 1247 	movx	a,@dptr
      0031B4 C0 E0            [24] 1248 	push	acc
      0031B6 A3               [24] 1249 	inc	dptr
      0031B7 E0               [24] 1250 	movx	a,@dptr
      0031B8 C0 E0            [24] 1251 	push	acc
      0031BA 74 EE            [12] 1252 	mov	a,#___str_6
      0031BC C0 E0            [24] 1253 	push	acc
      0031BE 74 48            [12] 1254 	mov	a,#(___str_6 >> 8)
      0031C0 C0 E0            [24] 1255 	push	acc
      0031C2 74 80            [12] 1256 	mov	a,#0x80
      0031C4 C0 E0            [24] 1257 	push	acc
      0031C6 12 38 9A         [24] 1258 	lcall	_printf
      0031C9 E5 81            [12] 1259 	mov	a,sp
      0031CB 24 F9            [12] 1260 	add	a,#0xf9
      0031CD F5 81            [12] 1261 	mov	sp,a
                                   1262 ;	SPI.c:190: return;
      0031CF 22               [24] 1263 	ret
      0031D0                       1264 00102$:
                                   1265 ;	SPI.c:194: uint16_t erxst = start_address & ~1; // Make sure ERXST is even
      0031D0 53 04 FE         [24] 1266 	anl	ar4,#0xfe
                                   1267 ;	SPI.c:195: uint16_t erxnd = (start_address + size - 1) & ~1; // Make sure ERXND is even
      0031D3 EA               [12] 1268 	mov	a,r2
      0031D4 2E               [12] 1269 	add	a, r6
      0031D5 FE               [12] 1270 	mov	r6,a
      0031D6 EB               [12] 1271 	mov	a,r3
      0031D7 3F               [12] 1272 	addc	a, r7
      0031D8 FF               [12] 1273 	mov	r7,a
      0031D9 1E               [12] 1274 	dec	r6
      0031DA BE FF 01         [24] 1275 	cjne	r6,#0xff,00114$
      0031DD 1F               [12] 1276 	dec	r7
      0031DE                       1277 00114$:
      0031DE 53 06 FE         [24] 1278 	anl	ar6,#0xfe
                                   1279 ;	SPI.c:198: spi_control_write(0, 0x08, (uint8_t)(erxst >> 8)); // High byte of ERXST
      0031E1 8D 03            [24] 1280 	mov	ar3,r5
      0031E3 90 03 4D         [24] 1281 	mov	dptr,#_spi_control_write_PARM_2
      0031E6 74 08            [12] 1282 	mov	a,#0x08
      0031E8 F0               [24] 1283 	movx	@dptr,a
      0031E9 90 03 4E         [24] 1284 	mov	dptr,#_spi_control_write_PARM_3
      0031EC EB               [12] 1285 	mov	a,r3
      0031ED F0               [24] 1286 	movx	@dptr,a
      0031EE 75 82 00         [24] 1287 	mov	dpl, #0x00
      0031F1 C0 07            [24] 1288 	push	ar7
      0031F3 C0 06            [24] 1289 	push	ar6
      0031F5 C0 05            [24] 1290 	push	ar5
      0031F7 C0 04            [24] 1291 	push	ar4
      0031F9 12 2E B0         [24] 1292 	lcall	_spi_control_write
      0031FC D0 04            [24] 1293 	pop	ar4
      0031FE D0 05            [24] 1294 	pop	ar5
      003200 D0 06            [24] 1295 	pop	ar6
      003202 D0 07            [24] 1296 	pop	ar7
                                   1297 ;	SPI.c:199: spi_control_write(0, 0x09, (uint8_t)(erxst & 0xFF)); // Low byte of ERXST
      003204 8C 03            [24] 1298 	mov	ar3,r4
      003206 90 03 4D         [24] 1299 	mov	dptr,#_spi_control_write_PARM_2
      003209 74 09            [12] 1300 	mov	a,#0x09
      00320B F0               [24] 1301 	movx	@dptr,a
      00320C 90 03 4E         [24] 1302 	mov	dptr,#_spi_control_write_PARM_3
      00320F EB               [12] 1303 	mov	a,r3
      003210 F0               [24] 1304 	movx	@dptr,a
      003211 75 82 00         [24] 1305 	mov	dpl, #0x00
      003214 C0 07            [24] 1306 	push	ar7
      003216 C0 06            [24] 1307 	push	ar6
      003218 C0 05            [24] 1308 	push	ar5
      00321A C0 04            [24] 1309 	push	ar4
      00321C 12 2E B0         [24] 1310 	lcall	_spi_control_write
      00321F D0 04            [24] 1311 	pop	ar4
      003221 D0 05            [24] 1312 	pop	ar5
      003223 D0 06            [24] 1313 	pop	ar6
      003225 D0 07            [24] 1314 	pop	ar7
                                   1315 ;	SPI.c:202: spi_control_write(0, 0x0A, (uint8_t)(erxnd >> 8)); // High byte of ERXND
      003227 8F 03            [24] 1316 	mov	ar3,r7
      003229 90 03 4D         [24] 1317 	mov	dptr,#_spi_control_write_PARM_2
      00322C 74 0A            [12] 1318 	mov	a,#0x0a
      00322E F0               [24] 1319 	movx	@dptr,a
      00322F 90 03 4E         [24] 1320 	mov	dptr,#_spi_control_write_PARM_3
      003232 EB               [12] 1321 	mov	a,r3
      003233 F0               [24] 1322 	movx	@dptr,a
      003234 75 82 00         [24] 1323 	mov	dpl, #0x00
      003237 C0 07            [24] 1324 	push	ar7
      003239 C0 06            [24] 1325 	push	ar6
      00323B C0 05            [24] 1326 	push	ar5
      00323D C0 04            [24] 1327 	push	ar4
      00323F 12 2E B0         [24] 1328 	lcall	_spi_control_write
      003242 D0 04            [24] 1329 	pop	ar4
      003244 D0 05            [24] 1330 	pop	ar5
      003246 D0 06            [24] 1331 	pop	ar6
      003248 D0 07            [24] 1332 	pop	ar7
                                   1333 ;	SPI.c:203: spi_control_write(0, 0x0B, (uint8_t)(erxnd & 0xFF)); // Low byte of ERXND
      00324A 8E 03            [24] 1334 	mov	ar3,r6
      00324C 90 03 4D         [24] 1335 	mov	dptr,#_spi_control_write_PARM_2
      00324F 74 0B            [12] 1336 	mov	a,#0x0b
      003251 F0               [24] 1337 	movx	@dptr,a
      003252 90 03 4E         [24] 1338 	mov	dptr,#_spi_control_write_PARM_3
      003255 EB               [12] 1339 	mov	a,r3
      003256 F0               [24] 1340 	movx	@dptr,a
      003257 75 82 00         [24] 1341 	mov	dpl, #0x00
      00325A C0 07            [24] 1342 	push	ar7
      00325C C0 06            [24] 1343 	push	ar6
      00325E C0 05            [24] 1344 	push	ar5
      003260 C0 04            [24] 1345 	push	ar4
      003262 12 2E B0         [24] 1346 	lcall	_spi_control_write
      003265 D0 04            [24] 1347 	pop	ar4
      003267 D0 05            [24] 1348 	pop	ar5
      003269 D0 06            [24] 1349 	pop	ar6
      00326B D0 07            [24] 1350 	pop	ar7
                                   1351 ;	SPI.c:205: printf("\n\rBuffer Initialized: Start 0x%04X, End 0x%04X\n\r", erxst, erxnd);
      00326D C0 06            [24] 1352 	push	ar6
      00326F C0 07            [24] 1353 	push	ar7
      003271 C0 04            [24] 1354 	push	ar4
      003273 C0 05            [24] 1355 	push	ar5
      003275 74 2C            [12] 1356 	mov	a,#___str_7
      003277 C0 E0            [24] 1357 	push	acc
      003279 74 49            [12] 1358 	mov	a,#(___str_7 >> 8)
      00327B C0 E0            [24] 1359 	push	acc
      00327D 74 80            [12] 1360 	mov	a,#0x80
      00327F C0 E0            [24] 1361 	push	acc
      003281 12 38 9A         [24] 1362 	lcall	_printf
      003284 E5 81            [12] 1363 	mov	a,sp
      003286 24 F9            [12] 1364 	add	a,#0xf9
      003288 F5 81            [12] 1365 	mov	sp,a
                                   1366 ;	SPI.c:206: }
      00328A 22               [24] 1367 	ret
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
      00328B                       1383 _spi_buffer_read:
      00328B AF 83            [24] 1384 	mov	r7,dph
      00328D E5 82            [12] 1385 	mov	a,dpl
      00328F 90 03 63         [24] 1386 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      003292 F0               [24] 1387 	movx	@dptr,a
      003293 EF               [12] 1388 	mov	a,r7
      003294 A3               [24] 1389 	inc	dptr
      003295 F0               [24] 1390 	movx	@dptr,a
                                   1391 ;	SPI.c:211: if (num_bytes < 1) {
      003296 90 03 63         [24] 1392 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      003299 E0               [24] 1393 	movx	a,@dptr
      00329A FE               [12] 1394 	mov	r6,a
      00329B A3               [24] 1395 	inc	dptr
      00329C E0               [24] 1396 	movx	a,@dptr
      00329D FF               [12] 1397 	mov	r7,a
      00329E C3               [12] 1398 	clr	c
      00329F EE               [12] 1399 	mov	a,r6
      0032A0 94 01            [12] 1400 	subb	a,#0x01
      0032A2 EF               [12] 1401 	mov	a,r7
      0032A3 64 80            [12] 1402 	xrl	a,#0x80
      0032A5 94 80            [12] 1403 	subb	a,#0x80
      0032A7 50 1A            [24] 1404 	jnc	00102$
                                   1405 ;	SPI.c:212: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      0032A9 C0 06            [24] 1406 	push	ar6
      0032AB C0 07            [24] 1407 	push	ar7
      0032AD 74 5D            [12] 1408 	mov	a,#___str_8
      0032AF C0 E0            [24] 1409 	push	acc
      0032B1 74 49            [12] 1410 	mov	a,#(___str_8 >> 8)
      0032B3 C0 E0            [24] 1411 	push	acc
      0032B5 74 80            [12] 1412 	mov	a,#0x80
      0032B7 C0 E0            [24] 1413 	push	acc
      0032B9 12 38 9A         [24] 1414 	lcall	_printf
      0032BC E5 81            [12] 1415 	mov	a,sp
      0032BE 24 FB            [12] 1416 	add	a,#0xfb
      0032C0 F5 81            [12] 1417 	mov	sp,a
                                   1418 ;	SPI.c:213: return;
      0032C2 22               [24] 1419 	ret
      0032C3                       1420 00102$:
                                   1421 ;	SPI.c:215: if (start_address > 0x1FFF) {
      0032C3 90 03 5E         [24] 1422 	mov	dptr,#_spi_buffer_read_PARM_2
      0032C6 E0               [24] 1423 	movx	a,@dptr
      0032C7 FC               [12] 1424 	mov	r4,a
      0032C8 A3               [24] 1425 	inc	dptr
      0032C9 E0               [24] 1426 	movx	a,@dptr
      0032CA FD               [12] 1427 	mov	r5,a
      0032CB 8C 02            [24] 1428 	mov	ar2,r4
      0032CD 8D 03            [24] 1429 	mov	ar3,r5
      0032CF C3               [12] 1430 	clr	c
      0032D0 74 FF            [12] 1431 	mov	a,#0xff
      0032D2 9A               [12] 1432 	subb	a,r2
      0032D3 74 1F            [12] 1433 	mov	a,#0x1f
      0032D5 9B               [12] 1434 	subb	a,r3
      0032D6 50 1A            [24] 1435 	jnc	00104$
                                   1436 ;	SPI.c:216: printf("\n\rInvalid address: %04X\n\r", start_address);
      0032D8 C0 04            [24] 1437 	push	ar4
      0032DA C0 05            [24] 1438 	push	ar5
      0032DC 74 7D            [12] 1439 	mov	a,#___str_9
      0032DE C0 E0            [24] 1440 	push	acc
      0032E0 74 49            [12] 1441 	mov	a,#(___str_9 >> 8)
      0032E2 C0 E0            [24] 1442 	push	acc
      0032E4 74 80            [12] 1443 	mov	a,#0x80
      0032E6 C0 E0            [24] 1444 	push	acc
      0032E8 12 38 9A         [24] 1445 	lcall	_printf
      0032EB E5 81            [12] 1446 	mov	a,sp
      0032ED 24 FB            [12] 1447 	add	a,#0xfb
      0032EF F5 81            [12] 1448 	mov	sp,a
                                   1449 ;	SPI.c:217: return;
      0032F1 22               [24] 1450 	ret
      0032F2                       1451 00104$:
                                   1452 ;	SPI.c:220: if (num_bytes > 1) {
      0032F2 C3               [12] 1453 	clr	c
      0032F3 74 01            [12] 1454 	mov	a,#0x01
      0032F5 9E               [12] 1455 	subb	a,r6
      0032F6 74 80            [12] 1456 	mov	a,#(0x00 ^ 0x80)
      0032F8 8F F0            [24] 1457 	mov	b,r7
      0032FA 63 F0 80         [24] 1458 	xrl	b,#0x80
      0032FD 95 F0            [12] 1459 	subb	a,b
      0032FF 50 0B            [24] 1460 	jnc	00106$
                                   1461 ;	SPI.c:221: spi_set_autoinc();
      003301 C0 05            [24] 1462 	push	ar5
      003303 C0 04            [24] 1463 	push	ar4
      003305 12 2E 85         [24] 1464 	lcall	_spi_set_autoinc
      003308 D0 04            [24] 1465 	pop	ar4
      00330A D0 05            [24] 1466 	pop	ar5
      00330C                       1467 00106$:
                                   1468 ;	SPI.c:225: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      00330C 8D 07            [24] 1469 	mov	ar7,r5
                                   1470 ;	SPI.c:226: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      00330E 8C 06            [24] 1471 	mov	ar6,r4
                                   1472 ;	SPI.c:228: spi_control_write(0, 0x01, higher_byte); // High byte
      003310 90 03 4D         [24] 1473 	mov	dptr,#_spi_control_write_PARM_2
      003313 74 01            [12] 1474 	mov	a,#0x01
      003315 F0               [24] 1475 	movx	@dptr,a
      003316 90 03 4E         [24] 1476 	mov	dptr,#_spi_control_write_PARM_3
      003319 EF               [12] 1477 	mov	a,r7
      00331A F0               [24] 1478 	movx	@dptr,a
      00331B 75 82 00         [24] 1479 	mov	dpl, #0x00
      00331E C0 06            [24] 1480 	push	ar6
      003320 C0 05            [24] 1481 	push	ar5
      003322 C0 04            [24] 1482 	push	ar4
      003324 12 2E B0         [24] 1483 	lcall	_spi_control_write
      003327 D0 04            [24] 1484 	pop	ar4
      003329 D0 05            [24] 1485 	pop	ar5
      00332B D0 06            [24] 1486 	pop	ar6
                                   1487 ;	SPI.c:229: spi_control_write(0, 0x00, lower_byte); // Low byte
      00332D 90 03 4D         [24] 1488 	mov	dptr,#_spi_control_write_PARM_2
      003330 E4               [12] 1489 	clr	a
      003331 F0               [24] 1490 	movx	@dptr,a
      003332 90 03 4E         [24] 1491 	mov	dptr,#_spi_control_write_PARM_3
      003335 EE               [12] 1492 	mov	a,r6
      003336 F0               [24] 1493 	movx	@dptr,a
      003337 75 82 00         [24] 1494 	mov	dpl, #0x00
      00333A C0 05            [24] 1495 	push	ar5
      00333C C0 04            [24] 1496 	push	ar4
      00333E 12 2E B0         [24] 1497 	lcall	_spi_control_write
                                   1498 ;	SPI.c:232: CS_LOW; // Pull CS Low
                                   1499 ;	assignBit
      003341 C2 91            [12] 1500 	clr	_P1_1
                                   1501 ;	SPI.c:233: SPI_send(opcode); // Send opcode
      003343 75 82 3A         [24] 1502 	mov	dpl, #0x3a
      003346 12 2F 1B         [24] 1503 	lcall	_SPI_send
      003349 D0 04            [24] 1504 	pop	ar4
      00334B D0 05            [24] 1505 	pop	ar5
                                   1506 ;	SPI.c:236: printf("Reading %d bytes from buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      00334D 90 03 63         [24] 1507 	mov	dptr,#_spi_buffer_read_num_bytes_10000_99
      003350 E0               [24] 1508 	movx	a,@dptr
      003351 FE               [12] 1509 	mov	r6,a
      003352 A3               [24] 1510 	inc	dptr
      003353 E0               [24] 1511 	movx	a,@dptr
      003354 FF               [12] 1512 	mov	r7,a
      003355 C0 07            [24] 1513 	push	ar7
      003357 C0 06            [24] 1514 	push	ar6
      003359 C0 04            [24] 1515 	push	ar4
      00335B C0 05            [24] 1516 	push	ar5
      00335D C0 06            [24] 1517 	push	ar6
      00335F C0 07            [24] 1518 	push	ar7
      003361 74 97            [12] 1519 	mov	a,#___str_10
      003363 C0 E0            [24] 1520 	push	acc
      003365 74 49            [12] 1521 	mov	a,#(___str_10 >> 8)
      003367 C0 E0            [24] 1522 	push	acc
      003369 74 80            [12] 1523 	mov	a,#0x80
      00336B C0 E0            [24] 1524 	push	acc
      00336D 12 38 9A         [24] 1525 	lcall	_printf
      003370 E5 81            [12] 1526 	mov	a,sp
      003372 24 F9            [12] 1527 	add	a,#0xf9
      003374 F5 81            [12] 1528 	mov	sp,a
      003376 D0 06            [24] 1529 	pop	ar6
      003378 D0 07            [24] 1530 	pop	ar7
                                   1531 ;	SPI.c:237: for (int i = 0; i < num_bytes; i++) {
      00337A 90 03 65         [24] 1532 	mov	dptr,#_spi_buffer_read_i_20002_106
      00337D E4               [12] 1533 	clr	a
      00337E F0               [24] 1534 	movx	@dptr,a
      00337F A3               [24] 1535 	inc	dptr
      003380 F0               [24] 1536 	movx	@dptr,a
      003381 90 03 60         [24] 1537 	mov	dptr,#_spi_buffer_read_PARM_3
      003384 E0               [24] 1538 	movx	a,@dptr
      003385 FB               [12] 1539 	mov	r3,a
      003386 A3               [24] 1540 	inc	dptr
      003387 E0               [24] 1541 	movx	a,@dptr
      003388 FC               [12] 1542 	mov	r4,a
      003389 A3               [24] 1543 	inc	dptr
      00338A E0               [24] 1544 	movx	a,@dptr
      00338B FD               [12] 1545 	mov	r5,a
      00338C                       1546 00109$:
      00338C 90 03 65         [24] 1547 	mov	dptr,#_spi_buffer_read_i_20002_106
      00338F E0               [24] 1548 	movx	a,@dptr
      003390 F9               [12] 1549 	mov	r1,a
      003391 A3               [24] 1550 	inc	dptr
      003392 E0               [24] 1551 	movx	a,@dptr
      003393 FA               [12] 1552 	mov	r2,a
      003394 C3               [12] 1553 	clr	c
      003395 E9               [12] 1554 	mov	a,r1
      003396 9E               [12] 1555 	subb	a,r6
      003397 EA               [12] 1556 	mov	a,r2
      003398 64 80            [12] 1557 	xrl	a,#0x80
      00339A 8F F0            [24] 1558 	mov	b,r7
      00339C 63 F0 80         [24] 1559 	xrl	b,#0x80
      00339F 95 F0            [12] 1560 	subb	a,b
      0033A1 40 03            [24] 1561 	jc	00147$
      0033A3 02 34 29         [24] 1562 	ljmp	00107$
      0033A6                       1563 00147$:
                                   1564 ;	SPI.c:238: *data_ptr = SPI_ReadByte(); // Read data
      0033A6 C0 06            [24] 1565 	push	ar6
      0033A8 C0 07            [24] 1566 	push	ar7
      0033AA C0 07            [24] 1567 	push	ar7
      0033AC C0 06            [24] 1568 	push	ar6
      0033AE C0 05            [24] 1569 	push	ar5
      0033B0 C0 04            [24] 1570 	push	ar4
      0033B2 C0 03            [24] 1571 	push	ar3
      0033B4 C0 02            [24] 1572 	push	ar2
      0033B6 C0 01            [24] 1573 	push	ar1
      0033B8 12 2E 73         [24] 1574 	lcall	_SPI_ReadByte
      0033BB A8 82            [24] 1575 	mov	r0, dpl
      0033BD D0 01            [24] 1576 	pop	ar1
      0033BF D0 02            [24] 1577 	pop	ar2
      0033C1 D0 03            [24] 1578 	pop	ar3
      0033C3 D0 04            [24] 1579 	pop	ar4
      0033C5 D0 05            [24] 1580 	pop	ar5
      0033C7 D0 06            [24] 1581 	pop	ar6
      0033C9 D0 07            [24] 1582 	pop	ar7
      0033CB 8B 82            [24] 1583 	mov	dpl,r3
      0033CD 8C 83            [24] 1584 	mov	dph,r4
      0033CF 8D F0            [24] 1585 	mov	b,r5
      0033D1 E8               [12] 1586 	mov	a,r0
      0033D2 12 37 08         [24] 1587 	lcall	__gptrput
      0033D5 A3               [24] 1588 	inc	dptr
      0033D6 AB 82            [24] 1589 	mov	r3,dpl
      0033D8 AC 83            [24] 1590 	mov	r4,dph
                                   1591 ;	SPI.c:239: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      0033DA 7F 00            [12] 1592 	mov	r7,#0x00
      0033DC 09               [12] 1593 	inc	r1
      0033DD B9 00 01         [24] 1594 	cjne	r1,#0x00,00148$
      0033E0 0A               [12] 1595 	inc	r2
      0033E1                       1596 00148$:
      0033E1 C0 07            [24] 1597 	push	ar7
      0033E3 C0 06            [24] 1598 	push	ar6
      0033E5 C0 05            [24] 1599 	push	ar5
      0033E7 C0 04            [24] 1600 	push	ar4
      0033E9 C0 03            [24] 1601 	push	ar3
      0033EB C0 02            [24] 1602 	push	ar2
      0033ED C0 01            [24] 1603 	push	ar1
      0033EF C0 00            [24] 1604 	push	ar0
      0033F1 C0 07            [24] 1605 	push	ar7
      0033F3 C0 01            [24] 1606 	push	ar1
      0033F5 C0 02            [24] 1607 	push	ar2
      0033F7 74 D2            [12] 1608 	mov	a,#___str_11
      0033F9 C0 E0            [24] 1609 	push	acc
      0033FB 74 49            [12] 1610 	mov	a,#(___str_11 >> 8)
      0033FD C0 E0            [24] 1611 	push	acc
      0033FF 74 80            [12] 1612 	mov	a,#0x80
      003401 C0 E0            [24] 1613 	push	acc
      003403 12 38 9A         [24] 1614 	lcall	_printf
      003406 E5 81            [12] 1615 	mov	a,sp
      003408 24 F9            [12] 1616 	add	a,#0xf9
      00340A F5 81            [12] 1617 	mov	sp,a
      00340C D0 01            [24] 1618 	pop	ar1
      00340E D0 02            [24] 1619 	pop	ar2
      003410 D0 03            [24] 1620 	pop	ar3
      003412 D0 04            [24] 1621 	pop	ar4
      003414 D0 05            [24] 1622 	pop	ar5
      003416 D0 06            [24] 1623 	pop	ar6
      003418 D0 07            [24] 1624 	pop	ar7
                                   1625 ;	SPI.c:240: data_ptr++;
                                   1626 ;	SPI.c:237: for (int i = 0; i < num_bytes; i++) {
      00341A 90 03 65         [24] 1627 	mov	dptr,#_spi_buffer_read_i_20002_106
      00341D E9               [12] 1628 	mov	a,r1
      00341E F0               [24] 1629 	movx	@dptr,a
      00341F EA               [12] 1630 	mov	a,r2
      003420 A3               [24] 1631 	inc	dptr
      003421 F0               [24] 1632 	movx	@dptr,a
      003422 D0 07            [24] 1633 	pop	ar7
      003424 D0 06            [24] 1634 	pop	ar6
      003426 02 33 8C         [24] 1635 	ljmp	00109$
      003429                       1636 00107$:
                                   1637 ;	SPI.c:242: CS_HIGH; // Pull CS High
                                   1638 ;	assignBit
      003429 D2 91            [12] 1639 	setb	_P1_1
                                   1640 ;	SPI.c:243: }
      00342B 22               [24] 1641 	ret
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
      00342C                       1657 _spi_buffer_write:
      00342C AF 83            [24] 1658 	mov	r7,dph
      00342E E5 82            [12] 1659 	mov	a,dpl
      003430 90 03 6C         [24] 1660 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      003433 F0               [24] 1661 	movx	@dptr,a
      003434 EF               [12] 1662 	mov	a,r7
      003435 A3               [24] 1663 	inc	dptr
      003436 F0               [24] 1664 	movx	@dptr,a
                                   1665 ;	SPI.c:248: if (num_bytes < 1)
      003437 90 03 6C         [24] 1666 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      00343A E0               [24] 1667 	movx	a,@dptr
      00343B FE               [12] 1668 	mov	r6,a
      00343C A3               [24] 1669 	inc	dptr
      00343D E0               [24] 1670 	movx	a,@dptr
      00343E FF               [12] 1671 	mov	r7,a
      00343F C3               [12] 1672 	clr	c
      003440 EE               [12] 1673 	mov	a,r6
      003441 94 01            [12] 1674 	subb	a,#0x01
      003443 EF               [12] 1675 	mov	a,r7
      003444 64 80            [12] 1676 	xrl	a,#0x80
      003446 94 80            [12] 1677 	subb	a,#0x80
      003448 50 1A            [24] 1678 	jnc	00102$
                                   1679 ;	SPI.c:250: printf("\n\rInvalid number of bytes: %d\n\r", num_bytes);
      00344A C0 06            [24] 1680 	push	ar6
      00344C C0 07            [24] 1681 	push	ar7
      00344E 74 5D            [12] 1682 	mov	a,#___str_8
      003450 C0 E0            [24] 1683 	push	acc
      003452 74 49            [12] 1684 	mov	a,#(___str_8 >> 8)
      003454 C0 E0            [24] 1685 	push	acc
      003456 74 80            [12] 1686 	mov	a,#0x80
      003458 C0 E0            [24] 1687 	push	acc
      00345A 12 38 9A         [24] 1688 	lcall	_printf
      00345D E5 81            [12] 1689 	mov	a,sp
      00345F 24 FB            [12] 1690 	add	a,#0xfb
      003461 F5 81            [12] 1691 	mov	sp,a
                                   1692 ;	SPI.c:251: return;
      003463 22               [24] 1693 	ret
      003464                       1694 00102$:
                                   1695 ;	SPI.c:253: if (start_address > 0x1FFF) {
      003464 90 03 67         [24] 1696 	mov	dptr,#_spi_buffer_write_PARM_2
      003467 E0               [24] 1697 	movx	a,@dptr
      003468 FC               [12] 1698 	mov	r4,a
      003469 A3               [24] 1699 	inc	dptr
      00346A E0               [24] 1700 	movx	a,@dptr
      00346B FD               [12] 1701 	mov	r5,a
      00346C 8C 02            [24] 1702 	mov	ar2,r4
      00346E 8D 03            [24] 1703 	mov	ar3,r5
      003470 C3               [12] 1704 	clr	c
      003471 74 FF            [12] 1705 	mov	a,#0xff
      003473 9A               [12] 1706 	subb	a,r2
      003474 74 1F            [12] 1707 	mov	a,#0x1f
      003476 9B               [12] 1708 	subb	a,r3
      003477 50 1A            [24] 1709 	jnc	00104$
                                   1710 ;	SPI.c:254: printf("\n\rInvalid address: %04X\n\r", start_address);
      003479 C0 04            [24] 1711 	push	ar4
      00347B C0 05            [24] 1712 	push	ar5
      00347D 74 7D            [12] 1713 	mov	a,#___str_9
      00347F C0 E0            [24] 1714 	push	acc
      003481 74 49            [12] 1715 	mov	a,#(___str_9 >> 8)
      003483 C0 E0            [24] 1716 	push	acc
      003485 74 80            [12] 1717 	mov	a,#0x80
      003487 C0 E0            [24] 1718 	push	acc
      003489 12 38 9A         [24] 1719 	lcall	_printf
      00348C E5 81            [12] 1720 	mov	a,sp
      00348E 24 FB            [12] 1721 	add	a,#0xfb
      003490 F5 81            [12] 1722 	mov	sp,a
                                   1723 ;	SPI.c:255: return;
      003492 22               [24] 1724 	ret
      003493                       1725 00104$:
                                   1726 ;	SPI.c:259: if (num_bytes > 1) {
      003493 C3               [12] 1727 	clr	c
      003494 74 01            [12] 1728 	mov	a,#0x01
      003496 9E               [12] 1729 	subb	a,r6
      003497 74 80            [12] 1730 	mov	a,#(0x00 ^ 0x80)
      003499 8F F0            [24] 1731 	mov	b,r7
      00349B 63 F0 80         [24] 1732 	xrl	b,#0x80
      00349E 95 F0            [12] 1733 	subb	a,b
      0034A0 50 0B            [24] 1734 	jnc	00106$
                                   1735 ;	SPI.c:260: spi_set_autoinc();
      0034A2 C0 05            [24] 1736 	push	ar5
      0034A4 C0 04            [24] 1737 	push	ar4
      0034A6 12 2E 85         [24] 1738 	lcall	_spi_set_autoinc
      0034A9 D0 04            [24] 1739 	pop	ar4
      0034AB D0 05            [24] 1740 	pop	ar5
      0034AD                       1741 00106$:
                                   1742 ;	SPI.c:263: uint8_t higher_byte = (uint8_t)((start_address >> 8) & 0xFF);
      0034AD 8D 07            [24] 1743 	mov	ar7,r5
                                   1744 ;	SPI.c:264: uint8_t lower_byte = (uint8_t)(start_address & 0xFF);
      0034AF 8C 06            [24] 1745 	mov	ar6,r4
                                   1746 ;	SPI.c:266: spi_control_write(0, 0x03, higher_byte); // High byte
      0034B1 90 03 4D         [24] 1747 	mov	dptr,#_spi_control_write_PARM_2
      0034B4 74 03            [12] 1748 	mov	a,#0x03
      0034B6 F0               [24] 1749 	movx	@dptr,a
      0034B7 90 03 4E         [24] 1750 	mov	dptr,#_spi_control_write_PARM_3
      0034BA EF               [12] 1751 	mov	a,r7
      0034BB F0               [24] 1752 	movx	@dptr,a
      0034BC 75 82 00         [24] 1753 	mov	dpl, #0x00
      0034BF C0 06            [24] 1754 	push	ar6
      0034C1 C0 05            [24] 1755 	push	ar5
      0034C3 C0 04            [24] 1756 	push	ar4
      0034C5 12 2E B0         [24] 1757 	lcall	_spi_control_write
      0034C8 D0 04            [24] 1758 	pop	ar4
      0034CA D0 05            [24] 1759 	pop	ar5
      0034CC D0 06            [24] 1760 	pop	ar6
                                   1761 ;	SPI.c:267: spi_control_write(0, 0x02, lower_byte); // Low byte
      0034CE 90 03 4D         [24] 1762 	mov	dptr,#_spi_control_write_PARM_2
      0034D1 74 02            [12] 1763 	mov	a,#0x02
      0034D3 F0               [24] 1764 	movx	@dptr,a
      0034D4 90 03 4E         [24] 1765 	mov	dptr,#_spi_control_write_PARM_3
      0034D7 EE               [12] 1766 	mov	a,r6
      0034D8 F0               [24] 1767 	movx	@dptr,a
      0034D9 75 82 00         [24] 1768 	mov	dpl, #0x00
      0034DC C0 05            [24] 1769 	push	ar5
      0034DE C0 04            [24] 1770 	push	ar4
      0034E0 12 2E B0         [24] 1771 	lcall	_spi_control_write
                                   1772 ;	SPI.c:270: CS_LOW; // Pull CS Low
                                   1773 ;	assignBit
      0034E3 C2 91            [12] 1774 	clr	_P1_1
                                   1775 ;	SPI.c:271: SPI_send(opcode); // Send opcode
      0034E5 75 82 7A         [24] 1776 	mov	dpl, #0x7a
      0034E8 12 2F 1B         [24] 1777 	lcall	_SPI_send
      0034EB D0 04            [24] 1778 	pop	ar4
      0034ED D0 05            [24] 1779 	pop	ar5
                                   1780 ;	SPI.c:274: printf("Writing %d bytes to buffer starting at address 0x%04X:\n\r", num_bytes, start_address);
      0034EF 90 03 6C         [24] 1781 	mov	dptr,#_spi_buffer_write_num_bytes_10000_108
      0034F2 E0               [24] 1782 	movx	a,@dptr
      0034F3 FE               [12] 1783 	mov	r6,a
      0034F4 A3               [24] 1784 	inc	dptr
      0034F5 E0               [24] 1785 	movx	a,@dptr
      0034F6 FF               [12] 1786 	mov	r7,a
      0034F7 C0 07            [24] 1787 	push	ar7
      0034F9 C0 06            [24] 1788 	push	ar6
      0034FB C0 04            [24] 1789 	push	ar4
      0034FD C0 05            [24] 1790 	push	ar5
      0034FF C0 06            [24] 1791 	push	ar6
      003501 C0 07            [24] 1792 	push	ar7
      003503 74 E4            [12] 1793 	mov	a,#___str_12
      003505 C0 E0            [24] 1794 	push	acc
      003507 74 49            [12] 1795 	mov	a,#(___str_12 >> 8)
      003509 C0 E0            [24] 1796 	push	acc
      00350B 74 80            [12] 1797 	mov	a,#0x80
      00350D C0 E0            [24] 1798 	push	acc
      00350F 12 38 9A         [24] 1799 	lcall	_printf
      003512 E5 81            [12] 1800 	mov	a,sp
      003514 24 F9            [12] 1801 	add	a,#0xf9
      003516 F5 81            [12] 1802 	mov	sp,a
      003518 D0 06            [24] 1803 	pop	ar6
      00351A D0 07            [24] 1804 	pop	ar7
                                   1805 ;	SPI.c:275: for (int i = 0; i < num_bytes; i++) {
      00351C 90 03 6E         [24] 1806 	mov	dptr,#_spi_buffer_write_i_20002_115
      00351F E4               [12] 1807 	clr	a
      003520 F0               [24] 1808 	movx	@dptr,a
      003521 A3               [24] 1809 	inc	dptr
      003522 F0               [24] 1810 	movx	@dptr,a
      003523 90 03 69         [24] 1811 	mov	dptr,#_spi_buffer_write_PARM_3
      003526 E0               [24] 1812 	movx	a,@dptr
      003527 FB               [12] 1813 	mov	r3,a
      003528 A3               [24] 1814 	inc	dptr
      003529 E0               [24] 1815 	movx	a,@dptr
      00352A FC               [12] 1816 	mov	r4,a
      00352B A3               [24] 1817 	inc	dptr
      00352C E0               [24] 1818 	movx	a,@dptr
      00352D FD               [12] 1819 	mov	r5,a
      00352E                       1820 00109$:
      00352E 90 03 6E         [24] 1821 	mov	dptr,#_spi_buffer_write_i_20002_115
      003531 E0               [24] 1822 	movx	a,@dptr
      003532 F9               [12] 1823 	mov	r1,a
      003533 A3               [24] 1824 	inc	dptr
      003534 E0               [24] 1825 	movx	a,@dptr
      003535 FA               [12] 1826 	mov	r2,a
      003536 C3               [12] 1827 	clr	c
      003537 E9               [12] 1828 	mov	a,r1
      003538 9E               [12] 1829 	subb	a,r6
      003539 EA               [12] 1830 	mov	a,r2
      00353A 64 80            [12] 1831 	xrl	a,#0x80
      00353C 8F F0            [24] 1832 	mov	b,r7
      00353E 63 F0 80         [24] 1833 	xrl	b,#0x80
      003541 95 F0            [12] 1834 	subb	a,b
      003543 40 03            [24] 1835 	jc	00147$
      003545 02 35 D5         [24] 1836 	ljmp	00107$
      003548                       1837 00147$:
                                   1838 ;	SPI.c:276: printf("Byte %d: 0x%02X\n\r", i + 1, *data_ptr); // Print each byte
      003548 C0 06            [24] 1839 	push	ar6
      00354A C0 07            [24] 1840 	push	ar7
      00354C 8B 82            [24] 1841 	mov	dpl,r3
      00354E 8C 83            [24] 1842 	mov	dph,r4
      003550 8D F0            [24] 1843 	mov	b,r5
      003552 12 42 BC         [24] 1844 	lcall	__gptrget
      003555 F8               [12] 1845 	mov	r0,a
      003556 7F 00            [12] 1846 	mov	r7,#0x00
      003558 09               [12] 1847 	inc	r1
      003559 B9 00 01         [24] 1848 	cjne	r1,#0x00,00148$
      00355C 0A               [12] 1849 	inc	r2
      00355D                       1850 00148$:
      00355D C0 07            [24] 1851 	push	ar7
      00355F C0 06            [24] 1852 	push	ar6
      003561 C0 05            [24] 1853 	push	ar5
      003563 C0 04            [24] 1854 	push	ar4
      003565 C0 03            [24] 1855 	push	ar3
      003567 C0 02            [24] 1856 	push	ar2
      003569 C0 01            [24] 1857 	push	ar1
      00356B C0 00            [24] 1858 	push	ar0
      00356D C0 07            [24] 1859 	push	ar7
      00356F C0 01            [24] 1860 	push	ar1
      003571 C0 02            [24] 1861 	push	ar2
      003573 74 D2            [12] 1862 	mov	a,#___str_11
      003575 C0 E0            [24] 1863 	push	acc
      003577 74 49            [12] 1864 	mov	a,#(___str_11 >> 8)
      003579 C0 E0            [24] 1865 	push	acc
      00357B 74 80            [12] 1866 	mov	a,#0x80
      00357D C0 E0            [24] 1867 	push	acc
      00357F 12 38 9A         [24] 1868 	lcall	_printf
      003582 E5 81            [12] 1869 	mov	a,sp
      003584 24 F9            [12] 1870 	add	a,#0xf9
      003586 F5 81            [12] 1871 	mov	sp,a
      003588 D0 01            [24] 1872 	pop	ar1
      00358A D0 02            [24] 1873 	pop	ar2
      00358C D0 03            [24] 1874 	pop	ar3
      00358E D0 04            [24] 1875 	pop	ar4
      003590 D0 05            [24] 1876 	pop	ar5
      003592 D0 06            [24] 1877 	pop	ar6
      003594 D0 07            [24] 1878 	pop	ar7
                                   1879 ;	SPI.c:277: SPI_send(*data_ptr); // Send data
      003596 8B 82            [24] 1880 	mov	dpl,r3
      003598 8C 83            [24] 1881 	mov	dph,r4
      00359A 8D F0            [24] 1882 	mov	b,r5
      00359C 12 42 BC         [24] 1883 	lcall	__gptrget
      00359F FF               [12] 1884 	mov	r7,a
      0035A0 A3               [24] 1885 	inc	dptr
      0035A1 AB 82            [24] 1886 	mov	r3,dpl
      0035A3 AC 83            [24] 1887 	mov	r4,dph
      0035A5 8F 82            [24] 1888 	mov	dpl, r7
      0035A7 C0 07            [24] 1889 	push	ar7
      0035A9 C0 06            [24] 1890 	push	ar6
      0035AB C0 05            [24] 1891 	push	ar5
      0035AD C0 04            [24] 1892 	push	ar4
      0035AF C0 03            [24] 1893 	push	ar3
      0035B1 C0 02            [24] 1894 	push	ar2
      0035B3 C0 01            [24] 1895 	push	ar1
      0035B5 12 2F 1B         [24] 1896 	lcall	_SPI_send
      0035B8 D0 01            [24] 1897 	pop	ar1
      0035BA D0 02            [24] 1898 	pop	ar2
      0035BC D0 03            [24] 1899 	pop	ar3
      0035BE D0 04            [24] 1900 	pop	ar4
      0035C0 D0 05            [24] 1901 	pop	ar5
      0035C2 D0 06            [24] 1902 	pop	ar6
      0035C4 D0 07            [24] 1903 	pop	ar7
                                   1904 ;	SPI.c:278: data_ptr++;
                                   1905 ;	SPI.c:275: for (int i = 0; i < num_bytes; i++) {
      0035C6 90 03 6E         [24] 1906 	mov	dptr,#_spi_buffer_write_i_20002_115
      0035C9 E9               [12] 1907 	mov	a,r1
      0035CA F0               [24] 1908 	movx	@dptr,a
      0035CB EA               [12] 1909 	mov	a,r2
      0035CC A3               [24] 1910 	inc	dptr
      0035CD F0               [24] 1911 	movx	@dptr,a
      0035CE D0 07            [24] 1912 	pop	ar7
      0035D0 D0 06            [24] 1913 	pop	ar6
      0035D2 02 35 2E         [24] 1914 	ljmp	00109$
      0035D5                       1915 00107$:
                                   1916 ;	SPI.c:280: CS_HIGH; // Pull CS High
                                   1917 ;	assignBit
      0035D5 D2 91            [12] 1918 	setb	_P1_1
                                   1919 ;	SPI.c:281: }
      0035D7 22               [24] 1920 	ret
                                   1921 ;------------------------------------------------------------
                                   1922 ;Allocation info for local variables in function 'init_ENC'
                                   1923 ;------------------------------------------------------------
                                   1924 ;	SPI.c:283: void init_ENC(void)
                                   1925 ;	-----------------------------------------
                                   1926 ;	 function init_ENC
                                   1927 ;	-----------------------------------------
      0035D8                       1928 _init_ENC:
                                   1929 ;	SPI.c:286: enc28j60_init_rx_buffer(0x0000, 0x0010);
      0035D8 90 01 06         [24] 1930 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      0035DB 74 10            [12] 1931 	mov	a,#0x10
      0035DD F0               [24] 1932 	movx	@dptr,a
      0035DE E4               [12] 1933 	clr	a
      0035DF A3               [24] 1934 	inc	dptr
      0035E0 F0               [24] 1935 	movx	@dptr,a
      0035E1 90 00 00         [24] 1936 	mov	dptr,#0x0000
                                   1937 ;	SPI.c:288: }
      0035E4 02 21 6E         [24] 1938 	ljmp	_enc28j60_init_rx_buffer
                                   1939 ;------------------------------------------------------------
                                   1940 ;Allocation info for local variables in function 'init_MAC'
                                   1941 ;------------------------------------------------------------
                                   1942 ;	SPI.c:290: void init_MAC(void)
                                   1943 ;	-----------------------------------------
                                   1944 ;	 function init_MAC
                                   1945 ;	-----------------------------------------
      0035E7                       1946 _init_MAC:
                                   1947 ;	SPI.c:293: spi_control_write(0x02, 0x02, 0x70); // Write 0x30 to MACON3 (address 0x02 in bank 2)
      0035E7 90 03 4D         [24] 1948 	mov	dptr,#_spi_control_write_PARM_2
      0035EA 74 02            [12] 1949 	mov	a,#0x02
      0035EC F0               [24] 1950 	movx	@dptr,a
      0035ED 90 03 4E         [24] 1951 	mov	dptr,#_spi_control_write_PARM_3
      0035F0 74 70            [12] 1952 	mov	a,#0x70
      0035F2 F0               [24] 1953 	movx	@dptr,a
      0035F3 75 82 02         [24] 1954 	mov	dpl, #0x02
      0035F6 12 2E B0         [24] 1955 	lcall	_spi_control_write
                                   1956 ;	SPI.c:294: spi_control_write(0x02, 0x03, 0x40); // Write 0x40 to MACON4 (address 0x02 in bank 2) - DEFER bit
      0035F9 90 03 4D         [24] 1957 	mov	dptr,#_spi_control_write_PARM_2
      0035FC 74 03            [12] 1958 	mov	a,#0x03
      0035FE F0               [24] 1959 	movx	@dptr,a
      0035FF 90 03 4E         [24] 1960 	mov	dptr,#_spi_control_write_PARM_3
      003602 74 40            [12] 1961 	mov	a,#0x40
      003604 F0               [24] 1962 	movx	@dptr,a
      003605 75 82 02         [24] 1963 	mov	dpl, #0x02
      003608 12 2E B0         [24] 1964 	lcall	_spi_control_write
                                   1965 ;	SPI.c:295: spi_control_write(0x02, 0x0A, 0xEE); // Write 0xEE to MAMXFLL (low byte, address 0x0A in bank 2)
      00360B 90 03 4D         [24] 1966 	mov	dptr,#_spi_control_write_PARM_2
      00360E 74 0A            [12] 1967 	mov	a,#0x0a
      003610 F0               [24] 1968 	movx	@dptr,a
      003611 90 03 4E         [24] 1969 	mov	dptr,#_spi_control_write_PARM_3
      003614 74 EE            [12] 1970 	mov	a,#0xee
      003616 F0               [24] 1971 	movx	@dptr,a
      003617 75 82 02         [24] 1972 	mov	dpl, #0x02
      00361A 12 2E B0         [24] 1973 	lcall	_spi_control_write
                                   1974 ;	SPI.c:296: spi_control_write(0x02, 0x0B, 0x05); // Write 0x05 to MAMXFLH (high byte, address 0x0B in bank 2)
      00361D 90 03 4D         [24] 1975 	mov	dptr,#_spi_control_write_PARM_2
      003620 74 0B            [12] 1976 	mov	a,#0x0b
      003622 F0               [24] 1977 	movx	@dptr,a
      003623 90 03 4E         [24] 1978 	mov	dptr,#_spi_control_write_PARM_3
      003626 74 05            [12] 1979 	mov	a,#0x05
      003628 F0               [24] 1980 	movx	@dptr,a
      003629 75 82 02         [24] 1981 	mov	dpl, #0x02
      00362C 12 2E B0         [24] 1982 	lcall	_spi_control_write
                                   1983 ;	SPI.c:297: spi_control_write(0x02, 0x04, 0x12); // Write 0x15 to MABBIPG (address 0x04 in bank 2)
      00362F 90 03 4D         [24] 1984 	mov	dptr,#_spi_control_write_PARM_2
      003632 74 04            [12] 1985 	mov	a,#0x04
      003634 F0               [24] 1986 	movx	@dptr,a
      003635 90 03 4E         [24] 1987 	mov	dptr,#_spi_control_write_PARM_3
      003638 74 12            [12] 1988 	mov	a,#0x12
      00363A F0               [24] 1989 	movx	@dptr,a
      00363B 75 82 02         [24] 1990 	mov	dpl, #0x02
      00363E 12 2E B0         [24] 1991 	lcall	_spi_control_write
                                   1992 ;	SPI.c:298: spi_control_write(0x02, 0x06, 0x12); // Write 0x12 to MAIPGL (low byte, address 0x06 in bank 2)
      003641 90 03 4D         [24] 1993 	mov	dptr,#_spi_control_write_PARM_2
      003644 74 06            [12] 1994 	mov	a,#0x06
      003646 F0               [24] 1995 	movx	@dptr,a
      003647 90 03 4E         [24] 1996 	mov	dptr,#_spi_control_write_PARM_3
      00364A 74 12            [12] 1997 	mov	a,#0x12
      00364C F0               [24] 1998 	movx	@dptr,a
      00364D 75 82 02         [24] 1999 	mov	dpl, #0x02
      003650 12 2E B0         [24] 2000 	lcall	_spi_control_write
                                   2001 ;	SPI.c:299: spi_control_write(0x02, 0x07, 0x0C); // Write 0x12 to MAIPGH (low byte, address 0x06 in bank 2)
      003653 90 03 4D         [24] 2002 	mov	dptr,#_spi_control_write_PARM_2
      003656 74 07            [12] 2003 	mov	a,#0x07
      003658 F0               [24] 2004 	movx	@dptr,a
      003659 90 03 4E         [24] 2005 	mov	dptr,#_spi_control_write_PARM_3
      00365C 74 0C            [12] 2006 	mov	a,#0x0c
      00365E F0               [24] 2007 	movx	@dptr,a
      00365F 75 82 02         [24] 2008 	mov	dpl, #0x02
                                   2009 ;	SPI.c:300: }
      003662 02 2E B0         [24] 2010 	ljmp	_spi_control_write
                                   2011 	.area CSEG    (CODE)
                                   2012 	.area CONST   (CODE)
                                   2013 	.area CONST   (CODE)
      0047F7                       2014 ___str_0:
      0047F7 57 72 69 74 65 3A 20  2015 	.ascii "Write: Address 0x%02X, Data 0x%02X"
             41 64 64 72 65 73 73
             20 30 78 25 30 32 58
             2C 20 44 61 74 61 20
             30 78 25 30 32 58
      004819 0A                    2016 	.db 0x0a
      00481A 0D                    2017 	.db 0x0d
      00481B 00                    2018 	.db 0x00
                                   2019 	.area CSEG    (CODE)
                                   2020 	.area CONST   (CODE)
      00481C                       2021 ___str_1:
      00481C 0A                    2022 	.db 0x0a
      00481D 0D                    2023 	.db 0x0d
      00481E 49 6E 76 61 6C 69 64  2024 	.ascii "Invalid address: MAC register address range [0, 0x1F]"
             20 61 64 64 72 65 73
             73 3A 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 72 61 6E 67
             65 20 5B 30 2C 20 30
             78 31 46 5D
      004853 0A                    2025 	.db 0x0a
      004854 0D                    2026 	.db 0x0d
      004855 00                    2027 	.db 0x00
                                   2028 	.area CSEG    (CODE)
                                   2029 	.area CONST   (CODE)
      004856                       2030 ___str_2:
      004856 52 65 61 64 3A 20 41  2031 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      004877 0A                    2032 	.db 0x0a
      004878 0D                    2033 	.db 0x0d
      004879 00                    2034 	.db 0x00
                                   2035 	.area CSEG    (CODE)
                                   2036 	.area CONST   (CODE)
      00487A                       2037 ___str_3:
      00487A 50 48 59 20 57 72 69  2038 	.ascii "PHY Write: Address 0x%02X, Data 0x%04X"
             74 65 3A 20 41 64 64
             72 65 73 73 20 30 78
             25 30 32 58 2C 20 44
             61 74 61 20 30 78 25
             30 34 58
      0048A0 0A                    2039 	.db 0x0a
      0048A1 0D                    2040 	.db 0x0d
      0048A2 00                    2041 	.db 0x00
                                   2042 	.area CSEG    (CODE)
                                   2043 	.area CONST   (CODE)
      0048A3                       2044 ___str_4:
      0048A3 52 65 61 64 3A 20 41  2045 	.ascii "Read: Address 0x%02X, Data 0x%02X"
             64 64 72 65 73 73 20
             30 78 25 30 32 58 2C
             20 44 61 74 61 20 30
             78 25 30 32 58
      0048C4 0A                    2046 	.db 0x0a
      0048C5 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                                   2049 	.area CONST   (CODE)
      0048C6                       2050 ___str_5:
      0048C6 50 48 59 20 52 65 61  2051 	.ascii "PHY Read: Address 0x%02X, Data 0x%04X"
             64 3A 20 41 64 64 72
             65 73 73 20 30 78 25
             30 32 58 2C 20 44 61
             74 61 20 30 78 25 30
             34 58
      0048EB 0A                    2052 	.db 0x0a
      0048EC 0D                    2053 	.db 0x0d
      0048ED 00                    2054 	.db 0x00
                                   2055 	.area CSEG    (CODE)
                                   2056 	.area CONST   (CODE)
      0048EE                       2057 ___str_6:
      0048EE 0A                    2058 	.db 0x0a
      0048EF 0D                    2059 	.db 0x0d
      0048F0 49 6E 76 61 6C 69 64  2060 	.ascii "Invalid Buffer Address or Size: Start 0x%04X, Size 0x%04X"
             20 42 75 66 66 65 72
             20 41 64 64 72 65 73
             73 20 6F 72 20 53 69
             7A 65 3A 20 53 74 61
             72 74 20 30 78 25 30
             34 58 2C 20 53 69 7A
             65 20 30 78 25 30 34
             58
      004929 0A                    2061 	.db 0x0a
      00492A 0D                    2062 	.db 0x0d
      00492B 00                    2063 	.db 0x00
                                   2064 	.area CSEG    (CODE)
                                   2065 	.area CONST   (CODE)
      00492C                       2066 ___str_7:
      00492C 0A                    2067 	.db 0x0a
      00492D 0D                    2068 	.db 0x0d
      00492E 42 75 66 66 65 72 20  2069 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      00495A 0A                    2070 	.db 0x0a
      00495B 0D                    2071 	.db 0x0d
      00495C 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                                   2074 	.area CONST   (CODE)
      00495D                       2075 ___str_8:
      00495D 0A                    2076 	.db 0x0a
      00495E 0D                    2077 	.db 0x0d
      00495F 49 6E 76 61 6C 69 64  2078 	.ascii "Invalid number of bytes: %d"
             20 6E 75 6D 62 65 72
             20 6F 66 20 62 79 74
             65 73 3A 20 25 64
      00497A 0A                    2079 	.db 0x0a
      00497B 0D                    2080 	.db 0x0d
      00497C 00                    2081 	.db 0x00
                                   2082 	.area CSEG    (CODE)
                                   2083 	.area CONST   (CODE)
      00497D                       2084 ___str_9:
      00497D 0A                    2085 	.db 0x0a
      00497E 0D                    2086 	.db 0x0d
      00497F 49 6E 76 61 6C 69 64  2087 	.ascii "Invalid address: %04X"
             20 61 64 64 72 65 73
             73 3A 20 25 30 34 58
      004994 0A                    2088 	.db 0x0a
      004995 0D                    2089 	.db 0x0d
      004996 00                    2090 	.db 0x00
                                   2091 	.area CSEG    (CODE)
                                   2092 	.area CONST   (CODE)
      004997                       2093 ___str_10:
      004997 52 65 61 64 69 6E 67  2094 	.ascii "Reading %d bytes from buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 66 72 6F 6D
             20 62 75 66 66 65 72
             20 73 74 61 72 74 69
             6E 67 20 61 74 20 61
             64 64 72 65 73 73 20
             30 78 25 30 34 58 3A
      0049CF 0A                    2095 	.db 0x0a
      0049D0 0D                    2096 	.db 0x0d
      0049D1 00                    2097 	.db 0x00
                                   2098 	.area CSEG    (CODE)
                                   2099 	.area CONST   (CODE)
      0049D2                       2100 ___str_11:
      0049D2 42 79 74 65 20 25 64  2101 	.ascii "Byte %d: 0x%02X"
             3A 20 30 78 25 30 32
             58
      0049E1 0A                    2102 	.db 0x0a
      0049E2 0D                    2103 	.db 0x0d
      0049E3 00                    2104 	.db 0x00
                                   2105 	.area CSEG    (CODE)
                                   2106 	.area CONST   (CODE)
      0049E4                       2107 ___str_12:
      0049E4 57 72 69 74 69 6E 67  2108 	.ascii "Writing %d bytes to buffer starting at address 0x%04X:"
             20 25 64 20 62 79 74
             65 73 20 74 6F 20 62
             75 66 66 65 72 20 73
             74 61 72 74 69 6E 67
             20 61 74 20 61 64 64
             72 65 73 73 20 30 78
             25 30 34 58 3A
      004A1A 0A                    2109 	.db 0x0a
      004A1B 0D                    2110 	.db 0x0d
      004A1C 00                    2111 	.db 0x00
                                   2112 	.area CSEG    (CODE)
                                   2113 	.area XINIT   (CODE)
                                   2114 	.area CABS    (ABS,CODE)

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module trial_webserver
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _makeTcpFinPshAck
                                     12 	.globl _makeTcpAck
                                     13 	.globl _makeTcpSynAck
                                     14 	.globl _makeTcpAck2
                                     15 	.globl _makeTcpAck3
                                     16 	.globl _makeArpReply
                                     17 	.globl _spi_control_write
                                     18 	.globl _eth_spi_read
                                     19 	.globl _spi_buffer_read
                                     20 	.globl _mac_spi_read
                                     21 	.globl _calculateTcpChecksum
                                     22 	.globl _calculateIPChecksum
                                     23 	.globl _transmit_tcp_packet
                                     24 	.globl _printf
                                     25 	.globl ___memcpy
                                     26 	.globl _strlen
                                     27 	.globl _memmove
                                     28 	.globl _TF1
                                     29 	.globl _TR1
                                     30 	.globl _TF0
                                     31 	.globl _TR0
                                     32 	.globl _IE1
                                     33 	.globl _IT1
                                     34 	.globl _IE0
                                     35 	.globl _IT0
                                     36 	.globl _SM0
                                     37 	.globl _SM1
                                     38 	.globl _SM2
                                     39 	.globl _REN
                                     40 	.globl _TB8
                                     41 	.globl _RB8
                                     42 	.globl _TI
                                     43 	.globl _RI
                                     44 	.globl _CY
                                     45 	.globl _AC
                                     46 	.globl _F0
                                     47 	.globl _RS1
                                     48 	.globl _RS0
                                     49 	.globl _OV
                                     50 	.globl _F1
                                     51 	.globl _P
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD0
                                     59 	.globl _TXD
                                     60 	.globl _RXD0
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _P1_7
                                     79 	.globl _P1_6
                                     80 	.globl _P1_5
                                     81 	.globl _P1_4
                                     82 	.globl _P1_3
                                     83 	.globl _P1_2
                                     84 	.globl _P1_1
                                     85 	.globl _P1_0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _PS
                                     95 	.globl _PT1
                                     96 	.globl _PX1
                                     97 	.globl _PT0
                                     98 	.globl _PX0
                                     99 	.globl _EA
                                    100 	.globl _ES
                                    101 	.globl _ET1
                                    102 	.globl _EX1
                                    103 	.globl _ET0
                                    104 	.globl _EX0
                                    105 	.globl _BREG_F7
                                    106 	.globl _BREG_F6
                                    107 	.globl _BREG_F5
                                    108 	.globl _BREG_F4
                                    109 	.globl _BREG_F3
                                    110 	.globl _BREG_F2
                                    111 	.globl _BREG_F1
                                    112 	.globl _BREG_F0
                                    113 	.globl _P5_7
                                    114 	.globl _P5_6
                                    115 	.globl _P5_5
                                    116 	.globl _P5_4
                                    117 	.globl _P5_3
                                    118 	.globl _P5_2
                                    119 	.globl _P5_1
                                    120 	.globl _P5_0
                                    121 	.globl _P4_7
                                    122 	.globl _P4_6
                                    123 	.globl _P4_5
                                    124 	.globl _P4_4
                                    125 	.globl _P4_3
                                    126 	.globl _P4_2
                                    127 	.globl _P4_1
                                    128 	.globl _P4_0
                                    129 	.globl _PX0L
                                    130 	.globl _PT0L
                                    131 	.globl _PX1L
                                    132 	.globl _PT1L
                                    133 	.globl _PSL
                                    134 	.globl _PT2L
                                    135 	.globl _PPCL
                                    136 	.globl _EC
                                    137 	.globl _CCF0
                                    138 	.globl _CCF1
                                    139 	.globl _CCF2
                                    140 	.globl _CCF3
                                    141 	.globl _CCF4
                                    142 	.globl _CR
                                    143 	.globl _CF
                                    144 	.globl _TF2
                                    145 	.globl _EXF2
                                    146 	.globl _RCLK
                                    147 	.globl _TCLK
                                    148 	.globl _EXEN2
                                    149 	.globl _TR2
                                    150 	.globl _C_T2
                                    151 	.globl _CP_RL2
                                    152 	.globl _T2CON_7
                                    153 	.globl _T2CON_6
                                    154 	.globl _T2CON_5
                                    155 	.globl _T2CON_4
                                    156 	.globl _T2CON_3
                                    157 	.globl _T2CON_2
                                    158 	.globl _T2CON_1
                                    159 	.globl _T2CON_0
                                    160 	.globl _PT2
                                    161 	.globl _ET2
                                    162 	.globl _TMOD
                                    163 	.globl _TL1
                                    164 	.globl _TL0
                                    165 	.globl _TH1
                                    166 	.globl _TH0
                                    167 	.globl _TCON
                                    168 	.globl _SP
                                    169 	.globl _SCON
                                    170 	.globl _SBUF0
                                    171 	.globl _SBUF
                                    172 	.globl _PSW
                                    173 	.globl _PCON
                                    174 	.globl _P3
                                    175 	.globl _P2
                                    176 	.globl _P1
                                    177 	.globl _P0
                                    178 	.globl _IP
                                    179 	.globl _IE
                                    180 	.globl _DP0L
                                    181 	.globl _DPL
                                    182 	.globl _DP0H
                                    183 	.globl _DPH
                                    184 	.globl _B
                                    185 	.globl _ACC
                                    186 	.globl _EECON
                                    187 	.globl _KBF
                                    188 	.globl _KBE
                                    189 	.globl _KBLS
                                    190 	.globl _BRL
                                    191 	.globl _BDRCON
                                    192 	.globl _T2MOD
                                    193 	.globl _SPDAT
                                    194 	.globl _SPSTA
                                    195 	.globl _SPCON
                                    196 	.globl _SADEN
                                    197 	.globl _SADDR
                                    198 	.globl _WDTPRG
                                    199 	.globl _WDTRST
                                    200 	.globl _P5
                                    201 	.globl _P4
                                    202 	.globl _IPH1
                                    203 	.globl _IPL1
                                    204 	.globl _IPH0
                                    205 	.globl _IPL0
                                    206 	.globl _IEN1
                                    207 	.globl _IEN0
                                    208 	.globl _CMOD
                                    209 	.globl _CL
                                    210 	.globl _CH
                                    211 	.globl _CCON
                                    212 	.globl _CCAPM4
                                    213 	.globl _CCAPM3
                                    214 	.globl _CCAPM2
                                    215 	.globl _CCAPM1
                                    216 	.globl _CCAPM0
                                    217 	.globl _CCAP4L
                                    218 	.globl _CCAP3L
                                    219 	.globl _CCAP2L
                                    220 	.globl _CCAP1L
                                    221 	.globl _CCAP0L
                                    222 	.globl _CCAP4H
                                    223 	.globl _CCAP3H
                                    224 	.globl _CCAP2H
                                    225 	.globl _CCAP1H
                                    226 	.globl _CCAP0H
                                    227 	.globl _CKCON1
                                    228 	.globl _CKCON0
                                    229 	.globl _CKRL
                                    230 	.globl _AUXR1
                                    231 	.globl _AUXR
                                    232 	.globl _TH2
                                    233 	.globl _TL2
                                    234 	.globl _RCAP2H
                                    235 	.globl _RCAP2L
                                    236 	.globl _T2CON
                                    237 	.globl _connectionState
                                    238 	.globl _buffer
                                    239 	.globl _prevAck
                                    240 	.globl _prevSeq
                                    241 	.globl _packetReceive
                                    242 	.globl _packetLoop
                                    243 ;--------------------------------------------------------
                                    244 ; special function registers
                                    245 ;--------------------------------------------------------
                                    246 	.area RSEG    (ABS,DATA)
      000000                        247 	.org 0x0000
                           0000C8   248 _T2CON	=	0x00c8
                           0000CA   249 _RCAP2L	=	0x00ca
                           0000CB   250 _RCAP2H	=	0x00cb
                           0000CC   251 _TL2	=	0x00cc
                           0000CD   252 _TH2	=	0x00cd
                           00008E   253 _AUXR	=	0x008e
                           0000A2   254 _AUXR1	=	0x00a2
                           000097   255 _CKRL	=	0x0097
                           00008F   256 _CKCON0	=	0x008f
                           0000AF   257 _CKCON1	=	0x00af
                           0000FA   258 _CCAP0H	=	0x00fa
                           0000FB   259 _CCAP1H	=	0x00fb
                           0000FC   260 _CCAP2H	=	0x00fc
                           0000FD   261 _CCAP3H	=	0x00fd
                           0000FE   262 _CCAP4H	=	0x00fe
                           0000EA   263 _CCAP0L	=	0x00ea
                           0000EB   264 _CCAP1L	=	0x00eb
                           0000EC   265 _CCAP2L	=	0x00ec
                           0000ED   266 _CCAP3L	=	0x00ed
                           0000EE   267 _CCAP4L	=	0x00ee
                           0000DA   268 _CCAPM0	=	0x00da
                           0000DB   269 _CCAPM1	=	0x00db
                           0000DC   270 _CCAPM2	=	0x00dc
                           0000DD   271 _CCAPM3	=	0x00dd
                           0000DE   272 _CCAPM4	=	0x00de
                           0000D8   273 _CCON	=	0x00d8
                           0000F9   274 _CH	=	0x00f9
                           0000E9   275 _CL	=	0x00e9
                           0000D9   276 _CMOD	=	0x00d9
                           0000A8   277 _IEN0	=	0x00a8
                           0000B1   278 _IEN1	=	0x00b1
                           0000B8   279 _IPL0	=	0x00b8
                           0000B7   280 _IPH0	=	0x00b7
                           0000B2   281 _IPL1	=	0x00b2
                           0000B3   282 _IPH1	=	0x00b3
                           0000C0   283 _P4	=	0x00c0
                           0000E8   284 _P5	=	0x00e8
                           0000A6   285 _WDTRST	=	0x00a6
                           0000A7   286 _WDTPRG	=	0x00a7
                           0000A9   287 _SADDR	=	0x00a9
                           0000B9   288 _SADEN	=	0x00b9
                           0000C3   289 _SPCON	=	0x00c3
                           0000C4   290 _SPSTA	=	0x00c4
                           0000C5   291 _SPDAT	=	0x00c5
                           0000C9   292 _T2MOD	=	0x00c9
                           00009B   293 _BDRCON	=	0x009b
                           00009A   294 _BRL	=	0x009a
                           00009C   295 _KBLS	=	0x009c
                           00009D   296 _KBE	=	0x009d
                           00009E   297 _KBF	=	0x009e
                           0000D2   298 _EECON	=	0x00d2
                           0000E0   299 _ACC	=	0x00e0
                           0000F0   300 _B	=	0x00f0
                           000083   301 _DPH	=	0x0083
                           000083   302 _DP0H	=	0x0083
                           000082   303 _DPL	=	0x0082
                           000082   304 _DP0L	=	0x0082
                           0000A8   305 _IE	=	0x00a8
                           0000B8   306 _IP	=	0x00b8
                           000080   307 _P0	=	0x0080
                           000090   308 _P1	=	0x0090
                           0000A0   309 _P2	=	0x00a0
                           0000B0   310 _P3	=	0x00b0
                           000087   311 _PCON	=	0x0087
                           0000D0   312 _PSW	=	0x00d0
                           000099   313 _SBUF	=	0x0099
                           000099   314 _SBUF0	=	0x0099
                           000098   315 _SCON	=	0x0098
                           000081   316 _SP	=	0x0081
                           000088   317 _TCON	=	0x0088
                           00008C   318 _TH0	=	0x008c
                           00008D   319 _TH1	=	0x008d
                           00008A   320 _TL0	=	0x008a
                           00008B   321 _TL1	=	0x008b
                           000089   322 _TMOD	=	0x0089
                                    323 ;--------------------------------------------------------
                                    324 ; special function bits
                                    325 ;--------------------------------------------------------
                                    326 	.area RSEG    (ABS,DATA)
      000000                        327 	.org 0x0000
                           0000AD   328 _ET2	=	0x00ad
                           0000BD   329 _PT2	=	0x00bd
                           0000C8   330 _T2CON_0	=	0x00c8
                           0000C9   331 _T2CON_1	=	0x00c9
                           0000CA   332 _T2CON_2	=	0x00ca
                           0000CB   333 _T2CON_3	=	0x00cb
                           0000CC   334 _T2CON_4	=	0x00cc
                           0000CD   335 _T2CON_5	=	0x00cd
                           0000CE   336 _T2CON_6	=	0x00ce
                           0000CF   337 _T2CON_7	=	0x00cf
                           0000C8   338 _CP_RL2	=	0x00c8
                           0000C9   339 _C_T2	=	0x00c9
                           0000CA   340 _TR2	=	0x00ca
                           0000CB   341 _EXEN2	=	0x00cb
                           0000CC   342 _TCLK	=	0x00cc
                           0000CD   343 _RCLK	=	0x00cd
                           0000CE   344 _EXF2	=	0x00ce
                           0000CF   345 _TF2	=	0x00cf
                           0000DF   346 _CF	=	0x00df
                           0000DE   347 _CR	=	0x00de
                           0000DC   348 _CCF4	=	0x00dc
                           0000DB   349 _CCF3	=	0x00db
                           0000DA   350 _CCF2	=	0x00da
                           0000D9   351 _CCF1	=	0x00d9
                           0000D8   352 _CCF0	=	0x00d8
                           0000AE   353 _EC	=	0x00ae
                           0000BE   354 _PPCL	=	0x00be
                           0000BD   355 _PT2L	=	0x00bd
                           0000BC   356 _PSL	=	0x00bc
                           0000BB   357 _PT1L	=	0x00bb
                           0000BA   358 _PX1L	=	0x00ba
                           0000B9   359 _PT0L	=	0x00b9
                           0000B8   360 _PX0L	=	0x00b8
                           0000C0   361 _P4_0	=	0x00c0
                           0000C1   362 _P4_1	=	0x00c1
                           0000C2   363 _P4_2	=	0x00c2
                           0000C3   364 _P4_3	=	0x00c3
                           0000C4   365 _P4_4	=	0x00c4
                           0000C5   366 _P4_5	=	0x00c5
                           0000C6   367 _P4_6	=	0x00c6
                           0000C7   368 _P4_7	=	0x00c7
                           0000E8   369 _P5_0	=	0x00e8
                           0000E9   370 _P5_1	=	0x00e9
                           0000EA   371 _P5_2	=	0x00ea
                           0000EB   372 _P5_3	=	0x00eb
                           0000EC   373 _P5_4	=	0x00ec
                           0000ED   374 _P5_5	=	0x00ed
                           0000EE   375 _P5_6	=	0x00ee
                           0000EF   376 _P5_7	=	0x00ef
                           0000F0   377 _BREG_F0	=	0x00f0
                           0000F1   378 _BREG_F1	=	0x00f1
                           0000F2   379 _BREG_F2	=	0x00f2
                           0000F3   380 _BREG_F3	=	0x00f3
                           0000F4   381 _BREG_F4	=	0x00f4
                           0000F5   382 _BREG_F5	=	0x00f5
                           0000F6   383 _BREG_F6	=	0x00f6
                           0000F7   384 _BREG_F7	=	0x00f7
                           0000A8   385 _EX0	=	0x00a8
                           0000A9   386 _ET0	=	0x00a9
                           0000AA   387 _EX1	=	0x00aa
                           0000AB   388 _ET1	=	0x00ab
                           0000AC   389 _ES	=	0x00ac
                           0000AF   390 _EA	=	0x00af
                           0000B8   391 _PX0	=	0x00b8
                           0000B9   392 _PT0	=	0x00b9
                           0000BA   393 _PX1	=	0x00ba
                           0000BB   394 _PT1	=	0x00bb
                           0000BC   395 _PS	=	0x00bc
                           000080   396 _P0_0	=	0x0080
                           000081   397 _P0_1	=	0x0081
                           000082   398 _P0_2	=	0x0082
                           000083   399 _P0_3	=	0x0083
                           000084   400 _P0_4	=	0x0084
                           000085   401 _P0_5	=	0x0085
                           000086   402 _P0_6	=	0x0086
                           000087   403 _P0_7	=	0x0087
                           000090   404 _P1_0	=	0x0090
                           000091   405 _P1_1	=	0x0091
                           000092   406 _P1_2	=	0x0092
                           000093   407 _P1_3	=	0x0093
                           000094   408 _P1_4	=	0x0094
                           000095   409 _P1_5	=	0x0095
                           000096   410 _P1_6	=	0x0096
                           000097   411 _P1_7	=	0x0097
                           0000A0   412 _P2_0	=	0x00a0
                           0000A1   413 _P2_1	=	0x00a1
                           0000A2   414 _P2_2	=	0x00a2
                           0000A3   415 _P2_3	=	0x00a3
                           0000A4   416 _P2_4	=	0x00a4
                           0000A5   417 _P2_5	=	0x00a5
                           0000A6   418 _P2_6	=	0x00a6
                           0000A7   419 _P2_7	=	0x00a7
                           0000B0   420 _P3_0	=	0x00b0
                           0000B1   421 _P3_1	=	0x00b1
                           0000B2   422 _P3_2	=	0x00b2
                           0000B3   423 _P3_3	=	0x00b3
                           0000B4   424 _P3_4	=	0x00b4
                           0000B5   425 _P3_5	=	0x00b5
                           0000B6   426 _P3_6	=	0x00b6
                           0000B7   427 _P3_7	=	0x00b7
                           0000B0   428 _RXD	=	0x00b0
                           0000B0   429 _RXD0	=	0x00b0
                           0000B1   430 _TXD	=	0x00b1
                           0000B1   431 _TXD0	=	0x00b1
                           0000B2   432 _INT0	=	0x00b2
                           0000B3   433 _INT1	=	0x00b3
                           0000B4   434 _T0	=	0x00b4
                           0000B5   435 _T1	=	0x00b5
                           0000B6   436 _WR	=	0x00b6
                           0000B7   437 _RD	=	0x00b7
                           0000D0   438 _P	=	0x00d0
                           0000D1   439 _F1	=	0x00d1
                           0000D2   440 _OV	=	0x00d2
                           0000D3   441 _RS0	=	0x00d3
                           0000D4   442 _RS1	=	0x00d4
                           0000D5   443 _F0	=	0x00d5
                           0000D6   444 _AC	=	0x00d6
                           0000D7   445 _CY	=	0x00d7
                           000098   446 _RI	=	0x0098
                           000099   447 _TI	=	0x0099
                           00009A   448 _RB8	=	0x009a
                           00009B   449 _TB8	=	0x009b
                           00009C   450 _REN	=	0x009c
                           00009D   451 _SM2	=	0x009d
                           00009E   452 _SM1	=	0x009e
                           00009F   453 _SM0	=	0x009f
                           000088   454 _IT0	=	0x0088
                           000089   455 _IE0	=	0x0089
                           00008A   456 _IT1	=	0x008a
                           00008B   457 _IE1	=	0x008b
                           00008C   458 _TR0	=	0x008c
                           00008D   459 _TF0	=	0x008d
                           00008E   460 _TR1	=	0x008e
                           00008F   461 _TF1	=	0x008f
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable register banks
                                    464 ;--------------------------------------------------------
                                    465 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        466 	.ds 8
                                    467 ;--------------------------------------------------------
                                    468 ; internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area DSEG    (DATA)
      00002F                        471 _makeTcpAck3_sloc0_1_0:
      00002F                        472 	.ds 4
      000033                        473 _makeTcpAck2_sloc0_1_0:
      000033                        474 	.ds 2
      000035                        475 _makeTcpAck2_sloc1_1_0:
      000035                        476 	.ds 4
      000039                        477 _makeTcpAck2_sloc2_1_0:
      000039                        478 	.ds 4
                                    479 ;--------------------------------------------------------
                                    480 ; overlayable items in internal ram
                                    481 ;--------------------------------------------------------
                                    482 ;--------------------------------------------------------
                                    483 ; indirectly addressable internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area ISEG    (DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; absolute internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area IABS    (ABS,DATA)
                                    490 	.area IABS    (ABS,DATA)
                                    491 ;--------------------------------------------------------
                                    492 ; bit data
                                    493 ;--------------------------------------------------------
                                    494 	.area BSEG    (BIT)
                                    495 ;--------------------------------------------------------
                                    496 ; paged external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area PSEG    (PAG,XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; uninitialized external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XSEG    (XDATA)
      0009B7                        503 _prevSeq::
      0009B7                        504 	.ds 4
      0009BB                        505 _prevAck::
      0009BB                        506 	.ds 4
      0009BF                        507 _buffer::
      0009BF                        508 	.ds 1500
      000F9B                        509 _makeArpReply_device_mac_10000_120:
      000F9B                        510 	.ds 6
      000FA1                        511 _makeArpReply_target_mac_10000_120:
      000FA1                        512 	.ds 6
      000FA7                        513 _makeArpReply_device_ip_10000_120:
      000FA7                        514 	.ds 4
      000FAB                        515 _makeArpReply_target_ip_10000_120:
      000FAB                        516 	.ds 4
      000FAF                        517 _makeTcpAck3_device_mac_10000_121:
      000FAF                        518 	.ds 6
      000FB5                        519 _makeTcpAck3_target_mac_10000_121:
      000FB5                        520 	.ds 6
      000FBB                        521 _makeTcpAck3_device_ip_10000_121:
      000FBB                        522 	.ds 4
      000FBF                        523 _makeTcpAck3_target_ip_10000_121:
      000FBF                        524 	.ds 4
      000FC3                        525 _makeTcpAck2_device_mac_10000_125:
      000FC3                        526 	.ds 6
      000FC9                        527 _makeTcpAck2_target_mac_10000_125:
      000FC9                        528 	.ds 6
      000FCF                        529 _makeTcpAck2_device_ip_10000_125:
      000FCF                        530 	.ds 4
      000FD3                        531 _makeTcpAck2_target_ip_10000_125:
      000FD3                        532 	.ds 4
      000FD7                        533 _makeTcpSynAck_device_mac_10000_129:
      000FD7                        534 	.ds 6
      000FDD                        535 _makeTcpSynAck_target_mac_10000_129:
      000FDD                        536 	.ds 6
      000FE3                        537 _makeTcpSynAck_device_ip_10000_129:
      000FE3                        538 	.ds 4
      000FE7                        539 _makeTcpSynAck_target_ip_10000_129:
      000FE7                        540 	.ds 4
      000FEB                        541 _makeTcpAck_device_mac_10000_134:
      000FEB                        542 	.ds 6
      000FF1                        543 _makeTcpAck_target_mac_10000_134:
      000FF1                        544 	.ds 6
      000FF7                        545 _makeTcpAck_device_ip_10000_134:
      000FF7                        546 	.ds 4
      000FFB                        547 _makeTcpAck_target_ip_10000_134:
      000FFB                        548 	.ds 4
      000FFF                        549 _makeTcpFinPshAck_device_mac_10000_135:
      000FFF                        550 	.ds 6
      001005                        551 _makeTcpFinPshAck_target_mac_10000_135:
      001005                        552 	.ds 6
      00100B                        553 _makeTcpFinPshAck_device_ip_10000_135:
      00100B                        554 	.ds 4
      00100F                        555 _makeTcpFinPshAck_target_ip_10000_135:
      00100F                        556 	.ds 4
      001013                        557 _makeTcpFinPshAck_serverSeqNum_10002_137:
      001013                        558 	.ds 4
      001017                        559 _makeTcpFinPshAck_ackNum_10002_137:
      001017                        560 	.ds 4
      00101B                        561 _packetReceive_gNextPacketPtr_10000_139:
      00101B                        562 	.ds 2
      00101D                        563 _packetReceive_unreleasedPacket_10000_139:
      00101D                        564 	.ds 1
      00101E                        565 _packetReceive_len_10000_139:
      00101E                        566 	.ds 2
      001020                        567 _packetReceive_header_20002_145:
      001020                        568 	.ds 6
      001026                        569 _packetReceive_start_20003_146:
      001026                        570 	.ds 2
                                    571 ;--------------------------------------------------------
                                    572 ; absolute external ram data
                                    573 ;--------------------------------------------------------
                                    574 	.area XABS    (ABS,XDATA)
                                    575 ;--------------------------------------------------------
                                    576 ; initialized external ram data
                                    577 ;--------------------------------------------------------
                                    578 	.area XISEG   (XDATA)
      001493                        579 _connectionState::
      001493                        580 	.ds 1
                                    581 	.area HOME    (CODE)
                                    582 	.area GSINIT0 (CODE)
                                    583 	.area GSINIT1 (CODE)
                                    584 	.area GSINIT2 (CODE)
                                    585 	.area GSINIT3 (CODE)
                                    586 	.area GSINIT4 (CODE)
                                    587 	.area GSINIT5 (CODE)
                                    588 	.area GSINIT  (CODE)
                                    589 	.area GSFINAL (CODE)
                                    590 	.area CSEG    (CODE)
                                    591 ;--------------------------------------------------------
                                    592 ; global & static initialisations
                                    593 ;--------------------------------------------------------
                                    594 	.area HOME    (CODE)
                                    595 	.area GSINIT  (CODE)
                                    596 	.area GSFINAL (CODE)
                                    597 	.area GSINIT  (CODE)
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'packetReceive'
                                    600 ;------------------------------------------------------------
                                    601 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_139'
                                    602 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_139'
                                    603 ;len                       Allocated with name '_packetReceive_len_10000_139'
                                    604 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_141'
                                    605 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_143'
                                    606 ;header                    Allocated with name '_packetReceive_header_20002_145'
                                    607 ;start                     Allocated with name '_packetReceive_start_20003_146'
                                    608 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_147'
                                    609 ;------------------------------------------------------------
                                    610 ;	trial_webserver.c:417: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      00209E 90 10 1B         [24]  611 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      0020A1 E4               [12]  612 	clr	a
      0020A2 F0               [24]  613 	movx	@dptr,a
      0020A3 A3               [24]  614 	inc	dptr
      0020A4 F0               [24]  615 	movx	@dptr,a
                                    616 ;	trial_webserver.c:418: static bool unreleasedPacket = false;
      0020A5 90 10 1D         [24]  617 	mov	dptr,#_packetReceive_unreleasedPacket_10000_139
      0020A8 F0               [24]  618 	movx	@dptr,a
                                    619 ;--------------------------------------------------------
                                    620 ; Home
                                    621 ;--------------------------------------------------------
                                    622 	.area HOME    (CODE)
                                    623 	.area HOME    (CODE)
                                    624 ;--------------------------------------------------------
                                    625 ; code
                                    626 ;--------------------------------------------------------
                                    627 	.area CSEG    (CODE)
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'makeArpReply'
                                    630 ;------------------------------------------------------------
                                    631 ;device_mac                Allocated with name '_makeArpReply_device_mac_10000_120'
                                    632 ;target_mac                Allocated with name '_makeArpReply_target_mac_10000_120'
                                    633 ;device_ip                 Allocated with name '_makeArpReply_device_ip_10000_120'
                                    634 ;target_ip                 Allocated with name '_makeArpReply_target_ip_10000_120'
                                    635 ;------------------------------------------------------------
                                    636 ;	trial_webserver.c:21: void makeArpReply()
                                    637 ;	-----------------------------------------
                                    638 ;	 function makeArpReply
                                    639 ;	-----------------------------------------
      004D90                        640 _makeArpReply:
                           000007   641 	ar7 = 0x07
                           000006   642 	ar6 = 0x06
                           000005   643 	ar5 = 0x05
                           000004   644 	ar4 = 0x04
                           000003   645 	ar3 = 0x03
                           000002   646 	ar2 = 0x02
                           000001   647 	ar1 = 0x01
                           000000   648 	ar0 = 0x00
                                    649 ;	trial_webserver.c:23: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      004D90 90 0F 9B         [24]  650 	mov	dptr,#_makeArpReply_device_mac_10000_120
      004D93 74 02            [12]  651 	mov	a,#0x02
      004D95 F0               [24]  652 	movx	@dptr,a
      004D96 90 0F 9C         [24]  653 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0001)
      004D99 74 11            [12]  654 	mov	a,#0x11
      004D9B F0               [24]  655 	movx	@dptr,a
      004D9C 90 0F 9D         [24]  656 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0002)
      004D9F 23               [12]  657 	rl	a
      004DA0 F0               [24]  658 	movx	@dptr,a
      004DA1 90 0F 9E         [24]  659 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0003)
      004DA4 74 33            [12]  660 	mov	a,#0x33
      004DA6 F0               [24]  661 	movx	@dptr,a
      004DA7 90 0F 9F         [24]  662 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0004)
      004DAA 74 44            [12]  663 	mov	a,#0x44
      004DAC F0               [24]  664 	movx	@dptr,a
      004DAD 90 0F A0         [24]  665 	mov	dptr,#(_makeArpReply_device_mac_10000_120 + 0x0005)
      004DB0 74 55            [12]  666 	mov	a,#0x55
      004DB2 F0               [24]  667 	movx	@dptr,a
                                    668 ;	trial_webserver.c:24: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      004DB3 90 0F A1         [24]  669 	mov	dptr,#_makeArpReply_target_mac_10000_120
      004DB6 74 F8            [12]  670 	mov	a,#0xf8
      004DB8 F0               [24]  671 	movx	@dptr,a
      004DB9 90 0F A2         [24]  672 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0001)
      004DBC 74 75            [12]  673 	mov	a,#0x75
      004DBE F0               [24]  674 	movx	@dptr,a
      004DBF 90 0F A3         [24]  675 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0002)
      004DC2 74 A4            [12]  676 	mov	a,#0xa4
      004DC4 F0               [24]  677 	movx	@dptr,a
      004DC5 90 0F A4         [24]  678 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0003)
      004DC8 74 8C            [12]  679 	mov	a,#0x8c
      004DCA F0               [24]  680 	movx	@dptr,a
      004DCB 90 0F A5         [24]  681 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0004)
      004DCE 74 41            [12]  682 	mov	a,#0x41
      004DD0 F0               [24]  683 	movx	@dptr,a
      004DD1 90 0F A6         [24]  684 	mov	dptr,#(_makeArpReply_target_mac_10000_120 + 0x0005)
      004DD4 74 31            [12]  685 	mov	a,#0x31
      004DD6 F0               [24]  686 	movx	@dptr,a
                                    687 ;	trial_webserver.c:25: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      004DD7 90 0F A7         [24]  688 	mov	dptr,#_makeArpReply_device_ip_10000_120
      004DDA 74 C0            [12]  689 	mov	a,#0xc0
      004DDC F0               [24]  690 	movx	@dptr,a
      004DDD 90 0F A8         [24]  691 	mov	dptr,#(_makeArpReply_device_ip_10000_120 + 0x0001)
      004DE0 74 A8            [12]  692 	mov	a,#0xa8
      004DE2 F0               [24]  693 	movx	@dptr,a
      004DE3 90 0F A9         [24]  694 	mov	dptr,#(_makeArpReply_device_ip_10000_120 + 0x0002)
      004DE6 74 01            [12]  695 	mov	a,#0x01
      004DE8 F0               [24]  696 	movx	@dptr,a
      004DE9 90 0F AA         [24]  697 	mov	dptr,#(_makeArpReply_device_ip_10000_120 + 0x0003)
      004DEC 74 64            [12]  698 	mov	a,#0x64
      004DEE F0               [24]  699 	movx	@dptr,a
                                    700 ;	trial_webserver.c:26: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      004DEF 90 0F AB         [24]  701 	mov	dptr,#_makeArpReply_target_ip_10000_120
      004DF2 74 C0            [12]  702 	mov	a,#0xc0
      004DF4 F0               [24]  703 	movx	@dptr,a
      004DF5 90 0F AC         [24]  704 	mov	dptr,#(_makeArpReply_target_ip_10000_120 + 0x0001)
      004DF8 74 A8            [12]  705 	mov	a,#0xa8
      004DFA F0               [24]  706 	movx	@dptr,a
      004DFB 90 0F AD         [24]  707 	mov	dptr,#(_makeArpReply_target_ip_10000_120 + 0x0002)
      004DFE 74 01            [12]  708 	mov	a,#0x01
      004E00 F0               [24]  709 	movx	@dptr,a
      004E01 90 0F AE         [24]  710 	mov	dptr,#(_makeArpReply_target_ip_10000_120 + 0x0003)
      004E04 F0               [24]  711 	movx	@dptr,a
                                    712 ;	trial_webserver.c:27: printf("trialarpreply\n\r");
      004E05 74 1C            [12]  713 	mov	a,#___str_0
      004E07 C0 E0            [24]  714 	push	acc
      004E09 74 7A            [12]  715 	mov	a,#(___str_0 >> 8)
      004E0B C0 E0            [24]  716 	push	acc
      004E0D 74 80            [12]  717 	mov	a,#0x80
      004E0F C0 E0            [24]  718 	push	acc
      004E11 12 64 F1         [24]  719 	lcall	_printf
      004E14 15 81            [12]  720 	dec	sp
      004E16 15 81            [12]  721 	dec	sp
      004E18 15 81            [12]  722 	dec	sp
                                    723 ;	trial_webserver.c:29: memmove(&buffer[1], &buffer[0], 42);
      004E1A 90 10 42         [24]  724 	mov	dptr,#_memmove_PARM_2
      004E1D 74 BF            [12]  725 	mov	a,#_buffer
      004E1F F0               [24]  726 	movx	@dptr,a
      004E20 74 09            [12]  727 	mov	a,#(_buffer >> 8)
      004E22 A3               [24]  728 	inc	dptr
      004E23 F0               [24]  729 	movx	@dptr,a
      004E24 E4               [12]  730 	clr	a
      004E25 A3               [24]  731 	inc	dptr
      004E26 F0               [24]  732 	movx	@dptr,a
      004E27 90 10 45         [24]  733 	mov	dptr,#_memmove_PARM_3
      004E2A 74 2A            [12]  734 	mov	a,#0x2a
      004E2C F0               [24]  735 	movx	@dptr,a
      004E2D E4               [12]  736 	clr	a
      004E2E A3               [24]  737 	inc	dptr
      004E2F F0               [24]  738 	movx	@dptr,a
      004E30 90 09 C0         [24]  739 	mov	dptr,#(_buffer + 0x0001)
      004E33 F5 F0            [12]  740 	mov	b,a
      004E35 12 5F BB         [24]  741 	lcall	_memmove
                                    742 ;	trial_webserver.c:32: buffer[0] = 0x0E;
      004E38 90 09 BF         [24]  743 	mov	dptr,#_buffer
      004E3B 74 0E            [12]  744 	mov	a,#0x0e
      004E3D F0               [24]  745 	movx	@dptr,a
                                    746 ;	trial_webserver.c:35: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC
      004E3E 90 10 36         [24]  747 	mov	dptr,#___memcpy_PARM_2
      004E41 74 C6            [12]  748 	mov	a,#(_buffer + 0x0007)
      004E43 F0               [24]  749 	movx	@dptr,a
      004E44 74 09            [12]  750 	mov	a,#((_buffer + 0x0007) >> 8)
      004E46 A3               [24]  751 	inc	dptr
      004E47 F0               [24]  752 	movx	@dptr,a
      004E48 E4               [12]  753 	clr	a
      004E49 A3               [24]  754 	inc	dptr
      004E4A F0               [24]  755 	movx	@dptr,a
      004E4B 90 10 39         [24]  756 	mov	dptr,#___memcpy_PARM_3
      004E4E 74 06            [12]  757 	mov	a,#0x06
      004E50 F0               [24]  758 	movx	@dptr,a
      004E51 E4               [12]  759 	clr	a
      004E52 A3               [24]  760 	inc	dptr
      004E53 F0               [24]  761 	movx	@dptr,a
      004E54 90 09 C0         [24]  762 	mov	dptr,#(_buffer + 0x0001)
      004E57 F5 F0            [12]  763 	mov	b,a
      004E59 12 5F 04         [24]  764 	lcall	___memcpy
                                    765 ;	trial_webserver.c:38: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6); // Source MAC
      004E5C 90 10 36         [24]  766 	mov	dptr,#___memcpy_PARM_2
      004E5F 74 9B            [12]  767 	mov	a,#_makeArpReply_device_mac_10000_120
      004E61 F0               [24]  768 	movx	@dptr,a
      004E62 74 0F            [12]  769 	mov	a,#(_makeArpReply_device_mac_10000_120 >> 8)
      004E64 A3               [24]  770 	inc	dptr
      004E65 F0               [24]  771 	movx	@dptr,a
      004E66 E4               [12]  772 	clr	a
      004E67 A3               [24]  773 	inc	dptr
      004E68 F0               [24]  774 	movx	@dptr,a
      004E69 90 10 39         [24]  775 	mov	dptr,#___memcpy_PARM_3
      004E6C 74 06            [12]  776 	mov	a,#0x06
      004E6E F0               [24]  777 	movx	@dptr,a
      004E6F E4               [12]  778 	clr	a
      004E70 A3               [24]  779 	inc	dptr
      004E71 F0               [24]  780 	movx	@dptr,a
      004E72 90 09 C6         [24]  781 	mov	dptr,#(_buffer + 0x0007)
      004E75 F5 F0            [12]  782 	mov	b,a
      004E77 12 5F 04         [24]  783 	lcall	___memcpy
                                    784 ;	trial_webserver.c:41: buffer[1 + 21] = 0x02; // ARP Reply opcode
      004E7A 90 09 D5         [24]  785 	mov	dptr,#(_buffer + 0x0016)
      004E7D 74 02            [12]  786 	mov	a,#0x02
      004E7F F0               [24]  787 	movx	@dptr,a
                                    788 ;	trial_webserver.c:44: memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Sender MAC from request
      004E80 90 10 36         [24]  789 	mov	dptr,#___memcpy_PARM_2
      004E83 74 D6            [12]  790 	mov	a,#(_buffer + 0x0017)
      004E85 F0               [24]  791 	movx	@dptr,a
      004E86 74 09            [12]  792 	mov	a,#((_buffer + 0x0017) >> 8)
      004E88 A3               [24]  793 	inc	dptr
      004E89 F0               [24]  794 	movx	@dptr,a
      004E8A E4               [12]  795 	clr	a
      004E8B A3               [24]  796 	inc	dptr
      004E8C F0               [24]  797 	movx	@dptr,a
      004E8D 90 10 39         [24]  798 	mov	dptr,#___memcpy_PARM_3
      004E90 74 06            [12]  799 	mov	a,#0x06
      004E92 F0               [24]  800 	movx	@dptr,a
      004E93 E4               [12]  801 	clr	a
      004E94 A3               [24]  802 	inc	dptr
      004E95 F0               [24]  803 	movx	@dptr,a
      004E96 90 09 E0         [24]  804 	mov	dptr,#(_buffer + 0x0021)
      004E99 F5 F0            [12]  805 	mov	b,a
      004E9B 12 5F 04         [24]  806 	lcall	___memcpy
                                    807 ;	trial_webserver.c:45: memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Sender IP from request
      004E9E 90 10 36         [24]  808 	mov	dptr,#___memcpy_PARM_2
      004EA1 74 DC            [12]  809 	mov	a,#(_buffer + 0x001d)
      004EA3 F0               [24]  810 	movx	@dptr,a
      004EA4 74 09            [12]  811 	mov	a,#((_buffer + 0x001d) >> 8)
      004EA6 A3               [24]  812 	inc	dptr
      004EA7 F0               [24]  813 	movx	@dptr,a
      004EA8 E4               [12]  814 	clr	a
      004EA9 A3               [24]  815 	inc	dptr
      004EAA F0               [24]  816 	movx	@dptr,a
      004EAB 90 10 39         [24]  817 	mov	dptr,#___memcpy_PARM_3
      004EAE 74 04            [12]  818 	mov	a,#0x04
      004EB0 F0               [24]  819 	movx	@dptr,a
      004EB1 E4               [12]  820 	clr	a
      004EB2 A3               [24]  821 	inc	dptr
      004EB3 F0               [24]  822 	movx	@dptr,a
      004EB4 90 09 E6         [24]  823 	mov	dptr,#(_buffer + 0x0027)
      004EB7 F5 F0            [12]  824 	mov	b,a
      004EB9 12 5F 04         [24]  825 	lcall	___memcpy
                                    826 ;	trial_webserver.c:48: memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = device MAC
      004EBC 90 10 36         [24]  827 	mov	dptr,#___memcpy_PARM_2
      004EBF 74 9B            [12]  828 	mov	a,#_makeArpReply_device_mac_10000_120
      004EC1 F0               [24]  829 	movx	@dptr,a
      004EC2 74 0F            [12]  830 	mov	a,#(_makeArpReply_device_mac_10000_120 >> 8)
      004EC4 A3               [24]  831 	inc	dptr
      004EC5 F0               [24]  832 	movx	@dptr,a
      004EC6 E4               [12]  833 	clr	a
      004EC7 A3               [24]  834 	inc	dptr
      004EC8 F0               [24]  835 	movx	@dptr,a
      004EC9 90 10 39         [24]  836 	mov	dptr,#___memcpy_PARM_3
      004ECC 74 06            [12]  837 	mov	a,#0x06
      004ECE F0               [24]  838 	movx	@dptr,a
      004ECF E4               [12]  839 	clr	a
      004ED0 A3               [24]  840 	inc	dptr
      004ED1 F0               [24]  841 	movx	@dptr,a
      004ED2 90 09 D6         [24]  842 	mov	dptr,#(_buffer + 0x0017)
      004ED5 F5 F0            [12]  843 	mov	b,a
      004ED7 12 5F 04         [24]  844 	lcall	___memcpy
                                    845 ;	trial_webserver.c:49: memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = device IP
      004EDA 90 10 36         [24]  846 	mov	dptr,#___memcpy_PARM_2
      004EDD 74 A7            [12]  847 	mov	a,#_makeArpReply_device_ip_10000_120
      004EDF F0               [24]  848 	movx	@dptr,a
      004EE0 74 0F            [12]  849 	mov	a,#(_makeArpReply_device_ip_10000_120 >> 8)
      004EE2 A3               [24]  850 	inc	dptr
      004EE3 F0               [24]  851 	movx	@dptr,a
      004EE4 E4               [12]  852 	clr	a
      004EE5 A3               [24]  853 	inc	dptr
      004EE6 F0               [24]  854 	movx	@dptr,a
      004EE7 90 10 39         [24]  855 	mov	dptr,#___memcpy_PARM_3
      004EEA 74 04            [12]  856 	mov	a,#0x04
      004EEC F0               [24]  857 	movx	@dptr,a
      004EED E4               [12]  858 	clr	a
      004EEE A3               [24]  859 	inc	dptr
      004EEF F0               [24]  860 	movx	@dptr,a
      004EF0 90 09 DC         [24]  861 	mov	dptr,#(_buffer + 0x001d)
      004EF3 F5 F0            [12]  862 	mov	b,a
      004EF5 12 5F 04         [24]  863 	lcall	___memcpy
                                    864 ;	trial_webserver.c:52: transmit_tcp_packet(buffer, 43);
      004EF8 90 09 B2         [24]  865 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004EFB 74 2B            [12]  866 	mov	a,#0x2b
      004EFD F0               [24]  867 	movx	@dptr,a
      004EFE E4               [12]  868 	clr	a
      004EFF A3               [24]  869 	inc	dptr
      004F00 F0               [24]  870 	movx	@dptr,a
      004F01 90 09 BF         [24]  871 	mov	dptr,#_buffer
      004F04 F5 F0            [12]  872 	mov	b,a
                                    873 ;	trial_webserver.c:53: }
      004F06 02 4C AC         [24]  874 	ljmp	_transmit_tcp_packet
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'makeTcpAck3'
                                    877 ;------------------------------------------------------------
                                    878 ;sloc0                     Allocated with name '_makeTcpAck3_sloc0_1_0'
                                    879 ;device_mac                Allocated with name '_makeTcpAck3_device_mac_10000_121'
                                    880 ;target_mac                Allocated with name '_makeTcpAck3_target_mac_10000_121'
                                    881 ;device_ip                 Allocated with name '_makeTcpAck3_device_ip_10000_121'
                                    882 ;target_ip                 Allocated with name '_makeTcpAck3_target_ip_10000_121'
                                    883 ;srcPort                   Allocated with name '_makeTcpAck3_srcPort_10001_122'
                                    884 ;dstPort                   Allocated with name '_makeTcpAck3_dstPort_10001_122'
                                    885 ;clientSeqNum              Allocated with name '_makeTcpAck3_clientSeqNum_10002_123'
                                    886 ;clientAckNum              Allocated with name '_makeTcpAck3_clientAckNum_10002_123'
                                    887 ;serverSeqNum              Allocated with name '_makeTcpAck3_serverSeqNum_10002_123'
                                    888 ;ackNum                    Allocated with name '_makeTcpAck3_ackNum_10002_123'
                                    889 ;totalLength               Allocated with name '_makeTcpAck3_totalLength_10003_124'
                                    890 ;------------------------------------------------------------
                                    891 ;	trial_webserver.c:58: void makeTcpAck3() {
                                    892 ;	-----------------------------------------
                                    893 ;	 function makeTcpAck3
                                    894 ;	-----------------------------------------
      004F09                        895 _makeTcpAck3:
                                    896 ;	trial_webserver.c:59: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      004F09 90 0F AF         [24]  897 	mov	dptr,#_makeTcpAck3_device_mac_10000_121
      004F0C 74 02            [12]  898 	mov	a,#0x02
      004F0E F0               [24]  899 	movx	@dptr,a
      004F0F 90 0F B0         [24]  900 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0001)
      004F12 74 11            [12]  901 	mov	a,#0x11
      004F14 F0               [24]  902 	movx	@dptr,a
      004F15 90 0F B1         [24]  903 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0002)
      004F18 23               [12]  904 	rl	a
      004F19 F0               [24]  905 	movx	@dptr,a
      004F1A 90 0F B2         [24]  906 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0003)
      004F1D 74 33            [12]  907 	mov	a,#0x33
      004F1F F0               [24]  908 	movx	@dptr,a
      004F20 90 0F B3         [24]  909 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0004)
      004F23 74 44            [12]  910 	mov	a,#0x44
      004F25 F0               [24]  911 	movx	@dptr,a
      004F26 90 0F B4         [24]  912 	mov	dptr,#(_makeTcpAck3_device_mac_10000_121 + 0x0005)
      004F29 74 55            [12]  913 	mov	a,#0x55
      004F2B F0               [24]  914 	movx	@dptr,a
                                    915 ;	trial_webserver.c:60: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      004F2C 90 0F B5         [24]  916 	mov	dptr,#_makeTcpAck3_target_mac_10000_121
      004F2F 74 F8            [12]  917 	mov	a,#0xf8
      004F31 F0               [24]  918 	movx	@dptr,a
      004F32 90 0F B6         [24]  919 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0001)
      004F35 74 75            [12]  920 	mov	a,#0x75
      004F37 F0               [24]  921 	movx	@dptr,a
      004F38 90 0F B7         [24]  922 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0002)
      004F3B 74 A4            [12]  923 	mov	a,#0xa4
      004F3D F0               [24]  924 	movx	@dptr,a
      004F3E 90 0F B8         [24]  925 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0003)
      004F41 74 8C            [12]  926 	mov	a,#0x8c
      004F43 F0               [24]  927 	movx	@dptr,a
      004F44 90 0F B9         [24]  928 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0004)
      004F47 74 41            [12]  929 	mov	a,#0x41
      004F49 F0               [24]  930 	movx	@dptr,a
      004F4A 90 0F BA         [24]  931 	mov	dptr,#(_makeTcpAck3_target_mac_10000_121 + 0x0005)
      004F4D 74 31            [12]  932 	mov	a,#0x31
      004F4F F0               [24]  933 	movx	@dptr,a
                                    934 ;	trial_webserver.c:61: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      004F50 90 0F BB         [24]  935 	mov	dptr,#_makeTcpAck3_device_ip_10000_121
      004F53 74 C0            [12]  936 	mov	a,#0xc0
      004F55 F0               [24]  937 	movx	@dptr,a
      004F56 90 0F BC         [24]  938 	mov	dptr,#(_makeTcpAck3_device_ip_10000_121 + 0x0001)
      004F59 74 A8            [12]  939 	mov	a,#0xa8
      004F5B F0               [24]  940 	movx	@dptr,a
      004F5C 90 0F BD         [24]  941 	mov	dptr,#(_makeTcpAck3_device_ip_10000_121 + 0x0002)
      004F5F 74 01            [12]  942 	mov	a,#0x01
      004F61 F0               [24]  943 	movx	@dptr,a
      004F62 90 0F BE         [24]  944 	mov	dptr,#(_makeTcpAck3_device_ip_10000_121 + 0x0003)
      004F65 74 64            [12]  945 	mov	a,#0x64
      004F67 F0               [24]  946 	movx	@dptr,a
                                    947 ;	trial_webserver.c:62: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      004F68 90 0F BF         [24]  948 	mov	dptr,#_makeTcpAck3_target_ip_10000_121
      004F6B 74 C0            [12]  949 	mov	a,#0xc0
      004F6D F0               [24]  950 	movx	@dptr,a
      004F6E 90 0F C0         [24]  951 	mov	dptr,#(_makeTcpAck3_target_ip_10000_121 + 0x0001)
      004F71 74 A8            [12]  952 	mov	a,#0xa8
      004F73 F0               [24]  953 	movx	@dptr,a
      004F74 90 0F C1         [24]  954 	mov	dptr,#(_makeTcpAck3_target_ip_10000_121 + 0x0002)
      004F77 74 01            [12]  955 	mov	a,#0x01
      004F79 F0               [24]  956 	movx	@dptr,a
      004F7A 90 0F C2         [24]  957 	mov	dptr,#(_makeTcpAck3_target_ip_10000_121 + 0x0003)
      004F7D F0               [24]  958 	movx	@dptr,a
                                    959 ;	trial_webserver.c:63: printf("makeTcpAck\n\r");
      004F7E 74 2C            [12]  960 	mov	a,#___str_1
      004F80 C0 E0            [24]  961 	push	acc
      004F82 74 7A            [12]  962 	mov	a,#(___str_1 >> 8)
      004F84 C0 E0            [24]  963 	push	acc
      004F86 74 80            [12]  964 	mov	a,#0x80
      004F88 C0 E0            [24]  965 	push	acc
      004F8A 12 64 F1         [24]  966 	lcall	_printf
      004F8D 15 81            [12]  967 	dec	sp
      004F8F 15 81            [12]  968 	dec	sp
      004F91 15 81            [12]  969 	dec	sp
                                    970 ;	trial_webserver.c:66: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      004F93 90 10 42         [24]  971 	mov	dptr,#_memmove_PARM_2
      004F96 74 BF            [12]  972 	mov	a,#_buffer
      004F98 F0               [24]  973 	movx	@dptr,a
      004F99 74 09            [12]  974 	mov	a,#(_buffer >> 8)
      004F9B A3               [24]  975 	inc	dptr
      004F9C F0               [24]  976 	movx	@dptr,a
      004F9D E4               [12]  977 	clr	a
      004F9E A3               [24]  978 	inc	dptr
      004F9F F0               [24]  979 	movx	@dptr,a
      004FA0 90 10 45         [24]  980 	mov	dptr,#_memmove_PARM_3
      004FA3 74 36            [12]  981 	mov	a,#0x36
      004FA5 F0               [24]  982 	movx	@dptr,a
      004FA6 E4               [12]  983 	clr	a
      004FA7 A3               [24]  984 	inc	dptr
      004FA8 F0               [24]  985 	movx	@dptr,a
      004FA9 90 09 C0         [24]  986 	mov	dptr,#(_buffer + 0x0001)
      004FAC F5 F0            [12]  987 	mov	b,a
      004FAE 12 5F BB         [24]  988 	lcall	_memmove
                                    989 ;	trial_webserver.c:67: buffer[0] = 0x0E;
      004FB1 90 09 BF         [24]  990 	mov	dptr,#_buffer
      004FB4 74 0E            [12]  991 	mov	a,#0x0e
      004FB6 F0               [24]  992 	movx	@dptr,a
                                    993 ;	trial_webserver.c:70: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      004FB7 90 10 36         [24]  994 	mov	dptr,#___memcpy_PARM_2
      004FBA 74 C6            [12]  995 	mov	a,#(_buffer + 0x0007)
      004FBC F0               [24]  996 	movx	@dptr,a
      004FBD 74 09            [12]  997 	mov	a,#((_buffer + 0x0007) >> 8)
      004FBF A3               [24]  998 	inc	dptr
      004FC0 F0               [24]  999 	movx	@dptr,a
      004FC1 E4               [12] 1000 	clr	a
      004FC2 A3               [24] 1001 	inc	dptr
      004FC3 F0               [24] 1002 	movx	@dptr,a
      004FC4 90 10 39         [24] 1003 	mov	dptr,#___memcpy_PARM_3
      004FC7 74 06            [12] 1004 	mov	a,#0x06
      004FC9 F0               [24] 1005 	movx	@dptr,a
      004FCA E4               [12] 1006 	clr	a
      004FCB A3               [24] 1007 	inc	dptr
      004FCC F0               [24] 1008 	movx	@dptr,a
      004FCD 90 09 C0         [24] 1009 	mov	dptr,#(_buffer + 0x0001)
      004FD0 F5 F0            [12] 1010 	mov	b,a
      004FD2 12 5F 04         [24] 1011 	lcall	___memcpy
                                   1012 ;	trial_webserver.c:71: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      004FD5 90 10 36         [24] 1013 	mov	dptr,#___memcpy_PARM_2
      004FD8 74 AF            [12] 1014 	mov	a,#_makeTcpAck3_device_mac_10000_121
      004FDA F0               [24] 1015 	movx	@dptr,a
      004FDB 74 0F            [12] 1016 	mov	a,#(_makeTcpAck3_device_mac_10000_121 >> 8)
      004FDD A3               [24] 1017 	inc	dptr
      004FDE F0               [24] 1018 	movx	@dptr,a
      004FDF E4               [12] 1019 	clr	a
      004FE0 A3               [24] 1020 	inc	dptr
      004FE1 F0               [24] 1021 	movx	@dptr,a
      004FE2 90 10 39         [24] 1022 	mov	dptr,#___memcpy_PARM_3
      004FE5 74 06            [12] 1023 	mov	a,#0x06
      004FE7 F0               [24] 1024 	movx	@dptr,a
      004FE8 E4               [12] 1025 	clr	a
      004FE9 A3               [24] 1026 	inc	dptr
      004FEA F0               [24] 1027 	movx	@dptr,a
      004FEB 90 09 C6         [24] 1028 	mov	dptr,#(_buffer + 0x0007)
      004FEE F5 F0            [12] 1029 	mov	b,a
      004FF0 12 5F 04         [24] 1030 	lcall	___memcpy
                                   1031 ;	trial_webserver.c:74: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      004FF3 90 10 36         [24] 1032 	mov	dptr,#___memcpy_PARM_2
      004FF6 74 DA            [12] 1033 	mov	a,#(_buffer + 0x001b)
      004FF8 F0               [24] 1034 	movx	@dptr,a
      004FF9 74 09            [12] 1035 	mov	a,#((_buffer + 0x001b) >> 8)
      004FFB A3               [24] 1036 	inc	dptr
      004FFC F0               [24] 1037 	movx	@dptr,a
      004FFD E4               [12] 1038 	clr	a
      004FFE A3               [24] 1039 	inc	dptr
      004FFF F0               [24] 1040 	movx	@dptr,a
      005000 90 10 39         [24] 1041 	mov	dptr,#___memcpy_PARM_3
      005003 74 04            [12] 1042 	mov	a,#0x04
      005005 F0               [24] 1043 	movx	@dptr,a
      005006 E4               [12] 1044 	clr	a
      005007 A3               [24] 1045 	inc	dptr
      005008 F0               [24] 1046 	movx	@dptr,a
      005009 90 09 DE         [24] 1047 	mov	dptr,#(_buffer + 0x001f)
      00500C F5 F0            [12] 1048 	mov	b,a
      00500E 12 5F 04         [24] 1049 	lcall	___memcpy
                                   1050 ;	trial_webserver.c:75: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      005011 90 10 36         [24] 1051 	mov	dptr,#___memcpy_PARM_2
      005014 74 BB            [12] 1052 	mov	a,#_makeTcpAck3_device_ip_10000_121
      005016 F0               [24] 1053 	movx	@dptr,a
      005017 74 0F            [12] 1054 	mov	a,#(_makeTcpAck3_device_ip_10000_121 >> 8)
      005019 A3               [24] 1055 	inc	dptr
      00501A F0               [24] 1056 	movx	@dptr,a
      00501B E4               [12] 1057 	clr	a
      00501C A3               [24] 1058 	inc	dptr
      00501D F0               [24] 1059 	movx	@dptr,a
      00501E 90 10 39         [24] 1060 	mov	dptr,#___memcpy_PARM_3
      005021 74 04            [12] 1061 	mov	a,#0x04
      005023 F0               [24] 1062 	movx	@dptr,a
      005024 E4               [12] 1063 	clr	a
      005025 A3               [24] 1064 	inc	dptr
      005026 F0               [24] 1065 	movx	@dptr,a
      005027 90 09 DA         [24] 1066 	mov	dptr,#(_buffer + 0x001b)
      00502A F5 F0            [12] 1067 	mov	b,a
      00502C 12 5F 04         [24] 1068 	lcall	___memcpy
                                   1069 ;	trial_webserver.c:78: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00502F 90 09 E2         [24] 1070 	mov	dptr,#(_buffer + 0x0023)
      005032 E0               [24] 1071 	movx	a,@dptr
      005033 FE               [12] 1072 	mov	r6,a
      005034 7F 00            [12] 1073 	mov	r7,#0x00
      005036 90 09 E3         [24] 1074 	mov	dptr,#(_buffer + 0x0024)
      005039 E0               [24] 1075 	movx	a,@dptr
      00503A 7C 00            [12] 1076 	mov	r4,#0x00
      00503C 42 07            [12] 1077 	orl	ar7,a
      00503E EC               [12] 1078 	mov	a,r4
      00503F 42 06            [12] 1079 	orl	ar6,a
                                   1080 ;	trial_webserver.c:80: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      005041 90 09 E4         [24] 1081 	mov	dptr,#(_buffer + 0x0025)
      005044 E0               [24] 1082 	movx	a,@dptr
      005045 FC               [12] 1083 	mov	r4,a
      005046 7D 00            [12] 1084 	mov	r5,#0x00
      005048 90 09 E5         [24] 1085 	mov	dptr,#(_buffer + 0x0026)
      00504B E0               [24] 1086 	movx	a,@dptr
      00504C 7A 00            [12] 1087 	mov	r2,#0x00
      00504E 42 05            [12] 1088 	orl	ar5,a
      005050 EA               [12] 1089 	mov	a,r2
      005051 42 04            [12] 1090 	orl	ar4,a
                                   1091 ;	trial_webserver.c:82: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      005053 8C 03            [24] 1092 	mov	ar3,r4
      005055 90 09 E2         [24] 1093 	mov	dptr,#(_buffer + 0x0023)
      005058 EB               [12] 1094 	mov	a,r3
      005059 F0               [24] 1095 	movx	@dptr,a
                                   1096 ;	trial_webserver.c:83: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      00505A 90 09 E3         [24] 1097 	mov	dptr,#(_buffer + 0x0024)
      00505D ED               [12] 1098 	mov	a,r5
      00505E F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	trial_webserver.c:84: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      00505F 8E 05            [24] 1101 	mov	ar5,r6
      005061 90 09 E4         [24] 1102 	mov	dptr,#(_buffer + 0x0025)
      005064 ED               [12] 1103 	mov	a,r5
      005065 F0               [24] 1104 	movx	@dptr,a
                                   1105 ;	trial_webserver.c:85: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      005066 90 09 E5         [24] 1106 	mov	dptr,#(_buffer + 0x0026)
      005069 EF               [12] 1107 	mov	a,r7
      00506A F0               [24] 1108 	movx	@dptr,a
                                   1109 ;	trial_webserver.c:97: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
      00506B 90 09 E8         [24] 1110 	mov	dptr,#(_buffer + 0x0029)
      00506E E0               [24] 1111 	movx	a,@dptr
      00506F FE               [12] 1112 	mov	r6,a
      005070 7F 00            [12] 1113 	mov	r7,#0x00
      005072 90 09 E9         [24] 1114 	mov	dptr,#(_buffer + 0x002a)
      005075 E0               [24] 1115 	movx	a,@dptr
      005076 7C 00            [12] 1116 	mov	r4,#0x00
      005078 42 07            [12] 1117 	orl	ar7,a
      00507A EC               [12] 1118 	mov	a,r4
      00507B 42 06            [12] 1119 	orl	ar6,a
      00507D EE               [12] 1120 	mov	a,r6
      00507E 33               [12] 1121 	rlc	a
      00507F 95 E0            [12] 1122 	subb	a,acc
      005081 FD               [12] 1123 	mov	r5,a
      005082 FC               [12] 1124 	mov	r4,a
                                   1125 ;	trial_webserver.c:100: uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
      005083 90 09 EC         [24] 1126 	mov	dptr,#(_buffer + 0x002d)
      005086 E0               [24] 1127 	movx	a,@dptr
      005087 FA               [12] 1128 	mov	r2,a
      005088 7B 00            [12] 1129 	mov	r3,#0x00
      00508A 90 09 ED         [24] 1130 	mov	dptr,#(_buffer + 0x002e)
      00508D E0               [24] 1131 	movx	a,@dptr
      00508E 79 00            [12] 1132 	mov	r1,#0x00
      005090 42 03            [12] 1133 	orl	ar3,a
      005092 E9               [12] 1134 	mov	a,r1
      005093 42 02            [12] 1135 	orl	ar2,a
      005095 8B 00            [24] 1136 	mov	ar0,r3
      005097 EA               [12] 1137 	mov	a,r2
      005098 F9               [12] 1138 	mov	r1,a
      005099 33               [12] 1139 	rlc	a
      00509A 95 E0            [12] 1140 	subb	a,acc
      00509C FA               [12] 1141 	mov	r2,a
      00509D FB               [12] 1142 	mov	r3,a
                                   1143 ;	trial_webserver.c:104: uint32_t ackNum = clientSeqNum + 1;
      00509E 74 01            [12] 1144 	mov	a,#0x01
      0050A0 2F               [12] 1145 	add	a, r7
      0050A1 F5 2F            [12] 1146 	mov	_makeTcpAck3_sloc0_1_0,a
      0050A3 E4               [12] 1147 	clr	a
      0050A4 3E               [12] 1148 	addc	a, r6
      0050A5 F5 30            [12] 1149 	mov	(_makeTcpAck3_sloc0_1_0 + 1),a
      0050A7 E4               [12] 1150 	clr	a
      0050A8 3D               [12] 1151 	addc	a, r5
      0050A9 F5 31            [12] 1152 	mov	(_makeTcpAck3_sloc0_1_0 + 2),a
      0050AB E4               [12] 1153 	clr	a
      0050AC 3C               [12] 1154 	addc	a, r4
      0050AD F5 32            [12] 1155 	mov	(_makeTcpAck3_sloc0_1_0 + 3),a
                                   1156 ;	trial_webserver.c:105: prevSeq = serverSeqNum;
      0050AF 90 09 B7         [24] 1157 	mov	dptr,#_prevSeq
      0050B2 E8               [12] 1158 	mov	a,r0
      0050B3 F0               [24] 1159 	movx	@dptr,a
      0050B4 E9               [12] 1160 	mov	a,r1
      0050B5 A3               [24] 1161 	inc	dptr
      0050B6 F0               [24] 1162 	movx	@dptr,a
      0050B7 EA               [12] 1163 	mov	a,r2
      0050B8 A3               [24] 1164 	inc	dptr
      0050B9 F0               [24] 1165 	movx	@dptr,a
      0050BA EB               [12] 1166 	mov	a,r3
      0050BB A3               [24] 1167 	inc	dptr
      0050BC F0               [24] 1168 	movx	@dptr,a
                                   1169 ;	trial_webserver.c:106: prevAck = ackNum;
      0050BD 90 09 BB         [24] 1170 	mov	dptr,#_prevAck
      0050C0 E5 2F            [12] 1171 	mov	a,_makeTcpAck3_sloc0_1_0
      0050C2 F0               [24] 1172 	movx	@dptr,a
      0050C3 E5 30            [12] 1173 	mov	a,(_makeTcpAck3_sloc0_1_0 + 1)
      0050C5 A3               [24] 1174 	inc	dptr
      0050C6 F0               [24] 1175 	movx	@dptr,a
      0050C7 E5 31            [12] 1176 	mov	a,(_makeTcpAck3_sloc0_1_0 + 2)
      0050C9 A3               [24] 1177 	inc	dptr
      0050CA F0               [24] 1178 	movx	@dptr,a
      0050CB E5 32            [12] 1179 	mov	a,(_makeTcpAck3_sloc0_1_0 + 3)
      0050CD A3               [24] 1180 	inc	dptr
      0050CE F0               [24] 1181 	movx	@dptr,a
                                   1182 ;	trial_webserver.c:109: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      0050CF 8B 07            [24] 1183 	mov	ar7,r3
      0050D1 90 09 E6         [24] 1184 	mov	dptr,#(_buffer + 0x0027)
      0050D4 EF               [12] 1185 	mov	a,r7
      0050D5 F0               [24] 1186 	movx	@dptr,a
                                   1187 ;	trial_webserver.c:110: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      0050D6 8A 07            [24] 1188 	mov	ar7,r2
      0050D8 90 09 E7         [24] 1189 	mov	dptr,#(_buffer + 0x0028)
      0050DB EF               [12] 1190 	mov	a,r7
      0050DC F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	trial_webserver.c:111: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      0050DD 89 07            [24] 1193 	mov	ar7,r1
      0050DF 90 09 E8         [24] 1194 	mov	dptr,#(_buffer + 0x0029)
      0050E2 EF               [12] 1195 	mov	a,r7
      0050E3 F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	trial_webserver.c:112: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      0050E4 90 09 E9         [24] 1198 	mov	dptr,#(_buffer + 0x002a)
      0050E7 E8               [12] 1199 	mov	a,r0
      0050E8 F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	trial_webserver.c:113: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      0050E9 AF 32            [24] 1202 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 3)
      0050EB 90 09 EA         [24] 1203 	mov	dptr,#(_buffer + 0x002b)
      0050EE EF               [12] 1204 	mov	a,r7
      0050EF F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	trial_webserver.c:114: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      0050F0 AF 31            [24] 1207 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 2)
      0050F2 90 09 EB         [24] 1208 	mov	dptr,#(_buffer + 0x002c)
      0050F5 EF               [12] 1209 	mov	a,r7
      0050F6 F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	trial_webserver.c:115: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      0050F7 AF 30            [24] 1212 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 1)
      0050F9 90 09 EC         [24] 1213 	mov	dptr,#(_buffer + 0x002d)
      0050FC EF               [12] 1214 	mov	a,r7
      0050FD F0               [24] 1215 	movx	@dptr,a
                                   1216 ;	trial_webserver.c:116: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      0050FE AF 2F            [24] 1217 	mov	r7,_makeTcpAck3_sloc0_1_0
      005100 90 09 ED         [24] 1218 	mov	dptr,#(_buffer + 0x002e)
      005103 EF               [12] 1219 	mov	a,r7
      005104 F0               [24] 1220 	movx	@dptr,a
                                   1221 ;	trial_webserver.c:120: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      005105 90 09 D0         [24] 1222 	mov	dptr,#(_buffer + 0x0011)
      005108 E4               [12] 1223 	clr	a
      005109 F0               [24] 1224 	movx	@dptr,a
                                   1225 ;	trial_webserver.c:121: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      00510A 90 09 D1         [24] 1226 	mov	dptr,#(_buffer + 0x0012)
      00510D 74 28            [12] 1227 	mov	a,#0x28
      00510F F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	trial_webserver.c:124: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      005110 90 09 EF         [24] 1230 	mov	dptr,#(_buffer + 0x0030)
      005113 74 10            [12] 1231 	mov	a,#0x10
      005115 F0               [24] 1232 	movx	@dptr,a
                                   1233 ;	trial_webserver.c:125: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      005116 90 09 F0         [24] 1234 	mov	dptr,#(_buffer + 0x0031)
      005119 74 FF            [12] 1235 	mov	a,#0xff
      00511B F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	trial_webserver.c:126: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      00511C 90 09 F1         [24] 1238 	mov	dptr,#(_buffer + 0x0032)
      00511F F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	trial_webserver.c:127: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      005120 90 09 EE         [24] 1241 	mov	dptr,#(_buffer + 0x002f)
      005123 74 50            [12] 1242 	mov	a,#0x50
      005125 F0               [24] 1243 	movx	@dptr,a
                                   1244 ;	trial_webserver.c:130: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      005126 90 09 C0         [24] 1245 	mov	dptr,#(_buffer + 0x0001)
      005129 75 F0 00         [24] 1246 	mov	b, #0x00
      00512C 12 3F 25         [24] 1247 	lcall	_calculateIPChecksum
                                   1248 ;	trial_webserver.c:131: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      00512F 90 09 C0         [24] 1249 	mov	dptr,#(_buffer + 0x0001)
      005132 75 F0 00         [24] 1250 	mov	b, #0x00
      005135 12 40 8F         [24] 1251 	lcall	_calculateTcpChecksum
                                   1252 ;	trial_webserver.c:135: transmit_tcp_packet(buffer, 1 + 54);
      005138 90 09 B2         [24] 1253 	mov	dptr,#_transmit_tcp_packet_PARM_2
      00513B 74 37            [12] 1254 	mov	a,#0x37
      00513D F0               [24] 1255 	movx	@dptr,a
      00513E E4               [12] 1256 	clr	a
      00513F A3               [24] 1257 	inc	dptr
      005140 F0               [24] 1258 	movx	@dptr,a
      005141 90 09 BF         [24] 1259 	mov	dptr,#_buffer
      005144 F5 F0            [12] 1260 	mov	b,a
      005146 12 4C AC         [24] 1261 	lcall	_transmit_tcp_packet
                                   1262 ;	trial_webserver.c:138: connectionState = ACK_SENT;
      005149 90 14 93         [24] 1263 	mov	dptr,#_connectionState
      00514C 74 05            [12] 1264 	mov	a,#0x05
      00514E F0               [24] 1265 	movx	@dptr,a
                                   1266 ;	trial_webserver.c:139: }
      00514F 22               [24] 1267 	ret
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'makeTcpAck2'
                                   1270 ;------------------------------------------------------------
                                   1271 ;sloc0                     Allocated with name '_makeTcpAck2_sloc0_1_0'
                                   1272 ;sloc1                     Allocated with name '_makeTcpAck2_sloc1_1_0'
                                   1273 ;sloc2                     Allocated with name '_makeTcpAck2_sloc2_1_0'
                                   1274 ;device_mac                Allocated with name '_makeTcpAck2_device_mac_10000_125'
                                   1275 ;target_mac                Allocated with name '_makeTcpAck2_target_mac_10000_125'
                                   1276 ;device_ip                 Allocated with name '_makeTcpAck2_device_ip_10000_125'
                                   1277 ;target_ip                 Allocated with name '_makeTcpAck2_target_ip_10000_125'
                                   1278 ;totalLength1              Allocated with name '_makeTcpAck2_totalLength1_10000_125'
                                   1279 ;receivedPayloadLength     Allocated with name '_makeTcpAck2_receivedPayloadLength_10000_125'
                                   1280 ;srcPort                   Allocated with name '_makeTcpAck2_srcPort_10001_126'
                                   1281 ;dstPort                   Allocated with name '_makeTcpAck2_dstPort_10001_126'
                                   1282 ;clientSeqNum              Allocated with name '_makeTcpAck2_clientSeqNum_10002_127'
                                   1283 ;clientAckNum              Allocated with name '_makeTcpAck2_clientAckNum_10002_127'
                                   1284 ;serverSeqNum              Allocated with name '_makeTcpAck2_serverSeqNum_10002_127'
                                   1285 ;ackNum                    Allocated with name '_makeTcpAck2_ackNum_10002_127'
                                   1286 ;totalLength               Allocated with name '_makeTcpAck2_totalLength_10003_128'
                                   1287 ;------------------------------------------------------------
                                   1288 ;	trial_webserver.c:141: void makeTcpAck2() {
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function makeTcpAck2
                                   1291 ;	-----------------------------------------
      005150                       1292 _makeTcpAck2:
                                   1293 ;	trial_webserver.c:142: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      005150 90 0F C3         [24] 1294 	mov	dptr,#_makeTcpAck2_device_mac_10000_125
      005153 74 02            [12] 1295 	mov	a,#0x02
      005155 F0               [24] 1296 	movx	@dptr,a
      005156 90 0F C4         [24] 1297 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0001)
      005159 74 11            [12] 1298 	mov	a,#0x11
      00515B F0               [24] 1299 	movx	@dptr,a
      00515C 90 0F C5         [24] 1300 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0002)
      00515F 23               [12] 1301 	rl	a
      005160 F0               [24] 1302 	movx	@dptr,a
      005161 90 0F C6         [24] 1303 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0003)
      005164 74 33            [12] 1304 	mov	a,#0x33
      005166 F0               [24] 1305 	movx	@dptr,a
      005167 90 0F C7         [24] 1306 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0004)
      00516A 74 44            [12] 1307 	mov	a,#0x44
      00516C F0               [24] 1308 	movx	@dptr,a
      00516D 90 0F C8         [24] 1309 	mov	dptr,#(_makeTcpAck2_device_mac_10000_125 + 0x0005)
      005170 74 55            [12] 1310 	mov	a,#0x55
      005172 F0               [24] 1311 	movx	@dptr,a
                                   1312 ;	trial_webserver.c:143: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      005173 90 0F C9         [24] 1313 	mov	dptr,#_makeTcpAck2_target_mac_10000_125
      005176 74 F8            [12] 1314 	mov	a,#0xf8
      005178 F0               [24] 1315 	movx	@dptr,a
      005179 90 0F CA         [24] 1316 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0001)
      00517C 74 75            [12] 1317 	mov	a,#0x75
      00517E F0               [24] 1318 	movx	@dptr,a
      00517F 90 0F CB         [24] 1319 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0002)
      005182 74 A4            [12] 1320 	mov	a,#0xa4
      005184 F0               [24] 1321 	movx	@dptr,a
      005185 90 0F CC         [24] 1322 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0003)
      005188 74 8C            [12] 1323 	mov	a,#0x8c
      00518A F0               [24] 1324 	movx	@dptr,a
      00518B 90 0F CD         [24] 1325 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0004)
      00518E 74 41            [12] 1326 	mov	a,#0x41
      005190 F0               [24] 1327 	movx	@dptr,a
      005191 90 0F CE         [24] 1328 	mov	dptr,#(_makeTcpAck2_target_mac_10000_125 + 0x0005)
      005194 74 31            [12] 1329 	mov	a,#0x31
      005196 F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	trial_webserver.c:144: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      005197 90 0F CF         [24] 1332 	mov	dptr,#_makeTcpAck2_device_ip_10000_125
      00519A 74 C0            [12] 1333 	mov	a,#0xc0
      00519C F0               [24] 1334 	movx	@dptr,a
      00519D 90 0F D0         [24] 1335 	mov	dptr,#(_makeTcpAck2_device_ip_10000_125 + 0x0001)
      0051A0 74 A8            [12] 1336 	mov	a,#0xa8
      0051A2 F0               [24] 1337 	movx	@dptr,a
      0051A3 90 0F D1         [24] 1338 	mov	dptr,#(_makeTcpAck2_device_ip_10000_125 + 0x0002)
      0051A6 74 01            [12] 1339 	mov	a,#0x01
      0051A8 F0               [24] 1340 	movx	@dptr,a
      0051A9 90 0F D2         [24] 1341 	mov	dptr,#(_makeTcpAck2_device_ip_10000_125 + 0x0003)
      0051AC 74 64            [12] 1342 	mov	a,#0x64
      0051AE F0               [24] 1343 	movx	@dptr,a
                                   1344 ;	trial_webserver.c:145: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0051AF 90 0F D3         [24] 1345 	mov	dptr,#_makeTcpAck2_target_ip_10000_125
      0051B2 74 C0            [12] 1346 	mov	a,#0xc0
      0051B4 F0               [24] 1347 	movx	@dptr,a
      0051B5 90 0F D4         [24] 1348 	mov	dptr,#(_makeTcpAck2_target_ip_10000_125 + 0x0001)
      0051B8 74 A8            [12] 1349 	mov	a,#0xa8
      0051BA F0               [24] 1350 	movx	@dptr,a
      0051BB 90 0F D5         [24] 1351 	mov	dptr,#(_makeTcpAck2_target_ip_10000_125 + 0x0002)
      0051BE 74 01            [12] 1352 	mov	a,#0x01
      0051C0 F0               [24] 1353 	movx	@dptr,a
      0051C1 90 0F D6         [24] 1354 	mov	dptr,#(_makeTcpAck2_target_ip_10000_125 + 0x0003)
      0051C4 F0               [24] 1355 	movx	@dptr,a
                                   1356 ;	trial_webserver.c:146: uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
      0051C5 90 09 CF         [24] 1357 	mov	dptr,#(_buffer + 0x0010)
      0051C8 E0               [24] 1358 	movx	a,@dptr
      0051C9 FE               [12] 1359 	mov	r6,a
      0051CA 7F 00            [12] 1360 	mov	r7,#0x00
      0051CC 90 09 D0         [24] 1361 	mov	dptr,#(_buffer + 0x0011)
      0051CF E0               [24] 1362 	movx	a,@dptr
      0051D0 7C 00            [12] 1363 	mov	r4,#0x00
      0051D2 42 07            [12] 1364 	orl	ar7,a
      0051D4 EC               [12] 1365 	mov	a,r4
      0051D5 42 06            [12] 1366 	orl	ar6,a
                                   1367 ;	trial_webserver.c:147: uint16_t receivedPayloadLength = totalLength1 - 40;
      0051D7 EF               [12] 1368 	mov	a,r7
      0051D8 24 D8            [12] 1369 	add	a,#0xd8
      0051DA FF               [12] 1370 	mov	r7,a
      0051DB EE               [12] 1371 	mov	a,r6
      0051DC 34 FF            [12] 1372 	addc	a,#0xff
      0051DE FE               [12] 1373 	mov	r6,a
      0051DF 8F 33            [24] 1374 	mov	_makeTcpAck2_sloc0_1_0,r7
      0051E1 8E 34            [24] 1375 	mov	(_makeTcpAck2_sloc0_1_0 + 1),r6
                                   1376 ;	trial_webserver.c:148: printf("makeTcpAck\n\r");
      0051E3 74 2C            [12] 1377 	mov	a,#___str_1
      0051E5 C0 E0            [24] 1378 	push	acc
      0051E7 74 7A            [12] 1379 	mov	a,#(___str_1 >> 8)
      0051E9 C0 E0            [24] 1380 	push	acc
      0051EB 74 80            [12] 1381 	mov	a,#0x80
      0051ED C0 E0            [24] 1382 	push	acc
      0051EF 12 64 F1         [24] 1383 	lcall	_printf
      0051F2 15 81            [12] 1384 	dec	sp
      0051F4 15 81            [12] 1385 	dec	sp
      0051F6 15 81            [12] 1386 	dec	sp
                                   1387 ;	trial_webserver.c:151: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      0051F8 90 10 42         [24] 1388 	mov	dptr,#_memmove_PARM_2
      0051FB 74 BF            [12] 1389 	mov	a,#_buffer
      0051FD F0               [24] 1390 	movx	@dptr,a
      0051FE 74 09            [12] 1391 	mov	a,#(_buffer >> 8)
      005200 A3               [24] 1392 	inc	dptr
      005201 F0               [24] 1393 	movx	@dptr,a
      005202 E4               [12] 1394 	clr	a
      005203 A3               [24] 1395 	inc	dptr
      005204 F0               [24] 1396 	movx	@dptr,a
      005205 90 10 45         [24] 1397 	mov	dptr,#_memmove_PARM_3
      005208 74 36            [12] 1398 	mov	a,#0x36
      00520A F0               [24] 1399 	movx	@dptr,a
      00520B E4               [12] 1400 	clr	a
      00520C A3               [24] 1401 	inc	dptr
      00520D F0               [24] 1402 	movx	@dptr,a
      00520E 90 09 C0         [24] 1403 	mov	dptr,#(_buffer + 0x0001)
      005211 F5 F0            [12] 1404 	mov	b,a
      005213 12 5F BB         [24] 1405 	lcall	_memmove
                                   1406 ;	trial_webserver.c:152: buffer[0] = 0x0E;
      005216 90 09 BF         [24] 1407 	mov	dptr,#_buffer
      005219 74 0E            [12] 1408 	mov	a,#0x0e
      00521B F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	trial_webserver.c:155: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      00521C 90 10 36         [24] 1411 	mov	dptr,#___memcpy_PARM_2
      00521F 74 C6            [12] 1412 	mov	a,#(_buffer + 0x0007)
      005221 F0               [24] 1413 	movx	@dptr,a
      005222 74 09            [12] 1414 	mov	a,#((_buffer + 0x0007) >> 8)
      005224 A3               [24] 1415 	inc	dptr
      005225 F0               [24] 1416 	movx	@dptr,a
      005226 E4               [12] 1417 	clr	a
      005227 A3               [24] 1418 	inc	dptr
      005228 F0               [24] 1419 	movx	@dptr,a
      005229 90 10 39         [24] 1420 	mov	dptr,#___memcpy_PARM_3
      00522C 74 06            [12] 1421 	mov	a,#0x06
      00522E F0               [24] 1422 	movx	@dptr,a
      00522F E4               [12] 1423 	clr	a
      005230 A3               [24] 1424 	inc	dptr
      005231 F0               [24] 1425 	movx	@dptr,a
      005232 90 09 C0         [24] 1426 	mov	dptr,#(_buffer + 0x0001)
      005235 F5 F0            [12] 1427 	mov	b,a
      005237 12 5F 04         [24] 1428 	lcall	___memcpy
                                   1429 ;	trial_webserver.c:156: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      00523A 90 10 36         [24] 1430 	mov	dptr,#___memcpy_PARM_2
      00523D 74 C3            [12] 1431 	mov	a,#_makeTcpAck2_device_mac_10000_125
      00523F F0               [24] 1432 	movx	@dptr,a
      005240 74 0F            [12] 1433 	mov	a,#(_makeTcpAck2_device_mac_10000_125 >> 8)
      005242 A3               [24] 1434 	inc	dptr
      005243 F0               [24] 1435 	movx	@dptr,a
      005244 E4               [12] 1436 	clr	a
      005245 A3               [24] 1437 	inc	dptr
      005246 F0               [24] 1438 	movx	@dptr,a
      005247 90 10 39         [24] 1439 	mov	dptr,#___memcpy_PARM_3
      00524A 74 06            [12] 1440 	mov	a,#0x06
      00524C F0               [24] 1441 	movx	@dptr,a
      00524D E4               [12] 1442 	clr	a
      00524E A3               [24] 1443 	inc	dptr
      00524F F0               [24] 1444 	movx	@dptr,a
      005250 90 09 C6         [24] 1445 	mov	dptr,#(_buffer + 0x0007)
      005253 F5 F0            [12] 1446 	mov	b,a
      005255 12 5F 04         [24] 1447 	lcall	___memcpy
                                   1448 ;	trial_webserver.c:159: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      005258 90 10 36         [24] 1449 	mov	dptr,#___memcpy_PARM_2
      00525B 74 DA            [12] 1450 	mov	a,#(_buffer + 0x001b)
      00525D F0               [24] 1451 	movx	@dptr,a
      00525E 74 09            [12] 1452 	mov	a,#((_buffer + 0x001b) >> 8)
      005260 A3               [24] 1453 	inc	dptr
      005261 F0               [24] 1454 	movx	@dptr,a
      005262 E4               [12] 1455 	clr	a
      005263 A3               [24] 1456 	inc	dptr
      005264 F0               [24] 1457 	movx	@dptr,a
      005265 90 10 39         [24] 1458 	mov	dptr,#___memcpy_PARM_3
      005268 74 04            [12] 1459 	mov	a,#0x04
      00526A F0               [24] 1460 	movx	@dptr,a
      00526B E4               [12] 1461 	clr	a
      00526C A3               [24] 1462 	inc	dptr
      00526D F0               [24] 1463 	movx	@dptr,a
      00526E 90 09 DE         [24] 1464 	mov	dptr,#(_buffer + 0x001f)
      005271 F5 F0            [12] 1465 	mov	b,a
      005273 12 5F 04         [24] 1466 	lcall	___memcpy
                                   1467 ;	trial_webserver.c:160: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      005276 90 10 36         [24] 1468 	mov	dptr,#___memcpy_PARM_2
      005279 74 CF            [12] 1469 	mov	a,#_makeTcpAck2_device_ip_10000_125
      00527B F0               [24] 1470 	movx	@dptr,a
      00527C 74 0F            [12] 1471 	mov	a,#(_makeTcpAck2_device_ip_10000_125 >> 8)
      00527E A3               [24] 1472 	inc	dptr
      00527F F0               [24] 1473 	movx	@dptr,a
      005280 E4               [12] 1474 	clr	a
      005281 A3               [24] 1475 	inc	dptr
      005282 F0               [24] 1476 	movx	@dptr,a
      005283 90 10 39         [24] 1477 	mov	dptr,#___memcpy_PARM_3
      005286 74 04            [12] 1478 	mov	a,#0x04
      005288 F0               [24] 1479 	movx	@dptr,a
      005289 E4               [12] 1480 	clr	a
      00528A A3               [24] 1481 	inc	dptr
      00528B F0               [24] 1482 	movx	@dptr,a
      00528C 90 09 DA         [24] 1483 	mov	dptr,#(_buffer + 0x001b)
      00528F F5 F0            [12] 1484 	mov	b,a
      005291 12 5F 04         [24] 1485 	lcall	___memcpy
                                   1486 ;	trial_webserver.c:163: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      005294 90 09 E2         [24] 1487 	mov	dptr,#(_buffer + 0x0023)
      005297 E0               [24] 1488 	movx	a,@dptr
      005298 FC               [12] 1489 	mov	r4,a
      005299 7D 00            [12] 1490 	mov	r5,#0x00
      00529B 90 09 E3         [24] 1491 	mov	dptr,#(_buffer + 0x0024)
      00529E E0               [24] 1492 	movx	a,@dptr
      00529F 7A 00            [12] 1493 	mov	r2,#0x00
      0052A1 42 05            [12] 1494 	orl	ar5,a
      0052A3 EA               [12] 1495 	mov	a,r2
      0052A4 42 04            [12] 1496 	orl	ar4,a
                                   1497 ;	trial_webserver.c:165: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      0052A6 90 09 E4         [24] 1498 	mov	dptr,#(_buffer + 0x0025)
      0052A9 E0               [24] 1499 	movx	a,@dptr
      0052AA FA               [12] 1500 	mov	r2,a
      0052AB 7B 00            [12] 1501 	mov	r3,#0x00
      0052AD 90 09 E5         [24] 1502 	mov	dptr,#(_buffer + 0x0026)
      0052B0 E0               [24] 1503 	movx	a,@dptr
      0052B1 79 00            [12] 1504 	mov	r1,#0x00
      0052B3 42 03            [12] 1505 	orl	ar3,a
      0052B5 E9               [12] 1506 	mov	a,r1
      0052B6 42 02            [12] 1507 	orl	ar2,a
                                   1508 ;	trial_webserver.c:167: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0052B8 8A 01            [24] 1509 	mov	ar1,r2
      0052BA 90 09 E2         [24] 1510 	mov	dptr,#(_buffer + 0x0023)
      0052BD E9               [12] 1511 	mov	a,r1
      0052BE F0               [24] 1512 	movx	@dptr,a
                                   1513 ;	trial_webserver.c:168: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0052BF 90 09 E3         [24] 1514 	mov	dptr,#(_buffer + 0x0024)
      0052C2 EB               [12] 1515 	mov	a,r3
      0052C3 F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	trial_webserver.c:169: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0052C4 8C 03            [24] 1518 	mov	ar3,r4
      0052C6 90 09 E4         [24] 1519 	mov	dptr,#(_buffer + 0x0025)
      0052C9 EB               [12] 1520 	mov	a,r3
      0052CA F0               [24] 1521 	movx	@dptr,a
                                   1522 ;	trial_webserver.c:170: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0052CB 90 09 E5         [24] 1523 	mov	dptr,#(_buffer + 0x0026)
      0052CE ED               [12] 1524 	mov	a,r5
      0052CF F0               [24] 1525 	movx	@dptr,a
                                   1526 ;	trial_webserver.c:181: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
      0052D0 90 09 E6         [24] 1527 	mov	dptr,#(_buffer + 0x0027)
      0052D3 E0               [24] 1528 	movx	a,@dptr
      0052D4 FD               [12] 1529 	mov	r5,a
      0052D5 7C 00            [12] 1530 	mov	r4,#0x00
      0052D7 7B 00            [12] 1531 	mov	r3,#0x00
      0052D9 8D 02            [24] 1532 	mov	ar2,r5
      0052DB 7D 00            [12] 1533 	mov	r5,#0x00
      0052DD 90 09 E7         [24] 1534 	mov	dptr,#(_buffer + 0x0028)
      0052E0 E0               [24] 1535 	movx	a,@dptr
      0052E1 F8               [12] 1536 	mov	r0,a
      0052E2 79 00            [12] 1537 	mov	r1,#0x00
      0052E4 89 07            [24] 1538 	mov	ar7,r1
      0052E6 88 06            [24] 1539 	mov	ar6,r0
      0052E8 E4               [12] 1540 	clr	a
      0052E9 42 05            [12] 1541 	orl	ar5,a
      0052EB E9               [12] 1542 	mov	a,r1
      0052EC 42 04            [12] 1543 	orl	ar4,a
      0052EE EE               [12] 1544 	mov	a,r6
      0052EF 42 03            [12] 1545 	orl	ar3,a
      0052F1 EF               [12] 1546 	mov	a,r7
      0052F2 42 02            [12] 1547 	orl	ar2,a
      0052F4 90 09 E8         [24] 1548 	mov	dptr,#(_buffer + 0x0029)
      0052F7 E0               [24] 1549 	movx	a,@dptr
      0052F8 F8               [12] 1550 	mov	r0,a
      0052F9 79 00            [12] 1551 	mov	r1,#0x00
      0052FB 7E 00            [12] 1552 	mov	r6,#0x00
      0052FD 8E 07            [24] 1553 	mov	ar7,r6
      0052FF 89 06            [24] 1554 	mov	ar6,r1
      005301 88 01            [24] 1555 	mov	ar1,r0
      005303 E4               [12] 1556 	clr	a
      005304 42 05            [12] 1557 	orl	ar5,a
      005306 E9               [12] 1558 	mov	a,r1
      005307 42 04            [12] 1559 	orl	ar4,a
      005309 EE               [12] 1560 	mov	a,r6
      00530A 42 03            [12] 1561 	orl	ar3,a
      00530C EF               [12] 1562 	mov	a,r7
      00530D 42 02            [12] 1563 	orl	ar2,a
      00530F 90 09 E9         [24] 1564 	mov	dptr,#(_buffer + 0x002a)
      005312 E0               [24] 1565 	movx	a,@dptr
      005313 F8               [12] 1566 	mov	r0,a
      005314 E4               [12] 1567 	clr	a
      005315 F9               [12] 1568 	mov	r1,a
      005316 FE               [12] 1569 	mov	r6,a
      005317 FF               [12] 1570 	mov	r7,a
      005318 E8               [12] 1571 	mov	a,r0
      005319 4D               [12] 1572 	orl	a,r5
      00531A F5 39            [12] 1573 	mov	_makeTcpAck2_sloc2_1_0,a
      00531C E9               [12] 1574 	mov	a,r1
      00531D 4C               [12] 1575 	orl	a,r4
      00531E F5 3A            [12] 1576 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      005320 EE               [12] 1577 	mov	a,r6
      005321 4B               [12] 1578 	orl	a,r3
      005322 F5 3B            [12] 1579 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      005324 EF               [12] 1580 	mov	a,r7
      005325 4A               [12] 1581 	orl	a,r2
      005326 F5 3C            [12] 1582 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   1583 ;	trial_webserver.c:186: uint32_t clientAckNum = ((uint32_t)buffer[1 + TCP_ACK_H_P] << 24)
      005328 90 09 EA         [24] 1584 	mov	dptr,#(_buffer + 0x002b)
      00532B E0               [24] 1585 	movx	a,@dptr
      00532C F8               [12] 1586 	mov	r0,a
      00532D 7F 00            [12] 1587 	mov	r7,#0x00
      00532F 88 38            [24] 1588 	mov	(_makeTcpAck2_sloc1_1_0 + 3),r0
      005331 8F 35            [24] 1589 	mov	_makeTcpAck2_sloc1_1_0,r7
      005333 8F 36            [24] 1590 	mov	(_makeTcpAck2_sloc1_1_0 + 1),r7
      005335 8F 37            [24] 1591 	mov	(_makeTcpAck2_sloc1_1_0 + 2),r7
      005337 90 09 EB         [24] 1592 	mov	dptr,#(_buffer + 0x002c)
      00533A E0               [24] 1593 	movx	a,@dptr
      00533B F8               [12] 1594 	mov	r0,a
      00533C 89 07            [24] 1595 	mov	ar7,r1
      00533E 88 06            [24] 1596 	mov	ar6,r0
      005340 E4               [12] 1597 	clr	a
      005341 42 35            [12] 1598 	orl	_makeTcpAck2_sloc1_1_0,a
      005343 E9               [12] 1599 	mov	a,r1
      005344 42 36            [12] 1600 	orl	(_makeTcpAck2_sloc1_1_0 + 1),a
      005346 EE               [12] 1601 	mov	a,r6
      005347 42 37            [12] 1602 	orl	(_makeTcpAck2_sloc1_1_0 + 2),a
      005349 EF               [12] 1603 	mov	a,r7
      00534A 42 38            [12] 1604 	orl	(_makeTcpAck2_sloc1_1_0 + 3),a
      00534C 90 09 EC         [24] 1605 	mov	dptr,#(_buffer + 0x002d)
      00534F E0               [24] 1606 	movx	a,@dptr
      005350 F8               [12] 1607 	mov	r0,a
      005351 79 00            [12] 1608 	mov	r1,#0x00
      005353 7E 00            [12] 1609 	mov	r6,#0x00
      005355 8E 07            [24] 1610 	mov	ar7,r6
      005357 89 06            [24] 1611 	mov	ar6,r1
      005359 88 01            [24] 1612 	mov	ar1,r0
      00535B E4               [12] 1613 	clr	a
      00535C 42 35            [12] 1614 	orl	_makeTcpAck2_sloc1_1_0,a
      00535E E9               [12] 1615 	mov	a,r1
      00535F 42 36            [12] 1616 	orl	(_makeTcpAck2_sloc1_1_0 + 1),a
      005361 EE               [12] 1617 	mov	a,r6
      005362 42 37            [12] 1618 	orl	(_makeTcpAck2_sloc1_1_0 + 2),a
      005364 EF               [12] 1619 	mov	a,r7
      005365 42 38            [12] 1620 	orl	(_makeTcpAck2_sloc1_1_0 + 3),a
      005367 90 09 ED         [24] 1621 	mov	dptr,#(_buffer + 0x002e)
      00536A E0               [24] 1622 	movx	a,@dptr
      00536B F8               [12] 1623 	mov	r0,a
      00536C E4               [12] 1624 	clr	a
      00536D F9               [12] 1625 	mov	r1,a
      00536E FE               [12] 1626 	mov	r6,a
      00536F FF               [12] 1627 	mov	r7,a
      005370 E5 36            [12] 1628 	mov	a,(_makeTcpAck2_sloc1_1_0 + 1)
      005372 42 01            [12] 1629 	orl	ar1,a
      005374 E5 37            [12] 1630 	mov	a,(_makeTcpAck2_sloc1_1_0 + 2)
      005376 42 06            [12] 1631 	orl	ar6,a
      005378 E5 38            [12] 1632 	mov	a,(_makeTcpAck2_sloc1_1_0 + 3)
      00537A 42 07            [12] 1633 	orl	ar7,a
                                   1634 ;	trial_webserver.c:192: uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
      00537C AA 33            [24] 1635 	mov	r2,_makeTcpAck2_sloc0_1_0
      00537E AB 34            [24] 1636 	mov	r3,(_makeTcpAck2_sloc0_1_0 + 1)
      005380 E4               [12] 1637 	clr	a
      005381 FC               [12] 1638 	mov	r4,a
      005382 FD               [12] 1639 	mov	r5,a
      005383 EA               [12] 1640 	mov	a,r2
      005384 25 39            [12] 1641 	add	a, _makeTcpAck2_sloc2_1_0
      005386 FA               [12] 1642 	mov	r2,a
      005387 EB               [12] 1643 	mov	a,r3
      005388 35 3A            [12] 1644 	addc	a, (_makeTcpAck2_sloc2_1_0 + 1)
      00538A FB               [12] 1645 	mov	r3,a
      00538B EC               [12] 1646 	mov	a,r4
      00538C 35 3B            [12] 1647 	addc	a, (_makeTcpAck2_sloc2_1_0 + 2)
      00538E FC               [12] 1648 	mov	r4,a
      00538F ED               [12] 1649 	mov	a,r5
      005390 35 3C            [12] 1650 	addc	a, (_makeTcpAck2_sloc2_1_0 + 3)
      005392 FD               [12] 1651 	mov	r5,a
      005393 EA               [12] 1652 	mov	a,r2
      005394 24 FF            [12] 1653 	add	a,#0xff
      005396 F5 39            [12] 1654 	mov	_makeTcpAck2_sloc2_1_0,a
      005398 EB               [12] 1655 	mov	a,r3
      005399 34 FF            [12] 1656 	addc	a,#0xff
      00539B F5 3A            [12] 1657 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      00539D EC               [12] 1658 	mov	a,r4
      00539E 34 FF            [12] 1659 	addc	a,#0xff
      0053A0 F5 3B            [12] 1660 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      0053A2 ED               [12] 1661 	mov	a,r5
      0053A3 34 FF            [12] 1662 	addc	a,#0xff
      0053A5 F5 3C            [12] 1663 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   1664 ;	trial_webserver.c:193: prevSeq = serverSeqNum;
      0053A7 90 09 B7         [24] 1665 	mov	dptr,#_prevSeq
      0053AA E8               [12] 1666 	mov	a,r0
      0053AB F0               [24] 1667 	movx	@dptr,a
      0053AC E9               [12] 1668 	mov	a,r1
      0053AD A3               [24] 1669 	inc	dptr
      0053AE F0               [24] 1670 	movx	@dptr,a
      0053AF EE               [12] 1671 	mov	a,r6
      0053B0 A3               [24] 1672 	inc	dptr
      0053B1 F0               [24] 1673 	movx	@dptr,a
      0053B2 EF               [12] 1674 	mov	a,r7
      0053B3 A3               [24] 1675 	inc	dptr
      0053B4 F0               [24] 1676 	movx	@dptr,a
                                   1677 ;	trial_webserver.c:194: prevAck = ackNum;
      0053B5 90 09 BB         [24] 1678 	mov	dptr,#_prevAck
      0053B8 E5 39            [12] 1679 	mov	a,_makeTcpAck2_sloc2_1_0
      0053BA F0               [24] 1680 	movx	@dptr,a
      0053BB E5 3A            [12] 1681 	mov	a,(_makeTcpAck2_sloc2_1_0 + 1)
      0053BD A3               [24] 1682 	inc	dptr
      0053BE F0               [24] 1683 	movx	@dptr,a
      0053BF E5 3B            [12] 1684 	mov	a,(_makeTcpAck2_sloc2_1_0 + 2)
      0053C1 A3               [24] 1685 	inc	dptr
      0053C2 F0               [24] 1686 	movx	@dptr,a
      0053C3 E5 3C            [12] 1687 	mov	a,(_makeTcpAck2_sloc2_1_0 + 3)
      0053C5 A3               [24] 1688 	inc	dptr
      0053C6 F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	trial_webserver.c:197: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      0053C7 8F 05            [24] 1691 	mov	ar5,r7
      0053C9 90 09 E6         [24] 1692 	mov	dptr,#(_buffer + 0x0027)
      0053CC ED               [12] 1693 	mov	a,r5
      0053CD F0               [24] 1694 	movx	@dptr,a
                                   1695 ;	trial_webserver.c:198: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      0053CE 8E 05            [24] 1696 	mov	ar5,r6
      0053D0 90 09 E7         [24] 1697 	mov	dptr,#(_buffer + 0x0028)
      0053D3 ED               [12] 1698 	mov	a,r5
      0053D4 F0               [24] 1699 	movx	@dptr,a
                                   1700 ;	trial_webserver.c:199: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      0053D5 89 05            [24] 1701 	mov	ar5,r1
      0053D7 90 09 E8         [24] 1702 	mov	dptr,#(_buffer + 0x0029)
      0053DA ED               [12] 1703 	mov	a,r5
      0053DB F0               [24] 1704 	movx	@dptr,a
                                   1705 ;	trial_webserver.c:200: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      0053DC 90 09 E9         [24] 1706 	mov	dptr,#(_buffer + 0x002a)
      0053DF E8               [12] 1707 	mov	a,r0
      0053E0 F0               [24] 1708 	movx	@dptr,a
                                   1709 ;	trial_webserver.c:201: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      0053E1 AF 3C            [24] 1710 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 3)
      0053E3 90 09 EA         [24] 1711 	mov	dptr,#(_buffer + 0x002b)
      0053E6 EF               [12] 1712 	mov	a,r7
      0053E7 F0               [24] 1713 	movx	@dptr,a
                                   1714 ;	trial_webserver.c:202: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      0053E8 AF 3B            [24] 1715 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 2)
      0053EA 90 09 EB         [24] 1716 	mov	dptr,#(_buffer + 0x002c)
      0053ED EF               [12] 1717 	mov	a,r7
      0053EE F0               [24] 1718 	movx	@dptr,a
                                   1719 ;	trial_webserver.c:203: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      0053EF AF 3A            [24] 1720 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 1)
      0053F1 90 09 EC         [24] 1721 	mov	dptr,#(_buffer + 0x002d)
      0053F4 EF               [12] 1722 	mov	a,r7
      0053F5 F0               [24] 1723 	movx	@dptr,a
                                   1724 ;	trial_webserver.c:204: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      0053F6 AA 39            [24] 1725 	mov	r2,_makeTcpAck2_sloc2_1_0
      0053F8 90 09 ED         [24] 1726 	mov	dptr,#(_buffer + 0x002e)
      0053FB EA               [12] 1727 	mov	a,r2
      0053FC F0               [24] 1728 	movx	@dptr,a
                                   1729 ;	trial_webserver.c:208: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      0053FD 90 09 D0         [24] 1730 	mov	dptr,#(_buffer + 0x0011)
      005400 E4               [12] 1731 	clr	a
      005401 F0               [24] 1732 	movx	@dptr,a
                                   1733 ;	trial_webserver.c:209: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005402 90 09 D1         [24] 1734 	mov	dptr,#(_buffer + 0x0012)
      005405 74 28            [12] 1735 	mov	a,#0x28
      005407 F0               [24] 1736 	movx	@dptr,a
                                   1737 ;	trial_webserver.c:212: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      005408 90 09 EF         [24] 1738 	mov	dptr,#(_buffer + 0x0030)
      00540B 74 10            [12] 1739 	mov	a,#0x10
      00540D F0               [24] 1740 	movx	@dptr,a
                                   1741 ;	trial_webserver.c:213: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      00540E 90 09 F0         [24] 1742 	mov	dptr,#(_buffer + 0x0031)
      005411 74 FF            [12] 1743 	mov	a,#0xff
      005413 F0               [24] 1744 	movx	@dptr,a
                                   1745 ;	trial_webserver.c:214: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      005414 90 09 F1         [24] 1746 	mov	dptr,#(_buffer + 0x0032)
      005417 F0               [24] 1747 	movx	@dptr,a
                                   1748 ;	trial_webserver.c:215: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      005418 90 09 EE         [24] 1749 	mov	dptr,#(_buffer + 0x002f)
      00541B 74 50            [12] 1750 	mov	a,#0x50
      00541D F0               [24] 1751 	movx	@dptr,a
                                   1752 ;	trial_webserver.c:218: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      00541E 90 09 C0         [24] 1753 	mov	dptr,#(_buffer + 0x0001)
      005421 75 F0 00         [24] 1754 	mov	b, #0x00
      005424 12 3F 25         [24] 1755 	lcall	_calculateIPChecksum
                                   1756 ;	trial_webserver.c:219: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      005427 90 09 C0         [24] 1757 	mov	dptr,#(_buffer + 0x0001)
      00542A 75 F0 00         [24] 1758 	mov	b, #0x00
      00542D 12 40 8F         [24] 1759 	lcall	_calculateTcpChecksum
                                   1760 ;	trial_webserver.c:223: transmit_tcp_packet(buffer, 1 + 54);
      005430 90 09 B2         [24] 1761 	mov	dptr,#_transmit_tcp_packet_PARM_2
      005433 74 37            [12] 1762 	mov	a,#0x37
      005435 F0               [24] 1763 	movx	@dptr,a
      005436 E4               [12] 1764 	clr	a
      005437 A3               [24] 1765 	inc	dptr
      005438 F0               [24] 1766 	movx	@dptr,a
      005439 90 09 BF         [24] 1767 	mov	dptr,#_buffer
      00543C F5 F0            [12] 1768 	mov	b,a
      00543E 12 4C AC         [24] 1769 	lcall	_transmit_tcp_packet
                                   1770 ;	trial_webserver.c:226: connectionState = ACK_SENT;
      005441 90 14 93         [24] 1771 	mov	dptr,#_connectionState
      005444 74 05            [12] 1772 	mov	a,#0x05
      005446 F0               [24] 1773 	movx	@dptr,a
                                   1774 ;	trial_webserver.c:227: }
      005447 22               [24] 1775 	ret
                                   1776 ;------------------------------------------------------------
                                   1777 ;Allocation info for local variables in function 'makeTcpSynAck'
                                   1778 ;------------------------------------------------------------
                                   1779 ;device_mac                Allocated with name '_makeTcpSynAck_device_mac_10000_129'
                                   1780 ;target_mac                Allocated with name '_makeTcpSynAck_target_mac_10000_129'
                                   1781 ;device_ip                 Allocated with name '_makeTcpSynAck_device_ip_10000_129'
                                   1782 ;target_ip                 Allocated with name '_makeTcpSynAck_target_ip_10000_129'
                                   1783 ;srcPort                   Allocated with name '_makeTcpSynAck_srcPort_10001_130'
                                   1784 ;dstPort                   Allocated with name '_makeTcpSynAck_dstPort_10001_130'
                                   1785 ;clientSeqNum              Allocated with name '_makeTcpSynAck_clientSeqNum_10002_131'
                                   1786 ;serverSeqNum              Allocated with name '_makeTcpSynAck_serverSeqNum_10003_132'
                                   1787 ;ackNum                    Allocated with name '_makeTcpSynAck_ackNum_10003_132'
                                   1788 ;totalLength               Allocated with name '_makeTcpSynAck_totalLength_10004_133'
                                   1789 ;------------------------------------------------------------
                                   1790 ;	trial_webserver.c:229: void makeTcpSynAck() {
                                   1791 ;	-----------------------------------------
                                   1792 ;	 function makeTcpSynAck
                                   1793 ;	-----------------------------------------
      005448                       1794 _makeTcpSynAck:
                                   1795 ;	trial_webserver.c:230: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      005448 90 0F D7         [24] 1796 	mov	dptr,#_makeTcpSynAck_device_mac_10000_129
      00544B 74 02            [12] 1797 	mov	a,#0x02
      00544D F0               [24] 1798 	movx	@dptr,a
      00544E 90 0F D8         [24] 1799 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0001)
      005451 74 11            [12] 1800 	mov	a,#0x11
      005453 F0               [24] 1801 	movx	@dptr,a
      005454 90 0F D9         [24] 1802 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0002)
      005457 23               [12] 1803 	rl	a
      005458 F0               [24] 1804 	movx	@dptr,a
      005459 90 0F DA         [24] 1805 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0003)
      00545C 74 33            [12] 1806 	mov	a,#0x33
      00545E F0               [24] 1807 	movx	@dptr,a
      00545F 90 0F DB         [24] 1808 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0004)
      005462 74 44            [12] 1809 	mov	a,#0x44
      005464 F0               [24] 1810 	movx	@dptr,a
      005465 90 0F DC         [24] 1811 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0005)
      005468 74 55            [12] 1812 	mov	a,#0x55
      00546A F0               [24] 1813 	movx	@dptr,a
                                   1814 ;	trial_webserver.c:231: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      00546B 90 0F DD         [24] 1815 	mov	dptr,#_makeTcpSynAck_target_mac_10000_129
      00546E 74 F8            [12] 1816 	mov	a,#0xf8
      005470 F0               [24] 1817 	movx	@dptr,a
      005471 90 0F DE         [24] 1818 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0001)
      005474 74 75            [12] 1819 	mov	a,#0x75
      005476 F0               [24] 1820 	movx	@dptr,a
      005477 90 0F DF         [24] 1821 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0002)
      00547A 74 A4            [12] 1822 	mov	a,#0xa4
      00547C F0               [24] 1823 	movx	@dptr,a
      00547D 90 0F E0         [24] 1824 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0003)
      005480 74 8C            [12] 1825 	mov	a,#0x8c
      005482 F0               [24] 1826 	movx	@dptr,a
      005483 90 0F E1         [24] 1827 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0004)
      005486 74 41            [12] 1828 	mov	a,#0x41
      005488 F0               [24] 1829 	movx	@dptr,a
      005489 90 0F E2         [24] 1830 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0005)
      00548C 74 31            [12] 1831 	mov	a,#0x31
      00548E F0               [24] 1832 	movx	@dptr,a
                                   1833 ;	trial_webserver.c:232: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      00548F 90 0F E3         [24] 1834 	mov	dptr,#_makeTcpSynAck_device_ip_10000_129
      005492 74 C0            [12] 1835 	mov	a,#0xc0
      005494 F0               [24] 1836 	movx	@dptr,a
      005495 90 0F E4         [24] 1837 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0001)
      005498 74 A8            [12] 1838 	mov	a,#0xa8
      00549A F0               [24] 1839 	movx	@dptr,a
      00549B 90 0F E5         [24] 1840 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0002)
      00549E 74 01            [12] 1841 	mov	a,#0x01
      0054A0 F0               [24] 1842 	movx	@dptr,a
      0054A1 90 0F E6         [24] 1843 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0003)
      0054A4 74 64            [12] 1844 	mov	a,#0x64
      0054A6 F0               [24] 1845 	movx	@dptr,a
                                   1846 ;	trial_webserver.c:233: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0054A7 90 0F E7         [24] 1847 	mov	dptr,#_makeTcpSynAck_target_ip_10000_129
      0054AA 74 C0            [12] 1848 	mov	a,#0xc0
      0054AC F0               [24] 1849 	movx	@dptr,a
      0054AD 90 0F E8         [24] 1850 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0001)
      0054B0 74 A8            [12] 1851 	mov	a,#0xa8
      0054B2 F0               [24] 1852 	movx	@dptr,a
      0054B3 90 0F E9         [24] 1853 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0002)
      0054B6 74 01            [12] 1854 	mov	a,#0x01
      0054B8 F0               [24] 1855 	movx	@dptr,a
      0054B9 90 0F EA         [24] 1856 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0003)
      0054BC F0               [24] 1857 	movx	@dptr,a
                                   1858 ;	trial_webserver.c:234: printf("makeTcpSynAck\n\r");
      0054BD 74 39            [12] 1859 	mov	a,#___str_2
      0054BF C0 E0            [24] 1860 	push	acc
      0054C1 74 7A            [12] 1861 	mov	a,#(___str_2 >> 8)
      0054C3 C0 E0            [24] 1862 	push	acc
      0054C5 74 80            [12] 1863 	mov	a,#0x80
      0054C7 C0 E0            [24] 1864 	push	acc
      0054C9 12 64 F1         [24] 1865 	lcall	_printf
      0054CC 15 81            [12] 1866 	dec	sp
      0054CE 15 81            [12] 1867 	dec	sp
      0054D0 15 81            [12] 1868 	dec	sp
                                   1869 ;	trial_webserver.c:237: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      0054D2 90 10 42         [24] 1870 	mov	dptr,#_memmove_PARM_2
      0054D5 74 BF            [12] 1871 	mov	a,#_buffer
      0054D7 F0               [24] 1872 	movx	@dptr,a
      0054D8 74 09            [12] 1873 	mov	a,#(_buffer >> 8)
      0054DA A3               [24] 1874 	inc	dptr
      0054DB F0               [24] 1875 	movx	@dptr,a
      0054DC E4               [12] 1876 	clr	a
      0054DD A3               [24] 1877 	inc	dptr
      0054DE F0               [24] 1878 	movx	@dptr,a
      0054DF 90 10 45         [24] 1879 	mov	dptr,#_memmove_PARM_3
      0054E2 74 36            [12] 1880 	mov	a,#0x36
      0054E4 F0               [24] 1881 	movx	@dptr,a
      0054E5 E4               [12] 1882 	clr	a
      0054E6 A3               [24] 1883 	inc	dptr
      0054E7 F0               [24] 1884 	movx	@dptr,a
      0054E8 90 09 C0         [24] 1885 	mov	dptr,#(_buffer + 0x0001)
      0054EB F5 F0            [12] 1886 	mov	b,a
      0054ED 12 5F BB         [24] 1887 	lcall	_memmove
                                   1888 ;	trial_webserver.c:238: buffer[0] = 0x0E;
      0054F0 90 09 BF         [24] 1889 	mov	dptr,#_buffer
      0054F3 74 0E            [12] 1890 	mov	a,#0x0e
      0054F5 F0               [24] 1891 	movx	@dptr,a
                                   1892 ;	trial_webserver.c:240: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      0054F6 90 10 36         [24] 1893 	mov	dptr,#___memcpy_PARM_2
      0054F9 74 C6            [12] 1894 	mov	a,#(_buffer + 0x0007)
      0054FB F0               [24] 1895 	movx	@dptr,a
      0054FC 74 09            [12] 1896 	mov	a,#((_buffer + 0x0007) >> 8)
      0054FE A3               [24] 1897 	inc	dptr
      0054FF F0               [24] 1898 	movx	@dptr,a
      005500 E4               [12] 1899 	clr	a
      005501 A3               [24] 1900 	inc	dptr
      005502 F0               [24] 1901 	movx	@dptr,a
      005503 90 10 39         [24] 1902 	mov	dptr,#___memcpy_PARM_3
      005506 74 06            [12] 1903 	mov	a,#0x06
      005508 F0               [24] 1904 	movx	@dptr,a
      005509 E4               [12] 1905 	clr	a
      00550A A3               [24] 1906 	inc	dptr
      00550B F0               [24] 1907 	movx	@dptr,a
      00550C 90 09 C0         [24] 1908 	mov	dptr,#(_buffer + 0x0001)
      00550F F5 F0            [12] 1909 	mov	b,a
      005511 12 5F 04         [24] 1910 	lcall	___memcpy
                                   1911 ;	trial_webserver.c:241: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      005514 90 10 36         [24] 1912 	mov	dptr,#___memcpy_PARM_2
      005517 74 D7            [12] 1913 	mov	a,#_makeTcpSynAck_device_mac_10000_129
      005519 F0               [24] 1914 	movx	@dptr,a
      00551A 74 0F            [12] 1915 	mov	a,#(_makeTcpSynAck_device_mac_10000_129 >> 8)
      00551C A3               [24] 1916 	inc	dptr
      00551D F0               [24] 1917 	movx	@dptr,a
      00551E E4               [12] 1918 	clr	a
      00551F A3               [24] 1919 	inc	dptr
      005520 F0               [24] 1920 	movx	@dptr,a
      005521 90 10 39         [24] 1921 	mov	dptr,#___memcpy_PARM_3
      005524 74 06            [12] 1922 	mov	a,#0x06
      005526 F0               [24] 1923 	movx	@dptr,a
      005527 E4               [12] 1924 	clr	a
      005528 A3               [24] 1925 	inc	dptr
      005529 F0               [24] 1926 	movx	@dptr,a
      00552A 90 09 C6         [24] 1927 	mov	dptr,#(_buffer + 0x0007)
      00552D F5 F0            [12] 1928 	mov	b,a
      00552F 12 5F 04         [24] 1929 	lcall	___memcpy
                                   1930 ;	trial_webserver.c:244: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      005532 90 10 36         [24] 1931 	mov	dptr,#___memcpy_PARM_2
      005535 74 DA            [12] 1932 	mov	a,#(_buffer + 0x001b)
      005537 F0               [24] 1933 	movx	@dptr,a
      005538 74 09            [12] 1934 	mov	a,#((_buffer + 0x001b) >> 8)
      00553A A3               [24] 1935 	inc	dptr
      00553B F0               [24] 1936 	movx	@dptr,a
      00553C E4               [12] 1937 	clr	a
      00553D A3               [24] 1938 	inc	dptr
      00553E F0               [24] 1939 	movx	@dptr,a
      00553F 90 10 39         [24] 1940 	mov	dptr,#___memcpy_PARM_3
      005542 74 04            [12] 1941 	mov	a,#0x04
      005544 F0               [24] 1942 	movx	@dptr,a
      005545 E4               [12] 1943 	clr	a
      005546 A3               [24] 1944 	inc	dptr
      005547 F0               [24] 1945 	movx	@dptr,a
      005548 90 09 DE         [24] 1946 	mov	dptr,#(_buffer + 0x001f)
      00554B F5 F0            [12] 1947 	mov	b,a
      00554D 12 5F 04         [24] 1948 	lcall	___memcpy
                                   1949 ;	trial_webserver.c:245: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      005550 90 10 36         [24] 1950 	mov	dptr,#___memcpy_PARM_2
      005553 74 E3            [12] 1951 	mov	a,#_makeTcpSynAck_device_ip_10000_129
      005555 F0               [24] 1952 	movx	@dptr,a
      005556 74 0F            [12] 1953 	mov	a,#(_makeTcpSynAck_device_ip_10000_129 >> 8)
      005558 A3               [24] 1954 	inc	dptr
      005559 F0               [24] 1955 	movx	@dptr,a
      00555A E4               [12] 1956 	clr	a
      00555B A3               [24] 1957 	inc	dptr
      00555C F0               [24] 1958 	movx	@dptr,a
      00555D 90 10 39         [24] 1959 	mov	dptr,#___memcpy_PARM_3
      005560 74 04            [12] 1960 	mov	a,#0x04
      005562 F0               [24] 1961 	movx	@dptr,a
      005563 E4               [12] 1962 	clr	a
      005564 A3               [24] 1963 	inc	dptr
      005565 F0               [24] 1964 	movx	@dptr,a
      005566 90 09 DA         [24] 1965 	mov	dptr,#(_buffer + 0x001b)
      005569 F5 F0            [12] 1966 	mov	b,a
      00556B 12 5F 04         [24] 1967 	lcall	___memcpy
                                   1968 ;	trial_webserver.c:248: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00556E 90 09 E2         [24] 1969 	mov	dptr,#(_buffer + 0x0023)
      005571 E0               [24] 1970 	movx	a,@dptr
      005572 FE               [12] 1971 	mov	r6,a
      005573 7F 00            [12] 1972 	mov	r7,#0x00
      005575 90 09 E3         [24] 1973 	mov	dptr,#(_buffer + 0x0024)
      005578 E0               [24] 1974 	movx	a,@dptr
      005579 7C 00            [12] 1975 	mov	r4,#0x00
      00557B 42 07            [12] 1976 	orl	ar7,a
      00557D EC               [12] 1977 	mov	a,r4
      00557E 42 06            [12] 1978 	orl	ar6,a
                                   1979 ;	trial_webserver.c:250: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      005580 90 09 E4         [24] 1980 	mov	dptr,#(_buffer + 0x0025)
      005583 E0               [24] 1981 	movx	a,@dptr
      005584 FC               [12] 1982 	mov	r4,a
      005585 7D 00            [12] 1983 	mov	r5,#0x00
      005587 90 09 E5         [24] 1984 	mov	dptr,#(_buffer + 0x0026)
      00558A E0               [24] 1985 	movx	a,@dptr
      00558B 7A 00            [12] 1986 	mov	r2,#0x00
      00558D 42 05            [12] 1987 	orl	ar5,a
      00558F EA               [12] 1988 	mov	a,r2
      005590 42 04            [12] 1989 	orl	ar4,a
                                   1990 ;	trial_webserver.c:252: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      005592 8C 03            [24] 1991 	mov	ar3,r4
      005594 90 09 E2         [24] 1992 	mov	dptr,#(_buffer + 0x0023)
      005597 EB               [12] 1993 	mov	a,r3
      005598 F0               [24] 1994 	movx	@dptr,a
                                   1995 ;	trial_webserver.c:253: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      005599 90 09 E3         [24] 1996 	mov	dptr,#(_buffer + 0x0024)
      00559C ED               [12] 1997 	mov	a,r5
      00559D F0               [24] 1998 	movx	@dptr,a
                                   1999 ;	trial_webserver.c:254: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      00559E 8E 05            [24] 2000 	mov	ar5,r6
      0055A0 90 09 E4         [24] 2001 	mov	dptr,#(_buffer + 0x0025)
      0055A3 ED               [12] 2002 	mov	a,r5
      0055A4 F0               [24] 2003 	movx	@dptr,a
                                   2004 ;	trial_webserver.c:255: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0055A5 90 09 E5         [24] 2005 	mov	dptr,#(_buffer + 0x0026)
      0055A8 EF               [12] 2006 	mov	a,r7
      0055A9 F0               [24] 2007 	movx	@dptr,a
                                   2008 ;	trial_webserver.c:264: uint32_t clientSeqNum = ((uint32_t)buffer[1 + TCP_SEQ_H_P] << 24)
      0055AA 90 09 E6         [24] 2009 	mov	dptr,#(_buffer + 0x0027)
      0055AD E0               [24] 2010 	movx	a,@dptr
      0055AE FF               [12] 2011 	mov	r7,a
      0055AF 7E 00            [12] 2012 	mov	r6,#0x00
      0055B1 7D 00            [12] 2013 	mov	r5,#0x00
      0055B3 8F 04            [24] 2014 	mov	ar4,r7
      0055B5 7F 00            [12] 2015 	mov	r7,#0x00
      0055B7 90 09 E7         [24] 2016 	mov	dptr,#(_buffer + 0x0028)
      0055BA E0               [24] 2017 	movx	a,@dptr
      0055BB F8               [12] 2018 	mov	r0,a
      0055BC 79 00            [12] 2019 	mov	r1,#0x00
      0055BE 89 03            [24] 2020 	mov	ar3,r1
      0055C0 88 02            [24] 2021 	mov	ar2,r0
      0055C2 E4               [12] 2022 	clr	a
      0055C3 42 07            [12] 2023 	orl	ar7,a
      0055C5 E9               [12] 2024 	mov	a,r1
      0055C6 42 06            [12] 2025 	orl	ar6,a
      0055C8 EA               [12] 2026 	mov	a,r2
      0055C9 42 05            [12] 2027 	orl	ar5,a
      0055CB EB               [12] 2028 	mov	a,r3
      0055CC 42 04            [12] 2029 	orl	ar4,a
      0055CE 90 09 E8         [24] 2030 	mov	dptr,#(_buffer + 0x0029)
      0055D1 E0               [24] 2031 	movx	a,@dptr
      0055D2 F8               [12] 2032 	mov	r0,a
      0055D3 79 00            [12] 2033 	mov	r1,#0x00
      0055D5 7A 00            [12] 2034 	mov	r2,#0x00
      0055D7 8A 03            [24] 2035 	mov	ar3,r2
      0055D9 89 02            [24] 2036 	mov	ar2,r1
      0055DB 88 01            [24] 2037 	mov	ar1,r0
      0055DD E4               [12] 2038 	clr	a
      0055DE 42 07            [12] 2039 	orl	ar7,a
      0055E0 E9               [12] 2040 	mov	a,r1
      0055E1 42 06            [12] 2041 	orl	ar6,a
      0055E3 EA               [12] 2042 	mov	a,r2
      0055E4 42 05            [12] 2043 	orl	ar5,a
      0055E6 EB               [12] 2044 	mov	a,r3
      0055E7 42 04            [12] 2045 	orl	ar4,a
      0055E9 90 09 E9         [24] 2046 	mov	dptr,#(_buffer + 0x002a)
      0055EC E0               [24] 2047 	movx	a,@dptr
      0055ED F8               [12] 2048 	mov	r0,a
      0055EE E4               [12] 2049 	clr	a
      0055EF F9               [12] 2050 	mov	r1,a
      0055F0 FA               [12] 2051 	mov	r2,a
      0055F1 FB               [12] 2052 	mov	r3,a
      0055F2 E8               [12] 2053 	mov	a,r0
      0055F3 42 07            [12] 2054 	orl	ar7,a
      0055F5 E9               [12] 2055 	mov	a,r1
      0055F6 42 06            [12] 2056 	orl	ar6,a
      0055F8 EA               [12] 2057 	mov	a,r2
      0055F9 42 05            [12] 2058 	orl	ar5,a
      0055FB EB               [12] 2059 	mov	a,r3
      0055FC 42 04            [12] 2060 	orl	ar4,a
                                   2061 ;	trial_webserver.c:268: printf("clientSeqNum = %ld\n\r", clientSeqNum);
      0055FE C0 07            [24] 2062 	push	ar7
      005600 C0 06            [24] 2063 	push	ar6
      005602 C0 05            [24] 2064 	push	ar5
      005604 C0 04            [24] 2065 	push	ar4
      005606 C0 07            [24] 2066 	push	ar7
      005608 C0 06            [24] 2067 	push	ar6
      00560A C0 05            [24] 2068 	push	ar5
      00560C C0 04            [24] 2069 	push	ar4
      00560E 74 49            [12] 2070 	mov	a,#___str_3
      005610 C0 E0            [24] 2071 	push	acc
      005612 74 7A            [12] 2072 	mov	a,#(___str_3 >> 8)
      005614 C0 E0            [24] 2073 	push	acc
      005616 74 80            [12] 2074 	mov	a,#0x80
      005618 C0 E0            [24] 2075 	push	acc
      00561A 12 64 F1         [24] 2076 	lcall	_printf
      00561D E5 81            [12] 2077 	mov	a,sp
      00561F 24 F9            [12] 2078 	add	a,#0xf9
      005621 F5 81            [12] 2079 	mov	sp,a
      005623 D0 04            [24] 2080 	pop	ar4
      005625 D0 05            [24] 2081 	pop	ar5
      005627 D0 06            [24] 2082 	pop	ar6
      005629 D0 07            [24] 2083 	pop	ar7
                                   2084 ;	trial_webserver.c:270: uint32_t ackNum = clientSeqNum + 1;
      00562B 0F               [12] 2085 	inc	r7
      00562C BF 00 09         [24] 2086 	cjne	r7,#0x00,00103$
      00562F 0E               [12] 2087 	inc	r6
      005630 BE 00 05         [24] 2088 	cjne	r6,#0x00,00103$
      005633 0D               [12] 2089 	inc	r5
      005634 BD 00 01         [24] 2090 	cjne	r5,#0x00,00103$
      005637 0C               [12] 2091 	inc	r4
      005638                       2092 00103$:
                                   2093 ;	trial_webserver.c:272: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      005638 90 09 E6         [24] 2094 	mov	dptr,#(_buffer + 0x0027)
      00563B E4               [12] 2095 	clr	a
      00563C F0               [24] 2096 	movx	@dptr,a
                                   2097 ;	trial_webserver.c:273: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      00563D 90 09 E7         [24] 2098 	mov	dptr,#(_buffer + 0x0028)
      005640 F0               [24] 2099 	movx	@dptr,a
                                   2100 ;	trial_webserver.c:274: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      005641 90 09 E8         [24] 2101 	mov	dptr,#(_buffer + 0x0029)
      005644 74 03            [12] 2102 	mov	a,#0x03
      005646 F0               [24] 2103 	movx	@dptr,a
                                   2104 ;	trial_webserver.c:275: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      005647 90 09 E9         [24] 2105 	mov	dptr,#(_buffer + 0x002a)
      00564A 74 E8            [12] 2106 	mov	a,#0xe8
      00564C F0               [24] 2107 	movx	@dptr,a
                                   2108 ;	trial_webserver.c:276: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      00564D 8C 03            [24] 2109 	mov	ar3,r4
      00564F 90 09 EA         [24] 2110 	mov	dptr,#(_buffer + 0x002b)
      005652 EB               [12] 2111 	mov	a,r3
      005653 F0               [24] 2112 	movx	@dptr,a
                                   2113 ;	trial_webserver.c:277: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      005654 8D 03            [24] 2114 	mov	ar3,r5
      005656 90 09 EB         [24] 2115 	mov	dptr,#(_buffer + 0x002c)
      005659 EB               [12] 2116 	mov	a,r3
      00565A F0               [24] 2117 	movx	@dptr,a
                                   2118 ;	trial_webserver.c:278: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      00565B 8E 03            [24] 2119 	mov	ar3,r6
      00565D 90 09 EC         [24] 2120 	mov	dptr,#(_buffer + 0x002d)
      005660 EB               [12] 2121 	mov	a,r3
      005661 F0               [24] 2122 	movx	@dptr,a
                                   2123 ;	trial_webserver.c:279: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      005662 90 09 ED         [24] 2124 	mov	dptr,#(_buffer + 0x002e)
      005665 EF               [12] 2125 	mov	a,r7
      005666 F0               [24] 2126 	movx	@dptr,a
                                   2127 ;	trial_webserver.c:283: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      005667 90 09 D0         [24] 2128 	mov	dptr,#(_buffer + 0x0011)
      00566A E4               [12] 2129 	clr	a
      00566B F0               [24] 2130 	movx	@dptr,a
                                   2131 ;	trial_webserver.c:284: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      00566C 90 09 D1         [24] 2132 	mov	dptr,#(_buffer + 0x0012)
      00566F 74 28            [12] 2133 	mov	a,#0x28
      005671 F0               [24] 2134 	movx	@dptr,a
                                   2135 ;	trial_webserver.c:287: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
      005672 90 09 EF         [24] 2136 	mov	dptr,#(_buffer + 0x0030)
      005675 74 12            [12] 2137 	mov	a,#0x12
      005677 F0               [24] 2138 	movx	@dptr,a
                                   2139 ;	trial_webserver.c:288: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      005678 90 09 F0         [24] 2140 	mov	dptr,#(_buffer + 0x0031)
      00567B 74 FF            [12] 2141 	mov	a,#0xff
      00567D F0               [24] 2142 	movx	@dptr,a
                                   2143 ;	trial_webserver.c:289: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      00567E 90 09 F1         [24] 2144 	mov	dptr,#(_buffer + 0x0032)
      005681 F0               [24] 2145 	movx	@dptr,a
                                   2146 ;	trial_webserver.c:290: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      005682 90 09 EE         [24] 2147 	mov	dptr,#(_buffer + 0x002f)
      005685 74 50            [12] 2148 	mov	a,#0x50
      005687 F0               [24] 2149 	movx	@dptr,a
                                   2150 ;	trial_webserver.c:293: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      005688 90 09 C0         [24] 2151 	mov	dptr,#(_buffer + 0x0001)
      00568B 75 F0 00         [24] 2152 	mov	b, #0x00
      00568E 12 3F 25         [24] 2153 	lcall	_calculateIPChecksum
                                   2154 ;	trial_webserver.c:294: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      005691 90 09 C0         [24] 2155 	mov	dptr,#(_buffer + 0x0001)
      005694 75 F0 00         [24] 2156 	mov	b, #0x00
      005697 12 40 8F         [24] 2157 	lcall	_calculateTcpChecksum
                                   2158 ;	trial_webserver.c:298: transmit_tcp_packet(buffer, 1 + 54);
      00569A 90 09 B2         [24] 2159 	mov	dptr,#_transmit_tcp_packet_PARM_2
      00569D 74 37            [12] 2160 	mov	a,#0x37
      00569F F0               [24] 2161 	movx	@dptr,a
      0056A0 E4               [12] 2162 	clr	a
      0056A1 A3               [24] 2163 	inc	dptr
      0056A2 F0               [24] 2164 	movx	@dptr,a
      0056A3 90 09 BF         [24] 2165 	mov	dptr,#_buffer
      0056A6 F5 F0            [12] 2166 	mov	b,a
      0056A8 12 4C AC         [24] 2167 	lcall	_transmit_tcp_packet
                                   2168 ;	trial_webserver.c:301: connectionState = SYN_RECEIVED;
      0056AB 90 14 93         [24] 2169 	mov	dptr,#_connectionState
      0056AE 74 01            [12] 2170 	mov	a,#0x01
      0056B0 F0               [24] 2171 	movx	@dptr,a
                                   2172 ;	trial_webserver.c:302: }
      0056B1 22               [24] 2173 	ret
                                   2174 ;------------------------------------------------------------
                                   2175 ;Allocation info for local variables in function 'makeTcpAck'
                                   2176 ;------------------------------------------------------------
                                   2177 ;device_mac                Allocated with name '_makeTcpAck_device_mac_10000_134'
                                   2178 ;target_mac                Allocated with name '_makeTcpAck_target_mac_10000_134'
                                   2179 ;device_ip                 Allocated with name '_makeTcpAck_device_ip_10000_134'
                                   2180 ;target_ip                 Allocated with name '_makeTcpAck_target_ip_10000_134'
                                   2181 ;------------------------------------------------------------
                                   2182 ;	trial_webserver.c:305: void makeTcpAck() {
                                   2183 ;	-----------------------------------------
                                   2184 ;	 function makeTcpAck
                                   2185 ;	-----------------------------------------
      0056B2                       2186 _makeTcpAck:
                                   2187 ;	trial_webserver.c:306: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      0056B2 90 0F EB         [24] 2188 	mov	dptr,#_makeTcpAck_device_mac_10000_134
      0056B5 74 02            [12] 2189 	mov	a,#0x02
      0056B7 F0               [24] 2190 	movx	@dptr,a
      0056B8 90 0F EC         [24] 2191 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0001)
      0056BB 74 11            [12] 2192 	mov	a,#0x11
      0056BD F0               [24] 2193 	movx	@dptr,a
      0056BE 90 0F ED         [24] 2194 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0002)
      0056C1 23               [12] 2195 	rl	a
      0056C2 F0               [24] 2196 	movx	@dptr,a
      0056C3 90 0F EE         [24] 2197 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0003)
      0056C6 74 33            [12] 2198 	mov	a,#0x33
      0056C8 F0               [24] 2199 	movx	@dptr,a
      0056C9 90 0F EF         [24] 2200 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0004)
      0056CC 74 44            [12] 2201 	mov	a,#0x44
      0056CE F0               [24] 2202 	movx	@dptr,a
      0056CF 90 0F F0         [24] 2203 	mov	dptr,#(_makeTcpAck_device_mac_10000_134 + 0x0005)
      0056D2 74 55            [12] 2204 	mov	a,#0x55
      0056D4 F0               [24] 2205 	movx	@dptr,a
                                   2206 ;	trial_webserver.c:307: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      0056D5 90 0F F1         [24] 2207 	mov	dptr,#_makeTcpAck_target_mac_10000_134
      0056D8 74 F8            [12] 2208 	mov	a,#0xf8
      0056DA F0               [24] 2209 	movx	@dptr,a
      0056DB 90 0F F2         [24] 2210 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0001)
      0056DE 74 75            [12] 2211 	mov	a,#0x75
      0056E0 F0               [24] 2212 	movx	@dptr,a
      0056E1 90 0F F3         [24] 2213 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0002)
      0056E4 74 A4            [12] 2214 	mov	a,#0xa4
      0056E6 F0               [24] 2215 	movx	@dptr,a
      0056E7 90 0F F4         [24] 2216 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0003)
      0056EA 74 8C            [12] 2217 	mov	a,#0x8c
      0056EC F0               [24] 2218 	movx	@dptr,a
      0056ED 90 0F F5         [24] 2219 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0004)
      0056F0 74 41            [12] 2220 	mov	a,#0x41
      0056F2 F0               [24] 2221 	movx	@dptr,a
      0056F3 90 0F F6         [24] 2222 	mov	dptr,#(_makeTcpAck_target_mac_10000_134 + 0x0005)
      0056F6 74 31            [12] 2223 	mov	a,#0x31
      0056F8 F0               [24] 2224 	movx	@dptr,a
                                   2225 ;	trial_webserver.c:308: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0056F9 90 0F F7         [24] 2226 	mov	dptr,#_makeTcpAck_device_ip_10000_134
      0056FC 74 C0            [12] 2227 	mov	a,#0xc0
      0056FE F0               [24] 2228 	movx	@dptr,a
      0056FF 90 0F F8         [24] 2229 	mov	dptr,#(_makeTcpAck_device_ip_10000_134 + 0x0001)
      005702 74 A8            [12] 2230 	mov	a,#0xa8
      005704 F0               [24] 2231 	movx	@dptr,a
      005705 90 0F F9         [24] 2232 	mov	dptr,#(_makeTcpAck_device_ip_10000_134 + 0x0002)
      005708 74 01            [12] 2233 	mov	a,#0x01
      00570A F0               [24] 2234 	movx	@dptr,a
      00570B 90 0F FA         [24] 2235 	mov	dptr,#(_makeTcpAck_device_ip_10000_134 + 0x0003)
      00570E 74 64            [12] 2236 	mov	a,#0x64
      005710 F0               [24] 2237 	movx	@dptr,a
                                   2238 ;	trial_webserver.c:309: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      005711 90 0F FB         [24] 2239 	mov	dptr,#_makeTcpAck_target_ip_10000_134
      005714 74 C0            [12] 2240 	mov	a,#0xc0
      005716 F0               [24] 2241 	movx	@dptr,a
      005717 90 0F FC         [24] 2242 	mov	dptr,#(_makeTcpAck_target_ip_10000_134 + 0x0001)
      00571A 74 A8            [12] 2243 	mov	a,#0xa8
      00571C F0               [24] 2244 	movx	@dptr,a
      00571D 90 0F FD         [24] 2245 	mov	dptr,#(_makeTcpAck_target_ip_10000_134 + 0x0002)
      005720 74 01            [12] 2246 	mov	a,#0x01
      005722 F0               [24] 2247 	movx	@dptr,a
      005723 90 0F FE         [24] 2248 	mov	dptr,#(_makeTcpAck_target_ip_10000_134 + 0x0003)
      005726 F0               [24] 2249 	movx	@dptr,a
                                   2250 ;	trial_webserver.c:310: printf("tcpack\n\r");
      005727 74 5E            [12] 2251 	mov	a,#___str_4
      005729 C0 E0            [24] 2252 	push	acc
      00572B 74 7A            [12] 2253 	mov	a,#(___str_4 >> 8)
      00572D C0 E0            [24] 2254 	push	acc
      00572F 74 80            [12] 2255 	mov	a,#0x80
      005731 C0 E0            [24] 2256 	push	acc
      005733 12 64 F1         [24] 2257 	lcall	_printf
      005736 15 81            [12] 2258 	dec	sp
      005738 15 81            [12] 2259 	dec	sp
      00573A 15 81            [12] 2260 	dec	sp
                                   2261 ;	trial_webserver.c:311: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      00573C 90 10 42         [24] 2262 	mov	dptr,#_memmove_PARM_2
      00573F 74 BF            [12] 2263 	mov	a,#_buffer
      005741 F0               [24] 2264 	movx	@dptr,a
      005742 74 09            [12] 2265 	mov	a,#(_buffer >> 8)
      005744 A3               [24] 2266 	inc	dptr
      005745 F0               [24] 2267 	movx	@dptr,a
      005746 E4               [12] 2268 	clr	a
      005747 A3               [24] 2269 	inc	dptr
      005748 F0               [24] 2270 	movx	@dptr,a
      005749 90 10 45         [24] 2271 	mov	dptr,#_memmove_PARM_3
      00574C 74 36            [12] 2272 	mov	a,#0x36
      00574E F0               [24] 2273 	movx	@dptr,a
      00574F E4               [12] 2274 	clr	a
      005750 A3               [24] 2275 	inc	dptr
      005751 F0               [24] 2276 	movx	@dptr,a
      005752 90 09 C0         [24] 2277 	mov	dptr,#(_buffer + 0x0001)
      005755 F5 F0            [12] 2278 	mov	b,a
      005757 12 5F BB         [24] 2279 	lcall	_memmove
                                   2280 ;	trial_webserver.c:314: buffer[0] = 0x0E;
      00575A 90 09 BF         [24] 2281 	mov	dptr,#_buffer
      00575D 74 0E            [12] 2282 	mov	a,#0x0e
      00575F F0               [24] 2283 	movx	@dptr,a
                                   2284 ;	trial_webserver.c:315: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
      005760 90 09 EF         [24] 2285 	mov	dptr,#(_buffer + 0x0030)
      005763 74 10            [12] 2286 	mov	a,#0x10
      005765 F0               [24] 2287 	movx	@dptr,a
                                   2288 ;	trial_webserver.c:316: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
      005766 90 09 B2         [24] 2289 	mov	dptr,#_transmit_tcp_packet_PARM_2
      005769 74 37            [12] 2290 	mov	a,#0x37
      00576B F0               [24] 2291 	movx	@dptr,a
      00576C E4               [12] 2292 	clr	a
      00576D A3               [24] 2293 	inc	dptr
      00576E F0               [24] 2294 	movx	@dptr,a
      00576F 90 09 BF         [24] 2295 	mov	dptr,#_buffer
      005772 F5 F0            [12] 2296 	mov	b,a
                                   2297 ;	trial_webserver.c:317: }
      005774 02 4C AC         [24] 2298 	ljmp	_transmit_tcp_packet
                                   2299 ;------------------------------------------------------------
                                   2300 ;Allocation info for local variables in function 'makeTcpFinPshAck'
                                   2301 ;------------------------------------------------------------
                                   2302 ;device_mac                Allocated with name '_makeTcpFinPshAck_device_mac_10000_135'
                                   2303 ;target_mac                Allocated with name '_makeTcpFinPshAck_target_mac_10000_135'
                                   2304 ;device_ip                 Allocated with name '_makeTcpFinPshAck_device_ip_10000_135'
                                   2305 ;target_ip                 Allocated with name '_makeTcpFinPshAck_target_ip_10000_135'
                                   2306 ;srcPort                   Allocated with name '_makeTcpFinPshAck_srcPort_10001_136'
                                   2307 ;dstPort                   Allocated with name '_makeTcpFinPshAck_dstPort_10001_136'
                                   2308 ;serverSeqNum              Allocated with name '_makeTcpFinPshAck_serverSeqNum_10002_137'
                                   2309 ;ackNum                    Allocated with name '_makeTcpFinPshAck_ackNum_10002_137'
                                   2310 ;html_payload              Allocated with name '_makeTcpFinPshAck_html_payload_10003_138'
                                   2311 ;dataLength                Allocated with name '_makeTcpFinPshAck_dataLength_10003_138'
                                   2312 ;totalLength               Allocated with name '_makeTcpFinPshAck_totalLength_10003_138'
                                   2313 ;------------------------------------------------------------
                                   2314 ;	trial_webserver.c:319: void makeTcpFinPshAck() {
                                   2315 ;	-----------------------------------------
                                   2316 ;	 function makeTcpFinPshAck
                                   2317 ;	-----------------------------------------
      005777                       2318 _makeTcpFinPshAck:
                                   2319 ;	trial_webserver.c:320: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      005777 90 0F FF         [24] 2320 	mov	dptr,#_makeTcpFinPshAck_device_mac_10000_135
      00577A 74 02            [12] 2321 	mov	a,#0x02
      00577C F0               [24] 2322 	movx	@dptr,a
      00577D 90 10 00         [24] 2323 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0001)
      005780 74 11            [12] 2324 	mov	a,#0x11
      005782 F0               [24] 2325 	movx	@dptr,a
      005783 90 10 01         [24] 2326 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0002)
      005786 23               [12] 2327 	rl	a
      005787 F0               [24] 2328 	movx	@dptr,a
      005788 90 10 02         [24] 2329 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0003)
      00578B 74 33            [12] 2330 	mov	a,#0x33
      00578D F0               [24] 2331 	movx	@dptr,a
      00578E 90 10 03         [24] 2332 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0004)
      005791 74 44            [12] 2333 	mov	a,#0x44
      005793 F0               [24] 2334 	movx	@dptr,a
      005794 90 10 04         [24] 2335 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_135 + 0x0005)
      005797 74 55            [12] 2336 	mov	a,#0x55
      005799 F0               [24] 2337 	movx	@dptr,a
                                   2338 ;	trial_webserver.c:321: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      00579A 90 10 05         [24] 2339 	mov	dptr,#_makeTcpFinPshAck_target_mac_10000_135
      00579D 74 F8            [12] 2340 	mov	a,#0xf8
      00579F F0               [24] 2341 	movx	@dptr,a
      0057A0 90 10 06         [24] 2342 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0001)
      0057A3 74 75            [12] 2343 	mov	a,#0x75
      0057A5 F0               [24] 2344 	movx	@dptr,a
      0057A6 90 10 07         [24] 2345 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0002)
      0057A9 74 A4            [12] 2346 	mov	a,#0xa4
      0057AB F0               [24] 2347 	movx	@dptr,a
      0057AC 90 10 08         [24] 2348 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0003)
      0057AF 74 8C            [12] 2349 	mov	a,#0x8c
      0057B1 F0               [24] 2350 	movx	@dptr,a
      0057B2 90 10 09         [24] 2351 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0004)
      0057B5 74 41            [12] 2352 	mov	a,#0x41
      0057B7 F0               [24] 2353 	movx	@dptr,a
      0057B8 90 10 0A         [24] 2354 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_135 + 0x0005)
      0057BB 74 31            [12] 2355 	mov	a,#0x31
      0057BD F0               [24] 2356 	movx	@dptr,a
                                   2357 ;	trial_webserver.c:322: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0057BE 90 10 0B         [24] 2358 	mov	dptr,#_makeTcpFinPshAck_device_ip_10000_135
      0057C1 74 C0            [12] 2359 	mov	a,#0xc0
      0057C3 F0               [24] 2360 	movx	@dptr,a
      0057C4 90 10 0C         [24] 2361 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_135 + 0x0001)
      0057C7 74 A8            [12] 2362 	mov	a,#0xa8
      0057C9 F0               [24] 2363 	movx	@dptr,a
      0057CA 90 10 0D         [24] 2364 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_135 + 0x0002)
      0057CD 74 01            [12] 2365 	mov	a,#0x01
      0057CF F0               [24] 2366 	movx	@dptr,a
      0057D0 90 10 0E         [24] 2367 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_135 + 0x0003)
      0057D3 74 64            [12] 2368 	mov	a,#0x64
      0057D5 F0               [24] 2369 	movx	@dptr,a
                                   2370 ;	trial_webserver.c:323: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0057D6 90 10 0F         [24] 2371 	mov	dptr,#_makeTcpFinPshAck_target_ip_10000_135
      0057D9 74 C0            [12] 2372 	mov	a,#0xc0
      0057DB F0               [24] 2373 	movx	@dptr,a
      0057DC 90 10 10         [24] 2374 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_135 + 0x0001)
      0057DF 74 A8            [12] 2375 	mov	a,#0xa8
      0057E1 F0               [24] 2376 	movx	@dptr,a
      0057E2 90 10 11         [24] 2377 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_135 + 0x0002)
      0057E5 74 01            [12] 2378 	mov	a,#0x01
      0057E7 F0               [24] 2379 	movx	@dptr,a
      0057E8 90 10 12         [24] 2380 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_135 + 0x0003)
      0057EB F0               [24] 2381 	movx	@dptr,a
                                   2382 ;	trial_webserver.c:324: printf("makeTcpFinPshAck\n\r");
      0057EC 74 E2            [12] 2383 	mov	a,#___str_6
      0057EE C0 E0            [24] 2384 	push	acc
      0057F0 74 7D            [12] 2385 	mov	a,#(___str_6 >> 8)
      0057F2 C0 E0            [24] 2386 	push	acc
      0057F4 74 80            [12] 2387 	mov	a,#0x80
      0057F6 C0 E0            [24] 2388 	push	acc
      0057F8 12 64 F1         [24] 2389 	lcall	_printf
      0057FB 15 81            [12] 2390 	dec	sp
      0057FD 15 81            [12] 2391 	dec	sp
      0057FF 15 81            [12] 2392 	dec	sp
                                   2393 ;	trial_webserver.c:327: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      005801 90 10 42         [24] 2394 	mov	dptr,#_memmove_PARM_2
      005804 74 BF            [12] 2395 	mov	a,#_buffer
      005806 F0               [24] 2396 	movx	@dptr,a
      005807 74 09            [12] 2397 	mov	a,#(_buffer >> 8)
      005809 A3               [24] 2398 	inc	dptr
      00580A F0               [24] 2399 	movx	@dptr,a
      00580B E4               [12] 2400 	clr	a
      00580C A3               [24] 2401 	inc	dptr
      00580D F0               [24] 2402 	movx	@dptr,a
      00580E 90 10 45         [24] 2403 	mov	dptr,#_memmove_PARM_3
      005811 74 36            [12] 2404 	mov	a,#0x36
      005813 F0               [24] 2405 	movx	@dptr,a
      005814 E4               [12] 2406 	clr	a
      005815 A3               [24] 2407 	inc	dptr
      005816 F0               [24] 2408 	movx	@dptr,a
      005817 90 09 C0         [24] 2409 	mov	dptr,#(_buffer + 0x0001)
      00581A F5 F0            [12] 2410 	mov	b,a
      00581C 12 5F BB         [24] 2411 	lcall	_memmove
                                   2412 ;	trial_webserver.c:328: buffer[0] = 0x0E;
      00581F 90 09 BF         [24] 2413 	mov	dptr,#_buffer
      005822 74 0E            [12] 2414 	mov	a,#0x0e
      005824 F0               [24] 2415 	movx	@dptr,a
                                   2416 ;	trial_webserver.c:331: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      005825 90 10 36         [24] 2417 	mov	dptr,#___memcpy_PARM_2
      005828 74 C6            [12] 2418 	mov	a,#(_buffer + 0x0007)
      00582A F0               [24] 2419 	movx	@dptr,a
      00582B 74 09            [12] 2420 	mov	a,#((_buffer + 0x0007) >> 8)
      00582D A3               [24] 2421 	inc	dptr
      00582E F0               [24] 2422 	movx	@dptr,a
      00582F E4               [12] 2423 	clr	a
      005830 A3               [24] 2424 	inc	dptr
      005831 F0               [24] 2425 	movx	@dptr,a
      005832 90 10 39         [24] 2426 	mov	dptr,#___memcpy_PARM_3
      005835 74 06            [12] 2427 	mov	a,#0x06
      005837 F0               [24] 2428 	movx	@dptr,a
      005838 E4               [12] 2429 	clr	a
      005839 A3               [24] 2430 	inc	dptr
      00583A F0               [24] 2431 	movx	@dptr,a
      00583B 90 09 C0         [24] 2432 	mov	dptr,#(_buffer + 0x0001)
      00583E F5 F0            [12] 2433 	mov	b,a
      005840 12 5F 04         [24] 2434 	lcall	___memcpy
                                   2435 ;	trial_webserver.c:332: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      005843 90 10 36         [24] 2436 	mov	dptr,#___memcpy_PARM_2
      005846 74 FF            [12] 2437 	mov	a,#_makeTcpFinPshAck_device_mac_10000_135
      005848 F0               [24] 2438 	movx	@dptr,a
      005849 74 0F            [12] 2439 	mov	a,#(_makeTcpFinPshAck_device_mac_10000_135 >> 8)
      00584B A3               [24] 2440 	inc	dptr
      00584C F0               [24] 2441 	movx	@dptr,a
      00584D E4               [12] 2442 	clr	a
      00584E A3               [24] 2443 	inc	dptr
      00584F F0               [24] 2444 	movx	@dptr,a
      005850 90 10 39         [24] 2445 	mov	dptr,#___memcpy_PARM_3
      005853 74 06            [12] 2446 	mov	a,#0x06
      005855 F0               [24] 2447 	movx	@dptr,a
      005856 E4               [12] 2448 	clr	a
      005857 A3               [24] 2449 	inc	dptr
      005858 F0               [24] 2450 	movx	@dptr,a
      005859 90 09 C6         [24] 2451 	mov	dptr,#(_buffer + 0x0007)
      00585C F5 F0            [12] 2452 	mov	b,a
      00585E 12 5F 04         [24] 2453 	lcall	___memcpy
                                   2454 ;	trial_webserver.c:335: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      005861 90 10 36         [24] 2455 	mov	dptr,#___memcpy_PARM_2
      005864 74 DA            [12] 2456 	mov	a,#(_buffer + 0x001b)
      005866 F0               [24] 2457 	movx	@dptr,a
      005867 74 09            [12] 2458 	mov	a,#((_buffer + 0x001b) >> 8)
      005869 A3               [24] 2459 	inc	dptr
      00586A F0               [24] 2460 	movx	@dptr,a
      00586B E4               [12] 2461 	clr	a
      00586C A3               [24] 2462 	inc	dptr
      00586D F0               [24] 2463 	movx	@dptr,a
      00586E 90 10 39         [24] 2464 	mov	dptr,#___memcpy_PARM_3
      005871 74 04            [12] 2465 	mov	a,#0x04
      005873 F0               [24] 2466 	movx	@dptr,a
      005874 E4               [12] 2467 	clr	a
      005875 A3               [24] 2468 	inc	dptr
      005876 F0               [24] 2469 	movx	@dptr,a
      005877 90 09 DE         [24] 2470 	mov	dptr,#(_buffer + 0x001f)
      00587A F5 F0            [12] 2471 	mov	b,a
      00587C 12 5F 04         [24] 2472 	lcall	___memcpy
                                   2473 ;	trial_webserver.c:336: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      00587F 90 10 36         [24] 2474 	mov	dptr,#___memcpy_PARM_2
      005882 74 0B            [12] 2475 	mov	a,#_makeTcpFinPshAck_device_ip_10000_135
      005884 F0               [24] 2476 	movx	@dptr,a
      005885 74 10            [12] 2477 	mov	a,#(_makeTcpFinPshAck_device_ip_10000_135 >> 8)
      005887 A3               [24] 2478 	inc	dptr
      005888 F0               [24] 2479 	movx	@dptr,a
      005889 E4               [12] 2480 	clr	a
      00588A A3               [24] 2481 	inc	dptr
      00588B F0               [24] 2482 	movx	@dptr,a
      00588C 90 10 39         [24] 2483 	mov	dptr,#___memcpy_PARM_3
      00588F 74 04            [12] 2484 	mov	a,#0x04
      005891 F0               [24] 2485 	movx	@dptr,a
      005892 E4               [12] 2486 	clr	a
      005893 A3               [24] 2487 	inc	dptr
      005894 F0               [24] 2488 	movx	@dptr,a
      005895 90 09 DA         [24] 2489 	mov	dptr,#(_buffer + 0x001b)
      005898 F5 F0            [12] 2490 	mov	b,a
      00589A 12 5F 04         [24] 2491 	lcall	___memcpy
                                   2492 ;	trial_webserver.c:339: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00589D 90 09 E2         [24] 2493 	mov	dptr,#(_buffer + 0x0023)
      0058A0 E0               [24] 2494 	movx	a,@dptr
      0058A1 FE               [12] 2495 	mov	r6,a
      0058A2 7F 00            [12] 2496 	mov	r7,#0x00
      0058A4 90 09 E3         [24] 2497 	mov	dptr,#(_buffer + 0x0024)
      0058A7 E0               [24] 2498 	movx	a,@dptr
      0058A8 7C 00            [12] 2499 	mov	r4,#0x00
      0058AA 42 07            [12] 2500 	orl	ar7,a
      0058AC EC               [12] 2501 	mov	a,r4
      0058AD 42 06            [12] 2502 	orl	ar6,a
                                   2503 ;	trial_webserver.c:341: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      0058AF 90 09 E4         [24] 2504 	mov	dptr,#(_buffer + 0x0025)
      0058B2 E0               [24] 2505 	movx	a,@dptr
      0058B3 FC               [12] 2506 	mov	r4,a
      0058B4 7D 00            [12] 2507 	mov	r5,#0x00
      0058B6 90 09 E5         [24] 2508 	mov	dptr,#(_buffer + 0x0026)
      0058B9 E0               [24] 2509 	movx	a,@dptr
      0058BA 7A 00            [12] 2510 	mov	r2,#0x00
      0058BC 42 05            [12] 2511 	orl	ar5,a
      0058BE EA               [12] 2512 	mov	a,r2
      0058BF 42 04            [12] 2513 	orl	ar4,a
                                   2514 ;	trial_webserver.c:343: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0058C1 8C 03            [24] 2515 	mov	ar3,r4
      0058C3 90 09 E2         [24] 2516 	mov	dptr,#(_buffer + 0x0023)
      0058C6 EB               [12] 2517 	mov	a,r3
      0058C7 F0               [24] 2518 	movx	@dptr,a
                                   2519 ;	trial_webserver.c:344: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0058C8 90 09 E3         [24] 2520 	mov	dptr,#(_buffer + 0x0024)
      0058CB ED               [12] 2521 	mov	a,r5
      0058CC F0               [24] 2522 	movx	@dptr,a
                                   2523 ;	trial_webserver.c:345: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0058CD 8E 05            [24] 2524 	mov	ar5,r6
      0058CF 90 09 E4         [24] 2525 	mov	dptr,#(_buffer + 0x0025)
      0058D2 ED               [12] 2526 	mov	a,r5
      0058D3 F0               [24] 2527 	movx	@dptr,a
                                   2528 ;	trial_webserver.c:346: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0058D4 90 09 E5         [24] 2529 	mov	dptr,#(_buffer + 0x0026)
      0058D7 EF               [12] 2530 	mov	a,r7
      0058D8 F0               [24] 2531 	movx	@dptr,a
                                   2532 ;	trial_webserver.c:349: uint32_t serverSeqNum = prevSeq;
      0058D9 90 09 B7         [24] 2533 	mov	dptr,#_prevSeq
      0058DC E0               [24] 2534 	movx	a,@dptr
      0058DD FC               [12] 2535 	mov	r4,a
      0058DE A3               [24] 2536 	inc	dptr
      0058DF E0               [24] 2537 	movx	a,@dptr
      0058E0 FD               [12] 2538 	mov	r5,a
      0058E1 A3               [24] 2539 	inc	dptr
      0058E2 E0               [24] 2540 	movx	a,@dptr
      0058E3 FE               [12] 2541 	mov	r6,a
      0058E4 A3               [24] 2542 	inc	dptr
      0058E5 E0               [24] 2543 	movx	a,@dptr
      0058E6 FF               [12] 2544 	mov	r7,a
      0058E7 90 10 13         [24] 2545 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_137
      0058EA EC               [12] 2546 	mov	a,r4
      0058EB F0               [24] 2547 	movx	@dptr,a
      0058EC ED               [12] 2548 	mov	a,r5
      0058ED A3               [24] 2549 	inc	dptr
      0058EE F0               [24] 2550 	movx	@dptr,a
      0058EF EE               [12] 2551 	mov	a,r6
      0058F0 A3               [24] 2552 	inc	dptr
      0058F1 F0               [24] 2553 	movx	@dptr,a
      0058F2 EF               [12] 2554 	mov	a,r7
      0058F3 A3               [24] 2555 	inc	dptr
      0058F4 F0               [24] 2556 	movx	@dptr,a
                                   2557 ;	trial_webserver.c:350: uint32_t ackNum = prevAck;
      0058F5 90 09 BB         [24] 2558 	mov	dptr,#_prevAck
      0058F8 E0               [24] 2559 	movx	a,@dptr
      0058F9 F8               [12] 2560 	mov	r0,a
      0058FA A3               [24] 2561 	inc	dptr
      0058FB E0               [24] 2562 	movx	a,@dptr
      0058FC F9               [12] 2563 	mov	r1,a
      0058FD A3               [24] 2564 	inc	dptr
      0058FE E0               [24] 2565 	movx	a,@dptr
      0058FF FA               [12] 2566 	mov	r2,a
      005900 A3               [24] 2567 	inc	dptr
      005901 E0               [24] 2568 	movx	a,@dptr
      005902 FB               [12] 2569 	mov	r3,a
      005903 90 10 17         [24] 2570 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_137
      005906 E8               [12] 2571 	mov	a,r0
      005907 F0               [24] 2572 	movx	@dptr,a
      005908 E9               [12] 2573 	mov	a,r1
      005909 A3               [24] 2574 	inc	dptr
      00590A F0               [24] 2575 	movx	@dptr,a
      00590B EA               [12] 2576 	mov	a,r2
      00590C A3               [24] 2577 	inc	dptr
      00590D F0               [24] 2578 	movx	@dptr,a
      00590E EB               [12] 2579 	mov	a,r3
      00590F A3               [24] 2580 	inc	dptr
      005910 F0               [24] 2581 	movx	@dptr,a
                                   2582 ;	trial_webserver.c:352: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      005911 8F 04            [24] 2583 	mov	ar4,r7
      005913 90 09 E6         [24] 2584 	mov	dptr,#(_buffer + 0x0027)
      005916 EC               [12] 2585 	mov	a,r4
      005917 F0               [24] 2586 	movx	@dptr,a
                                   2587 ;	trial_webserver.c:353: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      005918 90 10 13         [24] 2588 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_137
      00591B E0               [24] 2589 	movx	a,@dptr
      00591C FC               [12] 2590 	mov	r4,a
      00591D A3               [24] 2591 	inc	dptr
      00591E E0               [24] 2592 	movx	a,@dptr
      00591F FD               [12] 2593 	mov	r5,a
      005920 A3               [24] 2594 	inc	dptr
      005921 E0               [24] 2595 	movx	a,@dptr
      005922 FE               [12] 2596 	mov	r6,a
      005923 A3               [24] 2597 	inc	dptr
      005924 E0               [24] 2598 	movx	a,@dptr
      005925 8E 03            [24] 2599 	mov	ar3,r6
      005927 90 09 E7         [24] 2600 	mov	dptr,#(_buffer + 0x0028)
      00592A EB               [12] 2601 	mov	a,r3
      00592B F0               [24] 2602 	movx	@dptr,a
                                   2603 ;	trial_webserver.c:354: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      00592C 8D 03            [24] 2604 	mov	ar3,r5
      00592E 90 09 E8         [24] 2605 	mov	dptr,#(_buffer + 0x0029)
      005931 EB               [12] 2606 	mov	a,r3
      005932 F0               [24] 2607 	movx	@dptr,a
                                   2608 ;	trial_webserver.c:355: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      005933 90 09 E9         [24] 2609 	mov	dptr,#(_buffer + 0x002a)
      005936 EC               [12] 2610 	mov	a,r4
      005937 F0               [24] 2611 	movx	@dptr,a
                                   2612 ;	trial_webserver.c:356: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      005938 90 10 17         [24] 2613 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_137
      00593B E0               [24] 2614 	movx	a,@dptr
      00593C FC               [12] 2615 	mov	r4,a
      00593D A3               [24] 2616 	inc	dptr
      00593E E0               [24] 2617 	movx	a,@dptr
      00593F FD               [12] 2618 	mov	r5,a
      005940 A3               [24] 2619 	inc	dptr
      005941 E0               [24] 2620 	movx	a,@dptr
      005942 FE               [12] 2621 	mov	r6,a
      005943 A3               [24] 2622 	inc	dptr
      005944 E0               [24] 2623 	movx	a,@dptr
      005945 90 09 EA         [24] 2624 	mov	dptr,#(_buffer + 0x002b)
      005948 F0               [24] 2625 	movx	@dptr,a
                                   2626 ;	trial_webserver.c:357: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      005949 8E 03            [24] 2627 	mov	ar3,r6
      00594B 90 09 EB         [24] 2628 	mov	dptr,#(_buffer + 0x002c)
      00594E EB               [12] 2629 	mov	a,r3
      00594F F0               [24] 2630 	movx	@dptr,a
                                   2631 ;	trial_webserver.c:358: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      005950 8D 03            [24] 2632 	mov	ar3,r5
      005952 90 09 EC         [24] 2633 	mov	dptr,#(_buffer + 0x002d)
      005955 EB               [12] 2634 	mov	a,r3
      005956 F0               [24] 2635 	movx	@dptr,a
                                   2636 ;	trial_webserver.c:359: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      005957 90 09 ED         [24] 2637 	mov	dptr,#(_buffer + 0x002e)
      00595A EC               [12] 2638 	mov	a,r4
      00595B F0               [24] 2639 	movx	@dptr,a
                                   2640 ;	trial_webserver.c:362: const char *html_payload =
                                   2641 ;	trial_webserver.c:385: uint16_t dataLength = strlen(html_payload);
      00595C 90 7A 67         [24] 2642 	mov	dptr,#___str_5
      00595F 75 F0 80         [24] 2643 	mov	b, #0x80
      005962 12 6E FB         [24] 2644 	lcall	_strlen
      005965 AE 82            [24] 2645 	mov	r6, dpl
      005967 AF 83            [24] 2646 	mov	r7, dph
                                   2647 ;	trial_webserver.c:388: uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
      005969 74 28            [12] 2648 	mov	a,#0x28
      00596B 2E               [12] 2649 	add	a, r6
      00596C FC               [12] 2650 	mov	r4,a
      00596D E4               [12] 2651 	clr	a
      00596E 3F               [12] 2652 	addc	a, r7
                                   2653 ;	trial_webserver.c:389: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      00596F 90 09 D0         [24] 2654 	mov	dptr,#(_buffer + 0x0011)
      005972 F0               [24] 2655 	movx	@dptr,a
                                   2656 ;	trial_webserver.c:390: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005973 90 09 D1         [24] 2657 	mov	dptr,#(_buffer + 0x0012)
      005976 EC               [12] 2658 	mov	a,r4
      005977 F0               [24] 2659 	movx	@dptr,a
                                   2660 ;	trial_webserver.c:393: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
      005978 90 09 EF         [24] 2661 	mov	dptr,#(_buffer + 0x0030)
      00597B 74 19            [12] 2662 	mov	a,#0x19
      00597D F0               [24] 2663 	movx	@dptr,a
                                   2664 ;	trial_webserver.c:394: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
      00597E 90 09 F0         [24] 2665 	mov	dptr,#(_buffer + 0x0031)
      005981 74 FF            [12] 2666 	mov	a,#0xff
      005983 F0               [24] 2667 	movx	@dptr,a
                                   2668 ;	trial_webserver.c:395: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      005984 90 09 F1         [24] 2669 	mov	dptr,#(_buffer + 0x0032)
      005987 F0               [24] 2670 	movx	@dptr,a
                                   2671 ;	trial_webserver.c:396: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      005988 90 09 EE         [24] 2672 	mov	dptr,#(_buffer + 0x002f)
      00598B 74 50            [12] 2673 	mov	a,#0x50
      00598D F0               [24] 2674 	movx	@dptr,a
                                   2675 ;	trial_webserver.c:399: memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);
      00598E 90 10 36         [24] 2676 	mov	dptr,#___memcpy_PARM_2
      005991 74 67            [12] 2677 	mov	a,#___str_5
      005993 F0               [24] 2678 	movx	@dptr,a
      005994 74 7A            [12] 2679 	mov	a,#(___str_5 >> 8)
      005996 A3               [24] 2680 	inc	dptr
      005997 F0               [24] 2681 	movx	@dptr,a
      005998 74 80            [12] 2682 	mov	a,#0x80
      00599A A3               [24] 2683 	inc	dptr
      00599B F0               [24] 2684 	movx	@dptr,a
      00599C 90 10 39         [24] 2685 	mov	dptr,#___memcpy_PARM_3
      00599F EE               [12] 2686 	mov	a,r6
      0059A0 F0               [24] 2687 	movx	@dptr,a
      0059A1 EF               [12] 2688 	mov	a,r7
      0059A2 A3               [24] 2689 	inc	dptr
      0059A3 F0               [24] 2690 	movx	@dptr,a
      0059A4 90 09 F6         [24] 2691 	mov	dptr,#(_buffer + 0x0037)
      0059A7 75 F0 00         [24] 2692 	mov	b, #0x00
      0059AA C0 07            [24] 2693 	push	ar7
      0059AC C0 06            [24] 2694 	push	ar6
      0059AE 12 5F 04         [24] 2695 	lcall	___memcpy
                                   2696 ;	trial_webserver.c:402: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0059B1 90 09 C0         [24] 2697 	mov	dptr,#(_buffer + 0x0001)
      0059B4 75 F0 00         [24] 2698 	mov	b, #0x00
      0059B7 12 3F 25         [24] 2699 	lcall	_calculateIPChecksum
                                   2700 ;	trial_webserver.c:403: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      0059BA 90 09 C0         [24] 2701 	mov	dptr,#(_buffer + 0x0001)
      0059BD 75 F0 00         [24] 2702 	mov	b, #0x00
      0059C0 12 40 8F         [24] 2703 	lcall	_calculateTcpChecksum
      0059C3 D0 06            [24] 2704 	pop	ar6
      0059C5 D0 07            [24] 2705 	pop	ar7
                                   2706 ;	trial_webserver.c:406: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);
      0059C7 74 37            [12] 2707 	mov	a,#0x37
      0059C9 2E               [12] 2708 	add	a, r6
      0059CA FE               [12] 2709 	mov	r6,a
      0059CB E4               [12] 2710 	clr	a
      0059CC 3F               [12] 2711 	addc	a, r7
      0059CD FF               [12] 2712 	mov	r7,a
      0059CE 90 09 B2         [24] 2713 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0059D1 EE               [12] 2714 	mov	a,r6
      0059D2 F0               [24] 2715 	movx	@dptr,a
      0059D3 EF               [12] 2716 	mov	a,r7
      0059D4 A3               [24] 2717 	inc	dptr
      0059D5 F0               [24] 2718 	movx	@dptr,a
      0059D6 90 09 BF         [24] 2719 	mov	dptr,#_buffer
      0059D9 75 F0 00         [24] 2720 	mov	b, #0x00
      0059DC 12 4C AC         [24] 2721 	lcall	_transmit_tcp_packet
                                   2722 ;	trial_webserver.c:409: connectionState = FIN_WAIT;
      0059DF 90 14 93         [24] 2723 	mov	dptr,#_connectionState
      0059E2 74 03            [12] 2724 	mov	a,#0x03
      0059E4 F0               [24] 2725 	movx	@dptr,a
                                   2726 ;	trial_webserver.c:410: }
      0059E5 22               [24] 2727 	ret
                                   2728 ;------------------------------------------------------------
                                   2729 ;Allocation info for local variables in function 'packetReceive'
                                   2730 ;------------------------------------------------------------
                                   2731 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_139'
                                   2732 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_139'
                                   2733 ;len                       Allocated with name '_packetReceive_len_10000_139'
                                   2734 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_141'
                                   2735 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_143'
                                   2736 ;header                    Allocated with name '_packetReceive_header_20002_145'
                                   2737 ;start                     Allocated with name '_packetReceive_start_20003_146'
                                   2738 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_147'
                                   2739 ;------------------------------------------------------------
                                   2740 ;	trial_webserver.c:415: uint16_t packetReceive()
                                   2741 ;	-----------------------------------------
                                   2742 ;	 function packetReceive
                                   2743 ;	-----------------------------------------
      0059E6                       2744 _packetReceive:
                                   2745 ;	trial_webserver.c:419: uint16_t len = 0;
      0059E6 90 10 1E         [24] 2746 	mov	dptr,#_packetReceive_len_10000_139
      0059E9 E4               [12] 2747 	clr	a
      0059EA F0               [24] 2748 	movx	@dptr,a
      0059EB A3               [24] 2749 	inc	dptr
      0059EC F0               [24] 2750 	movx	@dptr,a
                                   2751 ;	trial_webserver.c:422: if (unreleasedPacket) {
      0059ED 90 10 1D         [24] 2752 	mov	dptr,#_packetReceive_unreleasedPacket_10000_139
      0059F0 E0               [24] 2753 	movx	a,@dptr
      0059F1 60 70            [24] 2754 	jz	00105$
                                   2755 ;	trial_webserver.c:423: if (gNextPacketPtr == 0) {
      0059F3 90 10 1B         [24] 2756 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      0059F6 E0               [24] 2757 	movx	a,@dptr
      0059F7 FE               [12] 2758 	mov	r6,a
      0059F8 A3               [24] 2759 	inc	dptr
      0059F9 E0               [24] 2760 	movx	a,@dptr
      0059FA 90 10 1B         [24] 2761 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      0059FD E0               [24] 2762 	movx	a,@dptr
      0059FE F5 F0            [12] 2763 	mov	b,a
      005A00 A3               [24] 2764 	inc	dptr
      005A01 E0               [24] 2765 	movx	a,@dptr
      005A02 45 F0            [12] 2766 	orl	a,b
      005A04 70 26            [24] 2767 	jnz	00102$
                                   2768 ;	trial_webserver.c:425: spi_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
      005A06 90 03 84         [24] 2769 	mov	dptr,#_spi_control_write_PARM_2
      005A09 74 0C            [12] 2770 	mov	a,#0x0c
      005A0B F0               [24] 2771 	movx	@dptr,a
      005A0C 90 03 85         [24] 2772 	mov	dptr,#_spi_control_write_PARM_3
      005A0F 74 FF            [12] 2773 	mov	a,#0xff
      005A11 F0               [24] 2774 	movx	@dptr,a
      005A12 75 82 00         [24] 2775 	mov	dpl, #0x00
      005A15 12 39 7A         [24] 2776 	lcall	_spi_control_write
                                   2777 ;	trial_webserver.c:426: spi_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
      005A18 90 03 84         [24] 2778 	mov	dptr,#_spi_control_write_PARM_2
      005A1B 74 0D            [12] 2779 	mov	a,#0x0d
      005A1D F0               [24] 2780 	movx	@dptr,a
      005A1E 90 03 85         [24] 2781 	mov	dptr,#_spi_control_write_PARM_3
      005A21 74 1B            [12] 2782 	mov	a,#0x1b
      005A23 F0               [24] 2783 	movx	@dptr,a
      005A24 75 82 00         [24] 2784 	mov	dpl, #0x00
      005A27 12 39 7A         [24] 2785 	lcall	_spi_control_write
      005A2A 80 32            [24] 2786 	sjmp	00103$
      005A2C                       2787 00102$:
                                   2788 ;	trial_webserver.c:428: spi_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
      005A2C 1E               [12] 2789 	dec	r6
      005A2D 90 03 84         [24] 2790 	mov	dptr,#_spi_control_write_PARM_2
      005A30 74 0C            [12] 2791 	mov	a,#0x0c
      005A32 F0               [24] 2792 	movx	@dptr,a
      005A33 90 03 85         [24] 2793 	mov	dptr,#_spi_control_write_PARM_3
      005A36 EE               [12] 2794 	mov	a,r6
      005A37 F0               [24] 2795 	movx	@dptr,a
      005A38 75 82 00         [24] 2796 	mov	dpl, #0x00
      005A3B 12 39 7A         [24] 2797 	lcall	_spi_control_write
                                   2798 ;	trial_webserver.c:430: (uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
      005A3E 90 10 1B         [24] 2799 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005A41 E0               [24] 2800 	movx	a,@dptr
      005A42 FE               [12] 2801 	mov	r6,a
      005A43 A3               [24] 2802 	inc	dptr
      005A44 E0               [24] 2803 	movx	a,@dptr
      005A45 FF               [12] 2804 	mov	r7,a
      005A46 1E               [12] 2805 	dec	r6
      005A47 BE FF 01         [24] 2806 	cjne	r6,#0xff,00147$
      005A4A 1F               [12] 2807 	dec	r7
      005A4B                       2808 00147$:
      005A4B 8F 06            [24] 2809 	mov	ar6,r7
      005A4D 90 03 84         [24] 2810 	mov	dptr,#_spi_control_write_PARM_2
      005A50 74 0D            [12] 2811 	mov	a,#0x0d
      005A52 F0               [24] 2812 	movx	@dptr,a
      005A53 90 03 85         [24] 2813 	mov	dptr,#_spi_control_write_PARM_3
      005A56 EE               [12] 2814 	mov	a,r6
      005A57 F0               [24] 2815 	movx	@dptr,a
      005A58 75 82 00         [24] 2816 	mov	dpl, #0x00
      005A5B 12 39 7A         [24] 2817 	lcall	_spi_control_write
      005A5E                       2818 00103$:
                                   2819 ;	trial_webserver.c:432: unreleasedPacket = false;
      005A5E 90 10 1D         [24] 2820 	mov	dptr,#_packetReceive_unreleasedPacket_10000_139
      005A61 E4               [12] 2821 	clr	a
      005A62 F0               [24] 2822 	movx	@dptr,a
      005A63                       2823 00105$:
                                   2824 ;	trial_webserver.c:435: uint8_t EPKTCNT = eth_spi_read(0x19, 1);
      005A63 90 03 88         [24] 2825 	mov	dptr,#_eth_spi_read_PARM_2
      005A66 74 01            [12] 2826 	mov	a,#0x01
      005A68 F0               [24] 2827 	movx	@dptr,a
      005A69 75 82 19         [24] 2828 	mov	dpl, #0x19
      005A6C 12 39 D0         [24] 2829 	lcall	_eth_spi_read
      005A6F E5 82            [12] 2830 	mov	a, dpl
                                   2831 ;	trial_webserver.c:436: if (EPKTCNT > 0) {
      005A71 70 03            [24] 2832 	jnz	00148$
      005A73 02 5B 94         [24] 2833 	ljmp	00112$
      005A76                       2834 00148$:
                                   2835 ;	trial_webserver.c:437: spi_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
      005A76 90 10 1B         [24] 2836 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005A79 E0               [24] 2837 	movx	a,@dptr
      005A7A FE               [12] 2838 	mov	r6,a
      005A7B A3               [24] 2839 	inc	dptr
      005A7C E0               [24] 2840 	movx	a,@dptr
      005A7D 90 03 84         [24] 2841 	mov	dptr,#_spi_control_write_PARM_2
      005A80 E4               [12] 2842 	clr	a
      005A81 F0               [24] 2843 	movx	@dptr,a
      005A82 90 03 85         [24] 2844 	mov	dptr,#_spi_control_write_PARM_3
      005A85 EE               [12] 2845 	mov	a,r6
      005A86 F0               [24] 2846 	movx	@dptr,a
      005A87 75 82 00         [24] 2847 	mov	dpl, #0x00
      005A8A 12 39 7A         [24] 2848 	lcall	_spi_control_write
                                   2849 ;	trial_webserver.c:438: spi_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte
      005A8D 90 10 1B         [24] 2850 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005A90 E0               [24] 2851 	movx	a,@dptr
      005A91 A3               [24] 2852 	inc	dptr
      005A92 E0               [24] 2853 	movx	a,@dptr
      005A93 FE               [12] 2854 	mov	r6,a
      005A94 90 03 84         [24] 2855 	mov	dptr,#_spi_control_write_PARM_2
      005A97 74 01            [12] 2856 	mov	a,#0x01
      005A99 F0               [24] 2857 	movx	@dptr,a
      005A9A 90 03 85         [24] 2858 	mov	dptr,#_spi_control_write_PARM_3
      005A9D EE               [12] 2859 	mov	a,r6
      005A9E F0               [24] 2860 	movx	@dptr,a
      005A9F 75 82 00         [24] 2861 	mov	dpl, #0x00
      005AA2 12 39 7A         [24] 2862 	lcall	_spi_control_write
                                   2863 ;	trial_webserver.c:447: spi_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
      005AA5 90 10 1B         [24] 2864 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005AA8 E0               [24] 2865 	movx	a,@dptr
      005AA9 FE               [12] 2866 	mov	r6,a
      005AAA A3               [24] 2867 	inc	dptr
      005AAB E0               [24] 2868 	movx	a,@dptr
      005AAC FF               [12] 2869 	mov	r7,a
                                   2870 ;	trial_webserver.c:448: (uint8_t*) &header);
      005AAD 90 03 95         [24] 2871 	mov	dptr,#_spi_buffer_read_PARM_2
      005AB0 EE               [12] 2872 	mov	a,r6
      005AB1 F0               [24] 2873 	movx	@dptr,a
      005AB2 EF               [12] 2874 	mov	a,r7
      005AB3 A3               [24] 2875 	inc	dptr
      005AB4 F0               [24] 2876 	movx	@dptr,a
      005AB5 90 03 97         [24] 2877 	mov	dptr,#_spi_buffer_read_PARM_3
      005AB8 74 20            [12] 2878 	mov	a,#_packetReceive_header_20002_145
      005ABA F0               [24] 2879 	movx	@dptr,a
      005ABB 74 10            [12] 2880 	mov	a,#(_packetReceive_header_20002_145 >> 8)
      005ABD A3               [24] 2881 	inc	dptr
      005ABE F0               [24] 2882 	movx	@dptr,a
      005ABF E4               [12] 2883 	clr	a
      005AC0 A3               [24] 2884 	inc	dptr
      005AC1 F0               [24] 2885 	movx	@dptr,a
      005AC2 90 00 06         [24] 2886 	mov	dptr,#0x0006
      005AC5 12 3C 95         [24] 2887 	lcall	_spi_buffer_read
                                   2888 ;	trial_webserver.c:450: uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
      005AC8 90 10 1B         [24] 2889 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005ACB E0               [24] 2890 	movx	a,@dptr
      005ACC FE               [12] 2891 	mov	r6,a
      005ACD A3               [24] 2892 	inc	dptr
      005ACE E0               [24] 2893 	movx	a,@dptr
      005ACF FF               [12] 2894 	mov	r7,a
      005AD0 74 06            [12] 2895 	mov	a,#0x06
      005AD2 2E               [12] 2896 	add	a, r6
      005AD3 FE               [12] 2897 	mov	r6,a
      005AD4 E4               [12] 2898 	clr	a
      005AD5 3F               [12] 2899 	addc	a, r7
      005AD6 FF               [12] 2900 	mov	r7,a
      005AD7 90 10 26         [24] 2901 	mov	dptr,#_packetReceive_start_20003_146
      005ADA EE               [12] 2902 	mov	a,r6
      005ADB F0               [24] 2903 	movx	@dptr,a
      005ADC EF               [12] 2904 	mov	a,r7
      005ADD A3               [24] 2905 	inc	dptr
      005ADE F0               [24] 2906 	movx	@dptr,a
                                   2907 ;	trial_webserver.c:451: gNextPacketPtr = header.nextPacket;
      005ADF 90 10 20         [24] 2908 	mov	dptr,#_packetReceive_header_20002_145
      005AE2 E0               [24] 2909 	movx	a,@dptr
      005AE3 FE               [12] 2910 	mov	r6,a
      005AE4 A3               [24] 2911 	inc	dptr
      005AE5 E0               [24] 2912 	movx	a,@dptr
      005AE6 FF               [12] 2913 	mov	r7,a
      005AE7 90 10 1B         [24] 2914 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_139
      005AEA EE               [12] 2915 	mov	a,r6
      005AEB F0               [24] 2916 	movx	@dptr,a
      005AEC EF               [12] 2917 	mov	a,r7
      005AED A3               [24] 2918 	inc	dptr
      005AEE F0               [24] 2919 	movx	@dptr,a
                                   2920 ;	trial_webserver.c:453: len = header.byteCount - 4; // Exclude CRC
      005AEF 90 10 22         [24] 2921 	mov	dptr,#(_packetReceive_header_20002_145 + 0x0002)
      005AF2 E0               [24] 2922 	movx	a,@dptr
      005AF3 FE               [12] 2923 	mov	r6,a
      005AF4 A3               [24] 2924 	inc	dptr
      005AF5 E0               [24] 2925 	movx	a,@dptr
      005AF6 FF               [12] 2926 	mov	r7,a
      005AF7 EE               [12] 2927 	mov	a,r6
      005AF8 24 FC            [12] 2928 	add	a,#0xfc
      005AFA FE               [12] 2929 	mov	r6,a
      005AFB EF               [12] 2930 	mov	a,r7
      005AFC 34 FF            [12] 2931 	addc	a,#0xff
      005AFE FF               [12] 2932 	mov	r7,a
      005AFF 90 10 1E         [24] 2933 	mov	dptr,#_packetReceive_len_10000_139
      005B02 EE               [12] 2934 	mov	a,r6
      005B03 F0               [24] 2935 	movx	@dptr,a
      005B04 EF               [12] 2936 	mov	a,r7
      005B05 A3               [24] 2937 	inc	dptr
      005B06 F0               [24] 2938 	movx	@dptr,a
                                   2939 ;	trial_webserver.c:454: if (len > BUFFER_SIZE - 1)
      005B07 C3               [12] 2940 	clr	c
      005B08 74 DB            [12] 2941 	mov	a,#0xdb
      005B0A 9E               [12] 2942 	subb	a,r6
      005B0B 74 05            [12] 2943 	mov	a,#0x05
      005B0D 9F               [12] 2944 	subb	a,r7
      005B0E 50 0A            [24] 2945 	jnc	00107$
                                   2946 ;	trial_webserver.c:455: len = BUFFER_SIZE - 1;
      005B10 90 10 1E         [24] 2947 	mov	dptr,#_packetReceive_len_10000_139
      005B13 74 DB            [12] 2948 	mov	a,#0xdb
      005B15 F0               [24] 2949 	movx	@dptr,a
      005B16 74 05            [12] 2950 	mov	a,#0x05
      005B18 A3               [24] 2951 	inc	dptr
      005B19 F0               [24] 2952 	movx	@dptr,a
      005B1A                       2953 00107$:
                                   2954 ;	trial_webserver.c:457: if ((header.status & 0x80) == 0)
      005B1A 90 10 24         [24] 2955 	mov	dptr,#(_packetReceive_header_20002_145 + 0x0004)
      005B1D E0               [24] 2956 	movx	a,@dptr
      005B1E FE               [12] 2957 	mov	r6,a
      005B1F A3               [24] 2958 	inc	dptr
      005B20 E0               [24] 2959 	movx	a,@dptr
      005B21 EE               [12] 2960 	mov	a,r6
      005B22 20 E7 09         [24] 2961 	jb	acc.7,00109$
                                   2962 ;	trial_webserver.c:458: len = 0; // Invalid packet
      005B25 90 10 1E         [24] 2963 	mov	dptr,#_packetReceive_len_10000_139
      005B28 E4               [12] 2964 	clr	a
      005B29 F0               [24] 2965 	movx	@dptr,a
      005B2A A3               [24] 2966 	inc	dptr
      005B2B F0               [24] 2967 	movx	@dptr,a
      005B2C 80 2C            [24] 2968 	sjmp	00110$
      005B2E                       2969 00109$:
                                   2970 ;	trial_webserver.c:460: spi_buffer_read(len, start, buffer);
      005B2E 90 10 1E         [24] 2971 	mov	dptr,#_packetReceive_len_10000_139
      005B31 E0               [24] 2972 	movx	a,@dptr
      005B32 FE               [12] 2973 	mov	r6,a
      005B33 A3               [24] 2974 	inc	dptr
      005B34 E0               [24] 2975 	movx	a,@dptr
      005B35 FF               [12] 2976 	mov	r7,a
      005B36 90 10 26         [24] 2977 	mov	dptr,#_packetReceive_start_20003_146
      005B39 E0               [24] 2978 	movx	a,@dptr
      005B3A FC               [12] 2979 	mov	r4,a
      005B3B A3               [24] 2980 	inc	dptr
      005B3C E0               [24] 2981 	movx	a,@dptr
      005B3D FD               [12] 2982 	mov	r5,a
      005B3E 90 03 95         [24] 2983 	mov	dptr,#_spi_buffer_read_PARM_2
      005B41 EC               [12] 2984 	mov	a,r4
      005B42 F0               [24] 2985 	movx	@dptr,a
      005B43 ED               [12] 2986 	mov	a,r5
      005B44 A3               [24] 2987 	inc	dptr
      005B45 F0               [24] 2988 	movx	@dptr,a
      005B46 90 03 97         [24] 2989 	mov	dptr,#_spi_buffer_read_PARM_3
      005B49 74 BF            [12] 2990 	mov	a,#_buffer
      005B4B F0               [24] 2991 	movx	@dptr,a
      005B4C 74 09            [12] 2992 	mov	a,#(_buffer >> 8)
      005B4E A3               [24] 2993 	inc	dptr
      005B4F F0               [24] 2994 	movx	@dptr,a
      005B50 E4               [12] 2995 	clr	a
      005B51 A3               [24] 2996 	inc	dptr
      005B52 F0               [24] 2997 	movx	@dptr,a
      005B53 8E 82            [24] 2998 	mov	dpl, r6
      005B55 8F 83            [24] 2999 	mov	dph, r7
      005B57 12 3C 95         [24] 3000 	lcall	_spi_buffer_read
      005B5A                       3001 00110$:
                                   3002 ;	trial_webserver.c:462: buffer[len] = 0; // Null-terminate
      005B5A 90 10 1E         [24] 3003 	mov	dptr,#_packetReceive_len_10000_139
      005B5D E0               [24] 3004 	movx	a,@dptr
      005B5E FE               [12] 3005 	mov	r6,a
      005B5F A3               [24] 3006 	inc	dptr
      005B60 E0               [24] 3007 	movx	a,@dptr
      005B61 FF               [12] 3008 	mov	r7,a
      005B62 EE               [12] 3009 	mov	a,r6
      005B63 24 BF            [12] 3010 	add	a, #_buffer
      005B65 F5 82            [12] 3011 	mov	dpl,a
      005B67 EF               [12] 3012 	mov	a,r7
      005B68 34 09            [12] 3013 	addc	a, #(_buffer >> 8)
      005B6A F5 83            [12] 3014 	mov	dph,a
      005B6C E4               [12] 3015 	clr	a
      005B6D F0               [24] 3016 	movx	@dptr,a
                                   3017 ;	trial_webserver.c:463: unreleasedPacket = true;
      005B6E 90 10 1D         [24] 3018 	mov	dptr,#_packetReceive_unreleasedPacket_10000_139
      005B71 04               [12] 3019 	inc	a
      005B72 F0               [24] 3020 	movx	@dptr,a
                                   3021 ;	trial_webserver.c:465: uint8_t ECON2 = mac_spi_read(0x1E, 0);
      005B73 90 03 8D         [24] 3022 	mov	dptr,#_mac_spi_read_PARM_2
      005B76 E4               [12] 3023 	clr	a
      005B77 F0               [24] 3024 	movx	@dptr,a
      005B78 75 82 1E         [24] 3025 	mov	dpl, #0x1e
      005B7B 12 3A 96         [24] 3026 	lcall	_mac_spi_read
      005B7E E5 82            [12] 3027 	mov	a, dpl
                                   3028 ;	trial_webserver.c:466: spi_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
      005B80 44 40            [12] 3029 	orl	a,#0x40
      005B82 FF               [12] 3030 	mov	r7,a
      005B83 90 03 84         [24] 3031 	mov	dptr,#_spi_control_write_PARM_2
      005B86 74 1E            [12] 3032 	mov	a,#0x1e
      005B88 F0               [24] 3033 	movx	@dptr,a
      005B89 90 03 85         [24] 3034 	mov	dptr,#_spi_control_write_PARM_3
      005B8C EF               [12] 3035 	mov	a,r7
      005B8D F0               [24] 3036 	movx	@dptr,a
      005B8E 75 82 00         [24] 3037 	mov	dpl, #0x00
      005B91 12 39 7A         [24] 3038 	lcall	_spi_control_write
      005B94                       3039 00112$:
                                   3040 ;	trial_webserver.c:469: return len;
      005B94 90 10 1E         [24] 3041 	mov	dptr,#_packetReceive_len_10000_139
      005B97 E0               [24] 3042 	movx	a,@dptr
      005B98 FE               [12] 3043 	mov	r6,a
      005B99 A3               [24] 3044 	inc	dptr
      005B9A E0               [24] 3045 	movx	a,@dptr
                                   3046 ;	trial_webserver.c:470: }
      005B9B 8E 82            [24] 3047 	mov	dpl,r6
      005B9D F5 83            [12] 3048 	mov	dph,a
      005B9F 22               [24] 3049 	ret
                                   3050 ;------------------------------------------------------------
                                   3051 ;Allocation info for local variables in function 'packetLoop'
                                   3052 ;------------------------------------------------------------
                                   3053 ;plen                      Allocated with name '_packetLoop_plen_10000_149'
                                   3054 ;ethType                   Allocated with name '_packetLoop_ethType_20000_150'
                                   3055 ;tcpFlags                  Allocated with name '_packetLoop_tcpFlags_30000_153'
                                   3056 ;------------------------------------------------------------
                                   3057 ;	trial_webserver.c:472: void packetLoop(void)
                                   3058 ;	-----------------------------------------
                                   3059 ;	 function packetLoop
                                   3060 ;	-----------------------------------------
      005BA0                       3061 _packetLoop:
                                   3062 ;	trial_webserver.c:474: uint16_t plen = packetReceive();
      005BA0 12 59 E6         [24] 3063 	lcall	_packetReceive
      005BA3 AE 82            [24] 3064 	mov	r6, dpl
      005BA5 AF 83            [24] 3065 	mov	r7, dph
                                   3066 ;	trial_webserver.c:477: if (plen > 0) {
      005BA7 EE               [12] 3067 	mov	a,r6
      005BA8 4F               [12] 3068 	orl	a,r7
      005BA9 70 01            [24] 3069 	jnz	00219$
      005BAB 22               [24] 3070 	ret
      005BAC                       3071 00219$:
                                   3072 ;	trial_webserver.c:478: uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
      005BAC 90 09 CB         [24] 3073 	mov	dptr,#(_buffer + 0x000c)
      005BAF E0               [24] 3074 	movx	a,@dptr
      005BB0 FC               [12] 3075 	mov	r4,a
      005BB1 7D 00            [12] 3076 	mov	r5,#0x00
      005BB3 90 09 CC         [24] 3077 	mov	dptr,#(_buffer + 0x000d)
      005BB6 E0               [24] 3078 	movx	a,@dptr
      005BB7 FB               [12] 3079 	mov	r3,a
      005BB8 7A 00            [12] 3080 	mov	r2,#0x00
      005BBA 42 05            [12] 3081 	orl	ar5,a
      005BBC EA               [12] 3082 	mov	a,r2
      005BBD 42 04            [12] 3083 	orl	ar4,a
                                   3084 ;	trial_webserver.c:479: if (ethType == ETH_TYPE_ARP) {
      005BBF BD 06 0F         [24] 3085 	cjne	r5,#0x06,00104$
      005BC2 BC 08 0C         [24] 3086 	cjne	r4,#0x08,00104$
                                   3087 ;	trial_webserver.c:480: if (buffer[21] == 0x01) {
      005BC5 90 09 D4         [24] 3088 	mov	dptr,#(_buffer + 0x0015)
      005BC8 E0               [24] 3089 	movx	a,@dptr
      005BC9 FB               [12] 3090 	mov	r3,a
      005BCA BB 01 03         [24] 3091 	cjne	r3,#0x01,00102$
                                   3092 ;	trial_webserver.c:481: makeArpReply();
                                   3093 ;	trial_webserver.c:483: return;
      005BCD 02 4D 90         [24] 3094 	ljmp	_makeArpReply
      005BD0                       3095 00102$:
      005BD0 22               [24] 3096 	ret
      005BD1                       3097 00104$:
                                   3098 ;	trial_webserver.c:486: if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP)
      005BD1 BD 00 05         [24] 3099 	cjne	r5,#0x00,00224$
      005BD4 BC 08 02         [24] 3100 	cjne	r4,#0x08,00224$
      005BD7 80 01            [24] 3101 	sjmp	00225$
      005BD9                       3102 00224$:
      005BD9 22               [24] 3103 	ret
      005BDA                       3104 00225$:
      005BDA 90 09 D6         [24] 3105 	mov	dptr,#(_buffer + 0x0017)
      005BDD E0               [24] 3106 	movx	a,@dptr
      005BDE FD               [12] 3107 	mov	r5,a
      005BDF BD 06 02         [24] 3108 	cjne	r5,#0x06,00226$
      005BE2 80 01            [24] 3109 	sjmp	00227$
      005BE4                       3110 00226$:
      005BE4 22               [24] 3111 	ret
      005BE5                       3112 00227$:
                                   3113 ;	trial_webserver.c:488: uint8_t tcpFlags = buffer[TCP_FLAGS_P];
      005BE5 90 09 EE         [24] 3114 	mov	dptr,#(_buffer + 0x002f)
      005BE8 E0               [24] 3115 	movx	a,@dptr
                                   3116 ;	trial_webserver.c:491: if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
      005BE9 FD               [12] 3117 	mov	r5,a
      005BEA 30 E4 23         [24] 3118 	jnb	acc.4,00106$
      005BED ED               [12] 3119 	mov	a,r5
      005BEE 30 E0 1F         [24] 3120 	jnb	acc.0,00106$
                                   3121 ;	trial_webserver.c:492: printf("TCP(ACK_FIN) packet detected\n\r");
      005BF1 74 F5            [12] 3122 	mov	a,#___str_7
      005BF3 C0 E0            [24] 3123 	push	acc
      005BF5 74 7D            [12] 3124 	mov	a,#(___str_7 >> 8)
      005BF7 C0 E0            [24] 3125 	push	acc
      005BF9 74 80            [12] 3126 	mov	a,#0x80
      005BFB C0 E0            [24] 3127 	push	acc
      005BFD 12 64 F1         [24] 3128 	lcall	_printf
      005C00 15 81            [12] 3129 	dec	sp
      005C02 15 81            [12] 3130 	dec	sp
      005C04 15 81            [12] 3131 	dec	sp
                                   3132 ;	trial_webserver.c:493: makeTcpAck3(); // Send an acknowledgment
      005C06 12 4F 09         [24] 3133 	lcall	_makeTcpAck3
                                   3134 ;	trial_webserver.c:494: connectionState = CLOSED;
      005C09 90 14 93         [24] 3135 	mov	dptr,#_connectionState
      005C0C 74 04            [12] 3136 	mov	a,#0x04
      005C0E F0               [24] 3137 	movx	@dptr,a
                                   3138 ;	trial_webserver.c:496: return;
      005C0F 22               [24] 3139 	ret
      005C10                       3140 00106$:
                                   3141 ;	trial_webserver.c:498: if ((tcpFlags & TCP_FLAG_SYN)) {
      005C10 ED               [12] 3142 	mov	a,r5
      005C11 30 E1 26         [24] 3143 	jnb	acc.1,00109$
                                   3144 ;	trial_webserver.c:499: printf("TCP(SYN) packet detected\n\r");
      005C14 C0 07            [24] 3145 	push	ar7
      005C16 C0 06            [24] 3146 	push	ar6
      005C18 C0 05            [24] 3147 	push	ar5
      005C1A 74 14            [12] 3148 	mov	a,#___str_8
      005C1C C0 E0            [24] 3149 	push	acc
      005C1E 74 7E            [12] 3150 	mov	a,#(___str_8 >> 8)
      005C20 C0 E0            [24] 3151 	push	acc
      005C22 74 80            [12] 3152 	mov	a,#0x80
      005C24 C0 E0            [24] 3153 	push	acc
      005C26 12 64 F1         [24] 3154 	lcall	_printf
      005C29 15 81            [12] 3155 	dec	sp
      005C2B 15 81            [12] 3156 	dec	sp
      005C2D 15 81            [12] 3157 	dec	sp
      005C2F D0 05            [24] 3158 	pop	ar5
      005C31 D0 06            [24] 3159 	pop	ar6
      005C33 D0 07            [24] 3160 	pop	ar7
                                   3161 ;	trial_webserver.c:501: connectionState = LISTEN;
      005C35 90 14 93         [24] 3162 	mov	dptr,#_connectionState
      005C38 E4               [12] 3163 	clr	a
      005C39 F0               [24] 3164 	movx	@dptr,a
      005C3A                       3165 00109$:
                                   3166 ;	trial_webserver.c:504: switch (connectionState) {
      005C3A 90 14 93         [24] 3167 	mov	dptr,#_connectionState
      005C3D E0               [24] 3168 	movx	a,@dptr
      005C3E FC               [12] 3169 	mov  r4,a
      005C3F 24 FA            [12] 3170 	add	a,#0xff - 0x05
      005C41 50 01            [24] 3171 	jnc	00231$
      005C43 22               [24] 3172 	ret
      005C44                       3173 00231$:
      005C44 EC               [12] 3174 	mov	a,r4
      005C45 2C               [12] 3175 	add	a,r4
      005C46 2C               [12] 3176 	add	a,r4
      005C47 90 5C 4B         [24] 3177 	mov	dptr,#00232$
      005C4A 73               [24] 3178 	jmp	@a+dptr
      005C4B                       3179 00232$:
      005C4B 02 5C 5D         [24] 3180 	ljmp	00110$
      005C4E 02 5C 7E         [24] 3181 	ljmp	00113$
      005C51 02 5C A2         [24] 3182 	ljmp	00116$
      005C54 02 5C DC         [24] 3183 	ljmp	00122$
      005C57 02 5D 09         [24] 3184 	ljmp	00133$
      005C5A 02 5D 00         [24] 3185 	ljmp	00125$
                                   3186 ;	trial_webserver.c:505: case LISTEN:
      005C5D                       3187 00110$:
                                   3188 ;	trial_webserver.c:506: printf("listen\n\r");
      005C5D C0 05            [24] 3189 	push	ar5
      005C5F 74 2F            [12] 3190 	mov	a,#___str_9
      005C61 C0 E0            [24] 3191 	push	acc
      005C63 74 7E            [12] 3192 	mov	a,#(___str_9 >> 8)
      005C65 C0 E0            [24] 3193 	push	acc
      005C67 74 80            [12] 3194 	mov	a,#0x80
      005C69 C0 E0            [24] 3195 	push	acc
      005C6B 12 64 F1         [24] 3196 	lcall	_printf
      005C6E 15 81            [12] 3197 	dec	sp
      005C70 15 81            [12] 3198 	dec	sp
      005C72 15 81            [12] 3199 	dec	sp
      005C74 D0 05            [24] 3200 	pop	ar5
                                   3201 ;	trial_webserver.c:507: if (tcpFlags & TCP_FLAG_SYN)
      005C76 ED               [12] 3202 	mov	a,r5
      005C77 20 E1 01         [24] 3203 	jb	acc.1,00233$
      005C7A 22               [24] 3204 	ret
      005C7B                       3205 00233$:
                                   3206 ;	trial_webserver.c:508: makeTcpSynAck();
                                   3207 ;	trial_webserver.c:509: break;
      005C7B 02 54 48         [24] 3208 	ljmp	_makeTcpSynAck
                                   3209 ;	trial_webserver.c:510: case SYN_RECEIVED:
      005C7E                       3210 00113$:
                                   3211 ;	trial_webserver.c:511: printf("syn received\n\r");
      005C7E C0 05            [24] 3212 	push	ar5
      005C80 74 38            [12] 3213 	mov	a,#___str_10
      005C82 C0 E0            [24] 3214 	push	acc
      005C84 74 7E            [12] 3215 	mov	a,#(___str_10 >> 8)
      005C86 C0 E0            [24] 3216 	push	acc
      005C88 74 80            [12] 3217 	mov	a,#0x80
      005C8A C0 E0            [24] 3218 	push	acc
      005C8C 12 64 F1         [24] 3219 	lcall	_printf
      005C8F 15 81            [12] 3220 	dec	sp
      005C91 15 81            [12] 3221 	dec	sp
      005C93 15 81            [12] 3222 	dec	sp
      005C95 D0 05            [24] 3223 	pop	ar5
                                   3224 ;	trial_webserver.c:512: if (tcpFlags & TCP_FLAG_ACK)
      005C97 ED               [12] 3225 	mov	a,r5
      005C98 30 E4 6E         [24] 3226 	jnb	acc.4,00133$
                                   3227 ;	trial_webserver.c:513: connectionState = ESTABLISHED;
      005C9B 90 14 93         [24] 3228 	mov	dptr,#_connectionState
      005C9E 74 02            [12] 3229 	mov	a,#0x02
      005CA0 F0               [24] 3230 	movx	@dptr,a
                                   3231 ;	trial_webserver.c:514: break;
                                   3232 ;	trial_webserver.c:515: case ESTABLISHED:
      005CA1 22               [24] 3233 	ret
      005CA2                       3234 00116$:
                                   3235 ;	trial_webserver.c:516: printf("established\n\r");
      005CA2 C0 07            [24] 3236 	push	ar7
      005CA4 C0 06            [24] 3237 	push	ar6
      005CA6 C0 05            [24] 3238 	push	ar5
      005CA8 74 47            [12] 3239 	mov	a,#___str_11
      005CAA C0 E0            [24] 3240 	push	acc
      005CAC 74 7E            [12] 3241 	mov	a,#(___str_11 >> 8)
      005CAE C0 E0            [24] 3242 	push	acc
      005CB0 74 80            [12] 3243 	mov	a,#0x80
      005CB2 C0 E0            [24] 3244 	push	acc
      005CB4 12 64 F1         [24] 3245 	lcall	_printf
      005CB7 15 81            [12] 3246 	dec	sp
      005CB9 15 81            [12] 3247 	dec	sp
      005CBB 15 81            [12] 3248 	dec	sp
      005CBD D0 05            [24] 3249 	pop	ar5
      005CBF D0 06            [24] 3250 	pop	ar6
      005CC1 D0 07            [24] 3251 	pop	ar7
                                   3252 ;	trial_webserver.c:517: if (tcpFlags & TCP_FLAG_FIN) {
      005CC3 ED               [12] 3253 	mov	a,r5
      005CC4 30 E0 0A         [24] 3254 	jnb	acc.0,00120$
                                   3255 ;	trial_webserver.c:518: makeTcpAck();
      005CC7 12 56 B2         [24] 3256 	lcall	_makeTcpAck
                                   3257 ;	trial_webserver.c:519: connectionState = FIN_WAIT;
      005CCA 90 14 93         [24] 3258 	mov	dptr,#_connectionState
      005CCD 74 03            [12] 3259 	mov	a,#0x03
      005CCF F0               [24] 3260 	movx	@dptr,a
      005CD0 22               [24] 3261 	ret
      005CD1                       3262 00120$:
                                   3263 ;	trial_webserver.c:520: } else if (plen > TCP_DATA_START_P) {
      005CD1 C3               [12] 3264 	clr	c
      005CD2 74 36            [12] 3265 	mov	a,#0x36
      005CD4 9E               [12] 3266 	subb	a,r6
      005CD5 E4               [12] 3267 	clr	a
      005CD6 9F               [12] 3268 	subb	a,r7
      005CD7 50 30            [24] 3269 	jnc	00133$
                                   3270 ;	trial_webserver.c:521: makeTcpAck2();
                                   3271 ;	trial_webserver.c:524: break;
                                   3272 ;	trial_webserver.c:525: case FIN_WAIT:
      005CD9 02 51 50         [24] 3273 	ljmp	_makeTcpAck2
      005CDC                       3274 00122$:
                                   3275 ;	trial_webserver.c:526: printf("fin wait\n\r");
      005CDC C0 05            [24] 3276 	push	ar5
      005CDE 74 55            [12] 3277 	mov	a,#___str_12
      005CE0 C0 E0            [24] 3278 	push	acc
      005CE2 74 7E            [12] 3279 	mov	a,#(___str_12 >> 8)
      005CE4 C0 E0            [24] 3280 	push	acc
      005CE6 74 80            [12] 3281 	mov	a,#0x80
      005CE8 C0 E0            [24] 3282 	push	acc
      005CEA 12 64 F1         [24] 3283 	lcall	_printf
      005CED 15 81            [12] 3284 	dec	sp
      005CEF 15 81            [12] 3285 	dec	sp
      005CF1 15 81            [12] 3286 	dec	sp
      005CF3 D0 05            [24] 3287 	pop	ar5
                                   3288 ;	trial_webserver.c:527: if (tcpFlags & TCP_FLAG_ACK)
      005CF5 ED               [12] 3289 	mov	a,r5
      005CF6 30 E4 10         [24] 3290 	jnb	acc.4,00133$
                                   3291 ;	trial_webserver.c:528: connectionState = CLOSED;
      005CF9 90 14 93         [24] 3292 	mov	dptr,#_connectionState
      005CFC 74 04            [12] 3293 	mov	a,#0x04
      005CFE F0               [24] 3294 	movx	@dptr,a
                                   3295 ;	trial_webserver.c:529: break;
                                   3296 ;	trial_webserver.c:530: case ACK_SENT:
      005CFF 22               [24] 3297 	ret
      005D00                       3298 00125$:
                                   3299 ;	trial_webserver.c:531: makeTcpFinPshAck();
      005D00 12 57 77         [24] 3300 	lcall	_makeTcpFinPshAck
                                   3301 ;	trial_webserver.c:532: connectionState = CLOSED;
      005D03 90 14 93         [24] 3302 	mov	dptr,#_connectionState
      005D06 74 04            [12] 3303 	mov	a,#0x04
      005D08 F0               [24] 3304 	movx	@dptr,a
                                   3305 ;	trial_webserver.c:536: }
      005D09                       3306 00133$:
                                   3307 ;	trial_webserver.c:542: }
      005D09 22               [24] 3308 	ret
                                   3309 	.area CSEG    (CODE)
                                   3310 	.area CONST   (CODE)
                                   3311 	.area CONST   (CODE)
      007A1C                       3312 ___str_0:
      007A1C 74 72 69 61 6C 61 72  3313 	.ascii "trialarpreply"
             70 72 65 70 6C 79
      007A29 0A                    3314 	.db 0x0a
      007A2A 0D                    3315 	.db 0x0d
      007A2B 00                    3316 	.db 0x00
                                   3317 	.area CSEG    (CODE)
                                   3318 	.area CONST   (CODE)
      007A2C                       3319 ___str_1:
      007A2C 6D 61 6B 65 54 63 70  3320 	.ascii "makeTcpAck"
             41 63 6B
      007A36 0A                    3321 	.db 0x0a
      007A37 0D                    3322 	.db 0x0d
      007A38 00                    3323 	.db 0x00
                                   3324 	.area CSEG    (CODE)
                                   3325 	.area CONST   (CODE)
      007A39                       3326 ___str_2:
      007A39 6D 61 6B 65 54 63 70  3327 	.ascii "makeTcpSynAck"
             53 79 6E 41 63 6B
      007A46 0A                    3328 	.db 0x0a
      007A47 0D                    3329 	.db 0x0d
      007A48 00                    3330 	.db 0x00
                                   3331 	.area CSEG    (CODE)
                                   3332 	.area CONST   (CODE)
      007A49                       3333 ___str_3:
      007A49 63 6C 69 65 6E 74 53  3334 	.ascii "clientSeqNum = %ld"
             65 71 4E 75 6D 20 3D
             20 25 6C 64
      007A5B 0A                    3335 	.db 0x0a
      007A5C 0D                    3336 	.db 0x0d
      007A5D 00                    3337 	.db 0x00
                                   3338 	.area CSEG    (CODE)
                                   3339 	.area CONST   (CODE)
      007A5E                       3340 ___str_4:
      007A5E 74 63 70 61 63 6B     3341 	.ascii "tcpack"
      007A64 0A                    3342 	.db 0x0a
      007A65 0D                    3343 	.db 0x0d
      007A66 00                    3344 	.db 0x00
                                   3345 	.area CSEG    (CODE)
                                   3346 	.area CONST   (CODE)
      007A67                       3347 ___str_5:
      007A67 48 54 54 50 2F 31 2E  3348 	.ascii "HTTP/1.1 200 OK"
             31 20 32 30 30 20 4F
             4B
      007A76 0D                    3349 	.db 0x0d
      007A77 0A                    3350 	.db 0x0a
      007A78 43 6F 6E 74 65 6E 74  3351 	.ascii "Content-Type: text/html"
             2D 54 79 70 65 3A 20
             74 65 78 74 2F 68 74
             6D 6C
      007A8F 0D                    3352 	.db 0x0d
      007A90 0A                    3353 	.db 0x0a
      007A91 43 6F 6E 74 65 6E 74  3354 	.ascii "Content-Length: 530"
             2D 4C 65 6E 67 74 68
             3A 20 35 33 30
      007AA4 0D                    3355 	.db 0x0d
      007AA5 0A                    3356 	.db 0x0a
      007AA6 0D                    3357 	.db 0x0d
      007AA7 0A                    3358 	.db 0x0a
      007AA8 3C 21 44 4F 43 54 59  3359 	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
             50 45 20 68 74 6D 6C
             3E 3C 68 74 6D 6C 20
             6C 61 6E 67 3D 27 65
             6E 27 3E 3C 68 65 61
             64 3E 3C 6D 65 74 61
             20 63 68 61 72 73 65
             74 3D 27 55 54 46 2D
             38 27 3E 3C
      007AE4 6D 65 74 61 20 6E 61  3360 	.ascii "meta name='viewport' content='width=device-width, initial-sc"
             6D 65 3D 27 76 69 65
             77 70 6F 72 74 27 20
             63 6F 6E 74 65 6E 74
             3D 27 77 69 64 74 68
             3D 64 65 76 69 63 65
             2D 77 69 64 74 68 2C
             20 69 6E 69 74 69 61
             6C 2D 73 63
      007B20 61 6C 65 3D 31 2E 30  3361 	.ascii "ale=1.0'><title>Ethernet Web Server</title><style>body {font"
             27 3E 3C 74 69 74 6C
             65 3E 45 74 68 65 72
             6E 65 74 20 57 65 62
             20 53 65 72 76 65 72
             3C 2F 74 69 74 6C 65
             3E 3C 73 74 79 6C 65
             3E 62 6F 64 79 20 7B
             66 6F 6E 74
      007B5C 2D 66 61 6D 69 6C 79  3362 	.ascii "-family: Arial, sans-serif; background-color: #f0f0f0; text-"
             3A 20 41 72 69 61 6C
             2C 20 73 61 6E 73 2D
             73 65 72 69 66 3B 20
             62 61 63 6B 67 72 6F
             75 6E 64 2D 63 6F 6C
             6F 72 3A 20 23 66 30
             66 30 66 30 3B 20 74
             65 78 74 2D
      007B98 61 6C 69 67 6E 3A 20  3363 	.ascii "align: center; padding: 20px;}h1 {color: #333333;}p {color: "
             63 65 6E 74 65 72 3B
             20 70 61 64 64 69 6E
             67 3A 20 32 30 70 78
             3B 7D 68 31 20 7B 63
             6F 6C 6F 72 3A 20 23
             33 33 33 33 33 33 3B
             7D 70 20 7B 63 6F 6C
             6F 72 3A 20
      007BD4 23 36 36 36 36 36 36  3364 	.ascii "#666666;}</style></head><body><h1>ESD FALL 2024</h1><p>Ether"
             3B 7D 3C 2F 73 74 79
             6C 65 3E 3C 2F 68 65
             61 64 3E 3C 62 6F 64
             79 3E 3C 68 31 3E 45
             53 44 20 46 41 4C 4C
             20 32 30 32 34 3C 2F
             68 31 3E 3C 70 3E 45
             74 68 65 72
      007C10 6E 65 74 20 62 61 73  3365 	.ascii "net based Web Server for Embedded Systems - NADGIR and KOPPA"
             65 64 20 57 65 62 20
             53 65 72 76 65 72 20
             66 6F 72 20 45 6D 62
             65 64 64 65 64 20 53
             79 73 74 65 6D 73 20
             2D 20 4E 41 44 47 49
             52 20 61 6E 64 20 4B
             4F 50 50 41
      007C4C 20 6D 61 64 65 20 69  3366 	.ascii " made itttt, lessgoooo!!! This web server showcases the powe"
             74 74 74 74 2C 20 6C
             65 73 73 67 6F 6F 6F
             6F 21 21 21 20 54 68
             69 73 20 77 65 62 20
             73 65 72 76 65 72 20
             73 68 6F 77 63 61 73
             65 73 20 74 68 65 20
             70 6F 77 65
      007C88 72 20 6F 66 20 6D 69  3367 	.ascii "r of microcontrollers and Ethernet communication. By leverag"
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 73
             20 61 6E 64 20 45 74
             68 65 72 6E 65 74 20
             63 6F 6D 6D 75 6E 69
             63 61 74 69 6F 6E 2E
             20 42 79 20 6C 65 76
             65 72 61 67
      007CC4 69 6E 67 20 74 68 65  3368 	.ascii "ing the AT89C51RC2 microcontroller and the ENC28J60 Ethernet"
             20 41 54 38 39 43 35
             31 52 43 32 20 6D 69
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 20
             61 6E 64 20 74 68 65
             20 45 4E 43 32 38 4A
             36 30 20 45 74 68 65
             72 6E 65 74
      007D00 20 63 6F 6E 74 72 6F  3369 	.ascii " controller, we can serve dynamic web pages and control embe"
             6C 6C 65 72 2C 20 77
             65 20 63 61 6E 20 73
             65 72 76 65 20 64 79
             6E 61 6D 69 63 20 77
             65 62 20 70 61 67 65
             73 20 61 6E 64 20 63
             6F 6E 74 72 6F 6C 20
             65 6D 62 65
      007D3C 64 64 65 64 20 64 65  3370 	.ascii "dded devices remotely. The server allows seamless communicat"
             76 69 63 65 73 20 72
             65 6D 6F 74 65 6C 79
             2E 20 54 68 65 20 73
             65 72 76 65 72 20 61
             6C 6C 6F 77 73 20 73
             65 61 6D 6C 65 73 73
             20 63 6F 6D 6D 75 6E
             69 63 61 74
      007D78 69 6F 6E 20 62 65 74  3371 	.ascii "ion between hardware and software, enabling real-time data e"
             77 65 65 6E 20 68 61
             72 64 77 61 72 65 20
             61 6E 64 20 73 6F 66
             74 77 61 72 65 2C 20
             65 6E 61 62 6C 69 6E
             67 20 72 65 61 6C 2D
             74 69 6D 65 20 64 61
             74 61 20 65
      007DB4 78 63 68 61 6E 67 65  3372 	.ascii "xchange across the network.</p></body></html>"
             20 61 63 72 6F 73 73
             20 74 68 65 20 6E 65
             74 77 6F 72 6B 2E 3C
             2F 70 3E 3C 2F 62 6F
             64 79 3E 3C 2F 68 74
             6D 6C 3E
      007DE1 00                    3373 	.db 0x00
                                   3374 	.area CSEG    (CODE)
                                   3375 	.area CONST   (CODE)
      007DE2                       3376 ___str_6:
      007DE2 6D 61 6B 65 54 63 70  3377 	.ascii "makeTcpFinPshAck"
             46 69 6E 50 73 68 41
             63 6B
      007DF2 0A                    3378 	.db 0x0a
      007DF3 0D                    3379 	.db 0x0d
      007DF4 00                    3380 	.db 0x00
                                   3381 	.area CSEG    (CODE)
                                   3382 	.area CONST   (CODE)
      007DF5                       3383 ___str_7:
      007DF5 54 43 50 28 41 43 4B  3384 	.ascii "TCP(ACK_FIN) packet detected"
             5F 46 49 4E 29 20 70
             61 63 6B 65 74 20 64
             65 74 65 63 74 65 64
      007E11 0A                    3385 	.db 0x0a
      007E12 0D                    3386 	.db 0x0d
      007E13 00                    3387 	.db 0x00
                                   3388 	.area CSEG    (CODE)
                                   3389 	.area CONST   (CODE)
      007E14                       3390 ___str_8:
      007E14 54 43 50 28 53 59 4E  3391 	.ascii "TCP(SYN) packet detected"
             29 20 70 61 63 6B 65
             74 20 64 65 74 65 63
             74 65 64
      007E2C 0A                    3392 	.db 0x0a
      007E2D 0D                    3393 	.db 0x0d
      007E2E 00                    3394 	.db 0x00
                                   3395 	.area CSEG    (CODE)
                                   3396 	.area CONST   (CODE)
      007E2F                       3397 ___str_9:
      007E2F 6C 69 73 74 65 6E     3398 	.ascii "listen"
      007E35 0A                    3399 	.db 0x0a
      007E36 0D                    3400 	.db 0x0d
      007E37 00                    3401 	.db 0x00
                                   3402 	.area CSEG    (CODE)
                                   3403 	.area CONST   (CODE)
      007E38                       3404 ___str_10:
      007E38 73 79 6E 20 72 65 63  3405 	.ascii "syn received"
             65 69 76 65 64
      007E44 0A                    3406 	.db 0x0a
      007E45 0D                    3407 	.db 0x0d
      007E46 00                    3408 	.db 0x00
                                   3409 	.area CSEG    (CODE)
                                   3410 	.area CONST   (CODE)
      007E47                       3411 ___str_11:
      007E47 65 73 74 61 62 6C 69  3412 	.ascii "established"
             73 68 65 64
      007E52 0A                    3413 	.db 0x0a
      007E53 0D                    3414 	.db 0x0d
      007E54 00                    3415 	.db 0x00
                                   3416 	.area CSEG    (CODE)
                                   3417 	.area CONST   (CODE)
      007E55                       3418 ___str_12:
      007E55 66 69 6E 20 77 61 69  3419 	.ascii "fin wait"
             74
      007E5D 0A                    3420 	.db 0x0a
      007E5E 0D                    3421 	.db 0x0d
      007E5F 00                    3422 	.db 0x00
                                   3423 	.area CSEG    (CODE)
                                   3424 	.area XINIT   (CODE)
      007E6D                       3425 __xinit__connectionState:
      007E6D 00                    3426 	.db #0x00	; 0
                                   3427 	.area CABS    (ABS,CODE)

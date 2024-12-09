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
      000035                        476 	.ds 2
      000037                        477 _makeTcpAck2_sloc2_1_0:
      000037                        478 	.ds 4
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
      000FEB                        541 _makeTcpAck_device_mac_10000_133:
      000FEB                        542 	.ds 6
      000FF1                        543 _makeTcpAck_target_mac_10000_133:
      000FF1                        544 	.ds 6
      000FF7                        545 _makeTcpAck_device_ip_10000_133:
      000FF7                        546 	.ds 4
      000FFB                        547 _makeTcpAck_target_ip_10000_133:
      000FFB                        548 	.ds 4
      000FFF                        549 _makeTcpFinPshAck_device_mac_10000_134:
      000FFF                        550 	.ds 6
      001005                        551 _makeTcpFinPshAck_target_mac_10000_134:
      001005                        552 	.ds 6
      00100B                        553 _makeTcpFinPshAck_device_ip_10000_134:
      00100B                        554 	.ds 4
      00100F                        555 _makeTcpFinPshAck_target_ip_10000_134:
      00100F                        556 	.ds 4
      001013                        557 _makeTcpFinPshAck_serverSeqNum_10002_136:
      001013                        558 	.ds 4
      001017                        559 _makeTcpFinPshAck_ackNum_10002_136:
      001017                        560 	.ds 4
      00101B                        561 _packetReceive_gNextPacketPtr_10000_138:
      00101B                        562 	.ds 2
      00101D                        563 _packetReceive_unreleasedPacket_10000_138:
      00101D                        564 	.ds 1
      00101E                        565 _packetReceive_len_10000_138:
      00101E                        566 	.ds 2
      001020                        567 _packetReceive_header_20002_144:
      001020                        568 	.ds 6
      001026                        569 _packetReceive_start_20003_145:
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
                                    601 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_138'
                                    602 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_138'
                                    603 ;len                       Allocated with name '_packetReceive_len_10000_138'
                                    604 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_140'
                                    605 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_142'
                                    606 ;header                    Allocated with name '_packetReceive_header_20002_144'
                                    607 ;start                     Allocated with name '_packetReceive_start_20003_145'
                                    608 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_146'
                                    609 ;------------------------------------------------------------
                                    610 ;	trial_webserver.c:388: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      00209E 90 10 1B         [24]  611 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0020A1 E4               [12]  612 	clr	a
      0020A2 F0               [24]  613 	movx	@dptr,a
      0020A3 A3               [24]  614 	inc	dptr
      0020A4 F0               [24]  615 	movx	@dptr,a
                                    616 ;	trial_webserver.c:389: static bool unreleasedPacket = false;
      0020A5 90 10 1D         [24]  617 	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
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
      004E05 74 41            [12]  713 	mov	a,#___str_0
      004E07 C0 E0            [24]  714 	push	acc
      004E09 74 79            [12]  715 	mov	a,#(___str_0 >> 8)
      004E0B C0 E0            [24]  716 	push	acc
      004E0D 74 80            [12]  717 	mov	a,#0x80
      004E0F C0 E0            [24]  718 	push	acc
      004E11 12 64 16         [24]  719 	lcall	_printf
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
      004E35 12 5E E0         [24]  741 	lcall	_memmove
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
      004E59 12 5E 29         [24]  764 	lcall	___memcpy
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
      004E77 12 5E 29         [24]  783 	lcall	___memcpy
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
      004E9B 12 5E 29         [24]  806 	lcall	___memcpy
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
      004EB9 12 5E 29         [24]  825 	lcall	___memcpy
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
      004ED7 12 5E 29         [24]  844 	lcall	___memcpy
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
      004EF5 12 5E 29         [24]  863 	lcall	___memcpy
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
      004F7E 74 51            [12]  960 	mov	a,#___str_1
      004F80 C0 E0            [24]  961 	push	acc
      004F82 74 79            [12]  962 	mov	a,#(___str_1 >> 8)
      004F84 C0 E0            [24]  963 	push	acc
      004F86 74 80            [12]  964 	mov	a,#0x80
      004F88 C0 E0            [24]  965 	push	acc
      004F8A 12 64 16         [24]  966 	lcall	_printf
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
      004FAE 12 5E E0         [24]  988 	lcall	_memmove
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
      004FD2 12 5E 29         [24] 1011 	lcall	___memcpy
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
      004FF0 12 5E 29         [24] 1030 	lcall	___memcpy
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
      00500E 12 5E 29         [24] 1049 	lcall	___memcpy
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
      00502C 12 5E 29         [24] 1068 	lcall	___memcpy
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
                                   1109 ;	trial_webserver.c:88: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
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
                                   1125 ;	trial_webserver.c:91: uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
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
                                   1143 ;	trial_webserver.c:95: uint32_t ackNum = clientSeqNum + 1;
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
                                   1156 ;	trial_webserver.c:96: prevSeq = serverSeqNum;
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
                                   1169 ;	trial_webserver.c:97: prevAck = ackNum;
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
                                   1182 ;	trial_webserver.c:100: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      0050CF 8B 07            [24] 1183 	mov	ar7,r3
      0050D1 90 09 E6         [24] 1184 	mov	dptr,#(_buffer + 0x0027)
      0050D4 EF               [12] 1185 	mov	a,r7
      0050D5 F0               [24] 1186 	movx	@dptr,a
                                   1187 ;	trial_webserver.c:101: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      0050D6 8A 07            [24] 1188 	mov	ar7,r2
      0050D8 90 09 E7         [24] 1189 	mov	dptr,#(_buffer + 0x0028)
      0050DB EF               [12] 1190 	mov	a,r7
      0050DC F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	trial_webserver.c:102: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      0050DD 89 07            [24] 1193 	mov	ar7,r1
      0050DF 90 09 E8         [24] 1194 	mov	dptr,#(_buffer + 0x0029)
      0050E2 EF               [12] 1195 	mov	a,r7
      0050E3 F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	trial_webserver.c:103: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      0050E4 90 09 E9         [24] 1198 	mov	dptr,#(_buffer + 0x002a)
      0050E7 E8               [12] 1199 	mov	a,r0
      0050E8 F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	trial_webserver.c:104: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      0050E9 AF 32            [24] 1202 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 3)
      0050EB 90 09 EA         [24] 1203 	mov	dptr,#(_buffer + 0x002b)
      0050EE EF               [12] 1204 	mov	a,r7
      0050EF F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	trial_webserver.c:105: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      0050F0 AF 31            [24] 1207 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 2)
      0050F2 90 09 EB         [24] 1208 	mov	dptr,#(_buffer + 0x002c)
      0050F5 EF               [12] 1209 	mov	a,r7
      0050F6 F0               [24] 1210 	movx	@dptr,a
                                   1211 ;	trial_webserver.c:106: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      0050F7 AF 30            [24] 1212 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 1)
      0050F9 90 09 EC         [24] 1213 	mov	dptr,#(_buffer + 0x002d)
      0050FC EF               [12] 1214 	mov	a,r7
      0050FD F0               [24] 1215 	movx	@dptr,a
                                   1216 ;	trial_webserver.c:107: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      0050FE AF 2F            [24] 1217 	mov	r7,_makeTcpAck3_sloc0_1_0
      005100 90 09 ED         [24] 1218 	mov	dptr,#(_buffer + 0x002e)
      005103 EF               [12] 1219 	mov	a,r7
      005104 F0               [24] 1220 	movx	@dptr,a
                                   1221 ;	trial_webserver.c:111: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      005105 90 09 D0         [24] 1222 	mov	dptr,#(_buffer + 0x0011)
      005108 E4               [12] 1223 	clr	a
      005109 F0               [24] 1224 	movx	@dptr,a
                                   1225 ;	trial_webserver.c:112: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      00510A 90 09 D1         [24] 1226 	mov	dptr,#(_buffer + 0x0012)
      00510D 74 28            [12] 1227 	mov	a,#0x28
      00510F F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	trial_webserver.c:115: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      005110 90 09 EF         [24] 1230 	mov	dptr,#(_buffer + 0x0030)
      005113 74 10            [12] 1231 	mov	a,#0x10
      005115 F0               [24] 1232 	movx	@dptr,a
                                   1233 ;	trial_webserver.c:116: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      005116 90 09 F0         [24] 1234 	mov	dptr,#(_buffer + 0x0031)
      005119 74 FF            [12] 1235 	mov	a,#0xff
      00511B F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	trial_webserver.c:117: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      00511C 90 09 F1         [24] 1238 	mov	dptr,#(_buffer + 0x0032)
      00511F F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	trial_webserver.c:118: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      005120 90 09 EE         [24] 1241 	mov	dptr,#(_buffer + 0x002f)
      005123 74 50            [12] 1242 	mov	a,#0x50
      005125 F0               [24] 1243 	movx	@dptr,a
                                   1244 ;	trial_webserver.c:121: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      005126 90 09 C0         [24] 1245 	mov	dptr,#(_buffer + 0x0001)
      005129 75 F0 00         [24] 1246 	mov	b, #0x00
      00512C 12 3F 25         [24] 1247 	lcall	_calculateIPChecksum
                                   1248 ;	trial_webserver.c:122: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      00512F 90 09 C0         [24] 1249 	mov	dptr,#(_buffer + 0x0001)
      005132 75 F0 00         [24] 1250 	mov	b, #0x00
      005135 12 40 8F         [24] 1251 	lcall	_calculateTcpChecksum
                                   1252 ;	trial_webserver.c:126: transmit_tcp_packet(buffer, 1 + 54);
      005138 90 09 B2         [24] 1253 	mov	dptr,#_transmit_tcp_packet_PARM_2
      00513B 74 37            [12] 1254 	mov	a,#0x37
      00513D F0               [24] 1255 	movx	@dptr,a
      00513E E4               [12] 1256 	clr	a
      00513F A3               [24] 1257 	inc	dptr
      005140 F0               [24] 1258 	movx	@dptr,a
      005141 90 09 BF         [24] 1259 	mov	dptr,#_buffer
      005144 F5 F0            [12] 1260 	mov	b,a
      005146 12 4C AC         [24] 1261 	lcall	_transmit_tcp_packet
                                   1262 ;	trial_webserver.c:129: connectionState = ACK_SENT;
      005149 90 14 93         [24] 1263 	mov	dptr,#_connectionState
      00514C 74 05            [12] 1264 	mov	a,#0x05
      00514E F0               [24] 1265 	movx	@dptr,a
                                   1266 ;	trial_webserver.c:130: }
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
                                   1288 ;	trial_webserver.c:132: void makeTcpAck2() {
                                   1289 ;	-----------------------------------------
                                   1290 ;	 function makeTcpAck2
                                   1291 ;	-----------------------------------------
      005150                       1292 _makeTcpAck2:
                                   1293 ;	trial_webserver.c:133: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
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
                                   1312 ;	trial_webserver.c:134: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
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
                                   1331 ;	trial_webserver.c:135: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
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
                                   1344 ;	trial_webserver.c:136: uint8_t target_ip[4] = { 192, 168, 1, 1 };
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
                                   1356 ;	trial_webserver.c:137: uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
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
                                   1367 ;	trial_webserver.c:138: uint16_t receivedPayloadLength = totalLength1 - 40;
      0051D7 EF               [12] 1368 	mov	a,r7
      0051D8 24 D8            [12] 1369 	add	a,#0xd8
      0051DA FF               [12] 1370 	mov	r7,a
      0051DB EE               [12] 1371 	mov	a,r6
      0051DC 34 FF            [12] 1372 	addc	a,#0xff
      0051DE FE               [12] 1373 	mov	r6,a
      0051DF 8F 35            [24] 1374 	mov	_makeTcpAck2_sloc1_1_0,r7
      0051E1 8E 36            [24] 1375 	mov	(_makeTcpAck2_sloc1_1_0 + 1),r6
                                   1376 ;	trial_webserver.c:139: printf("makeTcpAck\n\r");
      0051E3 74 51            [12] 1377 	mov	a,#___str_1
      0051E5 C0 E0            [24] 1378 	push	acc
      0051E7 74 79            [12] 1379 	mov	a,#(___str_1 >> 8)
      0051E9 C0 E0            [24] 1380 	push	acc
      0051EB 74 80            [12] 1381 	mov	a,#0x80
      0051ED C0 E0            [24] 1382 	push	acc
      0051EF 12 64 16         [24] 1383 	lcall	_printf
      0051F2 15 81            [12] 1384 	dec	sp
      0051F4 15 81            [12] 1385 	dec	sp
      0051F6 15 81            [12] 1386 	dec	sp
                                   1387 ;	trial_webserver.c:142: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
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
      005213 12 5E E0         [24] 1405 	lcall	_memmove
                                   1406 ;	trial_webserver.c:143: buffer[0] = 0x0E;
      005216 90 09 BF         [24] 1407 	mov	dptr,#_buffer
      005219 74 0E            [12] 1408 	mov	a,#0x0e
      00521B F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	trial_webserver.c:146: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
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
      005237 12 5E 29         [24] 1428 	lcall	___memcpy
                                   1429 ;	trial_webserver.c:147: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
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
      005255 12 5E 29         [24] 1447 	lcall	___memcpy
                                   1448 ;	trial_webserver.c:150: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
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
      005273 12 5E 29         [24] 1466 	lcall	___memcpy
                                   1467 ;	trial_webserver.c:151: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
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
      005291 12 5E 29         [24] 1485 	lcall	___memcpy
                                   1486 ;	trial_webserver.c:154: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
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
                                   1497 ;	trial_webserver.c:156: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
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
                                   1508 ;	trial_webserver.c:158: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0052B8 8A 01            [24] 1509 	mov	ar1,r2
      0052BA 90 09 E2         [24] 1510 	mov	dptr,#(_buffer + 0x0023)
      0052BD E9               [12] 1511 	mov	a,r1
      0052BE F0               [24] 1512 	movx	@dptr,a
                                   1513 ;	trial_webserver.c:159: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0052BF 90 09 E3         [24] 1514 	mov	dptr,#(_buffer + 0x0024)
      0052C2 EB               [12] 1515 	mov	a,r3
      0052C3 F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	trial_webserver.c:160: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0052C4 8C 03            [24] 1518 	mov	ar3,r4
      0052C6 90 09 E4         [24] 1519 	mov	dptr,#(_buffer + 0x0025)
      0052C9 EB               [12] 1520 	mov	a,r3
      0052CA F0               [24] 1521 	movx	@dptr,a
                                   1522 ;	trial_webserver.c:161: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0052CB 90 09 E5         [24] 1523 	mov	dptr,#(_buffer + 0x0026)
      0052CE ED               [12] 1524 	mov	a,r5
      0052CF F0               [24] 1525 	movx	@dptr,a
                                   1526 ;	trial_webserver.c:164: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
      0052D0 90 09 E8         [24] 1527 	mov	dptr,#(_buffer + 0x0029)
      0052D3 E0               [24] 1528 	movx	a,@dptr
      0052D4 FC               [12] 1529 	mov	r4,a
      0052D5 7D 00            [12] 1530 	mov	r5,#0x00
      0052D7 90 09 E9         [24] 1531 	mov	dptr,#(_buffer + 0x002a)
      0052DA E0               [24] 1532 	movx	a,@dptr
      0052DB 7A 00            [12] 1533 	mov	r2,#0x00
      0052DD 42 05            [12] 1534 	orl	ar5,a
      0052DF EA               [12] 1535 	mov	a,r2
      0052E0 42 04            [12] 1536 	orl	ar4,a
      0052E2 8D 37            [24] 1537 	mov	_makeTcpAck2_sloc2_1_0,r5
      0052E4 EC               [12] 1538 	mov	a,r4
      0052E5 F5 38            [12] 1539 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      0052E7 33               [12] 1540 	rlc	a
      0052E8 95 E0            [12] 1541 	subb	a,acc
      0052EA F5 39            [12] 1542 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      0052EC F5 3A            [12] 1543 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   1544 ;	trial_webserver.c:167: uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
      0052EE 90 09 EC         [24] 1545 	mov	dptr,#(_buffer + 0x002d)
      0052F1 E0               [24] 1546 	movx	a,@dptr
      0052F2 F8               [12] 1547 	mov	r0,a
      0052F3 79 00            [12] 1548 	mov	r1,#0x00
      0052F5 88 34            [24] 1549 	mov	(_makeTcpAck2_sloc0_1_0 + 1),r0
      0052F7 89 33            [24] 1550 	mov	_makeTcpAck2_sloc0_1_0,r1
      0052F9 90 09 ED         [24] 1551 	mov	dptr,#(_buffer + 0x002e)
      0052FC E0               [24] 1552 	movx	a,@dptr
      0052FD F8               [12] 1553 	mov	r0,a
      0052FE 79 00            [12] 1554 	mov	r1,#0x00
      005300 E5 34            [12] 1555 	mov	a,(_makeTcpAck2_sloc0_1_0 + 1)
      005302 42 01            [12] 1556 	orl	ar1,a
      005304 E9               [12] 1557 	mov	a,r1
      005305 33               [12] 1558 	rlc	a
      005306 95 E0            [12] 1559 	subb	a,acc
      005308 FE               [12] 1560 	mov	r6,a
      005309 FF               [12] 1561 	mov	r7,a
                                   1562 ;	trial_webserver.c:171: uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
      00530A AA 35            [24] 1563 	mov	r2,_makeTcpAck2_sloc1_1_0
      00530C AB 36            [24] 1564 	mov	r3,(_makeTcpAck2_sloc1_1_0 + 1)
      00530E E4               [12] 1565 	clr	a
      00530F FC               [12] 1566 	mov	r4,a
      005310 FD               [12] 1567 	mov	r5,a
      005311 EA               [12] 1568 	mov	a,r2
      005312 25 37            [12] 1569 	add	a, _makeTcpAck2_sloc2_1_0
      005314 FA               [12] 1570 	mov	r2,a
      005315 EB               [12] 1571 	mov	a,r3
      005316 35 38            [12] 1572 	addc	a, (_makeTcpAck2_sloc2_1_0 + 1)
      005318 FB               [12] 1573 	mov	r3,a
      005319 EC               [12] 1574 	mov	a,r4
      00531A 35 39            [12] 1575 	addc	a, (_makeTcpAck2_sloc2_1_0 + 2)
      00531C FC               [12] 1576 	mov	r4,a
      00531D ED               [12] 1577 	mov	a,r5
      00531E 35 3A            [12] 1578 	addc	a, (_makeTcpAck2_sloc2_1_0 + 3)
      005320 FD               [12] 1579 	mov	r5,a
      005321 EA               [12] 1580 	mov	a,r2
      005322 24 FF            [12] 1581 	add	a,#0xff
      005324 F5 37            [12] 1582 	mov	_makeTcpAck2_sloc2_1_0,a
      005326 EB               [12] 1583 	mov	a,r3
      005327 34 FF            [12] 1584 	addc	a,#0xff
      005329 F5 38            [12] 1585 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      00532B EC               [12] 1586 	mov	a,r4
      00532C 34 FF            [12] 1587 	addc	a,#0xff
      00532E F5 39            [12] 1588 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      005330 ED               [12] 1589 	mov	a,r5
      005331 34 FF            [12] 1590 	addc	a,#0xff
      005333 F5 3A            [12] 1591 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   1592 ;	trial_webserver.c:172: prevSeq = serverSeqNum;
      005335 90 09 B7         [24] 1593 	mov	dptr,#_prevSeq
      005338 E8               [12] 1594 	mov	a,r0
      005339 F0               [24] 1595 	movx	@dptr,a
      00533A E9               [12] 1596 	mov	a,r1
      00533B A3               [24] 1597 	inc	dptr
      00533C F0               [24] 1598 	movx	@dptr,a
      00533D EE               [12] 1599 	mov	a,r6
      00533E A3               [24] 1600 	inc	dptr
      00533F F0               [24] 1601 	movx	@dptr,a
      005340 EF               [12] 1602 	mov	a,r7
      005341 A3               [24] 1603 	inc	dptr
      005342 F0               [24] 1604 	movx	@dptr,a
                                   1605 ;	trial_webserver.c:173: prevAck = ackNum;
      005343 90 09 BB         [24] 1606 	mov	dptr,#_prevAck
      005346 E5 37            [12] 1607 	mov	a,_makeTcpAck2_sloc2_1_0
      005348 F0               [24] 1608 	movx	@dptr,a
      005349 E5 38            [12] 1609 	mov	a,(_makeTcpAck2_sloc2_1_0 + 1)
      00534B A3               [24] 1610 	inc	dptr
      00534C F0               [24] 1611 	movx	@dptr,a
      00534D E5 39            [12] 1612 	mov	a,(_makeTcpAck2_sloc2_1_0 + 2)
      00534F A3               [24] 1613 	inc	dptr
      005350 F0               [24] 1614 	movx	@dptr,a
      005351 E5 3A            [12] 1615 	mov	a,(_makeTcpAck2_sloc2_1_0 + 3)
      005353 A3               [24] 1616 	inc	dptr
      005354 F0               [24] 1617 	movx	@dptr,a
                                   1618 ;	trial_webserver.c:176: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      005355 8F 05            [24] 1619 	mov	ar5,r7
      005357 90 09 E6         [24] 1620 	mov	dptr,#(_buffer + 0x0027)
      00535A ED               [12] 1621 	mov	a,r5
      00535B F0               [24] 1622 	movx	@dptr,a
                                   1623 ;	trial_webserver.c:177: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      00535C 8E 05            [24] 1624 	mov	ar5,r6
      00535E 90 09 E7         [24] 1625 	mov	dptr,#(_buffer + 0x0028)
      005361 ED               [12] 1626 	mov	a,r5
      005362 F0               [24] 1627 	movx	@dptr,a
                                   1628 ;	trial_webserver.c:178: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      005363 89 05            [24] 1629 	mov	ar5,r1
      005365 90 09 E8         [24] 1630 	mov	dptr,#(_buffer + 0x0029)
      005368 ED               [12] 1631 	mov	a,r5
      005369 F0               [24] 1632 	movx	@dptr,a
                                   1633 ;	trial_webserver.c:179: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      00536A 90 09 E9         [24] 1634 	mov	dptr,#(_buffer + 0x002a)
      00536D E8               [12] 1635 	mov	a,r0
      00536E F0               [24] 1636 	movx	@dptr,a
                                   1637 ;	trial_webserver.c:180: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      00536F AF 3A            [24] 1638 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 3)
      005371 90 09 EA         [24] 1639 	mov	dptr,#(_buffer + 0x002b)
      005374 EF               [12] 1640 	mov	a,r7
      005375 F0               [24] 1641 	movx	@dptr,a
                                   1642 ;	trial_webserver.c:181: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      005376 AF 39            [24] 1643 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 2)
      005378 90 09 EB         [24] 1644 	mov	dptr,#(_buffer + 0x002c)
      00537B EF               [12] 1645 	mov	a,r7
      00537C F0               [24] 1646 	movx	@dptr,a
                                   1647 ;	trial_webserver.c:182: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      00537D AF 38            [24] 1648 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 1)
      00537F 90 09 EC         [24] 1649 	mov	dptr,#(_buffer + 0x002d)
      005382 EF               [12] 1650 	mov	a,r7
      005383 F0               [24] 1651 	movx	@dptr,a
                                   1652 ;	trial_webserver.c:183: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      005384 AA 37            [24] 1653 	mov	r2,_makeTcpAck2_sloc2_1_0
      005386 90 09 ED         [24] 1654 	mov	dptr,#(_buffer + 0x002e)
      005389 EA               [12] 1655 	mov	a,r2
      00538A F0               [24] 1656 	movx	@dptr,a
                                   1657 ;	trial_webserver.c:187: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      00538B 90 09 D0         [24] 1658 	mov	dptr,#(_buffer + 0x0011)
      00538E E4               [12] 1659 	clr	a
      00538F F0               [24] 1660 	movx	@dptr,a
                                   1661 ;	trial_webserver.c:188: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005390 90 09 D1         [24] 1662 	mov	dptr,#(_buffer + 0x0012)
      005393 74 28            [12] 1663 	mov	a,#0x28
      005395 F0               [24] 1664 	movx	@dptr,a
                                   1665 ;	trial_webserver.c:191: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      005396 90 09 EF         [24] 1666 	mov	dptr,#(_buffer + 0x0030)
      005399 74 10            [12] 1667 	mov	a,#0x10
      00539B F0               [24] 1668 	movx	@dptr,a
                                   1669 ;	trial_webserver.c:192: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      00539C 90 09 F0         [24] 1670 	mov	dptr,#(_buffer + 0x0031)
      00539F 74 FF            [12] 1671 	mov	a,#0xff
      0053A1 F0               [24] 1672 	movx	@dptr,a
                                   1673 ;	trial_webserver.c:193: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      0053A2 90 09 F1         [24] 1674 	mov	dptr,#(_buffer + 0x0032)
      0053A5 F0               [24] 1675 	movx	@dptr,a
                                   1676 ;	trial_webserver.c:194: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      0053A6 90 09 EE         [24] 1677 	mov	dptr,#(_buffer + 0x002f)
      0053A9 74 50            [12] 1678 	mov	a,#0x50
      0053AB F0               [24] 1679 	movx	@dptr,a
                                   1680 ;	trial_webserver.c:197: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0053AC 90 09 C0         [24] 1681 	mov	dptr,#(_buffer + 0x0001)
      0053AF 75 F0 00         [24] 1682 	mov	b, #0x00
      0053B2 12 3F 25         [24] 1683 	lcall	_calculateIPChecksum
                                   1684 ;	trial_webserver.c:198: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      0053B5 90 09 C0         [24] 1685 	mov	dptr,#(_buffer + 0x0001)
      0053B8 75 F0 00         [24] 1686 	mov	b, #0x00
      0053BB 12 40 8F         [24] 1687 	lcall	_calculateTcpChecksum
                                   1688 ;	trial_webserver.c:202: transmit_tcp_packet(buffer, 1 + 54);
      0053BE 90 09 B2         [24] 1689 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0053C1 74 37            [12] 1690 	mov	a,#0x37
      0053C3 F0               [24] 1691 	movx	@dptr,a
      0053C4 E4               [12] 1692 	clr	a
      0053C5 A3               [24] 1693 	inc	dptr
      0053C6 F0               [24] 1694 	movx	@dptr,a
      0053C7 90 09 BF         [24] 1695 	mov	dptr,#_buffer
      0053CA F5 F0            [12] 1696 	mov	b,a
      0053CC 12 4C AC         [24] 1697 	lcall	_transmit_tcp_packet
                                   1698 ;	trial_webserver.c:205: connectionState = ACK_SENT;
      0053CF 90 14 93         [24] 1699 	mov	dptr,#_connectionState
      0053D2 74 05            [12] 1700 	mov	a,#0x05
      0053D4 F0               [24] 1701 	movx	@dptr,a
                                   1702 ;	trial_webserver.c:206: }
      0053D5 22               [24] 1703 	ret
                                   1704 ;------------------------------------------------------------
                                   1705 ;Allocation info for local variables in function 'makeTcpSynAck'
                                   1706 ;------------------------------------------------------------
                                   1707 ;device_mac                Allocated with name '_makeTcpSynAck_device_mac_10000_129'
                                   1708 ;target_mac                Allocated with name '_makeTcpSynAck_target_mac_10000_129'
                                   1709 ;device_ip                 Allocated with name '_makeTcpSynAck_device_ip_10000_129'
                                   1710 ;target_ip                 Allocated with name '_makeTcpSynAck_target_ip_10000_129'
                                   1711 ;srcPort                   Allocated with name '_makeTcpSynAck_srcPort_10001_130'
                                   1712 ;dstPort                   Allocated with name '_makeTcpSynAck_dstPort_10001_130'
                                   1713 ;clientSeqNum              Allocated with name '_makeTcpSynAck_clientSeqNum_10002_131'
                                   1714 ;serverSeqNum              Allocated with name '_makeTcpSynAck_serverSeqNum_10002_131'
                                   1715 ;ackNum                    Allocated with name '_makeTcpSynAck_ackNum_10002_131'
                                   1716 ;totalLength               Allocated with name '_makeTcpSynAck_totalLength_10003_132'
                                   1717 ;------------------------------------------------------------
                                   1718 ;	trial_webserver.c:208: void makeTcpSynAck() {
                                   1719 ;	-----------------------------------------
                                   1720 ;	 function makeTcpSynAck
                                   1721 ;	-----------------------------------------
      0053D6                       1722 _makeTcpSynAck:
                                   1723 ;	trial_webserver.c:209: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      0053D6 90 0F D7         [24] 1724 	mov	dptr,#_makeTcpSynAck_device_mac_10000_129
      0053D9 74 02            [12] 1725 	mov	a,#0x02
      0053DB F0               [24] 1726 	movx	@dptr,a
      0053DC 90 0F D8         [24] 1727 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0001)
      0053DF 74 11            [12] 1728 	mov	a,#0x11
      0053E1 F0               [24] 1729 	movx	@dptr,a
      0053E2 90 0F D9         [24] 1730 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0002)
      0053E5 23               [12] 1731 	rl	a
      0053E6 F0               [24] 1732 	movx	@dptr,a
      0053E7 90 0F DA         [24] 1733 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0003)
      0053EA 74 33            [12] 1734 	mov	a,#0x33
      0053EC F0               [24] 1735 	movx	@dptr,a
      0053ED 90 0F DB         [24] 1736 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0004)
      0053F0 74 44            [12] 1737 	mov	a,#0x44
      0053F2 F0               [24] 1738 	movx	@dptr,a
      0053F3 90 0F DC         [24] 1739 	mov	dptr,#(_makeTcpSynAck_device_mac_10000_129 + 0x0005)
      0053F6 74 55            [12] 1740 	mov	a,#0x55
      0053F8 F0               [24] 1741 	movx	@dptr,a
                                   1742 ;	trial_webserver.c:210: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      0053F9 90 0F DD         [24] 1743 	mov	dptr,#_makeTcpSynAck_target_mac_10000_129
      0053FC 74 F8            [12] 1744 	mov	a,#0xf8
      0053FE F0               [24] 1745 	movx	@dptr,a
      0053FF 90 0F DE         [24] 1746 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0001)
      005402 74 75            [12] 1747 	mov	a,#0x75
      005404 F0               [24] 1748 	movx	@dptr,a
      005405 90 0F DF         [24] 1749 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0002)
      005408 74 A4            [12] 1750 	mov	a,#0xa4
      00540A F0               [24] 1751 	movx	@dptr,a
      00540B 90 0F E0         [24] 1752 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0003)
      00540E 74 8C            [12] 1753 	mov	a,#0x8c
      005410 F0               [24] 1754 	movx	@dptr,a
      005411 90 0F E1         [24] 1755 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0004)
      005414 74 41            [12] 1756 	mov	a,#0x41
      005416 F0               [24] 1757 	movx	@dptr,a
      005417 90 0F E2         [24] 1758 	mov	dptr,#(_makeTcpSynAck_target_mac_10000_129 + 0x0005)
      00541A 74 31            [12] 1759 	mov	a,#0x31
      00541C F0               [24] 1760 	movx	@dptr,a
                                   1761 ;	trial_webserver.c:211: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      00541D 90 0F E3         [24] 1762 	mov	dptr,#_makeTcpSynAck_device_ip_10000_129
      005420 74 C0            [12] 1763 	mov	a,#0xc0
      005422 F0               [24] 1764 	movx	@dptr,a
      005423 90 0F E4         [24] 1765 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0001)
      005426 74 A8            [12] 1766 	mov	a,#0xa8
      005428 F0               [24] 1767 	movx	@dptr,a
      005429 90 0F E5         [24] 1768 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0002)
      00542C 74 01            [12] 1769 	mov	a,#0x01
      00542E F0               [24] 1770 	movx	@dptr,a
      00542F 90 0F E6         [24] 1771 	mov	dptr,#(_makeTcpSynAck_device_ip_10000_129 + 0x0003)
      005432 74 64            [12] 1772 	mov	a,#0x64
      005434 F0               [24] 1773 	movx	@dptr,a
                                   1774 ;	trial_webserver.c:212: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      005435 90 0F E7         [24] 1775 	mov	dptr,#_makeTcpSynAck_target_ip_10000_129
      005438 74 C0            [12] 1776 	mov	a,#0xc0
      00543A F0               [24] 1777 	movx	@dptr,a
      00543B 90 0F E8         [24] 1778 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0001)
      00543E 74 A8            [12] 1779 	mov	a,#0xa8
      005440 F0               [24] 1780 	movx	@dptr,a
      005441 90 0F E9         [24] 1781 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0002)
      005444 74 01            [12] 1782 	mov	a,#0x01
      005446 F0               [24] 1783 	movx	@dptr,a
      005447 90 0F EA         [24] 1784 	mov	dptr,#(_makeTcpSynAck_target_ip_10000_129 + 0x0003)
      00544A F0               [24] 1785 	movx	@dptr,a
                                   1786 ;	trial_webserver.c:213: printf("makeTcpSynAck\n\r");
      00544B 74 5E            [12] 1787 	mov	a,#___str_2
      00544D C0 E0            [24] 1788 	push	acc
      00544F 74 79            [12] 1789 	mov	a,#(___str_2 >> 8)
      005451 C0 E0            [24] 1790 	push	acc
      005453 74 80            [12] 1791 	mov	a,#0x80
      005455 C0 E0            [24] 1792 	push	acc
      005457 12 64 16         [24] 1793 	lcall	_printf
      00545A 15 81            [12] 1794 	dec	sp
      00545C 15 81            [12] 1795 	dec	sp
      00545E 15 81            [12] 1796 	dec	sp
                                   1797 ;	trial_webserver.c:216: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      005460 90 10 42         [24] 1798 	mov	dptr,#_memmove_PARM_2
      005463 74 BF            [12] 1799 	mov	a,#_buffer
      005465 F0               [24] 1800 	movx	@dptr,a
      005466 74 09            [12] 1801 	mov	a,#(_buffer >> 8)
      005468 A3               [24] 1802 	inc	dptr
      005469 F0               [24] 1803 	movx	@dptr,a
      00546A E4               [12] 1804 	clr	a
      00546B A3               [24] 1805 	inc	dptr
      00546C F0               [24] 1806 	movx	@dptr,a
      00546D 90 10 45         [24] 1807 	mov	dptr,#_memmove_PARM_3
      005470 74 36            [12] 1808 	mov	a,#0x36
      005472 F0               [24] 1809 	movx	@dptr,a
      005473 E4               [12] 1810 	clr	a
      005474 A3               [24] 1811 	inc	dptr
      005475 F0               [24] 1812 	movx	@dptr,a
      005476 90 09 C0         [24] 1813 	mov	dptr,#(_buffer + 0x0001)
      005479 F5 F0            [12] 1814 	mov	b,a
      00547B 12 5E E0         [24] 1815 	lcall	_memmove
                                   1816 ;	trial_webserver.c:217: buffer[0] = 0x0E;
      00547E 90 09 BF         [24] 1817 	mov	dptr,#_buffer
      005481 74 0E            [12] 1818 	mov	a,#0x0e
      005483 F0               [24] 1819 	movx	@dptr,a
                                   1820 ;	trial_webserver.c:219: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      005484 90 10 36         [24] 1821 	mov	dptr,#___memcpy_PARM_2
      005487 74 C6            [12] 1822 	mov	a,#(_buffer + 0x0007)
      005489 F0               [24] 1823 	movx	@dptr,a
      00548A 74 09            [12] 1824 	mov	a,#((_buffer + 0x0007) >> 8)
      00548C A3               [24] 1825 	inc	dptr
      00548D F0               [24] 1826 	movx	@dptr,a
      00548E E4               [12] 1827 	clr	a
      00548F A3               [24] 1828 	inc	dptr
      005490 F0               [24] 1829 	movx	@dptr,a
      005491 90 10 39         [24] 1830 	mov	dptr,#___memcpy_PARM_3
      005494 74 06            [12] 1831 	mov	a,#0x06
      005496 F0               [24] 1832 	movx	@dptr,a
      005497 E4               [12] 1833 	clr	a
      005498 A3               [24] 1834 	inc	dptr
      005499 F0               [24] 1835 	movx	@dptr,a
      00549A 90 09 C0         [24] 1836 	mov	dptr,#(_buffer + 0x0001)
      00549D F5 F0            [12] 1837 	mov	b,a
      00549F 12 5E 29         [24] 1838 	lcall	___memcpy
                                   1839 ;	trial_webserver.c:220: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      0054A2 90 10 36         [24] 1840 	mov	dptr,#___memcpy_PARM_2
      0054A5 74 D7            [12] 1841 	mov	a,#_makeTcpSynAck_device_mac_10000_129
      0054A7 F0               [24] 1842 	movx	@dptr,a
      0054A8 74 0F            [12] 1843 	mov	a,#(_makeTcpSynAck_device_mac_10000_129 >> 8)
      0054AA A3               [24] 1844 	inc	dptr
      0054AB F0               [24] 1845 	movx	@dptr,a
      0054AC E4               [12] 1846 	clr	a
      0054AD A3               [24] 1847 	inc	dptr
      0054AE F0               [24] 1848 	movx	@dptr,a
      0054AF 90 10 39         [24] 1849 	mov	dptr,#___memcpy_PARM_3
      0054B2 74 06            [12] 1850 	mov	a,#0x06
      0054B4 F0               [24] 1851 	movx	@dptr,a
      0054B5 E4               [12] 1852 	clr	a
      0054B6 A3               [24] 1853 	inc	dptr
      0054B7 F0               [24] 1854 	movx	@dptr,a
      0054B8 90 09 C6         [24] 1855 	mov	dptr,#(_buffer + 0x0007)
      0054BB F5 F0            [12] 1856 	mov	b,a
      0054BD 12 5E 29         [24] 1857 	lcall	___memcpy
                                   1858 ;	trial_webserver.c:223: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      0054C0 90 10 36         [24] 1859 	mov	dptr,#___memcpy_PARM_2
      0054C3 74 DA            [12] 1860 	mov	a,#(_buffer + 0x001b)
      0054C5 F0               [24] 1861 	movx	@dptr,a
      0054C6 74 09            [12] 1862 	mov	a,#((_buffer + 0x001b) >> 8)
      0054C8 A3               [24] 1863 	inc	dptr
      0054C9 F0               [24] 1864 	movx	@dptr,a
      0054CA E4               [12] 1865 	clr	a
      0054CB A3               [24] 1866 	inc	dptr
      0054CC F0               [24] 1867 	movx	@dptr,a
      0054CD 90 10 39         [24] 1868 	mov	dptr,#___memcpy_PARM_3
      0054D0 74 04            [12] 1869 	mov	a,#0x04
      0054D2 F0               [24] 1870 	movx	@dptr,a
      0054D3 E4               [12] 1871 	clr	a
      0054D4 A3               [24] 1872 	inc	dptr
      0054D5 F0               [24] 1873 	movx	@dptr,a
      0054D6 90 09 DE         [24] 1874 	mov	dptr,#(_buffer + 0x001f)
      0054D9 F5 F0            [12] 1875 	mov	b,a
      0054DB 12 5E 29         [24] 1876 	lcall	___memcpy
                                   1877 ;	trial_webserver.c:224: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      0054DE 90 10 36         [24] 1878 	mov	dptr,#___memcpy_PARM_2
      0054E1 74 E3            [12] 1879 	mov	a,#_makeTcpSynAck_device_ip_10000_129
      0054E3 F0               [24] 1880 	movx	@dptr,a
      0054E4 74 0F            [12] 1881 	mov	a,#(_makeTcpSynAck_device_ip_10000_129 >> 8)
      0054E6 A3               [24] 1882 	inc	dptr
      0054E7 F0               [24] 1883 	movx	@dptr,a
      0054E8 E4               [12] 1884 	clr	a
      0054E9 A3               [24] 1885 	inc	dptr
      0054EA F0               [24] 1886 	movx	@dptr,a
      0054EB 90 10 39         [24] 1887 	mov	dptr,#___memcpy_PARM_3
      0054EE 74 04            [12] 1888 	mov	a,#0x04
      0054F0 F0               [24] 1889 	movx	@dptr,a
      0054F1 E4               [12] 1890 	clr	a
      0054F2 A3               [24] 1891 	inc	dptr
      0054F3 F0               [24] 1892 	movx	@dptr,a
      0054F4 90 09 DA         [24] 1893 	mov	dptr,#(_buffer + 0x001b)
      0054F7 F5 F0            [12] 1894 	mov	b,a
      0054F9 12 5E 29         [24] 1895 	lcall	___memcpy
                                   1896 ;	trial_webserver.c:227: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      0054FC 90 09 E2         [24] 1897 	mov	dptr,#(_buffer + 0x0023)
      0054FF E0               [24] 1898 	movx	a,@dptr
      005500 FE               [12] 1899 	mov	r6,a
      005501 7F 00            [12] 1900 	mov	r7,#0x00
      005503 90 09 E3         [24] 1901 	mov	dptr,#(_buffer + 0x0024)
      005506 E0               [24] 1902 	movx	a,@dptr
      005507 7C 00            [12] 1903 	mov	r4,#0x00
      005509 42 07            [12] 1904 	orl	ar7,a
      00550B EC               [12] 1905 	mov	a,r4
      00550C 42 06            [12] 1906 	orl	ar6,a
                                   1907 ;	trial_webserver.c:229: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      00550E 90 09 E4         [24] 1908 	mov	dptr,#(_buffer + 0x0025)
      005511 E0               [24] 1909 	movx	a,@dptr
      005512 FC               [12] 1910 	mov	r4,a
      005513 7D 00            [12] 1911 	mov	r5,#0x00
      005515 90 09 E5         [24] 1912 	mov	dptr,#(_buffer + 0x0026)
      005518 E0               [24] 1913 	movx	a,@dptr
      005519 7A 00            [12] 1914 	mov	r2,#0x00
      00551B 42 05            [12] 1915 	orl	ar5,a
      00551D EA               [12] 1916 	mov	a,r2
      00551E 42 04            [12] 1917 	orl	ar4,a
                                   1918 ;	trial_webserver.c:231: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      005520 8C 03            [24] 1919 	mov	ar3,r4
      005522 90 09 E2         [24] 1920 	mov	dptr,#(_buffer + 0x0023)
      005525 EB               [12] 1921 	mov	a,r3
      005526 F0               [24] 1922 	movx	@dptr,a
                                   1923 ;	trial_webserver.c:232: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      005527 90 09 E3         [24] 1924 	mov	dptr,#(_buffer + 0x0024)
      00552A ED               [12] 1925 	mov	a,r5
      00552B F0               [24] 1926 	movx	@dptr,a
                                   1927 ;	trial_webserver.c:233: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      00552C 8E 05            [24] 1928 	mov	ar5,r6
      00552E 90 09 E4         [24] 1929 	mov	dptr,#(_buffer + 0x0025)
      005531 ED               [12] 1930 	mov	a,r5
      005532 F0               [24] 1931 	movx	@dptr,a
                                   1932 ;	trial_webserver.c:234: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      005533 90 09 E5         [24] 1933 	mov	dptr,#(_buffer + 0x0026)
      005536 EF               [12] 1934 	mov	a,r7
      005537 F0               [24] 1935 	movx	@dptr,a
                                   1936 ;	trial_webserver.c:237: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
      005538 90 09 E8         [24] 1937 	mov	dptr,#(_buffer + 0x0029)
      00553B E0               [24] 1938 	movx	a,@dptr
      00553C FE               [12] 1939 	mov	r6,a
      00553D 7F 00            [12] 1940 	mov	r7,#0x00
      00553F 90 09 E9         [24] 1941 	mov	dptr,#(_buffer + 0x002a)
      005542 E0               [24] 1942 	movx	a,@dptr
      005543 7C 00            [12] 1943 	mov	r4,#0x00
      005545 42 07            [12] 1944 	orl	ar7,a
      005547 EC               [12] 1945 	mov	a,r4
      005548 42 06            [12] 1946 	orl	ar6,a
      00554A EE               [12] 1947 	mov	a,r6
      00554B 33               [12] 1948 	rlc	a
      00554C 95 E0            [12] 1949 	subb	a,acc
      00554E FD               [12] 1950 	mov	r5,a
      00554F FC               [12] 1951 	mov	r4,a
                                   1952 ;	trial_webserver.c:241: uint32_t ackNum = clientSeqNum + 1;
      005550 0F               [12] 1953 	inc	r7
      005551 BF 00 09         [24] 1954 	cjne	r7,#0x00,00103$
      005554 0E               [12] 1955 	inc	r6
      005555 BE 00 05         [24] 1956 	cjne	r6,#0x00,00103$
      005558 0D               [12] 1957 	inc	r5
      005559 BD 00 01         [24] 1958 	cjne	r5,#0x00,00103$
      00555C 0C               [12] 1959 	inc	r4
      00555D                       1960 00103$:
                                   1961 ;	trial_webserver.c:243: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      00555D 90 09 E6         [24] 1962 	mov	dptr,#(_buffer + 0x0027)
      005560 E4               [12] 1963 	clr	a
      005561 F0               [24] 1964 	movx	@dptr,a
                                   1965 ;	trial_webserver.c:244: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      005562 90 09 E7         [24] 1966 	mov	dptr,#(_buffer + 0x0028)
      005565 F0               [24] 1967 	movx	@dptr,a
                                   1968 ;	trial_webserver.c:245: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      005566 90 09 E8         [24] 1969 	mov	dptr,#(_buffer + 0x0029)
      005569 74 03            [12] 1970 	mov	a,#0x03
      00556B F0               [24] 1971 	movx	@dptr,a
                                   1972 ;	trial_webserver.c:246: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      00556C 90 09 E9         [24] 1973 	mov	dptr,#(_buffer + 0x002a)
      00556F 74 E8            [12] 1974 	mov	a,#0xe8
      005571 F0               [24] 1975 	movx	@dptr,a
                                   1976 ;	trial_webserver.c:247: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      005572 8C 03            [24] 1977 	mov	ar3,r4
      005574 90 09 EA         [24] 1978 	mov	dptr,#(_buffer + 0x002b)
      005577 EB               [12] 1979 	mov	a,r3
      005578 F0               [24] 1980 	movx	@dptr,a
                                   1981 ;	trial_webserver.c:248: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      005579 8D 03            [24] 1982 	mov	ar3,r5
      00557B 90 09 EB         [24] 1983 	mov	dptr,#(_buffer + 0x002c)
      00557E EB               [12] 1984 	mov	a,r3
      00557F F0               [24] 1985 	movx	@dptr,a
                                   1986 ;	trial_webserver.c:249: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      005580 8E 03            [24] 1987 	mov	ar3,r6
      005582 90 09 EC         [24] 1988 	mov	dptr,#(_buffer + 0x002d)
      005585 EB               [12] 1989 	mov	a,r3
      005586 F0               [24] 1990 	movx	@dptr,a
                                   1991 ;	trial_webserver.c:250: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      005587 90 09 ED         [24] 1992 	mov	dptr,#(_buffer + 0x002e)
      00558A EF               [12] 1993 	mov	a,r7
      00558B F0               [24] 1994 	movx	@dptr,a
                                   1995 ;	trial_webserver.c:254: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      00558C 90 09 D0         [24] 1996 	mov	dptr,#(_buffer + 0x0011)
      00558F E4               [12] 1997 	clr	a
      005590 F0               [24] 1998 	movx	@dptr,a
                                   1999 ;	trial_webserver.c:255: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005591 90 09 D1         [24] 2000 	mov	dptr,#(_buffer + 0x0012)
      005594 74 28            [12] 2001 	mov	a,#0x28
      005596 F0               [24] 2002 	movx	@dptr,a
                                   2003 ;	trial_webserver.c:258: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
      005597 90 09 EF         [24] 2004 	mov	dptr,#(_buffer + 0x0030)
      00559A 74 12            [12] 2005 	mov	a,#0x12
      00559C F0               [24] 2006 	movx	@dptr,a
                                   2007 ;	trial_webserver.c:259: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      00559D 90 09 F0         [24] 2008 	mov	dptr,#(_buffer + 0x0031)
      0055A0 74 FF            [12] 2009 	mov	a,#0xff
      0055A2 F0               [24] 2010 	movx	@dptr,a
                                   2011 ;	trial_webserver.c:260: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      0055A3 90 09 F1         [24] 2012 	mov	dptr,#(_buffer + 0x0032)
      0055A6 F0               [24] 2013 	movx	@dptr,a
                                   2014 ;	trial_webserver.c:261: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      0055A7 90 09 EE         [24] 2015 	mov	dptr,#(_buffer + 0x002f)
      0055AA 74 50            [12] 2016 	mov	a,#0x50
      0055AC F0               [24] 2017 	movx	@dptr,a
                                   2018 ;	trial_webserver.c:264: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0055AD 90 09 C0         [24] 2019 	mov	dptr,#(_buffer + 0x0001)
      0055B0 75 F0 00         [24] 2020 	mov	b, #0x00
      0055B3 12 3F 25         [24] 2021 	lcall	_calculateIPChecksum
                                   2022 ;	trial_webserver.c:265: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      0055B6 90 09 C0         [24] 2023 	mov	dptr,#(_buffer + 0x0001)
      0055B9 75 F0 00         [24] 2024 	mov	b, #0x00
      0055BC 12 40 8F         [24] 2025 	lcall	_calculateTcpChecksum
                                   2026 ;	trial_webserver.c:269: transmit_tcp_packet(buffer, 1 + 54);
      0055BF 90 09 B2         [24] 2027 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0055C2 74 37            [12] 2028 	mov	a,#0x37
      0055C4 F0               [24] 2029 	movx	@dptr,a
      0055C5 E4               [12] 2030 	clr	a
      0055C6 A3               [24] 2031 	inc	dptr
      0055C7 F0               [24] 2032 	movx	@dptr,a
      0055C8 90 09 BF         [24] 2033 	mov	dptr,#_buffer
      0055CB F5 F0            [12] 2034 	mov	b,a
      0055CD 12 4C AC         [24] 2035 	lcall	_transmit_tcp_packet
                                   2036 ;	trial_webserver.c:272: connectionState = SYN_RECEIVED;
      0055D0 90 14 93         [24] 2037 	mov	dptr,#_connectionState
      0055D3 74 01            [12] 2038 	mov	a,#0x01
      0055D5 F0               [24] 2039 	movx	@dptr,a
                                   2040 ;	trial_webserver.c:273: }
      0055D6 22               [24] 2041 	ret
                                   2042 ;------------------------------------------------------------
                                   2043 ;Allocation info for local variables in function 'makeTcpAck'
                                   2044 ;------------------------------------------------------------
                                   2045 ;device_mac                Allocated with name '_makeTcpAck_device_mac_10000_133'
                                   2046 ;target_mac                Allocated with name '_makeTcpAck_target_mac_10000_133'
                                   2047 ;device_ip                 Allocated with name '_makeTcpAck_device_ip_10000_133'
                                   2048 ;target_ip                 Allocated with name '_makeTcpAck_target_ip_10000_133'
                                   2049 ;------------------------------------------------------------
                                   2050 ;	trial_webserver.c:276: void makeTcpAck() {
                                   2051 ;	-----------------------------------------
                                   2052 ;	 function makeTcpAck
                                   2053 ;	-----------------------------------------
      0055D7                       2054 _makeTcpAck:
                                   2055 ;	trial_webserver.c:277: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      0055D7 90 0F EB         [24] 2056 	mov	dptr,#_makeTcpAck_device_mac_10000_133
      0055DA 74 02            [12] 2057 	mov	a,#0x02
      0055DC F0               [24] 2058 	movx	@dptr,a
      0055DD 90 0F EC         [24] 2059 	mov	dptr,#(_makeTcpAck_device_mac_10000_133 + 0x0001)
      0055E0 74 11            [12] 2060 	mov	a,#0x11
      0055E2 F0               [24] 2061 	movx	@dptr,a
      0055E3 90 0F ED         [24] 2062 	mov	dptr,#(_makeTcpAck_device_mac_10000_133 + 0x0002)
      0055E6 23               [12] 2063 	rl	a
      0055E7 F0               [24] 2064 	movx	@dptr,a
      0055E8 90 0F EE         [24] 2065 	mov	dptr,#(_makeTcpAck_device_mac_10000_133 + 0x0003)
      0055EB 74 33            [12] 2066 	mov	a,#0x33
      0055ED F0               [24] 2067 	movx	@dptr,a
      0055EE 90 0F EF         [24] 2068 	mov	dptr,#(_makeTcpAck_device_mac_10000_133 + 0x0004)
      0055F1 74 44            [12] 2069 	mov	a,#0x44
      0055F3 F0               [24] 2070 	movx	@dptr,a
      0055F4 90 0F F0         [24] 2071 	mov	dptr,#(_makeTcpAck_device_mac_10000_133 + 0x0005)
      0055F7 74 55            [12] 2072 	mov	a,#0x55
      0055F9 F0               [24] 2073 	movx	@dptr,a
                                   2074 ;	trial_webserver.c:278: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      0055FA 90 0F F1         [24] 2075 	mov	dptr,#_makeTcpAck_target_mac_10000_133
      0055FD 74 F8            [12] 2076 	mov	a,#0xf8
      0055FF F0               [24] 2077 	movx	@dptr,a
      005600 90 0F F2         [24] 2078 	mov	dptr,#(_makeTcpAck_target_mac_10000_133 + 0x0001)
      005603 74 75            [12] 2079 	mov	a,#0x75
      005605 F0               [24] 2080 	movx	@dptr,a
      005606 90 0F F3         [24] 2081 	mov	dptr,#(_makeTcpAck_target_mac_10000_133 + 0x0002)
      005609 74 A4            [12] 2082 	mov	a,#0xa4
      00560B F0               [24] 2083 	movx	@dptr,a
      00560C 90 0F F4         [24] 2084 	mov	dptr,#(_makeTcpAck_target_mac_10000_133 + 0x0003)
      00560F 74 8C            [12] 2085 	mov	a,#0x8c
      005611 F0               [24] 2086 	movx	@dptr,a
      005612 90 0F F5         [24] 2087 	mov	dptr,#(_makeTcpAck_target_mac_10000_133 + 0x0004)
      005615 74 41            [12] 2088 	mov	a,#0x41
      005617 F0               [24] 2089 	movx	@dptr,a
      005618 90 0F F6         [24] 2090 	mov	dptr,#(_makeTcpAck_target_mac_10000_133 + 0x0005)
      00561B 74 31            [12] 2091 	mov	a,#0x31
      00561D F0               [24] 2092 	movx	@dptr,a
                                   2093 ;	trial_webserver.c:279: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      00561E 90 0F F7         [24] 2094 	mov	dptr,#_makeTcpAck_device_ip_10000_133
      005621 74 C0            [12] 2095 	mov	a,#0xc0
      005623 F0               [24] 2096 	movx	@dptr,a
      005624 90 0F F8         [24] 2097 	mov	dptr,#(_makeTcpAck_device_ip_10000_133 + 0x0001)
      005627 74 A8            [12] 2098 	mov	a,#0xa8
      005629 F0               [24] 2099 	movx	@dptr,a
      00562A 90 0F F9         [24] 2100 	mov	dptr,#(_makeTcpAck_device_ip_10000_133 + 0x0002)
      00562D 74 01            [12] 2101 	mov	a,#0x01
      00562F F0               [24] 2102 	movx	@dptr,a
      005630 90 0F FA         [24] 2103 	mov	dptr,#(_makeTcpAck_device_ip_10000_133 + 0x0003)
      005633 74 64            [12] 2104 	mov	a,#0x64
      005635 F0               [24] 2105 	movx	@dptr,a
                                   2106 ;	trial_webserver.c:280: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      005636 90 0F FB         [24] 2107 	mov	dptr,#_makeTcpAck_target_ip_10000_133
      005639 74 C0            [12] 2108 	mov	a,#0xc0
      00563B F0               [24] 2109 	movx	@dptr,a
      00563C 90 0F FC         [24] 2110 	mov	dptr,#(_makeTcpAck_target_ip_10000_133 + 0x0001)
      00563F 74 A8            [12] 2111 	mov	a,#0xa8
      005641 F0               [24] 2112 	movx	@dptr,a
      005642 90 0F FD         [24] 2113 	mov	dptr,#(_makeTcpAck_target_ip_10000_133 + 0x0002)
      005645 74 01            [12] 2114 	mov	a,#0x01
      005647 F0               [24] 2115 	movx	@dptr,a
      005648 90 0F FE         [24] 2116 	mov	dptr,#(_makeTcpAck_target_ip_10000_133 + 0x0003)
      00564B F0               [24] 2117 	movx	@dptr,a
                                   2118 ;	trial_webserver.c:281: printf("tcpack\n\r");
      00564C 74 6E            [12] 2119 	mov	a,#___str_3
      00564E C0 E0            [24] 2120 	push	acc
      005650 74 79            [12] 2121 	mov	a,#(___str_3 >> 8)
      005652 C0 E0            [24] 2122 	push	acc
      005654 74 80            [12] 2123 	mov	a,#0x80
      005656 C0 E0            [24] 2124 	push	acc
      005658 12 64 16         [24] 2125 	lcall	_printf
      00565B 15 81            [12] 2126 	dec	sp
      00565D 15 81            [12] 2127 	dec	sp
      00565F 15 81            [12] 2128 	dec	sp
                                   2129 ;	trial_webserver.c:282: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      005661 90 10 42         [24] 2130 	mov	dptr,#_memmove_PARM_2
      005664 74 BF            [12] 2131 	mov	a,#_buffer
      005666 F0               [24] 2132 	movx	@dptr,a
      005667 74 09            [12] 2133 	mov	a,#(_buffer >> 8)
      005669 A3               [24] 2134 	inc	dptr
      00566A F0               [24] 2135 	movx	@dptr,a
      00566B E4               [12] 2136 	clr	a
      00566C A3               [24] 2137 	inc	dptr
      00566D F0               [24] 2138 	movx	@dptr,a
      00566E 90 10 45         [24] 2139 	mov	dptr,#_memmove_PARM_3
      005671 74 36            [12] 2140 	mov	a,#0x36
      005673 F0               [24] 2141 	movx	@dptr,a
      005674 E4               [12] 2142 	clr	a
      005675 A3               [24] 2143 	inc	dptr
      005676 F0               [24] 2144 	movx	@dptr,a
      005677 90 09 C0         [24] 2145 	mov	dptr,#(_buffer + 0x0001)
      00567A F5 F0            [12] 2146 	mov	b,a
      00567C 12 5E E0         [24] 2147 	lcall	_memmove
                                   2148 ;	trial_webserver.c:285: buffer[0] = 0x0E;
      00567F 90 09 BF         [24] 2149 	mov	dptr,#_buffer
      005682 74 0E            [12] 2150 	mov	a,#0x0e
      005684 F0               [24] 2151 	movx	@dptr,a
                                   2152 ;	trial_webserver.c:286: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
      005685 90 09 EF         [24] 2153 	mov	dptr,#(_buffer + 0x0030)
      005688 74 10            [12] 2154 	mov	a,#0x10
      00568A F0               [24] 2155 	movx	@dptr,a
                                   2156 ;	trial_webserver.c:287: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
      00568B 90 09 B2         [24] 2157 	mov	dptr,#_transmit_tcp_packet_PARM_2
      00568E 74 37            [12] 2158 	mov	a,#0x37
      005690 F0               [24] 2159 	movx	@dptr,a
      005691 E4               [12] 2160 	clr	a
      005692 A3               [24] 2161 	inc	dptr
      005693 F0               [24] 2162 	movx	@dptr,a
      005694 90 09 BF         [24] 2163 	mov	dptr,#_buffer
      005697 F5 F0            [12] 2164 	mov	b,a
                                   2165 ;	trial_webserver.c:288: }
      005699 02 4C AC         [24] 2166 	ljmp	_transmit_tcp_packet
                                   2167 ;------------------------------------------------------------
                                   2168 ;Allocation info for local variables in function 'makeTcpFinPshAck'
                                   2169 ;------------------------------------------------------------
                                   2170 ;device_mac                Allocated with name '_makeTcpFinPshAck_device_mac_10000_134'
                                   2171 ;target_mac                Allocated with name '_makeTcpFinPshAck_target_mac_10000_134'
                                   2172 ;device_ip                 Allocated with name '_makeTcpFinPshAck_device_ip_10000_134'
                                   2173 ;target_ip                 Allocated with name '_makeTcpFinPshAck_target_ip_10000_134'
                                   2174 ;srcPort                   Allocated with name '_makeTcpFinPshAck_srcPort_10001_135'
                                   2175 ;dstPort                   Allocated with name '_makeTcpFinPshAck_dstPort_10001_135'
                                   2176 ;serverSeqNum              Allocated with name '_makeTcpFinPshAck_serverSeqNum_10002_136'
                                   2177 ;ackNum                    Allocated with name '_makeTcpFinPshAck_ackNum_10002_136'
                                   2178 ;html_payload              Allocated with name '_makeTcpFinPshAck_html_payload_10003_137'
                                   2179 ;dataLength                Allocated with name '_makeTcpFinPshAck_dataLength_10003_137'
                                   2180 ;totalLength               Allocated with name '_makeTcpFinPshAck_totalLength_10003_137'
                                   2181 ;------------------------------------------------------------
                                   2182 ;	trial_webserver.c:290: void makeTcpFinPshAck() {
                                   2183 ;	-----------------------------------------
                                   2184 ;	 function makeTcpFinPshAck
                                   2185 ;	-----------------------------------------
      00569C                       2186 _makeTcpFinPshAck:
                                   2187 ;	trial_webserver.c:291: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      00569C 90 0F FF         [24] 2188 	mov	dptr,#_makeTcpFinPshAck_device_mac_10000_134
      00569F 74 02            [12] 2189 	mov	a,#0x02
      0056A1 F0               [24] 2190 	movx	@dptr,a
      0056A2 90 10 00         [24] 2191 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_134 + 0x0001)
      0056A5 74 11            [12] 2192 	mov	a,#0x11
      0056A7 F0               [24] 2193 	movx	@dptr,a
      0056A8 90 10 01         [24] 2194 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_134 + 0x0002)
      0056AB 23               [12] 2195 	rl	a
      0056AC F0               [24] 2196 	movx	@dptr,a
      0056AD 90 10 02         [24] 2197 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_134 + 0x0003)
      0056B0 74 33            [12] 2198 	mov	a,#0x33
      0056B2 F0               [24] 2199 	movx	@dptr,a
      0056B3 90 10 03         [24] 2200 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_134 + 0x0004)
      0056B6 74 44            [12] 2201 	mov	a,#0x44
      0056B8 F0               [24] 2202 	movx	@dptr,a
      0056B9 90 10 04         [24] 2203 	mov	dptr,#(_makeTcpFinPshAck_device_mac_10000_134 + 0x0005)
      0056BC 74 55            [12] 2204 	mov	a,#0x55
      0056BE F0               [24] 2205 	movx	@dptr,a
                                   2206 ;	trial_webserver.c:292: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      0056BF 90 10 05         [24] 2207 	mov	dptr,#_makeTcpFinPshAck_target_mac_10000_134
      0056C2 74 F8            [12] 2208 	mov	a,#0xf8
      0056C4 F0               [24] 2209 	movx	@dptr,a
      0056C5 90 10 06         [24] 2210 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_134 + 0x0001)
      0056C8 74 75            [12] 2211 	mov	a,#0x75
      0056CA F0               [24] 2212 	movx	@dptr,a
      0056CB 90 10 07         [24] 2213 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_134 + 0x0002)
      0056CE 74 A4            [12] 2214 	mov	a,#0xa4
      0056D0 F0               [24] 2215 	movx	@dptr,a
      0056D1 90 10 08         [24] 2216 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_134 + 0x0003)
      0056D4 74 8C            [12] 2217 	mov	a,#0x8c
      0056D6 F0               [24] 2218 	movx	@dptr,a
      0056D7 90 10 09         [24] 2219 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_134 + 0x0004)
      0056DA 74 41            [12] 2220 	mov	a,#0x41
      0056DC F0               [24] 2221 	movx	@dptr,a
      0056DD 90 10 0A         [24] 2222 	mov	dptr,#(_makeTcpFinPshAck_target_mac_10000_134 + 0x0005)
      0056E0 74 31            [12] 2223 	mov	a,#0x31
      0056E2 F0               [24] 2224 	movx	@dptr,a
                                   2225 ;	trial_webserver.c:293: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      0056E3 90 10 0B         [24] 2226 	mov	dptr,#_makeTcpFinPshAck_device_ip_10000_134
      0056E6 74 C0            [12] 2227 	mov	a,#0xc0
      0056E8 F0               [24] 2228 	movx	@dptr,a
      0056E9 90 10 0C         [24] 2229 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_134 + 0x0001)
      0056EC 74 A8            [12] 2230 	mov	a,#0xa8
      0056EE F0               [24] 2231 	movx	@dptr,a
      0056EF 90 10 0D         [24] 2232 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_134 + 0x0002)
      0056F2 74 01            [12] 2233 	mov	a,#0x01
      0056F4 F0               [24] 2234 	movx	@dptr,a
      0056F5 90 10 0E         [24] 2235 	mov	dptr,#(_makeTcpFinPshAck_device_ip_10000_134 + 0x0003)
      0056F8 74 64            [12] 2236 	mov	a,#0x64
      0056FA F0               [24] 2237 	movx	@dptr,a
                                   2238 ;	trial_webserver.c:294: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      0056FB 90 10 0F         [24] 2239 	mov	dptr,#_makeTcpFinPshAck_target_ip_10000_134
      0056FE 74 C0            [12] 2240 	mov	a,#0xc0
      005700 F0               [24] 2241 	movx	@dptr,a
      005701 90 10 10         [24] 2242 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_134 + 0x0001)
      005704 74 A8            [12] 2243 	mov	a,#0xa8
      005706 F0               [24] 2244 	movx	@dptr,a
      005707 90 10 11         [24] 2245 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_134 + 0x0002)
      00570A 74 01            [12] 2246 	mov	a,#0x01
      00570C F0               [24] 2247 	movx	@dptr,a
      00570D 90 10 12         [24] 2248 	mov	dptr,#(_makeTcpFinPshAck_target_ip_10000_134 + 0x0003)
      005710 F0               [24] 2249 	movx	@dptr,a
                                   2250 ;	trial_webserver.c:295: printf("makeTcpFinPshAck\n\r");
      005711 74 F2            [12] 2251 	mov	a,#___str_5
      005713 C0 E0            [24] 2252 	push	acc
      005715 74 7C            [12] 2253 	mov	a,#(___str_5 >> 8)
      005717 C0 E0            [24] 2254 	push	acc
      005719 74 80            [12] 2255 	mov	a,#0x80
      00571B C0 E0            [24] 2256 	push	acc
      00571D 12 64 16         [24] 2257 	lcall	_printf
      005720 15 81            [12] 2258 	dec	sp
      005722 15 81            [12] 2259 	dec	sp
      005724 15 81            [12] 2260 	dec	sp
                                   2261 ;	trial_webserver.c:298: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      005726 90 10 42         [24] 2262 	mov	dptr,#_memmove_PARM_2
      005729 74 BF            [12] 2263 	mov	a,#_buffer
      00572B F0               [24] 2264 	movx	@dptr,a
      00572C 74 09            [12] 2265 	mov	a,#(_buffer >> 8)
      00572E A3               [24] 2266 	inc	dptr
      00572F F0               [24] 2267 	movx	@dptr,a
      005730 E4               [12] 2268 	clr	a
      005731 A3               [24] 2269 	inc	dptr
      005732 F0               [24] 2270 	movx	@dptr,a
      005733 90 10 45         [24] 2271 	mov	dptr,#_memmove_PARM_3
      005736 74 36            [12] 2272 	mov	a,#0x36
      005738 F0               [24] 2273 	movx	@dptr,a
      005739 E4               [12] 2274 	clr	a
      00573A A3               [24] 2275 	inc	dptr
      00573B F0               [24] 2276 	movx	@dptr,a
      00573C 90 09 C0         [24] 2277 	mov	dptr,#(_buffer + 0x0001)
      00573F F5 F0            [12] 2278 	mov	b,a
      005741 12 5E E0         [24] 2279 	lcall	_memmove
                                   2280 ;	trial_webserver.c:299: buffer[0] = 0x0E;
      005744 90 09 BF         [24] 2281 	mov	dptr,#_buffer
      005747 74 0E            [12] 2282 	mov	a,#0x0e
      005749 F0               [24] 2283 	movx	@dptr,a
                                   2284 ;	trial_webserver.c:302: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      00574A 90 10 36         [24] 2285 	mov	dptr,#___memcpy_PARM_2
      00574D 74 C6            [12] 2286 	mov	a,#(_buffer + 0x0007)
      00574F F0               [24] 2287 	movx	@dptr,a
      005750 74 09            [12] 2288 	mov	a,#((_buffer + 0x0007) >> 8)
      005752 A3               [24] 2289 	inc	dptr
      005753 F0               [24] 2290 	movx	@dptr,a
      005754 E4               [12] 2291 	clr	a
      005755 A3               [24] 2292 	inc	dptr
      005756 F0               [24] 2293 	movx	@dptr,a
      005757 90 10 39         [24] 2294 	mov	dptr,#___memcpy_PARM_3
      00575A 74 06            [12] 2295 	mov	a,#0x06
      00575C F0               [24] 2296 	movx	@dptr,a
      00575D E4               [12] 2297 	clr	a
      00575E A3               [24] 2298 	inc	dptr
      00575F F0               [24] 2299 	movx	@dptr,a
      005760 90 09 C0         [24] 2300 	mov	dptr,#(_buffer + 0x0001)
      005763 F5 F0            [12] 2301 	mov	b,a
      005765 12 5E 29         [24] 2302 	lcall	___memcpy
                                   2303 ;	trial_webserver.c:303: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      005768 90 10 36         [24] 2304 	mov	dptr,#___memcpy_PARM_2
      00576B 74 FF            [12] 2305 	mov	a,#_makeTcpFinPshAck_device_mac_10000_134
      00576D F0               [24] 2306 	movx	@dptr,a
      00576E 74 0F            [12] 2307 	mov	a,#(_makeTcpFinPshAck_device_mac_10000_134 >> 8)
      005770 A3               [24] 2308 	inc	dptr
      005771 F0               [24] 2309 	movx	@dptr,a
      005772 E4               [12] 2310 	clr	a
      005773 A3               [24] 2311 	inc	dptr
      005774 F0               [24] 2312 	movx	@dptr,a
      005775 90 10 39         [24] 2313 	mov	dptr,#___memcpy_PARM_3
      005778 74 06            [12] 2314 	mov	a,#0x06
      00577A F0               [24] 2315 	movx	@dptr,a
      00577B E4               [12] 2316 	clr	a
      00577C A3               [24] 2317 	inc	dptr
      00577D F0               [24] 2318 	movx	@dptr,a
      00577E 90 09 C6         [24] 2319 	mov	dptr,#(_buffer + 0x0007)
      005781 F5 F0            [12] 2320 	mov	b,a
      005783 12 5E 29         [24] 2321 	lcall	___memcpy
                                   2322 ;	trial_webserver.c:306: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      005786 90 10 36         [24] 2323 	mov	dptr,#___memcpy_PARM_2
      005789 74 DA            [12] 2324 	mov	a,#(_buffer + 0x001b)
      00578B F0               [24] 2325 	movx	@dptr,a
      00578C 74 09            [12] 2326 	mov	a,#((_buffer + 0x001b) >> 8)
      00578E A3               [24] 2327 	inc	dptr
      00578F F0               [24] 2328 	movx	@dptr,a
      005790 E4               [12] 2329 	clr	a
      005791 A3               [24] 2330 	inc	dptr
      005792 F0               [24] 2331 	movx	@dptr,a
      005793 90 10 39         [24] 2332 	mov	dptr,#___memcpy_PARM_3
      005796 74 04            [12] 2333 	mov	a,#0x04
      005798 F0               [24] 2334 	movx	@dptr,a
      005799 E4               [12] 2335 	clr	a
      00579A A3               [24] 2336 	inc	dptr
      00579B F0               [24] 2337 	movx	@dptr,a
      00579C 90 09 DE         [24] 2338 	mov	dptr,#(_buffer + 0x001f)
      00579F F5 F0            [12] 2339 	mov	b,a
      0057A1 12 5E 29         [24] 2340 	lcall	___memcpy
                                   2341 ;	trial_webserver.c:307: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      0057A4 90 10 36         [24] 2342 	mov	dptr,#___memcpy_PARM_2
      0057A7 74 0B            [12] 2343 	mov	a,#_makeTcpFinPshAck_device_ip_10000_134
      0057A9 F0               [24] 2344 	movx	@dptr,a
      0057AA 74 10            [12] 2345 	mov	a,#(_makeTcpFinPshAck_device_ip_10000_134 >> 8)
      0057AC A3               [24] 2346 	inc	dptr
      0057AD F0               [24] 2347 	movx	@dptr,a
      0057AE E4               [12] 2348 	clr	a
      0057AF A3               [24] 2349 	inc	dptr
      0057B0 F0               [24] 2350 	movx	@dptr,a
      0057B1 90 10 39         [24] 2351 	mov	dptr,#___memcpy_PARM_3
      0057B4 74 04            [12] 2352 	mov	a,#0x04
      0057B6 F0               [24] 2353 	movx	@dptr,a
      0057B7 E4               [12] 2354 	clr	a
      0057B8 A3               [24] 2355 	inc	dptr
      0057B9 F0               [24] 2356 	movx	@dptr,a
      0057BA 90 09 DA         [24] 2357 	mov	dptr,#(_buffer + 0x001b)
      0057BD F5 F0            [12] 2358 	mov	b,a
      0057BF 12 5E 29         [24] 2359 	lcall	___memcpy
                                   2360 ;	trial_webserver.c:310: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      0057C2 90 09 E2         [24] 2361 	mov	dptr,#(_buffer + 0x0023)
      0057C5 E0               [24] 2362 	movx	a,@dptr
      0057C6 FE               [12] 2363 	mov	r6,a
      0057C7 7F 00            [12] 2364 	mov	r7,#0x00
      0057C9 90 09 E3         [24] 2365 	mov	dptr,#(_buffer + 0x0024)
      0057CC E0               [24] 2366 	movx	a,@dptr
      0057CD 7C 00            [12] 2367 	mov	r4,#0x00
      0057CF 42 07            [12] 2368 	orl	ar7,a
      0057D1 EC               [12] 2369 	mov	a,r4
      0057D2 42 06            [12] 2370 	orl	ar6,a
                                   2371 ;	trial_webserver.c:312: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      0057D4 90 09 E4         [24] 2372 	mov	dptr,#(_buffer + 0x0025)
      0057D7 E0               [24] 2373 	movx	a,@dptr
      0057D8 FC               [12] 2374 	mov	r4,a
      0057D9 7D 00            [12] 2375 	mov	r5,#0x00
      0057DB 90 09 E5         [24] 2376 	mov	dptr,#(_buffer + 0x0026)
      0057DE E0               [24] 2377 	movx	a,@dptr
      0057DF 7A 00            [12] 2378 	mov	r2,#0x00
      0057E1 42 05            [12] 2379 	orl	ar5,a
      0057E3 EA               [12] 2380 	mov	a,r2
      0057E4 42 04            [12] 2381 	orl	ar4,a
                                   2382 ;	trial_webserver.c:314: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0057E6 8C 03            [24] 2383 	mov	ar3,r4
      0057E8 90 09 E2         [24] 2384 	mov	dptr,#(_buffer + 0x0023)
      0057EB EB               [12] 2385 	mov	a,r3
      0057EC F0               [24] 2386 	movx	@dptr,a
                                   2387 ;	trial_webserver.c:315: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0057ED 90 09 E3         [24] 2388 	mov	dptr,#(_buffer + 0x0024)
      0057F0 ED               [12] 2389 	mov	a,r5
      0057F1 F0               [24] 2390 	movx	@dptr,a
                                   2391 ;	trial_webserver.c:316: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0057F2 8E 05            [24] 2392 	mov	ar5,r6
      0057F4 90 09 E4         [24] 2393 	mov	dptr,#(_buffer + 0x0025)
      0057F7 ED               [12] 2394 	mov	a,r5
      0057F8 F0               [24] 2395 	movx	@dptr,a
                                   2396 ;	trial_webserver.c:317: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0057F9 90 09 E5         [24] 2397 	mov	dptr,#(_buffer + 0x0026)
      0057FC EF               [12] 2398 	mov	a,r7
      0057FD F0               [24] 2399 	movx	@dptr,a
                                   2400 ;	trial_webserver.c:320: uint32_t serverSeqNum = prevSeq;
      0057FE 90 09 B7         [24] 2401 	mov	dptr,#_prevSeq
      005801 E0               [24] 2402 	movx	a,@dptr
      005802 FC               [12] 2403 	mov	r4,a
      005803 A3               [24] 2404 	inc	dptr
      005804 E0               [24] 2405 	movx	a,@dptr
      005805 FD               [12] 2406 	mov	r5,a
      005806 A3               [24] 2407 	inc	dptr
      005807 E0               [24] 2408 	movx	a,@dptr
      005808 FE               [12] 2409 	mov	r6,a
      005809 A3               [24] 2410 	inc	dptr
      00580A E0               [24] 2411 	movx	a,@dptr
      00580B FF               [12] 2412 	mov	r7,a
      00580C 90 10 13         [24] 2413 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_136
      00580F EC               [12] 2414 	mov	a,r4
      005810 F0               [24] 2415 	movx	@dptr,a
      005811 ED               [12] 2416 	mov	a,r5
      005812 A3               [24] 2417 	inc	dptr
      005813 F0               [24] 2418 	movx	@dptr,a
      005814 EE               [12] 2419 	mov	a,r6
      005815 A3               [24] 2420 	inc	dptr
      005816 F0               [24] 2421 	movx	@dptr,a
      005817 EF               [12] 2422 	mov	a,r7
      005818 A3               [24] 2423 	inc	dptr
      005819 F0               [24] 2424 	movx	@dptr,a
                                   2425 ;	trial_webserver.c:321: uint32_t ackNum = prevAck;
      00581A 90 09 BB         [24] 2426 	mov	dptr,#_prevAck
      00581D E0               [24] 2427 	movx	a,@dptr
      00581E F8               [12] 2428 	mov	r0,a
      00581F A3               [24] 2429 	inc	dptr
      005820 E0               [24] 2430 	movx	a,@dptr
      005821 F9               [12] 2431 	mov	r1,a
      005822 A3               [24] 2432 	inc	dptr
      005823 E0               [24] 2433 	movx	a,@dptr
      005824 FA               [12] 2434 	mov	r2,a
      005825 A3               [24] 2435 	inc	dptr
      005826 E0               [24] 2436 	movx	a,@dptr
      005827 FB               [12] 2437 	mov	r3,a
      005828 90 10 17         [24] 2438 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_136
      00582B E8               [12] 2439 	mov	a,r0
      00582C F0               [24] 2440 	movx	@dptr,a
      00582D E9               [12] 2441 	mov	a,r1
      00582E A3               [24] 2442 	inc	dptr
      00582F F0               [24] 2443 	movx	@dptr,a
      005830 EA               [12] 2444 	mov	a,r2
      005831 A3               [24] 2445 	inc	dptr
      005832 F0               [24] 2446 	movx	@dptr,a
      005833 EB               [12] 2447 	mov	a,r3
      005834 A3               [24] 2448 	inc	dptr
      005835 F0               [24] 2449 	movx	@dptr,a
                                   2450 ;	trial_webserver.c:323: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      005836 8F 04            [24] 2451 	mov	ar4,r7
      005838 90 09 E6         [24] 2452 	mov	dptr,#(_buffer + 0x0027)
      00583B EC               [12] 2453 	mov	a,r4
      00583C F0               [24] 2454 	movx	@dptr,a
                                   2455 ;	trial_webserver.c:324: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      00583D 90 10 13         [24] 2456 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_136
      005840 E0               [24] 2457 	movx	a,@dptr
      005841 FC               [12] 2458 	mov	r4,a
      005842 A3               [24] 2459 	inc	dptr
      005843 E0               [24] 2460 	movx	a,@dptr
      005844 FD               [12] 2461 	mov	r5,a
      005845 A3               [24] 2462 	inc	dptr
      005846 E0               [24] 2463 	movx	a,@dptr
      005847 FE               [12] 2464 	mov	r6,a
      005848 A3               [24] 2465 	inc	dptr
      005849 E0               [24] 2466 	movx	a,@dptr
      00584A 8E 03            [24] 2467 	mov	ar3,r6
      00584C 90 09 E7         [24] 2468 	mov	dptr,#(_buffer + 0x0028)
      00584F EB               [12] 2469 	mov	a,r3
      005850 F0               [24] 2470 	movx	@dptr,a
                                   2471 ;	trial_webserver.c:325: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      005851 8D 03            [24] 2472 	mov	ar3,r5
      005853 90 09 E8         [24] 2473 	mov	dptr,#(_buffer + 0x0029)
      005856 EB               [12] 2474 	mov	a,r3
      005857 F0               [24] 2475 	movx	@dptr,a
                                   2476 ;	trial_webserver.c:326: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      005858 90 09 E9         [24] 2477 	mov	dptr,#(_buffer + 0x002a)
      00585B EC               [12] 2478 	mov	a,r4
      00585C F0               [24] 2479 	movx	@dptr,a
                                   2480 ;	trial_webserver.c:327: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      00585D 90 10 17         [24] 2481 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_136
      005860 E0               [24] 2482 	movx	a,@dptr
      005861 FC               [12] 2483 	mov	r4,a
      005862 A3               [24] 2484 	inc	dptr
      005863 E0               [24] 2485 	movx	a,@dptr
      005864 FD               [12] 2486 	mov	r5,a
      005865 A3               [24] 2487 	inc	dptr
      005866 E0               [24] 2488 	movx	a,@dptr
      005867 FE               [12] 2489 	mov	r6,a
      005868 A3               [24] 2490 	inc	dptr
      005869 E0               [24] 2491 	movx	a,@dptr
      00586A 90 09 EA         [24] 2492 	mov	dptr,#(_buffer + 0x002b)
      00586D F0               [24] 2493 	movx	@dptr,a
                                   2494 ;	trial_webserver.c:328: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      00586E 8E 03            [24] 2495 	mov	ar3,r6
      005870 90 09 EB         [24] 2496 	mov	dptr,#(_buffer + 0x002c)
      005873 EB               [12] 2497 	mov	a,r3
      005874 F0               [24] 2498 	movx	@dptr,a
                                   2499 ;	trial_webserver.c:329: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      005875 8D 03            [24] 2500 	mov	ar3,r5
      005877 90 09 EC         [24] 2501 	mov	dptr,#(_buffer + 0x002d)
      00587A EB               [12] 2502 	mov	a,r3
      00587B F0               [24] 2503 	movx	@dptr,a
                                   2504 ;	trial_webserver.c:330: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      00587C 90 09 ED         [24] 2505 	mov	dptr,#(_buffer + 0x002e)
      00587F EC               [12] 2506 	mov	a,r4
      005880 F0               [24] 2507 	movx	@dptr,a
                                   2508 ;	trial_webserver.c:333: const char *html_payload =
                                   2509 ;	trial_webserver.c:356: uint16_t dataLength = strlen(html_payload);
      005881 90 79 77         [24] 2510 	mov	dptr,#___str_4
      005884 75 F0 80         [24] 2511 	mov	b, #0x80
      005887 12 6E 20         [24] 2512 	lcall	_strlen
      00588A AE 82            [24] 2513 	mov	r6, dpl
      00588C AF 83            [24] 2514 	mov	r7, dph
                                   2515 ;	trial_webserver.c:359: uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
      00588E 74 28            [12] 2516 	mov	a,#0x28
      005890 2E               [12] 2517 	add	a, r6
      005891 FC               [12] 2518 	mov	r4,a
      005892 E4               [12] 2519 	clr	a
      005893 3F               [12] 2520 	addc	a, r7
                                   2521 ;	trial_webserver.c:360: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      005894 90 09 D0         [24] 2522 	mov	dptr,#(_buffer + 0x0011)
      005897 F0               [24] 2523 	movx	@dptr,a
                                   2524 ;	trial_webserver.c:361: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005898 90 09 D1         [24] 2525 	mov	dptr,#(_buffer + 0x0012)
      00589B EC               [12] 2526 	mov	a,r4
      00589C F0               [24] 2527 	movx	@dptr,a
                                   2528 ;	trial_webserver.c:364: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
      00589D 90 09 EF         [24] 2529 	mov	dptr,#(_buffer + 0x0030)
      0058A0 74 19            [12] 2530 	mov	a,#0x19
      0058A2 F0               [24] 2531 	movx	@dptr,a
                                   2532 ;	trial_webserver.c:365: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
      0058A3 90 09 F0         [24] 2533 	mov	dptr,#(_buffer + 0x0031)
      0058A6 74 FF            [12] 2534 	mov	a,#0xff
      0058A8 F0               [24] 2535 	movx	@dptr,a
                                   2536 ;	trial_webserver.c:366: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      0058A9 90 09 F1         [24] 2537 	mov	dptr,#(_buffer + 0x0032)
      0058AC F0               [24] 2538 	movx	@dptr,a
                                   2539 ;	trial_webserver.c:367: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      0058AD 90 09 EE         [24] 2540 	mov	dptr,#(_buffer + 0x002f)
      0058B0 74 50            [12] 2541 	mov	a,#0x50
      0058B2 F0               [24] 2542 	movx	@dptr,a
                                   2543 ;	trial_webserver.c:370: memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);
      0058B3 90 10 36         [24] 2544 	mov	dptr,#___memcpy_PARM_2
      0058B6 74 77            [12] 2545 	mov	a,#___str_4
      0058B8 F0               [24] 2546 	movx	@dptr,a
      0058B9 74 79            [12] 2547 	mov	a,#(___str_4 >> 8)
      0058BB A3               [24] 2548 	inc	dptr
      0058BC F0               [24] 2549 	movx	@dptr,a
      0058BD 74 80            [12] 2550 	mov	a,#0x80
      0058BF A3               [24] 2551 	inc	dptr
      0058C0 F0               [24] 2552 	movx	@dptr,a
      0058C1 90 10 39         [24] 2553 	mov	dptr,#___memcpy_PARM_3
      0058C4 EE               [12] 2554 	mov	a,r6
      0058C5 F0               [24] 2555 	movx	@dptr,a
      0058C6 EF               [12] 2556 	mov	a,r7
      0058C7 A3               [24] 2557 	inc	dptr
      0058C8 F0               [24] 2558 	movx	@dptr,a
      0058C9 90 09 F6         [24] 2559 	mov	dptr,#(_buffer + 0x0037)
      0058CC 75 F0 00         [24] 2560 	mov	b, #0x00
      0058CF C0 07            [24] 2561 	push	ar7
      0058D1 C0 06            [24] 2562 	push	ar6
      0058D3 12 5E 29         [24] 2563 	lcall	___memcpy
                                   2564 ;	trial_webserver.c:373: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0058D6 90 09 C0         [24] 2565 	mov	dptr,#(_buffer + 0x0001)
      0058D9 75 F0 00         [24] 2566 	mov	b, #0x00
      0058DC 12 3F 25         [24] 2567 	lcall	_calculateIPChecksum
                                   2568 ;	trial_webserver.c:374: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      0058DF 90 09 C0         [24] 2569 	mov	dptr,#(_buffer + 0x0001)
      0058E2 75 F0 00         [24] 2570 	mov	b, #0x00
      0058E5 12 40 8F         [24] 2571 	lcall	_calculateTcpChecksum
      0058E8 D0 06            [24] 2572 	pop	ar6
      0058EA D0 07            [24] 2573 	pop	ar7
                                   2574 ;	trial_webserver.c:377: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);
      0058EC 74 37            [12] 2575 	mov	a,#0x37
      0058EE 2E               [12] 2576 	add	a, r6
      0058EF FE               [12] 2577 	mov	r6,a
      0058F0 E4               [12] 2578 	clr	a
      0058F1 3F               [12] 2579 	addc	a, r7
      0058F2 FF               [12] 2580 	mov	r7,a
      0058F3 90 09 B2         [24] 2581 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0058F6 EE               [12] 2582 	mov	a,r6
      0058F7 F0               [24] 2583 	movx	@dptr,a
      0058F8 EF               [12] 2584 	mov	a,r7
      0058F9 A3               [24] 2585 	inc	dptr
      0058FA F0               [24] 2586 	movx	@dptr,a
      0058FB 90 09 BF         [24] 2587 	mov	dptr,#_buffer
      0058FE 75 F0 00         [24] 2588 	mov	b, #0x00
      005901 12 4C AC         [24] 2589 	lcall	_transmit_tcp_packet
                                   2590 ;	trial_webserver.c:380: connectionState = FIN_WAIT;
      005904 90 14 93         [24] 2591 	mov	dptr,#_connectionState
      005907 74 03            [12] 2592 	mov	a,#0x03
      005909 F0               [24] 2593 	movx	@dptr,a
                                   2594 ;	trial_webserver.c:381: }
      00590A 22               [24] 2595 	ret
                                   2596 ;------------------------------------------------------------
                                   2597 ;Allocation info for local variables in function 'packetReceive'
                                   2598 ;------------------------------------------------------------
                                   2599 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_138'
                                   2600 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_138'
                                   2601 ;len                       Allocated with name '_packetReceive_len_10000_138'
                                   2602 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_140'
                                   2603 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_142'
                                   2604 ;header                    Allocated with name '_packetReceive_header_20002_144'
                                   2605 ;start                     Allocated with name '_packetReceive_start_20003_145'
                                   2606 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_146'
                                   2607 ;------------------------------------------------------------
                                   2608 ;	trial_webserver.c:386: uint16_t packetReceive()
                                   2609 ;	-----------------------------------------
                                   2610 ;	 function packetReceive
                                   2611 ;	-----------------------------------------
      00590B                       2612 _packetReceive:
                                   2613 ;	trial_webserver.c:390: uint16_t len = 0;
      00590B 90 10 1E         [24] 2614 	mov	dptr,#_packetReceive_len_10000_138
      00590E E4               [12] 2615 	clr	a
      00590F F0               [24] 2616 	movx	@dptr,a
      005910 A3               [24] 2617 	inc	dptr
      005911 F0               [24] 2618 	movx	@dptr,a
                                   2619 ;	trial_webserver.c:393: if (unreleasedPacket) {
      005912 90 10 1D         [24] 2620 	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
      005915 E0               [24] 2621 	movx	a,@dptr
      005916 60 70            [24] 2622 	jz	00105$
                                   2623 ;	trial_webserver.c:394: if (gNextPacketPtr == 0) {
      005918 90 10 1B         [24] 2624 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      00591B E0               [24] 2625 	movx	a,@dptr
      00591C FE               [12] 2626 	mov	r6,a
      00591D A3               [24] 2627 	inc	dptr
      00591E E0               [24] 2628 	movx	a,@dptr
      00591F 90 10 1B         [24] 2629 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      005922 E0               [24] 2630 	movx	a,@dptr
      005923 F5 F0            [12] 2631 	mov	b,a
      005925 A3               [24] 2632 	inc	dptr
      005926 E0               [24] 2633 	movx	a,@dptr
      005927 45 F0            [12] 2634 	orl	a,b
      005929 70 26            [24] 2635 	jnz	00102$
                                   2636 ;	trial_webserver.c:396: spi_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
      00592B 90 03 84         [24] 2637 	mov	dptr,#_spi_control_write_PARM_2
      00592E 74 0C            [12] 2638 	mov	a,#0x0c
      005930 F0               [24] 2639 	movx	@dptr,a
      005931 90 03 85         [24] 2640 	mov	dptr,#_spi_control_write_PARM_3
      005934 74 FF            [12] 2641 	mov	a,#0xff
      005936 F0               [24] 2642 	movx	@dptr,a
      005937 75 82 00         [24] 2643 	mov	dpl, #0x00
      00593A 12 39 7A         [24] 2644 	lcall	_spi_control_write
                                   2645 ;	trial_webserver.c:397: spi_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
      00593D 90 03 84         [24] 2646 	mov	dptr,#_spi_control_write_PARM_2
      005940 74 0D            [12] 2647 	mov	a,#0x0d
      005942 F0               [24] 2648 	movx	@dptr,a
      005943 90 03 85         [24] 2649 	mov	dptr,#_spi_control_write_PARM_3
      005946 74 0B            [12] 2650 	mov	a,#0x0b
      005948 F0               [24] 2651 	movx	@dptr,a
      005949 75 82 00         [24] 2652 	mov	dpl, #0x00
      00594C 12 39 7A         [24] 2653 	lcall	_spi_control_write
      00594F 80 32            [24] 2654 	sjmp	00103$
      005951                       2655 00102$:
                                   2656 ;	trial_webserver.c:399: spi_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
      005951 1E               [12] 2657 	dec	r6
      005952 90 03 84         [24] 2658 	mov	dptr,#_spi_control_write_PARM_2
      005955 74 0C            [12] 2659 	mov	a,#0x0c
      005957 F0               [24] 2660 	movx	@dptr,a
      005958 90 03 85         [24] 2661 	mov	dptr,#_spi_control_write_PARM_3
      00595B EE               [12] 2662 	mov	a,r6
      00595C F0               [24] 2663 	movx	@dptr,a
      00595D 75 82 00         [24] 2664 	mov	dpl, #0x00
      005960 12 39 7A         [24] 2665 	lcall	_spi_control_write
                                   2666 ;	trial_webserver.c:401: (uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
      005963 90 10 1B         [24] 2667 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      005966 E0               [24] 2668 	movx	a,@dptr
      005967 FE               [12] 2669 	mov	r6,a
      005968 A3               [24] 2670 	inc	dptr
      005969 E0               [24] 2671 	movx	a,@dptr
      00596A FF               [12] 2672 	mov	r7,a
      00596B 1E               [12] 2673 	dec	r6
      00596C BE FF 01         [24] 2674 	cjne	r6,#0xff,00147$
      00596F 1F               [12] 2675 	dec	r7
      005970                       2676 00147$:
      005970 8F 06            [24] 2677 	mov	ar6,r7
      005972 90 03 84         [24] 2678 	mov	dptr,#_spi_control_write_PARM_2
      005975 74 0D            [12] 2679 	mov	a,#0x0d
      005977 F0               [24] 2680 	movx	@dptr,a
      005978 90 03 85         [24] 2681 	mov	dptr,#_spi_control_write_PARM_3
      00597B EE               [12] 2682 	mov	a,r6
      00597C F0               [24] 2683 	movx	@dptr,a
      00597D 75 82 00         [24] 2684 	mov	dpl, #0x00
      005980 12 39 7A         [24] 2685 	lcall	_spi_control_write
      005983                       2686 00103$:
                                   2687 ;	trial_webserver.c:403: unreleasedPacket = false;
      005983 90 10 1D         [24] 2688 	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
      005986 E4               [12] 2689 	clr	a
      005987 F0               [24] 2690 	movx	@dptr,a
      005988                       2691 00105$:
                                   2692 ;	trial_webserver.c:406: uint8_t EPKTCNT = eth_spi_read(0x19, 1);
      005988 90 03 88         [24] 2693 	mov	dptr,#_eth_spi_read_PARM_2
      00598B 74 01            [12] 2694 	mov	a,#0x01
      00598D F0               [24] 2695 	movx	@dptr,a
      00598E 75 82 19         [24] 2696 	mov	dpl, #0x19
      005991 12 39 D0         [24] 2697 	lcall	_eth_spi_read
      005994 E5 82            [12] 2698 	mov	a, dpl
                                   2699 ;	trial_webserver.c:407: if (EPKTCNT > 0) {
      005996 70 03            [24] 2700 	jnz	00148$
      005998 02 5A B9         [24] 2701 	ljmp	00112$
      00599B                       2702 00148$:
                                   2703 ;	trial_webserver.c:408: spi_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
      00599B 90 10 1B         [24] 2704 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      00599E E0               [24] 2705 	movx	a,@dptr
      00599F FE               [12] 2706 	mov	r6,a
      0059A0 A3               [24] 2707 	inc	dptr
      0059A1 E0               [24] 2708 	movx	a,@dptr
      0059A2 90 03 84         [24] 2709 	mov	dptr,#_spi_control_write_PARM_2
      0059A5 E4               [12] 2710 	clr	a
      0059A6 F0               [24] 2711 	movx	@dptr,a
      0059A7 90 03 85         [24] 2712 	mov	dptr,#_spi_control_write_PARM_3
      0059AA EE               [12] 2713 	mov	a,r6
      0059AB F0               [24] 2714 	movx	@dptr,a
      0059AC 75 82 00         [24] 2715 	mov	dpl, #0x00
      0059AF 12 39 7A         [24] 2716 	lcall	_spi_control_write
                                   2717 ;	trial_webserver.c:409: spi_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte
      0059B2 90 10 1B         [24] 2718 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0059B5 E0               [24] 2719 	movx	a,@dptr
      0059B6 A3               [24] 2720 	inc	dptr
      0059B7 E0               [24] 2721 	movx	a,@dptr
      0059B8 FE               [12] 2722 	mov	r6,a
      0059B9 90 03 84         [24] 2723 	mov	dptr,#_spi_control_write_PARM_2
      0059BC 74 01            [12] 2724 	mov	a,#0x01
      0059BE F0               [24] 2725 	movx	@dptr,a
      0059BF 90 03 85         [24] 2726 	mov	dptr,#_spi_control_write_PARM_3
      0059C2 EE               [12] 2727 	mov	a,r6
      0059C3 F0               [24] 2728 	movx	@dptr,a
      0059C4 75 82 00         [24] 2729 	mov	dpl, #0x00
      0059C7 12 39 7A         [24] 2730 	lcall	_spi_control_write
                                   2731 ;	trial_webserver.c:418: spi_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
      0059CA 90 10 1B         [24] 2732 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0059CD E0               [24] 2733 	movx	a,@dptr
      0059CE FE               [12] 2734 	mov	r6,a
      0059CF A3               [24] 2735 	inc	dptr
      0059D0 E0               [24] 2736 	movx	a,@dptr
      0059D1 FF               [12] 2737 	mov	r7,a
                                   2738 ;	trial_webserver.c:419: (uint8_t*) &header);
      0059D2 90 03 95         [24] 2739 	mov	dptr,#_spi_buffer_read_PARM_2
      0059D5 EE               [12] 2740 	mov	a,r6
      0059D6 F0               [24] 2741 	movx	@dptr,a
      0059D7 EF               [12] 2742 	mov	a,r7
      0059D8 A3               [24] 2743 	inc	dptr
      0059D9 F0               [24] 2744 	movx	@dptr,a
      0059DA 90 03 97         [24] 2745 	mov	dptr,#_spi_buffer_read_PARM_3
      0059DD 74 20            [12] 2746 	mov	a,#_packetReceive_header_20002_144
      0059DF F0               [24] 2747 	movx	@dptr,a
      0059E0 74 10            [12] 2748 	mov	a,#(_packetReceive_header_20002_144 >> 8)
      0059E2 A3               [24] 2749 	inc	dptr
      0059E3 F0               [24] 2750 	movx	@dptr,a
      0059E4 E4               [12] 2751 	clr	a
      0059E5 A3               [24] 2752 	inc	dptr
      0059E6 F0               [24] 2753 	movx	@dptr,a
      0059E7 90 00 06         [24] 2754 	mov	dptr,#0x0006
      0059EA 12 3C 95         [24] 2755 	lcall	_spi_buffer_read
                                   2756 ;	trial_webserver.c:421: uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
      0059ED 90 10 1B         [24] 2757 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0059F0 E0               [24] 2758 	movx	a,@dptr
      0059F1 FE               [12] 2759 	mov	r6,a
      0059F2 A3               [24] 2760 	inc	dptr
      0059F3 E0               [24] 2761 	movx	a,@dptr
      0059F4 FF               [12] 2762 	mov	r7,a
      0059F5 74 06            [12] 2763 	mov	a,#0x06
      0059F7 2E               [12] 2764 	add	a, r6
      0059F8 FE               [12] 2765 	mov	r6,a
      0059F9 E4               [12] 2766 	clr	a
      0059FA 3F               [12] 2767 	addc	a, r7
      0059FB FF               [12] 2768 	mov	r7,a
      0059FC 90 10 26         [24] 2769 	mov	dptr,#_packetReceive_start_20003_145
      0059FF EE               [12] 2770 	mov	a,r6
      005A00 F0               [24] 2771 	movx	@dptr,a
      005A01 EF               [12] 2772 	mov	a,r7
      005A02 A3               [24] 2773 	inc	dptr
      005A03 F0               [24] 2774 	movx	@dptr,a
                                   2775 ;	trial_webserver.c:422: gNextPacketPtr = header.nextPacket;
      005A04 90 10 20         [24] 2776 	mov	dptr,#_packetReceive_header_20002_144
      005A07 E0               [24] 2777 	movx	a,@dptr
      005A08 FE               [12] 2778 	mov	r6,a
      005A09 A3               [24] 2779 	inc	dptr
      005A0A E0               [24] 2780 	movx	a,@dptr
      005A0B FF               [12] 2781 	mov	r7,a
      005A0C 90 10 1B         [24] 2782 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      005A0F EE               [12] 2783 	mov	a,r6
      005A10 F0               [24] 2784 	movx	@dptr,a
      005A11 EF               [12] 2785 	mov	a,r7
      005A12 A3               [24] 2786 	inc	dptr
      005A13 F0               [24] 2787 	movx	@dptr,a
                                   2788 ;	trial_webserver.c:424: len = header.byteCount - 4; // Exclude CRC
      005A14 90 10 22         [24] 2789 	mov	dptr,#(_packetReceive_header_20002_144 + 0x0002)
      005A17 E0               [24] 2790 	movx	a,@dptr
      005A18 FE               [12] 2791 	mov	r6,a
      005A19 A3               [24] 2792 	inc	dptr
      005A1A E0               [24] 2793 	movx	a,@dptr
      005A1B FF               [12] 2794 	mov	r7,a
      005A1C EE               [12] 2795 	mov	a,r6
      005A1D 24 FC            [12] 2796 	add	a,#0xfc
      005A1F FE               [12] 2797 	mov	r6,a
      005A20 EF               [12] 2798 	mov	a,r7
      005A21 34 FF            [12] 2799 	addc	a,#0xff
      005A23 FF               [12] 2800 	mov	r7,a
      005A24 90 10 1E         [24] 2801 	mov	dptr,#_packetReceive_len_10000_138
      005A27 EE               [12] 2802 	mov	a,r6
      005A28 F0               [24] 2803 	movx	@dptr,a
      005A29 EF               [12] 2804 	mov	a,r7
      005A2A A3               [24] 2805 	inc	dptr
      005A2B F0               [24] 2806 	movx	@dptr,a
                                   2807 ;	trial_webserver.c:425: if (len > BUFFER_SIZE - 1)
      005A2C C3               [12] 2808 	clr	c
      005A2D 74 DB            [12] 2809 	mov	a,#0xdb
      005A2F 9E               [12] 2810 	subb	a,r6
      005A30 74 05            [12] 2811 	mov	a,#0x05
      005A32 9F               [12] 2812 	subb	a,r7
      005A33 50 0A            [24] 2813 	jnc	00107$
                                   2814 ;	trial_webserver.c:426: len = BUFFER_SIZE - 1;
      005A35 90 10 1E         [24] 2815 	mov	dptr,#_packetReceive_len_10000_138
      005A38 74 DB            [12] 2816 	mov	a,#0xdb
      005A3A F0               [24] 2817 	movx	@dptr,a
      005A3B 74 05            [12] 2818 	mov	a,#0x05
      005A3D A3               [24] 2819 	inc	dptr
      005A3E F0               [24] 2820 	movx	@dptr,a
      005A3F                       2821 00107$:
                                   2822 ;	trial_webserver.c:428: if ((header.status & 0x80) == 0)
      005A3F 90 10 24         [24] 2823 	mov	dptr,#(_packetReceive_header_20002_144 + 0x0004)
      005A42 E0               [24] 2824 	movx	a,@dptr
      005A43 FE               [12] 2825 	mov	r6,a
      005A44 A3               [24] 2826 	inc	dptr
      005A45 E0               [24] 2827 	movx	a,@dptr
      005A46 EE               [12] 2828 	mov	a,r6
      005A47 20 E7 09         [24] 2829 	jb	acc.7,00109$
                                   2830 ;	trial_webserver.c:429: len = 0; // Invalid packet
      005A4A 90 10 1E         [24] 2831 	mov	dptr,#_packetReceive_len_10000_138
      005A4D E4               [12] 2832 	clr	a
      005A4E F0               [24] 2833 	movx	@dptr,a
      005A4F A3               [24] 2834 	inc	dptr
      005A50 F0               [24] 2835 	movx	@dptr,a
      005A51 80 2C            [24] 2836 	sjmp	00110$
      005A53                       2837 00109$:
                                   2838 ;	trial_webserver.c:431: spi_buffer_read(len, start, buffer);
      005A53 90 10 1E         [24] 2839 	mov	dptr,#_packetReceive_len_10000_138
      005A56 E0               [24] 2840 	movx	a,@dptr
      005A57 FE               [12] 2841 	mov	r6,a
      005A58 A3               [24] 2842 	inc	dptr
      005A59 E0               [24] 2843 	movx	a,@dptr
      005A5A FF               [12] 2844 	mov	r7,a
      005A5B 90 10 26         [24] 2845 	mov	dptr,#_packetReceive_start_20003_145
      005A5E E0               [24] 2846 	movx	a,@dptr
      005A5F FC               [12] 2847 	mov	r4,a
      005A60 A3               [24] 2848 	inc	dptr
      005A61 E0               [24] 2849 	movx	a,@dptr
      005A62 FD               [12] 2850 	mov	r5,a
      005A63 90 03 95         [24] 2851 	mov	dptr,#_spi_buffer_read_PARM_2
      005A66 EC               [12] 2852 	mov	a,r4
      005A67 F0               [24] 2853 	movx	@dptr,a
      005A68 ED               [12] 2854 	mov	a,r5
      005A69 A3               [24] 2855 	inc	dptr
      005A6A F0               [24] 2856 	movx	@dptr,a
      005A6B 90 03 97         [24] 2857 	mov	dptr,#_spi_buffer_read_PARM_3
      005A6E 74 BF            [12] 2858 	mov	a,#_buffer
      005A70 F0               [24] 2859 	movx	@dptr,a
      005A71 74 09            [12] 2860 	mov	a,#(_buffer >> 8)
      005A73 A3               [24] 2861 	inc	dptr
      005A74 F0               [24] 2862 	movx	@dptr,a
      005A75 E4               [12] 2863 	clr	a
      005A76 A3               [24] 2864 	inc	dptr
      005A77 F0               [24] 2865 	movx	@dptr,a
      005A78 8E 82            [24] 2866 	mov	dpl, r6
      005A7A 8F 83            [24] 2867 	mov	dph, r7
      005A7C 12 3C 95         [24] 2868 	lcall	_spi_buffer_read
      005A7F                       2869 00110$:
                                   2870 ;	trial_webserver.c:433: buffer[len] = 0; // Null-terminate
      005A7F 90 10 1E         [24] 2871 	mov	dptr,#_packetReceive_len_10000_138
      005A82 E0               [24] 2872 	movx	a,@dptr
      005A83 FE               [12] 2873 	mov	r6,a
      005A84 A3               [24] 2874 	inc	dptr
      005A85 E0               [24] 2875 	movx	a,@dptr
      005A86 FF               [12] 2876 	mov	r7,a
      005A87 EE               [12] 2877 	mov	a,r6
      005A88 24 BF            [12] 2878 	add	a, #_buffer
      005A8A F5 82            [12] 2879 	mov	dpl,a
      005A8C EF               [12] 2880 	mov	a,r7
      005A8D 34 09            [12] 2881 	addc	a, #(_buffer >> 8)
      005A8F F5 83            [12] 2882 	mov	dph,a
      005A91 E4               [12] 2883 	clr	a
      005A92 F0               [24] 2884 	movx	@dptr,a
                                   2885 ;	trial_webserver.c:434: unreleasedPacket = true;
      005A93 90 10 1D         [24] 2886 	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
      005A96 04               [12] 2887 	inc	a
      005A97 F0               [24] 2888 	movx	@dptr,a
                                   2889 ;	trial_webserver.c:436: uint8_t ECON2 = mac_spi_read(0x1E, 0);
      005A98 90 03 8D         [24] 2890 	mov	dptr,#_mac_spi_read_PARM_2
      005A9B E4               [12] 2891 	clr	a
      005A9C F0               [24] 2892 	movx	@dptr,a
      005A9D 75 82 1E         [24] 2893 	mov	dpl, #0x1e
      005AA0 12 3A 96         [24] 2894 	lcall	_mac_spi_read
      005AA3 E5 82            [12] 2895 	mov	a, dpl
                                   2896 ;	trial_webserver.c:437: spi_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
      005AA5 44 40            [12] 2897 	orl	a,#0x40
      005AA7 FF               [12] 2898 	mov	r7,a
      005AA8 90 03 84         [24] 2899 	mov	dptr,#_spi_control_write_PARM_2
      005AAB 74 1E            [12] 2900 	mov	a,#0x1e
      005AAD F0               [24] 2901 	movx	@dptr,a
      005AAE 90 03 85         [24] 2902 	mov	dptr,#_spi_control_write_PARM_3
      005AB1 EF               [12] 2903 	mov	a,r7
      005AB2 F0               [24] 2904 	movx	@dptr,a
      005AB3 75 82 00         [24] 2905 	mov	dpl, #0x00
      005AB6 12 39 7A         [24] 2906 	lcall	_spi_control_write
      005AB9                       2907 00112$:
                                   2908 ;	trial_webserver.c:440: return len;
      005AB9 90 10 1E         [24] 2909 	mov	dptr,#_packetReceive_len_10000_138
      005ABC E0               [24] 2910 	movx	a,@dptr
      005ABD FE               [12] 2911 	mov	r6,a
      005ABE A3               [24] 2912 	inc	dptr
      005ABF E0               [24] 2913 	movx	a,@dptr
                                   2914 ;	trial_webserver.c:441: }
      005AC0 8E 82            [24] 2915 	mov	dpl,r6
      005AC2 F5 83            [12] 2916 	mov	dph,a
      005AC4 22               [24] 2917 	ret
                                   2918 ;------------------------------------------------------------
                                   2919 ;Allocation info for local variables in function 'packetLoop'
                                   2920 ;------------------------------------------------------------
                                   2921 ;plen                      Allocated with name '_packetLoop_plen_10000_148'
                                   2922 ;ethType                   Allocated with name '_packetLoop_ethType_20000_149'
                                   2923 ;tcpFlags                  Allocated with name '_packetLoop_tcpFlags_30000_152'
                                   2924 ;------------------------------------------------------------
                                   2925 ;	trial_webserver.c:443: void packetLoop(void)
                                   2926 ;	-----------------------------------------
                                   2927 ;	 function packetLoop
                                   2928 ;	-----------------------------------------
      005AC5                       2929 _packetLoop:
                                   2930 ;	trial_webserver.c:445: uint16_t plen = packetReceive();
      005AC5 12 59 0B         [24] 2931 	lcall	_packetReceive
      005AC8 AE 82            [24] 2932 	mov	r6, dpl
      005ACA AF 83            [24] 2933 	mov	r7, dph
                                   2934 ;	trial_webserver.c:448: if (plen > 0) {
      005ACC EE               [12] 2935 	mov	a,r6
      005ACD 4F               [12] 2936 	orl	a,r7
      005ACE 70 01            [24] 2937 	jnz	00219$
      005AD0 22               [24] 2938 	ret
      005AD1                       2939 00219$:
                                   2940 ;	trial_webserver.c:449: uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
      005AD1 90 09 CB         [24] 2941 	mov	dptr,#(_buffer + 0x000c)
      005AD4 E0               [24] 2942 	movx	a,@dptr
      005AD5 FC               [12] 2943 	mov	r4,a
      005AD6 7D 00            [12] 2944 	mov	r5,#0x00
      005AD8 90 09 CC         [24] 2945 	mov	dptr,#(_buffer + 0x000d)
      005ADB E0               [24] 2946 	movx	a,@dptr
      005ADC FB               [12] 2947 	mov	r3,a
      005ADD 7A 00            [12] 2948 	mov	r2,#0x00
      005ADF 42 05            [12] 2949 	orl	ar5,a
      005AE1 EA               [12] 2950 	mov	a,r2
      005AE2 42 04            [12] 2951 	orl	ar4,a
                                   2952 ;	trial_webserver.c:450: if (ethType == ETH_TYPE_ARP) {
      005AE4 BD 06 0F         [24] 2953 	cjne	r5,#0x06,00104$
      005AE7 BC 08 0C         [24] 2954 	cjne	r4,#0x08,00104$
                                   2955 ;	trial_webserver.c:451: if (buffer[21] == 0x01) {
      005AEA 90 09 D4         [24] 2956 	mov	dptr,#(_buffer + 0x0015)
      005AED E0               [24] 2957 	movx	a,@dptr
      005AEE FB               [12] 2958 	mov	r3,a
      005AEF BB 01 03         [24] 2959 	cjne	r3,#0x01,00102$
                                   2960 ;	trial_webserver.c:452: makeArpReply();
                                   2961 ;	trial_webserver.c:454: return;
      005AF2 02 4D 90         [24] 2962 	ljmp	_makeArpReply
      005AF5                       2963 00102$:
      005AF5 22               [24] 2964 	ret
      005AF6                       2965 00104$:
                                   2966 ;	trial_webserver.c:457: if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP)
      005AF6 BD 00 05         [24] 2967 	cjne	r5,#0x00,00224$
      005AF9 BC 08 02         [24] 2968 	cjne	r4,#0x08,00224$
      005AFC 80 01            [24] 2969 	sjmp	00225$
      005AFE                       2970 00224$:
      005AFE 22               [24] 2971 	ret
      005AFF                       2972 00225$:
      005AFF 90 09 D6         [24] 2973 	mov	dptr,#(_buffer + 0x0017)
      005B02 E0               [24] 2974 	movx	a,@dptr
      005B03 FD               [12] 2975 	mov	r5,a
      005B04 BD 06 02         [24] 2976 	cjne	r5,#0x06,00226$
      005B07 80 01            [24] 2977 	sjmp	00227$
      005B09                       2978 00226$:
      005B09 22               [24] 2979 	ret
      005B0A                       2980 00227$:
                                   2981 ;	trial_webserver.c:459: uint8_t tcpFlags = buffer[TCP_FLAGS_P];
      005B0A 90 09 EE         [24] 2982 	mov	dptr,#(_buffer + 0x002f)
      005B0D E0               [24] 2983 	movx	a,@dptr
                                   2984 ;	trial_webserver.c:462: if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
      005B0E FD               [12] 2985 	mov	r5,a
      005B0F 30 E4 23         [24] 2986 	jnb	acc.4,00106$
      005B12 ED               [12] 2987 	mov	a,r5
      005B13 30 E0 1F         [24] 2988 	jnb	acc.0,00106$
                                   2989 ;	trial_webserver.c:463: printf("TCP(ACK_FIN) packet detected\n\r");
      005B16 74 05            [12] 2990 	mov	a,#___str_6
      005B18 C0 E0            [24] 2991 	push	acc
      005B1A 74 7D            [12] 2992 	mov	a,#(___str_6 >> 8)
      005B1C C0 E0            [24] 2993 	push	acc
      005B1E 74 80            [12] 2994 	mov	a,#0x80
      005B20 C0 E0            [24] 2995 	push	acc
      005B22 12 64 16         [24] 2996 	lcall	_printf
      005B25 15 81            [12] 2997 	dec	sp
      005B27 15 81            [12] 2998 	dec	sp
      005B29 15 81            [12] 2999 	dec	sp
                                   3000 ;	trial_webserver.c:464: makeTcpAck3(); // Send an acknowledgment
      005B2B 12 4F 09         [24] 3001 	lcall	_makeTcpAck3
                                   3002 ;	trial_webserver.c:465: connectionState = CLOSED;
      005B2E 90 14 93         [24] 3003 	mov	dptr,#_connectionState
      005B31 74 04            [12] 3004 	mov	a,#0x04
      005B33 F0               [24] 3005 	movx	@dptr,a
                                   3006 ;	trial_webserver.c:467: return;
      005B34 22               [24] 3007 	ret
      005B35                       3008 00106$:
                                   3009 ;	trial_webserver.c:469: if ((tcpFlags & TCP_FLAG_SYN)) {
      005B35 ED               [12] 3010 	mov	a,r5
      005B36 30 E1 26         [24] 3011 	jnb	acc.1,00109$
                                   3012 ;	trial_webserver.c:470: printf("TCP(SYN) packet detected\n\r");
      005B39 C0 07            [24] 3013 	push	ar7
      005B3B C0 06            [24] 3014 	push	ar6
      005B3D C0 05            [24] 3015 	push	ar5
      005B3F 74 24            [12] 3016 	mov	a,#___str_7
      005B41 C0 E0            [24] 3017 	push	acc
      005B43 74 7D            [12] 3018 	mov	a,#(___str_7 >> 8)
      005B45 C0 E0            [24] 3019 	push	acc
      005B47 74 80            [12] 3020 	mov	a,#0x80
      005B49 C0 E0            [24] 3021 	push	acc
      005B4B 12 64 16         [24] 3022 	lcall	_printf
      005B4E 15 81            [12] 3023 	dec	sp
      005B50 15 81            [12] 3024 	dec	sp
      005B52 15 81            [12] 3025 	dec	sp
      005B54 D0 05            [24] 3026 	pop	ar5
      005B56 D0 06            [24] 3027 	pop	ar6
      005B58 D0 07            [24] 3028 	pop	ar7
                                   3029 ;	trial_webserver.c:472: connectionState = LISTEN;
      005B5A 90 14 93         [24] 3030 	mov	dptr,#_connectionState
      005B5D E4               [12] 3031 	clr	a
      005B5E F0               [24] 3032 	movx	@dptr,a
      005B5F                       3033 00109$:
                                   3034 ;	trial_webserver.c:475: switch (connectionState) {
      005B5F 90 14 93         [24] 3035 	mov	dptr,#_connectionState
      005B62 E0               [24] 3036 	movx	a,@dptr
      005B63 FC               [12] 3037 	mov  r4,a
      005B64 24 FA            [12] 3038 	add	a,#0xff - 0x05
      005B66 50 01            [24] 3039 	jnc	00231$
      005B68 22               [24] 3040 	ret
      005B69                       3041 00231$:
      005B69 EC               [12] 3042 	mov	a,r4
      005B6A 2C               [12] 3043 	add	a,r4
      005B6B 2C               [12] 3044 	add	a,r4
      005B6C 90 5B 70         [24] 3045 	mov	dptr,#00232$
      005B6F 73               [24] 3046 	jmp	@a+dptr
      005B70                       3047 00232$:
      005B70 02 5B 82         [24] 3048 	ljmp	00110$
      005B73 02 5B A3         [24] 3049 	ljmp	00113$
      005B76 02 5B C7         [24] 3050 	ljmp	00116$
      005B79 02 5C 01         [24] 3051 	ljmp	00122$
      005B7C 02 5C 2E         [24] 3052 	ljmp	00133$
      005B7F 02 5C 25         [24] 3053 	ljmp	00125$
                                   3054 ;	trial_webserver.c:476: case LISTEN:
      005B82                       3055 00110$:
                                   3056 ;	trial_webserver.c:477: printf("listen\n\r");
      005B82 C0 05            [24] 3057 	push	ar5
      005B84 74 3F            [12] 3058 	mov	a,#___str_8
      005B86 C0 E0            [24] 3059 	push	acc
      005B88 74 7D            [12] 3060 	mov	a,#(___str_8 >> 8)
      005B8A C0 E0            [24] 3061 	push	acc
      005B8C 74 80            [12] 3062 	mov	a,#0x80
      005B8E C0 E0            [24] 3063 	push	acc
      005B90 12 64 16         [24] 3064 	lcall	_printf
      005B93 15 81            [12] 3065 	dec	sp
      005B95 15 81            [12] 3066 	dec	sp
      005B97 15 81            [12] 3067 	dec	sp
      005B99 D0 05            [24] 3068 	pop	ar5
                                   3069 ;	trial_webserver.c:478: if (tcpFlags & TCP_FLAG_SYN)
      005B9B ED               [12] 3070 	mov	a,r5
      005B9C 20 E1 01         [24] 3071 	jb	acc.1,00233$
      005B9F 22               [24] 3072 	ret
      005BA0                       3073 00233$:
                                   3074 ;	trial_webserver.c:479: makeTcpSynAck();
                                   3075 ;	trial_webserver.c:480: break;
      005BA0 02 53 D6         [24] 3076 	ljmp	_makeTcpSynAck
                                   3077 ;	trial_webserver.c:481: case SYN_RECEIVED:
      005BA3                       3078 00113$:
                                   3079 ;	trial_webserver.c:482: printf("syn received\n\r");
      005BA3 C0 05            [24] 3080 	push	ar5
      005BA5 74 48            [12] 3081 	mov	a,#___str_9
      005BA7 C0 E0            [24] 3082 	push	acc
      005BA9 74 7D            [12] 3083 	mov	a,#(___str_9 >> 8)
      005BAB C0 E0            [24] 3084 	push	acc
      005BAD 74 80            [12] 3085 	mov	a,#0x80
      005BAF C0 E0            [24] 3086 	push	acc
      005BB1 12 64 16         [24] 3087 	lcall	_printf
      005BB4 15 81            [12] 3088 	dec	sp
      005BB6 15 81            [12] 3089 	dec	sp
      005BB8 15 81            [12] 3090 	dec	sp
      005BBA D0 05            [24] 3091 	pop	ar5
                                   3092 ;	trial_webserver.c:483: if (tcpFlags & TCP_FLAG_ACK)
      005BBC ED               [12] 3093 	mov	a,r5
      005BBD 30 E4 6E         [24] 3094 	jnb	acc.4,00133$
                                   3095 ;	trial_webserver.c:484: connectionState = ESTABLISHED;
      005BC0 90 14 93         [24] 3096 	mov	dptr,#_connectionState
      005BC3 74 02            [12] 3097 	mov	a,#0x02
      005BC5 F0               [24] 3098 	movx	@dptr,a
                                   3099 ;	trial_webserver.c:485: break;
                                   3100 ;	trial_webserver.c:486: case ESTABLISHED:
      005BC6 22               [24] 3101 	ret
      005BC7                       3102 00116$:
                                   3103 ;	trial_webserver.c:487: printf("established\n\r");
      005BC7 C0 07            [24] 3104 	push	ar7
      005BC9 C0 06            [24] 3105 	push	ar6
      005BCB C0 05            [24] 3106 	push	ar5
      005BCD 74 57            [12] 3107 	mov	a,#___str_10
      005BCF C0 E0            [24] 3108 	push	acc
      005BD1 74 7D            [12] 3109 	mov	a,#(___str_10 >> 8)
      005BD3 C0 E0            [24] 3110 	push	acc
      005BD5 74 80            [12] 3111 	mov	a,#0x80
      005BD7 C0 E0            [24] 3112 	push	acc
      005BD9 12 64 16         [24] 3113 	lcall	_printf
      005BDC 15 81            [12] 3114 	dec	sp
      005BDE 15 81            [12] 3115 	dec	sp
      005BE0 15 81            [12] 3116 	dec	sp
      005BE2 D0 05            [24] 3117 	pop	ar5
      005BE4 D0 06            [24] 3118 	pop	ar6
      005BE6 D0 07            [24] 3119 	pop	ar7
                                   3120 ;	trial_webserver.c:488: if (tcpFlags & TCP_FLAG_FIN) {
      005BE8 ED               [12] 3121 	mov	a,r5
      005BE9 30 E0 0A         [24] 3122 	jnb	acc.0,00120$
                                   3123 ;	trial_webserver.c:489: makeTcpAck();
      005BEC 12 55 D7         [24] 3124 	lcall	_makeTcpAck
                                   3125 ;	trial_webserver.c:490: connectionState = FIN_WAIT;
      005BEF 90 14 93         [24] 3126 	mov	dptr,#_connectionState
      005BF2 74 03            [12] 3127 	mov	a,#0x03
      005BF4 F0               [24] 3128 	movx	@dptr,a
      005BF5 22               [24] 3129 	ret
      005BF6                       3130 00120$:
                                   3131 ;	trial_webserver.c:491: } else if (plen > TCP_DATA_START_P) {
      005BF6 C3               [12] 3132 	clr	c
      005BF7 74 36            [12] 3133 	mov	a,#0x36
      005BF9 9E               [12] 3134 	subb	a,r6
      005BFA E4               [12] 3135 	clr	a
      005BFB 9F               [12] 3136 	subb	a,r7
      005BFC 50 30            [24] 3137 	jnc	00133$
                                   3138 ;	trial_webserver.c:492: makeTcpAck2();
                                   3139 ;	trial_webserver.c:495: break;
                                   3140 ;	trial_webserver.c:496: case FIN_WAIT:
      005BFE 02 51 50         [24] 3141 	ljmp	_makeTcpAck2
      005C01                       3142 00122$:
                                   3143 ;	trial_webserver.c:497: printf("fin wait\n\r");
      005C01 C0 05            [24] 3144 	push	ar5
      005C03 74 65            [12] 3145 	mov	a,#___str_11
      005C05 C0 E0            [24] 3146 	push	acc
      005C07 74 7D            [12] 3147 	mov	a,#(___str_11 >> 8)
      005C09 C0 E0            [24] 3148 	push	acc
      005C0B 74 80            [12] 3149 	mov	a,#0x80
      005C0D C0 E0            [24] 3150 	push	acc
      005C0F 12 64 16         [24] 3151 	lcall	_printf
      005C12 15 81            [12] 3152 	dec	sp
      005C14 15 81            [12] 3153 	dec	sp
      005C16 15 81            [12] 3154 	dec	sp
      005C18 D0 05            [24] 3155 	pop	ar5
                                   3156 ;	trial_webserver.c:498: if (tcpFlags & TCP_FLAG_ACK)
      005C1A ED               [12] 3157 	mov	a,r5
      005C1B 30 E4 10         [24] 3158 	jnb	acc.4,00133$
                                   3159 ;	trial_webserver.c:499: connectionState = CLOSED;
      005C1E 90 14 93         [24] 3160 	mov	dptr,#_connectionState
      005C21 74 04            [12] 3161 	mov	a,#0x04
      005C23 F0               [24] 3162 	movx	@dptr,a
                                   3163 ;	trial_webserver.c:500: break;
                                   3164 ;	trial_webserver.c:501: case ACK_SENT:
      005C24 22               [24] 3165 	ret
      005C25                       3166 00125$:
                                   3167 ;	trial_webserver.c:502: makeTcpFinPshAck();
      005C25 12 56 9C         [24] 3168 	lcall	_makeTcpFinPshAck
                                   3169 ;	trial_webserver.c:503: connectionState = CLOSED;
      005C28 90 14 93         [24] 3170 	mov	dptr,#_connectionState
      005C2B 74 04            [12] 3171 	mov	a,#0x04
      005C2D F0               [24] 3172 	movx	@dptr,a
                                   3173 ;	trial_webserver.c:507: }
      005C2E                       3174 00133$:
                                   3175 ;	trial_webserver.c:513: }
      005C2E 22               [24] 3176 	ret
                                   3177 	.area CSEG    (CODE)
                                   3178 	.area CONST   (CODE)
                                   3179 	.area CONST   (CODE)
      007941                       3180 ___str_0:
      007941 74 72 69 61 6C 61 72  3181 	.ascii "trialarpreply"
             70 72 65 70 6C 79
      00794E 0A                    3182 	.db 0x0a
      00794F 0D                    3183 	.db 0x0d
      007950 00                    3184 	.db 0x00
                                   3185 	.area CSEG    (CODE)
                                   3186 	.area CONST   (CODE)
      007951                       3187 ___str_1:
      007951 6D 61 6B 65 54 63 70  3188 	.ascii "makeTcpAck"
             41 63 6B
      00795B 0A                    3189 	.db 0x0a
      00795C 0D                    3190 	.db 0x0d
      00795D 00                    3191 	.db 0x00
                                   3192 	.area CSEG    (CODE)
                                   3193 	.area CONST   (CODE)
      00795E                       3194 ___str_2:
      00795E 6D 61 6B 65 54 63 70  3195 	.ascii "makeTcpSynAck"
             53 79 6E 41 63 6B
      00796B 0A                    3196 	.db 0x0a
      00796C 0D                    3197 	.db 0x0d
      00796D 00                    3198 	.db 0x00
                                   3199 	.area CSEG    (CODE)
                                   3200 	.area CONST   (CODE)
      00796E                       3201 ___str_3:
      00796E 74 63 70 61 63 6B     3202 	.ascii "tcpack"
      007974 0A                    3203 	.db 0x0a
      007975 0D                    3204 	.db 0x0d
      007976 00                    3205 	.db 0x00
                                   3206 	.area CSEG    (CODE)
                                   3207 	.area CONST   (CODE)
      007977                       3208 ___str_4:
      007977 48 54 54 50 2F 31 2E  3209 	.ascii "HTTP/1.1 200 OK"
             31 20 32 30 30 20 4F
             4B
      007986 0D                    3210 	.db 0x0d
      007987 0A                    3211 	.db 0x0a
      007988 43 6F 6E 74 65 6E 74  3212 	.ascii "Content-Type: text/html"
             2D 54 79 70 65 3A 20
             74 65 78 74 2F 68 74
             6D 6C
      00799F 0D                    3213 	.db 0x0d
      0079A0 0A                    3214 	.db 0x0a
      0079A1 43 6F 6E 74 65 6E 74  3215 	.ascii "Content-Length: 530"
             2D 4C 65 6E 67 74 68
             3A 20 35 33 30
      0079B4 0D                    3216 	.db 0x0d
      0079B5 0A                    3217 	.db 0x0a
      0079B6 0D                    3218 	.db 0x0d
      0079B7 0A                    3219 	.db 0x0a
      0079B8 3C 21 44 4F 43 54 59  3220 	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
             50 45 20 68 74 6D 6C
             3E 3C 68 74 6D 6C 20
             6C 61 6E 67 3D 27 65
             6E 27 3E 3C 68 65 61
             64 3E 3C 6D 65 74 61
             20 63 68 61 72 73 65
             74 3D 27 55 54 46 2D
             38 27 3E 3C
      0079F4 6D 65 74 61 20 6E 61  3221 	.ascii "meta name='viewport' content='width=device-width, initial-sc"
             6D 65 3D 27 76 69 65
             77 70 6F 72 74 27 20
             63 6F 6E 74 65 6E 74
             3D 27 77 69 64 74 68
             3D 64 65 76 69 63 65
             2D 77 69 64 74 68 2C
             20 69 6E 69 74 69 61
             6C 2D 73 63
      007A30 61 6C 65 3D 31 2E 30  3222 	.ascii "ale=1.0'><title>Ethernet Web Server</title><style>body {font"
             27 3E 3C 74 69 74 6C
             65 3E 45 74 68 65 72
             6E 65 74 20 57 65 62
             20 53 65 72 76 65 72
             3C 2F 74 69 74 6C 65
             3E 3C 73 74 79 6C 65
             3E 62 6F 64 79 20 7B
             66 6F 6E 74
      007A6C 2D 66 61 6D 69 6C 79  3223 	.ascii "-family: Arial, sans-serif; background-color: #f0f0f0; text-"
             3A 20 41 72 69 61 6C
             2C 20 73 61 6E 73 2D
             73 65 72 69 66 3B 20
             62 61 63 6B 67 72 6F
             75 6E 64 2D 63 6F 6C
             6F 72 3A 20 23 66 30
             66 30 66 30 3B 20 74
             65 78 74 2D
      007AA8 61 6C 69 67 6E 3A 20  3224 	.ascii "align: center; padding: 20px;}h1 {color: #333333;}p {color: "
             63 65 6E 74 65 72 3B
             20 70 61 64 64 69 6E
             67 3A 20 32 30 70 78
             3B 7D 68 31 20 7B 63
             6F 6C 6F 72 3A 20 23
             33 33 33 33 33 33 3B
             7D 70 20 7B 63 6F 6C
             6F 72 3A 20
      007AE4 23 36 36 36 36 36 36  3225 	.ascii "#666666;}</style></head><body><h1>ESD FALL 2024</h1><p>Ether"
             3B 7D 3C 2F 73 74 79
             6C 65 3E 3C 2F 68 65
             61 64 3E 3C 62 6F 64
             79 3E 3C 68 31 3E 45
             53 44 20 46 41 4C 4C
             20 32 30 32 34 3C 2F
             68 31 3E 3C 70 3E 45
             74 68 65 72
      007B20 6E 65 74 20 62 61 73  3226 	.ascii "net based Web Server for Embedded Systems - NADGIR and KOPPA"
             65 64 20 57 65 62 20
             53 65 72 76 65 72 20
             66 6F 72 20 45 6D 62
             65 64 64 65 64 20 53
             79 73 74 65 6D 73 20
             2D 20 4E 41 44 47 49
             52 20 61 6E 64 20 4B
             4F 50 50 41
      007B5C 20 6D 61 64 65 20 69  3227 	.ascii " made itttt, lessgoooo!!! This web server showcases the powe"
             74 74 74 74 2C 20 6C
             65 73 73 67 6F 6F 6F
             6F 21 21 21 20 54 68
             69 73 20 77 65 62 20
             73 65 72 76 65 72 20
             73 68 6F 77 63 61 73
             65 73 20 74 68 65 20
             70 6F 77 65
      007B98 72 20 6F 66 20 6D 69  3228 	.ascii "r of microcontrollers and Ethernet communication. By leverag"
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 73
             20 61 6E 64 20 45 74
             68 65 72 6E 65 74 20
             63 6F 6D 6D 75 6E 69
             63 61 74 69 6F 6E 2E
             20 42 79 20 6C 65 76
             65 72 61 67
      007BD4 69 6E 67 20 74 68 65  3229 	.ascii "ing the AT89C51RC2 microcontroller and the ENC28J60 Ethernet"
             20 41 54 38 39 43 35
             31 52 43 32 20 6D 69
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 20
             61 6E 64 20 74 68 65
             20 45 4E 43 32 38 4A
             36 30 20 45 74 68 65
             72 6E 65 74
      007C10 20 63 6F 6E 74 72 6F  3230 	.ascii " controller, we can serve dynamic web pages and control embe"
             6C 6C 65 72 2C 20 77
             65 20 63 61 6E 20 73
             65 72 76 65 20 64 79
             6E 61 6D 69 63 20 77
             65 62 20 70 61 67 65
             73 20 61 6E 64 20 63
             6F 6E 74 72 6F 6C 20
             65 6D 62 65
      007C4C 64 64 65 64 20 64 65  3231 	.ascii "dded devices remotely. The server allows seamless communicat"
             76 69 63 65 73 20 72
             65 6D 6F 74 65 6C 79
             2E 20 54 68 65 20 73
             65 72 76 65 72 20 61
             6C 6C 6F 77 73 20 73
             65 61 6D 6C 65 73 73
             20 63 6F 6D 6D 75 6E
             69 63 61 74
      007C88 69 6F 6E 20 62 65 74  3232 	.ascii "ion between hardware and software, enabling real-time data e"
             77 65 65 6E 20 68 61
             72 64 77 61 72 65 20
             61 6E 64 20 73 6F 66
             74 77 61 72 65 2C 20
             65 6E 61 62 6C 69 6E
             67 20 72 65 61 6C 2D
             74 69 6D 65 20 64 61
             74 61 20 65
      007CC4 78 63 68 61 6E 67 65  3233 	.ascii "xchange across the network.</p></body></html>"
             20 61 63 72 6F 73 73
             20 74 68 65 20 6E 65
             74 77 6F 72 6B 2E 3C
             2F 70 3E 3C 2F 62 6F
             64 79 3E 3C 2F 68 74
             6D 6C 3E
      007CF1 00                    3234 	.db 0x00
                                   3235 	.area CSEG    (CODE)
                                   3236 	.area CONST   (CODE)
      007CF2                       3237 ___str_5:
      007CF2 6D 61 6B 65 54 63 70  3238 	.ascii "makeTcpFinPshAck"
             46 69 6E 50 73 68 41
             63 6B
      007D02 0A                    3239 	.db 0x0a
      007D03 0D                    3240 	.db 0x0d
      007D04 00                    3241 	.db 0x00
                                   3242 	.area CSEG    (CODE)
                                   3243 	.area CONST   (CODE)
      007D05                       3244 ___str_6:
      007D05 54 43 50 28 41 43 4B  3245 	.ascii "TCP(ACK_FIN) packet detected"
             5F 46 49 4E 29 20 70
             61 63 6B 65 74 20 64
             65 74 65 63 74 65 64
      007D21 0A                    3246 	.db 0x0a
      007D22 0D                    3247 	.db 0x0d
      007D23 00                    3248 	.db 0x00
                                   3249 	.area CSEG    (CODE)
                                   3250 	.area CONST   (CODE)
      007D24                       3251 ___str_7:
      007D24 54 43 50 28 53 59 4E  3252 	.ascii "TCP(SYN) packet detected"
             29 20 70 61 63 6B 65
             74 20 64 65 74 65 63
             74 65 64
      007D3C 0A                    3253 	.db 0x0a
      007D3D 0D                    3254 	.db 0x0d
      007D3E 00                    3255 	.db 0x00
                                   3256 	.area CSEG    (CODE)
                                   3257 	.area CONST   (CODE)
      007D3F                       3258 ___str_8:
      007D3F 6C 69 73 74 65 6E     3259 	.ascii "listen"
      007D45 0A                    3260 	.db 0x0a
      007D46 0D                    3261 	.db 0x0d
      007D47 00                    3262 	.db 0x00
                                   3263 	.area CSEG    (CODE)
                                   3264 	.area CONST   (CODE)
      007D48                       3265 ___str_9:
      007D48 73 79 6E 20 72 65 63  3266 	.ascii "syn received"
             65 69 76 65 64
      007D54 0A                    3267 	.db 0x0a
      007D55 0D                    3268 	.db 0x0d
      007D56 00                    3269 	.db 0x00
                                   3270 	.area CSEG    (CODE)
                                   3271 	.area CONST   (CODE)
      007D57                       3272 ___str_10:
      007D57 65 73 74 61 62 6C 69  3273 	.ascii "established"
             73 68 65 64
      007D62 0A                    3274 	.db 0x0a
      007D63 0D                    3275 	.db 0x0d
      007D64 00                    3276 	.db 0x00
                                   3277 	.area CSEG    (CODE)
                                   3278 	.area CONST   (CODE)
      007D65                       3279 ___str_11:
      007D65 66 69 6E 20 77 61 69  3280 	.ascii "fin wait"
             74
      007D6D 0A                    3281 	.db 0x0a
      007D6E 0D                    3282 	.db 0x0d
      007D6F 00                    3283 	.db 0x00
                                   3284 	.area CSEG    (CODE)
                                   3285 	.area XINIT   (CODE)
      007D7D                       3286 __xinit__connectionState:
      007D7D 00                    3287 	.db #0x00	; 0
                                   3288 	.area CABS    (ABS,CODE)

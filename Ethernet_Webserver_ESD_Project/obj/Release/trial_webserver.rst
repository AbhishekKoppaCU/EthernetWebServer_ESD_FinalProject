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
                                    238 	.globl _target_ip
                                    239 	.globl _device_ip
                                    240 	.globl _target_mac
                                    241 	.globl _device_mac
                                    242 	.globl _buffer
                                    243 	.globl _prevAck
                                    244 	.globl _prevSeq
                                    245 	.globl _packetReceive
                                    246 	.globl _packetLoop
                                    247 ;--------------------------------------------------------
                                    248 ; special function registers
                                    249 ;--------------------------------------------------------
                                    250 	.area RSEG    (ABS,DATA)
      000000                        251 	.org 0x0000
                           0000C8   252 _T2CON	=	0x00c8
                           0000CA   253 _RCAP2L	=	0x00ca
                           0000CB   254 _RCAP2H	=	0x00cb
                           0000CC   255 _TL2	=	0x00cc
                           0000CD   256 _TH2	=	0x00cd
                           00008E   257 _AUXR	=	0x008e
                           0000A2   258 _AUXR1	=	0x00a2
                           000097   259 _CKRL	=	0x0097
                           00008F   260 _CKCON0	=	0x008f
                           0000AF   261 _CKCON1	=	0x00af
                           0000FA   262 _CCAP0H	=	0x00fa
                           0000FB   263 _CCAP1H	=	0x00fb
                           0000FC   264 _CCAP2H	=	0x00fc
                           0000FD   265 _CCAP3H	=	0x00fd
                           0000FE   266 _CCAP4H	=	0x00fe
                           0000EA   267 _CCAP0L	=	0x00ea
                           0000EB   268 _CCAP1L	=	0x00eb
                           0000EC   269 _CCAP2L	=	0x00ec
                           0000ED   270 _CCAP3L	=	0x00ed
                           0000EE   271 _CCAP4L	=	0x00ee
                           0000DA   272 _CCAPM0	=	0x00da
                           0000DB   273 _CCAPM1	=	0x00db
                           0000DC   274 _CCAPM2	=	0x00dc
                           0000DD   275 _CCAPM3	=	0x00dd
                           0000DE   276 _CCAPM4	=	0x00de
                           0000D8   277 _CCON	=	0x00d8
                           0000F9   278 _CH	=	0x00f9
                           0000E9   279 _CL	=	0x00e9
                           0000D9   280 _CMOD	=	0x00d9
                           0000A8   281 _IEN0	=	0x00a8
                           0000B1   282 _IEN1	=	0x00b1
                           0000B8   283 _IPL0	=	0x00b8
                           0000B7   284 _IPH0	=	0x00b7
                           0000B2   285 _IPL1	=	0x00b2
                           0000B3   286 _IPH1	=	0x00b3
                           0000C0   287 _P4	=	0x00c0
                           0000E8   288 _P5	=	0x00e8
                           0000A6   289 _WDTRST	=	0x00a6
                           0000A7   290 _WDTPRG	=	0x00a7
                           0000A9   291 _SADDR	=	0x00a9
                           0000B9   292 _SADEN	=	0x00b9
                           0000C3   293 _SPCON	=	0x00c3
                           0000C4   294 _SPSTA	=	0x00c4
                           0000C5   295 _SPDAT	=	0x00c5
                           0000C9   296 _T2MOD	=	0x00c9
                           00009B   297 _BDRCON	=	0x009b
                           00009A   298 _BRL	=	0x009a
                           00009C   299 _KBLS	=	0x009c
                           00009D   300 _KBE	=	0x009d
                           00009E   301 _KBF	=	0x009e
                           0000D2   302 _EECON	=	0x00d2
                           0000E0   303 _ACC	=	0x00e0
                           0000F0   304 _B	=	0x00f0
                           000083   305 _DPH	=	0x0083
                           000083   306 _DP0H	=	0x0083
                           000082   307 _DPL	=	0x0082
                           000082   308 _DP0L	=	0x0082
                           0000A8   309 _IE	=	0x00a8
                           0000B8   310 _IP	=	0x00b8
                           000080   311 _P0	=	0x0080
                           000090   312 _P1	=	0x0090
                           0000A0   313 _P2	=	0x00a0
                           0000B0   314 _P3	=	0x00b0
                           000087   315 _PCON	=	0x0087
                           0000D0   316 _PSW	=	0x00d0
                           000099   317 _SBUF	=	0x0099
                           000099   318 _SBUF0	=	0x0099
                           000098   319 _SCON	=	0x0098
                           000081   320 _SP	=	0x0081
                           000088   321 _TCON	=	0x0088
                           00008C   322 _TH0	=	0x008c
                           00008D   323 _TH1	=	0x008d
                           00008A   324 _TL0	=	0x008a
                           00008B   325 _TL1	=	0x008b
                           000089   326 _TMOD	=	0x0089
                                    327 ;--------------------------------------------------------
                                    328 ; special function bits
                                    329 ;--------------------------------------------------------
                                    330 	.area RSEG    (ABS,DATA)
      000000                        331 	.org 0x0000
                           0000AD   332 _ET2	=	0x00ad
                           0000BD   333 _PT2	=	0x00bd
                           0000C8   334 _T2CON_0	=	0x00c8
                           0000C9   335 _T2CON_1	=	0x00c9
                           0000CA   336 _T2CON_2	=	0x00ca
                           0000CB   337 _T2CON_3	=	0x00cb
                           0000CC   338 _T2CON_4	=	0x00cc
                           0000CD   339 _T2CON_5	=	0x00cd
                           0000CE   340 _T2CON_6	=	0x00ce
                           0000CF   341 _T2CON_7	=	0x00cf
                           0000C8   342 _CP_RL2	=	0x00c8
                           0000C9   343 _C_T2	=	0x00c9
                           0000CA   344 _TR2	=	0x00ca
                           0000CB   345 _EXEN2	=	0x00cb
                           0000CC   346 _TCLK	=	0x00cc
                           0000CD   347 _RCLK	=	0x00cd
                           0000CE   348 _EXF2	=	0x00ce
                           0000CF   349 _TF2	=	0x00cf
                           0000DF   350 _CF	=	0x00df
                           0000DE   351 _CR	=	0x00de
                           0000DC   352 _CCF4	=	0x00dc
                           0000DB   353 _CCF3	=	0x00db
                           0000DA   354 _CCF2	=	0x00da
                           0000D9   355 _CCF1	=	0x00d9
                           0000D8   356 _CCF0	=	0x00d8
                           0000AE   357 _EC	=	0x00ae
                           0000BE   358 _PPCL	=	0x00be
                           0000BD   359 _PT2L	=	0x00bd
                           0000BC   360 _PSL	=	0x00bc
                           0000BB   361 _PT1L	=	0x00bb
                           0000BA   362 _PX1L	=	0x00ba
                           0000B9   363 _PT0L	=	0x00b9
                           0000B8   364 _PX0L	=	0x00b8
                           0000C0   365 _P4_0	=	0x00c0
                           0000C1   366 _P4_1	=	0x00c1
                           0000C2   367 _P4_2	=	0x00c2
                           0000C3   368 _P4_3	=	0x00c3
                           0000C4   369 _P4_4	=	0x00c4
                           0000C5   370 _P4_5	=	0x00c5
                           0000C6   371 _P4_6	=	0x00c6
                           0000C7   372 _P4_7	=	0x00c7
                           0000E8   373 _P5_0	=	0x00e8
                           0000E9   374 _P5_1	=	0x00e9
                           0000EA   375 _P5_2	=	0x00ea
                           0000EB   376 _P5_3	=	0x00eb
                           0000EC   377 _P5_4	=	0x00ec
                           0000ED   378 _P5_5	=	0x00ed
                           0000EE   379 _P5_6	=	0x00ee
                           0000EF   380 _P5_7	=	0x00ef
                           0000F0   381 _BREG_F0	=	0x00f0
                           0000F1   382 _BREG_F1	=	0x00f1
                           0000F2   383 _BREG_F2	=	0x00f2
                           0000F3   384 _BREG_F3	=	0x00f3
                           0000F4   385 _BREG_F4	=	0x00f4
                           0000F5   386 _BREG_F5	=	0x00f5
                           0000F6   387 _BREG_F6	=	0x00f6
                           0000F7   388 _BREG_F7	=	0x00f7
                           0000A8   389 _EX0	=	0x00a8
                           0000A9   390 _ET0	=	0x00a9
                           0000AA   391 _EX1	=	0x00aa
                           0000AB   392 _ET1	=	0x00ab
                           0000AC   393 _ES	=	0x00ac
                           0000AF   394 _EA	=	0x00af
                           0000B8   395 _PX0	=	0x00b8
                           0000B9   396 _PT0	=	0x00b9
                           0000BA   397 _PX1	=	0x00ba
                           0000BB   398 _PT1	=	0x00bb
                           0000BC   399 _PS	=	0x00bc
                           000080   400 _P0_0	=	0x0080
                           000081   401 _P0_1	=	0x0081
                           000082   402 _P0_2	=	0x0082
                           000083   403 _P0_3	=	0x0083
                           000084   404 _P0_4	=	0x0084
                           000085   405 _P0_5	=	0x0085
                           000086   406 _P0_6	=	0x0086
                           000087   407 _P0_7	=	0x0087
                           000090   408 _P1_0	=	0x0090
                           000091   409 _P1_1	=	0x0091
                           000092   410 _P1_2	=	0x0092
                           000093   411 _P1_3	=	0x0093
                           000094   412 _P1_4	=	0x0094
                           000095   413 _P1_5	=	0x0095
                           000096   414 _P1_6	=	0x0096
                           000097   415 _P1_7	=	0x0097
                           0000A0   416 _P2_0	=	0x00a0
                           0000A1   417 _P2_1	=	0x00a1
                           0000A2   418 _P2_2	=	0x00a2
                           0000A3   419 _P2_3	=	0x00a3
                           0000A4   420 _P2_4	=	0x00a4
                           0000A5   421 _P2_5	=	0x00a5
                           0000A6   422 _P2_6	=	0x00a6
                           0000A7   423 _P2_7	=	0x00a7
                           0000B0   424 _P3_0	=	0x00b0
                           0000B1   425 _P3_1	=	0x00b1
                           0000B2   426 _P3_2	=	0x00b2
                           0000B3   427 _P3_3	=	0x00b3
                           0000B4   428 _P3_4	=	0x00b4
                           0000B5   429 _P3_5	=	0x00b5
                           0000B6   430 _P3_6	=	0x00b6
                           0000B7   431 _P3_7	=	0x00b7
                           0000B0   432 _RXD	=	0x00b0
                           0000B0   433 _RXD0	=	0x00b0
                           0000B1   434 _TXD	=	0x00b1
                           0000B1   435 _TXD0	=	0x00b1
                           0000B2   436 _INT0	=	0x00b2
                           0000B3   437 _INT1	=	0x00b3
                           0000B4   438 _T0	=	0x00b4
                           0000B5   439 _T1	=	0x00b5
                           0000B6   440 _WR	=	0x00b6
                           0000B7   441 _RD	=	0x00b7
                           0000D0   442 _P	=	0x00d0
                           0000D1   443 _F1	=	0x00d1
                           0000D2   444 _OV	=	0x00d2
                           0000D3   445 _RS0	=	0x00d3
                           0000D4   446 _RS1	=	0x00d4
                           0000D5   447 _F0	=	0x00d5
                           0000D6   448 _AC	=	0x00d6
                           0000D7   449 _CY	=	0x00d7
                           000098   450 _RI	=	0x0098
                           000099   451 _TI	=	0x0099
                           00009A   452 _RB8	=	0x009a
                           00009B   453 _TB8	=	0x009b
                           00009C   454 _REN	=	0x009c
                           00009D   455 _SM2	=	0x009d
                           00009E   456 _SM1	=	0x009e
                           00009F   457 _SM0	=	0x009f
                           000088   458 _IT0	=	0x0088
                           000089   459 _IE0	=	0x0089
                           00008A   460 _IT1	=	0x008a
                           00008B   461 _IE1	=	0x008b
                           00008C   462 _TR0	=	0x008c
                           00008D   463 _TF0	=	0x008d
                           00008E   464 _TR1	=	0x008e
                           00008F   465 _TF1	=	0x008f
                                    466 ;--------------------------------------------------------
                                    467 ; overlayable register banks
                                    468 ;--------------------------------------------------------
                                    469 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        470 	.ds 8
                                    471 ;--------------------------------------------------------
                                    472 ; internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area DSEG    (DATA)
      00002F                        475 _makeTcpAck3_sloc0_1_0:
      00002F                        476 	.ds 4
      000033                        477 _makeTcpAck2_sloc0_1_0:
      000033                        478 	.ds 2
      000035                        479 _makeTcpAck2_sloc1_1_0:
      000035                        480 	.ds 2
      000037                        481 _makeTcpAck2_sloc2_1_0:
      000037                        482 	.ds 4
                                    483 ;--------------------------------------------------------
                                    484 ; overlayable items in internal ram
                                    485 ;--------------------------------------------------------
                                    486 ;--------------------------------------------------------
                                    487 ; indirectly addressable internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area ISEG    (DATA)
                                    490 ;--------------------------------------------------------
                                    491 ; absolute internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area IABS    (ABS,DATA)
                                    494 	.area IABS    (ABS,DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; bit data
                                    497 ;--------------------------------------------------------
                                    498 	.area BSEG    (BIT)
                                    499 ;--------------------------------------------------------
                                    500 ; paged external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area PSEG    (PAG,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; uninitialized external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XSEG    (XDATA)
      0009A3                        507 _prevSeq::
      0009A3                        508 	.ds 4
      0009A7                        509 _prevAck::
      0009A7                        510 	.ds 4
      0009AB                        511 _buffer::
      0009AB                        512 	.ds 1500
      000F87                        513 _makeTcpFinPshAck_serverSeqNum_10002_136:
      000F87                        514 	.ds 4
      000F8B                        515 _makeTcpFinPshAck_ackNum_10002_136:
      000F8B                        516 	.ds 4
      000F8F                        517 _packetReceive_gNextPacketPtr_10000_138:
      000F8F                        518 	.ds 2
      000F91                        519 _packetReceive_unreleasedPacket_10000_138:
      000F91                        520 	.ds 1
      000F92                        521 _packetReceive_len_10000_138:
      000F92                        522 	.ds 2
      000F94                        523 _packetReceive_header_20002_144:
      000F94                        524 	.ds 6
      000F9A                        525 _packetReceive_start_20003_145:
      000F9A                        526 	.ds 2
                                    527 ;--------------------------------------------------------
                                    528 ; absolute external ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area XABS    (ABS,XDATA)
                                    531 ;--------------------------------------------------------
                                    532 ; initialized external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XISEG   (XDATA)
      00141B                        535 _device_mac::
      00141B                        536 	.ds 6
      001421                        537 _target_mac::
      001421                        538 	.ds 6
      001427                        539 _device_ip::
      001427                        540 	.ds 4
      00142B                        541 _target_ip::
      00142B                        542 	.ds 4
      00142F                        543 _connectionState::
      00142F                        544 	.ds 1
                                    545 	.area HOME    (CODE)
                                    546 	.area GSINIT0 (CODE)
                                    547 	.area GSINIT1 (CODE)
                                    548 	.area GSINIT2 (CODE)
                                    549 	.area GSINIT3 (CODE)
                                    550 	.area GSINIT4 (CODE)
                                    551 	.area GSINIT5 (CODE)
                                    552 	.area GSINIT  (CODE)
                                    553 	.area GSFINAL (CODE)
                                    554 	.area CSEG    (CODE)
                                    555 ;--------------------------------------------------------
                                    556 ; global & static initialisations
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.area GSFINAL (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'packetReceive'
                                    564 ;------------------------------------------------------------
                                    565 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_138'
                                    566 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_138'
                                    567 ;len                       Allocated with name '_packetReceive_len_10000_138'
                                    568 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_140'
                                    569 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_142'
                                    570 ;header                    Allocated with name '_packetReceive_header_20002_144'
                                    571 ;start                     Allocated with name '_packetReceive_start_20003_145'
                                    572 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_146'
                                    573 ;------------------------------------------------------------
                                    574 ;	trial_webserver.c:367: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      00209E 90 0F 8F         [24]  575 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0020A1 E4               [12]  576 	clr	a
      0020A2 F0               [24]  577 	movx	@dptr,a
      0020A3 A3               [24]  578 	inc	dptr
      0020A4 F0               [24]  579 	movx	@dptr,a
                                    580 ;	trial_webserver.c:368: static bool unreleasedPacket = false;
      0020A5 90 0F 91         [24]  581 	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
      0020A8 F0               [24]  582 	movx	@dptr,a
                                    583 ;--------------------------------------------------------
                                    584 ; Home
                                    585 ;--------------------------------------------------------
                                    586 	.area HOME    (CODE)
                                    587 	.area HOME    (CODE)
                                    588 ;--------------------------------------------------------
                                    589 ; code
                                    590 ;--------------------------------------------------------
                                    591 	.area CSEG    (CODE)
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'makeArpReply'
                                    594 ;------------------------------------------------------------
                                    595 ;	trial_webserver.c:24: void makeArpReply()
                                    596 ;	-----------------------------------------
                                    597 ;	 function makeArpReply
                                    598 ;	-----------------------------------------
      004DE7                        599 _makeArpReply:
                           000007   600 	ar7 = 0x07
                           000006   601 	ar6 = 0x06
                           000005   602 	ar5 = 0x05
                           000004   603 	ar4 = 0x04
                           000003   604 	ar3 = 0x03
                           000002   605 	ar2 = 0x02
                           000001   606 	ar1 = 0x01
                           000000   607 	ar0 = 0x00
                                    608 ;	trial_webserver.c:26: printf("trialarpreply\n\r");
      004DE7 74 84            [12]  609 	mov	a,#___str_0
      004DE9 C0 E0            [24]  610 	push	acc
      004DEB 74 77            [12]  611 	mov	a,#(___str_0 >> 8)
      004DED C0 E0            [24]  612 	push	acc
      004DEF 74 80            [12]  613 	mov	a,#0x80
      004DF1 C0 E0            [24]  614 	push	acc
      004DF3 12 61 AF         [24]  615 	lcall	_printf
      004DF6 15 81            [12]  616 	dec	sp
      004DF8 15 81            [12]  617 	dec	sp
      004DFA 15 81            [12]  618 	dec	sp
                                    619 ;	trial_webserver.c:28: memmove(&buffer[1], &buffer[0], 42);
      004DFC 90 0F B6         [24]  620 	mov	dptr,#_memmove_PARM_2
      004DFF 74 AB            [12]  621 	mov	a,#_buffer
      004E01 F0               [24]  622 	movx	@dptr,a
      004E02 74 09            [12]  623 	mov	a,#(_buffer >> 8)
      004E04 A3               [24]  624 	inc	dptr
      004E05 F0               [24]  625 	movx	@dptr,a
      004E06 E4               [12]  626 	clr	a
      004E07 A3               [24]  627 	inc	dptr
      004E08 F0               [24]  628 	movx	@dptr,a
      004E09 90 0F B9         [24]  629 	mov	dptr,#_memmove_PARM_3
      004E0C 74 2A            [12]  630 	mov	a,#0x2a
      004E0E F0               [24]  631 	movx	@dptr,a
      004E0F E4               [12]  632 	clr	a
      004E10 A3               [24]  633 	inc	dptr
      004E11 F0               [24]  634 	movx	@dptr,a
      004E12 90 09 AC         [24]  635 	mov	dptr,#(_buffer + 0x0001)
      004E15 F5 F0            [12]  636 	mov	b,a
      004E17 12 5C 79         [24]  637 	lcall	_memmove
                                    638 ;	trial_webserver.c:31: buffer[0] = 0x0E;
      004E1A 90 09 AB         [24]  639 	mov	dptr,#_buffer
      004E1D 74 0E            [12]  640 	mov	a,#0x0e
      004E1F F0               [24]  641 	movx	@dptr,a
                                    642 ;	trial_webserver.c:34: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6); // Destination MAC
      004E20 90 0F AA         [24]  643 	mov	dptr,#___memcpy_PARM_2
      004E23 74 B2            [12]  644 	mov	a,#(_buffer + 0x0007)
      004E25 F0               [24]  645 	movx	@dptr,a
      004E26 74 09            [12]  646 	mov	a,#((_buffer + 0x0007) >> 8)
      004E28 A3               [24]  647 	inc	dptr
      004E29 F0               [24]  648 	movx	@dptr,a
      004E2A E4               [12]  649 	clr	a
      004E2B A3               [24]  650 	inc	dptr
      004E2C F0               [24]  651 	movx	@dptr,a
      004E2D 90 0F AD         [24]  652 	mov	dptr,#___memcpy_PARM_3
      004E30 74 06            [12]  653 	mov	a,#0x06
      004E32 F0               [24]  654 	movx	@dptr,a
      004E33 E4               [12]  655 	clr	a
      004E34 A3               [24]  656 	inc	dptr
      004E35 F0               [24]  657 	movx	@dptr,a
      004E36 90 09 AC         [24]  658 	mov	dptr,#(_buffer + 0x0001)
      004E39 F5 F0            [12]  659 	mov	b,a
      004E3B 12 5B C2         [24]  660 	lcall	___memcpy
                                    661 ;	trial_webserver.c:37: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6); // Source MAC
      004E3E 90 0F AA         [24]  662 	mov	dptr,#___memcpy_PARM_2
      004E41 74 1B            [12]  663 	mov	a,#_device_mac
      004E43 F0               [24]  664 	movx	@dptr,a
      004E44 74 14            [12]  665 	mov	a,#(_device_mac >> 8)
      004E46 A3               [24]  666 	inc	dptr
      004E47 F0               [24]  667 	movx	@dptr,a
      004E48 E4               [12]  668 	clr	a
      004E49 A3               [24]  669 	inc	dptr
      004E4A F0               [24]  670 	movx	@dptr,a
      004E4B 90 0F AD         [24]  671 	mov	dptr,#___memcpy_PARM_3
      004E4E 74 06            [12]  672 	mov	a,#0x06
      004E50 F0               [24]  673 	movx	@dptr,a
      004E51 E4               [12]  674 	clr	a
      004E52 A3               [24]  675 	inc	dptr
      004E53 F0               [24]  676 	movx	@dptr,a
      004E54 90 09 B2         [24]  677 	mov	dptr,#(_buffer + 0x0007)
      004E57 F5 F0            [12]  678 	mov	b,a
      004E59 12 5B C2         [24]  679 	lcall	___memcpy
                                    680 ;	trial_webserver.c:40: buffer[1 + 21] = 0x02; // ARP Reply opcode
      004E5C 90 09 C1         [24]  681 	mov	dptr,#(_buffer + 0x0016)
      004E5F 74 02            [12]  682 	mov	a,#0x02
      004E61 F0               [24]  683 	movx	@dptr,a
                                    684 ;	trial_webserver.c:43: memcpy(&buffer[1 + 32], &buffer[1 + 22], 6); // Target MAC = Sender MAC from request
      004E62 90 0F AA         [24]  685 	mov	dptr,#___memcpy_PARM_2
      004E65 74 C2            [12]  686 	mov	a,#(_buffer + 0x0017)
      004E67 F0               [24]  687 	movx	@dptr,a
      004E68 74 09            [12]  688 	mov	a,#((_buffer + 0x0017) >> 8)
      004E6A A3               [24]  689 	inc	dptr
      004E6B F0               [24]  690 	movx	@dptr,a
      004E6C E4               [12]  691 	clr	a
      004E6D A3               [24]  692 	inc	dptr
      004E6E F0               [24]  693 	movx	@dptr,a
      004E6F 90 0F AD         [24]  694 	mov	dptr,#___memcpy_PARM_3
      004E72 74 06            [12]  695 	mov	a,#0x06
      004E74 F0               [24]  696 	movx	@dptr,a
      004E75 E4               [12]  697 	clr	a
      004E76 A3               [24]  698 	inc	dptr
      004E77 F0               [24]  699 	movx	@dptr,a
      004E78 90 09 CC         [24]  700 	mov	dptr,#(_buffer + 0x0021)
      004E7B F5 F0            [12]  701 	mov	b,a
      004E7D 12 5B C2         [24]  702 	lcall	___memcpy
                                    703 ;	trial_webserver.c:44: memcpy(&buffer[1 + 38], &buffer[1 + 28], 4); // Target IP = Sender IP from request
      004E80 90 0F AA         [24]  704 	mov	dptr,#___memcpy_PARM_2
      004E83 74 C8            [12]  705 	mov	a,#(_buffer + 0x001d)
      004E85 F0               [24]  706 	movx	@dptr,a
      004E86 74 09            [12]  707 	mov	a,#((_buffer + 0x001d) >> 8)
      004E88 A3               [24]  708 	inc	dptr
      004E89 F0               [24]  709 	movx	@dptr,a
      004E8A E4               [12]  710 	clr	a
      004E8B A3               [24]  711 	inc	dptr
      004E8C F0               [24]  712 	movx	@dptr,a
      004E8D 90 0F AD         [24]  713 	mov	dptr,#___memcpy_PARM_3
      004E90 74 04            [12]  714 	mov	a,#0x04
      004E92 F0               [24]  715 	movx	@dptr,a
      004E93 E4               [12]  716 	clr	a
      004E94 A3               [24]  717 	inc	dptr
      004E95 F0               [24]  718 	movx	@dptr,a
      004E96 90 09 D2         [24]  719 	mov	dptr,#(_buffer + 0x0027)
      004E99 F5 F0            [12]  720 	mov	b,a
      004E9B 12 5B C2         [24]  721 	lcall	___memcpy
                                    722 ;	trial_webserver.c:47: memcpy(&buffer[1 + 22], device_mac, 6); // Sender MAC = device MAC
      004E9E 90 0F AA         [24]  723 	mov	dptr,#___memcpy_PARM_2
      004EA1 74 1B            [12]  724 	mov	a,#_device_mac
      004EA3 F0               [24]  725 	movx	@dptr,a
      004EA4 74 14            [12]  726 	mov	a,#(_device_mac >> 8)
      004EA6 A3               [24]  727 	inc	dptr
      004EA7 F0               [24]  728 	movx	@dptr,a
      004EA8 E4               [12]  729 	clr	a
      004EA9 A3               [24]  730 	inc	dptr
      004EAA F0               [24]  731 	movx	@dptr,a
      004EAB 90 0F AD         [24]  732 	mov	dptr,#___memcpy_PARM_3
      004EAE 74 06            [12]  733 	mov	a,#0x06
      004EB0 F0               [24]  734 	movx	@dptr,a
      004EB1 E4               [12]  735 	clr	a
      004EB2 A3               [24]  736 	inc	dptr
      004EB3 F0               [24]  737 	movx	@dptr,a
      004EB4 90 09 C2         [24]  738 	mov	dptr,#(_buffer + 0x0017)
      004EB7 F5 F0            [12]  739 	mov	b,a
      004EB9 12 5B C2         [24]  740 	lcall	___memcpy
                                    741 ;	trial_webserver.c:48: memcpy(&buffer[1 + 28], device_ip, 4);  // Sender IP = device IP
      004EBC 90 0F AA         [24]  742 	mov	dptr,#___memcpy_PARM_2
      004EBF 74 27            [12]  743 	mov	a,#_device_ip
      004EC1 F0               [24]  744 	movx	@dptr,a
      004EC2 74 14            [12]  745 	mov	a,#(_device_ip >> 8)
      004EC4 A3               [24]  746 	inc	dptr
      004EC5 F0               [24]  747 	movx	@dptr,a
      004EC6 E4               [12]  748 	clr	a
      004EC7 A3               [24]  749 	inc	dptr
      004EC8 F0               [24]  750 	movx	@dptr,a
      004EC9 90 0F AD         [24]  751 	mov	dptr,#___memcpy_PARM_3
      004ECC 74 04            [12]  752 	mov	a,#0x04
      004ECE F0               [24]  753 	movx	@dptr,a
      004ECF E4               [12]  754 	clr	a
      004ED0 A3               [24]  755 	inc	dptr
      004ED1 F0               [24]  756 	movx	@dptr,a
      004ED2 90 09 C8         [24]  757 	mov	dptr,#(_buffer + 0x001d)
      004ED5 F5 F0            [12]  758 	mov	b,a
      004ED7 12 5B C2         [24]  759 	lcall	___memcpy
                                    760 ;	trial_webserver.c:51: transmit_tcp_packet(buffer, 43);
      004EDA 90 09 9E         [24]  761 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004EDD 74 2B            [12]  762 	mov	a,#0x2b
      004EDF F0               [24]  763 	movx	@dptr,a
      004EE0 E4               [12]  764 	clr	a
      004EE1 A3               [24]  765 	inc	dptr
      004EE2 F0               [24]  766 	movx	@dptr,a
      004EE3 90 09 AB         [24]  767 	mov	dptr,#_buffer
      004EE6 F5 F0            [12]  768 	mov	b,a
                                    769 ;	trial_webserver.c:52: }
      004EE8 02 4D 03         [24]  770 	ljmp	_transmit_tcp_packet
                                    771 ;------------------------------------------------------------
                                    772 ;Allocation info for local variables in function 'makeTcpAck3'
                                    773 ;------------------------------------------------------------
                                    774 ;sloc0                     Allocated with name '_makeTcpAck3_sloc0_1_0'
                                    775 ;srcPort                   Allocated with name '_makeTcpAck3_srcPort_10001_122'
                                    776 ;dstPort                   Allocated with name '_makeTcpAck3_dstPort_10001_122'
                                    777 ;clientSeqNum              Allocated with name '_makeTcpAck3_clientSeqNum_10002_123'
                                    778 ;clientAckNum              Allocated with name '_makeTcpAck3_clientAckNum_10002_123'
                                    779 ;serverSeqNum              Allocated with name '_makeTcpAck3_serverSeqNum_10002_123'
                                    780 ;ackNum                    Allocated with name '_makeTcpAck3_ackNum_10002_123'
                                    781 ;totalLength               Allocated with name '_makeTcpAck3_totalLength_10003_124'
                                    782 ;------------------------------------------------------------
                                    783 ;	trial_webserver.c:57: void makeTcpAck3() {
                                    784 ;	-----------------------------------------
                                    785 ;	 function makeTcpAck3
                                    786 ;	-----------------------------------------
      004EEB                        787 _makeTcpAck3:
                                    788 ;	trial_webserver.c:58: printf("makeTcpAck\n\r");
      004EEB 74 94            [12]  789 	mov	a,#___str_1
      004EED C0 E0            [24]  790 	push	acc
      004EEF 74 77            [12]  791 	mov	a,#(___str_1 >> 8)
      004EF1 C0 E0            [24]  792 	push	acc
      004EF3 74 80            [12]  793 	mov	a,#0x80
      004EF5 C0 E0            [24]  794 	push	acc
      004EF7 12 61 AF         [24]  795 	lcall	_printf
      004EFA 15 81            [12]  796 	dec	sp
      004EFC 15 81            [12]  797 	dec	sp
      004EFE 15 81            [12]  798 	dec	sp
                                    799 ;	trial_webserver.c:61: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      004F00 90 0F B6         [24]  800 	mov	dptr,#_memmove_PARM_2
      004F03 74 AB            [12]  801 	mov	a,#_buffer
      004F05 F0               [24]  802 	movx	@dptr,a
      004F06 74 09            [12]  803 	mov	a,#(_buffer >> 8)
      004F08 A3               [24]  804 	inc	dptr
      004F09 F0               [24]  805 	movx	@dptr,a
      004F0A E4               [12]  806 	clr	a
      004F0B A3               [24]  807 	inc	dptr
      004F0C F0               [24]  808 	movx	@dptr,a
      004F0D 90 0F B9         [24]  809 	mov	dptr,#_memmove_PARM_3
      004F10 74 36            [12]  810 	mov	a,#0x36
      004F12 F0               [24]  811 	movx	@dptr,a
      004F13 E4               [12]  812 	clr	a
      004F14 A3               [24]  813 	inc	dptr
      004F15 F0               [24]  814 	movx	@dptr,a
      004F16 90 09 AC         [24]  815 	mov	dptr,#(_buffer + 0x0001)
      004F19 F5 F0            [12]  816 	mov	b,a
      004F1B 12 5C 79         [24]  817 	lcall	_memmove
                                    818 ;	trial_webserver.c:62: buffer[0] = 0x0E;
      004F1E 90 09 AB         [24]  819 	mov	dptr,#_buffer
      004F21 74 0E            [12]  820 	mov	a,#0x0e
      004F23 F0               [24]  821 	movx	@dptr,a
                                    822 ;	trial_webserver.c:65: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      004F24 90 0F AA         [24]  823 	mov	dptr,#___memcpy_PARM_2
      004F27 74 B2            [12]  824 	mov	a,#(_buffer + 0x0007)
      004F29 F0               [24]  825 	movx	@dptr,a
      004F2A 74 09            [12]  826 	mov	a,#((_buffer + 0x0007) >> 8)
      004F2C A3               [24]  827 	inc	dptr
      004F2D F0               [24]  828 	movx	@dptr,a
      004F2E E4               [12]  829 	clr	a
      004F2F A3               [24]  830 	inc	dptr
      004F30 F0               [24]  831 	movx	@dptr,a
      004F31 90 0F AD         [24]  832 	mov	dptr,#___memcpy_PARM_3
      004F34 74 06            [12]  833 	mov	a,#0x06
      004F36 F0               [24]  834 	movx	@dptr,a
      004F37 E4               [12]  835 	clr	a
      004F38 A3               [24]  836 	inc	dptr
      004F39 F0               [24]  837 	movx	@dptr,a
      004F3A 90 09 AC         [24]  838 	mov	dptr,#(_buffer + 0x0001)
      004F3D F5 F0            [12]  839 	mov	b,a
      004F3F 12 5B C2         [24]  840 	lcall	___memcpy
                                    841 ;	trial_webserver.c:66: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      004F42 90 0F AA         [24]  842 	mov	dptr,#___memcpy_PARM_2
      004F45 74 1B            [12]  843 	mov	a,#_device_mac
      004F47 F0               [24]  844 	movx	@dptr,a
      004F48 74 14            [12]  845 	mov	a,#(_device_mac >> 8)
      004F4A A3               [24]  846 	inc	dptr
      004F4B F0               [24]  847 	movx	@dptr,a
      004F4C E4               [12]  848 	clr	a
      004F4D A3               [24]  849 	inc	dptr
      004F4E F0               [24]  850 	movx	@dptr,a
      004F4F 90 0F AD         [24]  851 	mov	dptr,#___memcpy_PARM_3
      004F52 74 06            [12]  852 	mov	a,#0x06
      004F54 F0               [24]  853 	movx	@dptr,a
      004F55 E4               [12]  854 	clr	a
      004F56 A3               [24]  855 	inc	dptr
      004F57 F0               [24]  856 	movx	@dptr,a
      004F58 90 09 B2         [24]  857 	mov	dptr,#(_buffer + 0x0007)
      004F5B F5 F0            [12]  858 	mov	b,a
      004F5D 12 5B C2         [24]  859 	lcall	___memcpy
                                    860 ;	trial_webserver.c:69: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      004F60 90 0F AA         [24]  861 	mov	dptr,#___memcpy_PARM_2
      004F63 74 C6            [12]  862 	mov	a,#(_buffer + 0x001b)
      004F65 F0               [24]  863 	movx	@dptr,a
      004F66 74 09            [12]  864 	mov	a,#((_buffer + 0x001b) >> 8)
      004F68 A3               [24]  865 	inc	dptr
      004F69 F0               [24]  866 	movx	@dptr,a
      004F6A E4               [12]  867 	clr	a
      004F6B A3               [24]  868 	inc	dptr
      004F6C F0               [24]  869 	movx	@dptr,a
      004F6D 90 0F AD         [24]  870 	mov	dptr,#___memcpy_PARM_3
      004F70 74 04            [12]  871 	mov	a,#0x04
      004F72 F0               [24]  872 	movx	@dptr,a
      004F73 E4               [12]  873 	clr	a
      004F74 A3               [24]  874 	inc	dptr
      004F75 F0               [24]  875 	movx	@dptr,a
      004F76 90 09 CA         [24]  876 	mov	dptr,#(_buffer + 0x001f)
      004F79 F5 F0            [12]  877 	mov	b,a
      004F7B 12 5B C2         [24]  878 	lcall	___memcpy
                                    879 ;	trial_webserver.c:70: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      004F7E 90 0F AA         [24]  880 	mov	dptr,#___memcpy_PARM_2
      004F81 74 27            [12]  881 	mov	a,#_device_ip
      004F83 F0               [24]  882 	movx	@dptr,a
      004F84 74 14            [12]  883 	mov	a,#(_device_ip >> 8)
      004F86 A3               [24]  884 	inc	dptr
      004F87 F0               [24]  885 	movx	@dptr,a
      004F88 E4               [12]  886 	clr	a
      004F89 A3               [24]  887 	inc	dptr
      004F8A F0               [24]  888 	movx	@dptr,a
      004F8B 90 0F AD         [24]  889 	mov	dptr,#___memcpy_PARM_3
      004F8E 74 04            [12]  890 	mov	a,#0x04
      004F90 F0               [24]  891 	movx	@dptr,a
      004F91 E4               [12]  892 	clr	a
      004F92 A3               [24]  893 	inc	dptr
      004F93 F0               [24]  894 	movx	@dptr,a
      004F94 90 09 C6         [24]  895 	mov	dptr,#(_buffer + 0x001b)
      004F97 F5 F0            [12]  896 	mov	b,a
      004F99 12 5B C2         [24]  897 	lcall	___memcpy
                                    898 ;	trial_webserver.c:73: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      004F9C 90 09 CE         [24]  899 	mov	dptr,#(_buffer + 0x0023)
      004F9F E0               [24]  900 	movx	a,@dptr
      004FA0 FE               [12]  901 	mov	r6,a
      004FA1 7F 00            [12]  902 	mov	r7,#0x00
      004FA3 90 09 CF         [24]  903 	mov	dptr,#(_buffer + 0x0024)
      004FA6 E0               [24]  904 	movx	a,@dptr
      004FA7 7C 00            [12]  905 	mov	r4,#0x00
      004FA9 42 07            [12]  906 	orl	ar7,a
      004FAB EC               [12]  907 	mov	a,r4
      004FAC 42 06            [12]  908 	orl	ar6,a
                                    909 ;	trial_webserver.c:75: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      004FAE 90 09 D0         [24]  910 	mov	dptr,#(_buffer + 0x0025)
      004FB1 E0               [24]  911 	movx	a,@dptr
      004FB2 FC               [12]  912 	mov	r4,a
      004FB3 7D 00            [12]  913 	mov	r5,#0x00
      004FB5 90 09 D1         [24]  914 	mov	dptr,#(_buffer + 0x0026)
      004FB8 E0               [24]  915 	movx	a,@dptr
      004FB9 7A 00            [12]  916 	mov	r2,#0x00
      004FBB 42 05            [12]  917 	orl	ar5,a
      004FBD EA               [12]  918 	mov	a,r2
      004FBE 42 04            [12]  919 	orl	ar4,a
                                    920 ;	trial_webserver.c:77: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      004FC0 8C 03            [24]  921 	mov	ar3,r4
      004FC2 90 09 CE         [24]  922 	mov	dptr,#(_buffer + 0x0023)
      004FC5 EB               [12]  923 	mov	a,r3
      004FC6 F0               [24]  924 	movx	@dptr,a
                                    925 ;	trial_webserver.c:78: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      004FC7 90 09 CF         [24]  926 	mov	dptr,#(_buffer + 0x0024)
      004FCA ED               [12]  927 	mov	a,r5
      004FCB F0               [24]  928 	movx	@dptr,a
                                    929 ;	trial_webserver.c:79: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      004FCC 8E 05            [24]  930 	mov	ar5,r6
      004FCE 90 09 D0         [24]  931 	mov	dptr,#(_buffer + 0x0025)
      004FD1 ED               [12]  932 	mov	a,r5
      004FD2 F0               [24]  933 	movx	@dptr,a
                                    934 ;	trial_webserver.c:80: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      004FD3 90 09 D1         [24]  935 	mov	dptr,#(_buffer + 0x0026)
      004FD6 EF               [12]  936 	mov	a,r7
      004FD7 F0               [24]  937 	movx	@dptr,a
                                    938 ;	trial_webserver.c:83: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
      004FD8 90 09 D4         [24]  939 	mov	dptr,#(_buffer + 0x0029)
      004FDB E0               [24]  940 	movx	a,@dptr
      004FDC FE               [12]  941 	mov	r6,a
      004FDD 7F 00            [12]  942 	mov	r7,#0x00
      004FDF 90 09 D5         [24]  943 	mov	dptr,#(_buffer + 0x002a)
      004FE2 E0               [24]  944 	movx	a,@dptr
      004FE3 7C 00            [12]  945 	mov	r4,#0x00
      004FE5 42 07            [12]  946 	orl	ar7,a
      004FE7 EC               [12]  947 	mov	a,r4
      004FE8 42 06            [12]  948 	orl	ar6,a
      004FEA EE               [12]  949 	mov	a,r6
      004FEB 33               [12]  950 	rlc	a
      004FEC 95 E0            [12]  951 	subb	a,acc
      004FEE FD               [12]  952 	mov	r5,a
      004FEF FC               [12]  953 	mov	r4,a
                                    954 ;	trial_webserver.c:86: uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
      004FF0 90 09 D8         [24]  955 	mov	dptr,#(_buffer + 0x002d)
      004FF3 E0               [24]  956 	movx	a,@dptr
      004FF4 FA               [12]  957 	mov	r2,a
      004FF5 7B 00            [12]  958 	mov	r3,#0x00
      004FF7 90 09 D9         [24]  959 	mov	dptr,#(_buffer + 0x002e)
      004FFA E0               [24]  960 	movx	a,@dptr
      004FFB 79 00            [12]  961 	mov	r1,#0x00
      004FFD 42 03            [12]  962 	orl	ar3,a
      004FFF E9               [12]  963 	mov	a,r1
      005000 42 02            [12]  964 	orl	ar2,a
      005002 8B 00            [24]  965 	mov	ar0,r3
      005004 EA               [12]  966 	mov	a,r2
      005005 F9               [12]  967 	mov	r1,a
      005006 33               [12]  968 	rlc	a
      005007 95 E0            [12]  969 	subb	a,acc
      005009 FA               [12]  970 	mov	r2,a
      00500A FB               [12]  971 	mov	r3,a
                                    972 ;	trial_webserver.c:90: uint32_t ackNum = clientSeqNum + 1;
      00500B 74 01            [12]  973 	mov	a,#0x01
      00500D 2F               [12]  974 	add	a, r7
      00500E F5 2F            [12]  975 	mov	_makeTcpAck3_sloc0_1_0,a
      005010 E4               [12]  976 	clr	a
      005011 3E               [12]  977 	addc	a, r6
      005012 F5 30            [12]  978 	mov	(_makeTcpAck3_sloc0_1_0 + 1),a
      005014 E4               [12]  979 	clr	a
      005015 3D               [12]  980 	addc	a, r5
      005016 F5 31            [12]  981 	mov	(_makeTcpAck3_sloc0_1_0 + 2),a
      005018 E4               [12]  982 	clr	a
      005019 3C               [12]  983 	addc	a, r4
      00501A F5 32            [12]  984 	mov	(_makeTcpAck3_sloc0_1_0 + 3),a
                                    985 ;	trial_webserver.c:91: prevSeq = serverSeqNum;
      00501C 90 09 A3         [24]  986 	mov	dptr,#_prevSeq
      00501F E8               [12]  987 	mov	a,r0
      005020 F0               [24]  988 	movx	@dptr,a
      005021 E9               [12]  989 	mov	a,r1
      005022 A3               [24]  990 	inc	dptr
      005023 F0               [24]  991 	movx	@dptr,a
      005024 EA               [12]  992 	mov	a,r2
      005025 A3               [24]  993 	inc	dptr
      005026 F0               [24]  994 	movx	@dptr,a
      005027 EB               [12]  995 	mov	a,r3
      005028 A3               [24]  996 	inc	dptr
      005029 F0               [24]  997 	movx	@dptr,a
                                    998 ;	trial_webserver.c:92: prevAck = ackNum;
      00502A 90 09 A7         [24]  999 	mov	dptr,#_prevAck
      00502D E5 2F            [12] 1000 	mov	a,_makeTcpAck3_sloc0_1_0
      00502F F0               [24] 1001 	movx	@dptr,a
      005030 E5 30            [12] 1002 	mov	a,(_makeTcpAck3_sloc0_1_0 + 1)
      005032 A3               [24] 1003 	inc	dptr
      005033 F0               [24] 1004 	movx	@dptr,a
      005034 E5 31            [12] 1005 	mov	a,(_makeTcpAck3_sloc0_1_0 + 2)
      005036 A3               [24] 1006 	inc	dptr
      005037 F0               [24] 1007 	movx	@dptr,a
      005038 E5 32            [12] 1008 	mov	a,(_makeTcpAck3_sloc0_1_0 + 3)
      00503A A3               [24] 1009 	inc	dptr
      00503B F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	trial_webserver.c:95: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      00503C 8B 07            [24] 1012 	mov	ar7,r3
      00503E 90 09 D2         [24] 1013 	mov	dptr,#(_buffer + 0x0027)
      005041 EF               [12] 1014 	mov	a,r7
      005042 F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	trial_webserver.c:96: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      005043 8A 07            [24] 1017 	mov	ar7,r2
      005045 90 09 D3         [24] 1018 	mov	dptr,#(_buffer + 0x0028)
      005048 EF               [12] 1019 	mov	a,r7
      005049 F0               [24] 1020 	movx	@dptr,a
                                   1021 ;	trial_webserver.c:97: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      00504A 89 07            [24] 1022 	mov	ar7,r1
      00504C 90 09 D4         [24] 1023 	mov	dptr,#(_buffer + 0x0029)
      00504F EF               [12] 1024 	mov	a,r7
      005050 F0               [24] 1025 	movx	@dptr,a
                                   1026 ;	trial_webserver.c:98: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      005051 90 09 D5         [24] 1027 	mov	dptr,#(_buffer + 0x002a)
      005054 E8               [12] 1028 	mov	a,r0
      005055 F0               [24] 1029 	movx	@dptr,a
                                   1030 ;	trial_webserver.c:99: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      005056 AF 32            [24] 1031 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 3)
      005058 90 09 D6         [24] 1032 	mov	dptr,#(_buffer + 0x002b)
      00505B EF               [12] 1033 	mov	a,r7
      00505C F0               [24] 1034 	movx	@dptr,a
                                   1035 ;	trial_webserver.c:100: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      00505D AF 31            [24] 1036 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 2)
      00505F 90 09 D7         [24] 1037 	mov	dptr,#(_buffer + 0x002c)
      005062 EF               [12] 1038 	mov	a,r7
      005063 F0               [24] 1039 	movx	@dptr,a
                                   1040 ;	trial_webserver.c:101: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      005064 AF 30            [24] 1041 	mov	r7,(_makeTcpAck3_sloc0_1_0 + 1)
      005066 90 09 D8         [24] 1042 	mov	dptr,#(_buffer + 0x002d)
      005069 EF               [12] 1043 	mov	a,r7
      00506A F0               [24] 1044 	movx	@dptr,a
                                   1045 ;	trial_webserver.c:102: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      00506B AF 2F            [24] 1046 	mov	r7,_makeTcpAck3_sloc0_1_0
      00506D 90 09 D9         [24] 1047 	mov	dptr,#(_buffer + 0x002e)
      005070 EF               [12] 1048 	mov	a,r7
      005071 F0               [24] 1049 	movx	@dptr,a
                                   1050 ;	trial_webserver.c:106: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      005072 90 09 BC         [24] 1051 	mov	dptr,#(_buffer + 0x0011)
      005075 E4               [12] 1052 	clr	a
      005076 F0               [24] 1053 	movx	@dptr,a
                                   1054 ;	trial_webserver.c:107: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005077 90 09 BD         [24] 1055 	mov	dptr,#(_buffer + 0x0012)
      00507A 74 28            [12] 1056 	mov	a,#0x28
      00507C F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	trial_webserver.c:110: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      00507D 90 09 DB         [24] 1059 	mov	dptr,#(_buffer + 0x0030)
      005080 74 10            [12] 1060 	mov	a,#0x10
      005082 F0               [24] 1061 	movx	@dptr,a
                                   1062 ;	trial_webserver.c:111: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      005083 90 09 DC         [24] 1063 	mov	dptr,#(_buffer + 0x0031)
      005086 74 FF            [12] 1064 	mov	a,#0xff
      005088 F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	trial_webserver.c:112: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      005089 90 09 DD         [24] 1067 	mov	dptr,#(_buffer + 0x0032)
      00508C F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	trial_webserver.c:113: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      00508D 90 09 DA         [24] 1070 	mov	dptr,#(_buffer + 0x002f)
      005090 74 50            [12] 1071 	mov	a,#0x50
      005092 F0               [24] 1072 	movx	@dptr,a
                                   1073 ;	trial_webserver.c:116: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      005093 90 09 AC         [24] 1074 	mov	dptr,#(_buffer + 0x0001)
      005096 75 F0 00         [24] 1075 	mov	b, #0x00
      005099 12 3F 7C         [24] 1076 	lcall	_calculateIPChecksum
                                   1077 ;	trial_webserver.c:117: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      00509C 90 09 AC         [24] 1078 	mov	dptr,#(_buffer + 0x0001)
      00509F 75 F0 00         [24] 1079 	mov	b, #0x00
      0050A2 12 40 E6         [24] 1080 	lcall	_calculateTcpChecksum
                                   1081 ;	trial_webserver.c:121: transmit_tcp_packet(buffer, 1 + 54);
      0050A5 90 09 9E         [24] 1082 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0050A8 74 37            [12] 1083 	mov	a,#0x37
      0050AA F0               [24] 1084 	movx	@dptr,a
      0050AB E4               [12] 1085 	clr	a
      0050AC A3               [24] 1086 	inc	dptr
      0050AD F0               [24] 1087 	movx	@dptr,a
      0050AE 90 09 AB         [24] 1088 	mov	dptr,#_buffer
      0050B1 F5 F0            [12] 1089 	mov	b,a
      0050B3 12 4D 03         [24] 1090 	lcall	_transmit_tcp_packet
                                   1091 ;	trial_webserver.c:124: connectionState = ACK_SENT;
      0050B6 90 14 2F         [24] 1092 	mov	dptr,#_connectionState
      0050B9 74 05            [12] 1093 	mov	a,#0x05
      0050BB F0               [24] 1094 	movx	@dptr,a
                                   1095 ;	trial_webserver.c:125: }
      0050BC 22               [24] 1096 	ret
                                   1097 ;------------------------------------------------------------
                                   1098 ;Allocation info for local variables in function 'makeTcpAck2'
                                   1099 ;------------------------------------------------------------
                                   1100 ;sloc0                     Allocated with name '_makeTcpAck2_sloc0_1_0'
                                   1101 ;sloc1                     Allocated with name '_makeTcpAck2_sloc1_1_0'
                                   1102 ;sloc2                     Allocated with name '_makeTcpAck2_sloc2_1_0'
                                   1103 ;totalLength1              Allocated with name '_makeTcpAck2_totalLength1_10000_125'
                                   1104 ;receivedPayloadLength     Allocated with name '_makeTcpAck2_receivedPayloadLength_10000_125'
                                   1105 ;srcPort                   Allocated with name '_makeTcpAck2_srcPort_10001_126'
                                   1106 ;dstPort                   Allocated with name '_makeTcpAck2_dstPort_10001_126'
                                   1107 ;clientSeqNum              Allocated with name '_makeTcpAck2_clientSeqNum_10002_127'
                                   1108 ;clientAckNum              Allocated with name '_makeTcpAck2_clientAckNum_10002_127'
                                   1109 ;serverSeqNum              Allocated with name '_makeTcpAck2_serverSeqNum_10002_127'
                                   1110 ;ackNum                    Allocated with name '_makeTcpAck2_ackNum_10002_127'
                                   1111 ;totalLength               Allocated with name '_makeTcpAck2_totalLength_10003_128'
                                   1112 ;------------------------------------------------------------
                                   1113 ;	trial_webserver.c:127: void makeTcpAck2() {
                                   1114 ;	-----------------------------------------
                                   1115 ;	 function makeTcpAck2
                                   1116 ;	-----------------------------------------
      0050BD                       1117 _makeTcpAck2:
                                   1118 ;	trial_webserver.c:128: uint16_t totalLength1 = (buffer[16] << 8) | buffer[17]; // Total IP length
      0050BD 90 09 BB         [24] 1119 	mov	dptr,#(_buffer + 0x0010)
      0050C0 E0               [24] 1120 	movx	a,@dptr
      0050C1 FE               [12] 1121 	mov	r6,a
      0050C2 7F 00            [12] 1122 	mov	r7,#0x00
      0050C4 90 09 BC         [24] 1123 	mov	dptr,#(_buffer + 0x0011)
      0050C7 E0               [24] 1124 	movx	a,@dptr
      0050C8 7C 00            [12] 1125 	mov	r4,#0x00
      0050CA 42 07            [12] 1126 	orl	ar7,a
      0050CC EC               [12] 1127 	mov	a,r4
      0050CD 42 06            [12] 1128 	orl	ar6,a
                                   1129 ;	trial_webserver.c:129: uint16_t receivedPayloadLength = totalLength1 - 40;
      0050CF EF               [12] 1130 	mov	a,r7
      0050D0 24 D8            [12] 1131 	add	a,#0xd8
      0050D2 FF               [12] 1132 	mov	r7,a
      0050D3 EE               [12] 1133 	mov	a,r6
      0050D4 34 FF            [12] 1134 	addc	a,#0xff
      0050D6 FE               [12] 1135 	mov	r6,a
      0050D7 8F 35            [24] 1136 	mov	_makeTcpAck2_sloc1_1_0,r7
      0050D9 8E 36            [24] 1137 	mov	(_makeTcpAck2_sloc1_1_0 + 1),r6
                                   1138 ;	trial_webserver.c:130: printf("makeTcpAck\n\r");
      0050DB 74 94            [12] 1139 	mov	a,#___str_1
      0050DD C0 E0            [24] 1140 	push	acc
      0050DF 74 77            [12] 1141 	mov	a,#(___str_1 >> 8)
      0050E1 C0 E0            [24] 1142 	push	acc
      0050E3 74 80            [12] 1143 	mov	a,#0x80
      0050E5 C0 E0            [24] 1144 	push	acc
      0050E7 12 61 AF         [24] 1145 	lcall	_printf
      0050EA 15 81            [12] 1146 	dec	sp
      0050EC 15 81            [12] 1147 	dec	sp
      0050EE 15 81            [12] 1148 	dec	sp
                                   1149 ;	trial_webserver.c:133: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      0050F0 90 0F B6         [24] 1150 	mov	dptr,#_memmove_PARM_2
      0050F3 74 AB            [12] 1151 	mov	a,#_buffer
      0050F5 F0               [24] 1152 	movx	@dptr,a
      0050F6 74 09            [12] 1153 	mov	a,#(_buffer >> 8)
      0050F8 A3               [24] 1154 	inc	dptr
      0050F9 F0               [24] 1155 	movx	@dptr,a
      0050FA E4               [12] 1156 	clr	a
      0050FB A3               [24] 1157 	inc	dptr
      0050FC F0               [24] 1158 	movx	@dptr,a
      0050FD 90 0F B9         [24] 1159 	mov	dptr,#_memmove_PARM_3
      005100 74 36            [12] 1160 	mov	a,#0x36
      005102 F0               [24] 1161 	movx	@dptr,a
      005103 E4               [12] 1162 	clr	a
      005104 A3               [24] 1163 	inc	dptr
      005105 F0               [24] 1164 	movx	@dptr,a
      005106 90 09 AC         [24] 1165 	mov	dptr,#(_buffer + 0x0001)
      005109 F5 F0            [12] 1166 	mov	b,a
      00510B 12 5C 79         [24] 1167 	lcall	_memmove
                                   1168 ;	trial_webserver.c:134: buffer[0] = 0x0E;
      00510E 90 09 AB         [24] 1169 	mov	dptr,#_buffer
      005111 74 0E            [12] 1170 	mov	a,#0x0e
      005113 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	trial_webserver.c:137: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      005114 90 0F AA         [24] 1173 	mov	dptr,#___memcpy_PARM_2
      005117 74 B2            [12] 1174 	mov	a,#(_buffer + 0x0007)
      005119 F0               [24] 1175 	movx	@dptr,a
      00511A 74 09            [12] 1176 	mov	a,#((_buffer + 0x0007) >> 8)
      00511C A3               [24] 1177 	inc	dptr
      00511D F0               [24] 1178 	movx	@dptr,a
      00511E E4               [12] 1179 	clr	a
      00511F A3               [24] 1180 	inc	dptr
      005120 F0               [24] 1181 	movx	@dptr,a
      005121 90 0F AD         [24] 1182 	mov	dptr,#___memcpy_PARM_3
      005124 74 06            [12] 1183 	mov	a,#0x06
      005126 F0               [24] 1184 	movx	@dptr,a
      005127 E4               [12] 1185 	clr	a
      005128 A3               [24] 1186 	inc	dptr
      005129 F0               [24] 1187 	movx	@dptr,a
      00512A 90 09 AC         [24] 1188 	mov	dptr,#(_buffer + 0x0001)
      00512D F5 F0            [12] 1189 	mov	b,a
      00512F 12 5B C2         [24] 1190 	lcall	___memcpy
                                   1191 ;	trial_webserver.c:138: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      005132 90 0F AA         [24] 1192 	mov	dptr,#___memcpy_PARM_2
      005135 74 1B            [12] 1193 	mov	a,#_device_mac
      005137 F0               [24] 1194 	movx	@dptr,a
      005138 74 14            [12] 1195 	mov	a,#(_device_mac >> 8)
      00513A A3               [24] 1196 	inc	dptr
      00513B F0               [24] 1197 	movx	@dptr,a
      00513C E4               [12] 1198 	clr	a
      00513D A3               [24] 1199 	inc	dptr
      00513E F0               [24] 1200 	movx	@dptr,a
      00513F 90 0F AD         [24] 1201 	mov	dptr,#___memcpy_PARM_3
      005142 74 06            [12] 1202 	mov	a,#0x06
      005144 F0               [24] 1203 	movx	@dptr,a
      005145 E4               [12] 1204 	clr	a
      005146 A3               [24] 1205 	inc	dptr
      005147 F0               [24] 1206 	movx	@dptr,a
      005148 90 09 B2         [24] 1207 	mov	dptr,#(_buffer + 0x0007)
      00514B F5 F0            [12] 1208 	mov	b,a
      00514D 12 5B C2         [24] 1209 	lcall	___memcpy
                                   1210 ;	trial_webserver.c:141: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      005150 90 0F AA         [24] 1211 	mov	dptr,#___memcpy_PARM_2
      005153 74 C6            [12] 1212 	mov	a,#(_buffer + 0x001b)
      005155 F0               [24] 1213 	movx	@dptr,a
      005156 74 09            [12] 1214 	mov	a,#((_buffer + 0x001b) >> 8)
      005158 A3               [24] 1215 	inc	dptr
      005159 F0               [24] 1216 	movx	@dptr,a
      00515A E4               [12] 1217 	clr	a
      00515B A3               [24] 1218 	inc	dptr
      00515C F0               [24] 1219 	movx	@dptr,a
      00515D 90 0F AD         [24] 1220 	mov	dptr,#___memcpy_PARM_3
      005160 74 04            [12] 1221 	mov	a,#0x04
      005162 F0               [24] 1222 	movx	@dptr,a
      005163 E4               [12] 1223 	clr	a
      005164 A3               [24] 1224 	inc	dptr
      005165 F0               [24] 1225 	movx	@dptr,a
      005166 90 09 CA         [24] 1226 	mov	dptr,#(_buffer + 0x001f)
      005169 F5 F0            [12] 1227 	mov	b,a
      00516B 12 5B C2         [24] 1228 	lcall	___memcpy
                                   1229 ;	trial_webserver.c:142: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      00516E 90 0F AA         [24] 1230 	mov	dptr,#___memcpy_PARM_2
      005171 74 27            [12] 1231 	mov	a,#_device_ip
      005173 F0               [24] 1232 	movx	@dptr,a
      005174 74 14            [12] 1233 	mov	a,#(_device_ip >> 8)
      005176 A3               [24] 1234 	inc	dptr
      005177 F0               [24] 1235 	movx	@dptr,a
      005178 E4               [12] 1236 	clr	a
      005179 A3               [24] 1237 	inc	dptr
      00517A F0               [24] 1238 	movx	@dptr,a
      00517B 90 0F AD         [24] 1239 	mov	dptr,#___memcpy_PARM_3
      00517E 74 04            [12] 1240 	mov	a,#0x04
      005180 F0               [24] 1241 	movx	@dptr,a
      005181 E4               [12] 1242 	clr	a
      005182 A3               [24] 1243 	inc	dptr
      005183 F0               [24] 1244 	movx	@dptr,a
      005184 90 09 C6         [24] 1245 	mov	dptr,#(_buffer + 0x001b)
      005187 F5 F0            [12] 1246 	mov	b,a
      005189 12 5B C2         [24] 1247 	lcall	___memcpy
                                   1248 ;	trial_webserver.c:145: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00518C 90 09 CE         [24] 1249 	mov	dptr,#(_buffer + 0x0023)
      00518F E0               [24] 1250 	movx	a,@dptr
      005190 FC               [12] 1251 	mov	r4,a
      005191 7D 00            [12] 1252 	mov	r5,#0x00
      005193 90 09 CF         [24] 1253 	mov	dptr,#(_buffer + 0x0024)
      005196 E0               [24] 1254 	movx	a,@dptr
      005197 7A 00            [12] 1255 	mov	r2,#0x00
      005199 42 05            [12] 1256 	orl	ar5,a
      00519B EA               [12] 1257 	mov	a,r2
      00519C 42 04            [12] 1258 	orl	ar4,a
                                   1259 ;	trial_webserver.c:147: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      00519E 90 09 D0         [24] 1260 	mov	dptr,#(_buffer + 0x0025)
      0051A1 E0               [24] 1261 	movx	a,@dptr
      0051A2 FA               [12] 1262 	mov	r2,a
      0051A3 7B 00            [12] 1263 	mov	r3,#0x00
      0051A5 90 09 D1         [24] 1264 	mov	dptr,#(_buffer + 0x0026)
      0051A8 E0               [24] 1265 	movx	a,@dptr
      0051A9 79 00            [12] 1266 	mov	r1,#0x00
      0051AB 42 03            [12] 1267 	orl	ar3,a
      0051AD E9               [12] 1268 	mov	a,r1
      0051AE 42 02            [12] 1269 	orl	ar2,a
                                   1270 ;	trial_webserver.c:149: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0051B0 8A 01            [24] 1271 	mov	ar1,r2
      0051B2 90 09 CE         [24] 1272 	mov	dptr,#(_buffer + 0x0023)
      0051B5 E9               [12] 1273 	mov	a,r1
      0051B6 F0               [24] 1274 	movx	@dptr,a
                                   1275 ;	trial_webserver.c:150: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0051B7 90 09 CF         [24] 1276 	mov	dptr,#(_buffer + 0x0024)
      0051BA EB               [12] 1277 	mov	a,r3
      0051BB F0               [24] 1278 	movx	@dptr,a
                                   1279 ;	trial_webserver.c:151: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0051BC 8C 03            [24] 1280 	mov	ar3,r4
      0051BE 90 09 D0         [24] 1281 	mov	dptr,#(_buffer + 0x0025)
      0051C1 EB               [12] 1282 	mov	a,r3
      0051C2 F0               [24] 1283 	movx	@dptr,a
                                   1284 ;	trial_webserver.c:152: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0051C3 90 09 D1         [24] 1285 	mov	dptr,#(_buffer + 0x0026)
      0051C6 ED               [12] 1286 	mov	a,r5
      0051C7 F0               [24] 1287 	movx	@dptr,a
                                   1288 ;	trial_webserver.c:155: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
      0051C8 90 09 D4         [24] 1289 	mov	dptr,#(_buffer + 0x0029)
      0051CB E0               [24] 1290 	movx	a,@dptr
      0051CC FC               [12] 1291 	mov	r4,a
      0051CD 7D 00            [12] 1292 	mov	r5,#0x00
      0051CF 90 09 D5         [24] 1293 	mov	dptr,#(_buffer + 0x002a)
      0051D2 E0               [24] 1294 	movx	a,@dptr
      0051D3 7A 00            [12] 1295 	mov	r2,#0x00
      0051D5 42 05            [12] 1296 	orl	ar5,a
      0051D7 EA               [12] 1297 	mov	a,r2
      0051D8 42 04            [12] 1298 	orl	ar4,a
      0051DA 8D 37            [24] 1299 	mov	_makeTcpAck2_sloc2_1_0,r5
      0051DC EC               [12] 1300 	mov	a,r4
      0051DD F5 38            [12] 1301 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      0051DF 33               [12] 1302 	rlc	a
      0051E0 95 E0            [12] 1303 	subb	a,acc
      0051E2 F5 39            [12] 1304 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      0051E4 F5 3A            [12] 1305 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   1306 ;	trial_webserver.c:158: uint32_t clientAckNum = (buffer[1 + TCP_ACK_H_P] << 24)
      0051E6 90 09 D8         [24] 1307 	mov	dptr,#(_buffer + 0x002d)
      0051E9 E0               [24] 1308 	movx	a,@dptr
      0051EA F8               [12] 1309 	mov	r0,a
      0051EB 79 00            [12] 1310 	mov	r1,#0x00
      0051ED 88 34            [24] 1311 	mov	(_makeTcpAck2_sloc0_1_0 + 1),r0
      0051EF 89 33            [24] 1312 	mov	_makeTcpAck2_sloc0_1_0,r1
      0051F1 90 09 D9         [24] 1313 	mov	dptr,#(_buffer + 0x002e)
      0051F4 E0               [24] 1314 	movx	a,@dptr
      0051F5 F8               [12] 1315 	mov	r0,a
      0051F6 79 00            [12] 1316 	mov	r1,#0x00
      0051F8 E5 34            [12] 1317 	mov	a,(_makeTcpAck2_sloc0_1_0 + 1)
      0051FA 42 01            [12] 1318 	orl	ar1,a
      0051FC E9               [12] 1319 	mov	a,r1
      0051FD 33               [12] 1320 	rlc	a
      0051FE 95 E0            [12] 1321 	subb	a,acc
      005200 FE               [12] 1322 	mov	r6,a
      005201 FF               [12] 1323 	mov	r7,a
                                   1324 ;	trial_webserver.c:162: uint32_t ackNum = clientSeqNum + receivedPayloadLength - 1;
      005202 AA 35            [24] 1325 	mov	r2,_makeTcpAck2_sloc1_1_0
      005204 AB 36            [24] 1326 	mov	r3,(_makeTcpAck2_sloc1_1_0 + 1)
      005206 E4               [12] 1327 	clr	a
      005207 FC               [12] 1328 	mov	r4,a
      005208 FD               [12] 1329 	mov	r5,a
      005209 EA               [12] 1330 	mov	a,r2
      00520A 25 37            [12] 1331 	add	a, _makeTcpAck2_sloc2_1_0
      00520C FA               [12] 1332 	mov	r2,a
      00520D EB               [12] 1333 	mov	a,r3
      00520E 35 38            [12] 1334 	addc	a, (_makeTcpAck2_sloc2_1_0 + 1)
      005210 FB               [12] 1335 	mov	r3,a
      005211 EC               [12] 1336 	mov	a,r4
      005212 35 39            [12] 1337 	addc	a, (_makeTcpAck2_sloc2_1_0 + 2)
      005214 FC               [12] 1338 	mov	r4,a
      005215 ED               [12] 1339 	mov	a,r5
      005216 35 3A            [12] 1340 	addc	a, (_makeTcpAck2_sloc2_1_0 + 3)
      005218 FD               [12] 1341 	mov	r5,a
      005219 EA               [12] 1342 	mov	a,r2
      00521A 24 FF            [12] 1343 	add	a,#0xff
      00521C F5 37            [12] 1344 	mov	_makeTcpAck2_sloc2_1_0,a
      00521E EB               [12] 1345 	mov	a,r3
      00521F 34 FF            [12] 1346 	addc	a,#0xff
      005221 F5 38            [12] 1347 	mov	(_makeTcpAck2_sloc2_1_0 + 1),a
      005223 EC               [12] 1348 	mov	a,r4
      005224 34 FF            [12] 1349 	addc	a,#0xff
      005226 F5 39            [12] 1350 	mov	(_makeTcpAck2_sloc2_1_0 + 2),a
      005228 ED               [12] 1351 	mov	a,r5
      005229 34 FF            [12] 1352 	addc	a,#0xff
      00522B F5 3A            [12] 1353 	mov	(_makeTcpAck2_sloc2_1_0 + 3),a
                                   1354 ;	trial_webserver.c:163: prevSeq = serverSeqNum;
      00522D 90 09 A3         [24] 1355 	mov	dptr,#_prevSeq
      005230 E8               [12] 1356 	mov	a,r0
      005231 F0               [24] 1357 	movx	@dptr,a
      005232 E9               [12] 1358 	mov	a,r1
      005233 A3               [24] 1359 	inc	dptr
      005234 F0               [24] 1360 	movx	@dptr,a
      005235 EE               [12] 1361 	mov	a,r6
      005236 A3               [24] 1362 	inc	dptr
      005237 F0               [24] 1363 	movx	@dptr,a
      005238 EF               [12] 1364 	mov	a,r7
      005239 A3               [24] 1365 	inc	dptr
      00523A F0               [24] 1366 	movx	@dptr,a
                                   1367 ;	trial_webserver.c:164: prevAck = ackNum;
      00523B 90 09 A7         [24] 1368 	mov	dptr,#_prevAck
      00523E E5 37            [12] 1369 	mov	a,_makeTcpAck2_sloc2_1_0
      005240 F0               [24] 1370 	movx	@dptr,a
      005241 E5 38            [12] 1371 	mov	a,(_makeTcpAck2_sloc2_1_0 + 1)
      005243 A3               [24] 1372 	inc	dptr
      005244 F0               [24] 1373 	movx	@dptr,a
      005245 E5 39            [12] 1374 	mov	a,(_makeTcpAck2_sloc2_1_0 + 2)
      005247 A3               [24] 1375 	inc	dptr
      005248 F0               [24] 1376 	movx	@dptr,a
      005249 E5 3A            [12] 1377 	mov	a,(_makeTcpAck2_sloc2_1_0 + 3)
      00524B A3               [24] 1378 	inc	dptr
      00524C F0               [24] 1379 	movx	@dptr,a
                                   1380 ;	trial_webserver.c:167: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      00524D 8F 05            [24] 1381 	mov	ar5,r7
      00524F 90 09 D2         [24] 1382 	mov	dptr,#(_buffer + 0x0027)
      005252 ED               [12] 1383 	mov	a,r5
      005253 F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	trial_webserver.c:168: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      005254 8E 05            [24] 1386 	mov	ar5,r6
      005256 90 09 D3         [24] 1387 	mov	dptr,#(_buffer + 0x0028)
      005259 ED               [12] 1388 	mov	a,r5
      00525A F0               [24] 1389 	movx	@dptr,a
                                   1390 ;	trial_webserver.c:169: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      00525B 89 05            [24] 1391 	mov	ar5,r1
      00525D 90 09 D4         [24] 1392 	mov	dptr,#(_buffer + 0x0029)
      005260 ED               [12] 1393 	mov	a,r5
      005261 F0               [24] 1394 	movx	@dptr,a
                                   1395 ;	trial_webserver.c:170: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      005262 90 09 D5         [24] 1396 	mov	dptr,#(_buffer + 0x002a)
      005265 E8               [12] 1397 	mov	a,r0
      005266 F0               [24] 1398 	movx	@dptr,a
                                   1399 ;	trial_webserver.c:171: buffer[1 + TCP_ACK_H_P] = (ackNum >> 24) & 0xFF;
      005267 AF 3A            [24] 1400 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 3)
      005269 90 09 D6         [24] 1401 	mov	dptr,#(_buffer + 0x002b)
      00526C EF               [12] 1402 	mov	a,r7
      00526D F0               [24] 1403 	movx	@dptr,a
                                   1404 ;	trial_webserver.c:172: buffer[1 + TCP_ACK_H_P + 1] = (ackNum >> 16) & 0xFF;
      00526E AF 39            [24] 1405 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 2)
      005270 90 09 D7         [24] 1406 	mov	dptr,#(_buffer + 0x002c)
      005273 EF               [12] 1407 	mov	a,r7
      005274 F0               [24] 1408 	movx	@dptr,a
                                   1409 ;	trial_webserver.c:173: buffer[1 + TCP_ACK_H_P + 2] = (ackNum >> 8) & 0xFF;
      005275 AF 38            [24] 1410 	mov	r7,(_makeTcpAck2_sloc2_1_0 + 1)
      005277 90 09 D8         [24] 1411 	mov	dptr,#(_buffer + 0x002d)
      00527A EF               [12] 1412 	mov	a,r7
      00527B F0               [24] 1413 	movx	@dptr,a
                                   1414 ;	trial_webserver.c:174: buffer[1 + TCP_ACK_H_P + 3] = ackNum & 0xFF;
      00527C AA 37            [24] 1415 	mov	r2,_makeTcpAck2_sloc2_1_0
      00527E 90 09 D9         [24] 1416 	mov	dptr,#(_buffer + 0x002e)
      005281 EA               [12] 1417 	mov	a,r2
      005282 F0               [24] 1418 	movx	@dptr,a
                                   1419 ;	trial_webserver.c:178: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      005283 90 09 BC         [24] 1420 	mov	dptr,#(_buffer + 0x0011)
      005286 E4               [12] 1421 	clr	a
      005287 F0               [24] 1422 	movx	@dptr,a
                                   1423 ;	trial_webserver.c:179: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005288 90 09 BD         [24] 1424 	mov	dptr,#(_buffer + 0x0012)
      00528B 74 28            [12] 1425 	mov	a,#0x28
      00528D F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	trial_webserver.c:182: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;  // Only the ACK flag is set
      00528E 90 09 DB         [24] 1428 	mov	dptr,#(_buffer + 0x0030)
      005291 74 10            [12] 1429 	mov	a,#0x10
      005293 F0               [24] 1430 	movx	@dptr,a
                                   1431 ;	trial_webserver.c:183: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      005294 90 09 DC         [24] 1432 	mov	dptr,#(_buffer + 0x0031)
      005297 74 FF            [12] 1433 	mov	a,#0xff
      005299 F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	trial_webserver.c:184: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      00529A 90 09 DD         [24] 1436 	mov	dptr,#(_buffer + 0x0032)
      00529D F0               [24] 1437 	movx	@dptr,a
                                   1438 ;	trial_webserver.c:185: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      00529E 90 09 DA         [24] 1439 	mov	dptr,#(_buffer + 0x002f)
      0052A1 74 50            [12] 1440 	mov	a,#0x50
      0052A3 F0               [24] 1441 	movx	@dptr,a
                                   1442 ;	trial_webserver.c:188: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      0052A4 90 09 AC         [24] 1443 	mov	dptr,#(_buffer + 0x0001)
      0052A7 75 F0 00         [24] 1444 	mov	b, #0x00
      0052AA 12 3F 7C         [24] 1445 	lcall	_calculateIPChecksum
                                   1446 ;	trial_webserver.c:189: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      0052AD 90 09 AC         [24] 1447 	mov	dptr,#(_buffer + 0x0001)
      0052B0 75 F0 00         [24] 1448 	mov	b, #0x00
      0052B3 12 40 E6         [24] 1449 	lcall	_calculateTcpChecksum
                                   1450 ;	trial_webserver.c:193: transmit_tcp_packet(buffer, 1 + 54);
      0052B6 90 09 9E         [24] 1451 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0052B9 74 37            [12] 1452 	mov	a,#0x37
      0052BB F0               [24] 1453 	movx	@dptr,a
      0052BC E4               [12] 1454 	clr	a
      0052BD A3               [24] 1455 	inc	dptr
      0052BE F0               [24] 1456 	movx	@dptr,a
      0052BF 90 09 AB         [24] 1457 	mov	dptr,#_buffer
      0052C2 F5 F0            [12] 1458 	mov	b,a
      0052C4 12 4D 03         [24] 1459 	lcall	_transmit_tcp_packet
                                   1460 ;	trial_webserver.c:196: connectionState = ACK_SENT;
      0052C7 90 14 2F         [24] 1461 	mov	dptr,#_connectionState
      0052CA 74 05            [12] 1462 	mov	a,#0x05
      0052CC F0               [24] 1463 	movx	@dptr,a
                                   1464 ;	trial_webserver.c:197: }
      0052CD 22               [24] 1465 	ret
                                   1466 ;------------------------------------------------------------
                                   1467 ;Allocation info for local variables in function 'makeTcpSynAck'
                                   1468 ;------------------------------------------------------------
                                   1469 ;srcPort                   Allocated with name '_makeTcpSynAck_srcPort_10001_130'
                                   1470 ;dstPort                   Allocated with name '_makeTcpSynAck_dstPort_10001_130'
                                   1471 ;clientSeqNum              Allocated with name '_makeTcpSynAck_clientSeqNum_10002_131'
                                   1472 ;serverSeqNum              Allocated with name '_makeTcpSynAck_serverSeqNum_10002_131'
                                   1473 ;ackNum                    Allocated with name '_makeTcpSynAck_ackNum_10002_131'
                                   1474 ;totalLength               Allocated with name '_makeTcpSynAck_totalLength_10003_132'
                                   1475 ;------------------------------------------------------------
                                   1476 ;	trial_webserver.c:199: void makeTcpSynAck() {
                                   1477 ;	-----------------------------------------
                                   1478 ;	 function makeTcpSynAck
                                   1479 ;	-----------------------------------------
      0052CE                       1480 _makeTcpSynAck:
                                   1481 ;	trial_webserver.c:200: printf("makeTcpSynAck\n\r");
      0052CE 74 A1            [12] 1482 	mov	a,#___str_2
      0052D0 C0 E0            [24] 1483 	push	acc
      0052D2 74 77            [12] 1484 	mov	a,#(___str_2 >> 8)
      0052D4 C0 E0            [24] 1485 	push	acc
      0052D6 74 80            [12] 1486 	mov	a,#0x80
      0052D8 C0 E0            [24] 1487 	push	acc
      0052DA 12 61 AF         [24] 1488 	lcall	_printf
      0052DD 15 81            [12] 1489 	dec	sp
      0052DF 15 81            [12] 1490 	dec	sp
      0052E1 15 81            [12] 1491 	dec	sp
                                   1492 ;	trial_webserver.c:203: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      0052E3 90 0F B6         [24] 1493 	mov	dptr,#_memmove_PARM_2
      0052E6 74 AB            [12] 1494 	mov	a,#_buffer
      0052E8 F0               [24] 1495 	movx	@dptr,a
      0052E9 74 09            [12] 1496 	mov	a,#(_buffer >> 8)
      0052EB A3               [24] 1497 	inc	dptr
      0052EC F0               [24] 1498 	movx	@dptr,a
      0052ED E4               [12] 1499 	clr	a
      0052EE A3               [24] 1500 	inc	dptr
      0052EF F0               [24] 1501 	movx	@dptr,a
      0052F0 90 0F B9         [24] 1502 	mov	dptr,#_memmove_PARM_3
      0052F3 74 36            [12] 1503 	mov	a,#0x36
      0052F5 F0               [24] 1504 	movx	@dptr,a
      0052F6 E4               [12] 1505 	clr	a
      0052F7 A3               [24] 1506 	inc	dptr
      0052F8 F0               [24] 1507 	movx	@dptr,a
      0052F9 90 09 AC         [24] 1508 	mov	dptr,#(_buffer + 0x0001)
      0052FC F5 F0            [12] 1509 	mov	b,a
      0052FE 12 5C 79         [24] 1510 	lcall	_memmove
                                   1511 ;	trial_webserver.c:204: buffer[0] = 0x0E;
      005301 90 09 AB         [24] 1512 	mov	dptr,#_buffer
      005304 74 0E            [12] 1513 	mov	a,#0x0e
      005306 F0               [24] 1514 	movx	@dptr,a
                                   1515 ;	trial_webserver.c:206: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      005307 90 0F AA         [24] 1516 	mov	dptr,#___memcpy_PARM_2
      00530A 74 B2            [12] 1517 	mov	a,#(_buffer + 0x0007)
      00530C F0               [24] 1518 	movx	@dptr,a
      00530D 74 09            [12] 1519 	mov	a,#((_buffer + 0x0007) >> 8)
      00530F A3               [24] 1520 	inc	dptr
      005310 F0               [24] 1521 	movx	@dptr,a
      005311 E4               [12] 1522 	clr	a
      005312 A3               [24] 1523 	inc	dptr
      005313 F0               [24] 1524 	movx	@dptr,a
      005314 90 0F AD         [24] 1525 	mov	dptr,#___memcpy_PARM_3
      005317 74 06            [12] 1526 	mov	a,#0x06
      005319 F0               [24] 1527 	movx	@dptr,a
      00531A E4               [12] 1528 	clr	a
      00531B A3               [24] 1529 	inc	dptr
      00531C F0               [24] 1530 	movx	@dptr,a
      00531D 90 09 AC         [24] 1531 	mov	dptr,#(_buffer + 0x0001)
      005320 F5 F0            [12] 1532 	mov	b,a
      005322 12 5B C2         [24] 1533 	lcall	___memcpy
                                   1534 ;	trial_webserver.c:207: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      005325 90 0F AA         [24] 1535 	mov	dptr,#___memcpy_PARM_2
      005328 74 1B            [12] 1536 	mov	a,#_device_mac
      00532A F0               [24] 1537 	movx	@dptr,a
      00532B 74 14            [12] 1538 	mov	a,#(_device_mac >> 8)
      00532D A3               [24] 1539 	inc	dptr
      00532E F0               [24] 1540 	movx	@dptr,a
      00532F E4               [12] 1541 	clr	a
      005330 A3               [24] 1542 	inc	dptr
      005331 F0               [24] 1543 	movx	@dptr,a
      005332 90 0F AD         [24] 1544 	mov	dptr,#___memcpy_PARM_3
      005335 74 06            [12] 1545 	mov	a,#0x06
      005337 F0               [24] 1546 	movx	@dptr,a
      005338 E4               [12] 1547 	clr	a
      005339 A3               [24] 1548 	inc	dptr
      00533A F0               [24] 1549 	movx	@dptr,a
      00533B 90 09 B2         [24] 1550 	mov	dptr,#(_buffer + 0x0007)
      00533E F5 F0            [12] 1551 	mov	b,a
      005340 12 5B C2         [24] 1552 	lcall	___memcpy
                                   1553 ;	trial_webserver.c:210: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      005343 90 0F AA         [24] 1554 	mov	dptr,#___memcpy_PARM_2
      005346 74 C6            [12] 1555 	mov	a,#(_buffer + 0x001b)
      005348 F0               [24] 1556 	movx	@dptr,a
      005349 74 09            [12] 1557 	mov	a,#((_buffer + 0x001b) >> 8)
      00534B A3               [24] 1558 	inc	dptr
      00534C F0               [24] 1559 	movx	@dptr,a
      00534D E4               [12] 1560 	clr	a
      00534E A3               [24] 1561 	inc	dptr
      00534F F0               [24] 1562 	movx	@dptr,a
      005350 90 0F AD         [24] 1563 	mov	dptr,#___memcpy_PARM_3
      005353 74 04            [12] 1564 	mov	a,#0x04
      005355 F0               [24] 1565 	movx	@dptr,a
      005356 E4               [12] 1566 	clr	a
      005357 A3               [24] 1567 	inc	dptr
      005358 F0               [24] 1568 	movx	@dptr,a
      005359 90 09 CA         [24] 1569 	mov	dptr,#(_buffer + 0x001f)
      00535C F5 F0            [12] 1570 	mov	b,a
      00535E 12 5B C2         [24] 1571 	lcall	___memcpy
                                   1572 ;	trial_webserver.c:211: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      005361 90 0F AA         [24] 1573 	mov	dptr,#___memcpy_PARM_2
      005364 74 27            [12] 1574 	mov	a,#_device_ip
      005366 F0               [24] 1575 	movx	@dptr,a
      005367 74 14            [12] 1576 	mov	a,#(_device_ip >> 8)
      005369 A3               [24] 1577 	inc	dptr
      00536A F0               [24] 1578 	movx	@dptr,a
      00536B E4               [12] 1579 	clr	a
      00536C A3               [24] 1580 	inc	dptr
      00536D F0               [24] 1581 	movx	@dptr,a
      00536E 90 0F AD         [24] 1582 	mov	dptr,#___memcpy_PARM_3
      005371 74 04            [12] 1583 	mov	a,#0x04
      005373 F0               [24] 1584 	movx	@dptr,a
      005374 E4               [12] 1585 	clr	a
      005375 A3               [24] 1586 	inc	dptr
      005376 F0               [24] 1587 	movx	@dptr,a
      005377 90 09 C6         [24] 1588 	mov	dptr,#(_buffer + 0x001b)
      00537A F5 F0            [12] 1589 	mov	b,a
      00537C 12 5B C2         [24] 1590 	lcall	___memcpy
                                   1591 ;	trial_webserver.c:214: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00537F 90 09 CE         [24] 1592 	mov	dptr,#(_buffer + 0x0023)
      005382 E0               [24] 1593 	movx	a,@dptr
      005383 FE               [12] 1594 	mov	r6,a
      005384 7F 00            [12] 1595 	mov	r7,#0x00
      005386 90 09 CF         [24] 1596 	mov	dptr,#(_buffer + 0x0024)
      005389 E0               [24] 1597 	movx	a,@dptr
      00538A 7C 00            [12] 1598 	mov	r4,#0x00
      00538C 42 07            [12] 1599 	orl	ar7,a
      00538E EC               [12] 1600 	mov	a,r4
      00538F 42 06            [12] 1601 	orl	ar6,a
                                   1602 ;	trial_webserver.c:216: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      005391 90 09 D0         [24] 1603 	mov	dptr,#(_buffer + 0x0025)
      005394 E0               [24] 1604 	movx	a,@dptr
      005395 FC               [12] 1605 	mov	r4,a
      005396 7D 00            [12] 1606 	mov	r5,#0x00
      005398 90 09 D1         [24] 1607 	mov	dptr,#(_buffer + 0x0026)
      00539B E0               [24] 1608 	movx	a,@dptr
      00539C 7A 00            [12] 1609 	mov	r2,#0x00
      00539E 42 05            [12] 1610 	orl	ar5,a
      0053A0 EA               [12] 1611 	mov	a,r2
      0053A1 42 04            [12] 1612 	orl	ar4,a
                                   1613 ;	trial_webserver.c:218: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      0053A3 8C 03            [24] 1614 	mov	ar3,r4
      0053A5 90 09 CE         [24] 1615 	mov	dptr,#(_buffer + 0x0023)
      0053A8 EB               [12] 1616 	mov	a,r3
      0053A9 F0               [24] 1617 	movx	@dptr,a
                                   1618 ;	trial_webserver.c:219: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      0053AA 90 09 CF         [24] 1619 	mov	dptr,#(_buffer + 0x0024)
      0053AD ED               [12] 1620 	mov	a,r5
      0053AE F0               [24] 1621 	movx	@dptr,a
                                   1622 ;	trial_webserver.c:220: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      0053AF 8E 05            [24] 1623 	mov	ar5,r6
      0053B1 90 09 D0         [24] 1624 	mov	dptr,#(_buffer + 0x0025)
      0053B4 ED               [12] 1625 	mov	a,r5
      0053B5 F0               [24] 1626 	movx	@dptr,a
                                   1627 ;	trial_webserver.c:221: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      0053B6 90 09 D1         [24] 1628 	mov	dptr,#(_buffer + 0x0026)
      0053B9 EF               [12] 1629 	mov	a,r7
      0053BA F0               [24] 1630 	movx	@dptr,a
                                   1631 ;	trial_webserver.c:224: uint32_t clientSeqNum = (buffer[1 + TCP_SEQ_H_P] << 24)
      0053BB 90 09 D4         [24] 1632 	mov	dptr,#(_buffer + 0x0029)
      0053BE E0               [24] 1633 	movx	a,@dptr
      0053BF FE               [12] 1634 	mov	r6,a
      0053C0 7F 00            [12] 1635 	mov	r7,#0x00
      0053C2 90 09 D5         [24] 1636 	mov	dptr,#(_buffer + 0x002a)
      0053C5 E0               [24] 1637 	movx	a,@dptr
      0053C6 7C 00            [12] 1638 	mov	r4,#0x00
      0053C8 42 07            [12] 1639 	orl	ar7,a
      0053CA EC               [12] 1640 	mov	a,r4
      0053CB 42 06            [12] 1641 	orl	ar6,a
      0053CD EE               [12] 1642 	mov	a,r6
      0053CE 33               [12] 1643 	rlc	a
      0053CF 95 E0            [12] 1644 	subb	a,acc
      0053D1 FD               [12] 1645 	mov	r5,a
      0053D2 FC               [12] 1646 	mov	r4,a
                                   1647 ;	trial_webserver.c:228: uint32_t ackNum = clientSeqNum + 1;
      0053D3 0F               [12] 1648 	inc	r7
      0053D4 BF 00 09         [24] 1649 	cjne	r7,#0x00,00103$
      0053D7 0E               [12] 1650 	inc	r6
      0053D8 BE 00 05         [24] 1651 	cjne	r6,#0x00,00103$
      0053DB 0D               [12] 1652 	inc	r5
      0053DC BD 00 01         [24] 1653 	cjne	r5,#0x00,00103$
      0053DF 0C               [12] 1654 	inc	r4
      0053E0                       1655 00103$:
                                   1656 ;	trial_webserver.c:230: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      0053E0 90 09 D2         [24] 1657 	mov	dptr,#(_buffer + 0x0027)
      0053E3 E4               [12] 1658 	clr	a
      0053E4 F0               [24] 1659 	movx	@dptr,a
                                   1660 ;	trial_webserver.c:231: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      0053E5 90 09 D3         [24] 1661 	mov	dptr,#(_buffer + 0x0028)
      0053E8 F0               [24] 1662 	movx	@dptr,a
                                   1663 ;	trial_webserver.c:232: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      0053E9 90 09 D4         [24] 1664 	mov	dptr,#(_buffer + 0x0029)
      0053EC 74 03            [12] 1665 	mov	a,#0x03
      0053EE F0               [24] 1666 	movx	@dptr,a
                                   1667 ;	trial_webserver.c:233: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      0053EF 90 09 D5         [24] 1668 	mov	dptr,#(_buffer + 0x002a)
      0053F2 74 E8            [12] 1669 	mov	a,#0xe8
      0053F4 F0               [24] 1670 	movx	@dptr,a
                                   1671 ;	trial_webserver.c:234: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      0053F5 8C 03            [24] 1672 	mov	ar3,r4
      0053F7 90 09 D6         [24] 1673 	mov	dptr,#(_buffer + 0x002b)
      0053FA EB               [12] 1674 	mov	a,r3
      0053FB F0               [24] 1675 	movx	@dptr,a
                                   1676 ;	trial_webserver.c:235: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      0053FC 8D 03            [24] 1677 	mov	ar3,r5
      0053FE 90 09 D7         [24] 1678 	mov	dptr,#(_buffer + 0x002c)
      005401 EB               [12] 1679 	mov	a,r3
      005402 F0               [24] 1680 	movx	@dptr,a
                                   1681 ;	trial_webserver.c:236: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      005403 8E 03            [24] 1682 	mov	ar3,r6
      005405 90 09 D8         [24] 1683 	mov	dptr,#(_buffer + 0x002d)
      005408 EB               [12] 1684 	mov	a,r3
      005409 F0               [24] 1685 	movx	@dptr,a
                                   1686 ;	trial_webserver.c:237: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      00540A 90 09 D9         [24] 1687 	mov	dptr,#(_buffer + 0x002e)
      00540D EF               [12] 1688 	mov	a,r7
      00540E F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	trial_webserver.c:241: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      00540F 90 09 BC         [24] 1691 	mov	dptr,#(_buffer + 0x0011)
      005412 E4               [12] 1692 	clr	a
      005413 F0               [24] 1693 	movx	@dptr,a
                                   1694 ;	trial_webserver.c:242: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005414 90 09 BD         [24] 1695 	mov	dptr,#(_buffer + 0x0012)
      005417 74 28            [12] 1696 	mov	a,#0x28
      005419 F0               [24] 1697 	movx	@dptr,a
                                   1698 ;	trial_webserver.c:245: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_SYN | TCP_FLAG_ACK;
      00541A 90 09 DB         [24] 1699 	mov	dptr,#(_buffer + 0x0030)
      00541D 74 12            [12] 1700 	mov	a,#0x12
      00541F F0               [24] 1701 	movx	@dptr,a
                                   1702 ;	trial_webserver.c:246: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF; // Maximum window size
      005420 90 09 DC         [24] 1703 	mov	dptr,#(_buffer + 0x0031)
      005423 74 FF            [12] 1704 	mov	a,#0xff
      005425 F0               [24] 1705 	movx	@dptr,a
                                   1706 ;	trial_webserver.c:247: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      005426 90 09 DD         [24] 1707 	mov	dptr,#(_buffer + 0x0032)
      005429 F0               [24] 1708 	movx	@dptr,a
                                   1709 ;	trial_webserver.c:248: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      00542A 90 09 DA         [24] 1710 	mov	dptr,#(_buffer + 0x002f)
      00542D 74 50            [12] 1711 	mov	a,#0x50
      00542F F0               [24] 1712 	movx	@dptr,a
                                   1713 ;	trial_webserver.c:251: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      005430 90 09 AC         [24] 1714 	mov	dptr,#(_buffer + 0x0001)
      005433 75 F0 00         [24] 1715 	mov	b, #0x00
      005436 12 3F 7C         [24] 1716 	lcall	_calculateIPChecksum
                                   1717 ;	trial_webserver.c:252: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      005439 90 09 AC         [24] 1718 	mov	dptr,#(_buffer + 0x0001)
      00543C 75 F0 00         [24] 1719 	mov	b, #0x00
      00543F 12 40 E6         [24] 1720 	lcall	_calculateTcpChecksum
                                   1721 ;	trial_webserver.c:256: transmit_tcp_packet(buffer, 1 + 54);
      005442 90 09 9E         [24] 1722 	mov	dptr,#_transmit_tcp_packet_PARM_2
      005445 74 37            [12] 1723 	mov	a,#0x37
      005447 F0               [24] 1724 	movx	@dptr,a
      005448 E4               [12] 1725 	clr	a
      005449 A3               [24] 1726 	inc	dptr
      00544A F0               [24] 1727 	movx	@dptr,a
      00544B 90 09 AB         [24] 1728 	mov	dptr,#_buffer
      00544E F5 F0            [12] 1729 	mov	b,a
      005450 12 4D 03         [24] 1730 	lcall	_transmit_tcp_packet
                                   1731 ;	trial_webserver.c:259: connectionState = SYN_RECEIVED;
      005453 90 14 2F         [24] 1732 	mov	dptr,#_connectionState
      005456 74 01            [12] 1733 	mov	a,#0x01
      005458 F0               [24] 1734 	movx	@dptr,a
                                   1735 ;	trial_webserver.c:260: }
      005459 22               [24] 1736 	ret
                                   1737 ;------------------------------------------------------------
                                   1738 ;Allocation info for local variables in function 'makeTcpAck'
                                   1739 ;------------------------------------------------------------
                                   1740 ;	trial_webserver.c:263: void makeTcpAck() {
                                   1741 ;	-----------------------------------------
                                   1742 ;	 function makeTcpAck
                                   1743 ;	-----------------------------------------
      00545A                       1744 _makeTcpAck:
                                   1745 ;	trial_webserver.c:264: printf("tcpack\n\r");
      00545A 74 B1            [12] 1746 	mov	a,#___str_3
      00545C C0 E0            [24] 1747 	push	acc
      00545E 74 77            [12] 1748 	mov	a,#(___str_3 >> 8)
      005460 C0 E0            [24] 1749 	push	acc
      005462 74 80            [12] 1750 	mov	a,#0x80
      005464 C0 E0            [24] 1751 	push	acc
      005466 12 61 AF         [24] 1752 	lcall	_printf
      005469 15 81            [12] 1753 	dec	sp
      00546B 15 81            [12] 1754 	dec	sp
      00546D 15 81            [12] 1755 	dec	sp
                                   1756 ;	trial_webserver.c:265: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      00546F 90 0F B6         [24] 1757 	mov	dptr,#_memmove_PARM_2
      005472 74 AB            [12] 1758 	mov	a,#_buffer
      005474 F0               [24] 1759 	movx	@dptr,a
      005475 74 09            [12] 1760 	mov	a,#(_buffer >> 8)
      005477 A3               [24] 1761 	inc	dptr
      005478 F0               [24] 1762 	movx	@dptr,a
      005479 E4               [12] 1763 	clr	a
      00547A A3               [24] 1764 	inc	dptr
      00547B F0               [24] 1765 	movx	@dptr,a
      00547C 90 0F B9         [24] 1766 	mov	dptr,#_memmove_PARM_3
      00547F 74 36            [12] 1767 	mov	a,#0x36
      005481 F0               [24] 1768 	movx	@dptr,a
      005482 E4               [12] 1769 	clr	a
      005483 A3               [24] 1770 	inc	dptr
      005484 F0               [24] 1771 	movx	@dptr,a
      005485 90 09 AC         [24] 1772 	mov	dptr,#(_buffer + 0x0001)
      005488 F5 F0            [12] 1773 	mov	b,a
      00548A 12 5C 79         [24] 1774 	lcall	_memmove
                                   1775 ;	trial_webserver.c:268: buffer[0] = 0x0E;
      00548D 90 09 AB         [24] 1776 	mov	dptr,#_buffer
      005490 74 0E            [12] 1777 	mov	a,#0x0e
      005492 F0               [24] 1778 	movx	@dptr,a
                                   1779 ;	trial_webserver.c:269: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_ACK;
      005493 90 09 DB         [24] 1780 	mov	dptr,#(_buffer + 0x0030)
      005496 74 10            [12] 1781 	mov	a,#0x10
      005498 F0               [24] 1782 	movx	@dptr,a
                                   1783 ;	trial_webserver.c:270: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P);
      005499 90 09 9E         [24] 1784 	mov	dptr,#_transmit_tcp_packet_PARM_2
      00549C 74 37            [12] 1785 	mov	a,#0x37
      00549E F0               [24] 1786 	movx	@dptr,a
      00549F E4               [12] 1787 	clr	a
      0054A0 A3               [24] 1788 	inc	dptr
      0054A1 F0               [24] 1789 	movx	@dptr,a
      0054A2 90 09 AB         [24] 1790 	mov	dptr,#_buffer
      0054A5 F5 F0            [12] 1791 	mov	b,a
                                   1792 ;	trial_webserver.c:271: }
      0054A7 02 4D 03         [24] 1793 	ljmp	_transmit_tcp_packet
                                   1794 ;------------------------------------------------------------
                                   1795 ;Allocation info for local variables in function 'makeTcpFinPshAck'
                                   1796 ;------------------------------------------------------------
                                   1797 ;srcPort                   Allocated with name '_makeTcpFinPshAck_srcPort_10001_135'
                                   1798 ;dstPort                   Allocated with name '_makeTcpFinPshAck_dstPort_10001_135'
                                   1799 ;serverSeqNum              Allocated with name '_makeTcpFinPshAck_serverSeqNum_10002_136'
                                   1800 ;ackNum                    Allocated with name '_makeTcpFinPshAck_ackNum_10002_136'
                                   1801 ;html_payload              Allocated with name '_makeTcpFinPshAck_html_payload_10003_137'
                                   1802 ;dataLength                Allocated with name '_makeTcpFinPshAck_dataLength_10003_137'
                                   1803 ;totalLength               Allocated with name '_makeTcpFinPshAck_totalLength_10003_137'
                                   1804 ;------------------------------------------------------------
                                   1805 ;	trial_webserver.c:273: void makeTcpFinPshAck() {
                                   1806 ;	-----------------------------------------
                                   1807 ;	 function makeTcpFinPshAck
                                   1808 ;	-----------------------------------------
      0054AA                       1809 _makeTcpFinPshAck:
                                   1810 ;	trial_webserver.c:274: printf("makeTcpFinPshAck\n\r");
      0054AA 74 35            [12] 1811 	mov	a,#___str_5
      0054AC C0 E0            [24] 1812 	push	acc
      0054AE 74 7B            [12] 1813 	mov	a,#(___str_5 >> 8)
      0054B0 C0 E0            [24] 1814 	push	acc
      0054B2 74 80            [12] 1815 	mov	a,#0x80
      0054B4 C0 E0            [24] 1816 	push	acc
      0054B6 12 61 AF         [24] 1817 	lcall	_printf
      0054B9 15 81            [12] 1818 	dec	sp
      0054BB 15 81            [12] 1819 	dec	sp
      0054BD 15 81            [12] 1820 	dec	sp
                                   1821 ;	trial_webserver.c:277: memmove(&buffer[1], &buffer[0], TCP_DATA_START_P);
      0054BF 90 0F B6         [24] 1822 	mov	dptr,#_memmove_PARM_2
      0054C2 74 AB            [12] 1823 	mov	a,#_buffer
      0054C4 F0               [24] 1824 	movx	@dptr,a
      0054C5 74 09            [12] 1825 	mov	a,#(_buffer >> 8)
      0054C7 A3               [24] 1826 	inc	dptr
      0054C8 F0               [24] 1827 	movx	@dptr,a
      0054C9 E4               [12] 1828 	clr	a
      0054CA A3               [24] 1829 	inc	dptr
      0054CB F0               [24] 1830 	movx	@dptr,a
      0054CC 90 0F B9         [24] 1831 	mov	dptr,#_memmove_PARM_3
      0054CF 74 36            [12] 1832 	mov	a,#0x36
      0054D1 F0               [24] 1833 	movx	@dptr,a
      0054D2 E4               [12] 1834 	clr	a
      0054D3 A3               [24] 1835 	inc	dptr
      0054D4 F0               [24] 1836 	movx	@dptr,a
      0054D5 90 09 AC         [24] 1837 	mov	dptr,#(_buffer + 0x0001)
      0054D8 F5 F0            [12] 1838 	mov	b,a
      0054DA 12 5C 79         [24] 1839 	lcall	_memmove
                                   1840 ;	trial_webserver.c:278: buffer[0] = 0x0E;
      0054DD 90 09 AB         [24] 1841 	mov	dptr,#_buffer
      0054E0 74 0E            [12] 1842 	mov	a,#0x0e
      0054E2 F0               [24] 1843 	movx	@dptr,a
                                   1844 ;	trial_webserver.c:281: memcpy(&buffer[1 + ETH_DST_MAC], &buffer[1 + ETH_SRC_MAC], 6);
      0054E3 90 0F AA         [24] 1845 	mov	dptr,#___memcpy_PARM_2
      0054E6 74 B2            [12] 1846 	mov	a,#(_buffer + 0x0007)
      0054E8 F0               [24] 1847 	movx	@dptr,a
      0054E9 74 09            [12] 1848 	mov	a,#((_buffer + 0x0007) >> 8)
      0054EB A3               [24] 1849 	inc	dptr
      0054EC F0               [24] 1850 	movx	@dptr,a
      0054ED E4               [12] 1851 	clr	a
      0054EE A3               [24] 1852 	inc	dptr
      0054EF F0               [24] 1853 	movx	@dptr,a
      0054F0 90 0F AD         [24] 1854 	mov	dptr,#___memcpy_PARM_3
      0054F3 74 06            [12] 1855 	mov	a,#0x06
      0054F5 F0               [24] 1856 	movx	@dptr,a
      0054F6 E4               [12] 1857 	clr	a
      0054F7 A3               [24] 1858 	inc	dptr
      0054F8 F0               [24] 1859 	movx	@dptr,a
      0054F9 90 09 AC         [24] 1860 	mov	dptr,#(_buffer + 0x0001)
      0054FC F5 F0            [12] 1861 	mov	b,a
      0054FE 12 5B C2         [24] 1862 	lcall	___memcpy
                                   1863 ;	trial_webserver.c:282: memcpy(&buffer[1 + ETH_SRC_MAC], device_mac, 6);
      005501 90 0F AA         [24] 1864 	mov	dptr,#___memcpy_PARM_2
      005504 74 1B            [12] 1865 	mov	a,#_device_mac
      005506 F0               [24] 1866 	movx	@dptr,a
      005507 74 14            [12] 1867 	mov	a,#(_device_mac >> 8)
      005509 A3               [24] 1868 	inc	dptr
      00550A F0               [24] 1869 	movx	@dptr,a
      00550B E4               [12] 1870 	clr	a
      00550C A3               [24] 1871 	inc	dptr
      00550D F0               [24] 1872 	movx	@dptr,a
      00550E 90 0F AD         [24] 1873 	mov	dptr,#___memcpy_PARM_3
      005511 74 06            [12] 1874 	mov	a,#0x06
      005513 F0               [24] 1875 	movx	@dptr,a
      005514 E4               [12] 1876 	clr	a
      005515 A3               [24] 1877 	inc	dptr
      005516 F0               [24] 1878 	movx	@dptr,a
      005517 90 09 B2         [24] 1879 	mov	dptr,#(_buffer + 0x0007)
      00551A F5 F0            [12] 1880 	mov	b,a
      00551C 12 5B C2         [24] 1881 	lcall	___memcpy
                                   1882 ;	trial_webserver.c:285: memcpy(&buffer[1 + IP_DST_P], &buffer[1 + IP_SRC_P], 4);
      00551F 90 0F AA         [24] 1883 	mov	dptr,#___memcpy_PARM_2
      005522 74 C6            [12] 1884 	mov	a,#(_buffer + 0x001b)
      005524 F0               [24] 1885 	movx	@dptr,a
      005525 74 09            [12] 1886 	mov	a,#((_buffer + 0x001b) >> 8)
      005527 A3               [24] 1887 	inc	dptr
      005528 F0               [24] 1888 	movx	@dptr,a
      005529 E4               [12] 1889 	clr	a
      00552A A3               [24] 1890 	inc	dptr
      00552B F0               [24] 1891 	movx	@dptr,a
      00552C 90 0F AD         [24] 1892 	mov	dptr,#___memcpy_PARM_3
      00552F 74 04            [12] 1893 	mov	a,#0x04
      005531 F0               [24] 1894 	movx	@dptr,a
      005532 E4               [12] 1895 	clr	a
      005533 A3               [24] 1896 	inc	dptr
      005534 F0               [24] 1897 	movx	@dptr,a
      005535 90 09 CA         [24] 1898 	mov	dptr,#(_buffer + 0x001f)
      005538 F5 F0            [12] 1899 	mov	b,a
      00553A 12 5B C2         [24] 1900 	lcall	___memcpy
                                   1901 ;	trial_webserver.c:286: memcpy(&buffer[1 + IP_SRC_P], device_ip, 4);
      00553D 90 0F AA         [24] 1902 	mov	dptr,#___memcpy_PARM_2
      005540 74 27            [12] 1903 	mov	a,#_device_ip
      005542 F0               [24] 1904 	movx	@dptr,a
      005543 74 14            [12] 1905 	mov	a,#(_device_ip >> 8)
      005545 A3               [24] 1906 	inc	dptr
      005546 F0               [24] 1907 	movx	@dptr,a
      005547 E4               [12] 1908 	clr	a
      005548 A3               [24] 1909 	inc	dptr
      005549 F0               [24] 1910 	movx	@dptr,a
      00554A 90 0F AD         [24] 1911 	mov	dptr,#___memcpy_PARM_3
      00554D 74 04            [12] 1912 	mov	a,#0x04
      00554F F0               [24] 1913 	movx	@dptr,a
      005550 E4               [12] 1914 	clr	a
      005551 A3               [24] 1915 	inc	dptr
      005552 F0               [24] 1916 	movx	@dptr,a
      005553 90 09 C6         [24] 1917 	mov	dptr,#(_buffer + 0x001b)
      005556 F5 F0            [12] 1918 	mov	b,a
      005558 12 5B C2         [24] 1919 	lcall	___memcpy
                                   1920 ;	trial_webserver.c:289: uint16_t srcPort = (buffer[1 + TCP_SRC_PORT_H_P] << 8)
      00555B 90 09 CE         [24] 1921 	mov	dptr,#(_buffer + 0x0023)
      00555E E0               [24] 1922 	movx	a,@dptr
      00555F FE               [12] 1923 	mov	r6,a
      005560 7F 00            [12] 1924 	mov	r7,#0x00
      005562 90 09 CF         [24] 1925 	mov	dptr,#(_buffer + 0x0024)
      005565 E0               [24] 1926 	movx	a,@dptr
      005566 7C 00            [12] 1927 	mov	r4,#0x00
      005568 42 07            [12] 1928 	orl	ar7,a
      00556A EC               [12] 1929 	mov	a,r4
      00556B 42 06            [12] 1930 	orl	ar6,a
                                   1931 ;	trial_webserver.c:291: uint16_t dstPort = (buffer[1 + TCP_DST_PORT_H_P] << 8)
      00556D 90 09 D0         [24] 1932 	mov	dptr,#(_buffer + 0x0025)
      005570 E0               [24] 1933 	movx	a,@dptr
      005571 FC               [12] 1934 	mov	r4,a
      005572 7D 00            [12] 1935 	mov	r5,#0x00
      005574 90 09 D1         [24] 1936 	mov	dptr,#(_buffer + 0x0026)
      005577 E0               [24] 1937 	movx	a,@dptr
      005578 7A 00            [12] 1938 	mov	r2,#0x00
      00557A 42 05            [12] 1939 	orl	ar5,a
      00557C EA               [12] 1940 	mov	a,r2
      00557D 42 04            [12] 1941 	orl	ar4,a
                                   1942 ;	trial_webserver.c:293: buffer[1 + TCP_SRC_PORT_H_P] = dstPort >> 8;
      00557F 8C 03            [24] 1943 	mov	ar3,r4
      005581 90 09 CE         [24] 1944 	mov	dptr,#(_buffer + 0x0023)
      005584 EB               [12] 1945 	mov	a,r3
      005585 F0               [24] 1946 	movx	@dptr,a
                                   1947 ;	trial_webserver.c:294: buffer[1 + TCP_SRC_PORT_L_P] = dstPort & 0xFF;
      005586 90 09 CF         [24] 1948 	mov	dptr,#(_buffer + 0x0024)
      005589 ED               [12] 1949 	mov	a,r5
      00558A F0               [24] 1950 	movx	@dptr,a
                                   1951 ;	trial_webserver.c:295: buffer[1 + TCP_DST_PORT_H_P] = srcPort >> 8;
      00558B 8E 05            [24] 1952 	mov	ar5,r6
      00558D 90 09 D0         [24] 1953 	mov	dptr,#(_buffer + 0x0025)
      005590 ED               [12] 1954 	mov	a,r5
      005591 F0               [24] 1955 	movx	@dptr,a
                                   1956 ;	trial_webserver.c:296: buffer[1 + TCP_DST_PORT_L_P] = srcPort & 0xFF;
      005592 90 09 D1         [24] 1957 	mov	dptr,#(_buffer + 0x0026)
      005595 EF               [12] 1958 	mov	a,r7
      005596 F0               [24] 1959 	movx	@dptr,a
                                   1960 ;	trial_webserver.c:299: uint32_t serverSeqNum = prevSeq;
      005597 90 09 A3         [24] 1961 	mov	dptr,#_prevSeq
      00559A E0               [24] 1962 	movx	a,@dptr
      00559B FC               [12] 1963 	mov	r4,a
      00559C A3               [24] 1964 	inc	dptr
      00559D E0               [24] 1965 	movx	a,@dptr
      00559E FD               [12] 1966 	mov	r5,a
      00559F A3               [24] 1967 	inc	dptr
      0055A0 E0               [24] 1968 	movx	a,@dptr
      0055A1 FE               [12] 1969 	mov	r6,a
      0055A2 A3               [24] 1970 	inc	dptr
      0055A3 E0               [24] 1971 	movx	a,@dptr
      0055A4 FF               [12] 1972 	mov	r7,a
      0055A5 90 0F 87         [24] 1973 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_136
      0055A8 EC               [12] 1974 	mov	a,r4
      0055A9 F0               [24] 1975 	movx	@dptr,a
      0055AA ED               [12] 1976 	mov	a,r5
      0055AB A3               [24] 1977 	inc	dptr
      0055AC F0               [24] 1978 	movx	@dptr,a
      0055AD EE               [12] 1979 	mov	a,r6
      0055AE A3               [24] 1980 	inc	dptr
      0055AF F0               [24] 1981 	movx	@dptr,a
      0055B0 EF               [12] 1982 	mov	a,r7
      0055B1 A3               [24] 1983 	inc	dptr
      0055B2 F0               [24] 1984 	movx	@dptr,a
                                   1985 ;	trial_webserver.c:300: uint32_t ackNum = prevAck;
      0055B3 90 09 A7         [24] 1986 	mov	dptr,#_prevAck
      0055B6 E0               [24] 1987 	movx	a,@dptr
      0055B7 F8               [12] 1988 	mov	r0,a
      0055B8 A3               [24] 1989 	inc	dptr
      0055B9 E0               [24] 1990 	movx	a,@dptr
      0055BA F9               [12] 1991 	mov	r1,a
      0055BB A3               [24] 1992 	inc	dptr
      0055BC E0               [24] 1993 	movx	a,@dptr
      0055BD FA               [12] 1994 	mov	r2,a
      0055BE A3               [24] 1995 	inc	dptr
      0055BF E0               [24] 1996 	movx	a,@dptr
      0055C0 FB               [12] 1997 	mov	r3,a
      0055C1 90 0F 8B         [24] 1998 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_136
      0055C4 E8               [12] 1999 	mov	a,r0
      0055C5 F0               [24] 2000 	movx	@dptr,a
      0055C6 E9               [12] 2001 	mov	a,r1
      0055C7 A3               [24] 2002 	inc	dptr
      0055C8 F0               [24] 2003 	movx	@dptr,a
      0055C9 EA               [12] 2004 	mov	a,r2
      0055CA A3               [24] 2005 	inc	dptr
      0055CB F0               [24] 2006 	movx	@dptr,a
      0055CC EB               [12] 2007 	mov	a,r3
      0055CD A3               [24] 2008 	inc	dptr
      0055CE F0               [24] 2009 	movx	@dptr,a
                                   2010 ;	trial_webserver.c:302: buffer[1 + TCP_SEQ_H_P] = (serverSeqNum >> 24) & 0xFF;
      0055CF 8F 04            [24] 2011 	mov	ar4,r7
      0055D1 90 09 D2         [24] 2012 	mov	dptr,#(_buffer + 0x0027)
      0055D4 EC               [12] 2013 	mov	a,r4
      0055D5 F0               [24] 2014 	movx	@dptr,a
                                   2015 ;	trial_webserver.c:303: buffer[1 + TCP_SEQ_H_P + 1] = (serverSeqNum >> 16) & 0xFF;
      0055D6 90 0F 87         [24] 2016 	mov	dptr,#_makeTcpFinPshAck_serverSeqNum_10002_136
      0055D9 E0               [24] 2017 	movx	a,@dptr
      0055DA FC               [12] 2018 	mov	r4,a
      0055DB A3               [24] 2019 	inc	dptr
      0055DC E0               [24] 2020 	movx	a,@dptr
      0055DD FD               [12] 2021 	mov	r5,a
      0055DE A3               [24] 2022 	inc	dptr
      0055DF E0               [24] 2023 	movx	a,@dptr
      0055E0 FE               [12] 2024 	mov	r6,a
      0055E1 A3               [24] 2025 	inc	dptr
      0055E2 E0               [24] 2026 	movx	a,@dptr
      0055E3 8E 03            [24] 2027 	mov	ar3,r6
      0055E5 90 09 D3         [24] 2028 	mov	dptr,#(_buffer + 0x0028)
      0055E8 EB               [12] 2029 	mov	a,r3
      0055E9 F0               [24] 2030 	movx	@dptr,a
                                   2031 ;	trial_webserver.c:304: buffer[1 + TCP_SEQ_H_P + 2] = (serverSeqNum >> 8) & 0xFF;
      0055EA 8D 03            [24] 2032 	mov	ar3,r5
      0055EC 90 09 D4         [24] 2033 	mov	dptr,#(_buffer + 0x0029)
      0055EF EB               [12] 2034 	mov	a,r3
      0055F0 F0               [24] 2035 	movx	@dptr,a
                                   2036 ;	trial_webserver.c:305: buffer[1 + TCP_SEQ_H_P + 3] = serverSeqNum & 0xFF;
      0055F1 90 09 D5         [24] 2037 	mov	dptr,#(_buffer + 0x002a)
      0055F4 EC               [12] 2038 	mov	a,r4
      0055F5 F0               [24] 2039 	movx	@dptr,a
                                   2040 ;	trial_webserver.c:306: buffer[1 + TCP_SEQ_H_P + 4] = (ackNum >> 24) & 0xFF;
      0055F6 90 0F 8B         [24] 2041 	mov	dptr,#_makeTcpFinPshAck_ackNum_10002_136
      0055F9 E0               [24] 2042 	movx	a,@dptr
      0055FA FC               [12] 2043 	mov	r4,a
      0055FB A3               [24] 2044 	inc	dptr
      0055FC E0               [24] 2045 	movx	a,@dptr
      0055FD FD               [12] 2046 	mov	r5,a
      0055FE A3               [24] 2047 	inc	dptr
      0055FF E0               [24] 2048 	movx	a,@dptr
      005600 FE               [12] 2049 	mov	r6,a
      005601 A3               [24] 2050 	inc	dptr
      005602 E0               [24] 2051 	movx	a,@dptr
      005603 90 09 D6         [24] 2052 	mov	dptr,#(_buffer + 0x002b)
      005606 F0               [24] 2053 	movx	@dptr,a
                                   2054 ;	trial_webserver.c:307: buffer[1 + TCP_SEQ_H_P + 5] = (ackNum >> 16) & 0xFF;
      005607 8E 03            [24] 2055 	mov	ar3,r6
      005609 90 09 D7         [24] 2056 	mov	dptr,#(_buffer + 0x002c)
      00560C EB               [12] 2057 	mov	a,r3
      00560D F0               [24] 2058 	movx	@dptr,a
                                   2059 ;	trial_webserver.c:308: buffer[1 + TCP_SEQ_H_P + 6] = (ackNum >> 8) & 0xFF;
      00560E 8D 03            [24] 2060 	mov	ar3,r5
      005610 90 09 D8         [24] 2061 	mov	dptr,#(_buffer + 0x002d)
      005613 EB               [12] 2062 	mov	a,r3
      005614 F0               [24] 2063 	movx	@dptr,a
                                   2064 ;	trial_webserver.c:309: buffer[1 + TCP_SEQ_H_P + 7] = ackNum & 0xFF;
      005615 90 09 D9         [24] 2065 	mov	dptr,#(_buffer + 0x002e)
      005618 EC               [12] 2066 	mov	a,r4
      005619 F0               [24] 2067 	movx	@dptr,a
                                   2068 ;	trial_webserver.c:312: const char *html_payload =
                                   2069 ;	trial_webserver.c:335: uint16_t dataLength = strlen(html_payload);
      00561A 90 77 BA         [24] 2070 	mov	dptr,#___str_4
      00561D 75 F0 80         [24] 2071 	mov	b, #0x80
      005620 12 6B B9         [24] 2072 	lcall	_strlen
      005623 AE 82            [24] 2073 	mov	r6, dpl
      005625 AF 83            [24] 2074 	mov	r7, dph
                                   2075 ;	trial_webserver.c:338: uint16_t totalLength = IP_HEADER_LEN + TCP_HEADER_LEN + dataLength;
      005627 74 28            [12] 2076 	mov	a,#0x28
      005629 2E               [12] 2077 	add	a, r6
      00562A FC               [12] 2078 	mov	r4,a
      00562B E4               [12] 2079 	clr	a
      00562C 3F               [12] 2080 	addc	a, r7
                                   2081 ;	trial_webserver.c:339: buffer[1 + IP_TOTLEN_H_P] = (totalLength >> 8) & 0xFF;
      00562D 90 09 BC         [24] 2082 	mov	dptr,#(_buffer + 0x0011)
      005630 F0               [24] 2083 	movx	@dptr,a
                                   2084 ;	trial_webserver.c:340: buffer[1 + IP_TOTLEN_L_P] = totalLength & 0xFF;
      005631 90 09 BD         [24] 2085 	mov	dptr,#(_buffer + 0x0012)
      005634 EC               [12] 2086 	mov	a,r4
      005635 F0               [24] 2087 	movx	@dptr,a
                                   2088 ;	trial_webserver.c:343: buffer[1 + TCP_FLAGS_P] = TCP_FLAG_FIN | TCP_FLAG_PUSH | TCP_FLAG_ACK;
      005636 90 09 DB         [24] 2089 	mov	dptr,#(_buffer + 0x0030)
      005639 74 19            [12] 2090 	mov	a,#0x19
      00563B F0               [24] 2091 	movx	@dptr,a
                                   2092 ;	trial_webserver.c:344: buffer[1 + TCP_WIN_SIZE_H_P] = 0xFF;
      00563C 90 09 DC         [24] 2093 	mov	dptr,#(_buffer + 0x0031)
      00563F 74 FF            [12] 2094 	mov	a,#0xff
      005641 F0               [24] 2095 	movx	@dptr,a
                                   2096 ;	trial_webserver.c:345: buffer[1 + TCP_WIN_SIZE_L_P] = 0xFF;
      005642 90 09 DD         [24] 2097 	mov	dptr,#(_buffer + 0x0032)
      005645 F0               [24] 2098 	movx	@dptr,a
                                   2099 ;	trial_webserver.c:346: buffer[1 + TCP_HEADER_LEN_P] = 0x50; // 20 bytes (5 words)
      005646 90 09 DA         [24] 2100 	mov	dptr,#(_buffer + 0x002f)
      005649 74 50            [12] 2101 	mov	a,#0x50
      00564B F0               [24] 2102 	movx	@dptr,a
                                   2103 ;	trial_webserver.c:349: memcpy(&buffer[1 + TCP_DATA_START_P], html_payload, dataLength);
      00564C 90 0F AA         [24] 2104 	mov	dptr,#___memcpy_PARM_2
      00564F 74 BA            [12] 2105 	mov	a,#___str_4
      005651 F0               [24] 2106 	movx	@dptr,a
      005652 74 77            [12] 2107 	mov	a,#(___str_4 >> 8)
      005654 A3               [24] 2108 	inc	dptr
      005655 F0               [24] 2109 	movx	@dptr,a
      005656 74 80            [12] 2110 	mov	a,#0x80
      005658 A3               [24] 2111 	inc	dptr
      005659 F0               [24] 2112 	movx	@dptr,a
      00565A 90 0F AD         [24] 2113 	mov	dptr,#___memcpy_PARM_3
      00565D EE               [12] 2114 	mov	a,r6
      00565E F0               [24] 2115 	movx	@dptr,a
      00565F EF               [12] 2116 	mov	a,r7
      005660 A3               [24] 2117 	inc	dptr
      005661 F0               [24] 2118 	movx	@dptr,a
      005662 90 09 E2         [24] 2119 	mov	dptr,#(_buffer + 0x0037)
      005665 75 F0 00         [24] 2120 	mov	b, #0x00
      005668 C0 07            [24] 2121 	push	ar7
      00566A C0 06            [24] 2122 	push	ar6
      00566C 12 5B C2         [24] 2123 	lcall	___memcpy
                                   2124 ;	trial_webserver.c:352: calculateIPChecksum(&buffer[1]); // Pass the buffer to calculate the IP checksum
      00566F 90 09 AC         [24] 2125 	mov	dptr,#(_buffer + 0x0001)
      005672 75 F0 00         [24] 2126 	mov	b, #0x00
      005675 12 3F 7C         [24] 2127 	lcall	_calculateIPChecksum
                                   2128 ;	trial_webserver.c:353: calculateTcpChecksum(&buffer[1]); // Pass the buffer to calculate the TCP checksum
      005678 90 09 AC         [24] 2129 	mov	dptr,#(_buffer + 0x0001)
      00567B 75 F0 00         [24] 2130 	mov	b, #0x00
      00567E 12 40 E6         [24] 2131 	lcall	_calculateTcpChecksum
      005681 D0 06            [24] 2132 	pop	ar6
      005683 D0 07            [24] 2133 	pop	ar7
                                   2134 ;	trial_webserver.c:356: transmit_tcp_packet(buffer, 1 + TCP_DATA_START_P + dataLength);
      005685 74 37            [12] 2135 	mov	a,#0x37
      005687 2E               [12] 2136 	add	a, r6
      005688 FE               [12] 2137 	mov	r6,a
      005689 E4               [12] 2138 	clr	a
      00568A 3F               [12] 2139 	addc	a, r7
      00568B FF               [12] 2140 	mov	r7,a
      00568C 90 09 9E         [24] 2141 	mov	dptr,#_transmit_tcp_packet_PARM_2
      00568F EE               [12] 2142 	mov	a,r6
      005690 F0               [24] 2143 	movx	@dptr,a
      005691 EF               [12] 2144 	mov	a,r7
      005692 A3               [24] 2145 	inc	dptr
      005693 F0               [24] 2146 	movx	@dptr,a
      005694 90 09 AB         [24] 2147 	mov	dptr,#_buffer
      005697 75 F0 00         [24] 2148 	mov	b, #0x00
      00569A 12 4D 03         [24] 2149 	lcall	_transmit_tcp_packet
                                   2150 ;	trial_webserver.c:359: connectionState = FIN_WAIT;
      00569D 90 14 2F         [24] 2151 	mov	dptr,#_connectionState
      0056A0 74 03            [12] 2152 	mov	a,#0x03
      0056A2 F0               [24] 2153 	movx	@dptr,a
                                   2154 ;	trial_webserver.c:360: }
      0056A3 22               [24] 2155 	ret
                                   2156 ;------------------------------------------------------------
                                   2157 ;Allocation info for local variables in function 'packetReceive'
                                   2158 ;------------------------------------------------------------
                                   2159 ;gNextPacketPtr            Allocated with name '_packetReceive_gNextPacketPtr_10000_138'
                                   2160 ;unreleasedPacket          Allocated with name '_packetReceive_unreleasedPacket_10000_138'
                                   2161 ;len                       Allocated with name '_packetReceive_len_10000_138'
                                   2162 ;RX_END                    Allocated with name '_packetReceive_RX_END_30000_140'
                                   2163 ;EPKTCNT                   Allocated with name '_packetReceive_EPKTCNT_10001_142'
                                   2164 ;header                    Allocated with name '_packetReceive_header_20002_144'
                                   2165 ;start                     Allocated with name '_packetReceive_start_20003_145'
                                   2166 ;ECON2                     Allocated with name '_packetReceive_ECON2_20004_146'
                                   2167 ;------------------------------------------------------------
                                   2168 ;	trial_webserver.c:365: uint16_t packetReceive()
                                   2169 ;	-----------------------------------------
                                   2170 ;	 function packetReceive
                                   2171 ;	-----------------------------------------
      0056A4                       2172 _packetReceive:
                                   2173 ;	trial_webserver.c:369: uint16_t len = 0;
      0056A4 90 0F 92         [24] 2174 	mov	dptr,#_packetReceive_len_10000_138
      0056A7 E4               [12] 2175 	clr	a
      0056A8 F0               [24] 2176 	movx	@dptr,a
      0056A9 A3               [24] 2177 	inc	dptr
      0056AA F0               [24] 2178 	movx	@dptr,a
                                   2179 ;	trial_webserver.c:372: if (unreleasedPacket) {
      0056AB 90 0F 91         [24] 2180 	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
      0056AE E0               [24] 2181 	movx	a,@dptr
      0056AF 60 70            [24] 2182 	jz	00105$
                                   2183 ;	trial_webserver.c:373: if (gNextPacketPtr == 0) {
      0056B1 90 0F 8F         [24] 2184 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0056B4 E0               [24] 2185 	movx	a,@dptr
      0056B5 FE               [12] 2186 	mov	r6,a
      0056B6 A3               [24] 2187 	inc	dptr
      0056B7 E0               [24] 2188 	movx	a,@dptr
      0056B8 90 0F 8F         [24] 2189 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0056BB E0               [24] 2190 	movx	a,@dptr
      0056BC F5 F0            [12] 2191 	mov	b,a
      0056BE A3               [24] 2192 	inc	dptr
      0056BF E0               [24] 2193 	movx	a,@dptr
      0056C0 45 F0            [12] 2194 	orl	a,b
      0056C2 70 26            [24] 2195 	jnz	00102$
                                   2196 ;	trial_webserver.c:375: spi_control_write(0, 0x0C, (uint8_t) (RX_END & 0xFF)); // Low byte
      0056C4 90 03 70         [24] 2197 	mov	dptr,#_spi_control_write_PARM_2
      0056C7 74 0C            [12] 2198 	mov	a,#0x0c
      0056C9 F0               [24] 2199 	movx	@dptr,a
      0056CA 90 03 71         [24] 2200 	mov	dptr,#_spi_control_write_PARM_3
      0056CD 74 FF            [12] 2201 	mov	a,#0xff
      0056CF F0               [24] 2202 	movx	@dptr,a
      0056D0 75 82 00         [24] 2203 	mov	dpl, #0x00
      0056D3 12 39 05         [24] 2204 	lcall	_spi_control_write
                                   2205 ;	trial_webserver.c:376: spi_control_write(0, 0x0D, (uint8_t) ((RX_END >> 8) & 0xFF)); // High byte
      0056D6 90 03 70         [24] 2206 	mov	dptr,#_spi_control_write_PARM_2
      0056D9 74 0D            [12] 2207 	mov	a,#0x0d
      0056DB F0               [24] 2208 	movx	@dptr,a
      0056DC 90 03 71         [24] 2209 	mov	dptr,#_spi_control_write_PARM_3
      0056DF 74 0B            [12] 2210 	mov	a,#0x0b
      0056E1 F0               [24] 2211 	movx	@dptr,a
      0056E2 75 82 00         [24] 2212 	mov	dpl, #0x00
      0056E5 12 39 05         [24] 2213 	lcall	_spi_control_write
      0056E8 80 32            [24] 2214 	sjmp	00103$
      0056EA                       2215 00102$:
                                   2216 ;	trial_webserver.c:378: spi_control_write(0, 0x0C, (uint8_t) ((gNextPacketPtr - 1) & 0xFF)); // Low byte
      0056EA 1E               [12] 2217 	dec	r6
      0056EB 90 03 70         [24] 2218 	mov	dptr,#_spi_control_write_PARM_2
      0056EE 74 0C            [12] 2219 	mov	a,#0x0c
      0056F0 F0               [24] 2220 	movx	@dptr,a
      0056F1 90 03 71         [24] 2221 	mov	dptr,#_spi_control_write_PARM_3
      0056F4 EE               [12] 2222 	mov	a,r6
      0056F5 F0               [24] 2223 	movx	@dptr,a
      0056F6 75 82 00         [24] 2224 	mov	dpl, #0x00
      0056F9 12 39 05         [24] 2225 	lcall	_spi_control_write
                                   2226 ;	trial_webserver.c:380: (uint8_t) (((gNextPacketPtr - 1) >> 8) & 0xFF)); // High byte
      0056FC 90 0F 8F         [24] 2227 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0056FF E0               [24] 2228 	movx	a,@dptr
      005700 FE               [12] 2229 	mov	r6,a
      005701 A3               [24] 2230 	inc	dptr
      005702 E0               [24] 2231 	movx	a,@dptr
      005703 FF               [12] 2232 	mov	r7,a
      005704 1E               [12] 2233 	dec	r6
      005705 BE FF 01         [24] 2234 	cjne	r6,#0xff,00147$
      005708 1F               [12] 2235 	dec	r7
      005709                       2236 00147$:
      005709 8F 06            [24] 2237 	mov	ar6,r7
      00570B 90 03 70         [24] 2238 	mov	dptr,#_spi_control_write_PARM_2
      00570E 74 0D            [12] 2239 	mov	a,#0x0d
      005710 F0               [24] 2240 	movx	@dptr,a
      005711 90 03 71         [24] 2241 	mov	dptr,#_spi_control_write_PARM_3
      005714 EE               [12] 2242 	mov	a,r6
      005715 F0               [24] 2243 	movx	@dptr,a
      005716 75 82 00         [24] 2244 	mov	dpl, #0x00
      005719 12 39 05         [24] 2245 	lcall	_spi_control_write
      00571C                       2246 00103$:
                                   2247 ;	trial_webserver.c:382: unreleasedPacket = false;
      00571C 90 0F 91         [24] 2248 	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
      00571F E4               [12] 2249 	clr	a
      005720 F0               [24] 2250 	movx	@dptr,a
      005721                       2251 00105$:
                                   2252 ;	trial_webserver.c:385: uint8_t EPKTCNT = eth_spi_read(0x19, 1);
      005721 90 03 74         [24] 2253 	mov	dptr,#_eth_spi_read_PARM_2
      005724 74 01            [12] 2254 	mov	a,#0x01
      005726 F0               [24] 2255 	movx	@dptr,a
      005727 75 82 19         [24] 2256 	mov	dpl, #0x19
      00572A 12 39 8A         [24] 2257 	lcall	_eth_spi_read
      00572D E5 82            [12] 2258 	mov	a, dpl
                                   2259 ;	trial_webserver.c:386: if (EPKTCNT > 0) {
      00572F 70 03            [24] 2260 	jnz	00148$
      005731 02 58 52         [24] 2261 	ljmp	00112$
      005734                       2262 00148$:
                                   2263 ;	trial_webserver.c:387: spi_control_write(0, 0x00, (uint8_t) (gNextPacketPtr & 0xFF)); // Low byte
      005734 90 0F 8F         [24] 2264 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      005737 E0               [24] 2265 	movx	a,@dptr
      005738 FE               [12] 2266 	mov	r6,a
      005739 A3               [24] 2267 	inc	dptr
      00573A E0               [24] 2268 	movx	a,@dptr
      00573B 90 03 70         [24] 2269 	mov	dptr,#_spi_control_write_PARM_2
      00573E E4               [12] 2270 	clr	a
      00573F F0               [24] 2271 	movx	@dptr,a
      005740 90 03 71         [24] 2272 	mov	dptr,#_spi_control_write_PARM_3
      005743 EE               [12] 2273 	mov	a,r6
      005744 F0               [24] 2274 	movx	@dptr,a
      005745 75 82 00         [24] 2275 	mov	dpl, #0x00
      005748 12 39 05         [24] 2276 	lcall	_spi_control_write
                                   2277 ;	trial_webserver.c:388: spi_control_write(0, 0x01, (uint8_t) ((gNextPacketPtr >> 8) & 0xFF)); // High byte
      00574B 90 0F 8F         [24] 2278 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      00574E E0               [24] 2279 	movx	a,@dptr
      00574F A3               [24] 2280 	inc	dptr
      005750 E0               [24] 2281 	movx	a,@dptr
      005751 FE               [12] 2282 	mov	r6,a
      005752 90 03 70         [24] 2283 	mov	dptr,#_spi_control_write_PARM_2
      005755 74 01            [12] 2284 	mov	a,#0x01
      005757 F0               [24] 2285 	movx	@dptr,a
      005758 90 03 71         [24] 2286 	mov	dptr,#_spi_control_write_PARM_3
      00575B EE               [12] 2287 	mov	a,r6
      00575C F0               [24] 2288 	movx	@dptr,a
      00575D 75 82 00         [24] 2289 	mov	dpl, #0x00
      005760 12 39 05         [24] 2290 	lcall	_spi_control_write
                                   2291 ;	trial_webserver.c:397: spi_buffer_read(sizeof(PacketHeader), gNextPacketPtr,
      005763 90 0F 8F         [24] 2292 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      005766 E0               [24] 2293 	movx	a,@dptr
      005767 FE               [12] 2294 	mov	r6,a
      005768 A3               [24] 2295 	inc	dptr
      005769 E0               [24] 2296 	movx	a,@dptr
      00576A FF               [12] 2297 	mov	r7,a
                                   2298 ;	trial_webserver.c:398: (uint8_t*) &header);
      00576B 90 03 81         [24] 2299 	mov	dptr,#_spi_buffer_read_PARM_2
      00576E EE               [12] 2300 	mov	a,r6
      00576F F0               [24] 2301 	movx	@dptr,a
      005770 EF               [12] 2302 	mov	a,r7
      005771 A3               [24] 2303 	inc	dptr
      005772 F0               [24] 2304 	movx	@dptr,a
      005773 90 03 83         [24] 2305 	mov	dptr,#_spi_buffer_read_PARM_3
      005776 74 94            [12] 2306 	mov	a,#_packetReceive_header_20002_144
      005778 F0               [24] 2307 	movx	@dptr,a
      005779 74 0F            [12] 2308 	mov	a,#(_packetReceive_header_20002_144 >> 8)
      00577B A3               [24] 2309 	inc	dptr
      00577C F0               [24] 2310 	movx	@dptr,a
      00577D E4               [12] 2311 	clr	a
      00577E A3               [24] 2312 	inc	dptr
      00577F F0               [24] 2313 	movx	@dptr,a
      005780 90 00 06         [24] 2314 	mov	dptr,#0x0006
      005783 12 3C B5         [24] 2315 	lcall	_spi_buffer_read
                                   2316 ;	trial_webserver.c:400: uint16_t start = gNextPacketPtr + sizeof(PacketHeader);
      005786 90 0F 8F         [24] 2317 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      005789 E0               [24] 2318 	movx	a,@dptr
      00578A FE               [12] 2319 	mov	r6,a
      00578B A3               [24] 2320 	inc	dptr
      00578C E0               [24] 2321 	movx	a,@dptr
      00578D FF               [12] 2322 	mov	r7,a
      00578E 74 06            [12] 2323 	mov	a,#0x06
      005790 2E               [12] 2324 	add	a, r6
      005791 FE               [12] 2325 	mov	r6,a
      005792 E4               [12] 2326 	clr	a
      005793 3F               [12] 2327 	addc	a, r7
      005794 FF               [12] 2328 	mov	r7,a
      005795 90 0F 9A         [24] 2329 	mov	dptr,#_packetReceive_start_20003_145
      005798 EE               [12] 2330 	mov	a,r6
      005799 F0               [24] 2331 	movx	@dptr,a
      00579A EF               [12] 2332 	mov	a,r7
      00579B A3               [24] 2333 	inc	dptr
      00579C F0               [24] 2334 	movx	@dptr,a
                                   2335 ;	trial_webserver.c:401: gNextPacketPtr = header.nextPacket;
      00579D 90 0F 94         [24] 2336 	mov	dptr,#_packetReceive_header_20002_144
      0057A0 E0               [24] 2337 	movx	a,@dptr
      0057A1 FE               [12] 2338 	mov	r6,a
      0057A2 A3               [24] 2339 	inc	dptr
      0057A3 E0               [24] 2340 	movx	a,@dptr
      0057A4 FF               [12] 2341 	mov	r7,a
      0057A5 90 0F 8F         [24] 2342 	mov	dptr,#_packetReceive_gNextPacketPtr_10000_138
      0057A8 EE               [12] 2343 	mov	a,r6
      0057A9 F0               [24] 2344 	movx	@dptr,a
      0057AA EF               [12] 2345 	mov	a,r7
      0057AB A3               [24] 2346 	inc	dptr
      0057AC F0               [24] 2347 	movx	@dptr,a
                                   2348 ;	trial_webserver.c:403: len = header.byteCount - 4; // Exclude CRC
      0057AD 90 0F 96         [24] 2349 	mov	dptr,#(_packetReceive_header_20002_144 + 0x0002)
      0057B0 E0               [24] 2350 	movx	a,@dptr
      0057B1 FE               [12] 2351 	mov	r6,a
      0057B2 A3               [24] 2352 	inc	dptr
      0057B3 E0               [24] 2353 	movx	a,@dptr
      0057B4 FF               [12] 2354 	mov	r7,a
      0057B5 EE               [12] 2355 	mov	a,r6
      0057B6 24 FC            [12] 2356 	add	a,#0xfc
      0057B8 FE               [12] 2357 	mov	r6,a
      0057B9 EF               [12] 2358 	mov	a,r7
      0057BA 34 FF            [12] 2359 	addc	a,#0xff
      0057BC FF               [12] 2360 	mov	r7,a
      0057BD 90 0F 92         [24] 2361 	mov	dptr,#_packetReceive_len_10000_138
      0057C0 EE               [12] 2362 	mov	a,r6
      0057C1 F0               [24] 2363 	movx	@dptr,a
      0057C2 EF               [12] 2364 	mov	a,r7
      0057C3 A3               [24] 2365 	inc	dptr
      0057C4 F0               [24] 2366 	movx	@dptr,a
                                   2367 ;	trial_webserver.c:404: if (len > BUFFER_SIZE - 1)
      0057C5 C3               [12] 2368 	clr	c
      0057C6 74 DB            [12] 2369 	mov	a,#0xdb
      0057C8 9E               [12] 2370 	subb	a,r6
      0057C9 74 05            [12] 2371 	mov	a,#0x05
      0057CB 9F               [12] 2372 	subb	a,r7
      0057CC 50 0A            [24] 2373 	jnc	00107$
                                   2374 ;	trial_webserver.c:405: len = BUFFER_SIZE - 1;
      0057CE 90 0F 92         [24] 2375 	mov	dptr,#_packetReceive_len_10000_138
      0057D1 74 DB            [12] 2376 	mov	a,#0xdb
      0057D3 F0               [24] 2377 	movx	@dptr,a
      0057D4 74 05            [12] 2378 	mov	a,#0x05
      0057D6 A3               [24] 2379 	inc	dptr
      0057D7 F0               [24] 2380 	movx	@dptr,a
      0057D8                       2381 00107$:
                                   2382 ;	trial_webserver.c:407: if ((header.status & 0x80) == 0)
      0057D8 90 0F 98         [24] 2383 	mov	dptr,#(_packetReceive_header_20002_144 + 0x0004)
      0057DB E0               [24] 2384 	movx	a,@dptr
      0057DC FE               [12] 2385 	mov	r6,a
      0057DD A3               [24] 2386 	inc	dptr
      0057DE E0               [24] 2387 	movx	a,@dptr
      0057DF EE               [12] 2388 	mov	a,r6
      0057E0 20 E7 09         [24] 2389 	jb	acc.7,00109$
                                   2390 ;	trial_webserver.c:408: len = 0; // Invalid packet
      0057E3 90 0F 92         [24] 2391 	mov	dptr,#_packetReceive_len_10000_138
      0057E6 E4               [12] 2392 	clr	a
      0057E7 F0               [24] 2393 	movx	@dptr,a
      0057E8 A3               [24] 2394 	inc	dptr
      0057E9 F0               [24] 2395 	movx	@dptr,a
      0057EA 80 2C            [24] 2396 	sjmp	00110$
      0057EC                       2397 00109$:
                                   2398 ;	trial_webserver.c:410: spi_buffer_read(len, start, buffer);
      0057EC 90 0F 92         [24] 2399 	mov	dptr,#_packetReceive_len_10000_138
      0057EF E0               [24] 2400 	movx	a,@dptr
      0057F0 FE               [12] 2401 	mov	r6,a
      0057F1 A3               [24] 2402 	inc	dptr
      0057F2 E0               [24] 2403 	movx	a,@dptr
      0057F3 FF               [12] 2404 	mov	r7,a
      0057F4 90 0F 9A         [24] 2405 	mov	dptr,#_packetReceive_start_20003_145
      0057F7 E0               [24] 2406 	movx	a,@dptr
      0057F8 FC               [12] 2407 	mov	r4,a
      0057F9 A3               [24] 2408 	inc	dptr
      0057FA E0               [24] 2409 	movx	a,@dptr
      0057FB FD               [12] 2410 	mov	r5,a
      0057FC 90 03 81         [24] 2411 	mov	dptr,#_spi_buffer_read_PARM_2
      0057FF EC               [12] 2412 	mov	a,r4
      005800 F0               [24] 2413 	movx	@dptr,a
      005801 ED               [12] 2414 	mov	a,r5
      005802 A3               [24] 2415 	inc	dptr
      005803 F0               [24] 2416 	movx	@dptr,a
      005804 90 03 83         [24] 2417 	mov	dptr,#_spi_buffer_read_PARM_3
      005807 74 AB            [12] 2418 	mov	a,#_buffer
      005809 F0               [24] 2419 	movx	@dptr,a
      00580A 74 09            [12] 2420 	mov	a,#(_buffer >> 8)
      00580C A3               [24] 2421 	inc	dptr
      00580D F0               [24] 2422 	movx	@dptr,a
      00580E E4               [12] 2423 	clr	a
      00580F A3               [24] 2424 	inc	dptr
      005810 F0               [24] 2425 	movx	@dptr,a
      005811 8E 82            [24] 2426 	mov	dpl, r6
      005813 8F 83            [24] 2427 	mov	dph, r7
      005815 12 3C B5         [24] 2428 	lcall	_spi_buffer_read
      005818                       2429 00110$:
                                   2430 ;	trial_webserver.c:412: buffer[len] = 0; // Null-terminate
      005818 90 0F 92         [24] 2431 	mov	dptr,#_packetReceive_len_10000_138
      00581B E0               [24] 2432 	movx	a,@dptr
      00581C FE               [12] 2433 	mov	r6,a
      00581D A3               [24] 2434 	inc	dptr
      00581E E0               [24] 2435 	movx	a,@dptr
      00581F FF               [12] 2436 	mov	r7,a
      005820 EE               [12] 2437 	mov	a,r6
      005821 24 AB            [12] 2438 	add	a, #_buffer
      005823 F5 82            [12] 2439 	mov	dpl,a
      005825 EF               [12] 2440 	mov	a,r7
      005826 34 09            [12] 2441 	addc	a, #(_buffer >> 8)
      005828 F5 83            [12] 2442 	mov	dph,a
      00582A E4               [12] 2443 	clr	a
      00582B F0               [24] 2444 	movx	@dptr,a
                                   2445 ;	trial_webserver.c:413: unreleasedPacket = true;
      00582C 90 0F 91         [24] 2446 	mov	dptr,#_packetReceive_unreleasedPacket_10000_138
      00582F 04               [12] 2447 	inc	a
      005830 F0               [24] 2448 	movx	@dptr,a
                                   2449 ;	trial_webserver.c:415: uint8_t ECON2 = mac_spi_read(0x1E, 0);
      005831 90 03 79         [24] 2450 	mov	dptr,#_mac_spi_read_PARM_2
      005834 E4               [12] 2451 	clr	a
      005835 F0               [24] 2452 	movx	@dptr,a
      005836 75 82 1E         [24] 2453 	mov	dpl, #0x1e
      005839 12 3A 7B         [24] 2454 	lcall	_mac_spi_read
      00583C E5 82            [12] 2455 	mov	a, dpl
                                   2456 ;	trial_webserver.c:416: spi_control_write(0, 0x1E, (ECON2 | (1 << 6))); // Enable MAC reception
      00583E 44 40            [12] 2457 	orl	a,#0x40
      005840 FF               [12] 2458 	mov	r7,a
      005841 90 03 70         [24] 2459 	mov	dptr,#_spi_control_write_PARM_2
      005844 74 1E            [12] 2460 	mov	a,#0x1e
      005846 F0               [24] 2461 	movx	@dptr,a
      005847 90 03 71         [24] 2462 	mov	dptr,#_spi_control_write_PARM_3
      00584A EF               [12] 2463 	mov	a,r7
      00584B F0               [24] 2464 	movx	@dptr,a
      00584C 75 82 00         [24] 2465 	mov	dpl, #0x00
      00584F 12 39 05         [24] 2466 	lcall	_spi_control_write
      005852                       2467 00112$:
                                   2468 ;	trial_webserver.c:419: return len;
      005852 90 0F 92         [24] 2469 	mov	dptr,#_packetReceive_len_10000_138
      005855 E0               [24] 2470 	movx	a,@dptr
      005856 FE               [12] 2471 	mov	r6,a
      005857 A3               [24] 2472 	inc	dptr
      005858 E0               [24] 2473 	movx	a,@dptr
                                   2474 ;	trial_webserver.c:420: }
      005859 8E 82            [24] 2475 	mov	dpl,r6
      00585B F5 83            [12] 2476 	mov	dph,a
      00585D 22               [24] 2477 	ret
                                   2478 ;------------------------------------------------------------
                                   2479 ;Allocation info for local variables in function 'packetLoop'
                                   2480 ;------------------------------------------------------------
                                   2481 ;plen                      Allocated with name '_packetLoop_plen_10000_148'
                                   2482 ;ethType                   Allocated with name '_packetLoop_ethType_20000_149'
                                   2483 ;tcpFlags                  Allocated with name '_packetLoop_tcpFlags_30000_152'
                                   2484 ;------------------------------------------------------------
                                   2485 ;	trial_webserver.c:422: void packetLoop(void)
                                   2486 ;	-----------------------------------------
                                   2487 ;	 function packetLoop
                                   2488 ;	-----------------------------------------
      00585E                       2489 _packetLoop:
                                   2490 ;	trial_webserver.c:424: uint16_t plen = packetReceive();
      00585E 12 56 A4         [24] 2491 	lcall	_packetReceive
      005861 AE 82            [24] 2492 	mov	r6, dpl
      005863 AF 83            [24] 2493 	mov	r7, dph
                                   2494 ;	trial_webserver.c:427: if (plen > 0) {
      005865 EE               [12] 2495 	mov	a,r6
      005866 4F               [12] 2496 	orl	a,r7
      005867 70 01            [24] 2497 	jnz	00219$
      005869 22               [24] 2498 	ret
      00586A                       2499 00219$:
                                   2500 ;	trial_webserver.c:428: uint16_t ethType = (buffer[ETH_TYPE_H_P] << 8) | buffer[ETH_TYPE_L_P];
      00586A 90 09 B7         [24] 2501 	mov	dptr,#(_buffer + 0x000c)
      00586D E0               [24] 2502 	movx	a,@dptr
      00586E FC               [12] 2503 	mov	r4,a
      00586F 7D 00            [12] 2504 	mov	r5,#0x00
      005871 90 09 B8         [24] 2505 	mov	dptr,#(_buffer + 0x000d)
      005874 E0               [24] 2506 	movx	a,@dptr
      005875 FB               [12] 2507 	mov	r3,a
      005876 7A 00            [12] 2508 	mov	r2,#0x00
      005878 42 05            [12] 2509 	orl	ar5,a
      00587A EA               [12] 2510 	mov	a,r2
      00587B 42 04            [12] 2511 	orl	ar4,a
                                   2512 ;	trial_webserver.c:429: if (ethType == ETH_TYPE_ARP) {
      00587D BD 06 0F         [24] 2513 	cjne	r5,#0x06,00104$
      005880 BC 08 0C         [24] 2514 	cjne	r4,#0x08,00104$
                                   2515 ;	trial_webserver.c:430: if (buffer[21] == 0x01) {
      005883 90 09 C0         [24] 2516 	mov	dptr,#(_buffer + 0x0015)
      005886 E0               [24] 2517 	movx	a,@dptr
      005887 FB               [12] 2518 	mov	r3,a
      005888 BB 01 03         [24] 2519 	cjne	r3,#0x01,00102$
                                   2520 ;	trial_webserver.c:431: makeArpReply();
                                   2521 ;	trial_webserver.c:433: return;
      00588B 02 4D E7         [24] 2522 	ljmp	_makeArpReply
      00588E                       2523 00102$:
      00588E 22               [24] 2524 	ret
      00588F                       2525 00104$:
                                   2526 ;	trial_webserver.c:436: if (ethType == ETH_TYPE_IP && buffer[IP_PROTO_P] == IP_PROTO_TCP)
      00588F BD 00 05         [24] 2527 	cjne	r5,#0x00,00224$
      005892 BC 08 02         [24] 2528 	cjne	r4,#0x08,00224$
      005895 80 01            [24] 2529 	sjmp	00225$
      005897                       2530 00224$:
      005897 22               [24] 2531 	ret
      005898                       2532 00225$:
      005898 90 09 C2         [24] 2533 	mov	dptr,#(_buffer + 0x0017)
      00589B E0               [24] 2534 	movx	a,@dptr
      00589C FD               [12] 2535 	mov	r5,a
      00589D BD 06 02         [24] 2536 	cjne	r5,#0x06,00226$
      0058A0 80 01            [24] 2537 	sjmp	00227$
      0058A2                       2538 00226$:
      0058A2 22               [24] 2539 	ret
      0058A3                       2540 00227$:
                                   2541 ;	trial_webserver.c:438: uint8_t tcpFlags = buffer[TCP_FLAGS_P];
      0058A3 90 09 DA         [24] 2542 	mov	dptr,#(_buffer + 0x002f)
      0058A6 E0               [24] 2543 	movx	a,@dptr
                                   2544 ;	trial_webserver.c:441: if ((tcpFlags & TCP_FLAG_ACK) && (tcpFlags & TCP_FLAG_FIN)) {
      0058A7 FD               [12] 2545 	mov	r5,a
      0058A8 30 E4 23         [24] 2546 	jnb	acc.4,00106$
      0058AB ED               [12] 2547 	mov	a,r5
      0058AC 30 E0 1F         [24] 2548 	jnb	acc.0,00106$
                                   2549 ;	trial_webserver.c:442: printf("TCP(ACK_FIN) packet detected\n\r");
      0058AF 74 48            [12] 2550 	mov	a,#___str_6
      0058B1 C0 E0            [24] 2551 	push	acc
      0058B3 74 7B            [12] 2552 	mov	a,#(___str_6 >> 8)
      0058B5 C0 E0            [24] 2553 	push	acc
      0058B7 74 80            [12] 2554 	mov	a,#0x80
      0058B9 C0 E0            [24] 2555 	push	acc
      0058BB 12 61 AF         [24] 2556 	lcall	_printf
      0058BE 15 81            [12] 2557 	dec	sp
      0058C0 15 81            [12] 2558 	dec	sp
      0058C2 15 81            [12] 2559 	dec	sp
                                   2560 ;	trial_webserver.c:443: makeTcpAck3(); // Send an acknowledgment
      0058C4 12 4E EB         [24] 2561 	lcall	_makeTcpAck3
                                   2562 ;	trial_webserver.c:444: connectionState = CLOSED;
      0058C7 90 14 2F         [24] 2563 	mov	dptr,#_connectionState
      0058CA 74 04            [12] 2564 	mov	a,#0x04
      0058CC F0               [24] 2565 	movx	@dptr,a
                                   2566 ;	trial_webserver.c:446: return;
      0058CD 22               [24] 2567 	ret
      0058CE                       2568 00106$:
                                   2569 ;	trial_webserver.c:448: if ((tcpFlags & TCP_FLAG_SYN)) {
      0058CE ED               [12] 2570 	mov	a,r5
      0058CF 30 E1 26         [24] 2571 	jnb	acc.1,00109$
                                   2572 ;	trial_webserver.c:449: printf("TCP(SYN) packet detected\n\r");
      0058D2 C0 07            [24] 2573 	push	ar7
      0058D4 C0 06            [24] 2574 	push	ar6
      0058D6 C0 05            [24] 2575 	push	ar5
      0058D8 74 67            [12] 2576 	mov	a,#___str_7
      0058DA C0 E0            [24] 2577 	push	acc
      0058DC 74 7B            [12] 2578 	mov	a,#(___str_7 >> 8)
      0058DE C0 E0            [24] 2579 	push	acc
      0058E0 74 80            [12] 2580 	mov	a,#0x80
      0058E2 C0 E0            [24] 2581 	push	acc
      0058E4 12 61 AF         [24] 2582 	lcall	_printf
      0058E7 15 81            [12] 2583 	dec	sp
      0058E9 15 81            [12] 2584 	dec	sp
      0058EB 15 81            [12] 2585 	dec	sp
      0058ED D0 05            [24] 2586 	pop	ar5
      0058EF D0 06            [24] 2587 	pop	ar6
      0058F1 D0 07            [24] 2588 	pop	ar7
                                   2589 ;	trial_webserver.c:451: connectionState = LISTEN;
      0058F3 90 14 2F         [24] 2590 	mov	dptr,#_connectionState
      0058F6 E4               [12] 2591 	clr	a
      0058F7 F0               [24] 2592 	movx	@dptr,a
      0058F8                       2593 00109$:
                                   2594 ;	trial_webserver.c:454: switch (connectionState) {
      0058F8 90 14 2F         [24] 2595 	mov	dptr,#_connectionState
      0058FB E0               [24] 2596 	movx	a,@dptr
      0058FC FC               [12] 2597 	mov  r4,a
      0058FD 24 FA            [12] 2598 	add	a,#0xff - 0x05
      0058FF 50 01            [24] 2599 	jnc	00231$
      005901 22               [24] 2600 	ret
      005902                       2601 00231$:
      005902 EC               [12] 2602 	mov	a,r4
      005903 2C               [12] 2603 	add	a,r4
      005904 2C               [12] 2604 	add	a,r4
      005905 90 59 09         [24] 2605 	mov	dptr,#00232$
      005908 73               [24] 2606 	jmp	@a+dptr
      005909                       2607 00232$:
      005909 02 59 1B         [24] 2608 	ljmp	00110$
      00590C 02 59 3C         [24] 2609 	ljmp	00113$
      00590F 02 59 60         [24] 2610 	ljmp	00116$
      005912 02 59 9A         [24] 2611 	ljmp	00122$
      005915 02 59 C7         [24] 2612 	ljmp	00133$
      005918 02 59 BE         [24] 2613 	ljmp	00125$
                                   2614 ;	trial_webserver.c:455: case LISTEN:
      00591B                       2615 00110$:
                                   2616 ;	trial_webserver.c:456: printf("listen\n\r");
      00591B C0 05            [24] 2617 	push	ar5
      00591D 74 82            [12] 2618 	mov	a,#___str_8
      00591F C0 E0            [24] 2619 	push	acc
      005921 74 7B            [12] 2620 	mov	a,#(___str_8 >> 8)
      005923 C0 E0            [24] 2621 	push	acc
      005925 74 80            [12] 2622 	mov	a,#0x80
      005927 C0 E0            [24] 2623 	push	acc
      005929 12 61 AF         [24] 2624 	lcall	_printf
      00592C 15 81            [12] 2625 	dec	sp
      00592E 15 81            [12] 2626 	dec	sp
      005930 15 81            [12] 2627 	dec	sp
      005932 D0 05            [24] 2628 	pop	ar5
                                   2629 ;	trial_webserver.c:457: if (tcpFlags & TCP_FLAG_SYN)
      005934 ED               [12] 2630 	mov	a,r5
      005935 20 E1 01         [24] 2631 	jb	acc.1,00233$
      005938 22               [24] 2632 	ret
      005939                       2633 00233$:
                                   2634 ;	trial_webserver.c:458: makeTcpSynAck();
                                   2635 ;	trial_webserver.c:459: break;
      005939 02 52 CE         [24] 2636 	ljmp	_makeTcpSynAck
                                   2637 ;	trial_webserver.c:460: case SYN_RECEIVED:
      00593C                       2638 00113$:
                                   2639 ;	trial_webserver.c:461: printf("syn received\n\r");
      00593C C0 05            [24] 2640 	push	ar5
      00593E 74 8B            [12] 2641 	mov	a,#___str_9
      005940 C0 E0            [24] 2642 	push	acc
      005942 74 7B            [12] 2643 	mov	a,#(___str_9 >> 8)
      005944 C0 E0            [24] 2644 	push	acc
      005946 74 80            [12] 2645 	mov	a,#0x80
      005948 C0 E0            [24] 2646 	push	acc
      00594A 12 61 AF         [24] 2647 	lcall	_printf
      00594D 15 81            [12] 2648 	dec	sp
      00594F 15 81            [12] 2649 	dec	sp
      005951 15 81            [12] 2650 	dec	sp
      005953 D0 05            [24] 2651 	pop	ar5
                                   2652 ;	trial_webserver.c:462: if (tcpFlags & TCP_FLAG_ACK)
      005955 ED               [12] 2653 	mov	a,r5
      005956 30 E4 6E         [24] 2654 	jnb	acc.4,00133$
                                   2655 ;	trial_webserver.c:463: connectionState = ESTABLISHED;
      005959 90 14 2F         [24] 2656 	mov	dptr,#_connectionState
      00595C 74 02            [12] 2657 	mov	a,#0x02
      00595E F0               [24] 2658 	movx	@dptr,a
                                   2659 ;	trial_webserver.c:464: break;
                                   2660 ;	trial_webserver.c:465: case ESTABLISHED:
      00595F 22               [24] 2661 	ret
      005960                       2662 00116$:
                                   2663 ;	trial_webserver.c:466: printf("established\n\r");
      005960 C0 07            [24] 2664 	push	ar7
      005962 C0 06            [24] 2665 	push	ar6
      005964 C0 05            [24] 2666 	push	ar5
      005966 74 9A            [12] 2667 	mov	a,#___str_10
      005968 C0 E0            [24] 2668 	push	acc
      00596A 74 7B            [12] 2669 	mov	a,#(___str_10 >> 8)
      00596C C0 E0            [24] 2670 	push	acc
      00596E 74 80            [12] 2671 	mov	a,#0x80
      005970 C0 E0            [24] 2672 	push	acc
      005972 12 61 AF         [24] 2673 	lcall	_printf
      005975 15 81            [12] 2674 	dec	sp
      005977 15 81            [12] 2675 	dec	sp
      005979 15 81            [12] 2676 	dec	sp
      00597B D0 05            [24] 2677 	pop	ar5
      00597D D0 06            [24] 2678 	pop	ar6
      00597F D0 07            [24] 2679 	pop	ar7
                                   2680 ;	trial_webserver.c:467: if (tcpFlags & TCP_FLAG_FIN) {
      005981 ED               [12] 2681 	mov	a,r5
      005982 30 E0 0A         [24] 2682 	jnb	acc.0,00120$
                                   2683 ;	trial_webserver.c:468: makeTcpAck();
      005985 12 54 5A         [24] 2684 	lcall	_makeTcpAck
                                   2685 ;	trial_webserver.c:469: connectionState = FIN_WAIT;
      005988 90 14 2F         [24] 2686 	mov	dptr,#_connectionState
      00598B 74 03            [12] 2687 	mov	a,#0x03
      00598D F0               [24] 2688 	movx	@dptr,a
      00598E 22               [24] 2689 	ret
      00598F                       2690 00120$:
                                   2691 ;	trial_webserver.c:470: } else if (plen > TCP_DATA_START_P) {
      00598F C3               [12] 2692 	clr	c
      005990 74 36            [12] 2693 	mov	a,#0x36
      005992 9E               [12] 2694 	subb	a,r6
      005993 E4               [12] 2695 	clr	a
      005994 9F               [12] 2696 	subb	a,r7
      005995 50 30            [24] 2697 	jnc	00133$
                                   2698 ;	trial_webserver.c:471: makeTcpAck2();
                                   2699 ;	trial_webserver.c:474: break;
                                   2700 ;	trial_webserver.c:475: case FIN_WAIT:
      005997 02 50 BD         [24] 2701 	ljmp	_makeTcpAck2
      00599A                       2702 00122$:
                                   2703 ;	trial_webserver.c:476: printf("fin wait\n\r");
      00599A C0 05            [24] 2704 	push	ar5
      00599C 74 A8            [12] 2705 	mov	a,#___str_11
      00599E C0 E0            [24] 2706 	push	acc
      0059A0 74 7B            [12] 2707 	mov	a,#(___str_11 >> 8)
      0059A2 C0 E0            [24] 2708 	push	acc
      0059A4 74 80            [12] 2709 	mov	a,#0x80
      0059A6 C0 E0            [24] 2710 	push	acc
      0059A8 12 61 AF         [24] 2711 	lcall	_printf
      0059AB 15 81            [12] 2712 	dec	sp
      0059AD 15 81            [12] 2713 	dec	sp
      0059AF 15 81            [12] 2714 	dec	sp
      0059B1 D0 05            [24] 2715 	pop	ar5
                                   2716 ;	trial_webserver.c:477: if (tcpFlags & TCP_FLAG_ACK)
      0059B3 ED               [12] 2717 	mov	a,r5
      0059B4 30 E4 10         [24] 2718 	jnb	acc.4,00133$
                                   2719 ;	trial_webserver.c:478: connectionState = CLOSED;
      0059B7 90 14 2F         [24] 2720 	mov	dptr,#_connectionState
      0059BA 74 04            [12] 2721 	mov	a,#0x04
      0059BC F0               [24] 2722 	movx	@dptr,a
                                   2723 ;	trial_webserver.c:479: break;
                                   2724 ;	trial_webserver.c:480: case ACK_SENT:
      0059BD 22               [24] 2725 	ret
      0059BE                       2726 00125$:
                                   2727 ;	trial_webserver.c:481: makeTcpFinPshAck();
      0059BE 12 54 AA         [24] 2728 	lcall	_makeTcpFinPshAck
                                   2729 ;	trial_webserver.c:482: connectionState = CLOSED;
      0059C1 90 14 2F         [24] 2730 	mov	dptr,#_connectionState
      0059C4 74 04            [12] 2731 	mov	a,#0x04
      0059C6 F0               [24] 2732 	movx	@dptr,a
                                   2733 ;	trial_webserver.c:486: }
      0059C7                       2734 00133$:
                                   2735 ;	trial_webserver.c:492: }
      0059C7 22               [24] 2736 	ret
                                   2737 	.area CSEG    (CODE)
                                   2738 	.area CONST   (CODE)
                                   2739 	.area CONST   (CODE)
      007784                       2740 ___str_0:
      007784 74 72 69 61 6C 61 72  2741 	.ascii "trialarpreply"
             70 72 65 70 6C 79
      007791 0A                    2742 	.db 0x0a
      007792 0D                    2743 	.db 0x0d
      007793 00                    2744 	.db 0x00
                                   2745 	.area CSEG    (CODE)
                                   2746 	.area CONST   (CODE)
      007794                       2747 ___str_1:
      007794 6D 61 6B 65 54 63 70  2748 	.ascii "makeTcpAck"
             41 63 6B
      00779E 0A                    2749 	.db 0x0a
      00779F 0D                    2750 	.db 0x0d
      0077A0 00                    2751 	.db 0x00
                                   2752 	.area CSEG    (CODE)
                                   2753 	.area CONST   (CODE)
      0077A1                       2754 ___str_2:
      0077A1 6D 61 6B 65 54 63 70  2755 	.ascii "makeTcpSynAck"
             53 79 6E 41 63 6B
      0077AE 0A                    2756 	.db 0x0a
      0077AF 0D                    2757 	.db 0x0d
      0077B0 00                    2758 	.db 0x00
                                   2759 	.area CSEG    (CODE)
                                   2760 	.area CONST   (CODE)
      0077B1                       2761 ___str_3:
      0077B1 74 63 70 61 63 6B     2762 	.ascii "tcpack"
      0077B7 0A                    2763 	.db 0x0a
      0077B8 0D                    2764 	.db 0x0d
      0077B9 00                    2765 	.db 0x00
                                   2766 	.area CSEG    (CODE)
                                   2767 	.area CONST   (CODE)
      0077BA                       2768 ___str_4:
      0077BA 48 54 54 50 2F 31 2E  2769 	.ascii "HTTP/1.1 200 OK"
             31 20 32 30 30 20 4F
             4B
      0077C9 0D                    2770 	.db 0x0d
      0077CA 0A                    2771 	.db 0x0a
      0077CB 43 6F 6E 74 65 6E 74  2772 	.ascii "Content-Type: text/html"
             2D 54 79 70 65 3A 20
             74 65 78 74 2F 68 74
             6D 6C
      0077E2 0D                    2773 	.db 0x0d
      0077E3 0A                    2774 	.db 0x0a
      0077E4 43 6F 6E 74 65 6E 74  2775 	.ascii "Content-Length: 530"
             2D 4C 65 6E 67 74 68
             3A 20 35 33 30
      0077F7 0D                    2776 	.db 0x0d
      0077F8 0A                    2777 	.db 0x0a
      0077F9 0D                    2778 	.db 0x0d
      0077FA 0A                    2779 	.db 0x0a
      0077FB 3C 21 44 4F 43 54 59  2780 	.ascii "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><"
             50 45 20 68 74 6D 6C
             3E 3C 68 74 6D 6C 20
             6C 61 6E 67 3D 27 65
             6E 27 3E 3C 68 65 61
             64 3E 3C 6D 65 74 61
             20 63 68 61 72 73 65
             74 3D 27 55 54 46 2D
             38 27 3E 3C
      007837 6D 65 74 61 20 6E 61  2781 	.ascii "meta name='viewport' content='width=device-width, initial-sc"
             6D 65 3D 27 76 69 65
             77 70 6F 72 74 27 20
             63 6F 6E 74 65 6E 74
             3D 27 77 69 64 74 68
             3D 64 65 76 69 63 65
             2D 77 69 64 74 68 2C
             20 69 6E 69 74 69 61
             6C 2D 73 63
      007873 61 6C 65 3D 31 2E 30  2782 	.ascii "ale=1.0'><title>Ethernet Web Server</title><style>body {font"
             27 3E 3C 74 69 74 6C
             65 3E 45 74 68 65 72
             6E 65 74 20 57 65 62
             20 53 65 72 76 65 72
             3C 2F 74 69 74 6C 65
             3E 3C 73 74 79 6C 65
             3E 62 6F 64 79 20 7B
             66 6F 6E 74
      0078AF 2D 66 61 6D 69 6C 79  2783 	.ascii "-family: Arial, sans-serif; background-color: #f0f0f0; text-"
             3A 20 41 72 69 61 6C
             2C 20 73 61 6E 73 2D
             73 65 72 69 66 3B 20
             62 61 63 6B 67 72 6F
             75 6E 64 2D 63 6F 6C
             6F 72 3A 20 23 66 30
             66 30 66 30 3B 20 74
             65 78 74 2D
      0078EB 61 6C 69 67 6E 3A 20  2784 	.ascii "align: center; padding: 20px;}h1 {color: #333333;}p {color: "
             63 65 6E 74 65 72 3B
             20 70 61 64 64 69 6E
             67 3A 20 32 30 70 78
             3B 7D 68 31 20 7B 63
             6F 6C 6F 72 3A 20 23
             33 33 33 33 33 33 3B
             7D 70 20 7B 63 6F 6C
             6F 72 3A 20
      007927 23 36 36 36 36 36 36  2785 	.ascii "#666666;}</style></head><body><h1>ESD FALL 2024</h1><p>Ether"
             3B 7D 3C 2F 73 74 79
             6C 65 3E 3C 2F 68 65
             61 64 3E 3C 62 6F 64
             79 3E 3C 68 31 3E 45
             53 44 20 46 41 4C 4C
             20 32 30 32 34 3C 2F
             68 31 3E 3C 70 3E 45
             74 68 65 72
      007963 6E 65 74 20 62 61 73  2786 	.ascii "net based Web Server for Embedded Systems - NADGIR and KOPPA"
             65 64 20 57 65 62 20
             53 65 72 76 65 72 20
             66 6F 72 20 45 6D 62
             65 64 64 65 64 20 53
             79 73 74 65 6D 73 20
             2D 20 4E 41 44 47 49
             52 20 61 6E 64 20 4B
             4F 50 50 41
      00799F 20 6D 61 64 65 20 69  2787 	.ascii " made itttt, lessgoooo!!! This web server showcases the powe"
             74 74 74 74 2C 20 6C
             65 73 73 67 6F 6F 6F
             6F 21 21 21 20 54 68
             69 73 20 77 65 62 20
             73 65 72 76 65 72 20
             73 68 6F 77 63 61 73
             65 73 20 74 68 65 20
             70 6F 77 65
      0079DB 72 20 6F 66 20 6D 69  2788 	.ascii "r of microcontrollers and Ethernet communication. By leverag"
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 73
             20 61 6E 64 20 45 74
             68 65 72 6E 65 74 20
             63 6F 6D 6D 75 6E 69
             63 61 74 69 6F 6E 2E
             20 42 79 20 6C 65 76
             65 72 61 67
      007A17 69 6E 67 20 74 68 65  2789 	.ascii "ing the AT89C51RC2 microcontroller and the ENC28J60 Ethernet"
             20 41 54 38 39 43 35
             31 52 43 32 20 6D 69
             63 72 6F 63 6F 6E 74
             72 6F 6C 6C 65 72 20
             61 6E 64 20 74 68 65
             20 45 4E 43 32 38 4A
             36 30 20 45 74 68 65
             72 6E 65 74
      007A53 20 63 6F 6E 74 72 6F  2790 	.ascii " controller, we can serve dynamic web pages and control embe"
             6C 6C 65 72 2C 20 77
             65 20 63 61 6E 20 73
             65 72 76 65 20 64 79
             6E 61 6D 69 63 20 77
             65 62 20 70 61 67 65
             73 20 61 6E 64 20 63
             6F 6E 74 72 6F 6C 20
             65 6D 62 65
      007A8F 64 64 65 64 20 64 65  2791 	.ascii "dded devices remotely. The server allows seamless communicat"
             76 69 63 65 73 20 72
             65 6D 6F 74 65 6C 79
             2E 20 54 68 65 20 73
             65 72 76 65 72 20 61
             6C 6C 6F 77 73 20 73
             65 61 6D 6C 65 73 73
             20 63 6F 6D 6D 75 6E
             69 63 61 74
      007ACB 69 6F 6E 20 62 65 74  2792 	.ascii "ion between hardware and software, enabling real-time data e"
             77 65 65 6E 20 68 61
             72 64 77 61 72 65 20
             61 6E 64 20 73 6F 66
             74 77 61 72 65 2C 20
             65 6E 61 62 6C 69 6E
             67 20 72 65 61 6C 2D
             74 69 6D 65 20 64 61
             74 61 20 65
      007B07 78 63 68 61 6E 67 65  2793 	.ascii "xchange across the network.</p></body></html>"
             20 61 63 72 6F 73 73
             20 74 68 65 20 6E 65
             74 77 6F 72 6B 2E 3C
             2F 70 3E 3C 2F 62 6F
             64 79 3E 3C 2F 68 74
             6D 6C 3E
      007B34 00                    2794 	.db 0x00
                                   2795 	.area CSEG    (CODE)
                                   2796 	.area CONST   (CODE)
      007B35                       2797 ___str_5:
      007B35 6D 61 6B 65 54 63 70  2798 	.ascii "makeTcpFinPshAck"
             46 69 6E 50 73 68 41
             63 6B
      007B45 0A                    2799 	.db 0x0a
      007B46 0D                    2800 	.db 0x0d
      007B47 00                    2801 	.db 0x00
                                   2802 	.area CSEG    (CODE)
                                   2803 	.area CONST   (CODE)
      007B48                       2804 ___str_6:
      007B48 54 43 50 28 41 43 4B  2805 	.ascii "TCP(ACK_FIN) packet detected"
             5F 46 49 4E 29 20 70
             61 63 6B 65 74 20 64
             65 74 65 63 74 65 64
      007B64 0A                    2806 	.db 0x0a
      007B65 0D                    2807 	.db 0x0d
      007B66 00                    2808 	.db 0x00
                                   2809 	.area CSEG    (CODE)
                                   2810 	.area CONST   (CODE)
      007B67                       2811 ___str_7:
      007B67 54 43 50 28 53 59 4E  2812 	.ascii "TCP(SYN) packet detected"
             29 20 70 61 63 6B 65
             74 20 64 65 74 65 63
             74 65 64
      007B7F 0A                    2813 	.db 0x0a
      007B80 0D                    2814 	.db 0x0d
      007B81 00                    2815 	.db 0x00
                                   2816 	.area CSEG    (CODE)
                                   2817 	.area CONST   (CODE)
      007B82                       2818 ___str_8:
      007B82 6C 69 73 74 65 6E     2819 	.ascii "listen"
      007B88 0A                    2820 	.db 0x0a
      007B89 0D                    2821 	.db 0x0d
      007B8A 00                    2822 	.db 0x00
                                   2823 	.area CSEG    (CODE)
                                   2824 	.area CONST   (CODE)
      007B8B                       2825 ___str_9:
      007B8B 73 79 6E 20 72 65 63  2826 	.ascii "syn received"
             65 69 76 65 64
      007B97 0A                    2827 	.db 0x0a
      007B98 0D                    2828 	.db 0x0d
      007B99 00                    2829 	.db 0x00
                                   2830 	.area CSEG    (CODE)
                                   2831 	.area CONST   (CODE)
      007B9A                       2832 ___str_10:
      007B9A 65 73 74 61 62 6C 69  2833 	.ascii "established"
             73 68 65 64
      007BA5 0A                    2834 	.db 0x0a
      007BA6 0D                    2835 	.db 0x0d
      007BA7 00                    2836 	.db 0x00
                                   2837 	.area CSEG    (CODE)
                                   2838 	.area CONST   (CODE)
      007BA8                       2839 ___str_11:
      007BA8 66 69 6E 20 77 61 69  2840 	.ascii "fin wait"
             74
      007BB0 0A                    2841 	.db 0x0a
      007BB1 0D                    2842 	.db 0x0d
      007BB2 00                    2843 	.db 0x00
                                   2844 	.area CSEG    (CODE)
                                   2845 	.area XINIT   (CODE)
      007BD4                       2846 __xinit__device_mac:
      007BD4 02                    2847 	.db #0x02	; 2
      007BD5 11                    2848 	.db #0x11	; 17
      007BD6 22                    2849 	.db #0x22	; 34
      007BD7 33                    2850 	.db #0x33	; 51	'3'
      007BD8 44                    2851 	.db #0x44	; 68	'D'
      007BD9 55                    2852 	.db #0x55	; 85	'U'
      007BDA                       2853 __xinit__target_mac:
      007BDA F8                    2854 	.db #0xf8	; 248
      007BDB 75                    2855 	.db #0x75	; 117	'u'
      007BDC A4                    2856 	.db #0xa4	; 164
      007BDD 8C                    2857 	.db #0x8c	; 140
      007BDE 41                    2858 	.db #0x41	; 65	'A'
      007BDF 31                    2859 	.db #0x31	; 49	'1'
      007BE0                       2860 __xinit__device_ip:
      007BE0 C0                    2861 	.db #0xc0	; 192
      007BE1 A8                    2862 	.db #0xa8	; 168
      007BE2 01                    2863 	.db #0x01	; 1
      007BE3 64                    2864 	.db #0x64	; 100	'd'
      007BE4                       2865 __xinit__target_ip:
      007BE4 C0                    2866 	.db #0xc0	; 192
      007BE5 A8                    2867 	.db #0xa8	; 168
      007BE6 01                    2868 	.db #0x01	; 1
      007BE7 01                    2869 	.db #0x01	; 1
      007BE8                       2870 __xinit__connectionState:
      007BE8 00                    2871 	.db #0x00	; 0
                                   2872 	.area CABS    (ABS,CODE)

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module tcp
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _calculateTcpChecksum
                                     12 	.globl _calculateIPChecksum
                                     13 	.globl _wait_for_transmission_complete
                                     14 	.globl _enc28j60_set_transmit_pointers
                                     15 	.globl _spi_buffer_write
                                     16 	.globl _spi_buffer_read
                                     17 	.globl _free
                                     18 	.globl _malloc
                                     19 	.globl _printf
                                     20 	.globl ___memcpy
                                     21 	.globl _memset
                                     22 	.globl _TF1
                                     23 	.globl _TR1
                                     24 	.globl _TF0
                                     25 	.globl _TR0
                                     26 	.globl _IE1
                                     27 	.globl _IT1
                                     28 	.globl _IE0
                                     29 	.globl _IT0
                                     30 	.globl _SM0
                                     31 	.globl _SM1
                                     32 	.globl _SM2
                                     33 	.globl _REN
                                     34 	.globl _TB8
                                     35 	.globl _RB8
                                     36 	.globl _TI
                                     37 	.globl _RI
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD0
                                     53 	.globl _TXD
                                     54 	.globl _RXD0
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _PS
                                     89 	.globl _PT1
                                     90 	.globl _PX1
                                     91 	.globl _PT0
                                     92 	.globl _PX0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _BREG_F7
                                    100 	.globl _BREG_F6
                                    101 	.globl _BREG_F5
                                    102 	.globl _BREG_F4
                                    103 	.globl _BREG_F3
                                    104 	.globl _BREG_F2
                                    105 	.globl _BREG_F1
                                    106 	.globl _BREG_F0
                                    107 	.globl _P5_7
                                    108 	.globl _P5_6
                                    109 	.globl _P5_5
                                    110 	.globl _P5_4
                                    111 	.globl _P5_3
                                    112 	.globl _P5_2
                                    113 	.globl _P5_1
                                    114 	.globl _P5_0
                                    115 	.globl _P4_7
                                    116 	.globl _P4_6
                                    117 	.globl _P4_5
                                    118 	.globl _P4_4
                                    119 	.globl _P4_3
                                    120 	.globl _P4_2
                                    121 	.globl _P4_1
                                    122 	.globl _P4_0
                                    123 	.globl _PX0L
                                    124 	.globl _PT0L
                                    125 	.globl _PX1L
                                    126 	.globl _PT1L
                                    127 	.globl _PSL
                                    128 	.globl _PT2L
                                    129 	.globl _PPCL
                                    130 	.globl _EC
                                    131 	.globl _CCF0
                                    132 	.globl _CCF1
                                    133 	.globl _CCF2
                                    134 	.globl _CCF3
                                    135 	.globl _CCF4
                                    136 	.globl _CR
                                    137 	.globl _CF
                                    138 	.globl _TF2
                                    139 	.globl _EXF2
                                    140 	.globl _RCLK
                                    141 	.globl _TCLK
                                    142 	.globl _EXEN2
                                    143 	.globl _TR2
                                    144 	.globl _C_T2
                                    145 	.globl _CP_RL2
                                    146 	.globl _T2CON_7
                                    147 	.globl _T2CON_6
                                    148 	.globl _T2CON_5
                                    149 	.globl _T2CON_4
                                    150 	.globl _T2CON_3
                                    151 	.globl _T2CON_2
                                    152 	.globl _T2CON_1
                                    153 	.globl _T2CON_0
                                    154 	.globl _PT2
                                    155 	.globl _ET2
                                    156 	.globl _TMOD
                                    157 	.globl _TL1
                                    158 	.globl _TL0
                                    159 	.globl _TH1
                                    160 	.globl _TH0
                                    161 	.globl _TCON
                                    162 	.globl _SP
                                    163 	.globl _SCON
                                    164 	.globl _SBUF0
                                    165 	.globl _SBUF
                                    166 	.globl _PSW
                                    167 	.globl _PCON
                                    168 	.globl _P3
                                    169 	.globl _P2
                                    170 	.globl _P1
                                    171 	.globl _P0
                                    172 	.globl _IP
                                    173 	.globl _IE
                                    174 	.globl _DP0L
                                    175 	.globl _DPL
                                    176 	.globl _DP0H
                                    177 	.globl _DPH
                                    178 	.globl _B
                                    179 	.globl _ACC
                                    180 	.globl _EECON
                                    181 	.globl _KBF
                                    182 	.globl _KBE
                                    183 	.globl _KBLS
                                    184 	.globl _BRL
                                    185 	.globl _BDRCON
                                    186 	.globl _T2MOD
                                    187 	.globl _SPDAT
                                    188 	.globl _SPSTA
                                    189 	.globl _SPCON
                                    190 	.globl _SADEN
                                    191 	.globl _SADDR
                                    192 	.globl _WDTPRG
                                    193 	.globl _WDTRST
                                    194 	.globl _P5
                                    195 	.globl _P4
                                    196 	.globl _IPH1
                                    197 	.globl _IPL1
                                    198 	.globl _IPH0
                                    199 	.globl _IPL0
                                    200 	.globl _IEN1
                                    201 	.globl _IEN0
                                    202 	.globl _CMOD
                                    203 	.globl _CL
                                    204 	.globl _CH
                                    205 	.globl _CCON
                                    206 	.globl _CCAPM4
                                    207 	.globl _CCAPM3
                                    208 	.globl _CCAPM2
                                    209 	.globl _CCAPM1
                                    210 	.globl _CCAPM0
                                    211 	.globl _CCAP4L
                                    212 	.globl _CCAP3L
                                    213 	.globl _CCAP2L
                                    214 	.globl _CCAP1L
                                    215 	.globl _CCAP0L
                                    216 	.globl _CCAP4H
                                    217 	.globl _CCAP3H
                                    218 	.globl _CCAP2H
                                    219 	.globl _CCAP1H
                                    220 	.globl _CCAP0H
                                    221 	.globl _CKCON1
                                    222 	.globl _CKCON0
                                    223 	.globl _CKRL
                                    224 	.globl _AUXR1
                                    225 	.globl _AUXR
                                    226 	.globl _TH2
                                    227 	.globl _TL2
                                    228 	.globl _RCAP2H
                                    229 	.globl _RCAP2L
                                    230 	.globl _T2CON
                                    231 	.globl _transmit_tcp_packet_PARM_2
                                    232 	.globl _print_hexdump_PARM_2
                                    233 	.globl _process_tcp_packet_PARM_3
                                    234 	.globl _process_tcp_packet_PARM_2
                                    235 	.globl _calculate_checksum_PARM_2
                                    236 	.globl _calculate_checksum
                                    237 	.globl _process_tcp_packet
                                    238 	.globl _print_hexdump
                                    239 	.globl _process_packet_from_buffer
                                    240 	.globl _transmit_tcp_packet
                                    241 ;--------------------------------------------------------
                                    242 ; special function registers
                                    243 ;--------------------------------------------------------
                                    244 	.area RSEG    (ABS,DATA)
      000000                        245 	.org 0x0000
                           0000C8   246 _T2CON	=	0x00c8
                           0000CA   247 _RCAP2L	=	0x00ca
                           0000CB   248 _RCAP2H	=	0x00cb
                           0000CC   249 _TL2	=	0x00cc
                           0000CD   250 _TH2	=	0x00cd
                           00008E   251 _AUXR	=	0x008e
                           0000A2   252 _AUXR1	=	0x00a2
                           000097   253 _CKRL	=	0x0097
                           00008F   254 _CKCON0	=	0x008f
                           0000AF   255 _CKCON1	=	0x00af
                           0000FA   256 _CCAP0H	=	0x00fa
                           0000FB   257 _CCAP1H	=	0x00fb
                           0000FC   258 _CCAP2H	=	0x00fc
                           0000FD   259 _CCAP3H	=	0x00fd
                           0000FE   260 _CCAP4H	=	0x00fe
                           0000EA   261 _CCAP0L	=	0x00ea
                           0000EB   262 _CCAP1L	=	0x00eb
                           0000EC   263 _CCAP2L	=	0x00ec
                           0000ED   264 _CCAP3L	=	0x00ed
                           0000EE   265 _CCAP4L	=	0x00ee
                           0000DA   266 _CCAPM0	=	0x00da
                           0000DB   267 _CCAPM1	=	0x00db
                           0000DC   268 _CCAPM2	=	0x00dc
                           0000DD   269 _CCAPM3	=	0x00dd
                           0000DE   270 _CCAPM4	=	0x00de
                           0000D8   271 _CCON	=	0x00d8
                           0000F9   272 _CH	=	0x00f9
                           0000E9   273 _CL	=	0x00e9
                           0000D9   274 _CMOD	=	0x00d9
                           0000A8   275 _IEN0	=	0x00a8
                           0000B1   276 _IEN1	=	0x00b1
                           0000B8   277 _IPL0	=	0x00b8
                           0000B7   278 _IPH0	=	0x00b7
                           0000B2   279 _IPL1	=	0x00b2
                           0000B3   280 _IPH1	=	0x00b3
                           0000C0   281 _P4	=	0x00c0
                           0000E8   282 _P5	=	0x00e8
                           0000A6   283 _WDTRST	=	0x00a6
                           0000A7   284 _WDTPRG	=	0x00a7
                           0000A9   285 _SADDR	=	0x00a9
                           0000B9   286 _SADEN	=	0x00b9
                           0000C3   287 _SPCON	=	0x00c3
                           0000C4   288 _SPSTA	=	0x00c4
                           0000C5   289 _SPDAT	=	0x00c5
                           0000C9   290 _T2MOD	=	0x00c9
                           00009B   291 _BDRCON	=	0x009b
                           00009A   292 _BRL	=	0x009a
                           00009C   293 _KBLS	=	0x009c
                           00009D   294 _KBE	=	0x009d
                           00009E   295 _KBF	=	0x009e
                           0000D2   296 _EECON	=	0x00d2
                           0000E0   297 _ACC	=	0x00e0
                           0000F0   298 _B	=	0x00f0
                           000083   299 _DPH	=	0x0083
                           000083   300 _DP0H	=	0x0083
                           000082   301 _DPL	=	0x0082
                           000082   302 _DP0L	=	0x0082
                           0000A8   303 _IE	=	0x00a8
                           0000B8   304 _IP	=	0x00b8
                           000080   305 _P0	=	0x0080
                           000090   306 _P1	=	0x0090
                           0000A0   307 _P2	=	0x00a0
                           0000B0   308 _P3	=	0x00b0
                           000087   309 _PCON	=	0x0087
                           0000D0   310 _PSW	=	0x00d0
                           000099   311 _SBUF	=	0x0099
                           000099   312 _SBUF0	=	0x0099
                           000098   313 _SCON	=	0x0098
                           000081   314 _SP	=	0x0081
                           000088   315 _TCON	=	0x0088
                           00008C   316 _TH0	=	0x008c
                           00008D   317 _TH1	=	0x008d
                           00008A   318 _TL0	=	0x008a
                           00008B   319 _TL1	=	0x008b
                           000089   320 _TMOD	=	0x0089
                                    321 ;--------------------------------------------------------
                                    322 ; special function bits
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                           0000AD   326 _ET2	=	0x00ad
                           0000BD   327 _PT2	=	0x00bd
                           0000C8   328 _T2CON_0	=	0x00c8
                           0000C9   329 _T2CON_1	=	0x00c9
                           0000CA   330 _T2CON_2	=	0x00ca
                           0000CB   331 _T2CON_3	=	0x00cb
                           0000CC   332 _T2CON_4	=	0x00cc
                           0000CD   333 _T2CON_5	=	0x00cd
                           0000CE   334 _T2CON_6	=	0x00ce
                           0000CF   335 _T2CON_7	=	0x00cf
                           0000C8   336 _CP_RL2	=	0x00c8
                           0000C9   337 _C_T2	=	0x00c9
                           0000CA   338 _TR2	=	0x00ca
                           0000CB   339 _EXEN2	=	0x00cb
                           0000CC   340 _TCLK	=	0x00cc
                           0000CD   341 _RCLK	=	0x00cd
                           0000CE   342 _EXF2	=	0x00ce
                           0000CF   343 _TF2	=	0x00cf
                           0000DF   344 _CF	=	0x00df
                           0000DE   345 _CR	=	0x00de
                           0000DC   346 _CCF4	=	0x00dc
                           0000DB   347 _CCF3	=	0x00db
                           0000DA   348 _CCF2	=	0x00da
                           0000D9   349 _CCF1	=	0x00d9
                           0000D8   350 _CCF0	=	0x00d8
                           0000AE   351 _EC	=	0x00ae
                           0000BE   352 _PPCL	=	0x00be
                           0000BD   353 _PT2L	=	0x00bd
                           0000BC   354 _PSL	=	0x00bc
                           0000BB   355 _PT1L	=	0x00bb
                           0000BA   356 _PX1L	=	0x00ba
                           0000B9   357 _PT0L	=	0x00b9
                           0000B8   358 _PX0L	=	0x00b8
                           0000C0   359 _P4_0	=	0x00c0
                           0000C1   360 _P4_1	=	0x00c1
                           0000C2   361 _P4_2	=	0x00c2
                           0000C3   362 _P4_3	=	0x00c3
                           0000C4   363 _P4_4	=	0x00c4
                           0000C5   364 _P4_5	=	0x00c5
                           0000C6   365 _P4_6	=	0x00c6
                           0000C7   366 _P4_7	=	0x00c7
                           0000E8   367 _P5_0	=	0x00e8
                           0000E9   368 _P5_1	=	0x00e9
                           0000EA   369 _P5_2	=	0x00ea
                           0000EB   370 _P5_3	=	0x00eb
                           0000EC   371 _P5_4	=	0x00ec
                           0000ED   372 _P5_5	=	0x00ed
                           0000EE   373 _P5_6	=	0x00ee
                           0000EF   374 _P5_7	=	0x00ef
                           0000F0   375 _BREG_F0	=	0x00f0
                           0000F1   376 _BREG_F1	=	0x00f1
                           0000F2   377 _BREG_F2	=	0x00f2
                           0000F3   378 _BREG_F3	=	0x00f3
                           0000F4   379 _BREG_F4	=	0x00f4
                           0000F5   380 _BREG_F5	=	0x00f5
                           0000F6   381 _BREG_F6	=	0x00f6
                           0000F7   382 _BREG_F7	=	0x00f7
                           0000A8   383 _EX0	=	0x00a8
                           0000A9   384 _ET0	=	0x00a9
                           0000AA   385 _EX1	=	0x00aa
                           0000AB   386 _ET1	=	0x00ab
                           0000AC   387 _ES	=	0x00ac
                           0000AF   388 _EA	=	0x00af
                           0000B8   389 _PX0	=	0x00b8
                           0000B9   390 _PT0	=	0x00b9
                           0000BA   391 _PX1	=	0x00ba
                           0000BB   392 _PT1	=	0x00bb
                           0000BC   393 _PS	=	0x00bc
                           000080   394 _P0_0	=	0x0080
                           000081   395 _P0_1	=	0x0081
                           000082   396 _P0_2	=	0x0082
                           000083   397 _P0_3	=	0x0083
                           000084   398 _P0_4	=	0x0084
                           000085   399 _P0_5	=	0x0085
                           000086   400 _P0_6	=	0x0086
                           000087   401 _P0_7	=	0x0087
                           000090   402 _P1_0	=	0x0090
                           000091   403 _P1_1	=	0x0091
                           000092   404 _P1_2	=	0x0092
                           000093   405 _P1_3	=	0x0093
                           000094   406 _P1_4	=	0x0094
                           000095   407 _P1_5	=	0x0095
                           000096   408 _P1_6	=	0x0096
                           000097   409 _P1_7	=	0x0097
                           0000A0   410 _P2_0	=	0x00a0
                           0000A1   411 _P2_1	=	0x00a1
                           0000A2   412 _P2_2	=	0x00a2
                           0000A3   413 _P2_3	=	0x00a3
                           0000A4   414 _P2_4	=	0x00a4
                           0000A5   415 _P2_5	=	0x00a5
                           0000A6   416 _P2_6	=	0x00a6
                           0000A7   417 _P2_7	=	0x00a7
                           0000B0   418 _P3_0	=	0x00b0
                           0000B1   419 _P3_1	=	0x00b1
                           0000B2   420 _P3_2	=	0x00b2
                           0000B3   421 _P3_3	=	0x00b3
                           0000B4   422 _P3_4	=	0x00b4
                           0000B5   423 _P3_5	=	0x00b5
                           0000B6   424 _P3_6	=	0x00b6
                           0000B7   425 _P3_7	=	0x00b7
                           0000B0   426 _RXD	=	0x00b0
                           0000B0   427 _RXD0	=	0x00b0
                           0000B1   428 _TXD	=	0x00b1
                           0000B1   429 _TXD0	=	0x00b1
                           0000B2   430 _INT0	=	0x00b2
                           0000B3   431 _INT1	=	0x00b3
                           0000B4   432 _T0	=	0x00b4
                           0000B5   433 _T1	=	0x00b5
                           0000B6   434 _WR	=	0x00b6
                           0000B7   435 _RD	=	0x00b7
                           0000D0   436 _P	=	0x00d0
                           0000D1   437 _F1	=	0x00d1
                           0000D2   438 _OV	=	0x00d2
                           0000D3   439 _RS0	=	0x00d3
                           0000D4   440 _RS1	=	0x00d4
                           0000D5   441 _F0	=	0x00d5
                           0000D6   442 _AC	=	0x00d6
                           0000D7   443 _CY	=	0x00d7
                           000098   444 _RI	=	0x0098
                           000099   445 _TI	=	0x0099
                           00009A   446 _RB8	=	0x009a
                           00009B   447 _TB8	=	0x009b
                           00009C   448 _REN	=	0x009c
                           00009D   449 _SM2	=	0x009d
                           00009E   450 _SM1	=	0x009e
                           00009F   451 _SM0	=	0x009f
                           000088   452 _IT0	=	0x0088
                           000089   453 _IE0	=	0x0089
                           00008A   454 _IT1	=	0x008a
                           00008B   455 _IE1	=	0x008b
                           00008C   456 _TR0	=	0x008c
                           00008D   457 _TF0	=	0x008d
                           00008E   458 _TR1	=	0x008e
                           00008F   459 _TF1	=	0x008f
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable register banks
                                    462 ;--------------------------------------------------------
                                    463 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        464 	.ds 8
                                    465 ;--------------------------------------------------------
                                    466 ; internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area DSEG    (DATA)
      000014                        469 _process_tcp_packet_sloc0_1_0:
      000014                        470 	.ds 3
      000017                        471 _process_packet_from_buffer_sloc0_1_0:
      000017                        472 	.ds 3
                                    473 ;--------------------------------------------------------
                                    474 ; overlayable items in internal ram
                                    475 ;--------------------------------------------------------
                                    476 	.area	OSEG    (OVR,DATA)
      000039                        477 _calculateIPChecksum_sloc0_1_0:
      000039                        478 	.ds 2
      00003B                        479 _calculateIPChecksum_sloc1_1_0:
      00003B                        480 	.ds 4
                                    481 	.area	OSEG    (OVR,DATA)
      000039                        482 _calculateTcpChecksum_sloc0_1_0:
      000039                        483 	.ds 2
      00003B                        484 _calculateTcpChecksum_sloc1_1_0:
      00003B                        485 	.ds 2
      00003D                        486 _calculateTcpChecksum_sloc2_1_0:
      00003D                        487 	.ds 4
      000041                        488 _calculateTcpChecksum_sloc3_1_0:
      000041                        489 	.ds 4
      000045                        490 _calculateTcpChecksum_sloc4_1_0:
      000045                        491 	.ds 4
                                    492 	.area	OSEG    (OVR,DATA)
      000039                        493 _calculate_checksum_sloc0_1_0:
      000039                        494 	.ds 2
      00003B                        495 _calculate_checksum_sloc1_1_0:
      00003B                        496 	.ds 4
      00003F                        497 _calculate_checksum_sloc2_1_0:
      00003F                        498 	.ds 4
                                    499 ;--------------------------------------------------------
                                    500 ; indirectly addressable internal ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area ISEG    (DATA)
                                    503 ;--------------------------------------------------------
                                    504 ; absolute internal ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area IABS    (ABS,DATA)
                                    507 	.area IABS    (ABS,DATA)
                                    508 ;--------------------------------------------------------
                                    509 ; bit data
                                    510 ;--------------------------------------------------------
                                    511 	.area BSEG    (BIT)
                                    512 ;--------------------------------------------------------
                                    513 ; paged external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area PSEG    (PAG,XDATA)
                                    516 ;--------------------------------------------------------
                                    517 ; uninitialized external ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area XSEG    (XDATA)
      0003A3                        520 _calculateIPChecksum_buffer_10000_116:
      0003A3                        521 	.ds 3
      0003A6                        522 _calculateIPChecksum_sum_10001_118:
      0003A6                        523 	.ds 4
      0003AA                        524 _calculateIPChecksum_i_20001_119:
      0003AA                        525 	.ds 2
      0003AC                        526 _calculateTcpChecksum_buffer_10000_123:
      0003AC                        527 	.ds 3
      0003AF                        528 _calculateTcpChecksum_sum_10001_125:
      0003AF                        529 	.ds 4
      0003B3                        530 _calculateTcpChecksum_i_20001_126:
      0003B3                        531 	.ds 1
      0003B4                        532 _calculateTcpChecksum_i_20001_128:
      0003B4                        533 	.ds 1
      0003B5                        534 _calculateTcpChecksum_i_20001_130:
      0003B5                        535 	.ds 2
      0003B7                        536 _calculate_checksum_PARM_2:
      0003B7                        537 	.ds 2
      0003B9                        538 _calculate_checksum_data_10000_134:
      0003B9                        539 	.ds 3
      0003BC                        540 _calculate_checksum_sum_10000_135:
      0003BC                        541 	.ds 4
      0003C0                        542 _calculate_checksum_i_20000_136:
      0003C0                        543 	.ds 2
      0003C2                        544 _process_tcp_packet_PARM_2:
      0003C2                        545 	.ds 2
      0003C4                        546 _process_tcp_packet_PARM_3:
      0003C4                        547 	.ds 3
      0003C7                        548 _process_tcp_packet_packet_10000_139:
      0003C7                        549 	.ds 3
      0003CA                        550 _process_tcp_packet_response_10000_140:
      0003CA                        551 	.ds 1501
      0009A7                        552 _print_hexdump_PARM_2:
      0009A7                        553 	.ds 2
      0009A9                        554 _print_hexdump_data_10000_146:
      0009A9                        555 	.ds 3
      0009AC                        556 _process_packet_from_buffer_start_address_10000_152:
      0009AC                        557 	.ds 2
      0009AE                        558 _process_packet_from_buffer_next_packet_start_10001_155:
      0009AE                        559 	.ds 2
      0009B0                        560 _process_packet_from_buffer_response_size_10001_155:
      0009B0                        561 	.ds 2
      0009B2                        562 _transmit_tcp_packet_PARM_2:
      0009B2                        563 	.ds 2
      0009B4                        564 _transmit_tcp_packet_packet_10000_164:
      0009B4                        565 	.ds 3
                                    566 ;--------------------------------------------------------
                                    567 ; absolute external ram data
                                    568 ;--------------------------------------------------------
                                    569 	.area XABS    (ABS,XDATA)
                                    570 ;--------------------------------------------------------
                                    571 ; initialized external ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area XISEG   (XDATA)
                                    574 	.area HOME    (CODE)
                                    575 	.area GSINIT0 (CODE)
                                    576 	.area GSINIT1 (CODE)
                                    577 	.area GSINIT2 (CODE)
                                    578 	.area GSINIT3 (CODE)
                                    579 	.area GSINIT4 (CODE)
                                    580 	.area GSINIT5 (CODE)
                                    581 	.area GSINIT  (CODE)
                                    582 	.area GSFINAL (CODE)
                                    583 	.area CSEG    (CODE)
                                    584 ;--------------------------------------------------------
                                    585 ; global & static initialisations
                                    586 ;--------------------------------------------------------
                                    587 	.area HOME    (CODE)
                                    588 	.area GSINIT  (CODE)
                                    589 	.area GSFINAL (CODE)
                                    590 	.area GSINIT  (CODE)
                                    591 ;--------------------------------------------------------
                                    592 ; Home
                                    593 ;--------------------------------------------------------
                                    594 	.area HOME    (CODE)
                                    595 	.area HOME    (CODE)
                                    596 ;--------------------------------------------------------
                                    597 ; code
                                    598 ;--------------------------------------------------------
                                    599 	.area CSEG    (CODE)
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'calculateIPChecksum'
                                    602 ;------------------------------------------------------------
                                    603 ;buffer                    Allocated with name '_calculateIPChecksum_buffer_10000_116'
                                    604 ;length                    Allocated with name '_calculateIPChecksum_length_10001_118'
                                    605 ;sum                       Allocated with name '_calculateIPChecksum_sum_10001_118'
                                    606 ;i                         Allocated with name '_calculateIPChecksum_i_20001_119'
                                    607 ;word                      Allocated with name '_calculateIPChecksum_word_30001_120'
                                    608 ;checksum                  Allocated with name '_calculateIPChecksum_checksum_10002_122'
                                    609 ;sloc0                     Allocated with name '_calculateIPChecksum_sloc0_1_0'
                                    610 ;sloc1                     Allocated with name '_calculateIPChecksum_sloc1_1_0'
                                    611 ;------------------------------------------------------------
                                    612 ;	tcp.c:11: void calculateIPChecksum(uint8_t *buffer) {
                                    613 ;	-----------------------------------------
                                    614 ;	 function calculateIPChecksum
                                    615 ;	-----------------------------------------
      003F9C                        616 _calculateIPChecksum:
                           000007   617 	ar7 = 0x07
                           000006   618 	ar6 = 0x06
                           000005   619 	ar5 = 0x05
                           000004   620 	ar4 = 0x04
                           000003   621 	ar3 = 0x03
                           000002   622 	ar2 = 0x02
                           000001   623 	ar1 = 0x01
                           000000   624 	ar0 = 0x00
      003F9C AF F0            [24]  625 	mov	r7,b
      003F9E AE 83            [24]  626 	mov	r6,dph
      003FA0 E5 82            [12]  627 	mov	a,dpl
      003FA2 90 03 A3         [24]  628 	mov	dptr,#_calculateIPChecksum_buffer_10000_116
      003FA5 F0               [24]  629 	movx	@dptr,a
      003FA6 EE               [12]  630 	mov	a,r6
      003FA7 A3               [24]  631 	inc	dptr
      003FA8 F0               [24]  632 	movx	@dptr,a
      003FA9 EF               [12]  633 	mov	a,r7
      003FAA A3               [24]  634 	inc	dptr
      003FAB F0               [24]  635 	movx	@dptr,a
                                    636 ;	tcp.c:13: buffer[IP_CHECKSUM_P] = 0;
      003FAC 90 03 A3         [24]  637 	mov	dptr,#_calculateIPChecksum_buffer_10000_116
      003FAF E0               [24]  638 	movx	a,@dptr
      003FB0 FD               [12]  639 	mov	r5,a
      003FB1 A3               [24]  640 	inc	dptr
      003FB2 E0               [24]  641 	movx	a,@dptr
      003FB3 FE               [12]  642 	mov	r6,a
      003FB4 A3               [24]  643 	inc	dptr
      003FB5 E0               [24]  644 	movx	a,@dptr
      003FB6 FF               [12]  645 	mov	r7,a
      003FB7 74 18            [12]  646 	mov	a,#0x18
      003FB9 2D               [12]  647 	add	a, r5
      003FBA FA               [12]  648 	mov	r2,a
      003FBB E4               [12]  649 	clr	a
      003FBC 3E               [12]  650 	addc	a, r6
      003FBD FB               [12]  651 	mov	r3,a
      003FBE 8F 04            [24]  652 	mov	ar4,r7
      003FC0 8A 82            [24]  653 	mov	dpl,r2
      003FC2 8B 83            [24]  654 	mov	dph,r3
      003FC4 8C F0            [24]  655 	mov	b,r4
      003FC6 E4               [12]  656 	clr	a
      003FC7 12 50 AB         [24]  657 	lcall	__gptrput
                                    658 ;	tcp.c:14: buffer[IP_CHECKSUM_P + 1] = 0;
      003FCA 74 19            [12]  659 	mov	a,#0x19
      003FCC 2D               [12]  660 	add	a, r5
      003FCD FA               [12]  661 	mov	r2,a
      003FCE E4               [12]  662 	clr	a
      003FCF 3E               [12]  663 	addc	a, r6
      003FD0 FB               [12]  664 	mov	r3,a
      003FD1 8F 04            [24]  665 	mov	ar4,r7
      003FD3 8A 82            [24]  666 	mov	dpl,r2
      003FD5 8B 83            [24]  667 	mov	dph,r3
      003FD7 8C F0            [24]  668 	mov	b,r4
      003FD9 E4               [12]  669 	clr	a
      003FDA 12 50 AB         [24]  670 	lcall	__gptrput
                                    671 ;	tcp.c:18: uint32_t sum = 0;
      003FDD 90 03 A6         [24]  672 	mov	dptr,#_calculateIPChecksum_sum_10001_118
      003FE0 F0               [24]  673 	movx	@dptr,a
      003FE1 A3               [24]  674 	inc	dptr
      003FE2 F0               [24]  675 	movx	@dptr,a
      003FE3 A3               [24]  676 	inc	dptr
      003FE4 F0               [24]  677 	movx	@dptr,a
      003FE5 A3               [24]  678 	inc	dptr
      003FE6 F0               [24]  679 	movx	@dptr,a
                                    680 ;	tcp.c:21: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
      003FE7 90 03 AA         [24]  681 	mov	dptr,#_calculateIPChecksum_i_20001_119
      003FEA 74 0E            [12]  682 	mov	a,#0x0e
      003FEC F0               [24]  683 	movx	@dptr,a
      003FED E4               [12]  684 	clr	a
      003FEE A3               [24]  685 	inc	dptr
      003FEF F0               [24]  686 	movx	@dptr,a
      003FF0                        687 00106$:
      003FF0 90 03 AA         [24]  688 	mov	dptr,#_calculateIPChecksum_i_20001_119
      003FF3 E0               [24]  689 	movx	a,@dptr
      003FF4 FB               [12]  690 	mov	r3,a
      003FF5 A3               [24]  691 	inc	dptr
      003FF6 E0               [24]  692 	movx	a,@dptr
      003FF7 FC               [12]  693 	mov	r4,a
      003FF8 8B 01            [24]  694 	mov	ar1,r3
      003FFA 8C 02            [24]  695 	mov	ar2,r4
      003FFC C3               [12]  696 	clr	c
      003FFD E9               [12]  697 	mov	a,r1
      003FFE 94 22            [12]  698 	subb	a,#0x22
      004000 EA               [12]  699 	mov	a,r2
      004001 94 00            [12]  700 	subb	a,#0x00
      004003 40 03            [24]  701 	jc	00134$
      004005 02 40 89         [24]  702 	ljmp	00102$
      004008                        703 00134$:
                                    704 ;	tcp.c:22: uint16_t word = (buffer[i] << 8) | buffer[i + 1];
      004008 EB               [12]  705 	mov	a,r3
      004009 2D               [12]  706 	add	a, r5
      00400A FB               [12]  707 	mov	r3,a
      00400B EC               [12]  708 	mov	a,r4
      00400C 3E               [12]  709 	addc	a, r6
      00400D F8               [12]  710 	mov	r0,a
      00400E 8F 04            [24]  711 	mov	ar4,r7
      004010 8B 82            [24]  712 	mov	dpl,r3
      004012 88 83            [24]  713 	mov	dph,r0
      004014 8C F0            [24]  714 	mov	b,r4
      004016 12 5E E3         [24]  715 	lcall	__gptrget
      004019 FB               [12]  716 	mov	r3,a
      00401A 7C 00            [12]  717 	mov	r4,#0x00
      00401C 8B 3A            [24]  718 	mov	(_calculateIPChecksum_sloc0_1_0 + 1),r3
      00401E 8C 39            [24]  719 	mov	_calculateIPChecksum_sloc0_1_0,r4
      004020 74 01            [12]  720 	mov	a,#0x01
      004022 29               [12]  721 	add	a, r1
      004023 F8               [12]  722 	mov	r0,a
      004024 E4               [12]  723 	clr	a
      004025 3A               [12]  724 	addc	a, r2
      004026 FC               [12]  725 	mov	r4,a
      004027 E8               [12]  726 	mov	a,r0
      004028 2D               [12]  727 	add	a, r5
      004029 F8               [12]  728 	mov	r0,a
      00402A EC               [12]  729 	mov	a,r4
      00402B 3E               [12]  730 	addc	a, r6
      00402C FC               [12]  731 	mov	r4,a
      00402D 8F 03            [24]  732 	mov	ar3,r7
      00402F 88 82            [24]  733 	mov	dpl,r0
      004031 8C 83            [24]  734 	mov	dph,r4
      004033 8B F0            [24]  735 	mov	b,r3
      004035 12 5E E3         [24]  736 	lcall	__gptrget
      004038 F8               [12]  737 	mov	r0,a
      004039 7C 00            [12]  738 	mov	r4,#0x00
      00403B E5 3A            [12]  739 	mov	a,(_calculateIPChecksum_sloc0_1_0 + 1)
      00403D 42 04            [12]  740 	orl	ar4,a
                                    741 ;	tcp.c:23: sum += word;
      00403F C0 05            [24]  742 	push	ar5
      004041 C0 06            [24]  743 	push	ar6
      004043 C0 07            [24]  744 	push	ar7
      004045 90 03 A6         [24]  745 	mov	dptr,#_calculateIPChecksum_sum_10001_118
      004048 E0               [24]  746 	movx	a,@dptr
      004049 F5 3B            [12]  747 	mov	_calculateIPChecksum_sloc1_1_0,a
      00404B A3               [24]  748 	inc	dptr
      00404C E0               [24]  749 	movx	a,@dptr
      00404D F5 3C            [12]  750 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
      00404F A3               [24]  751 	inc	dptr
      004050 E0               [24]  752 	movx	a,@dptr
      004051 F5 3D            [12]  753 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
      004053 A3               [24]  754 	inc	dptr
      004054 E0               [24]  755 	movx	a,@dptr
      004055 F5 3E            [12]  756 	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
      004057 7E 00            [12]  757 	mov	r6,#0x00
      004059 7F 00            [12]  758 	mov	r7,#0x00
      00405B 90 03 A6         [24]  759 	mov	dptr,#_calculateIPChecksum_sum_10001_118
      00405E E8               [12]  760 	mov	a,r0
      00405F 25 3B            [12]  761 	add	a, _calculateIPChecksum_sloc1_1_0
      004061 F0               [24]  762 	movx	@dptr,a
      004062 EC               [12]  763 	mov	a,r4
      004063 35 3C            [12]  764 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 1)
      004065 A3               [24]  765 	inc	dptr
      004066 F0               [24]  766 	movx	@dptr,a
      004067 EE               [12]  767 	mov	a,r6
      004068 35 3D            [12]  768 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 2)
      00406A A3               [24]  769 	inc	dptr
      00406B F0               [24]  770 	movx	@dptr,a
      00406C EF               [12]  771 	mov	a,r7
      00406D 35 3E            [12]  772 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 3)
      00406F A3               [24]  773 	inc	dptr
      004070 F0               [24]  774 	movx	@dptr,a
                                    775 ;	tcp.c:21: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
      004071 74 02            [12]  776 	mov	a,#0x02
      004073 29               [12]  777 	add	a, r1
      004074 F9               [12]  778 	mov	r1,a
      004075 E4               [12]  779 	clr	a
      004076 3A               [12]  780 	addc	a, r2
      004077 FA               [12]  781 	mov	r2,a
      004078 90 03 AA         [24]  782 	mov	dptr,#_calculateIPChecksum_i_20001_119
      00407B E9               [12]  783 	mov	a,r1
      00407C F0               [24]  784 	movx	@dptr,a
      00407D EA               [12]  785 	mov	a,r2
      00407E A3               [24]  786 	inc	dptr
      00407F F0               [24]  787 	movx	@dptr,a
      004080 D0 07            [24]  788 	pop	ar7
      004082 D0 06            [24]  789 	pop	ar6
      004084 D0 05            [24]  790 	pop	ar5
      004086 02 3F F0         [24]  791 	ljmp	00106$
                                    792 ;	tcp.c:27: while (sum >> 16) {
      004089                        793 00102$:
      004089 90 03 A6         [24]  794 	mov	dptr,#_calculateIPChecksum_sum_10001_118
      00408C E0               [24]  795 	movx	a,@dptr
      00408D FC               [12]  796 	mov	r4,a
      00408E A3               [24]  797 	inc	dptr
      00408F E0               [24]  798 	movx	a,@dptr
      004090 FD               [12]  799 	mov	r5,a
      004091 A3               [24]  800 	inc	dptr
      004092 E0               [24]  801 	movx	a,@dptr
      004093 FE               [12]  802 	mov	r6,a
      004094 A3               [24]  803 	inc	dptr
      004095 E0               [24]  804 	movx	a,@dptr
      004096 FF               [12]  805 	mov	r7,a
      004097 8E 3B            [24]  806 	mov	_calculateIPChecksum_sloc1_1_0,r6
      004099 8F 3C            [24]  807 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),r7
      00409B E4               [12]  808 	clr	a
      00409C F5 3D            [12]  809 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
      00409E F5 3E            [12]  810 	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
      0040A0 E5 3B            [12]  811 	mov	a,_calculateIPChecksum_sloc1_1_0
      0040A2 45 3C            [12]  812 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 1)
      0040A4 45 3D            [12]  813 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 2)
      0040A6 45 3E            [12]  814 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 3)
      0040A8 60 20            [24]  815 	jz	00104$
                                    816 ;	tcp.c:28: sum = (sum & 0xFFFF) + (sum >> 16);
      0040AA 8C 00            [24]  817 	mov	ar0,r4
      0040AC 8D 01            [24]  818 	mov	ar1,r5
      0040AE 7A 00            [12]  819 	mov	r2,#0x00
      0040B0 7B 00            [12]  820 	mov	r3,#0x00
      0040B2 90 03 A6         [24]  821 	mov	dptr,#_calculateIPChecksum_sum_10001_118
      0040B5 E5 3B            [12]  822 	mov	a,_calculateIPChecksum_sloc1_1_0
      0040B7 28               [12]  823 	add	a, r0
      0040B8 F0               [24]  824 	movx	@dptr,a
      0040B9 E5 3C            [12]  825 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 1)
      0040BB 39               [12]  826 	addc	a, r1
      0040BC A3               [24]  827 	inc	dptr
      0040BD F0               [24]  828 	movx	@dptr,a
      0040BE E5 3D            [12]  829 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 2)
      0040C0 3A               [12]  830 	addc	a, r2
      0040C1 A3               [24]  831 	inc	dptr
      0040C2 F0               [24]  832 	movx	@dptr,a
      0040C3 E5 3E            [12]  833 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 3)
      0040C5 3B               [12]  834 	addc	a, r3
      0040C6 A3               [24]  835 	inc	dptr
      0040C7 F0               [24]  836 	movx	@dptr,a
      0040C8 80 BF            [24]  837 	sjmp	00102$
      0040CA                        838 00104$:
                                    839 ;	tcp.c:32: uint16_t checksum = ~((uint16_t)sum);
      0040CA EC               [12]  840 	mov	a,r4
      0040CB F4               [12]  841 	cpl	a
      0040CC FC               [12]  842 	mov	r4,a
      0040CD ED               [12]  843 	mov	a,r5
      0040CE F4               [12]  844 	cpl	a
      0040CF FD               [12]  845 	mov	r5,a
                                    846 ;	tcp.c:33: buffer[IP_CHECKSUM_P] = (checksum >> 8) & 0xFF;
      0040D0 90 03 A3         [24]  847 	mov	dptr,#_calculateIPChecksum_buffer_10000_116
      0040D3 E0               [24]  848 	movx	a,@dptr
      0040D4 FB               [12]  849 	mov	r3,a
      0040D5 A3               [24]  850 	inc	dptr
      0040D6 E0               [24]  851 	movx	a,@dptr
      0040D7 FE               [12]  852 	mov	r6,a
      0040D8 A3               [24]  853 	inc	dptr
      0040D9 E0               [24]  854 	movx	a,@dptr
      0040DA FF               [12]  855 	mov	r7,a
      0040DB 74 18            [12]  856 	mov	a,#0x18
      0040DD 2B               [12]  857 	add	a, r3
      0040DE F5 3B            [12]  858 	mov	_calculateIPChecksum_sloc1_1_0,a
      0040E0 E4               [12]  859 	clr	a
      0040E1 3E               [12]  860 	addc	a, r6
      0040E2 F5 3C            [12]  861 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
      0040E4 8F 3D            [24]  862 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),r7
      0040E6 8D 02            [24]  863 	mov	ar2,r5
      0040E8 85 3B 82         [24]  864 	mov	dpl,_calculateIPChecksum_sloc1_1_0
      0040EB 85 3C 83         [24]  865 	mov	dph,(_calculateIPChecksum_sloc1_1_0 + 1)
      0040EE 85 3D F0         [24]  866 	mov	b,(_calculateIPChecksum_sloc1_1_0 + 2)
      0040F1 EA               [12]  867 	mov	a,r2
      0040F2 12 50 AB         [24]  868 	lcall	__gptrput
                                    869 ;	tcp.c:34: buffer[IP_CHECKSUM_P + 1] = checksum & 0xFF;
      0040F5 74 19            [12]  870 	mov	a,#0x19
      0040F7 2B               [12]  871 	add	a, r3
      0040F8 FB               [12]  872 	mov	r3,a
      0040F9 E4               [12]  873 	clr	a
      0040FA 3E               [12]  874 	addc	a, r6
      0040FB FE               [12]  875 	mov	r6,a
      0040FC 8B 82            [24]  876 	mov	dpl,r3
      0040FE 8E 83            [24]  877 	mov	dph,r6
      004100 8F F0            [24]  878 	mov	b,r7
      004102 EC               [12]  879 	mov	a,r4
                                    880 ;	tcp.c:35: }
      004103 02 50 AB         [24]  881 	ljmp	__gptrput
                                    882 ;------------------------------------------------------------
                                    883 ;Allocation info for local variables in function 'calculateTcpChecksum'
                                    884 ;------------------------------------------------------------
                                    885 ;buffer                    Allocated with name '_calculateTcpChecksum_buffer_10000_123'
                                    886 ;tcpLength                 Allocated with name '_calculateTcpChecksum_tcpLength_10001_125'
                                    887 ;sum                       Allocated with name '_calculateTcpChecksum_sum_10001_125'
                                    888 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_126'
                                    889 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_128'
                                    890 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_130'
                                    891 ;word                      Allocated with name '_calculateTcpChecksum_word_30001_131'
                                    892 ;checksum                  Allocated with name '_calculateTcpChecksum_checksum_10002_133'
                                    893 ;sloc0                     Allocated with name '_calculateTcpChecksum_sloc0_1_0'
                                    894 ;sloc1                     Allocated with name '_calculateTcpChecksum_sloc1_1_0'
                                    895 ;sloc2                     Allocated with name '_calculateTcpChecksum_sloc2_1_0'
                                    896 ;sloc3                     Allocated with name '_calculateTcpChecksum_sloc3_1_0'
                                    897 ;sloc4                     Allocated with name '_calculateTcpChecksum_sloc4_1_0'
                                    898 ;------------------------------------------------------------
                                    899 ;	tcp.c:37: void calculateTcpChecksum(uint8_t *buffer) {
                                    900 ;	-----------------------------------------
                                    901 ;	 function calculateTcpChecksum
                                    902 ;	-----------------------------------------
      004106                        903 _calculateTcpChecksum:
      004106 AF F0            [24]  904 	mov	r7,b
      004108 AE 83            [24]  905 	mov	r6,dph
      00410A E5 82            [12]  906 	mov	a,dpl
      00410C 90 03 AC         [24]  907 	mov	dptr,#_calculateTcpChecksum_buffer_10000_123
      00410F F0               [24]  908 	movx	@dptr,a
      004110 EE               [12]  909 	mov	a,r6
      004111 A3               [24]  910 	inc	dptr
      004112 F0               [24]  911 	movx	@dptr,a
      004113 EF               [12]  912 	mov	a,r7
      004114 A3               [24]  913 	inc	dptr
      004115 F0               [24]  914 	movx	@dptr,a
                                    915 ;	tcp.c:39: buffer[TCP_CHECKSUM_H_P] = 0;
      004116 90 03 AC         [24]  916 	mov	dptr,#_calculateTcpChecksum_buffer_10000_123
      004119 E0               [24]  917 	movx	a,@dptr
      00411A FD               [12]  918 	mov	r5,a
      00411B A3               [24]  919 	inc	dptr
      00411C E0               [24]  920 	movx	a,@dptr
      00411D FE               [12]  921 	mov	r6,a
      00411E A3               [24]  922 	inc	dptr
      00411F E0               [24]  923 	movx	a,@dptr
      004120 FF               [12]  924 	mov	r7,a
      004121 74 32            [12]  925 	mov	a,#0x32
      004123 2D               [12]  926 	add	a, r5
      004124 FA               [12]  927 	mov	r2,a
      004125 E4               [12]  928 	clr	a
      004126 3E               [12]  929 	addc	a, r6
      004127 FB               [12]  930 	mov	r3,a
      004128 8F 04            [24]  931 	mov	ar4,r7
      00412A 8A 82            [24]  932 	mov	dpl,r2
      00412C 8B 83            [24]  933 	mov	dph,r3
      00412E 8C F0            [24]  934 	mov	b,r4
      004130 E4               [12]  935 	clr	a
      004131 12 50 AB         [24]  936 	lcall	__gptrput
                                    937 ;	tcp.c:40: buffer[TCP_CHECKSUM_L_P] = 0;
      004134 74 33            [12]  938 	mov	a,#0x33
      004136 2D               [12]  939 	add	a, r5
      004137 FA               [12]  940 	mov	r2,a
      004138 E4               [12]  941 	clr	a
      004139 3E               [12]  942 	addc	a, r6
      00413A FB               [12]  943 	mov	r3,a
      00413B 8F 04            [24]  944 	mov	ar4,r7
      00413D 8A 82            [24]  945 	mov	dpl,r2
      00413F 8B 83            [24]  946 	mov	dph,r3
      004141 8C F0            [24]  947 	mov	b,r4
      004143 E4               [12]  948 	clr	a
      004144 12 50 AB         [24]  949 	lcall	__gptrput
                                    950 ;	tcp.c:43: uint16_t tcpLength = (((buffer[IP_TOTLEN_H_P] << 8) | buffer[IP_TOTLEN_L_P]) - IP_HEADER_LEN);
      004147 74 10            [12]  951 	mov	a,#0x10
      004149 2D               [12]  952 	add	a, r5
      00414A FA               [12]  953 	mov	r2,a
      00414B E4               [12]  954 	clr	a
      00414C 3E               [12]  955 	addc	a, r6
      00414D FB               [12]  956 	mov	r3,a
      00414E 8F 04            [24]  957 	mov	ar4,r7
      004150 8A 82            [24]  958 	mov	dpl,r2
      004152 8B 83            [24]  959 	mov	dph,r3
      004154 8C F0            [24]  960 	mov	b,r4
      004156 12 5E E3         [24]  961 	lcall	__gptrget
      004159 FC               [12]  962 	mov	r4,a
      00415A 7A 00            [12]  963 	mov	r2,#0x00
      00415C 74 11            [12]  964 	mov	a,#0x11
      00415E 2D               [12]  965 	add	a, r5
      00415F F8               [12]  966 	mov	r0,a
      004160 E4               [12]  967 	clr	a
      004161 3E               [12]  968 	addc	a, r6
      004162 F9               [12]  969 	mov	r1,a
      004163 8F 03            [24]  970 	mov	ar3,r7
      004165 88 82            [24]  971 	mov	dpl,r0
      004167 89 83            [24]  972 	mov	dph,r1
      004169 8B F0            [24]  973 	mov	b,r3
      00416B 12 5E E3         [24]  974 	lcall	__gptrget
      00416E 7B 00            [12]  975 	mov	r3,#0x00
      004170 42 02            [12]  976 	orl	ar2,a
      004172 EB               [12]  977 	mov	a,r3
      004173 42 04            [12]  978 	orl	ar4,a
      004175 EA               [12]  979 	mov	a,r2
      004176 24 EC            [12]  980 	add	a,#0xec
      004178 FA               [12]  981 	mov	r2,a
      004179 EC               [12]  982 	mov	a,r4
      00417A 34 FF            [12]  983 	addc	a,#0xff
      00417C FC               [12]  984 	mov	r4,a
                                    985 ;	tcp.c:44: uint32_t sum = 0;
      00417D 90 03 AF         [24]  986 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      004180 E4               [12]  987 	clr	a
      004181 F0               [24]  988 	movx	@dptr,a
      004182 A3               [24]  989 	inc	dptr
      004183 F0               [24]  990 	movx	@dptr,a
      004184 A3               [24]  991 	inc	dptr
      004185 F0               [24]  992 	movx	@dptr,a
      004186 A3               [24]  993 	inc	dptr
      004187 F0               [24]  994 	movx	@dptr,a
                                    995 ;	tcp.c:47: for (uint8_t i = 0; i < 4; i++) {
      004188 90 03 B3         [24]  996 	mov	dptr,#_calculateTcpChecksum_i_20001_126
      00418B F0               [24]  997 	movx	@dptr,a
      00418C                        998 00108$:
      00418C 90 03 B3         [24]  999 	mov	dptr,#_calculateTcpChecksum_i_20001_126
      00418F E0               [24] 1000 	movx	a,@dptr
      004190 FB               [12] 1001 	mov	r3,a
      004191 BB 04 00         [24] 1002 	cjne	r3,#0x04,00166$
      004194                       1003 00166$:
      004194 40 03            [24] 1004 	jc	00167$
      004196 02 42 27         [24] 1005 	ljmp	00101$
      004199                       1006 00167$:
                                   1007 ;	tcp.c:48: sum += (buffer[IP_SRC_P + i] << 8) | buffer[IP_SRC_P + i + 1];
      004199 C0 02            [24] 1008 	push	ar2
      00419B C0 04            [24] 1009 	push	ar4
      00419D 8B 39            [24] 1010 	mov	_calculateTcpChecksum_sloc0_1_0,r3
      00419F 75 3A 00         [24] 1011 	mov	(_calculateTcpChecksum_sloc0_1_0 + 1),#0x00
      0041A2 74 1A            [12] 1012 	mov	a,#0x1a
      0041A4 25 39            [12] 1013 	add	a, _calculateTcpChecksum_sloc0_1_0
      0041A6 FA               [12] 1014 	mov	r2,a
      0041A7 E4               [12] 1015 	clr	a
      0041A8 35 3A            [12] 1016 	addc	a, (_calculateTcpChecksum_sloc0_1_0 + 1)
      0041AA FC               [12] 1017 	mov	r4,a
      0041AB EA               [12] 1018 	mov	a,r2
      0041AC 2D               [12] 1019 	add	a, r5
      0041AD FA               [12] 1020 	mov	r2,a
      0041AE EC               [12] 1021 	mov	a,r4
      0041AF 3E               [12] 1022 	addc	a, r6
      0041B0 F9               [12] 1023 	mov	r1,a
      0041B1 8F 04            [24] 1024 	mov	ar4,r7
      0041B3 8A 82            [24] 1025 	mov	dpl,r2
      0041B5 89 83            [24] 1026 	mov	dph,r1
      0041B7 8C F0            [24] 1027 	mov	b,r4
      0041B9 12 5E E3         [24] 1028 	lcall	__gptrget
      0041BC FA               [12] 1029 	mov	r2,a
      0041BD 7C 00            [12] 1030 	mov	r4,#0x00
      0041BF 8A 3C            [24] 1031 	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),r2
      0041C1 8C 3B            [24] 1032 	mov	_calculateTcpChecksum_sloc1_1_0,r4
      0041C3 74 1B            [12] 1033 	mov	a,#0x1b
      0041C5 25 39            [12] 1034 	add	a, _calculateTcpChecksum_sloc0_1_0
      0041C7 F8               [12] 1035 	mov	r0,a
      0041C8 E4               [12] 1036 	clr	a
      0041C9 35 3A            [12] 1037 	addc	a, (_calculateTcpChecksum_sloc0_1_0 + 1)
      0041CB F9               [12] 1038 	mov	r1,a
      0041CC E8               [12] 1039 	mov	a,r0
      0041CD 2D               [12] 1040 	add	a, r5
      0041CE F8               [12] 1041 	mov	r0,a
      0041CF E9               [12] 1042 	mov	a,r1
      0041D0 3E               [12] 1043 	addc	a, r6
      0041D1 F9               [12] 1044 	mov	r1,a
      0041D2 8F 04            [24] 1045 	mov	ar4,r7
      0041D4 88 82            [24] 1046 	mov	dpl,r0
      0041D6 89 83            [24] 1047 	mov	dph,r1
      0041D8 8C F0            [24] 1048 	mov	b,r4
      0041DA 12 5E E3         [24] 1049 	lcall	__gptrget
      0041DD 7C 00            [12] 1050 	mov	r4,#0x00
      0041DF 42 3B            [12] 1051 	orl	_calculateTcpChecksum_sloc1_1_0,a
      0041E1 EC               [12] 1052 	mov	a,r4
      0041E2 42 3C            [12] 1053 	orl	(_calculateTcpChecksum_sloc1_1_0 + 1),a
      0041E4 90 03 AF         [24] 1054 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      0041E7 E0               [24] 1055 	movx	a,@dptr
      0041E8 F5 3D            [12] 1056 	mov	_calculateTcpChecksum_sloc2_1_0,a
      0041EA A3               [24] 1057 	inc	dptr
      0041EB E0               [24] 1058 	movx	a,@dptr
      0041EC F5 3E            [12] 1059 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),a
      0041EE A3               [24] 1060 	inc	dptr
      0041EF E0               [24] 1061 	movx	a,@dptr
      0041F0 F5 3F            [12] 1062 	mov	(_calculateTcpChecksum_sloc2_1_0 + 2),a
      0041F2 A3               [24] 1063 	inc	dptr
      0041F3 E0               [24] 1064 	movx	a,@dptr
      0041F4 F5 40            [12] 1065 	mov	(_calculateTcpChecksum_sloc2_1_0 + 3),a
      0041F6 A8 3B            [24] 1066 	mov	r0,_calculateTcpChecksum_sloc1_1_0
      0041F8 E5 3C            [12] 1067 	mov	a,(_calculateTcpChecksum_sloc1_1_0 + 1)
      0041FA F9               [12] 1068 	mov	r1,a
      0041FB 33               [12] 1069 	rlc	a
      0041FC 95 E0            [12] 1070 	subb	a,acc
      0041FE FA               [12] 1071 	mov	r2,a
      0041FF FC               [12] 1072 	mov	r4,a
      004200 90 03 AF         [24] 1073 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      004203 E8               [12] 1074 	mov	a,r0
      004204 25 3D            [12] 1075 	add	a, _calculateTcpChecksum_sloc2_1_0
      004206 F0               [24] 1076 	movx	@dptr,a
      004207 E9               [12] 1077 	mov	a,r1
      004208 35 3E            [12] 1078 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      00420A A3               [24] 1079 	inc	dptr
      00420B F0               [24] 1080 	movx	@dptr,a
      00420C EA               [12] 1081 	mov	a,r2
      00420D 35 3F            [12] 1082 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 2)
      00420F A3               [24] 1083 	inc	dptr
      004210 F0               [24] 1084 	movx	@dptr,a
      004211 EC               [12] 1085 	mov	a,r4
      004212 35 40            [12] 1086 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 3)
      004214 A3               [24] 1087 	inc	dptr
      004215 F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	tcp.c:49: i++;
      004216 90 03 B3         [24] 1090 	mov	dptr,#_calculateTcpChecksum_i_20001_126
      004219 EB               [12] 1091 	mov	a,r3
      00421A 04               [12] 1092 	inc	a
      00421B F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	tcp.c:47: for (uint8_t i = 0; i < 4; i++) {
      00421C E0               [24] 1095 	movx	a,@dptr
      00421D 24 01            [12] 1096 	add	a, #0x01
      00421F F0               [24] 1097 	movx	@dptr,a
      004220 D0 04            [24] 1098 	pop	ar4
      004222 D0 02            [24] 1099 	pop	ar2
      004224 02 41 8C         [24] 1100 	ljmp	00108$
      004227                       1101 00101$:
                                   1102 ;	tcp.c:53: for (uint8_t i = 0; i < 4; i++) {
      004227 90 03 B4         [24] 1103 	mov	dptr,#_calculateTcpChecksum_i_20001_128
      00422A E4               [12] 1104 	clr	a
      00422B F0               [24] 1105 	movx	@dptr,a
      00422C 90 03 AC         [24] 1106 	mov	dptr,#_calculateTcpChecksum_buffer_10000_123
      00422F E0               [24] 1107 	movx	a,@dptr
      004230 FD               [12] 1108 	mov	r5,a
      004231 A3               [24] 1109 	inc	dptr
      004232 E0               [24] 1110 	movx	a,@dptr
      004233 FE               [12] 1111 	mov	r6,a
      004234 A3               [24] 1112 	inc	dptr
      004235 E0               [24] 1113 	movx	a,@dptr
      004236 FF               [12] 1114 	mov	r7,a
      004237                       1115 00111$:
      004237 90 03 B4         [24] 1116 	mov	dptr,#_calculateTcpChecksum_i_20001_128
      00423A E0               [24] 1117 	movx	a,@dptr
      00423B FB               [12] 1118 	mov	r3,a
      00423C BB 04 00         [24] 1119 	cjne	r3,#0x04,00168$
      00423F                       1120 00168$:
      00423F 40 03            [24] 1121 	jc	00169$
      004241 02 42 D6         [24] 1122 	ljmp	00102$
      004244                       1123 00169$:
                                   1124 ;	tcp.c:54: sum += (buffer[IP_DST_P + i] << 8) | buffer[IP_DST_P + i + 1];
      004244 C0 02            [24] 1125 	push	ar2
      004246 C0 04            [24] 1126 	push	ar4
      004248 8B 3D            [24] 1127 	mov	_calculateTcpChecksum_sloc2_1_0,r3
      00424A 75 3E 00         [24] 1128 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),#0x00
      00424D 74 1E            [12] 1129 	mov	a,#0x1e
      00424F 25 3D            [12] 1130 	add	a, _calculateTcpChecksum_sloc2_1_0
      004251 FA               [12] 1131 	mov	r2,a
      004252 E4               [12] 1132 	clr	a
      004253 35 3E            [12] 1133 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      004255 FC               [12] 1134 	mov	r4,a
      004256 EA               [12] 1135 	mov	a,r2
      004257 2D               [12] 1136 	add	a, r5
      004258 FA               [12] 1137 	mov	r2,a
      004259 EC               [12] 1138 	mov	a,r4
      00425A 3E               [12] 1139 	addc	a, r6
      00425B F9               [12] 1140 	mov	r1,a
      00425C 8F 04            [24] 1141 	mov	ar4,r7
      00425E 8A 82            [24] 1142 	mov	dpl,r2
      004260 89 83            [24] 1143 	mov	dph,r1
      004262 8C F0            [24] 1144 	mov	b,r4
      004264 12 5E E3         [24] 1145 	lcall	__gptrget
      004267 FA               [12] 1146 	mov	r2,a
      004268 7C 00            [12] 1147 	mov	r4,#0x00
      00426A 8A 3C            [24] 1148 	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),r2
      00426C 8C 3B            [24] 1149 	mov	_calculateTcpChecksum_sloc1_1_0,r4
      00426E 74 1F            [12] 1150 	mov	a,#0x1f
      004270 25 3D            [12] 1151 	add	a, _calculateTcpChecksum_sloc2_1_0
      004272 F8               [12] 1152 	mov	r0,a
      004273 E4               [12] 1153 	clr	a
      004274 35 3E            [12] 1154 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      004276 F9               [12] 1155 	mov	r1,a
      004277 E8               [12] 1156 	mov	a,r0
      004278 2D               [12] 1157 	add	a, r5
      004279 F8               [12] 1158 	mov	r0,a
      00427A E9               [12] 1159 	mov	a,r1
      00427B 3E               [12] 1160 	addc	a, r6
      00427C F9               [12] 1161 	mov	r1,a
      00427D 8F 04            [24] 1162 	mov	ar4,r7
      00427F 88 82            [24] 1163 	mov	dpl,r0
      004281 89 83            [24] 1164 	mov	dph,r1
      004283 8C F0            [24] 1165 	mov	b,r4
      004285 12 5E E3         [24] 1166 	lcall	__gptrget
      004288 7C 00            [12] 1167 	mov	r4,#0x00
      00428A 45 3B            [12] 1168 	orl	a,_calculateTcpChecksum_sloc1_1_0
      00428C F5 3D            [12] 1169 	mov	_calculateTcpChecksum_sloc2_1_0,a
      00428E EC               [12] 1170 	mov	a,r4
      00428F 45 3C            [12] 1171 	orl	a,(_calculateTcpChecksum_sloc1_1_0 + 1)
      004291 F5 3E            [12] 1172 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),a
      004293 90 03 AF         [24] 1173 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      004296 E0               [24] 1174 	movx	a,@dptr
      004297 F5 41            [12] 1175 	mov	_calculateTcpChecksum_sloc3_1_0,a
      004299 A3               [24] 1176 	inc	dptr
      00429A E0               [24] 1177 	movx	a,@dptr
      00429B F5 42            [12] 1178 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      00429D A3               [24] 1179 	inc	dptr
      00429E E0               [24] 1180 	movx	a,@dptr
      00429F F5 43            [12] 1181 	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
      0042A1 A3               [24] 1182 	inc	dptr
      0042A2 E0               [24] 1183 	movx	a,@dptr
      0042A3 F5 44            [12] 1184 	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
      0042A5 A8 3D            [24] 1185 	mov	r0,_calculateTcpChecksum_sloc2_1_0
      0042A7 E5 3E            [12] 1186 	mov	a,(_calculateTcpChecksum_sloc2_1_0 + 1)
      0042A9 F9               [12] 1187 	mov	r1,a
      0042AA 33               [12] 1188 	rlc	a
      0042AB 95 E0            [12] 1189 	subb	a,acc
      0042AD FA               [12] 1190 	mov	r2,a
      0042AE FC               [12] 1191 	mov	r4,a
      0042AF 90 03 AF         [24] 1192 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      0042B2 E8               [12] 1193 	mov	a,r0
      0042B3 25 41            [12] 1194 	add	a, _calculateTcpChecksum_sloc3_1_0
      0042B5 F0               [24] 1195 	movx	@dptr,a
      0042B6 E9               [12] 1196 	mov	a,r1
      0042B7 35 42            [12] 1197 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
      0042B9 A3               [24] 1198 	inc	dptr
      0042BA F0               [24] 1199 	movx	@dptr,a
      0042BB EA               [12] 1200 	mov	a,r2
      0042BC 35 43            [12] 1201 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
      0042BE A3               [24] 1202 	inc	dptr
      0042BF F0               [24] 1203 	movx	@dptr,a
      0042C0 EC               [12] 1204 	mov	a,r4
      0042C1 35 44            [12] 1205 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
      0042C3 A3               [24] 1206 	inc	dptr
      0042C4 F0               [24] 1207 	movx	@dptr,a
                                   1208 ;	tcp.c:55: i++;
      0042C5 90 03 B4         [24] 1209 	mov	dptr,#_calculateTcpChecksum_i_20001_128
      0042C8 EB               [12] 1210 	mov	a,r3
      0042C9 04               [12] 1211 	inc	a
      0042CA F0               [24] 1212 	movx	@dptr,a
                                   1213 ;	tcp.c:53: for (uint8_t i = 0; i < 4; i++) {
      0042CB E0               [24] 1214 	movx	a,@dptr
      0042CC 24 01            [12] 1215 	add	a, #0x01
      0042CE F0               [24] 1216 	movx	@dptr,a
      0042CF D0 04            [24] 1217 	pop	ar4
      0042D1 D0 02            [24] 1218 	pop	ar2
      0042D3 02 42 37         [24] 1219 	ljmp	00111$
      0042D6                       1220 00102$:
                                   1221 ;	tcp.c:59: sum += (uint16_t)IP_PROTO_TCP;
      0042D6 90 03 AF         [24] 1222 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      0042D9 E0               [24] 1223 	movx	a,@dptr
      0042DA FB               [12] 1224 	mov	r3,a
      0042DB A3               [24] 1225 	inc	dptr
      0042DC E0               [24] 1226 	movx	a,@dptr
      0042DD FD               [12] 1227 	mov	r5,a
      0042DE A3               [24] 1228 	inc	dptr
      0042DF E0               [24] 1229 	movx	a,@dptr
      0042E0 FE               [12] 1230 	mov	r6,a
      0042E1 A3               [24] 1231 	inc	dptr
      0042E2 E0               [24] 1232 	movx	a,@dptr
      0042E3 FF               [12] 1233 	mov	r7,a
      0042E4 90 03 AF         [24] 1234 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      0042E7 74 06            [12] 1235 	mov	a,#0x06
      0042E9 2B               [12] 1236 	add	a, r3
      0042EA F0               [24] 1237 	movx	@dptr,a
      0042EB E4               [12] 1238 	clr	a
      0042EC 3D               [12] 1239 	addc	a, r5
      0042ED A3               [24] 1240 	inc	dptr
      0042EE F0               [24] 1241 	movx	@dptr,a
      0042EF E4               [12] 1242 	clr	a
      0042F0 3E               [12] 1243 	addc	a, r6
      0042F1 A3               [24] 1244 	inc	dptr
      0042F2 F0               [24] 1245 	movx	@dptr,a
      0042F3 E4               [12] 1246 	clr	a
      0042F4 3F               [12] 1247 	addc	a, r7
      0042F5 A3               [24] 1248 	inc	dptr
      0042F6 F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	tcp.c:60: sum += tcpLength;
      0042F7 90 03 AF         [24] 1251 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      0042FA E0               [24] 1252 	movx	a,@dptr
      0042FB F5 41            [12] 1253 	mov	_calculateTcpChecksum_sloc3_1_0,a
      0042FD A3               [24] 1254 	inc	dptr
      0042FE E0               [24] 1255 	movx	a,@dptr
      0042FF F5 42            [12] 1256 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      004301 A3               [24] 1257 	inc	dptr
      004302 E0               [24] 1258 	movx	a,@dptr
      004303 F5 43            [12] 1259 	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
      004305 A3               [24] 1260 	inc	dptr
      004306 E0               [24] 1261 	movx	a,@dptr
      004307 F5 44            [12] 1262 	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
      004309 8A 00            [24] 1263 	mov	ar0,r2
      00430B 8C 01            [24] 1264 	mov	ar1,r4
      00430D 7E 00            [12] 1265 	mov	r6,#0x00
      00430F 7F 00            [12] 1266 	mov	r7,#0x00
      004311 90 03 AF         [24] 1267 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      004314 E8               [12] 1268 	mov	a,r0
      004315 25 41            [12] 1269 	add	a, _calculateTcpChecksum_sloc3_1_0
      004317 F0               [24] 1270 	movx	@dptr,a
      004318 E9               [12] 1271 	mov	a,r1
      004319 35 42            [12] 1272 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
      00431B A3               [24] 1273 	inc	dptr
      00431C F0               [24] 1274 	movx	@dptr,a
      00431D EE               [12] 1275 	mov	a,r6
      00431E 35 43            [12] 1276 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
      004320 A3               [24] 1277 	inc	dptr
      004321 F0               [24] 1278 	movx	@dptr,a
      004322 EF               [12] 1279 	mov	a,r7
      004323 35 44            [12] 1280 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
      004325 A3               [24] 1281 	inc	dptr
      004326 F0               [24] 1282 	movx	@dptr,a
                                   1283 ;	tcp.c:63: for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
      004327 90 03 B5         [24] 1284 	mov	dptr,#_calculateTcpChecksum_i_20001_130
      00432A 74 22            [12] 1285 	mov	a,#0x22
      00432C F0               [24] 1286 	movx	@dptr,a
      00432D E4               [12] 1287 	clr	a
      00432E A3               [24] 1288 	inc	dptr
      00432F F0               [24] 1289 	movx	@dptr,a
      004330 90 03 AC         [24] 1290 	mov	dptr,#_calculateTcpChecksum_buffer_10000_123
      004333 E0               [24] 1291 	movx	a,@dptr
      004334 FD               [12] 1292 	mov	r5,a
      004335 A3               [24] 1293 	inc	dptr
      004336 E0               [24] 1294 	movx	a,@dptr
      004337 FE               [12] 1295 	mov	r6,a
      004338 A3               [24] 1296 	inc	dptr
      004339 E0               [24] 1297 	movx	a,@dptr
      00433A FF               [12] 1298 	mov	r7,a
      00433B                       1299 00114$:
      00433B 8A 01            [24] 1300 	mov	ar1,r2
      00433D 8C 03            [24] 1301 	mov	ar3,r4
      00433F 74 22            [12] 1302 	mov	a,#0x22
      004341 29               [12] 1303 	add	a, r1
      004342 F9               [12] 1304 	mov	r1,a
      004343 E4               [12] 1305 	clr	a
      004344 3B               [12] 1306 	addc	a, r3
      004345 FB               [12] 1307 	mov	r3,a
      004346 90 03 B5         [24] 1308 	mov	dptr,#_calculateTcpChecksum_i_20001_130
      004349 E0               [24] 1309 	movx	a,@dptr
      00434A F5 41            [12] 1310 	mov	_calculateTcpChecksum_sloc3_1_0,a
      00434C A3               [24] 1311 	inc	dptr
      00434D E0               [24] 1312 	movx	a,@dptr
      00434E F5 42            [12] 1313 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      004350 85 41 3D         [24] 1314 	mov	_calculateTcpChecksum_sloc2_1_0,_calculateTcpChecksum_sloc3_1_0
      004353 85 42 3E         [24] 1315 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),(_calculateTcpChecksum_sloc3_1_0 + 1)
      004356 C3               [12] 1316 	clr	c
      004357 E5 3D            [12] 1317 	mov	a,_calculateTcpChecksum_sloc2_1_0
      004359 99               [12] 1318 	subb	a,r1
      00435A E5 3E            [12] 1319 	mov	a,(_calculateTcpChecksum_sloc2_1_0 + 1)
      00435C 9B               [12] 1320 	subb	a,r3
      00435D 40 03            [24] 1321 	jc	00170$
      00435F 02 43 E9         [24] 1322 	ljmp	00104$
      004362                       1323 00170$:
                                   1324 ;	tcp.c:64: uint16_t word = (buffer[i] << 8) | buffer[i + 1];
      004362 C0 02            [24] 1325 	push	ar2
      004364 C0 04            [24] 1326 	push	ar4
      004366 E5 41            [12] 1327 	mov	a,_calculateTcpChecksum_sloc3_1_0
      004368 2D               [12] 1328 	add	a, r5
      004369 F8               [12] 1329 	mov	r0,a
      00436A E5 42            [12] 1330 	mov	a,(_calculateTcpChecksum_sloc3_1_0 + 1)
      00436C 3E               [12] 1331 	addc	a, r6
      00436D F9               [12] 1332 	mov	r1,a
      00436E 8F 03            [24] 1333 	mov	ar3,r7
      004370 88 82            [24] 1334 	mov	dpl,r0
      004372 89 83            [24] 1335 	mov	dph,r1
      004374 8B F0            [24] 1336 	mov	b,r3
      004376 12 5E E3         [24] 1337 	lcall	__gptrget
      004379 FB               [12] 1338 	mov	r3,a
      00437A 78 00            [12] 1339 	mov	r0,#0x00
      00437C 74 01            [12] 1340 	mov	a,#0x01
      00437E 25 3D            [12] 1341 	add	a, _calculateTcpChecksum_sloc2_1_0
      004380 F9               [12] 1342 	mov	r1,a
      004381 E4               [12] 1343 	clr	a
      004382 35 3E            [12] 1344 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      004384 FC               [12] 1345 	mov	r4,a
      004385 E9               [12] 1346 	mov	a,r1
      004386 2D               [12] 1347 	add	a, r5
      004387 F9               [12] 1348 	mov	r1,a
      004388 EC               [12] 1349 	mov	a,r4
      004389 3E               [12] 1350 	addc	a, r6
      00438A FC               [12] 1351 	mov	r4,a
      00438B 8F 02            [24] 1352 	mov	ar2,r7
      00438D 89 82            [24] 1353 	mov	dpl,r1
      00438F 8C 83            [24] 1354 	mov	dph,r4
      004391 8A F0            [24] 1355 	mov	b,r2
      004393 12 5E E3         [24] 1356 	lcall	__gptrget
      004396 7C 00            [12] 1357 	mov	r4,#0x00
      004398 42 00            [12] 1358 	orl	ar0,a
      00439A EC               [12] 1359 	mov	a,r4
      00439B 42 03            [12] 1360 	orl	ar3,a
      00439D 88 41            [24] 1361 	mov	_calculateTcpChecksum_sloc3_1_0,r0
      00439F 8B 42            [24] 1362 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),r3
                                   1363 ;	tcp.c:65: sum += word;
      0043A1 90 03 AF         [24] 1364 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      0043A4 E0               [24] 1365 	movx	a,@dptr
      0043A5 F5 45            [12] 1366 	mov	_calculateTcpChecksum_sloc4_1_0,a
      0043A7 A3               [24] 1367 	inc	dptr
      0043A8 E0               [24] 1368 	movx	a,@dptr
      0043A9 F5 46            [12] 1369 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
      0043AB A3               [24] 1370 	inc	dptr
      0043AC E0               [24] 1371 	movx	a,@dptr
      0043AD F5 47            [12] 1372 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
      0043AF A3               [24] 1373 	inc	dptr
      0043B0 E0               [24] 1374 	movx	a,@dptr
      0043B1 F5 48            [12] 1375 	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
      0043B3 A8 41            [24] 1376 	mov	r0,_calculateTcpChecksum_sloc3_1_0
      0043B5 AA 42            [24] 1377 	mov	r2,(_calculateTcpChecksum_sloc3_1_0 + 1)
      0043B7 7B 00            [12] 1378 	mov	r3,#0x00
      0043B9 7C 00            [12] 1379 	mov	r4,#0x00
      0043BB 90 03 AF         [24] 1380 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      0043BE E8               [12] 1381 	mov	a,r0
      0043BF 25 45            [12] 1382 	add	a, _calculateTcpChecksum_sloc4_1_0
      0043C1 F0               [24] 1383 	movx	@dptr,a
      0043C2 EA               [12] 1384 	mov	a,r2
      0043C3 35 46            [12] 1385 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 1)
      0043C5 A3               [24] 1386 	inc	dptr
      0043C6 F0               [24] 1387 	movx	@dptr,a
      0043C7 EB               [12] 1388 	mov	a,r3
      0043C8 35 47            [12] 1389 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 2)
      0043CA A3               [24] 1390 	inc	dptr
      0043CB F0               [24] 1391 	movx	@dptr,a
      0043CC EC               [12] 1392 	mov	a,r4
      0043CD 35 48            [12] 1393 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 3)
      0043CF A3               [24] 1394 	inc	dptr
      0043D0 F0               [24] 1395 	movx	@dptr,a
                                   1396 ;	tcp.c:63: for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i += 2) {
      0043D1 74 02            [12] 1397 	mov	a,#0x02
      0043D3 25 3D            [12] 1398 	add	a, _calculateTcpChecksum_sloc2_1_0
      0043D5 FB               [12] 1399 	mov	r3,a
      0043D6 E4               [12] 1400 	clr	a
      0043D7 35 3E            [12] 1401 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      0043D9 FC               [12] 1402 	mov	r4,a
      0043DA 90 03 B5         [24] 1403 	mov	dptr,#_calculateTcpChecksum_i_20001_130
      0043DD EB               [12] 1404 	mov	a,r3
      0043DE F0               [24] 1405 	movx	@dptr,a
      0043DF EC               [12] 1406 	mov	a,r4
      0043E0 A3               [24] 1407 	inc	dptr
      0043E1 F0               [24] 1408 	movx	@dptr,a
      0043E2 D0 04            [24] 1409 	pop	ar4
      0043E4 D0 02            [24] 1410 	pop	ar2
      0043E6 02 43 3B         [24] 1411 	ljmp	00114$
                                   1412 ;	tcp.c:69: while (sum >> 16) {
      0043E9                       1413 00104$:
      0043E9 90 03 AF         [24] 1414 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      0043EC E0               [24] 1415 	movx	a,@dptr
      0043ED FC               [12] 1416 	mov	r4,a
      0043EE A3               [24] 1417 	inc	dptr
      0043EF E0               [24] 1418 	movx	a,@dptr
      0043F0 FD               [12] 1419 	mov	r5,a
      0043F1 A3               [24] 1420 	inc	dptr
      0043F2 E0               [24] 1421 	movx	a,@dptr
      0043F3 FE               [12] 1422 	mov	r6,a
      0043F4 A3               [24] 1423 	inc	dptr
      0043F5 E0               [24] 1424 	movx	a,@dptr
      0043F6 FF               [12] 1425 	mov	r7,a
      0043F7 8E 45            [24] 1426 	mov	_calculateTcpChecksum_sloc4_1_0,r6
      0043F9 8F 46            [24] 1427 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),r7
      0043FB E4               [12] 1428 	clr	a
      0043FC F5 47            [12] 1429 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
      0043FE F5 48            [12] 1430 	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
      004400 E5 45            [12] 1431 	mov	a,_calculateTcpChecksum_sloc4_1_0
      004402 45 46            [12] 1432 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
      004404 45 47            [12] 1433 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
      004406 45 48            [12] 1434 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
      004408 60 20            [24] 1435 	jz	00106$
                                   1436 ;	tcp.c:70: sum = (sum & 0xFFFF) + (sum >> 16);
      00440A 8C 00            [24] 1437 	mov	ar0,r4
      00440C 8D 01            [24] 1438 	mov	ar1,r5
      00440E 7A 00            [12] 1439 	mov	r2,#0x00
      004410 7B 00            [12] 1440 	mov	r3,#0x00
      004412 90 03 AF         [24] 1441 	mov	dptr,#_calculateTcpChecksum_sum_10001_125
      004415 E5 45            [12] 1442 	mov	a,_calculateTcpChecksum_sloc4_1_0
      004417 28               [12] 1443 	add	a, r0
      004418 F0               [24] 1444 	movx	@dptr,a
      004419 E5 46            [12] 1445 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
      00441B 39               [12] 1446 	addc	a, r1
      00441C A3               [24] 1447 	inc	dptr
      00441D F0               [24] 1448 	movx	@dptr,a
      00441E E5 47            [12] 1449 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
      004420 3A               [12] 1450 	addc	a, r2
      004421 A3               [24] 1451 	inc	dptr
      004422 F0               [24] 1452 	movx	@dptr,a
      004423 E5 48            [12] 1453 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
      004425 3B               [12] 1454 	addc	a, r3
      004426 A3               [24] 1455 	inc	dptr
      004427 F0               [24] 1456 	movx	@dptr,a
      004428 80 BF            [24] 1457 	sjmp	00104$
      00442A                       1458 00106$:
                                   1459 ;	tcp.c:74: uint16_t checksum = ~((uint16_t)sum);
      00442A EC               [12] 1460 	mov	a,r4
      00442B F4               [12] 1461 	cpl	a
      00442C FC               [12] 1462 	mov	r4,a
      00442D ED               [12] 1463 	mov	a,r5
      00442E F4               [12] 1464 	cpl	a
      00442F FD               [12] 1465 	mov	r5,a
                                   1466 ;	tcp.c:75: buffer[TCP_CHECKSUM_H_P] = (checksum >> 8) & 0xFF;
      004430 90 03 AC         [24] 1467 	mov	dptr,#_calculateTcpChecksum_buffer_10000_123
      004433 E0               [24] 1468 	movx	a,@dptr
      004434 FB               [12] 1469 	mov	r3,a
      004435 A3               [24] 1470 	inc	dptr
      004436 E0               [24] 1471 	movx	a,@dptr
      004437 FE               [12] 1472 	mov	r6,a
      004438 A3               [24] 1473 	inc	dptr
      004439 E0               [24] 1474 	movx	a,@dptr
      00443A FF               [12] 1475 	mov	r7,a
      00443B 74 32            [12] 1476 	mov	a,#0x32
      00443D 2B               [12] 1477 	add	a, r3
      00443E F5 45            [12] 1478 	mov	_calculateTcpChecksum_sloc4_1_0,a
      004440 E4               [12] 1479 	clr	a
      004441 3E               [12] 1480 	addc	a, r6
      004442 F5 46            [12] 1481 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
      004444 8F 47            [24] 1482 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),r7
      004446 8D 02            [24] 1483 	mov	ar2,r5
      004448 85 45 82         [24] 1484 	mov	dpl,_calculateTcpChecksum_sloc4_1_0
      00444B 85 46 83         [24] 1485 	mov	dph,(_calculateTcpChecksum_sloc4_1_0 + 1)
      00444E 85 47 F0         [24] 1486 	mov	b,(_calculateTcpChecksum_sloc4_1_0 + 2)
      004451 EA               [12] 1487 	mov	a,r2
      004452 12 50 AB         [24] 1488 	lcall	__gptrput
                                   1489 ;	tcp.c:76: buffer[TCP_CHECKSUM_L_P] = checksum & 0xFF;
      004455 74 33            [12] 1490 	mov	a,#0x33
      004457 2B               [12] 1491 	add	a, r3
      004458 FB               [12] 1492 	mov	r3,a
      004459 E4               [12] 1493 	clr	a
      00445A 3E               [12] 1494 	addc	a, r6
      00445B FE               [12] 1495 	mov	r6,a
      00445C 8B 82            [24] 1496 	mov	dpl,r3
      00445E 8E 83            [24] 1497 	mov	dph,r6
      004460 8F F0            [24] 1498 	mov	b,r7
      004462 EC               [12] 1499 	mov	a,r4
                                   1500 ;	tcp.c:77: }
      004463 02 50 AB         [24] 1501 	ljmp	__gptrput
                                   1502 ;------------------------------------------------------------
                                   1503 ;Allocation info for local variables in function 'calculate_checksum'
                                   1504 ;------------------------------------------------------------
                                   1505 ;length                    Allocated with name '_calculate_checksum_PARM_2'
                                   1506 ;data                      Allocated with name '_calculate_checksum_data_10000_134'
                                   1507 ;sum                       Allocated with name '_calculate_checksum_sum_10000_135'
                                   1508 ;i                         Allocated with name '_calculate_checksum_i_20000_136'
                                   1509 ;word                      Allocated with name '_calculate_checksum_word_30000_137'
                                   1510 ;sloc0                     Allocated with name '_calculate_checksum_sloc0_1_0'
                                   1511 ;sloc1                     Allocated with name '_calculate_checksum_sloc1_1_0'
                                   1512 ;sloc2                     Allocated with name '_calculate_checksum_sloc2_1_0'
                                   1513 ;------------------------------------------------------------
                                   1514 ;	tcp.c:80: uint16_t calculate_checksum(uint8_t *data, uint16_t length) {
                                   1515 ;	-----------------------------------------
                                   1516 ;	 function calculate_checksum
                                   1517 ;	-----------------------------------------
      004466                       1518 _calculate_checksum:
      004466 AF F0            [24] 1519 	mov	r7,b
      004468 AE 83            [24] 1520 	mov	r6,dph
      00446A E5 82            [12] 1521 	mov	a,dpl
      00446C 90 03 B9         [24] 1522 	mov	dptr,#_calculate_checksum_data_10000_134
      00446F F0               [24] 1523 	movx	@dptr,a
      004470 EE               [12] 1524 	mov	a,r6
      004471 A3               [24] 1525 	inc	dptr
      004472 F0               [24] 1526 	movx	@dptr,a
      004473 EF               [12] 1527 	mov	a,r7
      004474 A3               [24] 1528 	inc	dptr
      004475 F0               [24] 1529 	movx	@dptr,a
                                   1530 ;	tcp.c:81: uint32_t sum = 0;
      004476 90 03 BC         [24] 1531 	mov	dptr,#_calculate_checksum_sum_10000_135
      004479 E4               [12] 1532 	clr	a
      00447A F0               [24] 1533 	movx	@dptr,a
      00447B A3               [24] 1534 	inc	dptr
      00447C F0               [24] 1535 	movx	@dptr,a
      00447D A3               [24] 1536 	inc	dptr
      00447E F0               [24] 1537 	movx	@dptr,a
      00447F A3               [24] 1538 	inc	dptr
      004480 F0               [24] 1539 	movx	@dptr,a
                                   1540 ;	tcp.c:84: for (uint16_t i = 0; i < length; i += 2) {
      004481 90 03 C0         [24] 1541 	mov	dptr,#_calculate_checksum_i_20000_136
      004484 F0               [24] 1542 	movx	@dptr,a
      004485 A3               [24] 1543 	inc	dptr
      004486 F0               [24] 1544 	movx	@dptr,a
      004487 90 03 B9         [24] 1545 	mov	dptr,#_calculate_checksum_data_10000_134
      00448A E0               [24] 1546 	movx	a,@dptr
      00448B FD               [12] 1547 	mov	r5,a
      00448C A3               [24] 1548 	inc	dptr
      00448D E0               [24] 1549 	movx	a,@dptr
      00448E FE               [12] 1550 	mov	r6,a
      00448F A3               [24] 1551 	inc	dptr
      004490 E0               [24] 1552 	movx	a,@dptr
      004491 FF               [12] 1553 	mov	r7,a
      004492 90 03 B7         [24] 1554 	mov	dptr,#_calculate_checksum_PARM_2
      004495 E0               [24] 1555 	movx	a,@dptr
      004496 F5 39            [12] 1556 	mov	_calculate_checksum_sloc0_1_0,a
      004498 A3               [24] 1557 	inc	dptr
      004499 E0               [24] 1558 	movx	a,@dptr
      00449A F5 3A            [12] 1559 	mov	(_calculate_checksum_sloc0_1_0 + 1),a
      00449C                       1560 00105$:
      00449C 90 03 C0         [24] 1561 	mov	dptr,#_calculate_checksum_i_20000_136
      00449F E0               [24] 1562 	movx	a,@dptr
      0044A0 F9               [12] 1563 	mov	r1,a
      0044A1 A3               [24] 1564 	inc	dptr
      0044A2 E0               [24] 1565 	movx	a,@dptr
      0044A3 FA               [12] 1566 	mov	r2,a
      0044A4 C3               [12] 1567 	clr	c
      0044A5 E9               [12] 1568 	mov	a,r1
      0044A6 95 39            [12] 1569 	subb	a,_calculate_checksum_sloc0_1_0
      0044A8 EA               [12] 1570 	mov	a,r2
      0044A9 95 3A            [12] 1571 	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
      0044AB 40 03            [24] 1572 	jc	00135$
      0044AD 02 45 9C         [24] 1573 	ljmp	00103$
      0044B0                       1574 00135$:
                                   1575 ;	tcp.c:85: uint16_t word = (data[i] << 8) + (i + 1 < length ? data[i + 1] : 0);
      0044B0 E9               [12] 1576 	mov	a,r1
      0044B1 2D               [12] 1577 	add	a, r5
      0044B2 F8               [12] 1578 	mov	r0,a
      0044B3 EA               [12] 1579 	mov	a,r2
      0044B4 3E               [12] 1580 	addc	a, r6
      0044B5 FB               [12] 1581 	mov	r3,a
      0044B6 8F 04            [24] 1582 	mov	ar4,r7
      0044B8 88 82            [24] 1583 	mov	dpl,r0
      0044BA 8B 83            [24] 1584 	mov	dph,r3
      0044BC 8C F0            [24] 1585 	mov	b,r4
      0044BE 12 5E E3         [24] 1586 	lcall	__gptrget
      0044C1 FC               [12] 1587 	mov	r4,a
      0044C2 7B 00            [12] 1588 	mov	r3,#0x00
      0044C4 C0 05            [24] 1589 	push	ar5
      0044C6 C0 06            [24] 1590 	push	ar6
      0044C8 C0 07            [24] 1591 	push	ar7
      0044CA 74 01            [12] 1592 	mov	a,#0x01
      0044CC 29               [12] 1593 	add	a, r1
      0044CD F8               [12] 1594 	mov	r0,a
      0044CE E4               [12] 1595 	clr	a
      0044CF 3A               [12] 1596 	addc	a, r2
      0044D0 FF               [12] 1597 	mov	r7,a
      0044D1 C3               [12] 1598 	clr	c
      0044D2 E8               [12] 1599 	mov	a,r0
      0044D3 95 39            [12] 1600 	subb	a,_calculate_checksum_sloc0_1_0
      0044D5 EF               [12] 1601 	mov	a,r7
      0044D6 95 3A            [12] 1602 	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
      0044D8 D0 07            [24] 1603 	pop	ar7
      0044DA D0 06            [24] 1604 	pop	ar6
      0044DC D0 05            [24] 1605 	pop	ar5
      0044DE 50 1B            [24] 1606 	jnc	00109$
      0044E0 09               [12] 1607 	inc	r1
      0044E1 B9 00 01         [24] 1608 	cjne	r1,#0x00,00137$
      0044E4 0A               [12] 1609 	inc	r2
      0044E5                       1610 00137$:
      0044E5 E9               [12] 1611 	mov	a,r1
      0044E6 2D               [12] 1612 	add	a, r5
      0044E7 F9               [12] 1613 	mov	r1,a
      0044E8 EA               [12] 1614 	mov	a,r2
      0044E9 3E               [12] 1615 	addc	a, r6
      0044EA F8               [12] 1616 	mov	r0,a
      0044EB 8F 02            [24] 1617 	mov	ar2,r7
      0044ED 89 82            [24] 1618 	mov	dpl,r1
      0044EF 88 83            [24] 1619 	mov	dph,r0
      0044F1 8A F0            [24] 1620 	mov	b,r2
      0044F3 12 5E E3         [24] 1621 	lcall	__gptrget
      0044F6 F9               [12] 1622 	mov	r1,a
      0044F7 7A 00            [12] 1623 	mov	r2,#0x00
      0044F9 80 04            [24] 1624 	sjmp	00110$
      0044FB                       1625 00109$:
      0044FB 79 00            [12] 1626 	mov	r1,#0x00
      0044FD 7A 00            [12] 1627 	mov	r2,#0x00
      0044FF                       1628 00110$:
      0044FF C0 05            [24] 1629 	push	ar5
      004501 C0 06            [24] 1630 	push	ar6
      004503 C0 07            [24] 1631 	push	ar7
      004505 E9               [12] 1632 	mov	a,r1
      004506 2B               [12] 1633 	add	a, r3
      004507 FB               [12] 1634 	mov	r3,a
      004508 EA               [12] 1635 	mov	a,r2
      004509 3C               [12] 1636 	addc	a, r4
      00450A FC               [12] 1637 	mov	r4,a
                                   1638 ;	tcp.c:86: sum += word;
      00450B 90 03 BC         [24] 1639 	mov	dptr,#_calculate_checksum_sum_10000_135
      00450E E0               [24] 1640 	movx	a,@dptr
      00450F F8               [12] 1641 	mov	r0,a
      004510 A3               [24] 1642 	inc	dptr
      004511 E0               [24] 1643 	movx	a,@dptr
      004512 F9               [12] 1644 	mov	r1,a
      004513 A3               [24] 1645 	inc	dptr
      004514 E0               [24] 1646 	movx	a,@dptr
      004515 FA               [12] 1647 	mov	r2,a
      004516 A3               [24] 1648 	inc	dptr
      004517 E0               [24] 1649 	movx	a,@dptr
      004518 FF               [12] 1650 	mov	r7,a
      004519 7E 00            [12] 1651 	mov	r6,#0x00
      00451B 7D 00            [12] 1652 	mov	r5,#0x00
      00451D 90 03 BC         [24] 1653 	mov	dptr,#_calculate_checksum_sum_10000_135
      004520 EB               [12] 1654 	mov	a,r3
      004521 28               [12] 1655 	add	a, r0
      004522 F0               [24] 1656 	movx	@dptr,a
      004523 EC               [12] 1657 	mov	a,r4
      004524 39               [12] 1658 	addc	a, r1
      004525 A3               [24] 1659 	inc	dptr
      004526 F0               [24] 1660 	movx	@dptr,a
      004527 EE               [12] 1661 	mov	a,r6
      004528 3A               [12] 1662 	addc	a, r2
      004529 A3               [24] 1663 	inc	dptr
      00452A F0               [24] 1664 	movx	@dptr,a
      00452B ED               [12] 1665 	mov	a,r5
      00452C 3F               [12] 1666 	addc	a, r7
      00452D A3               [24] 1667 	inc	dptr
      00452E F0               [24] 1668 	movx	@dptr,a
                                   1669 ;	tcp.c:89: if (sum > 0xFFFF) {
      00452F 90 03 BC         [24] 1670 	mov	dptr,#_calculate_checksum_sum_10000_135
      004532 E0               [24] 1671 	movx	a,@dptr
      004533 F5 3B            [12] 1672 	mov	_calculate_checksum_sloc1_1_0,a
      004535 A3               [24] 1673 	inc	dptr
      004536 E0               [24] 1674 	movx	a,@dptr
      004537 F5 3C            [12] 1675 	mov	(_calculate_checksum_sloc1_1_0 + 1),a
      004539 A3               [24] 1676 	inc	dptr
      00453A E0               [24] 1677 	movx	a,@dptr
      00453B F5 3D            [12] 1678 	mov	(_calculate_checksum_sloc1_1_0 + 2),a
      00453D A3               [24] 1679 	inc	dptr
      00453E E0               [24] 1680 	movx	a,@dptr
      00453F F5 3E            [12] 1681 	mov	(_calculate_checksum_sloc1_1_0 + 3),a
      004541 C3               [12] 1682 	clr	c
      004542 74 FF            [12] 1683 	mov	a,#0xff
      004544 95 3B            [12] 1684 	subb	a,_calculate_checksum_sloc1_1_0
      004546 74 FF            [12] 1685 	mov	a,#0xff
      004548 95 3C            [12] 1686 	subb	a,(_calculate_checksum_sloc1_1_0 + 1)
      00454A E4               [12] 1687 	clr	a
      00454B 95 3D            [12] 1688 	subb	a,(_calculate_checksum_sloc1_1_0 + 2)
      00454D E4               [12] 1689 	clr	a
      00454E 95 3E            [12] 1690 	subb	a,(_calculate_checksum_sloc1_1_0 + 3)
      004550 D0 07            [24] 1691 	pop	ar7
      004552 D0 06            [24] 1692 	pop	ar6
      004554 D0 05            [24] 1693 	pop	ar5
      004556 50 2A            [24] 1694 	jnc	00106$
                                   1695 ;	tcp.c:90: sum = (sum & 0xFFFF) + (sum >> 16);
      004558 85 3B 3F         [24] 1696 	mov	_calculate_checksum_sloc2_1_0,_calculate_checksum_sloc1_1_0
      00455B 85 3C 40         [24] 1697 	mov	(_calculate_checksum_sloc2_1_0 + 1),(_calculate_checksum_sloc1_1_0 + 1)
      00455E 75 41 00         [24] 1698 	mov	(_calculate_checksum_sloc2_1_0 + 2),#0x00
      004561 75 42 00         [24] 1699 	mov	(_calculate_checksum_sloc2_1_0 + 3),#0x00
      004564 A8 3D            [24] 1700 	mov	r0,(_calculate_checksum_sloc1_1_0 + 2)
      004566 AA 3E            [24] 1701 	mov	r2,(_calculate_checksum_sloc1_1_0 + 3)
      004568 7B 00            [12] 1702 	mov	r3,#0x00
      00456A 7C 00            [12] 1703 	mov	r4,#0x00
      00456C 90 03 BC         [24] 1704 	mov	dptr,#_calculate_checksum_sum_10000_135
      00456F E8               [12] 1705 	mov	a,r0
      004570 25 3F            [12] 1706 	add	a, _calculate_checksum_sloc2_1_0
      004572 F0               [24] 1707 	movx	@dptr,a
      004573 EA               [12] 1708 	mov	a,r2
      004574 35 40            [12] 1709 	addc	a, (_calculate_checksum_sloc2_1_0 + 1)
      004576 A3               [24] 1710 	inc	dptr
      004577 F0               [24] 1711 	movx	@dptr,a
      004578 EB               [12] 1712 	mov	a,r3
      004579 35 41            [12] 1713 	addc	a, (_calculate_checksum_sloc2_1_0 + 2)
      00457B A3               [24] 1714 	inc	dptr
      00457C F0               [24] 1715 	movx	@dptr,a
      00457D EC               [12] 1716 	mov	a,r4
      00457E 35 42            [12] 1717 	addc	a, (_calculate_checksum_sloc2_1_0 + 3)
      004580 A3               [24] 1718 	inc	dptr
      004581 F0               [24] 1719 	movx	@dptr,a
      004582                       1720 00106$:
                                   1721 ;	tcp.c:84: for (uint16_t i = 0; i < length; i += 2) {
      004582 90 03 C0         [24] 1722 	mov	dptr,#_calculate_checksum_i_20000_136
      004585 E0               [24] 1723 	movx	a,@dptr
      004586 FB               [12] 1724 	mov	r3,a
      004587 A3               [24] 1725 	inc	dptr
      004588 E0               [24] 1726 	movx	a,@dptr
      004589 FC               [12] 1727 	mov	r4,a
      00458A 74 02            [12] 1728 	mov	a,#0x02
      00458C 2B               [12] 1729 	add	a, r3
      00458D FB               [12] 1730 	mov	r3,a
      00458E E4               [12] 1731 	clr	a
      00458F 3C               [12] 1732 	addc	a, r4
      004590 FC               [12] 1733 	mov	r4,a
      004591 90 03 C0         [24] 1734 	mov	dptr,#_calculate_checksum_i_20000_136
      004594 EB               [12] 1735 	mov	a,r3
      004595 F0               [24] 1736 	movx	@dptr,a
      004596 EC               [12] 1737 	mov	a,r4
      004597 A3               [24] 1738 	inc	dptr
      004598 F0               [24] 1739 	movx	@dptr,a
      004599 02 44 9C         [24] 1740 	ljmp	00105$
      00459C                       1741 00103$:
                                   1742 ;	tcp.c:95: sum = (sum & 0xFFFF) + (sum >> 16);
      00459C 90 03 BC         [24] 1743 	mov	dptr,#_calculate_checksum_sum_10000_135
      00459F E0               [24] 1744 	movx	a,@dptr
      0045A0 FC               [12] 1745 	mov	r4,a
      0045A1 A3               [24] 1746 	inc	dptr
      0045A2 E0               [24] 1747 	movx	a,@dptr
      0045A3 FD               [12] 1748 	mov	r5,a
      0045A4 A3               [24] 1749 	inc	dptr
      0045A5 E0               [24] 1750 	movx	a,@dptr
      0045A6 FE               [12] 1751 	mov	r6,a
      0045A7 A3               [24] 1752 	inc	dptr
      0045A8 E0               [24] 1753 	movx	a,@dptr
      0045A9 FF               [12] 1754 	mov	r7,a
      0045AA 8C 00            [24] 1755 	mov	ar0,r4
      0045AC 8D 01            [24] 1756 	mov	ar1,r5
      0045AE 7A 00            [12] 1757 	mov	r2,#0x00
      0045B0 7B 00            [12] 1758 	mov	r3,#0x00
      0045B2 8E 04            [24] 1759 	mov	ar4,r6
      0045B4 8F 05            [24] 1760 	mov	ar5,r7
      0045B6 7E 00            [12] 1761 	mov	r6,#0x00
      0045B8 7F 00            [12] 1762 	mov	r7,#0x00
      0045BA 90 03 BC         [24] 1763 	mov	dptr,#_calculate_checksum_sum_10000_135
      0045BD EC               [12] 1764 	mov	a,r4
      0045BE 28               [12] 1765 	add	a, r0
      0045BF F0               [24] 1766 	movx	@dptr,a
      0045C0 ED               [12] 1767 	mov	a,r5
      0045C1 39               [12] 1768 	addc	a, r1
      0045C2 A3               [24] 1769 	inc	dptr
      0045C3 F0               [24] 1770 	movx	@dptr,a
      0045C4 EE               [12] 1771 	mov	a,r6
      0045C5 3A               [12] 1772 	addc	a, r2
      0045C6 A3               [24] 1773 	inc	dptr
      0045C7 F0               [24] 1774 	movx	@dptr,a
      0045C8 EF               [12] 1775 	mov	a,r7
      0045C9 3B               [12] 1776 	addc	a, r3
      0045CA A3               [24] 1777 	inc	dptr
      0045CB F0               [24] 1778 	movx	@dptr,a
                                   1779 ;	tcp.c:98: return ~sum;
      0045CC 90 03 BC         [24] 1780 	mov	dptr,#_calculate_checksum_sum_10000_135
      0045CF E0               [24] 1781 	movx	a,@dptr
      0045D0 FC               [12] 1782 	mov	r4,a
      0045D1 A3               [24] 1783 	inc	dptr
      0045D2 E0               [24] 1784 	movx	a,@dptr
      0045D3 FD               [12] 1785 	mov	r5,a
      0045D4 A3               [24] 1786 	inc	dptr
      0045D5 E0               [24] 1787 	movx	a,@dptr
      0045D6 FE               [12] 1788 	mov	r6,a
      0045D7 A3               [24] 1789 	inc	dptr
      0045D8 E0               [24] 1790 	movx	a,@dptr
      0045D9 FF               [12] 1791 	mov	r7,a
      0045DA EC               [12] 1792 	mov	a,r4
      0045DB F4               [12] 1793 	cpl	a
      0045DC FC               [12] 1794 	mov	r4,a
      0045DD ED               [12] 1795 	mov	a,r5
      0045DE F4               [12] 1796 	cpl	a
      0045DF FD               [12] 1797 	mov	r5,a
      0045E0 EE               [12] 1798 	mov	a,r6
      0045E1 F4               [12] 1799 	cpl	a
      0045E2 EF               [12] 1800 	mov	a,r7
      0045E3 F4               [12] 1801 	cpl	a
      0045E4 8C 82            [24] 1802 	mov	dpl, r4
      0045E6 8D 83            [24] 1803 	mov	dph, r5
                                   1804 ;	tcp.c:99: }
      0045E8 22               [24] 1805 	ret
                                   1806 ;------------------------------------------------------------
                                   1807 ;Allocation info for local variables in function 'process_tcp_packet'
                                   1808 ;------------------------------------------------------------
                                   1809 ;sloc0                     Allocated with name '_process_tcp_packet_sloc0_1_0'
                                   1810 ;packet_size               Allocated with name '_process_tcp_packet_PARM_2'
                                   1811 ;response_size             Allocated with name '_process_tcp_packet_PARM_3'
                                   1812 ;packet                    Allocated with name '_process_tcp_packet_packet_10000_139'
                                   1813 ;response                  Allocated with name '_process_tcp_packet_response_10000_140'
                                   1814 ;data_start                Allocated with name '_process_tcp_packet_data_start_10001_141'
                                   1815 ;ethernet_header           Allocated with name '_process_tcp_packet_ethernet_header_10001_141'
                                   1816 ;response_ethernet_header  Allocated with name '_process_tcp_packet_response_ethernet_header_10001_141'
                                   1817 ;ip_header                 Allocated with name '_process_tcp_packet_ip_header_10002_142'
                                   1818 ;response_ip_header        Allocated with name '_process_tcp_packet_response_ip_header_10002_142'
                                   1819 ;tcp_header                Allocated with name '_process_tcp_packet_tcp_header_10003_143'
                                   1820 ;response_tcp_header       Allocated with name '_process_tcp_packet_response_tcp_header_10003_143'
                                   1821 ;SYN_SEQ3                  Allocated with name '_process_tcp_packet_SYN_SEQ3_10004_144'
                                   1822 ;SYN_SEQ2                  Allocated with name '_process_tcp_packet_SYN_SEQ2_10004_144'
                                   1823 ;SYN_SEQ1                  Allocated with name '_process_tcp_packet_SYN_SEQ1_10004_144'
                                   1824 ;SYN_SEQ0                  Allocated with name '_process_tcp_packet_SYN_SEQ0_10004_144'
                                   1825 ;tcp_length                Allocated with name '_process_tcp_packet_tcp_length_10005_145'
                                   1826 ;ip_total_length           Allocated with name '_process_tcp_packet_ip_total_length_10005_145'
                                   1827 ;------------------------------------------------------------
                                   1828 ;	tcp.c:100: uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size) {
                                   1829 ;	-----------------------------------------
                                   1830 ;	 function process_tcp_packet
                                   1831 ;	-----------------------------------------
      0045E9                       1832 _process_tcp_packet:
      0045E9 AF F0            [24] 1833 	mov	r7,b
      0045EB AE 83            [24] 1834 	mov	r6,dph
      0045ED E5 82            [12] 1835 	mov	a,dpl
      0045EF 90 03 C7         [24] 1836 	mov	dptr,#_process_tcp_packet_packet_10000_139
      0045F2 F0               [24] 1837 	movx	@dptr,a
      0045F3 EE               [12] 1838 	mov	a,r6
      0045F4 A3               [24] 1839 	inc	dptr
      0045F5 F0               [24] 1840 	movx	@dptr,a
      0045F6 EF               [12] 1841 	mov	a,r7
      0045F7 A3               [24] 1842 	inc	dptr
      0045F8 F0               [24] 1843 	movx	@dptr,a
                                   1844 ;	tcp.c:102: memset(response, 0, MAX_PACKET_SIZE + 1);      // Clear the response buffer
      0045F9 90 09 CD         [24] 1845 	mov	dptr,#_memset_PARM_2
      0045FC E4               [12] 1846 	clr	a
      0045FD F0               [24] 1847 	movx	@dptr,a
      0045FE 90 09 CE         [24] 1848 	mov	dptr,#_memset_PARM_3
      004601 74 DD            [12] 1849 	mov	a,#0xdd
      004603 F0               [24] 1850 	movx	@dptr,a
      004604 74 05            [12] 1851 	mov	a,#0x05
      004606 A3               [24] 1852 	inc	dptr
      004607 F0               [24] 1853 	movx	@dptr,a
      004608 90 03 CA         [24] 1854 	mov	dptr,#_process_tcp_packet_response_10000_140
      00460B 75 F0 00         [24] 1855 	mov	b, #0x00
      00460E 12 50 83         [24] 1856 	lcall	_memset
                                   1857 ;	tcp.c:104: response[0] = 0x0E;  // Ensure the first byte of the response is always 0x0E
      004611 90 03 CA         [24] 1858 	mov	dptr,#_process_tcp_packet_response_10000_140
      004614 74 0E            [12] 1859 	mov	a,#0x0e
      004616 F0               [24] 1860 	movx	@dptr,a
                                   1861 ;	tcp.c:107: uint8_t *data_start = response + 1;
                                   1862 ;	tcp.c:110: uint8_t *ethernet_header = packet;
      004617 90 03 C7         [24] 1863 	mov	dptr,#_process_tcp_packet_packet_10000_139
      00461A E0               [24] 1864 	movx	a,@dptr
      00461B FD               [12] 1865 	mov	r5,a
      00461C A3               [24] 1866 	inc	dptr
      00461D E0               [24] 1867 	movx	a,@dptr
      00461E FE               [12] 1868 	mov	r6,a
      00461F A3               [24] 1869 	inc	dptr
      004620 E0               [24] 1870 	movx	a,@dptr
      004621 FF               [12] 1871 	mov	r7,a
                                   1872 ;	tcp.c:112: memcpy(response_ethernet_header, ethernet_header, ETHERNET_HEADER_SIZE);
      004622 8D 02            [24] 1873 	mov	ar2,r5
      004624 8E 03            [24] 1874 	mov	ar3,r6
      004626 8F 04            [24] 1875 	mov	ar4,r7
      004628 90 09 C5         [24] 1876 	mov	dptr,#___memcpy_PARM_2
      00462B EA               [12] 1877 	mov	a,r2
      00462C F0               [24] 1878 	movx	@dptr,a
      00462D EB               [12] 1879 	mov	a,r3
      00462E A3               [24] 1880 	inc	dptr
      00462F F0               [24] 1881 	movx	@dptr,a
      004630 EC               [12] 1882 	mov	a,r4
      004631 A3               [24] 1883 	inc	dptr
      004632 F0               [24] 1884 	movx	@dptr,a
      004633 90 09 C8         [24] 1885 	mov	dptr,#___memcpy_PARM_3
      004636 74 0E            [12] 1886 	mov	a,#0x0e
      004638 F0               [24] 1887 	movx	@dptr,a
      004639 E4               [12] 1888 	clr	a
      00463A A3               [24] 1889 	inc	dptr
      00463B F0               [24] 1890 	movx	@dptr,a
      00463C 90 03 CB         [24] 1891 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0001)
      00463F F5 F0            [12] 1892 	mov	b,a
      004641 C0 07            [24] 1893 	push	ar7
      004643 C0 06            [24] 1894 	push	ar6
      004645 C0 05            [24] 1895 	push	ar5
      004647 12 50 0F         [24] 1896 	lcall	___memcpy
      00464A D0 05            [24] 1897 	pop	ar5
      00464C D0 06            [24] 1898 	pop	ar6
      00464E D0 07            [24] 1899 	pop	ar7
                                   1900 ;	tcp.c:115: memcpy(response_ethernet_header, ethernet_header + 6, 6);  // Destination MAC
      004650 74 06            [12] 1901 	mov	a,#0x06
      004652 2D               [12] 1902 	add	a, r5
      004653 FA               [12] 1903 	mov	r2,a
      004654 E4               [12] 1904 	clr	a
      004655 3E               [12] 1905 	addc	a, r6
      004656 FB               [12] 1906 	mov	r3,a
      004657 8F 04            [24] 1907 	mov	ar4,r7
      004659 90 09 C5         [24] 1908 	mov	dptr,#___memcpy_PARM_2
      00465C EA               [12] 1909 	mov	a,r2
      00465D F0               [24] 1910 	movx	@dptr,a
      00465E EB               [12] 1911 	mov	a,r3
      00465F A3               [24] 1912 	inc	dptr
      004660 F0               [24] 1913 	movx	@dptr,a
      004661 EC               [12] 1914 	mov	a,r4
      004662 A3               [24] 1915 	inc	dptr
      004663 F0               [24] 1916 	movx	@dptr,a
      004664 90 09 C8         [24] 1917 	mov	dptr,#___memcpy_PARM_3
      004667 74 06            [12] 1918 	mov	a,#0x06
      004669 F0               [24] 1919 	movx	@dptr,a
      00466A E4               [12] 1920 	clr	a
      00466B A3               [24] 1921 	inc	dptr
      00466C F0               [24] 1922 	movx	@dptr,a
      00466D 90 03 CB         [24] 1923 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0001)
      004670 F5 F0            [12] 1924 	mov	b,a
      004672 C0 07            [24] 1925 	push	ar7
      004674 C0 06            [24] 1926 	push	ar6
      004676 C0 05            [24] 1927 	push	ar5
      004678 12 50 0F         [24] 1928 	lcall	___memcpy
      00467B D0 05            [24] 1929 	pop	ar5
      00467D D0 06            [24] 1930 	pop	ar6
      00467F D0 07            [24] 1931 	pop	ar7
                                   1932 ;	tcp.c:116: memcpy(response_ethernet_header + 6, ethernet_header, 6);  // Source MAC
      004681 8D 02            [24] 1933 	mov	ar2,r5
      004683 8E 03            [24] 1934 	mov	ar3,r6
      004685 8F 04            [24] 1935 	mov	ar4,r7
      004687 90 09 C5         [24] 1936 	mov	dptr,#___memcpy_PARM_2
      00468A EA               [12] 1937 	mov	a,r2
      00468B F0               [24] 1938 	movx	@dptr,a
      00468C EB               [12] 1939 	mov	a,r3
      00468D A3               [24] 1940 	inc	dptr
      00468E F0               [24] 1941 	movx	@dptr,a
      00468F EC               [12] 1942 	mov	a,r4
      004690 A3               [24] 1943 	inc	dptr
      004691 F0               [24] 1944 	movx	@dptr,a
      004692 90 09 C8         [24] 1945 	mov	dptr,#___memcpy_PARM_3
      004695 74 06            [12] 1946 	mov	a,#0x06
      004697 F0               [24] 1947 	movx	@dptr,a
      004698 E4               [12] 1948 	clr	a
      004699 A3               [24] 1949 	inc	dptr
      00469A F0               [24] 1950 	movx	@dptr,a
      00469B 90 03 D1         [24] 1951 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0007)
      00469E F5 F0            [12] 1952 	mov	b,a
      0046A0 C0 07            [24] 1953 	push	ar7
      0046A2 C0 06            [24] 1954 	push	ar6
      0046A4 C0 05            [24] 1955 	push	ar5
      0046A6 12 50 0F         [24] 1956 	lcall	___memcpy
      0046A9 D0 05            [24] 1957 	pop	ar5
      0046AB D0 06            [24] 1958 	pop	ar6
      0046AD D0 07            [24] 1959 	pop	ar7
                                   1960 ;	tcp.c:119: uint8_t *ip_header = packet + ETHERNET_HEADER_SIZE;
      0046AF 74 0E            [12] 1961 	mov	a,#0x0e
      0046B1 2D               [12] 1962 	add	a, r5
      0046B2 FA               [12] 1963 	mov	r2,a
      0046B3 E4               [12] 1964 	clr	a
      0046B4 3E               [12] 1965 	addc	a, r6
      0046B5 FB               [12] 1966 	mov	r3,a
      0046B6 8F 04            [24] 1967 	mov	ar4,r7
                                   1968 ;	tcp.c:120: uint8_t *response_ip_header = data_start + ETHERNET_HEADER_SIZE;
                                   1969 ;	tcp.c:123: memcpy(response_ip_header, ip_header, IP_HEADER_SIZE);
      0046B8 90 09 C5         [24] 1970 	mov	dptr,#___memcpy_PARM_2
      0046BB EA               [12] 1971 	mov	a,r2
      0046BC F0               [24] 1972 	movx	@dptr,a
      0046BD EB               [12] 1973 	mov	a,r3
      0046BE A3               [24] 1974 	inc	dptr
      0046BF F0               [24] 1975 	movx	@dptr,a
      0046C0 EC               [12] 1976 	mov	a,r4
      0046C1 A3               [24] 1977 	inc	dptr
      0046C2 F0               [24] 1978 	movx	@dptr,a
      0046C3 90 09 C8         [24] 1979 	mov	dptr,#___memcpy_PARM_3
      0046C6 74 14            [12] 1980 	mov	a,#0x14
      0046C8 F0               [24] 1981 	movx	@dptr,a
      0046C9 E4               [12] 1982 	clr	a
      0046CA A3               [24] 1983 	inc	dptr
      0046CB F0               [24] 1984 	movx	@dptr,a
      0046CC 90 03 D9         [24] 1985 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x000f)
      0046CF F5 F0            [12] 1986 	mov	b,a
      0046D1 C0 07            [24] 1987 	push	ar7
      0046D3 C0 06            [24] 1988 	push	ar6
      0046D5 C0 05            [24] 1989 	push	ar5
      0046D7 12 50 0F         [24] 1990 	lcall	___memcpy
      0046DA D0 05            [24] 1991 	pop	ar5
      0046DC D0 06            [24] 1992 	pop	ar6
      0046DE D0 07            [24] 1993 	pop	ar7
                                   1994 ;	tcp.c:124: response_ip_header[12] = ip_header[16];  // Swap Source IP
      0046E0 74 1E            [12] 1995 	mov	a,#0x1e
      0046E2 2D               [12] 1996 	add	a, r5
      0046E3 FA               [12] 1997 	mov	r2,a
      0046E4 E4               [12] 1998 	clr	a
      0046E5 3E               [12] 1999 	addc	a, r6
      0046E6 FB               [12] 2000 	mov	r3,a
      0046E7 8F 04            [24] 2001 	mov	ar4,r7
      0046E9 8A 82            [24] 2002 	mov	dpl,r2
      0046EB 8B 83            [24] 2003 	mov	dph,r3
      0046ED 8C F0            [24] 2004 	mov	b,r4
      0046EF 12 5E E3         [24] 2005 	lcall	__gptrget
      0046F2 FA               [12] 2006 	mov	r2,a
      0046F3 90 03 E5         [24] 2007 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x001b)
      0046F6 75 F0 00         [24] 2008 	mov	b,#0x00
      0046F9 EA               [12] 2009 	mov	a,r2
      0046FA 12 50 AB         [24] 2010 	lcall	__gptrput
                                   2011 ;	tcp.c:125: response_ip_header[13] = ip_header[17];
      0046FD 74 1F            [12] 2012 	mov	a,#0x1f
      0046FF 2D               [12] 2013 	add	a, r5
      004700 FA               [12] 2014 	mov	r2,a
      004701 E4               [12] 2015 	clr	a
      004702 3E               [12] 2016 	addc	a, r6
      004703 FB               [12] 2017 	mov	r3,a
      004704 8F 04            [24] 2018 	mov	ar4,r7
      004706 8A 82            [24] 2019 	mov	dpl,r2
      004708 8B 83            [24] 2020 	mov	dph,r3
      00470A 8C F0            [24] 2021 	mov	b,r4
      00470C 12 5E E3         [24] 2022 	lcall	__gptrget
      00470F FA               [12] 2023 	mov	r2,a
      004710 90 03 E6         [24] 2024 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x001c)
      004713 75 F0 00         [24] 2025 	mov	b,#0x00
      004716 EA               [12] 2026 	mov	a,r2
      004717 12 50 AB         [24] 2027 	lcall	__gptrput
                                   2028 ;	tcp.c:126: response_ip_header[14] = ip_header[18];
      00471A 74 20            [12] 2029 	mov	a,#0x20
      00471C 2D               [12] 2030 	add	a, r5
      00471D FA               [12] 2031 	mov	r2,a
      00471E E4               [12] 2032 	clr	a
      00471F 3E               [12] 2033 	addc	a, r6
      004720 FB               [12] 2034 	mov	r3,a
      004721 8F 04            [24] 2035 	mov	ar4,r7
      004723 8A 82            [24] 2036 	mov	dpl,r2
      004725 8B 83            [24] 2037 	mov	dph,r3
      004727 8C F0            [24] 2038 	mov	b,r4
      004729 12 5E E3         [24] 2039 	lcall	__gptrget
      00472C FA               [12] 2040 	mov	r2,a
      00472D 90 03 E7         [24] 2041 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x001d)
      004730 75 F0 00         [24] 2042 	mov	b,#0x00
      004733 EA               [12] 2043 	mov	a,r2
      004734 12 50 AB         [24] 2044 	lcall	__gptrput
                                   2045 ;	tcp.c:127: response_ip_header[15] = ip_header[19];
      004737 74 21            [12] 2046 	mov	a,#0x21
      004739 2D               [12] 2047 	add	a, r5
      00473A FA               [12] 2048 	mov	r2,a
      00473B E4               [12] 2049 	clr	a
      00473C 3E               [12] 2050 	addc	a, r6
      00473D FB               [12] 2051 	mov	r3,a
      00473E 8F 04            [24] 2052 	mov	ar4,r7
      004740 8A 82            [24] 2053 	mov	dpl,r2
      004742 8B 83            [24] 2054 	mov	dph,r3
      004744 8C F0            [24] 2055 	mov	b,r4
      004746 12 5E E3         [24] 2056 	lcall	__gptrget
      004749 FA               [12] 2057 	mov	r2,a
      00474A 90 03 E8         [24] 2058 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x001e)
      00474D 75 F0 00         [24] 2059 	mov	b,#0x00
      004750 EA               [12] 2060 	mov	a,r2
      004751 12 50 AB         [24] 2061 	lcall	__gptrput
                                   2062 ;	tcp.c:128: response_ip_header[16] = ip_header[12];  // Swap Destination IP
      004754 74 1A            [12] 2063 	mov	a,#0x1a
      004756 2D               [12] 2064 	add	a, r5
      004757 FA               [12] 2065 	mov	r2,a
      004758 E4               [12] 2066 	clr	a
      004759 3E               [12] 2067 	addc	a, r6
      00475A FB               [12] 2068 	mov	r3,a
      00475B 8F 04            [24] 2069 	mov	ar4,r7
      00475D 8A 82            [24] 2070 	mov	dpl,r2
      00475F 8B 83            [24] 2071 	mov	dph,r3
      004761 8C F0            [24] 2072 	mov	b,r4
      004763 12 5E E3         [24] 2073 	lcall	__gptrget
      004766 FA               [12] 2074 	mov	r2,a
      004767 90 03 E9         [24] 2075 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x001f)
      00476A 75 F0 00         [24] 2076 	mov	b,#0x00
      00476D EA               [12] 2077 	mov	a,r2
      00476E 12 50 AB         [24] 2078 	lcall	__gptrput
                                   2079 ;	tcp.c:129: response_ip_header[17] = ip_header[13];
      004771 74 1B            [12] 2080 	mov	a,#0x1b
      004773 2D               [12] 2081 	add	a, r5
      004774 FA               [12] 2082 	mov	r2,a
      004775 E4               [12] 2083 	clr	a
      004776 3E               [12] 2084 	addc	a, r6
      004777 FB               [12] 2085 	mov	r3,a
      004778 8F 04            [24] 2086 	mov	ar4,r7
      00477A 8A 82            [24] 2087 	mov	dpl,r2
      00477C 8B 83            [24] 2088 	mov	dph,r3
      00477E 8C F0            [24] 2089 	mov	b,r4
      004780 12 5E E3         [24] 2090 	lcall	__gptrget
      004783 FA               [12] 2091 	mov	r2,a
      004784 90 03 EA         [24] 2092 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0020)
      004787 75 F0 00         [24] 2093 	mov	b,#0x00
      00478A EA               [12] 2094 	mov	a,r2
      00478B 12 50 AB         [24] 2095 	lcall	__gptrput
                                   2096 ;	tcp.c:130: response_ip_header[18] = ip_header[14];
      00478E 74 1C            [12] 2097 	mov	a,#0x1c
      004790 2D               [12] 2098 	add	a, r5
      004791 FA               [12] 2099 	mov	r2,a
      004792 E4               [12] 2100 	clr	a
      004793 3E               [12] 2101 	addc	a, r6
      004794 FB               [12] 2102 	mov	r3,a
      004795 8F 04            [24] 2103 	mov	ar4,r7
      004797 8A 82            [24] 2104 	mov	dpl,r2
      004799 8B 83            [24] 2105 	mov	dph,r3
      00479B 8C F0            [24] 2106 	mov	b,r4
      00479D 12 5E E3         [24] 2107 	lcall	__gptrget
      0047A0 FA               [12] 2108 	mov	r2,a
      0047A1 90 03 EB         [24] 2109 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0021)
      0047A4 75 F0 00         [24] 2110 	mov	b,#0x00
      0047A7 EA               [12] 2111 	mov	a,r2
      0047A8 12 50 AB         [24] 2112 	lcall	__gptrput
                                   2113 ;	tcp.c:131: response_ip_header[19] = ip_header[15];
      0047AB 74 1D            [12] 2114 	mov	a,#0x1d
      0047AD 2D               [12] 2115 	add	a, r5
      0047AE FA               [12] 2116 	mov	r2,a
      0047AF E4               [12] 2117 	clr	a
      0047B0 3E               [12] 2118 	addc	a, r6
      0047B1 FB               [12] 2119 	mov	r3,a
      0047B2 8F 04            [24] 2120 	mov	ar4,r7
      0047B4 8A 82            [24] 2121 	mov	dpl,r2
      0047B6 8B 83            [24] 2122 	mov	dph,r3
      0047B8 8C F0            [24] 2123 	mov	b,r4
      0047BA 12 5E E3         [24] 2124 	lcall	__gptrget
      0047BD FA               [12] 2125 	mov	r2,a
      0047BE 90 03 EC         [24] 2126 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0022)
      0047C1 75 F0 00         [24] 2127 	mov	b,#0x00
      0047C4 EA               [12] 2128 	mov	a,r2
      0047C5 12 50 AB         [24] 2129 	lcall	__gptrput
                                   2130 ;	tcp.c:132: response_ip_header[10] = 0;              // Clear checksum
      0047C8 90 03 E3         [24] 2131 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0019)
      0047CB E4               [12] 2132 	clr	a
      0047CC 12 50 AB         [24] 2133 	lcall	__gptrput
                                   2134 ;	tcp.c:133: response_ip_header[11] = 0;
      0047CF 90 03 E4         [24] 2135 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x001a)
      0047D2 F5 F0            [12] 2136 	mov	b,a
      0047D4 12 50 AB         [24] 2137 	lcall	__gptrput
                                   2138 ;	tcp.c:136: uint8_t *tcp_header = packet + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
      0047D7 74 22            [12] 2139 	mov	a,#0x22
      0047D9 2D               [12] 2140 	add	a, r5
      0047DA F5 14            [12] 2141 	mov	_process_tcp_packet_sloc0_1_0,a
      0047DC E4               [12] 2142 	clr	a
      0047DD 3E               [12] 2143 	addc	a, r6
      0047DE F5 15            [12] 2144 	mov	(_process_tcp_packet_sloc0_1_0 + 1),a
      0047E0 8F 16            [24] 2145 	mov	(_process_tcp_packet_sloc0_1_0 + 2),r7
                                   2146 ;	tcp.c:137: uint8_t *response_tcp_header = data_start + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
                                   2147 ;	tcp.c:140: memcpy(response_tcp_header, tcp_header, TCP_HEADER_SIZE);
      0047E2 A8 14            [24] 2148 	mov	r0,_process_tcp_packet_sloc0_1_0
      0047E4 A9 15            [24] 2149 	mov	r1,(_process_tcp_packet_sloc0_1_0 + 1)
      0047E6 AC 16            [24] 2150 	mov	r4,(_process_tcp_packet_sloc0_1_0 + 2)
      0047E8 90 09 C5         [24] 2151 	mov	dptr,#___memcpy_PARM_2
      0047EB E8               [12] 2152 	mov	a,r0
      0047EC F0               [24] 2153 	movx	@dptr,a
      0047ED E9               [12] 2154 	mov	a,r1
      0047EE A3               [24] 2155 	inc	dptr
      0047EF F0               [24] 2156 	movx	@dptr,a
      0047F0 EC               [12] 2157 	mov	a,r4
      0047F1 A3               [24] 2158 	inc	dptr
      0047F2 F0               [24] 2159 	movx	@dptr,a
      0047F3 90 09 C8         [24] 2160 	mov	dptr,#___memcpy_PARM_3
      0047F6 74 14            [12] 2161 	mov	a,#0x14
      0047F8 F0               [24] 2162 	movx	@dptr,a
      0047F9 E4               [12] 2163 	clr	a
      0047FA A3               [24] 2164 	inc	dptr
      0047FB F0               [24] 2165 	movx	@dptr,a
      0047FC 90 03 ED         [24] 2166 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0023)
      0047FF F5 F0            [12] 2167 	mov	b,a
      004801 C0 07            [24] 2168 	push	ar7
      004803 C0 06            [24] 2169 	push	ar6
      004805 C0 05            [24] 2170 	push	ar5
      004807 12 50 0F         [24] 2171 	lcall	___memcpy
      00480A D0 05            [24] 2172 	pop	ar5
      00480C D0 06            [24] 2173 	pop	ar6
      00480E D0 07            [24] 2174 	pop	ar7
                                   2175 ;	tcp.c:141: response_tcp_header[0] = tcp_header[2];  // Swap Source Port
      004810 74 24            [12] 2176 	mov	a,#0x24
      004812 2D               [12] 2177 	add	a, r5
      004813 FA               [12] 2178 	mov	r2,a
      004814 E4               [12] 2179 	clr	a
      004815 3E               [12] 2180 	addc	a, r6
      004816 FB               [12] 2181 	mov	r3,a
      004817 8F 04            [24] 2182 	mov	ar4,r7
      004819 8A 82            [24] 2183 	mov	dpl,r2
      00481B 8B 83            [24] 2184 	mov	dph,r3
      00481D 8C F0            [24] 2185 	mov	b,r4
      00481F 12 5E E3         [24] 2186 	lcall	__gptrget
      004822 FA               [12] 2187 	mov	r2,a
      004823 90 03 ED         [24] 2188 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0023)
      004826 75 F0 00         [24] 2189 	mov	b,#0x00
      004829 EA               [12] 2190 	mov	a,r2
      00482A 12 50 AB         [24] 2191 	lcall	__gptrput
                                   2192 ;	tcp.c:142: response_tcp_header[1] = tcp_header[3];
      00482D 74 25            [12] 2193 	mov	a,#0x25
      00482F 2D               [12] 2194 	add	a, r5
      004830 FA               [12] 2195 	mov	r2,a
      004831 E4               [12] 2196 	clr	a
      004832 3E               [12] 2197 	addc	a, r6
      004833 FB               [12] 2198 	mov	r3,a
      004834 8F 04            [24] 2199 	mov	ar4,r7
      004836 8A 82            [24] 2200 	mov	dpl,r2
      004838 8B 83            [24] 2201 	mov	dph,r3
      00483A 8C F0            [24] 2202 	mov	b,r4
      00483C 12 5E E3         [24] 2203 	lcall	__gptrget
      00483F FA               [12] 2204 	mov	r2,a
      004840 90 03 EE         [24] 2205 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0024)
      004843 75 F0 00         [24] 2206 	mov	b,#0x00
      004846 EA               [12] 2207 	mov	a,r2
      004847 12 50 AB         [24] 2208 	lcall	__gptrput
                                   2209 ;	tcp.c:143: response_tcp_header[2] = tcp_header[0];  // Swap Destination Port
      00484A 85 14 82         [24] 2210 	mov	dpl,_process_tcp_packet_sloc0_1_0
      00484D 85 15 83         [24] 2211 	mov	dph,(_process_tcp_packet_sloc0_1_0 + 1)
      004850 85 16 F0         [24] 2212 	mov	b,(_process_tcp_packet_sloc0_1_0 + 2)
      004853 12 5E E3         [24] 2213 	lcall	__gptrget
      004856 FC               [12] 2214 	mov	r4,a
      004857 90 03 EF         [24] 2215 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0025)
      00485A 75 F0 00         [24] 2216 	mov	b,#0x00
      00485D EC               [12] 2217 	mov	a,r4
      00485E 12 50 AB         [24] 2218 	lcall	__gptrput
                                   2219 ;	tcp.c:144: response_tcp_header[3] = tcp_header[1];
      004861 74 23            [12] 2220 	mov	a,#0x23
      004863 2D               [12] 2221 	add	a, r5
      004864 FA               [12] 2222 	mov	r2,a
      004865 E4               [12] 2223 	clr	a
      004866 3E               [12] 2224 	addc	a, r6
      004867 FB               [12] 2225 	mov	r3,a
      004868 8F 04            [24] 2226 	mov	ar4,r7
      00486A 8A 82            [24] 2227 	mov	dpl,r2
      00486C 8B 83            [24] 2228 	mov	dph,r3
      00486E 8C F0            [24] 2229 	mov	b,r4
      004870 12 5E E3         [24] 2230 	lcall	__gptrget
      004873 FA               [12] 2231 	mov	r2,a
      004874 90 03 F0         [24] 2232 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0026)
      004877 75 F0 00         [24] 2233 	mov	b,#0x00
      00487A EA               [12] 2234 	mov	a,r2
      00487B 12 50 AB         [24] 2235 	lcall	__gptrput
                                   2236 ;	tcp.c:146: response_tcp_header[4] = 0;
      00487E 90 03 F1         [24] 2237 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0027)
      004881 E4               [12] 2238 	clr	a
      004882 12 50 AB         [24] 2239 	lcall	__gptrput
                                   2240 ;	tcp.c:147: response_tcp_header[5] = 0;
      004885 90 03 F2         [24] 2241 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0028)
      004888 F5 F0            [12] 2242 	mov	b,a
      00488A 12 50 AB         [24] 2243 	lcall	__gptrput
                                   2244 ;	tcp.c:148: response_tcp_header[6] = 0;
      00488D 90 03 F3         [24] 2245 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0029)
      004890 F5 F0            [12] 2246 	mov	b,a
      004892 12 50 AB         [24] 2247 	lcall	__gptrput
                                   2248 ;	tcp.c:149: response_tcp_header[7] = 0;
      004895 90 03 F4         [24] 2249 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x002a)
      004898 F5 F0            [12] 2250 	mov	b,a
      00489A 12 50 AB         [24] 2251 	lcall	__gptrput
                                   2252 ;	tcp.c:151: uint8_t SYN_SEQ3 = tcp_header[4];
      00489D 74 26            [12] 2253 	mov	a,#0x26
      00489F 2D               [12] 2254 	add	a, r5
      0048A0 FA               [12] 2255 	mov	r2,a
      0048A1 E4               [12] 2256 	clr	a
      0048A2 3E               [12] 2257 	addc	a, r6
      0048A3 FB               [12] 2258 	mov	r3,a
      0048A4 8F 04            [24] 2259 	mov	ar4,r7
      0048A6 8A 82            [24] 2260 	mov	dpl,r2
      0048A8 8B 83            [24] 2261 	mov	dph,r3
      0048AA 8C F0            [24] 2262 	mov	b,r4
      0048AC 12 5E E3         [24] 2263 	lcall	__gptrget
      0048AF FA               [12] 2264 	mov	r2,a
                                   2265 ;	tcp.c:152: uint8_t SYN_SEQ2 = tcp_header[5];
      0048B0 74 27            [12] 2266 	mov	a,#0x27
      0048B2 2D               [12] 2267 	add	a, r5
      0048B3 F9               [12] 2268 	mov	r1,a
      0048B4 E4               [12] 2269 	clr	a
      0048B5 3E               [12] 2270 	addc	a, r6
      0048B6 FB               [12] 2271 	mov	r3,a
      0048B7 8F 04            [24] 2272 	mov	ar4,r7
      0048B9 89 82            [24] 2273 	mov	dpl,r1
      0048BB 8B 83            [24] 2274 	mov	dph,r3
      0048BD 8C F0            [24] 2275 	mov	b,r4
      0048BF 12 5E E3         [24] 2276 	lcall	__gptrget
      0048C2 F9               [12] 2277 	mov	r1,a
                                   2278 ;	tcp.c:153: uint8_t SYN_SEQ1 = tcp_header[6];
      0048C3 74 28            [12] 2279 	mov	a,#0x28
      0048C5 2D               [12] 2280 	add	a, r5
      0048C6 F8               [12] 2281 	mov	r0,a
      0048C7 E4               [12] 2282 	clr	a
      0048C8 3E               [12] 2283 	addc	a, r6
      0048C9 FB               [12] 2284 	mov	r3,a
      0048CA 8F 04            [24] 2285 	mov	ar4,r7
      0048CC 88 82            [24] 2286 	mov	dpl,r0
      0048CE 8B 83            [24] 2287 	mov	dph,r3
      0048D0 8C F0            [24] 2288 	mov	b,r4
      0048D2 12 5E E3         [24] 2289 	lcall	__gptrget
      0048D5 F8               [12] 2290 	mov	r0,a
                                   2291 ;	tcp.c:154: uint8_t SYN_SEQ0 = tcp_header[7];
      0048D6 74 29            [12] 2292 	mov	a,#0x29
      0048D8 2D               [12] 2293 	add	a, r5
      0048D9 FD               [12] 2294 	mov	r5,a
      0048DA E4               [12] 2295 	clr	a
      0048DB 3E               [12] 2296 	addc	a, r6
      0048DC FE               [12] 2297 	mov	r6,a
      0048DD 8D 82            [24] 2298 	mov	dpl,r5
      0048DF 8E 83            [24] 2299 	mov	dph,r6
      0048E1 8F F0            [24] 2300 	mov	b,r7
      0048E3 12 5E E3         [24] 2301 	lcall	__gptrget
      0048E6 FD               [12] 2302 	mov	r5,a
                                   2303 ;	tcp.c:156: response_tcp_header[8] = SYN_SEQ3;
      0048E7 90 03 F5         [24] 2304 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x002b)
      0048EA 75 F0 00         [24] 2305 	mov	b,#0x00
      0048ED EA               [12] 2306 	mov	a,r2
      0048EE 12 50 AB         [24] 2307 	lcall	__gptrput
                                   2308 ;	tcp.c:157: response_tcp_header[9] = SYN_SEQ2;
      0048F1 90 03 F6         [24] 2309 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x002c)
      0048F4 E9               [12] 2310 	mov	a,r1
      0048F5 12 50 AB         [24] 2311 	lcall	__gptrput
                                   2312 ;	tcp.c:158: response_tcp_header[10] = SYN_SEQ1;
      0048F8 90 03 F7         [24] 2313 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x002d)
      0048FB E8               [12] 2314 	mov	a,r0
      0048FC 12 50 AB         [24] 2315 	lcall	__gptrput
                                   2316 ;	tcp.c:159: response_tcp_header[11] = SYN_SEQ0 + 1;
      0048FF 0D               [12] 2317 	inc	r5
      004900 90 03 F8         [24] 2318 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x002e)
      004903 ED               [12] 2319 	mov	a,r5
      004904 12 50 AB         [24] 2320 	lcall	__gptrput
                                   2321 ;	tcp.c:165: response_tcp_header[12] = 0x50;  // SYN (0x02) + ACK (0x10)
      004907 90 03 F9         [24] 2322 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x002f)
      00490A 74 50            [12] 2323 	mov	a,#0x50
      00490C 12 50 AB         [24] 2324 	lcall	__gptrput
                                   2325 ;	tcp.c:167: response_tcp_header[13] = 0x12;  // SYN (0x02) + ACK (0x10)
      00490F 90 03 FA         [24] 2326 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0030)
      004912 74 12            [12] 2327 	mov	a,#0x12
      004914 12 50 AB         [24] 2328 	lcall	__gptrput
                                   2329 ;	tcp.c:169: response_tcp_header[14] = 0xFF;
      004917 90 03 FB         [24] 2330 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0031)
      00491A 74 FF            [12] 2331 	mov	a,#0xff
      00491C 12 50 AB         [24] 2332 	lcall	__gptrput
                                   2333 ;	tcp.c:171: response_tcp_header[15] = 0xFF;
      00491F 90 03 FC         [24] 2334 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0032)
      004922 12 50 AB         [24] 2335 	lcall	__gptrput
                                   2336 ;	tcp.c:176: response_tcp_header[18] = 0;
      004925 90 03 FF         [24] 2337 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0035)
      004928 E4               [12] 2338 	clr	a
      004929 12 50 AB         [24] 2339 	lcall	__gptrput
                                   2340 ;	tcp.c:177: response_tcp_header[19] = 0;
      00492C 90 04 00         [24] 2341 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0036)
      00492F F5 F0            [12] 2342 	mov	b,a
      004931 12 50 AB         [24] 2343 	lcall	__gptrput
                                   2344 ;	tcp.c:183: response_ip_header[2] = (ip_total_length >> 8) & 0xFF;
      004934 90 03 DB         [24] 2345 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0011)
      004937 F5 F0            [12] 2346 	mov	b,a
      004939 12 50 AB         [24] 2347 	lcall	__gptrput
                                   2348 ;	tcp.c:184: response_ip_header[3] = ip_total_length & 0xFF;
      00493C 90 03 DC         [24] 2349 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0012)
      00493F F5 F0            [12] 2350 	mov	b,a
      004941 74 28            [12] 2351 	mov	a,#0x28
      004943 12 50 AB         [24] 2352 	lcall	__gptrput
                                   2353 ;	tcp.c:187: calculateIPChecksum(data_start);
      004946 90 03 CB         [24] 2354 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0001)
      004949 12 3F 9C         [24] 2355 	lcall	_calculateIPChecksum
                                   2356 ;	tcp.c:190: calculateTcpChecksum(data_start);
      00494C 90 03 CB         [24] 2357 	mov	dptr,#(_process_tcp_packet_response_10000_140 + 0x0001)
      00494F 75 F0 00         [24] 2358 	mov	b, #0x00
      004952 12 41 06         [24] 2359 	lcall	_calculateTcpChecksum
                                   2360 ;	tcp.c:213: *response_size = 1 + ETHERNET_HEADER_SIZE + ip_total_length; // Adding 4 for the MSS option size
      004955 90 03 C4         [24] 2361 	mov	dptr,#_process_tcp_packet_PARM_3
      004958 E0               [24] 2362 	movx	a,@dptr
      004959 FD               [12] 2363 	mov	r5,a
      00495A A3               [24] 2364 	inc	dptr
      00495B E0               [24] 2365 	movx	a,@dptr
      00495C FE               [12] 2366 	mov	r6,a
      00495D A3               [24] 2367 	inc	dptr
      00495E E0               [24] 2368 	movx	a,@dptr
      00495F FF               [12] 2369 	mov	r7,a
      004960 8D 82            [24] 2370 	mov	dpl,r5
      004962 8E 83            [24] 2371 	mov	dph,r6
      004964 8F F0            [24] 2372 	mov	b,r7
      004966 74 37            [12] 2373 	mov	a,#0x37
      004968 12 50 AB         [24] 2374 	lcall	__gptrput
      00496B A3               [24] 2375 	inc	dptr
      00496C E4               [12] 2376 	clr	a
      00496D 12 50 AB         [24] 2377 	lcall	__gptrput
                                   2378 ;	tcp.c:216: return response;
      004970 90 03 CA         [24] 2379 	mov	dptr,#_process_tcp_packet_response_10000_140
      004973 F5 F0            [12] 2380 	mov	b,a
                                   2381 ;	tcp.c:217: }
      004975 22               [24] 2382 	ret
                                   2383 ;------------------------------------------------------------
                                   2384 ;Allocation info for local variables in function 'print_hexdump'
                                   2385 ;------------------------------------------------------------
                                   2386 ;size                      Allocated with name '_print_hexdump_PARM_2'
                                   2387 ;data                      Allocated with name '_print_hexdump_data_10000_146'
                                   2388 ;i                         Allocated with name '_print_hexdump_i_20000_148'
                                   2389 ;------------------------------------------------------------
                                   2390 ;	tcp.c:221: void print_hexdump(const uint8_t *data, uint16_t size) {
                                   2391 ;	-----------------------------------------
                                   2392 ;	 function print_hexdump
                                   2393 ;	-----------------------------------------
      004976                       2394 _print_hexdump:
      004976 AF F0            [24] 2395 	mov	r7,b
      004978 AE 83            [24] 2396 	mov	r6,dph
      00497A E5 82            [12] 2397 	mov	a,dpl
      00497C 90 09 A9         [24] 2398 	mov	dptr,#_print_hexdump_data_10000_146
      00497F F0               [24] 2399 	movx	@dptr,a
      004980 EE               [12] 2400 	mov	a,r6
      004981 A3               [24] 2401 	inc	dptr
      004982 F0               [24] 2402 	movx	@dptr,a
      004983 EF               [12] 2403 	mov	a,r7
      004984 A3               [24] 2404 	inc	dptr
      004985 F0               [24] 2405 	movx	@dptr,a
                                   2406 ;	tcp.c:222: printf("\nHexdump (Size: %d):\n", size);
      004986 90 09 A7         [24] 2407 	mov	dptr,#_print_hexdump_PARM_2
      004989 E0               [24] 2408 	movx	a,@dptr
      00498A FE               [12] 2409 	mov	r6,a
      00498B A3               [24] 2410 	inc	dptr
      00498C E0               [24] 2411 	movx	a,@dptr
      00498D FF               [12] 2412 	mov	r7,a
      00498E C0 07            [24] 2413 	push	ar7
      004990 C0 06            [24] 2414 	push	ar6
      004992 C0 06            [24] 2415 	push	ar6
      004994 C0 07            [24] 2416 	push	ar7
      004996 74 56            [12] 2417 	mov	a,#___str_0
      004998 C0 E0            [24] 2418 	push	acc
      00499A 74 68            [12] 2419 	mov	a,#(___str_0 >> 8)
      00499C C0 E0            [24] 2420 	push	acc
      00499E 74 80            [12] 2421 	mov	a,#0x80
      0049A0 C0 E0            [24] 2422 	push	acc
      0049A2 12 54 C1         [24] 2423 	lcall	_printf
      0049A5 E5 81            [12] 2424 	mov	a,sp
      0049A7 24 FB            [12] 2425 	add	a,#0xfb
      0049A9 F5 81            [12] 2426 	mov	sp,a
      0049AB D0 06            [24] 2427 	pop	ar6
      0049AD D0 07            [24] 2428 	pop	ar7
                                   2429 ;	tcp.c:223: for (uint16_t i = 0; i < size; i++) {
      0049AF 90 09 A9         [24] 2430 	mov	dptr,#_print_hexdump_data_10000_146
      0049B2 E0               [24] 2431 	movx	a,@dptr
      0049B3 FB               [12] 2432 	mov	r3,a
      0049B4 A3               [24] 2433 	inc	dptr
      0049B5 E0               [24] 2434 	movx	a,@dptr
      0049B6 FC               [12] 2435 	mov	r4,a
      0049B7 A3               [24] 2436 	inc	dptr
      0049B8 E0               [24] 2437 	movx	a,@dptr
      0049B9 FD               [12] 2438 	mov	r5,a
      0049BA 79 00            [12] 2439 	mov	r1,#0x00
      0049BC 7A 00            [12] 2440 	mov	r2,#0x00
      0049BE                       2441 00107$:
      0049BE C3               [12] 2442 	clr	c
      0049BF E9               [12] 2443 	mov	a,r1
      0049C0 9E               [12] 2444 	subb	a,r6
      0049C1 EA               [12] 2445 	mov	a,r2
      0049C2 9F               [12] 2446 	subb	a,r7
      0049C3 40 03            [24] 2447 	jc	00136$
      0049C5 02 4A 66         [24] 2448 	ljmp	00103$
      0049C8                       2449 00136$:
                                   2450 ;	tcp.c:224: printf("%02X ", data[i]); // Print each byte in hexadecimal format
      0049C8 C0 06            [24] 2451 	push	ar6
      0049CA C0 07            [24] 2452 	push	ar7
      0049CC E9               [12] 2453 	mov	a,r1
      0049CD 2B               [12] 2454 	add	a, r3
      0049CE F8               [12] 2455 	mov	r0,a
      0049CF EA               [12] 2456 	mov	a,r2
      0049D0 3C               [12] 2457 	addc	a, r4
      0049D1 FE               [12] 2458 	mov	r6,a
      0049D2 8D 07            [24] 2459 	mov	ar7,r5
      0049D4 88 82            [24] 2460 	mov	dpl,r0
      0049D6 8E 83            [24] 2461 	mov	dph,r6
      0049D8 8F F0            [24] 2462 	mov	b,r7
      0049DA 12 5E E3         [24] 2463 	lcall	__gptrget
      0049DD F8               [12] 2464 	mov	r0,a
      0049DE 7F 00            [12] 2465 	mov	r7,#0x00
      0049E0 C0 07            [24] 2466 	push	ar7
      0049E2 C0 06            [24] 2467 	push	ar6
      0049E4 C0 05            [24] 2468 	push	ar5
      0049E6 C0 04            [24] 2469 	push	ar4
      0049E8 C0 03            [24] 2470 	push	ar3
      0049EA C0 02            [24] 2471 	push	ar2
      0049EC C0 01            [24] 2472 	push	ar1
      0049EE C0 00            [24] 2473 	push	ar0
      0049F0 C0 07            [24] 2474 	push	ar7
      0049F2 74 6C            [12] 2475 	mov	a,#___str_1
      0049F4 C0 E0            [24] 2476 	push	acc
      0049F6 74 68            [12] 2477 	mov	a,#(___str_1 >> 8)
      0049F8 C0 E0            [24] 2478 	push	acc
      0049FA 74 80            [12] 2479 	mov	a,#0x80
      0049FC C0 E0            [24] 2480 	push	acc
      0049FE 12 54 C1         [24] 2481 	lcall	_printf
      004A01 E5 81            [12] 2482 	mov	a,sp
      004A03 24 FB            [12] 2483 	add	a,#0xfb
      004A05 F5 81            [12] 2484 	mov	sp,a
      004A07 D0 01            [24] 2485 	pop	ar1
      004A09 D0 02            [24] 2486 	pop	ar2
      004A0B D0 03            [24] 2487 	pop	ar3
      004A0D D0 04            [24] 2488 	pop	ar4
      004A0F D0 05            [24] 2489 	pop	ar5
      004A11 D0 06            [24] 2490 	pop	ar6
      004A13 D0 07            [24] 2491 	pop	ar7
                                   2492 ;	tcp.c:225: if ((i + 1) % 16 == 0) {
      004A15 89 06            [24] 2493 	mov	ar6,r1
      004A17 8A 07            [24] 2494 	mov	ar7,r2
      004A19 0E               [12] 2495 	inc	r6
      004A1A BE 00 01         [24] 2496 	cjne	r6,#0x00,00137$
      004A1D 0F               [12] 2497 	inc	r7
      004A1E                       2498 00137$:
      004A1E EE               [12] 2499 	mov	a,r6
      004A1F 54 0F            [12] 2500 	anl	a,#0x0f
      004A21 60 06            [24] 2501 	jz	00139$
      004A23 D0 07            [24] 2502 	pop	ar7
      004A25 D0 06            [24] 2503 	pop	ar6
      004A27 80 35            [24] 2504 	sjmp	00108$
      004A29                       2505 00139$:
      004A29 D0 07            [24] 2506 	pop	ar7
      004A2B D0 06            [24] 2507 	pop	ar6
                                   2508 ;	tcp.c:226: printf("\n"); // Newline after every 16 bytes for readability
      004A2D C0 07            [24] 2509 	push	ar7
      004A2F C0 06            [24] 2510 	push	ar6
      004A31 C0 05            [24] 2511 	push	ar5
      004A33 C0 04            [24] 2512 	push	ar4
      004A35 C0 03            [24] 2513 	push	ar3
      004A37 C0 02            [24] 2514 	push	ar2
      004A39 C0 01            [24] 2515 	push	ar1
      004A3B 74 72            [12] 2516 	mov	a,#___str_2
      004A3D C0 E0            [24] 2517 	push	acc
      004A3F 74 68            [12] 2518 	mov	a,#(___str_2 >> 8)
      004A41 C0 E0            [24] 2519 	push	acc
      004A43 74 80            [12] 2520 	mov	a,#0x80
      004A45 C0 E0            [24] 2521 	push	acc
      004A47 12 54 C1         [24] 2522 	lcall	_printf
      004A4A 15 81            [12] 2523 	dec	sp
      004A4C 15 81            [12] 2524 	dec	sp
      004A4E 15 81            [12] 2525 	dec	sp
      004A50 D0 01            [24] 2526 	pop	ar1
      004A52 D0 02            [24] 2527 	pop	ar2
      004A54 D0 03            [24] 2528 	pop	ar3
      004A56 D0 04            [24] 2529 	pop	ar4
      004A58 D0 05            [24] 2530 	pop	ar5
      004A5A D0 06            [24] 2531 	pop	ar6
      004A5C D0 07            [24] 2532 	pop	ar7
      004A5E                       2533 00108$:
                                   2534 ;	tcp.c:223: for (uint16_t i = 0; i < size; i++) {
      004A5E 09               [12] 2535 	inc	r1
      004A5F B9 00 01         [24] 2536 	cjne	r1,#0x00,00140$
      004A62 0A               [12] 2537 	inc	r2
      004A63                       2538 00140$:
      004A63 02 49 BE         [24] 2539 	ljmp	00107$
      004A66                       2540 00103$:
                                   2541 ;	tcp.c:229: if (size % 16 != 0) {
      004A66 EE               [12] 2542 	mov	a,r6
      004A67 54 0F            [12] 2543 	anl	a,#0x0f
      004A69 60 15            [24] 2544 	jz	00109$
                                   2545 ;	tcp.c:230: printf("\n"); // Final newline if not already printed
      004A6B 74 72            [12] 2546 	mov	a,#___str_2
      004A6D C0 E0            [24] 2547 	push	acc
      004A6F 74 68            [12] 2548 	mov	a,#(___str_2 >> 8)
      004A71 C0 E0            [24] 2549 	push	acc
      004A73 74 80            [12] 2550 	mov	a,#0x80
      004A75 C0 E0            [24] 2551 	push	acc
      004A77 12 54 C1         [24] 2552 	lcall	_printf
      004A7A 15 81            [12] 2553 	dec	sp
      004A7C 15 81            [12] 2554 	dec	sp
      004A7E 15 81            [12] 2555 	dec	sp
      004A80                       2556 00109$:
                                   2557 ;	tcp.c:232: }
      004A80 22               [24] 2558 	ret
                                   2559 ;------------------------------------------------------------
                                   2560 ;Allocation info for local variables in function 'process_packet_from_buffer'
                                   2561 ;------------------------------------------------------------
                                   2562 ;sloc0                     Allocated with name '_process_packet_from_buffer_sloc0_1_0'
                                   2563 ;start_address             Allocated with name '_process_packet_from_buffer_start_address_10000_152'
                                   2564 ;next_packet_start         Allocated with name '_process_packet_from_buffer_next_packet_start_10001_155'
                                   2565 ;next_start_address        Allocated with name '_process_packet_from_buffer_next_start_address_10001_155'
                                   2566 ;packet_size               Allocated with name '_process_packet_from_buffer_packet_size_10001_155'
                                   2567 ;response_size             Allocated with name '_process_packet_from_buffer_response_size_10001_155'
                                   2568 ;packet_data               Allocated with name '_process_packet_from_buffer_packet_data_10002_158'
                                   2569 ;response                  Allocated with name '_process_packet_from_buffer_response_10003_161'
                                   2570 ;------------------------------------------------------------
                                   2571 ;	tcp.c:235: void process_packet_from_buffer(uint16_t start_address) {
                                   2572 ;	-----------------------------------------
                                   2573 ;	 function process_packet_from_buffer
                                   2574 ;	-----------------------------------------
      004A81                       2575 _process_packet_from_buffer:
      004A81 AF 83            [24] 2576 	mov	r7,dph
      004A83 E5 82            [12] 2577 	mov	a,dpl
      004A85 90 09 AC         [24] 2578 	mov	dptr,#_process_packet_from_buffer_start_address_10000_152
      004A88 F0               [24] 2579 	movx	@dptr,a
      004A89 EF               [12] 2580 	mov	a,r7
      004A8A A3               [24] 2581 	inc	dptr
      004A8B F0               [24] 2582 	movx	@dptr,a
                                   2583 ;	tcp.c:237: if (start_address > 0x1FFF) {
      004A8C 90 09 AC         [24] 2584 	mov	dptr,#_process_packet_from_buffer_start_address_10000_152
      004A8F E0               [24] 2585 	movx	a,@dptr
      004A90 FE               [12] 2586 	mov	r6,a
      004A91 A3               [24] 2587 	inc	dptr
      004A92 E0               [24] 2588 	movx	a,@dptr
      004A93 FF               [12] 2589 	mov	r7,a
      004A94 8E 04            [24] 2590 	mov	ar4,r6
      004A96 8F 05            [24] 2591 	mov	ar5,r7
      004A98 C3               [12] 2592 	clr	c
      004A99 74 FF            [12] 2593 	mov	a,#0xff
      004A9B 9C               [12] 2594 	subb	a,r4
      004A9C 74 1F            [12] 2595 	mov	a,#0x1f
      004A9E 9D               [12] 2596 	subb	a,r5
      004A9F 50 1A            [24] 2597 	jnc	00102$
                                   2598 ;	tcp.c:238: printf("\n\rInvalid start address: %04X\n\r", start_address);
      004AA1 C0 06            [24] 2599 	push	ar6
      004AA3 C0 07            [24] 2600 	push	ar7
      004AA5 74 74            [12] 2601 	mov	a,#___str_3
      004AA7 C0 E0            [24] 2602 	push	acc
      004AA9 74 68            [12] 2603 	mov	a,#(___str_3 >> 8)
      004AAB C0 E0            [24] 2604 	push	acc
      004AAD 74 80            [12] 2605 	mov	a,#0x80
      004AAF C0 E0            [24] 2606 	push	acc
      004AB1 12 54 C1         [24] 2607 	lcall	_printf
      004AB4 E5 81            [12] 2608 	mov	a,sp
      004AB6 24 FB            [12] 2609 	add	a,#0xfb
      004AB8 F5 81            [12] 2610 	mov	sp,a
                                   2611 ;	tcp.c:239: return;
      004ABA 22               [24] 2612 	ret
      004ABB                       2613 00102$:
                                   2614 ;	tcp.c:248: if (spi_buffer_read(2, start_address, next_packet_start) != 2) {
      004ABB 90 03 95         [24] 2615 	mov	dptr,#_spi_buffer_read_PARM_2
      004ABE EE               [12] 2616 	mov	a,r6
      004ABF F0               [24] 2617 	movx	@dptr,a
      004AC0 EF               [12] 2618 	mov	a,r7
      004AC1 A3               [24] 2619 	inc	dptr
      004AC2 F0               [24] 2620 	movx	@dptr,a
      004AC3 90 03 97         [24] 2621 	mov	dptr,#_spi_buffer_read_PARM_3
      004AC6 74 AE            [12] 2622 	mov	a,#_process_packet_from_buffer_next_packet_start_10001_155
      004AC8 F0               [24] 2623 	movx	@dptr,a
      004AC9 74 09            [12] 2624 	mov	a,#(_process_packet_from_buffer_next_packet_start_10001_155 >> 8)
      004ACB A3               [24] 2625 	inc	dptr
      004ACC F0               [24] 2626 	movx	@dptr,a
      004ACD E4               [12] 2627 	clr	a
      004ACE A3               [24] 2628 	inc	dptr
      004ACF F0               [24] 2629 	movx	@dptr,a
      004AD0 90 00 02         [24] 2630 	mov	dptr,#0x0002
      004AD3 C0 07            [24] 2631 	push	ar7
      004AD5 C0 06            [24] 2632 	push	ar6
      004AD7 C0 05            [24] 2633 	push	ar5
      004AD9 C0 04            [24] 2634 	push	ar4
      004ADB 12 3C D5         [24] 2635 	lcall	_spi_buffer_read
      004ADE AA 82            [24] 2636 	mov	r2, dpl
      004AE0 AB 83            [24] 2637 	mov	r3, dph
      004AE2 D0 04            [24] 2638 	pop	ar4
      004AE4 D0 05            [24] 2639 	pop	ar5
      004AE6 D0 06            [24] 2640 	pop	ar6
      004AE8 D0 07            [24] 2641 	pop	ar7
      004AEA BA 02 05         [24] 2642 	cjne	r2,#0x02,00153$
      004AED BB 00 02         [24] 2643 	cjne	r3,#0x00,00153$
      004AF0 80 16            [24] 2644 	sjmp	00104$
      004AF2                       2645 00153$:
                                   2646 ;	tcp.c:249: printf("\n\rFailed to read packet start address bytes\n\r");
      004AF2 74 94            [12] 2647 	mov	a,#___str_4
      004AF4 C0 E0            [24] 2648 	push	acc
      004AF6 74 68            [12] 2649 	mov	a,#(___str_4 >> 8)
      004AF8 C0 E0            [24] 2650 	push	acc
      004AFA 74 80            [12] 2651 	mov	a,#0x80
      004AFC C0 E0            [24] 2652 	push	acc
      004AFE 12 54 C1         [24] 2653 	lcall	_printf
      004B01 15 81            [12] 2654 	dec	sp
      004B03 15 81            [12] 2655 	dec	sp
      004B05 15 81            [12] 2656 	dec	sp
                                   2657 ;	tcp.c:250: return;
      004B07 22               [24] 2658 	ret
      004B08                       2659 00104$:
                                   2660 ;	tcp.c:254: next_start_address = ((uint16_t)next_packet_start[1] << 8) | next_packet_start[0];
      004B08 90 09 AF         [24] 2661 	mov	dptr,#(_process_packet_from_buffer_next_packet_start_10001_155 + 0x0001)
      004B0B E0               [24] 2662 	movx	a,@dptr
      004B0C FA               [12] 2663 	mov	r2,a
      004B0D 7B 00            [12] 2664 	mov	r3,#0x00
      004B0F 90 09 AE         [24] 2665 	mov	dptr,#_process_packet_from_buffer_next_packet_start_10001_155
      004B12 E0               [24] 2666 	movx	a,@dptr
      004B13 79 00            [12] 2667 	mov	r1,#0x00
      004B15 42 03            [12] 2668 	orl	ar3,a
      004B17 E9               [12] 2669 	mov	a,r1
      004B18 42 02            [12] 2670 	orl	ar2,a
                                   2671 ;	tcp.c:257: if (next_start_address < start_address) {
      004B1A C3               [12] 2672 	clr	c
      004B1B EB               [12] 2673 	mov	a,r3
      004B1C 9E               [12] 2674 	subb	a,r6
      004B1D EA               [12] 2675 	mov	a,r2
      004B1E 9F               [12] 2676 	subb	a,r7
      004B1F 50 1A            [24] 2677 	jnc	00106$
                                   2678 ;	tcp.c:258: printf("\n\rInvalid next start address: 0x%04X\n\r", next_start_address);
      004B21 C0 03            [24] 2679 	push	ar3
      004B23 C0 02            [24] 2680 	push	ar2
      004B25 74 C2            [12] 2681 	mov	a,#___str_5
      004B27 C0 E0            [24] 2682 	push	acc
      004B29 74 68            [12] 2683 	mov	a,#(___str_5 >> 8)
      004B2B C0 E0            [24] 2684 	push	acc
      004B2D 74 80            [12] 2685 	mov	a,#0x80
      004B2F C0 E0            [24] 2686 	push	acc
      004B31 12 54 C1         [24] 2687 	lcall	_printf
      004B34 E5 81            [12] 2688 	mov	a,sp
      004B36 24 FB            [12] 2689 	add	a,#0xfb
      004B38 F5 81            [12] 2690 	mov	sp,a
                                   2691 ;	tcp.c:259: return;
      004B3A 22               [24] 2692 	ret
      004B3B                       2693 00106$:
                                   2694 ;	tcp.c:261: packet_size = next_start_address - (start_address+6);
      004B3B 74 06            [12] 2695 	mov	a,#0x06
      004B3D 2C               [12] 2696 	add	a, r4
      004B3E FE               [12] 2697 	mov	r6,a
      004B3F E4               [12] 2698 	clr	a
      004B40 3D               [12] 2699 	addc	a, r5
      004B41 FF               [12] 2700 	mov	r7,a
      004B42 EB               [12] 2701 	mov	a,r3
      004B43 C3               [12] 2702 	clr	c
      004B44 9E               [12] 2703 	subb	a,r6
      004B45 FE               [12] 2704 	mov	r6,a
      004B46 EA               [12] 2705 	mov	a,r2
      004B47 9F               [12] 2706 	subb	a,r7
      004B48 FF               [12] 2707 	mov	r7,a
                                   2708 ;	tcp.c:264: uint8_t *packet_data = (uint8_t *)malloc(packet_size);
      004B49 8E 00            [24] 2709 	mov	ar0,r6
      004B4B 8F 01            [24] 2710 	mov	ar1,r7
      004B4D 88 82            [24] 2711 	mov	dpl, r0
      004B4F 89 83            [24] 2712 	mov	dph, r1
      004B51 C0 07            [24] 2713 	push	ar7
      004B53 C0 06            [24] 2714 	push	ar6
      004B55 C0 05            [24] 2715 	push	ar5
      004B57 C0 04            [24] 2716 	push	ar4
      004B59 C0 03            [24] 2717 	push	ar3
      004B5B C0 02            [24] 2718 	push	ar2
      004B5D 12 52 0B         [24] 2719 	lcall	_malloc
      004B60 A8 82            [24] 2720 	mov	r0, dpl
      004B62 A9 83            [24] 2721 	mov	r1, dph
      004B64 D0 02            [24] 2722 	pop	ar2
      004B66 D0 03            [24] 2723 	pop	ar3
      004B68 D0 04            [24] 2724 	pop	ar4
      004B6A D0 05            [24] 2725 	pop	ar5
      004B6C D0 06            [24] 2726 	pop	ar6
      004B6E D0 07            [24] 2727 	pop	ar7
      004B70 88 17            [24] 2728 	mov	_process_packet_from_buffer_sloc0_1_0,r0
      004B72 89 18            [24] 2729 	mov	(_process_packet_from_buffer_sloc0_1_0 + 1),r1
      004B74 75 19 00         [24] 2730 	mov	(_process_packet_from_buffer_sloc0_1_0 + 2),#0x00
                                   2731 ;	tcp.c:265: if (packet_data == NULL) {
      004B77 E5 17            [12] 2732 	mov	a,_process_packet_from_buffer_sloc0_1_0
      004B79 45 18            [12] 2733 	orl	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004B7B 70 1A            [24] 2734 	jnz	00108$
                                   2735 ;	tcp.c:266: printf("\n\rMemory allocation failed for packet size: %d\n\r", packet_size);
      004B7D C0 06            [24] 2736 	push	ar6
      004B7F C0 07            [24] 2737 	push	ar7
      004B81 74 E9            [12] 2738 	mov	a,#___str_6
      004B83 C0 E0            [24] 2739 	push	acc
      004B85 74 68            [12] 2740 	mov	a,#(___str_6 >> 8)
      004B87 C0 E0            [24] 2741 	push	acc
      004B89 74 80            [12] 2742 	mov	a,#0x80
      004B8B C0 E0            [24] 2743 	push	acc
      004B8D 12 54 C1         [24] 2744 	lcall	_printf
      004B90 E5 81            [12] 2745 	mov	a,sp
      004B92 24 FB            [12] 2746 	add	a,#0xfb
      004B94 F5 81            [12] 2747 	mov	sp,a
                                   2748 ;	tcp.c:267: return;
      004B96 22               [24] 2749 	ret
      004B97                       2750 00108$:
                                   2751 ;	tcp.c:271: if (spi_buffer_read(packet_size, start_address+6, packet_data) != packet_size) {
      004B97 8E 00            [24] 2752 	mov	ar0,r6
      004B99 8F 01            [24] 2753 	mov	ar1,r7
      004B9B 74 06            [12] 2754 	mov	a,#0x06
      004B9D 2C               [12] 2755 	add	a, r4
      004B9E FC               [12] 2756 	mov	r4,a
      004B9F E4               [12] 2757 	clr	a
      004BA0 3D               [12] 2758 	addc	a, r5
      004BA1 FD               [12] 2759 	mov	r5,a
      004BA2 90 03 95         [24] 2760 	mov	dptr,#_spi_buffer_read_PARM_2
      004BA5 EC               [12] 2761 	mov	a,r4
      004BA6 F0               [24] 2762 	movx	@dptr,a
      004BA7 ED               [12] 2763 	mov	a,r5
      004BA8 A3               [24] 2764 	inc	dptr
      004BA9 F0               [24] 2765 	movx	@dptr,a
      004BAA 90 03 97         [24] 2766 	mov	dptr,#_spi_buffer_read_PARM_3
      004BAD E5 17            [12] 2767 	mov	a,_process_packet_from_buffer_sloc0_1_0
      004BAF F0               [24] 2768 	movx	@dptr,a
      004BB0 E5 18            [12] 2769 	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004BB2 A3               [24] 2770 	inc	dptr
      004BB3 F0               [24] 2771 	movx	@dptr,a
      004BB4 E5 19            [12] 2772 	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 2)
      004BB6 A3               [24] 2773 	inc	dptr
      004BB7 F0               [24] 2774 	movx	@dptr,a
      004BB8 88 82            [24] 2775 	mov	dpl, r0
      004BBA 89 83            [24] 2776 	mov	dph, r1
      004BBC C0 07            [24] 2777 	push	ar7
      004BBE C0 06            [24] 2778 	push	ar6
      004BC0 C0 03            [24] 2779 	push	ar3
      004BC2 C0 02            [24] 2780 	push	ar2
      004BC4 12 3C D5         [24] 2781 	lcall	_spi_buffer_read
      004BC7 AC 82            [24] 2782 	mov	r4, dpl
      004BC9 AD 83            [24] 2783 	mov	r5, dph
      004BCB D0 02            [24] 2784 	pop	ar2
      004BCD D0 03            [24] 2785 	pop	ar3
      004BCF D0 06            [24] 2786 	pop	ar6
      004BD1 D0 07            [24] 2787 	pop	ar7
      004BD3 EC               [12] 2788 	mov	a,r4
      004BD4 B5 06 06         [24] 2789 	cjne	a,ar6,00156$
      004BD7 ED               [12] 2790 	mov	a,r5
      004BD8 B5 07 02         [24] 2791 	cjne	a,ar7,00156$
      004BDB 80 24            [24] 2792 	sjmp	00110$
      004BDD                       2793 00156$:
                                   2794 ;	tcp.c:272: printf("\n\rFailed to read packet data\n\r");
      004BDD 74 1A            [12] 2795 	mov	a,#___str_7
      004BDF C0 E0            [24] 2796 	push	acc
      004BE1 74 69            [12] 2797 	mov	a,#(___str_7 >> 8)
      004BE3 C0 E0            [24] 2798 	push	acc
      004BE5 74 80            [12] 2799 	mov	a,#0x80
      004BE7 C0 E0            [24] 2800 	push	acc
      004BE9 12 54 C1         [24] 2801 	lcall	_printf
      004BEC 15 81            [12] 2802 	dec	sp
      004BEE 15 81            [12] 2803 	dec	sp
      004BF0 15 81            [12] 2804 	dec	sp
                                   2805 ;	tcp.c:273: free(packet_data);
      004BF2 AC 17            [24] 2806 	mov	r4,_process_packet_from_buffer_sloc0_1_0
      004BF4 A9 18            [24] 2807 	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004BF6 7D 00            [12] 2808 	mov	r5,#0x00
      004BF8 8C 82            [24] 2809 	mov	dpl, r4
      004BFA 89 83            [24] 2810 	mov	dph, r1
      004BFC 8D F0            [24] 2811 	mov	b, r5
                                   2812 ;	tcp.c:274: return;
      004BFE 02 4E B8         [24] 2813 	ljmp	_free
      004C01                       2814 00110$:
                                   2815 ;	tcp.c:278: uint8_t *response = process_tcp_packet(packet_data, packet_size, &response_size);
      004C01 90 03 C2         [24] 2816 	mov	dptr,#_process_tcp_packet_PARM_2
      004C04 EE               [12] 2817 	mov	a,r6
      004C05 F0               [24] 2818 	movx	@dptr,a
      004C06 EF               [12] 2819 	mov	a,r7
      004C07 A3               [24] 2820 	inc	dptr
      004C08 F0               [24] 2821 	movx	@dptr,a
      004C09 90 03 C4         [24] 2822 	mov	dptr,#_process_tcp_packet_PARM_3
      004C0C 74 B0            [12] 2823 	mov	a,#_process_packet_from_buffer_response_size_10001_155
      004C0E F0               [24] 2824 	movx	@dptr,a
      004C0F 74 09            [12] 2825 	mov	a,#(_process_packet_from_buffer_response_size_10001_155 >> 8)
      004C11 A3               [24] 2826 	inc	dptr
      004C12 F0               [24] 2827 	movx	@dptr,a
      004C13 E4               [12] 2828 	clr	a
      004C14 A3               [24] 2829 	inc	dptr
      004C15 F0               [24] 2830 	movx	@dptr,a
      004C16 85 17 82         [24] 2831 	mov	dpl, _process_packet_from_buffer_sloc0_1_0
      004C19 85 18 83         [24] 2832 	mov	dph, (_process_packet_from_buffer_sloc0_1_0 + 1)
      004C1C 85 19 F0         [24] 2833 	mov	b, (_process_packet_from_buffer_sloc0_1_0 + 2)
      004C1F C0 07            [24] 2834 	push	ar7
      004C21 C0 06            [24] 2835 	push	ar6
      004C23 C0 03            [24] 2836 	push	ar3
      004C25 C0 02            [24] 2837 	push	ar2
      004C27 12 45 E9         [24] 2838 	lcall	_process_tcp_packet
      004C2A A9 82            [24] 2839 	mov	r1, dpl
      004C2C AC 83            [24] 2840 	mov	r4, dph
      004C2E AD F0            [24] 2841 	mov	r5, b
      004C30 D0 02            [24] 2842 	pop	ar2
      004C32 D0 03            [24] 2843 	pop	ar3
      004C34 D0 06            [24] 2844 	pop	ar6
      004C36 D0 07            [24] 2845 	pop	ar7
                                   2846 ;	tcp.c:281: if (response != NULL) {
      004C38 E9               [12] 2847 	mov	a,r1
      004C39 4C               [12] 2848 	orl	a,r4
      004C3A 70 03            [24] 2849 	jnz	00157$
      004C3C 02 4C C0         [24] 2850 	ljmp	00112$
      004C3F                       2851 00157$:
                                   2852 ;	tcp.c:282: printf("\nProcessed response data:\n");
      004C3F C0 03            [24] 2853 	push	ar3
      004C41 C0 02            [24] 2854 	push	ar2
      004C43 C0 07            [24] 2855 	push	ar7
      004C45 C0 06            [24] 2856 	push	ar6
      004C47 C0 05            [24] 2857 	push	ar5
      004C49 C0 04            [24] 2858 	push	ar4
      004C4B C0 03            [24] 2859 	push	ar3
      004C4D C0 02            [24] 2860 	push	ar2
      004C4F C0 01            [24] 2861 	push	ar1
      004C51 74 39            [12] 2862 	mov	a,#___str_8
      004C53 C0 E0            [24] 2863 	push	acc
      004C55 74 69            [12] 2864 	mov	a,#(___str_8 >> 8)
      004C57 C0 E0            [24] 2865 	push	acc
      004C59 74 80            [12] 2866 	mov	a,#0x80
      004C5B C0 E0            [24] 2867 	push	acc
      004C5D 12 54 C1         [24] 2868 	lcall	_printf
      004C60 15 81            [12] 2869 	dec	sp
      004C62 15 81            [12] 2870 	dec	sp
      004C64 15 81            [12] 2871 	dec	sp
      004C66 D0 01            [24] 2872 	pop	ar1
      004C68 D0 02            [24] 2873 	pop	ar2
      004C6A D0 03            [24] 2874 	pop	ar3
      004C6C D0 04            [24] 2875 	pop	ar4
      004C6E D0 05            [24] 2876 	pop	ar5
      004C70 D0 06            [24] 2877 	pop	ar6
      004C72 D0 07            [24] 2878 	pop	ar7
                                   2879 ;	tcp.c:284: transmit_tcp_packet(response, response_size);
      004C74 90 09 B0         [24] 2880 	mov	dptr,#_process_packet_from_buffer_response_size_10001_155
      004C77 E0               [24] 2881 	movx	a,@dptr
      004C78 F8               [12] 2882 	mov	r0,a
      004C79 A3               [24] 2883 	inc	dptr
      004C7A E0               [24] 2884 	movx	a,@dptr
      004C7B FB               [12] 2885 	mov	r3,a
      004C7C 90 09 B2         [24] 2886 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004C7F E8               [12] 2887 	mov	a,r0
      004C80 F0               [24] 2888 	movx	@dptr,a
      004C81 EB               [12] 2889 	mov	a,r3
      004C82 A3               [24] 2890 	inc	dptr
      004C83 F0               [24] 2891 	movx	@dptr,a
      004C84 89 82            [24] 2892 	mov	dpl, r1
      004C86 8C 83            [24] 2893 	mov	dph, r4
      004C88 8D F0            [24] 2894 	mov	b, r5
      004C8A C0 07            [24] 2895 	push	ar7
      004C8C C0 06            [24] 2896 	push	ar6
      004C8E C0 05            [24] 2897 	push	ar5
      004C90 C0 04            [24] 2898 	push	ar4
      004C92 C0 03            [24] 2899 	push	ar3
      004C94 C0 02            [24] 2900 	push	ar2
      004C96 C0 01            [24] 2901 	push	ar1
      004C98 12 4D 31         [24] 2902 	lcall	_transmit_tcp_packet
      004C9B D0 01            [24] 2903 	pop	ar1
      004C9D D0 02            [24] 2904 	pop	ar2
      004C9F D0 03            [24] 2905 	pop	ar3
      004CA1 D0 04            [24] 2906 	pop	ar4
      004CA3 D0 05            [24] 2907 	pop	ar5
                                   2908 ;	tcp.c:285: free(response); // Free response memory if allocated dynamically
      004CA5 89 82            [24] 2909 	mov	dpl, r1
      004CA7 8C 83            [24] 2910 	mov	dph, r4
      004CA9 8D F0            [24] 2911 	mov	b, r5
      004CAB C0 03            [24] 2912 	push	ar3
      004CAD C0 02            [24] 2913 	push	ar2
      004CAF 12 4E B8         [24] 2914 	lcall	_free
      004CB2 D0 02            [24] 2915 	pop	ar2
      004CB4 D0 03            [24] 2916 	pop	ar3
      004CB6 D0 06            [24] 2917 	pop	ar6
      004CB8 D0 07            [24] 2918 	pop	ar7
      004CBA D0 02            [24] 2919 	pop	ar2
      004CBC D0 03            [24] 2920 	pop	ar3
      004CBE 80 25            [24] 2921 	sjmp	00113$
      004CC0                       2922 00112$:
                                   2923 ;	tcp.c:287: printf("\nNo response generated by TCP packet processing.\n");
      004CC0 C0 07            [24] 2924 	push	ar7
      004CC2 C0 06            [24] 2925 	push	ar6
      004CC4 C0 03            [24] 2926 	push	ar3
      004CC6 C0 02            [24] 2927 	push	ar2
      004CC8 74 54            [12] 2928 	mov	a,#___str_9
      004CCA C0 E0            [24] 2929 	push	acc
      004CCC 74 69            [12] 2930 	mov	a,#(___str_9 >> 8)
      004CCE C0 E0            [24] 2931 	push	acc
      004CD0 74 80            [12] 2932 	mov	a,#0x80
      004CD2 C0 E0            [24] 2933 	push	acc
      004CD4 12 54 C1         [24] 2934 	lcall	_printf
      004CD7 15 81            [12] 2935 	dec	sp
      004CD9 15 81            [12] 2936 	dec	sp
      004CDB 15 81            [12] 2937 	dec	sp
      004CDD D0 02            [24] 2938 	pop	ar2
      004CDF D0 03            [24] 2939 	pop	ar3
      004CE1 D0 06            [24] 2940 	pop	ar6
      004CE3 D0 07            [24] 2941 	pop	ar7
      004CE5                       2942 00113$:
                                   2943 ;	tcp.c:291: free(packet_data);
      004CE5 AC 17            [24] 2944 	mov	r4,_process_packet_from_buffer_sloc0_1_0
      004CE7 A9 18            [24] 2945 	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004CE9 7D 00            [12] 2946 	mov	r5,#0x00
      004CEB 8C 82            [24] 2947 	mov	dpl, r4
      004CED 89 83            [24] 2948 	mov	dph, r1
      004CEF 8D F0            [24] 2949 	mov	b, r5
      004CF1 C0 07            [24] 2950 	push	ar7
      004CF3 C0 06            [24] 2951 	push	ar6
      004CF5 C0 03            [24] 2952 	push	ar3
      004CF7 C0 02            [24] 2953 	push	ar2
      004CF9 12 4E B8         [24] 2954 	lcall	_free
      004CFC D0 02            [24] 2955 	pop	ar2
      004CFE D0 03            [24] 2956 	pop	ar3
      004D00 D0 06            [24] 2957 	pop	ar6
      004D02 D0 07            [24] 2958 	pop	ar7
                                   2959 ;	tcp.c:294: packet_size, start_address, next_start_address - 1);
      004D04 1B               [12] 2960 	dec	r3
      004D05 BB FF 01         [24] 2961 	cjne	r3,#0xff,00158$
      004D08 1A               [12] 2962 	dec	r2
      004D09                       2963 00158$:
                                   2964 ;	tcp.c:293: printf("\n\rSuccessfully processed packet of size %d from 0x%04X to 0x%04X\n\r",
      004D09 C0 03            [24] 2965 	push	ar3
      004D0B C0 02            [24] 2966 	push	ar2
      004D0D 90 09 AC         [24] 2967 	mov	dptr,#_process_packet_from_buffer_start_address_10000_152
      004D10 E0               [24] 2968 	movx	a,@dptr
      004D11 C0 E0            [24] 2969 	push	acc
      004D13 A3               [24] 2970 	inc	dptr
      004D14 E0               [24] 2971 	movx	a,@dptr
      004D15 C0 E0            [24] 2972 	push	acc
      004D17 C0 06            [24] 2973 	push	ar6
      004D19 C0 07            [24] 2974 	push	ar7
      004D1B 74 86            [12] 2975 	mov	a,#___str_10
      004D1D C0 E0            [24] 2976 	push	acc
      004D1F 74 69            [12] 2977 	mov	a,#(___str_10 >> 8)
      004D21 C0 E0            [24] 2978 	push	acc
      004D23 74 80            [12] 2979 	mov	a,#0x80
      004D25 C0 E0            [24] 2980 	push	acc
      004D27 12 54 C1         [24] 2981 	lcall	_printf
      004D2A E5 81            [12] 2982 	mov	a,sp
      004D2C 24 F7            [12] 2983 	add	a,#0xf7
      004D2E F5 81            [12] 2984 	mov	sp,a
                                   2985 ;	tcp.c:295: }
      004D30 22               [24] 2986 	ret
                                   2987 ;------------------------------------------------------------
                                   2988 ;Allocation info for local variables in function 'transmit_tcp_packet'
                                   2989 ;------------------------------------------------------------
                                   2990 ;packet_size               Allocated with name '_transmit_tcp_packet_PARM_2'
                                   2991 ;packet                    Allocated with name '_transmit_tcp_packet_packet_10000_164'
                                   2992 ;start_address             Allocated with name '_transmit_tcp_packet_start_address_10000_165'
                                   2993 ;end_address               Allocated with name '_transmit_tcp_packet_end_address_10001_167'
                                   2994 ;------------------------------------------------------------
                                   2995 ;	tcp.c:298: void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
                                   2996 ;	-----------------------------------------
                                   2997 ;	 function transmit_tcp_packet
                                   2998 ;	-----------------------------------------
      004D31                       2999 _transmit_tcp_packet:
      004D31 AF F0            [24] 3000 	mov	r7,b
      004D33 AE 83            [24] 3001 	mov	r6,dph
      004D35 E5 82            [12] 3002 	mov	a,dpl
      004D37 90 09 B4         [24] 3003 	mov	dptr,#_transmit_tcp_packet_packet_10000_164
      004D3A F0               [24] 3004 	movx	@dptr,a
      004D3B EE               [12] 3005 	mov	a,r6
      004D3C A3               [24] 3006 	inc	dptr
      004D3D F0               [24] 3007 	movx	@dptr,a
      004D3E EF               [12] 3008 	mov	a,r7
      004D3F A3               [24] 3009 	inc	dptr
      004D40 F0               [24] 3010 	movx	@dptr,a
                                   3011 ;	tcp.c:303: if ((start_address + packet_size - 1) > 0x1FFF) {
      004D41 90 09 B2         [24] 3012 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004D44 E0               [24] 3013 	movx	a,@dptr
      004D45 FE               [12] 3014 	mov	r6,a
      004D46 A3               [24] 3015 	inc	dptr
      004D47 E0               [24] 3016 	movx	a,@dptr
      004D48 FF               [12] 3017 	mov	r7,a
      004D49 8E 04            [24] 3018 	mov	ar4,r6
      004D4B 74 0C            [12] 3019 	mov	a,#0x0c
      004D4D 2F               [12] 3020 	add	a, r7
      004D4E FD               [12] 3021 	mov	r5,a
      004D4F 1C               [12] 3022 	dec	r4
      004D50 BC FF 01         [24] 3023 	cjne	r4,#0xff,00129$
      004D53 1D               [12] 3024 	dec	r5
      004D54                       3025 00129$:
      004D54 C3               [12] 3026 	clr	c
      004D55 74 FF            [12] 3027 	mov	a,#0xff
      004D57 9C               [12] 3028 	subb	a,r4
      004D58 74 1F            [12] 3029 	mov	a,#0x1f
      004D5A 9D               [12] 3030 	subb	a,r5
      004D5B 50 16            [24] 3031 	jnc	00102$
                                   3032 ;	tcp.c:304: printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
      004D5D 74 C9            [12] 3033 	mov	a,#___str_11
      004D5F C0 E0            [24] 3034 	push	acc
      004D61 74 69            [12] 3035 	mov	a,#(___str_11 >> 8)
      004D63 C0 E0            [24] 3036 	push	acc
      004D65 74 80            [12] 3037 	mov	a,#0x80
      004D67 C0 E0            [24] 3038 	push	acc
      004D69 12 54 C1         [24] 3039 	lcall	_printf
      004D6C 15 81            [12] 3040 	dec	sp
      004D6E 15 81            [12] 3041 	dec	sp
      004D70 15 81            [12] 3042 	dec	sp
                                   3043 ;	tcp.c:305: return;
      004D72 22               [24] 3044 	ret
      004D73                       3045 00102$:
                                   3046 ;	tcp.c:307: uint16_t end_address = start_address + packet_size - 1;
      004D73 8E 04            [24] 3047 	mov	ar4,r6
      004D75 74 0C            [12] 3048 	mov	a,#0x0c
      004D77 2F               [12] 3049 	add	a, r7
      004D78 FD               [12] 3050 	mov	r5,a
      004D79 1C               [12] 3051 	dec	r4
      004D7A BC FF 01         [24] 3052 	cjne	r4,#0xff,00131$
      004D7D 1D               [12] 3053 	dec	r5
      004D7E                       3054 00131$:
                                   3055 ;	tcp.c:308: spi_buffer_write(packet_size, start_address, packet);
      004D7E 90 09 B4         [24] 3056 	mov	dptr,#_transmit_tcp_packet_packet_10000_164
      004D81 E0               [24] 3057 	movx	a,@dptr
      004D82 F9               [12] 3058 	mov	r1,a
      004D83 A3               [24] 3059 	inc	dptr
      004D84 E0               [24] 3060 	movx	a,@dptr
      004D85 FA               [12] 3061 	mov	r2,a
      004D86 A3               [24] 3062 	inc	dptr
      004D87 E0               [24] 3063 	movx	a,@dptr
      004D88 FB               [12] 3064 	mov	r3,a
      004D89 90 03 9C         [24] 3065 	mov	dptr,#_spi_buffer_write_PARM_2
      004D8C E4               [12] 3066 	clr	a
      004D8D F0               [24] 3067 	movx	@dptr,a
      004D8E 74 0C            [12] 3068 	mov	a,#0x0c
      004D90 A3               [24] 3069 	inc	dptr
      004D91 F0               [24] 3070 	movx	@dptr,a
      004D92 90 03 9E         [24] 3071 	mov	dptr,#_spi_buffer_write_PARM_3
      004D95 E9               [12] 3072 	mov	a,r1
      004D96 F0               [24] 3073 	movx	@dptr,a
      004D97 EA               [12] 3074 	mov	a,r2
      004D98 A3               [24] 3075 	inc	dptr
      004D99 F0               [24] 3076 	movx	@dptr,a
      004D9A EB               [12] 3077 	mov	a,r3
      004D9B A3               [24] 3078 	inc	dptr
      004D9C F0               [24] 3079 	movx	@dptr,a
      004D9D 8E 82            [24] 3080 	mov	dpl, r6
      004D9F 8F 83            [24] 3081 	mov	dph, r7
      004DA1 C0 05            [24] 3082 	push	ar5
      004DA3 C0 04            [24] 3083 	push	ar4
      004DA5 12 3E 54         [24] 3084 	lcall	_spi_buffer_write
      004DA8 D0 04            [24] 3085 	pop	ar4
      004DAA D0 05            [24] 3086 	pop	ar5
                                   3087 ;	tcp.c:311: enc28j60_set_transmit_pointers(start_address, end_address);
      004DAC 90 01 06         [24] 3088 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      004DAF EC               [12] 3089 	mov	a,r4
      004DB0 F0               [24] 3090 	movx	@dptr,a
      004DB1 ED               [12] 3091 	mov	a,r5
      004DB2 A3               [24] 3092 	inc	dptr
      004DB3 F0               [24] 3093 	movx	@dptr,a
      004DB4 90 0C 00         [24] 3094 	mov	dptr,#0x0c00
      004DB7 12 21 15         [24] 3095 	lcall	_enc28j60_set_transmit_pointers
                                   3096 ;	tcp.c:314: enc28j60_start_transmission();
      004DBA 12 20 F4         [24] 3097 	lcall	_enc28j60_start_transmission
                                   3098 ;	tcp.c:317: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      004DBD 90 01 F4         [24] 3099 	mov	dptr,#0x01f4
      004DC0 12 21 8C         [24] 3100 	lcall	_wait_for_transmission_complete
      004DC3 E5 82            [12] 3101 	mov	a, dpl
      004DC5 60 38            [24] 3102 	jz	00107$
                                   3103 ;	tcp.c:319: if (enc28j60_transmission_successful()) {
      004DC7 12 21 EF         [24] 3104 	lcall	_enc28j60_transmission_successful
      004DCA E5 82            [12] 3105 	mov	a, dpl
      004DCC 85 83 F0         [24] 3106 	mov	b, dph
      004DCF 45 F0            [12] 3107 	orl	a,b
      004DD1 60 16            [24] 3108 	jz	00104$
                                   3109 ;	tcp.c:320: printf("TCP request sent successfully.\n\r");
      004DD3 74 04            [12] 3110 	mov	a,#___str_12
      004DD5 C0 E0            [24] 3111 	push	acc
      004DD7 74 6A            [12] 3112 	mov	a,#(___str_12 >> 8)
      004DD9 C0 E0            [24] 3113 	push	acc
      004DDB 74 80            [12] 3114 	mov	a,#0x80
      004DDD C0 E0            [24] 3115 	push	acc
      004DDF 12 54 C1         [24] 3116 	lcall	_printf
      004DE2 15 81            [12] 3117 	dec	sp
      004DE4 15 81            [12] 3118 	dec	sp
      004DE6 15 81            [12] 3119 	dec	sp
      004DE8 22               [24] 3120 	ret
      004DE9                       3121 00104$:
                                   3122 ;	tcp.c:322: printf("TCP transmission failed. Check error flags.\n\r");
      004DE9 74 25            [12] 3123 	mov	a,#___str_13
      004DEB C0 E0            [24] 3124 	push	acc
      004DED 74 6A            [12] 3125 	mov	a,#(___str_13 >> 8)
      004DEF C0 E0            [24] 3126 	push	acc
      004DF1 74 80            [12] 3127 	mov	a,#0x80
      004DF3 C0 E0            [24] 3128 	push	acc
      004DF5 12 54 C1         [24] 3129 	lcall	_printf
      004DF8 15 81            [12] 3130 	dec	sp
      004DFA 15 81            [12] 3131 	dec	sp
      004DFC 15 81            [12] 3132 	dec	sp
      004DFE 22               [24] 3133 	ret
      004DFF                       3134 00107$:
                                   3135 ;	tcp.c:326: "Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      004DFF 74 53            [12] 3136 	mov	a,#___str_14
      004E01 C0 E0            [24] 3137 	push	acc
      004E03 74 6A            [12] 3138 	mov	a,#(___str_14 >> 8)
      004E05 C0 E0            [24] 3139 	push	acc
      004E07 74 80            [12] 3140 	mov	a,#0x80
      004E09 C0 E0            [24] 3141 	push	acc
      004E0B 12 54 C1         [24] 3142 	lcall	_printf
      004E0E 15 81            [12] 3143 	dec	sp
      004E10 15 81            [12] 3144 	dec	sp
      004E12 15 81            [12] 3145 	dec	sp
                                   3146 ;	tcp.c:328: }
      004E14 22               [24] 3147 	ret
                                   3148 	.area CSEG    (CODE)
                                   3149 	.area CONST   (CODE)
                                   3150 	.area CONST   (CODE)
      006856                       3151 ___str_0:
      006856 0A                    3152 	.db 0x0a
      006857 48 65 78 64 75 6D 70  3153 	.ascii "Hexdump (Size: %d):"
             20 28 53 69 7A 65 3A
             20 25 64 29 3A
      00686A 0A                    3154 	.db 0x0a
      00686B 00                    3155 	.db 0x00
                                   3156 	.area CSEG    (CODE)
                                   3157 	.area CONST   (CODE)
      00686C                       3158 ___str_1:
      00686C 25 30 32 58 20        3159 	.ascii "%02X "
      006871 00                    3160 	.db 0x00
                                   3161 	.area CSEG    (CODE)
                                   3162 	.area CONST   (CODE)
      006872                       3163 ___str_2:
      006872 0A                    3164 	.db 0x0a
      006873 00                    3165 	.db 0x00
                                   3166 	.area CSEG    (CODE)
                                   3167 	.area CONST   (CODE)
      006874                       3168 ___str_3:
      006874 0A                    3169 	.db 0x0a
      006875 0D                    3170 	.db 0x0d
      006876 49 6E 76 61 6C 69 64  3171 	.ascii "Invalid start address: %04X"
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             3A 20 25 30 34 58
      006891 0A                    3172 	.db 0x0a
      006892 0D                    3173 	.db 0x0d
      006893 00                    3174 	.db 0x00
                                   3175 	.area CSEG    (CODE)
                                   3176 	.area CONST   (CODE)
      006894                       3177 ___str_4:
      006894 0A                    3178 	.db 0x0a
      006895 0D                    3179 	.db 0x0d
      006896 46 61 69 6C 65 64 20  3180 	.ascii "Failed to read packet start address bytes"
             74 6F 20 72 65 61 64
             20 70 61 63 6B 65 74
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             20 62 79 74 65 73
      0068BF 0A                    3181 	.db 0x0a
      0068C0 0D                    3182 	.db 0x0d
      0068C1 00                    3183 	.db 0x00
                                   3184 	.area CSEG    (CODE)
                                   3185 	.area CONST   (CODE)
      0068C2                       3186 ___str_5:
      0068C2 0A                    3187 	.db 0x0a
      0068C3 0D                    3188 	.db 0x0d
      0068C4 49 6E 76 61 6C 69 64  3189 	.ascii "Invalid next start address: 0x%04X"
             20 6E 65 78 74 20 73
             74 61 72 74 20 61 64
             64 72 65 73 73 3A 20
             30 78 25 30 34 58
      0068E6 0A                    3190 	.db 0x0a
      0068E7 0D                    3191 	.db 0x0d
      0068E8 00                    3192 	.db 0x00
                                   3193 	.area CSEG    (CODE)
                                   3194 	.area CONST   (CODE)
      0068E9                       3195 ___str_6:
      0068E9 0A                    3196 	.db 0x0a
      0068EA 0D                    3197 	.db 0x0d
      0068EB 4D 65 6D 6F 72 79 20  3198 	.ascii "Memory allocation failed for packet size: %d"
             61 6C 6C 6F 63 61 74
             69 6F 6E 20 66 61 69
             6C 65 64 20 66 6F 72
             20 70 61 63 6B 65 74
             20 73 69 7A 65 3A 20
             25 64
      006917 0A                    3199 	.db 0x0a
      006918 0D                    3200 	.db 0x0d
      006919 00                    3201 	.db 0x00
                                   3202 	.area CSEG    (CODE)
                                   3203 	.area CONST   (CODE)
      00691A                       3204 ___str_7:
      00691A 0A                    3205 	.db 0x0a
      00691B 0D                    3206 	.db 0x0d
      00691C 46 61 69 6C 65 64 20  3207 	.ascii "Failed to read packet data"
             74 6F 20 72 65 61 64
             20 70 61 63 6B 65 74
             20 64 61 74 61
      006936 0A                    3208 	.db 0x0a
      006937 0D                    3209 	.db 0x0d
      006938 00                    3210 	.db 0x00
                                   3211 	.area CSEG    (CODE)
                                   3212 	.area CONST   (CODE)
      006939                       3213 ___str_8:
      006939 0A                    3214 	.db 0x0a
      00693A 50 72 6F 63 65 73 73  3215 	.ascii "Processed response data:"
             65 64 20 72 65 73 70
             6F 6E 73 65 20 64 61
             74 61 3A
      006952 0A                    3216 	.db 0x0a
      006953 00                    3217 	.db 0x00
                                   3218 	.area CSEG    (CODE)
                                   3219 	.area CONST   (CODE)
      006954                       3220 ___str_9:
      006954 0A                    3221 	.db 0x0a
      006955 4E 6F 20 72 65 73 70  3222 	.ascii "No response generated by TCP packet processing."
             6F 6E 73 65 20 67 65
             6E 65 72 61 74 65 64
             20 62 79 20 54 43 50
             20 70 61 63 6B 65 74
             20 70 72 6F 63 65 73
             73 69 6E 67 2E
      006984 0A                    3223 	.db 0x0a
      006985 00                    3224 	.db 0x00
                                   3225 	.area CSEG    (CODE)
                                   3226 	.area CONST   (CODE)
      006986                       3227 ___str_10:
      006986 0A                    3228 	.db 0x0a
      006987 0D                    3229 	.db 0x0d
      006988 53 75 63 63 65 73 73  3230 	.ascii "Successfully processed packet of size %d from 0x%04X to 0x%0"
             66 75 6C 6C 79 20 70
             72 6F 63 65 73 73 65
             64 20 70 61 63 6B 65
             74 20 6F 66 20 73 69
             7A 65 20 25 64 20 66
             72 6F 6D 20 30 78 25
             30 34 58 20 74 6F 20
             30 78 25 30
      0069C4 34 58                 3231 	.ascii "4X"
      0069C6 0A                    3232 	.db 0x0a
      0069C7 0D                    3233 	.db 0x0d
      0069C8 00                    3234 	.db 0x00
                                   3235 	.area CSEG    (CODE)
                                   3236 	.area CONST   (CODE)
      0069C9                       3237 ___str_11:
      0069C9 0A                    3238 	.db 0x0a
      0069CA 49 6E 76 61 6C 69 64  3239 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      006A02 0A                    3240 	.db 0x0a
      006A03 00                    3241 	.db 0x00
                                   3242 	.area CSEG    (CODE)
                                   3243 	.area CONST   (CODE)
      006A04                       3244 ___str_12:
      006A04 54 43 50 20 72 65 71  3245 	.ascii "TCP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      006A22 0A                    3246 	.db 0x0a
      006A23 0D                    3247 	.db 0x0d
      006A24 00                    3248 	.db 0x00
                                   3249 	.area CSEG    (CODE)
                                   3250 	.area CONST   (CODE)
      006A25                       3251 ___str_13:
      006A25 54 43 50 20 74 72 61  3252 	.ascii "TCP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      006A50 0A                    3253 	.db 0x0a
      006A51 0D                    3254 	.db 0x0d
      006A52 00                    3255 	.db 0x00
                                   3256 	.area CSEG    (CODE)
                                   3257 	.area CONST   (CODE)
      006A53                       3258 ___str_14:
      006A53 54 72 61 6E 73 6D 69  3259 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      006A8F 74 6C 79 2E           3260 	.ascii "tly."
      006A93 0A                    3261 	.db 0x0a
      006A94 0D                    3262 	.db 0x0d
      006A95 00                    3263 	.db 0x00
                                   3264 	.area CSEG    (CODE)
                                   3265 	.area XINIT   (CODE)
                                   3266 	.area CABS    (ABS,CODE)

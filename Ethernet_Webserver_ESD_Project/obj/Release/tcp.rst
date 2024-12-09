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
                                     11 	.globl _wait_for_transmission_complete
                                     12 	.globl _enc28j60_set_transmit_pointers
                                     13 	.globl _spi_buffer_write
                                     14 	.globl _spi_buffer_read
                                     15 	.globl _free
                                     16 	.globl _malloc
                                     17 	.globl _printf
                                     18 	.globl ___memcpy
                                     19 	.globl _memset
                                     20 	.globl _TF1
                                     21 	.globl _TR1
                                     22 	.globl _TF0
                                     23 	.globl _TR0
                                     24 	.globl _IE1
                                     25 	.globl _IT1
                                     26 	.globl _IE0
                                     27 	.globl _IT0
                                     28 	.globl _SM0
                                     29 	.globl _SM1
                                     30 	.globl _SM2
                                     31 	.globl _REN
                                     32 	.globl _TB8
                                     33 	.globl _RB8
                                     34 	.globl _TI
                                     35 	.globl _RI
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD0
                                     51 	.globl _TXD
                                     52 	.globl _RXD0
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _P2_7
                                     63 	.globl _P2_6
                                     64 	.globl _P2_5
                                     65 	.globl _P2_4
                                     66 	.globl _P2_3
                                     67 	.globl _P2_2
                                     68 	.globl _P2_1
                                     69 	.globl _P2_0
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _PS
                                     87 	.globl _PT1
                                     88 	.globl _PX1
                                     89 	.globl _PT0
                                     90 	.globl _PX0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _BREG_F7
                                     98 	.globl _BREG_F6
                                     99 	.globl _BREG_F5
                                    100 	.globl _BREG_F4
                                    101 	.globl _BREG_F3
                                    102 	.globl _BREG_F2
                                    103 	.globl _BREG_F1
                                    104 	.globl _BREG_F0
                                    105 	.globl _P5_7
                                    106 	.globl _P5_6
                                    107 	.globl _P5_5
                                    108 	.globl _P5_4
                                    109 	.globl _P5_3
                                    110 	.globl _P5_2
                                    111 	.globl _P5_1
                                    112 	.globl _P5_0
                                    113 	.globl _P4_7
                                    114 	.globl _P4_6
                                    115 	.globl _P4_5
                                    116 	.globl _P4_4
                                    117 	.globl _P4_3
                                    118 	.globl _P4_2
                                    119 	.globl _P4_1
                                    120 	.globl _P4_0
                                    121 	.globl _PX0L
                                    122 	.globl _PT0L
                                    123 	.globl _PX1L
                                    124 	.globl _PT1L
                                    125 	.globl _PSL
                                    126 	.globl _PT2L
                                    127 	.globl _PPCL
                                    128 	.globl _EC
                                    129 	.globl _CCF0
                                    130 	.globl _CCF1
                                    131 	.globl _CCF2
                                    132 	.globl _CCF3
                                    133 	.globl _CCF4
                                    134 	.globl _CR
                                    135 	.globl _CF
                                    136 	.globl _TF2
                                    137 	.globl _EXF2
                                    138 	.globl _RCLK
                                    139 	.globl _TCLK
                                    140 	.globl _EXEN2
                                    141 	.globl _TR2
                                    142 	.globl _C_T2
                                    143 	.globl _CP_RL2
                                    144 	.globl _T2CON_7
                                    145 	.globl _T2CON_6
                                    146 	.globl _T2CON_5
                                    147 	.globl _T2CON_4
                                    148 	.globl _T2CON_3
                                    149 	.globl _T2CON_2
                                    150 	.globl _T2CON_1
                                    151 	.globl _T2CON_0
                                    152 	.globl _PT2
                                    153 	.globl _ET2
                                    154 	.globl _TMOD
                                    155 	.globl _TL1
                                    156 	.globl _TL0
                                    157 	.globl _TH1
                                    158 	.globl _TH0
                                    159 	.globl _TCON
                                    160 	.globl _SP
                                    161 	.globl _SCON
                                    162 	.globl _SBUF0
                                    163 	.globl _SBUF
                                    164 	.globl _PSW
                                    165 	.globl _PCON
                                    166 	.globl _P3
                                    167 	.globl _P2
                                    168 	.globl _P1
                                    169 	.globl _P0
                                    170 	.globl _IP
                                    171 	.globl _IE
                                    172 	.globl _DP0L
                                    173 	.globl _DPL
                                    174 	.globl _DP0H
                                    175 	.globl _DPH
                                    176 	.globl _B
                                    177 	.globl _ACC
                                    178 	.globl _EECON
                                    179 	.globl _KBF
                                    180 	.globl _KBE
                                    181 	.globl _KBLS
                                    182 	.globl _BRL
                                    183 	.globl _BDRCON
                                    184 	.globl _T2MOD
                                    185 	.globl _SPDAT
                                    186 	.globl _SPSTA
                                    187 	.globl _SPCON
                                    188 	.globl _SADEN
                                    189 	.globl _SADDR
                                    190 	.globl _WDTPRG
                                    191 	.globl _WDTRST
                                    192 	.globl _P5
                                    193 	.globl _P4
                                    194 	.globl _IPH1
                                    195 	.globl _IPL1
                                    196 	.globl _IPH0
                                    197 	.globl _IPL0
                                    198 	.globl _IEN1
                                    199 	.globl _IEN0
                                    200 	.globl _CMOD
                                    201 	.globl _CL
                                    202 	.globl _CH
                                    203 	.globl _CCON
                                    204 	.globl _CCAPM4
                                    205 	.globl _CCAPM3
                                    206 	.globl _CCAPM2
                                    207 	.globl _CCAPM1
                                    208 	.globl _CCAPM0
                                    209 	.globl _CCAP4L
                                    210 	.globl _CCAP3L
                                    211 	.globl _CCAP2L
                                    212 	.globl _CCAP1L
                                    213 	.globl _CCAP0L
                                    214 	.globl _CCAP4H
                                    215 	.globl _CCAP3H
                                    216 	.globl _CCAP2H
                                    217 	.globl _CCAP1H
                                    218 	.globl _CCAP0H
                                    219 	.globl _CKCON1
                                    220 	.globl _CKCON0
                                    221 	.globl _CKRL
                                    222 	.globl _AUXR1
                                    223 	.globl _AUXR
                                    224 	.globl _TH2
                                    225 	.globl _TL2
                                    226 	.globl _RCAP2H
                                    227 	.globl _RCAP2L
                                    228 	.globl _T2CON
                                    229 	.globl _transmit_tcp_packet_PARM_2
                                    230 	.globl _print_hexdump_PARM_2
                                    231 	.globl _process_tcp_packet_PARM_3
                                    232 	.globl _process_tcp_packet_PARM_2
                                    233 	.globl _calculate_checksum_PARM_2
                                    234 	.globl _calculateIPChecksum
                                    235 	.globl _calculateTcpChecksum
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
      000047                        477 _calculateIPChecksum_sloc0_1_0:
      000047                        478 	.ds 2
      000049                        479 _calculateIPChecksum_sloc1_1_0:
      000049                        480 	.ds 4
                                    481 	.area	OSEG    (OVR,DATA)
      000047                        482 _calculateTcpChecksum_sloc0_1_0:
      000047                        483 	.ds 2
      000049                        484 _calculateTcpChecksum_sloc1_1_0:
      000049                        485 	.ds 2
      00004B                        486 _calculateTcpChecksum_sloc2_1_0:
      00004B                        487 	.ds 4
      00004F                        488 _calculateTcpChecksum_sloc3_1_0:
      00004F                        489 	.ds 4
      000053                        490 _calculateTcpChecksum_sloc4_1_0:
      000053                        491 	.ds 4
                                    492 	.area	OSEG    (OVR,DATA)
      000047                        493 _calculate_checksum_sloc0_1_0:
      000047                        494 	.ds 2
      000049                        495 _calculate_checksum_sloc1_1_0:
      000049                        496 	.ds 4
      00004D                        497 _calculate_checksum_sloc2_1_0:
      00004D                        498 	.ds 4
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
      0003A3                        520 _calculateIPChecksum_buffer_10000_118:
      0003A3                        521 	.ds 3
      0003A6                        522 _calculateIPChecksum_sum_10001_120:
      0003A6                        523 	.ds 4
      0003AA                        524 _calculateIPChecksum_i_20001_121:
      0003AA                        525 	.ds 2
      0003AC                        526 _calculateTcpChecksum_buffer_10000_125:
      0003AC                        527 	.ds 3
      0003AF                        528 _calculateTcpChecksum_sum_10001_127:
      0003AF                        529 	.ds 4
      0003B3                        530 _calculateTcpChecksum_i_20001_128:
      0003B3                        531 	.ds 1
      0003B4                        532 _calculateTcpChecksum_i_20001_130:
      0003B4                        533 	.ds 1
      0003B5                        534 _calculateTcpChecksum_i_20001_132:
      0003B5                        535 	.ds 2
      0003B7                        536 _calculate_checksum_PARM_2:
      0003B7                        537 	.ds 2
      0003B9                        538 _calculate_checksum_data_10000_136:
      0003B9                        539 	.ds 3
      0003BC                        540 _calculate_checksum_sum_10000_137:
      0003BC                        541 	.ds 4
      0003C0                        542 _calculate_checksum_i_20000_138:
      0003C0                        543 	.ds 2
      0003C2                        544 _process_tcp_packet_PARM_2:
      0003C2                        545 	.ds 2
      0003C4                        546 _process_tcp_packet_PARM_3:
      0003C4                        547 	.ds 3
      0003C7                        548 _process_tcp_packet_packet_10000_141:
      0003C7                        549 	.ds 3
      0003CA                        550 _process_tcp_packet_response_10000_142:
      0003CA                        551 	.ds 1501
      0009A7                        552 _print_hexdump_PARM_2:
      0009A7                        553 	.ds 2
      0009A9                        554 _print_hexdump_data_10000_148:
      0009A9                        555 	.ds 3
      0009AC                        556 _process_packet_from_buffer_start_address_10000_154:
      0009AC                        557 	.ds 2
      0009AE                        558 _process_packet_from_buffer_next_packet_start_10001_157:
      0009AE                        559 	.ds 2
      0009B0                        560 _process_packet_from_buffer_response_size_10001_157:
      0009B0                        561 	.ds 2
      0009B2                        562 _transmit_tcp_packet_PARM_2:
      0009B2                        563 	.ds 2
      0009B4                        564 _transmit_tcp_packet_packet_10000_166:
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
                                    603 ;buffer                    Allocated with name '_calculateIPChecksum_buffer_10000_118'
                                    604 ;length                    Allocated with name '_calculateIPChecksum_length_10001_120'
                                    605 ;sum                       Allocated with name '_calculateIPChecksum_sum_10001_120'
                                    606 ;i                         Allocated with name '_calculateIPChecksum_i_20001_121'
                                    607 ;word                      Allocated with name '_calculateIPChecksum_word_30001_122'
                                    608 ;checksum                  Allocated with name '_calculateIPChecksum_checksum_10002_124'
                                    609 ;sloc0                     Allocated with name '_calculateIPChecksum_sloc0_1_0'
                                    610 ;sloc1                     Allocated with name '_calculateIPChecksum_sloc1_1_0'
                                    611 ;------------------------------------------------------------
                                    612 ;	tcp.c:11: void calculateIPChecksum(uint8_t *buffer) {
                                    613 ;	-----------------------------------------
                                    614 ;	 function calculateIPChecksum
                                    615 ;	-----------------------------------------
      003F25                        616 _calculateIPChecksum:
                           000007   617 	ar7 = 0x07
                           000006   618 	ar6 = 0x06
                           000005   619 	ar5 = 0x05
                           000004   620 	ar4 = 0x04
                           000003   621 	ar3 = 0x03
                           000002   622 	ar2 = 0x02
                           000001   623 	ar1 = 0x01
                           000000   624 	ar0 = 0x00
      003F25 AF F0            [24]  625 	mov	r7,b
      003F27 AE 83            [24]  626 	mov	r6,dph
      003F29 E5 82            [12]  627 	mov	a,dpl
      003F2B 90 03 A3         [24]  628 	mov	dptr,#_calculateIPChecksum_buffer_10000_118
      003F2E F0               [24]  629 	movx	@dptr,a
      003F2F EE               [12]  630 	mov	a,r6
      003F30 A3               [24]  631 	inc	dptr
      003F31 F0               [24]  632 	movx	@dptr,a
      003F32 EF               [12]  633 	mov	a,r7
      003F33 A3               [24]  634 	inc	dptr
      003F34 F0               [24]  635 	movx	@dptr,a
                                    636 ;	tcp.c:13: buffer[IP_CHECKSUM_P] = 0;
      003F35 90 03 A3         [24]  637 	mov	dptr,#_calculateIPChecksum_buffer_10000_118
      003F38 E0               [24]  638 	movx	a,@dptr
      003F39 FD               [12]  639 	mov	r5,a
      003F3A A3               [24]  640 	inc	dptr
      003F3B E0               [24]  641 	movx	a,@dptr
      003F3C FE               [12]  642 	mov	r6,a
      003F3D A3               [24]  643 	inc	dptr
      003F3E E0               [24]  644 	movx	a,@dptr
      003F3F FF               [12]  645 	mov	r7,a
      003F40 74 18            [12]  646 	mov	a,#0x18
      003F42 2D               [12]  647 	add	a, r5
      003F43 FA               [12]  648 	mov	r2,a
      003F44 E4               [12]  649 	clr	a
      003F45 3E               [12]  650 	addc	a, r6
      003F46 FB               [12]  651 	mov	r3,a
      003F47 8F 04            [24]  652 	mov	ar4,r7
      003F49 8A 82            [24]  653 	mov	dpl,r2
      003F4B 8B 83            [24]  654 	mov	dph,r3
      003F4D 8C F0            [24]  655 	mov	b,r4
      003F4F E4               [12]  656 	clr	a
      003F50 12 5F A0         [24]  657 	lcall	__gptrput
                                    658 ;	tcp.c:14: buffer[IP_CHECKSUM_P + 1] = 0;
      003F53 74 19            [12]  659 	mov	a,#0x19
      003F55 2D               [12]  660 	add	a, r5
      003F56 FA               [12]  661 	mov	r2,a
      003F57 E4               [12]  662 	clr	a
      003F58 3E               [12]  663 	addc	a, r6
      003F59 FB               [12]  664 	mov	r3,a
      003F5A 8F 04            [24]  665 	mov	ar4,r7
      003F5C 8A 82            [24]  666 	mov	dpl,r2
      003F5E 8B 83            [24]  667 	mov	dph,r3
      003F60 8C F0            [24]  668 	mov	b,r4
      003F62 E4               [12]  669 	clr	a
      003F63 12 5F A0         [24]  670 	lcall	__gptrput
                                    671 ;	tcp.c:18: uint32_t sum = 0;
      003F66 90 03 A6         [24]  672 	mov	dptr,#_calculateIPChecksum_sum_10001_120
      003F69 F0               [24]  673 	movx	@dptr,a
      003F6A A3               [24]  674 	inc	dptr
      003F6B F0               [24]  675 	movx	@dptr,a
      003F6C A3               [24]  676 	inc	dptr
      003F6D F0               [24]  677 	movx	@dptr,a
      003F6E A3               [24]  678 	inc	dptr
      003F6F F0               [24]  679 	movx	@dptr,a
                                    680 ;	tcp.c:21: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
      003F70 90 03 AA         [24]  681 	mov	dptr,#_calculateIPChecksum_i_20001_121
      003F73 74 0E            [12]  682 	mov	a,#0x0e
      003F75 F0               [24]  683 	movx	@dptr,a
      003F76 E4               [12]  684 	clr	a
      003F77 A3               [24]  685 	inc	dptr
      003F78 F0               [24]  686 	movx	@dptr,a
      003F79                        687 00106$:
      003F79 90 03 AA         [24]  688 	mov	dptr,#_calculateIPChecksum_i_20001_121
      003F7C E0               [24]  689 	movx	a,@dptr
      003F7D FB               [12]  690 	mov	r3,a
      003F7E A3               [24]  691 	inc	dptr
      003F7F E0               [24]  692 	movx	a,@dptr
      003F80 FC               [12]  693 	mov	r4,a
      003F81 8B 01            [24]  694 	mov	ar1,r3
      003F83 8C 02            [24]  695 	mov	ar2,r4
      003F85 C3               [12]  696 	clr	c
      003F86 E9               [12]  697 	mov	a,r1
      003F87 94 22            [12]  698 	subb	a,#0x22
      003F89 EA               [12]  699 	mov	a,r2
      003F8A 94 00            [12]  700 	subb	a,#0x00
      003F8C 40 03            [24]  701 	jc	00134$
      003F8E 02 40 12         [24]  702 	ljmp	00102$
      003F91                        703 00134$:
                                    704 ;	tcp.c:22: uint16_t word = (buffer[i] << 8) | buffer[i + 1];
      003F91 EB               [12]  705 	mov	a,r3
      003F92 2D               [12]  706 	add	a, r5
      003F93 FB               [12]  707 	mov	r3,a
      003F94 EC               [12]  708 	mov	a,r4
      003F95 3E               [12]  709 	addc	a, r6
      003F96 F8               [12]  710 	mov	r0,a
      003F97 8F 04            [24]  711 	mov	ar4,r7
      003F99 8B 82            [24]  712 	mov	dpl,r3
      003F9B 88 83            [24]  713 	mov	dph,r0
      003F9D 8C F0            [24]  714 	mov	b,r4
      003F9F 12 6F 13         [24]  715 	lcall	__gptrget
      003FA2 FB               [12]  716 	mov	r3,a
      003FA3 7C 00            [12]  717 	mov	r4,#0x00
      003FA5 8B 48            [24]  718 	mov	(_calculateIPChecksum_sloc0_1_0 + 1),r3
      003FA7 8C 47            [24]  719 	mov	_calculateIPChecksum_sloc0_1_0,r4
      003FA9 74 01            [12]  720 	mov	a,#0x01
      003FAB 29               [12]  721 	add	a, r1
      003FAC F8               [12]  722 	mov	r0,a
      003FAD E4               [12]  723 	clr	a
      003FAE 3A               [12]  724 	addc	a, r2
      003FAF FC               [12]  725 	mov	r4,a
      003FB0 E8               [12]  726 	mov	a,r0
      003FB1 2D               [12]  727 	add	a, r5
      003FB2 F8               [12]  728 	mov	r0,a
      003FB3 EC               [12]  729 	mov	a,r4
      003FB4 3E               [12]  730 	addc	a, r6
      003FB5 FC               [12]  731 	mov	r4,a
      003FB6 8F 03            [24]  732 	mov	ar3,r7
      003FB8 88 82            [24]  733 	mov	dpl,r0
      003FBA 8C 83            [24]  734 	mov	dph,r4
      003FBC 8B F0            [24]  735 	mov	b,r3
      003FBE 12 6F 13         [24]  736 	lcall	__gptrget
      003FC1 F8               [12]  737 	mov	r0,a
      003FC2 7C 00            [12]  738 	mov	r4,#0x00
      003FC4 E5 48            [12]  739 	mov	a,(_calculateIPChecksum_sloc0_1_0 + 1)
      003FC6 42 04            [12]  740 	orl	ar4,a
                                    741 ;	tcp.c:23: sum += word;
      003FC8 C0 05            [24]  742 	push	ar5
      003FCA C0 06            [24]  743 	push	ar6
      003FCC C0 07            [24]  744 	push	ar7
      003FCE 90 03 A6         [24]  745 	mov	dptr,#_calculateIPChecksum_sum_10001_120
      003FD1 E0               [24]  746 	movx	a,@dptr
      003FD2 F5 49            [12]  747 	mov	_calculateIPChecksum_sloc1_1_0,a
      003FD4 A3               [24]  748 	inc	dptr
      003FD5 E0               [24]  749 	movx	a,@dptr
      003FD6 F5 4A            [12]  750 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
      003FD8 A3               [24]  751 	inc	dptr
      003FD9 E0               [24]  752 	movx	a,@dptr
      003FDA F5 4B            [12]  753 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
      003FDC A3               [24]  754 	inc	dptr
      003FDD E0               [24]  755 	movx	a,@dptr
      003FDE F5 4C            [12]  756 	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
      003FE0 7E 00            [12]  757 	mov	r6,#0x00
      003FE2 7F 00            [12]  758 	mov	r7,#0x00
      003FE4 90 03 A6         [24]  759 	mov	dptr,#_calculateIPChecksum_sum_10001_120
      003FE7 E8               [12]  760 	mov	a,r0
      003FE8 25 49            [12]  761 	add	a, _calculateIPChecksum_sloc1_1_0
      003FEA F0               [24]  762 	movx	@dptr,a
      003FEB EC               [12]  763 	mov	a,r4
      003FEC 35 4A            [12]  764 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 1)
      003FEE A3               [24]  765 	inc	dptr
      003FEF F0               [24]  766 	movx	@dptr,a
      003FF0 EE               [12]  767 	mov	a,r6
      003FF1 35 4B            [12]  768 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 2)
      003FF3 A3               [24]  769 	inc	dptr
      003FF4 F0               [24]  770 	movx	@dptr,a
      003FF5 EF               [12]  771 	mov	a,r7
      003FF6 35 4C            [12]  772 	addc	a, (_calculateIPChecksum_sloc1_1_0 + 3)
      003FF8 A3               [24]  773 	inc	dptr
      003FF9 F0               [24]  774 	movx	@dptr,a
                                    775 ;	tcp.c:21: for (uint16_t i = IP_P; i < IP_P + length; i += 2) {
      003FFA 74 02            [12]  776 	mov	a,#0x02
      003FFC 29               [12]  777 	add	a, r1
      003FFD F9               [12]  778 	mov	r1,a
      003FFE E4               [12]  779 	clr	a
      003FFF 3A               [12]  780 	addc	a, r2
      004000 FA               [12]  781 	mov	r2,a
      004001 90 03 AA         [24]  782 	mov	dptr,#_calculateIPChecksum_i_20001_121
      004004 E9               [12]  783 	mov	a,r1
      004005 F0               [24]  784 	movx	@dptr,a
      004006 EA               [12]  785 	mov	a,r2
      004007 A3               [24]  786 	inc	dptr
      004008 F0               [24]  787 	movx	@dptr,a
      004009 D0 07            [24]  788 	pop	ar7
      00400B D0 06            [24]  789 	pop	ar6
      00400D D0 05            [24]  790 	pop	ar5
      00400F 02 3F 79         [24]  791 	ljmp	00106$
                                    792 ;	tcp.c:27: while (sum >> 16) {
      004012                        793 00102$:
      004012 90 03 A6         [24]  794 	mov	dptr,#_calculateIPChecksum_sum_10001_120
      004015 E0               [24]  795 	movx	a,@dptr
      004016 FC               [12]  796 	mov	r4,a
      004017 A3               [24]  797 	inc	dptr
      004018 E0               [24]  798 	movx	a,@dptr
      004019 FD               [12]  799 	mov	r5,a
      00401A A3               [24]  800 	inc	dptr
      00401B E0               [24]  801 	movx	a,@dptr
      00401C FE               [12]  802 	mov	r6,a
      00401D A3               [24]  803 	inc	dptr
      00401E E0               [24]  804 	movx	a,@dptr
      00401F FF               [12]  805 	mov	r7,a
      004020 8E 49            [24]  806 	mov	_calculateIPChecksum_sloc1_1_0,r6
      004022 8F 4A            [24]  807 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),r7
      004024 E4               [12]  808 	clr	a
      004025 F5 4B            [12]  809 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),a
      004027 F5 4C            [12]  810 	mov	(_calculateIPChecksum_sloc1_1_0 + 3),a
      004029 E5 49            [12]  811 	mov	a,_calculateIPChecksum_sloc1_1_0
      00402B 45 4A            [12]  812 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 1)
      00402D 45 4B            [12]  813 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 2)
      00402F 45 4C            [12]  814 	orl	a,(_calculateIPChecksum_sloc1_1_0 + 3)
      004031 60 20            [24]  815 	jz	00104$
                                    816 ;	tcp.c:28: sum = (sum & 0xFFFF) + (sum >> 16);
      004033 8C 00            [24]  817 	mov	ar0,r4
      004035 8D 01            [24]  818 	mov	ar1,r5
      004037 7A 00            [12]  819 	mov	r2,#0x00
      004039 7B 00            [12]  820 	mov	r3,#0x00
      00403B 90 03 A6         [24]  821 	mov	dptr,#_calculateIPChecksum_sum_10001_120
      00403E E5 49            [12]  822 	mov	a,_calculateIPChecksum_sloc1_1_0
      004040 28               [12]  823 	add	a, r0
      004041 F0               [24]  824 	movx	@dptr,a
      004042 E5 4A            [12]  825 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 1)
      004044 39               [12]  826 	addc	a, r1
      004045 A3               [24]  827 	inc	dptr
      004046 F0               [24]  828 	movx	@dptr,a
      004047 E5 4B            [12]  829 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 2)
      004049 3A               [12]  830 	addc	a, r2
      00404A A3               [24]  831 	inc	dptr
      00404B F0               [24]  832 	movx	@dptr,a
      00404C E5 4C            [12]  833 	mov	a,(_calculateIPChecksum_sloc1_1_0 + 3)
      00404E 3B               [12]  834 	addc	a, r3
      00404F A3               [24]  835 	inc	dptr
      004050 F0               [24]  836 	movx	@dptr,a
      004051 80 BF            [24]  837 	sjmp	00102$
      004053                        838 00104$:
                                    839 ;	tcp.c:32: uint16_t checksum = ~((uint16_t) sum);
      004053 EC               [12]  840 	mov	a,r4
      004054 F4               [12]  841 	cpl	a
      004055 FC               [12]  842 	mov	r4,a
      004056 ED               [12]  843 	mov	a,r5
      004057 F4               [12]  844 	cpl	a
      004058 FD               [12]  845 	mov	r5,a
                                    846 ;	tcp.c:33: buffer[IP_CHECKSUM_P] = (checksum >> 8) & 0xFF;
      004059 90 03 A3         [24]  847 	mov	dptr,#_calculateIPChecksum_buffer_10000_118
      00405C E0               [24]  848 	movx	a,@dptr
      00405D FB               [12]  849 	mov	r3,a
      00405E A3               [24]  850 	inc	dptr
      00405F E0               [24]  851 	movx	a,@dptr
      004060 FE               [12]  852 	mov	r6,a
      004061 A3               [24]  853 	inc	dptr
      004062 E0               [24]  854 	movx	a,@dptr
      004063 FF               [12]  855 	mov	r7,a
      004064 74 18            [12]  856 	mov	a,#0x18
      004066 2B               [12]  857 	add	a, r3
      004067 F5 49            [12]  858 	mov	_calculateIPChecksum_sloc1_1_0,a
      004069 E4               [12]  859 	clr	a
      00406A 3E               [12]  860 	addc	a, r6
      00406B F5 4A            [12]  861 	mov	(_calculateIPChecksum_sloc1_1_0 + 1),a
      00406D 8F 4B            [24]  862 	mov	(_calculateIPChecksum_sloc1_1_0 + 2),r7
      00406F 8D 02            [24]  863 	mov	ar2,r5
      004071 85 49 82         [24]  864 	mov	dpl,_calculateIPChecksum_sloc1_1_0
      004074 85 4A 83         [24]  865 	mov	dph,(_calculateIPChecksum_sloc1_1_0 + 1)
      004077 85 4B F0         [24]  866 	mov	b,(_calculateIPChecksum_sloc1_1_0 + 2)
      00407A EA               [12]  867 	mov	a,r2
      00407B 12 5F A0         [24]  868 	lcall	__gptrput
                                    869 ;	tcp.c:34: buffer[IP_CHECKSUM_P + 1] = checksum & 0xFF;
      00407E 74 19            [12]  870 	mov	a,#0x19
      004080 2B               [12]  871 	add	a, r3
      004081 FB               [12]  872 	mov	r3,a
      004082 E4               [12]  873 	clr	a
      004083 3E               [12]  874 	addc	a, r6
      004084 FE               [12]  875 	mov	r6,a
      004085 8B 82            [24]  876 	mov	dpl,r3
      004087 8E 83            [24]  877 	mov	dph,r6
      004089 8F F0            [24]  878 	mov	b,r7
      00408B EC               [12]  879 	mov	a,r4
                                    880 ;	tcp.c:35: }
      00408C 02 5F A0         [24]  881 	ljmp	__gptrput
                                    882 ;------------------------------------------------------------
                                    883 ;Allocation info for local variables in function 'calculateTcpChecksum'
                                    884 ;------------------------------------------------------------
                                    885 ;buffer                    Allocated with name '_calculateTcpChecksum_buffer_10000_125'
                                    886 ;tcpLength                 Allocated with name '_calculateTcpChecksum_tcpLength_10001_127'
                                    887 ;sum                       Allocated with name '_calculateTcpChecksum_sum_10001_127'
                                    888 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_128'
                                    889 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_130'
                                    890 ;i                         Allocated with name '_calculateTcpChecksum_i_20001_132'
                                    891 ;word                      Allocated with name '_calculateTcpChecksum_word_30001_133'
                                    892 ;checksum                  Allocated with name '_calculateTcpChecksum_checksum_10002_135'
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
      00408F                        903 _calculateTcpChecksum:
      00408F AF F0            [24]  904 	mov	r7,b
      004091 AE 83            [24]  905 	mov	r6,dph
      004093 E5 82            [12]  906 	mov	a,dpl
      004095 90 03 AC         [24]  907 	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
      004098 F0               [24]  908 	movx	@dptr,a
      004099 EE               [12]  909 	mov	a,r6
      00409A A3               [24]  910 	inc	dptr
      00409B F0               [24]  911 	movx	@dptr,a
      00409C EF               [12]  912 	mov	a,r7
      00409D A3               [24]  913 	inc	dptr
      00409E F0               [24]  914 	movx	@dptr,a
                                    915 ;	tcp.c:39: buffer[TCP_CHECKSUM_H_P] = 0;
      00409F 90 03 AC         [24]  916 	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
      0040A2 E0               [24]  917 	movx	a,@dptr
      0040A3 FD               [12]  918 	mov	r5,a
      0040A4 A3               [24]  919 	inc	dptr
      0040A5 E0               [24]  920 	movx	a,@dptr
      0040A6 FE               [12]  921 	mov	r6,a
      0040A7 A3               [24]  922 	inc	dptr
      0040A8 E0               [24]  923 	movx	a,@dptr
      0040A9 FF               [12]  924 	mov	r7,a
      0040AA 74 32            [12]  925 	mov	a,#0x32
      0040AC 2D               [12]  926 	add	a, r5
      0040AD FA               [12]  927 	mov	r2,a
      0040AE E4               [12]  928 	clr	a
      0040AF 3E               [12]  929 	addc	a, r6
      0040B0 FB               [12]  930 	mov	r3,a
      0040B1 8F 04            [24]  931 	mov	ar4,r7
      0040B3 8A 82            [24]  932 	mov	dpl,r2
      0040B5 8B 83            [24]  933 	mov	dph,r3
      0040B7 8C F0            [24]  934 	mov	b,r4
      0040B9 E4               [12]  935 	clr	a
      0040BA 12 5F A0         [24]  936 	lcall	__gptrput
                                    937 ;	tcp.c:40: buffer[TCP_CHECKSUM_L_P] = 0;
      0040BD 74 33            [12]  938 	mov	a,#0x33
      0040BF 2D               [12]  939 	add	a, r5
      0040C0 FA               [12]  940 	mov	r2,a
      0040C1 E4               [12]  941 	clr	a
      0040C2 3E               [12]  942 	addc	a, r6
      0040C3 FB               [12]  943 	mov	r3,a
      0040C4 8F 04            [24]  944 	mov	ar4,r7
      0040C6 8A 82            [24]  945 	mov	dpl,r2
      0040C8 8B 83            [24]  946 	mov	dph,r3
      0040CA 8C F0            [24]  947 	mov	b,r4
      0040CC E4               [12]  948 	clr	a
      0040CD 12 5F A0         [24]  949 	lcall	__gptrput
                                    950 ;	tcp.c:43: uint16_t tcpLength = (((buffer[IP_TOTLEN_H_P] << 8) | buffer[IP_TOTLEN_L_P])
      0040D0 74 10            [12]  951 	mov	a,#0x10
      0040D2 2D               [12]  952 	add	a, r5
      0040D3 FA               [12]  953 	mov	r2,a
      0040D4 E4               [12]  954 	clr	a
      0040D5 3E               [12]  955 	addc	a, r6
      0040D6 FB               [12]  956 	mov	r3,a
      0040D7 8F 04            [24]  957 	mov	ar4,r7
      0040D9 8A 82            [24]  958 	mov	dpl,r2
      0040DB 8B 83            [24]  959 	mov	dph,r3
      0040DD 8C F0            [24]  960 	mov	b,r4
      0040DF 12 6F 13         [24]  961 	lcall	__gptrget
      0040E2 FC               [12]  962 	mov	r4,a
      0040E3 7A 00            [12]  963 	mov	r2,#0x00
      0040E5 74 11            [12]  964 	mov	a,#0x11
      0040E7 2D               [12]  965 	add	a, r5
      0040E8 F8               [12]  966 	mov	r0,a
      0040E9 E4               [12]  967 	clr	a
      0040EA 3E               [12]  968 	addc	a, r6
      0040EB F9               [12]  969 	mov	r1,a
      0040EC 8F 03            [24]  970 	mov	ar3,r7
      0040EE 88 82            [24]  971 	mov	dpl,r0
      0040F0 89 83            [24]  972 	mov	dph,r1
      0040F2 8B F0            [24]  973 	mov	b,r3
      0040F4 12 6F 13         [24]  974 	lcall	__gptrget
      0040F7 7B 00            [12]  975 	mov	r3,#0x00
      0040F9 42 02            [12]  976 	orl	ar2,a
      0040FB EB               [12]  977 	mov	a,r3
      0040FC 42 04            [12]  978 	orl	ar4,a
      0040FE EA               [12]  979 	mov	a,r2
      0040FF 24 EC            [12]  980 	add	a,#0xec
      004101 FA               [12]  981 	mov	r2,a
      004102 EC               [12]  982 	mov	a,r4
      004103 34 FF            [12]  983 	addc	a,#0xff
      004105 FC               [12]  984 	mov	r4,a
                                    985 ;	tcp.c:45: uint32_t sum = 0;
      004106 90 03 AF         [24]  986 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      004109 E4               [12]  987 	clr	a
      00410A F0               [24]  988 	movx	@dptr,a
      00410B A3               [24]  989 	inc	dptr
      00410C F0               [24]  990 	movx	@dptr,a
      00410D A3               [24]  991 	inc	dptr
      00410E F0               [24]  992 	movx	@dptr,a
      00410F A3               [24]  993 	inc	dptr
      004110 F0               [24]  994 	movx	@dptr,a
                                    995 ;	tcp.c:48: for (uint8_t i = 0; i < 4; i++) {
      004111 90 03 B3         [24]  996 	mov	dptr,#_calculateTcpChecksum_i_20001_128
      004114 F0               [24]  997 	movx	@dptr,a
      004115                        998 00108$:
      004115 90 03 B3         [24]  999 	mov	dptr,#_calculateTcpChecksum_i_20001_128
      004118 E0               [24] 1000 	movx	a,@dptr
      004119 FB               [12] 1001 	mov	r3,a
      00411A BB 04 00         [24] 1002 	cjne	r3,#0x04,00166$
      00411D                       1003 00166$:
      00411D 40 03            [24] 1004 	jc	00167$
      00411F 02 41 B0         [24] 1005 	ljmp	00101$
      004122                       1006 00167$:
                                   1007 ;	tcp.c:49: sum += (buffer[IP_SRC_P + i] << 8) | buffer[IP_SRC_P + i + 1];
      004122 C0 02            [24] 1008 	push	ar2
      004124 C0 04            [24] 1009 	push	ar4
      004126 8B 47            [24] 1010 	mov	_calculateTcpChecksum_sloc0_1_0,r3
      004128 75 48 00         [24] 1011 	mov	(_calculateTcpChecksum_sloc0_1_0 + 1),#0x00
      00412B 74 1A            [12] 1012 	mov	a,#0x1a
      00412D 25 47            [12] 1013 	add	a, _calculateTcpChecksum_sloc0_1_0
      00412F FA               [12] 1014 	mov	r2,a
      004130 E4               [12] 1015 	clr	a
      004131 35 48            [12] 1016 	addc	a, (_calculateTcpChecksum_sloc0_1_0 + 1)
      004133 FC               [12] 1017 	mov	r4,a
      004134 EA               [12] 1018 	mov	a,r2
      004135 2D               [12] 1019 	add	a, r5
      004136 FA               [12] 1020 	mov	r2,a
      004137 EC               [12] 1021 	mov	a,r4
      004138 3E               [12] 1022 	addc	a, r6
      004139 F9               [12] 1023 	mov	r1,a
      00413A 8F 04            [24] 1024 	mov	ar4,r7
      00413C 8A 82            [24] 1025 	mov	dpl,r2
      00413E 89 83            [24] 1026 	mov	dph,r1
      004140 8C F0            [24] 1027 	mov	b,r4
      004142 12 6F 13         [24] 1028 	lcall	__gptrget
      004145 FA               [12] 1029 	mov	r2,a
      004146 7C 00            [12] 1030 	mov	r4,#0x00
      004148 8A 4A            [24] 1031 	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),r2
      00414A 8C 49            [24] 1032 	mov	_calculateTcpChecksum_sloc1_1_0,r4
      00414C 74 1B            [12] 1033 	mov	a,#0x1b
      00414E 25 47            [12] 1034 	add	a, _calculateTcpChecksum_sloc0_1_0
      004150 F8               [12] 1035 	mov	r0,a
      004151 E4               [12] 1036 	clr	a
      004152 35 48            [12] 1037 	addc	a, (_calculateTcpChecksum_sloc0_1_0 + 1)
      004154 F9               [12] 1038 	mov	r1,a
      004155 E8               [12] 1039 	mov	a,r0
      004156 2D               [12] 1040 	add	a, r5
      004157 F8               [12] 1041 	mov	r0,a
      004158 E9               [12] 1042 	mov	a,r1
      004159 3E               [12] 1043 	addc	a, r6
      00415A F9               [12] 1044 	mov	r1,a
      00415B 8F 04            [24] 1045 	mov	ar4,r7
      00415D 88 82            [24] 1046 	mov	dpl,r0
      00415F 89 83            [24] 1047 	mov	dph,r1
      004161 8C F0            [24] 1048 	mov	b,r4
      004163 12 6F 13         [24] 1049 	lcall	__gptrget
      004166 7C 00            [12] 1050 	mov	r4,#0x00
      004168 42 49            [12] 1051 	orl	_calculateTcpChecksum_sloc1_1_0,a
      00416A EC               [12] 1052 	mov	a,r4
      00416B 42 4A            [12] 1053 	orl	(_calculateTcpChecksum_sloc1_1_0 + 1),a
      00416D 90 03 AF         [24] 1054 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      004170 E0               [24] 1055 	movx	a,@dptr
      004171 F5 4B            [12] 1056 	mov	_calculateTcpChecksum_sloc2_1_0,a
      004173 A3               [24] 1057 	inc	dptr
      004174 E0               [24] 1058 	movx	a,@dptr
      004175 F5 4C            [12] 1059 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),a
      004177 A3               [24] 1060 	inc	dptr
      004178 E0               [24] 1061 	movx	a,@dptr
      004179 F5 4D            [12] 1062 	mov	(_calculateTcpChecksum_sloc2_1_0 + 2),a
      00417B A3               [24] 1063 	inc	dptr
      00417C E0               [24] 1064 	movx	a,@dptr
      00417D F5 4E            [12] 1065 	mov	(_calculateTcpChecksum_sloc2_1_0 + 3),a
      00417F A8 49            [24] 1066 	mov	r0,_calculateTcpChecksum_sloc1_1_0
      004181 E5 4A            [12] 1067 	mov	a,(_calculateTcpChecksum_sloc1_1_0 + 1)
      004183 F9               [12] 1068 	mov	r1,a
      004184 33               [12] 1069 	rlc	a
      004185 95 E0            [12] 1070 	subb	a,acc
      004187 FA               [12] 1071 	mov	r2,a
      004188 FC               [12] 1072 	mov	r4,a
      004189 90 03 AF         [24] 1073 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      00418C E8               [12] 1074 	mov	a,r0
      00418D 25 4B            [12] 1075 	add	a, _calculateTcpChecksum_sloc2_1_0
      00418F F0               [24] 1076 	movx	@dptr,a
      004190 E9               [12] 1077 	mov	a,r1
      004191 35 4C            [12] 1078 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      004193 A3               [24] 1079 	inc	dptr
      004194 F0               [24] 1080 	movx	@dptr,a
      004195 EA               [12] 1081 	mov	a,r2
      004196 35 4D            [12] 1082 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 2)
      004198 A3               [24] 1083 	inc	dptr
      004199 F0               [24] 1084 	movx	@dptr,a
      00419A EC               [12] 1085 	mov	a,r4
      00419B 35 4E            [12] 1086 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 3)
      00419D A3               [24] 1087 	inc	dptr
      00419E F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	tcp.c:50: i++;
      00419F 90 03 B3         [24] 1090 	mov	dptr,#_calculateTcpChecksum_i_20001_128
      0041A2 EB               [12] 1091 	mov	a,r3
      0041A3 04               [12] 1092 	inc	a
      0041A4 F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	tcp.c:48: for (uint8_t i = 0; i < 4; i++) {
      0041A5 E0               [24] 1095 	movx	a,@dptr
      0041A6 24 01            [12] 1096 	add	a, #0x01
      0041A8 F0               [24] 1097 	movx	@dptr,a
      0041A9 D0 04            [24] 1098 	pop	ar4
      0041AB D0 02            [24] 1099 	pop	ar2
      0041AD 02 41 15         [24] 1100 	ljmp	00108$
      0041B0                       1101 00101$:
                                   1102 ;	tcp.c:54: for (uint8_t i = 0; i < 4; i++) {
      0041B0 90 03 B4         [24] 1103 	mov	dptr,#_calculateTcpChecksum_i_20001_130
      0041B3 E4               [12] 1104 	clr	a
      0041B4 F0               [24] 1105 	movx	@dptr,a
      0041B5 90 03 AC         [24] 1106 	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
      0041B8 E0               [24] 1107 	movx	a,@dptr
      0041B9 FD               [12] 1108 	mov	r5,a
      0041BA A3               [24] 1109 	inc	dptr
      0041BB E0               [24] 1110 	movx	a,@dptr
      0041BC FE               [12] 1111 	mov	r6,a
      0041BD A3               [24] 1112 	inc	dptr
      0041BE E0               [24] 1113 	movx	a,@dptr
      0041BF FF               [12] 1114 	mov	r7,a
      0041C0                       1115 00111$:
      0041C0 90 03 B4         [24] 1116 	mov	dptr,#_calculateTcpChecksum_i_20001_130
      0041C3 E0               [24] 1117 	movx	a,@dptr
      0041C4 FB               [12] 1118 	mov	r3,a
      0041C5 BB 04 00         [24] 1119 	cjne	r3,#0x04,00168$
      0041C8                       1120 00168$:
      0041C8 40 03            [24] 1121 	jc	00169$
      0041CA 02 42 5F         [24] 1122 	ljmp	00102$
      0041CD                       1123 00169$:
                                   1124 ;	tcp.c:55: sum += (buffer[IP_DST_P + i] << 8) | buffer[IP_DST_P + i + 1];
      0041CD C0 02            [24] 1125 	push	ar2
      0041CF C0 04            [24] 1126 	push	ar4
      0041D1 8B 4B            [24] 1127 	mov	_calculateTcpChecksum_sloc2_1_0,r3
      0041D3 75 4C 00         [24] 1128 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),#0x00
      0041D6 74 1E            [12] 1129 	mov	a,#0x1e
      0041D8 25 4B            [12] 1130 	add	a, _calculateTcpChecksum_sloc2_1_0
      0041DA FA               [12] 1131 	mov	r2,a
      0041DB E4               [12] 1132 	clr	a
      0041DC 35 4C            [12] 1133 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      0041DE FC               [12] 1134 	mov	r4,a
      0041DF EA               [12] 1135 	mov	a,r2
      0041E0 2D               [12] 1136 	add	a, r5
      0041E1 FA               [12] 1137 	mov	r2,a
      0041E2 EC               [12] 1138 	mov	a,r4
      0041E3 3E               [12] 1139 	addc	a, r6
      0041E4 F9               [12] 1140 	mov	r1,a
      0041E5 8F 04            [24] 1141 	mov	ar4,r7
      0041E7 8A 82            [24] 1142 	mov	dpl,r2
      0041E9 89 83            [24] 1143 	mov	dph,r1
      0041EB 8C F0            [24] 1144 	mov	b,r4
      0041ED 12 6F 13         [24] 1145 	lcall	__gptrget
      0041F0 FA               [12] 1146 	mov	r2,a
      0041F1 7C 00            [12] 1147 	mov	r4,#0x00
      0041F3 8A 4A            [24] 1148 	mov	(_calculateTcpChecksum_sloc1_1_0 + 1),r2
      0041F5 8C 49            [24] 1149 	mov	_calculateTcpChecksum_sloc1_1_0,r4
      0041F7 74 1F            [12] 1150 	mov	a,#0x1f
      0041F9 25 4B            [12] 1151 	add	a, _calculateTcpChecksum_sloc2_1_0
      0041FB F8               [12] 1152 	mov	r0,a
      0041FC E4               [12] 1153 	clr	a
      0041FD 35 4C            [12] 1154 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      0041FF F9               [12] 1155 	mov	r1,a
      004200 E8               [12] 1156 	mov	a,r0
      004201 2D               [12] 1157 	add	a, r5
      004202 F8               [12] 1158 	mov	r0,a
      004203 E9               [12] 1159 	mov	a,r1
      004204 3E               [12] 1160 	addc	a, r6
      004205 F9               [12] 1161 	mov	r1,a
      004206 8F 04            [24] 1162 	mov	ar4,r7
      004208 88 82            [24] 1163 	mov	dpl,r0
      00420A 89 83            [24] 1164 	mov	dph,r1
      00420C 8C F0            [24] 1165 	mov	b,r4
      00420E 12 6F 13         [24] 1166 	lcall	__gptrget
      004211 7C 00            [12] 1167 	mov	r4,#0x00
      004213 45 49            [12] 1168 	orl	a,_calculateTcpChecksum_sloc1_1_0
      004215 F5 4B            [12] 1169 	mov	_calculateTcpChecksum_sloc2_1_0,a
      004217 EC               [12] 1170 	mov	a,r4
      004218 45 4A            [12] 1171 	orl	a,(_calculateTcpChecksum_sloc1_1_0 + 1)
      00421A F5 4C            [12] 1172 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),a
      00421C 90 03 AF         [24] 1173 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      00421F E0               [24] 1174 	movx	a,@dptr
      004220 F5 4F            [12] 1175 	mov	_calculateTcpChecksum_sloc3_1_0,a
      004222 A3               [24] 1176 	inc	dptr
      004223 E0               [24] 1177 	movx	a,@dptr
      004224 F5 50            [12] 1178 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      004226 A3               [24] 1179 	inc	dptr
      004227 E0               [24] 1180 	movx	a,@dptr
      004228 F5 51            [12] 1181 	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
      00422A A3               [24] 1182 	inc	dptr
      00422B E0               [24] 1183 	movx	a,@dptr
      00422C F5 52            [12] 1184 	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
      00422E A8 4B            [24] 1185 	mov	r0,_calculateTcpChecksum_sloc2_1_0
      004230 E5 4C            [12] 1186 	mov	a,(_calculateTcpChecksum_sloc2_1_0 + 1)
      004232 F9               [12] 1187 	mov	r1,a
      004233 33               [12] 1188 	rlc	a
      004234 95 E0            [12] 1189 	subb	a,acc
      004236 FA               [12] 1190 	mov	r2,a
      004237 FC               [12] 1191 	mov	r4,a
      004238 90 03 AF         [24] 1192 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      00423B E8               [12] 1193 	mov	a,r0
      00423C 25 4F            [12] 1194 	add	a, _calculateTcpChecksum_sloc3_1_0
      00423E F0               [24] 1195 	movx	@dptr,a
      00423F E9               [12] 1196 	mov	a,r1
      004240 35 50            [12] 1197 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
      004242 A3               [24] 1198 	inc	dptr
      004243 F0               [24] 1199 	movx	@dptr,a
      004244 EA               [12] 1200 	mov	a,r2
      004245 35 51            [12] 1201 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
      004247 A3               [24] 1202 	inc	dptr
      004248 F0               [24] 1203 	movx	@dptr,a
      004249 EC               [12] 1204 	mov	a,r4
      00424A 35 52            [12] 1205 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
      00424C A3               [24] 1206 	inc	dptr
      00424D F0               [24] 1207 	movx	@dptr,a
                                   1208 ;	tcp.c:56: i++;
      00424E 90 03 B4         [24] 1209 	mov	dptr,#_calculateTcpChecksum_i_20001_130
      004251 EB               [12] 1210 	mov	a,r3
      004252 04               [12] 1211 	inc	a
      004253 F0               [24] 1212 	movx	@dptr,a
                                   1213 ;	tcp.c:54: for (uint8_t i = 0; i < 4; i++) {
      004254 E0               [24] 1214 	movx	a,@dptr
      004255 24 01            [12] 1215 	add	a, #0x01
      004257 F0               [24] 1216 	movx	@dptr,a
      004258 D0 04            [24] 1217 	pop	ar4
      00425A D0 02            [24] 1218 	pop	ar2
      00425C 02 41 C0         [24] 1219 	ljmp	00111$
      00425F                       1220 00102$:
                                   1221 ;	tcp.c:60: sum += (uint16_t) IP_PROTO_TCP;
      00425F 90 03 AF         [24] 1222 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      004262 E0               [24] 1223 	movx	a,@dptr
      004263 FB               [12] 1224 	mov	r3,a
      004264 A3               [24] 1225 	inc	dptr
      004265 E0               [24] 1226 	movx	a,@dptr
      004266 FD               [12] 1227 	mov	r5,a
      004267 A3               [24] 1228 	inc	dptr
      004268 E0               [24] 1229 	movx	a,@dptr
      004269 FE               [12] 1230 	mov	r6,a
      00426A A3               [24] 1231 	inc	dptr
      00426B E0               [24] 1232 	movx	a,@dptr
      00426C FF               [12] 1233 	mov	r7,a
      00426D 90 03 AF         [24] 1234 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      004270 74 06            [12] 1235 	mov	a,#0x06
      004272 2B               [12] 1236 	add	a, r3
      004273 F0               [24] 1237 	movx	@dptr,a
      004274 E4               [12] 1238 	clr	a
      004275 3D               [12] 1239 	addc	a, r5
      004276 A3               [24] 1240 	inc	dptr
      004277 F0               [24] 1241 	movx	@dptr,a
      004278 E4               [12] 1242 	clr	a
      004279 3E               [12] 1243 	addc	a, r6
      00427A A3               [24] 1244 	inc	dptr
      00427B F0               [24] 1245 	movx	@dptr,a
      00427C E4               [12] 1246 	clr	a
      00427D 3F               [12] 1247 	addc	a, r7
      00427E A3               [24] 1248 	inc	dptr
      00427F F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	tcp.c:61: sum += tcpLength;
      004280 90 03 AF         [24] 1251 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      004283 E0               [24] 1252 	movx	a,@dptr
      004284 F5 4F            [12] 1253 	mov	_calculateTcpChecksum_sloc3_1_0,a
      004286 A3               [24] 1254 	inc	dptr
      004287 E0               [24] 1255 	movx	a,@dptr
      004288 F5 50            [12] 1256 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      00428A A3               [24] 1257 	inc	dptr
      00428B E0               [24] 1258 	movx	a,@dptr
      00428C F5 51            [12] 1259 	mov	(_calculateTcpChecksum_sloc3_1_0 + 2),a
      00428E A3               [24] 1260 	inc	dptr
      00428F E0               [24] 1261 	movx	a,@dptr
      004290 F5 52            [12] 1262 	mov	(_calculateTcpChecksum_sloc3_1_0 + 3),a
      004292 8A 00            [24] 1263 	mov	ar0,r2
      004294 8C 01            [24] 1264 	mov	ar1,r4
      004296 7E 00            [12] 1265 	mov	r6,#0x00
      004298 7F 00            [12] 1266 	mov	r7,#0x00
      00429A 90 03 AF         [24] 1267 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      00429D E8               [12] 1268 	mov	a,r0
      00429E 25 4F            [12] 1269 	add	a, _calculateTcpChecksum_sloc3_1_0
      0042A0 F0               [24] 1270 	movx	@dptr,a
      0042A1 E9               [12] 1271 	mov	a,r1
      0042A2 35 50            [12] 1272 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 1)
      0042A4 A3               [24] 1273 	inc	dptr
      0042A5 F0               [24] 1274 	movx	@dptr,a
      0042A6 EE               [12] 1275 	mov	a,r6
      0042A7 35 51            [12] 1276 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 2)
      0042A9 A3               [24] 1277 	inc	dptr
      0042AA F0               [24] 1278 	movx	@dptr,a
      0042AB EF               [12] 1279 	mov	a,r7
      0042AC 35 52            [12] 1280 	addc	a, (_calculateTcpChecksum_sloc3_1_0 + 3)
      0042AE A3               [24] 1281 	inc	dptr
      0042AF F0               [24] 1282 	movx	@dptr,a
                                   1283 ;	tcp.c:64: for (uint16_t i = TCP_SRC_PORT_H_P; i < TCP_SRC_PORT_H_P + tcpLength; i +=
      0042B0 90 03 B5         [24] 1284 	mov	dptr,#_calculateTcpChecksum_i_20001_132
      0042B3 74 22            [12] 1285 	mov	a,#0x22
      0042B5 F0               [24] 1286 	movx	@dptr,a
      0042B6 E4               [12] 1287 	clr	a
      0042B7 A3               [24] 1288 	inc	dptr
      0042B8 F0               [24] 1289 	movx	@dptr,a
      0042B9 90 03 AC         [24] 1290 	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
      0042BC E0               [24] 1291 	movx	a,@dptr
      0042BD FD               [12] 1292 	mov	r5,a
      0042BE A3               [24] 1293 	inc	dptr
      0042BF E0               [24] 1294 	movx	a,@dptr
      0042C0 FE               [12] 1295 	mov	r6,a
      0042C1 A3               [24] 1296 	inc	dptr
      0042C2 E0               [24] 1297 	movx	a,@dptr
      0042C3 FF               [12] 1298 	mov	r7,a
      0042C4                       1299 00114$:
      0042C4 8A 01            [24] 1300 	mov	ar1,r2
      0042C6 8C 03            [24] 1301 	mov	ar3,r4
      0042C8 74 22            [12] 1302 	mov	a,#0x22
      0042CA 29               [12] 1303 	add	a, r1
      0042CB F9               [12] 1304 	mov	r1,a
      0042CC E4               [12] 1305 	clr	a
      0042CD 3B               [12] 1306 	addc	a, r3
      0042CE FB               [12] 1307 	mov	r3,a
      0042CF 90 03 B5         [24] 1308 	mov	dptr,#_calculateTcpChecksum_i_20001_132
      0042D2 E0               [24] 1309 	movx	a,@dptr
      0042D3 F5 4F            [12] 1310 	mov	_calculateTcpChecksum_sloc3_1_0,a
      0042D5 A3               [24] 1311 	inc	dptr
      0042D6 E0               [24] 1312 	movx	a,@dptr
      0042D7 F5 50            [12] 1313 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),a
      0042D9 85 4F 4B         [24] 1314 	mov	_calculateTcpChecksum_sloc2_1_0,_calculateTcpChecksum_sloc3_1_0
      0042DC 85 50 4C         [24] 1315 	mov	(_calculateTcpChecksum_sloc2_1_0 + 1),(_calculateTcpChecksum_sloc3_1_0 + 1)
      0042DF C3               [12] 1316 	clr	c
      0042E0 E5 4B            [12] 1317 	mov	a,_calculateTcpChecksum_sloc2_1_0
      0042E2 99               [12] 1318 	subb	a,r1
      0042E3 E5 4C            [12] 1319 	mov	a,(_calculateTcpChecksum_sloc2_1_0 + 1)
      0042E5 9B               [12] 1320 	subb	a,r3
      0042E6 40 03            [24] 1321 	jc	00170$
      0042E8 02 43 72         [24] 1322 	ljmp	00104$
      0042EB                       1323 00170$:
                                   1324 ;	tcp.c:66: uint16_t word = (buffer[i] << 8) | buffer[i + 1];
      0042EB C0 02            [24] 1325 	push	ar2
      0042ED C0 04            [24] 1326 	push	ar4
      0042EF E5 4F            [12] 1327 	mov	a,_calculateTcpChecksum_sloc3_1_0
      0042F1 2D               [12] 1328 	add	a, r5
      0042F2 F8               [12] 1329 	mov	r0,a
      0042F3 E5 50            [12] 1330 	mov	a,(_calculateTcpChecksum_sloc3_1_0 + 1)
      0042F5 3E               [12] 1331 	addc	a, r6
      0042F6 F9               [12] 1332 	mov	r1,a
      0042F7 8F 03            [24] 1333 	mov	ar3,r7
      0042F9 88 82            [24] 1334 	mov	dpl,r0
      0042FB 89 83            [24] 1335 	mov	dph,r1
      0042FD 8B F0            [24] 1336 	mov	b,r3
      0042FF 12 6F 13         [24] 1337 	lcall	__gptrget
      004302 FB               [12] 1338 	mov	r3,a
      004303 78 00            [12] 1339 	mov	r0,#0x00
      004305 74 01            [12] 1340 	mov	a,#0x01
      004307 25 4B            [12] 1341 	add	a, _calculateTcpChecksum_sloc2_1_0
      004309 F9               [12] 1342 	mov	r1,a
      00430A E4               [12] 1343 	clr	a
      00430B 35 4C            [12] 1344 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      00430D FC               [12] 1345 	mov	r4,a
      00430E E9               [12] 1346 	mov	a,r1
      00430F 2D               [12] 1347 	add	a, r5
      004310 F9               [12] 1348 	mov	r1,a
      004311 EC               [12] 1349 	mov	a,r4
      004312 3E               [12] 1350 	addc	a, r6
      004313 FC               [12] 1351 	mov	r4,a
      004314 8F 02            [24] 1352 	mov	ar2,r7
      004316 89 82            [24] 1353 	mov	dpl,r1
      004318 8C 83            [24] 1354 	mov	dph,r4
      00431A 8A F0            [24] 1355 	mov	b,r2
      00431C 12 6F 13         [24] 1356 	lcall	__gptrget
      00431F 7C 00            [12] 1357 	mov	r4,#0x00
      004321 42 00            [12] 1358 	orl	ar0,a
      004323 EC               [12] 1359 	mov	a,r4
      004324 42 03            [12] 1360 	orl	ar3,a
      004326 88 4F            [24] 1361 	mov	_calculateTcpChecksum_sloc3_1_0,r0
      004328 8B 50            [24] 1362 	mov	(_calculateTcpChecksum_sloc3_1_0 + 1),r3
                                   1363 ;	tcp.c:67: sum += word;
      00432A 90 03 AF         [24] 1364 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      00432D E0               [24] 1365 	movx	a,@dptr
      00432E F5 53            [12] 1366 	mov	_calculateTcpChecksum_sloc4_1_0,a
      004330 A3               [24] 1367 	inc	dptr
      004331 E0               [24] 1368 	movx	a,@dptr
      004332 F5 54            [12] 1369 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
      004334 A3               [24] 1370 	inc	dptr
      004335 E0               [24] 1371 	movx	a,@dptr
      004336 F5 55            [12] 1372 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
      004338 A3               [24] 1373 	inc	dptr
      004339 E0               [24] 1374 	movx	a,@dptr
      00433A F5 56            [12] 1375 	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
      00433C A8 4F            [24] 1376 	mov	r0,_calculateTcpChecksum_sloc3_1_0
      00433E AA 50            [24] 1377 	mov	r2,(_calculateTcpChecksum_sloc3_1_0 + 1)
      004340 7B 00            [12] 1378 	mov	r3,#0x00
      004342 7C 00            [12] 1379 	mov	r4,#0x00
      004344 90 03 AF         [24] 1380 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      004347 E8               [12] 1381 	mov	a,r0
      004348 25 53            [12] 1382 	add	a, _calculateTcpChecksum_sloc4_1_0
      00434A F0               [24] 1383 	movx	@dptr,a
      00434B EA               [12] 1384 	mov	a,r2
      00434C 35 54            [12] 1385 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 1)
      00434E A3               [24] 1386 	inc	dptr
      00434F F0               [24] 1387 	movx	@dptr,a
      004350 EB               [12] 1388 	mov	a,r3
      004351 35 55            [12] 1389 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 2)
      004353 A3               [24] 1390 	inc	dptr
      004354 F0               [24] 1391 	movx	@dptr,a
      004355 EC               [12] 1392 	mov	a,r4
      004356 35 56            [12] 1393 	addc	a, (_calculateTcpChecksum_sloc4_1_0 + 3)
      004358 A3               [24] 1394 	inc	dptr
      004359 F0               [24] 1395 	movx	@dptr,a
                                   1396 ;	tcp.c:65: 2) {
      00435A 74 02            [12] 1397 	mov	a,#0x02
      00435C 25 4B            [12] 1398 	add	a, _calculateTcpChecksum_sloc2_1_0
      00435E FB               [12] 1399 	mov	r3,a
      00435F E4               [12] 1400 	clr	a
      004360 35 4C            [12] 1401 	addc	a, (_calculateTcpChecksum_sloc2_1_0 + 1)
      004362 FC               [12] 1402 	mov	r4,a
      004363 90 03 B5         [24] 1403 	mov	dptr,#_calculateTcpChecksum_i_20001_132
      004366 EB               [12] 1404 	mov	a,r3
      004367 F0               [24] 1405 	movx	@dptr,a
      004368 EC               [12] 1406 	mov	a,r4
      004369 A3               [24] 1407 	inc	dptr
      00436A F0               [24] 1408 	movx	@dptr,a
      00436B D0 04            [24] 1409 	pop	ar4
      00436D D0 02            [24] 1410 	pop	ar2
      00436F 02 42 C4         [24] 1411 	ljmp	00114$
                                   1412 ;	tcp.c:71: while (sum >> 16) {
      004372                       1413 00104$:
      004372 90 03 AF         [24] 1414 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      004375 E0               [24] 1415 	movx	a,@dptr
      004376 FC               [12] 1416 	mov	r4,a
      004377 A3               [24] 1417 	inc	dptr
      004378 E0               [24] 1418 	movx	a,@dptr
      004379 FD               [12] 1419 	mov	r5,a
      00437A A3               [24] 1420 	inc	dptr
      00437B E0               [24] 1421 	movx	a,@dptr
      00437C FE               [12] 1422 	mov	r6,a
      00437D A3               [24] 1423 	inc	dptr
      00437E E0               [24] 1424 	movx	a,@dptr
      00437F FF               [12] 1425 	mov	r7,a
      004380 8E 53            [24] 1426 	mov	_calculateTcpChecksum_sloc4_1_0,r6
      004382 8F 54            [24] 1427 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),r7
      004384 E4               [12] 1428 	clr	a
      004385 F5 55            [12] 1429 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),a
      004387 F5 56            [12] 1430 	mov	(_calculateTcpChecksum_sloc4_1_0 + 3),a
      004389 E5 53            [12] 1431 	mov	a,_calculateTcpChecksum_sloc4_1_0
      00438B 45 54            [12] 1432 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
      00438D 45 55            [12] 1433 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
      00438F 45 56            [12] 1434 	orl	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
      004391 60 20            [24] 1435 	jz	00106$
                                   1436 ;	tcp.c:72: sum = (sum & 0xFFFF) + (sum >> 16);
      004393 8C 00            [24] 1437 	mov	ar0,r4
      004395 8D 01            [24] 1438 	mov	ar1,r5
      004397 7A 00            [12] 1439 	mov	r2,#0x00
      004399 7B 00            [12] 1440 	mov	r3,#0x00
      00439B 90 03 AF         [24] 1441 	mov	dptr,#_calculateTcpChecksum_sum_10001_127
      00439E E5 53            [12] 1442 	mov	a,_calculateTcpChecksum_sloc4_1_0
      0043A0 28               [12] 1443 	add	a, r0
      0043A1 F0               [24] 1444 	movx	@dptr,a
      0043A2 E5 54            [12] 1445 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 1)
      0043A4 39               [12] 1446 	addc	a, r1
      0043A5 A3               [24] 1447 	inc	dptr
      0043A6 F0               [24] 1448 	movx	@dptr,a
      0043A7 E5 55            [12] 1449 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 2)
      0043A9 3A               [12] 1450 	addc	a, r2
      0043AA A3               [24] 1451 	inc	dptr
      0043AB F0               [24] 1452 	movx	@dptr,a
      0043AC E5 56            [12] 1453 	mov	a,(_calculateTcpChecksum_sloc4_1_0 + 3)
      0043AE 3B               [12] 1454 	addc	a, r3
      0043AF A3               [24] 1455 	inc	dptr
      0043B0 F0               [24] 1456 	movx	@dptr,a
      0043B1 80 BF            [24] 1457 	sjmp	00104$
      0043B3                       1458 00106$:
                                   1459 ;	tcp.c:76: uint16_t checksum = ~((uint16_t) sum);
      0043B3 EC               [12] 1460 	mov	a,r4
      0043B4 F4               [12] 1461 	cpl	a
      0043B5 FC               [12] 1462 	mov	r4,a
      0043B6 ED               [12] 1463 	mov	a,r5
      0043B7 F4               [12] 1464 	cpl	a
      0043B8 FD               [12] 1465 	mov	r5,a
                                   1466 ;	tcp.c:77: buffer[TCP_CHECKSUM_H_P] = (checksum >> 8) & 0xFF;
      0043B9 90 03 AC         [24] 1467 	mov	dptr,#_calculateTcpChecksum_buffer_10000_125
      0043BC E0               [24] 1468 	movx	a,@dptr
      0043BD FB               [12] 1469 	mov	r3,a
      0043BE A3               [24] 1470 	inc	dptr
      0043BF E0               [24] 1471 	movx	a,@dptr
      0043C0 FE               [12] 1472 	mov	r6,a
      0043C1 A3               [24] 1473 	inc	dptr
      0043C2 E0               [24] 1474 	movx	a,@dptr
      0043C3 FF               [12] 1475 	mov	r7,a
      0043C4 74 32            [12] 1476 	mov	a,#0x32
      0043C6 2B               [12] 1477 	add	a, r3
      0043C7 F5 53            [12] 1478 	mov	_calculateTcpChecksum_sloc4_1_0,a
      0043C9 E4               [12] 1479 	clr	a
      0043CA 3E               [12] 1480 	addc	a, r6
      0043CB F5 54            [12] 1481 	mov	(_calculateTcpChecksum_sloc4_1_0 + 1),a
      0043CD 8F 55            [24] 1482 	mov	(_calculateTcpChecksum_sloc4_1_0 + 2),r7
      0043CF 8D 02            [24] 1483 	mov	ar2,r5
      0043D1 85 53 82         [24] 1484 	mov	dpl,_calculateTcpChecksum_sloc4_1_0
      0043D4 85 54 83         [24] 1485 	mov	dph,(_calculateTcpChecksum_sloc4_1_0 + 1)
      0043D7 85 55 F0         [24] 1486 	mov	b,(_calculateTcpChecksum_sloc4_1_0 + 2)
      0043DA EA               [12] 1487 	mov	a,r2
      0043DB 12 5F A0         [24] 1488 	lcall	__gptrput
                                   1489 ;	tcp.c:78: buffer[TCP_CHECKSUM_L_P] = checksum & 0xFF;
      0043DE 74 33            [12] 1490 	mov	a,#0x33
      0043E0 2B               [12] 1491 	add	a, r3
      0043E1 FB               [12] 1492 	mov	r3,a
      0043E2 E4               [12] 1493 	clr	a
      0043E3 3E               [12] 1494 	addc	a, r6
      0043E4 FE               [12] 1495 	mov	r6,a
      0043E5 8B 82            [24] 1496 	mov	dpl,r3
      0043E7 8E 83            [24] 1497 	mov	dph,r6
      0043E9 8F F0            [24] 1498 	mov	b,r7
      0043EB EC               [12] 1499 	mov	a,r4
                                   1500 ;	tcp.c:79: }
      0043EC 02 5F A0         [24] 1501 	ljmp	__gptrput
                                   1502 ;------------------------------------------------------------
                                   1503 ;Allocation info for local variables in function 'calculate_checksum'
                                   1504 ;------------------------------------------------------------
                                   1505 ;length                    Allocated with name '_calculate_checksum_PARM_2'
                                   1506 ;data                      Allocated with name '_calculate_checksum_data_10000_136'
                                   1507 ;sum                       Allocated with name '_calculate_checksum_sum_10000_137'
                                   1508 ;i                         Allocated with name '_calculate_checksum_i_20000_138'
                                   1509 ;word                      Allocated with name '_calculate_checksum_word_30000_139'
                                   1510 ;sloc0                     Allocated with name '_calculate_checksum_sloc0_1_0'
                                   1511 ;sloc1                     Allocated with name '_calculate_checksum_sloc1_1_0'
                                   1512 ;sloc2                     Allocated with name '_calculate_checksum_sloc2_1_0'
                                   1513 ;------------------------------------------------------------
                                   1514 ;	tcp.c:82: uint16_t calculate_checksum(uint8_t *data, uint16_t length) {
                                   1515 ;	-----------------------------------------
                                   1516 ;	 function calculate_checksum
                                   1517 ;	-----------------------------------------
      0043EF                       1518 _calculate_checksum:
      0043EF AF F0            [24] 1519 	mov	r7,b
      0043F1 AE 83            [24] 1520 	mov	r6,dph
      0043F3 E5 82            [12] 1521 	mov	a,dpl
      0043F5 90 03 B9         [24] 1522 	mov	dptr,#_calculate_checksum_data_10000_136
      0043F8 F0               [24] 1523 	movx	@dptr,a
      0043F9 EE               [12] 1524 	mov	a,r6
      0043FA A3               [24] 1525 	inc	dptr
      0043FB F0               [24] 1526 	movx	@dptr,a
      0043FC EF               [12] 1527 	mov	a,r7
      0043FD A3               [24] 1528 	inc	dptr
      0043FE F0               [24] 1529 	movx	@dptr,a
                                   1530 ;	tcp.c:83: uint32_t sum = 0;
      0043FF 90 03 BC         [24] 1531 	mov	dptr,#_calculate_checksum_sum_10000_137
      004402 E4               [12] 1532 	clr	a
      004403 F0               [24] 1533 	movx	@dptr,a
      004404 A3               [24] 1534 	inc	dptr
      004405 F0               [24] 1535 	movx	@dptr,a
      004406 A3               [24] 1536 	inc	dptr
      004407 F0               [24] 1537 	movx	@dptr,a
      004408 A3               [24] 1538 	inc	dptr
      004409 F0               [24] 1539 	movx	@dptr,a
                                   1540 ;	tcp.c:86: for (uint16_t i = 0; i < length; i += 2) {
      00440A 90 03 C0         [24] 1541 	mov	dptr,#_calculate_checksum_i_20000_138
      00440D F0               [24] 1542 	movx	@dptr,a
      00440E A3               [24] 1543 	inc	dptr
      00440F F0               [24] 1544 	movx	@dptr,a
      004410 90 03 B9         [24] 1545 	mov	dptr,#_calculate_checksum_data_10000_136
      004413 E0               [24] 1546 	movx	a,@dptr
      004414 FD               [12] 1547 	mov	r5,a
      004415 A3               [24] 1548 	inc	dptr
      004416 E0               [24] 1549 	movx	a,@dptr
      004417 FE               [12] 1550 	mov	r6,a
      004418 A3               [24] 1551 	inc	dptr
      004419 E0               [24] 1552 	movx	a,@dptr
      00441A FF               [12] 1553 	mov	r7,a
      00441B 90 03 B7         [24] 1554 	mov	dptr,#_calculate_checksum_PARM_2
      00441E E0               [24] 1555 	movx	a,@dptr
      00441F F5 47            [12] 1556 	mov	_calculate_checksum_sloc0_1_0,a
      004421 A3               [24] 1557 	inc	dptr
      004422 E0               [24] 1558 	movx	a,@dptr
      004423 F5 48            [12] 1559 	mov	(_calculate_checksum_sloc0_1_0 + 1),a
      004425                       1560 00105$:
      004425 90 03 C0         [24] 1561 	mov	dptr,#_calculate_checksum_i_20000_138
      004428 E0               [24] 1562 	movx	a,@dptr
      004429 F9               [12] 1563 	mov	r1,a
      00442A A3               [24] 1564 	inc	dptr
      00442B E0               [24] 1565 	movx	a,@dptr
      00442C FA               [12] 1566 	mov	r2,a
      00442D C3               [12] 1567 	clr	c
      00442E E9               [12] 1568 	mov	a,r1
      00442F 95 47            [12] 1569 	subb	a,_calculate_checksum_sloc0_1_0
      004431 EA               [12] 1570 	mov	a,r2
      004432 95 48            [12] 1571 	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
      004434 40 03            [24] 1572 	jc	00135$
      004436 02 45 25         [24] 1573 	ljmp	00103$
      004439                       1574 00135$:
                                   1575 ;	tcp.c:87: uint16_t word = (data[i] << 8) + (i + 1 < length ? data[i + 1] : 0);
      004439 E9               [12] 1576 	mov	a,r1
      00443A 2D               [12] 1577 	add	a, r5
      00443B F8               [12] 1578 	mov	r0,a
      00443C EA               [12] 1579 	mov	a,r2
      00443D 3E               [12] 1580 	addc	a, r6
      00443E FB               [12] 1581 	mov	r3,a
      00443F 8F 04            [24] 1582 	mov	ar4,r7
      004441 88 82            [24] 1583 	mov	dpl,r0
      004443 8B 83            [24] 1584 	mov	dph,r3
      004445 8C F0            [24] 1585 	mov	b,r4
      004447 12 6F 13         [24] 1586 	lcall	__gptrget
      00444A FC               [12] 1587 	mov	r4,a
      00444B 7B 00            [12] 1588 	mov	r3,#0x00
      00444D C0 05            [24] 1589 	push	ar5
      00444F C0 06            [24] 1590 	push	ar6
      004451 C0 07            [24] 1591 	push	ar7
      004453 74 01            [12] 1592 	mov	a,#0x01
      004455 29               [12] 1593 	add	a, r1
      004456 F8               [12] 1594 	mov	r0,a
      004457 E4               [12] 1595 	clr	a
      004458 3A               [12] 1596 	addc	a, r2
      004459 FF               [12] 1597 	mov	r7,a
      00445A C3               [12] 1598 	clr	c
      00445B E8               [12] 1599 	mov	a,r0
      00445C 95 47            [12] 1600 	subb	a,_calculate_checksum_sloc0_1_0
      00445E EF               [12] 1601 	mov	a,r7
      00445F 95 48            [12] 1602 	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
      004461 D0 07            [24] 1603 	pop	ar7
      004463 D0 06            [24] 1604 	pop	ar6
      004465 D0 05            [24] 1605 	pop	ar5
      004467 50 1B            [24] 1606 	jnc	00109$
      004469 09               [12] 1607 	inc	r1
      00446A B9 00 01         [24] 1608 	cjne	r1,#0x00,00137$
      00446D 0A               [12] 1609 	inc	r2
      00446E                       1610 00137$:
      00446E E9               [12] 1611 	mov	a,r1
      00446F 2D               [12] 1612 	add	a, r5
      004470 F9               [12] 1613 	mov	r1,a
      004471 EA               [12] 1614 	mov	a,r2
      004472 3E               [12] 1615 	addc	a, r6
      004473 F8               [12] 1616 	mov	r0,a
      004474 8F 02            [24] 1617 	mov	ar2,r7
      004476 89 82            [24] 1618 	mov	dpl,r1
      004478 88 83            [24] 1619 	mov	dph,r0
      00447A 8A F0            [24] 1620 	mov	b,r2
      00447C 12 6F 13         [24] 1621 	lcall	__gptrget
      00447F F9               [12] 1622 	mov	r1,a
      004480 7A 00            [12] 1623 	mov	r2,#0x00
      004482 80 04            [24] 1624 	sjmp	00110$
      004484                       1625 00109$:
      004484 79 00            [12] 1626 	mov	r1,#0x00
      004486 7A 00            [12] 1627 	mov	r2,#0x00
      004488                       1628 00110$:
      004488 C0 05            [24] 1629 	push	ar5
      00448A C0 06            [24] 1630 	push	ar6
      00448C C0 07            [24] 1631 	push	ar7
      00448E E9               [12] 1632 	mov	a,r1
      00448F 2B               [12] 1633 	add	a, r3
      004490 FB               [12] 1634 	mov	r3,a
      004491 EA               [12] 1635 	mov	a,r2
      004492 3C               [12] 1636 	addc	a, r4
      004493 FC               [12] 1637 	mov	r4,a
                                   1638 ;	tcp.c:88: sum += word;
      004494 90 03 BC         [24] 1639 	mov	dptr,#_calculate_checksum_sum_10000_137
      004497 E0               [24] 1640 	movx	a,@dptr
      004498 F8               [12] 1641 	mov	r0,a
      004499 A3               [24] 1642 	inc	dptr
      00449A E0               [24] 1643 	movx	a,@dptr
      00449B F9               [12] 1644 	mov	r1,a
      00449C A3               [24] 1645 	inc	dptr
      00449D E0               [24] 1646 	movx	a,@dptr
      00449E FA               [12] 1647 	mov	r2,a
      00449F A3               [24] 1648 	inc	dptr
      0044A0 E0               [24] 1649 	movx	a,@dptr
      0044A1 FF               [12] 1650 	mov	r7,a
      0044A2 7E 00            [12] 1651 	mov	r6,#0x00
      0044A4 7D 00            [12] 1652 	mov	r5,#0x00
      0044A6 90 03 BC         [24] 1653 	mov	dptr,#_calculate_checksum_sum_10000_137
      0044A9 EB               [12] 1654 	mov	a,r3
      0044AA 28               [12] 1655 	add	a, r0
      0044AB F0               [24] 1656 	movx	@dptr,a
      0044AC EC               [12] 1657 	mov	a,r4
      0044AD 39               [12] 1658 	addc	a, r1
      0044AE A3               [24] 1659 	inc	dptr
      0044AF F0               [24] 1660 	movx	@dptr,a
      0044B0 EE               [12] 1661 	mov	a,r6
      0044B1 3A               [12] 1662 	addc	a, r2
      0044B2 A3               [24] 1663 	inc	dptr
      0044B3 F0               [24] 1664 	movx	@dptr,a
      0044B4 ED               [12] 1665 	mov	a,r5
      0044B5 3F               [12] 1666 	addc	a, r7
      0044B6 A3               [24] 1667 	inc	dptr
      0044B7 F0               [24] 1668 	movx	@dptr,a
                                   1669 ;	tcp.c:91: if (sum > 0xFFFF) {
      0044B8 90 03 BC         [24] 1670 	mov	dptr,#_calculate_checksum_sum_10000_137
      0044BB E0               [24] 1671 	movx	a,@dptr
      0044BC F5 49            [12] 1672 	mov	_calculate_checksum_sloc1_1_0,a
      0044BE A3               [24] 1673 	inc	dptr
      0044BF E0               [24] 1674 	movx	a,@dptr
      0044C0 F5 4A            [12] 1675 	mov	(_calculate_checksum_sloc1_1_0 + 1),a
      0044C2 A3               [24] 1676 	inc	dptr
      0044C3 E0               [24] 1677 	movx	a,@dptr
      0044C4 F5 4B            [12] 1678 	mov	(_calculate_checksum_sloc1_1_0 + 2),a
      0044C6 A3               [24] 1679 	inc	dptr
      0044C7 E0               [24] 1680 	movx	a,@dptr
      0044C8 F5 4C            [12] 1681 	mov	(_calculate_checksum_sloc1_1_0 + 3),a
      0044CA C3               [12] 1682 	clr	c
      0044CB 74 FF            [12] 1683 	mov	a,#0xff
      0044CD 95 49            [12] 1684 	subb	a,_calculate_checksum_sloc1_1_0
      0044CF 74 FF            [12] 1685 	mov	a,#0xff
      0044D1 95 4A            [12] 1686 	subb	a,(_calculate_checksum_sloc1_1_0 + 1)
      0044D3 E4               [12] 1687 	clr	a
      0044D4 95 4B            [12] 1688 	subb	a,(_calculate_checksum_sloc1_1_0 + 2)
      0044D6 E4               [12] 1689 	clr	a
      0044D7 95 4C            [12] 1690 	subb	a,(_calculate_checksum_sloc1_1_0 + 3)
      0044D9 D0 07            [24] 1691 	pop	ar7
      0044DB D0 06            [24] 1692 	pop	ar6
      0044DD D0 05            [24] 1693 	pop	ar5
      0044DF 50 2A            [24] 1694 	jnc	00106$
                                   1695 ;	tcp.c:92: sum = (sum & 0xFFFF) + (sum >> 16);
      0044E1 85 49 4D         [24] 1696 	mov	_calculate_checksum_sloc2_1_0,_calculate_checksum_sloc1_1_0
      0044E4 85 4A 4E         [24] 1697 	mov	(_calculate_checksum_sloc2_1_0 + 1),(_calculate_checksum_sloc1_1_0 + 1)
      0044E7 75 4F 00         [24] 1698 	mov	(_calculate_checksum_sloc2_1_0 + 2),#0x00
      0044EA 75 50 00         [24] 1699 	mov	(_calculate_checksum_sloc2_1_0 + 3),#0x00
      0044ED A8 4B            [24] 1700 	mov	r0,(_calculate_checksum_sloc1_1_0 + 2)
      0044EF AA 4C            [24] 1701 	mov	r2,(_calculate_checksum_sloc1_1_0 + 3)
      0044F1 7B 00            [12] 1702 	mov	r3,#0x00
      0044F3 7C 00            [12] 1703 	mov	r4,#0x00
      0044F5 90 03 BC         [24] 1704 	mov	dptr,#_calculate_checksum_sum_10000_137
      0044F8 E8               [12] 1705 	mov	a,r0
      0044F9 25 4D            [12] 1706 	add	a, _calculate_checksum_sloc2_1_0
      0044FB F0               [24] 1707 	movx	@dptr,a
      0044FC EA               [12] 1708 	mov	a,r2
      0044FD 35 4E            [12] 1709 	addc	a, (_calculate_checksum_sloc2_1_0 + 1)
      0044FF A3               [24] 1710 	inc	dptr
      004500 F0               [24] 1711 	movx	@dptr,a
      004501 EB               [12] 1712 	mov	a,r3
      004502 35 4F            [12] 1713 	addc	a, (_calculate_checksum_sloc2_1_0 + 2)
      004504 A3               [24] 1714 	inc	dptr
      004505 F0               [24] 1715 	movx	@dptr,a
      004506 EC               [12] 1716 	mov	a,r4
      004507 35 50            [12] 1717 	addc	a, (_calculate_checksum_sloc2_1_0 + 3)
      004509 A3               [24] 1718 	inc	dptr
      00450A F0               [24] 1719 	movx	@dptr,a
      00450B                       1720 00106$:
                                   1721 ;	tcp.c:86: for (uint16_t i = 0; i < length; i += 2) {
      00450B 90 03 C0         [24] 1722 	mov	dptr,#_calculate_checksum_i_20000_138
      00450E E0               [24] 1723 	movx	a,@dptr
      00450F FB               [12] 1724 	mov	r3,a
      004510 A3               [24] 1725 	inc	dptr
      004511 E0               [24] 1726 	movx	a,@dptr
      004512 FC               [12] 1727 	mov	r4,a
      004513 74 02            [12] 1728 	mov	a,#0x02
      004515 2B               [12] 1729 	add	a, r3
      004516 FB               [12] 1730 	mov	r3,a
      004517 E4               [12] 1731 	clr	a
      004518 3C               [12] 1732 	addc	a, r4
      004519 FC               [12] 1733 	mov	r4,a
      00451A 90 03 C0         [24] 1734 	mov	dptr,#_calculate_checksum_i_20000_138
      00451D EB               [12] 1735 	mov	a,r3
      00451E F0               [24] 1736 	movx	@dptr,a
      00451F EC               [12] 1737 	mov	a,r4
      004520 A3               [24] 1738 	inc	dptr
      004521 F0               [24] 1739 	movx	@dptr,a
      004522 02 44 25         [24] 1740 	ljmp	00105$
      004525                       1741 00103$:
                                   1742 ;	tcp.c:97: sum = (sum & 0xFFFF) + (sum >> 16);
      004525 90 03 BC         [24] 1743 	mov	dptr,#_calculate_checksum_sum_10000_137
      004528 E0               [24] 1744 	movx	a,@dptr
      004529 FC               [12] 1745 	mov	r4,a
      00452A A3               [24] 1746 	inc	dptr
      00452B E0               [24] 1747 	movx	a,@dptr
      00452C FD               [12] 1748 	mov	r5,a
      00452D A3               [24] 1749 	inc	dptr
      00452E E0               [24] 1750 	movx	a,@dptr
      00452F FE               [12] 1751 	mov	r6,a
      004530 A3               [24] 1752 	inc	dptr
      004531 E0               [24] 1753 	movx	a,@dptr
      004532 FF               [12] 1754 	mov	r7,a
      004533 8C 00            [24] 1755 	mov	ar0,r4
      004535 8D 01            [24] 1756 	mov	ar1,r5
      004537 7A 00            [12] 1757 	mov	r2,#0x00
      004539 7B 00            [12] 1758 	mov	r3,#0x00
      00453B 8E 04            [24] 1759 	mov	ar4,r6
      00453D 8F 05            [24] 1760 	mov	ar5,r7
      00453F 7E 00            [12] 1761 	mov	r6,#0x00
      004541 7F 00            [12] 1762 	mov	r7,#0x00
      004543 90 03 BC         [24] 1763 	mov	dptr,#_calculate_checksum_sum_10000_137
      004546 EC               [12] 1764 	mov	a,r4
      004547 28               [12] 1765 	add	a, r0
      004548 F0               [24] 1766 	movx	@dptr,a
      004549 ED               [12] 1767 	mov	a,r5
      00454A 39               [12] 1768 	addc	a, r1
      00454B A3               [24] 1769 	inc	dptr
      00454C F0               [24] 1770 	movx	@dptr,a
      00454D EE               [12] 1771 	mov	a,r6
      00454E 3A               [12] 1772 	addc	a, r2
      00454F A3               [24] 1773 	inc	dptr
      004550 F0               [24] 1774 	movx	@dptr,a
      004551 EF               [12] 1775 	mov	a,r7
      004552 3B               [12] 1776 	addc	a, r3
      004553 A3               [24] 1777 	inc	dptr
      004554 F0               [24] 1778 	movx	@dptr,a
                                   1779 ;	tcp.c:100: return ~sum;
      004555 90 03 BC         [24] 1780 	mov	dptr,#_calculate_checksum_sum_10000_137
      004558 E0               [24] 1781 	movx	a,@dptr
      004559 FC               [12] 1782 	mov	r4,a
      00455A A3               [24] 1783 	inc	dptr
      00455B E0               [24] 1784 	movx	a,@dptr
      00455C FD               [12] 1785 	mov	r5,a
      00455D A3               [24] 1786 	inc	dptr
      00455E E0               [24] 1787 	movx	a,@dptr
      00455F FE               [12] 1788 	mov	r6,a
      004560 A3               [24] 1789 	inc	dptr
      004561 E0               [24] 1790 	movx	a,@dptr
      004562 FF               [12] 1791 	mov	r7,a
      004563 EC               [12] 1792 	mov	a,r4
      004564 F4               [12] 1793 	cpl	a
      004565 FC               [12] 1794 	mov	r4,a
      004566 ED               [12] 1795 	mov	a,r5
      004567 F4               [12] 1796 	cpl	a
      004568 FD               [12] 1797 	mov	r5,a
      004569 EE               [12] 1798 	mov	a,r6
      00456A F4               [12] 1799 	cpl	a
      00456B EF               [12] 1800 	mov	a,r7
      00456C F4               [12] 1801 	cpl	a
      00456D 8C 82            [24] 1802 	mov	dpl, r4
      00456F 8D 83            [24] 1803 	mov	dph, r5
                                   1804 ;	tcp.c:101: }
      004571 22               [24] 1805 	ret
                                   1806 ;------------------------------------------------------------
                                   1807 ;Allocation info for local variables in function 'process_tcp_packet'
                                   1808 ;------------------------------------------------------------
                                   1809 ;sloc0                     Allocated with name '_process_tcp_packet_sloc0_1_0'
                                   1810 ;packet_size               Allocated with name '_process_tcp_packet_PARM_2'
                                   1811 ;response_size             Allocated with name '_process_tcp_packet_PARM_3'
                                   1812 ;packet                    Allocated with name '_process_tcp_packet_packet_10000_141'
                                   1813 ;response                  Allocated with name '_process_tcp_packet_response_10000_142'
                                   1814 ;data_start                Allocated with name '_process_tcp_packet_data_start_10001_143'
                                   1815 ;ethernet_header           Allocated with name '_process_tcp_packet_ethernet_header_10001_143'
                                   1816 ;response_ethernet_header  Allocated with name '_process_tcp_packet_response_ethernet_header_10001_143'
                                   1817 ;ip_header                 Allocated with name '_process_tcp_packet_ip_header_10002_144'
                                   1818 ;response_ip_header        Allocated with name '_process_tcp_packet_response_ip_header_10002_144'
                                   1819 ;tcp_header                Allocated with name '_process_tcp_packet_tcp_header_10003_145'
                                   1820 ;response_tcp_header       Allocated with name '_process_tcp_packet_response_tcp_header_10003_145'
                                   1821 ;SYN_SEQ3                  Allocated with name '_process_tcp_packet_SYN_SEQ3_10004_146'
                                   1822 ;SYN_SEQ2                  Allocated with name '_process_tcp_packet_SYN_SEQ2_10004_146'
                                   1823 ;SYN_SEQ1                  Allocated with name '_process_tcp_packet_SYN_SEQ1_10004_146'
                                   1824 ;SYN_SEQ0                  Allocated with name '_process_tcp_packet_SYN_SEQ0_10004_146'
                                   1825 ;tcp_length                Allocated with name '_process_tcp_packet_tcp_length_10005_147'
                                   1826 ;ip_total_length           Allocated with name '_process_tcp_packet_ip_total_length_10005_147'
                                   1827 ;------------------------------------------------------------
                                   1828 ;	tcp.c:102: uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size) {
                                   1829 ;	-----------------------------------------
                                   1830 ;	 function process_tcp_packet
                                   1831 ;	-----------------------------------------
      004572                       1832 _process_tcp_packet:
      004572 AF F0            [24] 1833 	mov	r7,b
      004574 AE 83            [24] 1834 	mov	r6,dph
      004576 E5 82            [12] 1835 	mov	a,dpl
      004578 90 03 C7         [24] 1836 	mov	dptr,#_process_tcp_packet_packet_10000_141
      00457B F0               [24] 1837 	movx	@dptr,a
      00457C EE               [12] 1838 	mov	a,r6
      00457D A3               [24] 1839 	inc	dptr
      00457E F0               [24] 1840 	movx	@dptr,a
      00457F EF               [12] 1841 	mov	a,r7
      004580 A3               [24] 1842 	inc	dptr
      004581 F0               [24] 1843 	movx	@dptr,a
                                   1844 ;	tcp.c:104: memset(response, 0, MAX_PACKET_SIZE + 1);      // Clear the response buffer
      004582 90 10 3E         [24] 1845 	mov	dptr,#_memset_PARM_2
      004585 E4               [12] 1846 	clr	a
      004586 F0               [24] 1847 	movx	@dptr,a
      004587 90 10 3F         [24] 1848 	mov	dptr,#_memset_PARM_3
      00458A 74 DD            [12] 1849 	mov	a,#0xdd
      00458C F0               [24] 1850 	movx	@dptr,a
      00458D 74 05            [12] 1851 	mov	a,#0x05
      00458F A3               [24] 1852 	inc	dptr
      004590 F0               [24] 1853 	movx	@dptr,a
      004591 90 03 CA         [24] 1854 	mov	dptr,#_process_tcp_packet_response_10000_142
      004594 75 F0 00         [24] 1855 	mov	b, #0x00
      004597 12 5F 78         [24] 1856 	lcall	_memset
                                   1857 ;	tcp.c:106: response[0] = 0x0E;  // Ensure the first byte of the response is always 0x0E
      00459A 90 03 CA         [24] 1858 	mov	dptr,#_process_tcp_packet_response_10000_142
      00459D 74 0E            [12] 1859 	mov	a,#0x0e
      00459F F0               [24] 1860 	movx	@dptr,a
                                   1861 ;	tcp.c:109: uint8_t *data_start = response + 1;
                                   1862 ;	tcp.c:112: uint8_t *ethernet_header = packet;
      0045A0 90 03 C7         [24] 1863 	mov	dptr,#_process_tcp_packet_packet_10000_141
      0045A3 E0               [24] 1864 	movx	a,@dptr
      0045A4 FD               [12] 1865 	mov	r5,a
      0045A5 A3               [24] 1866 	inc	dptr
      0045A6 E0               [24] 1867 	movx	a,@dptr
      0045A7 FE               [12] 1868 	mov	r6,a
      0045A8 A3               [24] 1869 	inc	dptr
      0045A9 E0               [24] 1870 	movx	a,@dptr
      0045AA FF               [12] 1871 	mov	r7,a
                                   1872 ;	tcp.c:114: memcpy(response_ethernet_header, ethernet_header, ETHERNET_HEADER_SIZE);
      0045AB 8D 02            [24] 1873 	mov	ar2,r5
      0045AD 8E 03            [24] 1874 	mov	ar3,r6
      0045AF 8F 04            [24] 1875 	mov	ar4,r7
      0045B1 90 10 36         [24] 1876 	mov	dptr,#___memcpy_PARM_2
      0045B4 EA               [12] 1877 	mov	a,r2
      0045B5 F0               [24] 1878 	movx	@dptr,a
      0045B6 EB               [12] 1879 	mov	a,r3
      0045B7 A3               [24] 1880 	inc	dptr
      0045B8 F0               [24] 1881 	movx	@dptr,a
      0045B9 EC               [12] 1882 	mov	a,r4
      0045BA A3               [24] 1883 	inc	dptr
      0045BB F0               [24] 1884 	movx	@dptr,a
      0045BC 90 10 39         [24] 1885 	mov	dptr,#___memcpy_PARM_3
      0045BF 74 0E            [12] 1886 	mov	a,#0x0e
      0045C1 F0               [24] 1887 	movx	@dptr,a
      0045C2 E4               [12] 1888 	clr	a
      0045C3 A3               [24] 1889 	inc	dptr
      0045C4 F0               [24] 1890 	movx	@dptr,a
      0045C5 90 03 CB         [24] 1891 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0001)
      0045C8 F5 F0            [12] 1892 	mov	b,a
      0045CA C0 07            [24] 1893 	push	ar7
      0045CC C0 06            [24] 1894 	push	ar6
      0045CE C0 05            [24] 1895 	push	ar5
      0045D0 12 5F 04         [24] 1896 	lcall	___memcpy
      0045D3 D0 05            [24] 1897 	pop	ar5
      0045D5 D0 06            [24] 1898 	pop	ar6
      0045D7 D0 07            [24] 1899 	pop	ar7
                                   1900 ;	tcp.c:117: memcpy(response_ethernet_header, ethernet_header + 6, 6);  // Destination MAC
      0045D9 74 06            [12] 1901 	mov	a,#0x06
      0045DB 2D               [12] 1902 	add	a, r5
      0045DC FA               [12] 1903 	mov	r2,a
      0045DD E4               [12] 1904 	clr	a
      0045DE 3E               [12] 1905 	addc	a, r6
      0045DF FB               [12] 1906 	mov	r3,a
      0045E0 8F 04            [24] 1907 	mov	ar4,r7
      0045E2 90 10 36         [24] 1908 	mov	dptr,#___memcpy_PARM_2
      0045E5 EA               [12] 1909 	mov	a,r2
      0045E6 F0               [24] 1910 	movx	@dptr,a
      0045E7 EB               [12] 1911 	mov	a,r3
      0045E8 A3               [24] 1912 	inc	dptr
      0045E9 F0               [24] 1913 	movx	@dptr,a
      0045EA EC               [12] 1914 	mov	a,r4
      0045EB A3               [24] 1915 	inc	dptr
      0045EC F0               [24] 1916 	movx	@dptr,a
      0045ED 90 10 39         [24] 1917 	mov	dptr,#___memcpy_PARM_3
      0045F0 74 06            [12] 1918 	mov	a,#0x06
      0045F2 F0               [24] 1919 	movx	@dptr,a
      0045F3 E4               [12] 1920 	clr	a
      0045F4 A3               [24] 1921 	inc	dptr
      0045F5 F0               [24] 1922 	movx	@dptr,a
      0045F6 90 03 CB         [24] 1923 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0001)
      0045F9 F5 F0            [12] 1924 	mov	b,a
      0045FB C0 07            [24] 1925 	push	ar7
      0045FD C0 06            [24] 1926 	push	ar6
      0045FF C0 05            [24] 1927 	push	ar5
      004601 12 5F 04         [24] 1928 	lcall	___memcpy
      004604 D0 05            [24] 1929 	pop	ar5
      004606 D0 06            [24] 1930 	pop	ar6
      004608 D0 07            [24] 1931 	pop	ar7
                                   1932 ;	tcp.c:118: memcpy(response_ethernet_header + 6, ethernet_header, 6);  // Source MAC
      00460A 8D 02            [24] 1933 	mov	ar2,r5
      00460C 8E 03            [24] 1934 	mov	ar3,r6
      00460E 8F 04            [24] 1935 	mov	ar4,r7
      004610 90 10 36         [24] 1936 	mov	dptr,#___memcpy_PARM_2
      004613 EA               [12] 1937 	mov	a,r2
      004614 F0               [24] 1938 	movx	@dptr,a
      004615 EB               [12] 1939 	mov	a,r3
      004616 A3               [24] 1940 	inc	dptr
      004617 F0               [24] 1941 	movx	@dptr,a
      004618 EC               [12] 1942 	mov	a,r4
      004619 A3               [24] 1943 	inc	dptr
      00461A F0               [24] 1944 	movx	@dptr,a
      00461B 90 10 39         [24] 1945 	mov	dptr,#___memcpy_PARM_3
      00461E 74 06            [12] 1946 	mov	a,#0x06
      004620 F0               [24] 1947 	movx	@dptr,a
      004621 E4               [12] 1948 	clr	a
      004622 A3               [24] 1949 	inc	dptr
      004623 F0               [24] 1950 	movx	@dptr,a
      004624 90 03 D1         [24] 1951 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0007)
      004627 F5 F0            [12] 1952 	mov	b,a
      004629 C0 07            [24] 1953 	push	ar7
      00462B C0 06            [24] 1954 	push	ar6
      00462D C0 05            [24] 1955 	push	ar5
      00462F 12 5F 04         [24] 1956 	lcall	___memcpy
      004632 D0 05            [24] 1957 	pop	ar5
      004634 D0 06            [24] 1958 	pop	ar6
      004636 D0 07            [24] 1959 	pop	ar7
                                   1960 ;	tcp.c:121: uint8_t *ip_header = packet + ETHERNET_HEADER_SIZE;
      004638 74 0E            [12] 1961 	mov	a,#0x0e
      00463A 2D               [12] 1962 	add	a, r5
      00463B FA               [12] 1963 	mov	r2,a
      00463C E4               [12] 1964 	clr	a
      00463D 3E               [12] 1965 	addc	a, r6
      00463E FB               [12] 1966 	mov	r3,a
      00463F 8F 04            [24] 1967 	mov	ar4,r7
                                   1968 ;	tcp.c:122: uint8_t *response_ip_header = data_start + ETHERNET_HEADER_SIZE;
                                   1969 ;	tcp.c:125: memcpy(response_ip_header, ip_header, IP_HEADER_SIZE);
      004641 90 10 36         [24] 1970 	mov	dptr,#___memcpy_PARM_2
      004644 EA               [12] 1971 	mov	a,r2
      004645 F0               [24] 1972 	movx	@dptr,a
      004646 EB               [12] 1973 	mov	a,r3
      004647 A3               [24] 1974 	inc	dptr
      004648 F0               [24] 1975 	movx	@dptr,a
      004649 EC               [12] 1976 	mov	a,r4
      00464A A3               [24] 1977 	inc	dptr
      00464B F0               [24] 1978 	movx	@dptr,a
      00464C 90 10 39         [24] 1979 	mov	dptr,#___memcpy_PARM_3
      00464F 74 14            [12] 1980 	mov	a,#0x14
      004651 F0               [24] 1981 	movx	@dptr,a
      004652 E4               [12] 1982 	clr	a
      004653 A3               [24] 1983 	inc	dptr
      004654 F0               [24] 1984 	movx	@dptr,a
      004655 90 03 D9         [24] 1985 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x000f)
      004658 F5 F0            [12] 1986 	mov	b,a
      00465A C0 07            [24] 1987 	push	ar7
      00465C C0 06            [24] 1988 	push	ar6
      00465E C0 05            [24] 1989 	push	ar5
      004660 12 5F 04         [24] 1990 	lcall	___memcpy
      004663 D0 05            [24] 1991 	pop	ar5
      004665 D0 06            [24] 1992 	pop	ar6
      004667 D0 07            [24] 1993 	pop	ar7
                                   1994 ;	tcp.c:126: response_ip_header[12] = ip_header[16];  // Swap Source IP
      004669 74 1E            [12] 1995 	mov	a,#0x1e
      00466B 2D               [12] 1996 	add	a, r5
      00466C FA               [12] 1997 	mov	r2,a
      00466D E4               [12] 1998 	clr	a
      00466E 3E               [12] 1999 	addc	a, r6
      00466F FB               [12] 2000 	mov	r3,a
      004670 8F 04            [24] 2001 	mov	ar4,r7
      004672 8A 82            [24] 2002 	mov	dpl,r2
      004674 8B 83            [24] 2003 	mov	dph,r3
      004676 8C F0            [24] 2004 	mov	b,r4
      004678 12 6F 13         [24] 2005 	lcall	__gptrget
      00467B FA               [12] 2006 	mov	r2,a
      00467C 90 03 E5         [24] 2007 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001b)
      00467F 75 F0 00         [24] 2008 	mov	b,#0x00
      004682 EA               [12] 2009 	mov	a,r2
      004683 12 5F A0         [24] 2010 	lcall	__gptrput
                                   2011 ;	tcp.c:127: response_ip_header[13] = ip_header[17];
      004686 74 1F            [12] 2012 	mov	a,#0x1f
      004688 2D               [12] 2013 	add	a, r5
      004689 FA               [12] 2014 	mov	r2,a
      00468A E4               [12] 2015 	clr	a
      00468B 3E               [12] 2016 	addc	a, r6
      00468C FB               [12] 2017 	mov	r3,a
      00468D 8F 04            [24] 2018 	mov	ar4,r7
      00468F 8A 82            [24] 2019 	mov	dpl,r2
      004691 8B 83            [24] 2020 	mov	dph,r3
      004693 8C F0            [24] 2021 	mov	b,r4
      004695 12 6F 13         [24] 2022 	lcall	__gptrget
      004698 FA               [12] 2023 	mov	r2,a
      004699 90 03 E6         [24] 2024 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001c)
      00469C 75 F0 00         [24] 2025 	mov	b,#0x00
      00469F EA               [12] 2026 	mov	a,r2
      0046A0 12 5F A0         [24] 2027 	lcall	__gptrput
                                   2028 ;	tcp.c:128: response_ip_header[14] = ip_header[18];
      0046A3 74 20            [12] 2029 	mov	a,#0x20
      0046A5 2D               [12] 2030 	add	a, r5
      0046A6 FA               [12] 2031 	mov	r2,a
      0046A7 E4               [12] 2032 	clr	a
      0046A8 3E               [12] 2033 	addc	a, r6
      0046A9 FB               [12] 2034 	mov	r3,a
      0046AA 8F 04            [24] 2035 	mov	ar4,r7
      0046AC 8A 82            [24] 2036 	mov	dpl,r2
      0046AE 8B 83            [24] 2037 	mov	dph,r3
      0046B0 8C F0            [24] 2038 	mov	b,r4
      0046B2 12 6F 13         [24] 2039 	lcall	__gptrget
      0046B5 FA               [12] 2040 	mov	r2,a
      0046B6 90 03 E7         [24] 2041 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001d)
      0046B9 75 F0 00         [24] 2042 	mov	b,#0x00
      0046BC EA               [12] 2043 	mov	a,r2
      0046BD 12 5F A0         [24] 2044 	lcall	__gptrput
                                   2045 ;	tcp.c:129: response_ip_header[15] = ip_header[19];
      0046C0 74 21            [12] 2046 	mov	a,#0x21
      0046C2 2D               [12] 2047 	add	a, r5
      0046C3 FA               [12] 2048 	mov	r2,a
      0046C4 E4               [12] 2049 	clr	a
      0046C5 3E               [12] 2050 	addc	a, r6
      0046C6 FB               [12] 2051 	mov	r3,a
      0046C7 8F 04            [24] 2052 	mov	ar4,r7
      0046C9 8A 82            [24] 2053 	mov	dpl,r2
      0046CB 8B 83            [24] 2054 	mov	dph,r3
      0046CD 8C F0            [24] 2055 	mov	b,r4
      0046CF 12 6F 13         [24] 2056 	lcall	__gptrget
      0046D2 FA               [12] 2057 	mov	r2,a
      0046D3 90 03 E8         [24] 2058 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001e)
      0046D6 75 F0 00         [24] 2059 	mov	b,#0x00
      0046D9 EA               [12] 2060 	mov	a,r2
      0046DA 12 5F A0         [24] 2061 	lcall	__gptrput
                                   2062 ;	tcp.c:130: response_ip_header[16] = ip_header[12];  // Swap Destination IP
      0046DD 74 1A            [12] 2063 	mov	a,#0x1a
      0046DF 2D               [12] 2064 	add	a, r5
      0046E0 FA               [12] 2065 	mov	r2,a
      0046E1 E4               [12] 2066 	clr	a
      0046E2 3E               [12] 2067 	addc	a, r6
      0046E3 FB               [12] 2068 	mov	r3,a
      0046E4 8F 04            [24] 2069 	mov	ar4,r7
      0046E6 8A 82            [24] 2070 	mov	dpl,r2
      0046E8 8B 83            [24] 2071 	mov	dph,r3
      0046EA 8C F0            [24] 2072 	mov	b,r4
      0046EC 12 6F 13         [24] 2073 	lcall	__gptrget
      0046EF FA               [12] 2074 	mov	r2,a
      0046F0 90 03 E9         [24] 2075 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001f)
      0046F3 75 F0 00         [24] 2076 	mov	b,#0x00
      0046F6 EA               [12] 2077 	mov	a,r2
      0046F7 12 5F A0         [24] 2078 	lcall	__gptrput
                                   2079 ;	tcp.c:131: response_ip_header[17] = ip_header[13];
      0046FA 74 1B            [12] 2080 	mov	a,#0x1b
      0046FC 2D               [12] 2081 	add	a, r5
      0046FD FA               [12] 2082 	mov	r2,a
      0046FE E4               [12] 2083 	clr	a
      0046FF 3E               [12] 2084 	addc	a, r6
      004700 FB               [12] 2085 	mov	r3,a
      004701 8F 04            [24] 2086 	mov	ar4,r7
      004703 8A 82            [24] 2087 	mov	dpl,r2
      004705 8B 83            [24] 2088 	mov	dph,r3
      004707 8C F0            [24] 2089 	mov	b,r4
      004709 12 6F 13         [24] 2090 	lcall	__gptrget
      00470C FA               [12] 2091 	mov	r2,a
      00470D 90 03 EA         [24] 2092 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0020)
      004710 75 F0 00         [24] 2093 	mov	b,#0x00
      004713 EA               [12] 2094 	mov	a,r2
      004714 12 5F A0         [24] 2095 	lcall	__gptrput
                                   2096 ;	tcp.c:132: response_ip_header[18] = ip_header[14];
      004717 74 1C            [12] 2097 	mov	a,#0x1c
      004719 2D               [12] 2098 	add	a, r5
      00471A FA               [12] 2099 	mov	r2,a
      00471B E4               [12] 2100 	clr	a
      00471C 3E               [12] 2101 	addc	a, r6
      00471D FB               [12] 2102 	mov	r3,a
      00471E 8F 04            [24] 2103 	mov	ar4,r7
      004720 8A 82            [24] 2104 	mov	dpl,r2
      004722 8B 83            [24] 2105 	mov	dph,r3
      004724 8C F0            [24] 2106 	mov	b,r4
      004726 12 6F 13         [24] 2107 	lcall	__gptrget
      004729 FA               [12] 2108 	mov	r2,a
      00472A 90 03 EB         [24] 2109 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0021)
      00472D 75 F0 00         [24] 2110 	mov	b,#0x00
      004730 EA               [12] 2111 	mov	a,r2
      004731 12 5F A0         [24] 2112 	lcall	__gptrput
                                   2113 ;	tcp.c:133: response_ip_header[19] = ip_header[15];
      004734 74 1D            [12] 2114 	mov	a,#0x1d
      004736 2D               [12] 2115 	add	a, r5
      004737 FA               [12] 2116 	mov	r2,a
      004738 E4               [12] 2117 	clr	a
      004739 3E               [12] 2118 	addc	a, r6
      00473A FB               [12] 2119 	mov	r3,a
      00473B 8F 04            [24] 2120 	mov	ar4,r7
      00473D 8A 82            [24] 2121 	mov	dpl,r2
      00473F 8B 83            [24] 2122 	mov	dph,r3
      004741 8C F0            [24] 2123 	mov	b,r4
      004743 12 6F 13         [24] 2124 	lcall	__gptrget
      004746 FA               [12] 2125 	mov	r2,a
      004747 90 03 EC         [24] 2126 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0022)
      00474A 75 F0 00         [24] 2127 	mov	b,#0x00
      00474D EA               [12] 2128 	mov	a,r2
      00474E 12 5F A0         [24] 2129 	lcall	__gptrput
                                   2130 ;	tcp.c:134: response_ip_header[10] = 0;              // Clear checksum
      004751 90 03 E3         [24] 2131 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0019)
      004754 E4               [12] 2132 	clr	a
      004755 12 5F A0         [24] 2133 	lcall	__gptrput
                                   2134 ;	tcp.c:135: response_ip_header[11] = 0;
      004758 90 03 E4         [24] 2135 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x001a)
      00475B F5 F0            [12] 2136 	mov	b,a
      00475D 12 5F A0         [24] 2137 	lcall	__gptrput
                                   2138 ;	tcp.c:138: uint8_t *tcp_header = packet + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
      004760 74 22            [12] 2139 	mov	a,#0x22
      004762 2D               [12] 2140 	add	a, r5
      004763 F5 14            [12] 2141 	mov	_process_tcp_packet_sloc0_1_0,a
      004765 E4               [12] 2142 	clr	a
      004766 3E               [12] 2143 	addc	a, r6
      004767 F5 15            [12] 2144 	mov	(_process_tcp_packet_sloc0_1_0 + 1),a
      004769 8F 16            [24] 2145 	mov	(_process_tcp_packet_sloc0_1_0 + 2),r7
                                   2146 ;	tcp.c:139: uint8_t *response_tcp_header = data_start + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
                                   2147 ;	tcp.c:142: memcpy(response_tcp_header, tcp_header, TCP_HEADER_SIZE);
      00476B A8 14            [24] 2148 	mov	r0,_process_tcp_packet_sloc0_1_0
      00476D A9 15            [24] 2149 	mov	r1,(_process_tcp_packet_sloc0_1_0 + 1)
      00476F AC 16            [24] 2150 	mov	r4,(_process_tcp_packet_sloc0_1_0 + 2)
      004771 90 10 36         [24] 2151 	mov	dptr,#___memcpy_PARM_2
      004774 E8               [12] 2152 	mov	a,r0
      004775 F0               [24] 2153 	movx	@dptr,a
      004776 E9               [12] 2154 	mov	a,r1
      004777 A3               [24] 2155 	inc	dptr
      004778 F0               [24] 2156 	movx	@dptr,a
      004779 EC               [12] 2157 	mov	a,r4
      00477A A3               [24] 2158 	inc	dptr
      00477B F0               [24] 2159 	movx	@dptr,a
      00477C 90 10 39         [24] 2160 	mov	dptr,#___memcpy_PARM_3
      00477F 74 14            [12] 2161 	mov	a,#0x14
      004781 F0               [24] 2162 	movx	@dptr,a
      004782 E4               [12] 2163 	clr	a
      004783 A3               [24] 2164 	inc	dptr
      004784 F0               [24] 2165 	movx	@dptr,a
      004785 90 03 ED         [24] 2166 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0023)
      004788 F5 F0            [12] 2167 	mov	b,a
      00478A C0 07            [24] 2168 	push	ar7
      00478C C0 06            [24] 2169 	push	ar6
      00478E C0 05            [24] 2170 	push	ar5
      004790 12 5F 04         [24] 2171 	lcall	___memcpy
      004793 D0 05            [24] 2172 	pop	ar5
      004795 D0 06            [24] 2173 	pop	ar6
      004797 D0 07            [24] 2174 	pop	ar7
                                   2175 ;	tcp.c:143: response_tcp_header[0] = tcp_header[2];  // Swap Source Port
      004799 74 24            [12] 2176 	mov	a,#0x24
      00479B 2D               [12] 2177 	add	a, r5
      00479C FA               [12] 2178 	mov	r2,a
      00479D E4               [12] 2179 	clr	a
      00479E 3E               [12] 2180 	addc	a, r6
      00479F FB               [12] 2181 	mov	r3,a
      0047A0 8F 04            [24] 2182 	mov	ar4,r7
      0047A2 8A 82            [24] 2183 	mov	dpl,r2
      0047A4 8B 83            [24] 2184 	mov	dph,r3
      0047A6 8C F0            [24] 2185 	mov	b,r4
      0047A8 12 6F 13         [24] 2186 	lcall	__gptrget
      0047AB FA               [12] 2187 	mov	r2,a
      0047AC 90 03 ED         [24] 2188 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0023)
      0047AF 75 F0 00         [24] 2189 	mov	b,#0x00
      0047B2 EA               [12] 2190 	mov	a,r2
      0047B3 12 5F A0         [24] 2191 	lcall	__gptrput
                                   2192 ;	tcp.c:144: response_tcp_header[1] = tcp_header[3];
      0047B6 74 25            [12] 2193 	mov	a,#0x25
      0047B8 2D               [12] 2194 	add	a, r5
      0047B9 FA               [12] 2195 	mov	r2,a
      0047BA E4               [12] 2196 	clr	a
      0047BB 3E               [12] 2197 	addc	a, r6
      0047BC FB               [12] 2198 	mov	r3,a
      0047BD 8F 04            [24] 2199 	mov	ar4,r7
      0047BF 8A 82            [24] 2200 	mov	dpl,r2
      0047C1 8B 83            [24] 2201 	mov	dph,r3
      0047C3 8C F0            [24] 2202 	mov	b,r4
      0047C5 12 6F 13         [24] 2203 	lcall	__gptrget
      0047C8 FA               [12] 2204 	mov	r2,a
      0047C9 90 03 EE         [24] 2205 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0024)
      0047CC 75 F0 00         [24] 2206 	mov	b,#0x00
      0047CF EA               [12] 2207 	mov	a,r2
      0047D0 12 5F A0         [24] 2208 	lcall	__gptrput
                                   2209 ;	tcp.c:145: response_tcp_header[2] = tcp_header[0];  // Swap Destination Port
      0047D3 85 14 82         [24] 2210 	mov	dpl,_process_tcp_packet_sloc0_1_0
      0047D6 85 15 83         [24] 2211 	mov	dph,(_process_tcp_packet_sloc0_1_0 + 1)
      0047D9 85 16 F0         [24] 2212 	mov	b,(_process_tcp_packet_sloc0_1_0 + 2)
      0047DC 12 6F 13         [24] 2213 	lcall	__gptrget
      0047DF FC               [12] 2214 	mov	r4,a
      0047E0 90 03 EF         [24] 2215 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0025)
      0047E3 75 F0 00         [24] 2216 	mov	b,#0x00
      0047E6 EC               [12] 2217 	mov	a,r4
      0047E7 12 5F A0         [24] 2218 	lcall	__gptrput
                                   2219 ;	tcp.c:146: response_tcp_header[3] = tcp_header[1];
      0047EA 74 23            [12] 2220 	mov	a,#0x23
      0047EC 2D               [12] 2221 	add	a, r5
      0047ED FA               [12] 2222 	mov	r2,a
      0047EE E4               [12] 2223 	clr	a
      0047EF 3E               [12] 2224 	addc	a, r6
      0047F0 FB               [12] 2225 	mov	r3,a
      0047F1 8F 04            [24] 2226 	mov	ar4,r7
      0047F3 8A 82            [24] 2227 	mov	dpl,r2
      0047F5 8B 83            [24] 2228 	mov	dph,r3
      0047F7 8C F0            [24] 2229 	mov	b,r4
      0047F9 12 6F 13         [24] 2230 	lcall	__gptrget
      0047FC FA               [12] 2231 	mov	r2,a
      0047FD 90 03 F0         [24] 2232 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0026)
      004800 75 F0 00         [24] 2233 	mov	b,#0x00
      004803 EA               [12] 2234 	mov	a,r2
      004804 12 5F A0         [24] 2235 	lcall	__gptrput
                                   2236 ;	tcp.c:148: response_tcp_header[4] = 0;
      004807 90 03 F1         [24] 2237 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0027)
      00480A E4               [12] 2238 	clr	a
      00480B 12 5F A0         [24] 2239 	lcall	__gptrput
                                   2240 ;	tcp.c:149: response_tcp_header[5] = 0;
      00480E 90 03 F2         [24] 2241 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0028)
      004811 F5 F0            [12] 2242 	mov	b,a
      004813 12 5F A0         [24] 2243 	lcall	__gptrput
                                   2244 ;	tcp.c:150: response_tcp_header[6] = 0;
      004816 90 03 F3         [24] 2245 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0029)
      004819 F5 F0            [12] 2246 	mov	b,a
      00481B 12 5F A0         [24] 2247 	lcall	__gptrput
                                   2248 ;	tcp.c:151: response_tcp_header[7] = 0;
      00481E 90 03 F4         [24] 2249 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002a)
      004821 F5 F0            [12] 2250 	mov	b,a
      004823 12 5F A0         [24] 2251 	lcall	__gptrput
                                   2252 ;	tcp.c:153: uint8_t SYN_SEQ3 = tcp_header[4];
      004826 74 26            [12] 2253 	mov	a,#0x26
      004828 2D               [12] 2254 	add	a, r5
      004829 FA               [12] 2255 	mov	r2,a
      00482A E4               [12] 2256 	clr	a
      00482B 3E               [12] 2257 	addc	a, r6
      00482C FB               [12] 2258 	mov	r3,a
      00482D 8F 04            [24] 2259 	mov	ar4,r7
      00482F 8A 82            [24] 2260 	mov	dpl,r2
      004831 8B 83            [24] 2261 	mov	dph,r3
      004833 8C F0            [24] 2262 	mov	b,r4
      004835 12 6F 13         [24] 2263 	lcall	__gptrget
      004838 FA               [12] 2264 	mov	r2,a
                                   2265 ;	tcp.c:154: uint8_t SYN_SEQ2 = tcp_header[5];
      004839 74 27            [12] 2266 	mov	a,#0x27
      00483B 2D               [12] 2267 	add	a, r5
      00483C F9               [12] 2268 	mov	r1,a
      00483D E4               [12] 2269 	clr	a
      00483E 3E               [12] 2270 	addc	a, r6
      00483F FB               [12] 2271 	mov	r3,a
      004840 8F 04            [24] 2272 	mov	ar4,r7
      004842 89 82            [24] 2273 	mov	dpl,r1
      004844 8B 83            [24] 2274 	mov	dph,r3
      004846 8C F0            [24] 2275 	mov	b,r4
      004848 12 6F 13         [24] 2276 	lcall	__gptrget
      00484B F9               [12] 2277 	mov	r1,a
                                   2278 ;	tcp.c:155: uint8_t SYN_SEQ1 = tcp_header[6];
      00484C 74 28            [12] 2279 	mov	a,#0x28
      00484E 2D               [12] 2280 	add	a, r5
      00484F F8               [12] 2281 	mov	r0,a
      004850 E4               [12] 2282 	clr	a
      004851 3E               [12] 2283 	addc	a, r6
      004852 FB               [12] 2284 	mov	r3,a
      004853 8F 04            [24] 2285 	mov	ar4,r7
      004855 88 82            [24] 2286 	mov	dpl,r0
      004857 8B 83            [24] 2287 	mov	dph,r3
      004859 8C F0            [24] 2288 	mov	b,r4
      00485B 12 6F 13         [24] 2289 	lcall	__gptrget
      00485E F8               [12] 2290 	mov	r0,a
                                   2291 ;	tcp.c:156: uint8_t SYN_SEQ0 = tcp_header[7];
      00485F 74 29            [12] 2292 	mov	a,#0x29
      004861 2D               [12] 2293 	add	a, r5
      004862 FD               [12] 2294 	mov	r5,a
      004863 E4               [12] 2295 	clr	a
      004864 3E               [12] 2296 	addc	a, r6
      004865 FE               [12] 2297 	mov	r6,a
      004866 8D 82            [24] 2298 	mov	dpl,r5
      004868 8E 83            [24] 2299 	mov	dph,r6
      00486A 8F F0            [24] 2300 	mov	b,r7
      00486C 12 6F 13         [24] 2301 	lcall	__gptrget
      00486F FD               [12] 2302 	mov	r5,a
                                   2303 ;	tcp.c:158: response_tcp_header[8] = SYN_SEQ3;
      004870 90 03 F5         [24] 2304 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002b)
      004873 75 F0 00         [24] 2305 	mov	b,#0x00
      004876 EA               [12] 2306 	mov	a,r2
      004877 12 5F A0         [24] 2307 	lcall	__gptrput
                                   2308 ;	tcp.c:159: response_tcp_header[9] = SYN_SEQ2;
      00487A 90 03 F6         [24] 2309 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002c)
      00487D E9               [12] 2310 	mov	a,r1
      00487E 12 5F A0         [24] 2311 	lcall	__gptrput
                                   2312 ;	tcp.c:160: response_tcp_header[10] = SYN_SEQ1;
      004881 90 03 F7         [24] 2313 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002d)
      004884 E8               [12] 2314 	mov	a,r0
      004885 12 5F A0         [24] 2315 	lcall	__gptrput
                                   2316 ;	tcp.c:161: response_tcp_header[11] = SYN_SEQ0 + 1;
      004888 0D               [12] 2317 	inc	r5
      004889 90 03 F8         [24] 2318 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002e)
      00488C ED               [12] 2319 	mov	a,r5
      00488D 12 5F A0         [24] 2320 	lcall	__gptrput
                                   2321 ;	tcp.c:167: response_tcp_header[12] = 0x50;  // SYN (0x02) + ACK (0x10)
      004890 90 03 F9         [24] 2322 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x002f)
      004893 74 50            [12] 2323 	mov	a,#0x50
      004895 12 5F A0         [24] 2324 	lcall	__gptrput
                                   2325 ;	tcp.c:169: response_tcp_header[13] = 0x12;  // SYN (0x02) + ACK (0x10)
      004898 90 03 FA         [24] 2326 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0030)
      00489B 74 12            [12] 2327 	mov	a,#0x12
      00489D 12 5F A0         [24] 2328 	lcall	__gptrput
                                   2329 ;	tcp.c:178: response_tcp_header[18] = 0;
      0048A0 90 03 FF         [24] 2330 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0035)
      0048A3 E4               [12] 2331 	clr	a
      0048A4 12 5F A0         [24] 2332 	lcall	__gptrput
                                   2333 ;	tcp.c:179: response_tcp_header[19] = 0;
      0048A7 90 04 00         [24] 2334 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0036)
      0048AA F5 F0            [12] 2335 	mov	b,a
      0048AC 12 5F A0         [24] 2336 	lcall	__gptrput
                                   2337 ;	tcp.c:185: response_ip_header[2] = (ip_total_length >> 8) & 0xFF;
      0048AF 90 03 DB         [24] 2338 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0011)
      0048B2 F5 F0            [12] 2339 	mov	b,a
      0048B4 12 5F A0         [24] 2340 	lcall	__gptrput
                                   2341 ;	tcp.c:186: response_ip_header[3] = ip_total_length & 0xFF;
      0048B7 90 03 DC         [24] 2342 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0012)
      0048BA F5 F0            [12] 2343 	mov	b,a
      0048BC 74 28            [12] 2344 	mov	a,#0x28
      0048BE 12 5F A0         [24] 2345 	lcall	__gptrput
                                   2346 ;	tcp.c:189: calculateIPChecksum(data_start);
      0048C1 90 03 CB         [24] 2347 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0001)
      0048C4 12 3F 25         [24] 2348 	lcall	_calculateIPChecksum
                                   2349 ;	tcp.c:192: calculateTcpChecksum(data_start);
      0048C7 90 03 CB         [24] 2350 	mov	dptr,#(_process_tcp_packet_response_10000_142 + 0x0001)
      0048CA 75 F0 00         [24] 2351 	mov	b, #0x00
      0048CD 12 40 8F         [24] 2352 	lcall	_calculateTcpChecksum
                                   2353 ;	tcp.c:215: *response_size = 1 + ETHERNET_HEADER_SIZE + ip_total_length; // Adding 4 for the MSS option size
      0048D0 90 03 C4         [24] 2354 	mov	dptr,#_process_tcp_packet_PARM_3
      0048D3 E0               [24] 2355 	movx	a,@dptr
      0048D4 FD               [12] 2356 	mov	r5,a
      0048D5 A3               [24] 2357 	inc	dptr
      0048D6 E0               [24] 2358 	movx	a,@dptr
      0048D7 FE               [12] 2359 	mov	r6,a
      0048D8 A3               [24] 2360 	inc	dptr
      0048D9 E0               [24] 2361 	movx	a,@dptr
      0048DA FF               [12] 2362 	mov	r7,a
      0048DB 8D 82            [24] 2363 	mov	dpl,r5
      0048DD 8E 83            [24] 2364 	mov	dph,r6
      0048DF 8F F0            [24] 2365 	mov	b,r7
      0048E1 74 37            [12] 2366 	mov	a,#0x37
      0048E3 12 5F A0         [24] 2367 	lcall	__gptrput
      0048E6 A3               [24] 2368 	inc	dptr
      0048E7 E4               [12] 2369 	clr	a
      0048E8 12 5F A0         [24] 2370 	lcall	__gptrput
                                   2371 ;	tcp.c:218: return response;
      0048EB 90 03 CA         [24] 2372 	mov	dptr,#_process_tcp_packet_response_10000_142
      0048EE F5 F0            [12] 2373 	mov	b,a
                                   2374 ;	tcp.c:219: }
      0048F0 22               [24] 2375 	ret
                                   2376 ;------------------------------------------------------------
                                   2377 ;Allocation info for local variables in function 'print_hexdump'
                                   2378 ;------------------------------------------------------------
                                   2379 ;size                      Allocated with name '_print_hexdump_PARM_2'
                                   2380 ;data                      Allocated with name '_print_hexdump_data_10000_148'
                                   2381 ;i                         Allocated with name '_print_hexdump_i_20000_150'
                                   2382 ;------------------------------------------------------------
                                   2383 ;	tcp.c:223: void print_hexdump(const uint8_t *data, uint16_t size) {
                                   2384 ;	-----------------------------------------
                                   2385 ;	 function print_hexdump
                                   2386 ;	-----------------------------------------
      0048F1                       2387 _print_hexdump:
      0048F1 AF F0            [24] 2388 	mov	r7,b
      0048F3 AE 83            [24] 2389 	mov	r6,dph
      0048F5 E5 82            [12] 2390 	mov	a,dpl
      0048F7 90 09 A9         [24] 2391 	mov	dptr,#_print_hexdump_data_10000_148
      0048FA F0               [24] 2392 	movx	@dptr,a
      0048FB EE               [12] 2393 	mov	a,r6
      0048FC A3               [24] 2394 	inc	dptr
      0048FD F0               [24] 2395 	movx	@dptr,a
      0048FE EF               [12] 2396 	mov	a,r7
      0048FF A3               [24] 2397 	inc	dptr
      004900 F0               [24] 2398 	movx	@dptr,a
                                   2399 ;	tcp.c:224: printf("\nHexdump (Size: %d):\n", size);
      004901 90 09 A7         [24] 2400 	mov	dptr,#_print_hexdump_PARM_2
      004904 E0               [24] 2401 	movx	a,@dptr
      004905 FE               [12] 2402 	mov	r6,a
      004906 A3               [24] 2403 	inc	dptr
      004907 E0               [24] 2404 	movx	a,@dptr
      004908 FF               [12] 2405 	mov	r7,a
      004909 C0 07            [24] 2406 	push	ar7
      00490B C0 06            [24] 2407 	push	ar6
      00490D C0 06            [24] 2408 	push	ar6
      00490F C0 07            [24] 2409 	push	ar7
      004911 74 DC            [12] 2410 	mov	a,#___str_0
      004913 C0 E0            [24] 2411 	push	acc
      004915 74 77            [12] 2412 	mov	a,#(___str_0 >> 8)
      004917 C0 E0            [24] 2413 	push	acc
      004919 74 80            [12] 2414 	mov	a,#0x80
      00491B C0 E0            [24] 2415 	push	acc
      00491D 12 64 F1         [24] 2416 	lcall	_printf
      004920 E5 81            [12] 2417 	mov	a,sp
      004922 24 FB            [12] 2418 	add	a,#0xfb
      004924 F5 81            [12] 2419 	mov	sp,a
      004926 D0 06            [24] 2420 	pop	ar6
      004928 D0 07            [24] 2421 	pop	ar7
                                   2422 ;	tcp.c:225: for (uint16_t i = 0; i < size; i++) {
      00492A 90 09 A9         [24] 2423 	mov	dptr,#_print_hexdump_data_10000_148
      00492D E0               [24] 2424 	movx	a,@dptr
      00492E FB               [12] 2425 	mov	r3,a
      00492F A3               [24] 2426 	inc	dptr
      004930 E0               [24] 2427 	movx	a,@dptr
      004931 FC               [12] 2428 	mov	r4,a
      004932 A3               [24] 2429 	inc	dptr
      004933 E0               [24] 2430 	movx	a,@dptr
      004934 FD               [12] 2431 	mov	r5,a
      004935 79 00            [12] 2432 	mov	r1,#0x00
      004937 7A 00            [12] 2433 	mov	r2,#0x00
      004939                       2434 00107$:
      004939 C3               [12] 2435 	clr	c
      00493A E9               [12] 2436 	mov	a,r1
      00493B 9E               [12] 2437 	subb	a,r6
      00493C EA               [12] 2438 	mov	a,r2
      00493D 9F               [12] 2439 	subb	a,r7
      00493E 40 03            [24] 2440 	jc	00136$
      004940 02 49 E1         [24] 2441 	ljmp	00103$
      004943                       2442 00136$:
                                   2443 ;	tcp.c:226: printf("%02X ", data[i]); // Print each byte in hexadecimal format
      004943 C0 06            [24] 2444 	push	ar6
      004945 C0 07            [24] 2445 	push	ar7
      004947 E9               [12] 2446 	mov	a,r1
      004948 2B               [12] 2447 	add	a, r3
      004949 F8               [12] 2448 	mov	r0,a
      00494A EA               [12] 2449 	mov	a,r2
      00494B 3C               [12] 2450 	addc	a, r4
      00494C FE               [12] 2451 	mov	r6,a
      00494D 8D 07            [24] 2452 	mov	ar7,r5
      00494F 88 82            [24] 2453 	mov	dpl,r0
      004951 8E 83            [24] 2454 	mov	dph,r6
      004953 8F F0            [24] 2455 	mov	b,r7
      004955 12 6F 13         [24] 2456 	lcall	__gptrget
      004958 F8               [12] 2457 	mov	r0,a
      004959 7F 00            [12] 2458 	mov	r7,#0x00
      00495B C0 07            [24] 2459 	push	ar7
      00495D C0 06            [24] 2460 	push	ar6
      00495F C0 05            [24] 2461 	push	ar5
      004961 C0 04            [24] 2462 	push	ar4
      004963 C0 03            [24] 2463 	push	ar3
      004965 C0 02            [24] 2464 	push	ar2
      004967 C0 01            [24] 2465 	push	ar1
      004969 C0 00            [24] 2466 	push	ar0
      00496B C0 07            [24] 2467 	push	ar7
      00496D 74 F2            [12] 2468 	mov	a,#___str_1
      00496F C0 E0            [24] 2469 	push	acc
      004971 74 77            [12] 2470 	mov	a,#(___str_1 >> 8)
      004973 C0 E0            [24] 2471 	push	acc
      004975 74 80            [12] 2472 	mov	a,#0x80
      004977 C0 E0            [24] 2473 	push	acc
      004979 12 64 F1         [24] 2474 	lcall	_printf
      00497C E5 81            [12] 2475 	mov	a,sp
      00497E 24 FB            [12] 2476 	add	a,#0xfb
      004980 F5 81            [12] 2477 	mov	sp,a
      004982 D0 01            [24] 2478 	pop	ar1
      004984 D0 02            [24] 2479 	pop	ar2
      004986 D0 03            [24] 2480 	pop	ar3
      004988 D0 04            [24] 2481 	pop	ar4
      00498A D0 05            [24] 2482 	pop	ar5
      00498C D0 06            [24] 2483 	pop	ar6
      00498E D0 07            [24] 2484 	pop	ar7
                                   2485 ;	tcp.c:227: if ((i + 1) % 16 == 0) {
      004990 89 06            [24] 2486 	mov	ar6,r1
      004992 8A 07            [24] 2487 	mov	ar7,r2
      004994 0E               [12] 2488 	inc	r6
      004995 BE 00 01         [24] 2489 	cjne	r6,#0x00,00137$
      004998 0F               [12] 2490 	inc	r7
      004999                       2491 00137$:
      004999 EE               [12] 2492 	mov	a,r6
      00499A 54 0F            [12] 2493 	anl	a,#0x0f
      00499C 60 06            [24] 2494 	jz	00139$
      00499E D0 07            [24] 2495 	pop	ar7
      0049A0 D0 06            [24] 2496 	pop	ar6
      0049A2 80 35            [24] 2497 	sjmp	00108$
      0049A4                       2498 00139$:
      0049A4 D0 07            [24] 2499 	pop	ar7
      0049A6 D0 06            [24] 2500 	pop	ar6
                                   2501 ;	tcp.c:228: printf("\n"); // Newline after every 16 bytes for readability
      0049A8 C0 07            [24] 2502 	push	ar7
      0049AA C0 06            [24] 2503 	push	ar6
      0049AC C0 05            [24] 2504 	push	ar5
      0049AE C0 04            [24] 2505 	push	ar4
      0049B0 C0 03            [24] 2506 	push	ar3
      0049B2 C0 02            [24] 2507 	push	ar2
      0049B4 C0 01            [24] 2508 	push	ar1
      0049B6 74 F8            [12] 2509 	mov	a,#___str_2
      0049B8 C0 E0            [24] 2510 	push	acc
      0049BA 74 77            [12] 2511 	mov	a,#(___str_2 >> 8)
      0049BC C0 E0            [24] 2512 	push	acc
      0049BE 74 80            [12] 2513 	mov	a,#0x80
      0049C0 C0 E0            [24] 2514 	push	acc
      0049C2 12 64 F1         [24] 2515 	lcall	_printf
      0049C5 15 81            [12] 2516 	dec	sp
      0049C7 15 81            [12] 2517 	dec	sp
      0049C9 15 81            [12] 2518 	dec	sp
      0049CB D0 01            [24] 2519 	pop	ar1
      0049CD D0 02            [24] 2520 	pop	ar2
      0049CF D0 03            [24] 2521 	pop	ar3
      0049D1 D0 04            [24] 2522 	pop	ar4
      0049D3 D0 05            [24] 2523 	pop	ar5
      0049D5 D0 06            [24] 2524 	pop	ar6
      0049D7 D0 07            [24] 2525 	pop	ar7
      0049D9                       2526 00108$:
                                   2527 ;	tcp.c:225: for (uint16_t i = 0; i < size; i++) {
      0049D9 09               [12] 2528 	inc	r1
      0049DA B9 00 01         [24] 2529 	cjne	r1,#0x00,00140$
      0049DD 0A               [12] 2530 	inc	r2
      0049DE                       2531 00140$:
      0049DE 02 49 39         [24] 2532 	ljmp	00107$
      0049E1                       2533 00103$:
                                   2534 ;	tcp.c:231: if (size % 16 != 0) {
      0049E1 EE               [12] 2535 	mov	a,r6
      0049E2 54 0F            [12] 2536 	anl	a,#0x0f
      0049E4 60 15            [24] 2537 	jz	00109$
                                   2538 ;	tcp.c:232: printf("\n"); // Final newline if not already printed
      0049E6 74 F8            [12] 2539 	mov	a,#___str_2
      0049E8 C0 E0            [24] 2540 	push	acc
      0049EA 74 77            [12] 2541 	mov	a,#(___str_2 >> 8)
      0049EC C0 E0            [24] 2542 	push	acc
      0049EE 74 80            [12] 2543 	mov	a,#0x80
      0049F0 C0 E0            [24] 2544 	push	acc
      0049F2 12 64 F1         [24] 2545 	lcall	_printf
      0049F5 15 81            [12] 2546 	dec	sp
      0049F7 15 81            [12] 2547 	dec	sp
      0049F9 15 81            [12] 2548 	dec	sp
      0049FB                       2549 00109$:
                                   2550 ;	tcp.c:234: }
      0049FB 22               [24] 2551 	ret
                                   2552 ;------------------------------------------------------------
                                   2553 ;Allocation info for local variables in function 'process_packet_from_buffer'
                                   2554 ;------------------------------------------------------------
                                   2555 ;sloc0                     Allocated with name '_process_packet_from_buffer_sloc0_1_0'
                                   2556 ;start_address             Allocated with name '_process_packet_from_buffer_start_address_10000_154'
                                   2557 ;next_packet_start         Allocated with name '_process_packet_from_buffer_next_packet_start_10001_157'
                                   2558 ;next_start_address        Allocated with name '_process_packet_from_buffer_next_start_address_10001_157'
                                   2559 ;packet_size               Allocated with name '_process_packet_from_buffer_packet_size_10001_157'
                                   2560 ;response_size             Allocated with name '_process_packet_from_buffer_response_size_10001_157'
                                   2561 ;packet_data               Allocated with name '_process_packet_from_buffer_packet_data_10002_160'
                                   2562 ;response                  Allocated with name '_process_packet_from_buffer_response_10003_163'
                                   2563 ;------------------------------------------------------------
                                   2564 ;	tcp.c:237: void process_packet_from_buffer(uint16_t start_address) {
                                   2565 ;	-----------------------------------------
                                   2566 ;	 function process_packet_from_buffer
                                   2567 ;	-----------------------------------------
      0049FC                       2568 _process_packet_from_buffer:
      0049FC AF 83            [24] 2569 	mov	r7,dph
      0049FE E5 82            [12] 2570 	mov	a,dpl
      004A00 90 09 AC         [24] 2571 	mov	dptr,#_process_packet_from_buffer_start_address_10000_154
      004A03 F0               [24] 2572 	movx	@dptr,a
      004A04 EF               [12] 2573 	mov	a,r7
      004A05 A3               [24] 2574 	inc	dptr
      004A06 F0               [24] 2575 	movx	@dptr,a
                                   2576 ;	tcp.c:239: if (start_address > 0x1FFF) {
      004A07 90 09 AC         [24] 2577 	mov	dptr,#_process_packet_from_buffer_start_address_10000_154
      004A0A E0               [24] 2578 	movx	a,@dptr
      004A0B FE               [12] 2579 	mov	r6,a
      004A0C A3               [24] 2580 	inc	dptr
      004A0D E0               [24] 2581 	movx	a,@dptr
      004A0E FF               [12] 2582 	mov	r7,a
      004A0F 8E 04            [24] 2583 	mov	ar4,r6
      004A11 8F 05            [24] 2584 	mov	ar5,r7
      004A13 C3               [12] 2585 	clr	c
      004A14 74 FF            [12] 2586 	mov	a,#0xff
      004A16 9C               [12] 2587 	subb	a,r4
      004A17 74 1F            [12] 2588 	mov	a,#0x1f
      004A19 9D               [12] 2589 	subb	a,r5
      004A1A 50 1A            [24] 2590 	jnc	00102$
                                   2591 ;	tcp.c:240: printf("\n\rInvalid start address: %04X\n\r", start_address);
      004A1C C0 06            [24] 2592 	push	ar6
      004A1E C0 07            [24] 2593 	push	ar7
      004A20 74 FA            [12] 2594 	mov	a,#___str_3
      004A22 C0 E0            [24] 2595 	push	acc
      004A24 74 77            [12] 2596 	mov	a,#(___str_3 >> 8)
      004A26 C0 E0            [24] 2597 	push	acc
      004A28 74 80            [12] 2598 	mov	a,#0x80
      004A2A C0 E0            [24] 2599 	push	acc
      004A2C 12 64 F1         [24] 2600 	lcall	_printf
      004A2F E5 81            [12] 2601 	mov	a,sp
      004A31 24 FB            [12] 2602 	add	a,#0xfb
      004A33 F5 81            [12] 2603 	mov	sp,a
                                   2604 ;	tcp.c:241: return;
      004A35 22               [24] 2605 	ret
      004A36                       2606 00102$:
                                   2607 ;	tcp.c:250: if (spi_buffer_read(2, start_address, next_packet_start) != 2) {
      004A36 90 03 95         [24] 2608 	mov	dptr,#_spi_buffer_read_PARM_2
      004A39 EE               [12] 2609 	mov	a,r6
      004A3A F0               [24] 2610 	movx	@dptr,a
      004A3B EF               [12] 2611 	mov	a,r7
      004A3C A3               [24] 2612 	inc	dptr
      004A3D F0               [24] 2613 	movx	@dptr,a
      004A3E 90 03 97         [24] 2614 	mov	dptr,#_spi_buffer_read_PARM_3
      004A41 74 AE            [12] 2615 	mov	a,#_process_packet_from_buffer_next_packet_start_10001_157
      004A43 F0               [24] 2616 	movx	@dptr,a
      004A44 74 09            [12] 2617 	mov	a,#(_process_packet_from_buffer_next_packet_start_10001_157 >> 8)
      004A46 A3               [24] 2618 	inc	dptr
      004A47 F0               [24] 2619 	movx	@dptr,a
      004A48 E4               [12] 2620 	clr	a
      004A49 A3               [24] 2621 	inc	dptr
      004A4A F0               [24] 2622 	movx	@dptr,a
      004A4B 90 00 02         [24] 2623 	mov	dptr,#0x0002
      004A4E C0 07            [24] 2624 	push	ar7
      004A50 C0 06            [24] 2625 	push	ar6
      004A52 C0 05            [24] 2626 	push	ar5
      004A54 C0 04            [24] 2627 	push	ar4
      004A56 12 3C 95         [24] 2628 	lcall	_spi_buffer_read
      004A59 AA 82            [24] 2629 	mov	r2, dpl
      004A5B AB 83            [24] 2630 	mov	r3, dph
      004A5D D0 04            [24] 2631 	pop	ar4
      004A5F D0 05            [24] 2632 	pop	ar5
      004A61 D0 06            [24] 2633 	pop	ar6
      004A63 D0 07            [24] 2634 	pop	ar7
      004A65 BA 02 05         [24] 2635 	cjne	r2,#0x02,00153$
      004A68 BB 00 02         [24] 2636 	cjne	r3,#0x00,00153$
      004A6B 80 16            [24] 2637 	sjmp	00104$
      004A6D                       2638 00153$:
                                   2639 ;	tcp.c:251: printf("\n\rFailed to read packet start address bytes\n\r");
      004A6D 74 1A            [12] 2640 	mov	a,#___str_4
      004A6F C0 E0            [24] 2641 	push	acc
      004A71 74 78            [12] 2642 	mov	a,#(___str_4 >> 8)
      004A73 C0 E0            [24] 2643 	push	acc
      004A75 74 80            [12] 2644 	mov	a,#0x80
      004A77 C0 E0            [24] 2645 	push	acc
      004A79 12 64 F1         [24] 2646 	lcall	_printf
      004A7C 15 81            [12] 2647 	dec	sp
      004A7E 15 81            [12] 2648 	dec	sp
      004A80 15 81            [12] 2649 	dec	sp
                                   2650 ;	tcp.c:252: return;
      004A82 22               [24] 2651 	ret
      004A83                       2652 00104$:
                                   2653 ;	tcp.c:256: next_start_address = ((uint16_t)next_packet_start[1] << 8) | next_packet_start[0];
      004A83 90 09 AF         [24] 2654 	mov	dptr,#(_process_packet_from_buffer_next_packet_start_10001_157 + 0x0001)
      004A86 E0               [24] 2655 	movx	a,@dptr
      004A87 FA               [12] 2656 	mov	r2,a
      004A88 7B 00            [12] 2657 	mov	r3,#0x00
      004A8A 90 09 AE         [24] 2658 	mov	dptr,#_process_packet_from_buffer_next_packet_start_10001_157
      004A8D E0               [24] 2659 	movx	a,@dptr
      004A8E 79 00            [12] 2660 	mov	r1,#0x00
      004A90 42 03            [12] 2661 	orl	ar3,a
      004A92 E9               [12] 2662 	mov	a,r1
      004A93 42 02            [12] 2663 	orl	ar2,a
                                   2664 ;	tcp.c:259: if (next_start_address < start_address) {
      004A95 C3               [12] 2665 	clr	c
      004A96 EB               [12] 2666 	mov	a,r3
      004A97 9E               [12] 2667 	subb	a,r6
      004A98 EA               [12] 2668 	mov	a,r2
      004A99 9F               [12] 2669 	subb	a,r7
      004A9A 50 1A            [24] 2670 	jnc	00106$
                                   2671 ;	tcp.c:260: printf("\n\rInvalid next start address: 0x%04X\n\r", next_start_address);
      004A9C C0 03            [24] 2672 	push	ar3
      004A9E C0 02            [24] 2673 	push	ar2
      004AA0 74 48            [12] 2674 	mov	a,#___str_5
      004AA2 C0 E0            [24] 2675 	push	acc
      004AA4 74 78            [12] 2676 	mov	a,#(___str_5 >> 8)
      004AA6 C0 E0            [24] 2677 	push	acc
      004AA8 74 80            [12] 2678 	mov	a,#0x80
      004AAA C0 E0            [24] 2679 	push	acc
      004AAC 12 64 F1         [24] 2680 	lcall	_printf
      004AAF E5 81            [12] 2681 	mov	a,sp
      004AB1 24 FB            [12] 2682 	add	a,#0xfb
      004AB3 F5 81            [12] 2683 	mov	sp,a
                                   2684 ;	tcp.c:261: return;
      004AB5 22               [24] 2685 	ret
      004AB6                       2686 00106$:
                                   2687 ;	tcp.c:263: packet_size = next_start_address - (start_address+6);
      004AB6 74 06            [12] 2688 	mov	a,#0x06
      004AB8 2C               [12] 2689 	add	a, r4
      004AB9 FE               [12] 2690 	mov	r6,a
      004ABA E4               [12] 2691 	clr	a
      004ABB 3D               [12] 2692 	addc	a, r5
      004ABC FF               [12] 2693 	mov	r7,a
      004ABD EB               [12] 2694 	mov	a,r3
      004ABE C3               [12] 2695 	clr	c
      004ABF 9E               [12] 2696 	subb	a,r6
      004AC0 FE               [12] 2697 	mov	r6,a
      004AC1 EA               [12] 2698 	mov	a,r2
      004AC2 9F               [12] 2699 	subb	a,r7
      004AC3 FF               [12] 2700 	mov	r7,a
                                   2701 ;	tcp.c:266: uint8_t *packet_data = (uint8_t *)malloc(packet_size);
      004AC4 8E 00            [24] 2702 	mov	ar0,r6
      004AC6 8F 01            [24] 2703 	mov	ar1,r7
      004AC8 88 82            [24] 2704 	mov	dpl, r0
      004ACA 89 83            [24] 2705 	mov	dph, r1
      004ACC C0 07            [24] 2706 	push	ar7
      004ACE C0 06            [24] 2707 	push	ar6
      004AD0 C0 05            [24] 2708 	push	ar5
      004AD2 C0 04            [24] 2709 	push	ar4
      004AD4 C0 03            [24] 2710 	push	ar3
      004AD6 C0 02            [24] 2711 	push	ar2
      004AD8 12 62 3B         [24] 2712 	lcall	_malloc
      004ADB A8 82            [24] 2713 	mov	r0, dpl
      004ADD A9 83            [24] 2714 	mov	r1, dph
      004ADF D0 02            [24] 2715 	pop	ar2
      004AE1 D0 03            [24] 2716 	pop	ar3
      004AE3 D0 04            [24] 2717 	pop	ar4
      004AE5 D0 05            [24] 2718 	pop	ar5
      004AE7 D0 06            [24] 2719 	pop	ar6
      004AE9 D0 07            [24] 2720 	pop	ar7
      004AEB 88 17            [24] 2721 	mov	_process_packet_from_buffer_sloc0_1_0,r0
      004AED 89 18            [24] 2722 	mov	(_process_packet_from_buffer_sloc0_1_0 + 1),r1
      004AEF 75 19 00         [24] 2723 	mov	(_process_packet_from_buffer_sloc0_1_0 + 2),#0x00
                                   2724 ;	tcp.c:267: if (packet_data == NULL) {
      004AF2 E5 17            [12] 2725 	mov	a,_process_packet_from_buffer_sloc0_1_0
      004AF4 45 18            [12] 2726 	orl	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004AF6 70 1A            [24] 2727 	jnz	00108$
                                   2728 ;	tcp.c:268: printf("\n\rMemory allocation failed for packet size: %d\n\r", packet_size);
      004AF8 C0 06            [24] 2729 	push	ar6
      004AFA C0 07            [24] 2730 	push	ar7
      004AFC 74 6F            [12] 2731 	mov	a,#___str_6
      004AFE C0 E0            [24] 2732 	push	acc
      004B00 74 78            [12] 2733 	mov	a,#(___str_6 >> 8)
      004B02 C0 E0            [24] 2734 	push	acc
      004B04 74 80            [12] 2735 	mov	a,#0x80
      004B06 C0 E0            [24] 2736 	push	acc
      004B08 12 64 F1         [24] 2737 	lcall	_printf
      004B0B E5 81            [12] 2738 	mov	a,sp
      004B0D 24 FB            [12] 2739 	add	a,#0xfb
      004B0F F5 81            [12] 2740 	mov	sp,a
                                   2741 ;	tcp.c:269: return;
      004B11 22               [24] 2742 	ret
      004B12                       2743 00108$:
                                   2744 ;	tcp.c:273: if (spi_buffer_read(packet_size, start_address+6, packet_data) != packet_size) {
      004B12 8E 00            [24] 2745 	mov	ar0,r6
      004B14 8F 01            [24] 2746 	mov	ar1,r7
      004B16 74 06            [12] 2747 	mov	a,#0x06
      004B18 2C               [12] 2748 	add	a, r4
      004B19 FC               [12] 2749 	mov	r4,a
      004B1A E4               [12] 2750 	clr	a
      004B1B 3D               [12] 2751 	addc	a, r5
      004B1C FD               [12] 2752 	mov	r5,a
      004B1D 90 03 95         [24] 2753 	mov	dptr,#_spi_buffer_read_PARM_2
      004B20 EC               [12] 2754 	mov	a,r4
      004B21 F0               [24] 2755 	movx	@dptr,a
      004B22 ED               [12] 2756 	mov	a,r5
      004B23 A3               [24] 2757 	inc	dptr
      004B24 F0               [24] 2758 	movx	@dptr,a
      004B25 90 03 97         [24] 2759 	mov	dptr,#_spi_buffer_read_PARM_3
      004B28 E5 17            [12] 2760 	mov	a,_process_packet_from_buffer_sloc0_1_0
      004B2A F0               [24] 2761 	movx	@dptr,a
      004B2B E5 18            [12] 2762 	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004B2D A3               [24] 2763 	inc	dptr
      004B2E F0               [24] 2764 	movx	@dptr,a
      004B2F E5 19            [12] 2765 	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 2)
      004B31 A3               [24] 2766 	inc	dptr
      004B32 F0               [24] 2767 	movx	@dptr,a
      004B33 88 82            [24] 2768 	mov	dpl, r0
      004B35 89 83            [24] 2769 	mov	dph, r1
      004B37 C0 07            [24] 2770 	push	ar7
      004B39 C0 06            [24] 2771 	push	ar6
      004B3B C0 03            [24] 2772 	push	ar3
      004B3D C0 02            [24] 2773 	push	ar2
      004B3F 12 3C 95         [24] 2774 	lcall	_spi_buffer_read
      004B42 AC 82            [24] 2775 	mov	r4, dpl
      004B44 AD 83            [24] 2776 	mov	r5, dph
      004B46 D0 02            [24] 2777 	pop	ar2
      004B48 D0 03            [24] 2778 	pop	ar3
      004B4A D0 06            [24] 2779 	pop	ar6
      004B4C D0 07            [24] 2780 	pop	ar7
      004B4E EC               [12] 2781 	mov	a,r4
      004B4F B5 06 06         [24] 2782 	cjne	a,ar6,00156$
      004B52 ED               [12] 2783 	mov	a,r5
      004B53 B5 07 02         [24] 2784 	cjne	a,ar7,00156$
      004B56 80 24            [24] 2785 	sjmp	00110$
      004B58                       2786 00156$:
                                   2787 ;	tcp.c:274: printf("\n\rFailed to read packet data\n\r");
      004B58 74 A0            [12] 2788 	mov	a,#___str_7
      004B5A C0 E0            [24] 2789 	push	acc
      004B5C 74 78            [12] 2790 	mov	a,#(___str_7 >> 8)
      004B5E C0 E0            [24] 2791 	push	acc
      004B60 74 80            [12] 2792 	mov	a,#0x80
      004B62 C0 E0            [24] 2793 	push	acc
      004B64 12 64 F1         [24] 2794 	lcall	_printf
      004B67 15 81            [12] 2795 	dec	sp
      004B69 15 81            [12] 2796 	dec	sp
      004B6B 15 81            [12] 2797 	dec	sp
                                   2798 ;	tcp.c:275: free(packet_data);
      004B6D AC 17            [24] 2799 	mov	r4,_process_packet_from_buffer_sloc0_1_0
      004B6F A9 18            [24] 2800 	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004B71 7D 00            [12] 2801 	mov	r5,#0x00
      004B73 8C 82            [24] 2802 	mov	dpl, r4
      004B75 89 83            [24] 2803 	mov	dph, r1
      004B77 8D F0            [24] 2804 	mov	b, r5
                                   2805 ;	tcp.c:276: return;
      004B79 02 5D AD         [24] 2806 	ljmp	_free
      004B7C                       2807 00110$:
                                   2808 ;	tcp.c:280: uint8_t *response = process_tcp_packet(packet_data, packet_size, &response_size);
      004B7C 90 03 C2         [24] 2809 	mov	dptr,#_process_tcp_packet_PARM_2
      004B7F EE               [12] 2810 	mov	a,r6
      004B80 F0               [24] 2811 	movx	@dptr,a
      004B81 EF               [12] 2812 	mov	a,r7
      004B82 A3               [24] 2813 	inc	dptr
      004B83 F0               [24] 2814 	movx	@dptr,a
      004B84 90 03 C4         [24] 2815 	mov	dptr,#_process_tcp_packet_PARM_3
      004B87 74 B0            [12] 2816 	mov	a,#_process_packet_from_buffer_response_size_10001_157
      004B89 F0               [24] 2817 	movx	@dptr,a
      004B8A 74 09            [12] 2818 	mov	a,#(_process_packet_from_buffer_response_size_10001_157 >> 8)
      004B8C A3               [24] 2819 	inc	dptr
      004B8D F0               [24] 2820 	movx	@dptr,a
      004B8E E4               [12] 2821 	clr	a
      004B8F A3               [24] 2822 	inc	dptr
      004B90 F0               [24] 2823 	movx	@dptr,a
      004B91 85 17 82         [24] 2824 	mov	dpl, _process_packet_from_buffer_sloc0_1_0
      004B94 85 18 83         [24] 2825 	mov	dph, (_process_packet_from_buffer_sloc0_1_0 + 1)
      004B97 85 19 F0         [24] 2826 	mov	b, (_process_packet_from_buffer_sloc0_1_0 + 2)
      004B9A C0 07            [24] 2827 	push	ar7
      004B9C C0 06            [24] 2828 	push	ar6
      004B9E C0 03            [24] 2829 	push	ar3
      004BA0 C0 02            [24] 2830 	push	ar2
      004BA2 12 45 72         [24] 2831 	lcall	_process_tcp_packet
      004BA5 A9 82            [24] 2832 	mov	r1, dpl
      004BA7 AC 83            [24] 2833 	mov	r4, dph
      004BA9 AD F0            [24] 2834 	mov	r5, b
      004BAB D0 02            [24] 2835 	pop	ar2
      004BAD D0 03            [24] 2836 	pop	ar3
      004BAF D0 06            [24] 2837 	pop	ar6
      004BB1 D0 07            [24] 2838 	pop	ar7
                                   2839 ;	tcp.c:283: if (response != NULL) {
      004BB3 E9               [12] 2840 	mov	a,r1
      004BB4 4C               [12] 2841 	orl	a,r4
      004BB5 70 03            [24] 2842 	jnz	00157$
      004BB7 02 4C 3B         [24] 2843 	ljmp	00112$
      004BBA                       2844 00157$:
                                   2845 ;	tcp.c:284: printf("\nProcessed response data:\n");
      004BBA C0 03            [24] 2846 	push	ar3
      004BBC C0 02            [24] 2847 	push	ar2
      004BBE C0 07            [24] 2848 	push	ar7
      004BC0 C0 06            [24] 2849 	push	ar6
      004BC2 C0 05            [24] 2850 	push	ar5
      004BC4 C0 04            [24] 2851 	push	ar4
      004BC6 C0 03            [24] 2852 	push	ar3
      004BC8 C0 02            [24] 2853 	push	ar2
      004BCA C0 01            [24] 2854 	push	ar1
      004BCC 74 BF            [12] 2855 	mov	a,#___str_8
      004BCE C0 E0            [24] 2856 	push	acc
      004BD0 74 78            [12] 2857 	mov	a,#(___str_8 >> 8)
      004BD2 C0 E0            [24] 2858 	push	acc
      004BD4 74 80            [12] 2859 	mov	a,#0x80
      004BD6 C0 E0            [24] 2860 	push	acc
      004BD8 12 64 F1         [24] 2861 	lcall	_printf
      004BDB 15 81            [12] 2862 	dec	sp
      004BDD 15 81            [12] 2863 	dec	sp
      004BDF 15 81            [12] 2864 	dec	sp
      004BE1 D0 01            [24] 2865 	pop	ar1
      004BE3 D0 02            [24] 2866 	pop	ar2
      004BE5 D0 03            [24] 2867 	pop	ar3
      004BE7 D0 04            [24] 2868 	pop	ar4
      004BE9 D0 05            [24] 2869 	pop	ar5
      004BEB D0 06            [24] 2870 	pop	ar6
      004BED D0 07            [24] 2871 	pop	ar7
                                   2872 ;	tcp.c:286: transmit_tcp_packet(response, response_size);
      004BEF 90 09 B0         [24] 2873 	mov	dptr,#_process_packet_from_buffer_response_size_10001_157
      004BF2 E0               [24] 2874 	movx	a,@dptr
      004BF3 F8               [12] 2875 	mov	r0,a
      004BF4 A3               [24] 2876 	inc	dptr
      004BF5 E0               [24] 2877 	movx	a,@dptr
      004BF6 FB               [12] 2878 	mov	r3,a
      004BF7 90 09 B2         [24] 2879 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004BFA E8               [12] 2880 	mov	a,r0
      004BFB F0               [24] 2881 	movx	@dptr,a
      004BFC EB               [12] 2882 	mov	a,r3
      004BFD A3               [24] 2883 	inc	dptr
      004BFE F0               [24] 2884 	movx	@dptr,a
      004BFF 89 82            [24] 2885 	mov	dpl, r1
      004C01 8C 83            [24] 2886 	mov	dph, r4
      004C03 8D F0            [24] 2887 	mov	b, r5
      004C05 C0 07            [24] 2888 	push	ar7
      004C07 C0 06            [24] 2889 	push	ar6
      004C09 C0 05            [24] 2890 	push	ar5
      004C0B C0 04            [24] 2891 	push	ar4
      004C0D C0 03            [24] 2892 	push	ar3
      004C0F C0 02            [24] 2893 	push	ar2
      004C11 C0 01            [24] 2894 	push	ar1
      004C13 12 4C AC         [24] 2895 	lcall	_transmit_tcp_packet
      004C16 D0 01            [24] 2896 	pop	ar1
      004C18 D0 02            [24] 2897 	pop	ar2
      004C1A D0 03            [24] 2898 	pop	ar3
      004C1C D0 04            [24] 2899 	pop	ar4
      004C1E D0 05            [24] 2900 	pop	ar5
                                   2901 ;	tcp.c:287: free(response); // Free response memory if allocated dynamically
      004C20 89 82            [24] 2902 	mov	dpl, r1
      004C22 8C 83            [24] 2903 	mov	dph, r4
      004C24 8D F0            [24] 2904 	mov	b, r5
      004C26 C0 03            [24] 2905 	push	ar3
      004C28 C0 02            [24] 2906 	push	ar2
      004C2A 12 5D AD         [24] 2907 	lcall	_free
      004C2D D0 02            [24] 2908 	pop	ar2
      004C2F D0 03            [24] 2909 	pop	ar3
      004C31 D0 06            [24] 2910 	pop	ar6
      004C33 D0 07            [24] 2911 	pop	ar7
      004C35 D0 02            [24] 2912 	pop	ar2
      004C37 D0 03            [24] 2913 	pop	ar3
      004C39 80 25            [24] 2914 	sjmp	00113$
      004C3B                       2915 00112$:
                                   2916 ;	tcp.c:289: printf("\nNo response generated by TCP packet processing.\n");
      004C3B C0 07            [24] 2917 	push	ar7
      004C3D C0 06            [24] 2918 	push	ar6
      004C3F C0 03            [24] 2919 	push	ar3
      004C41 C0 02            [24] 2920 	push	ar2
      004C43 74 DA            [12] 2921 	mov	a,#___str_9
      004C45 C0 E0            [24] 2922 	push	acc
      004C47 74 78            [12] 2923 	mov	a,#(___str_9 >> 8)
      004C49 C0 E0            [24] 2924 	push	acc
      004C4B 74 80            [12] 2925 	mov	a,#0x80
      004C4D C0 E0            [24] 2926 	push	acc
      004C4F 12 64 F1         [24] 2927 	lcall	_printf
      004C52 15 81            [12] 2928 	dec	sp
      004C54 15 81            [12] 2929 	dec	sp
      004C56 15 81            [12] 2930 	dec	sp
      004C58 D0 02            [24] 2931 	pop	ar2
      004C5A D0 03            [24] 2932 	pop	ar3
      004C5C D0 06            [24] 2933 	pop	ar6
      004C5E D0 07            [24] 2934 	pop	ar7
      004C60                       2935 00113$:
                                   2936 ;	tcp.c:293: free(packet_data);
      004C60 AC 17            [24] 2937 	mov	r4,_process_packet_from_buffer_sloc0_1_0
      004C62 A9 18            [24] 2938 	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004C64 7D 00            [12] 2939 	mov	r5,#0x00
      004C66 8C 82            [24] 2940 	mov	dpl, r4
      004C68 89 83            [24] 2941 	mov	dph, r1
      004C6A 8D F0            [24] 2942 	mov	b, r5
      004C6C C0 07            [24] 2943 	push	ar7
      004C6E C0 06            [24] 2944 	push	ar6
      004C70 C0 03            [24] 2945 	push	ar3
      004C72 C0 02            [24] 2946 	push	ar2
      004C74 12 5D AD         [24] 2947 	lcall	_free
      004C77 D0 02            [24] 2948 	pop	ar2
      004C79 D0 03            [24] 2949 	pop	ar3
      004C7B D0 06            [24] 2950 	pop	ar6
      004C7D D0 07            [24] 2951 	pop	ar7
                                   2952 ;	tcp.c:296: packet_size, start_address, next_start_address - 1);
      004C7F 1B               [12] 2953 	dec	r3
      004C80 BB FF 01         [24] 2954 	cjne	r3,#0xff,00158$
      004C83 1A               [12] 2955 	dec	r2
      004C84                       2956 00158$:
                                   2957 ;	tcp.c:295: printf("\n\rSuccessfully processed packet of size %d from 0x%04X to 0x%04X\n\r",
      004C84 C0 03            [24] 2958 	push	ar3
      004C86 C0 02            [24] 2959 	push	ar2
      004C88 90 09 AC         [24] 2960 	mov	dptr,#_process_packet_from_buffer_start_address_10000_154
      004C8B E0               [24] 2961 	movx	a,@dptr
      004C8C C0 E0            [24] 2962 	push	acc
      004C8E A3               [24] 2963 	inc	dptr
      004C8F E0               [24] 2964 	movx	a,@dptr
      004C90 C0 E0            [24] 2965 	push	acc
      004C92 C0 06            [24] 2966 	push	ar6
      004C94 C0 07            [24] 2967 	push	ar7
      004C96 74 0C            [12] 2968 	mov	a,#___str_10
      004C98 C0 E0            [24] 2969 	push	acc
      004C9A 74 79            [12] 2970 	mov	a,#(___str_10 >> 8)
      004C9C C0 E0            [24] 2971 	push	acc
      004C9E 74 80            [12] 2972 	mov	a,#0x80
      004CA0 C0 E0            [24] 2973 	push	acc
      004CA2 12 64 F1         [24] 2974 	lcall	_printf
      004CA5 E5 81            [12] 2975 	mov	a,sp
      004CA7 24 F7            [12] 2976 	add	a,#0xf7
      004CA9 F5 81            [12] 2977 	mov	sp,a
                                   2978 ;	tcp.c:297: }
      004CAB 22               [24] 2979 	ret
                                   2980 ;------------------------------------------------------------
                                   2981 ;Allocation info for local variables in function 'transmit_tcp_packet'
                                   2982 ;------------------------------------------------------------
                                   2983 ;packet_size               Allocated with name '_transmit_tcp_packet_PARM_2'
                                   2984 ;packet                    Allocated with name '_transmit_tcp_packet_packet_10000_166'
                                   2985 ;start_address             Allocated with name '_transmit_tcp_packet_start_address_10000_167'
                                   2986 ;end_address               Allocated with name '_transmit_tcp_packet_end_address_10001_169'
                                   2987 ;------------------------------------------------------------
                                   2988 ;	tcp.c:300: void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
                                   2989 ;	-----------------------------------------
                                   2990 ;	 function transmit_tcp_packet
                                   2991 ;	-----------------------------------------
      004CAC                       2992 _transmit_tcp_packet:
      004CAC AF F0            [24] 2993 	mov	r7,b
      004CAE AE 83            [24] 2994 	mov	r6,dph
      004CB0 E5 82            [12] 2995 	mov	a,dpl
      004CB2 90 09 B4         [24] 2996 	mov	dptr,#_transmit_tcp_packet_packet_10000_166
      004CB5 F0               [24] 2997 	movx	@dptr,a
      004CB6 EE               [12] 2998 	mov	a,r6
      004CB7 A3               [24] 2999 	inc	dptr
      004CB8 F0               [24] 3000 	movx	@dptr,a
      004CB9 EF               [12] 3001 	mov	a,r7
      004CBA A3               [24] 3002 	inc	dptr
      004CBB F0               [24] 3003 	movx	@dptr,a
                                   3004 ;	tcp.c:305: if ((start_address + packet_size - 1) > 0x1FFF) {
      004CBC 90 09 B2         [24] 3005 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004CBF E0               [24] 3006 	movx	a,@dptr
      004CC0 FE               [12] 3007 	mov	r6,a
      004CC1 A3               [24] 3008 	inc	dptr
      004CC2 E0               [24] 3009 	movx	a,@dptr
      004CC3 FF               [12] 3010 	mov	r7,a
      004CC4 8E 04            [24] 3011 	mov	ar4,r6
      004CC6 74 1C            [12] 3012 	mov	a,#0x1c
      004CC8 2F               [12] 3013 	add	a, r7
      004CC9 FD               [12] 3014 	mov	r5,a
      004CCA 1C               [12] 3015 	dec	r4
      004CCB BC FF 01         [24] 3016 	cjne	r4,#0xff,00129$
      004CCE 1D               [12] 3017 	dec	r5
      004CCF                       3018 00129$:
      004CCF C3               [12] 3019 	clr	c
      004CD0 74 FF            [12] 3020 	mov	a,#0xff
      004CD2 9C               [12] 3021 	subb	a,r4
      004CD3 74 1F            [12] 3022 	mov	a,#0x1f
      004CD5 9D               [12] 3023 	subb	a,r5
      004CD6 50 16            [24] 3024 	jnc	00102$
                                   3025 ;	tcp.c:306: printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
      004CD8 74 4F            [12] 3026 	mov	a,#___str_11
      004CDA C0 E0            [24] 3027 	push	acc
      004CDC 74 79            [12] 3028 	mov	a,#(___str_11 >> 8)
      004CDE C0 E0            [24] 3029 	push	acc
      004CE0 74 80            [12] 3030 	mov	a,#0x80
      004CE2 C0 E0            [24] 3031 	push	acc
      004CE4 12 64 F1         [24] 3032 	lcall	_printf
      004CE7 15 81            [12] 3033 	dec	sp
      004CE9 15 81            [12] 3034 	dec	sp
      004CEB 15 81            [12] 3035 	dec	sp
                                   3036 ;	tcp.c:307: return;
      004CED 22               [24] 3037 	ret
      004CEE                       3038 00102$:
                                   3039 ;	tcp.c:309: uint16_t end_address = start_address + packet_size - 1;
      004CEE 8E 04            [24] 3040 	mov	ar4,r6
      004CF0 74 1C            [12] 3041 	mov	a,#0x1c
      004CF2 2F               [12] 3042 	add	a, r7
      004CF3 FD               [12] 3043 	mov	r5,a
      004CF4 1C               [12] 3044 	dec	r4
      004CF5 BC FF 01         [24] 3045 	cjne	r4,#0xff,00131$
      004CF8 1D               [12] 3046 	dec	r5
      004CF9                       3047 00131$:
                                   3048 ;	tcp.c:310: spi_buffer_write(packet_size, start_address, packet);
      004CF9 90 09 B4         [24] 3049 	mov	dptr,#_transmit_tcp_packet_packet_10000_166
      004CFC E0               [24] 3050 	movx	a,@dptr
      004CFD F9               [12] 3051 	mov	r1,a
      004CFE A3               [24] 3052 	inc	dptr
      004CFF E0               [24] 3053 	movx	a,@dptr
      004D00 FA               [12] 3054 	mov	r2,a
      004D01 A3               [24] 3055 	inc	dptr
      004D02 E0               [24] 3056 	movx	a,@dptr
      004D03 FB               [12] 3057 	mov	r3,a
      004D04 90 03 9C         [24] 3058 	mov	dptr,#_spi_buffer_write_PARM_2
      004D07 E4               [12] 3059 	clr	a
      004D08 F0               [24] 3060 	movx	@dptr,a
      004D09 74 1C            [12] 3061 	mov	a,#0x1c
      004D0B A3               [24] 3062 	inc	dptr
      004D0C F0               [24] 3063 	movx	@dptr,a
      004D0D 90 03 9E         [24] 3064 	mov	dptr,#_spi_buffer_write_PARM_3
      004D10 E9               [12] 3065 	mov	a,r1
      004D11 F0               [24] 3066 	movx	@dptr,a
      004D12 EA               [12] 3067 	mov	a,r2
      004D13 A3               [24] 3068 	inc	dptr
      004D14 F0               [24] 3069 	movx	@dptr,a
      004D15 EB               [12] 3070 	mov	a,r3
      004D16 A3               [24] 3071 	inc	dptr
      004D17 F0               [24] 3072 	movx	@dptr,a
      004D18 8E 82            [24] 3073 	mov	dpl, r6
      004D1A 8F 83            [24] 3074 	mov	dph, r7
      004D1C C0 05            [24] 3075 	push	ar5
      004D1E C0 04            [24] 3076 	push	ar4
      004D20 12 3E 14         [24] 3077 	lcall	_spi_buffer_write
      004D23 D0 04            [24] 3078 	pop	ar4
      004D25 D0 05            [24] 3079 	pop	ar5
                                   3080 ;	tcp.c:313: enc28j60_set_transmit_pointers(start_address, end_address);
      004D27 90 01 06         [24] 3081 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      004D2A EC               [12] 3082 	mov	a,r4
      004D2B F0               [24] 3083 	movx	@dptr,a
      004D2C ED               [12] 3084 	mov	a,r5
      004D2D A3               [24] 3085 	inc	dptr
      004D2E F0               [24] 3086 	movx	@dptr,a
      004D2F 90 1C 00         [24] 3087 	mov	dptr,#0x1c00
      004D32 12 21 4E         [24] 3088 	lcall	_enc28j60_set_transmit_pointers
                                   3089 ;	tcp.c:316: enc28j60_start_transmission();
      004D35 12 21 2D         [24] 3090 	lcall	_enc28j60_start_transmission
                                   3091 ;	tcp.c:319: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      004D38 90 01 F4         [24] 3092 	mov	dptr,#0x01f4
      004D3B 12 21 C5         [24] 3093 	lcall	_wait_for_transmission_complete
      004D3E E5 82            [12] 3094 	mov	a, dpl
      004D40 60 38            [24] 3095 	jz	00107$
                                   3096 ;	tcp.c:321: if (enc28j60_transmission_successful()) {
      004D42 12 22 28         [24] 3097 	lcall	_enc28j60_transmission_successful
      004D45 E5 82            [12] 3098 	mov	a, dpl
      004D47 85 83 F0         [24] 3099 	mov	b, dph
      004D4A 45 F0            [12] 3100 	orl	a,b
      004D4C 60 16            [24] 3101 	jz	00104$
                                   3102 ;	tcp.c:322: printf("TCP request sent successfully.\n\r");
      004D4E 74 8A            [12] 3103 	mov	a,#___str_12
      004D50 C0 E0            [24] 3104 	push	acc
      004D52 74 79            [12] 3105 	mov	a,#(___str_12 >> 8)
      004D54 C0 E0            [24] 3106 	push	acc
      004D56 74 80            [12] 3107 	mov	a,#0x80
      004D58 C0 E0            [24] 3108 	push	acc
      004D5A 12 64 F1         [24] 3109 	lcall	_printf
      004D5D 15 81            [12] 3110 	dec	sp
      004D5F 15 81            [12] 3111 	dec	sp
      004D61 15 81            [12] 3112 	dec	sp
      004D63 22               [24] 3113 	ret
      004D64                       3114 00104$:
                                   3115 ;	tcp.c:324: printf("TCP transmission failed. Check error flags.\n\r");
      004D64 74 AB            [12] 3116 	mov	a,#___str_13
      004D66 C0 E0            [24] 3117 	push	acc
      004D68 74 79            [12] 3118 	mov	a,#(___str_13 >> 8)
      004D6A C0 E0            [24] 3119 	push	acc
      004D6C 74 80            [12] 3120 	mov	a,#0x80
      004D6E C0 E0            [24] 3121 	push	acc
      004D70 12 64 F1         [24] 3122 	lcall	_printf
      004D73 15 81            [12] 3123 	dec	sp
      004D75 15 81            [12] 3124 	dec	sp
      004D77 15 81            [12] 3125 	dec	sp
      004D79 22               [24] 3126 	ret
      004D7A                       3127 00107$:
                                   3128 ;	tcp.c:328: "Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      004D7A 74 D9            [12] 3129 	mov	a,#___str_14
      004D7C C0 E0            [24] 3130 	push	acc
      004D7E 74 79            [12] 3131 	mov	a,#(___str_14 >> 8)
      004D80 C0 E0            [24] 3132 	push	acc
      004D82 74 80            [12] 3133 	mov	a,#0x80
      004D84 C0 E0            [24] 3134 	push	acc
      004D86 12 64 F1         [24] 3135 	lcall	_printf
      004D89 15 81            [12] 3136 	dec	sp
      004D8B 15 81            [12] 3137 	dec	sp
      004D8D 15 81            [12] 3138 	dec	sp
                                   3139 ;	tcp.c:330: }
      004D8F 22               [24] 3140 	ret
                                   3141 	.area CSEG    (CODE)
                                   3142 	.area CONST   (CODE)
                                   3143 	.area CONST   (CODE)
      0077DC                       3144 ___str_0:
      0077DC 0A                    3145 	.db 0x0a
      0077DD 48 65 78 64 75 6D 70  3146 	.ascii "Hexdump (Size: %d):"
             20 28 53 69 7A 65 3A
             20 25 64 29 3A
      0077F0 0A                    3147 	.db 0x0a
      0077F1 00                    3148 	.db 0x00
                                   3149 	.area CSEG    (CODE)
                                   3150 	.area CONST   (CODE)
      0077F2                       3151 ___str_1:
      0077F2 25 30 32 58 20        3152 	.ascii "%02X "
      0077F7 00                    3153 	.db 0x00
                                   3154 	.area CSEG    (CODE)
                                   3155 	.area CONST   (CODE)
      0077F8                       3156 ___str_2:
      0077F8 0A                    3157 	.db 0x0a
      0077F9 00                    3158 	.db 0x00
                                   3159 	.area CSEG    (CODE)
                                   3160 	.area CONST   (CODE)
      0077FA                       3161 ___str_3:
      0077FA 0A                    3162 	.db 0x0a
      0077FB 0D                    3163 	.db 0x0d
      0077FC 49 6E 76 61 6C 69 64  3164 	.ascii "Invalid start address: %04X"
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             3A 20 25 30 34 58
      007817 0A                    3165 	.db 0x0a
      007818 0D                    3166 	.db 0x0d
      007819 00                    3167 	.db 0x00
                                   3168 	.area CSEG    (CODE)
                                   3169 	.area CONST   (CODE)
      00781A                       3170 ___str_4:
      00781A 0A                    3171 	.db 0x0a
      00781B 0D                    3172 	.db 0x0d
      00781C 46 61 69 6C 65 64 20  3173 	.ascii "Failed to read packet start address bytes"
             74 6F 20 72 65 61 64
             20 70 61 63 6B 65 74
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             20 62 79 74 65 73
      007845 0A                    3174 	.db 0x0a
      007846 0D                    3175 	.db 0x0d
      007847 00                    3176 	.db 0x00
                                   3177 	.area CSEG    (CODE)
                                   3178 	.area CONST   (CODE)
      007848                       3179 ___str_5:
      007848 0A                    3180 	.db 0x0a
      007849 0D                    3181 	.db 0x0d
      00784A 49 6E 76 61 6C 69 64  3182 	.ascii "Invalid next start address: 0x%04X"
             20 6E 65 78 74 20 73
             74 61 72 74 20 61 64
             64 72 65 73 73 3A 20
             30 78 25 30 34 58
      00786C 0A                    3183 	.db 0x0a
      00786D 0D                    3184 	.db 0x0d
      00786E 00                    3185 	.db 0x00
                                   3186 	.area CSEG    (CODE)
                                   3187 	.area CONST   (CODE)
      00786F                       3188 ___str_6:
      00786F 0A                    3189 	.db 0x0a
      007870 0D                    3190 	.db 0x0d
      007871 4D 65 6D 6F 72 79 20  3191 	.ascii "Memory allocation failed for packet size: %d"
             61 6C 6C 6F 63 61 74
             69 6F 6E 20 66 61 69
             6C 65 64 20 66 6F 72
             20 70 61 63 6B 65 74
             20 73 69 7A 65 3A 20
             25 64
      00789D 0A                    3192 	.db 0x0a
      00789E 0D                    3193 	.db 0x0d
      00789F 00                    3194 	.db 0x00
                                   3195 	.area CSEG    (CODE)
                                   3196 	.area CONST   (CODE)
      0078A0                       3197 ___str_7:
      0078A0 0A                    3198 	.db 0x0a
      0078A1 0D                    3199 	.db 0x0d
      0078A2 46 61 69 6C 65 64 20  3200 	.ascii "Failed to read packet data"
             74 6F 20 72 65 61 64
             20 70 61 63 6B 65 74
             20 64 61 74 61
      0078BC 0A                    3201 	.db 0x0a
      0078BD 0D                    3202 	.db 0x0d
      0078BE 00                    3203 	.db 0x00
                                   3204 	.area CSEG    (CODE)
                                   3205 	.area CONST   (CODE)
      0078BF                       3206 ___str_8:
      0078BF 0A                    3207 	.db 0x0a
      0078C0 50 72 6F 63 65 73 73  3208 	.ascii "Processed response data:"
             65 64 20 72 65 73 70
             6F 6E 73 65 20 64 61
             74 61 3A
      0078D8 0A                    3209 	.db 0x0a
      0078D9 00                    3210 	.db 0x00
                                   3211 	.area CSEG    (CODE)
                                   3212 	.area CONST   (CODE)
      0078DA                       3213 ___str_9:
      0078DA 0A                    3214 	.db 0x0a
      0078DB 4E 6F 20 72 65 73 70  3215 	.ascii "No response generated by TCP packet processing."
             6F 6E 73 65 20 67 65
             6E 65 72 61 74 65 64
             20 62 79 20 54 43 50
             20 70 61 63 6B 65 74
             20 70 72 6F 63 65 73
             73 69 6E 67 2E
      00790A 0A                    3216 	.db 0x0a
      00790B 00                    3217 	.db 0x00
                                   3218 	.area CSEG    (CODE)
                                   3219 	.area CONST   (CODE)
      00790C                       3220 ___str_10:
      00790C 0A                    3221 	.db 0x0a
      00790D 0D                    3222 	.db 0x0d
      00790E 53 75 63 63 65 73 73  3223 	.ascii "Successfully processed packet of size %d from 0x%04X to 0x%0"
             66 75 6C 6C 79 20 70
             72 6F 63 65 73 73 65
             64 20 70 61 63 6B 65
             74 20 6F 66 20 73 69
             7A 65 20 25 64 20 66
             72 6F 6D 20 30 78 25
             30 34 58 20 74 6F 20
             30 78 25 30
      00794A 34 58                 3224 	.ascii "4X"
      00794C 0A                    3225 	.db 0x0a
      00794D 0D                    3226 	.db 0x0d
      00794E 00                    3227 	.db 0x00
                                   3228 	.area CSEG    (CODE)
                                   3229 	.area CONST   (CODE)
      00794F                       3230 ___str_11:
      00794F 0A                    3231 	.db 0x0a
      007950 49 6E 76 61 6C 69 64  3232 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      007988 0A                    3233 	.db 0x0a
      007989 00                    3234 	.db 0x00
                                   3235 	.area CSEG    (CODE)
                                   3236 	.area CONST   (CODE)
      00798A                       3237 ___str_12:
      00798A 54 43 50 20 72 65 71  3238 	.ascii "TCP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      0079A8 0A                    3239 	.db 0x0a
      0079A9 0D                    3240 	.db 0x0d
      0079AA 00                    3241 	.db 0x00
                                   3242 	.area CSEG    (CODE)
                                   3243 	.area CONST   (CODE)
      0079AB                       3244 ___str_13:
      0079AB 54 43 50 20 74 72 61  3245 	.ascii "TCP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      0079D6 0A                    3246 	.db 0x0a
      0079D7 0D                    3247 	.db 0x0d
      0079D8 00                    3248 	.db 0x00
                                   3249 	.area CSEG    (CODE)
                                   3250 	.area CONST   (CODE)
      0079D9                       3251 ___str_14:
      0079D9 54 72 61 6E 73 6D 69  3252 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      007A15 74 6C 79 2E           3253 	.ascii "tly."
      007A19 0A                    3254 	.db 0x0a
      007A1A 0D                    3255 	.db 0x0d
      007A1B 00                    3256 	.db 0x00
                                   3257 	.area CSEG    (CODE)
                                   3258 	.area XINIT   (CODE)
                                   3259 	.area CABS    (ABS,CODE)

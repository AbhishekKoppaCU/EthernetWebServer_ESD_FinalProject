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
                                    234 	.globl _calculate_checksum
                                    235 	.globl _process_tcp_packet
                                    236 	.globl _print_hexdump
                                    237 	.globl _process_packet_from_buffer
                                    238 	.globl _transmit_tcp_packet
                                    239 ;--------------------------------------------------------
                                    240 ; special function registers
                                    241 ;--------------------------------------------------------
                                    242 	.area RSEG    (ABS,DATA)
      000000                        243 	.org 0x0000
                           0000C8   244 _T2CON	=	0x00c8
                           0000CA   245 _RCAP2L	=	0x00ca
                           0000CB   246 _RCAP2H	=	0x00cb
                           0000CC   247 _TL2	=	0x00cc
                           0000CD   248 _TH2	=	0x00cd
                           00008E   249 _AUXR	=	0x008e
                           0000A2   250 _AUXR1	=	0x00a2
                           000097   251 _CKRL	=	0x0097
                           00008F   252 _CKCON0	=	0x008f
                           0000AF   253 _CKCON1	=	0x00af
                           0000FA   254 _CCAP0H	=	0x00fa
                           0000FB   255 _CCAP1H	=	0x00fb
                           0000FC   256 _CCAP2H	=	0x00fc
                           0000FD   257 _CCAP3H	=	0x00fd
                           0000FE   258 _CCAP4H	=	0x00fe
                           0000EA   259 _CCAP0L	=	0x00ea
                           0000EB   260 _CCAP1L	=	0x00eb
                           0000EC   261 _CCAP2L	=	0x00ec
                           0000ED   262 _CCAP3L	=	0x00ed
                           0000EE   263 _CCAP4L	=	0x00ee
                           0000DA   264 _CCAPM0	=	0x00da
                           0000DB   265 _CCAPM1	=	0x00db
                           0000DC   266 _CCAPM2	=	0x00dc
                           0000DD   267 _CCAPM3	=	0x00dd
                           0000DE   268 _CCAPM4	=	0x00de
                           0000D8   269 _CCON	=	0x00d8
                           0000F9   270 _CH	=	0x00f9
                           0000E9   271 _CL	=	0x00e9
                           0000D9   272 _CMOD	=	0x00d9
                           0000A8   273 _IEN0	=	0x00a8
                           0000B1   274 _IEN1	=	0x00b1
                           0000B8   275 _IPL0	=	0x00b8
                           0000B7   276 _IPH0	=	0x00b7
                           0000B2   277 _IPL1	=	0x00b2
                           0000B3   278 _IPH1	=	0x00b3
                           0000C0   279 _P4	=	0x00c0
                           0000E8   280 _P5	=	0x00e8
                           0000A6   281 _WDTRST	=	0x00a6
                           0000A7   282 _WDTPRG	=	0x00a7
                           0000A9   283 _SADDR	=	0x00a9
                           0000B9   284 _SADEN	=	0x00b9
                           0000C3   285 _SPCON	=	0x00c3
                           0000C4   286 _SPSTA	=	0x00c4
                           0000C5   287 _SPDAT	=	0x00c5
                           0000C9   288 _T2MOD	=	0x00c9
                           00009B   289 _BDRCON	=	0x009b
                           00009A   290 _BRL	=	0x009a
                           00009C   291 _KBLS	=	0x009c
                           00009D   292 _KBE	=	0x009d
                           00009E   293 _KBF	=	0x009e
                           0000D2   294 _EECON	=	0x00d2
                           0000E0   295 _ACC	=	0x00e0
                           0000F0   296 _B	=	0x00f0
                           000083   297 _DPH	=	0x0083
                           000083   298 _DP0H	=	0x0083
                           000082   299 _DPL	=	0x0082
                           000082   300 _DP0L	=	0x0082
                           0000A8   301 _IE	=	0x00a8
                           0000B8   302 _IP	=	0x00b8
                           000080   303 _P0	=	0x0080
                           000090   304 _P1	=	0x0090
                           0000A0   305 _P2	=	0x00a0
                           0000B0   306 _P3	=	0x00b0
                           000087   307 _PCON	=	0x0087
                           0000D0   308 _PSW	=	0x00d0
                           000099   309 _SBUF	=	0x0099
                           000099   310 _SBUF0	=	0x0099
                           000098   311 _SCON	=	0x0098
                           000081   312 _SP	=	0x0081
                           000088   313 _TCON	=	0x0088
                           00008C   314 _TH0	=	0x008c
                           00008D   315 _TH1	=	0x008d
                           00008A   316 _TL0	=	0x008a
                           00008B   317 _TL1	=	0x008b
                           000089   318 _TMOD	=	0x0089
                                    319 ;--------------------------------------------------------
                                    320 ; special function bits
                                    321 ;--------------------------------------------------------
                                    322 	.area RSEG    (ABS,DATA)
      000000                        323 	.org 0x0000
                           0000AD   324 _ET2	=	0x00ad
                           0000BD   325 _PT2	=	0x00bd
                           0000C8   326 _T2CON_0	=	0x00c8
                           0000C9   327 _T2CON_1	=	0x00c9
                           0000CA   328 _T2CON_2	=	0x00ca
                           0000CB   329 _T2CON_3	=	0x00cb
                           0000CC   330 _T2CON_4	=	0x00cc
                           0000CD   331 _T2CON_5	=	0x00cd
                           0000CE   332 _T2CON_6	=	0x00ce
                           0000CF   333 _T2CON_7	=	0x00cf
                           0000C8   334 _CP_RL2	=	0x00c8
                           0000C9   335 _C_T2	=	0x00c9
                           0000CA   336 _TR2	=	0x00ca
                           0000CB   337 _EXEN2	=	0x00cb
                           0000CC   338 _TCLK	=	0x00cc
                           0000CD   339 _RCLK	=	0x00cd
                           0000CE   340 _EXF2	=	0x00ce
                           0000CF   341 _TF2	=	0x00cf
                           0000DF   342 _CF	=	0x00df
                           0000DE   343 _CR	=	0x00de
                           0000DC   344 _CCF4	=	0x00dc
                           0000DB   345 _CCF3	=	0x00db
                           0000DA   346 _CCF2	=	0x00da
                           0000D9   347 _CCF1	=	0x00d9
                           0000D8   348 _CCF0	=	0x00d8
                           0000AE   349 _EC	=	0x00ae
                           0000BE   350 _PPCL	=	0x00be
                           0000BD   351 _PT2L	=	0x00bd
                           0000BC   352 _PSL	=	0x00bc
                           0000BB   353 _PT1L	=	0x00bb
                           0000BA   354 _PX1L	=	0x00ba
                           0000B9   355 _PT0L	=	0x00b9
                           0000B8   356 _PX0L	=	0x00b8
                           0000C0   357 _P4_0	=	0x00c0
                           0000C1   358 _P4_1	=	0x00c1
                           0000C2   359 _P4_2	=	0x00c2
                           0000C3   360 _P4_3	=	0x00c3
                           0000C4   361 _P4_4	=	0x00c4
                           0000C5   362 _P4_5	=	0x00c5
                           0000C6   363 _P4_6	=	0x00c6
                           0000C7   364 _P4_7	=	0x00c7
                           0000E8   365 _P5_0	=	0x00e8
                           0000E9   366 _P5_1	=	0x00e9
                           0000EA   367 _P5_2	=	0x00ea
                           0000EB   368 _P5_3	=	0x00eb
                           0000EC   369 _P5_4	=	0x00ec
                           0000ED   370 _P5_5	=	0x00ed
                           0000EE   371 _P5_6	=	0x00ee
                           0000EF   372 _P5_7	=	0x00ef
                           0000F0   373 _BREG_F0	=	0x00f0
                           0000F1   374 _BREG_F1	=	0x00f1
                           0000F2   375 _BREG_F2	=	0x00f2
                           0000F3   376 _BREG_F3	=	0x00f3
                           0000F4   377 _BREG_F4	=	0x00f4
                           0000F5   378 _BREG_F5	=	0x00f5
                           0000F6   379 _BREG_F6	=	0x00f6
                           0000F7   380 _BREG_F7	=	0x00f7
                           0000A8   381 _EX0	=	0x00a8
                           0000A9   382 _ET0	=	0x00a9
                           0000AA   383 _EX1	=	0x00aa
                           0000AB   384 _ET1	=	0x00ab
                           0000AC   385 _ES	=	0x00ac
                           0000AF   386 _EA	=	0x00af
                           0000B8   387 _PX0	=	0x00b8
                           0000B9   388 _PT0	=	0x00b9
                           0000BA   389 _PX1	=	0x00ba
                           0000BB   390 _PT1	=	0x00bb
                           0000BC   391 _PS	=	0x00bc
                           000080   392 _P0_0	=	0x0080
                           000081   393 _P0_1	=	0x0081
                           000082   394 _P0_2	=	0x0082
                           000083   395 _P0_3	=	0x0083
                           000084   396 _P0_4	=	0x0084
                           000085   397 _P0_5	=	0x0085
                           000086   398 _P0_6	=	0x0086
                           000087   399 _P0_7	=	0x0087
                           000090   400 _P1_0	=	0x0090
                           000091   401 _P1_1	=	0x0091
                           000092   402 _P1_2	=	0x0092
                           000093   403 _P1_3	=	0x0093
                           000094   404 _P1_4	=	0x0094
                           000095   405 _P1_5	=	0x0095
                           000096   406 _P1_6	=	0x0096
                           000097   407 _P1_7	=	0x0097
                           0000A0   408 _P2_0	=	0x00a0
                           0000A1   409 _P2_1	=	0x00a1
                           0000A2   410 _P2_2	=	0x00a2
                           0000A3   411 _P2_3	=	0x00a3
                           0000A4   412 _P2_4	=	0x00a4
                           0000A5   413 _P2_5	=	0x00a5
                           0000A6   414 _P2_6	=	0x00a6
                           0000A7   415 _P2_7	=	0x00a7
                           0000B0   416 _P3_0	=	0x00b0
                           0000B1   417 _P3_1	=	0x00b1
                           0000B2   418 _P3_2	=	0x00b2
                           0000B3   419 _P3_3	=	0x00b3
                           0000B4   420 _P3_4	=	0x00b4
                           0000B5   421 _P3_5	=	0x00b5
                           0000B6   422 _P3_6	=	0x00b6
                           0000B7   423 _P3_7	=	0x00b7
                           0000B0   424 _RXD	=	0x00b0
                           0000B0   425 _RXD0	=	0x00b0
                           0000B1   426 _TXD	=	0x00b1
                           0000B1   427 _TXD0	=	0x00b1
                           0000B2   428 _INT0	=	0x00b2
                           0000B3   429 _INT1	=	0x00b3
                           0000B4   430 _T0	=	0x00b4
                           0000B5   431 _T1	=	0x00b5
                           0000B6   432 _WR	=	0x00b6
                           0000B7   433 _RD	=	0x00b7
                           0000D0   434 _P	=	0x00d0
                           0000D1   435 _F1	=	0x00d1
                           0000D2   436 _OV	=	0x00d2
                           0000D3   437 _RS0	=	0x00d3
                           0000D4   438 _RS1	=	0x00d4
                           0000D5   439 _F0	=	0x00d5
                           0000D6   440 _AC	=	0x00d6
                           0000D7   441 _CY	=	0x00d7
                           000098   442 _RI	=	0x0098
                           000099   443 _TI	=	0x0099
                           00009A   444 _RB8	=	0x009a
                           00009B   445 _TB8	=	0x009b
                           00009C   446 _REN	=	0x009c
                           00009D   447 _SM2	=	0x009d
                           00009E   448 _SM1	=	0x009e
                           00009F   449 _SM0	=	0x009f
                           000088   450 _IT0	=	0x0088
                           000089   451 _IE0	=	0x0089
                           00008A   452 _IT1	=	0x008a
                           00008B   453 _IE1	=	0x008b
                           00008C   454 _TR0	=	0x008c
                           00008D   455 _TF0	=	0x008d
                           00008E   456 _TR1	=	0x008e
                           00008F   457 _TF1	=	0x008f
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable register banks
                                    460 ;--------------------------------------------------------
                                    461 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        462 	.ds 8
                                    463 ;--------------------------------------------------------
                                    464 ; internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area DSEG    (DATA)
      000014                        467 _process_tcp_packet_sloc0_1_0:
      000014                        468 	.ds 3
      000017                        469 _process_packet_from_buffer_sloc0_1_0:
      000017                        470 	.ds 3
                                    471 ;--------------------------------------------------------
                                    472 ; overlayable items in internal ram
                                    473 ;--------------------------------------------------------
                                    474 	.area	OSEG    (OVR,DATA)
      000039                        475 _calculate_checksum_sloc0_1_0:
      000039                        476 	.ds 2
      00003B                        477 _calculate_checksum_sloc1_1_0:
      00003B                        478 	.ds 4
      00003F                        479 _calculate_checksum_sloc2_1_0:
      00003F                        480 	.ds 4
                                    481 ;--------------------------------------------------------
                                    482 ; indirectly addressable internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area ISEG    (DATA)
                                    485 ;--------------------------------------------------------
                                    486 ; absolute internal ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area IABS    (ABS,DATA)
                                    489 	.area IABS    (ABS,DATA)
                                    490 ;--------------------------------------------------------
                                    491 ; bit data
                                    492 ;--------------------------------------------------------
                                    493 	.area BSEG    (BIT)
                                    494 ;--------------------------------------------------------
                                    495 ; paged external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area PSEG    (PAG,XDATA)
                                    498 ;--------------------------------------------------------
                                    499 ; uninitialized external ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area XSEG    (XDATA)
      0003A7                        502 _calculate_checksum_PARM_2:
      0003A7                        503 	.ds 2
      0003A9                        504 _calculate_checksum_data_10000_116:
      0003A9                        505 	.ds 3
      0003AC                        506 _calculate_checksum_sum_10000_117:
      0003AC                        507 	.ds 4
      0003B0                        508 _calculate_checksum_i_20000_118:
      0003B0                        509 	.ds 2
      0003B2                        510 _process_tcp_packet_PARM_2:
      0003B2                        511 	.ds 2
      0003B4                        512 _process_tcp_packet_PARM_3:
      0003B4                        513 	.ds 3
      0003B7                        514 _process_tcp_packet_packet_10000_121:
      0003B7                        515 	.ds 3
      0003BA                        516 _process_tcp_packet_response_10000_122:
      0003BA                        517 	.ds 1501
      000997                        518 _print_hexdump_PARM_2:
      000997                        519 	.ds 2
      000999                        520 _print_hexdump_data_10000_131:
      000999                        521 	.ds 3
      00099C                        522 _process_packet_from_buffer_start_address_10000_137:
      00099C                        523 	.ds 2
      00099E                        524 _process_packet_from_buffer_next_packet_start_10001_140:
      00099E                        525 	.ds 2
      0009A0                        526 _process_packet_from_buffer_response_size_10001_140:
      0009A0                        527 	.ds 2
      0009A2                        528 _transmit_tcp_packet_PARM_2:
      0009A2                        529 	.ds 2
      0009A4                        530 _transmit_tcp_packet_packet_10000_149:
      0009A4                        531 	.ds 3
                                    532 ;--------------------------------------------------------
                                    533 ; absolute external ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area XABS    (ABS,XDATA)
                                    536 ;--------------------------------------------------------
                                    537 ; initialized external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XISEG   (XDATA)
                                    540 	.area HOME    (CODE)
                                    541 	.area GSINIT0 (CODE)
                                    542 	.area GSINIT1 (CODE)
                                    543 	.area GSINIT2 (CODE)
                                    544 	.area GSINIT3 (CODE)
                                    545 	.area GSINIT4 (CODE)
                                    546 	.area GSINIT5 (CODE)
                                    547 	.area GSINIT  (CODE)
                                    548 	.area GSFINAL (CODE)
                                    549 	.area CSEG    (CODE)
                                    550 ;--------------------------------------------------------
                                    551 ; global & static initialisations
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 	.area GSFINAL (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 ;--------------------------------------------------------
                                    558 ; Home
                                    559 ;--------------------------------------------------------
                                    560 	.area HOME    (CODE)
                                    561 	.area HOME    (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; code
                                    564 ;--------------------------------------------------------
                                    565 	.area CSEG    (CODE)
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'calculate_checksum'
                                    568 ;------------------------------------------------------------
                                    569 ;length                    Allocated with name '_calculate_checksum_PARM_2'
                                    570 ;data                      Allocated with name '_calculate_checksum_data_10000_116'
                                    571 ;sum                       Allocated with name '_calculate_checksum_sum_10000_117'
                                    572 ;i                         Allocated with name '_calculate_checksum_i_20000_118'
                                    573 ;word                      Allocated with name '_calculate_checksum_word_30000_119'
                                    574 ;sloc0                     Allocated with name '_calculate_checksum_sloc0_1_0'
                                    575 ;sloc1                     Allocated with name '_calculate_checksum_sloc1_1_0'
                                    576 ;sloc2                     Allocated with name '_calculate_checksum_sloc2_1_0'
                                    577 ;------------------------------------------------------------
                                    578 ;	tcp.c:12: uint16_t calculate_checksum(uint8_t *data, uint16_t length) {
                                    579 ;	-----------------------------------------
                                    580 ;	 function calculate_checksum
                                    581 ;	-----------------------------------------
      0040B9                        582 _calculate_checksum:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
      0040B9 AF F0            [24]  591 	mov	r7,b
      0040BB AE 83            [24]  592 	mov	r6,dph
      0040BD E5 82            [12]  593 	mov	a,dpl
      0040BF 90 03 A9         [24]  594 	mov	dptr,#_calculate_checksum_data_10000_116
      0040C2 F0               [24]  595 	movx	@dptr,a
      0040C3 EE               [12]  596 	mov	a,r6
      0040C4 A3               [24]  597 	inc	dptr
      0040C5 F0               [24]  598 	movx	@dptr,a
      0040C6 EF               [12]  599 	mov	a,r7
      0040C7 A3               [24]  600 	inc	dptr
      0040C8 F0               [24]  601 	movx	@dptr,a
                                    602 ;	tcp.c:13: uint32_t sum = 0;
      0040C9 90 03 AC         [24]  603 	mov	dptr,#_calculate_checksum_sum_10000_117
      0040CC E4               [12]  604 	clr	a
      0040CD F0               [24]  605 	movx	@dptr,a
      0040CE A3               [24]  606 	inc	dptr
      0040CF F0               [24]  607 	movx	@dptr,a
      0040D0 A3               [24]  608 	inc	dptr
      0040D1 F0               [24]  609 	movx	@dptr,a
      0040D2 A3               [24]  610 	inc	dptr
      0040D3 F0               [24]  611 	movx	@dptr,a
                                    612 ;	tcp.c:16: for (uint16_t i = 0; i < length; i += 2) {
      0040D4 90 03 B0         [24]  613 	mov	dptr,#_calculate_checksum_i_20000_118
      0040D7 F0               [24]  614 	movx	@dptr,a
      0040D8 A3               [24]  615 	inc	dptr
      0040D9 F0               [24]  616 	movx	@dptr,a
      0040DA 90 03 A9         [24]  617 	mov	dptr,#_calculate_checksum_data_10000_116
      0040DD E0               [24]  618 	movx	a,@dptr
      0040DE FD               [12]  619 	mov	r5,a
      0040DF A3               [24]  620 	inc	dptr
      0040E0 E0               [24]  621 	movx	a,@dptr
      0040E1 FE               [12]  622 	mov	r6,a
      0040E2 A3               [24]  623 	inc	dptr
      0040E3 E0               [24]  624 	movx	a,@dptr
      0040E4 FF               [12]  625 	mov	r7,a
      0040E5 90 03 A7         [24]  626 	mov	dptr,#_calculate_checksum_PARM_2
      0040E8 E0               [24]  627 	movx	a,@dptr
      0040E9 F5 39            [12]  628 	mov	_calculate_checksum_sloc0_1_0,a
      0040EB A3               [24]  629 	inc	dptr
      0040EC E0               [24]  630 	movx	a,@dptr
      0040ED F5 3A            [12]  631 	mov	(_calculate_checksum_sloc0_1_0 + 1),a
      0040EF                        632 00105$:
      0040EF 90 03 B0         [24]  633 	mov	dptr,#_calculate_checksum_i_20000_118
      0040F2 E0               [24]  634 	movx	a,@dptr
      0040F3 F9               [12]  635 	mov	r1,a
      0040F4 A3               [24]  636 	inc	dptr
      0040F5 E0               [24]  637 	movx	a,@dptr
      0040F6 FA               [12]  638 	mov	r2,a
      0040F7 C3               [12]  639 	clr	c
      0040F8 E9               [12]  640 	mov	a,r1
      0040F9 95 39            [12]  641 	subb	a,_calculate_checksum_sloc0_1_0
      0040FB EA               [12]  642 	mov	a,r2
      0040FC 95 3A            [12]  643 	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
      0040FE 40 03            [24]  644 	jc	00135$
      004100 02 41 EF         [24]  645 	ljmp	00103$
      004103                        646 00135$:
                                    647 ;	tcp.c:17: uint16_t word = (data[i] << 8) + (i + 1 < length ? data[i + 1] : 0);
      004103 E9               [12]  648 	mov	a,r1
      004104 2D               [12]  649 	add	a, r5
      004105 F8               [12]  650 	mov	r0,a
      004106 EA               [12]  651 	mov	a,r2
      004107 3E               [12]  652 	addc	a, r6
      004108 FB               [12]  653 	mov	r3,a
      004109 8F 04            [24]  654 	mov	ar4,r7
      00410B 88 82            [24]  655 	mov	dpl,r0
      00410D 8B 83            [24]  656 	mov	dph,r3
      00410F 8C F0            [24]  657 	mov	b,r4
      004111 12 5B BA         [24]  658 	lcall	__gptrget
      004114 FC               [12]  659 	mov	r4,a
      004115 7B 00            [12]  660 	mov	r3,#0x00
      004117 C0 05            [24]  661 	push	ar5
      004119 C0 06            [24]  662 	push	ar6
      00411B C0 07            [24]  663 	push	ar7
      00411D 74 01            [12]  664 	mov	a,#0x01
      00411F 29               [12]  665 	add	a, r1
      004120 F8               [12]  666 	mov	r0,a
      004121 E4               [12]  667 	clr	a
      004122 3A               [12]  668 	addc	a, r2
      004123 FF               [12]  669 	mov	r7,a
      004124 C3               [12]  670 	clr	c
      004125 E8               [12]  671 	mov	a,r0
      004126 95 39            [12]  672 	subb	a,_calculate_checksum_sloc0_1_0
      004128 EF               [12]  673 	mov	a,r7
      004129 95 3A            [12]  674 	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
      00412B D0 07            [24]  675 	pop	ar7
      00412D D0 06            [24]  676 	pop	ar6
      00412F D0 05            [24]  677 	pop	ar5
      004131 50 1B            [24]  678 	jnc	00109$
      004133 09               [12]  679 	inc	r1
      004134 B9 00 01         [24]  680 	cjne	r1,#0x00,00137$
      004137 0A               [12]  681 	inc	r2
      004138                        682 00137$:
      004138 E9               [12]  683 	mov	a,r1
      004139 2D               [12]  684 	add	a, r5
      00413A F9               [12]  685 	mov	r1,a
      00413B EA               [12]  686 	mov	a,r2
      00413C 3E               [12]  687 	addc	a, r6
      00413D F8               [12]  688 	mov	r0,a
      00413E 8F 02            [24]  689 	mov	ar2,r7
      004140 89 82            [24]  690 	mov	dpl,r1
      004142 88 83            [24]  691 	mov	dph,r0
      004144 8A F0            [24]  692 	mov	b,r2
      004146 12 5B BA         [24]  693 	lcall	__gptrget
      004149 F9               [12]  694 	mov	r1,a
      00414A 7A 00            [12]  695 	mov	r2,#0x00
      00414C 80 04            [24]  696 	sjmp	00110$
      00414E                        697 00109$:
      00414E 79 00            [12]  698 	mov	r1,#0x00
      004150 7A 00            [12]  699 	mov	r2,#0x00
      004152                        700 00110$:
      004152 C0 05            [24]  701 	push	ar5
      004154 C0 06            [24]  702 	push	ar6
      004156 C0 07            [24]  703 	push	ar7
      004158 E9               [12]  704 	mov	a,r1
      004159 2B               [12]  705 	add	a, r3
      00415A FB               [12]  706 	mov	r3,a
      00415B EA               [12]  707 	mov	a,r2
      00415C 3C               [12]  708 	addc	a, r4
      00415D FC               [12]  709 	mov	r4,a
                                    710 ;	tcp.c:18: sum += word;
      00415E 90 03 AC         [24]  711 	mov	dptr,#_calculate_checksum_sum_10000_117
      004161 E0               [24]  712 	movx	a,@dptr
      004162 F8               [12]  713 	mov	r0,a
      004163 A3               [24]  714 	inc	dptr
      004164 E0               [24]  715 	movx	a,@dptr
      004165 F9               [12]  716 	mov	r1,a
      004166 A3               [24]  717 	inc	dptr
      004167 E0               [24]  718 	movx	a,@dptr
      004168 FA               [12]  719 	mov	r2,a
      004169 A3               [24]  720 	inc	dptr
      00416A E0               [24]  721 	movx	a,@dptr
      00416B FF               [12]  722 	mov	r7,a
      00416C 7E 00            [12]  723 	mov	r6,#0x00
      00416E 7D 00            [12]  724 	mov	r5,#0x00
      004170 90 03 AC         [24]  725 	mov	dptr,#_calculate_checksum_sum_10000_117
      004173 EB               [12]  726 	mov	a,r3
      004174 28               [12]  727 	add	a, r0
      004175 F0               [24]  728 	movx	@dptr,a
      004176 EC               [12]  729 	mov	a,r4
      004177 39               [12]  730 	addc	a, r1
      004178 A3               [24]  731 	inc	dptr
      004179 F0               [24]  732 	movx	@dptr,a
      00417A EE               [12]  733 	mov	a,r6
      00417B 3A               [12]  734 	addc	a, r2
      00417C A3               [24]  735 	inc	dptr
      00417D F0               [24]  736 	movx	@dptr,a
      00417E ED               [12]  737 	mov	a,r5
      00417F 3F               [12]  738 	addc	a, r7
      004180 A3               [24]  739 	inc	dptr
      004181 F0               [24]  740 	movx	@dptr,a
                                    741 ;	tcp.c:21: if (sum > 0xFFFF) {
      004182 90 03 AC         [24]  742 	mov	dptr,#_calculate_checksum_sum_10000_117
      004185 E0               [24]  743 	movx	a,@dptr
      004186 F5 3B            [12]  744 	mov	_calculate_checksum_sloc1_1_0,a
      004188 A3               [24]  745 	inc	dptr
      004189 E0               [24]  746 	movx	a,@dptr
      00418A F5 3C            [12]  747 	mov	(_calculate_checksum_sloc1_1_0 + 1),a
      00418C A3               [24]  748 	inc	dptr
      00418D E0               [24]  749 	movx	a,@dptr
      00418E F5 3D            [12]  750 	mov	(_calculate_checksum_sloc1_1_0 + 2),a
      004190 A3               [24]  751 	inc	dptr
      004191 E0               [24]  752 	movx	a,@dptr
      004192 F5 3E            [12]  753 	mov	(_calculate_checksum_sloc1_1_0 + 3),a
      004194 C3               [12]  754 	clr	c
      004195 74 FF            [12]  755 	mov	a,#0xff
      004197 95 3B            [12]  756 	subb	a,_calculate_checksum_sloc1_1_0
      004199 74 FF            [12]  757 	mov	a,#0xff
      00419B 95 3C            [12]  758 	subb	a,(_calculate_checksum_sloc1_1_0 + 1)
      00419D E4               [12]  759 	clr	a
      00419E 95 3D            [12]  760 	subb	a,(_calculate_checksum_sloc1_1_0 + 2)
      0041A0 E4               [12]  761 	clr	a
      0041A1 95 3E            [12]  762 	subb	a,(_calculate_checksum_sloc1_1_0 + 3)
      0041A3 D0 07            [24]  763 	pop	ar7
      0041A5 D0 06            [24]  764 	pop	ar6
      0041A7 D0 05            [24]  765 	pop	ar5
      0041A9 50 2A            [24]  766 	jnc	00106$
                                    767 ;	tcp.c:22: sum = (sum & 0xFFFF) + (sum >> 16);
      0041AB 85 3B 3F         [24]  768 	mov	_calculate_checksum_sloc2_1_0,_calculate_checksum_sloc1_1_0
      0041AE 85 3C 40         [24]  769 	mov	(_calculate_checksum_sloc2_1_0 + 1),(_calculate_checksum_sloc1_1_0 + 1)
      0041B1 75 41 00         [24]  770 	mov	(_calculate_checksum_sloc2_1_0 + 2),#0x00
      0041B4 75 42 00         [24]  771 	mov	(_calculate_checksum_sloc2_1_0 + 3),#0x00
      0041B7 A8 3D            [24]  772 	mov	r0,(_calculate_checksum_sloc1_1_0 + 2)
      0041B9 AA 3E            [24]  773 	mov	r2,(_calculate_checksum_sloc1_1_0 + 3)
      0041BB 7B 00            [12]  774 	mov	r3,#0x00
      0041BD 7C 00            [12]  775 	mov	r4,#0x00
      0041BF 90 03 AC         [24]  776 	mov	dptr,#_calculate_checksum_sum_10000_117
      0041C2 E8               [12]  777 	mov	a,r0
      0041C3 25 3F            [12]  778 	add	a, _calculate_checksum_sloc2_1_0
      0041C5 F0               [24]  779 	movx	@dptr,a
      0041C6 EA               [12]  780 	mov	a,r2
      0041C7 35 40            [12]  781 	addc	a, (_calculate_checksum_sloc2_1_0 + 1)
      0041C9 A3               [24]  782 	inc	dptr
      0041CA F0               [24]  783 	movx	@dptr,a
      0041CB EB               [12]  784 	mov	a,r3
      0041CC 35 41            [12]  785 	addc	a, (_calculate_checksum_sloc2_1_0 + 2)
      0041CE A3               [24]  786 	inc	dptr
      0041CF F0               [24]  787 	movx	@dptr,a
      0041D0 EC               [12]  788 	mov	a,r4
      0041D1 35 42            [12]  789 	addc	a, (_calculate_checksum_sloc2_1_0 + 3)
      0041D3 A3               [24]  790 	inc	dptr
      0041D4 F0               [24]  791 	movx	@dptr,a
      0041D5                        792 00106$:
                                    793 ;	tcp.c:16: for (uint16_t i = 0; i < length; i += 2) {
      0041D5 90 03 B0         [24]  794 	mov	dptr,#_calculate_checksum_i_20000_118
      0041D8 E0               [24]  795 	movx	a,@dptr
      0041D9 FB               [12]  796 	mov	r3,a
      0041DA A3               [24]  797 	inc	dptr
      0041DB E0               [24]  798 	movx	a,@dptr
      0041DC FC               [12]  799 	mov	r4,a
      0041DD 74 02            [12]  800 	mov	a,#0x02
      0041DF 2B               [12]  801 	add	a, r3
      0041E0 FB               [12]  802 	mov	r3,a
      0041E1 E4               [12]  803 	clr	a
      0041E2 3C               [12]  804 	addc	a, r4
      0041E3 FC               [12]  805 	mov	r4,a
      0041E4 90 03 B0         [24]  806 	mov	dptr,#_calculate_checksum_i_20000_118
      0041E7 EB               [12]  807 	mov	a,r3
      0041E8 F0               [24]  808 	movx	@dptr,a
      0041E9 EC               [12]  809 	mov	a,r4
      0041EA A3               [24]  810 	inc	dptr
      0041EB F0               [24]  811 	movx	@dptr,a
      0041EC 02 40 EF         [24]  812 	ljmp	00105$
      0041EF                        813 00103$:
                                    814 ;	tcp.c:27: sum = (sum & 0xFFFF) + (sum >> 16);
      0041EF 90 03 AC         [24]  815 	mov	dptr,#_calculate_checksum_sum_10000_117
      0041F2 E0               [24]  816 	movx	a,@dptr
      0041F3 FC               [12]  817 	mov	r4,a
      0041F4 A3               [24]  818 	inc	dptr
      0041F5 E0               [24]  819 	movx	a,@dptr
      0041F6 FD               [12]  820 	mov	r5,a
      0041F7 A3               [24]  821 	inc	dptr
      0041F8 E0               [24]  822 	movx	a,@dptr
      0041F9 FE               [12]  823 	mov	r6,a
      0041FA A3               [24]  824 	inc	dptr
      0041FB E0               [24]  825 	movx	a,@dptr
      0041FC FF               [12]  826 	mov	r7,a
      0041FD 8C 00            [24]  827 	mov	ar0,r4
      0041FF 8D 01            [24]  828 	mov	ar1,r5
      004201 7A 00            [12]  829 	mov	r2,#0x00
      004203 7B 00            [12]  830 	mov	r3,#0x00
      004205 8E 04            [24]  831 	mov	ar4,r6
      004207 8F 05            [24]  832 	mov	ar5,r7
      004209 7E 00            [12]  833 	mov	r6,#0x00
      00420B 7F 00            [12]  834 	mov	r7,#0x00
      00420D 90 03 AC         [24]  835 	mov	dptr,#_calculate_checksum_sum_10000_117
      004210 EC               [12]  836 	mov	a,r4
      004211 28               [12]  837 	add	a, r0
      004212 F0               [24]  838 	movx	@dptr,a
      004213 ED               [12]  839 	mov	a,r5
      004214 39               [12]  840 	addc	a, r1
      004215 A3               [24]  841 	inc	dptr
      004216 F0               [24]  842 	movx	@dptr,a
      004217 EE               [12]  843 	mov	a,r6
      004218 3A               [12]  844 	addc	a, r2
      004219 A3               [24]  845 	inc	dptr
      00421A F0               [24]  846 	movx	@dptr,a
      00421B EF               [12]  847 	mov	a,r7
      00421C 3B               [12]  848 	addc	a, r3
      00421D A3               [24]  849 	inc	dptr
      00421E F0               [24]  850 	movx	@dptr,a
                                    851 ;	tcp.c:30: return ~sum;
      00421F 90 03 AC         [24]  852 	mov	dptr,#_calculate_checksum_sum_10000_117
      004222 E0               [24]  853 	movx	a,@dptr
      004223 FC               [12]  854 	mov	r4,a
      004224 A3               [24]  855 	inc	dptr
      004225 E0               [24]  856 	movx	a,@dptr
      004226 FD               [12]  857 	mov	r5,a
      004227 A3               [24]  858 	inc	dptr
      004228 E0               [24]  859 	movx	a,@dptr
      004229 FE               [12]  860 	mov	r6,a
      00422A A3               [24]  861 	inc	dptr
      00422B E0               [24]  862 	movx	a,@dptr
      00422C FF               [12]  863 	mov	r7,a
      00422D EC               [12]  864 	mov	a,r4
      00422E F4               [12]  865 	cpl	a
      00422F FC               [12]  866 	mov	r4,a
      004230 ED               [12]  867 	mov	a,r5
      004231 F4               [12]  868 	cpl	a
      004232 FD               [12]  869 	mov	r5,a
      004233 EE               [12]  870 	mov	a,r6
      004234 F4               [12]  871 	cpl	a
      004235 EF               [12]  872 	mov	a,r7
      004236 F4               [12]  873 	cpl	a
      004237 8C 82            [24]  874 	mov	dpl, r4
      004239 8D 83            [24]  875 	mov	dph, r5
                                    876 ;	tcp.c:31: }
      00423B 22               [24]  877 	ret
                                    878 ;------------------------------------------------------------
                                    879 ;Allocation info for local variables in function 'process_tcp_packet'
                                    880 ;------------------------------------------------------------
                                    881 ;sloc0                     Allocated with name '_process_tcp_packet_sloc0_1_0'
                                    882 ;packet_size               Allocated with name '_process_tcp_packet_PARM_2'
                                    883 ;response_size             Allocated with name '_process_tcp_packet_PARM_3'
                                    884 ;packet                    Allocated with name '_process_tcp_packet_packet_10000_121'
                                    885 ;response                  Allocated with name '_process_tcp_packet_response_10000_122'
                                    886 ;data_start                Allocated with name '_process_tcp_packet_data_start_10001_123'
                                    887 ;ethernet_header           Allocated with name '_process_tcp_packet_ethernet_header_10001_123'
                                    888 ;response_ethernet_header  Allocated with name '_process_tcp_packet_response_ethernet_header_10001_123'
                                    889 ;ip_header                 Allocated with name '_process_tcp_packet_ip_header_10002_124'
                                    890 ;response_ip_header        Allocated with name '_process_tcp_packet_response_ip_header_10002_124'
                                    891 ;tcp_header                Allocated with name '_process_tcp_packet_tcp_header_10003_125'
                                    892 ;response_tcp_header       Allocated with name '_process_tcp_packet_response_tcp_header_10003_125'
                                    893 ;SYN_SEQ3                  Allocated with name '_process_tcp_packet_SYN_SEQ3_10004_126'
                                    894 ;SYN_SEQ2                  Allocated with name '_process_tcp_packet_SYN_SEQ2_10004_126'
                                    895 ;SYN_SEQ1                  Allocated with name '_process_tcp_packet_SYN_SEQ1_10004_126'
                                    896 ;SYN_SEQ0                  Allocated with name '_process_tcp_packet_SYN_SEQ0_10004_126'
                                    897 ;tcp_length                Allocated with name '_process_tcp_packet_tcp_length_10005_127'
                                    898 ;ip_total_length           Allocated with name '_process_tcp_packet_ip_total_length_10005_127'
                                    899 ;ip_checksum               Allocated with name '_process_tcp_packet_ip_checksum_10006_128'
                                    900 ;tcp_checksum              Allocated with name '_process_tcp_packet_tcp_checksum_10007_129'
                                    901 ;tcp_options               Allocated with name '_process_tcp_packet_tcp_options_10008_130'
                                    902 ;------------------------------------------------------------
                                    903 ;	tcp.c:32: uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size) {
                                    904 ;	-----------------------------------------
                                    905 ;	 function process_tcp_packet
                                    906 ;	-----------------------------------------
      00423C                        907 _process_tcp_packet:
      00423C AF F0            [24]  908 	mov	r7,b
      00423E AE 83            [24]  909 	mov	r6,dph
      004240 E5 82            [12]  910 	mov	a,dpl
      004242 90 03 B7         [24]  911 	mov	dptr,#_process_tcp_packet_packet_10000_121
      004245 F0               [24]  912 	movx	@dptr,a
      004246 EE               [12]  913 	mov	a,r6
      004247 A3               [24]  914 	inc	dptr
      004248 F0               [24]  915 	movx	@dptr,a
      004249 EF               [12]  916 	mov	a,r7
      00424A A3               [24]  917 	inc	dptr
      00424B F0               [24]  918 	movx	@dptr,a
                                    919 ;	tcp.c:34: memset(response, 0, MAX_PACKET_SIZE + 1);      // Clear the response buffer
      00424C 90 09 BD         [24]  920 	mov	dptr,#_memset_PARM_2
      00424F E4               [12]  921 	clr	a
      004250 F0               [24]  922 	movx	@dptr,a
      004251 90 09 BE         [24]  923 	mov	dptr,#_memset_PARM_3
      004254 74 DD            [12]  924 	mov	a,#0xdd
      004256 F0               [24]  925 	movx	@dptr,a
      004257 74 05            [12]  926 	mov	a,#0x05
      004259 A3               [24]  927 	inc	dptr
      00425A F0               [24]  928 	movx	@dptr,a
      00425B 90 03 BA         [24]  929 	mov	dptr,#_process_tcp_packet_response_10000_122
      00425E 75 F0 00         [24]  930 	mov	b, #0x00
      004261 12 4D 5A         [24]  931 	lcall	_memset
                                    932 ;	tcp.c:36: response[0] = 0x0E;  // Ensure the first byte of the response is always 0x0E
      004264 90 03 BA         [24]  933 	mov	dptr,#_process_tcp_packet_response_10000_122
      004267 74 0E            [12]  934 	mov	a,#0x0e
      004269 F0               [24]  935 	movx	@dptr,a
                                    936 ;	tcp.c:39: uint8_t *data_start = response + 1;
                                    937 ;	tcp.c:42: uint8_t *ethernet_header = packet;
      00426A 90 03 B7         [24]  938 	mov	dptr,#_process_tcp_packet_packet_10000_121
      00426D E0               [24]  939 	movx	a,@dptr
      00426E FD               [12]  940 	mov	r5,a
      00426F A3               [24]  941 	inc	dptr
      004270 E0               [24]  942 	movx	a,@dptr
      004271 FE               [12]  943 	mov	r6,a
      004272 A3               [24]  944 	inc	dptr
      004273 E0               [24]  945 	movx	a,@dptr
      004274 FF               [12]  946 	mov	r7,a
                                    947 ;	tcp.c:44: memcpy(response_ethernet_header, ethernet_header, ETHERNET_HEADER_SIZE);
      004275 8D 02            [24]  948 	mov	ar2,r5
      004277 8E 03            [24]  949 	mov	ar3,r6
      004279 8F 04            [24]  950 	mov	ar4,r7
      00427B 90 09 B5         [24]  951 	mov	dptr,#___memcpy_PARM_2
      00427E EA               [12]  952 	mov	a,r2
      00427F F0               [24]  953 	movx	@dptr,a
      004280 EB               [12]  954 	mov	a,r3
      004281 A3               [24]  955 	inc	dptr
      004282 F0               [24]  956 	movx	@dptr,a
      004283 EC               [12]  957 	mov	a,r4
      004284 A3               [24]  958 	inc	dptr
      004285 F0               [24]  959 	movx	@dptr,a
      004286 90 09 B8         [24]  960 	mov	dptr,#___memcpy_PARM_3
      004289 74 0E            [12]  961 	mov	a,#0x0e
      00428B F0               [24]  962 	movx	@dptr,a
      00428C E4               [12]  963 	clr	a
      00428D A3               [24]  964 	inc	dptr
      00428E F0               [24]  965 	movx	@dptr,a
      00428F 90 03 BB         [24]  966 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0001)
      004292 F5 F0            [12]  967 	mov	b,a
      004294 C0 07            [24]  968 	push	ar7
      004296 C0 06            [24]  969 	push	ar6
      004298 C0 05            [24]  970 	push	ar5
      00429A 12 4C E6         [24]  971 	lcall	___memcpy
      00429D D0 05            [24]  972 	pop	ar5
      00429F D0 06            [24]  973 	pop	ar6
      0042A1 D0 07            [24]  974 	pop	ar7
                                    975 ;	tcp.c:47: memcpy(response_ethernet_header, ethernet_header + 6, 6);  // Destination MAC
      0042A3 74 06            [12]  976 	mov	a,#0x06
      0042A5 2D               [12]  977 	add	a, r5
      0042A6 FA               [12]  978 	mov	r2,a
      0042A7 E4               [12]  979 	clr	a
      0042A8 3E               [12]  980 	addc	a, r6
      0042A9 FB               [12]  981 	mov	r3,a
      0042AA 8F 04            [24]  982 	mov	ar4,r7
      0042AC 90 09 B5         [24]  983 	mov	dptr,#___memcpy_PARM_2
      0042AF EA               [12]  984 	mov	a,r2
      0042B0 F0               [24]  985 	movx	@dptr,a
      0042B1 EB               [12]  986 	mov	a,r3
      0042B2 A3               [24]  987 	inc	dptr
      0042B3 F0               [24]  988 	movx	@dptr,a
      0042B4 EC               [12]  989 	mov	a,r4
      0042B5 A3               [24]  990 	inc	dptr
      0042B6 F0               [24]  991 	movx	@dptr,a
      0042B7 90 09 B8         [24]  992 	mov	dptr,#___memcpy_PARM_3
      0042BA 74 06            [12]  993 	mov	a,#0x06
      0042BC F0               [24]  994 	movx	@dptr,a
      0042BD E4               [12]  995 	clr	a
      0042BE A3               [24]  996 	inc	dptr
      0042BF F0               [24]  997 	movx	@dptr,a
      0042C0 90 03 BB         [24]  998 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0001)
      0042C3 F5 F0            [12]  999 	mov	b,a
      0042C5 C0 07            [24] 1000 	push	ar7
      0042C7 C0 06            [24] 1001 	push	ar6
      0042C9 C0 05            [24] 1002 	push	ar5
      0042CB 12 4C E6         [24] 1003 	lcall	___memcpy
      0042CE D0 05            [24] 1004 	pop	ar5
      0042D0 D0 06            [24] 1005 	pop	ar6
      0042D2 D0 07            [24] 1006 	pop	ar7
                                   1007 ;	tcp.c:48: memcpy(response_ethernet_header + 6, ethernet_header, 6);  // Source MAC
      0042D4 8D 02            [24] 1008 	mov	ar2,r5
      0042D6 8E 03            [24] 1009 	mov	ar3,r6
      0042D8 8F 04            [24] 1010 	mov	ar4,r7
      0042DA 90 09 B5         [24] 1011 	mov	dptr,#___memcpy_PARM_2
      0042DD EA               [12] 1012 	mov	a,r2
      0042DE F0               [24] 1013 	movx	@dptr,a
      0042DF EB               [12] 1014 	mov	a,r3
      0042E0 A3               [24] 1015 	inc	dptr
      0042E1 F0               [24] 1016 	movx	@dptr,a
      0042E2 EC               [12] 1017 	mov	a,r4
      0042E3 A3               [24] 1018 	inc	dptr
      0042E4 F0               [24] 1019 	movx	@dptr,a
      0042E5 90 09 B8         [24] 1020 	mov	dptr,#___memcpy_PARM_3
      0042E8 74 06            [12] 1021 	mov	a,#0x06
      0042EA F0               [24] 1022 	movx	@dptr,a
      0042EB E4               [12] 1023 	clr	a
      0042EC A3               [24] 1024 	inc	dptr
      0042ED F0               [24] 1025 	movx	@dptr,a
      0042EE 90 03 C1         [24] 1026 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0007)
      0042F1 F5 F0            [12] 1027 	mov	b,a
      0042F3 C0 07            [24] 1028 	push	ar7
      0042F5 C0 06            [24] 1029 	push	ar6
      0042F7 C0 05            [24] 1030 	push	ar5
      0042F9 12 4C E6         [24] 1031 	lcall	___memcpy
      0042FC D0 05            [24] 1032 	pop	ar5
      0042FE D0 06            [24] 1033 	pop	ar6
      004300 D0 07            [24] 1034 	pop	ar7
                                   1035 ;	tcp.c:51: uint8_t *ip_header = packet + ETHERNET_HEADER_SIZE;
      004302 74 0E            [12] 1036 	mov	a,#0x0e
      004304 2D               [12] 1037 	add	a, r5
      004305 FA               [12] 1038 	mov	r2,a
      004306 E4               [12] 1039 	clr	a
      004307 3E               [12] 1040 	addc	a, r6
      004308 FB               [12] 1041 	mov	r3,a
      004309 8F 04            [24] 1042 	mov	ar4,r7
                                   1043 ;	tcp.c:52: uint8_t *response_ip_header = data_start + ETHERNET_HEADER_SIZE;
                                   1044 ;	tcp.c:55: memcpy(response_ip_header, ip_header, IP_HEADER_SIZE);
      00430B 90 09 B5         [24] 1045 	mov	dptr,#___memcpy_PARM_2
      00430E EA               [12] 1046 	mov	a,r2
      00430F F0               [24] 1047 	movx	@dptr,a
      004310 EB               [12] 1048 	mov	a,r3
      004311 A3               [24] 1049 	inc	dptr
      004312 F0               [24] 1050 	movx	@dptr,a
      004313 EC               [12] 1051 	mov	a,r4
      004314 A3               [24] 1052 	inc	dptr
      004315 F0               [24] 1053 	movx	@dptr,a
      004316 90 09 B8         [24] 1054 	mov	dptr,#___memcpy_PARM_3
      004319 74 14            [12] 1055 	mov	a,#0x14
      00431B F0               [24] 1056 	movx	@dptr,a
      00431C E4               [12] 1057 	clr	a
      00431D A3               [24] 1058 	inc	dptr
      00431E F0               [24] 1059 	movx	@dptr,a
      00431F 90 03 C9         [24] 1060 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
      004322 F5 F0            [12] 1061 	mov	b,a
      004324 C0 07            [24] 1062 	push	ar7
      004326 C0 06            [24] 1063 	push	ar6
      004328 C0 05            [24] 1064 	push	ar5
      00432A 12 4C E6         [24] 1065 	lcall	___memcpy
      00432D D0 05            [24] 1066 	pop	ar5
      00432F D0 06            [24] 1067 	pop	ar6
      004331 D0 07            [24] 1068 	pop	ar7
                                   1069 ;	tcp.c:56: response_ip_header[12] = ip_header[16];  // Swap Source IP
      004333 74 1E            [12] 1070 	mov	a,#0x1e
      004335 2D               [12] 1071 	add	a, r5
      004336 FA               [12] 1072 	mov	r2,a
      004337 E4               [12] 1073 	clr	a
      004338 3E               [12] 1074 	addc	a, r6
      004339 FB               [12] 1075 	mov	r3,a
      00433A 8F 04            [24] 1076 	mov	ar4,r7
      00433C 8A 82            [24] 1077 	mov	dpl,r2
      00433E 8B 83            [24] 1078 	mov	dph,r3
      004340 8C F0            [24] 1079 	mov	b,r4
      004342 12 5B BA         [24] 1080 	lcall	__gptrget
      004345 FA               [12] 1081 	mov	r2,a
      004346 90 03 D5         [24] 1082 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001b)
      004349 75 F0 00         [24] 1083 	mov	b,#0x00
      00434C EA               [12] 1084 	mov	a,r2
      00434D 12 4D 82         [24] 1085 	lcall	__gptrput
                                   1086 ;	tcp.c:57: response_ip_header[13] = ip_header[17];
      004350 74 1F            [12] 1087 	mov	a,#0x1f
      004352 2D               [12] 1088 	add	a, r5
      004353 FA               [12] 1089 	mov	r2,a
      004354 E4               [12] 1090 	clr	a
      004355 3E               [12] 1091 	addc	a, r6
      004356 FB               [12] 1092 	mov	r3,a
      004357 8F 04            [24] 1093 	mov	ar4,r7
      004359 8A 82            [24] 1094 	mov	dpl,r2
      00435B 8B 83            [24] 1095 	mov	dph,r3
      00435D 8C F0            [24] 1096 	mov	b,r4
      00435F 12 5B BA         [24] 1097 	lcall	__gptrget
      004362 FA               [12] 1098 	mov	r2,a
      004363 90 03 D6         [24] 1099 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001c)
      004366 75 F0 00         [24] 1100 	mov	b,#0x00
      004369 EA               [12] 1101 	mov	a,r2
      00436A 12 4D 82         [24] 1102 	lcall	__gptrput
                                   1103 ;	tcp.c:58: response_ip_header[14] = ip_header[18];
      00436D 74 20            [12] 1104 	mov	a,#0x20
      00436F 2D               [12] 1105 	add	a, r5
      004370 FA               [12] 1106 	mov	r2,a
      004371 E4               [12] 1107 	clr	a
      004372 3E               [12] 1108 	addc	a, r6
      004373 FB               [12] 1109 	mov	r3,a
      004374 8F 04            [24] 1110 	mov	ar4,r7
      004376 8A 82            [24] 1111 	mov	dpl,r2
      004378 8B 83            [24] 1112 	mov	dph,r3
      00437A 8C F0            [24] 1113 	mov	b,r4
      00437C 12 5B BA         [24] 1114 	lcall	__gptrget
      00437F FA               [12] 1115 	mov	r2,a
      004380 90 03 D7         [24] 1116 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001d)
      004383 75 F0 00         [24] 1117 	mov	b,#0x00
      004386 EA               [12] 1118 	mov	a,r2
      004387 12 4D 82         [24] 1119 	lcall	__gptrput
                                   1120 ;	tcp.c:59: response_ip_header[15] = ip_header[19];
      00438A 74 21            [12] 1121 	mov	a,#0x21
      00438C 2D               [12] 1122 	add	a, r5
      00438D FA               [12] 1123 	mov	r2,a
      00438E E4               [12] 1124 	clr	a
      00438F 3E               [12] 1125 	addc	a, r6
      004390 FB               [12] 1126 	mov	r3,a
      004391 8F 04            [24] 1127 	mov	ar4,r7
      004393 8A 82            [24] 1128 	mov	dpl,r2
      004395 8B 83            [24] 1129 	mov	dph,r3
      004397 8C F0            [24] 1130 	mov	b,r4
      004399 12 5B BA         [24] 1131 	lcall	__gptrget
      00439C FA               [12] 1132 	mov	r2,a
      00439D 90 03 D8         [24] 1133 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001e)
      0043A0 75 F0 00         [24] 1134 	mov	b,#0x00
      0043A3 EA               [12] 1135 	mov	a,r2
      0043A4 12 4D 82         [24] 1136 	lcall	__gptrput
                                   1137 ;	tcp.c:60: response_ip_header[16] = ip_header[12];  // Swap Destination IP
      0043A7 74 1A            [12] 1138 	mov	a,#0x1a
      0043A9 2D               [12] 1139 	add	a, r5
      0043AA FA               [12] 1140 	mov	r2,a
      0043AB E4               [12] 1141 	clr	a
      0043AC 3E               [12] 1142 	addc	a, r6
      0043AD FB               [12] 1143 	mov	r3,a
      0043AE 8F 04            [24] 1144 	mov	ar4,r7
      0043B0 8A 82            [24] 1145 	mov	dpl,r2
      0043B2 8B 83            [24] 1146 	mov	dph,r3
      0043B4 8C F0            [24] 1147 	mov	b,r4
      0043B6 12 5B BA         [24] 1148 	lcall	__gptrget
      0043B9 FA               [12] 1149 	mov	r2,a
      0043BA 90 03 D9         [24] 1150 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001f)
      0043BD 75 F0 00         [24] 1151 	mov	b,#0x00
      0043C0 EA               [12] 1152 	mov	a,r2
      0043C1 12 4D 82         [24] 1153 	lcall	__gptrput
                                   1154 ;	tcp.c:61: response_ip_header[17] = ip_header[13];
      0043C4 74 1B            [12] 1155 	mov	a,#0x1b
      0043C6 2D               [12] 1156 	add	a, r5
      0043C7 FA               [12] 1157 	mov	r2,a
      0043C8 E4               [12] 1158 	clr	a
      0043C9 3E               [12] 1159 	addc	a, r6
      0043CA FB               [12] 1160 	mov	r3,a
      0043CB 8F 04            [24] 1161 	mov	ar4,r7
      0043CD 8A 82            [24] 1162 	mov	dpl,r2
      0043CF 8B 83            [24] 1163 	mov	dph,r3
      0043D1 8C F0            [24] 1164 	mov	b,r4
      0043D3 12 5B BA         [24] 1165 	lcall	__gptrget
      0043D6 FA               [12] 1166 	mov	r2,a
      0043D7 90 03 DA         [24] 1167 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0020)
      0043DA 75 F0 00         [24] 1168 	mov	b,#0x00
      0043DD EA               [12] 1169 	mov	a,r2
      0043DE 12 4D 82         [24] 1170 	lcall	__gptrput
                                   1171 ;	tcp.c:62: response_ip_header[18] = ip_header[14];
      0043E1 74 1C            [12] 1172 	mov	a,#0x1c
      0043E3 2D               [12] 1173 	add	a, r5
      0043E4 FA               [12] 1174 	mov	r2,a
      0043E5 E4               [12] 1175 	clr	a
      0043E6 3E               [12] 1176 	addc	a, r6
      0043E7 FB               [12] 1177 	mov	r3,a
      0043E8 8F 04            [24] 1178 	mov	ar4,r7
      0043EA 8A 82            [24] 1179 	mov	dpl,r2
      0043EC 8B 83            [24] 1180 	mov	dph,r3
      0043EE 8C F0            [24] 1181 	mov	b,r4
      0043F0 12 5B BA         [24] 1182 	lcall	__gptrget
      0043F3 FA               [12] 1183 	mov	r2,a
      0043F4 90 03 DB         [24] 1184 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0021)
      0043F7 75 F0 00         [24] 1185 	mov	b,#0x00
      0043FA EA               [12] 1186 	mov	a,r2
      0043FB 12 4D 82         [24] 1187 	lcall	__gptrput
                                   1188 ;	tcp.c:63: response_ip_header[19] = ip_header[15];
      0043FE 74 1D            [12] 1189 	mov	a,#0x1d
      004400 2D               [12] 1190 	add	a, r5
      004401 FA               [12] 1191 	mov	r2,a
      004402 E4               [12] 1192 	clr	a
      004403 3E               [12] 1193 	addc	a, r6
      004404 FB               [12] 1194 	mov	r3,a
      004405 8F 04            [24] 1195 	mov	ar4,r7
      004407 8A 82            [24] 1196 	mov	dpl,r2
      004409 8B 83            [24] 1197 	mov	dph,r3
      00440B 8C F0            [24] 1198 	mov	b,r4
      00440D 12 5B BA         [24] 1199 	lcall	__gptrget
      004410 FA               [12] 1200 	mov	r2,a
      004411 90 03 DC         [24] 1201 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0022)
      004414 75 F0 00         [24] 1202 	mov	b,#0x00
      004417 EA               [12] 1203 	mov	a,r2
      004418 12 4D 82         [24] 1204 	lcall	__gptrput
                                   1205 ;	tcp.c:64: response_ip_header[10] = 0;              // Clear checksum
      00441B 90 03 D3         [24] 1206 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0019)
      00441E E4               [12] 1207 	clr	a
      00441F 12 4D 82         [24] 1208 	lcall	__gptrput
                                   1209 ;	tcp.c:65: response_ip_header[11] = 0;
      004422 90 03 D4         [24] 1210 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001a)
      004425 F5 F0            [12] 1211 	mov	b,a
      004427 12 4D 82         [24] 1212 	lcall	__gptrput
                                   1213 ;	tcp.c:68: uint8_t *tcp_header = packet + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
      00442A 74 22            [12] 1214 	mov	a,#0x22
      00442C 2D               [12] 1215 	add	a, r5
      00442D F5 14            [12] 1216 	mov	_process_tcp_packet_sloc0_1_0,a
      00442F E4               [12] 1217 	clr	a
      004430 3E               [12] 1218 	addc	a, r6
      004431 F5 15            [12] 1219 	mov	(_process_tcp_packet_sloc0_1_0 + 1),a
      004433 8F 16            [24] 1220 	mov	(_process_tcp_packet_sloc0_1_0 + 2),r7
                                   1221 ;	tcp.c:69: uint8_t *response_tcp_header = data_start + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
                                   1222 ;	tcp.c:72: memcpy(response_tcp_header, tcp_header, TCP_HEADER_SIZE);
      004435 A8 14            [24] 1223 	mov	r0,_process_tcp_packet_sloc0_1_0
      004437 A9 15            [24] 1224 	mov	r1,(_process_tcp_packet_sloc0_1_0 + 1)
      004439 AC 16            [24] 1225 	mov	r4,(_process_tcp_packet_sloc0_1_0 + 2)
      00443B 90 09 B5         [24] 1226 	mov	dptr,#___memcpy_PARM_2
      00443E E8               [12] 1227 	mov	a,r0
      00443F F0               [24] 1228 	movx	@dptr,a
      004440 E9               [12] 1229 	mov	a,r1
      004441 A3               [24] 1230 	inc	dptr
      004442 F0               [24] 1231 	movx	@dptr,a
      004443 EC               [12] 1232 	mov	a,r4
      004444 A3               [24] 1233 	inc	dptr
      004445 F0               [24] 1234 	movx	@dptr,a
      004446 90 09 B8         [24] 1235 	mov	dptr,#___memcpy_PARM_3
      004449 74 14            [12] 1236 	mov	a,#0x14
      00444B F0               [24] 1237 	movx	@dptr,a
      00444C E4               [12] 1238 	clr	a
      00444D A3               [24] 1239 	inc	dptr
      00444E F0               [24] 1240 	movx	@dptr,a
      00444F 90 03 DD         [24] 1241 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0023)
      004452 F5 F0            [12] 1242 	mov	b,a
      004454 C0 07            [24] 1243 	push	ar7
      004456 C0 06            [24] 1244 	push	ar6
      004458 C0 05            [24] 1245 	push	ar5
      00445A 12 4C E6         [24] 1246 	lcall	___memcpy
      00445D D0 05            [24] 1247 	pop	ar5
      00445F D0 06            [24] 1248 	pop	ar6
      004461 D0 07            [24] 1249 	pop	ar7
                                   1250 ;	tcp.c:73: response_tcp_header[0] = tcp_header[2];  // Swap Source Port
      004463 74 24            [12] 1251 	mov	a,#0x24
      004465 2D               [12] 1252 	add	a, r5
      004466 FA               [12] 1253 	mov	r2,a
      004467 E4               [12] 1254 	clr	a
      004468 3E               [12] 1255 	addc	a, r6
      004469 FB               [12] 1256 	mov	r3,a
      00446A 8F 04            [24] 1257 	mov	ar4,r7
      00446C 8A 82            [24] 1258 	mov	dpl,r2
      00446E 8B 83            [24] 1259 	mov	dph,r3
      004470 8C F0            [24] 1260 	mov	b,r4
      004472 12 5B BA         [24] 1261 	lcall	__gptrget
      004475 FA               [12] 1262 	mov	r2,a
      004476 90 03 DD         [24] 1263 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0023)
      004479 75 F0 00         [24] 1264 	mov	b,#0x00
      00447C EA               [12] 1265 	mov	a,r2
      00447D 12 4D 82         [24] 1266 	lcall	__gptrput
                                   1267 ;	tcp.c:74: response_tcp_header[1] = tcp_header[3];
      004480 74 25            [12] 1268 	mov	a,#0x25
      004482 2D               [12] 1269 	add	a, r5
      004483 FA               [12] 1270 	mov	r2,a
      004484 E4               [12] 1271 	clr	a
      004485 3E               [12] 1272 	addc	a, r6
      004486 FB               [12] 1273 	mov	r3,a
      004487 8F 04            [24] 1274 	mov	ar4,r7
      004489 8A 82            [24] 1275 	mov	dpl,r2
      00448B 8B 83            [24] 1276 	mov	dph,r3
      00448D 8C F0            [24] 1277 	mov	b,r4
      00448F 12 5B BA         [24] 1278 	lcall	__gptrget
      004492 FA               [12] 1279 	mov	r2,a
      004493 90 03 DE         [24] 1280 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0024)
      004496 75 F0 00         [24] 1281 	mov	b,#0x00
      004499 EA               [12] 1282 	mov	a,r2
      00449A 12 4D 82         [24] 1283 	lcall	__gptrput
                                   1284 ;	tcp.c:75: response_tcp_header[2] = tcp_header[0];  // Swap Destination Port
      00449D 85 14 82         [24] 1285 	mov	dpl,_process_tcp_packet_sloc0_1_0
      0044A0 85 15 83         [24] 1286 	mov	dph,(_process_tcp_packet_sloc0_1_0 + 1)
      0044A3 85 16 F0         [24] 1287 	mov	b,(_process_tcp_packet_sloc0_1_0 + 2)
      0044A6 12 5B BA         [24] 1288 	lcall	__gptrget
      0044A9 FC               [12] 1289 	mov	r4,a
      0044AA 90 03 DF         [24] 1290 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0025)
      0044AD 75 F0 00         [24] 1291 	mov	b,#0x00
      0044B0 EC               [12] 1292 	mov	a,r4
      0044B1 12 4D 82         [24] 1293 	lcall	__gptrput
                                   1294 ;	tcp.c:76: response_tcp_header[3] = tcp_header[1];
      0044B4 74 23            [12] 1295 	mov	a,#0x23
      0044B6 2D               [12] 1296 	add	a, r5
      0044B7 FA               [12] 1297 	mov	r2,a
      0044B8 E4               [12] 1298 	clr	a
      0044B9 3E               [12] 1299 	addc	a, r6
      0044BA FB               [12] 1300 	mov	r3,a
      0044BB 8F 04            [24] 1301 	mov	ar4,r7
      0044BD 8A 82            [24] 1302 	mov	dpl,r2
      0044BF 8B 83            [24] 1303 	mov	dph,r3
      0044C1 8C F0            [24] 1304 	mov	b,r4
      0044C3 12 5B BA         [24] 1305 	lcall	__gptrget
      0044C6 FA               [12] 1306 	mov	r2,a
      0044C7 90 03 E0         [24] 1307 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0026)
      0044CA 75 F0 00         [24] 1308 	mov	b,#0x00
      0044CD EA               [12] 1309 	mov	a,r2
      0044CE 12 4D 82         [24] 1310 	lcall	__gptrput
                                   1311 ;	tcp.c:78: response_tcp_header[4] = 0;
      0044D1 90 03 E1         [24] 1312 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0027)
      0044D4 E4               [12] 1313 	clr	a
      0044D5 12 4D 82         [24] 1314 	lcall	__gptrput
                                   1315 ;	tcp.c:79: response_tcp_header[5] = 0;
      0044D8 90 03 E2         [24] 1316 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0028)
      0044DB F5 F0            [12] 1317 	mov	b,a
      0044DD 12 4D 82         [24] 1318 	lcall	__gptrput
                                   1319 ;	tcp.c:80: response_tcp_header[6] = 0;
      0044E0 90 03 E3         [24] 1320 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0029)
      0044E3 F5 F0            [12] 1321 	mov	b,a
      0044E5 12 4D 82         [24] 1322 	lcall	__gptrput
                                   1323 ;	tcp.c:81: response_tcp_header[7] = 0;
      0044E8 90 03 E4         [24] 1324 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002a)
      0044EB F5 F0            [12] 1325 	mov	b,a
      0044ED 12 4D 82         [24] 1326 	lcall	__gptrput
                                   1327 ;	tcp.c:83: uint8_t SYN_SEQ3 = tcp_header[4];
      0044F0 74 26            [12] 1328 	mov	a,#0x26
      0044F2 2D               [12] 1329 	add	a, r5
      0044F3 FA               [12] 1330 	mov	r2,a
      0044F4 E4               [12] 1331 	clr	a
      0044F5 3E               [12] 1332 	addc	a, r6
      0044F6 FB               [12] 1333 	mov	r3,a
      0044F7 8F 04            [24] 1334 	mov	ar4,r7
      0044F9 8A 82            [24] 1335 	mov	dpl,r2
      0044FB 8B 83            [24] 1336 	mov	dph,r3
      0044FD 8C F0            [24] 1337 	mov	b,r4
      0044FF 12 5B BA         [24] 1338 	lcall	__gptrget
      004502 FA               [12] 1339 	mov	r2,a
                                   1340 ;	tcp.c:84: uint8_t SYN_SEQ2 = tcp_header[5];
      004503 74 27            [12] 1341 	mov	a,#0x27
      004505 2D               [12] 1342 	add	a, r5
      004506 F9               [12] 1343 	mov	r1,a
      004507 E4               [12] 1344 	clr	a
      004508 3E               [12] 1345 	addc	a, r6
      004509 FB               [12] 1346 	mov	r3,a
      00450A 8F 04            [24] 1347 	mov	ar4,r7
      00450C 89 82            [24] 1348 	mov	dpl,r1
      00450E 8B 83            [24] 1349 	mov	dph,r3
      004510 8C F0            [24] 1350 	mov	b,r4
      004512 12 5B BA         [24] 1351 	lcall	__gptrget
      004515 F9               [12] 1352 	mov	r1,a
                                   1353 ;	tcp.c:85: uint8_t SYN_SEQ1 = tcp_header[6];
      004516 74 28            [12] 1354 	mov	a,#0x28
      004518 2D               [12] 1355 	add	a, r5
      004519 F8               [12] 1356 	mov	r0,a
      00451A E4               [12] 1357 	clr	a
      00451B 3E               [12] 1358 	addc	a, r6
      00451C FB               [12] 1359 	mov	r3,a
      00451D 8F 04            [24] 1360 	mov	ar4,r7
      00451F 88 82            [24] 1361 	mov	dpl,r0
      004521 8B 83            [24] 1362 	mov	dph,r3
      004523 8C F0            [24] 1363 	mov	b,r4
      004525 12 5B BA         [24] 1364 	lcall	__gptrget
      004528 F8               [12] 1365 	mov	r0,a
                                   1366 ;	tcp.c:86: uint8_t SYN_SEQ0 = tcp_header[7];
      004529 74 29            [12] 1367 	mov	a,#0x29
      00452B 2D               [12] 1368 	add	a, r5
      00452C FD               [12] 1369 	mov	r5,a
      00452D E4               [12] 1370 	clr	a
      00452E 3E               [12] 1371 	addc	a, r6
      00452F FE               [12] 1372 	mov	r6,a
      004530 8D 82            [24] 1373 	mov	dpl,r5
      004532 8E 83            [24] 1374 	mov	dph,r6
      004534 8F F0            [24] 1375 	mov	b,r7
      004536 12 5B BA         [24] 1376 	lcall	__gptrget
      004539 FD               [12] 1377 	mov	r5,a
                                   1378 ;	tcp.c:88: response_tcp_header[8] = SYN_SEQ3;
      00453A 90 03 E5         [24] 1379 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002b)
      00453D 75 F0 00         [24] 1380 	mov	b,#0x00
      004540 EA               [12] 1381 	mov	a,r2
      004541 12 4D 82         [24] 1382 	lcall	__gptrput
                                   1383 ;	tcp.c:89: response_tcp_header[9] = SYN_SEQ2;
      004544 90 03 E6         [24] 1384 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002c)
      004547 E9               [12] 1385 	mov	a,r1
      004548 12 4D 82         [24] 1386 	lcall	__gptrput
                                   1387 ;	tcp.c:90: response_tcp_header[10] = SYN_SEQ1;
      00454B 90 03 E7         [24] 1388 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002d)
      00454E E8               [12] 1389 	mov	a,r0
      00454F 12 4D 82         [24] 1390 	lcall	__gptrput
                                   1391 ;	tcp.c:91: response_tcp_header[11] = SYN_SEQ0 + 1;
      004552 0D               [12] 1392 	inc	r5
      004553 90 03 E8         [24] 1393 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002e)
      004556 ED               [12] 1394 	mov	a,r5
      004557 12 4D 82         [24] 1395 	lcall	__gptrput
                                   1396 ;	tcp.c:97: response_tcp_header[12] = 0x50;  // SYN (0x02) + ACK (0x10)
      00455A 90 03 E9         [24] 1397 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002f)
      00455D 74 50            [12] 1398 	mov	a,#0x50
      00455F 12 4D 82         [24] 1399 	lcall	__gptrput
                                   1400 ;	tcp.c:99: response_tcp_header[13] = 0x12;  // SYN (0x02) + ACK (0x10)
      004562 90 03 EA         [24] 1401 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0030)
      004565 74 12            [12] 1402 	mov	a,#0x12
      004567 12 4D 82         [24] 1403 	lcall	__gptrput
                                   1404 ;	tcp.c:102: response_tcp_header[18] = 0;
      00456A 90 03 EF         [24] 1405 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0035)
      00456D E4               [12] 1406 	clr	a
      00456E 12 4D 82         [24] 1407 	lcall	__gptrput
                                   1408 ;	tcp.c:103: response_tcp_header[19] = 0;
      004571 90 03 F0         [24] 1409 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0036)
      004574 F5 F0            [12] 1410 	mov	b,a
      004576 12 4D 82         [24] 1411 	lcall	__gptrput
                                   1412 ;	tcp.c:109: response_ip_header[2] = (ip_total_length >> 8) & 0xFF;
      004579 90 03 CB         [24] 1413 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0011)
      00457C F5 F0            [12] 1414 	mov	b,a
      00457E 12 4D 82         [24] 1415 	lcall	__gptrput
                                   1416 ;	tcp.c:110: response_ip_header[3] = ip_total_length & 0xFF;
      004581 90 03 CC         [24] 1417 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0012)
      004584 F5 F0            [12] 1418 	mov	b,a
      004586 74 28            [12] 1419 	mov	a,#0x28
      004588 12 4D 82         [24] 1420 	lcall	__gptrput
                                   1421 ;	tcp.c:111: uint16_t ip_checksum = calculate_checksum(response_ip_header, IP_HEADER_SIZE);
      00458B 90 03 A7         [24] 1422 	mov	dptr,#_calculate_checksum_PARM_2
      00458E 03               [12] 1423 	rr	a
      00458F F0               [24] 1424 	movx	@dptr,a
      004590 E4               [12] 1425 	clr	a
      004591 A3               [24] 1426 	inc	dptr
      004592 F0               [24] 1427 	movx	@dptr,a
      004593 90 03 C9         [24] 1428 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
      004596 F5 F0            [12] 1429 	mov	b,a
      004598 12 40 B9         [24] 1430 	lcall	_calculate_checksum
      00459B AE 82            [24] 1431 	mov	r6, dpl
      00459D AF 83            [24] 1432 	mov	r7, dph
                                   1433 ;	tcp.c:112: response_ip_header[10] = (ip_checksum >> 8) & 0xFF;
      00459F 8F 05            [24] 1434 	mov	ar5,r7
      0045A1 90 03 D3         [24] 1435 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0019)
      0045A4 75 F0 00         [24] 1436 	mov	b,#0x00
      0045A7 ED               [12] 1437 	mov	a,r5
      0045A8 12 4D 82         [24] 1438 	lcall	__gptrput
                                   1439 ;	tcp.c:113: response_ip_header[11] = ip_checksum & 0xFF;
      0045AB 90 03 D4         [24] 1440 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001a)
      0045AE EE               [12] 1441 	mov	a,r6
      0045AF 12 4D 82         [24] 1442 	lcall	__gptrput
                                   1443 ;	tcp.c:115: uint16_t tcp_checksum = calculate_checksum(data_start + ETHERNET_HEADER_SIZE, ip_total_length);
      0045B2 90 03 A7         [24] 1444 	mov	dptr,#_calculate_checksum_PARM_2
      0045B5 74 28            [12] 1445 	mov	a,#0x28
      0045B7 F0               [24] 1446 	movx	@dptr,a
      0045B8 E4               [12] 1447 	clr	a
      0045B9 A3               [24] 1448 	inc	dptr
      0045BA F0               [24] 1449 	movx	@dptr,a
      0045BB 90 03 C9         [24] 1450 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
      0045BE F5 F0            [12] 1451 	mov	b,a
      0045C0 12 40 B9         [24] 1452 	lcall	_calculate_checksum
      0045C3 AE 82            [24] 1453 	mov	r6, dpl
      0045C5 AF 83            [24] 1454 	mov	r7, dph
                                   1455 ;	tcp.c:116: response_tcp_header[16] = (tcp_checksum >> 8) & 0xFF;
      0045C7 8F 05            [24] 1456 	mov	ar5,r7
      0045C9 90 03 ED         [24] 1457 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0033)
      0045CC 75 F0 00         [24] 1458 	mov	b,#0x00
      0045CF ED               [12] 1459 	mov	a,r5
      0045D0 12 4D 82         [24] 1460 	lcall	__gptrput
                                   1461 ;	tcp.c:117: response_tcp_header[17] = tcp_checksum & 0xFF;
      0045D3 90 03 EE         [24] 1462 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0034)
      0045D6 EE               [12] 1463 	mov	a,r6
      0045D7 12 4D 82         [24] 1464 	lcall	__gptrput
                                   1465 ;	tcp.c:120: uint8_t *tcp_options = response_tcp_header + 20; // After the TCP header (flags, sequence, etc.)
                                   1466 ;	tcp.c:126: tcp_options[0] = 0x02;  // Option Type for MSS (0x02)
      0045DA 90 03 F1         [24] 1467 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0037)
      0045DD 74 02            [12] 1468 	mov	a,#0x02
      0045DF 12 4D 82         [24] 1469 	lcall	__gptrput
                                   1470 ;	tcp.c:127: tcp_options[1] = 0x04;  // Length of the MSS option (4 bytes)
      0045E2 90 03 F2         [24] 1471 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0038)
      0045E5 23               [12] 1472 	rl	a
      0045E6 12 4D 82         [24] 1473 	lcall	__gptrput
                                   1474 ;	tcp.c:128: tcp_options[2] = 0x05;  // MSS value (0x0500 = 1280 in decimal)
      0045E9 90 03 F3         [24] 1475 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0039)
      0045EC 04               [12] 1476 	inc	a
      0045ED 12 4D 82         [24] 1477 	lcall	__gptrput
                                   1478 ;	tcp.c:129: tcp_options[3] = 0x00;
      0045F0 90 03 F4         [24] 1479 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x003a)
      0045F3 E4               [12] 1480 	clr	a
      0045F4 12 4D 82         [24] 1481 	lcall	__gptrput
                                   1482 ;	tcp.c:132: *response_size = 1 + ETHERNET_HEADER_SIZE + ip_total_length + 4; // Adding 4 for the MSS option size
      0045F7 90 03 B4         [24] 1483 	mov	dptr,#_process_tcp_packet_PARM_3
      0045FA E0               [24] 1484 	movx	a,@dptr
      0045FB FD               [12] 1485 	mov	r5,a
      0045FC A3               [24] 1486 	inc	dptr
      0045FD E0               [24] 1487 	movx	a,@dptr
      0045FE FE               [12] 1488 	mov	r6,a
      0045FF A3               [24] 1489 	inc	dptr
      004600 E0               [24] 1490 	movx	a,@dptr
      004601 FF               [12] 1491 	mov	r7,a
      004602 8D 82            [24] 1492 	mov	dpl,r5
      004604 8E 83            [24] 1493 	mov	dph,r6
      004606 8F F0            [24] 1494 	mov	b,r7
      004608 74 3B            [12] 1495 	mov	a,#0x3b
      00460A 12 4D 82         [24] 1496 	lcall	__gptrput
      00460D A3               [24] 1497 	inc	dptr
      00460E E4               [12] 1498 	clr	a
      00460F 12 4D 82         [24] 1499 	lcall	__gptrput
                                   1500 ;	tcp.c:135: return response;
      004612 90 03 BA         [24] 1501 	mov	dptr,#_process_tcp_packet_response_10000_122
      004615 F5 F0            [12] 1502 	mov	b,a
                                   1503 ;	tcp.c:136: }
      004617 22               [24] 1504 	ret
                                   1505 ;------------------------------------------------------------
                                   1506 ;Allocation info for local variables in function 'print_hexdump'
                                   1507 ;------------------------------------------------------------
                                   1508 ;size                      Allocated with name '_print_hexdump_PARM_2'
                                   1509 ;data                      Allocated with name '_print_hexdump_data_10000_131'
                                   1510 ;i                         Allocated with name '_print_hexdump_i_20000_133'
                                   1511 ;------------------------------------------------------------
                                   1512 ;	tcp.c:140: void print_hexdump(const uint8_t *data, uint16_t size) {
                                   1513 ;	-----------------------------------------
                                   1514 ;	 function print_hexdump
                                   1515 ;	-----------------------------------------
      004618                       1516 _print_hexdump:
      004618 AF F0            [24] 1517 	mov	r7,b
      00461A AE 83            [24] 1518 	mov	r6,dph
      00461C E5 82            [12] 1519 	mov	a,dpl
      00461E 90 09 99         [24] 1520 	mov	dptr,#_print_hexdump_data_10000_131
      004621 F0               [24] 1521 	movx	@dptr,a
      004622 EE               [12] 1522 	mov	a,r6
      004623 A3               [24] 1523 	inc	dptr
      004624 F0               [24] 1524 	movx	@dptr,a
      004625 EF               [12] 1525 	mov	a,r7
      004626 A3               [24] 1526 	inc	dptr
      004627 F0               [24] 1527 	movx	@dptr,a
                                   1528 ;	tcp.c:141: printf("\nHexdump (Size: %d):\n", size);
      004628 90 09 97         [24] 1529 	mov	dptr,#_print_hexdump_PARM_2
      00462B E0               [24] 1530 	movx	a,@dptr
      00462C FE               [12] 1531 	mov	r6,a
      00462D A3               [24] 1532 	inc	dptr
      00462E E0               [24] 1533 	movx	a,@dptr
      00462F FF               [12] 1534 	mov	r7,a
      004630 C0 07            [24] 1535 	push	ar7
      004632 C0 06            [24] 1536 	push	ar6
      004634 C0 06            [24] 1537 	push	ar6
      004636 C0 07            [24] 1538 	push	ar7
      004638 74 5D            [12] 1539 	mov	a,#___str_0
      00463A C0 E0            [24] 1540 	push	acc
      00463C 74 65            [12] 1541 	mov	a,#(___str_0 >> 8)
      00463E C0 E0            [24] 1542 	push	acc
      004640 74 80            [12] 1543 	mov	a,#0x80
      004642 C0 E0            [24] 1544 	push	acc
      004644 12 51 98         [24] 1545 	lcall	_printf
      004647 E5 81            [12] 1546 	mov	a,sp
      004649 24 FB            [12] 1547 	add	a,#0xfb
      00464B F5 81            [12] 1548 	mov	sp,a
      00464D D0 06            [24] 1549 	pop	ar6
      00464F D0 07            [24] 1550 	pop	ar7
                                   1551 ;	tcp.c:142: for (uint16_t i = 0; i < size; i++) {
      004651 90 09 99         [24] 1552 	mov	dptr,#_print_hexdump_data_10000_131
      004654 E0               [24] 1553 	movx	a,@dptr
      004655 FB               [12] 1554 	mov	r3,a
      004656 A3               [24] 1555 	inc	dptr
      004657 E0               [24] 1556 	movx	a,@dptr
      004658 FC               [12] 1557 	mov	r4,a
      004659 A3               [24] 1558 	inc	dptr
      00465A E0               [24] 1559 	movx	a,@dptr
      00465B FD               [12] 1560 	mov	r5,a
      00465C 79 00            [12] 1561 	mov	r1,#0x00
      00465E 7A 00            [12] 1562 	mov	r2,#0x00
      004660                       1563 00107$:
      004660 C3               [12] 1564 	clr	c
      004661 E9               [12] 1565 	mov	a,r1
      004662 9E               [12] 1566 	subb	a,r6
      004663 EA               [12] 1567 	mov	a,r2
      004664 9F               [12] 1568 	subb	a,r7
      004665 40 03            [24] 1569 	jc	00136$
      004667 02 47 08         [24] 1570 	ljmp	00103$
      00466A                       1571 00136$:
                                   1572 ;	tcp.c:143: printf("%02X ", data[i]); // Print each byte in hexadecimal format
      00466A C0 06            [24] 1573 	push	ar6
      00466C C0 07            [24] 1574 	push	ar7
      00466E E9               [12] 1575 	mov	a,r1
      00466F 2B               [12] 1576 	add	a, r3
      004670 F8               [12] 1577 	mov	r0,a
      004671 EA               [12] 1578 	mov	a,r2
      004672 3C               [12] 1579 	addc	a, r4
      004673 FE               [12] 1580 	mov	r6,a
      004674 8D 07            [24] 1581 	mov	ar7,r5
      004676 88 82            [24] 1582 	mov	dpl,r0
      004678 8E 83            [24] 1583 	mov	dph,r6
      00467A 8F F0            [24] 1584 	mov	b,r7
      00467C 12 5B BA         [24] 1585 	lcall	__gptrget
      00467F F8               [12] 1586 	mov	r0,a
      004680 7F 00            [12] 1587 	mov	r7,#0x00
      004682 C0 07            [24] 1588 	push	ar7
      004684 C0 06            [24] 1589 	push	ar6
      004686 C0 05            [24] 1590 	push	ar5
      004688 C0 04            [24] 1591 	push	ar4
      00468A C0 03            [24] 1592 	push	ar3
      00468C C0 02            [24] 1593 	push	ar2
      00468E C0 01            [24] 1594 	push	ar1
      004690 C0 00            [24] 1595 	push	ar0
      004692 C0 07            [24] 1596 	push	ar7
      004694 74 73            [12] 1597 	mov	a,#___str_1
      004696 C0 E0            [24] 1598 	push	acc
      004698 74 65            [12] 1599 	mov	a,#(___str_1 >> 8)
      00469A C0 E0            [24] 1600 	push	acc
      00469C 74 80            [12] 1601 	mov	a,#0x80
      00469E C0 E0            [24] 1602 	push	acc
      0046A0 12 51 98         [24] 1603 	lcall	_printf
      0046A3 E5 81            [12] 1604 	mov	a,sp
      0046A5 24 FB            [12] 1605 	add	a,#0xfb
      0046A7 F5 81            [12] 1606 	mov	sp,a
      0046A9 D0 01            [24] 1607 	pop	ar1
      0046AB D0 02            [24] 1608 	pop	ar2
      0046AD D0 03            [24] 1609 	pop	ar3
      0046AF D0 04            [24] 1610 	pop	ar4
      0046B1 D0 05            [24] 1611 	pop	ar5
      0046B3 D0 06            [24] 1612 	pop	ar6
      0046B5 D0 07            [24] 1613 	pop	ar7
                                   1614 ;	tcp.c:144: if ((i + 1) % 16 == 0) {
      0046B7 89 06            [24] 1615 	mov	ar6,r1
      0046B9 8A 07            [24] 1616 	mov	ar7,r2
      0046BB 0E               [12] 1617 	inc	r6
      0046BC BE 00 01         [24] 1618 	cjne	r6,#0x00,00137$
      0046BF 0F               [12] 1619 	inc	r7
      0046C0                       1620 00137$:
      0046C0 EE               [12] 1621 	mov	a,r6
      0046C1 54 0F            [12] 1622 	anl	a,#0x0f
      0046C3 60 06            [24] 1623 	jz	00139$
      0046C5 D0 07            [24] 1624 	pop	ar7
      0046C7 D0 06            [24] 1625 	pop	ar6
      0046C9 80 35            [24] 1626 	sjmp	00108$
      0046CB                       1627 00139$:
      0046CB D0 07            [24] 1628 	pop	ar7
      0046CD D0 06            [24] 1629 	pop	ar6
                                   1630 ;	tcp.c:145: printf("\n"); // Newline after every 16 bytes for readability
      0046CF C0 07            [24] 1631 	push	ar7
      0046D1 C0 06            [24] 1632 	push	ar6
      0046D3 C0 05            [24] 1633 	push	ar5
      0046D5 C0 04            [24] 1634 	push	ar4
      0046D7 C0 03            [24] 1635 	push	ar3
      0046D9 C0 02            [24] 1636 	push	ar2
      0046DB C0 01            [24] 1637 	push	ar1
      0046DD 74 79            [12] 1638 	mov	a,#___str_2
      0046DF C0 E0            [24] 1639 	push	acc
      0046E1 74 65            [12] 1640 	mov	a,#(___str_2 >> 8)
      0046E3 C0 E0            [24] 1641 	push	acc
      0046E5 74 80            [12] 1642 	mov	a,#0x80
      0046E7 C0 E0            [24] 1643 	push	acc
      0046E9 12 51 98         [24] 1644 	lcall	_printf
      0046EC 15 81            [12] 1645 	dec	sp
      0046EE 15 81            [12] 1646 	dec	sp
      0046F0 15 81            [12] 1647 	dec	sp
      0046F2 D0 01            [24] 1648 	pop	ar1
      0046F4 D0 02            [24] 1649 	pop	ar2
      0046F6 D0 03            [24] 1650 	pop	ar3
      0046F8 D0 04            [24] 1651 	pop	ar4
      0046FA D0 05            [24] 1652 	pop	ar5
      0046FC D0 06            [24] 1653 	pop	ar6
      0046FE D0 07            [24] 1654 	pop	ar7
      004700                       1655 00108$:
                                   1656 ;	tcp.c:142: for (uint16_t i = 0; i < size; i++) {
      004700 09               [12] 1657 	inc	r1
      004701 B9 00 01         [24] 1658 	cjne	r1,#0x00,00140$
      004704 0A               [12] 1659 	inc	r2
      004705                       1660 00140$:
      004705 02 46 60         [24] 1661 	ljmp	00107$
      004708                       1662 00103$:
                                   1663 ;	tcp.c:148: if (size % 16 != 0) {
      004708 EE               [12] 1664 	mov	a,r6
      004709 54 0F            [12] 1665 	anl	a,#0x0f
      00470B 60 15            [24] 1666 	jz	00109$
                                   1667 ;	tcp.c:149: printf("\n"); // Final newline if not already printed
      00470D 74 79            [12] 1668 	mov	a,#___str_2
      00470F C0 E0            [24] 1669 	push	acc
      004711 74 65            [12] 1670 	mov	a,#(___str_2 >> 8)
      004713 C0 E0            [24] 1671 	push	acc
      004715 74 80            [12] 1672 	mov	a,#0x80
      004717 C0 E0            [24] 1673 	push	acc
      004719 12 51 98         [24] 1674 	lcall	_printf
      00471C 15 81            [12] 1675 	dec	sp
      00471E 15 81            [12] 1676 	dec	sp
      004720 15 81            [12] 1677 	dec	sp
      004722                       1678 00109$:
                                   1679 ;	tcp.c:151: }
      004722 22               [24] 1680 	ret
                                   1681 ;------------------------------------------------------------
                                   1682 ;Allocation info for local variables in function 'process_packet_from_buffer'
                                   1683 ;------------------------------------------------------------
                                   1684 ;sloc0                     Allocated with name '_process_packet_from_buffer_sloc0_1_0'
                                   1685 ;start_address             Allocated with name '_process_packet_from_buffer_start_address_10000_137'
                                   1686 ;next_packet_start         Allocated with name '_process_packet_from_buffer_next_packet_start_10001_140'
                                   1687 ;next_start_address        Allocated with name '_process_packet_from_buffer_next_start_address_10001_140'
                                   1688 ;packet_size               Allocated with name '_process_packet_from_buffer_packet_size_10001_140'
                                   1689 ;response_size             Allocated with name '_process_packet_from_buffer_response_size_10001_140'
                                   1690 ;packet_data               Allocated with name '_process_packet_from_buffer_packet_data_10002_143'
                                   1691 ;response                  Allocated with name '_process_packet_from_buffer_response_10003_146'
                                   1692 ;------------------------------------------------------------
                                   1693 ;	tcp.c:154: void process_packet_from_buffer(uint16_t start_address) {
                                   1694 ;	-----------------------------------------
                                   1695 ;	 function process_packet_from_buffer
                                   1696 ;	-----------------------------------------
      004723                       1697 _process_packet_from_buffer:
      004723 AF 83            [24] 1698 	mov	r7,dph
      004725 E5 82            [12] 1699 	mov	a,dpl
      004727 90 09 9C         [24] 1700 	mov	dptr,#_process_packet_from_buffer_start_address_10000_137
      00472A F0               [24] 1701 	movx	@dptr,a
      00472B EF               [12] 1702 	mov	a,r7
      00472C A3               [24] 1703 	inc	dptr
      00472D F0               [24] 1704 	movx	@dptr,a
                                   1705 ;	tcp.c:156: if (start_address > 0x1FFF) {
      00472E 90 09 9C         [24] 1706 	mov	dptr,#_process_packet_from_buffer_start_address_10000_137
      004731 E0               [24] 1707 	movx	a,@dptr
      004732 FE               [12] 1708 	mov	r6,a
      004733 A3               [24] 1709 	inc	dptr
      004734 E0               [24] 1710 	movx	a,@dptr
      004735 FF               [12] 1711 	mov	r7,a
      004736 8E 04            [24] 1712 	mov	ar4,r6
      004738 8F 05            [24] 1713 	mov	ar5,r7
      00473A C3               [12] 1714 	clr	c
      00473B 74 FF            [12] 1715 	mov	a,#0xff
      00473D 9C               [12] 1716 	subb	a,r4
      00473E 74 1F            [12] 1717 	mov	a,#0x1f
      004740 9D               [12] 1718 	subb	a,r5
      004741 50 1A            [24] 1719 	jnc	00102$
                                   1720 ;	tcp.c:157: printf("\n\rInvalid start address: %04X\n\r", start_address);
      004743 C0 06            [24] 1721 	push	ar6
      004745 C0 07            [24] 1722 	push	ar7
      004747 74 7B            [12] 1723 	mov	a,#___str_3
      004749 C0 E0            [24] 1724 	push	acc
      00474B 74 65            [12] 1725 	mov	a,#(___str_3 >> 8)
      00474D C0 E0            [24] 1726 	push	acc
      00474F 74 80            [12] 1727 	mov	a,#0x80
      004751 C0 E0            [24] 1728 	push	acc
      004753 12 51 98         [24] 1729 	lcall	_printf
      004756 E5 81            [12] 1730 	mov	a,sp
      004758 24 FB            [12] 1731 	add	a,#0xfb
      00475A F5 81            [12] 1732 	mov	sp,a
                                   1733 ;	tcp.c:158: return;
      00475C 22               [24] 1734 	ret
      00475D                       1735 00102$:
                                   1736 ;	tcp.c:167: if (spi_buffer_read(2, start_address, next_packet_start) != 2) {
      00475D 90 03 95         [24] 1737 	mov	dptr,#_spi_buffer_read_PARM_2
      004760 EE               [12] 1738 	mov	a,r6
      004761 F0               [24] 1739 	movx	@dptr,a
      004762 EF               [12] 1740 	mov	a,r7
      004763 A3               [24] 1741 	inc	dptr
      004764 F0               [24] 1742 	movx	@dptr,a
      004765 90 03 97         [24] 1743 	mov	dptr,#_spi_buffer_read_PARM_3
      004768 74 9E            [12] 1744 	mov	a,#_process_packet_from_buffer_next_packet_start_10001_140
      00476A F0               [24] 1745 	movx	@dptr,a
      00476B 74 09            [12] 1746 	mov	a,#(_process_packet_from_buffer_next_packet_start_10001_140 >> 8)
      00476D A3               [24] 1747 	inc	dptr
      00476E F0               [24] 1748 	movx	@dptr,a
      00476F E4               [12] 1749 	clr	a
      004770 A3               [24] 1750 	inc	dptr
      004771 F0               [24] 1751 	movx	@dptr,a
      004772 90 00 02         [24] 1752 	mov	dptr,#0x0002
      004775 C0 07            [24] 1753 	push	ar7
      004777 C0 06            [24] 1754 	push	ar6
      004779 C0 05            [24] 1755 	push	ar5
      00477B C0 04            [24] 1756 	push	ar4
      00477D 12 3D 34         [24] 1757 	lcall	_spi_buffer_read
      004780 AA 82            [24] 1758 	mov	r2, dpl
      004782 AB 83            [24] 1759 	mov	r3, dph
      004784 D0 04            [24] 1760 	pop	ar4
      004786 D0 05            [24] 1761 	pop	ar5
      004788 D0 06            [24] 1762 	pop	ar6
      00478A D0 07            [24] 1763 	pop	ar7
      00478C BA 02 05         [24] 1764 	cjne	r2,#0x02,00153$
      00478F BB 00 02         [24] 1765 	cjne	r3,#0x00,00153$
      004792 80 16            [24] 1766 	sjmp	00104$
      004794                       1767 00153$:
                                   1768 ;	tcp.c:168: printf("\n\rFailed to read packet start address bytes\n\r");
      004794 74 9B            [12] 1769 	mov	a,#___str_4
      004796 C0 E0            [24] 1770 	push	acc
      004798 74 65            [12] 1771 	mov	a,#(___str_4 >> 8)
      00479A C0 E0            [24] 1772 	push	acc
      00479C 74 80            [12] 1773 	mov	a,#0x80
      00479E C0 E0            [24] 1774 	push	acc
      0047A0 12 51 98         [24] 1775 	lcall	_printf
      0047A3 15 81            [12] 1776 	dec	sp
      0047A5 15 81            [12] 1777 	dec	sp
      0047A7 15 81            [12] 1778 	dec	sp
                                   1779 ;	tcp.c:169: return;
      0047A9 22               [24] 1780 	ret
      0047AA                       1781 00104$:
                                   1782 ;	tcp.c:173: next_start_address = ((uint16_t)next_packet_start[1] << 8) | next_packet_start[0];
      0047AA 90 09 9F         [24] 1783 	mov	dptr,#(_process_packet_from_buffer_next_packet_start_10001_140 + 0x0001)
      0047AD E0               [24] 1784 	movx	a,@dptr
      0047AE FA               [12] 1785 	mov	r2,a
      0047AF 7B 00            [12] 1786 	mov	r3,#0x00
      0047B1 90 09 9E         [24] 1787 	mov	dptr,#_process_packet_from_buffer_next_packet_start_10001_140
      0047B4 E0               [24] 1788 	movx	a,@dptr
      0047B5 79 00            [12] 1789 	mov	r1,#0x00
      0047B7 42 03            [12] 1790 	orl	ar3,a
      0047B9 E9               [12] 1791 	mov	a,r1
      0047BA 42 02            [12] 1792 	orl	ar2,a
                                   1793 ;	tcp.c:176: if (next_start_address < start_address) {
      0047BC C3               [12] 1794 	clr	c
      0047BD EB               [12] 1795 	mov	a,r3
      0047BE 9E               [12] 1796 	subb	a,r6
      0047BF EA               [12] 1797 	mov	a,r2
      0047C0 9F               [12] 1798 	subb	a,r7
      0047C1 50 1A            [24] 1799 	jnc	00106$
                                   1800 ;	tcp.c:177: printf("\n\rInvalid next start address: 0x%04X\n\r", next_start_address);
      0047C3 C0 03            [24] 1801 	push	ar3
      0047C5 C0 02            [24] 1802 	push	ar2
      0047C7 74 C9            [12] 1803 	mov	a,#___str_5
      0047C9 C0 E0            [24] 1804 	push	acc
      0047CB 74 65            [12] 1805 	mov	a,#(___str_5 >> 8)
      0047CD C0 E0            [24] 1806 	push	acc
      0047CF 74 80            [12] 1807 	mov	a,#0x80
      0047D1 C0 E0            [24] 1808 	push	acc
      0047D3 12 51 98         [24] 1809 	lcall	_printf
      0047D6 E5 81            [12] 1810 	mov	a,sp
      0047D8 24 FB            [12] 1811 	add	a,#0xfb
      0047DA F5 81            [12] 1812 	mov	sp,a
                                   1813 ;	tcp.c:178: return;
      0047DC 22               [24] 1814 	ret
      0047DD                       1815 00106$:
                                   1816 ;	tcp.c:180: packet_size = next_start_address - (start_address+6);
      0047DD 74 06            [12] 1817 	mov	a,#0x06
      0047DF 2C               [12] 1818 	add	a, r4
      0047E0 FE               [12] 1819 	mov	r6,a
      0047E1 E4               [12] 1820 	clr	a
      0047E2 3D               [12] 1821 	addc	a, r5
      0047E3 FF               [12] 1822 	mov	r7,a
      0047E4 EB               [12] 1823 	mov	a,r3
      0047E5 C3               [12] 1824 	clr	c
      0047E6 9E               [12] 1825 	subb	a,r6
      0047E7 FE               [12] 1826 	mov	r6,a
      0047E8 EA               [12] 1827 	mov	a,r2
      0047E9 9F               [12] 1828 	subb	a,r7
      0047EA FF               [12] 1829 	mov	r7,a
                                   1830 ;	tcp.c:183: uint8_t *packet_data = (uint8_t *)malloc(packet_size);
      0047EB 8E 00            [24] 1831 	mov	ar0,r6
      0047ED 8F 01            [24] 1832 	mov	ar1,r7
      0047EF 88 82            [24] 1833 	mov	dpl, r0
      0047F1 89 83            [24] 1834 	mov	dph, r1
      0047F3 C0 07            [24] 1835 	push	ar7
      0047F5 C0 06            [24] 1836 	push	ar6
      0047F7 C0 05            [24] 1837 	push	ar5
      0047F9 C0 04            [24] 1838 	push	ar4
      0047FB C0 03            [24] 1839 	push	ar3
      0047FD C0 02            [24] 1840 	push	ar2
      0047FF 12 4E E2         [24] 1841 	lcall	_malloc
      004802 A8 82            [24] 1842 	mov	r0, dpl
      004804 A9 83            [24] 1843 	mov	r1, dph
      004806 D0 02            [24] 1844 	pop	ar2
      004808 D0 03            [24] 1845 	pop	ar3
      00480A D0 04            [24] 1846 	pop	ar4
      00480C D0 05            [24] 1847 	pop	ar5
      00480E D0 06            [24] 1848 	pop	ar6
      004810 D0 07            [24] 1849 	pop	ar7
      004812 88 17            [24] 1850 	mov	_process_packet_from_buffer_sloc0_1_0,r0
      004814 89 18            [24] 1851 	mov	(_process_packet_from_buffer_sloc0_1_0 + 1),r1
      004816 75 19 00         [24] 1852 	mov	(_process_packet_from_buffer_sloc0_1_0 + 2),#0x00
                                   1853 ;	tcp.c:184: if (packet_data == NULL) {
      004819 E5 17            [12] 1854 	mov	a,_process_packet_from_buffer_sloc0_1_0
      00481B 45 18            [12] 1855 	orl	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
      00481D 70 1A            [24] 1856 	jnz	00108$
                                   1857 ;	tcp.c:185: printf("\n\rMemory allocation failed for packet size: %d\n\r", packet_size);
      00481F C0 06            [24] 1858 	push	ar6
      004821 C0 07            [24] 1859 	push	ar7
      004823 74 F0            [12] 1860 	mov	a,#___str_6
      004825 C0 E0            [24] 1861 	push	acc
      004827 74 65            [12] 1862 	mov	a,#(___str_6 >> 8)
      004829 C0 E0            [24] 1863 	push	acc
      00482B 74 80            [12] 1864 	mov	a,#0x80
      00482D C0 E0            [24] 1865 	push	acc
      00482F 12 51 98         [24] 1866 	lcall	_printf
      004832 E5 81            [12] 1867 	mov	a,sp
      004834 24 FB            [12] 1868 	add	a,#0xfb
      004836 F5 81            [12] 1869 	mov	sp,a
                                   1870 ;	tcp.c:186: return;
      004838 22               [24] 1871 	ret
      004839                       1872 00108$:
                                   1873 ;	tcp.c:190: if (spi_buffer_read(packet_size, start_address+6, packet_data) != packet_size) {
      004839 8E 00            [24] 1874 	mov	ar0,r6
      00483B 8F 01            [24] 1875 	mov	ar1,r7
      00483D 74 06            [12] 1876 	mov	a,#0x06
      00483F 2C               [12] 1877 	add	a, r4
      004840 FC               [12] 1878 	mov	r4,a
      004841 E4               [12] 1879 	clr	a
      004842 3D               [12] 1880 	addc	a, r5
      004843 FD               [12] 1881 	mov	r5,a
      004844 90 03 95         [24] 1882 	mov	dptr,#_spi_buffer_read_PARM_2
      004847 EC               [12] 1883 	mov	a,r4
      004848 F0               [24] 1884 	movx	@dptr,a
      004849 ED               [12] 1885 	mov	a,r5
      00484A A3               [24] 1886 	inc	dptr
      00484B F0               [24] 1887 	movx	@dptr,a
      00484C 90 03 97         [24] 1888 	mov	dptr,#_spi_buffer_read_PARM_3
      00484F E5 17            [12] 1889 	mov	a,_process_packet_from_buffer_sloc0_1_0
      004851 F0               [24] 1890 	movx	@dptr,a
      004852 E5 18            [12] 1891 	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004854 A3               [24] 1892 	inc	dptr
      004855 F0               [24] 1893 	movx	@dptr,a
      004856 E5 19            [12] 1894 	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 2)
      004858 A3               [24] 1895 	inc	dptr
      004859 F0               [24] 1896 	movx	@dptr,a
      00485A 88 82            [24] 1897 	mov	dpl, r0
      00485C 89 83            [24] 1898 	mov	dph, r1
      00485E C0 07            [24] 1899 	push	ar7
      004860 C0 06            [24] 1900 	push	ar6
      004862 C0 03            [24] 1901 	push	ar3
      004864 C0 02            [24] 1902 	push	ar2
      004866 12 3D 34         [24] 1903 	lcall	_spi_buffer_read
      004869 AC 82            [24] 1904 	mov	r4, dpl
      00486B AD 83            [24] 1905 	mov	r5, dph
      00486D D0 02            [24] 1906 	pop	ar2
      00486F D0 03            [24] 1907 	pop	ar3
      004871 D0 06            [24] 1908 	pop	ar6
      004873 D0 07            [24] 1909 	pop	ar7
      004875 EC               [12] 1910 	mov	a,r4
      004876 B5 06 06         [24] 1911 	cjne	a,ar6,00156$
      004879 ED               [12] 1912 	mov	a,r5
      00487A B5 07 02         [24] 1913 	cjne	a,ar7,00156$
      00487D 80 24            [24] 1914 	sjmp	00110$
      00487F                       1915 00156$:
                                   1916 ;	tcp.c:191: printf("\n\rFailed to read packet data\n\r");
      00487F 74 21            [12] 1917 	mov	a,#___str_7
      004881 C0 E0            [24] 1918 	push	acc
      004883 74 66            [12] 1919 	mov	a,#(___str_7 >> 8)
      004885 C0 E0            [24] 1920 	push	acc
      004887 74 80            [12] 1921 	mov	a,#0x80
      004889 C0 E0            [24] 1922 	push	acc
      00488B 12 51 98         [24] 1923 	lcall	_printf
      00488E 15 81            [12] 1924 	dec	sp
      004890 15 81            [12] 1925 	dec	sp
      004892 15 81            [12] 1926 	dec	sp
                                   1927 ;	tcp.c:192: free(packet_data);
      004894 AC 17            [24] 1928 	mov	r4,_process_packet_from_buffer_sloc0_1_0
      004896 A9 18            [24] 1929 	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004898 7D 00            [12] 1930 	mov	r5,#0x00
      00489A 8C 82            [24] 1931 	mov	dpl, r4
      00489C 89 83            [24] 1932 	mov	dph, r1
      00489E 8D F0            [24] 1933 	mov	b, r5
                                   1934 ;	tcp.c:193: return;
      0048A0 02 4B 8F         [24] 1935 	ljmp	_free
      0048A3                       1936 00110$:
                                   1937 ;	tcp.c:197: uint8_t *response = process_tcp_packet(packet_data, packet_size, &response_size);
      0048A3 90 03 B2         [24] 1938 	mov	dptr,#_process_tcp_packet_PARM_2
      0048A6 EE               [12] 1939 	mov	a,r6
      0048A7 F0               [24] 1940 	movx	@dptr,a
      0048A8 EF               [12] 1941 	mov	a,r7
      0048A9 A3               [24] 1942 	inc	dptr
      0048AA F0               [24] 1943 	movx	@dptr,a
      0048AB 90 03 B4         [24] 1944 	mov	dptr,#_process_tcp_packet_PARM_3
      0048AE 74 A0            [12] 1945 	mov	a,#_process_packet_from_buffer_response_size_10001_140
      0048B0 F0               [24] 1946 	movx	@dptr,a
      0048B1 74 09            [12] 1947 	mov	a,#(_process_packet_from_buffer_response_size_10001_140 >> 8)
      0048B3 A3               [24] 1948 	inc	dptr
      0048B4 F0               [24] 1949 	movx	@dptr,a
      0048B5 E4               [12] 1950 	clr	a
      0048B6 A3               [24] 1951 	inc	dptr
      0048B7 F0               [24] 1952 	movx	@dptr,a
      0048B8 85 17 82         [24] 1953 	mov	dpl, _process_packet_from_buffer_sloc0_1_0
      0048BB 85 18 83         [24] 1954 	mov	dph, (_process_packet_from_buffer_sloc0_1_0 + 1)
      0048BE 85 19 F0         [24] 1955 	mov	b, (_process_packet_from_buffer_sloc0_1_0 + 2)
      0048C1 C0 07            [24] 1956 	push	ar7
      0048C3 C0 06            [24] 1957 	push	ar6
      0048C5 C0 03            [24] 1958 	push	ar3
      0048C7 C0 02            [24] 1959 	push	ar2
      0048C9 12 42 3C         [24] 1960 	lcall	_process_tcp_packet
      0048CC A9 82            [24] 1961 	mov	r1, dpl
      0048CE AC 83            [24] 1962 	mov	r4, dph
      0048D0 AD F0            [24] 1963 	mov	r5, b
      0048D2 D0 02            [24] 1964 	pop	ar2
      0048D4 D0 03            [24] 1965 	pop	ar3
      0048D6 D0 06            [24] 1966 	pop	ar6
      0048D8 D0 07            [24] 1967 	pop	ar7
                                   1968 ;	tcp.c:200: if (response != NULL) {
      0048DA E9               [12] 1969 	mov	a,r1
      0048DB 4C               [12] 1970 	orl	a,r4
      0048DC 70 03            [24] 1971 	jnz	00157$
      0048DE 02 49 97         [24] 1972 	ljmp	00112$
      0048E1                       1973 00157$:
                                   1974 ;	tcp.c:201: printf("\nProcessed response data:\n");
      0048E1 C0 03            [24] 1975 	push	ar3
      0048E3 C0 02            [24] 1976 	push	ar2
      0048E5 C0 07            [24] 1977 	push	ar7
      0048E7 C0 06            [24] 1978 	push	ar6
      0048E9 C0 05            [24] 1979 	push	ar5
      0048EB C0 04            [24] 1980 	push	ar4
      0048ED C0 03            [24] 1981 	push	ar3
      0048EF C0 02            [24] 1982 	push	ar2
      0048F1 C0 01            [24] 1983 	push	ar1
      0048F3 74 40            [12] 1984 	mov	a,#___str_8
      0048F5 C0 E0            [24] 1985 	push	acc
      0048F7 74 66            [12] 1986 	mov	a,#(___str_8 >> 8)
      0048F9 C0 E0            [24] 1987 	push	acc
      0048FB 74 80            [12] 1988 	mov	a,#0x80
      0048FD C0 E0            [24] 1989 	push	acc
      0048FF 12 51 98         [24] 1990 	lcall	_printf
      004902 15 81            [12] 1991 	dec	sp
      004904 15 81            [12] 1992 	dec	sp
      004906 15 81            [12] 1993 	dec	sp
      004908 D0 01            [24] 1994 	pop	ar1
      00490A D0 02            [24] 1995 	pop	ar2
      00490C D0 03            [24] 1996 	pop	ar3
      00490E D0 04            [24] 1997 	pop	ar4
      004910 D0 05            [24] 1998 	pop	ar5
      004912 D0 06            [24] 1999 	pop	ar6
      004914 D0 07            [24] 2000 	pop	ar7
                                   2001 ;	tcp.c:202: print_hexdump(response, response_size);
      004916 90 09 A0         [24] 2002 	mov	dptr,#_process_packet_from_buffer_response_size_10001_140
      004919 E0               [24] 2003 	movx	a,@dptr
      00491A F8               [12] 2004 	mov	r0,a
      00491B A3               [24] 2005 	inc	dptr
      00491C E0               [24] 2006 	movx	a,@dptr
      00491D FB               [12] 2007 	mov	r3,a
      00491E 90 09 97         [24] 2008 	mov	dptr,#_print_hexdump_PARM_2
      004921 E8               [12] 2009 	mov	a,r0
      004922 F0               [24] 2010 	movx	@dptr,a
      004923 EB               [12] 2011 	mov	a,r3
      004924 A3               [24] 2012 	inc	dptr
      004925 F0               [24] 2013 	movx	@dptr,a
      004926 89 82            [24] 2014 	mov	dpl, r1
      004928 8C 83            [24] 2015 	mov	dph, r4
      00492A 8D F0            [24] 2016 	mov	b, r5
      00492C C0 07            [24] 2017 	push	ar7
      00492E C0 06            [24] 2018 	push	ar6
      004930 C0 05            [24] 2019 	push	ar5
      004932 C0 04            [24] 2020 	push	ar4
      004934 C0 03            [24] 2021 	push	ar3
      004936 C0 02            [24] 2022 	push	ar2
      004938 C0 01            [24] 2023 	push	ar1
      00493A 12 46 18         [24] 2024 	lcall	_print_hexdump
      00493D D0 01            [24] 2025 	pop	ar1
      00493F D0 02            [24] 2026 	pop	ar2
      004941 D0 03            [24] 2027 	pop	ar3
      004943 D0 04            [24] 2028 	pop	ar4
      004945 D0 05            [24] 2029 	pop	ar5
      004947 D0 06            [24] 2030 	pop	ar6
      004949 D0 07            [24] 2031 	pop	ar7
                                   2032 ;	tcp.c:203: transmit_tcp_packet(response, response_size);
      00494B 90 09 A0         [24] 2033 	mov	dptr,#_process_packet_from_buffer_response_size_10001_140
      00494E E0               [24] 2034 	movx	a,@dptr
      00494F FA               [12] 2035 	mov	r2,a
      004950 A3               [24] 2036 	inc	dptr
      004951 E0               [24] 2037 	movx	a,@dptr
      004952 FB               [12] 2038 	mov	r3,a
      004953 90 09 A2         [24] 2039 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004956 EA               [12] 2040 	mov	a,r2
      004957 F0               [24] 2041 	movx	@dptr,a
      004958 EB               [12] 2042 	mov	a,r3
      004959 A3               [24] 2043 	inc	dptr
      00495A F0               [24] 2044 	movx	@dptr,a
      00495B 89 82            [24] 2045 	mov	dpl, r1
      00495D 8C 83            [24] 2046 	mov	dph, r4
      00495F 8D F0            [24] 2047 	mov	b, r5
      004961 C0 07            [24] 2048 	push	ar7
      004963 C0 06            [24] 2049 	push	ar6
      004965 C0 05            [24] 2050 	push	ar5
      004967 C0 04            [24] 2051 	push	ar4
      004969 C0 03            [24] 2052 	push	ar3
      00496B C0 02            [24] 2053 	push	ar2
      00496D C0 01            [24] 2054 	push	ar1
      00496F 12 4A 08         [24] 2055 	lcall	_transmit_tcp_packet
      004972 D0 01            [24] 2056 	pop	ar1
      004974 D0 02            [24] 2057 	pop	ar2
      004976 D0 03            [24] 2058 	pop	ar3
      004978 D0 04            [24] 2059 	pop	ar4
      00497A D0 05            [24] 2060 	pop	ar5
                                   2061 ;	tcp.c:204: free(response); // Free response memory if allocated dynamically
      00497C 89 82            [24] 2062 	mov	dpl, r1
      00497E 8C 83            [24] 2063 	mov	dph, r4
      004980 8D F0            [24] 2064 	mov	b, r5
      004982 C0 03            [24] 2065 	push	ar3
      004984 C0 02            [24] 2066 	push	ar2
      004986 12 4B 8F         [24] 2067 	lcall	_free
      004989 D0 02            [24] 2068 	pop	ar2
      00498B D0 03            [24] 2069 	pop	ar3
      00498D D0 06            [24] 2070 	pop	ar6
      00498F D0 07            [24] 2071 	pop	ar7
      004991 D0 02            [24] 2072 	pop	ar2
      004993 D0 03            [24] 2073 	pop	ar3
      004995 80 25            [24] 2074 	sjmp	00113$
      004997                       2075 00112$:
                                   2076 ;	tcp.c:206: printf("\nNo response generated by TCP packet processing.\n");
      004997 C0 07            [24] 2077 	push	ar7
      004999 C0 06            [24] 2078 	push	ar6
      00499B C0 03            [24] 2079 	push	ar3
      00499D C0 02            [24] 2080 	push	ar2
      00499F 74 5B            [12] 2081 	mov	a,#___str_9
      0049A1 C0 E0            [24] 2082 	push	acc
      0049A3 74 66            [12] 2083 	mov	a,#(___str_9 >> 8)
      0049A5 C0 E0            [24] 2084 	push	acc
      0049A7 74 80            [12] 2085 	mov	a,#0x80
      0049A9 C0 E0            [24] 2086 	push	acc
      0049AB 12 51 98         [24] 2087 	lcall	_printf
      0049AE 15 81            [12] 2088 	dec	sp
      0049B0 15 81            [12] 2089 	dec	sp
      0049B2 15 81            [12] 2090 	dec	sp
      0049B4 D0 02            [24] 2091 	pop	ar2
      0049B6 D0 03            [24] 2092 	pop	ar3
      0049B8 D0 06            [24] 2093 	pop	ar6
      0049BA D0 07            [24] 2094 	pop	ar7
      0049BC                       2095 00113$:
                                   2096 ;	tcp.c:210: free(packet_data);
      0049BC AC 17            [24] 2097 	mov	r4,_process_packet_from_buffer_sloc0_1_0
      0049BE A9 18            [24] 2098 	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
      0049C0 7D 00            [12] 2099 	mov	r5,#0x00
      0049C2 8C 82            [24] 2100 	mov	dpl, r4
      0049C4 89 83            [24] 2101 	mov	dph, r1
      0049C6 8D F0            [24] 2102 	mov	b, r5
      0049C8 C0 07            [24] 2103 	push	ar7
      0049CA C0 06            [24] 2104 	push	ar6
      0049CC C0 03            [24] 2105 	push	ar3
      0049CE C0 02            [24] 2106 	push	ar2
      0049D0 12 4B 8F         [24] 2107 	lcall	_free
      0049D3 D0 02            [24] 2108 	pop	ar2
      0049D5 D0 03            [24] 2109 	pop	ar3
      0049D7 D0 06            [24] 2110 	pop	ar6
      0049D9 D0 07            [24] 2111 	pop	ar7
                                   2112 ;	tcp.c:213: packet_size, start_address, next_start_address - 1);
      0049DB 1B               [12] 2113 	dec	r3
      0049DC BB FF 01         [24] 2114 	cjne	r3,#0xff,00158$
      0049DF 1A               [12] 2115 	dec	r2
      0049E0                       2116 00158$:
                                   2117 ;	tcp.c:212: printf("\n\rSuccessfully processed packet of size %d from 0x%04X to 0x%04X\n\r",
      0049E0 C0 03            [24] 2118 	push	ar3
      0049E2 C0 02            [24] 2119 	push	ar2
      0049E4 90 09 9C         [24] 2120 	mov	dptr,#_process_packet_from_buffer_start_address_10000_137
      0049E7 E0               [24] 2121 	movx	a,@dptr
      0049E8 C0 E0            [24] 2122 	push	acc
      0049EA A3               [24] 2123 	inc	dptr
      0049EB E0               [24] 2124 	movx	a,@dptr
      0049EC C0 E0            [24] 2125 	push	acc
      0049EE C0 06            [24] 2126 	push	ar6
      0049F0 C0 07            [24] 2127 	push	ar7
      0049F2 74 8D            [12] 2128 	mov	a,#___str_10
      0049F4 C0 E0            [24] 2129 	push	acc
      0049F6 74 66            [12] 2130 	mov	a,#(___str_10 >> 8)
      0049F8 C0 E0            [24] 2131 	push	acc
      0049FA 74 80            [12] 2132 	mov	a,#0x80
      0049FC C0 E0            [24] 2133 	push	acc
      0049FE 12 51 98         [24] 2134 	lcall	_printf
      004A01 E5 81            [12] 2135 	mov	a,sp
      004A03 24 F7            [12] 2136 	add	a,#0xf7
      004A05 F5 81            [12] 2137 	mov	sp,a
                                   2138 ;	tcp.c:214: }
      004A07 22               [24] 2139 	ret
                                   2140 ;------------------------------------------------------------
                                   2141 ;Allocation info for local variables in function 'transmit_tcp_packet'
                                   2142 ;------------------------------------------------------------
                                   2143 ;packet_size               Allocated with name '_transmit_tcp_packet_PARM_2'
                                   2144 ;packet                    Allocated with name '_transmit_tcp_packet_packet_10000_149'
                                   2145 ;start_address             Allocated with name '_transmit_tcp_packet_start_address_10000_150'
                                   2146 ;end_address               Allocated with name '_transmit_tcp_packet_end_address_10001_152'
                                   2147 ;------------------------------------------------------------
                                   2148 ;	tcp.c:217: void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
                                   2149 ;	-----------------------------------------
                                   2150 ;	 function transmit_tcp_packet
                                   2151 ;	-----------------------------------------
      004A08                       2152 _transmit_tcp_packet:
      004A08 AF F0            [24] 2153 	mov	r7,b
      004A0A AE 83            [24] 2154 	mov	r6,dph
      004A0C E5 82            [12] 2155 	mov	a,dpl
      004A0E 90 09 A4         [24] 2156 	mov	dptr,#_transmit_tcp_packet_packet_10000_149
      004A11 F0               [24] 2157 	movx	@dptr,a
      004A12 EE               [12] 2158 	mov	a,r6
      004A13 A3               [24] 2159 	inc	dptr
      004A14 F0               [24] 2160 	movx	@dptr,a
      004A15 EF               [12] 2161 	mov	a,r7
      004A16 A3               [24] 2162 	inc	dptr
      004A17 F0               [24] 2163 	movx	@dptr,a
                                   2164 ;	tcp.c:222: if ((start_address + packet_size - 1) > 0x1FFF) {
      004A18 90 09 A2         [24] 2165 	mov	dptr,#_transmit_tcp_packet_PARM_2
      004A1B E0               [24] 2166 	movx	a,@dptr
      004A1C FE               [12] 2167 	mov	r6,a
      004A1D A3               [24] 2168 	inc	dptr
      004A1E E0               [24] 2169 	movx	a,@dptr
      004A1F FF               [12] 2170 	mov	r7,a
      004A20 8E 04            [24] 2171 	mov	ar4,r6
      004A22 74 0C            [12] 2172 	mov	a,#0x0c
      004A24 2F               [12] 2173 	add	a, r7
      004A25 FD               [12] 2174 	mov	r5,a
      004A26 1C               [12] 2175 	dec	r4
      004A27 BC FF 01         [24] 2176 	cjne	r4,#0xff,00129$
      004A2A 1D               [12] 2177 	dec	r5
      004A2B                       2178 00129$:
      004A2B C3               [12] 2179 	clr	c
      004A2C 74 FF            [12] 2180 	mov	a,#0xff
      004A2E 9C               [12] 2181 	subb	a,r4
      004A2F 74 1F            [12] 2182 	mov	a,#0x1f
      004A31 9D               [12] 2183 	subb	a,r5
      004A32 50 16            [24] 2184 	jnc	00102$
                                   2185 ;	tcp.c:223: printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
      004A34 74 D0            [12] 2186 	mov	a,#___str_11
      004A36 C0 E0            [24] 2187 	push	acc
      004A38 74 66            [12] 2188 	mov	a,#(___str_11 >> 8)
      004A3A C0 E0            [24] 2189 	push	acc
      004A3C 74 80            [12] 2190 	mov	a,#0x80
      004A3E C0 E0            [24] 2191 	push	acc
      004A40 12 51 98         [24] 2192 	lcall	_printf
      004A43 15 81            [12] 2193 	dec	sp
      004A45 15 81            [12] 2194 	dec	sp
      004A47 15 81            [12] 2195 	dec	sp
                                   2196 ;	tcp.c:224: return;
      004A49 22               [24] 2197 	ret
      004A4A                       2198 00102$:
                                   2199 ;	tcp.c:226: uint16_t end_address = start_address + packet_size - 1;
      004A4A 8E 04            [24] 2200 	mov	ar4,r6
      004A4C 74 0C            [12] 2201 	mov	a,#0x0c
      004A4E 2F               [12] 2202 	add	a, r7
      004A4F FD               [12] 2203 	mov	r5,a
      004A50 1C               [12] 2204 	dec	r4
      004A51 BC FF 01         [24] 2205 	cjne	r4,#0xff,00131$
      004A54 1D               [12] 2206 	dec	r5
      004A55                       2207 00131$:
                                   2208 ;	tcp.c:227: spi_buffer_write(packet_size, start_address, packet);
      004A55 90 09 A4         [24] 2209 	mov	dptr,#_transmit_tcp_packet_packet_10000_149
      004A58 E0               [24] 2210 	movx	a,@dptr
      004A59 F9               [12] 2211 	mov	r1,a
      004A5A A3               [24] 2212 	inc	dptr
      004A5B E0               [24] 2213 	movx	a,@dptr
      004A5C FA               [12] 2214 	mov	r2,a
      004A5D A3               [24] 2215 	inc	dptr
      004A5E E0               [24] 2216 	movx	a,@dptr
      004A5F FB               [12] 2217 	mov	r3,a
      004A60 90 03 9E         [24] 2218 	mov	dptr,#_spi_buffer_write_PARM_2
      004A63 E4               [12] 2219 	clr	a
      004A64 F0               [24] 2220 	movx	@dptr,a
      004A65 74 0C            [12] 2221 	mov	a,#0x0c
      004A67 A3               [24] 2222 	inc	dptr
      004A68 F0               [24] 2223 	movx	@dptr,a
      004A69 90 03 A0         [24] 2224 	mov	dptr,#_spi_buffer_write_PARM_3
      004A6C E9               [12] 2225 	mov	a,r1
      004A6D F0               [24] 2226 	movx	@dptr,a
      004A6E EA               [12] 2227 	mov	a,r2
      004A6F A3               [24] 2228 	inc	dptr
      004A70 F0               [24] 2229 	movx	@dptr,a
      004A71 EB               [12] 2230 	mov	a,r3
      004A72 A3               [24] 2231 	inc	dptr
      004A73 F0               [24] 2232 	movx	@dptr,a
      004A74 8E 82            [24] 2233 	mov	dpl, r6
      004A76 8F 83            [24] 2234 	mov	dph, r7
      004A78 C0 05            [24] 2235 	push	ar5
      004A7A C0 04            [24] 2236 	push	ar4
      004A7C 12 3F 0D         [24] 2237 	lcall	_spi_buffer_write
      004A7F D0 04            [24] 2238 	pop	ar4
      004A81 D0 05            [24] 2239 	pop	ar5
                                   2240 ;	tcp.c:230: enc28j60_set_transmit_pointers(start_address, end_address);
      004A83 90 01 06         [24] 2241 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      004A86 EC               [12] 2242 	mov	a,r4
      004A87 F0               [24] 2243 	movx	@dptr,a
      004A88 ED               [12] 2244 	mov	a,r5
      004A89 A3               [24] 2245 	inc	dptr
      004A8A F0               [24] 2246 	movx	@dptr,a
      004A8B 90 0C 00         [24] 2247 	mov	dptr,#0x0c00
      004A8E 12 21 15         [24] 2248 	lcall	_enc28j60_set_transmit_pointers
                                   2249 ;	tcp.c:233: enc28j60_start_transmission();
      004A91 12 20 F4         [24] 2250 	lcall	_enc28j60_start_transmission
                                   2251 ;	tcp.c:236: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      004A94 90 01 F4         [24] 2252 	mov	dptr,#0x01f4
      004A97 12 21 8C         [24] 2253 	lcall	_wait_for_transmission_complete
      004A9A E5 82            [12] 2254 	mov	a, dpl
      004A9C 60 38            [24] 2255 	jz	00107$
                                   2256 ;	tcp.c:238: if (enc28j60_transmission_successful()) {
      004A9E 12 21 EF         [24] 2257 	lcall	_enc28j60_transmission_successful
      004AA1 E5 82            [12] 2258 	mov	a, dpl
      004AA3 85 83 F0         [24] 2259 	mov	b, dph
      004AA6 45 F0            [12] 2260 	orl	a,b
      004AA8 60 16            [24] 2261 	jz	00104$
                                   2262 ;	tcp.c:239: printf("TCP request sent successfully.\n\r");
      004AAA 74 0B            [12] 2263 	mov	a,#___str_12
      004AAC C0 E0            [24] 2264 	push	acc
      004AAE 74 67            [12] 2265 	mov	a,#(___str_12 >> 8)
      004AB0 C0 E0            [24] 2266 	push	acc
      004AB2 74 80            [12] 2267 	mov	a,#0x80
      004AB4 C0 E0            [24] 2268 	push	acc
      004AB6 12 51 98         [24] 2269 	lcall	_printf
      004AB9 15 81            [12] 2270 	dec	sp
      004ABB 15 81            [12] 2271 	dec	sp
      004ABD 15 81            [12] 2272 	dec	sp
      004ABF 22               [24] 2273 	ret
      004AC0                       2274 00104$:
                                   2275 ;	tcp.c:241: printf("TCP transmission failed. Check error flags.\n\r");
      004AC0 74 2C            [12] 2276 	mov	a,#___str_13
      004AC2 C0 E0            [24] 2277 	push	acc
      004AC4 74 67            [12] 2278 	mov	a,#(___str_13 >> 8)
      004AC6 C0 E0            [24] 2279 	push	acc
      004AC8 74 80            [12] 2280 	mov	a,#0x80
      004ACA C0 E0            [24] 2281 	push	acc
      004ACC 12 51 98         [24] 2282 	lcall	_printf
      004ACF 15 81            [12] 2283 	dec	sp
      004AD1 15 81            [12] 2284 	dec	sp
      004AD3 15 81            [12] 2285 	dec	sp
      004AD5 22               [24] 2286 	ret
      004AD6                       2287 00107$:
                                   2288 ;	tcp.c:245: "Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      004AD6 74 5A            [12] 2289 	mov	a,#___str_14
      004AD8 C0 E0            [24] 2290 	push	acc
      004ADA 74 67            [12] 2291 	mov	a,#(___str_14 >> 8)
      004ADC C0 E0            [24] 2292 	push	acc
      004ADE 74 80            [12] 2293 	mov	a,#0x80
      004AE0 C0 E0            [24] 2294 	push	acc
      004AE2 12 51 98         [24] 2295 	lcall	_printf
      004AE5 15 81            [12] 2296 	dec	sp
      004AE7 15 81            [12] 2297 	dec	sp
      004AE9 15 81            [12] 2298 	dec	sp
                                   2299 ;	tcp.c:247: }
      004AEB 22               [24] 2300 	ret
                                   2301 	.area CSEG    (CODE)
                                   2302 	.area CONST   (CODE)
                                   2303 	.area CONST   (CODE)
      00655D                       2304 ___str_0:
      00655D 0A                    2305 	.db 0x0a
      00655E 48 65 78 64 75 6D 70  2306 	.ascii "Hexdump (Size: %d):"
             20 28 53 69 7A 65 3A
             20 25 64 29 3A
      006571 0A                    2307 	.db 0x0a
      006572 00                    2308 	.db 0x00
                                   2309 	.area CSEG    (CODE)
                                   2310 	.area CONST   (CODE)
      006573                       2311 ___str_1:
      006573 25 30 32 58 20        2312 	.ascii "%02X "
      006578 00                    2313 	.db 0x00
                                   2314 	.area CSEG    (CODE)
                                   2315 	.area CONST   (CODE)
      006579                       2316 ___str_2:
      006579 0A                    2317 	.db 0x0a
      00657A 00                    2318 	.db 0x00
                                   2319 	.area CSEG    (CODE)
                                   2320 	.area CONST   (CODE)
      00657B                       2321 ___str_3:
      00657B 0A                    2322 	.db 0x0a
      00657C 0D                    2323 	.db 0x0d
      00657D 49 6E 76 61 6C 69 64  2324 	.ascii "Invalid start address: %04X"
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             3A 20 25 30 34 58
      006598 0A                    2325 	.db 0x0a
      006599 0D                    2326 	.db 0x0d
      00659A 00                    2327 	.db 0x00
                                   2328 	.area CSEG    (CODE)
                                   2329 	.area CONST   (CODE)
      00659B                       2330 ___str_4:
      00659B 0A                    2331 	.db 0x0a
      00659C 0D                    2332 	.db 0x0d
      00659D 46 61 69 6C 65 64 20  2333 	.ascii "Failed to read packet start address bytes"
             74 6F 20 72 65 61 64
             20 70 61 63 6B 65 74
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             20 62 79 74 65 73
      0065C6 0A                    2334 	.db 0x0a
      0065C7 0D                    2335 	.db 0x0d
      0065C8 00                    2336 	.db 0x00
                                   2337 	.area CSEG    (CODE)
                                   2338 	.area CONST   (CODE)
      0065C9                       2339 ___str_5:
      0065C9 0A                    2340 	.db 0x0a
      0065CA 0D                    2341 	.db 0x0d
      0065CB 49 6E 76 61 6C 69 64  2342 	.ascii "Invalid next start address: 0x%04X"
             20 6E 65 78 74 20 73
             74 61 72 74 20 61 64
             64 72 65 73 73 3A 20
             30 78 25 30 34 58
      0065ED 0A                    2343 	.db 0x0a
      0065EE 0D                    2344 	.db 0x0d
      0065EF 00                    2345 	.db 0x00
                                   2346 	.area CSEG    (CODE)
                                   2347 	.area CONST   (CODE)
      0065F0                       2348 ___str_6:
      0065F0 0A                    2349 	.db 0x0a
      0065F1 0D                    2350 	.db 0x0d
      0065F2 4D 65 6D 6F 72 79 20  2351 	.ascii "Memory allocation failed for packet size: %d"
             61 6C 6C 6F 63 61 74
             69 6F 6E 20 66 61 69
             6C 65 64 20 66 6F 72
             20 70 61 63 6B 65 74
             20 73 69 7A 65 3A 20
             25 64
      00661E 0A                    2352 	.db 0x0a
      00661F 0D                    2353 	.db 0x0d
      006620 00                    2354 	.db 0x00
                                   2355 	.area CSEG    (CODE)
                                   2356 	.area CONST   (CODE)
      006621                       2357 ___str_7:
      006621 0A                    2358 	.db 0x0a
      006622 0D                    2359 	.db 0x0d
      006623 46 61 69 6C 65 64 20  2360 	.ascii "Failed to read packet data"
             74 6F 20 72 65 61 64
             20 70 61 63 6B 65 74
             20 64 61 74 61
      00663D 0A                    2361 	.db 0x0a
      00663E 0D                    2362 	.db 0x0d
      00663F 00                    2363 	.db 0x00
                                   2364 	.area CSEG    (CODE)
                                   2365 	.area CONST   (CODE)
      006640                       2366 ___str_8:
      006640 0A                    2367 	.db 0x0a
      006641 50 72 6F 63 65 73 73  2368 	.ascii "Processed response data:"
             65 64 20 72 65 73 70
             6F 6E 73 65 20 64 61
             74 61 3A
      006659 0A                    2369 	.db 0x0a
      00665A 00                    2370 	.db 0x00
                                   2371 	.area CSEG    (CODE)
                                   2372 	.area CONST   (CODE)
      00665B                       2373 ___str_9:
      00665B 0A                    2374 	.db 0x0a
      00665C 4E 6F 20 72 65 73 70  2375 	.ascii "No response generated by TCP packet processing."
             6F 6E 73 65 20 67 65
             6E 65 72 61 74 65 64
             20 62 79 20 54 43 50
             20 70 61 63 6B 65 74
             20 70 72 6F 63 65 73
             73 69 6E 67 2E
      00668B 0A                    2376 	.db 0x0a
      00668C 00                    2377 	.db 0x00
                                   2378 	.area CSEG    (CODE)
                                   2379 	.area CONST   (CODE)
      00668D                       2380 ___str_10:
      00668D 0A                    2381 	.db 0x0a
      00668E 0D                    2382 	.db 0x0d
      00668F 53 75 63 63 65 73 73  2383 	.ascii "Successfully processed packet of size %d from 0x%04X to 0x%0"
             66 75 6C 6C 79 20 70
             72 6F 63 65 73 73 65
             64 20 70 61 63 6B 65
             74 20 6F 66 20 73 69
             7A 65 20 25 64 20 66
             72 6F 6D 20 30 78 25
             30 34 58 20 74 6F 20
             30 78 25 30
      0066CB 34 58                 2384 	.ascii "4X"
      0066CD 0A                    2385 	.db 0x0a
      0066CE 0D                    2386 	.db 0x0d
      0066CF 00                    2387 	.db 0x00
                                   2388 	.area CSEG    (CODE)
                                   2389 	.area CONST   (CODE)
      0066D0                       2390 ___str_11:
      0066D0 0A                    2391 	.db 0x0a
      0066D1 49 6E 76 61 6C 69 64  2392 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      006709 0A                    2393 	.db 0x0a
      00670A 00                    2394 	.db 0x00
                                   2395 	.area CSEG    (CODE)
                                   2396 	.area CONST   (CODE)
      00670B                       2397 ___str_12:
      00670B 54 43 50 20 72 65 71  2398 	.ascii "TCP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      006729 0A                    2399 	.db 0x0a
      00672A 0D                    2400 	.db 0x0d
      00672B 00                    2401 	.db 0x00
                                   2402 	.area CSEG    (CODE)
                                   2403 	.area CONST   (CODE)
      00672C                       2404 ___str_13:
      00672C 54 43 50 20 74 72 61  2405 	.ascii "TCP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      006757 0A                    2406 	.db 0x0a
      006758 0D                    2407 	.db 0x0d
      006759 00                    2408 	.db 0x00
                                   2409 	.area CSEG    (CODE)
                                   2410 	.area CONST   (CODE)
      00675A                       2411 ___str_14:
      00675A 54 72 61 6E 73 6D 69  2412 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      006796 74 6C 79 2E           2413 	.ascii "tly."
      00679A 0A                    2414 	.db 0x0a
      00679B 0D                    2415 	.db 0x0d
      00679C 00                    2416 	.db 0x00
                                   2417 	.area CSEG    (CODE)
                                   2418 	.area XINIT   (CODE)
                                   2419 	.area CABS    (ABS,CODE)

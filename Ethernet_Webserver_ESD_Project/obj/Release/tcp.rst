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
      000999                        520 _print_hexdump_data_10000_130:
      000999                        521 	.ds 3
      00099C                        522 _process_packet_from_buffer_start_address_10000_136:
      00099C                        523 	.ds 2
      00099E                        524 _process_packet_from_buffer_next_packet_start_10001_139:
      00099E                        525 	.ds 2
      0009A0                        526 _process_packet_from_buffer_response_size_10001_139:
      0009A0                        527 	.ds 2
      0009A2                        528 _transmit_tcp_packet_PARM_2:
      0009A2                        529 	.ds 2
      0009A4                        530 _transmit_tcp_packet_packet_10000_148:
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
      0040B2                        582 _calculate_checksum:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
      0040B2 AF F0            [24]  591 	mov	r7,b
      0040B4 AE 83            [24]  592 	mov	r6,dph
      0040B6 E5 82            [12]  593 	mov	a,dpl
      0040B8 90 03 A9         [24]  594 	mov	dptr,#_calculate_checksum_data_10000_116
      0040BB F0               [24]  595 	movx	@dptr,a
      0040BC EE               [12]  596 	mov	a,r6
      0040BD A3               [24]  597 	inc	dptr
      0040BE F0               [24]  598 	movx	@dptr,a
      0040BF EF               [12]  599 	mov	a,r7
      0040C0 A3               [24]  600 	inc	dptr
      0040C1 F0               [24]  601 	movx	@dptr,a
                                    602 ;	tcp.c:13: uint32_t sum = 0;
      0040C2 90 03 AC         [24]  603 	mov	dptr,#_calculate_checksum_sum_10000_117
      0040C5 E4               [12]  604 	clr	a
      0040C6 F0               [24]  605 	movx	@dptr,a
      0040C7 A3               [24]  606 	inc	dptr
      0040C8 F0               [24]  607 	movx	@dptr,a
      0040C9 A3               [24]  608 	inc	dptr
      0040CA F0               [24]  609 	movx	@dptr,a
      0040CB A3               [24]  610 	inc	dptr
      0040CC F0               [24]  611 	movx	@dptr,a
                                    612 ;	tcp.c:16: for (uint16_t i = 0; i < length; i += 2) {
      0040CD 90 03 B0         [24]  613 	mov	dptr,#_calculate_checksum_i_20000_118
      0040D0 F0               [24]  614 	movx	@dptr,a
      0040D1 A3               [24]  615 	inc	dptr
      0040D2 F0               [24]  616 	movx	@dptr,a
      0040D3 90 03 A9         [24]  617 	mov	dptr,#_calculate_checksum_data_10000_116
      0040D6 E0               [24]  618 	movx	a,@dptr
      0040D7 FD               [12]  619 	mov	r5,a
      0040D8 A3               [24]  620 	inc	dptr
      0040D9 E0               [24]  621 	movx	a,@dptr
      0040DA FE               [12]  622 	mov	r6,a
      0040DB A3               [24]  623 	inc	dptr
      0040DC E0               [24]  624 	movx	a,@dptr
      0040DD FF               [12]  625 	mov	r7,a
      0040DE 90 03 A7         [24]  626 	mov	dptr,#_calculate_checksum_PARM_2
      0040E1 E0               [24]  627 	movx	a,@dptr
      0040E2 F5 39            [12]  628 	mov	_calculate_checksum_sloc0_1_0,a
      0040E4 A3               [24]  629 	inc	dptr
      0040E5 E0               [24]  630 	movx	a,@dptr
      0040E6 F5 3A            [12]  631 	mov	(_calculate_checksum_sloc0_1_0 + 1),a
      0040E8                        632 00105$:
      0040E8 90 03 B0         [24]  633 	mov	dptr,#_calculate_checksum_i_20000_118
      0040EB E0               [24]  634 	movx	a,@dptr
      0040EC F9               [12]  635 	mov	r1,a
      0040ED A3               [24]  636 	inc	dptr
      0040EE E0               [24]  637 	movx	a,@dptr
      0040EF FA               [12]  638 	mov	r2,a
      0040F0 C3               [12]  639 	clr	c
      0040F1 E9               [12]  640 	mov	a,r1
      0040F2 95 39            [12]  641 	subb	a,_calculate_checksum_sloc0_1_0
      0040F4 EA               [12]  642 	mov	a,r2
      0040F5 95 3A            [12]  643 	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
      0040F7 40 03            [24]  644 	jc	00135$
      0040F9 02 41 E8         [24]  645 	ljmp	00103$
      0040FC                        646 00135$:
                                    647 ;	tcp.c:17: uint16_t word = (data[i] << 8) + (i + 1 < length ? data[i + 1] : 0);
      0040FC E9               [12]  648 	mov	a,r1
      0040FD 2D               [12]  649 	add	a, r5
      0040FE F8               [12]  650 	mov	r0,a
      0040FF EA               [12]  651 	mov	a,r2
      004100 3E               [12]  652 	addc	a, r6
      004101 FB               [12]  653 	mov	r3,a
      004102 8F 04            [24]  654 	mov	ar4,r7
      004104 88 82            [24]  655 	mov	dpl,r0
      004106 8B 83            [24]  656 	mov	dph,r3
      004108 8C F0            [24]  657 	mov	b,r4
      00410A 12 5B 2B         [24]  658 	lcall	__gptrget
      00410D FC               [12]  659 	mov	r4,a
      00410E 7B 00            [12]  660 	mov	r3,#0x00
      004110 C0 05            [24]  661 	push	ar5
      004112 C0 06            [24]  662 	push	ar6
      004114 C0 07            [24]  663 	push	ar7
      004116 74 01            [12]  664 	mov	a,#0x01
      004118 29               [12]  665 	add	a, r1
      004119 F8               [12]  666 	mov	r0,a
      00411A E4               [12]  667 	clr	a
      00411B 3A               [12]  668 	addc	a, r2
      00411C FF               [12]  669 	mov	r7,a
      00411D C3               [12]  670 	clr	c
      00411E E8               [12]  671 	mov	a,r0
      00411F 95 39            [12]  672 	subb	a,_calculate_checksum_sloc0_1_0
      004121 EF               [12]  673 	mov	a,r7
      004122 95 3A            [12]  674 	subb	a,(_calculate_checksum_sloc0_1_0 + 1)
      004124 D0 07            [24]  675 	pop	ar7
      004126 D0 06            [24]  676 	pop	ar6
      004128 D0 05            [24]  677 	pop	ar5
      00412A 50 1B            [24]  678 	jnc	00109$
      00412C 09               [12]  679 	inc	r1
      00412D B9 00 01         [24]  680 	cjne	r1,#0x00,00137$
      004130 0A               [12]  681 	inc	r2
      004131                        682 00137$:
      004131 E9               [12]  683 	mov	a,r1
      004132 2D               [12]  684 	add	a, r5
      004133 F9               [12]  685 	mov	r1,a
      004134 EA               [12]  686 	mov	a,r2
      004135 3E               [12]  687 	addc	a, r6
      004136 F8               [12]  688 	mov	r0,a
      004137 8F 02            [24]  689 	mov	ar2,r7
      004139 89 82            [24]  690 	mov	dpl,r1
      00413B 88 83            [24]  691 	mov	dph,r0
      00413D 8A F0            [24]  692 	mov	b,r2
      00413F 12 5B 2B         [24]  693 	lcall	__gptrget
      004142 F9               [12]  694 	mov	r1,a
      004143 7A 00            [12]  695 	mov	r2,#0x00
      004145 80 04            [24]  696 	sjmp	00110$
      004147                        697 00109$:
      004147 79 00            [12]  698 	mov	r1,#0x00
      004149 7A 00            [12]  699 	mov	r2,#0x00
      00414B                        700 00110$:
      00414B C0 05            [24]  701 	push	ar5
      00414D C0 06            [24]  702 	push	ar6
      00414F C0 07            [24]  703 	push	ar7
      004151 E9               [12]  704 	mov	a,r1
      004152 2B               [12]  705 	add	a, r3
      004153 FB               [12]  706 	mov	r3,a
      004154 EA               [12]  707 	mov	a,r2
      004155 3C               [12]  708 	addc	a, r4
      004156 FC               [12]  709 	mov	r4,a
                                    710 ;	tcp.c:18: sum += word;
      004157 90 03 AC         [24]  711 	mov	dptr,#_calculate_checksum_sum_10000_117
      00415A E0               [24]  712 	movx	a,@dptr
      00415B F8               [12]  713 	mov	r0,a
      00415C A3               [24]  714 	inc	dptr
      00415D E0               [24]  715 	movx	a,@dptr
      00415E F9               [12]  716 	mov	r1,a
      00415F A3               [24]  717 	inc	dptr
      004160 E0               [24]  718 	movx	a,@dptr
      004161 FA               [12]  719 	mov	r2,a
      004162 A3               [24]  720 	inc	dptr
      004163 E0               [24]  721 	movx	a,@dptr
      004164 FF               [12]  722 	mov	r7,a
      004165 7E 00            [12]  723 	mov	r6,#0x00
      004167 7D 00            [12]  724 	mov	r5,#0x00
      004169 90 03 AC         [24]  725 	mov	dptr,#_calculate_checksum_sum_10000_117
      00416C EB               [12]  726 	mov	a,r3
      00416D 28               [12]  727 	add	a, r0
      00416E F0               [24]  728 	movx	@dptr,a
      00416F EC               [12]  729 	mov	a,r4
      004170 39               [12]  730 	addc	a, r1
      004171 A3               [24]  731 	inc	dptr
      004172 F0               [24]  732 	movx	@dptr,a
      004173 EE               [12]  733 	mov	a,r6
      004174 3A               [12]  734 	addc	a, r2
      004175 A3               [24]  735 	inc	dptr
      004176 F0               [24]  736 	movx	@dptr,a
      004177 ED               [12]  737 	mov	a,r5
      004178 3F               [12]  738 	addc	a, r7
      004179 A3               [24]  739 	inc	dptr
      00417A F0               [24]  740 	movx	@dptr,a
                                    741 ;	tcp.c:21: if (sum > 0xFFFF) {
      00417B 90 03 AC         [24]  742 	mov	dptr,#_calculate_checksum_sum_10000_117
      00417E E0               [24]  743 	movx	a,@dptr
      00417F F5 3B            [12]  744 	mov	_calculate_checksum_sloc1_1_0,a
      004181 A3               [24]  745 	inc	dptr
      004182 E0               [24]  746 	movx	a,@dptr
      004183 F5 3C            [12]  747 	mov	(_calculate_checksum_sloc1_1_0 + 1),a
      004185 A3               [24]  748 	inc	dptr
      004186 E0               [24]  749 	movx	a,@dptr
      004187 F5 3D            [12]  750 	mov	(_calculate_checksum_sloc1_1_0 + 2),a
      004189 A3               [24]  751 	inc	dptr
      00418A E0               [24]  752 	movx	a,@dptr
      00418B F5 3E            [12]  753 	mov	(_calculate_checksum_sloc1_1_0 + 3),a
      00418D C3               [12]  754 	clr	c
      00418E 74 FF            [12]  755 	mov	a,#0xff
      004190 95 3B            [12]  756 	subb	a,_calculate_checksum_sloc1_1_0
      004192 74 FF            [12]  757 	mov	a,#0xff
      004194 95 3C            [12]  758 	subb	a,(_calculate_checksum_sloc1_1_0 + 1)
      004196 E4               [12]  759 	clr	a
      004197 95 3D            [12]  760 	subb	a,(_calculate_checksum_sloc1_1_0 + 2)
      004199 E4               [12]  761 	clr	a
      00419A 95 3E            [12]  762 	subb	a,(_calculate_checksum_sloc1_1_0 + 3)
      00419C D0 07            [24]  763 	pop	ar7
      00419E D0 06            [24]  764 	pop	ar6
      0041A0 D0 05            [24]  765 	pop	ar5
      0041A2 50 2A            [24]  766 	jnc	00106$
                                    767 ;	tcp.c:22: sum = (sum & 0xFFFF) + (sum >> 16);
      0041A4 85 3B 3F         [24]  768 	mov	_calculate_checksum_sloc2_1_0,_calculate_checksum_sloc1_1_0
      0041A7 85 3C 40         [24]  769 	mov	(_calculate_checksum_sloc2_1_0 + 1),(_calculate_checksum_sloc1_1_0 + 1)
      0041AA 75 41 00         [24]  770 	mov	(_calculate_checksum_sloc2_1_0 + 2),#0x00
      0041AD 75 42 00         [24]  771 	mov	(_calculate_checksum_sloc2_1_0 + 3),#0x00
      0041B0 A8 3D            [24]  772 	mov	r0,(_calculate_checksum_sloc1_1_0 + 2)
      0041B2 AA 3E            [24]  773 	mov	r2,(_calculate_checksum_sloc1_1_0 + 3)
      0041B4 7B 00            [12]  774 	mov	r3,#0x00
      0041B6 7C 00            [12]  775 	mov	r4,#0x00
      0041B8 90 03 AC         [24]  776 	mov	dptr,#_calculate_checksum_sum_10000_117
      0041BB E8               [12]  777 	mov	a,r0
      0041BC 25 3F            [12]  778 	add	a, _calculate_checksum_sloc2_1_0
      0041BE F0               [24]  779 	movx	@dptr,a
      0041BF EA               [12]  780 	mov	a,r2
      0041C0 35 40            [12]  781 	addc	a, (_calculate_checksum_sloc2_1_0 + 1)
      0041C2 A3               [24]  782 	inc	dptr
      0041C3 F0               [24]  783 	movx	@dptr,a
      0041C4 EB               [12]  784 	mov	a,r3
      0041C5 35 41            [12]  785 	addc	a, (_calculate_checksum_sloc2_1_0 + 2)
      0041C7 A3               [24]  786 	inc	dptr
      0041C8 F0               [24]  787 	movx	@dptr,a
      0041C9 EC               [12]  788 	mov	a,r4
      0041CA 35 42            [12]  789 	addc	a, (_calculate_checksum_sloc2_1_0 + 3)
      0041CC A3               [24]  790 	inc	dptr
      0041CD F0               [24]  791 	movx	@dptr,a
      0041CE                        792 00106$:
                                    793 ;	tcp.c:16: for (uint16_t i = 0; i < length; i += 2) {
      0041CE 90 03 B0         [24]  794 	mov	dptr,#_calculate_checksum_i_20000_118
      0041D1 E0               [24]  795 	movx	a,@dptr
      0041D2 FB               [12]  796 	mov	r3,a
      0041D3 A3               [24]  797 	inc	dptr
      0041D4 E0               [24]  798 	movx	a,@dptr
      0041D5 FC               [12]  799 	mov	r4,a
      0041D6 74 02            [12]  800 	mov	a,#0x02
      0041D8 2B               [12]  801 	add	a, r3
      0041D9 FB               [12]  802 	mov	r3,a
      0041DA E4               [12]  803 	clr	a
      0041DB 3C               [12]  804 	addc	a, r4
      0041DC FC               [12]  805 	mov	r4,a
      0041DD 90 03 B0         [24]  806 	mov	dptr,#_calculate_checksum_i_20000_118
      0041E0 EB               [12]  807 	mov	a,r3
      0041E1 F0               [24]  808 	movx	@dptr,a
      0041E2 EC               [12]  809 	mov	a,r4
      0041E3 A3               [24]  810 	inc	dptr
      0041E4 F0               [24]  811 	movx	@dptr,a
      0041E5 02 40 E8         [24]  812 	ljmp	00105$
      0041E8                        813 00103$:
                                    814 ;	tcp.c:27: sum = (sum & 0xFFFF) + (sum >> 16);
      0041E8 90 03 AC         [24]  815 	mov	dptr,#_calculate_checksum_sum_10000_117
      0041EB E0               [24]  816 	movx	a,@dptr
      0041EC FC               [12]  817 	mov	r4,a
      0041ED A3               [24]  818 	inc	dptr
      0041EE E0               [24]  819 	movx	a,@dptr
      0041EF FD               [12]  820 	mov	r5,a
      0041F0 A3               [24]  821 	inc	dptr
      0041F1 E0               [24]  822 	movx	a,@dptr
      0041F2 FE               [12]  823 	mov	r6,a
      0041F3 A3               [24]  824 	inc	dptr
      0041F4 E0               [24]  825 	movx	a,@dptr
      0041F5 FF               [12]  826 	mov	r7,a
      0041F6 8C 00            [24]  827 	mov	ar0,r4
      0041F8 8D 01            [24]  828 	mov	ar1,r5
      0041FA 7A 00            [12]  829 	mov	r2,#0x00
      0041FC 7B 00            [12]  830 	mov	r3,#0x00
      0041FE 8E 04            [24]  831 	mov	ar4,r6
      004200 8F 05            [24]  832 	mov	ar5,r7
      004202 7E 00            [12]  833 	mov	r6,#0x00
      004204 7F 00            [12]  834 	mov	r7,#0x00
      004206 90 03 AC         [24]  835 	mov	dptr,#_calculate_checksum_sum_10000_117
      004209 EC               [12]  836 	mov	a,r4
      00420A 28               [12]  837 	add	a, r0
      00420B F0               [24]  838 	movx	@dptr,a
      00420C ED               [12]  839 	mov	a,r5
      00420D 39               [12]  840 	addc	a, r1
      00420E A3               [24]  841 	inc	dptr
      00420F F0               [24]  842 	movx	@dptr,a
      004210 EE               [12]  843 	mov	a,r6
      004211 3A               [12]  844 	addc	a, r2
      004212 A3               [24]  845 	inc	dptr
      004213 F0               [24]  846 	movx	@dptr,a
      004214 EF               [12]  847 	mov	a,r7
      004215 3B               [12]  848 	addc	a, r3
      004216 A3               [24]  849 	inc	dptr
      004217 F0               [24]  850 	movx	@dptr,a
                                    851 ;	tcp.c:30: return ~sum;
      004218 90 03 AC         [24]  852 	mov	dptr,#_calculate_checksum_sum_10000_117
      00421B E0               [24]  853 	movx	a,@dptr
      00421C FC               [12]  854 	mov	r4,a
      00421D A3               [24]  855 	inc	dptr
      00421E E0               [24]  856 	movx	a,@dptr
      00421F FD               [12]  857 	mov	r5,a
      004220 A3               [24]  858 	inc	dptr
      004221 E0               [24]  859 	movx	a,@dptr
      004222 FE               [12]  860 	mov	r6,a
      004223 A3               [24]  861 	inc	dptr
      004224 E0               [24]  862 	movx	a,@dptr
      004225 FF               [12]  863 	mov	r7,a
      004226 EC               [12]  864 	mov	a,r4
      004227 F4               [12]  865 	cpl	a
      004228 FC               [12]  866 	mov	r4,a
      004229 ED               [12]  867 	mov	a,r5
      00422A F4               [12]  868 	cpl	a
      00422B FD               [12]  869 	mov	r5,a
      00422C EE               [12]  870 	mov	a,r6
      00422D F4               [12]  871 	cpl	a
      00422E EF               [12]  872 	mov	a,r7
      00422F F4               [12]  873 	cpl	a
      004230 8C 82            [24]  874 	mov	dpl, r4
      004232 8D 83            [24]  875 	mov	dph, r5
                                    876 ;	tcp.c:31: }
      004234 22               [24]  877 	ret
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
                                    893 ;seq_num                   Allocated with name '_process_tcp_packet_seq_num_10004_126'
                                    894 ;ack_num                   Allocated with name '_process_tcp_packet_ack_num_10004_126'
                                    895 ;tcp_length                Allocated with name '_process_tcp_packet_tcp_length_10005_127'
                                    896 ;ip_total_length           Allocated with name '_process_tcp_packet_ip_total_length_10005_127'
                                    897 ;ip_checksum               Allocated with name '_process_tcp_packet_ip_checksum_10006_128'
                                    898 ;tcp_checksum              Allocated with name '_process_tcp_packet_tcp_checksum_10007_129'
                                    899 ;------------------------------------------------------------
                                    900 ;	tcp.c:32: uint8_t* process_tcp_packet(uint8_t *packet, uint16_t packet_size, uint16_t *response_size) {
                                    901 ;	-----------------------------------------
                                    902 ;	 function process_tcp_packet
                                    903 ;	-----------------------------------------
      004235                        904 _process_tcp_packet:
      004235 AF F0            [24]  905 	mov	r7,b
      004237 AE 83            [24]  906 	mov	r6,dph
      004239 E5 82            [12]  907 	mov	a,dpl
      00423B 90 03 B7         [24]  908 	mov	dptr,#_process_tcp_packet_packet_10000_121
      00423E F0               [24]  909 	movx	@dptr,a
      00423F EE               [12]  910 	mov	a,r6
      004240 A3               [24]  911 	inc	dptr
      004241 F0               [24]  912 	movx	@dptr,a
      004242 EF               [12]  913 	mov	a,r7
      004243 A3               [24]  914 	inc	dptr
      004244 F0               [24]  915 	movx	@dptr,a
                                    916 ;	tcp.c:34: memset(response, 0, MAX_PACKET_SIZE + 1);      // Clear the response buffer
      004245 90 09 BD         [24]  917 	mov	dptr,#_memset_PARM_2
      004248 E4               [12]  918 	clr	a
      004249 F0               [24]  919 	movx	@dptr,a
      00424A 90 09 BE         [24]  920 	mov	dptr,#_memset_PARM_3
      00424D 74 DD            [12]  921 	mov	a,#0xdd
      00424F F0               [24]  922 	movx	@dptr,a
      004250 74 05            [12]  923 	mov	a,#0x05
      004252 A3               [24]  924 	inc	dptr
      004253 F0               [24]  925 	movx	@dptr,a
      004254 90 03 BA         [24]  926 	mov	dptr,#_process_tcp_packet_response_10000_122
      004257 75 F0 00         [24]  927 	mov	b, #0x00
      00425A 12 4C CB         [24]  928 	lcall	_memset
                                    929 ;	tcp.c:36: response[0] = 0x0E;  // Ensure the first byte of the response is always 0x0E
      00425D 90 03 BA         [24]  930 	mov	dptr,#_process_tcp_packet_response_10000_122
      004260 74 0E            [12]  931 	mov	a,#0x0e
      004262 F0               [24]  932 	movx	@dptr,a
                                    933 ;	tcp.c:39: uint8_t *data_start = response + 1;
                                    934 ;	tcp.c:42: uint8_t *ethernet_header = packet;
      004263 90 03 B7         [24]  935 	mov	dptr,#_process_tcp_packet_packet_10000_121
      004266 E0               [24]  936 	movx	a,@dptr
      004267 FD               [12]  937 	mov	r5,a
      004268 A3               [24]  938 	inc	dptr
      004269 E0               [24]  939 	movx	a,@dptr
      00426A FE               [12]  940 	mov	r6,a
      00426B A3               [24]  941 	inc	dptr
      00426C E0               [24]  942 	movx	a,@dptr
      00426D FF               [12]  943 	mov	r7,a
                                    944 ;	tcp.c:44: memcpy(response_ethernet_header, ethernet_header, ETHERNET_HEADER_SIZE);
      00426E 8D 02            [24]  945 	mov	ar2,r5
      004270 8E 03            [24]  946 	mov	ar3,r6
      004272 8F 04            [24]  947 	mov	ar4,r7
      004274 90 09 B5         [24]  948 	mov	dptr,#___memcpy_PARM_2
      004277 EA               [12]  949 	mov	a,r2
      004278 F0               [24]  950 	movx	@dptr,a
      004279 EB               [12]  951 	mov	a,r3
      00427A A3               [24]  952 	inc	dptr
      00427B F0               [24]  953 	movx	@dptr,a
      00427C EC               [12]  954 	mov	a,r4
      00427D A3               [24]  955 	inc	dptr
      00427E F0               [24]  956 	movx	@dptr,a
      00427F 90 09 B8         [24]  957 	mov	dptr,#___memcpy_PARM_3
      004282 74 0E            [12]  958 	mov	a,#0x0e
      004284 F0               [24]  959 	movx	@dptr,a
      004285 E4               [12]  960 	clr	a
      004286 A3               [24]  961 	inc	dptr
      004287 F0               [24]  962 	movx	@dptr,a
      004288 90 03 BB         [24]  963 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0001)
      00428B F5 F0            [12]  964 	mov	b,a
      00428D C0 07            [24]  965 	push	ar7
      00428F C0 06            [24]  966 	push	ar6
      004291 C0 05            [24]  967 	push	ar5
      004293 12 4C 57         [24]  968 	lcall	___memcpy
      004296 D0 05            [24]  969 	pop	ar5
      004298 D0 06            [24]  970 	pop	ar6
      00429A D0 07            [24]  971 	pop	ar7
                                    972 ;	tcp.c:47: memcpy(response_ethernet_header, ethernet_header + 6, 6);  // Destination MAC
      00429C 74 06            [12]  973 	mov	a,#0x06
      00429E 2D               [12]  974 	add	a, r5
      00429F FA               [12]  975 	mov	r2,a
      0042A0 E4               [12]  976 	clr	a
      0042A1 3E               [12]  977 	addc	a, r6
      0042A2 FB               [12]  978 	mov	r3,a
      0042A3 8F 04            [24]  979 	mov	ar4,r7
      0042A5 90 09 B5         [24]  980 	mov	dptr,#___memcpy_PARM_2
      0042A8 EA               [12]  981 	mov	a,r2
      0042A9 F0               [24]  982 	movx	@dptr,a
      0042AA EB               [12]  983 	mov	a,r3
      0042AB A3               [24]  984 	inc	dptr
      0042AC F0               [24]  985 	movx	@dptr,a
      0042AD EC               [12]  986 	mov	a,r4
      0042AE A3               [24]  987 	inc	dptr
      0042AF F0               [24]  988 	movx	@dptr,a
      0042B0 90 09 B8         [24]  989 	mov	dptr,#___memcpy_PARM_3
      0042B3 74 06            [12]  990 	mov	a,#0x06
      0042B5 F0               [24]  991 	movx	@dptr,a
      0042B6 E4               [12]  992 	clr	a
      0042B7 A3               [24]  993 	inc	dptr
      0042B8 F0               [24]  994 	movx	@dptr,a
      0042B9 90 03 BB         [24]  995 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0001)
      0042BC F5 F0            [12]  996 	mov	b,a
      0042BE C0 07            [24]  997 	push	ar7
      0042C0 C0 06            [24]  998 	push	ar6
      0042C2 C0 05            [24]  999 	push	ar5
      0042C4 12 4C 57         [24] 1000 	lcall	___memcpy
      0042C7 D0 05            [24] 1001 	pop	ar5
      0042C9 D0 06            [24] 1002 	pop	ar6
      0042CB D0 07            [24] 1003 	pop	ar7
                                   1004 ;	tcp.c:48: memcpy(response_ethernet_header + 6, ethernet_header, 6);  // Source MAC
      0042CD 8D 02            [24] 1005 	mov	ar2,r5
      0042CF 8E 03            [24] 1006 	mov	ar3,r6
      0042D1 8F 04            [24] 1007 	mov	ar4,r7
      0042D3 90 09 B5         [24] 1008 	mov	dptr,#___memcpy_PARM_2
      0042D6 EA               [12] 1009 	mov	a,r2
      0042D7 F0               [24] 1010 	movx	@dptr,a
      0042D8 EB               [12] 1011 	mov	a,r3
      0042D9 A3               [24] 1012 	inc	dptr
      0042DA F0               [24] 1013 	movx	@dptr,a
      0042DB EC               [12] 1014 	mov	a,r4
      0042DC A3               [24] 1015 	inc	dptr
      0042DD F0               [24] 1016 	movx	@dptr,a
      0042DE 90 09 B8         [24] 1017 	mov	dptr,#___memcpy_PARM_3
      0042E1 74 06            [12] 1018 	mov	a,#0x06
      0042E3 F0               [24] 1019 	movx	@dptr,a
      0042E4 E4               [12] 1020 	clr	a
      0042E5 A3               [24] 1021 	inc	dptr
      0042E6 F0               [24] 1022 	movx	@dptr,a
      0042E7 90 03 C1         [24] 1023 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0007)
      0042EA F5 F0            [12] 1024 	mov	b,a
      0042EC C0 07            [24] 1025 	push	ar7
      0042EE C0 06            [24] 1026 	push	ar6
      0042F0 C0 05            [24] 1027 	push	ar5
      0042F2 12 4C 57         [24] 1028 	lcall	___memcpy
      0042F5 D0 05            [24] 1029 	pop	ar5
      0042F7 D0 06            [24] 1030 	pop	ar6
      0042F9 D0 07            [24] 1031 	pop	ar7
                                   1032 ;	tcp.c:51: uint8_t *ip_header = packet + ETHERNET_HEADER_SIZE;
      0042FB 74 0E            [12] 1033 	mov	a,#0x0e
      0042FD 2D               [12] 1034 	add	a, r5
      0042FE FA               [12] 1035 	mov	r2,a
      0042FF E4               [12] 1036 	clr	a
      004300 3E               [12] 1037 	addc	a, r6
      004301 FB               [12] 1038 	mov	r3,a
      004302 8F 04            [24] 1039 	mov	ar4,r7
                                   1040 ;	tcp.c:52: uint8_t *response_ip_header = data_start + ETHERNET_HEADER_SIZE;
                                   1041 ;	tcp.c:55: memcpy(response_ip_header, ip_header, IP_HEADER_SIZE);
      004304 90 09 B5         [24] 1042 	mov	dptr,#___memcpy_PARM_2
      004307 EA               [12] 1043 	mov	a,r2
      004308 F0               [24] 1044 	movx	@dptr,a
      004309 EB               [12] 1045 	mov	a,r3
      00430A A3               [24] 1046 	inc	dptr
      00430B F0               [24] 1047 	movx	@dptr,a
      00430C EC               [12] 1048 	mov	a,r4
      00430D A3               [24] 1049 	inc	dptr
      00430E F0               [24] 1050 	movx	@dptr,a
      00430F 90 09 B8         [24] 1051 	mov	dptr,#___memcpy_PARM_3
      004312 74 14            [12] 1052 	mov	a,#0x14
      004314 F0               [24] 1053 	movx	@dptr,a
      004315 E4               [12] 1054 	clr	a
      004316 A3               [24] 1055 	inc	dptr
      004317 F0               [24] 1056 	movx	@dptr,a
      004318 90 03 C9         [24] 1057 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
      00431B F5 F0            [12] 1058 	mov	b,a
      00431D C0 07            [24] 1059 	push	ar7
      00431F C0 06            [24] 1060 	push	ar6
      004321 C0 05            [24] 1061 	push	ar5
      004323 12 4C 57         [24] 1062 	lcall	___memcpy
      004326 D0 05            [24] 1063 	pop	ar5
      004328 D0 06            [24] 1064 	pop	ar6
      00432A D0 07            [24] 1065 	pop	ar7
                                   1066 ;	tcp.c:56: response_ip_header[12] = ip_header[16];  // Swap Source IP
      00432C 74 1E            [12] 1067 	mov	a,#0x1e
      00432E 2D               [12] 1068 	add	a, r5
      00432F FA               [12] 1069 	mov	r2,a
      004330 E4               [12] 1070 	clr	a
      004331 3E               [12] 1071 	addc	a, r6
      004332 FB               [12] 1072 	mov	r3,a
      004333 8F 04            [24] 1073 	mov	ar4,r7
      004335 8A 82            [24] 1074 	mov	dpl,r2
      004337 8B 83            [24] 1075 	mov	dph,r3
      004339 8C F0            [24] 1076 	mov	b,r4
      00433B 12 5B 2B         [24] 1077 	lcall	__gptrget
      00433E FA               [12] 1078 	mov	r2,a
      00433F 90 03 D5         [24] 1079 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001b)
      004342 75 F0 00         [24] 1080 	mov	b,#0x00
      004345 EA               [12] 1081 	mov	a,r2
      004346 12 4C F3         [24] 1082 	lcall	__gptrput
                                   1083 ;	tcp.c:57: response_ip_header[13] = ip_header[17];
      004349 74 1F            [12] 1084 	mov	a,#0x1f
      00434B 2D               [12] 1085 	add	a, r5
      00434C FA               [12] 1086 	mov	r2,a
      00434D E4               [12] 1087 	clr	a
      00434E 3E               [12] 1088 	addc	a, r6
      00434F FB               [12] 1089 	mov	r3,a
      004350 8F 04            [24] 1090 	mov	ar4,r7
      004352 8A 82            [24] 1091 	mov	dpl,r2
      004354 8B 83            [24] 1092 	mov	dph,r3
      004356 8C F0            [24] 1093 	mov	b,r4
      004358 12 5B 2B         [24] 1094 	lcall	__gptrget
      00435B FA               [12] 1095 	mov	r2,a
      00435C 90 03 D6         [24] 1096 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001c)
      00435F 75 F0 00         [24] 1097 	mov	b,#0x00
      004362 EA               [12] 1098 	mov	a,r2
      004363 12 4C F3         [24] 1099 	lcall	__gptrput
                                   1100 ;	tcp.c:58: response_ip_header[14] = ip_header[18];
      004366 74 20            [12] 1101 	mov	a,#0x20
      004368 2D               [12] 1102 	add	a, r5
      004369 FA               [12] 1103 	mov	r2,a
      00436A E4               [12] 1104 	clr	a
      00436B 3E               [12] 1105 	addc	a, r6
      00436C FB               [12] 1106 	mov	r3,a
      00436D 8F 04            [24] 1107 	mov	ar4,r7
      00436F 8A 82            [24] 1108 	mov	dpl,r2
      004371 8B 83            [24] 1109 	mov	dph,r3
      004373 8C F0            [24] 1110 	mov	b,r4
      004375 12 5B 2B         [24] 1111 	lcall	__gptrget
      004378 FA               [12] 1112 	mov	r2,a
      004379 90 03 D7         [24] 1113 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001d)
      00437C 75 F0 00         [24] 1114 	mov	b,#0x00
      00437F EA               [12] 1115 	mov	a,r2
      004380 12 4C F3         [24] 1116 	lcall	__gptrput
                                   1117 ;	tcp.c:59: response_ip_header[15] = ip_header[19];
      004383 74 21            [12] 1118 	mov	a,#0x21
      004385 2D               [12] 1119 	add	a, r5
      004386 FA               [12] 1120 	mov	r2,a
      004387 E4               [12] 1121 	clr	a
      004388 3E               [12] 1122 	addc	a, r6
      004389 FB               [12] 1123 	mov	r3,a
      00438A 8F 04            [24] 1124 	mov	ar4,r7
      00438C 8A 82            [24] 1125 	mov	dpl,r2
      00438E 8B 83            [24] 1126 	mov	dph,r3
      004390 8C F0            [24] 1127 	mov	b,r4
      004392 12 5B 2B         [24] 1128 	lcall	__gptrget
      004395 FA               [12] 1129 	mov	r2,a
      004396 90 03 D8         [24] 1130 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001e)
      004399 75 F0 00         [24] 1131 	mov	b,#0x00
      00439C EA               [12] 1132 	mov	a,r2
      00439D 12 4C F3         [24] 1133 	lcall	__gptrput
                                   1134 ;	tcp.c:60: response_ip_header[16] = ip_header[12];  // Swap Destination IP
      0043A0 74 1A            [12] 1135 	mov	a,#0x1a
      0043A2 2D               [12] 1136 	add	a, r5
      0043A3 FA               [12] 1137 	mov	r2,a
      0043A4 E4               [12] 1138 	clr	a
      0043A5 3E               [12] 1139 	addc	a, r6
      0043A6 FB               [12] 1140 	mov	r3,a
      0043A7 8F 04            [24] 1141 	mov	ar4,r7
      0043A9 8A 82            [24] 1142 	mov	dpl,r2
      0043AB 8B 83            [24] 1143 	mov	dph,r3
      0043AD 8C F0            [24] 1144 	mov	b,r4
      0043AF 12 5B 2B         [24] 1145 	lcall	__gptrget
      0043B2 FA               [12] 1146 	mov	r2,a
      0043B3 90 03 D9         [24] 1147 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001f)
      0043B6 75 F0 00         [24] 1148 	mov	b,#0x00
      0043B9 EA               [12] 1149 	mov	a,r2
      0043BA 12 4C F3         [24] 1150 	lcall	__gptrput
                                   1151 ;	tcp.c:61: response_ip_header[17] = ip_header[13];
      0043BD 74 1B            [12] 1152 	mov	a,#0x1b
      0043BF 2D               [12] 1153 	add	a, r5
      0043C0 FA               [12] 1154 	mov	r2,a
      0043C1 E4               [12] 1155 	clr	a
      0043C2 3E               [12] 1156 	addc	a, r6
      0043C3 FB               [12] 1157 	mov	r3,a
      0043C4 8F 04            [24] 1158 	mov	ar4,r7
      0043C6 8A 82            [24] 1159 	mov	dpl,r2
      0043C8 8B 83            [24] 1160 	mov	dph,r3
      0043CA 8C F0            [24] 1161 	mov	b,r4
      0043CC 12 5B 2B         [24] 1162 	lcall	__gptrget
      0043CF FA               [12] 1163 	mov	r2,a
      0043D0 90 03 DA         [24] 1164 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0020)
      0043D3 75 F0 00         [24] 1165 	mov	b,#0x00
      0043D6 EA               [12] 1166 	mov	a,r2
      0043D7 12 4C F3         [24] 1167 	lcall	__gptrput
                                   1168 ;	tcp.c:62: response_ip_header[18] = ip_header[14];
      0043DA 74 1C            [12] 1169 	mov	a,#0x1c
      0043DC 2D               [12] 1170 	add	a, r5
      0043DD FA               [12] 1171 	mov	r2,a
      0043DE E4               [12] 1172 	clr	a
      0043DF 3E               [12] 1173 	addc	a, r6
      0043E0 FB               [12] 1174 	mov	r3,a
      0043E1 8F 04            [24] 1175 	mov	ar4,r7
      0043E3 8A 82            [24] 1176 	mov	dpl,r2
      0043E5 8B 83            [24] 1177 	mov	dph,r3
      0043E7 8C F0            [24] 1178 	mov	b,r4
      0043E9 12 5B 2B         [24] 1179 	lcall	__gptrget
      0043EC FA               [12] 1180 	mov	r2,a
      0043ED 90 03 DB         [24] 1181 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0021)
      0043F0 75 F0 00         [24] 1182 	mov	b,#0x00
      0043F3 EA               [12] 1183 	mov	a,r2
      0043F4 12 4C F3         [24] 1184 	lcall	__gptrput
                                   1185 ;	tcp.c:63: response_ip_header[19] = ip_header[15];
      0043F7 74 1D            [12] 1186 	mov	a,#0x1d
      0043F9 2D               [12] 1187 	add	a, r5
      0043FA FA               [12] 1188 	mov	r2,a
      0043FB E4               [12] 1189 	clr	a
      0043FC 3E               [12] 1190 	addc	a, r6
      0043FD FB               [12] 1191 	mov	r3,a
      0043FE 8F 04            [24] 1192 	mov	ar4,r7
      004400 8A 82            [24] 1193 	mov	dpl,r2
      004402 8B 83            [24] 1194 	mov	dph,r3
      004404 8C F0            [24] 1195 	mov	b,r4
      004406 12 5B 2B         [24] 1196 	lcall	__gptrget
      004409 FA               [12] 1197 	mov	r2,a
      00440A 90 03 DC         [24] 1198 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0022)
      00440D 75 F0 00         [24] 1199 	mov	b,#0x00
      004410 EA               [12] 1200 	mov	a,r2
      004411 12 4C F3         [24] 1201 	lcall	__gptrput
                                   1202 ;	tcp.c:64: response_ip_header[10] = 0;              // Clear checksum
      004414 90 03 D3         [24] 1203 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0019)
      004417 E4               [12] 1204 	clr	a
      004418 12 4C F3         [24] 1205 	lcall	__gptrput
                                   1206 ;	tcp.c:65: response_ip_header[11] = 0;
      00441B 90 03 D4         [24] 1207 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001a)
      00441E F5 F0            [12] 1208 	mov	b,a
      004420 12 4C F3         [24] 1209 	lcall	__gptrput
                                   1210 ;	tcp.c:68: uint8_t *tcp_header = packet + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
      004423 74 22            [12] 1211 	mov	a,#0x22
      004425 2D               [12] 1212 	add	a, r5
      004426 F5 14            [12] 1213 	mov	_process_tcp_packet_sloc0_1_0,a
      004428 E4               [12] 1214 	clr	a
      004429 3E               [12] 1215 	addc	a, r6
      00442A F5 15            [12] 1216 	mov	(_process_tcp_packet_sloc0_1_0 + 1),a
      00442C 8F 16            [24] 1217 	mov	(_process_tcp_packet_sloc0_1_0 + 2),r7
                                   1218 ;	tcp.c:69: uint8_t *response_tcp_header = data_start + ETHERNET_HEADER_SIZE + IP_HEADER_SIZE;
                                   1219 ;	tcp.c:72: memcpy(response_tcp_header, tcp_header, TCP_HEADER_SIZE);
      00442E A8 14            [24] 1220 	mov	r0,_process_tcp_packet_sloc0_1_0
      004430 A9 15            [24] 1221 	mov	r1,(_process_tcp_packet_sloc0_1_0 + 1)
      004432 AC 16            [24] 1222 	mov	r4,(_process_tcp_packet_sloc0_1_0 + 2)
      004434 90 09 B5         [24] 1223 	mov	dptr,#___memcpy_PARM_2
      004437 E8               [12] 1224 	mov	a,r0
      004438 F0               [24] 1225 	movx	@dptr,a
      004439 E9               [12] 1226 	mov	a,r1
      00443A A3               [24] 1227 	inc	dptr
      00443B F0               [24] 1228 	movx	@dptr,a
      00443C EC               [12] 1229 	mov	a,r4
      00443D A3               [24] 1230 	inc	dptr
      00443E F0               [24] 1231 	movx	@dptr,a
      00443F 90 09 B8         [24] 1232 	mov	dptr,#___memcpy_PARM_3
      004442 74 14            [12] 1233 	mov	a,#0x14
      004444 F0               [24] 1234 	movx	@dptr,a
      004445 E4               [12] 1235 	clr	a
      004446 A3               [24] 1236 	inc	dptr
      004447 F0               [24] 1237 	movx	@dptr,a
      004448 90 03 DD         [24] 1238 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0023)
      00444B F5 F0            [12] 1239 	mov	b,a
      00444D C0 07            [24] 1240 	push	ar7
      00444F C0 06            [24] 1241 	push	ar6
      004451 C0 05            [24] 1242 	push	ar5
      004453 12 4C 57         [24] 1243 	lcall	___memcpy
      004456 D0 05            [24] 1244 	pop	ar5
      004458 D0 06            [24] 1245 	pop	ar6
      00445A D0 07            [24] 1246 	pop	ar7
                                   1247 ;	tcp.c:73: response_tcp_header[0] = tcp_header[2];  // Swap Source Port
      00445C 74 24            [12] 1248 	mov	a,#0x24
      00445E 2D               [12] 1249 	add	a, r5
      00445F FA               [12] 1250 	mov	r2,a
      004460 E4               [12] 1251 	clr	a
      004461 3E               [12] 1252 	addc	a, r6
      004462 FB               [12] 1253 	mov	r3,a
      004463 8F 04            [24] 1254 	mov	ar4,r7
      004465 8A 82            [24] 1255 	mov	dpl,r2
      004467 8B 83            [24] 1256 	mov	dph,r3
      004469 8C F0            [24] 1257 	mov	b,r4
      00446B 12 5B 2B         [24] 1258 	lcall	__gptrget
      00446E FA               [12] 1259 	mov	r2,a
      00446F 90 03 DD         [24] 1260 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0023)
      004472 75 F0 00         [24] 1261 	mov	b,#0x00
      004475 EA               [12] 1262 	mov	a,r2
      004476 12 4C F3         [24] 1263 	lcall	__gptrput
                                   1264 ;	tcp.c:74: response_tcp_header[1] = tcp_header[3];
      004479 74 25            [12] 1265 	mov	a,#0x25
      00447B 2D               [12] 1266 	add	a, r5
      00447C FA               [12] 1267 	mov	r2,a
      00447D E4               [12] 1268 	clr	a
      00447E 3E               [12] 1269 	addc	a, r6
      00447F FB               [12] 1270 	mov	r3,a
      004480 8F 04            [24] 1271 	mov	ar4,r7
      004482 8A 82            [24] 1272 	mov	dpl,r2
      004484 8B 83            [24] 1273 	mov	dph,r3
      004486 8C F0            [24] 1274 	mov	b,r4
      004488 12 5B 2B         [24] 1275 	lcall	__gptrget
      00448B FA               [12] 1276 	mov	r2,a
      00448C 90 03 DE         [24] 1277 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0024)
      00448F 75 F0 00         [24] 1278 	mov	b,#0x00
      004492 EA               [12] 1279 	mov	a,r2
      004493 12 4C F3         [24] 1280 	lcall	__gptrput
                                   1281 ;	tcp.c:75: response_tcp_header[2] = tcp_header[0];  // Swap Destination Port
      004496 85 14 82         [24] 1282 	mov	dpl,_process_tcp_packet_sloc0_1_0
      004499 85 15 83         [24] 1283 	mov	dph,(_process_tcp_packet_sloc0_1_0 + 1)
      00449C 85 16 F0         [24] 1284 	mov	b,(_process_tcp_packet_sloc0_1_0 + 2)
      00449F 12 5B 2B         [24] 1285 	lcall	__gptrget
      0044A2 FC               [12] 1286 	mov	r4,a
      0044A3 90 03 DF         [24] 1287 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0025)
      0044A6 75 F0 00         [24] 1288 	mov	b,#0x00
      0044A9 EC               [12] 1289 	mov	a,r4
      0044AA 12 4C F3         [24] 1290 	lcall	__gptrput
                                   1291 ;	tcp.c:76: response_tcp_header[3] = tcp_header[1];
      0044AD 74 23            [12] 1292 	mov	a,#0x23
      0044AF 2D               [12] 1293 	add	a, r5
      0044B0 FD               [12] 1294 	mov	r5,a
      0044B1 E4               [12] 1295 	clr	a
      0044B2 3E               [12] 1296 	addc	a, r6
      0044B3 FE               [12] 1297 	mov	r6,a
      0044B4 8D 82            [24] 1298 	mov	dpl,r5
      0044B6 8E 83            [24] 1299 	mov	dph,r6
      0044B8 8F F0            [24] 1300 	mov	b,r7
      0044BA 12 5B 2B         [24] 1301 	lcall	__gptrget
      0044BD FD               [12] 1302 	mov	r5,a
      0044BE 90 03 E0         [24] 1303 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0026)
      0044C1 75 F0 00         [24] 1304 	mov	b,#0x00
      0044C4 ED               [12] 1305 	mov	a,r5
      0044C5 12 4C F3         [24] 1306 	lcall	__gptrput
                                   1307 ;	tcp.c:81: response_tcp_header[4] = (ack_num >> 24) & 0xFF;
      0044C8 90 03 E1         [24] 1308 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0027)
      0044CB E4               [12] 1309 	clr	a
      0044CC 12 4C F3         [24] 1310 	lcall	__gptrput
                                   1311 ;	tcp.c:82: response_tcp_header[5] = (ack_num >> 16) & 0xFF;
      0044CF 90 03 E2         [24] 1312 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0028)
      0044D2 F5 F0            [12] 1313 	mov	b,a
      0044D4 12 4C F3         [24] 1314 	lcall	__gptrput
                                   1315 ;	tcp.c:83: response_tcp_header[6] = (ack_num >> 8) & 0xFF;
      0044D7 90 03 E3         [24] 1316 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0029)
      0044DA F5 F0            [12] 1317 	mov	b,a
      0044DC 12 4C F3         [24] 1318 	lcall	__gptrput
                                   1319 ;	tcp.c:84: response_tcp_header[7] = ack_num & 0xFF;
      0044DF 90 03 E4         [24] 1320 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002a)
      0044E2 F5 F0            [12] 1321 	mov	b,a
      0044E4 04               [12] 1322 	inc	a
      0044E5 12 4C F3         [24] 1323 	lcall	__gptrput
                                   1324 ;	tcp.c:86: response_tcp_header[12] = 0x50;  // SYN (0x02) + ACK (0x10)
      0044E8 90 03 E9         [24] 1325 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x002f)
      0044EB 74 50            [12] 1326 	mov	a,#0x50
      0044ED 12 4C F3         [24] 1327 	lcall	__gptrput
                                   1328 ;	tcp.c:88: response_tcp_header[13] = 0x12;  // SYN (0x02) + ACK (0x10)
      0044F0 90 03 EA         [24] 1329 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0030)
      0044F3 74 12            [12] 1330 	mov	a,#0x12
      0044F5 12 4C F3         [24] 1331 	lcall	__gptrput
                                   1332 ;	tcp.c:91: response_tcp_header[18] = 0;
      0044F8 90 03 EF         [24] 1333 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0035)
      0044FB E4               [12] 1334 	clr	a
      0044FC 12 4C F3         [24] 1335 	lcall	__gptrput
                                   1336 ;	tcp.c:92: response_tcp_header[19] = 0;
      0044FF 90 03 F0         [24] 1337 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0036)
      004502 F5 F0            [12] 1338 	mov	b,a
      004504 12 4C F3         [24] 1339 	lcall	__gptrput
                                   1340 ;	tcp.c:98: response_ip_header[2] = (ip_total_length >> 8) & 0xFF;
      004507 90 03 CB         [24] 1341 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0011)
      00450A F5 F0            [12] 1342 	mov	b,a
      00450C 12 4C F3         [24] 1343 	lcall	__gptrput
                                   1344 ;	tcp.c:99: response_ip_header[3] = ip_total_length & 0xFF;
      00450F 90 03 CC         [24] 1345 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0012)
      004512 F5 F0            [12] 1346 	mov	b,a
      004514 74 28            [12] 1347 	mov	a,#0x28
      004516 12 4C F3         [24] 1348 	lcall	__gptrput
                                   1349 ;	tcp.c:100: uint16_t ip_checksum = calculate_checksum(response_ip_header, IP_HEADER_SIZE);
      004519 90 03 A7         [24] 1350 	mov	dptr,#_calculate_checksum_PARM_2
      00451C 03               [12] 1351 	rr	a
      00451D F0               [24] 1352 	movx	@dptr,a
      00451E E4               [12] 1353 	clr	a
      00451F A3               [24] 1354 	inc	dptr
      004520 F0               [24] 1355 	movx	@dptr,a
      004521 90 03 C9         [24] 1356 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
      004524 F5 F0            [12] 1357 	mov	b,a
      004526 12 40 B2         [24] 1358 	lcall	_calculate_checksum
      004529 AE 82            [24] 1359 	mov	r6, dpl
      00452B AF 83            [24] 1360 	mov	r7, dph
                                   1361 ;	tcp.c:101: response_ip_header[10] = (ip_checksum >> 8) & 0xFF;
      00452D 8F 05            [24] 1362 	mov	ar5,r7
      00452F 90 03 D3         [24] 1363 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0019)
      004532 75 F0 00         [24] 1364 	mov	b,#0x00
      004535 ED               [12] 1365 	mov	a,r5
      004536 12 4C F3         [24] 1366 	lcall	__gptrput
                                   1367 ;	tcp.c:102: response_ip_header[11] = ip_checksum & 0xFF;
      004539 90 03 D4         [24] 1368 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x001a)
      00453C EE               [12] 1369 	mov	a,r6
      00453D 12 4C F3         [24] 1370 	lcall	__gptrput
                                   1371 ;	tcp.c:104: uint16_t tcp_checksum = calculate_checksum(data_start + ETHERNET_HEADER_SIZE, ip_total_length);
      004540 90 03 A7         [24] 1372 	mov	dptr,#_calculate_checksum_PARM_2
      004543 74 28            [12] 1373 	mov	a,#0x28
      004545 F0               [24] 1374 	movx	@dptr,a
      004546 E4               [12] 1375 	clr	a
      004547 A3               [24] 1376 	inc	dptr
      004548 F0               [24] 1377 	movx	@dptr,a
      004549 90 03 C9         [24] 1378 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x000f)
      00454C F5 F0            [12] 1379 	mov	b,a
      00454E 12 40 B2         [24] 1380 	lcall	_calculate_checksum
      004551 AE 82            [24] 1381 	mov	r6, dpl
      004553 AF 83            [24] 1382 	mov	r7, dph
                                   1383 ;	tcp.c:105: response_tcp_header[16] = (tcp_checksum >> 8) & 0xFF;
      004555 8F 05            [24] 1384 	mov	ar5,r7
      004557 90 03 ED         [24] 1385 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0033)
      00455A 75 F0 00         [24] 1386 	mov	b,#0x00
      00455D ED               [12] 1387 	mov	a,r5
      00455E 12 4C F3         [24] 1388 	lcall	__gptrput
                                   1389 ;	tcp.c:106: response_tcp_header[17] = tcp_checksum & 0xFF;
      004561 90 03 EE         [24] 1390 	mov	dptr,#(_process_tcp_packet_response_10000_122 + 0x0034)
      004564 EE               [12] 1391 	mov	a,r6
      004565 12 4C F3         [24] 1392 	lcall	__gptrput
                                   1393 ;	tcp.c:109: *response_size = 1 + ETHERNET_HEADER_SIZE + ip_total_length;
      004568 90 03 B4         [24] 1394 	mov	dptr,#_process_tcp_packet_PARM_3
      00456B E0               [24] 1395 	movx	a,@dptr
      00456C FD               [12] 1396 	mov	r5,a
      00456D A3               [24] 1397 	inc	dptr
      00456E E0               [24] 1398 	movx	a,@dptr
      00456F FE               [12] 1399 	mov	r6,a
      004570 A3               [24] 1400 	inc	dptr
      004571 E0               [24] 1401 	movx	a,@dptr
      004572 FF               [12] 1402 	mov	r7,a
      004573 8D 82            [24] 1403 	mov	dpl,r5
      004575 8E 83            [24] 1404 	mov	dph,r6
      004577 8F F0            [24] 1405 	mov	b,r7
      004579 74 37            [12] 1406 	mov	a,#0x37
      00457B 12 4C F3         [24] 1407 	lcall	__gptrput
      00457E A3               [24] 1408 	inc	dptr
      00457F E4               [12] 1409 	clr	a
      004580 12 4C F3         [24] 1410 	lcall	__gptrput
                                   1411 ;	tcp.c:111: return response;
      004583 90 03 BA         [24] 1412 	mov	dptr,#_process_tcp_packet_response_10000_122
      004586 F5 F0            [12] 1413 	mov	b,a
                                   1414 ;	tcp.c:112: }
      004588 22               [24] 1415 	ret
                                   1416 ;------------------------------------------------------------
                                   1417 ;Allocation info for local variables in function 'print_hexdump'
                                   1418 ;------------------------------------------------------------
                                   1419 ;size                      Allocated with name '_print_hexdump_PARM_2'
                                   1420 ;data                      Allocated with name '_print_hexdump_data_10000_130'
                                   1421 ;i                         Allocated with name '_print_hexdump_i_20000_132'
                                   1422 ;------------------------------------------------------------
                                   1423 ;	tcp.c:116: void print_hexdump(const uint8_t *data, uint16_t size) {
                                   1424 ;	-----------------------------------------
                                   1425 ;	 function print_hexdump
                                   1426 ;	-----------------------------------------
      004589                       1427 _print_hexdump:
      004589 AF F0            [24] 1428 	mov	r7,b
      00458B AE 83            [24] 1429 	mov	r6,dph
      00458D E5 82            [12] 1430 	mov	a,dpl
      00458F 90 09 99         [24] 1431 	mov	dptr,#_print_hexdump_data_10000_130
      004592 F0               [24] 1432 	movx	@dptr,a
      004593 EE               [12] 1433 	mov	a,r6
      004594 A3               [24] 1434 	inc	dptr
      004595 F0               [24] 1435 	movx	@dptr,a
      004596 EF               [12] 1436 	mov	a,r7
      004597 A3               [24] 1437 	inc	dptr
      004598 F0               [24] 1438 	movx	@dptr,a
                                   1439 ;	tcp.c:117: printf("\nHexdump (Size: %d):\n", size);
      004599 90 09 97         [24] 1440 	mov	dptr,#_print_hexdump_PARM_2
      00459C E0               [24] 1441 	movx	a,@dptr
      00459D FE               [12] 1442 	mov	r6,a
      00459E A3               [24] 1443 	inc	dptr
      00459F E0               [24] 1444 	movx	a,@dptr
      0045A0 FF               [12] 1445 	mov	r7,a
      0045A1 C0 07            [24] 1446 	push	ar7
      0045A3 C0 06            [24] 1447 	push	ar6
      0045A5 C0 06            [24] 1448 	push	ar6
      0045A7 C0 07            [24] 1449 	push	ar7
      0045A9 74 CE            [12] 1450 	mov	a,#___str_0
      0045AB C0 E0            [24] 1451 	push	acc
      0045AD 74 64            [12] 1452 	mov	a,#(___str_0 >> 8)
      0045AF C0 E0            [24] 1453 	push	acc
      0045B1 74 80            [12] 1454 	mov	a,#0x80
      0045B3 C0 E0            [24] 1455 	push	acc
      0045B5 12 51 09         [24] 1456 	lcall	_printf
      0045B8 E5 81            [12] 1457 	mov	a,sp
      0045BA 24 FB            [12] 1458 	add	a,#0xfb
      0045BC F5 81            [12] 1459 	mov	sp,a
      0045BE D0 06            [24] 1460 	pop	ar6
      0045C0 D0 07            [24] 1461 	pop	ar7
                                   1462 ;	tcp.c:118: for (uint16_t i = 0; i < size; i++) {
      0045C2 90 09 99         [24] 1463 	mov	dptr,#_print_hexdump_data_10000_130
      0045C5 E0               [24] 1464 	movx	a,@dptr
      0045C6 FB               [12] 1465 	mov	r3,a
      0045C7 A3               [24] 1466 	inc	dptr
      0045C8 E0               [24] 1467 	movx	a,@dptr
      0045C9 FC               [12] 1468 	mov	r4,a
      0045CA A3               [24] 1469 	inc	dptr
      0045CB E0               [24] 1470 	movx	a,@dptr
      0045CC FD               [12] 1471 	mov	r5,a
      0045CD 79 00            [12] 1472 	mov	r1,#0x00
      0045CF 7A 00            [12] 1473 	mov	r2,#0x00
      0045D1                       1474 00107$:
      0045D1 C3               [12] 1475 	clr	c
      0045D2 E9               [12] 1476 	mov	a,r1
      0045D3 9E               [12] 1477 	subb	a,r6
      0045D4 EA               [12] 1478 	mov	a,r2
      0045D5 9F               [12] 1479 	subb	a,r7
      0045D6 40 03            [24] 1480 	jc	00136$
      0045D8 02 46 79         [24] 1481 	ljmp	00103$
      0045DB                       1482 00136$:
                                   1483 ;	tcp.c:119: printf("%02X ", data[i]); // Print each byte in hexadecimal format
      0045DB C0 06            [24] 1484 	push	ar6
      0045DD C0 07            [24] 1485 	push	ar7
      0045DF E9               [12] 1486 	mov	a,r1
      0045E0 2B               [12] 1487 	add	a, r3
      0045E1 F8               [12] 1488 	mov	r0,a
      0045E2 EA               [12] 1489 	mov	a,r2
      0045E3 3C               [12] 1490 	addc	a, r4
      0045E4 FE               [12] 1491 	mov	r6,a
      0045E5 8D 07            [24] 1492 	mov	ar7,r5
      0045E7 88 82            [24] 1493 	mov	dpl,r0
      0045E9 8E 83            [24] 1494 	mov	dph,r6
      0045EB 8F F0            [24] 1495 	mov	b,r7
      0045ED 12 5B 2B         [24] 1496 	lcall	__gptrget
      0045F0 F8               [12] 1497 	mov	r0,a
      0045F1 7F 00            [12] 1498 	mov	r7,#0x00
      0045F3 C0 07            [24] 1499 	push	ar7
      0045F5 C0 06            [24] 1500 	push	ar6
      0045F7 C0 05            [24] 1501 	push	ar5
      0045F9 C0 04            [24] 1502 	push	ar4
      0045FB C0 03            [24] 1503 	push	ar3
      0045FD C0 02            [24] 1504 	push	ar2
      0045FF C0 01            [24] 1505 	push	ar1
      004601 C0 00            [24] 1506 	push	ar0
      004603 C0 07            [24] 1507 	push	ar7
      004605 74 E4            [12] 1508 	mov	a,#___str_1
      004607 C0 E0            [24] 1509 	push	acc
      004609 74 64            [12] 1510 	mov	a,#(___str_1 >> 8)
      00460B C0 E0            [24] 1511 	push	acc
      00460D 74 80            [12] 1512 	mov	a,#0x80
      00460F C0 E0            [24] 1513 	push	acc
      004611 12 51 09         [24] 1514 	lcall	_printf
      004614 E5 81            [12] 1515 	mov	a,sp
      004616 24 FB            [12] 1516 	add	a,#0xfb
      004618 F5 81            [12] 1517 	mov	sp,a
      00461A D0 01            [24] 1518 	pop	ar1
      00461C D0 02            [24] 1519 	pop	ar2
      00461E D0 03            [24] 1520 	pop	ar3
      004620 D0 04            [24] 1521 	pop	ar4
      004622 D0 05            [24] 1522 	pop	ar5
      004624 D0 06            [24] 1523 	pop	ar6
      004626 D0 07            [24] 1524 	pop	ar7
                                   1525 ;	tcp.c:120: if ((i + 1) % 16 == 0) {
      004628 89 06            [24] 1526 	mov	ar6,r1
      00462A 8A 07            [24] 1527 	mov	ar7,r2
      00462C 0E               [12] 1528 	inc	r6
      00462D BE 00 01         [24] 1529 	cjne	r6,#0x00,00137$
      004630 0F               [12] 1530 	inc	r7
      004631                       1531 00137$:
      004631 EE               [12] 1532 	mov	a,r6
      004632 54 0F            [12] 1533 	anl	a,#0x0f
      004634 60 06            [24] 1534 	jz	00139$
      004636 D0 07            [24] 1535 	pop	ar7
      004638 D0 06            [24] 1536 	pop	ar6
      00463A 80 35            [24] 1537 	sjmp	00108$
      00463C                       1538 00139$:
      00463C D0 07            [24] 1539 	pop	ar7
      00463E D0 06            [24] 1540 	pop	ar6
                                   1541 ;	tcp.c:121: printf("\n"); // Newline after every 16 bytes for readability
      004640 C0 07            [24] 1542 	push	ar7
      004642 C0 06            [24] 1543 	push	ar6
      004644 C0 05            [24] 1544 	push	ar5
      004646 C0 04            [24] 1545 	push	ar4
      004648 C0 03            [24] 1546 	push	ar3
      00464A C0 02            [24] 1547 	push	ar2
      00464C C0 01            [24] 1548 	push	ar1
      00464E 74 EA            [12] 1549 	mov	a,#___str_2
      004650 C0 E0            [24] 1550 	push	acc
      004652 74 64            [12] 1551 	mov	a,#(___str_2 >> 8)
      004654 C0 E0            [24] 1552 	push	acc
      004656 74 80            [12] 1553 	mov	a,#0x80
      004658 C0 E0            [24] 1554 	push	acc
      00465A 12 51 09         [24] 1555 	lcall	_printf
      00465D 15 81            [12] 1556 	dec	sp
      00465F 15 81            [12] 1557 	dec	sp
      004661 15 81            [12] 1558 	dec	sp
      004663 D0 01            [24] 1559 	pop	ar1
      004665 D0 02            [24] 1560 	pop	ar2
      004667 D0 03            [24] 1561 	pop	ar3
      004669 D0 04            [24] 1562 	pop	ar4
      00466B D0 05            [24] 1563 	pop	ar5
      00466D D0 06            [24] 1564 	pop	ar6
      00466F D0 07            [24] 1565 	pop	ar7
      004671                       1566 00108$:
                                   1567 ;	tcp.c:118: for (uint16_t i = 0; i < size; i++) {
      004671 09               [12] 1568 	inc	r1
      004672 B9 00 01         [24] 1569 	cjne	r1,#0x00,00140$
      004675 0A               [12] 1570 	inc	r2
      004676                       1571 00140$:
      004676 02 45 D1         [24] 1572 	ljmp	00107$
      004679                       1573 00103$:
                                   1574 ;	tcp.c:124: if (size % 16 != 0) {
      004679 EE               [12] 1575 	mov	a,r6
      00467A 54 0F            [12] 1576 	anl	a,#0x0f
      00467C 60 15            [24] 1577 	jz	00109$
                                   1578 ;	tcp.c:125: printf("\n"); // Final newline if not already printed
      00467E 74 EA            [12] 1579 	mov	a,#___str_2
      004680 C0 E0            [24] 1580 	push	acc
      004682 74 64            [12] 1581 	mov	a,#(___str_2 >> 8)
      004684 C0 E0            [24] 1582 	push	acc
      004686 74 80            [12] 1583 	mov	a,#0x80
      004688 C0 E0            [24] 1584 	push	acc
      00468A 12 51 09         [24] 1585 	lcall	_printf
      00468D 15 81            [12] 1586 	dec	sp
      00468F 15 81            [12] 1587 	dec	sp
      004691 15 81            [12] 1588 	dec	sp
      004693                       1589 00109$:
                                   1590 ;	tcp.c:127: }
      004693 22               [24] 1591 	ret
                                   1592 ;------------------------------------------------------------
                                   1593 ;Allocation info for local variables in function 'process_packet_from_buffer'
                                   1594 ;------------------------------------------------------------
                                   1595 ;sloc0                     Allocated with name '_process_packet_from_buffer_sloc0_1_0'
                                   1596 ;start_address             Allocated with name '_process_packet_from_buffer_start_address_10000_136'
                                   1597 ;next_packet_start         Allocated with name '_process_packet_from_buffer_next_packet_start_10001_139'
                                   1598 ;next_start_address        Allocated with name '_process_packet_from_buffer_next_start_address_10001_139'
                                   1599 ;packet_size               Allocated with name '_process_packet_from_buffer_packet_size_10001_139'
                                   1600 ;response_size             Allocated with name '_process_packet_from_buffer_response_size_10001_139'
                                   1601 ;packet_data               Allocated with name '_process_packet_from_buffer_packet_data_10002_142'
                                   1602 ;response                  Allocated with name '_process_packet_from_buffer_response_10003_145'
                                   1603 ;------------------------------------------------------------
                                   1604 ;	tcp.c:130: void process_packet_from_buffer(uint16_t start_address) {
                                   1605 ;	-----------------------------------------
                                   1606 ;	 function process_packet_from_buffer
                                   1607 ;	-----------------------------------------
      004694                       1608 _process_packet_from_buffer:
      004694 AF 83            [24] 1609 	mov	r7,dph
      004696 E5 82            [12] 1610 	mov	a,dpl
      004698 90 09 9C         [24] 1611 	mov	dptr,#_process_packet_from_buffer_start_address_10000_136
      00469B F0               [24] 1612 	movx	@dptr,a
      00469C EF               [12] 1613 	mov	a,r7
      00469D A3               [24] 1614 	inc	dptr
      00469E F0               [24] 1615 	movx	@dptr,a
                                   1616 ;	tcp.c:132: if (start_address > 0x1FFF) {
      00469F 90 09 9C         [24] 1617 	mov	dptr,#_process_packet_from_buffer_start_address_10000_136
      0046A2 E0               [24] 1618 	movx	a,@dptr
      0046A3 FE               [12] 1619 	mov	r6,a
      0046A4 A3               [24] 1620 	inc	dptr
      0046A5 E0               [24] 1621 	movx	a,@dptr
      0046A6 FF               [12] 1622 	mov	r7,a
      0046A7 8E 04            [24] 1623 	mov	ar4,r6
      0046A9 8F 05            [24] 1624 	mov	ar5,r7
      0046AB C3               [12] 1625 	clr	c
      0046AC 74 FF            [12] 1626 	mov	a,#0xff
      0046AE 9C               [12] 1627 	subb	a,r4
      0046AF 74 1F            [12] 1628 	mov	a,#0x1f
      0046B1 9D               [12] 1629 	subb	a,r5
      0046B2 50 1A            [24] 1630 	jnc	00102$
                                   1631 ;	tcp.c:133: printf("\n\rInvalid start address: %04X\n\r", start_address);
      0046B4 C0 06            [24] 1632 	push	ar6
      0046B6 C0 07            [24] 1633 	push	ar7
      0046B8 74 EC            [12] 1634 	mov	a,#___str_3
      0046BA C0 E0            [24] 1635 	push	acc
      0046BC 74 64            [12] 1636 	mov	a,#(___str_3 >> 8)
      0046BE C0 E0            [24] 1637 	push	acc
      0046C0 74 80            [12] 1638 	mov	a,#0x80
      0046C2 C0 E0            [24] 1639 	push	acc
      0046C4 12 51 09         [24] 1640 	lcall	_printf
      0046C7 E5 81            [12] 1641 	mov	a,sp
      0046C9 24 FB            [12] 1642 	add	a,#0xfb
      0046CB F5 81            [12] 1643 	mov	sp,a
                                   1644 ;	tcp.c:134: return;
      0046CD 22               [24] 1645 	ret
      0046CE                       1646 00102$:
                                   1647 ;	tcp.c:143: if (spi_buffer_read(2, start_address, next_packet_start) != 2) {
      0046CE 90 03 95         [24] 1648 	mov	dptr,#_spi_buffer_read_PARM_2
      0046D1 EE               [12] 1649 	mov	a,r6
      0046D2 F0               [24] 1650 	movx	@dptr,a
      0046D3 EF               [12] 1651 	mov	a,r7
      0046D4 A3               [24] 1652 	inc	dptr
      0046D5 F0               [24] 1653 	movx	@dptr,a
      0046D6 90 03 97         [24] 1654 	mov	dptr,#_spi_buffer_read_PARM_3
      0046D9 74 9E            [12] 1655 	mov	a,#_process_packet_from_buffer_next_packet_start_10001_139
      0046DB F0               [24] 1656 	movx	@dptr,a
      0046DC 74 09            [12] 1657 	mov	a,#(_process_packet_from_buffer_next_packet_start_10001_139 >> 8)
      0046DE A3               [24] 1658 	inc	dptr
      0046DF F0               [24] 1659 	movx	@dptr,a
      0046E0 E4               [12] 1660 	clr	a
      0046E1 A3               [24] 1661 	inc	dptr
      0046E2 F0               [24] 1662 	movx	@dptr,a
      0046E3 90 00 02         [24] 1663 	mov	dptr,#0x0002
      0046E6 C0 07            [24] 1664 	push	ar7
      0046E8 C0 06            [24] 1665 	push	ar6
      0046EA C0 05            [24] 1666 	push	ar5
      0046EC C0 04            [24] 1667 	push	ar4
      0046EE 12 3D 2D         [24] 1668 	lcall	_spi_buffer_read
      0046F1 AA 82            [24] 1669 	mov	r2, dpl
      0046F3 AB 83            [24] 1670 	mov	r3, dph
      0046F5 D0 04            [24] 1671 	pop	ar4
      0046F7 D0 05            [24] 1672 	pop	ar5
      0046F9 D0 06            [24] 1673 	pop	ar6
      0046FB D0 07            [24] 1674 	pop	ar7
      0046FD BA 02 05         [24] 1675 	cjne	r2,#0x02,00153$
      004700 BB 00 02         [24] 1676 	cjne	r3,#0x00,00153$
      004703 80 16            [24] 1677 	sjmp	00104$
      004705                       1678 00153$:
                                   1679 ;	tcp.c:144: printf("\n\rFailed to read packet start address bytes\n\r");
      004705 74 0C            [12] 1680 	mov	a,#___str_4
      004707 C0 E0            [24] 1681 	push	acc
      004709 74 65            [12] 1682 	mov	a,#(___str_4 >> 8)
      00470B C0 E0            [24] 1683 	push	acc
      00470D 74 80            [12] 1684 	mov	a,#0x80
      00470F C0 E0            [24] 1685 	push	acc
      004711 12 51 09         [24] 1686 	lcall	_printf
      004714 15 81            [12] 1687 	dec	sp
      004716 15 81            [12] 1688 	dec	sp
      004718 15 81            [12] 1689 	dec	sp
                                   1690 ;	tcp.c:145: return;
      00471A 22               [24] 1691 	ret
      00471B                       1692 00104$:
                                   1693 ;	tcp.c:149: next_start_address = ((uint16_t)next_packet_start[1] << 8) | next_packet_start[0];
      00471B 90 09 9F         [24] 1694 	mov	dptr,#(_process_packet_from_buffer_next_packet_start_10001_139 + 0x0001)
      00471E E0               [24] 1695 	movx	a,@dptr
      00471F FA               [12] 1696 	mov	r2,a
      004720 7B 00            [12] 1697 	mov	r3,#0x00
      004722 90 09 9E         [24] 1698 	mov	dptr,#_process_packet_from_buffer_next_packet_start_10001_139
      004725 E0               [24] 1699 	movx	a,@dptr
      004726 79 00            [12] 1700 	mov	r1,#0x00
      004728 42 03            [12] 1701 	orl	ar3,a
      00472A E9               [12] 1702 	mov	a,r1
      00472B 42 02            [12] 1703 	orl	ar2,a
                                   1704 ;	tcp.c:152: if (next_start_address < start_address) {
      00472D C3               [12] 1705 	clr	c
      00472E EB               [12] 1706 	mov	a,r3
      00472F 9E               [12] 1707 	subb	a,r6
      004730 EA               [12] 1708 	mov	a,r2
      004731 9F               [12] 1709 	subb	a,r7
      004732 50 1A            [24] 1710 	jnc	00106$
                                   1711 ;	tcp.c:153: printf("\n\rInvalid next start address: 0x%04X\n\r", next_start_address);
      004734 C0 03            [24] 1712 	push	ar3
      004736 C0 02            [24] 1713 	push	ar2
      004738 74 3A            [12] 1714 	mov	a,#___str_5
      00473A C0 E0            [24] 1715 	push	acc
      00473C 74 65            [12] 1716 	mov	a,#(___str_5 >> 8)
      00473E C0 E0            [24] 1717 	push	acc
      004740 74 80            [12] 1718 	mov	a,#0x80
      004742 C0 E0            [24] 1719 	push	acc
      004744 12 51 09         [24] 1720 	lcall	_printf
      004747 E5 81            [12] 1721 	mov	a,sp
      004749 24 FB            [12] 1722 	add	a,#0xfb
      00474B F5 81            [12] 1723 	mov	sp,a
                                   1724 ;	tcp.c:154: return;
      00474D 22               [24] 1725 	ret
      00474E                       1726 00106$:
                                   1727 ;	tcp.c:156: packet_size = next_start_address - (start_address+6);
      00474E 74 06            [12] 1728 	mov	a,#0x06
      004750 2C               [12] 1729 	add	a, r4
      004751 FE               [12] 1730 	mov	r6,a
      004752 E4               [12] 1731 	clr	a
      004753 3D               [12] 1732 	addc	a, r5
      004754 FF               [12] 1733 	mov	r7,a
      004755 EB               [12] 1734 	mov	a,r3
      004756 C3               [12] 1735 	clr	c
      004757 9E               [12] 1736 	subb	a,r6
      004758 FE               [12] 1737 	mov	r6,a
      004759 EA               [12] 1738 	mov	a,r2
      00475A 9F               [12] 1739 	subb	a,r7
      00475B FF               [12] 1740 	mov	r7,a
                                   1741 ;	tcp.c:159: uint8_t *packet_data = (uint8_t *)malloc(packet_size);
      00475C 8E 00            [24] 1742 	mov	ar0,r6
      00475E 8F 01            [24] 1743 	mov	ar1,r7
      004760 88 82            [24] 1744 	mov	dpl, r0
      004762 89 83            [24] 1745 	mov	dph, r1
      004764 C0 07            [24] 1746 	push	ar7
      004766 C0 06            [24] 1747 	push	ar6
      004768 C0 05            [24] 1748 	push	ar5
      00476A C0 04            [24] 1749 	push	ar4
      00476C C0 03            [24] 1750 	push	ar3
      00476E C0 02            [24] 1751 	push	ar2
      004770 12 4E 53         [24] 1752 	lcall	_malloc
      004773 A8 82            [24] 1753 	mov	r0, dpl
      004775 A9 83            [24] 1754 	mov	r1, dph
      004777 D0 02            [24] 1755 	pop	ar2
      004779 D0 03            [24] 1756 	pop	ar3
      00477B D0 04            [24] 1757 	pop	ar4
      00477D D0 05            [24] 1758 	pop	ar5
      00477F D0 06            [24] 1759 	pop	ar6
      004781 D0 07            [24] 1760 	pop	ar7
      004783 88 17            [24] 1761 	mov	_process_packet_from_buffer_sloc0_1_0,r0
      004785 89 18            [24] 1762 	mov	(_process_packet_from_buffer_sloc0_1_0 + 1),r1
      004787 75 19 00         [24] 1763 	mov	(_process_packet_from_buffer_sloc0_1_0 + 2),#0x00
                                   1764 ;	tcp.c:160: if (packet_data == NULL) {
      00478A E5 17            [12] 1765 	mov	a,_process_packet_from_buffer_sloc0_1_0
      00478C 45 18            [12] 1766 	orl	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
      00478E 70 1A            [24] 1767 	jnz	00108$
                                   1768 ;	tcp.c:161: printf("\n\rMemory allocation failed for packet size: %d\n\r", packet_size);
      004790 C0 06            [24] 1769 	push	ar6
      004792 C0 07            [24] 1770 	push	ar7
      004794 74 61            [12] 1771 	mov	a,#___str_6
      004796 C0 E0            [24] 1772 	push	acc
      004798 74 65            [12] 1773 	mov	a,#(___str_6 >> 8)
      00479A C0 E0            [24] 1774 	push	acc
      00479C 74 80            [12] 1775 	mov	a,#0x80
      00479E C0 E0            [24] 1776 	push	acc
      0047A0 12 51 09         [24] 1777 	lcall	_printf
      0047A3 E5 81            [12] 1778 	mov	a,sp
      0047A5 24 FB            [12] 1779 	add	a,#0xfb
      0047A7 F5 81            [12] 1780 	mov	sp,a
                                   1781 ;	tcp.c:162: return;
      0047A9 22               [24] 1782 	ret
      0047AA                       1783 00108$:
                                   1784 ;	tcp.c:166: if (spi_buffer_read(packet_size, start_address+6, packet_data) != packet_size) {
      0047AA 8E 00            [24] 1785 	mov	ar0,r6
      0047AC 8F 01            [24] 1786 	mov	ar1,r7
      0047AE 74 06            [12] 1787 	mov	a,#0x06
      0047B0 2C               [12] 1788 	add	a, r4
      0047B1 FC               [12] 1789 	mov	r4,a
      0047B2 E4               [12] 1790 	clr	a
      0047B3 3D               [12] 1791 	addc	a, r5
      0047B4 FD               [12] 1792 	mov	r5,a
      0047B5 90 03 95         [24] 1793 	mov	dptr,#_spi_buffer_read_PARM_2
      0047B8 EC               [12] 1794 	mov	a,r4
      0047B9 F0               [24] 1795 	movx	@dptr,a
      0047BA ED               [12] 1796 	mov	a,r5
      0047BB A3               [24] 1797 	inc	dptr
      0047BC F0               [24] 1798 	movx	@dptr,a
      0047BD 90 03 97         [24] 1799 	mov	dptr,#_spi_buffer_read_PARM_3
      0047C0 E5 17            [12] 1800 	mov	a,_process_packet_from_buffer_sloc0_1_0
      0047C2 F0               [24] 1801 	movx	@dptr,a
      0047C3 E5 18            [12] 1802 	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 1)
      0047C5 A3               [24] 1803 	inc	dptr
      0047C6 F0               [24] 1804 	movx	@dptr,a
      0047C7 E5 19            [12] 1805 	mov	a,(_process_packet_from_buffer_sloc0_1_0 + 2)
      0047C9 A3               [24] 1806 	inc	dptr
      0047CA F0               [24] 1807 	movx	@dptr,a
      0047CB 88 82            [24] 1808 	mov	dpl, r0
      0047CD 89 83            [24] 1809 	mov	dph, r1
      0047CF C0 07            [24] 1810 	push	ar7
      0047D1 C0 06            [24] 1811 	push	ar6
      0047D3 C0 03            [24] 1812 	push	ar3
      0047D5 C0 02            [24] 1813 	push	ar2
      0047D7 12 3D 2D         [24] 1814 	lcall	_spi_buffer_read
      0047DA AC 82            [24] 1815 	mov	r4, dpl
      0047DC AD 83            [24] 1816 	mov	r5, dph
      0047DE D0 02            [24] 1817 	pop	ar2
      0047E0 D0 03            [24] 1818 	pop	ar3
      0047E2 D0 06            [24] 1819 	pop	ar6
      0047E4 D0 07            [24] 1820 	pop	ar7
      0047E6 EC               [12] 1821 	mov	a,r4
      0047E7 B5 06 06         [24] 1822 	cjne	a,ar6,00156$
      0047EA ED               [12] 1823 	mov	a,r5
      0047EB B5 07 02         [24] 1824 	cjne	a,ar7,00156$
      0047EE 80 24            [24] 1825 	sjmp	00110$
      0047F0                       1826 00156$:
                                   1827 ;	tcp.c:167: printf("\n\rFailed to read packet data\n\r");
      0047F0 74 92            [12] 1828 	mov	a,#___str_7
      0047F2 C0 E0            [24] 1829 	push	acc
      0047F4 74 65            [12] 1830 	mov	a,#(___str_7 >> 8)
      0047F6 C0 E0            [24] 1831 	push	acc
      0047F8 74 80            [12] 1832 	mov	a,#0x80
      0047FA C0 E0            [24] 1833 	push	acc
      0047FC 12 51 09         [24] 1834 	lcall	_printf
      0047FF 15 81            [12] 1835 	dec	sp
      004801 15 81            [12] 1836 	dec	sp
      004803 15 81            [12] 1837 	dec	sp
                                   1838 ;	tcp.c:168: free(packet_data);
      004805 AC 17            [24] 1839 	mov	r4,_process_packet_from_buffer_sloc0_1_0
      004807 A9 18            [24] 1840 	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004809 7D 00            [12] 1841 	mov	r5,#0x00
      00480B 8C 82            [24] 1842 	mov	dpl, r4
      00480D 89 83            [24] 1843 	mov	dph, r1
      00480F 8D F0            [24] 1844 	mov	b, r5
                                   1845 ;	tcp.c:169: return;
      004811 02 4B 00         [24] 1846 	ljmp	_free
      004814                       1847 00110$:
                                   1848 ;	tcp.c:173: uint8_t *response = process_tcp_packet(packet_data, packet_size, &response_size);
      004814 90 03 B2         [24] 1849 	mov	dptr,#_process_tcp_packet_PARM_2
      004817 EE               [12] 1850 	mov	a,r6
      004818 F0               [24] 1851 	movx	@dptr,a
      004819 EF               [12] 1852 	mov	a,r7
      00481A A3               [24] 1853 	inc	dptr
      00481B F0               [24] 1854 	movx	@dptr,a
      00481C 90 03 B4         [24] 1855 	mov	dptr,#_process_tcp_packet_PARM_3
      00481F 74 A0            [12] 1856 	mov	a,#_process_packet_from_buffer_response_size_10001_139
      004821 F0               [24] 1857 	movx	@dptr,a
      004822 74 09            [12] 1858 	mov	a,#(_process_packet_from_buffer_response_size_10001_139 >> 8)
      004824 A3               [24] 1859 	inc	dptr
      004825 F0               [24] 1860 	movx	@dptr,a
      004826 E4               [12] 1861 	clr	a
      004827 A3               [24] 1862 	inc	dptr
      004828 F0               [24] 1863 	movx	@dptr,a
      004829 85 17 82         [24] 1864 	mov	dpl, _process_packet_from_buffer_sloc0_1_0
      00482C 85 18 83         [24] 1865 	mov	dph, (_process_packet_from_buffer_sloc0_1_0 + 1)
      00482F 85 19 F0         [24] 1866 	mov	b, (_process_packet_from_buffer_sloc0_1_0 + 2)
      004832 C0 07            [24] 1867 	push	ar7
      004834 C0 06            [24] 1868 	push	ar6
      004836 C0 03            [24] 1869 	push	ar3
      004838 C0 02            [24] 1870 	push	ar2
      00483A 12 42 35         [24] 1871 	lcall	_process_tcp_packet
      00483D A9 82            [24] 1872 	mov	r1, dpl
      00483F AC 83            [24] 1873 	mov	r4, dph
      004841 AD F0            [24] 1874 	mov	r5, b
      004843 D0 02            [24] 1875 	pop	ar2
      004845 D0 03            [24] 1876 	pop	ar3
      004847 D0 06            [24] 1877 	pop	ar6
      004849 D0 07            [24] 1878 	pop	ar7
                                   1879 ;	tcp.c:176: if (response != NULL) {
      00484B E9               [12] 1880 	mov	a,r1
      00484C 4C               [12] 1881 	orl	a,r4
      00484D 70 03            [24] 1882 	jnz	00157$
      00484F 02 49 08         [24] 1883 	ljmp	00112$
      004852                       1884 00157$:
                                   1885 ;	tcp.c:177: printf("\nProcessed response data:\n");
      004852 C0 03            [24] 1886 	push	ar3
      004854 C0 02            [24] 1887 	push	ar2
      004856 C0 07            [24] 1888 	push	ar7
      004858 C0 06            [24] 1889 	push	ar6
      00485A C0 05            [24] 1890 	push	ar5
      00485C C0 04            [24] 1891 	push	ar4
      00485E C0 03            [24] 1892 	push	ar3
      004860 C0 02            [24] 1893 	push	ar2
      004862 C0 01            [24] 1894 	push	ar1
      004864 74 B1            [12] 1895 	mov	a,#___str_8
      004866 C0 E0            [24] 1896 	push	acc
      004868 74 65            [12] 1897 	mov	a,#(___str_8 >> 8)
      00486A C0 E0            [24] 1898 	push	acc
      00486C 74 80            [12] 1899 	mov	a,#0x80
      00486E C0 E0            [24] 1900 	push	acc
      004870 12 51 09         [24] 1901 	lcall	_printf
      004873 15 81            [12] 1902 	dec	sp
      004875 15 81            [12] 1903 	dec	sp
      004877 15 81            [12] 1904 	dec	sp
      004879 D0 01            [24] 1905 	pop	ar1
      00487B D0 02            [24] 1906 	pop	ar2
      00487D D0 03            [24] 1907 	pop	ar3
      00487F D0 04            [24] 1908 	pop	ar4
      004881 D0 05            [24] 1909 	pop	ar5
      004883 D0 06            [24] 1910 	pop	ar6
      004885 D0 07            [24] 1911 	pop	ar7
                                   1912 ;	tcp.c:178: print_hexdump(response, response_size);
      004887 90 09 A0         [24] 1913 	mov	dptr,#_process_packet_from_buffer_response_size_10001_139
      00488A E0               [24] 1914 	movx	a,@dptr
      00488B F8               [12] 1915 	mov	r0,a
      00488C A3               [24] 1916 	inc	dptr
      00488D E0               [24] 1917 	movx	a,@dptr
      00488E FB               [12] 1918 	mov	r3,a
      00488F 90 09 97         [24] 1919 	mov	dptr,#_print_hexdump_PARM_2
      004892 E8               [12] 1920 	mov	a,r0
      004893 F0               [24] 1921 	movx	@dptr,a
      004894 EB               [12] 1922 	mov	a,r3
      004895 A3               [24] 1923 	inc	dptr
      004896 F0               [24] 1924 	movx	@dptr,a
      004897 89 82            [24] 1925 	mov	dpl, r1
      004899 8C 83            [24] 1926 	mov	dph, r4
      00489B 8D F0            [24] 1927 	mov	b, r5
      00489D C0 07            [24] 1928 	push	ar7
      00489F C0 06            [24] 1929 	push	ar6
      0048A1 C0 05            [24] 1930 	push	ar5
      0048A3 C0 04            [24] 1931 	push	ar4
      0048A5 C0 03            [24] 1932 	push	ar3
      0048A7 C0 02            [24] 1933 	push	ar2
      0048A9 C0 01            [24] 1934 	push	ar1
      0048AB 12 45 89         [24] 1935 	lcall	_print_hexdump
      0048AE D0 01            [24] 1936 	pop	ar1
      0048B0 D0 02            [24] 1937 	pop	ar2
      0048B2 D0 03            [24] 1938 	pop	ar3
      0048B4 D0 04            [24] 1939 	pop	ar4
      0048B6 D0 05            [24] 1940 	pop	ar5
      0048B8 D0 06            [24] 1941 	pop	ar6
      0048BA D0 07            [24] 1942 	pop	ar7
                                   1943 ;	tcp.c:179: transmit_tcp_packet(response, response_size);
      0048BC 90 09 A0         [24] 1944 	mov	dptr,#_process_packet_from_buffer_response_size_10001_139
      0048BF E0               [24] 1945 	movx	a,@dptr
      0048C0 FA               [12] 1946 	mov	r2,a
      0048C1 A3               [24] 1947 	inc	dptr
      0048C2 E0               [24] 1948 	movx	a,@dptr
      0048C3 FB               [12] 1949 	mov	r3,a
      0048C4 90 09 A2         [24] 1950 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0048C7 EA               [12] 1951 	mov	a,r2
      0048C8 F0               [24] 1952 	movx	@dptr,a
      0048C9 EB               [12] 1953 	mov	a,r3
      0048CA A3               [24] 1954 	inc	dptr
      0048CB F0               [24] 1955 	movx	@dptr,a
      0048CC 89 82            [24] 1956 	mov	dpl, r1
      0048CE 8C 83            [24] 1957 	mov	dph, r4
      0048D0 8D F0            [24] 1958 	mov	b, r5
      0048D2 C0 07            [24] 1959 	push	ar7
      0048D4 C0 06            [24] 1960 	push	ar6
      0048D6 C0 05            [24] 1961 	push	ar5
      0048D8 C0 04            [24] 1962 	push	ar4
      0048DA C0 03            [24] 1963 	push	ar3
      0048DC C0 02            [24] 1964 	push	ar2
      0048DE C0 01            [24] 1965 	push	ar1
      0048E0 12 49 79         [24] 1966 	lcall	_transmit_tcp_packet
      0048E3 D0 01            [24] 1967 	pop	ar1
      0048E5 D0 02            [24] 1968 	pop	ar2
      0048E7 D0 03            [24] 1969 	pop	ar3
      0048E9 D0 04            [24] 1970 	pop	ar4
      0048EB D0 05            [24] 1971 	pop	ar5
                                   1972 ;	tcp.c:180: free(response); // Free response memory if allocated dynamically
      0048ED 89 82            [24] 1973 	mov	dpl, r1
      0048EF 8C 83            [24] 1974 	mov	dph, r4
      0048F1 8D F0            [24] 1975 	mov	b, r5
      0048F3 C0 03            [24] 1976 	push	ar3
      0048F5 C0 02            [24] 1977 	push	ar2
      0048F7 12 4B 00         [24] 1978 	lcall	_free
      0048FA D0 02            [24] 1979 	pop	ar2
      0048FC D0 03            [24] 1980 	pop	ar3
      0048FE D0 06            [24] 1981 	pop	ar6
      004900 D0 07            [24] 1982 	pop	ar7
      004902 D0 02            [24] 1983 	pop	ar2
      004904 D0 03            [24] 1984 	pop	ar3
      004906 80 25            [24] 1985 	sjmp	00113$
      004908                       1986 00112$:
                                   1987 ;	tcp.c:182: printf("\nNo response generated by TCP packet processing.\n");
      004908 C0 07            [24] 1988 	push	ar7
      00490A C0 06            [24] 1989 	push	ar6
      00490C C0 03            [24] 1990 	push	ar3
      00490E C0 02            [24] 1991 	push	ar2
      004910 74 CC            [12] 1992 	mov	a,#___str_9
      004912 C0 E0            [24] 1993 	push	acc
      004914 74 65            [12] 1994 	mov	a,#(___str_9 >> 8)
      004916 C0 E0            [24] 1995 	push	acc
      004918 74 80            [12] 1996 	mov	a,#0x80
      00491A C0 E0            [24] 1997 	push	acc
      00491C 12 51 09         [24] 1998 	lcall	_printf
      00491F 15 81            [12] 1999 	dec	sp
      004921 15 81            [12] 2000 	dec	sp
      004923 15 81            [12] 2001 	dec	sp
      004925 D0 02            [24] 2002 	pop	ar2
      004927 D0 03            [24] 2003 	pop	ar3
      004929 D0 06            [24] 2004 	pop	ar6
      00492B D0 07            [24] 2005 	pop	ar7
      00492D                       2006 00113$:
                                   2007 ;	tcp.c:186: free(packet_data);
      00492D AC 17            [24] 2008 	mov	r4,_process_packet_from_buffer_sloc0_1_0
      00492F A9 18            [24] 2009 	mov	r1,(_process_packet_from_buffer_sloc0_1_0 + 1)
      004931 7D 00            [12] 2010 	mov	r5,#0x00
      004933 8C 82            [24] 2011 	mov	dpl, r4
      004935 89 83            [24] 2012 	mov	dph, r1
      004937 8D F0            [24] 2013 	mov	b, r5
      004939 C0 07            [24] 2014 	push	ar7
      00493B C0 06            [24] 2015 	push	ar6
      00493D C0 03            [24] 2016 	push	ar3
      00493F C0 02            [24] 2017 	push	ar2
      004941 12 4B 00         [24] 2018 	lcall	_free
      004944 D0 02            [24] 2019 	pop	ar2
      004946 D0 03            [24] 2020 	pop	ar3
      004948 D0 06            [24] 2021 	pop	ar6
      00494A D0 07            [24] 2022 	pop	ar7
                                   2023 ;	tcp.c:189: packet_size, start_address, next_start_address - 1);
      00494C 1B               [12] 2024 	dec	r3
      00494D BB FF 01         [24] 2025 	cjne	r3,#0xff,00158$
      004950 1A               [12] 2026 	dec	r2
      004951                       2027 00158$:
                                   2028 ;	tcp.c:188: printf("\n\rSuccessfully processed packet of size %d from 0x%04X to 0x%04X\n\r",
      004951 C0 03            [24] 2029 	push	ar3
      004953 C0 02            [24] 2030 	push	ar2
      004955 90 09 9C         [24] 2031 	mov	dptr,#_process_packet_from_buffer_start_address_10000_136
      004958 E0               [24] 2032 	movx	a,@dptr
      004959 C0 E0            [24] 2033 	push	acc
      00495B A3               [24] 2034 	inc	dptr
      00495C E0               [24] 2035 	movx	a,@dptr
      00495D C0 E0            [24] 2036 	push	acc
      00495F C0 06            [24] 2037 	push	ar6
      004961 C0 07            [24] 2038 	push	ar7
      004963 74 FE            [12] 2039 	mov	a,#___str_10
      004965 C0 E0            [24] 2040 	push	acc
      004967 74 65            [12] 2041 	mov	a,#(___str_10 >> 8)
      004969 C0 E0            [24] 2042 	push	acc
      00496B 74 80            [12] 2043 	mov	a,#0x80
      00496D C0 E0            [24] 2044 	push	acc
      00496F 12 51 09         [24] 2045 	lcall	_printf
      004972 E5 81            [12] 2046 	mov	a,sp
      004974 24 F7            [12] 2047 	add	a,#0xf7
      004976 F5 81            [12] 2048 	mov	sp,a
                                   2049 ;	tcp.c:190: }
      004978 22               [24] 2050 	ret
                                   2051 ;------------------------------------------------------------
                                   2052 ;Allocation info for local variables in function 'transmit_tcp_packet'
                                   2053 ;------------------------------------------------------------
                                   2054 ;packet_size               Allocated with name '_transmit_tcp_packet_PARM_2'
                                   2055 ;packet                    Allocated with name '_transmit_tcp_packet_packet_10000_148'
                                   2056 ;start_address             Allocated with name '_transmit_tcp_packet_start_address_10000_149'
                                   2057 ;end_address               Allocated with name '_transmit_tcp_packet_end_address_10001_151'
                                   2058 ;------------------------------------------------------------
                                   2059 ;	tcp.c:193: void transmit_tcp_packet(uint8_t *packet, uint16_t packet_size)
                                   2060 ;	-----------------------------------------
                                   2061 ;	 function transmit_tcp_packet
                                   2062 ;	-----------------------------------------
      004979                       2063 _transmit_tcp_packet:
      004979 AF F0            [24] 2064 	mov	r7,b
      00497B AE 83            [24] 2065 	mov	r6,dph
      00497D E5 82            [12] 2066 	mov	a,dpl
      00497F 90 09 A4         [24] 2067 	mov	dptr,#_transmit_tcp_packet_packet_10000_148
      004982 F0               [24] 2068 	movx	@dptr,a
      004983 EE               [12] 2069 	mov	a,r6
      004984 A3               [24] 2070 	inc	dptr
      004985 F0               [24] 2071 	movx	@dptr,a
      004986 EF               [12] 2072 	mov	a,r7
      004987 A3               [24] 2073 	inc	dptr
      004988 F0               [24] 2074 	movx	@dptr,a
                                   2075 ;	tcp.c:198: if ((start_address + packet_size - 1) > 0x1FFF) {
      004989 90 09 A2         [24] 2076 	mov	dptr,#_transmit_tcp_packet_PARM_2
      00498C E0               [24] 2077 	movx	a,@dptr
      00498D FE               [12] 2078 	mov	r6,a
      00498E A3               [24] 2079 	inc	dptr
      00498F E0               [24] 2080 	movx	a,@dptr
      004990 FF               [12] 2081 	mov	r7,a
      004991 8E 04            [24] 2082 	mov	ar4,r6
      004993 74 0C            [12] 2083 	mov	a,#0x0c
      004995 2F               [12] 2084 	add	a, r7
      004996 FD               [12] 2085 	mov	r5,a
      004997 1C               [12] 2086 	dec	r4
      004998 BC FF 01         [24] 2087 	cjne	r4,#0xff,00129$
      00499B 1D               [12] 2088 	dec	r5
      00499C                       2089 00129$:
      00499C C3               [12] 2090 	clr	c
      00499D 74 FF            [12] 2091 	mov	a,#0xff
      00499F 9C               [12] 2092 	subb	a,r4
      0049A0 74 1F            [12] 2093 	mov	a,#0x1f
      0049A2 9D               [12] 2094 	subb	a,r5
      0049A3 50 16            [24] 2095 	jnc	00102$
                                   2096 ;	tcp.c:199: printf("\nInvalid Buffer Size. Buffer exceeds valid address range.\n");
      0049A5 74 41            [12] 2097 	mov	a,#___str_11
      0049A7 C0 E0            [24] 2098 	push	acc
      0049A9 74 66            [12] 2099 	mov	a,#(___str_11 >> 8)
      0049AB C0 E0            [24] 2100 	push	acc
      0049AD 74 80            [12] 2101 	mov	a,#0x80
      0049AF C0 E0            [24] 2102 	push	acc
      0049B1 12 51 09         [24] 2103 	lcall	_printf
      0049B4 15 81            [12] 2104 	dec	sp
      0049B6 15 81            [12] 2105 	dec	sp
      0049B8 15 81            [12] 2106 	dec	sp
                                   2107 ;	tcp.c:200: return;
      0049BA 22               [24] 2108 	ret
      0049BB                       2109 00102$:
                                   2110 ;	tcp.c:202: uint16_t end_address = start_address + packet_size - 1;
      0049BB 8E 04            [24] 2111 	mov	ar4,r6
      0049BD 74 0C            [12] 2112 	mov	a,#0x0c
      0049BF 2F               [12] 2113 	add	a, r7
      0049C0 FD               [12] 2114 	mov	r5,a
      0049C1 1C               [12] 2115 	dec	r4
      0049C2 BC FF 01         [24] 2116 	cjne	r4,#0xff,00131$
      0049C5 1D               [12] 2117 	dec	r5
      0049C6                       2118 00131$:
                                   2119 ;	tcp.c:203: spi_buffer_write(packet_size, start_address, packet);
      0049C6 90 09 A4         [24] 2120 	mov	dptr,#_transmit_tcp_packet_packet_10000_148
      0049C9 E0               [24] 2121 	movx	a,@dptr
      0049CA F9               [12] 2122 	mov	r1,a
      0049CB A3               [24] 2123 	inc	dptr
      0049CC E0               [24] 2124 	movx	a,@dptr
      0049CD FA               [12] 2125 	mov	r2,a
      0049CE A3               [24] 2126 	inc	dptr
      0049CF E0               [24] 2127 	movx	a,@dptr
      0049D0 FB               [12] 2128 	mov	r3,a
      0049D1 90 03 9E         [24] 2129 	mov	dptr,#_spi_buffer_write_PARM_2
      0049D4 E4               [12] 2130 	clr	a
      0049D5 F0               [24] 2131 	movx	@dptr,a
      0049D6 74 0C            [12] 2132 	mov	a,#0x0c
      0049D8 A3               [24] 2133 	inc	dptr
      0049D9 F0               [24] 2134 	movx	@dptr,a
      0049DA 90 03 A0         [24] 2135 	mov	dptr,#_spi_buffer_write_PARM_3
      0049DD E9               [12] 2136 	mov	a,r1
      0049DE F0               [24] 2137 	movx	@dptr,a
      0049DF EA               [12] 2138 	mov	a,r2
      0049E0 A3               [24] 2139 	inc	dptr
      0049E1 F0               [24] 2140 	movx	@dptr,a
      0049E2 EB               [12] 2141 	mov	a,r3
      0049E3 A3               [24] 2142 	inc	dptr
      0049E4 F0               [24] 2143 	movx	@dptr,a
      0049E5 8E 82            [24] 2144 	mov	dpl, r6
      0049E7 8F 83            [24] 2145 	mov	dph, r7
      0049E9 C0 05            [24] 2146 	push	ar5
      0049EB C0 04            [24] 2147 	push	ar4
      0049ED 12 3F 06         [24] 2148 	lcall	_spi_buffer_write
      0049F0 D0 04            [24] 2149 	pop	ar4
      0049F2 D0 05            [24] 2150 	pop	ar5
                                   2151 ;	tcp.c:206: enc28j60_set_transmit_pointers(start_address, end_address);
      0049F4 90 01 06         [24] 2152 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0049F7 EC               [12] 2153 	mov	a,r4
      0049F8 F0               [24] 2154 	movx	@dptr,a
      0049F9 ED               [12] 2155 	mov	a,r5
      0049FA A3               [24] 2156 	inc	dptr
      0049FB F0               [24] 2157 	movx	@dptr,a
      0049FC 90 0C 00         [24] 2158 	mov	dptr,#0x0c00
      0049FF 12 21 15         [24] 2159 	lcall	_enc28j60_set_transmit_pointers
                                   2160 ;	tcp.c:209: enc28j60_start_transmission();
      004A02 12 20 F4         [24] 2161 	lcall	_enc28j60_start_transmission
                                   2162 ;	tcp.c:212: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      004A05 90 01 F4         [24] 2163 	mov	dptr,#0x01f4
      004A08 12 21 8C         [24] 2164 	lcall	_wait_for_transmission_complete
      004A0B E5 82            [12] 2165 	mov	a, dpl
      004A0D 60 38            [24] 2166 	jz	00107$
                                   2167 ;	tcp.c:214: if (enc28j60_transmission_successful()) {
      004A0F 12 21 EF         [24] 2168 	lcall	_enc28j60_transmission_successful
      004A12 E5 82            [12] 2169 	mov	a, dpl
      004A14 85 83 F0         [24] 2170 	mov	b, dph
      004A17 45 F0            [12] 2171 	orl	a,b
      004A19 60 16            [24] 2172 	jz	00104$
                                   2173 ;	tcp.c:215: printf("TCP request sent successfully.\n\r");
      004A1B 74 7C            [12] 2174 	mov	a,#___str_12
      004A1D C0 E0            [24] 2175 	push	acc
      004A1F 74 66            [12] 2176 	mov	a,#(___str_12 >> 8)
      004A21 C0 E0            [24] 2177 	push	acc
      004A23 74 80            [12] 2178 	mov	a,#0x80
      004A25 C0 E0            [24] 2179 	push	acc
      004A27 12 51 09         [24] 2180 	lcall	_printf
      004A2A 15 81            [12] 2181 	dec	sp
      004A2C 15 81            [12] 2182 	dec	sp
      004A2E 15 81            [12] 2183 	dec	sp
      004A30 22               [24] 2184 	ret
      004A31                       2185 00104$:
                                   2186 ;	tcp.c:217: printf("TCP transmission failed. Check error flags.\n\r");
      004A31 74 9D            [12] 2187 	mov	a,#___str_13
      004A33 C0 E0            [24] 2188 	push	acc
      004A35 74 66            [12] 2189 	mov	a,#(___str_13 >> 8)
      004A37 C0 E0            [24] 2190 	push	acc
      004A39 74 80            [12] 2191 	mov	a,#0x80
      004A3B C0 E0            [24] 2192 	push	acc
      004A3D 12 51 09         [24] 2193 	lcall	_printf
      004A40 15 81            [12] 2194 	dec	sp
      004A42 15 81            [12] 2195 	dec	sp
      004A44 15 81            [12] 2196 	dec	sp
      004A46 22               [24] 2197 	ret
      004A47                       2198 00107$:
                                   2199 ;	tcp.c:221: "Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      004A47 74 CB            [12] 2200 	mov	a,#___str_14
      004A49 C0 E0            [24] 2201 	push	acc
      004A4B 74 66            [12] 2202 	mov	a,#(___str_14 >> 8)
      004A4D C0 E0            [24] 2203 	push	acc
      004A4F 74 80            [12] 2204 	mov	a,#0x80
      004A51 C0 E0            [24] 2205 	push	acc
      004A53 12 51 09         [24] 2206 	lcall	_printf
      004A56 15 81            [12] 2207 	dec	sp
      004A58 15 81            [12] 2208 	dec	sp
      004A5A 15 81            [12] 2209 	dec	sp
                                   2210 ;	tcp.c:223: }
      004A5C 22               [24] 2211 	ret
                                   2212 	.area CSEG    (CODE)
                                   2213 	.area CONST   (CODE)
                                   2214 	.area CONST   (CODE)
      0064CE                       2215 ___str_0:
      0064CE 0A                    2216 	.db 0x0a
      0064CF 48 65 78 64 75 6D 70  2217 	.ascii "Hexdump (Size: %d):"
             20 28 53 69 7A 65 3A
             20 25 64 29 3A
      0064E2 0A                    2218 	.db 0x0a
      0064E3 00                    2219 	.db 0x00
                                   2220 	.area CSEG    (CODE)
                                   2221 	.area CONST   (CODE)
      0064E4                       2222 ___str_1:
      0064E4 25 30 32 58 20        2223 	.ascii "%02X "
      0064E9 00                    2224 	.db 0x00
                                   2225 	.area CSEG    (CODE)
                                   2226 	.area CONST   (CODE)
      0064EA                       2227 ___str_2:
      0064EA 0A                    2228 	.db 0x0a
      0064EB 00                    2229 	.db 0x00
                                   2230 	.area CSEG    (CODE)
                                   2231 	.area CONST   (CODE)
      0064EC                       2232 ___str_3:
      0064EC 0A                    2233 	.db 0x0a
      0064ED 0D                    2234 	.db 0x0d
      0064EE 49 6E 76 61 6C 69 64  2235 	.ascii "Invalid start address: %04X"
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             3A 20 25 30 34 58
      006509 0A                    2236 	.db 0x0a
      00650A 0D                    2237 	.db 0x0d
      00650B 00                    2238 	.db 0x00
                                   2239 	.area CSEG    (CODE)
                                   2240 	.area CONST   (CODE)
      00650C                       2241 ___str_4:
      00650C 0A                    2242 	.db 0x0a
      00650D 0D                    2243 	.db 0x0d
      00650E 46 61 69 6C 65 64 20  2244 	.ascii "Failed to read packet start address bytes"
             74 6F 20 72 65 61 64
             20 70 61 63 6B 65 74
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             20 62 79 74 65 73
      006537 0A                    2245 	.db 0x0a
      006538 0D                    2246 	.db 0x0d
      006539 00                    2247 	.db 0x00
                                   2248 	.area CSEG    (CODE)
                                   2249 	.area CONST   (CODE)
      00653A                       2250 ___str_5:
      00653A 0A                    2251 	.db 0x0a
      00653B 0D                    2252 	.db 0x0d
      00653C 49 6E 76 61 6C 69 64  2253 	.ascii "Invalid next start address: 0x%04X"
             20 6E 65 78 74 20 73
             74 61 72 74 20 61 64
             64 72 65 73 73 3A 20
             30 78 25 30 34 58
      00655E 0A                    2254 	.db 0x0a
      00655F 0D                    2255 	.db 0x0d
      006560 00                    2256 	.db 0x00
                                   2257 	.area CSEG    (CODE)
                                   2258 	.area CONST   (CODE)
      006561                       2259 ___str_6:
      006561 0A                    2260 	.db 0x0a
      006562 0D                    2261 	.db 0x0d
      006563 4D 65 6D 6F 72 79 20  2262 	.ascii "Memory allocation failed for packet size: %d"
             61 6C 6C 6F 63 61 74
             69 6F 6E 20 66 61 69
             6C 65 64 20 66 6F 72
             20 70 61 63 6B 65 74
             20 73 69 7A 65 3A 20
             25 64
      00658F 0A                    2263 	.db 0x0a
      006590 0D                    2264 	.db 0x0d
      006591 00                    2265 	.db 0x00
                                   2266 	.area CSEG    (CODE)
                                   2267 	.area CONST   (CODE)
      006592                       2268 ___str_7:
      006592 0A                    2269 	.db 0x0a
      006593 0D                    2270 	.db 0x0d
      006594 46 61 69 6C 65 64 20  2271 	.ascii "Failed to read packet data"
             74 6F 20 72 65 61 64
             20 70 61 63 6B 65 74
             20 64 61 74 61
      0065AE 0A                    2272 	.db 0x0a
      0065AF 0D                    2273 	.db 0x0d
      0065B0 00                    2274 	.db 0x00
                                   2275 	.area CSEG    (CODE)
                                   2276 	.area CONST   (CODE)
      0065B1                       2277 ___str_8:
      0065B1 0A                    2278 	.db 0x0a
      0065B2 50 72 6F 63 65 73 73  2279 	.ascii "Processed response data:"
             65 64 20 72 65 73 70
             6F 6E 73 65 20 64 61
             74 61 3A
      0065CA 0A                    2280 	.db 0x0a
      0065CB 00                    2281 	.db 0x00
                                   2282 	.area CSEG    (CODE)
                                   2283 	.area CONST   (CODE)
      0065CC                       2284 ___str_9:
      0065CC 0A                    2285 	.db 0x0a
      0065CD 4E 6F 20 72 65 73 70  2286 	.ascii "No response generated by TCP packet processing."
             6F 6E 73 65 20 67 65
             6E 65 72 61 74 65 64
             20 62 79 20 54 43 50
             20 70 61 63 6B 65 74
             20 70 72 6F 63 65 73
             73 69 6E 67 2E
      0065FC 0A                    2287 	.db 0x0a
      0065FD 00                    2288 	.db 0x00
                                   2289 	.area CSEG    (CODE)
                                   2290 	.area CONST   (CODE)
      0065FE                       2291 ___str_10:
      0065FE 0A                    2292 	.db 0x0a
      0065FF 0D                    2293 	.db 0x0d
      006600 53 75 63 63 65 73 73  2294 	.ascii "Successfully processed packet of size %d from 0x%04X to 0x%0"
             66 75 6C 6C 79 20 70
             72 6F 63 65 73 73 65
             64 20 70 61 63 6B 65
             74 20 6F 66 20 73 69
             7A 65 20 25 64 20 66
             72 6F 6D 20 30 78 25
             30 34 58 20 74 6F 20
             30 78 25 30
      00663C 34 58                 2295 	.ascii "4X"
      00663E 0A                    2296 	.db 0x0a
      00663F 0D                    2297 	.db 0x0d
      006640 00                    2298 	.db 0x00
                                   2299 	.area CSEG    (CODE)
                                   2300 	.area CONST   (CODE)
      006641                       2301 ___str_11:
      006641 0A                    2302 	.db 0x0a
      006642 49 6E 76 61 6C 69 64  2303 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      00667A 0A                    2304 	.db 0x0a
      00667B 00                    2305 	.db 0x00
                                   2306 	.area CSEG    (CODE)
                                   2307 	.area CONST   (CODE)
      00667C                       2308 ___str_12:
      00667C 54 43 50 20 72 65 71  2309 	.ascii "TCP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      00669A 0A                    2310 	.db 0x0a
      00669B 0D                    2311 	.db 0x0d
      00669C 00                    2312 	.db 0x00
                                   2313 	.area CSEG    (CODE)
                                   2314 	.area CONST   (CODE)
      00669D                       2315 ___str_13:
      00669D 54 43 50 20 74 72 61  2316 	.ascii "TCP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      0066C8 0A                    2317 	.db 0x0a
      0066C9 0D                    2318 	.db 0x0d
      0066CA 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      0066CB                       2322 ___str_14:
      0066CB 54 72 61 6E 73 6D 69  2323 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      006707 74 6C 79 2E           2324 	.ascii "tly."
      00670B 0A                    2325 	.db 0x0a
      00670C 0D                    2326 	.db 0x0d
      00670D 00                    2327 	.db 0x00
                                   2328 	.area CSEG    (CODE)
                                   2329 	.area XINIT   (CODE)
                                   2330 	.area CABS    (ABS,CODE)

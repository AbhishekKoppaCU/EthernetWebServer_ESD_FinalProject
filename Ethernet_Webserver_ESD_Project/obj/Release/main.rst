                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _get_user_buffer_size
                                     13 	.globl _hex_to_int
                                     14 	.globl _packetLoop
                                     15 	.globl _update_ERXRDPT
                                     16 	.globl _ENC_pkt_count
                                     17 	.globl _enc_init
                                     18 	.globl _send_arp_request
                                     19 	.globl _spi_control_write
                                     20 	.globl _eth_spi_read
                                     21 	.globl _phy_spi_write
                                     22 	.globl _phy_spi_read
                                     23 	.globl _spi_buffer_write
                                     24 	.globl _spi_buffer_read
                                     25 	.globl _mac_spi_read
                                     26 	.globl _enc_reset
                                     27 	.globl _configure_SPI
                                     28 	.globl _process_packet_from_buffer
                                     29 	.globl _transmit_tcp_packet
                                     30 	.globl _process_tcp_packet
                                     31 	.globl _memcmp
                                     32 	.globl _free
                                     33 	.globl _malloc
                                     34 	.globl _printf_tiny
                                     35 	.globl _putchar
                                     36 	.globl _getchar
                                     37 	.globl _printf
                                     38 	.globl _TF1
                                     39 	.globl _TR1
                                     40 	.globl _TF0
                                     41 	.globl _TR0
                                     42 	.globl _IE1
                                     43 	.globl _IT1
                                     44 	.globl _IE0
                                     45 	.globl _IT0
                                     46 	.globl _SM0
                                     47 	.globl _SM1
                                     48 	.globl _SM2
                                     49 	.globl _REN
                                     50 	.globl _TB8
                                     51 	.globl _RB8
                                     52 	.globl _TI
                                     53 	.globl _RI
                                     54 	.globl _CY
                                     55 	.globl _AC
                                     56 	.globl _F0
                                     57 	.globl _RS1
                                     58 	.globl _RS0
                                     59 	.globl _OV
                                     60 	.globl _F1
                                     61 	.globl _P
                                     62 	.globl _RD
                                     63 	.globl _WR
                                     64 	.globl _T1
                                     65 	.globl _T0
                                     66 	.globl _INT1
                                     67 	.globl _INT0
                                     68 	.globl _TXD0
                                     69 	.globl _TXD
                                     70 	.globl _RXD0
                                     71 	.globl _RXD
                                     72 	.globl _P3_7
                                     73 	.globl _P3_6
                                     74 	.globl _P3_5
                                     75 	.globl _P3_4
                                     76 	.globl _P3_3
                                     77 	.globl _P3_2
                                     78 	.globl _P3_1
                                     79 	.globl _P3_0
                                     80 	.globl _P2_7
                                     81 	.globl _P2_6
                                     82 	.globl _P2_5
                                     83 	.globl _P2_4
                                     84 	.globl _P2_3
                                     85 	.globl _P2_2
                                     86 	.globl _P2_1
                                     87 	.globl _P2_0
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _P0_7
                                     97 	.globl _P0_6
                                     98 	.globl _P0_5
                                     99 	.globl _P0_4
                                    100 	.globl _P0_3
                                    101 	.globl _P0_2
                                    102 	.globl _P0_1
                                    103 	.globl _P0_0
                                    104 	.globl _PS
                                    105 	.globl _PT1
                                    106 	.globl _PX1
                                    107 	.globl _PT0
                                    108 	.globl _PX0
                                    109 	.globl _EA
                                    110 	.globl _ES
                                    111 	.globl _ET1
                                    112 	.globl _EX1
                                    113 	.globl _ET0
                                    114 	.globl _EX0
                                    115 	.globl _BREG_F7
                                    116 	.globl _BREG_F6
                                    117 	.globl _BREG_F5
                                    118 	.globl _BREG_F4
                                    119 	.globl _BREG_F3
                                    120 	.globl _BREG_F2
                                    121 	.globl _BREG_F1
                                    122 	.globl _BREG_F0
                                    123 	.globl _P5_7
                                    124 	.globl _P5_6
                                    125 	.globl _P5_5
                                    126 	.globl _P5_4
                                    127 	.globl _P5_3
                                    128 	.globl _P5_2
                                    129 	.globl _P5_1
                                    130 	.globl _P5_0
                                    131 	.globl _P4_7
                                    132 	.globl _P4_6
                                    133 	.globl _P4_5
                                    134 	.globl _P4_4
                                    135 	.globl _P4_3
                                    136 	.globl _P4_2
                                    137 	.globl _P4_1
                                    138 	.globl _P4_0
                                    139 	.globl _PX0L
                                    140 	.globl _PT0L
                                    141 	.globl _PX1L
                                    142 	.globl _PT1L
                                    143 	.globl _PSL
                                    144 	.globl _PT2L
                                    145 	.globl _PPCL
                                    146 	.globl _EC
                                    147 	.globl _CCF0
                                    148 	.globl _CCF1
                                    149 	.globl _CCF2
                                    150 	.globl _CCF3
                                    151 	.globl _CCF4
                                    152 	.globl _CR
                                    153 	.globl _CF
                                    154 	.globl _TF2
                                    155 	.globl _EXF2
                                    156 	.globl _RCLK
                                    157 	.globl _TCLK
                                    158 	.globl _EXEN2
                                    159 	.globl _TR2
                                    160 	.globl _C_T2
                                    161 	.globl _CP_RL2
                                    162 	.globl _T2CON_7
                                    163 	.globl _T2CON_6
                                    164 	.globl _T2CON_5
                                    165 	.globl _T2CON_4
                                    166 	.globl _T2CON_3
                                    167 	.globl _T2CON_2
                                    168 	.globl _T2CON_1
                                    169 	.globl _T2CON_0
                                    170 	.globl _PT2
                                    171 	.globl _ET2
                                    172 	.globl _TMOD
                                    173 	.globl _TL1
                                    174 	.globl _TL0
                                    175 	.globl _TH1
                                    176 	.globl _TH0
                                    177 	.globl _TCON
                                    178 	.globl _SP
                                    179 	.globl _SCON
                                    180 	.globl _SBUF0
                                    181 	.globl _SBUF
                                    182 	.globl _PSW
                                    183 	.globl _PCON
                                    184 	.globl _P3
                                    185 	.globl _P2
                                    186 	.globl _P1
                                    187 	.globl _P0
                                    188 	.globl _IP
                                    189 	.globl _IE
                                    190 	.globl _DP0L
                                    191 	.globl _DPL
                                    192 	.globl _DP0H
                                    193 	.globl _DPH
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _EECON
                                    197 	.globl _KBF
                                    198 	.globl _KBE
                                    199 	.globl _KBLS
                                    200 	.globl _BRL
                                    201 	.globl _BDRCON
                                    202 	.globl _T2MOD
                                    203 	.globl _SPDAT
                                    204 	.globl _SPSTA
                                    205 	.globl _SPCON
                                    206 	.globl _SADEN
                                    207 	.globl _SADDR
                                    208 	.globl _WDTPRG
                                    209 	.globl _WDTRST
                                    210 	.globl _P5
                                    211 	.globl _P4
                                    212 	.globl _IPH1
                                    213 	.globl _IPL1
                                    214 	.globl _IPH0
                                    215 	.globl _IPL0
                                    216 	.globl _IEN1
                                    217 	.globl _IEN0
                                    218 	.globl _CMOD
                                    219 	.globl _CL
                                    220 	.globl _CH
                                    221 	.globl _CCON
                                    222 	.globl _CCAPM4
                                    223 	.globl _CCAPM3
                                    224 	.globl _CCAPM2
                                    225 	.globl _CCAPM1
                                    226 	.globl _CCAPM0
                                    227 	.globl _CCAP4L
                                    228 	.globl _CCAP3L
                                    229 	.globl _CCAP2L
                                    230 	.globl _CCAP1L
                                    231 	.globl _CCAP0L
                                    232 	.globl _CCAP4H
                                    233 	.globl _CCAP3H
                                    234 	.globl _CCAP2H
                                    235 	.globl _CCAP1H
                                    236 	.globl _CCAP0H
                                    237 	.globl _CKCON1
                                    238 	.globl _CKCON0
                                    239 	.globl _CKRL
                                    240 	.globl _AUXR1
                                    241 	.globl _AUXR
                                    242 	.globl _TH2
                                    243 	.globl _TL2
                                    244 	.globl _RCAP2H
                                    245 	.globl _RCAP2L
                                    246 	.globl _T2CON
                                    247 	.globl _target_ip
                                    248 	.globl _device_ip
                                    249 	.globl _target_mac
                                    250 	.globl _device_mac
                                    251 ;--------------------------------------------------------
                                    252 ; special function registers
                                    253 ;--------------------------------------------------------
                                    254 	.area RSEG    (ABS,DATA)
      000000                        255 	.org 0x0000
                           0000C8   256 _T2CON	=	0x00c8
                           0000CA   257 _RCAP2L	=	0x00ca
                           0000CB   258 _RCAP2H	=	0x00cb
                           0000CC   259 _TL2	=	0x00cc
                           0000CD   260 _TH2	=	0x00cd
                           00008E   261 _AUXR	=	0x008e
                           0000A2   262 _AUXR1	=	0x00a2
                           000097   263 _CKRL	=	0x0097
                           00008F   264 _CKCON0	=	0x008f
                           0000AF   265 _CKCON1	=	0x00af
                           0000FA   266 _CCAP0H	=	0x00fa
                           0000FB   267 _CCAP1H	=	0x00fb
                           0000FC   268 _CCAP2H	=	0x00fc
                           0000FD   269 _CCAP3H	=	0x00fd
                           0000FE   270 _CCAP4H	=	0x00fe
                           0000EA   271 _CCAP0L	=	0x00ea
                           0000EB   272 _CCAP1L	=	0x00eb
                           0000EC   273 _CCAP2L	=	0x00ec
                           0000ED   274 _CCAP3L	=	0x00ed
                           0000EE   275 _CCAP4L	=	0x00ee
                           0000DA   276 _CCAPM0	=	0x00da
                           0000DB   277 _CCAPM1	=	0x00db
                           0000DC   278 _CCAPM2	=	0x00dc
                           0000DD   279 _CCAPM3	=	0x00dd
                           0000DE   280 _CCAPM4	=	0x00de
                           0000D8   281 _CCON	=	0x00d8
                           0000F9   282 _CH	=	0x00f9
                           0000E9   283 _CL	=	0x00e9
                           0000D9   284 _CMOD	=	0x00d9
                           0000A8   285 _IEN0	=	0x00a8
                           0000B1   286 _IEN1	=	0x00b1
                           0000B8   287 _IPL0	=	0x00b8
                           0000B7   288 _IPH0	=	0x00b7
                           0000B2   289 _IPL1	=	0x00b2
                           0000B3   290 _IPH1	=	0x00b3
                           0000C0   291 _P4	=	0x00c0
                           0000E8   292 _P5	=	0x00e8
                           0000A6   293 _WDTRST	=	0x00a6
                           0000A7   294 _WDTPRG	=	0x00a7
                           0000A9   295 _SADDR	=	0x00a9
                           0000B9   296 _SADEN	=	0x00b9
                           0000C3   297 _SPCON	=	0x00c3
                           0000C4   298 _SPSTA	=	0x00c4
                           0000C5   299 _SPDAT	=	0x00c5
                           0000C9   300 _T2MOD	=	0x00c9
                           00009B   301 _BDRCON	=	0x009b
                           00009A   302 _BRL	=	0x009a
                           00009C   303 _KBLS	=	0x009c
                           00009D   304 _KBE	=	0x009d
                           00009E   305 _KBF	=	0x009e
                           0000D2   306 _EECON	=	0x00d2
                           0000E0   307 _ACC	=	0x00e0
                           0000F0   308 _B	=	0x00f0
                           000083   309 _DPH	=	0x0083
                           000083   310 _DP0H	=	0x0083
                           000082   311 _DPL	=	0x0082
                           000082   312 _DP0L	=	0x0082
                           0000A8   313 _IE	=	0x00a8
                           0000B8   314 _IP	=	0x00b8
                           000080   315 _P0	=	0x0080
                           000090   316 _P1	=	0x0090
                           0000A0   317 _P2	=	0x00a0
                           0000B0   318 _P3	=	0x00b0
                           000087   319 _PCON	=	0x0087
                           0000D0   320 _PSW	=	0x00d0
                           000099   321 _SBUF	=	0x0099
                           000099   322 _SBUF0	=	0x0099
                           000098   323 _SCON	=	0x0098
                           000081   324 _SP	=	0x0081
                           000088   325 _TCON	=	0x0088
                           00008C   326 _TH0	=	0x008c
                           00008D   327 _TH1	=	0x008d
                           00008A   328 _TL0	=	0x008a
                           00008B   329 _TL1	=	0x008b
                           000089   330 _TMOD	=	0x0089
                                    331 ;--------------------------------------------------------
                                    332 ; special function bits
                                    333 ;--------------------------------------------------------
                                    334 	.area RSEG    (ABS,DATA)
      000000                        335 	.org 0x0000
                           0000AD   336 _ET2	=	0x00ad
                           0000BD   337 _PT2	=	0x00bd
                           0000C8   338 _T2CON_0	=	0x00c8
                           0000C9   339 _T2CON_1	=	0x00c9
                           0000CA   340 _T2CON_2	=	0x00ca
                           0000CB   341 _T2CON_3	=	0x00cb
                           0000CC   342 _T2CON_4	=	0x00cc
                           0000CD   343 _T2CON_5	=	0x00cd
                           0000CE   344 _T2CON_6	=	0x00ce
                           0000CF   345 _T2CON_7	=	0x00cf
                           0000C8   346 _CP_RL2	=	0x00c8
                           0000C9   347 _C_T2	=	0x00c9
                           0000CA   348 _TR2	=	0x00ca
                           0000CB   349 _EXEN2	=	0x00cb
                           0000CC   350 _TCLK	=	0x00cc
                           0000CD   351 _RCLK	=	0x00cd
                           0000CE   352 _EXF2	=	0x00ce
                           0000CF   353 _TF2	=	0x00cf
                           0000DF   354 _CF	=	0x00df
                           0000DE   355 _CR	=	0x00de
                           0000DC   356 _CCF4	=	0x00dc
                           0000DB   357 _CCF3	=	0x00db
                           0000DA   358 _CCF2	=	0x00da
                           0000D9   359 _CCF1	=	0x00d9
                           0000D8   360 _CCF0	=	0x00d8
                           0000AE   361 _EC	=	0x00ae
                           0000BE   362 _PPCL	=	0x00be
                           0000BD   363 _PT2L	=	0x00bd
                           0000BC   364 _PSL	=	0x00bc
                           0000BB   365 _PT1L	=	0x00bb
                           0000BA   366 _PX1L	=	0x00ba
                           0000B9   367 _PT0L	=	0x00b9
                           0000B8   368 _PX0L	=	0x00b8
                           0000C0   369 _P4_0	=	0x00c0
                           0000C1   370 _P4_1	=	0x00c1
                           0000C2   371 _P4_2	=	0x00c2
                           0000C3   372 _P4_3	=	0x00c3
                           0000C4   373 _P4_4	=	0x00c4
                           0000C5   374 _P4_5	=	0x00c5
                           0000C6   375 _P4_6	=	0x00c6
                           0000C7   376 _P4_7	=	0x00c7
                           0000E8   377 _P5_0	=	0x00e8
                           0000E9   378 _P5_1	=	0x00e9
                           0000EA   379 _P5_2	=	0x00ea
                           0000EB   380 _P5_3	=	0x00eb
                           0000EC   381 _P5_4	=	0x00ec
                           0000ED   382 _P5_5	=	0x00ed
                           0000EE   383 _P5_6	=	0x00ee
                           0000EF   384 _P5_7	=	0x00ef
                           0000F0   385 _BREG_F0	=	0x00f0
                           0000F1   386 _BREG_F1	=	0x00f1
                           0000F2   387 _BREG_F2	=	0x00f2
                           0000F3   388 _BREG_F3	=	0x00f3
                           0000F4   389 _BREG_F4	=	0x00f4
                           0000F5   390 _BREG_F5	=	0x00f5
                           0000F6   391 _BREG_F6	=	0x00f6
                           0000F7   392 _BREG_F7	=	0x00f7
                           0000A8   393 _EX0	=	0x00a8
                           0000A9   394 _ET0	=	0x00a9
                           0000AA   395 _EX1	=	0x00aa
                           0000AB   396 _ET1	=	0x00ab
                           0000AC   397 _ES	=	0x00ac
                           0000AF   398 _EA	=	0x00af
                           0000B8   399 _PX0	=	0x00b8
                           0000B9   400 _PT0	=	0x00b9
                           0000BA   401 _PX1	=	0x00ba
                           0000BB   402 _PT1	=	0x00bb
                           0000BC   403 _PS	=	0x00bc
                           000080   404 _P0_0	=	0x0080
                           000081   405 _P0_1	=	0x0081
                           000082   406 _P0_2	=	0x0082
                           000083   407 _P0_3	=	0x0083
                           000084   408 _P0_4	=	0x0084
                           000085   409 _P0_5	=	0x0085
                           000086   410 _P0_6	=	0x0086
                           000087   411 _P0_7	=	0x0087
                           000090   412 _P1_0	=	0x0090
                           000091   413 _P1_1	=	0x0091
                           000092   414 _P1_2	=	0x0092
                           000093   415 _P1_3	=	0x0093
                           000094   416 _P1_4	=	0x0094
                           000095   417 _P1_5	=	0x0095
                           000096   418 _P1_6	=	0x0096
                           000097   419 _P1_7	=	0x0097
                           0000A0   420 _P2_0	=	0x00a0
                           0000A1   421 _P2_1	=	0x00a1
                           0000A2   422 _P2_2	=	0x00a2
                           0000A3   423 _P2_3	=	0x00a3
                           0000A4   424 _P2_4	=	0x00a4
                           0000A5   425 _P2_5	=	0x00a5
                           0000A6   426 _P2_6	=	0x00a6
                           0000A7   427 _P2_7	=	0x00a7
                           0000B0   428 _P3_0	=	0x00b0
                           0000B1   429 _P3_1	=	0x00b1
                           0000B2   430 _P3_2	=	0x00b2
                           0000B3   431 _P3_3	=	0x00b3
                           0000B4   432 _P3_4	=	0x00b4
                           0000B5   433 _P3_5	=	0x00b5
                           0000B6   434 _P3_6	=	0x00b6
                           0000B7   435 _P3_7	=	0x00b7
                           0000B0   436 _RXD	=	0x00b0
                           0000B0   437 _RXD0	=	0x00b0
                           0000B1   438 _TXD	=	0x00b1
                           0000B1   439 _TXD0	=	0x00b1
                           0000B2   440 _INT0	=	0x00b2
                           0000B3   441 _INT1	=	0x00b3
                           0000B4   442 _T0	=	0x00b4
                           0000B5   443 _T1	=	0x00b5
                           0000B6   444 _WR	=	0x00b6
                           0000B7   445 _RD	=	0x00b7
                           0000D0   446 _P	=	0x00d0
                           0000D1   447 _F1	=	0x00d1
                           0000D2   448 _OV	=	0x00d2
                           0000D3   449 _RS0	=	0x00d3
                           0000D4   450 _RS1	=	0x00d4
                           0000D5   451 _F0	=	0x00d5
                           0000D6   452 _AC	=	0x00d6
                           0000D7   453 _CY	=	0x00d7
                           000098   454 _RI	=	0x0098
                           000099   455 _TI	=	0x0099
                           00009A   456 _RB8	=	0x009a
                           00009B   457 _TB8	=	0x009b
                           00009C   458 _REN	=	0x009c
                           00009D   459 _SM2	=	0x009d
                           00009E   460 _SM1	=	0x009e
                           00009F   461 _SM0	=	0x009f
                           000088   462 _IT0	=	0x0088
                           000089   463 _IE0	=	0x0089
                           00008A   464 _IT1	=	0x008a
                           00008B   465 _IE1	=	0x008b
                           00008C   466 _TR0	=	0x008c
                           00008D   467 _TF0	=	0x008d
                           00008E   468 _TR1	=	0x008e
                           00008F   469 _TF1	=	0x008f
                                    470 ;--------------------------------------------------------
                                    471 ; overlayable register banks
                                    472 ;--------------------------------------------------------
                                    473 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        474 	.ds 8
                                    475 ;--------------------------------------------------------
                                    476 ; internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area DSEG    (DATA)
      000022                        479 _main_sloc0_1_0:
      000022                        480 	.ds 2
      000024                        481 _main_sloc1_1_0:
      000024                        482 	.ds 2
      000026                        483 _main_sloc2_1_0:
      000026                        484 	.ds 2
      000028                        485 _main_sloc3_1_0:
      000028                        486 	.ds 2
      00002A                        487 _main_sloc4_1_0:
      00002A                        488 	.ds 2
      00002C                        489 _main_sloc5_1_0:
      00002C                        490 	.ds 3
                                    491 ;--------------------------------------------------------
                                    492 ; overlayable items in internal ram
                                    493 ;--------------------------------------------------------
                                    494 	.area	OSEG    (OVR,DATA)
      000045                        495 _hex_to_int_sloc0_1_0:
      000045                        496 	.ds 3
      000048                        497 _hex_to_int_sloc1_1_0:
      000048                        498 	.ds 1
      000049                        499 _hex_to_int_sloc2_1_0:
      000049                        500 	.ds 2
                                    501 ;--------------------------------------------------------
                                    502 ; Stack segment in internal ram
                                    503 ;--------------------------------------------------------
                                    504 	.area SSEG
      000055                        505 __start__stack:
      000055                        506 	.ds	1
                                    507 
                                    508 ;--------------------------------------------------------
                                    509 ; indirectly addressable internal ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area ISEG    (DATA)
                                    512 ;--------------------------------------------------------
                                    513 ; absolute internal ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area IABS    (ABS,DATA)
                                    516 	.area IABS    (ABS,DATA)
                                    517 ;--------------------------------------------------------
                                    518 ; bit data
                                    519 ;--------------------------------------------------------
                                    520 	.area BSEG    (BIT)
                                    521 ;--------------------------------------------------------
                                    522 ; paged external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area PSEG    (PAG,XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; uninitialized external ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XSEG    (XDATA)
      000156                        529 _hex_to_int_str_10000_131:
      000156                        530 	.ds 3
      000159                        531 _hex_to_int_result_10000_132:
      000159                        532 	.ds 2
      00015B                        533 _hex_to_int_ASCII_20000_133:
      00015B                        534 	.ds 2
      00015D                        535 _get_user_buffer_size_input_10000_138:
      00015D                        536 	.ds 10
      000167                        537 _main_buffer_40003_151:
      000167                        538 	.ds 256
      000267                        539 _main_buffer_40003_156:
      000267                        540 	.ds 256
      000367                        541 _main_gNextPacketPtr_60001_172:
      000367                        542 	.ds 2
      000369                        543 _main_is_tcp_for_target_60004_177:
      000369                        544 	.ds 2
      00036B                        545 _main_response_size_70004_181:
      00036B                        546 	.ds 2
                                    547 ;--------------------------------------------------------
                                    548 ; absolute external ram data
                                    549 ;--------------------------------------------------------
                                    550 	.area XABS    (ABS,XDATA)
                                    551 ;--------------------------------------------------------
                                    552 ; initialized external ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area XISEG   (XDATA)
      001407                        555 _device_mac::
      001407                        556 	.ds 6
      00140D                        557 _target_mac::
      00140D                        558 	.ds 6
      001413                        559 _device_ip::
      001413                        560 	.ds 4
      001417                        561 _target_ip::
      001417                        562 	.ds 4
                                    563 	.area HOME    (CODE)
                                    564 	.area GSINIT0 (CODE)
                                    565 	.area GSINIT1 (CODE)
                                    566 	.area GSINIT2 (CODE)
                                    567 	.area GSINIT3 (CODE)
                                    568 	.area GSINIT4 (CODE)
                                    569 	.area GSINIT5 (CODE)
                                    570 	.area GSINIT  (CODE)
                                    571 	.area GSFINAL (CODE)
                                    572 	.area CSEG    (CODE)
                                    573 ;--------------------------------------------------------
                                    574 ; interrupt vector
                                    575 ;--------------------------------------------------------
                                    576 	.area HOME    (CODE)
      002000                        577 __interrupt_vect:
      002000 02 20 37         [24]  578 	ljmp	__sdcc_gsinit_startup
      002003 02 24 95         [24]  579 	ljmp	_external_interrupt0_isr
                                    580 ;--------------------------------------------------------
                                    581 ; global & static initialisations
                                    582 ;--------------------------------------------------------
                                    583 	.area HOME    (CODE)
                                    584 	.area GSINIT  (CODE)
                                    585 	.area GSFINAL (CODE)
                                    586 	.area GSINIT  (CODE)
                                    587 	.globl __sdcc_gsinit_startup
                                    588 	.globl __sdcc_program_startup
                                    589 	.globl __start__stack
                                    590 	.globl __mcs51_genXINIT
                                    591 	.globl __mcs51_genXRAMCLEAR
                                    592 	.globl __mcs51_genRAMCLEAR
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'main'
                                    595 ;------------------------------------------------------------
                                    596 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    597 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    598 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                    599 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                    600 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                    601 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                    602 ;c                         Allocated with name '_main_c_20001_143'
                                    603 ;reg_bank                  Allocated with name '_main_reg_bank_40002_146'
                                    604 ;addr                      Allocated with name '_main_addr_40003_147'
                                    605 ;data                      Allocated with name '_main_data_40004_148'
                                    606 ;num_bytes                 Allocated with name '_main_num_bytes_40002_150'
                                    607 ;start_address             Allocated with name '_main_start_address_40003_151'
                                    608 ;buffer                    Allocated with name '_main_buffer_40003_151'
                                    609 ;i                         Allocated with name '_main_i_50003_152'
                                    610 ;num_bytes                 Allocated with name '_main_num_bytes_40002_155'
                                    611 ;start_address             Allocated with name '_main_start_address_40003_156'
                                    612 ;buffer                    Allocated with name '_main_buffer_40003_156'
                                    613 ;reg_bank                  Allocated with name '_main_reg_bank_40002_158'
                                    614 ;addr                      Allocated with name '_main_addr_40003_159'
                                    615 ;data                      Allocated with name '_main_data_40003_159'
                                    616 ;addr                      Allocated with name '_main_addr_40002_161'
                                    617 ;data                      Allocated with name '_main_data_40003_162'
                                    618 ;addr                      Allocated with name '_main_addr_40002_164'
                                    619 ;data                      Allocated with name '_main_data_40002_164'
                                    620 ;addr                      Allocated with name '_main_addr_40002_167'
                                    621 ;bank                      Allocated with name '_main_bank_40003_168'
                                    622 ;data                      Allocated with name '_main_data_40003_168'
                                    623 ;nextPacket                Allocated with name '_main_nextPacket_60001_172'
                                    624 ;byteCount                 Allocated with name '_main_byteCount_60001_172'
                                    625 ;status                    Allocated with name '_main_status_60001_172'
                                    626 ;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_172'
                                    627 ;len                       Allocated with name '_main_len_60001_172'
                                    628 ;packet_data               Allocated with name '_main_packet_data_60002_175'
                                    629 ;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_176'
                                    630 ;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_177'
                                    631 ;response_size             Allocated with name '_main_response_size_70004_181'
                                    632 ;response                  Allocated with name '_main_response_70004_181'
                                    633 ;read_econ2                Allocated with name '_main_read_econ2_60005_185'
                                    634 ;i                         Allocated with name '_main_i_50001_188'
                                    635 ;read_econ2                Allocated with name '_main_read_econ2_40002_191'
                                    636 ;------------------------------------------------------------
                                    637 ;	main.c:198: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      002097 90 03 67         [24]  638 	mov	dptr,#_main_gNextPacketPtr_60001_172
      00209A E4               [12]  639 	clr	a
      00209B F0               [24]  640 	movx	@dptr,a
      00209C A3               [24]  641 	inc	dptr
      00209D F0               [24]  642 	movx	@dptr,a
                                    643 	.area GSFINAL (CODE)
      0020A9 02 20 06         [24]  644 	ljmp	__sdcc_program_startup
                                    645 ;--------------------------------------------------------
                                    646 ; Home
                                    647 ;--------------------------------------------------------
                                    648 	.area HOME    (CODE)
                                    649 	.area HOME    (CODE)
      002006                        650 __sdcc_program_startup:
      002006 02 2D 52         [24]  651 	ljmp	_main
                                    652 ;	return from main will return to caller
                                    653 ;--------------------------------------------------------
                                    654 ; code
                                    655 ;--------------------------------------------------------
                                    656 	.area CSEG    (CODE)
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'hex_to_int'
                                    659 ;------------------------------------------------------------
                                    660 ;str                       Allocated with name '_hex_to_int_str_10000_131'
                                    661 ;i                         Allocated with name '_hex_to_int_i_10000_132'
                                    662 ;result                    Allocated with name '_hex_to_int_result_10000_132'
                                    663 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_133'
                                    664 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    665 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    666 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    667 ;------------------------------------------------------------
                                    668 ;	main.c:26: int hex_to_int(char* str)
                                    669 ;	-----------------------------------------
                                    670 ;	 function hex_to_int
                                    671 ;	-----------------------------------------
      002B14                        672 _hex_to_int:
                           000007   673 	ar7 = 0x07
                           000006   674 	ar6 = 0x06
                           000005   675 	ar5 = 0x05
                           000004   676 	ar4 = 0x04
                           000003   677 	ar3 = 0x03
                           000002   678 	ar2 = 0x02
                           000001   679 	ar1 = 0x01
                           000000   680 	ar0 = 0x00
      002B14 AF F0            [24]  681 	mov	r7,b
      002B16 AE 83            [24]  682 	mov	r6,dph
      002B18 E5 82            [12]  683 	mov	a,dpl
      002B1A 90 01 56         [24]  684 	mov	dptr,#_hex_to_int_str_10000_131
      002B1D F0               [24]  685 	movx	@dptr,a
      002B1E EE               [12]  686 	mov	a,r6
      002B1F A3               [24]  687 	inc	dptr
      002B20 F0               [24]  688 	movx	@dptr,a
      002B21 EF               [12]  689 	mov	a,r7
      002B22 A3               [24]  690 	inc	dptr
      002B23 F0               [24]  691 	movx	@dptr,a
                                    692 ;	main.c:29: int i = 0, result = 0;
      002B24 90 01 59         [24]  693 	mov	dptr,#_hex_to_int_result_10000_132
      002B27 E4               [12]  694 	clr	a
      002B28 F0               [24]  695 	movx	@dptr,a
      002B29 A3               [24]  696 	inc	dptr
      002B2A F0               [24]  697 	movx	@dptr,a
                                    698 ;	main.c:30: while(str[i] != '\0')
      002B2B 90 01 56         [24]  699 	mov	dptr,#_hex_to_int_str_10000_131
      002B2E E0               [24]  700 	movx	a,@dptr
      002B2F FD               [12]  701 	mov	r5,a
      002B30 A3               [24]  702 	inc	dptr
      002B31 E0               [24]  703 	movx	a,@dptr
      002B32 FE               [12]  704 	mov	r6,a
      002B33 A3               [24]  705 	inc	dptr
      002B34 E0               [24]  706 	movx	a,@dptr
      002B35 FF               [12]  707 	mov	r7,a
      002B36 8D 02            [24]  708 	mov	ar2,r5
      002B38 8E 03            [24]  709 	mov	ar3,r6
      002B3A 8F 04            [24]  710 	mov	ar4,r7
      002B3C 8D 45            [24]  711 	mov	_hex_to_int_sloc0_1_0,r5
      002B3E 8E 46            [24]  712 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      002B40 8F 47            [24]  713 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      002B42 78 00            [12]  714 	mov	r0,#0x00
      002B44 79 00            [12]  715 	mov	r1,#0x00
      002B46                        716 00112$:
      002B46 C0 02            [24]  717 	push	ar2
      002B48 C0 03            [24]  718 	push	ar3
      002B4A C0 04            [24]  719 	push	ar4
      002B4C E8               [12]  720 	mov	a,r0
      002B4D 25 45            [12]  721 	add	a, _hex_to_int_sloc0_1_0
      002B4F FA               [12]  722 	mov	r2,a
      002B50 E9               [12]  723 	mov	a,r1
      002B51 35 46            [12]  724 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      002B53 FB               [12]  725 	mov	r3,a
      002B54 AC 47            [24]  726 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      002B56 8A 82            [24]  727 	mov	dpl,r2
      002B58 8B 83            [24]  728 	mov	dph,r3
      002B5A 8C F0            [24]  729 	mov	b,r4
      002B5C 12 6B D1         [24]  730 	lcall	__gptrget
      002B5F F5 48            [12]  731 	mov	_hex_to_int_sloc1_1_0,a
      002B61 D0 04            [24]  732 	pop	ar4
      002B63 D0 03            [24]  733 	pop	ar3
      002B65 D0 02            [24]  734 	pop	ar2
      002B67 E5 48            [12]  735 	mov	a,_hex_to_int_sloc1_1_0
      002B69 70 03            [24]  736 	jnz	00166$
      002B6B 02 2C C2         [24]  737 	ljmp	00114$
      002B6E                        738 00166$:
                                    739 ;	main.c:32: int ASCII = (int)str[i];
      002B6E C0 02            [24]  740 	push	ar2
      002B70 C0 03            [24]  741 	push	ar3
      002B72 C0 04            [24]  742 	push	ar4
      002B74 85 48 49         [24]  743 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      002B77 75 4A 00         [24]  744 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      002B7A 90 01 5B         [24]  745 	mov	dptr,#_hex_to_int_ASCII_20000_133
      002B7D E5 49            [12]  746 	mov	a,_hex_to_int_sloc2_1_0
      002B7F F0               [24]  747 	movx	@dptr,a
      002B80 E5 4A            [12]  748 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B82 A3               [24]  749 	inc	dptr
      002B83 F0               [24]  750 	movx	@dptr,a
                                    751 ;	main.c:33: result *= 16;
      002B84 90 01 59         [24]  752 	mov	dptr,#_hex_to_int_result_10000_132
      002B87 E0               [24]  753 	movx	a,@dptr
      002B88 FB               [12]  754 	mov	r3,a
      002B89 A3               [24]  755 	inc	dptr
      002B8A E0               [24]  756 	movx	a,@dptr
      002B8B C4               [12]  757 	swap	a
      002B8C 54 F0            [12]  758 	anl	a,#0xf0
      002B8E CB               [12]  759 	xch	a,r3
      002B8F C4               [12]  760 	swap	a
      002B90 CB               [12]  761 	xch	a,r3
      002B91 6B               [12]  762 	xrl	a,r3
      002B92 CB               [12]  763 	xch	a,r3
      002B93 54 F0            [12]  764 	anl	a,#0xf0
      002B95 CB               [12]  765 	xch	a,r3
      002B96 6B               [12]  766 	xrl	a,r3
      002B97 FC               [12]  767 	mov	r4,a
      002B98 90 01 59         [24]  768 	mov	dptr,#_hex_to_int_result_10000_132
      002B9B EB               [12]  769 	mov	a,r3
      002B9C F0               [24]  770 	movx	@dptr,a
      002B9D EC               [12]  771 	mov	a,r4
      002B9E A3               [24]  772 	inc	dptr
      002B9F F0               [24]  773 	movx	@dptr,a
                                    774 ;	main.c:34: if(ASCII >= '0' && ASCII <= '9')
      002BA0 C3               [12]  775 	clr	c
      002BA1 E5 49            [12]  776 	mov	a,_hex_to_int_sloc2_1_0
      002BA3 94 30            [12]  777 	subb	a,#0x30
      002BA5 E5 4A            [12]  778 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BA7 64 80            [12]  779 	xrl	a,#0x80
      002BA9 94 80            [12]  780 	subb	a,#0x80
      002BAB D0 04            [24]  781 	pop	ar4
      002BAD D0 03            [24]  782 	pop	ar3
      002BAF D0 02            [24]  783 	pop	ar2
      002BB1 40 3F            [24]  784 	jc	00109$
      002BB3 74 39            [12]  785 	mov	a,#0x39
      002BB5 95 49            [12]  786 	subb	a,_hex_to_int_sloc2_1_0
      002BB7 74 80            [12]  787 	mov	a,#(0x00 ^ 0x80)
      002BB9 85 4A F0         [24]  788 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002BBC 63 F0 80         [24]  789 	xrl	b,#0x80
      002BBF 95 F0            [12]  790 	subb	a,b
      002BC1 40 2F            [24]  791 	jc	00109$
                                    792 ;	main.c:36: result += str[i] - 48;
      002BC3 C0 02            [24]  793 	push	ar2
      002BC5 C0 03            [24]  794 	push	ar3
      002BC7 C0 04            [24]  795 	push	ar4
      002BC9 E5 49            [12]  796 	mov	a,_hex_to_int_sloc2_1_0
      002BCB 24 D0            [12]  797 	add	a,#0xd0
      002BCD F5 49            [12]  798 	mov	_hex_to_int_sloc2_1_0,a
      002BCF E5 4A            [12]  799 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BD1 34 FF            [12]  800 	addc	a,#0xff
      002BD3 F5 4A            [12]  801 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002BD5 90 01 59         [24]  802 	mov	dptr,#_hex_to_int_result_10000_132
      002BD8 E0               [24]  803 	movx	a,@dptr
      002BD9 FA               [12]  804 	mov	r2,a
      002BDA A3               [24]  805 	inc	dptr
      002BDB E0               [24]  806 	movx	a,@dptr
      002BDC FC               [12]  807 	mov	r4,a
      002BDD 90 01 59         [24]  808 	mov	dptr,#_hex_to_int_result_10000_132
      002BE0 E5 49            [12]  809 	mov	a,_hex_to_int_sloc2_1_0
      002BE2 2A               [12]  810 	add	a, r2
      002BE3 F0               [24]  811 	movx	@dptr,a
      002BE4 E5 4A            [12]  812 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BE6 3C               [12]  813 	addc	a, r4
      002BE7 A3               [24]  814 	inc	dptr
      002BE8 F0               [24]  815 	movx	@dptr,a
      002BE9 D0 04            [24]  816 	pop	ar4
      002BEB D0 03            [24]  817 	pop	ar3
      002BED D0 02            [24]  818 	pop	ar2
      002BEF 02 2C BA         [24]  819 	ljmp	00110$
      002BF2                        820 00109$:
                                    821 ;	main.c:38: else if(ASCII >= 'A' && ASCII <= 'F')
      002BF2 90 01 5B         [24]  822 	mov	dptr,#_hex_to_int_ASCII_20000_133
      002BF5 E0               [24]  823 	movx	a,@dptr
      002BF6 F5 49            [12]  824 	mov	_hex_to_int_sloc2_1_0,a
      002BF8 A3               [24]  825 	inc	dptr
      002BF9 E0               [24]  826 	movx	a,@dptr
      002BFA F5 4A            [12]  827 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002BFC C3               [12]  828 	clr	c
      002BFD E5 49            [12]  829 	mov	a,_hex_to_int_sloc2_1_0
      002BFF 94 41            [12]  830 	subb	a,#0x41
      002C01 E5 4A            [12]  831 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C03 64 80            [12]  832 	xrl	a,#0x80
      002C05 94 80            [12]  833 	subb	a,#0x80
      002C07 40 4E            [24]  834 	jc	00105$
      002C09 74 46            [12]  835 	mov	a,#0x46
      002C0B 95 49            [12]  836 	subb	a,_hex_to_int_sloc2_1_0
      002C0D 74 80            [12]  837 	mov	a,#(0x00 ^ 0x80)
      002C0F 85 4A F0         [24]  838 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002C12 63 F0 80         [24]  839 	xrl	b,#0x80
      002C15 95 F0            [12]  840 	subb	a,b
      002C17 40 3E            [24]  841 	jc	00105$
                                    842 ;	main.c:40: result += str[i] - 55;
      002C19 C0 05            [24]  843 	push	ar5
      002C1B C0 06            [24]  844 	push	ar6
      002C1D C0 07            [24]  845 	push	ar7
      002C1F E8               [12]  846 	mov	a,r0
      002C20 2A               [12]  847 	add	a, r2
      002C21 FD               [12]  848 	mov	r5,a
      002C22 E9               [12]  849 	mov	a,r1
      002C23 3B               [12]  850 	addc	a, r3
      002C24 FE               [12]  851 	mov	r6,a
      002C25 8C 07            [24]  852 	mov	ar7,r4
      002C27 8D 82            [24]  853 	mov	dpl,r5
      002C29 8E 83            [24]  854 	mov	dph,r6
      002C2B 8F F0            [24]  855 	mov	b,r7
      002C2D 12 6B D1         [24]  856 	lcall	__gptrget
      002C30 7F 00            [12]  857 	mov	r7,#0x00
      002C32 24 C9            [12]  858 	add	a,#0xc9
      002C34 F5 49            [12]  859 	mov	_hex_to_int_sloc2_1_0,a
      002C36 EF               [12]  860 	mov	a,r7
      002C37 34 FF            [12]  861 	addc	a,#0xff
      002C39 F5 4A            [12]  862 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C3B 90 01 59         [24]  863 	mov	dptr,#_hex_to_int_result_10000_132
      002C3E E0               [24]  864 	movx	a,@dptr
      002C3F FE               [12]  865 	mov	r6,a
      002C40 A3               [24]  866 	inc	dptr
      002C41 E0               [24]  867 	movx	a,@dptr
      002C42 FF               [12]  868 	mov	r7,a
      002C43 90 01 59         [24]  869 	mov	dptr,#_hex_to_int_result_10000_132
      002C46 E5 49            [12]  870 	mov	a,_hex_to_int_sloc2_1_0
      002C48 2E               [12]  871 	add	a, r6
      002C49 F0               [24]  872 	movx	@dptr,a
      002C4A E5 4A            [12]  873 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C4C 3F               [12]  874 	addc	a, r7
      002C4D A3               [24]  875 	inc	dptr
      002C4E F0               [24]  876 	movx	@dptr,a
      002C4F D0 07            [24]  877 	pop	ar7
      002C51 D0 06            [24]  878 	pop	ar6
      002C53 D0 05            [24]  879 	pop	ar5
      002C55 80 63            [24]  880 	sjmp	00110$
      002C57                        881 00105$:
                                    882 ;	main.c:42: else if(ASCII >= 'a' && ASCII <= 'f')
      002C57 90 01 5B         [24]  883 	mov	dptr,#_hex_to_int_ASCII_20000_133
      002C5A E0               [24]  884 	movx	a,@dptr
      002C5B F5 49            [12]  885 	mov	_hex_to_int_sloc2_1_0,a
      002C5D A3               [24]  886 	inc	dptr
      002C5E E0               [24]  887 	movx	a,@dptr
      002C5F F5 4A            [12]  888 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C61 C3               [12]  889 	clr	c
      002C62 E5 49            [12]  890 	mov	a,_hex_to_int_sloc2_1_0
      002C64 94 61            [12]  891 	subb	a,#0x61
      002C66 E5 4A            [12]  892 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C68 64 80            [12]  893 	xrl	a,#0x80
      002C6A 94 80            [12]  894 	subb	a,#0x80
      002C6C 40 4C            [24]  895 	jc	00110$
      002C6E 74 66            [12]  896 	mov	a,#0x66
      002C70 95 49            [12]  897 	subb	a,_hex_to_int_sloc2_1_0
      002C72 74 80            [12]  898 	mov	a,#(0x00 ^ 0x80)
      002C74 85 4A F0         [24]  899 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002C77 63 F0 80         [24]  900 	xrl	b,#0x80
      002C7A 95 F0            [12]  901 	subb	a,b
      002C7C 40 3C            [24]  902 	jc	00110$
                                    903 ;	main.c:44: result += str[i] - 87;
      002C7E C0 02            [24]  904 	push	ar2
      002C80 C0 03            [24]  905 	push	ar3
      002C82 C0 04            [24]  906 	push	ar4
      002C84 E8               [12]  907 	mov	a,r0
      002C85 2D               [12]  908 	add	a, r5
      002C86 FA               [12]  909 	mov	r2,a
      002C87 E9               [12]  910 	mov	a,r1
      002C88 3E               [12]  911 	addc	a, r6
      002C89 FB               [12]  912 	mov	r3,a
      002C8A 8F 04            [24]  913 	mov	ar4,r7
      002C8C 8A 82            [24]  914 	mov	dpl,r2
      002C8E 8B 83            [24]  915 	mov	dph,r3
      002C90 8C F0            [24]  916 	mov	b,r4
      002C92 12 6B D1         [24]  917 	lcall	__gptrget
      002C95 7C 00            [12]  918 	mov	r4,#0x00
      002C97 24 A9            [12]  919 	add	a,#0xa9
      002C99 F5 49            [12]  920 	mov	_hex_to_int_sloc2_1_0,a
      002C9B EC               [12]  921 	mov	a,r4
      002C9C 34 FF            [12]  922 	addc	a,#0xff
      002C9E F5 4A            [12]  923 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002CA0 90 01 59         [24]  924 	mov	dptr,#_hex_to_int_result_10000_132
      002CA3 E0               [24]  925 	movx	a,@dptr
      002CA4 FB               [12]  926 	mov	r3,a
      002CA5 A3               [24]  927 	inc	dptr
      002CA6 E0               [24]  928 	movx	a,@dptr
      002CA7 FC               [12]  929 	mov	r4,a
      002CA8 90 01 59         [24]  930 	mov	dptr,#_hex_to_int_result_10000_132
      002CAB E5 49            [12]  931 	mov	a,_hex_to_int_sloc2_1_0
      002CAD 2B               [12]  932 	add	a, r3
      002CAE F0               [24]  933 	movx	@dptr,a
      002CAF E5 4A            [12]  934 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002CB1 3C               [12]  935 	addc	a, r4
      002CB2 A3               [24]  936 	inc	dptr
      002CB3 F0               [24]  937 	movx	@dptr,a
                                    938 ;	main.c:48: return result;
      002CB4 D0 04            [24]  939 	pop	ar4
      002CB6 D0 03            [24]  940 	pop	ar3
      002CB8 D0 02            [24]  941 	pop	ar2
                                    942 ;	main.c:44: result += str[i] - 87;
      002CBA                        943 00110$:
                                    944 ;	main.c:46: i++;
      002CBA 08               [12]  945 	inc	r0
      002CBB B8 00 01         [24]  946 	cjne	r0,#0x00,00173$
      002CBE 09               [12]  947 	inc	r1
      002CBF                        948 00173$:
      002CBF 02 2B 46         [24]  949 	ljmp	00112$
      002CC2                        950 00114$:
                                    951 ;	main.c:48: return result;
      002CC2 90 01 59         [24]  952 	mov	dptr,#_hex_to_int_result_10000_132
      002CC5 E0               [24]  953 	movx	a,@dptr
      002CC6 FE               [12]  954 	mov	r6,a
      002CC7 A3               [24]  955 	inc	dptr
      002CC8 E0               [24]  956 	movx	a,@dptr
                                    957 ;	main.c:50: }
      002CC9 8E 82            [24]  958 	mov	dpl,r6
      002CCB F5 83            [12]  959 	mov	dph,a
      002CCD 22               [24]  960 	ret
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    963 ;------------------------------------------------------------
                                    964 ;i                         Allocated with name '_get_user_buffer_size_i_10000_138'
                                    965 ;output                    Allocated with name '_get_user_buffer_size_output_10000_138'
                                    966 ;input                     Allocated with name '_get_user_buffer_size_input_10000_138'
                                    967 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_138'
                                    968 ;------------------------------------------------------------
                                    969 ;	main.c:53: int get_user_buffer_size(void)
                                    970 ;	-----------------------------------------
                                    971 ;	 function get_user_buffer_size
                                    972 ;	-----------------------------------------
      002CCE                        973 _get_user_buffer_size:
                                    974 ;	main.c:59: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      002CCE 7E 00            [12]  975 	mov	r6,#0x00
      002CD0 7F 00            [12]  976 	mov	r7,#0x00
      002CD2                        977 00103$:
      002CD2 C0 07            [24]  978 	push	ar7
      002CD4 C0 06            [24]  979 	push	ar6
      002CD6 12 59 E7         [24]  980 	lcall	_getchar
      002CD9 AC 82            [24]  981 	mov	r4, dpl
      002CDB D0 06            [24]  982 	pop	ar6
      002CDD D0 07            [24]  983 	pop	ar7
      002CDF BC 0A 02         [24]  984 	cjne	r4,#0x0a,00133$
      002CE2 80 3A            [24]  985 	sjmp	00105$
      002CE4                        986 00133$:
      002CE4 BC 0D 02         [24]  987 	cjne	r4,#0x0d,00134$
      002CE7 80 35            [24]  988 	sjmp	00105$
      002CE9                        989 00134$:
      002CE9 C3               [12]  990 	clr	c
      002CEA EE               [12]  991 	mov	a,r6
      002CEB 94 09            [12]  992 	subb	a,#0x09
      002CED EF               [12]  993 	mov	a,r7
      002CEE 64 80            [12]  994 	xrl	a,#0x80
      002CF0 94 80            [12]  995 	subb	a,#0x80
      002CF2 50 2A            [24]  996 	jnc	00105$
                                    997 ;	main.c:61: putchar(ch);
      002CF4 8C 03            [24]  998 	mov	ar3,r4
      002CF6 7D 00            [12]  999 	mov	r5,#0x00
      002CF8 8B 82            [24] 1000 	mov	dpl, r3
      002CFA 8D 83            [24] 1001 	mov	dph, r5
      002CFC C0 07            [24] 1002 	push	ar7
      002CFE C0 06            [24] 1003 	push	ar6
      002D00 C0 04            [24] 1004 	push	ar4
      002D02 12 59 C8         [24] 1005 	lcall	_putchar
      002D05 D0 04            [24] 1006 	pop	ar4
      002D07 D0 06            [24] 1007 	pop	ar6
      002D09 D0 07            [24] 1008 	pop	ar7
                                   1009 ;	main.c:62: input[i] = ch;      //Append the input array with the received character
      002D0B EE               [12] 1010 	mov	a,r6
      002D0C 24 5D            [12] 1011 	add	a, #_get_user_buffer_size_input_10000_138
      002D0E F5 82            [12] 1012 	mov	dpl,a
      002D10 EF               [12] 1013 	mov	a,r7
      002D11 34 01            [12] 1014 	addc	a, #(_get_user_buffer_size_input_10000_138 >> 8)
      002D13 F5 83            [12] 1015 	mov	dph,a
      002D15 EC               [12] 1016 	mov	a,r4
      002D16 F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	main.c:63: i++;
      002D17 0E               [12] 1019 	inc	r6
      002D18 BE 00 B7         [24] 1020 	cjne	r6,#0x00,00103$
      002D1B 0F               [12] 1021 	inc	r7
      002D1C 80 B4            [24] 1022 	sjmp	00103$
      002D1E                       1023 00105$:
                                   1024 ;	main.c:65: input[i] = '\0';
      002D1E EE               [12] 1025 	mov	a,r6
      002D1F 24 5D            [12] 1026 	add	a, #_get_user_buffer_size_input_10000_138
      002D21 F5 82            [12] 1027 	mov	dpl,a
      002D23 EF               [12] 1028 	mov	a,r7
      002D24 34 01            [12] 1029 	addc	a, #(_get_user_buffer_size_input_10000_138 >> 8)
      002D26 F5 83            [12] 1030 	mov	dph,a
      002D28 E4               [12] 1031 	clr	a
      002D29 F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	main.c:66: output = hex_to_int(input); //Convert the char hex data to int
      002D2A 90 01 5D         [24] 1034 	mov	dptr,#_get_user_buffer_size_input_10000_138
      002D2D F5 F0            [12] 1035 	mov	b,a
      002D2F 12 2B 14         [24] 1036 	lcall	_hex_to_int
      002D32 AE 82            [24] 1037 	mov	r6, dpl
      002D34 AF 83            [24] 1038 	mov	r7, dph
                                   1039 ;	main.c:67: printf_tiny("\n\r");
      002D36 C0 07            [24] 1040 	push	ar7
      002D38 C0 06            [24] 1041 	push	ar6
      002D3A 74 B0            [12] 1042 	mov	a,#___str_0
      002D3C C0 E0            [24] 1043 	push	acc
      002D3E 74 6D            [12] 1044 	mov	a,#(___str_0 >> 8)
      002D40 C0 E0            [24] 1045 	push	acc
      002D42 12 5D B4         [24] 1046 	lcall	_printf_tiny
      002D45 15 81            [12] 1047 	dec	sp
      002D47 15 81            [12] 1048 	dec	sp
      002D49 D0 06            [24] 1049 	pop	ar6
      002D4B D0 07            [24] 1050 	pop	ar7
                                   1051 ;	main.c:69: return output;
      002D4D 8E 82            [24] 1052 	mov	dpl, r6
      002D4F 8F 83            [24] 1053 	mov	dph, r7
                                   1054 ;	main.c:70: }
      002D51 22               [24] 1055 	ret
                                   1056 ;------------------------------------------------------------
                                   1057 ;Allocation info for local variables in function 'main'
                                   1058 ;------------------------------------------------------------
                                   1059 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1060 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1061 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                   1062 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                   1063 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                   1064 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                   1065 ;c                         Allocated with name '_main_c_20001_143'
                                   1066 ;reg_bank                  Allocated with name '_main_reg_bank_40002_146'
                                   1067 ;addr                      Allocated with name '_main_addr_40003_147'
                                   1068 ;data                      Allocated with name '_main_data_40004_148'
                                   1069 ;num_bytes                 Allocated with name '_main_num_bytes_40002_150'
                                   1070 ;start_address             Allocated with name '_main_start_address_40003_151'
                                   1071 ;buffer                    Allocated with name '_main_buffer_40003_151'
                                   1072 ;i                         Allocated with name '_main_i_50003_152'
                                   1073 ;num_bytes                 Allocated with name '_main_num_bytes_40002_155'
                                   1074 ;start_address             Allocated with name '_main_start_address_40003_156'
                                   1075 ;buffer                    Allocated with name '_main_buffer_40003_156'
                                   1076 ;reg_bank                  Allocated with name '_main_reg_bank_40002_158'
                                   1077 ;addr                      Allocated with name '_main_addr_40003_159'
                                   1078 ;data                      Allocated with name '_main_data_40003_159'
                                   1079 ;addr                      Allocated with name '_main_addr_40002_161'
                                   1080 ;data                      Allocated with name '_main_data_40003_162'
                                   1081 ;addr                      Allocated with name '_main_addr_40002_164'
                                   1082 ;data                      Allocated with name '_main_data_40002_164'
                                   1083 ;addr                      Allocated with name '_main_addr_40002_167'
                                   1084 ;bank                      Allocated with name '_main_bank_40003_168'
                                   1085 ;data                      Allocated with name '_main_data_40003_168'
                                   1086 ;nextPacket                Allocated with name '_main_nextPacket_60001_172'
                                   1087 ;byteCount                 Allocated with name '_main_byteCount_60001_172'
                                   1088 ;status                    Allocated with name '_main_status_60001_172'
                                   1089 ;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_172'
                                   1090 ;len                       Allocated with name '_main_len_60001_172'
                                   1091 ;packet_data               Allocated with name '_main_packet_data_60002_175'
                                   1092 ;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_176'
                                   1093 ;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_177'
                                   1094 ;response_size             Allocated with name '_main_response_size_70004_181'
                                   1095 ;response                  Allocated with name '_main_response_70004_181'
                                   1096 ;read_econ2                Allocated with name '_main_read_econ2_60005_185'
                                   1097 ;i                         Allocated with name '_main_i_50001_188'
                                   1098 ;read_econ2                Allocated with name '_main_read_econ2_40002_191'
                                   1099 ;------------------------------------------------------------
                                   1100 ;	main.c:72: void main(void)
                                   1101 ;	-----------------------------------------
                                   1102 ;	 function main
                                   1103 ;	-----------------------------------------
      002D52                       1104 _main:
                                   1105 ;	main.c:75: printf("SPI Operations on 8051\n\r");
      002D52 74 B3            [12] 1106 	mov	a,#___str_1
      002D54 C0 E0            [24] 1107 	push	acc
      002D56 74 6D            [12] 1108 	mov	a,#(___str_1 >> 8)
      002D58 C0 E0            [24] 1109 	push	acc
      002D5A 74 80            [12] 1110 	mov	a,#0x80
      002D5C C0 E0            [24] 1111 	push	acc
      002D5E 12 61 AF         [24] 1112 	lcall	_printf
      002D61 15 81            [12] 1113 	dec	sp
      002D63 15 81            [12] 1114 	dec	sp
      002D65 15 81            [12] 1115 	dec	sp
                                   1116 ;	main.c:76: configure_SPI();
      002D67 12 39 61         [24] 1117 	lcall	_configure_SPI
                                   1118 ;	main.c:78: enc_init(device_mac);
      002D6A 90 14 07         [24] 1119 	mov	dptr,#_device_mac
      002D6D 75 F0 00         [24] 1120 	mov	b, #0x00
      002D70 12 26 BD         [24] 1121 	lcall	_enc_init
                                   1122 ;	main.c:80: while(1)
      002D73                       1123 00146$:
                                   1124 ;	main.c:82: printf("\n\rChoose an action: \n\r");
      002D73 74 CC            [12] 1125 	mov	a,#___str_2
      002D75 C0 E0            [24] 1126 	push	acc
      002D77 74 6D            [12] 1127 	mov	a,#(___str_2 >> 8)
      002D79 C0 E0            [24] 1128 	push	acc
      002D7B 74 80            [12] 1129 	mov	a,#0x80
      002D7D C0 E0            [24] 1130 	push	acc
      002D7F 12 61 AF         [24] 1131 	lcall	_printf
      002D82 15 81            [12] 1132 	dec	sp
      002D84 15 81            [12] 1133 	dec	sp
      002D86 15 81            [12] 1134 	dec	sp
                                   1135 ;	main.c:83: printf("1 --> Control Write\n\r");
      002D88 74 E3            [12] 1136 	mov	a,#___str_3
      002D8A C0 E0            [24] 1137 	push	acc
      002D8C 74 6D            [12] 1138 	mov	a,#(___str_3 >> 8)
      002D8E C0 E0            [24] 1139 	push	acc
      002D90 74 80            [12] 1140 	mov	a,#0x80
      002D92 C0 E0            [24] 1141 	push	acc
      002D94 12 61 AF         [24] 1142 	lcall	_printf
      002D97 15 81            [12] 1143 	dec	sp
      002D99 15 81            [12] 1144 	dec	sp
      002D9B 15 81            [12] 1145 	dec	sp
                                   1146 ;	main.c:84: printf("2 --> Buffer Write\n\r");
      002D9D 74 F9            [12] 1147 	mov	a,#___str_4
      002D9F C0 E0            [24] 1148 	push	acc
      002DA1 74 6D            [12] 1149 	mov	a,#(___str_4 >> 8)
      002DA3 C0 E0            [24] 1150 	push	acc
      002DA5 74 80            [12] 1151 	mov	a,#0x80
      002DA7 C0 E0            [24] 1152 	push	acc
      002DA9 12 61 AF         [24] 1153 	lcall	_printf
      002DAC 15 81            [12] 1154 	dec	sp
      002DAE 15 81            [12] 1155 	dec	sp
      002DB0 15 81            [12] 1156 	dec	sp
                                   1157 ;	main.c:85: printf("3 --> Buffer Read\n\r");
      002DB2 74 0E            [12] 1158 	mov	a,#___str_5
      002DB4 C0 E0            [24] 1159 	push	acc
      002DB6 74 6E            [12] 1160 	mov	a,#(___str_5 >> 8)
      002DB8 C0 E0            [24] 1161 	push	acc
      002DBA 74 80            [12] 1162 	mov	a,#0x80
      002DBC C0 E0            [24] 1163 	push	acc
      002DBE 12 61 AF         [24] 1164 	lcall	_printf
      002DC1 15 81            [12] 1165 	dec	sp
      002DC3 15 81            [12] 1166 	dec	sp
      002DC5 15 81            [12] 1167 	dec	sp
                                   1168 ;	main.c:86: printf("4 --> MAC Register Read\n\r");
      002DC7 74 22            [12] 1169 	mov	a,#___str_6
      002DC9 C0 E0            [24] 1170 	push	acc
      002DCB 74 6E            [12] 1171 	mov	a,#(___str_6 >> 8)
      002DCD C0 E0            [24] 1172 	push	acc
      002DCF 74 80            [12] 1173 	mov	a,#0x80
      002DD1 C0 E0            [24] 1174 	push	acc
      002DD3 12 61 AF         [24] 1175 	lcall	_printf
      002DD6 15 81            [12] 1176 	dec	sp
      002DD8 15 81            [12] 1177 	dec	sp
      002DDA 15 81            [12] 1178 	dec	sp
                                   1179 ;	main.c:87: printf("5 --> PHY SPI Write\n\r");
      002DDC 74 3C            [12] 1180 	mov	a,#___str_7
      002DDE C0 E0            [24] 1181 	push	acc
      002DE0 74 6E            [12] 1182 	mov	a,#(___str_7 >> 8)
      002DE2 C0 E0            [24] 1183 	push	acc
      002DE4 74 80            [12] 1184 	mov	a,#0x80
      002DE6 C0 E0            [24] 1185 	push	acc
      002DE8 12 61 AF         [24] 1186 	lcall	_printf
      002DEB 15 81            [12] 1187 	dec	sp
      002DED 15 81            [12] 1188 	dec	sp
      002DEF 15 81            [12] 1189 	dec	sp
                                   1190 ;	main.c:88: printf("6 --> PHY SPI Read\n\r");
      002DF1 74 52            [12] 1191 	mov	a,#___str_8
      002DF3 C0 E0            [24] 1192 	push	acc
      002DF5 74 6E            [12] 1193 	mov	a,#(___str_8 >> 8)
      002DF7 C0 E0            [24] 1194 	push	acc
      002DF9 74 80            [12] 1195 	mov	a,#0x80
      002DFB C0 E0            [24] 1196 	push	acc
      002DFD 12 61 AF         [24] 1197 	lcall	_printf
      002E00 15 81            [12] 1198 	dec	sp
      002E02 15 81            [12] 1199 	dec	sp
      002E04 15 81            [12] 1200 	dec	sp
                                   1201 ;	main.c:89: printf("7 --> ENC Reset\n\r");
      002E06 74 67            [12] 1202 	mov	a,#___str_9
      002E08 C0 E0            [24] 1203 	push	acc
      002E0A 74 6E            [12] 1204 	mov	a,#(___str_9 >> 8)
      002E0C C0 E0            [24] 1205 	push	acc
      002E0E 74 80            [12] 1206 	mov	a,#0x80
      002E10 C0 E0            [24] 1207 	push	acc
      002E12 12 61 AF         [24] 1208 	lcall	_printf
      002E15 15 81            [12] 1209 	dec	sp
      002E17 15 81            [12] 1210 	dec	sp
      002E19 15 81            [12] 1211 	dec	sp
                                   1212 ;	main.c:90: printf("8 --> Read ETH Register\n\r");
      002E1B 74 79            [12] 1213 	mov	a,#___str_10
      002E1D C0 E0            [24] 1214 	push	acc
      002E1F 74 6E            [12] 1215 	mov	a,#(___str_10 >> 8)
      002E21 C0 E0            [24] 1216 	push	acc
      002E23 74 80            [12] 1217 	mov	a,#0x80
      002E25 C0 E0            [24] 1218 	push	acc
      002E27 12 61 AF         [24] 1219 	lcall	_printf
      002E2A 15 81            [12] 1220 	dec	sp
      002E2C 15 81            [12] 1221 	dec	sp
      002E2E 15 81            [12] 1222 	dec	sp
                                   1223 ;	main.c:91: printf("9 --> Display Menu\n\r");
      002E30 74 93            [12] 1224 	mov	a,#___str_11
      002E32 C0 E0            [24] 1225 	push	acc
      002E34 74 6E            [12] 1226 	mov	a,#(___str_11 >> 8)
      002E36 C0 E0            [24] 1227 	push	acc
      002E38 74 80            [12] 1228 	mov	a,#0x80
      002E3A C0 E0            [24] 1229 	push	acc
      002E3C 12 61 AF         [24] 1230 	lcall	_printf
      002E3F 15 81            [12] 1231 	dec	sp
      002E41 15 81            [12] 1232 	dec	sp
      002E43 15 81            [12] 1233 	dec	sp
                                   1234 ;	main.c:92: printf("A --> Send ARP Request\n\r");
      002E45 74 A8            [12] 1235 	mov	a,#___str_12
      002E47 C0 E0            [24] 1236 	push	acc
      002E49 74 6E            [12] 1237 	mov	a,#(___str_12 >> 8)
      002E4B C0 E0            [24] 1238 	push	acc
      002E4D 74 80            [12] 1239 	mov	a,#0x80
      002E4F C0 E0            [24] 1240 	push	acc
      002E51 12 61 AF         [24] 1241 	lcall	_printf
      002E54 15 81            [12] 1242 	dec	sp
      002E56 15 81            [12] 1243 	dec	sp
      002E58 15 81            [12] 1244 	dec	sp
                                   1245 ;	main.c:93: printf("B --> Init RX buffers\n\r");
      002E5A 74 C1            [12] 1246 	mov	a,#___str_13
      002E5C C0 E0            [24] 1247 	push	acc
      002E5E 74 6E            [12] 1248 	mov	a,#(___str_13 >> 8)
      002E60 C0 E0            [24] 1249 	push	acc
      002E62 74 80            [12] 1250 	mov	a,#0x80
      002E64 C0 E0            [24] 1251 	push	acc
      002E66 12 61 AF         [24] 1252 	lcall	_printf
      002E69 15 81            [12] 1253 	dec	sp
      002E6B 15 81            [12] 1254 	dec	sp
      002E6D 15 81            [12] 1255 	dec	sp
                                   1256 ;	main.c:94: printf("C --> Hard Reset(nRESET pin)\n\r");
      002E6F 74 D9            [12] 1257 	mov	a,#___str_14
      002E71 C0 E0            [24] 1258 	push	acc
      002E73 74 6E            [12] 1259 	mov	a,#(___str_14 >> 8)
      002E75 C0 E0            [24] 1260 	push	acc
      002E77 74 80            [12] 1261 	mov	a,#0x80
      002E79 C0 E0            [24] 1262 	push	acc
      002E7B 12 61 AF         [24] 1263 	lcall	_printf
      002E7E 15 81            [12] 1264 	dec	sp
      002E80 15 81            [12] 1265 	dec	sp
      002E82 15 81            [12] 1266 	dec	sp
                                   1267 ;	main.c:95: printf("D --> Process TCP\n\r");
      002E84 74 F8            [12] 1268 	mov	a,#___str_15
      002E86 C0 E0            [24] 1269 	push	acc
      002E88 74 6E            [12] 1270 	mov	a,#(___str_15 >> 8)
      002E8A C0 E0            [24] 1271 	push	acc
      002E8C 74 80            [12] 1272 	mov	a,#0x80
      002E8E C0 E0            [24] 1273 	push	acc
      002E90 12 61 AF         [24] 1274 	lcall	_printf
      002E93 15 81            [12] 1275 	dec	sp
      002E95 15 81            [12] 1276 	dec	sp
      002E97 15 81            [12] 1277 	dec	sp
                                   1278 ;	main.c:96: printf("E --> Enable TX interrupt\n\r");
      002E99 74 0C            [12] 1279 	mov	a,#___str_16
      002E9B C0 E0            [24] 1280 	push	acc
      002E9D 74 6F            [12] 1281 	mov	a,#(___str_16 >> 8)
      002E9F C0 E0            [24] 1282 	push	acc
      002EA1 74 80            [12] 1283 	mov	a,#0x80
      002EA3 C0 E0            [24] 1284 	push	acc
      002EA5 12 61 AF         [24] 1285 	lcall	_printf
      002EA8 15 81            [12] 1286 	dec	sp
      002EAA 15 81            [12] 1287 	dec	sp
      002EAC 15 81            [12] 1288 	dec	sp
                                   1289 ;	main.c:97: printf("F --> Disabling TX interrupt\n\r");
      002EAE 74 28            [12] 1290 	mov	a,#___str_17
      002EB0 C0 E0            [24] 1291 	push	acc
      002EB2 74 6F            [12] 1292 	mov	a,#(___str_17 >> 8)
      002EB4 C0 E0            [24] 1293 	push	acc
      002EB6 74 80            [12] 1294 	mov	a,#0x80
      002EB8 C0 E0            [24] 1295 	push	acc
      002EBA 12 61 AF         [24] 1296 	lcall	_printf
      002EBD 15 81            [12] 1297 	dec	sp
      002EBF 15 81            [12] 1298 	dec	sp
      002EC1 15 81            [12] 1299 	dec	sp
                                   1300 ;	main.c:99: char c = getchar();
      002EC3 12 59 E7         [24] 1301 	lcall	_getchar
      002EC6 AE 82            [24] 1302 	mov	r6, dpl
                                   1303 ;	main.c:100: putchar(c);
      002EC8 8E 05            [24] 1304 	mov	ar5,r6
      002ECA 7F 00            [12] 1305 	mov	r7,#0x00
      002ECC 8D 82            [24] 1306 	mov	dpl, r5
      002ECE 8F 83            [24] 1307 	mov	dph, r7
      002ED0 C0 06            [24] 1308 	push	ar6
      002ED2 12 59 C8         [24] 1309 	lcall	_putchar
                                   1310 ;	main.c:101: printf("\n\r");
      002ED5 74 B0            [12] 1311 	mov	a,#___str_0
      002ED7 C0 E0            [24] 1312 	push	acc
      002ED9 74 6D            [12] 1313 	mov	a,#(___str_0 >> 8)
      002EDB C0 E0            [24] 1314 	push	acc
      002EDD 74 80            [12] 1315 	mov	a,#0x80
      002EDF C0 E0            [24] 1316 	push	acc
      002EE1 12 61 AF         [24] 1317 	lcall	_printf
      002EE4 15 81            [12] 1318 	dec	sp
      002EE6 15 81            [12] 1319 	dec	sp
      002EE8 15 81            [12] 1320 	dec	sp
      002EEA D0 06            [24] 1321 	pop	ar6
                                   1322 ;	main.c:103: switch(c)
      002EEC BE 31 02         [24] 1323 	cjne	r6,#0x31,00344$
      002EEF 80 5D            [24] 1324 	sjmp	00101$
      002EF1                       1325 00344$:
      002EF1 BE 32 03         [24] 1326 	cjne	r6,#0x32,00345$
      002EF4 02 2F B6         [24] 1327 	ljmp	00102$
      002EF7                       1328 00345$:
      002EF7 BE 33 03         [24] 1329 	cjne	r6,#0x33,00346$
      002EFA 02 30 B4         [24] 1330 	ljmp	00104$
      002EFD                       1331 00346$:
      002EFD BE 34 03         [24] 1332 	cjne	r6,#0x34,00347$
      002F00 02 31 13         [24] 1333 	ljmp	00105$
      002F03                       1334 00347$:
      002F03 BE 35 03         [24] 1335 	cjne	r6,#0x35,00348$
      002F06 02 31 75         [24] 1336 	ljmp	00106$
      002F09                       1337 00348$:
      002F09 BE 36 03         [24] 1338 	cjne	r6,#0x36,00349$
      002F0C 02 31 E0         [24] 1339 	ljmp	00107$
      002F0F                       1340 00349$:
      002F0F BE 37 03         [24] 1341 	cjne	r6,#0x37,00350$
      002F12 02 32 1B         [24] 1342 	ljmp	00108$
      002F15                       1343 00350$:
      002F15 BE 38 03         [24] 1344 	cjne	r6,#0x38,00351$
      002F18 02 32 36         [24] 1345 	ljmp	00109$
      002F1B                       1346 00351$:
      002F1B BE 39 03         [24] 1347 	cjne	r6,#0x39,00352$
      002F1E 02 32 98         [24] 1348 	ljmp	00110$
      002F21                       1349 00352$:
      002F21 BE 41 03         [24] 1350 	cjne	r6,#0x41,00353$
      002F24 02 33 58         [24] 1351 	ljmp	00111$
      002F27                       1352 00353$:
      002F27 BE 42 03         [24] 1353 	cjne	r6,#0x42,00354$
      002F2A 02 2D 73         [24] 1354 	ljmp	00146$
      002F2D                       1355 00354$:
      002F2D BE 43 03         [24] 1356 	cjne	r6,#0x43,00355$
      002F30 02 37 31         [24] 1357 	ljmp	00134$
      002F33                       1358 00355$:
      002F33 BE 44 03         [24] 1359 	cjne	r6,#0x44,00356$
      002F36 02 37 63         [24] 1360 	ljmp	00136$
      002F39                       1361 00356$:
      002F39 BE 45 03         [24] 1362 	cjne	r6,#0x45,00357$
      002F3C 02 37 6C         [24] 1363 	ljmp	00137$
      002F3F                       1364 00357$:
      002F3F BE 46 03         [24] 1365 	cjne	r6,#0x46,00358$
      002F42 02 37 A7         [24] 1366 	ljmp	00138$
      002F45                       1367 00358$:
      002F45 BE 58 03         [24] 1368 	cjne	r6,#0x58,00359$
      002F48 02 37 CD         [24] 1369 	ljmp	00141$
      002F4B                       1370 00359$:
      002F4B 02 37 D2         [24] 1371 	ljmp	00143$
                                   1372 ;	main.c:105: case '1': {
      002F4E                       1373 00101$:
                                   1374 ;	main.c:106: printf("Enter the register bank to select:\n\r");
      002F4E 74 47            [12] 1375 	mov	a,#___str_18
      002F50 C0 E0            [24] 1376 	push	acc
      002F52 74 6F            [12] 1377 	mov	a,#(___str_18 >> 8)
      002F54 C0 E0            [24] 1378 	push	acc
      002F56 74 80            [12] 1379 	mov	a,#0x80
      002F58 C0 E0            [24] 1380 	push	acc
      002F5A 12 61 AF         [24] 1381 	lcall	_printf
      002F5D 15 81            [12] 1382 	dec	sp
      002F5F 15 81            [12] 1383 	dec	sp
      002F61 15 81            [12] 1384 	dec	sp
                                   1385 ;	main.c:107: uint8_t reg_bank = get_user_buffer_size();
      002F63 12 2C CE         [24] 1386 	lcall	_get_user_buffer_size
      002F66 AE 82            [24] 1387 	mov	r6, dpl
                                   1388 ;	main.c:108: printf("Enter the address of the Control Register:\n\r");
      002F68 C0 06            [24] 1389 	push	ar6
      002F6A 74 6C            [12] 1390 	mov	a,#___str_19
      002F6C C0 E0            [24] 1391 	push	acc
      002F6E 74 6F            [12] 1392 	mov	a,#(___str_19 >> 8)
      002F70 C0 E0            [24] 1393 	push	acc
      002F72 74 80            [12] 1394 	mov	a,#0x80
      002F74 C0 E0            [24] 1395 	push	acc
      002F76 12 61 AF         [24] 1396 	lcall	_printf
      002F79 15 81            [12] 1397 	dec	sp
      002F7B 15 81            [12] 1398 	dec	sp
      002F7D 15 81            [12] 1399 	dec	sp
                                   1400 ;	main.c:109: uint8_t addr = get_user_buffer_size();
      002F7F 12 2C CE         [24] 1401 	lcall	_get_user_buffer_size
      002F82 AD 82            [24] 1402 	mov	r5, dpl
                                   1403 ;	main.c:110: printf("Enter the data you want to write:\n\r");
      002F84 C0 05            [24] 1404 	push	ar5
      002F86 74 99            [12] 1405 	mov	a,#___str_20
      002F88 C0 E0            [24] 1406 	push	acc
      002F8A 74 6F            [12] 1407 	mov	a,#(___str_20 >> 8)
      002F8C C0 E0            [24] 1408 	push	acc
      002F8E 74 80            [12] 1409 	mov	a,#0x80
      002F90 C0 E0            [24] 1410 	push	acc
      002F92 12 61 AF         [24] 1411 	lcall	_printf
      002F95 15 81            [12] 1412 	dec	sp
      002F97 15 81            [12] 1413 	dec	sp
      002F99 15 81            [12] 1414 	dec	sp
                                   1415 ;	main.c:111: uint8_t data = get_user_buffer_size();
      002F9B 12 2C CE         [24] 1416 	lcall	_get_user_buffer_size
      002F9E AC 82            [24] 1417 	mov	r4, dpl
      002FA0 D0 05            [24] 1418 	pop	ar5
      002FA2 D0 06            [24] 1419 	pop	ar6
                                   1420 ;	main.c:112: spi_control_write(reg_bank, addr, data);
      002FA4 90 03 70         [24] 1421 	mov	dptr,#_spi_control_write_PARM_2
      002FA7 ED               [12] 1422 	mov	a,r5
      002FA8 F0               [24] 1423 	movx	@dptr,a
      002FA9 90 03 71         [24] 1424 	mov	dptr,#_spi_control_write_PARM_3
      002FAC EC               [12] 1425 	mov	a,r4
      002FAD F0               [24] 1426 	movx	@dptr,a
      002FAE 8E 82            [24] 1427 	mov	dpl, r6
      002FB0 12 39 05         [24] 1428 	lcall	_spi_control_write
                                   1429 ;	main.c:113: break;
      002FB3 02 2D 73         [24] 1430 	ljmp	00146$
                                   1431 ;	main.c:115: case '2': {
      002FB6                       1432 00102$:
                                   1433 ;	main.c:116: printf("Enter the number of bytes to write:\n\r");
      002FB6 74 BD            [12] 1434 	mov	a,#___str_21
      002FB8 C0 E0            [24] 1435 	push	acc
      002FBA 74 6F            [12] 1436 	mov	a,#(___str_21 >> 8)
      002FBC C0 E0            [24] 1437 	push	acc
      002FBE 74 80            [12] 1438 	mov	a,#0x80
      002FC0 C0 E0            [24] 1439 	push	acc
      002FC2 12 61 AF         [24] 1440 	lcall	_printf
      002FC5 15 81            [12] 1441 	dec	sp
      002FC7 15 81            [12] 1442 	dec	sp
      002FC9 15 81            [12] 1443 	dec	sp
                                   1444 ;	main.c:117: int num_bytes = get_user_buffer_size();
      002FCB 12 2C CE         [24] 1445 	lcall	_get_user_buffer_size
      002FCE AE 82            [24] 1446 	mov	r6, dpl
      002FD0 AF 83            [24] 1447 	mov	r7, dph
                                   1448 ;	main.c:118: printf("Enter the starting address:\n\r");
      002FD2 C0 07            [24] 1449 	push	ar7
      002FD4 C0 06            [24] 1450 	push	ar6
      002FD6 74 E3            [12] 1451 	mov	a,#___str_22
      002FD8 C0 E0            [24] 1452 	push	acc
      002FDA 74 6F            [12] 1453 	mov	a,#(___str_22 >> 8)
      002FDC C0 E0            [24] 1454 	push	acc
      002FDE 74 80            [12] 1455 	mov	a,#0x80
      002FE0 C0 E0            [24] 1456 	push	acc
      002FE2 12 61 AF         [24] 1457 	lcall	_printf
      002FE5 15 81            [12] 1458 	dec	sp
      002FE7 15 81            [12] 1459 	dec	sp
      002FE9 15 81            [12] 1460 	dec	sp
                                   1461 ;	main.c:119: uint16_t start_address = get_user_buffer_size();
      002FEB 12 2C CE         [24] 1462 	lcall	_get_user_buffer_size
      002FEE AC 82            [24] 1463 	mov	r4, dpl
      002FF0 AD 83            [24] 1464 	mov	r5, dph
      002FF2 D0 06            [24] 1465 	pop	ar6
      002FF4 D0 07            [24] 1466 	pop	ar7
                                   1467 ;	main.c:121: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      002FF6 C0 07            [24] 1468 	push	ar7
      002FF8 C0 06            [24] 1469 	push	ar6
      002FFA C0 05            [24] 1470 	push	ar5
      002FFC C0 04            [24] 1471 	push	ar4
      002FFE C0 06            [24] 1472 	push	ar6
      003000 C0 07            [24] 1473 	push	ar7
      003002 74 01            [12] 1474 	mov	a,#___str_23
      003004 C0 E0            [24] 1475 	push	acc
      003006 74 70            [12] 1476 	mov	a,#(___str_23 >> 8)
      003008 C0 E0            [24] 1477 	push	acc
      00300A 74 80            [12] 1478 	mov	a,#0x80
      00300C C0 E0            [24] 1479 	push	acc
      00300E 12 61 AF         [24] 1480 	lcall	_printf
      003011 E5 81            [12] 1481 	mov	a,sp
      003013 24 FB            [12] 1482 	add	a,#0xfb
      003015 F5 81            [12] 1483 	mov	sp,a
      003017 D0 04            [24] 1484 	pop	ar4
      003019 D0 05            [24] 1485 	pop	ar5
      00301B D0 06            [24] 1486 	pop	ar6
      00301D D0 07            [24] 1487 	pop	ar7
                                   1488 ;	main.c:122: for (int i = 0; i < num_bytes; i++) {
      00301F 7A 00            [12] 1489 	mov	r2,#0x00
      003021 7B 00            [12] 1490 	mov	r3,#0x00
      003023                       1491 00149$:
      003023 C3               [12] 1492 	clr	c
      003024 EA               [12] 1493 	mov	a,r2
      003025 9E               [12] 1494 	subb	a,r6
      003026 EB               [12] 1495 	mov	a,r3
      003027 64 80            [12] 1496 	xrl	a,#0x80
      003029 8F F0            [24] 1497 	mov	b,r7
      00302B 63 F0 80         [24] 1498 	xrl	b,#0x80
      00302E 95 F0            [12] 1499 	subb	a,b
      003030 50 63            [24] 1500 	jnc	00103$
                                   1501 ;	main.c:123: printf("Byte %d: ", i);
      003032 C0 04            [24] 1502 	push	ar4
      003034 C0 05            [24] 1503 	push	ar5
      003036 C0 07            [24] 1504 	push	ar7
      003038 C0 06            [24] 1505 	push	ar6
      00303A C0 05            [24] 1506 	push	ar5
      00303C C0 04            [24] 1507 	push	ar4
      00303E C0 03            [24] 1508 	push	ar3
      003040 C0 02            [24] 1509 	push	ar2
      003042 C0 02            [24] 1510 	push	ar2
      003044 C0 03            [24] 1511 	push	ar3
      003046 74 24            [12] 1512 	mov	a,#___str_24
      003048 C0 E0            [24] 1513 	push	acc
      00304A 74 70            [12] 1514 	mov	a,#(___str_24 >> 8)
      00304C C0 E0            [24] 1515 	push	acc
      00304E 74 80            [12] 1516 	mov	a,#0x80
      003050 C0 E0            [24] 1517 	push	acc
      003052 12 61 AF         [24] 1518 	lcall	_printf
      003055 E5 81            [12] 1519 	mov	a,sp
      003057 24 FB            [12] 1520 	add	a,#0xfb
      003059 F5 81            [12] 1521 	mov	sp,a
      00305B D0 02            [24] 1522 	pop	ar2
      00305D D0 03            [24] 1523 	pop	ar3
      00305F D0 04            [24] 1524 	pop	ar4
      003061 D0 05            [24] 1525 	pop	ar5
                                   1526 ;	main.c:124: buffer[i] = get_user_buffer_size();
      003063 EA               [12] 1527 	mov	a,r2
      003064 24 67            [12] 1528 	add	a, #_main_buffer_40003_151
      003066 F8               [12] 1529 	mov	r0,a
      003067 EB               [12] 1530 	mov	a,r3
      003068 34 01            [12] 1531 	addc	a, #(_main_buffer_40003_151 >> 8)
      00306A F9               [12] 1532 	mov	r1,a
      00306B C0 03            [24] 1533 	push	ar3
      00306D C0 02            [24] 1534 	push	ar2
      00306F C0 01            [24] 1535 	push	ar1
      003071 C0 00            [24] 1536 	push	ar0
      003073 12 2C CE         [24] 1537 	lcall	_get_user_buffer_size
      003076 AC 82            [24] 1538 	mov	r4, dpl
      003078 D0 00            [24] 1539 	pop	ar0
      00307A D0 01            [24] 1540 	pop	ar1
      00307C D0 02            [24] 1541 	pop	ar2
      00307E D0 03            [24] 1542 	pop	ar3
      003080 D0 06            [24] 1543 	pop	ar6
      003082 D0 07            [24] 1544 	pop	ar7
      003084 88 82            [24] 1545 	mov	dpl,r0
      003086 89 83            [24] 1546 	mov	dph,r1
      003088 EC               [12] 1547 	mov	a,r4
      003089 F0               [24] 1548 	movx	@dptr,a
                                   1549 ;	main.c:122: for (int i = 0; i < num_bytes; i++) {
      00308A 0A               [12] 1550 	inc	r2
      00308B BA 00 01         [24] 1551 	cjne	r2,#0x00,00361$
      00308E 0B               [12] 1552 	inc	r3
      00308F                       1553 00361$:
      00308F D0 05            [24] 1554 	pop	ar5
      003091 D0 04            [24] 1555 	pop	ar4
      003093 80 8E            [24] 1556 	sjmp	00149$
      003095                       1557 00103$:
                                   1558 ;	main.c:126: spi_buffer_write(num_bytes, start_address, buffer);
      003095 90 03 88         [24] 1559 	mov	dptr,#_spi_buffer_write_PARM_2
      003098 EC               [12] 1560 	mov	a,r4
      003099 F0               [24] 1561 	movx	@dptr,a
      00309A ED               [12] 1562 	mov	a,r5
      00309B A3               [24] 1563 	inc	dptr
      00309C F0               [24] 1564 	movx	@dptr,a
      00309D 90 03 8A         [24] 1565 	mov	dptr,#_spi_buffer_write_PARM_3
      0030A0 74 67            [12] 1566 	mov	a,#_main_buffer_40003_151
      0030A2 F0               [24] 1567 	movx	@dptr,a
      0030A3 74 01            [12] 1568 	mov	a,#(_main_buffer_40003_151 >> 8)
      0030A5 A3               [24] 1569 	inc	dptr
      0030A6 F0               [24] 1570 	movx	@dptr,a
      0030A7 E4               [12] 1571 	clr	a
      0030A8 A3               [24] 1572 	inc	dptr
      0030A9 F0               [24] 1573 	movx	@dptr,a
      0030AA 8E 82            [24] 1574 	mov	dpl, r6
      0030AC 8F 83            [24] 1575 	mov	dph, r7
      0030AE 12 3E 34         [24] 1576 	lcall	_spi_buffer_write
                                   1577 ;	main.c:127: break;
      0030B1 02 2D 73         [24] 1578 	ljmp	00146$
                                   1579 ;	main.c:129: case '3': {
      0030B4                       1580 00104$:
                                   1581 ;	main.c:130: printf("Enter the number of bytes to read:\n\r");
      0030B4 74 2E            [12] 1582 	mov	a,#___str_25
      0030B6 C0 E0            [24] 1583 	push	acc
      0030B8 74 70            [12] 1584 	mov	a,#(___str_25 >> 8)
      0030BA C0 E0            [24] 1585 	push	acc
      0030BC 74 80            [12] 1586 	mov	a,#0x80
      0030BE C0 E0            [24] 1587 	push	acc
      0030C0 12 61 AF         [24] 1588 	lcall	_printf
      0030C3 15 81            [12] 1589 	dec	sp
      0030C5 15 81            [12] 1590 	dec	sp
      0030C7 15 81            [12] 1591 	dec	sp
                                   1592 ;	main.c:131: int num_bytes = get_user_buffer_size();
      0030C9 12 2C CE         [24] 1593 	lcall	_get_user_buffer_size
      0030CC AE 82            [24] 1594 	mov	r6, dpl
      0030CE AF 83            [24] 1595 	mov	r7, dph
                                   1596 ;	main.c:132: printf("Enter the starting address:\n\r");
      0030D0 C0 07            [24] 1597 	push	ar7
      0030D2 C0 06            [24] 1598 	push	ar6
      0030D4 74 E3            [12] 1599 	mov	a,#___str_22
      0030D6 C0 E0            [24] 1600 	push	acc
      0030D8 74 6F            [12] 1601 	mov	a,#(___str_22 >> 8)
      0030DA C0 E0            [24] 1602 	push	acc
      0030DC 74 80            [12] 1603 	mov	a,#0x80
      0030DE C0 E0            [24] 1604 	push	acc
      0030E0 12 61 AF         [24] 1605 	lcall	_printf
      0030E3 15 81            [12] 1606 	dec	sp
      0030E5 15 81            [12] 1607 	dec	sp
      0030E7 15 81            [12] 1608 	dec	sp
                                   1609 ;	main.c:133: uint16_t start_address = get_user_buffer_size();
      0030E9 12 2C CE         [24] 1610 	lcall	_get_user_buffer_size
      0030EC AC 82            [24] 1611 	mov	r4, dpl
      0030EE AD 83            [24] 1612 	mov	r5, dph
      0030F0 D0 06            [24] 1613 	pop	ar6
      0030F2 D0 07            [24] 1614 	pop	ar7
      0030F4 90 03 81         [24] 1615 	mov	dptr,#_spi_buffer_read_PARM_2
      0030F7 EC               [12] 1616 	mov	a,r4
      0030F8 F0               [24] 1617 	movx	@dptr,a
      0030F9 ED               [12] 1618 	mov	a,r5
      0030FA A3               [24] 1619 	inc	dptr
      0030FB F0               [24] 1620 	movx	@dptr,a
                                   1621 ;	main.c:135: spi_buffer_read(num_bytes, start_address, buffer);
      0030FC 90 03 83         [24] 1622 	mov	dptr,#_spi_buffer_read_PARM_3
      0030FF 74 67            [12] 1623 	mov	a,#_main_buffer_40003_156
      003101 F0               [24] 1624 	movx	@dptr,a
      003102 74 02            [12] 1625 	mov	a,#(_main_buffer_40003_156 >> 8)
      003104 A3               [24] 1626 	inc	dptr
      003105 F0               [24] 1627 	movx	@dptr,a
      003106 E4               [12] 1628 	clr	a
      003107 A3               [24] 1629 	inc	dptr
      003108 F0               [24] 1630 	movx	@dptr,a
      003109 8E 82            [24] 1631 	mov	dpl, r6
      00310B 8F 83            [24] 1632 	mov	dph, r7
      00310D 12 3C B5         [24] 1633 	lcall	_spi_buffer_read
                                   1634 ;	main.c:136: break;
      003110 02 2D 73         [24] 1635 	ljmp	00146$
                                   1636 ;	main.c:138: case '4': {
      003113                       1637 00105$:
                                   1638 ;	main.c:139: printf("Enter the MAC register bank to select:\n\r");
      003113 74 53            [12] 1639 	mov	a,#___str_26
      003115 C0 E0            [24] 1640 	push	acc
      003117 74 70            [12] 1641 	mov	a,#(___str_26 >> 8)
      003119 C0 E0            [24] 1642 	push	acc
      00311B 74 80            [12] 1643 	mov	a,#0x80
      00311D C0 E0            [24] 1644 	push	acc
      00311F 12 61 AF         [24] 1645 	lcall	_printf
      003122 15 81            [12] 1646 	dec	sp
      003124 15 81            [12] 1647 	dec	sp
      003126 15 81            [12] 1648 	dec	sp
                                   1649 ;	main.c:140: uint8_t reg_bank = get_user_buffer_size();
      003128 12 2C CE         [24] 1650 	lcall	_get_user_buffer_size
      00312B AE 82            [24] 1651 	mov	r6, dpl
                                   1652 ;	main.c:141: printf("Enter the address of the MAC Register:\n\r");
      00312D C0 06            [24] 1653 	push	ar6
      00312F 74 7C            [12] 1654 	mov	a,#___str_27
      003131 C0 E0            [24] 1655 	push	acc
      003133 74 70            [12] 1656 	mov	a,#(___str_27 >> 8)
      003135 C0 E0            [24] 1657 	push	acc
      003137 74 80            [12] 1658 	mov	a,#0x80
      003139 C0 E0            [24] 1659 	push	acc
      00313B 12 61 AF         [24] 1660 	lcall	_printf
      00313E 15 81            [12] 1661 	dec	sp
      003140 15 81            [12] 1662 	dec	sp
      003142 15 81            [12] 1663 	dec	sp
                                   1664 ;	main.c:142: uint8_t addr = get_user_buffer_size();
      003144 12 2C CE         [24] 1665 	lcall	_get_user_buffer_size
      003147 AD 82            [24] 1666 	mov	r5, dpl
      003149 D0 06            [24] 1667 	pop	ar6
                                   1668 ;	main.c:143: uint8_t data = mac_spi_read(addr, reg_bank);
      00314B 90 03 79         [24] 1669 	mov	dptr,#_mac_spi_read_PARM_2
      00314E EE               [12] 1670 	mov	a,r6
      00314F F0               [24] 1671 	movx	@dptr,a
      003150 8D 82            [24] 1672 	mov	dpl, r5
      003152 12 3A 7B         [24] 1673 	lcall	_mac_spi_read
      003155 AF 82            [24] 1674 	mov	r7, dpl
                                   1675 ;	main.c:144: printf("MAC Register Data: 0x%02X\n\r", data);
      003157 7E 00            [12] 1676 	mov	r6,#0x00
      003159 C0 07            [24] 1677 	push	ar7
      00315B C0 06            [24] 1678 	push	ar6
      00315D 74 A5            [12] 1679 	mov	a,#___str_28
      00315F C0 E0            [24] 1680 	push	acc
      003161 74 70            [12] 1681 	mov	a,#(___str_28 >> 8)
      003163 C0 E0            [24] 1682 	push	acc
      003165 74 80            [12] 1683 	mov	a,#0x80
      003167 C0 E0            [24] 1684 	push	acc
      003169 12 61 AF         [24] 1685 	lcall	_printf
      00316C E5 81            [12] 1686 	mov	a,sp
      00316E 24 FB            [12] 1687 	add	a,#0xfb
      003170 F5 81            [12] 1688 	mov	sp,a
                                   1689 ;	main.c:145: break;
      003172 02 2D 73         [24] 1690 	ljmp	00146$
                                   1691 ;	main.c:147: case '5': {
      003175                       1692 00106$:
                                   1693 ;	main.c:148: printf("Enter the PHY register address:\n\r");
      003175 74 C1            [12] 1694 	mov	a,#___str_29
      003177 C0 E0            [24] 1695 	push	acc
      003179 74 70            [12] 1696 	mov	a,#(___str_29 >> 8)
      00317B C0 E0            [24] 1697 	push	acc
      00317D 74 80            [12] 1698 	mov	a,#0x80
      00317F C0 E0            [24] 1699 	push	acc
      003181 12 61 AF         [24] 1700 	lcall	_printf
      003184 15 81            [12] 1701 	dec	sp
      003186 15 81            [12] 1702 	dec	sp
      003188 15 81            [12] 1703 	dec	sp
                                   1704 ;	main.c:149: uint8_t addr = get_user_buffer_size();
      00318A 12 2C CE         [24] 1705 	lcall	_get_user_buffer_size
      00318D AE 82            [24] 1706 	mov	r6, dpl
                                   1707 ;	main.c:150: printf("Enter the 16-bit data to write:\n\r");
      00318F C0 06            [24] 1708 	push	ar6
      003191 74 E3            [12] 1709 	mov	a,#___str_30
      003193 C0 E0            [24] 1710 	push	acc
      003195 74 70            [12] 1711 	mov	a,#(___str_30 >> 8)
      003197 C0 E0            [24] 1712 	push	acc
      003199 74 80            [12] 1713 	mov	a,#0x80
      00319B C0 E0            [24] 1714 	push	acc
      00319D 12 61 AF         [24] 1715 	lcall	_printf
      0031A0 15 81            [12] 1716 	dec	sp
      0031A2 15 81            [12] 1717 	dec	sp
      0031A4 15 81            [12] 1718 	dec	sp
                                   1719 ;	main.c:151: uint16_t data = get_user_buffer_size();
      0031A6 12 2C CE         [24] 1720 	lcall	_get_user_buffer_size
      0031A9 AD 82            [24] 1721 	mov	r5, dpl
      0031AB AF 83            [24] 1722 	mov	r7, dph
      0031AD D0 06            [24] 1723 	pop	ar6
                                   1724 ;	main.c:152: phy_spi_write(addr, data);
      0031AF 90 03 76         [24] 1725 	mov	dptr,#_phy_spi_write_PARM_2
      0031B2 ED               [12] 1726 	mov	a,r5
      0031B3 F0               [24] 1727 	movx	@dptr,a
      0031B4 EF               [12] 1728 	mov	a,r7
      0031B5 A3               [24] 1729 	inc	dptr
      0031B6 F0               [24] 1730 	movx	@dptr,a
      0031B7 8E 82            [24] 1731 	mov	dpl, r6
      0031B9 C0 07            [24] 1732 	push	ar7
      0031BB C0 05            [24] 1733 	push	ar5
      0031BD 12 39 F8         [24] 1734 	lcall	_phy_spi_write
      0031C0 D0 05            [24] 1735 	pop	ar5
      0031C2 D0 07            [24] 1736 	pop	ar7
                                   1737 ;	main.c:153: printf("PHY Write Data: 0x%04X\n\r", data);
      0031C4 C0 05            [24] 1738 	push	ar5
      0031C6 C0 07            [24] 1739 	push	ar7
      0031C8 74 05            [12] 1740 	mov	a,#___str_31
      0031CA C0 E0            [24] 1741 	push	acc
      0031CC 74 71            [12] 1742 	mov	a,#(___str_31 >> 8)
      0031CE C0 E0            [24] 1743 	push	acc
      0031D0 74 80            [12] 1744 	mov	a,#0x80
      0031D2 C0 E0            [24] 1745 	push	acc
      0031D4 12 61 AF         [24] 1746 	lcall	_printf
      0031D7 E5 81            [12] 1747 	mov	a,sp
      0031D9 24 FB            [12] 1748 	add	a,#0xfb
      0031DB F5 81            [12] 1749 	mov	sp,a
                                   1750 ;	main.c:154: break;
      0031DD 02 2D 73         [24] 1751 	ljmp	00146$
                                   1752 ;	main.c:156: case '6': {
      0031E0                       1753 00107$:
                                   1754 ;	main.c:157: printf("Enter the PHY register address to read:\n\r");
      0031E0 74 1E            [12] 1755 	mov	a,#___str_32
      0031E2 C0 E0            [24] 1756 	push	acc
      0031E4 74 71            [12] 1757 	mov	a,#(___str_32 >> 8)
      0031E6 C0 E0            [24] 1758 	push	acc
      0031E8 74 80            [12] 1759 	mov	a,#0x80
      0031EA C0 E0            [24] 1760 	push	acc
      0031EC 12 61 AF         [24] 1761 	lcall	_printf
      0031EF 15 81            [12] 1762 	dec	sp
      0031F1 15 81            [12] 1763 	dec	sp
      0031F3 15 81            [12] 1764 	dec	sp
                                   1765 ;	main.c:158: uint8_t addr = get_user_buffer_size();
      0031F5 12 2C CE         [24] 1766 	lcall	_get_user_buffer_size
                                   1767 ;	main.c:159: uint16_t data = phy_spi_read(addr);
      0031F8 12 3A BE         [24] 1768 	lcall	_phy_spi_read
      0031FB AE 82            [24] 1769 	mov	r6, dpl
      0031FD AF 83            [24] 1770 	mov	r7, dph
                                   1771 ;	main.c:160: printf("PHY Read Data: 0x%04X\n\r", data);
      0031FF C0 06            [24] 1772 	push	ar6
      003201 C0 07            [24] 1773 	push	ar7
      003203 74 48            [12] 1774 	mov	a,#___str_33
      003205 C0 E0            [24] 1775 	push	acc
      003207 74 71            [12] 1776 	mov	a,#(___str_33 >> 8)
      003209 C0 E0            [24] 1777 	push	acc
      00320B 74 80            [12] 1778 	mov	a,#0x80
      00320D C0 E0            [24] 1779 	push	acc
      00320F 12 61 AF         [24] 1780 	lcall	_printf
      003212 E5 81            [12] 1781 	mov	a,sp
      003214 24 FB            [12] 1782 	add	a,#0xfb
      003216 F5 81            [12] 1783 	mov	sp,a
                                   1784 ;	main.c:161: break;
      003218 02 2D 73         [24] 1785 	ljmp	00146$
                                   1786 ;	main.c:163: case '7': {
      00321B                       1787 00108$:
                                   1788 ;	main.c:164: printf("Resetting ENC28J60...\n\r");
      00321B 74 60            [12] 1789 	mov	a,#___str_34
      00321D C0 E0            [24] 1790 	push	acc
      00321F 74 71            [12] 1791 	mov	a,#(___str_34 >> 8)
      003221 C0 E0            [24] 1792 	push	acc
      003223 74 80            [12] 1793 	mov	a,#0x80
      003225 C0 E0            [24] 1794 	push	acc
      003227 12 61 AF         [24] 1795 	lcall	_printf
      00322A 15 81            [12] 1796 	dec	sp
      00322C 15 81            [12] 1797 	dec	sp
      00322E 15 81            [12] 1798 	dec	sp
                                   1799 ;	main.c:165: enc_reset();
      003230 12 39 7F         [24] 1800 	lcall	_enc_reset
                                   1801 ;	main.c:166: break;
      003233 02 2D 73         [24] 1802 	ljmp	00146$
                                   1803 ;	main.c:168: case '8': {
      003236                       1804 00109$:
                                   1805 ;	main.c:169: printf("Enter the ETH register address to read:\n\r");
      003236 74 78            [12] 1806 	mov	a,#___str_35
      003238 C0 E0            [24] 1807 	push	acc
      00323A 74 71            [12] 1808 	mov	a,#(___str_35 >> 8)
      00323C C0 E0            [24] 1809 	push	acc
      00323E 74 80            [12] 1810 	mov	a,#0x80
      003240 C0 E0            [24] 1811 	push	acc
      003242 12 61 AF         [24] 1812 	lcall	_printf
      003245 15 81            [12] 1813 	dec	sp
      003247 15 81            [12] 1814 	dec	sp
      003249 15 81            [12] 1815 	dec	sp
                                   1816 ;	main.c:170: uint8_t addr = get_user_buffer_size();
      00324B 12 2C CE         [24] 1817 	lcall	_get_user_buffer_size
      00324E AE 82            [24] 1818 	mov	r6, dpl
                                   1819 ;	main.c:171: printf("Enter the bank (0 or 1):\n\r");
      003250 C0 06            [24] 1820 	push	ar6
      003252 74 A2            [12] 1821 	mov	a,#___str_36
      003254 C0 E0            [24] 1822 	push	acc
      003256 74 71            [12] 1823 	mov	a,#(___str_36 >> 8)
      003258 C0 E0            [24] 1824 	push	acc
      00325A 74 80            [12] 1825 	mov	a,#0x80
      00325C C0 E0            [24] 1826 	push	acc
      00325E 12 61 AF         [24] 1827 	lcall	_printf
      003261 15 81            [12] 1828 	dec	sp
      003263 15 81            [12] 1829 	dec	sp
      003265 15 81            [12] 1830 	dec	sp
                                   1831 ;	main.c:172: uint8_t bank = get_user_buffer_size();
      003267 12 2C CE         [24] 1832 	lcall	_get_user_buffer_size
      00326A AD 82            [24] 1833 	mov	r5, dpl
      00326C D0 06            [24] 1834 	pop	ar6
      00326E 90 03 74         [24] 1835 	mov	dptr,#_eth_spi_read_PARM_2
      003271 ED               [12] 1836 	mov	a,r5
      003272 F0               [24] 1837 	movx	@dptr,a
                                   1838 ;	main.c:173: uint8_t data = eth_spi_read(addr, bank);
      003273 8E 82            [24] 1839 	mov	dpl, r6
      003275 12 39 8A         [24] 1840 	lcall	_eth_spi_read
      003278 AF 82            [24] 1841 	mov	r7, dpl
                                   1842 ;	main.c:174: printf("ETH Register Data: 0x%02X\n\r", data);
      00327A 7E 00            [12] 1843 	mov	r6,#0x00
      00327C C0 07            [24] 1844 	push	ar7
      00327E C0 06            [24] 1845 	push	ar6
      003280 74 BD            [12] 1846 	mov	a,#___str_37
      003282 C0 E0            [24] 1847 	push	acc
      003284 74 71            [12] 1848 	mov	a,#(___str_37 >> 8)
      003286 C0 E0            [24] 1849 	push	acc
      003288 74 80            [12] 1850 	mov	a,#0x80
      00328A C0 E0            [24] 1851 	push	acc
      00328C 12 61 AF         [24] 1852 	lcall	_printf
      00328F E5 81            [12] 1853 	mov	a,sp
      003291 24 FB            [12] 1854 	add	a,#0xfb
      003293 F5 81            [12] 1855 	mov	sp,a
                                   1856 ;	main.c:175: break;
      003295 02 2D 73         [24] 1857 	ljmp	00146$
                                   1858 ;	main.c:177: case '9': {
      003298                       1859 00110$:
                                   1860 ;	main.c:178: printf("\n\rChoose an action: \n\r");
      003298 74 CC            [12] 1861 	mov	a,#___str_2
      00329A C0 E0            [24] 1862 	push	acc
      00329C 74 6D            [12] 1863 	mov	a,#(___str_2 >> 8)
      00329E C0 E0            [24] 1864 	push	acc
      0032A0 74 80            [12] 1865 	mov	a,#0x80
      0032A2 C0 E0            [24] 1866 	push	acc
      0032A4 12 61 AF         [24] 1867 	lcall	_printf
      0032A7 15 81            [12] 1868 	dec	sp
      0032A9 15 81            [12] 1869 	dec	sp
      0032AB 15 81            [12] 1870 	dec	sp
                                   1871 ;	main.c:179: printf("1 --> Control Write\n\r");
      0032AD 74 E3            [12] 1872 	mov	a,#___str_3
      0032AF C0 E0            [24] 1873 	push	acc
      0032B1 74 6D            [12] 1874 	mov	a,#(___str_3 >> 8)
      0032B3 C0 E0            [24] 1875 	push	acc
      0032B5 74 80            [12] 1876 	mov	a,#0x80
      0032B7 C0 E0            [24] 1877 	push	acc
      0032B9 12 61 AF         [24] 1878 	lcall	_printf
      0032BC 15 81            [12] 1879 	dec	sp
      0032BE 15 81            [12] 1880 	dec	sp
      0032C0 15 81            [12] 1881 	dec	sp
                                   1882 ;	main.c:180: printf("2 --> Buffer Write\n\r");
      0032C2 74 F9            [12] 1883 	mov	a,#___str_4
      0032C4 C0 E0            [24] 1884 	push	acc
      0032C6 74 6D            [12] 1885 	mov	a,#(___str_4 >> 8)
      0032C8 C0 E0            [24] 1886 	push	acc
      0032CA 74 80            [12] 1887 	mov	a,#0x80
      0032CC C0 E0            [24] 1888 	push	acc
      0032CE 12 61 AF         [24] 1889 	lcall	_printf
      0032D1 15 81            [12] 1890 	dec	sp
      0032D3 15 81            [12] 1891 	dec	sp
      0032D5 15 81            [12] 1892 	dec	sp
                                   1893 ;	main.c:181: printf("3 --> Buffer Read\n\r");
      0032D7 74 0E            [12] 1894 	mov	a,#___str_5
      0032D9 C0 E0            [24] 1895 	push	acc
      0032DB 74 6E            [12] 1896 	mov	a,#(___str_5 >> 8)
      0032DD C0 E0            [24] 1897 	push	acc
      0032DF 74 80            [12] 1898 	mov	a,#0x80
      0032E1 C0 E0            [24] 1899 	push	acc
      0032E3 12 61 AF         [24] 1900 	lcall	_printf
      0032E6 15 81            [12] 1901 	dec	sp
      0032E8 15 81            [12] 1902 	dec	sp
      0032EA 15 81            [12] 1903 	dec	sp
                                   1904 ;	main.c:182: printf("4 --> MAC Register Read\n\r");
      0032EC 74 22            [12] 1905 	mov	a,#___str_6
      0032EE C0 E0            [24] 1906 	push	acc
      0032F0 74 6E            [12] 1907 	mov	a,#(___str_6 >> 8)
      0032F2 C0 E0            [24] 1908 	push	acc
      0032F4 74 80            [12] 1909 	mov	a,#0x80
      0032F6 C0 E0            [24] 1910 	push	acc
      0032F8 12 61 AF         [24] 1911 	lcall	_printf
      0032FB 15 81            [12] 1912 	dec	sp
      0032FD 15 81            [12] 1913 	dec	sp
      0032FF 15 81            [12] 1914 	dec	sp
                                   1915 ;	main.c:183: printf("5 --> PHY SPI Write\n\r");
      003301 74 3C            [12] 1916 	mov	a,#___str_7
      003303 C0 E0            [24] 1917 	push	acc
      003305 74 6E            [12] 1918 	mov	a,#(___str_7 >> 8)
      003307 C0 E0            [24] 1919 	push	acc
      003309 74 80            [12] 1920 	mov	a,#0x80
      00330B C0 E0            [24] 1921 	push	acc
      00330D 12 61 AF         [24] 1922 	lcall	_printf
      003310 15 81            [12] 1923 	dec	sp
      003312 15 81            [12] 1924 	dec	sp
      003314 15 81            [12] 1925 	dec	sp
                                   1926 ;	main.c:184: printf("6 --> PHY SPI Read\n\r");
      003316 74 52            [12] 1927 	mov	a,#___str_8
      003318 C0 E0            [24] 1928 	push	acc
      00331A 74 6E            [12] 1929 	mov	a,#(___str_8 >> 8)
      00331C C0 E0            [24] 1930 	push	acc
      00331E 74 80            [12] 1931 	mov	a,#0x80
      003320 C0 E0            [24] 1932 	push	acc
      003322 12 61 AF         [24] 1933 	lcall	_printf
      003325 15 81            [12] 1934 	dec	sp
      003327 15 81            [12] 1935 	dec	sp
      003329 15 81            [12] 1936 	dec	sp
                                   1937 ;	main.c:185: printf("7 --> ENC Reset\n\r");
      00332B 74 67            [12] 1938 	mov	a,#___str_9
      00332D C0 E0            [24] 1939 	push	acc
      00332F 74 6E            [12] 1940 	mov	a,#(___str_9 >> 8)
      003331 C0 E0            [24] 1941 	push	acc
      003333 74 80            [12] 1942 	mov	a,#0x80
      003335 C0 E0            [24] 1943 	push	acc
      003337 12 61 AF         [24] 1944 	lcall	_printf
      00333A 15 81            [12] 1945 	dec	sp
      00333C 15 81            [12] 1946 	dec	sp
      00333E 15 81            [12] 1947 	dec	sp
                                   1948 ;	main.c:186: printf("8 --> Read ETH Register\n\r");
      003340 74 79            [12] 1949 	mov	a,#___str_10
      003342 C0 E0            [24] 1950 	push	acc
      003344 74 6E            [12] 1951 	mov	a,#(___str_10 >> 8)
      003346 C0 E0            [24] 1952 	push	acc
      003348 74 80            [12] 1953 	mov	a,#0x80
      00334A C0 E0            [24] 1954 	push	acc
      00334C 12 61 AF         [24] 1955 	lcall	_printf
      00334F 15 81            [12] 1956 	dec	sp
      003351 15 81            [12] 1957 	dec	sp
      003353 15 81            [12] 1958 	dec	sp
                                   1959 ;	main.c:187: break;
      003355 02 2D 73         [24] 1960 	ljmp	00146$
                                   1961 ;	main.c:189: case 'A':{
      003358                       1962 00111$:
                                   1963 ;	main.c:190: send_arp_request();
      003358 12 22 42         [24] 1964 	lcall	_send_arp_request
                                   1965 ;	main.c:191: while(1)
      00335B                       1966 00131$:
                                   1967 ;	main.c:193: if(ENC_pkt_count() > 0)
      00335B 12 2A A2         [24] 1968 	lcall	_ENC_pkt_count
      00335E E5 82            [12] 1969 	mov	a, dpl
      003360 60 F9            [24] 1970 	jz	00131$
                                   1971 ;	main.c:200: if (gNextPacketPtr == 0)
      003362 90 03 67         [24] 1972 	mov	dptr,#_main_gNextPacketPtr_60001_172
      003365 E0               [24] 1973 	movx	a,@dptr
      003366 FE               [12] 1974 	mov	r6,a
      003367 A3               [24] 1975 	inc	dptr
      003368 E0               [24] 1976 	movx	a,@dptr
      003369 FF               [12] 1977 	mov	r7,a
      00336A 90 03 67         [24] 1978 	mov	dptr,#_main_gNextPacketPtr_60001_172
      00336D E0               [24] 1979 	movx	a,@dptr
      00336E F5 F0            [12] 1980 	mov	b,a
      003370 A3               [24] 1981 	inc	dptr
      003371 E0               [24] 1982 	movx	a,@dptr
      003372 45 F0            [12] 1983 	orl	a,b
      003374 70 08            [24] 1984 	jnz	00113$
                                   1985 ;	main.c:202: update_ERXRDPT(RX_BUFFER_END);
      003376 90 0B FF         [24] 1986 	mov	dptr,#0x0bff
      003379 12 2A AE         [24] 1987 	lcall	_update_ERXRDPT
      00337C 80 0C            [24] 1988 	sjmp	00114$
      00337E                       1989 00113$:
                                   1990 ;	main.c:206: update_ERXRDPT(gNextPacketPtr - 1);
      00337E 1E               [12] 1991 	dec	r6
      00337F BE FF 01         [24] 1992 	cjne	r6,#0xff,00364$
      003382 1F               [12] 1993 	dec	r7
      003383                       1994 00364$:
      003383 8E 82            [24] 1995 	mov	dpl, r6
      003385 8F 83            [24] 1996 	mov	dph, r7
      003387 12 2A AE         [24] 1997 	lcall	_update_ERXRDPT
      00338A                       1998 00114$:
                                   1999 ;	main.c:208: uint8_t *packet_data = (uint8_t *)malloc(6);
      00338A 90 00 06         [24] 2000 	mov	dptr,#0x0006
      00338D 12 5E F9         [24] 2001 	lcall	_malloc
      003390 AE 82            [24] 2002 	mov	r6, dpl
      003392 AD 83            [24] 2003 	mov	r5,dph
      003394 7F 00            [12] 2004 	mov	r7,#0x00
                                   2005 ;	main.c:209: spi_buffer_read(6, gNextPacketPtr, packet_data);
      003396 90 03 67         [24] 2006 	mov	dptr,#_main_gNextPacketPtr_60001_172
      003399 E0               [24] 2007 	movx	a,@dptr
      00339A FB               [12] 2008 	mov	r3,a
      00339B A3               [24] 2009 	inc	dptr
      00339C E0               [24] 2010 	movx	a,@dptr
      00339D FC               [12] 2011 	mov	r4,a
      00339E 90 03 81         [24] 2012 	mov	dptr,#_spi_buffer_read_PARM_2
      0033A1 EB               [12] 2013 	mov	a,r3
      0033A2 F0               [24] 2014 	movx	@dptr,a
      0033A3 EC               [12] 2015 	mov	a,r4
      0033A4 A3               [24] 2016 	inc	dptr
      0033A5 F0               [24] 2017 	movx	@dptr,a
      0033A6 90 03 83         [24] 2018 	mov	dptr,#_spi_buffer_read_PARM_3
      0033A9 EE               [12] 2019 	mov	a,r6
      0033AA F0               [24] 2020 	movx	@dptr,a
      0033AB ED               [12] 2021 	mov	a,r5
      0033AC A3               [24] 2022 	inc	dptr
      0033AD F0               [24] 2023 	movx	@dptr,a
      0033AE EF               [12] 2024 	mov	a,r7
      0033AF A3               [24] 2025 	inc	dptr
      0033B0 F0               [24] 2026 	movx	@dptr,a
      0033B1 90 00 06         [24] 2027 	mov	dptr,#0x0006
      0033B4 C0 07            [24] 2028 	push	ar7
      0033B6 C0 06            [24] 2029 	push	ar6
      0033B8 C0 05            [24] 2030 	push	ar5
      0033BA 12 3C B5         [24] 2031 	lcall	_spi_buffer_read
      0033BD D0 05            [24] 2032 	pop	ar5
      0033BF D0 06            [24] 2033 	pop	ar6
      0033C1 D0 07            [24] 2034 	pop	ar7
                                   2035 ;	main.c:213: nextPacket = (uint16_t)(packet_data[1] << 8 | packet_data[0]); // Next Packet (MSB, LSB)
      0033C3 74 01            [12] 2036 	mov	a,#0x01
      0033C5 2E               [12] 2037 	add	a, r6
      0033C6 FA               [12] 2038 	mov	r2,a
      0033C7 E4               [12] 2039 	clr	a
      0033C8 3D               [12] 2040 	addc	a, r5
      0033C9 FB               [12] 2041 	mov	r3,a
      0033CA 8F 04            [24] 2042 	mov	ar4,r7
      0033CC 8A 82            [24] 2043 	mov	dpl,r2
      0033CE 8B 83            [24] 2044 	mov	dph,r3
      0033D0 8C F0            [24] 2045 	mov	b,r4
      0033D2 12 6B D1         [24] 2046 	lcall	__gptrget
      0033D5 FC               [12] 2047 	mov	r4,a
      0033D6 7A 00            [12] 2048 	mov	r2,#0x00
      0033D8 8E 82            [24] 2049 	mov	dpl,r6
      0033DA 8D 83            [24] 2050 	mov	dph,r5
      0033DC 8F F0            [24] 2051 	mov	b,r7
      0033DE 12 6B D1         [24] 2052 	lcall	__gptrget
      0033E1 7B 00            [12] 2053 	mov	r3,#0x00
      0033E3 42 02            [12] 2054 	orl	ar2,a
      0033E5 EB               [12] 2055 	mov	a,r3
      0033E6 42 04            [12] 2056 	orl	ar4,a
      0033E8 8A 2A            [24] 2057 	mov	_main_sloc4_1_0,r2
      0033EA 8C 2B            [24] 2058 	mov	(_main_sloc4_1_0 + 1),r4
                                   2059 ;	main.c:214: byteCount = (uint16_t)(packet_data[3] << 8 | packet_data[2]);  // Byte Count (MSB, LSB)
      0033EC 74 03            [12] 2060 	mov	a,#0x03
      0033EE 2E               [12] 2061 	add	a, r6
      0033EF F8               [12] 2062 	mov	r0,a
      0033F0 E4               [12] 2063 	clr	a
      0033F1 3D               [12] 2064 	addc	a, r5
      0033F2 F9               [12] 2065 	mov	r1,a
      0033F3 8F 03            [24] 2066 	mov	ar3,r7
      0033F5 88 82            [24] 2067 	mov	dpl,r0
      0033F7 89 83            [24] 2068 	mov	dph,r1
      0033F9 8B F0            [24] 2069 	mov	b,r3
      0033FB 12 6B D1         [24] 2070 	lcall	__gptrget
      0033FE F8               [12] 2071 	mov	r0,a
      0033FF 7B 00            [12] 2072 	mov	r3,#0x00
      003401 88 23            [24] 2073 	mov	(_main_sloc0_1_0 + 1),r0
      003403 8B 22            [24] 2074 	mov	_main_sloc0_1_0,r3
      003405 74 02            [12] 2075 	mov	a,#0x02
      003407 2E               [12] 2076 	add	a, r6
      003408 F8               [12] 2077 	mov	r0,a
      003409 E4               [12] 2078 	clr	a
      00340A 3D               [12] 2079 	addc	a, r5
      00340B F9               [12] 2080 	mov	r1,a
      00340C 8F 03            [24] 2081 	mov	ar3,r7
      00340E 88 82            [24] 2082 	mov	dpl,r0
      003410 89 83            [24] 2083 	mov	dph,r1
      003412 8B F0            [24] 2084 	mov	b,r3
      003414 12 6B D1         [24] 2085 	lcall	__gptrget
      003417 F8               [12] 2086 	mov	r0,a
      003418 7B 00            [12] 2087 	mov	r3,#0x00
      00341A E5 23            [12] 2088 	mov	a,(_main_sloc0_1_0 + 1)
      00341C 42 03            [12] 2089 	orl	ar3,a
      00341E 88 22            [24] 2090 	mov	_main_sloc0_1_0,r0
      003420 8B 23            [24] 2091 	mov	(_main_sloc0_1_0 + 1),r3
                                   2092 ;	main.c:215: status = (uint16_t)(packet_data[5] << 8 | packet_data[4]);     // Status (MSB, LSB)
      003422 74 05            [12] 2093 	mov	a,#0x05
      003424 2E               [12] 2094 	add	a, r6
      003425 F8               [12] 2095 	mov	r0,a
      003426 E4               [12] 2096 	clr	a
      003427 3D               [12] 2097 	addc	a, r5
      003428 F9               [12] 2098 	mov	r1,a
      003429 8F 03            [24] 2099 	mov	ar3,r7
      00342B 88 82            [24] 2100 	mov	dpl,r0
      00342D 89 83            [24] 2101 	mov	dph,r1
      00342F 8B F0            [24] 2102 	mov	b,r3
      003431 12 6B D1         [24] 2103 	lcall	__gptrget
      003434 F8               [12] 2104 	mov	r0,a
      003435 7B 00            [12] 2105 	mov	r3,#0x00
      003437 88 25            [24] 2106 	mov	(_main_sloc1_1_0 + 1),r0
      003439 8B 24            [24] 2107 	mov	_main_sloc1_1_0,r3
      00343B 74 04            [12] 2108 	mov	a,#0x04
      00343D 2E               [12] 2109 	add	a, r6
      00343E F8               [12] 2110 	mov	r0,a
      00343F E4               [12] 2111 	clr	a
      003440 3D               [12] 2112 	addc	a, r5
      003441 F9               [12] 2113 	mov	r1,a
      003442 8F 03            [24] 2114 	mov	ar3,r7
      003444 88 82            [24] 2115 	mov	dpl,r0
      003446 89 83            [24] 2116 	mov	dph,r1
      003448 8B F0            [24] 2117 	mov	b,r3
      00344A 12 6B D1         [24] 2118 	lcall	__gptrget
      00344D F8               [12] 2119 	mov	r0,a
      00344E 7B 00            [12] 2120 	mov	r3,#0x00
      003450 E5 25            [12] 2121 	mov	a,(_main_sloc1_1_0 + 1)
      003452 42 03            [12] 2122 	orl	ar3,a
      003454 88 24            [24] 2123 	mov	_main_sloc1_1_0,r0
      003456 8B 25            [24] 2124 	mov	(_main_sloc1_1_0 + 1),r3
                                   2125 ;	main.c:218: len = byteCount - 4;
      003458 A9 22            [24] 2126 	mov	r1,_main_sloc0_1_0
      00345A AB 23            [24] 2127 	mov	r3,(_main_sloc0_1_0 + 1)
      00345C E9               [12] 2128 	mov	a,r1
      00345D 24 FC            [12] 2129 	add	a,#0xfc
      00345F F9               [12] 2130 	mov	r1,a
      003460 EB               [12] 2131 	mov	a,r3
      003461 34 FF            [12] 2132 	addc	a,#0xff
      003463 FB               [12] 2133 	mov	r3,a
      003464 89 28            [24] 2134 	mov	_main_sloc3_1_0,r1
      003466 8B 29            [24] 2135 	mov	(_main_sloc3_1_0 + 1),r3
                                   2136 ;	main.c:220: uint8_t *packet_data_actual = (uint8_t *)malloc(len);
      003468 85 28 26         [24] 2137 	mov	_main_sloc2_1_0,_main_sloc3_1_0
      00346B 85 29 27         [24] 2138 	mov	(_main_sloc2_1_0 + 1),(_main_sloc3_1_0 + 1)
      00346E 85 26 82         [24] 2139 	mov	dpl, _main_sloc2_1_0
      003471 85 27 83         [24] 2140 	mov	dph, (_main_sloc2_1_0 + 1)
      003474 C0 07            [24] 2141 	push	ar7
      003476 C0 06            [24] 2142 	push	ar6
      003478 C0 05            [24] 2143 	push	ar5
      00347A 12 5E F9         [24] 2144 	lcall	_malloc
      00347D A8 82            [24] 2145 	mov	r0, dpl
      00347F AB 83            [24] 2146 	mov	r3, dph
      003481 D0 05            [24] 2147 	pop	ar5
      003483 D0 06            [24] 2148 	pop	ar6
      003485 D0 07            [24] 2149 	pop	ar7
      003487 88 2C            [24] 2150 	mov	_main_sloc5_1_0,r0
      003489 8B 2D            [24] 2151 	mov	(_main_sloc5_1_0 + 1),r3
      00348B 75 2E 00         [24] 2152 	mov	(_main_sloc5_1_0 + 2),#0x00
                                   2153 ;	main.c:221: spi_buffer_read(len, gNextPacketPtr + 6, packet_data_actual);
      00348E 90 03 67         [24] 2154 	mov	dptr,#_main_gNextPacketPtr_60001_172
      003491 E0               [24] 2155 	movx	a,@dptr
      003492 FA               [12] 2156 	mov	r2,a
      003493 A3               [24] 2157 	inc	dptr
      003494 E0               [24] 2158 	movx	a,@dptr
      003495 FC               [12] 2159 	mov	r4,a
      003496 74 06            [12] 2160 	mov	a,#0x06
      003498 2A               [12] 2161 	add	a, r2
      003499 FA               [12] 2162 	mov	r2,a
      00349A E4               [12] 2163 	clr	a
      00349B 3C               [12] 2164 	addc	a, r4
      00349C FC               [12] 2165 	mov	r4,a
      00349D 90 03 81         [24] 2166 	mov	dptr,#_spi_buffer_read_PARM_2
      0034A0 EA               [12] 2167 	mov	a,r2
      0034A1 F0               [24] 2168 	movx	@dptr,a
      0034A2 EC               [12] 2169 	mov	a,r4
      0034A3 A3               [24] 2170 	inc	dptr
      0034A4 F0               [24] 2171 	movx	@dptr,a
      0034A5 90 03 83         [24] 2172 	mov	dptr,#_spi_buffer_read_PARM_3
      0034A8 E5 2C            [12] 2173 	mov	a,_main_sloc5_1_0
      0034AA F0               [24] 2174 	movx	@dptr,a
      0034AB E5 2D            [12] 2175 	mov	a,(_main_sloc5_1_0 + 1)
      0034AD A3               [24] 2176 	inc	dptr
      0034AE F0               [24] 2177 	movx	@dptr,a
      0034AF E5 2E            [12] 2178 	mov	a,(_main_sloc5_1_0 + 2)
      0034B1 A3               [24] 2179 	inc	dptr
      0034B2 F0               [24] 2180 	movx	@dptr,a
      0034B3 85 28 82         [24] 2181 	mov	dpl, _main_sloc3_1_0
      0034B6 85 29 83         [24] 2182 	mov	dph, (_main_sloc3_1_0 + 1)
      0034B9 C0 07            [24] 2183 	push	ar7
      0034BB C0 06            [24] 2184 	push	ar6
      0034BD C0 05            [24] 2185 	push	ar5
      0034BF 12 3C B5         [24] 2186 	lcall	_spi_buffer_read
                                   2187 ;	main.c:223: int is_tcp_for_target = 0;
      0034C2 90 03 69         [24] 2188 	mov	dptr,#_main_is_tcp_for_target_60004_177
      0034C5 E4               [12] 2189 	clr	a
      0034C6 F0               [24] 2190 	movx	@dptr,a
      0034C7 A3               [24] 2191 	inc	dptr
      0034C8 F0               [24] 2192 	movx	@dptr,a
                                   2193 ;	main.c:226: if (memcmp(packet_data_actual, device_mac, 6) == 0) {
      0034C9 AA 2C            [24] 2194 	mov	r2,_main_sloc5_1_0
      0034CB AB 2D            [24] 2195 	mov	r3,(_main_sloc5_1_0 + 1)
      0034CD FC               [12] 2196 	mov	r4,a
      0034CE 90 0F C8         [24] 2197 	mov	dptr,#_memcmp_PARM_2
      0034D1 74 07            [12] 2198 	mov	a,#_device_mac
      0034D3 F0               [24] 2199 	movx	@dptr,a
      0034D4 74 14            [12] 2200 	mov	a,#(_device_mac >> 8)
      0034D6 A3               [24] 2201 	inc	dptr
      0034D7 F0               [24] 2202 	movx	@dptr,a
      0034D8 E4               [12] 2203 	clr	a
      0034D9 A3               [24] 2204 	inc	dptr
      0034DA F0               [24] 2205 	movx	@dptr,a
      0034DB 90 0F CB         [24] 2206 	mov	dptr,#_memcmp_PARM_3
      0034DE 74 06            [12] 2207 	mov	a,#0x06
      0034E0 F0               [24] 2208 	movx	@dptr,a
      0034E1 E4               [12] 2209 	clr	a
      0034E2 A3               [24] 2210 	inc	dptr
      0034E3 F0               [24] 2211 	movx	@dptr,a
      0034E4 8A 82            [24] 2212 	mov	dpl, r2
      0034E6 8B 83            [24] 2213 	mov	dph, r3
      0034E8 8C F0            [24] 2214 	mov	b, r4
      0034EA 12 60 82         [24] 2215 	lcall	_memcmp
      0034ED E5 82            [12] 2216 	mov	a, dpl
      0034EF 85 83 F0         [24] 2217 	mov	b, dph
      0034F2 D0 05            [24] 2218 	pop	ar5
      0034F4 D0 06            [24] 2219 	pop	ar6
      0034F6 D0 07            [24] 2220 	pop	ar7
      0034F8 45 F0            [12] 2221 	orl	a,b
      0034FA 70 70            [24] 2222 	jnz	00121$
                                   2223 ;	main.c:229: if (packet_data_actual[12] == 0x08 && packet_data_actual[13] == 0x00) {
      0034FC 74 0C            [12] 2224 	mov	a,#0x0c
      0034FE 25 2C            [12] 2225 	add	a, _main_sloc5_1_0
      003500 FA               [12] 2226 	mov	r2,a
      003501 E4               [12] 2227 	clr	a
      003502 35 2D            [12] 2228 	addc	a, (_main_sloc5_1_0 + 1)
      003504 FB               [12] 2229 	mov	r3,a
      003505 AC 2E            [24] 2230 	mov	r4,(_main_sloc5_1_0 + 2)
      003507 8A 82            [24] 2231 	mov	dpl,r2
      003509 8B 83            [24] 2232 	mov	dph,r3
      00350B 8C F0            [24] 2233 	mov	b,r4
      00350D 12 6B D1         [24] 2234 	lcall	__gptrget
      003510 FA               [12] 2235 	mov	r2,a
      003511 BA 08 58         [24] 2236 	cjne	r2,#0x08,00121$
      003514 74 0D            [12] 2237 	mov	a,#0x0d
      003516 25 2C            [12] 2238 	add	a, _main_sloc5_1_0
      003518 FA               [12] 2239 	mov	r2,a
      003519 E4               [12] 2240 	clr	a
      00351A 35 2D            [12] 2241 	addc	a, (_main_sloc5_1_0 + 1)
      00351C FB               [12] 2242 	mov	r3,a
      00351D AC 2E            [24] 2243 	mov	r4,(_main_sloc5_1_0 + 2)
      00351F 8A 82            [24] 2244 	mov	dpl,r2
      003521 8B 83            [24] 2245 	mov	dph,r3
      003523 8C F0            [24] 2246 	mov	b,r4
      003525 12 6B D1         [24] 2247 	lcall	__gptrget
      003528 70 42            [24] 2248 	jnz	00121$
                                   2249 ;	main.c:230: printf("Valid ETHER packet.....................\n\r");
      00352A C0 07            [24] 2250 	push	ar7
      00352C C0 06            [24] 2251 	push	ar6
      00352E C0 05            [24] 2252 	push	ar5
      003530 74 D9            [12] 2253 	mov	a,#___str_38
      003532 C0 E0            [24] 2254 	push	acc
      003534 74 71            [12] 2255 	mov	a,#(___str_38 >> 8)
      003536 C0 E0            [24] 2256 	push	acc
      003538 74 80            [12] 2257 	mov	a,#0x80
      00353A C0 E0            [24] 2258 	push	acc
      00353C 12 61 AF         [24] 2259 	lcall	_printf
      00353F 15 81            [12] 2260 	dec	sp
      003541 15 81            [12] 2261 	dec	sp
      003543 15 81            [12] 2262 	dec	sp
      003545 D0 05            [24] 2263 	pop	ar5
      003547 D0 06            [24] 2264 	pop	ar6
      003549 D0 07            [24] 2265 	pop	ar7
                                   2266 ;	main.c:232: if (packet_data_actual[23] == 0x06) {
      00354B 74 17            [12] 2267 	mov	a,#0x17
      00354D 25 2C            [12] 2268 	add	a, _main_sloc5_1_0
      00354F FA               [12] 2269 	mov	r2,a
      003550 E4               [12] 2270 	clr	a
      003551 35 2D            [12] 2271 	addc	a, (_main_sloc5_1_0 + 1)
      003553 FB               [12] 2272 	mov	r3,a
      003554 AC 2E            [24] 2273 	mov	r4,(_main_sloc5_1_0 + 2)
      003556 8A 82            [24] 2274 	mov	dpl,r2
      003558 8B 83            [24] 2275 	mov	dph,r3
      00355A 8C F0            [24] 2276 	mov	b,r4
      00355C 12 6B D1         [24] 2277 	lcall	__gptrget
      00355F FA               [12] 2278 	mov	r2,a
      003560 BA 06 09         [24] 2279 	cjne	r2,#0x06,00121$
                                   2280 ;	main.c:233: is_tcp_for_target = 1;
      003563 90 03 69         [24] 2281 	mov	dptr,#_main_is_tcp_for_target_60004_177
      003566 74 01            [12] 2282 	mov	a,#0x01
      003568 F0               [24] 2283 	movx	@dptr,a
      003569 E4               [12] 2284 	clr	a
      00356A A3               [24] 2285 	inc	dptr
      00356B F0               [24] 2286 	movx	@dptr,a
      00356C                       2287 00121$:
                                   2288 ;	main.c:237: if (is_tcp_for_target)
      00356C 90 03 69         [24] 2289 	mov	dptr,#_main_is_tcp_for_target_60004_177
      00356F E0               [24] 2290 	movx	a,@dptr
      003570 F5 F0            [12] 2291 	mov	b,a
      003572 A3               [24] 2292 	inc	dptr
      003573 E0               [24] 2293 	movx	a,@dptr
      003574 45 F0            [12] 2294 	orl	a,b
      003576 70 03            [24] 2295 	jnz	00371$
      003578 02 36 68         [24] 2296 	ljmp	00126$
      00357B                       2297 00371$:
                                   2298 ;	main.c:242: uint8_t *response = process_tcp_packet(packet_data_actual, len+4, &response_size);
      00357B 74 04            [12] 2299 	mov	a,#0x04
      00357D 25 26            [12] 2300 	add	a, _main_sloc2_1_0
      00357F FB               [12] 2301 	mov	r3,a
      003580 E4               [12] 2302 	clr	a
      003581 35 27            [12] 2303 	addc	a, (_main_sloc2_1_0 + 1)
      003583 FC               [12] 2304 	mov	r4,a
      003584 90 03 AE         [24] 2305 	mov	dptr,#_process_tcp_packet_PARM_2
      003587 EB               [12] 2306 	mov	a,r3
      003588 F0               [24] 2307 	movx	@dptr,a
      003589 EC               [12] 2308 	mov	a,r4
      00358A A3               [24] 2309 	inc	dptr
      00358B F0               [24] 2310 	movx	@dptr,a
      00358C 90 03 B0         [24] 2311 	mov	dptr,#_process_tcp_packet_PARM_3
      00358F 74 6B            [12] 2312 	mov	a,#_main_response_size_70004_181
      003591 F0               [24] 2313 	movx	@dptr,a
      003592 74 03            [12] 2314 	mov	a,#(_main_response_size_70004_181 >> 8)
      003594 A3               [24] 2315 	inc	dptr
      003595 F0               [24] 2316 	movx	@dptr,a
      003596 E4               [12] 2317 	clr	a
      003597 A3               [24] 2318 	inc	dptr
      003598 F0               [24] 2319 	movx	@dptr,a
      003599 85 2C 82         [24] 2320 	mov	dpl, _main_sloc5_1_0
      00359C 85 2D 83         [24] 2321 	mov	dph, (_main_sloc5_1_0 + 1)
      00359F 85 2E F0         [24] 2322 	mov	b, (_main_sloc5_1_0 + 2)
      0035A2 C0 07            [24] 2323 	push	ar7
      0035A4 C0 06            [24] 2324 	push	ar6
      0035A6 C0 05            [24] 2325 	push	ar5
      0035A8 12 45 C9         [24] 2326 	lcall	_process_tcp_packet
      0035AB AA 82            [24] 2327 	mov	r2, dpl
      0035AD AB 83            [24] 2328 	mov	r3, dph
      0035AF AC F0            [24] 2329 	mov	r4, b
      0035B1 D0 05            [24] 2330 	pop	ar5
      0035B3 D0 06            [24] 2331 	pop	ar6
      0035B5 D0 07            [24] 2332 	pop	ar7
                                   2333 ;	main.c:245: if (response != NULL) {
      0035B7 EA               [12] 2334 	mov	a,r2
      0035B8 4B               [12] 2335 	orl	a,r3
      0035B9 60 69            [24] 2336 	jz	00123$
                                   2337 ;	main.c:246: printf("\nProcessed response data:\n");
      0035BB C0 07            [24] 2338 	push	ar7
      0035BD C0 06            [24] 2339 	push	ar6
      0035BF C0 05            [24] 2340 	push	ar5
      0035C1 C0 04            [24] 2341 	push	ar4
      0035C3 C0 03            [24] 2342 	push	ar3
      0035C5 C0 02            [24] 2343 	push	ar2
      0035C7 74 03            [12] 2344 	mov	a,#___str_39
      0035C9 C0 E0            [24] 2345 	push	acc
      0035CB 74 72            [12] 2346 	mov	a,#(___str_39 >> 8)
      0035CD C0 E0            [24] 2347 	push	acc
      0035CF 74 80            [12] 2348 	mov	a,#0x80
      0035D1 C0 E0            [24] 2349 	push	acc
      0035D3 12 61 AF         [24] 2350 	lcall	_printf
      0035D6 15 81            [12] 2351 	dec	sp
      0035D8 15 81            [12] 2352 	dec	sp
      0035DA 15 81            [12] 2353 	dec	sp
      0035DC D0 02            [24] 2354 	pop	ar2
      0035DE D0 03            [24] 2355 	pop	ar3
      0035E0 D0 04            [24] 2356 	pop	ar4
      0035E2 D0 05            [24] 2357 	pop	ar5
      0035E4 D0 06            [24] 2358 	pop	ar6
      0035E6 D0 07            [24] 2359 	pop	ar7
                                   2360 ;	main.c:248: transmit_tcp_packet(response, response_size);
      0035E8 90 03 6B         [24] 2361 	mov	dptr,#_main_response_size_70004_181
      0035EB E0               [24] 2362 	movx	a,@dptr
      0035EC F8               [12] 2363 	mov	r0,a
      0035ED A3               [24] 2364 	inc	dptr
      0035EE E0               [24] 2365 	movx	a,@dptr
      0035EF F9               [12] 2366 	mov	r1,a
      0035F0 90 09 9E         [24] 2367 	mov	dptr,#_transmit_tcp_packet_PARM_2
      0035F3 E8               [12] 2368 	mov	a,r0
      0035F4 F0               [24] 2369 	movx	@dptr,a
      0035F5 E9               [12] 2370 	mov	a,r1
      0035F6 A3               [24] 2371 	inc	dptr
      0035F7 F0               [24] 2372 	movx	@dptr,a
      0035F8 8A 82            [24] 2373 	mov	dpl, r2
      0035FA 8B 83            [24] 2374 	mov	dph, r3
      0035FC 8C F0            [24] 2375 	mov	b, r4
      0035FE C0 07            [24] 2376 	push	ar7
      003600 C0 06            [24] 2377 	push	ar6
      003602 C0 05            [24] 2378 	push	ar5
      003604 C0 04            [24] 2379 	push	ar4
      003606 C0 03            [24] 2380 	push	ar3
      003608 C0 02            [24] 2381 	push	ar2
      00360A 12 4D 03         [24] 2382 	lcall	_transmit_tcp_packet
      00360D D0 02            [24] 2383 	pop	ar2
      00360F D0 03            [24] 2384 	pop	ar3
      003611 D0 04            [24] 2385 	pop	ar4
                                   2386 ;	main.c:249: free(response); // Free response memory if allocated dynamically
      003613 8A 82            [24] 2387 	mov	dpl, r2
      003615 8B 83            [24] 2388 	mov	dph, r3
      003617 8C F0            [24] 2389 	mov	b, r4
      003619 12 5A 6B         [24] 2390 	lcall	_free
      00361C D0 05            [24] 2391 	pop	ar5
      00361E D0 06            [24] 2392 	pop	ar6
      003620 D0 07            [24] 2393 	pop	ar7
      003622 80 21            [24] 2394 	sjmp	00124$
      003624                       2395 00123$:
                                   2396 ;	main.c:251: printf("\nNo response generated by TCP packet processing.\n");
      003624 C0 07            [24] 2397 	push	ar7
      003626 C0 06            [24] 2398 	push	ar6
      003628 C0 05            [24] 2399 	push	ar5
      00362A 74 1E            [12] 2400 	mov	a,#___str_40
      00362C C0 E0            [24] 2401 	push	acc
      00362E 74 72            [12] 2402 	mov	a,#(___str_40 >> 8)
      003630 C0 E0            [24] 2403 	push	acc
      003632 74 80            [12] 2404 	mov	a,#0x80
      003634 C0 E0            [24] 2405 	push	acc
      003636 12 61 AF         [24] 2406 	lcall	_printf
      003639 15 81            [12] 2407 	dec	sp
      00363B 15 81            [12] 2408 	dec	sp
      00363D 15 81            [12] 2409 	dec	sp
      00363F D0 05            [24] 2410 	pop	ar5
      003641 D0 06            [24] 2411 	pop	ar6
      003643 D0 07            [24] 2412 	pop	ar7
      003645                       2413 00124$:
                                   2414 ;	main.c:254: printf("YESSSS\n");
      003645 C0 07            [24] 2415 	push	ar7
      003647 C0 06            [24] 2416 	push	ar6
      003649 C0 05            [24] 2417 	push	ar5
      00364B 74 50            [12] 2418 	mov	a,#___str_41
      00364D C0 E0            [24] 2419 	push	acc
      00364F 74 72            [12] 2420 	mov	a,#(___str_41 >> 8)
      003651 C0 E0            [24] 2421 	push	acc
      003653 74 80            [12] 2422 	mov	a,#0x80
      003655 C0 E0            [24] 2423 	push	acc
      003657 12 61 AF         [24] 2424 	lcall	_printf
      00365A 15 81            [12] 2425 	dec	sp
      00365C 15 81            [12] 2426 	dec	sp
      00365E 15 81            [12] 2427 	dec	sp
      003660 D0 05            [24] 2428 	pop	ar5
      003662 D0 06            [24] 2429 	pop	ar6
      003664 D0 07            [24] 2430 	pop	ar7
      003666 80 21            [24] 2431 	sjmp	00127$
      003668                       2432 00126$:
                                   2433 ;	main.c:258: printf("NOOOO\n");
      003668 C0 07            [24] 2434 	push	ar7
      00366A C0 06            [24] 2435 	push	ar6
      00366C C0 05            [24] 2436 	push	ar5
      00366E 74 58            [12] 2437 	mov	a,#___str_42
      003670 C0 E0            [24] 2438 	push	acc
      003672 74 72            [12] 2439 	mov	a,#(___str_42 >> 8)
      003674 C0 E0            [24] 2440 	push	acc
      003676 74 80            [12] 2441 	mov	a,#0x80
      003678 C0 E0            [24] 2442 	push	acc
      00367A 12 61 AF         [24] 2443 	lcall	_printf
      00367D 15 81            [12] 2444 	dec	sp
      00367F 15 81            [12] 2445 	dec	sp
      003681 15 81            [12] 2446 	dec	sp
      003683 D0 05            [24] 2447 	pop	ar5
      003685 D0 06            [24] 2448 	pop	ar6
      003687 D0 07            [24] 2449 	pop	ar7
      003689                       2450 00127$:
                                   2451 ;	main.c:262: gNextPacketPtr = nextPacket;
      003689 90 03 67         [24] 2452 	mov	dptr,#_main_gNextPacketPtr_60001_172
      00368C E5 2A            [12] 2453 	mov	a,_main_sloc4_1_0
      00368E F0               [24] 2454 	movx	@dptr,a
      00368F E5 2B            [12] 2455 	mov	a,(_main_sloc4_1_0 + 1)
      003691 A3               [24] 2456 	inc	dptr
      003692 F0               [24] 2457 	movx	@dptr,a
                                   2458 ;	main.c:267: printf("nextPacket: 0x%04X\n", nextPacket);
      003693 C0 07            [24] 2459 	push	ar7
      003695 C0 06            [24] 2460 	push	ar6
      003697 C0 05            [24] 2461 	push	ar5
      003699 C0 2A            [24] 2462 	push	_main_sloc4_1_0
      00369B C0 2B            [24] 2463 	push	(_main_sloc4_1_0 + 1)
      00369D 74 5F            [12] 2464 	mov	a,#___str_43
      00369F C0 E0            [24] 2465 	push	acc
      0036A1 74 72            [12] 2466 	mov	a,#(___str_43 >> 8)
      0036A3 C0 E0            [24] 2467 	push	acc
      0036A5 74 80            [12] 2468 	mov	a,#0x80
      0036A7 C0 E0            [24] 2469 	push	acc
      0036A9 12 61 AF         [24] 2470 	lcall	_printf
      0036AC E5 81            [12] 2471 	mov	a,sp
      0036AE 24 FB            [12] 2472 	add	a,#0xfb
      0036B0 F5 81            [12] 2473 	mov	sp,a
                                   2474 ;	main.c:268: printf("byteCount: %d\n", byteCount);
      0036B2 C0 22            [24] 2475 	push	_main_sloc0_1_0
      0036B4 C0 23            [24] 2476 	push	(_main_sloc0_1_0 + 1)
      0036B6 74 73            [12] 2477 	mov	a,#___str_44
      0036B8 C0 E0            [24] 2478 	push	acc
      0036BA 74 72            [12] 2479 	mov	a,#(___str_44 >> 8)
      0036BC C0 E0            [24] 2480 	push	acc
      0036BE 74 80            [12] 2481 	mov	a,#0x80
      0036C0 C0 E0            [24] 2482 	push	acc
      0036C2 12 61 AF         [24] 2483 	lcall	_printf
      0036C5 E5 81            [12] 2484 	mov	a,sp
      0036C7 24 FB            [12] 2485 	add	a,#0xfb
      0036C9 F5 81            [12] 2486 	mov	sp,a
                                   2487 ;	main.c:269: printf("status: 0x%02X\n", status);
      0036CB C0 24            [24] 2488 	push	_main_sloc1_1_0
      0036CD C0 25            [24] 2489 	push	(_main_sloc1_1_0 + 1)
      0036CF 74 82            [12] 2490 	mov	a,#___str_45
      0036D1 C0 E0            [24] 2491 	push	acc
      0036D3 74 72            [12] 2492 	mov	a,#(___str_45 >> 8)
      0036D5 C0 E0            [24] 2493 	push	acc
      0036D7 74 80            [12] 2494 	mov	a,#0x80
      0036D9 C0 E0            [24] 2495 	push	acc
      0036DB 12 61 AF         [24] 2496 	lcall	_printf
      0036DE E5 81            [12] 2497 	mov	a,sp
      0036E0 24 FB            [12] 2498 	add	a,#0xfb
      0036E2 F5 81            [12] 2499 	mov	sp,a
      0036E4 D0 05            [24] 2500 	pop	ar5
      0036E6 D0 06            [24] 2501 	pop	ar6
      0036E8 D0 07            [24] 2502 	pop	ar7
                                   2503 ;	main.c:272: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
      0036EA 90 03 79         [24] 2504 	mov	dptr,#_mac_spi_read_PARM_2
      0036ED E4               [12] 2505 	clr	a
      0036EE F0               [24] 2506 	movx	@dptr,a
      0036EF 75 82 1E         [24] 2507 	mov	dpl, #0x1e
      0036F2 C0 07            [24] 2508 	push	ar7
      0036F4 C0 06            [24] 2509 	push	ar6
      0036F6 C0 05            [24] 2510 	push	ar5
      0036F8 12 3A 7B         [24] 2511 	lcall	_mac_spi_read
      0036FB E5 82            [12] 2512 	mov	a, dpl
      0036FD D0 05            [24] 2513 	pop	ar5
      0036FF D0 06            [24] 2514 	pop	ar6
      003701 D0 07            [24] 2515 	pop	ar7
                                   2516 ;	main.c:273: spi_control_write(2, 0x1E, (read_econ2 | (1 << 6))); //mac enable for reception
      003703 44 40            [12] 2517 	orl	a,#0x40
      003705 FC               [12] 2518 	mov	r4,a
      003706 90 03 70         [24] 2519 	mov	dptr,#_spi_control_write_PARM_2
      003709 74 1E            [12] 2520 	mov	a,#0x1e
      00370B F0               [24] 2521 	movx	@dptr,a
      00370C 90 03 71         [24] 2522 	mov	dptr,#_spi_control_write_PARM_3
      00370F EC               [12] 2523 	mov	a,r4
      003710 F0               [24] 2524 	movx	@dptr,a
      003711 75 82 02         [24] 2525 	mov	dpl, #0x02
      003714 C0 07            [24] 2526 	push	ar7
      003716 C0 06            [24] 2527 	push	ar6
      003718 C0 05            [24] 2528 	push	ar5
      00371A 12 39 05         [24] 2529 	lcall	_spi_control_write
      00371D D0 05            [24] 2530 	pop	ar5
      00371F D0 06            [24] 2531 	pop	ar6
      003721 D0 07            [24] 2532 	pop	ar7
                                   2533 ;	main.c:274: free(packet_data);
      003723 7F 00            [12] 2534 	mov	r7,#0x00
      003725 8E 82            [24] 2535 	mov	dpl, r6
      003727 8D 83            [24] 2536 	mov	dph, r5
      003729 8F F0            [24] 2537 	mov	b, r7
      00372B 12 5A 6B         [24] 2538 	lcall	_free
      00372E 02 33 5B         [24] 2539 	ljmp	00131$
                                   2540 ;	main.c:285: case 'C':{
      003731                       2541 00134$:
                                   2542 ;	main.c:286: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
      003731 74 92            [12] 2543 	mov	a,#___str_46
      003733 C0 E0            [24] 2544 	push	acc
      003735 74 72            [12] 2545 	mov	a,#(___str_46 >> 8)
      003737 C0 E0            [24] 2546 	push	acc
      003739 74 80            [12] 2547 	mov	a,#0x80
      00373B C0 E0            [24] 2548 	push	acc
      00373D 12 61 AF         [24] 2549 	lcall	_printf
      003740 15 81            [12] 2550 	dec	sp
      003742 15 81            [12] 2551 	dec	sp
      003744 15 81            [12] 2552 	dec	sp
                                   2553 ;	main.c:287: ENC_RESET = 0;
                                   2554 ;	assignBit
      003746 C2 90            [12] 2555 	clr	_P1_0
                                   2556 ;	main.c:288: for(int i = 0; i < 6000; i++);
      003748 7E 00            [12] 2557 	mov	r6,#0x00
      00374A 7F 00            [12] 2558 	mov	r7,#0x00
      00374C                       2559 00152$:
      00374C C3               [12] 2560 	clr	c
      00374D EE               [12] 2561 	mov	a,r6
      00374E 94 70            [12] 2562 	subb	a,#0x70
      003750 EF               [12] 2563 	mov	a,r7
      003751 64 80            [12] 2564 	xrl	a,#0x80
      003753 94 97            [12] 2565 	subb	a,#0x97
      003755 50 07            [24] 2566 	jnc	00135$
      003757 0E               [12] 2567 	inc	r6
      003758 BE 00 F1         [24] 2568 	cjne	r6,#0x00,00152$
      00375B 0F               [12] 2569 	inc	r7
      00375C 80 EE            [24] 2570 	sjmp	00152$
      00375E                       2571 00135$:
                                   2572 ;	main.c:289: ENC_RESET = 1;
                                   2573 ;	assignBit
      00375E D2 90            [12] 2574 	setb	_P1_0
                                   2575 ;	main.c:290: break;
      003760 02 2D 73         [24] 2576 	ljmp	00146$
                                   2577 ;	main.c:292: case 'D':
      003763                       2578 00136$:
                                   2579 ;	main.c:296: process_packet_from_buffer(0x0846);
      003763 90 08 46         [24] 2580 	mov	dptr,#0x0846
      003766 12 4A 53         [24] 2581 	lcall	_process_packet_from_buffer
                                   2582 ;	main.c:297: break;
      003769 02 2D 73         [24] 2583 	ljmp	00146$
                                   2584 ;	main.c:299: case 'E':{
      00376C                       2585 00137$:
                                   2586 ;	main.c:300: IT0 = 1;  // Edge-triggered mode for INT0
                                   2587 ;	assignBit
      00376C D2 88            [12] 2588 	setb	_IT0
                                   2589 ;	main.c:301: EX0 = 1;  // Enable INT0
                                   2590 ;	assignBit
      00376E D2 A8            [12] 2591 	setb	_EX0
                                   2592 ;	main.c:302: EA = 1;   // Enable global interrupts
                                   2593 ;	assignBit
      003770 D2 AF            [12] 2594 	setb	_EA
                                   2595 ;	main.c:303: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
      003772 90 03 79         [24] 2596 	mov	dptr,#_mac_spi_read_PARM_2
      003775 E4               [12] 2597 	clr	a
      003776 F0               [24] 2598 	movx	@dptr,a
      003777 75 82 1E         [24] 2599 	mov	dpl, #0x1e
      00377A 12 3A 7B         [24] 2600 	lcall	_mac_spi_read
                                   2601 ;	main.c:305: printf("Enabling TXPKTIE\n\r");
      00377D 74 C5            [12] 2602 	mov	a,#___str_47
      00377F C0 E0            [24] 2603 	push	acc
      003781 74 72            [12] 2604 	mov	a,#(___str_47 >> 8)
      003783 C0 E0            [24] 2605 	push	acc
      003785 74 80            [12] 2606 	mov	a,#0x80
      003787 C0 E0            [24] 2607 	push	acc
      003789 12 61 AF         [24] 2608 	lcall	_printf
      00378C 15 81            [12] 2609 	dec	sp
      00378E 15 81            [12] 2610 	dec	sp
      003790 15 81            [12] 2611 	dec	sp
                                   2612 ;	main.c:306: spi_control_write(0, 0x1B, 0xC0);
      003792 90 03 70         [24] 2613 	mov	dptr,#_spi_control_write_PARM_2
      003795 74 1B            [12] 2614 	mov	a,#0x1b
      003797 F0               [24] 2615 	movx	@dptr,a
      003798 90 03 71         [24] 2616 	mov	dptr,#_spi_control_write_PARM_3
      00379B 74 C0            [12] 2617 	mov	a,#0xc0
      00379D F0               [24] 2618 	movx	@dptr,a
      00379E 75 82 00         [24] 2619 	mov	dpl, #0x00
      0037A1 12 39 05         [24] 2620 	lcall	_spi_control_write
                                   2621 ;	main.c:307: break;
      0037A4 02 2D 73         [24] 2622 	ljmp	00146$
                                   2623 ;	main.c:309: case 'F':{
      0037A7                       2624 00138$:
                                   2625 ;	main.c:310: printf("Disabling TXPKTIE\n\r");
      0037A7 74 D8            [12] 2626 	mov	a,#___str_48
      0037A9 C0 E0            [24] 2627 	push	acc
      0037AB 74 72            [12] 2628 	mov	a,#(___str_48 >> 8)
      0037AD C0 E0            [24] 2629 	push	acc
      0037AF 74 80            [12] 2630 	mov	a,#0x80
      0037B1 C0 E0            [24] 2631 	push	acc
      0037B3 12 61 AF         [24] 2632 	lcall	_printf
      0037B6 15 81            [12] 2633 	dec	sp
      0037B8 15 81            [12] 2634 	dec	sp
      0037BA 15 81            [12] 2635 	dec	sp
                                   2636 ;	main.c:311: spi_control_write(0, 0x1B, 0);
      0037BC 90 03 70         [24] 2637 	mov	dptr,#_spi_control_write_PARM_2
      0037BF 74 1B            [12] 2638 	mov	a,#0x1b
      0037C1 F0               [24] 2639 	movx	@dptr,a
      0037C2 90 03 71         [24] 2640 	mov	dptr,#_spi_control_write_PARM_3
      0037C5 E4               [12] 2641 	clr	a
      0037C6 F0               [24] 2642 	movx	@dptr,a
      0037C7 75 82 00         [24] 2643 	mov	dpl, #0x00
      0037CA 12 39 05         [24] 2644 	lcall	_spi_control_write
                                   2645 ;	main.c:314: while(1)
      0037CD                       2646 00141$:
                                   2647 ;	main.c:316: packetLoop();
      0037CD 12 58 5E         [24] 2648 	lcall	_packetLoop
                                   2649 ;	main.c:320: default: {
      0037D0 80 FB            [24] 2650 	sjmp	00141$
      0037D2                       2651 00143$:
                                   2652 ;	main.c:321: printf("Invalid option. Please select a valid action.\n\r");
      0037D2 74 EC            [12] 2653 	mov	a,#___str_49
      0037D4 C0 E0            [24] 2654 	push	acc
      0037D6 74 72            [12] 2655 	mov	a,#(___str_49 >> 8)
      0037D8 C0 E0            [24] 2656 	push	acc
      0037DA 74 80            [12] 2657 	mov	a,#0x80
      0037DC C0 E0            [24] 2658 	push	acc
      0037DE 12 61 AF         [24] 2659 	lcall	_printf
      0037E1 15 81            [12] 2660 	dec	sp
      0037E3 15 81            [12] 2661 	dec	sp
      0037E5 15 81            [12] 2662 	dec	sp
                                   2663 ;	main.c:324: }
                                   2664 ;	main.c:326: }
      0037E7 02 2D 73         [24] 2665 	ljmp	00146$
                                   2666 	.area CSEG    (CODE)
                                   2667 	.area CONST   (CODE)
                                   2668 	.area CONST   (CODE)
      006DB0                       2669 ___str_0:
      006DB0 0A                    2670 	.db 0x0a
      006DB1 0D                    2671 	.db 0x0d
      006DB2 00                    2672 	.db 0x00
                                   2673 	.area CSEG    (CODE)
                                   2674 	.area CONST   (CODE)
      006DB3                       2675 ___str_1:
      006DB3 53 50 49 20 4F 70 65  2676 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      006DC9 0A                    2677 	.db 0x0a
      006DCA 0D                    2678 	.db 0x0d
      006DCB 00                    2679 	.db 0x00
                                   2680 	.area CSEG    (CODE)
                                   2681 	.area CONST   (CODE)
      006DCC                       2682 ___str_2:
      006DCC 0A                    2683 	.db 0x0a
      006DCD 0D                    2684 	.db 0x0d
      006DCE 43 68 6F 6F 73 65 20  2685 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      006DE0 0A                    2686 	.db 0x0a
      006DE1 0D                    2687 	.db 0x0d
      006DE2 00                    2688 	.db 0x00
                                   2689 	.area CSEG    (CODE)
                                   2690 	.area CONST   (CODE)
      006DE3                       2691 ___str_3:
      006DE3 31 20 2D 2D 3E 20 43  2692 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      006DF6 0A                    2693 	.db 0x0a
      006DF7 0D                    2694 	.db 0x0d
      006DF8 00                    2695 	.db 0x00
                                   2696 	.area CSEG    (CODE)
                                   2697 	.area CONST   (CODE)
      006DF9                       2698 ___str_4:
      006DF9 32 20 2D 2D 3E 20 42  2699 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      006E0B 0A                    2700 	.db 0x0a
      006E0C 0D                    2701 	.db 0x0d
      006E0D 00                    2702 	.db 0x00
                                   2703 	.area CSEG    (CODE)
                                   2704 	.area CONST   (CODE)
      006E0E                       2705 ___str_5:
      006E0E 33 20 2D 2D 3E 20 42  2706 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      006E1F 0A                    2707 	.db 0x0a
      006E20 0D                    2708 	.db 0x0d
      006E21 00                    2709 	.db 0x00
                                   2710 	.area CSEG    (CODE)
                                   2711 	.area CONST   (CODE)
      006E22                       2712 ___str_6:
      006E22 34 20 2D 2D 3E 20 4D  2713 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      006E39 0A                    2714 	.db 0x0a
      006E3A 0D                    2715 	.db 0x0d
      006E3B 00                    2716 	.db 0x00
                                   2717 	.area CSEG    (CODE)
                                   2718 	.area CONST   (CODE)
      006E3C                       2719 ___str_7:
      006E3C 35 20 2D 2D 3E 20 50  2720 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      006E4F 0A                    2721 	.db 0x0a
      006E50 0D                    2722 	.db 0x0d
      006E51 00                    2723 	.db 0x00
                                   2724 	.area CSEG    (CODE)
                                   2725 	.area CONST   (CODE)
      006E52                       2726 ___str_8:
      006E52 36 20 2D 2D 3E 20 50  2727 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      006E64 0A                    2728 	.db 0x0a
      006E65 0D                    2729 	.db 0x0d
      006E66 00                    2730 	.db 0x00
                                   2731 	.area CSEG    (CODE)
                                   2732 	.area CONST   (CODE)
      006E67                       2733 ___str_9:
      006E67 37 20 2D 2D 3E 20 45  2734 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      006E76 0A                    2735 	.db 0x0a
      006E77 0D                    2736 	.db 0x0d
      006E78 00                    2737 	.db 0x00
                                   2738 	.area CSEG    (CODE)
                                   2739 	.area CONST   (CODE)
      006E79                       2740 ___str_10:
      006E79 38 20 2D 2D 3E 20 52  2741 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      006E90 0A                    2742 	.db 0x0a
      006E91 0D                    2743 	.db 0x0d
      006E92 00                    2744 	.db 0x00
                                   2745 	.area CSEG    (CODE)
                                   2746 	.area CONST   (CODE)
      006E93                       2747 ___str_11:
      006E93 39 20 2D 2D 3E 20 44  2748 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      006EA5 0A                    2749 	.db 0x0a
      006EA6 0D                    2750 	.db 0x0d
      006EA7 00                    2751 	.db 0x00
                                   2752 	.area CSEG    (CODE)
                                   2753 	.area CONST   (CODE)
      006EA8                       2754 ___str_12:
      006EA8 41 20 2D 2D 3E 20 53  2755 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      006EBE 0A                    2756 	.db 0x0a
      006EBF 0D                    2757 	.db 0x0d
      006EC0 00                    2758 	.db 0x00
                                   2759 	.area CSEG    (CODE)
                                   2760 	.area CONST   (CODE)
      006EC1                       2761 ___str_13:
      006EC1 42 20 2D 2D 3E 20 49  2762 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      006ED6 0A                    2763 	.db 0x0a
      006ED7 0D                    2764 	.db 0x0d
      006ED8 00                    2765 	.db 0x00
                                   2766 	.area CSEG    (CODE)
                                   2767 	.area CONST   (CODE)
      006ED9                       2768 ___str_14:
      006ED9 43 20 2D 2D 3E 20 48  2769 	.ascii "C --> Hard Reset(nRESET pin)"
             61 72 64 20 52 65 73
             65 74 28 6E 52 45 53
             45 54 20 70 69 6E 29
      006EF5 0A                    2770 	.db 0x0a
      006EF6 0D                    2771 	.db 0x0d
      006EF7 00                    2772 	.db 0x00
                                   2773 	.area CSEG    (CODE)
                                   2774 	.area CONST   (CODE)
      006EF8                       2775 ___str_15:
      006EF8 44 20 2D 2D 3E 20 50  2776 	.ascii "D --> Process TCP"
             72 6F 63 65 73 73 20
             54 43 50
      006F09 0A                    2777 	.db 0x0a
      006F0A 0D                    2778 	.db 0x0d
      006F0B 00                    2779 	.db 0x00
                                   2780 	.area CSEG    (CODE)
                                   2781 	.area CONST   (CODE)
      006F0C                       2782 ___str_16:
      006F0C 45 20 2D 2D 3E 20 45  2783 	.ascii "E --> Enable TX interrupt"
             6E 61 62 6C 65 20 54
             58 20 69 6E 74 65 72
             72 75 70 74
      006F25 0A                    2784 	.db 0x0a
      006F26 0D                    2785 	.db 0x0d
      006F27 00                    2786 	.db 0x00
                                   2787 	.area CSEG    (CODE)
                                   2788 	.area CONST   (CODE)
      006F28                       2789 ___str_17:
      006F28 46 20 2D 2D 3E 20 44  2790 	.ascii "F --> Disabling TX interrupt"
             69 73 61 62 6C 69 6E
             67 20 54 58 20 69 6E
             74 65 72 72 75 70 74
      006F44 0A                    2791 	.db 0x0a
      006F45 0D                    2792 	.db 0x0d
      006F46 00                    2793 	.db 0x00
                                   2794 	.area CSEG    (CODE)
                                   2795 	.area CONST   (CODE)
      006F47                       2796 ___str_18:
      006F47 45 6E 74 65 72 20 74  2797 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      006F69 0A                    2798 	.db 0x0a
      006F6A 0D                    2799 	.db 0x0d
      006F6B 00                    2800 	.db 0x00
                                   2801 	.area CSEG    (CODE)
                                   2802 	.area CONST   (CODE)
      006F6C                       2803 ___str_19:
      006F6C 45 6E 74 65 72 20 74  2804 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      006F96 0A                    2805 	.db 0x0a
      006F97 0D                    2806 	.db 0x0d
      006F98 00                    2807 	.db 0x00
                                   2808 	.area CSEG    (CODE)
                                   2809 	.area CONST   (CODE)
      006F99                       2810 ___str_20:
      006F99 45 6E 74 65 72 20 74  2811 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      006FBA 0A                    2812 	.db 0x0a
      006FBB 0D                    2813 	.db 0x0d
      006FBC 00                    2814 	.db 0x00
                                   2815 	.area CSEG    (CODE)
                                   2816 	.area CONST   (CODE)
      006FBD                       2817 ___str_21:
      006FBD 45 6E 74 65 72 20 74  2818 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      006FE0 0A                    2819 	.db 0x0a
      006FE1 0D                    2820 	.db 0x0d
      006FE2 00                    2821 	.db 0x00
                                   2822 	.area CSEG    (CODE)
                                   2823 	.area CONST   (CODE)
      006FE3                       2824 ___str_22:
      006FE3 45 6E 74 65 72 20 74  2825 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      006FFE 0A                    2826 	.db 0x0a
      006FFF 0D                    2827 	.db 0x0d
      007000 00                    2828 	.db 0x00
                                   2829 	.area CSEG    (CODE)
                                   2830 	.area CONST   (CODE)
      007001                       2831 ___str_23:
      007001 45 6E 74 65 72 20 25  2832 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      007021 0A                    2833 	.db 0x0a
      007022 0D                    2834 	.db 0x0d
      007023 00                    2835 	.db 0x00
                                   2836 	.area CSEG    (CODE)
                                   2837 	.area CONST   (CODE)
      007024                       2838 ___str_24:
      007024 42 79 74 65 20 25 64  2839 	.ascii "Byte %d: "
             3A 20
      00702D 00                    2840 	.db 0x00
                                   2841 	.area CSEG    (CODE)
                                   2842 	.area CONST   (CODE)
      00702E                       2843 ___str_25:
      00702E 45 6E 74 65 72 20 74  2844 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      007050 0A                    2845 	.db 0x0a
      007051 0D                    2846 	.db 0x0d
      007052 00                    2847 	.db 0x00
                                   2848 	.area CSEG    (CODE)
                                   2849 	.area CONST   (CODE)
      007053                       2850 ___str_26:
      007053 45 6E 74 65 72 20 74  2851 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      007079 0A                    2852 	.db 0x0a
      00707A 0D                    2853 	.db 0x0d
      00707B 00                    2854 	.db 0x00
                                   2855 	.area CSEG    (CODE)
                                   2856 	.area CONST   (CODE)
      00707C                       2857 ___str_27:
      00707C 45 6E 74 65 72 20 74  2858 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      0070A2 0A                    2859 	.db 0x0a
      0070A3 0D                    2860 	.db 0x0d
      0070A4 00                    2861 	.db 0x00
                                   2862 	.area CSEG    (CODE)
                                   2863 	.area CONST   (CODE)
      0070A5                       2864 ___str_28:
      0070A5 4D 41 43 20 52 65 67  2865 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      0070BE 0A                    2866 	.db 0x0a
      0070BF 0D                    2867 	.db 0x0d
      0070C0 00                    2868 	.db 0x00
                                   2869 	.area CSEG    (CODE)
                                   2870 	.area CONST   (CODE)
      0070C1                       2871 ___str_29:
      0070C1 45 6E 74 65 72 20 74  2872 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      0070E0 0A                    2873 	.db 0x0a
      0070E1 0D                    2874 	.db 0x0d
      0070E2 00                    2875 	.db 0x00
                                   2876 	.area CSEG    (CODE)
                                   2877 	.area CONST   (CODE)
      0070E3                       2878 ___str_30:
      0070E3 45 6E 74 65 72 20 74  2879 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      007102 0A                    2880 	.db 0x0a
      007103 0D                    2881 	.db 0x0d
      007104 00                    2882 	.db 0x00
                                   2883 	.area CSEG    (CODE)
                                   2884 	.area CONST   (CODE)
      007105                       2885 ___str_31:
      007105 50 48 59 20 57 72 69  2886 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      00711B 0A                    2887 	.db 0x0a
      00711C 0D                    2888 	.db 0x0d
      00711D 00                    2889 	.db 0x00
                                   2890 	.area CSEG    (CODE)
                                   2891 	.area CONST   (CODE)
      00711E                       2892 ___str_32:
      00711E 45 6E 74 65 72 20 74  2893 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      007145 0A                    2894 	.db 0x0a
      007146 0D                    2895 	.db 0x0d
      007147 00                    2896 	.db 0x00
                                   2897 	.area CSEG    (CODE)
                                   2898 	.area CONST   (CODE)
      007148                       2899 ___str_33:
      007148 50 48 59 20 52 65 61  2900 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      00715D 0A                    2901 	.db 0x0a
      00715E 0D                    2902 	.db 0x0d
      00715F 00                    2903 	.db 0x00
                                   2904 	.area CSEG    (CODE)
                                   2905 	.area CONST   (CODE)
      007160                       2906 ___str_34:
      007160 52 65 73 65 74 74 69  2907 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      007175 0A                    2908 	.db 0x0a
      007176 0D                    2909 	.db 0x0d
      007177 00                    2910 	.db 0x00
                                   2911 	.area CSEG    (CODE)
                                   2912 	.area CONST   (CODE)
      007178                       2913 ___str_35:
      007178 45 6E 74 65 72 20 74  2914 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      00719F 0A                    2915 	.db 0x0a
      0071A0 0D                    2916 	.db 0x0d
      0071A1 00                    2917 	.db 0x00
                                   2918 	.area CSEG    (CODE)
                                   2919 	.area CONST   (CODE)
      0071A2                       2920 ___str_36:
      0071A2 45 6E 74 65 72 20 74  2921 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      0071BA 0A                    2922 	.db 0x0a
      0071BB 0D                    2923 	.db 0x0d
      0071BC 00                    2924 	.db 0x00
                                   2925 	.area CSEG    (CODE)
                                   2926 	.area CONST   (CODE)
      0071BD                       2927 ___str_37:
      0071BD 45 54 48 20 52 65 67  2928 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      0071D6 0A                    2929 	.db 0x0a
      0071D7 0D                    2930 	.db 0x0d
      0071D8 00                    2931 	.db 0x00
                                   2932 	.area CSEG    (CODE)
                                   2933 	.area CONST   (CODE)
      0071D9                       2934 ___str_38:
      0071D9 56 61 6C 69 64 20 45  2935 	.ascii "Valid ETHER packet....................."
             54 48 45 52 20 70 61
             63 6B 65 74 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E
      007200 0A                    2936 	.db 0x0a
      007201 0D                    2937 	.db 0x0d
      007202 00                    2938 	.db 0x00
                                   2939 	.area CSEG    (CODE)
                                   2940 	.area CONST   (CODE)
      007203                       2941 ___str_39:
      007203 0A                    2942 	.db 0x0a
      007204 50 72 6F 63 65 73 73  2943 	.ascii "Processed response data:"
             65 64 20 72 65 73 70
             6F 6E 73 65 20 64 61
             74 61 3A
      00721C 0A                    2944 	.db 0x0a
      00721D 00                    2945 	.db 0x00
                                   2946 	.area CSEG    (CODE)
                                   2947 	.area CONST   (CODE)
      00721E                       2948 ___str_40:
      00721E 0A                    2949 	.db 0x0a
      00721F 4E 6F 20 72 65 73 70  2950 	.ascii "No response generated by TCP packet processing."
             6F 6E 73 65 20 67 65
             6E 65 72 61 74 65 64
             20 62 79 20 54 43 50
             20 70 61 63 6B 65 74
             20 70 72 6F 63 65 73
             73 69 6E 67 2E
      00724E 0A                    2951 	.db 0x0a
      00724F 00                    2952 	.db 0x00
                                   2953 	.area CSEG    (CODE)
                                   2954 	.area CONST   (CODE)
      007250                       2955 ___str_41:
      007250 59 45 53 53 53 53     2956 	.ascii "YESSSS"
      007256 0A                    2957 	.db 0x0a
      007257 00                    2958 	.db 0x00
                                   2959 	.area CSEG    (CODE)
                                   2960 	.area CONST   (CODE)
      007258                       2961 ___str_42:
      007258 4E 4F 4F 4F 4F        2962 	.ascii "NOOOO"
      00725D 0A                    2963 	.db 0x0a
      00725E 00                    2964 	.db 0x00
                                   2965 	.area CSEG    (CODE)
                                   2966 	.area CONST   (CODE)
      00725F                       2967 ___str_43:
      00725F 6E 65 78 74 50 61 63  2968 	.ascii "nextPacket: 0x%04X"
             6B 65 74 3A 20 30 78
             25 30 34 58
      007271 0A                    2969 	.db 0x0a
      007272 00                    2970 	.db 0x00
                                   2971 	.area CSEG    (CODE)
                                   2972 	.area CONST   (CODE)
      007273                       2973 ___str_44:
      007273 62 79 74 65 43 6F 75  2974 	.ascii "byteCount: %d"
             6E 74 3A 20 25 64
      007280 0A                    2975 	.db 0x0a
      007281 00                    2976 	.db 0x00
                                   2977 	.area CSEG    (CODE)
                                   2978 	.area CONST   (CODE)
      007282                       2979 ___str_45:
      007282 73 74 61 74 75 73 3A  2980 	.ascii "status: 0x%02X"
             20 30 78 25 30 32 58
      007290 0A                    2981 	.db 0x0a
      007291 00                    2982 	.db 0x00
                                   2983 	.area CSEG    (CODE)
                                   2984 	.area CONST   (CODE)
      007292                       2985 ___str_46:
      007292 20 52 65 73 65 74 74  2986 	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
             69 6E 67 20 45 4E 43
             20 75 73 69 6E 67 20
             52 45 53 45 54 20 70
             69 6E 20 69 6E 20 48
             61 72 64 77 61 72 65
             28 50 31 5F 30 29
      0072C2 0A                    2987 	.db 0x0a
      0072C3 0D                    2988 	.db 0x0d
      0072C4 00                    2989 	.db 0x00
                                   2990 	.area CSEG    (CODE)
                                   2991 	.area CONST   (CODE)
      0072C5                       2992 ___str_47:
      0072C5 45 6E 61 62 6C 69 6E  2993 	.ascii "Enabling TXPKTIE"
             67 20 54 58 50 4B 54
             49 45
      0072D5 0A                    2994 	.db 0x0a
      0072D6 0D                    2995 	.db 0x0d
      0072D7 00                    2996 	.db 0x00
                                   2997 	.area CSEG    (CODE)
                                   2998 	.area CONST   (CODE)
      0072D8                       2999 ___str_48:
      0072D8 44 69 73 61 62 6C 69  3000 	.ascii "Disabling TXPKTIE"
             6E 67 20 54 58 50 4B
             54 49 45
      0072E9 0A                    3001 	.db 0x0a
      0072EA 0D                    3002 	.db 0x0d
      0072EB 00                    3003 	.db 0x00
                                   3004 	.area CSEG    (CODE)
                                   3005 	.area CONST   (CODE)
      0072EC                       3006 ___str_49:
      0072EC 49 6E 76 61 6C 69 64  3007 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      007319 0A                    3008 	.db 0x0a
      00731A 0D                    3009 	.db 0x0d
      00731B 00                    3010 	.db 0x00
                                   3011 	.area CSEG    (CODE)
                                   3012 	.area XINIT   (CODE)
      007BC0                       3013 __xinit__device_mac:
      007BC0 02                    3014 	.db #0x02	; 2
      007BC1 11                    3015 	.db #0x11	; 17
      007BC2 22                    3016 	.db #0x22	; 34
      007BC3 33                    3017 	.db #0x33	; 51	'3'
      007BC4 44                    3018 	.db #0x44	; 68	'D'
      007BC5 55                    3019 	.db #0x55	; 85	'U'
      007BC6                       3020 __xinit__target_mac:
      007BC6 F8                    3021 	.db #0xf8	; 248
      007BC7 75                    3022 	.db #0x75	; 117	'u'
      007BC8 A4                    3023 	.db #0xa4	; 164
      007BC9 8C                    3024 	.db #0x8c	; 140
      007BCA 41                    3025 	.db #0x41	; 65	'A'
      007BCB 31                    3026 	.db #0x31	; 49	'1'
      007BCC                       3027 __xinit__device_ip:
      007BCC C0                    3028 	.db #0xc0	; 192
      007BCD A8                    3029 	.db #0xa8	; 168
      007BCE 01                    3030 	.db #0x01	; 1
      007BCF 64                    3031 	.db #0x64	; 100	'd'
      007BD0                       3032 __xinit__target_ip:
      007BD0 C0                    3033 	.db #0xc0	; 192
      007BD1 A8                    3034 	.db #0xa8	; 168
      007BD2 01                    3035 	.db #0x01	; 1
      007BD3 01                    3036 	.db #0x01	; 1
                                   3037 	.area CABS    (ABS,CODE)

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
                                     14 	.globl _update_ERXRDPT
                                     15 	.globl _ENC_pkt_count
                                     16 	.globl _enc_init
                                     17 	.globl _send_arp_request
                                     18 	.globl _spi_control_write
                                     19 	.globl _eth_spi_read
                                     20 	.globl _phy_spi_write
                                     21 	.globl _phy_spi_read
                                     22 	.globl _spi_buffer_write
                                     23 	.globl _spi_buffer_read
                                     24 	.globl _mac_spi_read
                                     25 	.globl _enc_reset
                                     26 	.globl _configure_SPI
                                     27 	.globl _process_packet_from_buffer
                                     28 	.globl _transmit_tcp_packet
                                     29 	.globl _print_hexdump
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
      000039                        495 _hex_to_int_sloc0_1_0:
      000039                        496 	.ds 3
      00003C                        497 _hex_to_int_sloc1_1_0:
      00003C                        498 	.ds 1
      00003D                        499 _hex_to_int_sloc2_1_0:
      00003D                        500 	.ds 2
                                    501 ;--------------------------------------------------------
                                    502 ; Stack segment in internal ram
                                    503 ;--------------------------------------------------------
                                    504 	.area SSEG
      000043                        505 __start__stack:
      000043                        506 	.ds	1
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
      000156                        529 _hex_to_int_str_10000_127:
      000156                        530 	.ds 3
      000159                        531 _hex_to_int_result_10000_128:
      000159                        532 	.ds 2
      00015B                        533 _hex_to_int_ASCII_20000_129:
      00015B                        534 	.ds 2
      00015D                        535 _get_user_buffer_size_input_10000_134:
      00015D                        536 	.ds 10
      000167                        537 _main_device_mac_10000_137:
      000167                        538 	.ds 6
      00016D                        539 _main_target_mac_10000_137:
      00016D                        540 	.ds 6
      000173                        541 _main_device_ip_10000_137:
      000173                        542 	.ds 4
      000177                        543 _main_target_ip_10000_137:
      000177                        544 	.ds 4
      00017B                        545 _main_buffer_40003_147:
      00017B                        546 	.ds 256
      00027B                        547 _main_buffer_40003_152:
      00027B                        548 	.ds 256
      00037B                        549 _main_gNextPacketPtr_60001_168:
      00037B                        550 	.ds 2
      00037D                        551 _main_is_tcp_for_target_60004_173:
      00037D                        552 	.ds 2
      00037F                        553 _main_response_size_70004_177:
      00037F                        554 	.ds 2
                                    555 ;--------------------------------------------------------
                                    556 ; absolute external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XABS    (ABS,XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; initialized external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XISEG   (XDATA)
      000E0A                        563 _device_mac::
      000E0A                        564 	.ds 6
      000E10                        565 _target_mac::
      000E10                        566 	.ds 6
      000E16                        567 _device_ip::
      000E16                        568 	.ds 4
      000E1A                        569 _target_ip::
      000E1A                        570 	.ds 4
                                    571 	.area HOME    (CODE)
                                    572 	.area GSINIT0 (CODE)
                                    573 	.area GSINIT1 (CODE)
                                    574 	.area GSINIT2 (CODE)
                                    575 	.area GSINIT3 (CODE)
                                    576 	.area GSINIT4 (CODE)
                                    577 	.area GSINIT5 (CODE)
                                    578 	.area GSINIT  (CODE)
                                    579 	.area GSFINAL (CODE)
                                    580 	.area CSEG    (CODE)
                                    581 ;--------------------------------------------------------
                                    582 ; interrupt vector
                                    583 ;--------------------------------------------------------
                                    584 	.area HOME    (CODE)
      002000                        585 __interrupt_vect:
      002000 02 20 09         [24]  586 	ljmp	__sdcc_gsinit_startup
      002003 02 24 5C         [24]  587 	ljmp	_external_interrupt0_isr
                                    588 ;--------------------------------------------------------
                                    589 ; global & static initialisations
                                    590 ;--------------------------------------------------------
                                    591 	.area HOME    (CODE)
                                    592 	.area GSINIT  (CODE)
                                    593 	.area GSFINAL (CODE)
                                    594 	.area GSINIT  (CODE)
                                    595 	.globl __sdcc_gsinit_startup
                                    596 	.globl __sdcc_program_startup
                                    597 	.globl __start__stack
                                    598 	.globl __mcs51_genXINIT
                                    599 	.globl __mcs51_genXRAMCLEAR
                                    600 	.globl __mcs51_genRAMCLEAR
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'main'
                                    603 ;------------------------------------------------------------
                                    604 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    605 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    606 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                    607 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                    608 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                    609 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                    610 ;device_mac                Allocated with name '_main_device_mac_10000_137'
                                    611 ;target_mac                Allocated with name '_main_target_mac_10000_137'
                                    612 ;device_ip                 Allocated with name '_main_device_ip_10000_137'
                                    613 ;target_ip                 Allocated with name '_main_target_ip_10000_137'
                                    614 ;c                         Allocated with name '_main_c_20001_139'
                                    615 ;reg_bank                  Allocated with name '_main_reg_bank_40002_142'
                                    616 ;addr                      Allocated with name '_main_addr_40003_143'
                                    617 ;data                      Allocated with name '_main_data_40004_144'
                                    618 ;num_bytes                 Allocated with name '_main_num_bytes_40002_146'
                                    619 ;start_address             Allocated with name '_main_start_address_40003_147'
                                    620 ;buffer                    Allocated with name '_main_buffer_40003_147'
                                    621 ;i                         Allocated with name '_main_i_50003_148'
                                    622 ;num_bytes                 Allocated with name '_main_num_bytes_40002_151'
                                    623 ;start_address             Allocated with name '_main_start_address_40003_152'
                                    624 ;buffer                    Allocated with name '_main_buffer_40003_152'
                                    625 ;reg_bank                  Allocated with name '_main_reg_bank_40002_154'
                                    626 ;addr                      Allocated with name '_main_addr_40003_155'
                                    627 ;data                      Allocated with name '_main_data_40003_155'
                                    628 ;addr                      Allocated with name '_main_addr_40002_157'
                                    629 ;data                      Allocated with name '_main_data_40003_158'
                                    630 ;addr                      Allocated with name '_main_addr_40002_160'
                                    631 ;data                      Allocated with name '_main_data_40002_160'
                                    632 ;addr                      Allocated with name '_main_addr_40002_163'
                                    633 ;bank                      Allocated with name '_main_bank_40003_164'
                                    634 ;data                      Allocated with name '_main_data_40003_164'
                                    635 ;nextPacket                Allocated with name '_main_nextPacket_60001_168'
                                    636 ;byteCount                 Allocated with name '_main_byteCount_60001_168'
                                    637 ;status                    Allocated with name '_main_status_60001_168'
                                    638 ;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_168'
                                    639 ;len                       Allocated with name '_main_len_60001_168'
                                    640 ;packet_data               Allocated with name '_main_packet_data_60002_171'
                                    641 ;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_172'
                                    642 ;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_173'
                                    643 ;response_size             Allocated with name '_main_response_size_70004_177'
                                    644 ;response                  Allocated with name '_main_response_70004_177'
                                    645 ;read_econ2                Allocated with name '_main_read_econ2_60005_181'
                                    646 ;i                         Allocated with name '_main_i_50001_184'
                                    647 ;read_econ2                Allocated with name '_main_read_econ2_40002_187'
                                    648 ;------------------------------------------------------------
                                    649 ;	main.c:199: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      002069 90 03 7B         [24]  650 	mov	dptr,#_main_gNextPacketPtr_60001_168
      00206C E4               [12]  651 	clr	a
      00206D F0               [24]  652 	movx	@dptr,a
      00206E A3               [24]  653 	inc	dptr
      00206F F0               [24]  654 	movx	@dptr,a
                                    655 	.area GSFINAL (CODE)
      002070 02 20 06         [24]  656 	ljmp	__sdcc_program_startup
                                    657 ;--------------------------------------------------------
                                    658 ; Home
                                    659 ;--------------------------------------------------------
                                    660 	.area HOME    (CODE)
                                    661 	.area HOME    (CODE)
      002006                        662 __sdcc_program_startup:
      002006 02 2D 17         [24]  663 	ljmp	_main
                                    664 ;	return from main will return to caller
                                    665 ;--------------------------------------------------------
                                    666 ; code
                                    667 ;--------------------------------------------------------
                                    668 	.area CSEG    (CODE)
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'hex_to_int'
                                    671 ;------------------------------------------------------------
                                    672 ;str                       Allocated with name '_hex_to_int_str_10000_127'
                                    673 ;i                         Allocated with name '_hex_to_int_i_10000_128'
                                    674 ;result                    Allocated with name '_hex_to_int_result_10000_128'
                                    675 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_129'
                                    676 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    677 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    678 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    679 ;------------------------------------------------------------
                                    680 ;	main.c:23: int hex_to_int(char* str)
                                    681 ;	-----------------------------------------
                                    682 ;	 function hex_to_int
                                    683 ;	-----------------------------------------
      002AD9                        684 _hex_to_int:
                           000007   685 	ar7 = 0x07
                           000006   686 	ar6 = 0x06
                           000005   687 	ar5 = 0x05
                           000004   688 	ar4 = 0x04
                           000003   689 	ar3 = 0x03
                           000002   690 	ar2 = 0x02
                           000001   691 	ar1 = 0x01
                           000000   692 	ar0 = 0x00
      002AD9 AF F0            [24]  693 	mov	r7,b
      002ADB AE 83            [24]  694 	mov	r6,dph
      002ADD E5 82            [12]  695 	mov	a,dpl
      002ADF 90 01 56         [24]  696 	mov	dptr,#_hex_to_int_str_10000_127
      002AE2 F0               [24]  697 	movx	@dptr,a
      002AE3 EE               [12]  698 	mov	a,r6
      002AE4 A3               [24]  699 	inc	dptr
      002AE5 F0               [24]  700 	movx	@dptr,a
      002AE6 EF               [12]  701 	mov	a,r7
      002AE7 A3               [24]  702 	inc	dptr
      002AE8 F0               [24]  703 	movx	@dptr,a
                                    704 ;	main.c:26: int i = 0, result = 0;
      002AE9 90 01 59         [24]  705 	mov	dptr,#_hex_to_int_result_10000_128
      002AEC E4               [12]  706 	clr	a
      002AED F0               [24]  707 	movx	@dptr,a
      002AEE A3               [24]  708 	inc	dptr
      002AEF F0               [24]  709 	movx	@dptr,a
                                    710 ;	main.c:27: while(str[i] != '\0')
      002AF0 90 01 56         [24]  711 	mov	dptr,#_hex_to_int_str_10000_127
      002AF3 E0               [24]  712 	movx	a,@dptr
      002AF4 FD               [12]  713 	mov	r5,a
      002AF5 A3               [24]  714 	inc	dptr
      002AF6 E0               [24]  715 	movx	a,@dptr
      002AF7 FE               [12]  716 	mov	r6,a
      002AF8 A3               [24]  717 	inc	dptr
      002AF9 E0               [24]  718 	movx	a,@dptr
      002AFA FF               [12]  719 	mov	r7,a
      002AFB 8D 02            [24]  720 	mov	ar2,r5
      002AFD 8E 03            [24]  721 	mov	ar3,r6
      002AFF 8F 04            [24]  722 	mov	ar4,r7
      002B01 8D 39            [24]  723 	mov	_hex_to_int_sloc0_1_0,r5
      002B03 8E 3A            [24]  724 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      002B05 8F 3B            [24]  725 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      002B07 78 00            [12]  726 	mov	r0,#0x00
      002B09 79 00            [12]  727 	mov	r1,#0x00
      002B0B                        728 00112$:
      002B0B C0 02            [24]  729 	push	ar2
      002B0D C0 03            [24]  730 	push	ar3
      002B0F C0 04            [24]  731 	push	ar4
      002B11 E8               [12]  732 	mov	a,r0
      002B12 25 39            [12]  733 	add	a, _hex_to_int_sloc0_1_0
      002B14 FA               [12]  734 	mov	r2,a
      002B15 E9               [12]  735 	mov	a,r1
      002B16 35 3A            [12]  736 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      002B18 FB               [12]  737 	mov	r3,a
      002B19 AC 3B            [24]  738 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      002B1B 8A 82            [24]  739 	mov	dpl,r2
      002B1D 8B 83            [24]  740 	mov	dph,r3
      002B1F 8C F0            [24]  741 	mov	b,r4
      002B21 12 5B 2B         [24]  742 	lcall	__gptrget
      002B24 F5 3C            [12]  743 	mov	_hex_to_int_sloc1_1_0,a
      002B26 D0 04            [24]  744 	pop	ar4
      002B28 D0 03            [24]  745 	pop	ar3
      002B2A D0 02            [24]  746 	pop	ar2
      002B2C E5 3C            [12]  747 	mov	a,_hex_to_int_sloc1_1_0
      002B2E 70 03            [24]  748 	jnz	00166$
      002B30 02 2C 87         [24]  749 	ljmp	00114$
      002B33                        750 00166$:
                                    751 ;	main.c:29: int ASCII = (int)str[i];
      002B33 C0 02            [24]  752 	push	ar2
      002B35 C0 03            [24]  753 	push	ar3
      002B37 C0 04            [24]  754 	push	ar4
      002B39 85 3C 3D         [24]  755 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      002B3C 75 3E 00         [24]  756 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      002B3F 90 01 5B         [24]  757 	mov	dptr,#_hex_to_int_ASCII_20000_129
      002B42 E5 3D            [12]  758 	mov	a,_hex_to_int_sloc2_1_0
      002B44 F0               [24]  759 	movx	@dptr,a
      002B45 E5 3E            [12]  760 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B47 A3               [24]  761 	inc	dptr
      002B48 F0               [24]  762 	movx	@dptr,a
                                    763 ;	main.c:30: result *= 16;
      002B49 90 01 59         [24]  764 	mov	dptr,#_hex_to_int_result_10000_128
      002B4C E0               [24]  765 	movx	a,@dptr
      002B4D FB               [12]  766 	mov	r3,a
      002B4E A3               [24]  767 	inc	dptr
      002B4F E0               [24]  768 	movx	a,@dptr
      002B50 C4               [12]  769 	swap	a
      002B51 54 F0            [12]  770 	anl	a,#0xf0
      002B53 CB               [12]  771 	xch	a,r3
      002B54 C4               [12]  772 	swap	a
      002B55 CB               [12]  773 	xch	a,r3
      002B56 6B               [12]  774 	xrl	a,r3
      002B57 CB               [12]  775 	xch	a,r3
      002B58 54 F0            [12]  776 	anl	a,#0xf0
      002B5A CB               [12]  777 	xch	a,r3
      002B5B 6B               [12]  778 	xrl	a,r3
      002B5C FC               [12]  779 	mov	r4,a
      002B5D 90 01 59         [24]  780 	mov	dptr,#_hex_to_int_result_10000_128
      002B60 EB               [12]  781 	mov	a,r3
      002B61 F0               [24]  782 	movx	@dptr,a
      002B62 EC               [12]  783 	mov	a,r4
      002B63 A3               [24]  784 	inc	dptr
      002B64 F0               [24]  785 	movx	@dptr,a
                                    786 ;	main.c:31: if(ASCII >= '0' && ASCII <= '9')
      002B65 C3               [12]  787 	clr	c
      002B66 E5 3D            [12]  788 	mov	a,_hex_to_int_sloc2_1_0
      002B68 94 30            [12]  789 	subb	a,#0x30
      002B6A E5 3E            [12]  790 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B6C 64 80            [12]  791 	xrl	a,#0x80
      002B6E 94 80            [12]  792 	subb	a,#0x80
      002B70 D0 04            [24]  793 	pop	ar4
      002B72 D0 03            [24]  794 	pop	ar3
      002B74 D0 02            [24]  795 	pop	ar2
      002B76 40 3F            [24]  796 	jc	00109$
      002B78 74 39            [12]  797 	mov	a,#0x39
      002B7A 95 3D            [12]  798 	subb	a,_hex_to_int_sloc2_1_0
      002B7C 74 80            [12]  799 	mov	a,#(0x00 ^ 0x80)
      002B7E 85 3E F0         [24]  800 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002B81 63 F0 80         [24]  801 	xrl	b,#0x80
      002B84 95 F0            [12]  802 	subb	a,b
      002B86 40 2F            [24]  803 	jc	00109$
                                    804 ;	main.c:33: result += str[i] - 48;
      002B88 C0 02            [24]  805 	push	ar2
      002B8A C0 03            [24]  806 	push	ar3
      002B8C C0 04            [24]  807 	push	ar4
      002B8E E5 3D            [12]  808 	mov	a,_hex_to_int_sloc2_1_0
      002B90 24 D0            [12]  809 	add	a,#0xd0
      002B92 F5 3D            [12]  810 	mov	_hex_to_int_sloc2_1_0,a
      002B94 E5 3E            [12]  811 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B96 34 FF            [12]  812 	addc	a,#0xff
      002B98 F5 3E            [12]  813 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002B9A 90 01 59         [24]  814 	mov	dptr,#_hex_to_int_result_10000_128
      002B9D E0               [24]  815 	movx	a,@dptr
      002B9E FA               [12]  816 	mov	r2,a
      002B9F A3               [24]  817 	inc	dptr
      002BA0 E0               [24]  818 	movx	a,@dptr
      002BA1 FC               [12]  819 	mov	r4,a
      002BA2 90 01 59         [24]  820 	mov	dptr,#_hex_to_int_result_10000_128
      002BA5 E5 3D            [12]  821 	mov	a,_hex_to_int_sloc2_1_0
      002BA7 2A               [12]  822 	add	a, r2
      002BA8 F0               [24]  823 	movx	@dptr,a
      002BA9 E5 3E            [12]  824 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BAB 3C               [12]  825 	addc	a, r4
      002BAC A3               [24]  826 	inc	dptr
      002BAD F0               [24]  827 	movx	@dptr,a
      002BAE D0 04            [24]  828 	pop	ar4
      002BB0 D0 03            [24]  829 	pop	ar3
      002BB2 D0 02            [24]  830 	pop	ar2
      002BB4 02 2C 7F         [24]  831 	ljmp	00110$
      002BB7                        832 00109$:
                                    833 ;	main.c:35: else if(ASCII >= 'A' && ASCII <= 'F')
      002BB7 90 01 5B         [24]  834 	mov	dptr,#_hex_to_int_ASCII_20000_129
      002BBA E0               [24]  835 	movx	a,@dptr
      002BBB F5 3D            [12]  836 	mov	_hex_to_int_sloc2_1_0,a
      002BBD A3               [24]  837 	inc	dptr
      002BBE E0               [24]  838 	movx	a,@dptr
      002BBF F5 3E            [12]  839 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002BC1 C3               [12]  840 	clr	c
      002BC2 E5 3D            [12]  841 	mov	a,_hex_to_int_sloc2_1_0
      002BC4 94 41            [12]  842 	subb	a,#0x41
      002BC6 E5 3E            [12]  843 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BC8 64 80            [12]  844 	xrl	a,#0x80
      002BCA 94 80            [12]  845 	subb	a,#0x80
      002BCC 40 4E            [24]  846 	jc	00105$
      002BCE 74 46            [12]  847 	mov	a,#0x46
      002BD0 95 3D            [12]  848 	subb	a,_hex_to_int_sloc2_1_0
      002BD2 74 80            [12]  849 	mov	a,#(0x00 ^ 0x80)
      002BD4 85 3E F0         [24]  850 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002BD7 63 F0 80         [24]  851 	xrl	b,#0x80
      002BDA 95 F0            [12]  852 	subb	a,b
      002BDC 40 3E            [24]  853 	jc	00105$
                                    854 ;	main.c:37: result += str[i] - 55;
      002BDE C0 05            [24]  855 	push	ar5
      002BE0 C0 06            [24]  856 	push	ar6
      002BE2 C0 07            [24]  857 	push	ar7
      002BE4 E8               [12]  858 	mov	a,r0
      002BE5 2A               [12]  859 	add	a, r2
      002BE6 FD               [12]  860 	mov	r5,a
      002BE7 E9               [12]  861 	mov	a,r1
      002BE8 3B               [12]  862 	addc	a, r3
      002BE9 FE               [12]  863 	mov	r6,a
      002BEA 8C 07            [24]  864 	mov	ar7,r4
      002BEC 8D 82            [24]  865 	mov	dpl,r5
      002BEE 8E 83            [24]  866 	mov	dph,r6
      002BF0 8F F0            [24]  867 	mov	b,r7
      002BF2 12 5B 2B         [24]  868 	lcall	__gptrget
      002BF5 7F 00            [12]  869 	mov	r7,#0x00
      002BF7 24 C9            [12]  870 	add	a,#0xc9
      002BF9 F5 3D            [12]  871 	mov	_hex_to_int_sloc2_1_0,a
      002BFB EF               [12]  872 	mov	a,r7
      002BFC 34 FF            [12]  873 	addc	a,#0xff
      002BFE F5 3E            [12]  874 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C00 90 01 59         [24]  875 	mov	dptr,#_hex_to_int_result_10000_128
      002C03 E0               [24]  876 	movx	a,@dptr
      002C04 FE               [12]  877 	mov	r6,a
      002C05 A3               [24]  878 	inc	dptr
      002C06 E0               [24]  879 	movx	a,@dptr
      002C07 FF               [12]  880 	mov	r7,a
      002C08 90 01 59         [24]  881 	mov	dptr,#_hex_to_int_result_10000_128
      002C0B E5 3D            [12]  882 	mov	a,_hex_to_int_sloc2_1_0
      002C0D 2E               [12]  883 	add	a, r6
      002C0E F0               [24]  884 	movx	@dptr,a
      002C0F E5 3E            [12]  885 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C11 3F               [12]  886 	addc	a, r7
      002C12 A3               [24]  887 	inc	dptr
      002C13 F0               [24]  888 	movx	@dptr,a
      002C14 D0 07            [24]  889 	pop	ar7
      002C16 D0 06            [24]  890 	pop	ar6
      002C18 D0 05            [24]  891 	pop	ar5
      002C1A 80 63            [24]  892 	sjmp	00110$
      002C1C                        893 00105$:
                                    894 ;	main.c:39: else if(ASCII >= 'a' && ASCII <= 'f')
      002C1C 90 01 5B         [24]  895 	mov	dptr,#_hex_to_int_ASCII_20000_129
      002C1F E0               [24]  896 	movx	a,@dptr
      002C20 F5 3D            [12]  897 	mov	_hex_to_int_sloc2_1_0,a
      002C22 A3               [24]  898 	inc	dptr
      002C23 E0               [24]  899 	movx	a,@dptr
      002C24 F5 3E            [12]  900 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C26 C3               [12]  901 	clr	c
      002C27 E5 3D            [12]  902 	mov	a,_hex_to_int_sloc2_1_0
      002C29 94 61            [12]  903 	subb	a,#0x61
      002C2B E5 3E            [12]  904 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C2D 64 80            [12]  905 	xrl	a,#0x80
      002C2F 94 80            [12]  906 	subb	a,#0x80
      002C31 40 4C            [24]  907 	jc	00110$
      002C33 74 66            [12]  908 	mov	a,#0x66
      002C35 95 3D            [12]  909 	subb	a,_hex_to_int_sloc2_1_0
      002C37 74 80            [12]  910 	mov	a,#(0x00 ^ 0x80)
      002C39 85 3E F0         [24]  911 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002C3C 63 F0 80         [24]  912 	xrl	b,#0x80
      002C3F 95 F0            [12]  913 	subb	a,b
      002C41 40 3C            [24]  914 	jc	00110$
                                    915 ;	main.c:41: result += str[i] - 87;
      002C43 C0 02            [24]  916 	push	ar2
      002C45 C0 03            [24]  917 	push	ar3
      002C47 C0 04            [24]  918 	push	ar4
      002C49 E8               [12]  919 	mov	a,r0
      002C4A 2D               [12]  920 	add	a, r5
      002C4B FA               [12]  921 	mov	r2,a
      002C4C E9               [12]  922 	mov	a,r1
      002C4D 3E               [12]  923 	addc	a, r6
      002C4E FB               [12]  924 	mov	r3,a
      002C4F 8F 04            [24]  925 	mov	ar4,r7
      002C51 8A 82            [24]  926 	mov	dpl,r2
      002C53 8B 83            [24]  927 	mov	dph,r3
      002C55 8C F0            [24]  928 	mov	b,r4
      002C57 12 5B 2B         [24]  929 	lcall	__gptrget
      002C5A 7C 00            [12]  930 	mov	r4,#0x00
      002C5C 24 A9            [12]  931 	add	a,#0xa9
      002C5E F5 3D            [12]  932 	mov	_hex_to_int_sloc2_1_0,a
      002C60 EC               [12]  933 	mov	a,r4
      002C61 34 FF            [12]  934 	addc	a,#0xff
      002C63 F5 3E            [12]  935 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C65 90 01 59         [24]  936 	mov	dptr,#_hex_to_int_result_10000_128
      002C68 E0               [24]  937 	movx	a,@dptr
      002C69 FB               [12]  938 	mov	r3,a
      002C6A A3               [24]  939 	inc	dptr
      002C6B E0               [24]  940 	movx	a,@dptr
      002C6C FC               [12]  941 	mov	r4,a
      002C6D 90 01 59         [24]  942 	mov	dptr,#_hex_to_int_result_10000_128
      002C70 E5 3D            [12]  943 	mov	a,_hex_to_int_sloc2_1_0
      002C72 2B               [12]  944 	add	a, r3
      002C73 F0               [24]  945 	movx	@dptr,a
      002C74 E5 3E            [12]  946 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C76 3C               [12]  947 	addc	a, r4
      002C77 A3               [24]  948 	inc	dptr
      002C78 F0               [24]  949 	movx	@dptr,a
                                    950 ;	main.c:45: return result;
      002C79 D0 04            [24]  951 	pop	ar4
      002C7B D0 03            [24]  952 	pop	ar3
      002C7D D0 02            [24]  953 	pop	ar2
                                    954 ;	main.c:41: result += str[i] - 87;
      002C7F                        955 00110$:
                                    956 ;	main.c:43: i++;
      002C7F 08               [12]  957 	inc	r0
      002C80 B8 00 01         [24]  958 	cjne	r0,#0x00,00173$
      002C83 09               [12]  959 	inc	r1
      002C84                        960 00173$:
      002C84 02 2B 0B         [24]  961 	ljmp	00112$
      002C87                        962 00114$:
                                    963 ;	main.c:45: return result;
      002C87 90 01 59         [24]  964 	mov	dptr,#_hex_to_int_result_10000_128
      002C8A E0               [24]  965 	movx	a,@dptr
      002C8B FE               [12]  966 	mov	r6,a
      002C8C A3               [24]  967 	inc	dptr
      002C8D E0               [24]  968 	movx	a,@dptr
                                    969 ;	main.c:47: }
      002C8E 8E 82            [24]  970 	mov	dpl,r6
      002C90 F5 83            [12]  971 	mov	dph,a
      002C92 22               [24]  972 	ret
                                    973 ;------------------------------------------------------------
                                    974 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    975 ;------------------------------------------------------------
                                    976 ;i                         Allocated with name '_get_user_buffer_size_i_10000_134'
                                    977 ;output                    Allocated with name '_get_user_buffer_size_output_10000_134'
                                    978 ;input                     Allocated with name '_get_user_buffer_size_input_10000_134'
                                    979 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_134'
                                    980 ;------------------------------------------------------------
                                    981 ;	main.c:50: int get_user_buffer_size(void)
                                    982 ;	-----------------------------------------
                                    983 ;	 function get_user_buffer_size
                                    984 ;	-----------------------------------------
      002C93                        985 _get_user_buffer_size:
                                    986 ;	main.c:56: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      002C93 7E 00            [12]  987 	mov	r6,#0x00
      002C95 7F 00            [12]  988 	mov	r7,#0x00
      002C97                        989 00103$:
      002C97 C0 07            [24]  990 	push	ar7
      002C99 C0 06            [24]  991 	push	ar6
      002C9B 12 4A 7C         [24]  992 	lcall	_getchar
      002C9E AC 82            [24]  993 	mov	r4, dpl
      002CA0 D0 06            [24]  994 	pop	ar6
      002CA2 D0 07            [24]  995 	pop	ar7
      002CA4 BC 0A 02         [24]  996 	cjne	r4,#0x0a,00133$
      002CA7 80 3A            [24]  997 	sjmp	00105$
      002CA9                        998 00133$:
      002CA9 BC 0D 02         [24]  999 	cjne	r4,#0x0d,00134$
      002CAC 80 35            [24] 1000 	sjmp	00105$
      002CAE                       1001 00134$:
      002CAE C3               [12] 1002 	clr	c
      002CAF EE               [12] 1003 	mov	a,r6
      002CB0 94 09            [12] 1004 	subb	a,#0x09
      002CB2 EF               [12] 1005 	mov	a,r7
      002CB3 64 80            [12] 1006 	xrl	a,#0x80
      002CB5 94 80            [12] 1007 	subb	a,#0x80
      002CB7 50 2A            [24] 1008 	jnc	00105$
                                   1009 ;	main.c:58: putchar(ch);
      002CB9 8C 03            [24] 1010 	mov	ar3,r4
      002CBB 7D 00            [12] 1011 	mov	r5,#0x00
      002CBD 8B 82            [24] 1012 	mov	dpl, r3
      002CBF 8D 83            [24] 1013 	mov	dph, r5
      002CC1 C0 07            [24] 1014 	push	ar7
      002CC3 C0 06            [24] 1015 	push	ar6
      002CC5 C0 04            [24] 1016 	push	ar4
      002CC7 12 4A 5D         [24] 1017 	lcall	_putchar
      002CCA D0 04            [24] 1018 	pop	ar4
      002CCC D0 06            [24] 1019 	pop	ar6
      002CCE D0 07            [24] 1020 	pop	ar7
                                   1021 ;	main.c:59: input[i] = ch;      //Append the input array with the received character
      002CD0 EE               [12] 1022 	mov	a,r6
      002CD1 24 5D            [12] 1023 	add	a, #_get_user_buffer_size_input_10000_134
      002CD3 F5 82            [12] 1024 	mov	dpl,a
      002CD5 EF               [12] 1025 	mov	a,r7
      002CD6 34 01            [12] 1026 	addc	a, #(_get_user_buffer_size_input_10000_134 >> 8)
      002CD8 F5 83            [12] 1027 	mov	dph,a
      002CDA EC               [12] 1028 	mov	a,r4
      002CDB F0               [24] 1029 	movx	@dptr,a
                                   1030 ;	main.c:60: i++;
      002CDC 0E               [12] 1031 	inc	r6
      002CDD BE 00 B7         [24] 1032 	cjne	r6,#0x00,00103$
      002CE0 0F               [12] 1033 	inc	r7
      002CE1 80 B4            [24] 1034 	sjmp	00103$
      002CE3                       1035 00105$:
                                   1036 ;	main.c:62: input[i] = '\0';
      002CE3 EE               [12] 1037 	mov	a,r6
      002CE4 24 5D            [12] 1038 	add	a, #_get_user_buffer_size_input_10000_134
      002CE6 F5 82            [12] 1039 	mov	dpl,a
      002CE8 EF               [12] 1040 	mov	a,r7
      002CE9 34 01            [12] 1041 	addc	a, #(_get_user_buffer_size_input_10000_134 >> 8)
      002CEB F5 83            [12] 1042 	mov	dph,a
      002CED E4               [12] 1043 	clr	a
      002CEE F0               [24] 1044 	movx	@dptr,a
                                   1045 ;	main.c:63: output = hex_to_int(input); //Convert the char hex data to int
      002CEF 90 01 5D         [24] 1046 	mov	dptr,#_get_user_buffer_size_input_10000_134
      002CF2 F5 F0            [12] 1047 	mov	b,a
      002CF4 12 2A D9         [24] 1048 	lcall	_hex_to_int
      002CF7 AE 82            [24] 1049 	mov	r6, dpl
      002CF9 AF 83            [24] 1050 	mov	r7, dph
                                   1051 ;	main.c:64: printf_tiny("\n\r");
      002CFB C0 07            [24] 1052 	push	ar7
      002CFD C0 06            [24] 1053 	push	ar6
      002CFF 74 0A            [12] 1054 	mov	a,#___str_0
      002D01 C0 E0            [24] 1055 	push	acc
      002D03 74 5D            [12] 1056 	mov	a,#(___str_0 >> 8)
      002D05 C0 E0            [24] 1057 	push	acc
      002D07 12 4D 0E         [24] 1058 	lcall	_printf_tiny
      002D0A 15 81            [12] 1059 	dec	sp
      002D0C 15 81            [12] 1060 	dec	sp
      002D0E D0 06            [24] 1061 	pop	ar6
      002D10 D0 07            [24] 1062 	pop	ar7
                                   1063 ;	main.c:66: return output;
      002D12 8E 82            [24] 1064 	mov	dpl, r6
      002D14 8F 83            [24] 1065 	mov	dph, r7
                                   1066 ;	main.c:67: }
      002D16 22               [24] 1067 	ret
                                   1068 ;------------------------------------------------------------
                                   1069 ;Allocation info for local variables in function 'main'
                                   1070 ;------------------------------------------------------------
                                   1071 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1072 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1073 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                   1074 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                   1075 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                   1076 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                   1077 ;device_mac                Allocated with name '_main_device_mac_10000_137'
                                   1078 ;target_mac                Allocated with name '_main_target_mac_10000_137'
                                   1079 ;device_ip                 Allocated with name '_main_device_ip_10000_137'
                                   1080 ;target_ip                 Allocated with name '_main_target_ip_10000_137'
                                   1081 ;c                         Allocated with name '_main_c_20001_139'
                                   1082 ;reg_bank                  Allocated with name '_main_reg_bank_40002_142'
                                   1083 ;addr                      Allocated with name '_main_addr_40003_143'
                                   1084 ;data                      Allocated with name '_main_data_40004_144'
                                   1085 ;num_bytes                 Allocated with name '_main_num_bytes_40002_146'
                                   1086 ;start_address             Allocated with name '_main_start_address_40003_147'
                                   1087 ;buffer                    Allocated with name '_main_buffer_40003_147'
                                   1088 ;i                         Allocated with name '_main_i_50003_148'
                                   1089 ;num_bytes                 Allocated with name '_main_num_bytes_40002_151'
                                   1090 ;start_address             Allocated with name '_main_start_address_40003_152'
                                   1091 ;buffer                    Allocated with name '_main_buffer_40003_152'
                                   1092 ;reg_bank                  Allocated with name '_main_reg_bank_40002_154'
                                   1093 ;addr                      Allocated with name '_main_addr_40003_155'
                                   1094 ;data                      Allocated with name '_main_data_40003_155'
                                   1095 ;addr                      Allocated with name '_main_addr_40002_157'
                                   1096 ;data                      Allocated with name '_main_data_40003_158'
                                   1097 ;addr                      Allocated with name '_main_addr_40002_160'
                                   1098 ;data                      Allocated with name '_main_data_40002_160'
                                   1099 ;addr                      Allocated with name '_main_addr_40002_163'
                                   1100 ;bank                      Allocated with name '_main_bank_40003_164'
                                   1101 ;data                      Allocated with name '_main_data_40003_164'
                                   1102 ;nextPacket                Allocated with name '_main_nextPacket_60001_168'
                                   1103 ;byteCount                 Allocated with name '_main_byteCount_60001_168'
                                   1104 ;status                    Allocated with name '_main_status_60001_168'
                                   1105 ;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_168'
                                   1106 ;len                       Allocated with name '_main_len_60001_168'
                                   1107 ;packet_data               Allocated with name '_main_packet_data_60002_171'
                                   1108 ;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_172'
                                   1109 ;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_173'
                                   1110 ;response_size             Allocated with name '_main_response_size_70004_177'
                                   1111 ;response                  Allocated with name '_main_response_70004_177'
                                   1112 ;read_econ2                Allocated with name '_main_read_econ2_60005_181'
                                   1113 ;i                         Allocated with name '_main_i_50001_184'
                                   1114 ;read_econ2                Allocated with name '_main_read_econ2_40002_187'
                                   1115 ;------------------------------------------------------------
                                   1116 ;	main.c:69: void main(void)
                                   1117 ;	-----------------------------------------
                                   1118 ;	 function main
                                   1119 ;	-----------------------------------------
      002D17                       1120 _main:
                                   1121 ;	main.c:71: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      002D17 90 01 67         [24] 1122 	mov	dptr,#_main_device_mac_10000_137
      002D1A 74 02            [12] 1123 	mov	a,#0x02
      002D1C F0               [24] 1124 	movx	@dptr,a
      002D1D 90 01 68         [24] 1125 	mov	dptr,#(_main_device_mac_10000_137 + 0x0001)
      002D20 74 11            [12] 1126 	mov	a,#0x11
      002D22 F0               [24] 1127 	movx	@dptr,a
      002D23 90 01 69         [24] 1128 	mov	dptr,#(_main_device_mac_10000_137 + 0x0002)
      002D26 23               [12] 1129 	rl	a
      002D27 F0               [24] 1130 	movx	@dptr,a
      002D28 90 01 6A         [24] 1131 	mov	dptr,#(_main_device_mac_10000_137 + 0x0003)
      002D2B 74 33            [12] 1132 	mov	a,#0x33
      002D2D F0               [24] 1133 	movx	@dptr,a
      002D2E 90 01 6B         [24] 1134 	mov	dptr,#(_main_device_mac_10000_137 + 0x0004)
      002D31 74 44            [12] 1135 	mov	a,#0x44
      002D33 F0               [24] 1136 	movx	@dptr,a
      002D34 90 01 6C         [24] 1137 	mov	dptr,#(_main_device_mac_10000_137 + 0x0005)
      002D37 74 55            [12] 1138 	mov	a,#0x55
      002D39 F0               [24] 1139 	movx	@dptr,a
                                   1140 ;	main.c:72: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      002D3A 90 01 6D         [24] 1141 	mov	dptr,#_main_target_mac_10000_137
      002D3D 74 F8            [12] 1142 	mov	a,#0xf8
      002D3F F0               [24] 1143 	movx	@dptr,a
      002D40 90 01 6E         [24] 1144 	mov	dptr,#(_main_target_mac_10000_137 + 0x0001)
      002D43 74 75            [12] 1145 	mov	a,#0x75
      002D45 F0               [24] 1146 	movx	@dptr,a
      002D46 90 01 6F         [24] 1147 	mov	dptr,#(_main_target_mac_10000_137 + 0x0002)
      002D49 74 A4            [12] 1148 	mov	a,#0xa4
      002D4B F0               [24] 1149 	movx	@dptr,a
      002D4C 90 01 70         [24] 1150 	mov	dptr,#(_main_target_mac_10000_137 + 0x0003)
      002D4F 74 8C            [12] 1151 	mov	a,#0x8c
      002D51 F0               [24] 1152 	movx	@dptr,a
      002D52 90 01 71         [24] 1153 	mov	dptr,#(_main_target_mac_10000_137 + 0x0004)
      002D55 74 41            [12] 1154 	mov	a,#0x41
      002D57 F0               [24] 1155 	movx	@dptr,a
      002D58 90 01 72         [24] 1156 	mov	dptr,#(_main_target_mac_10000_137 + 0x0005)
      002D5B 74 31            [12] 1157 	mov	a,#0x31
      002D5D F0               [24] 1158 	movx	@dptr,a
                                   1159 ;	main.c:73: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      002D5E 90 01 73         [24] 1160 	mov	dptr,#_main_device_ip_10000_137
      002D61 74 C0            [12] 1161 	mov	a,#0xc0
      002D63 F0               [24] 1162 	movx	@dptr,a
      002D64 90 01 74         [24] 1163 	mov	dptr,#(_main_device_ip_10000_137 + 0x0001)
      002D67 74 A8            [12] 1164 	mov	a,#0xa8
      002D69 F0               [24] 1165 	movx	@dptr,a
      002D6A 90 01 75         [24] 1166 	mov	dptr,#(_main_device_ip_10000_137 + 0x0002)
      002D6D 74 01            [12] 1167 	mov	a,#0x01
      002D6F F0               [24] 1168 	movx	@dptr,a
      002D70 90 01 76         [24] 1169 	mov	dptr,#(_main_device_ip_10000_137 + 0x0003)
      002D73 74 64            [12] 1170 	mov	a,#0x64
      002D75 F0               [24] 1171 	movx	@dptr,a
                                   1172 ;	main.c:74: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      002D76 90 01 77         [24] 1173 	mov	dptr,#_main_target_ip_10000_137
      002D79 74 C0            [12] 1174 	mov	a,#0xc0
      002D7B F0               [24] 1175 	movx	@dptr,a
      002D7C 90 01 78         [24] 1176 	mov	dptr,#(_main_target_ip_10000_137 + 0x0001)
      002D7F 74 A8            [12] 1177 	mov	a,#0xa8
      002D81 F0               [24] 1178 	movx	@dptr,a
      002D82 90 01 79         [24] 1179 	mov	dptr,#(_main_target_ip_10000_137 + 0x0002)
      002D85 74 01            [12] 1180 	mov	a,#0x01
      002D87 F0               [24] 1181 	movx	@dptr,a
      002D88 90 01 7A         [24] 1182 	mov	dptr,#(_main_target_ip_10000_137 + 0x0003)
      002D8B F0               [24] 1183 	movx	@dptr,a
                                   1184 ;	main.c:76: printf("SPI Operations on 8051\n\r");
      002D8C 74 0D            [12] 1185 	mov	a,#___str_1
      002D8E C0 E0            [24] 1186 	push	acc
      002D90 74 5D            [12] 1187 	mov	a,#(___str_1 >> 8)
      002D92 C0 E0            [24] 1188 	push	acc
      002D94 74 80            [12] 1189 	mov	a,#0x80
      002D96 C0 E0            [24] 1190 	push	acc
      002D98 12 51 09         [24] 1191 	lcall	_printf
      002D9B 15 81            [12] 1192 	dec	sp
      002D9D 15 81            [12] 1193 	dec	sp
      002D9F 15 81            [12] 1194 	dec	sp
                                   1195 ;	main.c:77: configure_SPI();
      002DA1 12 39 D9         [24] 1196 	lcall	_configure_SPI
                                   1197 ;	main.c:79: enc_init(device_mac);
      002DA4 90 01 67         [24] 1198 	mov	dptr,#_main_device_mac_10000_137
      002DA7 75 F0 00         [24] 1199 	mov	b, #0x00
      002DAA 12 26 84         [24] 1200 	lcall	_enc_init
                                   1201 ;	main.c:81: while(1)
      002DAD                       1202 00142$:
                                   1203 ;	main.c:83: printf("\n\rChoose an action: \n\r");
      002DAD 74 26            [12] 1204 	mov	a,#___str_2
      002DAF C0 E0            [24] 1205 	push	acc
      002DB1 74 5D            [12] 1206 	mov	a,#(___str_2 >> 8)
      002DB3 C0 E0            [24] 1207 	push	acc
      002DB5 74 80            [12] 1208 	mov	a,#0x80
      002DB7 C0 E0            [24] 1209 	push	acc
      002DB9 12 51 09         [24] 1210 	lcall	_printf
      002DBC 15 81            [12] 1211 	dec	sp
      002DBE 15 81            [12] 1212 	dec	sp
      002DC0 15 81            [12] 1213 	dec	sp
                                   1214 ;	main.c:84: printf("1 --> Control Write\n\r");
      002DC2 74 3D            [12] 1215 	mov	a,#___str_3
      002DC4 C0 E0            [24] 1216 	push	acc
      002DC6 74 5D            [12] 1217 	mov	a,#(___str_3 >> 8)
      002DC8 C0 E0            [24] 1218 	push	acc
      002DCA 74 80            [12] 1219 	mov	a,#0x80
      002DCC C0 E0            [24] 1220 	push	acc
      002DCE 12 51 09         [24] 1221 	lcall	_printf
      002DD1 15 81            [12] 1222 	dec	sp
      002DD3 15 81            [12] 1223 	dec	sp
      002DD5 15 81            [12] 1224 	dec	sp
                                   1225 ;	main.c:85: printf("2 --> Buffer Write\n\r");
      002DD7 74 53            [12] 1226 	mov	a,#___str_4
      002DD9 C0 E0            [24] 1227 	push	acc
      002DDB 74 5D            [12] 1228 	mov	a,#(___str_4 >> 8)
      002DDD C0 E0            [24] 1229 	push	acc
      002DDF 74 80            [12] 1230 	mov	a,#0x80
      002DE1 C0 E0            [24] 1231 	push	acc
      002DE3 12 51 09         [24] 1232 	lcall	_printf
      002DE6 15 81            [12] 1233 	dec	sp
      002DE8 15 81            [12] 1234 	dec	sp
      002DEA 15 81            [12] 1235 	dec	sp
                                   1236 ;	main.c:86: printf("3 --> Buffer Read\n\r");
      002DEC 74 68            [12] 1237 	mov	a,#___str_5
      002DEE C0 E0            [24] 1238 	push	acc
      002DF0 74 5D            [12] 1239 	mov	a,#(___str_5 >> 8)
      002DF2 C0 E0            [24] 1240 	push	acc
      002DF4 74 80            [12] 1241 	mov	a,#0x80
      002DF6 C0 E0            [24] 1242 	push	acc
      002DF8 12 51 09         [24] 1243 	lcall	_printf
      002DFB 15 81            [12] 1244 	dec	sp
      002DFD 15 81            [12] 1245 	dec	sp
      002DFF 15 81            [12] 1246 	dec	sp
                                   1247 ;	main.c:87: printf("4 --> MAC Register Read\n\r");
      002E01 74 7C            [12] 1248 	mov	a,#___str_6
      002E03 C0 E0            [24] 1249 	push	acc
      002E05 74 5D            [12] 1250 	mov	a,#(___str_6 >> 8)
      002E07 C0 E0            [24] 1251 	push	acc
      002E09 74 80            [12] 1252 	mov	a,#0x80
      002E0B C0 E0            [24] 1253 	push	acc
      002E0D 12 51 09         [24] 1254 	lcall	_printf
      002E10 15 81            [12] 1255 	dec	sp
      002E12 15 81            [12] 1256 	dec	sp
      002E14 15 81            [12] 1257 	dec	sp
                                   1258 ;	main.c:88: printf("5 --> PHY SPI Write\n\r");
      002E16 74 96            [12] 1259 	mov	a,#___str_7
      002E18 C0 E0            [24] 1260 	push	acc
      002E1A 74 5D            [12] 1261 	mov	a,#(___str_7 >> 8)
      002E1C C0 E0            [24] 1262 	push	acc
      002E1E 74 80            [12] 1263 	mov	a,#0x80
      002E20 C0 E0            [24] 1264 	push	acc
      002E22 12 51 09         [24] 1265 	lcall	_printf
      002E25 15 81            [12] 1266 	dec	sp
      002E27 15 81            [12] 1267 	dec	sp
      002E29 15 81            [12] 1268 	dec	sp
                                   1269 ;	main.c:89: printf("6 --> PHY SPI Read\n\r");
      002E2B 74 AC            [12] 1270 	mov	a,#___str_8
      002E2D C0 E0            [24] 1271 	push	acc
      002E2F 74 5D            [12] 1272 	mov	a,#(___str_8 >> 8)
      002E31 C0 E0            [24] 1273 	push	acc
      002E33 74 80            [12] 1274 	mov	a,#0x80
      002E35 C0 E0            [24] 1275 	push	acc
      002E37 12 51 09         [24] 1276 	lcall	_printf
      002E3A 15 81            [12] 1277 	dec	sp
      002E3C 15 81            [12] 1278 	dec	sp
      002E3E 15 81            [12] 1279 	dec	sp
                                   1280 ;	main.c:90: printf("7 --> ENC Reset\n\r");
      002E40 74 C1            [12] 1281 	mov	a,#___str_9
      002E42 C0 E0            [24] 1282 	push	acc
      002E44 74 5D            [12] 1283 	mov	a,#(___str_9 >> 8)
      002E46 C0 E0            [24] 1284 	push	acc
      002E48 74 80            [12] 1285 	mov	a,#0x80
      002E4A C0 E0            [24] 1286 	push	acc
      002E4C 12 51 09         [24] 1287 	lcall	_printf
      002E4F 15 81            [12] 1288 	dec	sp
      002E51 15 81            [12] 1289 	dec	sp
      002E53 15 81            [12] 1290 	dec	sp
                                   1291 ;	main.c:91: printf("8 --> Read ETH Register\n\r");
      002E55 74 D3            [12] 1292 	mov	a,#___str_10
      002E57 C0 E0            [24] 1293 	push	acc
      002E59 74 5D            [12] 1294 	mov	a,#(___str_10 >> 8)
      002E5B C0 E0            [24] 1295 	push	acc
      002E5D 74 80            [12] 1296 	mov	a,#0x80
      002E5F C0 E0            [24] 1297 	push	acc
      002E61 12 51 09         [24] 1298 	lcall	_printf
      002E64 15 81            [12] 1299 	dec	sp
      002E66 15 81            [12] 1300 	dec	sp
      002E68 15 81            [12] 1301 	dec	sp
                                   1302 ;	main.c:92: printf("9 --> Display Menu\n\r");
      002E6A 74 ED            [12] 1303 	mov	a,#___str_11
      002E6C C0 E0            [24] 1304 	push	acc
      002E6E 74 5D            [12] 1305 	mov	a,#(___str_11 >> 8)
      002E70 C0 E0            [24] 1306 	push	acc
      002E72 74 80            [12] 1307 	mov	a,#0x80
      002E74 C0 E0            [24] 1308 	push	acc
      002E76 12 51 09         [24] 1309 	lcall	_printf
      002E79 15 81            [12] 1310 	dec	sp
      002E7B 15 81            [12] 1311 	dec	sp
      002E7D 15 81            [12] 1312 	dec	sp
                                   1313 ;	main.c:93: printf("A --> Send ARP Request\n\r");
      002E7F 74 02            [12] 1314 	mov	a,#___str_12
      002E81 C0 E0            [24] 1315 	push	acc
      002E83 74 5E            [12] 1316 	mov	a,#(___str_12 >> 8)
      002E85 C0 E0            [24] 1317 	push	acc
      002E87 74 80            [12] 1318 	mov	a,#0x80
      002E89 C0 E0            [24] 1319 	push	acc
      002E8B 12 51 09         [24] 1320 	lcall	_printf
      002E8E 15 81            [12] 1321 	dec	sp
      002E90 15 81            [12] 1322 	dec	sp
      002E92 15 81            [12] 1323 	dec	sp
                                   1324 ;	main.c:94: printf("B --> Init RX buffers\n\r");
      002E94 74 1B            [12] 1325 	mov	a,#___str_13
      002E96 C0 E0            [24] 1326 	push	acc
      002E98 74 5E            [12] 1327 	mov	a,#(___str_13 >> 8)
      002E9A C0 E0            [24] 1328 	push	acc
      002E9C 74 80            [12] 1329 	mov	a,#0x80
      002E9E C0 E0            [24] 1330 	push	acc
      002EA0 12 51 09         [24] 1331 	lcall	_printf
      002EA3 15 81            [12] 1332 	dec	sp
      002EA5 15 81            [12] 1333 	dec	sp
      002EA7 15 81            [12] 1334 	dec	sp
                                   1335 ;	main.c:95: printf("C --> Hard Reset(nRESET pin)\n\r");
      002EA9 74 33            [12] 1336 	mov	a,#___str_14
      002EAB C0 E0            [24] 1337 	push	acc
      002EAD 74 5E            [12] 1338 	mov	a,#(___str_14 >> 8)
      002EAF C0 E0            [24] 1339 	push	acc
      002EB1 74 80            [12] 1340 	mov	a,#0x80
      002EB3 C0 E0            [24] 1341 	push	acc
      002EB5 12 51 09         [24] 1342 	lcall	_printf
      002EB8 15 81            [12] 1343 	dec	sp
      002EBA 15 81            [12] 1344 	dec	sp
      002EBC 15 81            [12] 1345 	dec	sp
                                   1346 ;	main.c:96: printf("D --> Process TCP\n\r");
      002EBE 74 52            [12] 1347 	mov	a,#___str_15
      002EC0 C0 E0            [24] 1348 	push	acc
      002EC2 74 5E            [12] 1349 	mov	a,#(___str_15 >> 8)
      002EC4 C0 E0            [24] 1350 	push	acc
      002EC6 74 80            [12] 1351 	mov	a,#0x80
      002EC8 C0 E0            [24] 1352 	push	acc
      002ECA 12 51 09         [24] 1353 	lcall	_printf
      002ECD 15 81            [12] 1354 	dec	sp
      002ECF 15 81            [12] 1355 	dec	sp
      002ED1 15 81            [12] 1356 	dec	sp
                                   1357 ;	main.c:97: printf("E --> Enable TX interrupt\n\r");
      002ED3 74 66            [12] 1358 	mov	a,#___str_16
      002ED5 C0 E0            [24] 1359 	push	acc
      002ED7 74 5E            [12] 1360 	mov	a,#(___str_16 >> 8)
      002ED9 C0 E0            [24] 1361 	push	acc
      002EDB 74 80            [12] 1362 	mov	a,#0x80
      002EDD C0 E0            [24] 1363 	push	acc
      002EDF 12 51 09         [24] 1364 	lcall	_printf
      002EE2 15 81            [12] 1365 	dec	sp
      002EE4 15 81            [12] 1366 	dec	sp
      002EE6 15 81            [12] 1367 	dec	sp
                                   1368 ;	main.c:98: printf("F --> Disabling TX interrupt\n\r");
      002EE8 74 82            [12] 1369 	mov	a,#___str_17
      002EEA C0 E0            [24] 1370 	push	acc
      002EEC 74 5E            [12] 1371 	mov	a,#(___str_17 >> 8)
      002EEE C0 E0            [24] 1372 	push	acc
      002EF0 74 80            [12] 1373 	mov	a,#0x80
      002EF2 C0 E0            [24] 1374 	push	acc
      002EF4 12 51 09         [24] 1375 	lcall	_printf
      002EF7 15 81            [12] 1376 	dec	sp
      002EF9 15 81            [12] 1377 	dec	sp
      002EFB 15 81            [12] 1378 	dec	sp
                                   1379 ;	main.c:100: char c = getchar();
      002EFD 12 4A 7C         [24] 1380 	lcall	_getchar
      002F00 AE 82            [24] 1381 	mov	r6, dpl
                                   1382 ;	main.c:101: putchar(c);
      002F02 8E 05            [24] 1383 	mov	ar5,r6
      002F04 7F 00            [12] 1384 	mov	r7,#0x00
      002F06 8D 82            [24] 1385 	mov	dpl, r5
      002F08 8F 83            [24] 1386 	mov	dph, r7
      002F0A C0 06            [24] 1387 	push	ar6
      002F0C 12 4A 5D         [24] 1388 	lcall	_putchar
                                   1389 ;	main.c:102: printf("\n\r");
      002F0F 74 0A            [12] 1390 	mov	a,#___str_0
      002F11 C0 E0            [24] 1391 	push	acc
      002F13 74 5D            [12] 1392 	mov	a,#(___str_0 >> 8)
      002F15 C0 E0            [24] 1393 	push	acc
      002F17 74 80            [12] 1394 	mov	a,#0x80
      002F19 C0 E0            [24] 1395 	push	acc
      002F1B 12 51 09         [24] 1396 	lcall	_printf
      002F1E 15 81            [12] 1397 	dec	sp
      002F20 15 81            [12] 1398 	dec	sp
      002F22 15 81            [12] 1399 	dec	sp
      002F24 D0 06            [24] 1400 	pop	ar6
                                   1401 ;	main.c:104: switch(c)
      002F26 BE 31 00         [24] 1402 	cjne	r6,#0x31,00250$
      002F29                       1403 00250$:
      002F29 50 03            [24] 1404 	jnc	00251$
      002F2B 02 38 4A         [24] 1405 	ljmp	00139$
      002F2E                       1406 00251$:
      002F2E EE               [12] 1407 	mov	a,r6
      002F2F 24 B9            [12] 1408 	add	a,#0xff - 0x46
      002F31 50 03            [24] 1409 	jnc	00252$
      002F33 02 38 4A         [24] 1410 	ljmp	00139$
      002F36                       1411 00252$:
      002F36 EE               [12] 1412 	mov	a,r6
      002F37 24 CF            [12] 1413 	add	a,#0xcf
      002F39 FE               [12] 1414 	mov	r6,a
      002F3A 24 0A            [12] 1415 	add	a,#(00253$-3-.)
      002F3C 83               [24] 1416 	movc	a,@a+pc
      002F3D F5 82            [12] 1417 	mov	dpl,a
      002F3F EE               [12] 1418 	mov	a,r6
      002F40 24 1A            [12] 1419 	add	a,#(00254$-3-.)
      002F42 83               [24] 1420 	movc	a,@a+pc
      002F43 F5 83            [12] 1421 	mov	dph,a
      002F45 E4               [12] 1422 	clr	a
      002F46 73               [24] 1423 	jmp	@a+dptr
      002F47                       1424 00253$:
      002F47 73                    1425 	.db	00101$
      002F48 DB                    1426 	.db	00102$
      002F49 D9                    1427 	.db	00104$
      002F4A 38                    1428 	.db	00105$
      002F4B 9A                    1429 	.db	00106$
      002F4C 05                    1430 	.db	00107$
      002F4D 40                    1431 	.db	00108$
      002F4E 5B                    1432 	.db	00109$
      002F4F BD                    1433 	.db	00110$
      002F50 4A                    1434 	.db	00139$
      002F51 4A                    1435 	.db	00139$
      002F52 4A                    1436 	.db	00139$
      002F53 4A                    1437 	.db	00139$
      002F54 4A                    1438 	.db	00139$
      002F55 4A                    1439 	.db	00139$
      002F56 4A                    1440 	.db	00139$
      002F57 7D                    1441 	.db	00111$
      002F58 AD                    1442 	.db	00142$
      002F59 AE                    1443 	.db	00134$
      002F5A E0                    1444 	.db	00136$
      002F5B E9                    1445 	.db	00137$
      002F5C 24                    1446 	.db	00138$
      002F5D                       1447 00254$:
      002F5D 2F                    1448 	.db	00101$>>8
      002F5E 2F                    1449 	.db	00102$>>8
      002F5F 30                    1450 	.db	00104$>>8
      002F60 31                    1451 	.db	00105$>>8
      002F61 31                    1452 	.db	00106$>>8
      002F62 32                    1453 	.db	00107$>>8
      002F63 32                    1454 	.db	00108$>>8
      002F64 32                    1455 	.db	00109$>>8
      002F65 32                    1456 	.db	00110$>>8
      002F66 38                    1457 	.db	00139$>>8
      002F67 38                    1458 	.db	00139$>>8
      002F68 38                    1459 	.db	00139$>>8
      002F69 38                    1460 	.db	00139$>>8
      002F6A 38                    1461 	.db	00139$>>8
      002F6B 38                    1462 	.db	00139$>>8
      002F6C 38                    1463 	.db	00139$>>8
      002F6D 33                    1464 	.db	00111$>>8
      002F6E 2D                    1465 	.db	00142$>>8
      002F6F 37                    1466 	.db	00134$>>8
      002F70 37                    1467 	.db	00136$>>8
      002F71 37                    1468 	.db	00137$>>8
      002F72 38                    1469 	.db	00138$>>8
                                   1470 ;	main.c:106: case '1': {
      002F73                       1471 00101$:
                                   1472 ;	main.c:107: printf("Enter the register bank to select:\n\r");
      002F73 74 A1            [12] 1473 	mov	a,#___str_18
      002F75 C0 E0            [24] 1474 	push	acc
      002F77 74 5E            [12] 1475 	mov	a,#(___str_18 >> 8)
      002F79 C0 E0            [24] 1476 	push	acc
      002F7B 74 80            [12] 1477 	mov	a,#0x80
      002F7D C0 E0            [24] 1478 	push	acc
      002F7F 12 51 09         [24] 1479 	lcall	_printf
      002F82 15 81            [12] 1480 	dec	sp
      002F84 15 81            [12] 1481 	dec	sp
      002F86 15 81            [12] 1482 	dec	sp
                                   1483 ;	main.c:108: uint8_t reg_bank = get_user_buffer_size();
      002F88 12 2C 93         [24] 1484 	lcall	_get_user_buffer_size
      002F8B AE 82            [24] 1485 	mov	r6, dpl
                                   1486 ;	main.c:109: printf("Enter the address of the Control Register:\n\r");
      002F8D C0 06            [24] 1487 	push	ar6
      002F8F 74 C6            [12] 1488 	mov	a,#___str_19
      002F91 C0 E0            [24] 1489 	push	acc
      002F93 74 5E            [12] 1490 	mov	a,#(___str_19 >> 8)
      002F95 C0 E0            [24] 1491 	push	acc
      002F97 74 80            [12] 1492 	mov	a,#0x80
      002F99 C0 E0            [24] 1493 	push	acc
      002F9B 12 51 09         [24] 1494 	lcall	_printf
      002F9E 15 81            [12] 1495 	dec	sp
      002FA0 15 81            [12] 1496 	dec	sp
      002FA2 15 81            [12] 1497 	dec	sp
                                   1498 ;	main.c:110: uint8_t addr = get_user_buffer_size();
      002FA4 12 2C 93         [24] 1499 	lcall	_get_user_buffer_size
      002FA7 AD 82            [24] 1500 	mov	r5, dpl
                                   1501 ;	main.c:111: printf("Enter the data you want to write:\n\r");
      002FA9 C0 05            [24] 1502 	push	ar5
      002FAB 74 F3            [12] 1503 	mov	a,#___str_20
      002FAD C0 E0            [24] 1504 	push	acc
      002FAF 74 5E            [12] 1505 	mov	a,#(___str_20 >> 8)
      002FB1 C0 E0            [24] 1506 	push	acc
      002FB3 74 80            [12] 1507 	mov	a,#0x80
      002FB5 C0 E0            [24] 1508 	push	acc
      002FB7 12 51 09         [24] 1509 	lcall	_printf
      002FBA 15 81            [12] 1510 	dec	sp
      002FBC 15 81            [12] 1511 	dec	sp
      002FBE 15 81            [12] 1512 	dec	sp
                                   1513 ;	main.c:112: uint8_t data = get_user_buffer_size();
      002FC0 12 2C 93         [24] 1514 	lcall	_get_user_buffer_size
      002FC3 AC 82            [24] 1515 	mov	r4, dpl
      002FC5 D0 05            [24] 1516 	pop	ar5
      002FC7 D0 06            [24] 1517 	pop	ar6
                                   1518 ;	main.c:113: spi_control_write(reg_bank, addr, data);
      002FC9 90 03 84         [24] 1519 	mov	dptr,#_spi_control_write_PARM_2
      002FCC ED               [12] 1520 	mov	a,r5
      002FCD F0               [24] 1521 	movx	@dptr,a
      002FCE 90 03 85         [24] 1522 	mov	dptr,#_spi_control_write_PARM_3
      002FD1 EC               [12] 1523 	mov	a,r4
      002FD2 F0               [24] 1524 	movx	@dptr,a
      002FD3 8E 82            [24] 1525 	mov	dpl, r6
      002FD5 12 39 7D         [24] 1526 	lcall	_spi_control_write
                                   1527 ;	main.c:114: break;
      002FD8 02 2D AD         [24] 1528 	ljmp	00142$
                                   1529 ;	main.c:116: case '2': {
      002FDB                       1530 00102$:
                                   1531 ;	main.c:117: printf("Enter the number of bytes to write:\n\r");
      002FDB 74 17            [12] 1532 	mov	a,#___str_21
      002FDD C0 E0            [24] 1533 	push	acc
      002FDF 74 5F            [12] 1534 	mov	a,#(___str_21 >> 8)
      002FE1 C0 E0            [24] 1535 	push	acc
      002FE3 74 80            [12] 1536 	mov	a,#0x80
      002FE5 C0 E0            [24] 1537 	push	acc
      002FE7 12 51 09         [24] 1538 	lcall	_printf
      002FEA 15 81            [12] 1539 	dec	sp
      002FEC 15 81            [12] 1540 	dec	sp
      002FEE 15 81            [12] 1541 	dec	sp
                                   1542 ;	main.c:118: int num_bytes = get_user_buffer_size();
      002FF0 12 2C 93         [24] 1543 	lcall	_get_user_buffer_size
      002FF3 AE 82            [24] 1544 	mov	r6, dpl
      002FF5 AF 83            [24] 1545 	mov	r7, dph
                                   1546 ;	main.c:119: printf("Enter the starting address:\n\r");
      002FF7 C0 07            [24] 1547 	push	ar7
      002FF9 C0 06            [24] 1548 	push	ar6
      002FFB 74 3D            [12] 1549 	mov	a,#___str_22
      002FFD C0 E0            [24] 1550 	push	acc
      002FFF 74 5F            [12] 1551 	mov	a,#(___str_22 >> 8)
      003001 C0 E0            [24] 1552 	push	acc
      003003 74 80            [12] 1553 	mov	a,#0x80
      003005 C0 E0            [24] 1554 	push	acc
      003007 12 51 09         [24] 1555 	lcall	_printf
      00300A 15 81            [12] 1556 	dec	sp
      00300C 15 81            [12] 1557 	dec	sp
      00300E 15 81            [12] 1558 	dec	sp
                                   1559 ;	main.c:120: uint16_t start_address = get_user_buffer_size();
      003010 12 2C 93         [24] 1560 	lcall	_get_user_buffer_size
      003013 AC 82            [24] 1561 	mov	r4, dpl
      003015 AD 83            [24] 1562 	mov	r5, dph
      003017 D0 06            [24] 1563 	pop	ar6
      003019 D0 07            [24] 1564 	pop	ar7
                                   1565 ;	main.c:122: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      00301B C0 07            [24] 1566 	push	ar7
      00301D C0 06            [24] 1567 	push	ar6
      00301F C0 05            [24] 1568 	push	ar5
      003021 C0 04            [24] 1569 	push	ar4
      003023 C0 06            [24] 1570 	push	ar6
      003025 C0 07            [24] 1571 	push	ar7
      003027 74 5B            [12] 1572 	mov	a,#___str_23
      003029 C0 E0            [24] 1573 	push	acc
      00302B 74 5F            [12] 1574 	mov	a,#(___str_23 >> 8)
      00302D C0 E0            [24] 1575 	push	acc
      00302F 74 80            [12] 1576 	mov	a,#0x80
      003031 C0 E0            [24] 1577 	push	acc
      003033 12 51 09         [24] 1578 	lcall	_printf
      003036 E5 81            [12] 1579 	mov	a,sp
      003038 24 FB            [12] 1580 	add	a,#0xfb
      00303A F5 81            [12] 1581 	mov	sp,a
      00303C D0 04            [24] 1582 	pop	ar4
      00303E D0 05            [24] 1583 	pop	ar5
      003040 D0 06            [24] 1584 	pop	ar6
      003042 D0 07            [24] 1585 	pop	ar7
                                   1586 ;	main.c:123: for (int i = 0; i < num_bytes; i++) {
      003044 7A 00            [12] 1587 	mov	r2,#0x00
      003046 7B 00            [12] 1588 	mov	r3,#0x00
      003048                       1589 00145$:
      003048 C3               [12] 1590 	clr	c
      003049 EA               [12] 1591 	mov	a,r2
      00304A 9E               [12] 1592 	subb	a,r6
      00304B EB               [12] 1593 	mov	a,r3
      00304C 64 80            [12] 1594 	xrl	a,#0x80
      00304E 8F F0            [24] 1595 	mov	b,r7
      003050 63 F0 80         [24] 1596 	xrl	b,#0x80
      003053 95 F0            [12] 1597 	subb	a,b
      003055 50 63            [24] 1598 	jnc	00103$
                                   1599 ;	main.c:124: printf("Byte %d: ", i);
      003057 C0 04            [24] 1600 	push	ar4
      003059 C0 05            [24] 1601 	push	ar5
      00305B C0 07            [24] 1602 	push	ar7
      00305D C0 06            [24] 1603 	push	ar6
      00305F C0 05            [24] 1604 	push	ar5
      003061 C0 04            [24] 1605 	push	ar4
      003063 C0 03            [24] 1606 	push	ar3
      003065 C0 02            [24] 1607 	push	ar2
      003067 C0 02            [24] 1608 	push	ar2
      003069 C0 03            [24] 1609 	push	ar3
      00306B 74 7E            [12] 1610 	mov	a,#___str_24
      00306D C0 E0            [24] 1611 	push	acc
      00306F 74 5F            [12] 1612 	mov	a,#(___str_24 >> 8)
      003071 C0 E0            [24] 1613 	push	acc
      003073 74 80            [12] 1614 	mov	a,#0x80
      003075 C0 E0            [24] 1615 	push	acc
      003077 12 51 09         [24] 1616 	lcall	_printf
      00307A E5 81            [12] 1617 	mov	a,sp
      00307C 24 FB            [12] 1618 	add	a,#0xfb
      00307E F5 81            [12] 1619 	mov	sp,a
      003080 D0 02            [24] 1620 	pop	ar2
      003082 D0 03            [24] 1621 	pop	ar3
      003084 D0 04            [24] 1622 	pop	ar4
      003086 D0 05            [24] 1623 	pop	ar5
                                   1624 ;	main.c:125: buffer[i] = get_user_buffer_size();
      003088 EA               [12] 1625 	mov	a,r2
      003089 24 7B            [12] 1626 	add	a, #_main_buffer_40003_147
      00308B F8               [12] 1627 	mov	r0,a
      00308C EB               [12] 1628 	mov	a,r3
      00308D 34 01            [12] 1629 	addc	a, #(_main_buffer_40003_147 >> 8)
      00308F F9               [12] 1630 	mov	r1,a
      003090 C0 03            [24] 1631 	push	ar3
      003092 C0 02            [24] 1632 	push	ar2
      003094 C0 01            [24] 1633 	push	ar1
      003096 C0 00            [24] 1634 	push	ar0
      003098 12 2C 93         [24] 1635 	lcall	_get_user_buffer_size
      00309B AC 82            [24] 1636 	mov	r4, dpl
      00309D D0 00            [24] 1637 	pop	ar0
      00309F D0 01            [24] 1638 	pop	ar1
      0030A1 D0 02            [24] 1639 	pop	ar2
      0030A3 D0 03            [24] 1640 	pop	ar3
      0030A5 D0 06            [24] 1641 	pop	ar6
      0030A7 D0 07            [24] 1642 	pop	ar7
      0030A9 88 82            [24] 1643 	mov	dpl,r0
      0030AB 89 83            [24] 1644 	mov	dph,r1
      0030AD EC               [12] 1645 	mov	a,r4
      0030AE F0               [24] 1646 	movx	@dptr,a
                                   1647 ;	main.c:123: for (int i = 0; i < num_bytes; i++) {
      0030AF 0A               [12] 1648 	inc	r2
      0030B0 BA 00 01         [24] 1649 	cjne	r2,#0x00,00256$
      0030B3 0B               [12] 1650 	inc	r3
      0030B4                       1651 00256$:
      0030B4 D0 05            [24] 1652 	pop	ar5
      0030B6 D0 04            [24] 1653 	pop	ar4
      0030B8 80 8E            [24] 1654 	sjmp	00145$
      0030BA                       1655 00103$:
                                   1656 ;	main.c:127: spi_buffer_write(num_bytes, start_address, buffer);
      0030BA 90 03 9E         [24] 1657 	mov	dptr,#_spi_buffer_write_PARM_2
      0030BD EC               [12] 1658 	mov	a,r4
      0030BE F0               [24] 1659 	movx	@dptr,a
      0030BF ED               [12] 1660 	mov	a,r5
      0030C0 A3               [24] 1661 	inc	dptr
      0030C1 F0               [24] 1662 	movx	@dptr,a
      0030C2 90 03 A0         [24] 1663 	mov	dptr,#_spi_buffer_write_PARM_3
      0030C5 74 7B            [12] 1664 	mov	a,#_main_buffer_40003_147
      0030C7 F0               [24] 1665 	movx	@dptr,a
      0030C8 74 01            [12] 1666 	mov	a,#(_main_buffer_40003_147 >> 8)
      0030CA A3               [24] 1667 	inc	dptr
      0030CB F0               [24] 1668 	movx	@dptr,a
      0030CC E4               [12] 1669 	clr	a
      0030CD A3               [24] 1670 	inc	dptr
      0030CE F0               [24] 1671 	movx	@dptr,a
      0030CF 8E 82            [24] 1672 	mov	dpl, r6
      0030D1 8F 83            [24] 1673 	mov	dph, r7
      0030D3 12 3F 06         [24] 1674 	lcall	_spi_buffer_write
                                   1675 ;	main.c:128: break;
      0030D6 02 2D AD         [24] 1676 	ljmp	00142$
                                   1677 ;	main.c:130: case '3': {
      0030D9                       1678 00104$:
                                   1679 ;	main.c:131: printf("Enter the number of bytes to read:\n\r");
      0030D9 74 88            [12] 1680 	mov	a,#___str_25
      0030DB C0 E0            [24] 1681 	push	acc
      0030DD 74 5F            [12] 1682 	mov	a,#(___str_25 >> 8)
      0030DF C0 E0            [24] 1683 	push	acc
      0030E1 74 80            [12] 1684 	mov	a,#0x80
      0030E3 C0 E0            [24] 1685 	push	acc
      0030E5 12 51 09         [24] 1686 	lcall	_printf
      0030E8 15 81            [12] 1687 	dec	sp
      0030EA 15 81            [12] 1688 	dec	sp
      0030EC 15 81            [12] 1689 	dec	sp
                                   1690 ;	main.c:132: int num_bytes = get_user_buffer_size();
      0030EE 12 2C 93         [24] 1691 	lcall	_get_user_buffer_size
      0030F1 AE 82            [24] 1692 	mov	r6, dpl
      0030F3 AF 83            [24] 1693 	mov	r7, dph
                                   1694 ;	main.c:133: printf("Enter the starting address:\n\r");
      0030F5 C0 07            [24] 1695 	push	ar7
      0030F7 C0 06            [24] 1696 	push	ar6
      0030F9 74 3D            [12] 1697 	mov	a,#___str_22
      0030FB C0 E0            [24] 1698 	push	acc
      0030FD 74 5F            [12] 1699 	mov	a,#(___str_22 >> 8)
      0030FF C0 E0            [24] 1700 	push	acc
      003101 74 80            [12] 1701 	mov	a,#0x80
      003103 C0 E0            [24] 1702 	push	acc
      003105 12 51 09         [24] 1703 	lcall	_printf
      003108 15 81            [12] 1704 	dec	sp
      00310A 15 81            [12] 1705 	dec	sp
      00310C 15 81            [12] 1706 	dec	sp
                                   1707 ;	main.c:134: uint16_t start_address = get_user_buffer_size();
      00310E 12 2C 93         [24] 1708 	lcall	_get_user_buffer_size
      003111 AC 82            [24] 1709 	mov	r4, dpl
      003113 AD 83            [24] 1710 	mov	r5, dph
      003115 D0 06            [24] 1711 	pop	ar6
      003117 D0 07            [24] 1712 	pop	ar7
      003119 90 03 95         [24] 1713 	mov	dptr,#_spi_buffer_read_PARM_2
      00311C EC               [12] 1714 	mov	a,r4
      00311D F0               [24] 1715 	movx	@dptr,a
      00311E ED               [12] 1716 	mov	a,r5
      00311F A3               [24] 1717 	inc	dptr
      003120 F0               [24] 1718 	movx	@dptr,a
                                   1719 ;	main.c:136: spi_buffer_read(num_bytes, start_address, buffer);
      003121 90 03 97         [24] 1720 	mov	dptr,#_spi_buffer_read_PARM_3
      003124 74 7B            [12] 1721 	mov	a,#_main_buffer_40003_152
      003126 F0               [24] 1722 	movx	@dptr,a
      003127 74 02            [12] 1723 	mov	a,#(_main_buffer_40003_152 >> 8)
      003129 A3               [24] 1724 	inc	dptr
      00312A F0               [24] 1725 	movx	@dptr,a
      00312B E4               [12] 1726 	clr	a
      00312C A3               [24] 1727 	inc	dptr
      00312D F0               [24] 1728 	movx	@dptr,a
      00312E 8E 82            [24] 1729 	mov	dpl, r6
      003130 8F 83            [24] 1730 	mov	dph, r7
      003132 12 3D 2D         [24] 1731 	lcall	_spi_buffer_read
                                   1732 ;	main.c:137: break;
      003135 02 2D AD         [24] 1733 	ljmp	00142$
                                   1734 ;	main.c:139: case '4': {
      003138                       1735 00105$:
                                   1736 ;	main.c:140: printf("Enter the MAC register bank to select:\n\r");
      003138 74 AD            [12] 1737 	mov	a,#___str_26
      00313A C0 E0            [24] 1738 	push	acc
      00313C 74 5F            [12] 1739 	mov	a,#(___str_26 >> 8)
      00313E C0 E0            [24] 1740 	push	acc
      003140 74 80            [12] 1741 	mov	a,#0x80
      003142 C0 E0            [24] 1742 	push	acc
      003144 12 51 09         [24] 1743 	lcall	_printf
      003147 15 81            [12] 1744 	dec	sp
      003149 15 81            [12] 1745 	dec	sp
      00314B 15 81            [12] 1746 	dec	sp
                                   1747 ;	main.c:141: uint8_t reg_bank = get_user_buffer_size();
      00314D 12 2C 93         [24] 1748 	lcall	_get_user_buffer_size
      003150 AE 82            [24] 1749 	mov	r6, dpl
                                   1750 ;	main.c:142: printf("Enter the address of the MAC Register:\n\r");
      003152 C0 06            [24] 1751 	push	ar6
      003154 74 D6            [12] 1752 	mov	a,#___str_27
      003156 C0 E0            [24] 1753 	push	acc
      003158 74 5F            [12] 1754 	mov	a,#(___str_27 >> 8)
      00315A C0 E0            [24] 1755 	push	acc
      00315C 74 80            [12] 1756 	mov	a,#0x80
      00315E C0 E0            [24] 1757 	push	acc
      003160 12 51 09         [24] 1758 	lcall	_printf
      003163 15 81            [12] 1759 	dec	sp
      003165 15 81            [12] 1760 	dec	sp
      003167 15 81            [12] 1761 	dec	sp
                                   1762 ;	main.c:143: uint8_t addr = get_user_buffer_size();
      003169 12 2C 93         [24] 1763 	lcall	_get_user_buffer_size
      00316C AD 82            [24] 1764 	mov	r5, dpl
      00316E D0 06            [24] 1765 	pop	ar6
                                   1766 ;	main.c:144: uint8_t data = mac_spi_read(addr, reg_bank);
      003170 90 03 8D         [24] 1767 	mov	dptr,#_mac_spi_read_PARM_2
      003173 EE               [12] 1768 	mov	a,r6
      003174 F0               [24] 1769 	movx	@dptr,a
      003175 8D 82            [24] 1770 	mov	dpl, r5
      003177 12 3A F3         [24] 1771 	lcall	_mac_spi_read
      00317A AF 82            [24] 1772 	mov	r7, dpl
                                   1773 ;	main.c:145: printf("MAC Register Data: 0x%02X\n\r", data);
      00317C 7E 00            [12] 1774 	mov	r6,#0x00
      00317E C0 07            [24] 1775 	push	ar7
      003180 C0 06            [24] 1776 	push	ar6
      003182 74 FF            [12] 1777 	mov	a,#___str_28
      003184 C0 E0            [24] 1778 	push	acc
      003186 74 5F            [12] 1779 	mov	a,#(___str_28 >> 8)
      003188 C0 E0            [24] 1780 	push	acc
      00318A 74 80            [12] 1781 	mov	a,#0x80
      00318C C0 E0            [24] 1782 	push	acc
      00318E 12 51 09         [24] 1783 	lcall	_printf
      003191 E5 81            [12] 1784 	mov	a,sp
      003193 24 FB            [12] 1785 	add	a,#0xfb
      003195 F5 81            [12] 1786 	mov	sp,a
                                   1787 ;	main.c:146: break;
      003197 02 2D AD         [24] 1788 	ljmp	00142$
                                   1789 ;	main.c:148: case '5': {
      00319A                       1790 00106$:
                                   1791 ;	main.c:149: printf("Enter the PHY register address:\n\r");
      00319A 74 1B            [12] 1792 	mov	a,#___str_29
      00319C C0 E0            [24] 1793 	push	acc
      00319E 74 60            [12] 1794 	mov	a,#(___str_29 >> 8)
      0031A0 C0 E0            [24] 1795 	push	acc
      0031A2 74 80            [12] 1796 	mov	a,#0x80
      0031A4 C0 E0            [24] 1797 	push	acc
      0031A6 12 51 09         [24] 1798 	lcall	_printf
      0031A9 15 81            [12] 1799 	dec	sp
      0031AB 15 81            [12] 1800 	dec	sp
      0031AD 15 81            [12] 1801 	dec	sp
                                   1802 ;	main.c:150: uint8_t addr = get_user_buffer_size();
      0031AF 12 2C 93         [24] 1803 	lcall	_get_user_buffer_size
      0031B2 AE 82            [24] 1804 	mov	r6, dpl
                                   1805 ;	main.c:151: printf("Enter the 16-bit data to write:\n\r");
      0031B4 C0 06            [24] 1806 	push	ar6
      0031B6 74 3D            [12] 1807 	mov	a,#___str_30
      0031B8 C0 E0            [24] 1808 	push	acc
      0031BA 74 60            [12] 1809 	mov	a,#(___str_30 >> 8)
      0031BC C0 E0            [24] 1810 	push	acc
      0031BE 74 80            [12] 1811 	mov	a,#0x80
      0031C0 C0 E0            [24] 1812 	push	acc
      0031C2 12 51 09         [24] 1813 	lcall	_printf
      0031C5 15 81            [12] 1814 	dec	sp
      0031C7 15 81            [12] 1815 	dec	sp
      0031C9 15 81            [12] 1816 	dec	sp
                                   1817 ;	main.c:152: uint16_t data = get_user_buffer_size();
      0031CB 12 2C 93         [24] 1818 	lcall	_get_user_buffer_size
      0031CE AD 82            [24] 1819 	mov	r5, dpl
      0031D0 AF 83            [24] 1820 	mov	r7, dph
      0031D2 D0 06            [24] 1821 	pop	ar6
                                   1822 ;	main.c:153: phy_spi_write(addr, data);
      0031D4 90 03 8A         [24] 1823 	mov	dptr,#_phy_spi_write_PARM_2
      0031D7 ED               [12] 1824 	mov	a,r5
      0031D8 F0               [24] 1825 	movx	@dptr,a
      0031D9 EF               [12] 1826 	mov	a,r7
      0031DA A3               [24] 1827 	inc	dptr
      0031DB F0               [24] 1828 	movx	@dptr,a
      0031DC 8E 82            [24] 1829 	mov	dpl, r6
      0031DE C0 07            [24] 1830 	push	ar7
      0031E0 C0 05            [24] 1831 	push	ar5
      0031E2 12 3A 70         [24] 1832 	lcall	_phy_spi_write
      0031E5 D0 05            [24] 1833 	pop	ar5
      0031E7 D0 07            [24] 1834 	pop	ar7
                                   1835 ;	main.c:154: printf("PHY Write Data: 0x%04X\n\r", data);
      0031E9 C0 05            [24] 1836 	push	ar5
      0031EB C0 07            [24] 1837 	push	ar7
      0031ED 74 5F            [12] 1838 	mov	a,#___str_31
      0031EF C0 E0            [24] 1839 	push	acc
      0031F1 74 60            [12] 1840 	mov	a,#(___str_31 >> 8)
      0031F3 C0 E0            [24] 1841 	push	acc
      0031F5 74 80            [12] 1842 	mov	a,#0x80
      0031F7 C0 E0            [24] 1843 	push	acc
      0031F9 12 51 09         [24] 1844 	lcall	_printf
      0031FC E5 81            [12] 1845 	mov	a,sp
      0031FE 24 FB            [12] 1846 	add	a,#0xfb
      003200 F5 81            [12] 1847 	mov	sp,a
                                   1848 ;	main.c:155: break;
      003202 02 2D AD         [24] 1849 	ljmp	00142$
                                   1850 ;	main.c:157: case '6': {
      003205                       1851 00107$:
                                   1852 ;	main.c:158: printf("Enter the PHY register address to read:\n\r");
      003205 74 78            [12] 1853 	mov	a,#___str_32
      003207 C0 E0            [24] 1854 	push	acc
      003209 74 60            [12] 1855 	mov	a,#(___str_32 >> 8)
      00320B C0 E0            [24] 1856 	push	acc
      00320D 74 80            [12] 1857 	mov	a,#0x80
      00320F C0 E0            [24] 1858 	push	acc
      003211 12 51 09         [24] 1859 	lcall	_printf
      003214 15 81            [12] 1860 	dec	sp
      003216 15 81            [12] 1861 	dec	sp
      003218 15 81            [12] 1862 	dec	sp
                                   1863 ;	main.c:159: uint8_t addr = get_user_buffer_size();
      00321A 12 2C 93         [24] 1864 	lcall	_get_user_buffer_size
                                   1865 ;	main.c:160: uint16_t data = phy_spi_read(addr);
      00321D 12 3B 36         [24] 1866 	lcall	_phy_spi_read
      003220 AE 82            [24] 1867 	mov	r6, dpl
      003222 AF 83            [24] 1868 	mov	r7, dph
                                   1869 ;	main.c:161: printf("PHY Read Data: 0x%04X\n\r", data);
      003224 C0 06            [24] 1870 	push	ar6
      003226 C0 07            [24] 1871 	push	ar7
      003228 74 A2            [12] 1872 	mov	a,#___str_33
      00322A C0 E0            [24] 1873 	push	acc
      00322C 74 60            [12] 1874 	mov	a,#(___str_33 >> 8)
      00322E C0 E0            [24] 1875 	push	acc
      003230 74 80            [12] 1876 	mov	a,#0x80
      003232 C0 E0            [24] 1877 	push	acc
      003234 12 51 09         [24] 1878 	lcall	_printf
      003237 E5 81            [12] 1879 	mov	a,sp
      003239 24 FB            [12] 1880 	add	a,#0xfb
      00323B F5 81            [12] 1881 	mov	sp,a
                                   1882 ;	main.c:162: break;
      00323D 02 2D AD         [24] 1883 	ljmp	00142$
                                   1884 ;	main.c:164: case '7': {
      003240                       1885 00108$:
                                   1886 ;	main.c:165: printf("Resetting ENC28J60...\n\r");
      003240 74 BA            [12] 1887 	mov	a,#___str_34
      003242 C0 E0            [24] 1888 	push	acc
      003244 74 60            [12] 1889 	mov	a,#(___str_34 >> 8)
      003246 C0 E0            [24] 1890 	push	acc
      003248 74 80            [12] 1891 	mov	a,#0x80
      00324A C0 E0            [24] 1892 	push	acc
      00324C 12 51 09         [24] 1893 	lcall	_printf
      00324F 15 81            [12] 1894 	dec	sp
      003251 15 81            [12] 1895 	dec	sp
      003253 15 81            [12] 1896 	dec	sp
                                   1897 ;	main.c:166: enc_reset();
      003255 12 39 F7         [24] 1898 	lcall	_enc_reset
                                   1899 ;	main.c:167: break;
      003258 02 2D AD         [24] 1900 	ljmp	00142$
                                   1901 ;	main.c:169: case '8': {
      00325B                       1902 00109$:
                                   1903 ;	main.c:170: printf("Enter the ETH register address to read:\n\r");
      00325B 74 D2            [12] 1904 	mov	a,#___str_35
      00325D C0 E0            [24] 1905 	push	acc
      00325F 74 60            [12] 1906 	mov	a,#(___str_35 >> 8)
      003261 C0 E0            [24] 1907 	push	acc
      003263 74 80            [12] 1908 	mov	a,#0x80
      003265 C0 E0            [24] 1909 	push	acc
      003267 12 51 09         [24] 1910 	lcall	_printf
      00326A 15 81            [12] 1911 	dec	sp
      00326C 15 81            [12] 1912 	dec	sp
      00326E 15 81            [12] 1913 	dec	sp
                                   1914 ;	main.c:171: uint8_t addr = get_user_buffer_size();
      003270 12 2C 93         [24] 1915 	lcall	_get_user_buffer_size
      003273 AE 82            [24] 1916 	mov	r6, dpl
                                   1917 ;	main.c:172: printf("Enter the bank (0 or 1):\n\r");
      003275 C0 06            [24] 1918 	push	ar6
      003277 74 FC            [12] 1919 	mov	a,#___str_36
      003279 C0 E0            [24] 1920 	push	acc
      00327B 74 60            [12] 1921 	mov	a,#(___str_36 >> 8)
      00327D C0 E0            [24] 1922 	push	acc
      00327F 74 80            [12] 1923 	mov	a,#0x80
      003281 C0 E0            [24] 1924 	push	acc
      003283 12 51 09         [24] 1925 	lcall	_printf
      003286 15 81            [12] 1926 	dec	sp
      003288 15 81            [12] 1927 	dec	sp
      00328A 15 81            [12] 1928 	dec	sp
                                   1929 ;	main.c:173: uint8_t bank = get_user_buffer_size();
      00328C 12 2C 93         [24] 1930 	lcall	_get_user_buffer_size
      00328F AD 82            [24] 1931 	mov	r5, dpl
      003291 D0 06            [24] 1932 	pop	ar6
      003293 90 03 88         [24] 1933 	mov	dptr,#_eth_spi_read_PARM_2
      003296 ED               [12] 1934 	mov	a,r5
      003297 F0               [24] 1935 	movx	@dptr,a
                                   1936 ;	main.c:174: uint8_t data = eth_spi_read(addr, bank);
      003298 8E 82            [24] 1937 	mov	dpl, r6
      00329A 12 3A 02         [24] 1938 	lcall	_eth_spi_read
      00329D AF 82            [24] 1939 	mov	r7, dpl
                                   1940 ;	main.c:175: printf("ETH Register Data: 0x%02X\n\r", data);
      00329F 7E 00            [12] 1941 	mov	r6,#0x00
      0032A1 C0 07            [24] 1942 	push	ar7
      0032A3 C0 06            [24] 1943 	push	ar6
      0032A5 74 17            [12] 1944 	mov	a,#___str_37
      0032A7 C0 E0            [24] 1945 	push	acc
      0032A9 74 61            [12] 1946 	mov	a,#(___str_37 >> 8)
      0032AB C0 E0            [24] 1947 	push	acc
      0032AD 74 80            [12] 1948 	mov	a,#0x80
      0032AF C0 E0            [24] 1949 	push	acc
      0032B1 12 51 09         [24] 1950 	lcall	_printf
      0032B4 E5 81            [12] 1951 	mov	a,sp
      0032B6 24 FB            [12] 1952 	add	a,#0xfb
      0032B8 F5 81            [12] 1953 	mov	sp,a
                                   1954 ;	main.c:176: break;
      0032BA 02 2D AD         [24] 1955 	ljmp	00142$
                                   1956 ;	main.c:178: case '9': {
      0032BD                       1957 00110$:
                                   1958 ;	main.c:179: printf("\n\rChoose an action: \n\r");
      0032BD 74 26            [12] 1959 	mov	a,#___str_2
      0032BF C0 E0            [24] 1960 	push	acc
      0032C1 74 5D            [12] 1961 	mov	a,#(___str_2 >> 8)
      0032C3 C0 E0            [24] 1962 	push	acc
      0032C5 74 80            [12] 1963 	mov	a,#0x80
      0032C7 C0 E0            [24] 1964 	push	acc
      0032C9 12 51 09         [24] 1965 	lcall	_printf
      0032CC 15 81            [12] 1966 	dec	sp
      0032CE 15 81            [12] 1967 	dec	sp
      0032D0 15 81            [12] 1968 	dec	sp
                                   1969 ;	main.c:180: printf("1 --> Control Write\n\r");
      0032D2 74 3D            [12] 1970 	mov	a,#___str_3
      0032D4 C0 E0            [24] 1971 	push	acc
      0032D6 74 5D            [12] 1972 	mov	a,#(___str_3 >> 8)
      0032D8 C0 E0            [24] 1973 	push	acc
      0032DA 74 80            [12] 1974 	mov	a,#0x80
      0032DC C0 E0            [24] 1975 	push	acc
      0032DE 12 51 09         [24] 1976 	lcall	_printf
      0032E1 15 81            [12] 1977 	dec	sp
      0032E3 15 81            [12] 1978 	dec	sp
      0032E5 15 81            [12] 1979 	dec	sp
                                   1980 ;	main.c:181: printf("2 --> Buffer Write\n\r");
      0032E7 74 53            [12] 1981 	mov	a,#___str_4
      0032E9 C0 E0            [24] 1982 	push	acc
      0032EB 74 5D            [12] 1983 	mov	a,#(___str_4 >> 8)
      0032ED C0 E0            [24] 1984 	push	acc
      0032EF 74 80            [12] 1985 	mov	a,#0x80
      0032F1 C0 E0            [24] 1986 	push	acc
      0032F3 12 51 09         [24] 1987 	lcall	_printf
      0032F6 15 81            [12] 1988 	dec	sp
      0032F8 15 81            [12] 1989 	dec	sp
      0032FA 15 81            [12] 1990 	dec	sp
                                   1991 ;	main.c:182: printf("3 --> Buffer Read\n\r");
      0032FC 74 68            [12] 1992 	mov	a,#___str_5
      0032FE C0 E0            [24] 1993 	push	acc
      003300 74 5D            [12] 1994 	mov	a,#(___str_5 >> 8)
      003302 C0 E0            [24] 1995 	push	acc
      003304 74 80            [12] 1996 	mov	a,#0x80
      003306 C0 E0            [24] 1997 	push	acc
      003308 12 51 09         [24] 1998 	lcall	_printf
      00330B 15 81            [12] 1999 	dec	sp
      00330D 15 81            [12] 2000 	dec	sp
      00330F 15 81            [12] 2001 	dec	sp
                                   2002 ;	main.c:183: printf("4 --> MAC Register Read\n\r");
      003311 74 7C            [12] 2003 	mov	a,#___str_6
      003313 C0 E0            [24] 2004 	push	acc
      003315 74 5D            [12] 2005 	mov	a,#(___str_6 >> 8)
      003317 C0 E0            [24] 2006 	push	acc
      003319 74 80            [12] 2007 	mov	a,#0x80
      00331B C0 E0            [24] 2008 	push	acc
      00331D 12 51 09         [24] 2009 	lcall	_printf
      003320 15 81            [12] 2010 	dec	sp
      003322 15 81            [12] 2011 	dec	sp
      003324 15 81            [12] 2012 	dec	sp
                                   2013 ;	main.c:184: printf("5 --> PHY SPI Write\n\r");
      003326 74 96            [12] 2014 	mov	a,#___str_7
      003328 C0 E0            [24] 2015 	push	acc
      00332A 74 5D            [12] 2016 	mov	a,#(___str_7 >> 8)
      00332C C0 E0            [24] 2017 	push	acc
      00332E 74 80            [12] 2018 	mov	a,#0x80
      003330 C0 E0            [24] 2019 	push	acc
      003332 12 51 09         [24] 2020 	lcall	_printf
      003335 15 81            [12] 2021 	dec	sp
      003337 15 81            [12] 2022 	dec	sp
      003339 15 81            [12] 2023 	dec	sp
                                   2024 ;	main.c:185: printf("6 --> PHY SPI Read\n\r");
      00333B 74 AC            [12] 2025 	mov	a,#___str_8
      00333D C0 E0            [24] 2026 	push	acc
      00333F 74 5D            [12] 2027 	mov	a,#(___str_8 >> 8)
      003341 C0 E0            [24] 2028 	push	acc
      003343 74 80            [12] 2029 	mov	a,#0x80
      003345 C0 E0            [24] 2030 	push	acc
      003347 12 51 09         [24] 2031 	lcall	_printf
      00334A 15 81            [12] 2032 	dec	sp
      00334C 15 81            [12] 2033 	dec	sp
      00334E 15 81            [12] 2034 	dec	sp
                                   2035 ;	main.c:186: printf("7 --> ENC Reset\n\r");
      003350 74 C1            [12] 2036 	mov	a,#___str_9
      003352 C0 E0            [24] 2037 	push	acc
      003354 74 5D            [12] 2038 	mov	a,#(___str_9 >> 8)
      003356 C0 E0            [24] 2039 	push	acc
      003358 74 80            [12] 2040 	mov	a,#0x80
      00335A C0 E0            [24] 2041 	push	acc
      00335C 12 51 09         [24] 2042 	lcall	_printf
      00335F 15 81            [12] 2043 	dec	sp
      003361 15 81            [12] 2044 	dec	sp
      003363 15 81            [12] 2045 	dec	sp
                                   2046 ;	main.c:187: printf("8 --> Read ETH Register\n\r");
      003365 74 D3            [12] 2047 	mov	a,#___str_10
      003367 C0 E0            [24] 2048 	push	acc
      003369 74 5D            [12] 2049 	mov	a,#(___str_10 >> 8)
      00336B C0 E0            [24] 2050 	push	acc
      00336D 74 80            [12] 2051 	mov	a,#0x80
      00336F C0 E0            [24] 2052 	push	acc
      003371 12 51 09         [24] 2053 	lcall	_printf
      003374 15 81            [12] 2054 	dec	sp
      003376 15 81            [12] 2055 	dec	sp
      003378 15 81            [12] 2056 	dec	sp
                                   2057 ;	main.c:188: break;
      00337A 02 2D AD         [24] 2058 	ljmp	00142$
                                   2059 ;	main.c:190: case 'A':{
      00337D                       2060 00111$:
                                   2061 ;	main.c:191: send_arp_request();
      00337D 12 22 09         [24] 2062 	lcall	_send_arp_request
                                   2063 ;	main.c:192: while(1)
      003380                       2064 00131$:
                                   2065 ;	main.c:194: if(ENC_pkt_count() > 0)
      003380 12 2A 67         [24] 2066 	lcall	_ENC_pkt_count
      003383 E5 82            [12] 2067 	mov	a, dpl
      003385 60 F9            [24] 2068 	jz	00131$
                                   2069 ;	main.c:201: if (gNextPacketPtr == 0)
      003387 90 03 7B         [24] 2070 	mov	dptr,#_main_gNextPacketPtr_60001_168
      00338A E0               [24] 2071 	movx	a,@dptr
      00338B FE               [12] 2072 	mov	r6,a
      00338C A3               [24] 2073 	inc	dptr
      00338D E0               [24] 2074 	movx	a,@dptr
      00338E FF               [12] 2075 	mov	r7,a
      00338F 90 03 7B         [24] 2076 	mov	dptr,#_main_gNextPacketPtr_60001_168
      003392 E0               [24] 2077 	movx	a,@dptr
      003393 F5 F0            [12] 2078 	mov	b,a
      003395 A3               [24] 2079 	inc	dptr
      003396 E0               [24] 2080 	movx	a,@dptr
      003397 45 F0            [12] 2081 	orl	a,b
      003399 70 08            [24] 2082 	jnz	00113$
                                   2083 ;	main.c:203: update_ERXRDPT(RX_BUFFER_END);
      00339B 90 0B FF         [24] 2084 	mov	dptr,#0x0bff
      00339E 12 2A 73         [24] 2085 	lcall	_update_ERXRDPT
      0033A1 80 0C            [24] 2086 	sjmp	00114$
      0033A3                       2087 00113$:
                                   2088 ;	main.c:207: update_ERXRDPT(gNextPacketPtr - 1);
      0033A3 1E               [12] 2089 	dec	r6
      0033A4 BE FF 01         [24] 2090 	cjne	r6,#0xff,00259$
      0033A7 1F               [12] 2091 	dec	r7
      0033A8                       2092 00259$:
      0033A8 8E 82            [24] 2093 	mov	dpl, r6
      0033AA 8F 83            [24] 2094 	mov	dph, r7
      0033AC 12 2A 73         [24] 2095 	lcall	_update_ERXRDPT
      0033AF                       2096 00114$:
                                   2097 ;	main.c:209: uint8_t *packet_data = (uint8_t *)malloc(6);
      0033AF 90 00 06         [24] 2098 	mov	dptr,#0x0006
      0033B2 12 4E 53         [24] 2099 	lcall	_malloc
      0033B5 AE 82            [24] 2100 	mov	r6, dpl
      0033B7 AD 83            [24] 2101 	mov	r5,dph
      0033B9 7F 00            [12] 2102 	mov	r7,#0x00
                                   2103 ;	main.c:210: spi_buffer_read(6, gNextPacketPtr, packet_data);
      0033BB 90 03 7B         [24] 2104 	mov	dptr,#_main_gNextPacketPtr_60001_168
      0033BE E0               [24] 2105 	movx	a,@dptr
      0033BF FB               [12] 2106 	mov	r3,a
      0033C0 A3               [24] 2107 	inc	dptr
      0033C1 E0               [24] 2108 	movx	a,@dptr
      0033C2 FC               [12] 2109 	mov	r4,a
      0033C3 90 03 95         [24] 2110 	mov	dptr,#_spi_buffer_read_PARM_2
      0033C6 EB               [12] 2111 	mov	a,r3
      0033C7 F0               [24] 2112 	movx	@dptr,a
      0033C8 EC               [12] 2113 	mov	a,r4
      0033C9 A3               [24] 2114 	inc	dptr
      0033CA F0               [24] 2115 	movx	@dptr,a
      0033CB 90 03 97         [24] 2116 	mov	dptr,#_spi_buffer_read_PARM_3
      0033CE EE               [12] 2117 	mov	a,r6
      0033CF F0               [24] 2118 	movx	@dptr,a
      0033D0 ED               [12] 2119 	mov	a,r5
      0033D1 A3               [24] 2120 	inc	dptr
      0033D2 F0               [24] 2121 	movx	@dptr,a
      0033D3 EF               [12] 2122 	mov	a,r7
      0033D4 A3               [24] 2123 	inc	dptr
      0033D5 F0               [24] 2124 	movx	@dptr,a
      0033D6 90 00 06         [24] 2125 	mov	dptr,#0x0006
      0033D9 C0 07            [24] 2126 	push	ar7
      0033DB C0 06            [24] 2127 	push	ar6
      0033DD C0 05            [24] 2128 	push	ar5
      0033DF 12 3D 2D         [24] 2129 	lcall	_spi_buffer_read
      0033E2 D0 05            [24] 2130 	pop	ar5
      0033E4 D0 06            [24] 2131 	pop	ar6
      0033E6 D0 07            [24] 2132 	pop	ar7
                                   2133 ;	main.c:214: nextPacket = (uint16_t)(packet_data[1] << 8 | packet_data[0]); // Next Packet (MSB, LSB)
      0033E8 74 01            [12] 2134 	mov	a,#0x01
      0033EA 2E               [12] 2135 	add	a, r6
      0033EB FA               [12] 2136 	mov	r2,a
      0033EC E4               [12] 2137 	clr	a
      0033ED 3D               [12] 2138 	addc	a, r5
      0033EE FB               [12] 2139 	mov	r3,a
      0033EF 8F 04            [24] 2140 	mov	ar4,r7
      0033F1 8A 82            [24] 2141 	mov	dpl,r2
      0033F3 8B 83            [24] 2142 	mov	dph,r3
      0033F5 8C F0            [24] 2143 	mov	b,r4
      0033F7 12 5B 2B         [24] 2144 	lcall	__gptrget
      0033FA FC               [12] 2145 	mov	r4,a
      0033FB 7A 00            [12] 2146 	mov	r2,#0x00
      0033FD 8E 82            [24] 2147 	mov	dpl,r6
      0033FF 8D 83            [24] 2148 	mov	dph,r5
      003401 8F F0            [24] 2149 	mov	b,r7
      003403 12 5B 2B         [24] 2150 	lcall	__gptrget
      003406 7B 00            [12] 2151 	mov	r3,#0x00
      003408 42 02            [12] 2152 	orl	ar2,a
      00340A EB               [12] 2153 	mov	a,r3
      00340B 42 04            [12] 2154 	orl	ar4,a
      00340D 8A 2A            [24] 2155 	mov	_main_sloc4_1_0,r2
      00340F 8C 2B            [24] 2156 	mov	(_main_sloc4_1_0 + 1),r4
                                   2157 ;	main.c:215: byteCount = (uint16_t)(packet_data[3] << 8 | packet_data[2]);  // Byte Count (MSB, LSB)
      003411 74 03            [12] 2158 	mov	a,#0x03
      003413 2E               [12] 2159 	add	a, r6
      003414 F8               [12] 2160 	mov	r0,a
      003415 E4               [12] 2161 	clr	a
      003416 3D               [12] 2162 	addc	a, r5
      003417 F9               [12] 2163 	mov	r1,a
      003418 8F 03            [24] 2164 	mov	ar3,r7
      00341A 88 82            [24] 2165 	mov	dpl,r0
      00341C 89 83            [24] 2166 	mov	dph,r1
      00341E 8B F0            [24] 2167 	mov	b,r3
      003420 12 5B 2B         [24] 2168 	lcall	__gptrget
      003423 F8               [12] 2169 	mov	r0,a
      003424 7B 00            [12] 2170 	mov	r3,#0x00
      003426 88 23            [24] 2171 	mov	(_main_sloc0_1_0 + 1),r0
      003428 8B 22            [24] 2172 	mov	_main_sloc0_1_0,r3
      00342A 74 02            [12] 2173 	mov	a,#0x02
      00342C 2E               [12] 2174 	add	a, r6
      00342D F8               [12] 2175 	mov	r0,a
      00342E E4               [12] 2176 	clr	a
      00342F 3D               [12] 2177 	addc	a, r5
      003430 F9               [12] 2178 	mov	r1,a
      003431 8F 03            [24] 2179 	mov	ar3,r7
      003433 88 82            [24] 2180 	mov	dpl,r0
      003435 89 83            [24] 2181 	mov	dph,r1
      003437 8B F0            [24] 2182 	mov	b,r3
      003439 12 5B 2B         [24] 2183 	lcall	__gptrget
      00343C F8               [12] 2184 	mov	r0,a
      00343D 7B 00            [12] 2185 	mov	r3,#0x00
      00343F E5 23            [12] 2186 	mov	a,(_main_sloc0_1_0 + 1)
      003441 42 03            [12] 2187 	orl	ar3,a
      003443 88 22            [24] 2188 	mov	_main_sloc0_1_0,r0
      003445 8B 23            [24] 2189 	mov	(_main_sloc0_1_0 + 1),r3
                                   2190 ;	main.c:216: status = (uint16_t)(packet_data[5] << 8 | packet_data[4]);     // Status (MSB, LSB)
      003447 74 05            [12] 2191 	mov	a,#0x05
      003449 2E               [12] 2192 	add	a, r6
      00344A F8               [12] 2193 	mov	r0,a
      00344B E4               [12] 2194 	clr	a
      00344C 3D               [12] 2195 	addc	a, r5
      00344D F9               [12] 2196 	mov	r1,a
      00344E 8F 03            [24] 2197 	mov	ar3,r7
      003450 88 82            [24] 2198 	mov	dpl,r0
      003452 89 83            [24] 2199 	mov	dph,r1
      003454 8B F0            [24] 2200 	mov	b,r3
      003456 12 5B 2B         [24] 2201 	lcall	__gptrget
      003459 F8               [12] 2202 	mov	r0,a
      00345A 7B 00            [12] 2203 	mov	r3,#0x00
      00345C 88 25            [24] 2204 	mov	(_main_sloc1_1_0 + 1),r0
      00345E 8B 24            [24] 2205 	mov	_main_sloc1_1_0,r3
      003460 74 04            [12] 2206 	mov	a,#0x04
      003462 2E               [12] 2207 	add	a, r6
      003463 F8               [12] 2208 	mov	r0,a
      003464 E4               [12] 2209 	clr	a
      003465 3D               [12] 2210 	addc	a, r5
      003466 F9               [12] 2211 	mov	r1,a
      003467 8F 03            [24] 2212 	mov	ar3,r7
      003469 88 82            [24] 2213 	mov	dpl,r0
      00346B 89 83            [24] 2214 	mov	dph,r1
      00346D 8B F0            [24] 2215 	mov	b,r3
      00346F 12 5B 2B         [24] 2216 	lcall	__gptrget
      003472 F8               [12] 2217 	mov	r0,a
      003473 7B 00            [12] 2218 	mov	r3,#0x00
      003475 E5 25            [12] 2219 	mov	a,(_main_sloc1_1_0 + 1)
      003477 42 03            [12] 2220 	orl	ar3,a
      003479 88 24            [24] 2221 	mov	_main_sloc1_1_0,r0
      00347B 8B 25            [24] 2222 	mov	(_main_sloc1_1_0 + 1),r3
                                   2223 ;	main.c:219: len = byteCount - 4;
      00347D A9 22            [24] 2224 	mov	r1,_main_sloc0_1_0
      00347F AB 23            [24] 2225 	mov	r3,(_main_sloc0_1_0 + 1)
      003481 E9               [12] 2226 	mov	a,r1
      003482 24 FC            [12] 2227 	add	a,#0xfc
      003484 F9               [12] 2228 	mov	r1,a
      003485 EB               [12] 2229 	mov	a,r3
      003486 34 FF            [12] 2230 	addc	a,#0xff
      003488 FB               [12] 2231 	mov	r3,a
      003489 89 28            [24] 2232 	mov	_main_sloc3_1_0,r1
      00348B 8B 29            [24] 2233 	mov	(_main_sloc3_1_0 + 1),r3
                                   2234 ;	main.c:221: uint8_t *packet_data_actual = (uint8_t *)malloc(len);
      00348D 85 28 26         [24] 2235 	mov	_main_sloc2_1_0,_main_sloc3_1_0
      003490 85 29 27         [24] 2236 	mov	(_main_sloc2_1_0 + 1),(_main_sloc3_1_0 + 1)
      003493 85 26 82         [24] 2237 	mov	dpl, _main_sloc2_1_0
      003496 85 27 83         [24] 2238 	mov	dph, (_main_sloc2_1_0 + 1)
      003499 C0 07            [24] 2239 	push	ar7
      00349B C0 06            [24] 2240 	push	ar6
      00349D C0 05            [24] 2241 	push	ar5
      00349F 12 4E 53         [24] 2242 	lcall	_malloc
      0034A2 A8 82            [24] 2243 	mov	r0, dpl
      0034A4 AB 83            [24] 2244 	mov	r3, dph
      0034A6 D0 05            [24] 2245 	pop	ar5
      0034A8 D0 06            [24] 2246 	pop	ar6
      0034AA D0 07            [24] 2247 	pop	ar7
      0034AC 88 2C            [24] 2248 	mov	_main_sloc5_1_0,r0
      0034AE 8B 2D            [24] 2249 	mov	(_main_sloc5_1_0 + 1),r3
      0034B0 75 2E 00         [24] 2250 	mov	(_main_sloc5_1_0 + 2),#0x00
                                   2251 ;	main.c:222: spi_buffer_read(len, gNextPacketPtr + 6, packet_data_actual);
      0034B3 90 03 7B         [24] 2252 	mov	dptr,#_main_gNextPacketPtr_60001_168
      0034B6 E0               [24] 2253 	movx	a,@dptr
      0034B7 FA               [12] 2254 	mov	r2,a
      0034B8 A3               [24] 2255 	inc	dptr
      0034B9 E0               [24] 2256 	movx	a,@dptr
      0034BA FC               [12] 2257 	mov	r4,a
      0034BB 74 06            [12] 2258 	mov	a,#0x06
      0034BD 2A               [12] 2259 	add	a, r2
      0034BE FA               [12] 2260 	mov	r2,a
      0034BF E4               [12] 2261 	clr	a
      0034C0 3C               [12] 2262 	addc	a, r4
      0034C1 FC               [12] 2263 	mov	r4,a
      0034C2 90 03 95         [24] 2264 	mov	dptr,#_spi_buffer_read_PARM_2
      0034C5 EA               [12] 2265 	mov	a,r2
      0034C6 F0               [24] 2266 	movx	@dptr,a
      0034C7 EC               [12] 2267 	mov	a,r4
      0034C8 A3               [24] 2268 	inc	dptr
      0034C9 F0               [24] 2269 	movx	@dptr,a
      0034CA 90 03 97         [24] 2270 	mov	dptr,#_spi_buffer_read_PARM_3
      0034CD E5 2C            [12] 2271 	mov	a,_main_sloc5_1_0
      0034CF F0               [24] 2272 	movx	@dptr,a
      0034D0 E5 2D            [12] 2273 	mov	a,(_main_sloc5_1_0 + 1)
      0034D2 A3               [24] 2274 	inc	dptr
      0034D3 F0               [24] 2275 	movx	@dptr,a
      0034D4 E5 2E            [12] 2276 	mov	a,(_main_sloc5_1_0 + 2)
      0034D6 A3               [24] 2277 	inc	dptr
      0034D7 F0               [24] 2278 	movx	@dptr,a
      0034D8 85 28 82         [24] 2279 	mov	dpl, _main_sloc3_1_0
      0034DB 85 29 83         [24] 2280 	mov	dph, (_main_sloc3_1_0 + 1)
      0034DE C0 07            [24] 2281 	push	ar7
      0034E0 C0 06            [24] 2282 	push	ar6
      0034E2 C0 05            [24] 2283 	push	ar5
      0034E4 12 3D 2D         [24] 2284 	lcall	_spi_buffer_read
                                   2285 ;	main.c:224: int is_tcp_for_target = 0;
      0034E7 90 03 7D         [24] 2286 	mov	dptr,#_main_is_tcp_for_target_60004_173
      0034EA E4               [12] 2287 	clr	a
      0034EB F0               [24] 2288 	movx	@dptr,a
      0034EC A3               [24] 2289 	inc	dptr
      0034ED F0               [24] 2290 	movx	@dptr,a
                                   2291 ;	main.c:227: if (memcmp(packet_data_actual, device_mac, 6) == 0) {
      0034EE AA 2C            [24] 2292 	mov	r2,_main_sloc5_1_0
      0034F0 AB 2D            [24] 2293 	mov	r3,(_main_sloc5_1_0 + 1)
      0034F2 FC               [12] 2294 	mov	r4,a
      0034F3 90 09 CB         [24] 2295 	mov	dptr,#_memcmp_PARM_2
      0034F6 74 67            [12] 2296 	mov	a,#_main_device_mac_10000_137
      0034F8 F0               [24] 2297 	movx	@dptr,a
      0034F9 74 01            [12] 2298 	mov	a,#(_main_device_mac_10000_137 >> 8)
      0034FB A3               [24] 2299 	inc	dptr
      0034FC F0               [24] 2300 	movx	@dptr,a
      0034FD E4               [12] 2301 	clr	a
      0034FE A3               [24] 2302 	inc	dptr
      0034FF F0               [24] 2303 	movx	@dptr,a
      003500 90 09 CE         [24] 2304 	mov	dptr,#_memcmp_PARM_3
      003503 74 06            [12] 2305 	mov	a,#0x06
      003505 F0               [24] 2306 	movx	@dptr,a
      003506 E4               [12] 2307 	clr	a
      003507 A3               [24] 2308 	inc	dptr
      003508 F0               [24] 2309 	movx	@dptr,a
      003509 8A 82            [24] 2310 	mov	dpl, r2
      00350B 8B 83            [24] 2311 	mov	dph, r3
      00350D 8C F0            [24] 2312 	mov	b, r4
      00350F 12 4F DC         [24] 2313 	lcall	_memcmp
      003512 E5 82            [12] 2314 	mov	a, dpl
      003514 85 83 F0         [24] 2315 	mov	b, dph
      003517 D0 05            [24] 2316 	pop	ar5
      003519 D0 06            [24] 2317 	pop	ar6
      00351B D0 07            [24] 2318 	pop	ar7
      00351D 45 F0            [12] 2319 	orl	a,b
      00351F 60 03            [24] 2320 	jz	00260$
      003521 02 35 B5         [24] 2321 	ljmp	00121$
      003524                       2322 00260$:
                                   2323 ;	main.c:228: printf("MAC matched\n................\r");
      003524 C0 07            [24] 2324 	push	ar7
      003526 C0 06            [24] 2325 	push	ar6
      003528 C0 05            [24] 2326 	push	ar5
      00352A 74 33            [12] 2327 	mov	a,#___str_38
      00352C C0 E0            [24] 2328 	push	acc
      00352E 74 61            [12] 2329 	mov	a,#(___str_38 >> 8)
      003530 C0 E0            [24] 2330 	push	acc
      003532 74 80            [12] 2331 	mov	a,#0x80
      003534 C0 E0            [24] 2332 	push	acc
      003536 12 51 09         [24] 2333 	lcall	_printf
      003539 15 81            [12] 2334 	dec	sp
      00353B 15 81            [12] 2335 	dec	sp
      00353D 15 81            [12] 2336 	dec	sp
      00353F D0 05            [24] 2337 	pop	ar5
      003541 D0 06            [24] 2338 	pop	ar6
      003543 D0 07            [24] 2339 	pop	ar7
                                   2340 ;	main.c:230: if (packet_data_actual[12] == 0x08 && packet_data_actual[13] == 0x00) {
      003545 74 0C            [12] 2341 	mov	a,#0x0c
      003547 25 2C            [12] 2342 	add	a, _main_sloc5_1_0
      003549 FA               [12] 2343 	mov	r2,a
      00354A E4               [12] 2344 	clr	a
      00354B 35 2D            [12] 2345 	addc	a, (_main_sloc5_1_0 + 1)
      00354D FB               [12] 2346 	mov	r3,a
      00354E AC 2E            [24] 2347 	mov	r4,(_main_sloc5_1_0 + 2)
      003550 8A 82            [24] 2348 	mov	dpl,r2
      003552 8B 83            [24] 2349 	mov	dph,r3
      003554 8C F0            [24] 2350 	mov	b,r4
      003556 12 5B 2B         [24] 2351 	lcall	__gptrget
      003559 FA               [12] 2352 	mov	r2,a
      00355A BA 08 58         [24] 2353 	cjne	r2,#0x08,00121$
      00355D 74 0D            [12] 2354 	mov	a,#0x0d
      00355F 25 2C            [12] 2355 	add	a, _main_sloc5_1_0
      003561 FA               [12] 2356 	mov	r2,a
      003562 E4               [12] 2357 	clr	a
      003563 35 2D            [12] 2358 	addc	a, (_main_sloc5_1_0 + 1)
      003565 FB               [12] 2359 	mov	r3,a
      003566 AC 2E            [24] 2360 	mov	r4,(_main_sloc5_1_0 + 2)
      003568 8A 82            [24] 2361 	mov	dpl,r2
      00356A 8B 83            [24] 2362 	mov	dph,r3
      00356C 8C F0            [24] 2363 	mov	b,r4
      00356E 12 5B 2B         [24] 2364 	lcall	__gptrget
      003571 70 42            [24] 2365 	jnz	00121$
                                   2366 ;	main.c:231: printf("Valid ETHER packet.....................\n\r");
      003573 C0 07            [24] 2367 	push	ar7
      003575 C0 06            [24] 2368 	push	ar6
      003577 C0 05            [24] 2369 	push	ar5
      003579 74 51            [12] 2370 	mov	a,#___str_39
      00357B C0 E0            [24] 2371 	push	acc
      00357D 74 61            [12] 2372 	mov	a,#(___str_39 >> 8)
      00357F C0 E0            [24] 2373 	push	acc
      003581 74 80            [12] 2374 	mov	a,#0x80
      003583 C0 E0            [24] 2375 	push	acc
      003585 12 51 09         [24] 2376 	lcall	_printf
      003588 15 81            [12] 2377 	dec	sp
      00358A 15 81            [12] 2378 	dec	sp
      00358C 15 81            [12] 2379 	dec	sp
      00358E D0 05            [24] 2380 	pop	ar5
      003590 D0 06            [24] 2381 	pop	ar6
      003592 D0 07            [24] 2382 	pop	ar7
                                   2383 ;	main.c:233: if (packet_data_actual[23] == 0x06) {
      003594 74 17            [12] 2384 	mov	a,#0x17
      003596 25 2C            [12] 2385 	add	a, _main_sloc5_1_0
      003598 FA               [12] 2386 	mov	r2,a
      003599 E4               [12] 2387 	clr	a
      00359A 35 2D            [12] 2388 	addc	a, (_main_sloc5_1_0 + 1)
      00359C FB               [12] 2389 	mov	r3,a
      00359D AC 2E            [24] 2390 	mov	r4,(_main_sloc5_1_0 + 2)
      00359F 8A 82            [24] 2391 	mov	dpl,r2
      0035A1 8B 83            [24] 2392 	mov	dph,r3
      0035A3 8C F0            [24] 2393 	mov	b,r4
      0035A5 12 5B 2B         [24] 2394 	lcall	__gptrget
      0035A8 FA               [12] 2395 	mov	r2,a
      0035A9 BA 06 09         [24] 2396 	cjne	r2,#0x06,00121$
                                   2397 ;	main.c:234: is_tcp_for_target = 1;
      0035AC 90 03 7D         [24] 2398 	mov	dptr,#_main_is_tcp_for_target_60004_173
      0035AF 74 01            [12] 2399 	mov	a,#0x01
      0035B1 F0               [24] 2400 	movx	@dptr,a
      0035B2 E4               [12] 2401 	clr	a
      0035B3 A3               [24] 2402 	inc	dptr
      0035B4 F0               [24] 2403 	movx	@dptr,a
      0035B5                       2404 00121$:
                                   2405 ;	main.c:238: if (is_tcp_for_target)
      0035B5 90 03 7D         [24] 2406 	mov	dptr,#_main_is_tcp_for_target_60004_173
      0035B8 E0               [24] 2407 	movx	a,@dptr
      0035B9 F5 F0            [12] 2408 	mov	b,a
      0035BB A3               [24] 2409 	inc	dptr
      0035BC E0               [24] 2410 	movx	a,@dptr
      0035BD 45 F0            [12] 2411 	orl	a,b
      0035BF 70 03            [24] 2412 	jnz	00266$
      0035C1 02 36 E5         [24] 2413 	ljmp	00126$
      0035C4                       2414 00266$:
                                   2415 ;	main.c:243: uint8_t *response = process_tcp_packet(packet_data_actual, len+4, &response_size);
      0035C4 74 04            [12] 2416 	mov	a,#0x04
      0035C6 25 26            [12] 2417 	add	a, _main_sloc2_1_0
      0035C8 FB               [12] 2418 	mov	r3,a
      0035C9 E4               [12] 2419 	clr	a
      0035CA 35 27            [12] 2420 	addc	a, (_main_sloc2_1_0 + 1)
      0035CC FC               [12] 2421 	mov	r4,a
      0035CD 90 03 B2         [24] 2422 	mov	dptr,#_process_tcp_packet_PARM_2
      0035D0 EB               [12] 2423 	mov	a,r3
      0035D1 F0               [24] 2424 	movx	@dptr,a
      0035D2 EC               [12] 2425 	mov	a,r4
      0035D3 A3               [24] 2426 	inc	dptr
      0035D4 F0               [24] 2427 	movx	@dptr,a
      0035D5 90 03 B4         [24] 2428 	mov	dptr,#_process_tcp_packet_PARM_3
      0035D8 74 7F            [12] 2429 	mov	a,#_main_response_size_70004_177
      0035DA F0               [24] 2430 	movx	@dptr,a
      0035DB 74 03            [12] 2431 	mov	a,#(_main_response_size_70004_177 >> 8)
      0035DD A3               [24] 2432 	inc	dptr
      0035DE F0               [24] 2433 	movx	@dptr,a
      0035DF E4               [12] 2434 	clr	a
      0035E0 A3               [24] 2435 	inc	dptr
      0035E1 F0               [24] 2436 	movx	@dptr,a
      0035E2 85 2C 82         [24] 2437 	mov	dpl, _main_sloc5_1_0
      0035E5 85 2D 83         [24] 2438 	mov	dph, (_main_sloc5_1_0 + 1)
      0035E8 85 2E F0         [24] 2439 	mov	b, (_main_sloc5_1_0 + 2)
      0035EB C0 07            [24] 2440 	push	ar7
      0035ED C0 06            [24] 2441 	push	ar6
      0035EF C0 05            [24] 2442 	push	ar5
      0035F1 12 42 35         [24] 2443 	lcall	_process_tcp_packet
      0035F4 AA 82            [24] 2444 	mov	r2, dpl
      0035F6 AB 83            [24] 2445 	mov	r3, dph
      0035F8 AC F0            [24] 2446 	mov	r4, b
      0035FA D0 05            [24] 2447 	pop	ar5
      0035FC D0 06            [24] 2448 	pop	ar6
      0035FE D0 07            [24] 2449 	pop	ar7
                                   2450 ;	main.c:246: if (response != NULL) {
      003600 EA               [12] 2451 	mov	a,r2
      003601 4B               [12] 2452 	orl	a,r3
      003602 70 03            [24] 2453 	jnz	00267$
      003604 02 36 A1         [24] 2454 	ljmp	00123$
      003607                       2455 00267$:
                                   2456 ;	main.c:247: printf("\nProcessed response data:\n");
      003607 C0 07            [24] 2457 	push	ar7
      003609 C0 06            [24] 2458 	push	ar6
      00360B C0 05            [24] 2459 	push	ar5
      00360D C0 04            [24] 2460 	push	ar4
      00360F C0 03            [24] 2461 	push	ar3
      003611 C0 02            [24] 2462 	push	ar2
      003613 74 7B            [12] 2463 	mov	a,#___str_40
      003615 C0 E0            [24] 2464 	push	acc
      003617 74 61            [12] 2465 	mov	a,#(___str_40 >> 8)
      003619 C0 E0            [24] 2466 	push	acc
      00361B 74 80            [12] 2467 	mov	a,#0x80
      00361D C0 E0            [24] 2468 	push	acc
      00361F 12 51 09         [24] 2469 	lcall	_printf
      003622 15 81            [12] 2470 	dec	sp
      003624 15 81            [12] 2471 	dec	sp
      003626 15 81            [12] 2472 	dec	sp
      003628 D0 02            [24] 2473 	pop	ar2
      00362A D0 03            [24] 2474 	pop	ar3
      00362C D0 04            [24] 2475 	pop	ar4
      00362E D0 05            [24] 2476 	pop	ar5
      003630 D0 06            [24] 2477 	pop	ar6
      003632 D0 07            [24] 2478 	pop	ar7
                                   2479 ;	main.c:248: print_hexdump(response, response_size);
      003634 90 03 7F         [24] 2480 	mov	dptr,#_main_response_size_70004_177
      003637 E0               [24] 2481 	movx	a,@dptr
      003638 F8               [12] 2482 	mov	r0,a
      003639 A3               [24] 2483 	inc	dptr
      00363A E0               [24] 2484 	movx	a,@dptr
      00363B F9               [12] 2485 	mov	r1,a
      00363C 90 09 97         [24] 2486 	mov	dptr,#_print_hexdump_PARM_2
      00363F E8               [12] 2487 	mov	a,r0
      003640 F0               [24] 2488 	movx	@dptr,a
      003641 E9               [12] 2489 	mov	a,r1
      003642 A3               [24] 2490 	inc	dptr
      003643 F0               [24] 2491 	movx	@dptr,a
      003644 8A 82            [24] 2492 	mov	dpl, r2
      003646 8B 83            [24] 2493 	mov	dph, r3
      003648 8C F0            [24] 2494 	mov	b, r4
      00364A C0 07            [24] 2495 	push	ar7
      00364C C0 06            [24] 2496 	push	ar6
      00364E C0 05            [24] 2497 	push	ar5
      003650 C0 04            [24] 2498 	push	ar4
      003652 C0 03            [24] 2499 	push	ar3
      003654 C0 02            [24] 2500 	push	ar2
      003656 12 45 89         [24] 2501 	lcall	_print_hexdump
      003659 D0 02            [24] 2502 	pop	ar2
      00365B D0 03            [24] 2503 	pop	ar3
      00365D D0 04            [24] 2504 	pop	ar4
      00365F D0 05            [24] 2505 	pop	ar5
      003661 D0 06            [24] 2506 	pop	ar6
      003663 D0 07            [24] 2507 	pop	ar7
                                   2508 ;	main.c:249: transmit_tcp_packet(response, response_size);
      003665 90 03 7F         [24] 2509 	mov	dptr,#_main_response_size_70004_177
      003668 E0               [24] 2510 	movx	a,@dptr
      003669 F8               [12] 2511 	mov	r0,a
      00366A A3               [24] 2512 	inc	dptr
      00366B E0               [24] 2513 	movx	a,@dptr
      00366C F9               [12] 2514 	mov	r1,a
      00366D 90 09 A2         [24] 2515 	mov	dptr,#_transmit_tcp_packet_PARM_2
      003670 E8               [12] 2516 	mov	a,r0
      003671 F0               [24] 2517 	movx	@dptr,a
      003672 E9               [12] 2518 	mov	a,r1
      003673 A3               [24] 2519 	inc	dptr
      003674 F0               [24] 2520 	movx	@dptr,a
      003675 8A 82            [24] 2521 	mov	dpl, r2
      003677 8B 83            [24] 2522 	mov	dph, r3
      003679 8C F0            [24] 2523 	mov	b, r4
      00367B C0 07            [24] 2524 	push	ar7
      00367D C0 06            [24] 2525 	push	ar6
      00367F C0 05            [24] 2526 	push	ar5
      003681 C0 04            [24] 2527 	push	ar4
      003683 C0 03            [24] 2528 	push	ar3
      003685 C0 02            [24] 2529 	push	ar2
      003687 12 49 79         [24] 2530 	lcall	_transmit_tcp_packet
      00368A D0 02            [24] 2531 	pop	ar2
      00368C D0 03            [24] 2532 	pop	ar3
      00368E D0 04            [24] 2533 	pop	ar4
                                   2534 ;	main.c:250: free(response); // Free response memory if allocated dynamically
      003690 8A 82            [24] 2535 	mov	dpl, r2
      003692 8B 83            [24] 2536 	mov	dph, r3
      003694 8C F0            [24] 2537 	mov	b, r4
      003696 12 4B 00         [24] 2538 	lcall	_free
      003699 D0 05            [24] 2539 	pop	ar5
      00369B D0 06            [24] 2540 	pop	ar6
      00369D D0 07            [24] 2541 	pop	ar7
      00369F 80 21            [24] 2542 	sjmp	00124$
      0036A1                       2543 00123$:
                                   2544 ;	main.c:252: printf("\nNo response generated by TCP packet processing.\n");
      0036A1 C0 07            [24] 2545 	push	ar7
      0036A3 C0 06            [24] 2546 	push	ar6
      0036A5 C0 05            [24] 2547 	push	ar5
      0036A7 74 96            [12] 2548 	mov	a,#___str_41
      0036A9 C0 E0            [24] 2549 	push	acc
      0036AB 74 61            [12] 2550 	mov	a,#(___str_41 >> 8)
      0036AD C0 E0            [24] 2551 	push	acc
      0036AF 74 80            [12] 2552 	mov	a,#0x80
      0036B1 C0 E0            [24] 2553 	push	acc
      0036B3 12 51 09         [24] 2554 	lcall	_printf
      0036B6 15 81            [12] 2555 	dec	sp
      0036B8 15 81            [12] 2556 	dec	sp
      0036BA 15 81            [12] 2557 	dec	sp
      0036BC D0 05            [24] 2558 	pop	ar5
      0036BE D0 06            [24] 2559 	pop	ar6
      0036C0 D0 07            [24] 2560 	pop	ar7
      0036C2                       2561 00124$:
                                   2562 ;	main.c:255: printf("YESSSS\n");
      0036C2 C0 07            [24] 2563 	push	ar7
      0036C4 C0 06            [24] 2564 	push	ar6
      0036C6 C0 05            [24] 2565 	push	ar5
      0036C8 74 C8            [12] 2566 	mov	a,#___str_42
      0036CA C0 E0            [24] 2567 	push	acc
      0036CC 74 61            [12] 2568 	mov	a,#(___str_42 >> 8)
      0036CE C0 E0            [24] 2569 	push	acc
      0036D0 74 80            [12] 2570 	mov	a,#0x80
      0036D2 C0 E0            [24] 2571 	push	acc
      0036D4 12 51 09         [24] 2572 	lcall	_printf
      0036D7 15 81            [12] 2573 	dec	sp
      0036D9 15 81            [12] 2574 	dec	sp
      0036DB 15 81            [12] 2575 	dec	sp
      0036DD D0 05            [24] 2576 	pop	ar5
      0036DF D0 06            [24] 2577 	pop	ar6
      0036E1 D0 07            [24] 2578 	pop	ar7
      0036E3 80 21            [24] 2579 	sjmp	00127$
      0036E5                       2580 00126$:
                                   2581 ;	main.c:259: printf("NOOOO\n");
      0036E5 C0 07            [24] 2582 	push	ar7
      0036E7 C0 06            [24] 2583 	push	ar6
      0036E9 C0 05            [24] 2584 	push	ar5
      0036EB 74 D0            [12] 2585 	mov	a,#___str_43
      0036ED C0 E0            [24] 2586 	push	acc
      0036EF 74 61            [12] 2587 	mov	a,#(___str_43 >> 8)
      0036F1 C0 E0            [24] 2588 	push	acc
      0036F3 74 80            [12] 2589 	mov	a,#0x80
      0036F5 C0 E0            [24] 2590 	push	acc
      0036F7 12 51 09         [24] 2591 	lcall	_printf
      0036FA 15 81            [12] 2592 	dec	sp
      0036FC 15 81            [12] 2593 	dec	sp
      0036FE 15 81            [12] 2594 	dec	sp
      003700 D0 05            [24] 2595 	pop	ar5
      003702 D0 06            [24] 2596 	pop	ar6
      003704 D0 07            [24] 2597 	pop	ar7
      003706                       2598 00127$:
                                   2599 ;	main.c:263: gNextPacketPtr = nextPacket;
      003706 90 03 7B         [24] 2600 	mov	dptr,#_main_gNextPacketPtr_60001_168
      003709 E5 2A            [12] 2601 	mov	a,_main_sloc4_1_0
      00370B F0               [24] 2602 	movx	@dptr,a
      00370C E5 2B            [12] 2603 	mov	a,(_main_sloc4_1_0 + 1)
      00370E A3               [24] 2604 	inc	dptr
      00370F F0               [24] 2605 	movx	@dptr,a
                                   2606 ;	main.c:268: printf("nextPacket: 0x%04X\n", nextPacket);
      003710 C0 07            [24] 2607 	push	ar7
      003712 C0 06            [24] 2608 	push	ar6
      003714 C0 05            [24] 2609 	push	ar5
      003716 C0 2A            [24] 2610 	push	_main_sloc4_1_0
      003718 C0 2B            [24] 2611 	push	(_main_sloc4_1_0 + 1)
      00371A 74 D7            [12] 2612 	mov	a,#___str_44
      00371C C0 E0            [24] 2613 	push	acc
      00371E 74 61            [12] 2614 	mov	a,#(___str_44 >> 8)
      003720 C0 E0            [24] 2615 	push	acc
      003722 74 80            [12] 2616 	mov	a,#0x80
      003724 C0 E0            [24] 2617 	push	acc
      003726 12 51 09         [24] 2618 	lcall	_printf
      003729 E5 81            [12] 2619 	mov	a,sp
      00372B 24 FB            [12] 2620 	add	a,#0xfb
      00372D F5 81            [12] 2621 	mov	sp,a
                                   2622 ;	main.c:269: printf("byteCount: %d\n", byteCount);
      00372F C0 22            [24] 2623 	push	_main_sloc0_1_0
      003731 C0 23            [24] 2624 	push	(_main_sloc0_1_0 + 1)
      003733 74 EB            [12] 2625 	mov	a,#___str_45
      003735 C0 E0            [24] 2626 	push	acc
      003737 74 61            [12] 2627 	mov	a,#(___str_45 >> 8)
      003739 C0 E0            [24] 2628 	push	acc
      00373B 74 80            [12] 2629 	mov	a,#0x80
      00373D C0 E0            [24] 2630 	push	acc
      00373F 12 51 09         [24] 2631 	lcall	_printf
      003742 E5 81            [12] 2632 	mov	a,sp
      003744 24 FB            [12] 2633 	add	a,#0xfb
      003746 F5 81            [12] 2634 	mov	sp,a
                                   2635 ;	main.c:270: printf("status: 0x%02X\n", status);
      003748 C0 24            [24] 2636 	push	_main_sloc1_1_0
      00374A C0 25            [24] 2637 	push	(_main_sloc1_1_0 + 1)
      00374C 74 FA            [12] 2638 	mov	a,#___str_46
      00374E C0 E0            [24] 2639 	push	acc
      003750 74 61            [12] 2640 	mov	a,#(___str_46 >> 8)
      003752 C0 E0            [24] 2641 	push	acc
      003754 74 80            [12] 2642 	mov	a,#0x80
      003756 C0 E0            [24] 2643 	push	acc
      003758 12 51 09         [24] 2644 	lcall	_printf
      00375B E5 81            [12] 2645 	mov	a,sp
      00375D 24 FB            [12] 2646 	add	a,#0xfb
      00375F F5 81            [12] 2647 	mov	sp,a
      003761 D0 05            [24] 2648 	pop	ar5
      003763 D0 06            [24] 2649 	pop	ar6
      003765 D0 07            [24] 2650 	pop	ar7
                                   2651 ;	main.c:273: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
      003767 90 03 8D         [24] 2652 	mov	dptr,#_mac_spi_read_PARM_2
      00376A E4               [12] 2653 	clr	a
      00376B F0               [24] 2654 	movx	@dptr,a
      00376C 75 82 1E         [24] 2655 	mov	dpl, #0x1e
      00376F C0 07            [24] 2656 	push	ar7
      003771 C0 06            [24] 2657 	push	ar6
      003773 C0 05            [24] 2658 	push	ar5
      003775 12 3A F3         [24] 2659 	lcall	_mac_spi_read
      003778 E5 82            [12] 2660 	mov	a, dpl
      00377A D0 05            [24] 2661 	pop	ar5
      00377C D0 06            [24] 2662 	pop	ar6
      00377E D0 07            [24] 2663 	pop	ar7
                                   2664 ;	main.c:274: spi_control_write(2, 0x1E, (read_econ2 | (1 << 6))); //mac enable for reception
      003780 44 40            [12] 2665 	orl	a,#0x40
      003782 FC               [12] 2666 	mov	r4,a
      003783 90 03 84         [24] 2667 	mov	dptr,#_spi_control_write_PARM_2
      003786 74 1E            [12] 2668 	mov	a,#0x1e
      003788 F0               [24] 2669 	movx	@dptr,a
      003789 90 03 85         [24] 2670 	mov	dptr,#_spi_control_write_PARM_3
      00378C EC               [12] 2671 	mov	a,r4
      00378D F0               [24] 2672 	movx	@dptr,a
      00378E 75 82 02         [24] 2673 	mov	dpl, #0x02
      003791 C0 07            [24] 2674 	push	ar7
      003793 C0 06            [24] 2675 	push	ar6
      003795 C0 05            [24] 2676 	push	ar5
      003797 12 39 7D         [24] 2677 	lcall	_spi_control_write
      00379A D0 05            [24] 2678 	pop	ar5
      00379C D0 06            [24] 2679 	pop	ar6
      00379E D0 07            [24] 2680 	pop	ar7
                                   2681 ;	main.c:275: free(packet_data);
      0037A0 7F 00            [12] 2682 	mov	r7,#0x00
      0037A2 8E 82            [24] 2683 	mov	dpl, r6
      0037A4 8D 83            [24] 2684 	mov	dph, r5
      0037A6 8F F0            [24] 2685 	mov	b, r7
      0037A8 12 4B 00         [24] 2686 	lcall	_free
      0037AB 02 33 80         [24] 2687 	ljmp	00131$
                                   2688 ;	main.c:286: case 'C':{
      0037AE                       2689 00134$:
                                   2690 ;	main.c:287: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
      0037AE 74 0A            [12] 2691 	mov	a,#___str_47
      0037B0 C0 E0            [24] 2692 	push	acc
      0037B2 74 62            [12] 2693 	mov	a,#(___str_47 >> 8)
      0037B4 C0 E0            [24] 2694 	push	acc
      0037B6 74 80            [12] 2695 	mov	a,#0x80
      0037B8 C0 E0            [24] 2696 	push	acc
      0037BA 12 51 09         [24] 2697 	lcall	_printf
      0037BD 15 81            [12] 2698 	dec	sp
      0037BF 15 81            [12] 2699 	dec	sp
      0037C1 15 81            [12] 2700 	dec	sp
                                   2701 ;	main.c:288: ENC_RESET = 0;
                                   2702 ;	assignBit
      0037C3 C2 90            [12] 2703 	clr	_P1_0
                                   2704 ;	main.c:289: for(int i = 0; i < 6000; i++);
      0037C5 7E 00            [12] 2705 	mov	r6,#0x00
      0037C7 7F 00            [12] 2706 	mov	r7,#0x00
      0037C9                       2707 00148$:
      0037C9 C3               [12] 2708 	clr	c
      0037CA EE               [12] 2709 	mov	a,r6
      0037CB 94 70            [12] 2710 	subb	a,#0x70
      0037CD EF               [12] 2711 	mov	a,r7
      0037CE 64 80            [12] 2712 	xrl	a,#0x80
      0037D0 94 97            [12] 2713 	subb	a,#0x97
      0037D2 50 07            [24] 2714 	jnc	00135$
      0037D4 0E               [12] 2715 	inc	r6
      0037D5 BE 00 F1         [24] 2716 	cjne	r6,#0x00,00148$
      0037D8 0F               [12] 2717 	inc	r7
      0037D9 80 EE            [24] 2718 	sjmp	00148$
      0037DB                       2719 00135$:
                                   2720 ;	main.c:290: ENC_RESET = 1;
                                   2721 ;	assignBit
      0037DB D2 90            [12] 2722 	setb	_P1_0
                                   2723 ;	main.c:291: break;
      0037DD 02 2D AD         [24] 2724 	ljmp	00142$
                                   2725 ;	main.c:293: case 'D':
      0037E0                       2726 00136$:
                                   2727 ;	main.c:297: process_packet_from_buffer(0x0846);
      0037E0 90 08 46         [24] 2728 	mov	dptr,#0x0846
      0037E3 12 46 94         [24] 2729 	lcall	_process_packet_from_buffer
                                   2730 ;	main.c:298: break;
      0037E6 02 2D AD         [24] 2731 	ljmp	00142$
                                   2732 ;	main.c:300: case 'E':{
      0037E9                       2733 00137$:
                                   2734 ;	main.c:301: IT0 = 1;  // Edge-triggered mode for INT0
                                   2735 ;	assignBit
      0037E9 D2 88            [12] 2736 	setb	_IT0
                                   2737 ;	main.c:302: EX0 = 1;  // Enable INT0
                                   2738 ;	assignBit
      0037EB D2 A8            [12] 2739 	setb	_EX0
                                   2740 ;	main.c:303: EA = 1;   // Enable global interrupts
                                   2741 ;	assignBit
      0037ED D2 AF            [12] 2742 	setb	_EA
                                   2743 ;	main.c:304: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
      0037EF 90 03 8D         [24] 2744 	mov	dptr,#_mac_spi_read_PARM_2
      0037F2 E4               [12] 2745 	clr	a
      0037F3 F0               [24] 2746 	movx	@dptr,a
      0037F4 75 82 1E         [24] 2747 	mov	dpl, #0x1e
      0037F7 12 3A F3         [24] 2748 	lcall	_mac_spi_read
                                   2749 ;	main.c:306: printf("Enabling TXPKTIE\n\r");
      0037FA 74 3D            [12] 2750 	mov	a,#___str_48
      0037FC C0 E0            [24] 2751 	push	acc
      0037FE 74 62            [12] 2752 	mov	a,#(___str_48 >> 8)
      003800 C0 E0            [24] 2753 	push	acc
      003802 74 80            [12] 2754 	mov	a,#0x80
      003804 C0 E0            [24] 2755 	push	acc
      003806 12 51 09         [24] 2756 	lcall	_printf
      003809 15 81            [12] 2757 	dec	sp
      00380B 15 81            [12] 2758 	dec	sp
      00380D 15 81            [12] 2759 	dec	sp
                                   2760 ;	main.c:307: spi_control_write(0, 0x1B, 0xC0);
      00380F 90 03 84         [24] 2761 	mov	dptr,#_spi_control_write_PARM_2
      003812 74 1B            [12] 2762 	mov	a,#0x1b
      003814 F0               [24] 2763 	movx	@dptr,a
      003815 90 03 85         [24] 2764 	mov	dptr,#_spi_control_write_PARM_3
      003818 74 C0            [12] 2765 	mov	a,#0xc0
      00381A F0               [24] 2766 	movx	@dptr,a
      00381B 75 82 00         [24] 2767 	mov	dpl, #0x00
      00381E 12 39 7D         [24] 2768 	lcall	_spi_control_write
                                   2769 ;	main.c:308: break;
      003821 02 2D AD         [24] 2770 	ljmp	00142$
                                   2771 ;	main.c:310: case 'F':{
      003824                       2772 00138$:
                                   2773 ;	main.c:311: printf("Disabling TXPKTIE\n\r");
      003824 74 50            [12] 2774 	mov	a,#___str_49
      003826 C0 E0            [24] 2775 	push	acc
      003828 74 62            [12] 2776 	mov	a,#(___str_49 >> 8)
      00382A C0 E0            [24] 2777 	push	acc
      00382C 74 80            [12] 2778 	mov	a,#0x80
      00382E C0 E0            [24] 2779 	push	acc
      003830 12 51 09         [24] 2780 	lcall	_printf
      003833 15 81            [12] 2781 	dec	sp
      003835 15 81            [12] 2782 	dec	sp
      003837 15 81            [12] 2783 	dec	sp
                                   2784 ;	main.c:312: spi_control_write(0, 0x1B, 0);
      003839 90 03 84         [24] 2785 	mov	dptr,#_spi_control_write_PARM_2
      00383C 74 1B            [12] 2786 	mov	a,#0x1b
      00383E F0               [24] 2787 	movx	@dptr,a
      00383F 90 03 85         [24] 2788 	mov	dptr,#_spi_control_write_PARM_3
      003842 E4               [12] 2789 	clr	a
      003843 F0               [24] 2790 	movx	@dptr,a
      003844 75 82 00         [24] 2791 	mov	dpl, #0x00
      003847 12 39 7D         [24] 2792 	lcall	_spi_control_write
                                   2793 ;	main.c:314: default: {
      00384A                       2794 00139$:
                                   2795 ;	main.c:315: printf("Invalid option. Please select a valid action.\n\r");
      00384A 74 64            [12] 2796 	mov	a,#___str_50
      00384C C0 E0            [24] 2797 	push	acc
      00384E 74 62            [12] 2798 	mov	a,#(___str_50 >> 8)
      003850 C0 E0            [24] 2799 	push	acc
      003852 74 80            [12] 2800 	mov	a,#0x80
      003854 C0 E0            [24] 2801 	push	acc
      003856 12 51 09         [24] 2802 	lcall	_printf
      003859 15 81            [12] 2803 	dec	sp
      00385B 15 81            [12] 2804 	dec	sp
      00385D 15 81            [12] 2805 	dec	sp
                                   2806 ;	main.c:318: }
                                   2807 ;	main.c:320: }
      00385F 02 2D AD         [24] 2808 	ljmp	00142$
                                   2809 	.area CSEG    (CODE)
                                   2810 	.area CONST   (CODE)
                                   2811 	.area CONST   (CODE)
      005D0A                       2812 ___str_0:
      005D0A 0A                    2813 	.db 0x0a
      005D0B 0D                    2814 	.db 0x0d
      005D0C 00                    2815 	.db 0x00
                                   2816 	.area CSEG    (CODE)
                                   2817 	.area CONST   (CODE)
      005D0D                       2818 ___str_1:
      005D0D 53 50 49 20 4F 70 65  2819 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      005D23 0A                    2820 	.db 0x0a
      005D24 0D                    2821 	.db 0x0d
      005D25 00                    2822 	.db 0x00
                                   2823 	.area CSEG    (CODE)
                                   2824 	.area CONST   (CODE)
      005D26                       2825 ___str_2:
      005D26 0A                    2826 	.db 0x0a
      005D27 0D                    2827 	.db 0x0d
      005D28 43 68 6F 6F 73 65 20  2828 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      005D3A 0A                    2829 	.db 0x0a
      005D3B 0D                    2830 	.db 0x0d
      005D3C 00                    2831 	.db 0x00
                                   2832 	.area CSEG    (CODE)
                                   2833 	.area CONST   (CODE)
      005D3D                       2834 ___str_3:
      005D3D 31 20 2D 2D 3E 20 43  2835 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      005D50 0A                    2836 	.db 0x0a
      005D51 0D                    2837 	.db 0x0d
      005D52 00                    2838 	.db 0x00
                                   2839 	.area CSEG    (CODE)
                                   2840 	.area CONST   (CODE)
      005D53                       2841 ___str_4:
      005D53 32 20 2D 2D 3E 20 42  2842 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      005D65 0A                    2843 	.db 0x0a
      005D66 0D                    2844 	.db 0x0d
      005D67 00                    2845 	.db 0x00
                                   2846 	.area CSEG    (CODE)
                                   2847 	.area CONST   (CODE)
      005D68                       2848 ___str_5:
      005D68 33 20 2D 2D 3E 20 42  2849 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      005D79 0A                    2850 	.db 0x0a
      005D7A 0D                    2851 	.db 0x0d
      005D7B 00                    2852 	.db 0x00
                                   2853 	.area CSEG    (CODE)
                                   2854 	.area CONST   (CODE)
      005D7C                       2855 ___str_6:
      005D7C 34 20 2D 2D 3E 20 4D  2856 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      005D93 0A                    2857 	.db 0x0a
      005D94 0D                    2858 	.db 0x0d
      005D95 00                    2859 	.db 0x00
                                   2860 	.area CSEG    (CODE)
                                   2861 	.area CONST   (CODE)
      005D96                       2862 ___str_7:
      005D96 35 20 2D 2D 3E 20 50  2863 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      005DA9 0A                    2864 	.db 0x0a
      005DAA 0D                    2865 	.db 0x0d
      005DAB 00                    2866 	.db 0x00
                                   2867 	.area CSEG    (CODE)
                                   2868 	.area CONST   (CODE)
      005DAC                       2869 ___str_8:
      005DAC 36 20 2D 2D 3E 20 50  2870 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      005DBE 0A                    2871 	.db 0x0a
      005DBF 0D                    2872 	.db 0x0d
      005DC0 00                    2873 	.db 0x00
                                   2874 	.area CSEG    (CODE)
                                   2875 	.area CONST   (CODE)
      005DC1                       2876 ___str_9:
      005DC1 37 20 2D 2D 3E 20 45  2877 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      005DD0 0A                    2878 	.db 0x0a
      005DD1 0D                    2879 	.db 0x0d
      005DD2 00                    2880 	.db 0x00
                                   2881 	.area CSEG    (CODE)
                                   2882 	.area CONST   (CODE)
      005DD3                       2883 ___str_10:
      005DD3 38 20 2D 2D 3E 20 52  2884 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      005DEA 0A                    2885 	.db 0x0a
      005DEB 0D                    2886 	.db 0x0d
      005DEC 00                    2887 	.db 0x00
                                   2888 	.area CSEG    (CODE)
                                   2889 	.area CONST   (CODE)
      005DED                       2890 ___str_11:
      005DED 39 20 2D 2D 3E 20 44  2891 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      005DFF 0A                    2892 	.db 0x0a
      005E00 0D                    2893 	.db 0x0d
      005E01 00                    2894 	.db 0x00
                                   2895 	.area CSEG    (CODE)
                                   2896 	.area CONST   (CODE)
      005E02                       2897 ___str_12:
      005E02 41 20 2D 2D 3E 20 53  2898 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      005E18 0A                    2899 	.db 0x0a
      005E19 0D                    2900 	.db 0x0d
      005E1A 00                    2901 	.db 0x00
                                   2902 	.area CSEG    (CODE)
                                   2903 	.area CONST   (CODE)
      005E1B                       2904 ___str_13:
      005E1B 42 20 2D 2D 3E 20 49  2905 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      005E30 0A                    2906 	.db 0x0a
      005E31 0D                    2907 	.db 0x0d
      005E32 00                    2908 	.db 0x00
                                   2909 	.area CSEG    (CODE)
                                   2910 	.area CONST   (CODE)
      005E33                       2911 ___str_14:
      005E33 43 20 2D 2D 3E 20 48  2912 	.ascii "C --> Hard Reset(nRESET pin)"
             61 72 64 20 52 65 73
             65 74 28 6E 52 45 53
             45 54 20 70 69 6E 29
      005E4F 0A                    2913 	.db 0x0a
      005E50 0D                    2914 	.db 0x0d
      005E51 00                    2915 	.db 0x00
                                   2916 	.area CSEG    (CODE)
                                   2917 	.area CONST   (CODE)
      005E52                       2918 ___str_15:
      005E52 44 20 2D 2D 3E 20 50  2919 	.ascii "D --> Process TCP"
             72 6F 63 65 73 73 20
             54 43 50
      005E63 0A                    2920 	.db 0x0a
      005E64 0D                    2921 	.db 0x0d
      005E65 00                    2922 	.db 0x00
                                   2923 	.area CSEG    (CODE)
                                   2924 	.area CONST   (CODE)
      005E66                       2925 ___str_16:
      005E66 45 20 2D 2D 3E 20 45  2926 	.ascii "E --> Enable TX interrupt"
             6E 61 62 6C 65 20 54
             58 20 69 6E 74 65 72
             72 75 70 74
      005E7F 0A                    2927 	.db 0x0a
      005E80 0D                    2928 	.db 0x0d
      005E81 00                    2929 	.db 0x00
                                   2930 	.area CSEG    (CODE)
                                   2931 	.area CONST   (CODE)
      005E82                       2932 ___str_17:
      005E82 46 20 2D 2D 3E 20 44  2933 	.ascii "F --> Disabling TX interrupt"
             69 73 61 62 6C 69 6E
             67 20 54 58 20 69 6E
             74 65 72 72 75 70 74
      005E9E 0A                    2934 	.db 0x0a
      005E9F 0D                    2935 	.db 0x0d
      005EA0 00                    2936 	.db 0x00
                                   2937 	.area CSEG    (CODE)
                                   2938 	.area CONST   (CODE)
      005EA1                       2939 ___str_18:
      005EA1 45 6E 74 65 72 20 74  2940 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      005EC3 0A                    2941 	.db 0x0a
      005EC4 0D                    2942 	.db 0x0d
      005EC5 00                    2943 	.db 0x00
                                   2944 	.area CSEG    (CODE)
                                   2945 	.area CONST   (CODE)
      005EC6                       2946 ___str_19:
      005EC6 45 6E 74 65 72 20 74  2947 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      005EF0 0A                    2948 	.db 0x0a
      005EF1 0D                    2949 	.db 0x0d
      005EF2 00                    2950 	.db 0x00
                                   2951 	.area CSEG    (CODE)
                                   2952 	.area CONST   (CODE)
      005EF3                       2953 ___str_20:
      005EF3 45 6E 74 65 72 20 74  2954 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      005F14 0A                    2955 	.db 0x0a
      005F15 0D                    2956 	.db 0x0d
      005F16 00                    2957 	.db 0x00
                                   2958 	.area CSEG    (CODE)
                                   2959 	.area CONST   (CODE)
      005F17                       2960 ___str_21:
      005F17 45 6E 74 65 72 20 74  2961 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      005F3A 0A                    2962 	.db 0x0a
      005F3B 0D                    2963 	.db 0x0d
      005F3C 00                    2964 	.db 0x00
                                   2965 	.area CSEG    (CODE)
                                   2966 	.area CONST   (CODE)
      005F3D                       2967 ___str_22:
      005F3D 45 6E 74 65 72 20 74  2968 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      005F58 0A                    2969 	.db 0x0a
      005F59 0D                    2970 	.db 0x0d
      005F5A 00                    2971 	.db 0x00
                                   2972 	.area CSEG    (CODE)
                                   2973 	.area CONST   (CODE)
      005F5B                       2974 ___str_23:
      005F5B 45 6E 74 65 72 20 25  2975 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      005F7B 0A                    2976 	.db 0x0a
      005F7C 0D                    2977 	.db 0x0d
      005F7D 00                    2978 	.db 0x00
                                   2979 	.area CSEG    (CODE)
                                   2980 	.area CONST   (CODE)
      005F7E                       2981 ___str_24:
      005F7E 42 79 74 65 20 25 64  2982 	.ascii "Byte %d: "
             3A 20
      005F87 00                    2983 	.db 0x00
                                   2984 	.area CSEG    (CODE)
                                   2985 	.area CONST   (CODE)
      005F88                       2986 ___str_25:
      005F88 45 6E 74 65 72 20 74  2987 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      005FAA 0A                    2988 	.db 0x0a
      005FAB 0D                    2989 	.db 0x0d
      005FAC 00                    2990 	.db 0x00
                                   2991 	.area CSEG    (CODE)
                                   2992 	.area CONST   (CODE)
      005FAD                       2993 ___str_26:
      005FAD 45 6E 74 65 72 20 74  2994 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      005FD3 0A                    2995 	.db 0x0a
      005FD4 0D                    2996 	.db 0x0d
      005FD5 00                    2997 	.db 0x00
                                   2998 	.area CSEG    (CODE)
                                   2999 	.area CONST   (CODE)
      005FD6                       3000 ___str_27:
      005FD6 45 6E 74 65 72 20 74  3001 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      005FFC 0A                    3002 	.db 0x0a
      005FFD 0D                    3003 	.db 0x0d
      005FFE 00                    3004 	.db 0x00
                                   3005 	.area CSEG    (CODE)
                                   3006 	.area CONST   (CODE)
      005FFF                       3007 ___str_28:
      005FFF 4D 41 43 20 52 65 67  3008 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      006018 0A                    3009 	.db 0x0a
      006019 0D                    3010 	.db 0x0d
      00601A 00                    3011 	.db 0x00
                                   3012 	.area CSEG    (CODE)
                                   3013 	.area CONST   (CODE)
      00601B                       3014 ___str_29:
      00601B 45 6E 74 65 72 20 74  3015 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      00603A 0A                    3016 	.db 0x0a
      00603B 0D                    3017 	.db 0x0d
      00603C 00                    3018 	.db 0x00
                                   3019 	.area CSEG    (CODE)
                                   3020 	.area CONST   (CODE)
      00603D                       3021 ___str_30:
      00603D 45 6E 74 65 72 20 74  3022 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      00605C 0A                    3023 	.db 0x0a
      00605D 0D                    3024 	.db 0x0d
      00605E 00                    3025 	.db 0x00
                                   3026 	.area CSEG    (CODE)
                                   3027 	.area CONST   (CODE)
      00605F                       3028 ___str_31:
      00605F 50 48 59 20 57 72 69  3029 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      006075 0A                    3030 	.db 0x0a
      006076 0D                    3031 	.db 0x0d
      006077 00                    3032 	.db 0x00
                                   3033 	.area CSEG    (CODE)
                                   3034 	.area CONST   (CODE)
      006078                       3035 ___str_32:
      006078 45 6E 74 65 72 20 74  3036 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      00609F 0A                    3037 	.db 0x0a
      0060A0 0D                    3038 	.db 0x0d
      0060A1 00                    3039 	.db 0x00
                                   3040 	.area CSEG    (CODE)
                                   3041 	.area CONST   (CODE)
      0060A2                       3042 ___str_33:
      0060A2 50 48 59 20 52 65 61  3043 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      0060B7 0A                    3044 	.db 0x0a
      0060B8 0D                    3045 	.db 0x0d
      0060B9 00                    3046 	.db 0x00
                                   3047 	.area CSEG    (CODE)
                                   3048 	.area CONST   (CODE)
      0060BA                       3049 ___str_34:
      0060BA 52 65 73 65 74 74 69  3050 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      0060CF 0A                    3051 	.db 0x0a
      0060D0 0D                    3052 	.db 0x0d
      0060D1 00                    3053 	.db 0x00
                                   3054 	.area CSEG    (CODE)
                                   3055 	.area CONST   (CODE)
      0060D2                       3056 ___str_35:
      0060D2 45 6E 74 65 72 20 74  3057 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      0060F9 0A                    3058 	.db 0x0a
      0060FA 0D                    3059 	.db 0x0d
      0060FB 00                    3060 	.db 0x00
                                   3061 	.area CSEG    (CODE)
                                   3062 	.area CONST   (CODE)
      0060FC                       3063 ___str_36:
      0060FC 45 6E 74 65 72 20 74  3064 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      006114 0A                    3065 	.db 0x0a
      006115 0D                    3066 	.db 0x0d
      006116 00                    3067 	.db 0x00
                                   3068 	.area CSEG    (CODE)
                                   3069 	.area CONST   (CODE)
      006117                       3070 ___str_37:
      006117 45 54 48 20 52 65 67  3071 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      006130 0A                    3072 	.db 0x0a
      006131 0D                    3073 	.db 0x0d
      006132 00                    3074 	.db 0x00
                                   3075 	.area CSEG    (CODE)
                                   3076 	.area CONST   (CODE)
      006133                       3077 ___str_38:
      006133 4D 41 43 20 6D 61 74  3078 	.ascii "MAC matched"
             63 68 65 64
      00613E 0A                    3079 	.db 0x0a
      00613F 2E 2E 2E 2E 2E 2E 2E  3080 	.ascii "................"
             2E 2E 2E 2E 2E 2E 2E
             2E 2E
      00614F 0D                    3081 	.db 0x0d
      006150 00                    3082 	.db 0x00
                                   3083 	.area CSEG    (CODE)
                                   3084 	.area CONST   (CODE)
      006151                       3085 ___str_39:
      006151 56 61 6C 69 64 20 45  3086 	.ascii "Valid ETHER packet....................."
             54 48 45 52 20 70 61
             63 6B 65 74 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E
      006178 0A                    3087 	.db 0x0a
      006179 0D                    3088 	.db 0x0d
      00617A 00                    3089 	.db 0x00
                                   3090 	.area CSEG    (CODE)
                                   3091 	.area CONST   (CODE)
      00617B                       3092 ___str_40:
      00617B 0A                    3093 	.db 0x0a
      00617C 50 72 6F 63 65 73 73  3094 	.ascii "Processed response data:"
             65 64 20 72 65 73 70
             6F 6E 73 65 20 64 61
             74 61 3A
      006194 0A                    3095 	.db 0x0a
      006195 00                    3096 	.db 0x00
                                   3097 	.area CSEG    (CODE)
                                   3098 	.area CONST   (CODE)
      006196                       3099 ___str_41:
      006196 0A                    3100 	.db 0x0a
      006197 4E 6F 20 72 65 73 70  3101 	.ascii "No response generated by TCP packet processing."
             6F 6E 73 65 20 67 65
             6E 65 72 61 74 65 64
             20 62 79 20 54 43 50
             20 70 61 63 6B 65 74
             20 70 72 6F 63 65 73
             73 69 6E 67 2E
      0061C6 0A                    3102 	.db 0x0a
      0061C7 00                    3103 	.db 0x00
                                   3104 	.area CSEG    (CODE)
                                   3105 	.area CONST   (CODE)
      0061C8                       3106 ___str_42:
      0061C8 59 45 53 53 53 53     3107 	.ascii "YESSSS"
      0061CE 0A                    3108 	.db 0x0a
      0061CF 00                    3109 	.db 0x00
                                   3110 	.area CSEG    (CODE)
                                   3111 	.area CONST   (CODE)
      0061D0                       3112 ___str_43:
      0061D0 4E 4F 4F 4F 4F        3113 	.ascii "NOOOO"
      0061D5 0A                    3114 	.db 0x0a
      0061D6 00                    3115 	.db 0x00
                                   3116 	.area CSEG    (CODE)
                                   3117 	.area CONST   (CODE)
      0061D7                       3118 ___str_44:
      0061D7 6E 65 78 74 50 61 63  3119 	.ascii "nextPacket: 0x%04X"
             6B 65 74 3A 20 30 78
             25 30 34 58
      0061E9 0A                    3120 	.db 0x0a
      0061EA 00                    3121 	.db 0x00
                                   3122 	.area CSEG    (CODE)
                                   3123 	.area CONST   (CODE)
      0061EB                       3124 ___str_45:
      0061EB 62 79 74 65 43 6F 75  3125 	.ascii "byteCount: %d"
             6E 74 3A 20 25 64
      0061F8 0A                    3126 	.db 0x0a
      0061F9 00                    3127 	.db 0x00
                                   3128 	.area CSEG    (CODE)
                                   3129 	.area CONST   (CODE)
      0061FA                       3130 ___str_46:
      0061FA 73 74 61 74 75 73 3A  3131 	.ascii "status: 0x%02X"
             20 30 78 25 30 32 58
      006208 0A                    3132 	.db 0x0a
      006209 00                    3133 	.db 0x00
                                   3134 	.area CSEG    (CODE)
                                   3135 	.area CONST   (CODE)
      00620A                       3136 ___str_47:
      00620A 20 52 65 73 65 74 74  3137 	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
             69 6E 67 20 45 4E 43
             20 75 73 69 6E 67 20
             52 45 53 45 54 20 70
             69 6E 20 69 6E 20 48
             61 72 64 77 61 72 65
             28 50 31 5F 30 29
      00623A 0A                    3138 	.db 0x0a
      00623B 0D                    3139 	.db 0x0d
      00623C 00                    3140 	.db 0x00
                                   3141 	.area CSEG    (CODE)
                                   3142 	.area CONST   (CODE)
      00623D                       3143 ___str_48:
      00623D 45 6E 61 62 6C 69 6E  3144 	.ascii "Enabling TXPKTIE"
             67 20 54 58 50 4B 54
             49 45
      00624D 0A                    3145 	.db 0x0a
      00624E 0D                    3146 	.db 0x0d
      00624F 00                    3147 	.db 0x00
                                   3148 	.area CSEG    (CODE)
                                   3149 	.area CONST   (CODE)
      006250                       3150 ___str_49:
      006250 44 69 73 61 62 6C 69  3151 	.ascii "Disabling TXPKTIE"
             6E 67 20 54 58 50 4B
             54 49 45
      006261 0A                    3152 	.db 0x0a
      006262 0D                    3153 	.db 0x0d
      006263 00                    3154 	.db 0x00
                                   3155 	.area CSEG    (CODE)
                                   3156 	.area CONST   (CODE)
      006264                       3157 ___str_50:
      006264 49 6E 76 61 6C 69 64  3158 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      006291 0A                    3159 	.db 0x0a
      006292 0D                    3160 	.db 0x0d
      006293 00                    3161 	.db 0x00
                                   3162 	.area CSEG    (CODE)
                                   3163 	.area XINIT   (CODE)
      00671B                       3164 __xinit__device_mac:
      00671B 02                    3165 	.db #0x02	; 2
      00671C 11                    3166 	.db #0x11	; 17
      00671D 22                    3167 	.db #0x22	; 34
      00671E 33                    3168 	.db #0x33	; 51	'3'
      00671F 44                    3169 	.db #0x44	; 68	'D'
      006720 55                    3170 	.db #0x55	; 85	'U'
      006721                       3171 __xinit__target_mac:
      006721 F8                    3172 	.db #0xf8	; 248
      006722 75                    3173 	.db #0x75	; 117	'u'
      006723 A4                    3174 	.db #0xa4	; 164
      006724 8C                    3175 	.db #0x8c	; 140
      006725 41                    3176 	.db #0x41	; 65	'A'
      006726 31                    3177 	.db #0x31	; 49	'1'
      006727                       3178 __xinit__device_ip:
      006727 C0                    3179 	.db #0xc0	; 192
      006728 A8                    3180 	.db #0xa8	; 168
      006729 01                    3181 	.db #0x01	; 1
      00672A 64                    3182 	.db #0x64	; 100	'd'
      00672B                       3183 __xinit__target_ip:
      00672B C0                    3184 	.db #0xc0	; 192
      00672C A8                    3185 	.db #0xa8	; 168
      00672D 01                    3186 	.db #0x01	; 1
      00672E 01                    3187 	.db #0x01	; 1
                                   3188 	.area CABS    (ABS,CODE)

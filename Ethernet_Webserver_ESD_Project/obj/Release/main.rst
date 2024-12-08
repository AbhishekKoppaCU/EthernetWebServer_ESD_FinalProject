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
                                     29 	.globl _process_tcp_packet
                                     30 	.globl _memcmp
                                     31 	.globl _free
                                     32 	.globl _malloc
                                     33 	.globl _printf_tiny
                                     34 	.globl _putchar
                                     35 	.globl _getchar
                                     36 	.globl _printf
                                     37 	.globl _TF1
                                     38 	.globl _TR1
                                     39 	.globl _TF0
                                     40 	.globl _TR0
                                     41 	.globl _IE1
                                     42 	.globl _IT1
                                     43 	.globl _IE0
                                     44 	.globl _IT0
                                     45 	.globl _SM0
                                     46 	.globl _SM1
                                     47 	.globl _SM2
                                     48 	.globl _REN
                                     49 	.globl _TB8
                                     50 	.globl _RB8
                                     51 	.globl _TI
                                     52 	.globl _RI
                                     53 	.globl _CY
                                     54 	.globl _AC
                                     55 	.globl _F0
                                     56 	.globl _RS1
                                     57 	.globl _RS0
                                     58 	.globl _OV
                                     59 	.globl _F1
                                     60 	.globl _P
                                     61 	.globl _RD
                                     62 	.globl _WR
                                     63 	.globl _T1
                                     64 	.globl _T0
                                     65 	.globl _INT1
                                     66 	.globl _INT0
                                     67 	.globl _TXD0
                                     68 	.globl _TXD
                                     69 	.globl _RXD0
                                     70 	.globl _RXD
                                     71 	.globl _P3_7
                                     72 	.globl _P3_6
                                     73 	.globl _P3_5
                                     74 	.globl _P3_4
                                     75 	.globl _P3_3
                                     76 	.globl _P3_2
                                     77 	.globl _P3_1
                                     78 	.globl _P3_0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _P0_7
                                     96 	.globl _P0_6
                                     97 	.globl _P0_5
                                     98 	.globl _P0_4
                                     99 	.globl _P0_3
                                    100 	.globl _P0_2
                                    101 	.globl _P0_1
                                    102 	.globl _P0_0
                                    103 	.globl _PS
                                    104 	.globl _PT1
                                    105 	.globl _PX1
                                    106 	.globl _PT0
                                    107 	.globl _PX0
                                    108 	.globl _EA
                                    109 	.globl _ES
                                    110 	.globl _ET1
                                    111 	.globl _EX1
                                    112 	.globl _ET0
                                    113 	.globl _EX0
                                    114 	.globl _BREG_F7
                                    115 	.globl _BREG_F6
                                    116 	.globl _BREG_F5
                                    117 	.globl _BREG_F4
                                    118 	.globl _BREG_F3
                                    119 	.globl _BREG_F2
                                    120 	.globl _BREG_F1
                                    121 	.globl _BREG_F0
                                    122 	.globl _P5_7
                                    123 	.globl _P5_6
                                    124 	.globl _P5_5
                                    125 	.globl _P5_4
                                    126 	.globl _P5_3
                                    127 	.globl _P5_2
                                    128 	.globl _P5_1
                                    129 	.globl _P5_0
                                    130 	.globl _P4_7
                                    131 	.globl _P4_6
                                    132 	.globl _P4_5
                                    133 	.globl _P4_4
                                    134 	.globl _P4_3
                                    135 	.globl _P4_2
                                    136 	.globl _P4_1
                                    137 	.globl _P4_0
                                    138 	.globl _PX0L
                                    139 	.globl _PT0L
                                    140 	.globl _PX1L
                                    141 	.globl _PT1L
                                    142 	.globl _PSL
                                    143 	.globl _PT2L
                                    144 	.globl _PPCL
                                    145 	.globl _EC
                                    146 	.globl _CCF0
                                    147 	.globl _CCF1
                                    148 	.globl _CCF2
                                    149 	.globl _CCF3
                                    150 	.globl _CCF4
                                    151 	.globl _CR
                                    152 	.globl _CF
                                    153 	.globl _TF2
                                    154 	.globl _EXF2
                                    155 	.globl _RCLK
                                    156 	.globl _TCLK
                                    157 	.globl _EXEN2
                                    158 	.globl _TR2
                                    159 	.globl _C_T2
                                    160 	.globl _CP_RL2
                                    161 	.globl _T2CON_7
                                    162 	.globl _T2CON_6
                                    163 	.globl _T2CON_5
                                    164 	.globl _T2CON_4
                                    165 	.globl _T2CON_3
                                    166 	.globl _T2CON_2
                                    167 	.globl _T2CON_1
                                    168 	.globl _T2CON_0
                                    169 	.globl _PT2
                                    170 	.globl _ET2
                                    171 	.globl _TMOD
                                    172 	.globl _TL1
                                    173 	.globl _TL0
                                    174 	.globl _TH1
                                    175 	.globl _TH0
                                    176 	.globl _TCON
                                    177 	.globl _SP
                                    178 	.globl _SCON
                                    179 	.globl _SBUF0
                                    180 	.globl _SBUF
                                    181 	.globl _PSW
                                    182 	.globl _PCON
                                    183 	.globl _P3
                                    184 	.globl _P2
                                    185 	.globl _P1
                                    186 	.globl _P0
                                    187 	.globl _IP
                                    188 	.globl _IE
                                    189 	.globl _DP0L
                                    190 	.globl _DPL
                                    191 	.globl _DP0H
                                    192 	.globl _DPH
                                    193 	.globl _B
                                    194 	.globl _ACC
                                    195 	.globl _EECON
                                    196 	.globl _KBF
                                    197 	.globl _KBE
                                    198 	.globl _KBLS
                                    199 	.globl _BRL
                                    200 	.globl _BDRCON
                                    201 	.globl _T2MOD
                                    202 	.globl _SPDAT
                                    203 	.globl _SPSTA
                                    204 	.globl _SPCON
                                    205 	.globl _SADEN
                                    206 	.globl _SADDR
                                    207 	.globl _WDTPRG
                                    208 	.globl _WDTRST
                                    209 	.globl _P5
                                    210 	.globl _P4
                                    211 	.globl _IPH1
                                    212 	.globl _IPL1
                                    213 	.globl _IPH0
                                    214 	.globl _IPL0
                                    215 	.globl _IEN1
                                    216 	.globl _IEN0
                                    217 	.globl _CMOD
                                    218 	.globl _CL
                                    219 	.globl _CH
                                    220 	.globl _CCON
                                    221 	.globl _CCAPM4
                                    222 	.globl _CCAPM3
                                    223 	.globl _CCAPM2
                                    224 	.globl _CCAPM1
                                    225 	.globl _CCAPM0
                                    226 	.globl _CCAP4L
                                    227 	.globl _CCAP3L
                                    228 	.globl _CCAP2L
                                    229 	.globl _CCAP1L
                                    230 	.globl _CCAP0L
                                    231 	.globl _CCAP4H
                                    232 	.globl _CCAP3H
                                    233 	.globl _CCAP2H
                                    234 	.globl _CCAP1H
                                    235 	.globl _CCAP0H
                                    236 	.globl _CKCON1
                                    237 	.globl _CKCON0
                                    238 	.globl _CKRL
                                    239 	.globl _AUXR1
                                    240 	.globl _AUXR
                                    241 	.globl _TH2
                                    242 	.globl _TL2
                                    243 	.globl _RCAP2H
                                    244 	.globl _RCAP2L
                                    245 	.globl _T2CON
                                    246 	.globl _target_ip
                                    247 	.globl _device_ip
                                    248 	.globl _target_mac
                                    249 	.globl _device_mac
                                    250 ;--------------------------------------------------------
                                    251 ; special function registers
                                    252 ;--------------------------------------------------------
                                    253 	.area RSEG    (ABS,DATA)
      000000                        254 	.org 0x0000
                           0000C8   255 _T2CON	=	0x00c8
                           0000CA   256 _RCAP2L	=	0x00ca
                           0000CB   257 _RCAP2H	=	0x00cb
                           0000CC   258 _TL2	=	0x00cc
                           0000CD   259 _TH2	=	0x00cd
                           00008E   260 _AUXR	=	0x008e
                           0000A2   261 _AUXR1	=	0x00a2
                           000097   262 _CKRL	=	0x0097
                           00008F   263 _CKCON0	=	0x008f
                           0000AF   264 _CKCON1	=	0x00af
                           0000FA   265 _CCAP0H	=	0x00fa
                           0000FB   266 _CCAP1H	=	0x00fb
                           0000FC   267 _CCAP2H	=	0x00fc
                           0000FD   268 _CCAP3H	=	0x00fd
                           0000FE   269 _CCAP4H	=	0x00fe
                           0000EA   270 _CCAP0L	=	0x00ea
                           0000EB   271 _CCAP1L	=	0x00eb
                           0000EC   272 _CCAP2L	=	0x00ec
                           0000ED   273 _CCAP3L	=	0x00ed
                           0000EE   274 _CCAP4L	=	0x00ee
                           0000DA   275 _CCAPM0	=	0x00da
                           0000DB   276 _CCAPM1	=	0x00db
                           0000DC   277 _CCAPM2	=	0x00dc
                           0000DD   278 _CCAPM3	=	0x00dd
                           0000DE   279 _CCAPM4	=	0x00de
                           0000D8   280 _CCON	=	0x00d8
                           0000F9   281 _CH	=	0x00f9
                           0000E9   282 _CL	=	0x00e9
                           0000D9   283 _CMOD	=	0x00d9
                           0000A8   284 _IEN0	=	0x00a8
                           0000B1   285 _IEN1	=	0x00b1
                           0000B8   286 _IPL0	=	0x00b8
                           0000B7   287 _IPH0	=	0x00b7
                           0000B2   288 _IPL1	=	0x00b2
                           0000B3   289 _IPH1	=	0x00b3
                           0000C0   290 _P4	=	0x00c0
                           0000E8   291 _P5	=	0x00e8
                           0000A6   292 _WDTRST	=	0x00a6
                           0000A7   293 _WDTPRG	=	0x00a7
                           0000A9   294 _SADDR	=	0x00a9
                           0000B9   295 _SADEN	=	0x00b9
                           0000C3   296 _SPCON	=	0x00c3
                           0000C4   297 _SPSTA	=	0x00c4
                           0000C5   298 _SPDAT	=	0x00c5
                           0000C9   299 _T2MOD	=	0x00c9
                           00009B   300 _BDRCON	=	0x009b
                           00009A   301 _BRL	=	0x009a
                           00009C   302 _KBLS	=	0x009c
                           00009D   303 _KBE	=	0x009d
                           00009E   304 _KBF	=	0x009e
                           0000D2   305 _EECON	=	0x00d2
                           0000E0   306 _ACC	=	0x00e0
                           0000F0   307 _B	=	0x00f0
                           000083   308 _DPH	=	0x0083
                           000083   309 _DP0H	=	0x0083
                           000082   310 _DPL	=	0x0082
                           000082   311 _DP0L	=	0x0082
                           0000A8   312 _IE	=	0x00a8
                           0000B8   313 _IP	=	0x00b8
                           000080   314 _P0	=	0x0080
                           000090   315 _P1	=	0x0090
                           0000A0   316 _P2	=	0x00a0
                           0000B0   317 _P3	=	0x00b0
                           000087   318 _PCON	=	0x0087
                           0000D0   319 _PSW	=	0x00d0
                           000099   320 _SBUF	=	0x0099
                           000099   321 _SBUF0	=	0x0099
                           000098   322 _SCON	=	0x0098
                           000081   323 _SP	=	0x0081
                           000088   324 _TCON	=	0x0088
                           00008C   325 _TH0	=	0x008c
                           00008D   326 _TH1	=	0x008d
                           00008A   327 _TL0	=	0x008a
                           00008B   328 _TL1	=	0x008b
                           000089   329 _TMOD	=	0x0089
                                    330 ;--------------------------------------------------------
                                    331 ; special function bits
                                    332 ;--------------------------------------------------------
                                    333 	.area RSEG    (ABS,DATA)
      000000                        334 	.org 0x0000
                           0000AD   335 _ET2	=	0x00ad
                           0000BD   336 _PT2	=	0x00bd
                           0000C8   337 _T2CON_0	=	0x00c8
                           0000C9   338 _T2CON_1	=	0x00c9
                           0000CA   339 _T2CON_2	=	0x00ca
                           0000CB   340 _T2CON_3	=	0x00cb
                           0000CC   341 _T2CON_4	=	0x00cc
                           0000CD   342 _T2CON_5	=	0x00cd
                           0000CE   343 _T2CON_6	=	0x00ce
                           0000CF   344 _T2CON_7	=	0x00cf
                           0000C8   345 _CP_RL2	=	0x00c8
                           0000C9   346 _C_T2	=	0x00c9
                           0000CA   347 _TR2	=	0x00ca
                           0000CB   348 _EXEN2	=	0x00cb
                           0000CC   349 _TCLK	=	0x00cc
                           0000CD   350 _RCLK	=	0x00cd
                           0000CE   351 _EXF2	=	0x00ce
                           0000CF   352 _TF2	=	0x00cf
                           0000DF   353 _CF	=	0x00df
                           0000DE   354 _CR	=	0x00de
                           0000DC   355 _CCF4	=	0x00dc
                           0000DB   356 _CCF3	=	0x00db
                           0000DA   357 _CCF2	=	0x00da
                           0000D9   358 _CCF1	=	0x00d9
                           0000D8   359 _CCF0	=	0x00d8
                           0000AE   360 _EC	=	0x00ae
                           0000BE   361 _PPCL	=	0x00be
                           0000BD   362 _PT2L	=	0x00bd
                           0000BC   363 _PSL	=	0x00bc
                           0000BB   364 _PT1L	=	0x00bb
                           0000BA   365 _PX1L	=	0x00ba
                           0000B9   366 _PT0L	=	0x00b9
                           0000B8   367 _PX0L	=	0x00b8
                           0000C0   368 _P4_0	=	0x00c0
                           0000C1   369 _P4_1	=	0x00c1
                           0000C2   370 _P4_2	=	0x00c2
                           0000C3   371 _P4_3	=	0x00c3
                           0000C4   372 _P4_4	=	0x00c4
                           0000C5   373 _P4_5	=	0x00c5
                           0000C6   374 _P4_6	=	0x00c6
                           0000C7   375 _P4_7	=	0x00c7
                           0000E8   376 _P5_0	=	0x00e8
                           0000E9   377 _P5_1	=	0x00e9
                           0000EA   378 _P5_2	=	0x00ea
                           0000EB   379 _P5_3	=	0x00eb
                           0000EC   380 _P5_4	=	0x00ec
                           0000ED   381 _P5_5	=	0x00ed
                           0000EE   382 _P5_6	=	0x00ee
                           0000EF   383 _P5_7	=	0x00ef
                           0000F0   384 _BREG_F0	=	0x00f0
                           0000F1   385 _BREG_F1	=	0x00f1
                           0000F2   386 _BREG_F2	=	0x00f2
                           0000F3   387 _BREG_F3	=	0x00f3
                           0000F4   388 _BREG_F4	=	0x00f4
                           0000F5   389 _BREG_F5	=	0x00f5
                           0000F6   390 _BREG_F6	=	0x00f6
                           0000F7   391 _BREG_F7	=	0x00f7
                           0000A8   392 _EX0	=	0x00a8
                           0000A9   393 _ET0	=	0x00a9
                           0000AA   394 _EX1	=	0x00aa
                           0000AB   395 _ET1	=	0x00ab
                           0000AC   396 _ES	=	0x00ac
                           0000AF   397 _EA	=	0x00af
                           0000B8   398 _PX0	=	0x00b8
                           0000B9   399 _PT0	=	0x00b9
                           0000BA   400 _PX1	=	0x00ba
                           0000BB   401 _PT1	=	0x00bb
                           0000BC   402 _PS	=	0x00bc
                           000080   403 _P0_0	=	0x0080
                           000081   404 _P0_1	=	0x0081
                           000082   405 _P0_2	=	0x0082
                           000083   406 _P0_3	=	0x0083
                           000084   407 _P0_4	=	0x0084
                           000085   408 _P0_5	=	0x0085
                           000086   409 _P0_6	=	0x0086
                           000087   410 _P0_7	=	0x0087
                           000090   411 _P1_0	=	0x0090
                           000091   412 _P1_1	=	0x0091
                           000092   413 _P1_2	=	0x0092
                           000093   414 _P1_3	=	0x0093
                           000094   415 _P1_4	=	0x0094
                           000095   416 _P1_5	=	0x0095
                           000096   417 _P1_6	=	0x0096
                           000097   418 _P1_7	=	0x0097
                           0000A0   419 _P2_0	=	0x00a0
                           0000A1   420 _P2_1	=	0x00a1
                           0000A2   421 _P2_2	=	0x00a2
                           0000A3   422 _P2_3	=	0x00a3
                           0000A4   423 _P2_4	=	0x00a4
                           0000A5   424 _P2_5	=	0x00a5
                           0000A6   425 _P2_6	=	0x00a6
                           0000A7   426 _P2_7	=	0x00a7
                           0000B0   427 _P3_0	=	0x00b0
                           0000B1   428 _P3_1	=	0x00b1
                           0000B2   429 _P3_2	=	0x00b2
                           0000B3   430 _P3_3	=	0x00b3
                           0000B4   431 _P3_4	=	0x00b4
                           0000B5   432 _P3_5	=	0x00b5
                           0000B6   433 _P3_6	=	0x00b6
                           0000B7   434 _P3_7	=	0x00b7
                           0000B0   435 _RXD	=	0x00b0
                           0000B0   436 _RXD0	=	0x00b0
                           0000B1   437 _TXD	=	0x00b1
                           0000B1   438 _TXD0	=	0x00b1
                           0000B2   439 _INT0	=	0x00b2
                           0000B3   440 _INT1	=	0x00b3
                           0000B4   441 _T0	=	0x00b4
                           0000B5   442 _T1	=	0x00b5
                           0000B6   443 _WR	=	0x00b6
                           0000B7   444 _RD	=	0x00b7
                           0000D0   445 _P	=	0x00d0
                           0000D1   446 _F1	=	0x00d1
                           0000D2   447 _OV	=	0x00d2
                           0000D3   448 _RS0	=	0x00d3
                           0000D4   449 _RS1	=	0x00d4
                           0000D5   450 _F0	=	0x00d5
                           0000D6   451 _AC	=	0x00d6
                           0000D7   452 _CY	=	0x00d7
                           000098   453 _RI	=	0x0098
                           000099   454 _TI	=	0x0099
                           00009A   455 _RB8	=	0x009a
                           00009B   456 _TB8	=	0x009b
                           00009C   457 _REN	=	0x009c
                           00009D   458 _SM2	=	0x009d
                           00009E   459 _SM1	=	0x009e
                           00009F   460 _SM0	=	0x009f
                           000088   461 _IT0	=	0x0088
                           000089   462 _IE0	=	0x0089
                           00008A   463 _IT1	=	0x008a
                           00008B   464 _IE1	=	0x008b
                           00008C   465 _TR0	=	0x008c
                           00008D   466 _TF0	=	0x008d
                           00008E   467 _TR1	=	0x008e
                           00008F   468 _TF1	=	0x008f
                                    469 ;--------------------------------------------------------
                                    470 ; overlayable register banks
                                    471 ;--------------------------------------------------------
                                    472 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        473 	.ds 8
                                    474 ;--------------------------------------------------------
                                    475 ; internal ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area DSEG    (DATA)
      000022                        478 _main_sloc0_1_0:
      000022                        479 	.ds 2
      000024                        480 _main_sloc1_1_0:
      000024                        481 	.ds 2
      000026                        482 _main_sloc2_1_0:
      000026                        483 	.ds 2
      000028                        484 _main_sloc3_1_0:
      000028                        485 	.ds 2
      00002A                        486 _main_sloc4_1_0:
      00002A                        487 	.ds 2
      00002C                        488 _main_sloc5_1_0:
      00002C                        489 	.ds 3
                                    490 ;--------------------------------------------------------
                                    491 ; overlayable items in internal ram
                                    492 ;--------------------------------------------------------
                                    493 	.area	OSEG    (OVR,DATA)
      000039                        494 _hex_to_int_sloc0_1_0:
      000039                        495 	.ds 3
      00003C                        496 _hex_to_int_sloc1_1_0:
      00003C                        497 	.ds 1
      00003D                        498 _hex_to_int_sloc2_1_0:
      00003D                        499 	.ds 2
                                    500 ;--------------------------------------------------------
                                    501 ; Stack segment in internal ram
                                    502 ;--------------------------------------------------------
                                    503 	.area SSEG
      000049                        504 __start__stack:
      000049                        505 	.ds	1
                                    506 
                                    507 ;--------------------------------------------------------
                                    508 ; indirectly addressable internal ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area ISEG    (DATA)
                                    511 ;--------------------------------------------------------
                                    512 ; absolute internal ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area IABS    (ABS,DATA)
                                    515 	.area IABS    (ABS,DATA)
                                    516 ;--------------------------------------------------------
                                    517 ; bit data
                                    518 ;--------------------------------------------------------
                                    519 	.area BSEG    (BIT)
                                    520 ;--------------------------------------------------------
                                    521 ; paged external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area PSEG    (PAG,XDATA)
                                    524 ;--------------------------------------------------------
                                    525 ; uninitialized external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area XSEG    (XDATA)
      000156                        528 _hex_to_int_str_10000_127:
      000156                        529 	.ds 3
      000159                        530 _hex_to_int_result_10000_128:
      000159                        531 	.ds 2
      00015B                        532 _hex_to_int_ASCII_20000_129:
      00015B                        533 	.ds 2
      00015D                        534 _get_user_buffer_size_input_10000_134:
      00015D                        535 	.ds 10
      000167                        536 _main_device_mac_10000_137:
      000167                        537 	.ds 6
      00016D                        538 _main_target_mac_10000_137:
      00016D                        539 	.ds 6
      000173                        540 _main_device_ip_10000_137:
      000173                        541 	.ds 4
      000177                        542 _main_target_ip_10000_137:
      000177                        543 	.ds 4
      00017B                        544 _main_buffer_40003_147:
      00017B                        545 	.ds 256
      00027B                        546 _main_buffer_40003_152:
      00027B                        547 	.ds 256
      00037B                        548 _main_gNextPacketPtr_60001_168:
      00037B                        549 	.ds 2
      00037D                        550 _main_is_tcp_for_target_60004_173:
      00037D                        551 	.ds 2
      00037F                        552 _main_response_size_70004_177:
      00037F                        553 	.ds 2
                                    554 ;--------------------------------------------------------
                                    555 ; absolute external ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area XABS    (ABS,XDATA)
                                    558 ;--------------------------------------------------------
                                    559 ; initialized external ram data
                                    560 ;--------------------------------------------------------
                                    561 	.area XISEG   (XDATA)
      000E1A                        562 _device_mac::
      000E1A                        563 	.ds 6
      000E20                        564 _target_mac::
      000E20                        565 	.ds 6
      000E26                        566 _device_ip::
      000E26                        567 	.ds 4
      000E2A                        568 _target_ip::
      000E2A                        569 	.ds 4
                                    570 	.area HOME    (CODE)
                                    571 	.area GSINIT0 (CODE)
                                    572 	.area GSINIT1 (CODE)
                                    573 	.area GSINIT2 (CODE)
                                    574 	.area GSINIT3 (CODE)
                                    575 	.area GSINIT4 (CODE)
                                    576 	.area GSINIT5 (CODE)
                                    577 	.area GSINIT  (CODE)
                                    578 	.area GSFINAL (CODE)
                                    579 	.area CSEG    (CODE)
                                    580 ;--------------------------------------------------------
                                    581 ; interrupt vector
                                    582 ;--------------------------------------------------------
                                    583 	.area HOME    (CODE)
      002000                        584 __interrupt_vect:
      002000 02 20 09         [24]  585 	ljmp	__sdcc_gsinit_startup
      002003 02 24 5C         [24]  586 	ljmp	_external_interrupt0_isr
                                    587 ;--------------------------------------------------------
                                    588 ; global & static initialisations
                                    589 ;--------------------------------------------------------
                                    590 	.area HOME    (CODE)
                                    591 	.area GSINIT  (CODE)
                                    592 	.area GSFINAL (CODE)
                                    593 	.area GSINIT  (CODE)
                                    594 	.globl __sdcc_gsinit_startup
                                    595 	.globl __sdcc_program_startup
                                    596 	.globl __start__stack
                                    597 	.globl __mcs51_genXINIT
                                    598 	.globl __mcs51_genXRAMCLEAR
                                    599 	.globl __mcs51_genRAMCLEAR
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'main'
                                    602 ;------------------------------------------------------------
                                    603 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    604 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                    605 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                    606 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                    607 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                    608 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                    609 ;device_mac                Allocated with name '_main_device_mac_10000_137'
                                    610 ;target_mac                Allocated with name '_main_target_mac_10000_137'
                                    611 ;device_ip                 Allocated with name '_main_device_ip_10000_137'
                                    612 ;target_ip                 Allocated with name '_main_target_ip_10000_137'
                                    613 ;c                         Allocated with name '_main_c_20001_139'
                                    614 ;reg_bank                  Allocated with name '_main_reg_bank_40002_142'
                                    615 ;addr                      Allocated with name '_main_addr_40003_143'
                                    616 ;data                      Allocated with name '_main_data_40004_144'
                                    617 ;num_bytes                 Allocated with name '_main_num_bytes_40002_146'
                                    618 ;start_address             Allocated with name '_main_start_address_40003_147'
                                    619 ;buffer                    Allocated with name '_main_buffer_40003_147'
                                    620 ;i                         Allocated with name '_main_i_50003_148'
                                    621 ;num_bytes                 Allocated with name '_main_num_bytes_40002_151'
                                    622 ;start_address             Allocated with name '_main_start_address_40003_152'
                                    623 ;buffer                    Allocated with name '_main_buffer_40003_152'
                                    624 ;reg_bank                  Allocated with name '_main_reg_bank_40002_154'
                                    625 ;addr                      Allocated with name '_main_addr_40003_155'
                                    626 ;data                      Allocated with name '_main_data_40003_155'
                                    627 ;addr                      Allocated with name '_main_addr_40002_157'
                                    628 ;data                      Allocated with name '_main_data_40003_158'
                                    629 ;addr                      Allocated with name '_main_addr_40002_160'
                                    630 ;data                      Allocated with name '_main_data_40002_160'
                                    631 ;addr                      Allocated with name '_main_addr_40002_163'
                                    632 ;bank                      Allocated with name '_main_bank_40003_164'
                                    633 ;data                      Allocated with name '_main_data_40003_164'
                                    634 ;nextPacket                Allocated with name '_main_nextPacket_60001_168'
                                    635 ;byteCount                 Allocated with name '_main_byteCount_60001_168'
                                    636 ;status                    Allocated with name '_main_status_60001_168'
                                    637 ;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_168'
                                    638 ;len                       Allocated with name '_main_len_60001_168'
                                    639 ;packet_data               Allocated with name '_main_packet_data_60002_171'
                                    640 ;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_172'
                                    641 ;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_173'
                                    642 ;response_size             Allocated with name '_main_response_size_70004_177'
                                    643 ;response                  Allocated with name '_main_response_70004_177'
                                    644 ;read_econ2                Allocated with name '_main_read_econ2_60005_181'
                                    645 ;i                         Allocated with name '_main_i_50001_184'
                                    646 ;read_econ2                Allocated with name '_main_read_econ2_40002_187'
                                    647 ;------------------------------------------------------------
                                    648 ;	main.c:199: static uint16_t gNextPacketPtr = RX_BUFFER_START;
      002069 90 03 7B         [24]  649 	mov	dptr,#_main_gNextPacketPtr_60001_168
      00206C E4               [12]  650 	clr	a
      00206D F0               [24]  651 	movx	@dptr,a
      00206E A3               [24]  652 	inc	dptr
      00206F F0               [24]  653 	movx	@dptr,a
                                    654 	.area GSFINAL (CODE)
      002070 02 20 06         [24]  655 	ljmp	__sdcc_program_startup
                                    656 ;--------------------------------------------------------
                                    657 ; Home
                                    658 ;--------------------------------------------------------
                                    659 	.area HOME    (CODE)
                                    660 	.area HOME    (CODE)
      002006                        661 __sdcc_program_startup:
      002006 02 2D 17         [24]  662 	ljmp	_main
                                    663 ;	return from main will return to caller
                                    664 ;--------------------------------------------------------
                                    665 ; code
                                    666 ;--------------------------------------------------------
                                    667 	.area CSEG    (CODE)
                                    668 ;------------------------------------------------------------
                                    669 ;Allocation info for local variables in function 'hex_to_int'
                                    670 ;------------------------------------------------------------
                                    671 ;str                       Allocated with name '_hex_to_int_str_10000_127'
                                    672 ;i                         Allocated with name '_hex_to_int_i_10000_128'
                                    673 ;result                    Allocated with name '_hex_to_int_result_10000_128'
                                    674 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_129'
                                    675 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    676 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    677 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    678 ;------------------------------------------------------------
                                    679 ;	main.c:23: int hex_to_int(char* str)
                                    680 ;	-----------------------------------------
                                    681 ;	 function hex_to_int
                                    682 ;	-----------------------------------------
      002AD9                        683 _hex_to_int:
                           000007   684 	ar7 = 0x07
                           000006   685 	ar6 = 0x06
                           000005   686 	ar5 = 0x05
                           000004   687 	ar4 = 0x04
                           000003   688 	ar3 = 0x03
                           000002   689 	ar2 = 0x02
                           000001   690 	ar1 = 0x01
                           000000   691 	ar0 = 0x00
      002AD9 AF F0            [24]  692 	mov	r7,b
      002ADB AE 83            [24]  693 	mov	r6,dph
      002ADD E5 82            [12]  694 	mov	a,dpl
      002ADF 90 01 56         [24]  695 	mov	dptr,#_hex_to_int_str_10000_127
      002AE2 F0               [24]  696 	movx	@dptr,a
      002AE3 EE               [12]  697 	mov	a,r6
      002AE4 A3               [24]  698 	inc	dptr
      002AE5 F0               [24]  699 	movx	@dptr,a
      002AE6 EF               [12]  700 	mov	a,r7
      002AE7 A3               [24]  701 	inc	dptr
      002AE8 F0               [24]  702 	movx	@dptr,a
                                    703 ;	main.c:26: int i = 0, result = 0;
      002AE9 90 01 59         [24]  704 	mov	dptr,#_hex_to_int_result_10000_128
      002AEC E4               [12]  705 	clr	a
      002AED F0               [24]  706 	movx	@dptr,a
      002AEE A3               [24]  707 	inc	dptr
      002AEF F0               [24]  708 	movx	@dptr,a
                                    709 ;	main.c:27: while(str[i] != '\0')
      002AF0 90 01 56         [24]  710 	mov	dptr,#_hex_to_int_str_10000_127
      002AF3 E0               [24]  711 	movx	a,@dptr
      002AF4 FD               [12]  712 	mov	r5,a
      002AF5 A3               [24]  713 	inc	dptr
      002AF6 E0               [24]  714 	movx	a,@dptr
      002AF7 FE               [12]  715 	mov	r6,a
      002AF8 A3               [24]  716 	inc	dptr
      002AF9 E0               [24]  717 	movx	a,@dptr
      002AFA FF               [12]  718 	mov	r7,a
      002AFB 8D 02            [24]  719 	mov	ar2,r5
      002AFD 8E 03            [24]  720 	mov	ar3,r6
      002AFF 8F 04            [24]  721 	mov	ar4,r7
      002B01 8D 39            [24]  722 	mov	_hex_to_int_sloc0_1_0,r5
      002B03 8E 3A            [24]  723 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      002B05 8F 3B            [24]  724 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      002B07 78 00            [12]  725 	mov	r0,#0x00
      002B09 79 00            [12]  726 	mov	r1,#0x00
      002B0B                        727 00112$:
      002B0B C0 02            [24]  728 	push	ar2
      002B0D C0 03            [24]  729 	push	ar3
      002B0F C0 04            [24]  730 	push	ar4
      002B11 E8               [12]  731 	mov	a,r0
      002B12 25 39            [12]  732 	add	a, _hex_to_int_sloc0_1_0
      002B14 FA               [12]  733 	mov	r2,a
      002B15 E9               [12]  734 	mov	a,r1
      002B16 35 3A            [12]  735 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      002B18 FB               [12]  736 	mov	r3,a
      002B19 AC 3B            [24]  737 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      002B1B 8A 82            [24]  738 	mov	dpl,r2
      002B1D 8B 83            [24]  739 	mov	dph,r3
      002B1F 8C F0            [24]  740 	mov	b,r4
      002B21 12 5E E3         [24]  741 	lcall	__gptrget
      002B24 F5 3C            [12]  742 	mov	_hex_to_int_sloc1_1_0,a
      002B26 D0 04            [24]  743 	pop	ar4
      002B28 D0 03            [24]  744 	pop	ar3
      002B2A D0 02            [24]  745 	pop	ar2
      002B2C E5 3C            [12]  746 	mov	a,_hex_to_int_sloc1_1_0
      002B2E 70 03            [24]  747 	jnz	00166$
      002B30 02 2C 87         [24]  748 	ljmp	00114$
      002B33                        749 00166$:
                                    750 ;	main.c:29: int ASCII = (int)str[i];
      002B33 C0 02            [24]  751 	push	ar2
      002B35 C0 03            [24]  752 	push	ar3
      002B37 C0 04            [24]  753 	push	ar4
      002B39 85 3C 3D         [24]  754 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      002B3C 75 3E 00         [24]  755 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      002B3F 90 01 5B         [24]  756 	mov	dptr,#_hex_to_int_ASCII_20000_129
      002B42 E5 3D            [12]  757 	mov	a,_hex_to_int_sloc2_1_0
      002B44 F0               [24]  758 	movx	@dptr,a
      002B45 E5 3E            [12]  759 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B47 A3               [24]  760 	inc	dptr
      002B48 F0               [24]  761 	movx	@dptr,a
                                    762 ;	main.c:30: result *= 16;
      002B49 90 01 59         [24]  763 	mov	dptr,#_hex_to_int_result_10000_128
      002B4C E0               [24]  764 	movx	a,@dptr
      002B4D FB               [12]  765 	mov	r3,a
      002B4E A3               [24]  766 	inc	dptr
      002B4F E0               [24]  767 	movx	a,@dptr
      002B50 C4               [12]  768 	swap	a
      002B51 54 F0            [12]  769 	anl	a,#0xf0
      002B53 CB               [12]  770 	xch	a,r3
      002B54 C4               [12]  771 	swap	a
      002B55 CB               [12]  772 	xch	a,r3
      002B56 6B               [12]  773 	xrl	a,r3
      002B57 CB               [12]  774 	xch	a,r3
      002B58 54 F0            [12]  775 	anl	a,#0xf0
      002B5A CB               [12]  776 	xch	a,r3
      002B5B 6B               [12]  777 	xrl	a,r3
      002B5C FC               [12]  778 	mov	r4,a
      002B5D 90 01 59         [24]  779 	mov	dptr,#_hex_to_int_result_10000_128
      002B60 EB               [12]  780 	mov	a,r3
      002B61 F0               [24]  781 	movx	@dptr,a
      002B62 EC               [12]  782 	mov	a,r4
      002B63 A3               [24]  783 	inc	dptr
      002B64 F0               [24]  784 	movx	@dptr,a
                                    785 ;	main.c:31: if(ASCII >= '0' && ASCII <= '9')
      002B65 C3               [12]  786 	clr	c
      002B66 E5 3D            [12]  787 	mov	a,_hex_to_int_sloc2_1_0
      002B68 94 30            [12]  788 	subb	a,#0x30
      002B6A E5 3E            [12]  789 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B6C 64 80            [12]  790 	xrl	a,#0x80
      002B6E 94 80            [12]  791 	subb	a,#0x80
      002B70 D0 04            [24]  792 	pop	ar4
      002B72 D0 03            [24]  793 	pop	ar3
      002B74 D0 02            [24]  794 	pop	ar2
      002B76 40 3F            [24]  795 	jc	00109$
      002B78 74 39            [12]  796 	mov	a,#0x39
      002B7A 95 3D            [12]  797 	subb	a,_hex_to_int_sloc2_1_0
      002B7C 74 80            [12]  798 	mov	a,#(0x00 ^ 0x80)
      002B7E 85 3E F0         [24]  799 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002B81 63 F0 80         [24]  800 	xrl	b,#0x80
      002B84 95 F0            [12]  801 	subb	a,b
      002B86 40 2F            [24]  802 	jc	00109$
                                    803 ;	main.c:33: result += str[i] - 48;
      002B88 C0 02            [24]  804 	push	ar2
      002B8A C0 03            [24]  805 	push	ar3
      002B8C C0 04            [24]  806 	push	ar4
      002B8E E5 3D            [12]  807 	mov	a,_hex_to_int_sloc2_1_0
      002B90 24 D0            [12]  808 	add	a,#0xd0
      002B92 F5 3D            [12]  809 	mov	_hex_to_int_sloc2_1_0,a
      002B94 E5 3E            [12]  810 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002B96 34 FF            [12]  811 	addc	a,#0xff
      002B98 F5 3E            [12]  812 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002B9A 90 01 59         [24]  813 	mov	dptr,#_hex_to_int_result_10000_128
      002B9D E0               [24]  814 	movx	a,@dptr
      002B9E FA               [12]  815 	mov	r2,a
      002B9F A3               [24]  816 	inc	dptr
      002BA0 E0               [24]  817 	movx	a,@dptr
      002BA1 FC               [12]  818 	mov	r4,a
      002BA2 90 01 59         [24]  819 	mov	dptr,#_hex_to_int_result_10000_128
      002BA5 E5 3D            [12]  820 	mov	a,_hex_to_int_sloc2_1_0
      002BA7 2A               [12]  821 	add	a, r2
      002BA8 F0               [24]  822 	movx	@dptr,a
      002BA9 E5 3E            [12]  823 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BAB 3C               [12]  824 	addc	a, r4
      002BAC A3               [24]  825 	inc	dptr
      002BAD F0               [24]  826 	movx	@dptr,a
      002BAE D0 04            [24]  827 	pop	ar4
      002BB0 D0 03            [24]  828 	pop	ar3
      002BB2 D0 02            [24]  829 	pop	ar2
      002BB4 02 2C 7F         [24]  830 	ljmp	00110$
      002BB7                        831 00109$:
                                    832 ;	main.c:35: else if(ASCII >= 'A' && ASCII <= 'F')
      002BB7 90 01 5B         [24]  833 	mov	dptr,#_hex_to_int_ASCII_20000_129
      002BBA E0               [24]  834 	movx	a,@dptr
      002BBB F5 3D            [12]  835 	mov	_hex_to_int_sloc2_1_0,a
      002BBD A3               [24]  836 	inc	dptr
      002BBE E0               [24]  837 	movx	a,@dptr
      002BBF F5 3E            [12]  838 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002BC1 C3               [12]  839 	clr	c
      002BC2 E5 3D            [12]  840 	mov	a,_hex_to_int_sloc2_1_0
      002BC4 94 41            [12]  841 	subb	a,#0x41
      002BC6 E5 3E            [12]  842 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002BC8 64 80            [12]  843 	xrl	a,#0x80
      002BCA 94 80            [12]  844 	subb	a,#0x80
      002BCC 40 4E            [24]  845 	jc	00105$
      002BCE 74 46            [12]  846 	mov	a,#0x46
      002BD0 95 3D            [12]  847 	subb	a,_hex_to_int_sloc2_1_0
      002BD2 74 80            [12]  848 	mov	a,#(0x00 ^ 0x80)
      002BD4 85 3E F0         [24]  849 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002BD7 63 F0 80         [24]  850 	xrl	b,#0x80
      002BDA 95 F0            [12]  851 	subb	a,b
      002BDC 40 3E            [24]  852 	jc	00105$
                                    853 ;	main.c:37: result += str[i] - 55;
      002BDE C0 05            [24]  854 	push	ar5
      002BE0 C0 06            [24]  855 	push	ar6
      002BE2 C0 07            [24]  856 	push	ar7
      002BE4 E8               [12]  857 	mov	a,r0
      002BE5 2A               [12]  858 	add	a, r2
      002BE6 FD               [12]  859 	mov	r5,a
      002BE7 E9               [12]  860 	mov	a,r1
      002BE8 3B               [12]  861 	addc	a, r3
      002BE9 FE               [12]  862 	mov	r6,a
      002BEA 8C 07            [24]  863 	mov	ar7,r4
      002BEC 8D 82            [24]  864 	mov	dpl,r5
      002BEE 8E 83            [24]  865 	mov	dph,r6
      002BF0 8F F0            [24]  866 	mov	b,r7
      002BF2 12 5E E3         [24]  867 	lcall	__gptrget
      002BF5 7F 00            [12]  868 	mov	r7,#0x00
      002BF7 24 C9            [12]  869 	add	a,#0xc9
      002BF9 F5 3D            [12]  870 	mov	_hex_to_int_sloc2_1_0,a
      002BFB EF               [12]  871 	mov	a,r7
      002BFC 34 FF            [12]  872 	addc	a,#0xff
      002BFE F5 3E            [12]  873 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C00 90 01 59         [24]  874 	mov	dptr,#_hex_to_int_result_10000_128
      002C03 E0               [24]  875 	movx	a,@dptr
      002C04 FE               [12]  876 	mov	r6,a
      002C05 A3               [24]  877 	inc	dptr
      002C06 E0               [24]  878 	movx	a,@dptr
      002C07 FF               [12]  879 	mov	r7,a
      002C08 90 01 59         [24]  880 	mov	dptr,#_hex_to_int_result_10000_128
      002C0B E5 3D            [12]  881 	mov	a,_hex_to_int_sloc2_1_0
      002C0D 2E               [12]  882 	add	a, r6
      002C0E F0               [24]  883 	movx	@dptr,a
      002C0F E5 3E            [12]  884 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C11 3F               [12]  885 	addc	a, r7
      002C12 A3               [24]  886 	inc	dptr
      002C13 F0               [24]  887 	movx	@dptr,a
      002C14 D0 07            [24]  888 	pop	ar7
      002C16 D0 06            [24]  889 	pop	ar6
      002C18 D0 05            [24]  890 	pop	ar5
      002C1A 80 63            [24]  891 	sjmp	00110$
      002C1C                        892 00105$:
                                    893 ;	main.c:39: else if(ASCII >= 'a' && ASCII <= 'f')
      002C1C 90 01 5B         [24]  894 	mov	dptr,#_hex_to_int_ASCII_20000_129
      002C1F E0               [24]  895 	movx	a,@dptr
      002C20 F5 3D            [12]  896 	mov	_hex_to_int_sloc2_1_0,a
      002C22 A3               [24]  897 	inc	dptr
      002C23 E0               [24]  898 	movx	a,@dptr
      002C24 F5 3E            [12]  899 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C26 C3               [12]  900 	clr	c
      002C27 E5 3D            [12]  901 	mov	a,_hex_to_int_sloc2_1_0
      002C29 94 61            [12]  902 	subb	a,#0x61
      002C2B E5 3E            [12]  903 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C2D 64 80            [12]  904 	xrl	a,#0x80
      002C2F 94 80            [12]  905 	subb	a,#0x80
      002C31 40 4C            [24]  906 	jc	00110$
      002C33 74 66            [12]  907 	mov	a,#0x66
      002C35 95 3D            [12]  908 	subb	a,_hex_to_int_sloc2_1_0
      002C37 74 80            [12]  909 	mov	a,#(0x00 ^ 0x80)
      002C39 85 3E F0         [24]  910 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002C3C 63 F0 80         [24]  911 	xrl	b,#0x80
      002C3F 95 F0            [12]  912 	subb	a,b
      002C41 40 3C            [24]  913 	jc	00110$
                                    914 ;	main.c:41: result += str[i] - 87;
      002C43 C0 02            [24]  915 	push	ar2
      002C45 C0 03            [24]  916 	push	ar3
      002C47 C0 04            [24]  917 	push	ar4
      002C49 E8               [12]  918 	mov	a,r0
      002C4A 2D               [12]  919 	add	a, r5
      002C4B FA               [12]  920 	mov	r2,a
      002C4C E9               [12]  921 	mov	a,r1
      002C4D 3E               [12]  922 	addc	a, r6
      002C4E FB               [12]  923 	mov	r3,a
      002C4F 8F 04            [24]  924 	mov	ar4,r7
      002C51 8A 82            [24]  925 	mov	dpl,r2
      002C53 8B 83            [24]  926 	mov	dph,r3
      002C55 8C F0            [24]  927 	mov	b,r4
      002C57 12 5E E3         [24]  928 	lcall	__gptrget
      002C5A 7C 00            [12]  929 	mov	r4,#0x00
      002C5C 24 A9            [12]  930 	add	a,#0xa9
      002C5E F5 3D            [12]  931 	mov	_hex_to_int_sloc2_1_0,a
      002C60 EC               [12]  932 	mov	a,r4
      002C61 34 FF            [12]  933 	addc	a,#0xff
      002C63 F5 3E            [12]  934 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002C65 90 01 59         [24]  935 	mov	dptr,#_hex_to_int_result_10000_128
      002C68 E0               [24]  936 	movx	a,@dptr
      002C69 FB               [12]  937 	mov	r3,a
      002C6A A3               [24]  938 	inc	dptr
      002C6B E0               [24]  939 	movx	a,@dptr
      002C6C FC               [12]  940 	mov	r4,a
      002C6D 90 01 59         [24]  941 	mov	dptr,#_hex_to_int_result_10000_128
      002C70 E5 3D            [12]  942 	mov	a,_hex_to_int_sloc2_1_0
      002C72 2B               [12]  943 	add	a, r3
      002C73 F0               [24]  944 	movx	@dptr,a
      002C74 E5 3E            [12]  945 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002C76 3C               [12]  946 	addc	a, r4
      002C77 A3               [24]  947 	inc	dptr
      002C78 F0               [24]  948 	movx	@dptr,a
                                    949 ;	main.c:45: return result;
      002C79 D0 04            [24]  950 	pop	ar4
      002C7B D0 03            [24]  951 	pop	ar3
      002C7D D0 02            [24]  952 	pop	ar2
                                    953 ;	main.c:41: result += str[i] - 87;
      002C7F                        954 00110$:
                                    955 ;	main.c:43: i++;
      002C7F 08               [12]  956 	inc	r0
      002C80 B8 00 01         [24]  957 	cjne	r0,#0x00,00173$
      002C83 09               [12]  958 	inc	r1
      002C84                        959 00173$:
      002C84 02 2B 0B         [24]  960 	ljmp	00112$
      002C87                        961 00114$:
                                    962 ;	main.c:45: return result;
      002C87 90 01 59         [24]  963 	mov	dptr,#_hex_to_int_result_10000_128
      002C8A E0               [24]  964 	movx	a,@dptr
      002C8B FE               [12]  965 	mov	r6,a
      002C8C A3               [24]  966 	inc	dptr
      002C8D E0               [24]  967 	movx	a,@dptr
                                    968 ;	main.c:47: }
      002C8E 8E 82            [24]  969 	mov	dpl,r6
      002C90 F5 83            [12]  970 	mov	dph,a
      002C92 22               [24]  971 	ret
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    974 ;------------------------------------------------------------
                                    975 ;i                         Allocated with name '_get_user_buffer_size_i_10000_134'
                                    976 ;output                    Allocated with name '_get_user_buffer_size_output_10000_134'
                                    977 ;input                     Allocated with name '_get_user_buffer_size_input_10000_134'
                                    978 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_134'
                                    979 ;------------------------------------------------------------
                                    980 ;	main.c:50: int get_user_buffer_size(void)
                                    981 ;	-----------------------------------------
                                    982 ;	 function get_user_buffer_size
                                    983 ;	-----------------------------------------
      002C93                        984 _get_user_buffer_size:
                                    985 ;	main.c:56: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      002C93 7E 00            [12]  986 	mov	r6,#0x00
      002C95 7F 00            [12]  987 	mov	r7,#0x00
      002C97                        988 00103$:
      002C97 C0 07            [24]  989 	push	ar7
      002C99 C0 06            [24]  990 	push	ar6
      002C9B 12 4E 34         [24]  991 	lcall	_getchar
      002C9E AC 82            [24]  992 	mov	r4, dpl
      002CA0 D0 06            [24]  993 	pop	ar6
      002CA2 D0 07            [24]  994 	pop	ar7
      002CA4 BC 0A 02         [24]  995 	cjne	r4,#0x0a,00133$
      002CA7 80 3A            [24]  996 	sjmp	00105$
      002CA9                        997 00133$:
      002CA9 BC 0D 02         [24]  998 	cjne	r4,#0x0d,00134$
      002CAC 80 35            [24]  999 	sjmp	00105$
      002CAE                       1000 00134$:
      002CAE C3               [12] 1001 	clr	c
      002CAF EE               [12] 1002 	mov	a,r6
      002CB0 94 09            [12] 1003 	subb	a,#0x09
      002CB2 EF               [12] 1004 	mov	a,r7
      002CB3 64 80            [12] 1005 	xrl	a,#0x80
      002CB5 94 80            [12] 1006 	subb	a,#0x80
      002CB7 50 2A            [24] 1007 	jnc	00105$
                                   1008 ;	main.c:58: putchar(ch);
      002CB9 8C 03            [24] 1009 	mov	ar3,r4
      002CBB 7D 00            [12] 1010 	mov	r5,#0x00
      002CBD 8B 82            [24] 1011 	mov	dpl, r3
      002CBF 8D 83            [24] 1012 	mov	dph, r5
      002CC1 C0 07            [24] 1013 	push	ar7
      002CC3 C0 06            [24] 1014 	push	ar6
      002CC5 C0 04            [24] 1015 	push	ar4
      002CC7 12 4E 15         [24] 1016 	lcall	_putchar
      002CCA D0 04            [24] 1017 	pop	ar4
      002CCC D0 06            [24] 1018 	pop	ar6
      002CCE D0 07            [24] 1019 	pop	ar7
                                   1020 ;	main.c:59: input[i] = ch;      //Append the input array with the received character
      002CD0 EE               [12] 1021 	mov	a,r6
      002CD1 24 5D            [12] 1022 	add	a, #_get_user_buffer_size_input_10000_134
      002CD3 F5 82            [12] 1023 	mov	dpl,a
      002CD5 EF               [12] 1024 	mov	a,r7
      002CD6 34 01            [12] 1025 	addc	a, #(_get_user_buffer_size_input_10000_134 >> 8)
      002CD8 F5 83            [12] 1026 	mov	dph,a
      002CDA EC               [12] 1027 	mov	a,r4
      002CDB F0               [24] 1028 	movx	@dptr,a
                                   1029 ;	main.c:60: i++;
      002CDC 0E               [12] 1030 	inc	r6
      002CDD BE 00 B7         [24] 1031 	cjne	r6,#0x00,00103$
      002CE0 0F               [12] 1032 	inc	r7
      002CE1 80 B4            [24] 1033 	sjmp	00103$
      002CE3                       1034 00105$:
                                   1035 ;	main.c:62: input[i] = '\0';
      002CE3 EE               [12] 1036 	mov	a,r6
      002CE4 24 5D            [12] 1037 	add	a, #_get_user_buffer_size_input_10000_134
      002CE6 F5 82            [12] 1038 	mov	dpl,a
      002CE8 EF               [12] 1039 	mov	a,r7
      002CE9 34 01            [12] 1040 	addc	a, #(_get_user_buffer_size_input_10000_134 >> 8)
      002CEB F5 83            [12] 1041 	mov	dph,a
      002CED E4               [12] 1042 	clr	a
      002CEE F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	main.c:63: output = hex_to_int(input); //Convert the char hex data to int
      002CEF 90 01 5D         [24] 1045 	mov	dptr,#_get_user_buffer_size_input_10000_134
      002CF2 F5 F0            [12] 1046 	mov	b,a
      002CF4 12 2A D9         [24] 1047 	lcall	_hex_to_int
      002CF7 AE 82            [24] 1048 	mov	r6, dpl
      002CF9 AF 83            [24] 1049 	mov	r7, dph
                                   1050 ;	main.c:64: printf_tiny("\n\r");
      002CFB C0 07            [24] 1051 	push	ar7
      002CFD C0 06            [24] 1052 	push	ar6
      002CFF 74 C2            [12] 1053 	mov	a,#___str_0
      002D01 C0 E0            [24] 1054 	push	acc
      002D03 74 60            [12] 1055 	mov	a,#(___str_0 >> 8)
      002D05 C0 E0            [24] 1056 	push	acc
      002D07 12 50 C6         [24] 1057 	lcall	_printf_tiny
      002D0A 15 81            [12] 1058 	dec	sp
      002D0C 15 81            [12] 1059 	dec	sp
      002D0E D0 06            [24] 1060 	pop	ar6
      002D10 D0 07            [24] 1061 	pop	ar7
                                   1062 ;	main.c:66: return output;
      002D12 8E 82            [24] 1063 	mov	dpl, r6
      002D14 8F 83            [24] 1064 	mov	dph, r7
                                   1065 ;	main.c:67: }
      002D16 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'main'
                                   1069 ;------------------------------------------------------------
                                   1070 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   1071 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   1072 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                   1073 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                   1074 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                   1075 ;sloc5                     Allocated with name '_main_sloc5_1_0'
                                   1076 ;device_mac                Allocated with name '_main_device_mac_10000_137'
                                   1077 ;target_mac                Allocated with name '_main_target_mac_10000_137'
                                   1078 ;device_ip                 Allocated with name '_main_device_ip_10000_137'
                                   1079 ;target_ip                 Allocated with name '_main_target_ip_10000_137'
                                   1080 ;c                         Allocated with name '_main_c_20001_139'
                                   1081 ;reg_bank                  Allocated with name '_main_reg_bank_40002_142'
                                   1082 ;addr                      Allocated with name '_main_addr_40003_143'
                                   1083 ;data                      Allocated with name '_main_data_40004_144'
                                   1084 ;num_bytes                 Allocated with name '_main_num_bytes_40002_146'
                                   1085 ;start_address             Allocated with name '_main_start_address_40003_147'
                                   1086 ;buffer                    Allocated with name '_main_buffer_40003_147'
                                   1087 ;i                         Allocated with name '_main_i_50003_148'
                                   1088 ;num_bytes                 Allocated with name '_main_num_bytes_40002_151'
                                   1089 ;start_address             Allocated with name '_main_start_address_40003_152'
                                   1090 ;buffer                    Allocated with name '_main_buffer_40003_152'
                                   1091 ;reg_bank                  Allocated with name '_main_reg_bank_40002_154'
                                   1092 ;addr                      Allocated with name '_main_addr_40003_155'
                                   1093 ;data                      Allocated with name '_main_data_40003_155'
                                   1094 ;addr                      Allocated with name '_main_addr_40002_157'
                                   1095 ;data                      Allocated with name '_main_data_40003_158'
                                   1096 ;addr                      Allocated with name '_main_addr_40002_160'
                                   1097 ;data                      Allocated with name '_main_data_40002_160'
                                   1098 ;addr                      Allocated with name '_main_addr_40002_163'
                                   1099 ;bank                      Allocated with name '_main_bank_40003_164'
                                   1100 ;data                      Allocated with name '_main_data_40003_164'
                                   1101 ;nextPacket                Allocated with name '_main_nextPacket_60001_168'
                                   1102 ;byteCount                 Allocated with name '_main_byteCount_60001_168'
                                   1103 ;status                    Allocated with name '_main_status_60001_168'
                                   1104 ;gNextPacketPtr            Allocated with name '_main_gNextPacketPtr_60001_168'
                                   1105 ;len                       Allocated with name '_main_len_60001_168'
                                   1106 ;packet_data               Allocated with name '_main_packet_data_60002_171'
                                   1107 ;packet_data_actual        Allocated with name '_main_packet_data_actual_60003_172'
                                   1108 ;is_tcp_for_target         Allocated with name '_main_is_tcp_for_target_60004_173'
                                   1109 ;response_size             Allocated with name '_main_response_size_70004_177'
                                   1110 ;response                  Allocated with name '_main_response_70004_177'
                                   1111 ;read_econ2                Allocated with name '_main_read_econ2_60005_181'
                                   1112 ;i                         Allocated with name '_main_i_50001_184'
                                   1113 ;read_econ2                Allocated with name '_main_read_econ2_40002_187'
                                   1114 ;------------------------------------------------------------
                                   1115 ;	main.c:69: void main(void)
                                   1116 ;	-----------------------------------------
                                   1117 ;	 function main
                                   1118 ;	-----------------------------------------
      002D17                       1119 _main:
                                   1120 ;	main.c:71: uint8_t device_mac[6] = { 0x02, 0x11, 0x22, 0x33, 0x44, 0x55 }; // Default MAC
      002D17 90 01 67         [24] 1121 	mov	dptr,#_main_device_mac_10000_137
      002D1A 74 02            [12] 1122 	mov	a,#0x02
      002D1C F0               [24] 1123 	movx	@dptr,a
      002D1D 90 01 68         [24] 1124 	mov	dptr,#(_main_device_mac_10000_137 + 0x0001)
      002D20 74 11            [12] 1125 	mov	a,#0x11
      002D22 F0               [24] 1126 	movx	@dptr,a
      002D23 90 01 69         [24] 1127 	mov	dptr,#(_main_device_mac_10000_137 + 0x0002)
      002D26 23               [12] 1128 	rl	a
      002D27 F0               [24] 1129 	movx	@dptr,a
      002D28 90 01 6A         [24] 1130 	mov	dptr,#(_main_device_mac_10000_137 + 0x0003)
      002D2B 74 33            [12] 1131 	mov	a,#0x33
      002D2D F0               [24] 1132 	movx	@dptr,a
      002D2E 90 01 6B         [24] 1133 	mov	dptr,#(_main_device_mac_10000_137 + 0x0004)
      002D31 74 44            [12] 1134 	mov	a,#0x44
      002D33 F0               [24] 1135 	movx	@dptr,a
      002D34 90 01 6C         [24] 1136 	mov	dptr,#(_main_device_mac_10000_137 + 0x0005)
      002D37 74 55            [12] 1137 	mov	a,#0x55
      002D39 F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	main.c:72: uint8_t target_mac[6] = { 0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31 }; // Default MAC
      002D3A 90 01 6D         [24] 1140 	mov	dptr,#_main_target_mac_10000_137
      002D3D 74 F8            [12] 1141 	mov	a,#0xf8
      002D3F F0               [24] 1142 	movx	@dptr,a
      002D40 90 01 6E         [24] 1143 	mov	dptr,#(_main_target_mac_10000_137 + 0x0001)
      002D43 74 75            [12] 1144 	mov	a,#0x75
      002D45 F0               [24] 1145 	movx	@dptr,a
      002D46 90 01 6F         [24] 1146 	mov	dptr,#(_main_target_mac_10000_137 + 0x0002)
      002D49 74 A4            [12] 1147 	mov	a,#0xa4
      002D4B F0               [24] 1148 	movx	@dptr,a
      002D4C 90 01 70         [24] 1149 	mov	dptr,#(_main_target_mac_10000_137 + 0x0003)
      002D4F 74 8C            [12] 1150 	mov	a,#0x8c
      002D51 F0               [24] 1151 	movx	@dptr,a
      002D52 90 01 71         [24] 1152 	mov	dptr,#(_main_target_mac_10000_137 + 0x0004)
      002D55 74 41            [12] 1153 	mov	a,#0x41
      002D57 F0               [24] 1154 	movx	@dptr,a
      002D58 90 01 72         [24] 1155 	mov	dptr,#(_main_target_mac_10000_137 + 0x0005)
      002D5B 74 31            [12] 1156 	mov	a,#0x31
      002D5D F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	main.c:73: uint8_t device_ip[4] = { 192, 168, 1, 100 }; // Default IP Address
      002D5E 90 01 73         [24] 1159 	mov	dptr,#_main_device_ip_10000_137
      002D61 74 C0            [12] 1160 	mov	a,#0xc0
      002D63 F0               [24] 1161 	movx	@dptr,a
      002D64 90 01 74         [24] 1162 	mov	dptr,#(_main_device_ip_10000_137 + 0x0001)
      002D67 74 A8            [12] 1163 	mov	a,#0xa8
      002D69 F0               [24] 1164 	movx	@dptr,a
      002D6A 90 01 75         [24] 1165 	mov	dptr,#(_main_device_ip_10000_137 + 0x0002)
      002D6D 74 01            [12] 1166 	mov	a,#0x01
      002D6F F0               [24] 1167 	movx	@dptr,a
      002D70 90 01 76         [24] 1168 	mov	dptr,#(_main_device_ip_10000_137 + 0x0003)
      002D73 74 64            [12] 1169 	mov	a,#0x64
      002D75 F0               [24] 1170 	movx	@dptr,a
                                   1171 ;	main.c:74: uint8_t target_ip[4] = { 192, 168, 1, 1 };
      002D76 90 01 77         [24] 1172 	mov	dptr,#_main_target_ip_10000_137
      002D79 74 C0            [12] 1173 	mov	a,#0xc0
      002D7B F0               [24] 1174 	movx	@dptr,a
      002D7C 90 01 78         [24] 1175 	mov	dptr,#(_main_target_ip_10000_137 + 0x0001)
      002D7F 74 A8            [12] 1176 	mov	a,#0xa8
      002D81 F0               [24] 1177 	movx	@dptr,a
      002D82 90 01 79         [24] 1178 	mov	dptr,#(_main_target_ip_10000_137 + 0x0002)
      002D85 74 01            [12] 1179 	mov	a,#0x01
      002D87 F0               [24] 1180 	movx	@dptr,a
      002D88 90 01 7A         [24] 1181 	mov	dptr,#(_main_target_ip_10000_137 + 0x0003)
      002D8B F0               [24] 1182 	movx	@dptr,a
                                   1183 ;	main.c:76: printf("SPI Operations on 8051\n\r");
      002D8C 74 C5            [12] 1184 	mov	a,#___str_1
      002D8E C0 E0            [24] 1185 	push	acc
      002D90 74 60            [12] 1186 	mov	a,#(___str_1 >> 8)
      002D92 C0 E0            [24] 1187 	push	acc
      002D94 74 80            [12] 1188 	mov	a,#0x80
      002D96 C0 E0            [24] 1189 	push	acc
      002D98 12 54 C1         [24] 1190 	lcall	_printf
      002D9B 15 81            [12] 1191 	dec	sp
      002D9D 15 81            [12] 1192 	dec	sp
      002D9F 15 81            [12] 1193 	dec	sp
                                   1194 ;	main.c:77: configure_SPI();
      002DA1 12 39 81         [24] 1195 	lcall	_configure_SPI
                                   1196 ;	main.c:79: enc_init(device_mac);
      002DA4 90 01 67         [24] 1197 	mov	dptr,#_main_device_mac_10000_137
      002DA7 75 F0 00         [24] 1198 	mov	b, #0x00
      002DAA 12 26 84         [24] 1199 	lcall	_enc_init
                                   1200 ;	main.c:81: while(1)
      002DAD                       1201 00142$:
                                   1202 ;	main.c:83: printf("\n\rChoose an action: \n\r");
      002DAD 74 DE            [12] 1203 	mov	a,#___str_2
      002DAF C0 E0            [24] 1204 	push	acc
      002DB1 74 60            [12] 1205 	mov	a,#(___str_2 >> 8)
      002DB3 C0 E0            [24] 1206 	push	acc
      002DB5 74 80            [12] 1207 	mov	a,#0x80
      002DB7 C0 E0            [24] 1208 	push	acc
      002DB9 12 54 C1         [24] 1209 	lcall	_printf
      002DBC 15 81            [12] 1210 	dec	sp
      002DBE 15 81            [12] 1211 	dec	sp
      002DC0 15 81            [12] 1212 	dec	sp
                                   1213 ;	main.c:84: printf("1 --> Control Write\n\r");
      002DC2 74 F5            [12] 1214 	mov	a,#___str_3
      002DC4 C0 E0            [24] 1215 	push	acc
      002DC6 74 60            [12] 1216 	mov	a,#(___str_3 >> 8)
      002DC8 C0 E0            [24] 1217 	push	acc
      002DCA 74 80            [12] 1218 	mov	a,#0x80
      002DCC C0 E0            [24] 1219 	push	acc
      002DCE 12 54 C1         [24] 1220 	lcall	_printf
      002DD1 15 81            [12] 1221 	dec	sp
      002DD3 15 81            [12] 1222 	dec	sp
      002DD5 15 81            [12] 1223 	dec	sp
                                   1224 ;	main.c:85: printf("2 --> Buffer Write\n\r");
      002DD7 74 0B            [12] 1225 	mov	a,#___str_4
      002DD9 C0 E0            [24] 1226 	push	acc
      002DDB 74 61            [12] 1227 	mov	a,#(___str_4 >> 8)
      002DDD C0 E0            [24] 1228 	push	acc
      002DDF 74 80            [12] 1229 	mov	a,#0x80
      002DE1 C0 E0            [24] 1230 	push	acc
      002DE3 12 54 C1         [24] 1231 	lcall	_printf
      002DE6 15 81            [12] 1232 	dec	sp
      002DE8 15 81            [12] 1233 	dec	sp
      002DEA 15 81            [12] 1234 	dec	sp
                                   1235 ;	main.c:86: printf("3 --> Buffer Read\n\r");
      002DEC 74 20            [12] 1236 	mov	a,#___str_5
      002DEE C0 E0            [24] 1237 	push	acc
      002DF0 74 61            [12] 1238 	mov	a,#(___str_5 >> 8)
      002DF2 C0 E0            [24] 1239 	push	acc
      002DF4 74 80            [12] 1240 	mov	a,#0x80
      002DF6 C0 E0            [24] 1241 	push	acc
      002DF8 12 54 C1         [24] 1242 	lcall	_printf
      002DFB 15 81            [12] 1243 	dec	sp
      002DFD 15 81            [12] 1244 	dec	sp
      002DFF 15 81            [12] 1245 	dec	sp
                                   1246 ;	main.c:87: printf("4 --> MAC Register Read\n\r");
      002E01 74 34            [12] 1247 	mov	a,#___str_6
      002E03 C0 E0            [24] 1248 	push	acc
      002E05 74 61            [12] 1249 	mov	a,#(___str_6 >> 8)
      002E07 C0 E0            [24] 1250 	push	acc
      002E09 74 80            [12] 1251 	mov	a,#0x80
      002E0B C0 E0            [24] 1252 	push	acc
      002E0D 12 54 C1         [24] 1253 	lcall	_printf
      002E10 15 81            [12] 1254 	dec	sp
      002E12 15 81            [12] 1255 	dec	sp
      002E14 15 81            [12] 1256 	dec	sp
                                   1257 ;	main.c:88: printf("5 --> PHY SPI Write\n\r");
      002E16 74 4E            [12] 1258 	mov	a,#___str_7
      002E18 C0 E0            [24] 1259 	push	acc
      002E1A 74 61            [12] 1260 	mov	a,#(___str_7 >> 8)
      002E1C C0 E0            [24] 1261 	push	acc
      002E1E 74 80            [12] 1262 	mov	a,#0x80
      002E20 C0 E0            [24] 1263 	push	acc
      002E22 12 54 C1         [24] 1264 	lcall	_printf
      002E25 15 81            [12] 1265 	dec	sp
      002E27 15 81            [12] 1266 	dec	sp
      002E29 15 81            [12] 1267 	dec	sp
                                   1268 ;	main.c:89: printf("6 --> PHY SPI Read\n\r");
      002E2B 74 64            [12] 1269 	mov	a,#___str_8
      002E2D C0 E0            [24] 1270 	push	acc
      002E2F 74 61            [12] 1271 	mov	a,#(___str_8 >> 8)
      002E31 C0 E0            [24] 1272 	push	acc
      002E33 74 80            [12] 1273 	mov	a,#0x80
      002E35 C0 E0            [24] 1274 	push	acc
      002E37 12 54 C1         [24] 1275 	lcall	_printf
      002E3A 15 81            [12] 1276 	dec	sp
      002E3C 15 81            [12] 1277 	dec	sp
      002E3E 15 81            [12] 1278 	dec	sp
                                   1279 ;	main.c:90: printf("7 --> ENC Reset\n\r");
      002E40 74 79            [12] 1280 	mov	a,#___str_9
      002E42 C0 E0            [24] 1281 	push	acc
      002E44 74 61            [12] 1282 	mov	a,#(___str_9 >> 8)
      002E46 C0 E0            [24] 1283 	push	acc
      002E48 74 80            [12] 1284 	mov	a,#0x80
      002E4A C0 E0            [24] 1285 	push	acc
      002E4C 12 54 C1         [24] 1286 	lcall	_printf
      002E4F 15 81            [12] 1287 	dec	sp
      002E51 15 81            [12] 1288 	dec	sp
      002E53 15 81            [12] 1289 	dec	sp
                                   1290 ;	main.c:91: printf("8 --> Read ETH Register\n\r");
      002E55 74 8B            [12] 1291 	mov	a,#___str_10
      002E57 C0 E0            [24] 1292 	push	acc
      002E59 74 61            [12] 1293 	mov	a,#(___str_10 >> 8)
      002E5B C0 E0            [24] 1294 	push	acc
      002E5D 74 80            [12] 1295 	mov	a,#0x80
      002E5F C0 E0            [24] 1296 	push	acc
      002E61 12 54 C1         [24] 1297 	lcall	_printf
      002E64 15 81            [12] 1298 	dec	sp
      002E66 15 81            [12] 1299 	dec	sp
      002E68 15 81            [12] 1300 	dec	sp
                                   1301 ;	main.c:92: printf("9 --> Display Menu\n\r");
      002E6A 74 A5            [12] 1302 	mov	a,#___str_11
      002E6C C0 E0            [24] 1303 	push	acc
      002E6E 74 61            [12] 1304 	mov	a,#(___str_11 >> 8)
      002E70 C0 E0            [24] 1305 	push	acc
      002E72 74 80            [12] 1306 	mov	a,#0x80
      002E74 C0 E0            [24] 1307 	push	acc
      002E76 12 54 C1         [24] 1308 	lcall	_printf
      002E79 15 81            [12] 1309 	dec	sp
      002E7B 15 81            [12] 1310 	dec	sp
      002E7D 15 81            [12] 1311 	dec	sp
                                   1312 ;	main.c:93: printf("A --> Send ARP Request\n\r");
      002E7F 74 BA            [12] 1313 	mov	a,#___str_12
      002E81 C0 E0            [24] 1314 	push	acc
      002E83 74 61            [12] 1315 	mov	a,#(___str_12 >> 8)
      002E85 C0 E0            [24] 1316 	push	acc
      002E87 74 80            [12] 1317 	mov	a,#0x80
      002E89 C0 E0            [24] 1318 	push	acc
      002E8B 12 54 C1         [24] 1319 	lcall	_printf
      002E8E 15 81            [12] 1320 	dec	sp
      002E90 15 81            [12] 1321 	dec	sp
      002E92 15 81            [12] 1322 	dec	sp
                                   1323 ;	main.c:94: printf("B --> Init RX buffers\n\r");
      002E94 74 D3            [12] 1324 	mov	a,#___str_13
      002E96 C0 E0            [24] 1325 	push	acc
      002E98 74 61            [12] 1326 	mov	a,#(___str_13 >> 8)
      002E9A C0 E0            [24] 1327 	push	acc
      002E9C 74 80            [12] 1328 	mov	a,#0x80
      002E9E C0 E0            [24] 1329 	push	acc
      002EA0 12 54 C1         [24] 1330 	lcall	_printf
      002EA3 15 81            [12] 1331 	dec	sp
      002EA5 15 81            [12] 1332 	dec	sp
      002EA7 15 81            [12] 1333 	dec	sp
                                   1334 ;	main.c:95: printf("C --> Hard Reset(nRESET pin)\n\r");
      002EA9 74 EB            [12] 1335 	mov	a,#___str_14
      002EAB C0 E0            [24] 1336 	push	acc
      002EAD 74 61            [12] 1337 	mov	a,#(___str_14 >> 8)
      002EAF C0 E0            [24] 1338 	push	acc
      002EB1 74 80            [12] 1339 	mov	a,#0x80
      002EB3 C0 E0            [24] 1340 	push	acc
      002EB5 12 54 C1         [24] 1341 	lcall	_printf
      002EB8 15 81            [12] 1342 	dec	sp
      002EBA 15 81            [12] 1343 	dec	sp
      002EBC 15 81            [12] 1344 	dec	sp
                                   1345 ;	main.c:96: printf("D --> Process TCP\n\r");
      002EBE 74 0A            [12] 1346 	mov	a,#___str_15
      002EC0 C0 E0            [24] 1347 	push	acc
      002EC2 74 62            [12] 1348 	mov	a,#(___str_15 >> 8)
      002EC4 C0 E0            [24] 1349 	push	acc
      002EC6 74 80            [12] 1350 	mov	a,#0x80
      002EC8 C0 E0            [24] 1351 	push	acc
      002ECA 12 54 C1         [24] 1352 	lcall	_printf
      002ECD 15 81            [12] 1353 	dec	sp
      002ECF 15 81            [12] 1354 	dec	sp
      002ED1 15 81            [12] 1355 	dec	sp
                                   1356 ;	main.c:97: printf("E --> Enable TX interrupt\n\r");
      002ED3 74 1E            [12] 1357 	mov	a,#___str_16
      002ED5 C0 E0            [24] 1358 	push	acc
      002ED7 74 62            [12] 1359 	mov	a,#(___str_16 >> 8)
      002ED9 C0 E0            [24] 1360 	push	acc
      002EDB 74 80            [12] 1361 	mov	a,#0x80
      002EDD C0 E0            [24] 1362 	push	acc
      002EDF 12 54 C1         [24] 1363 	lcall	_printf
      002EE2 15 81            [12] 1364 	dec	sp
      002EE4 15 81            [12] 1365 	dec	sp
      002EE6 15 81            [12] 1366 	dec	sp
                                   1367 ;	main.c:98: printf("F --> Disabling TX interrupt\n\r");
      002EE8 74 3A            [12] 1368 	mov	a,#___str_17
      002EEA C0 E0            [24] 1369 	push	acc
      002EEC 74 62            [12] 1370 	mov	a,#(___str_17 >> 8)
      002EEE C0 E0            [24] 1371 	push	acc
      002EF0 74 80            [12] 1372 	mov	a,#0x80
      002EF2 C0 E0            [24] 1373 	push	acc
      002EF4 12 54 C1         [24] 1374 	lcall	_printf
      002EF7 15 81            [12] 1375 	dec	sp
      002EF9 15 81            [12] 1376 	dec	sp
      002EFB 15 81            [12] 1377 	dec	sp
                                   1378 ;	main.c:100: char c = getchar();
      002EFD 12 4E 34         [24] 1379 	lcall	_getchar
      002F00 AE 82            [24] 1380 	mov	r6, dpl
                                   1381 ;	main.c:101: putchar(c);
      002F02 8E 05            [24] 1382 	mov	ar5,r6
      002F04 7F 00            [12] 1383 	mov	r7,#0x00
      002F06 8D 82            [24] 1384 	mov	dpl, r5
      002F08 8F 83            [24] 1385 	mov	dph, r7
      002F0A C0 06            [24] 1386 	push	ar6
      002F0C 12 4E 15         [24] 1387 	lcall	_putchar
                                   1388 ;	main.c:102: printf("\n\r");
      002F0F 74 C2            [12] 1389 	mov	a,#___str_0
      002F11 C0 E0            [24] 1390 	push	acc
      002F13 74 60            [12] 1391 	mov	a,#(___str_0 >> 8)
      002F15 C0 E0            [24] 1392 	push	acc
      002F17 74 80            [12] 1393 	mov	a,#0x80
      002F19 C0 E0            [24] 1394 	push	acc
      002F1B 12 54 C1         [24] 1395 	lcall	_printf
      002F1E 15 81            [12] 1396 	dec	sp
      002F20 15 81            [12] 1397 	dec	sp
      002F22 15 81            [12] 1398 	dec	sp
      002F24 D0 06            [24] 1399 	pop	ar6
                                   1400 ;	main.c:104: switch(c)
      002F26 BE 31 00         [24] 1401 	cjne	r6,#0x31,00250$
      002F29                       1402 00250$:
      002F29 50 03            [24] 1403 	jnc	00251$
      002F2B 02 37 F2         [24] 1404 	ljmp	00139$
      002F2E                       1405 00251$:
      002F2E EE               [12] 1406 	mov	a,r6
      002F2F 24 B9            [12] 1407 	add	a,#0xff - 0x46
      002F31 50 03            [24] 1408 	jnc	00252$
      002F33 02 37 F2         [24] 1409 	ljmp	00139$
      002F36                       1410 00252$:
      002F36 EE               [12] 1411 	mov	a,r6
      002F37 24 CF            [12] 1412 	add	a,#0xcf
      002F39 FE               [12] 1413 	mov	r6,a
      002F3A 24 0A            [12] 1414 	add	a,#(00253$-3-.)
      002F3C 83               [24] 1415 	movc	a,@a+pc
      002F3D F5 82            [12] 1416 	mov	dpl,a
      002F3F EE               [12] 1417 	mov	a,r6
      002F40 24 1A            [12] 1418 	add	a,#(00254$-3-.)
      002F42 83               [24] 1419 	movc	a,@a+pc
      002F43 F5 83            [12] 1420 	mov	dph,a
      002F45 E4               [12] 1421 	clr	a
      002F46 73               [24] 1422 	jmp	@a+dptr
      002F47                       1423 00253$:
      002F47 73                    1424 	.db	00101$
      002F48 DB                    1425 	.db	00102$
      002F49 D9                    1426 	.db	00104$
      002F4A 38                    1427 	.db	00105$
      002F4B 9A                    1428 	.db	00106$
      002F4C 05                    1429 	.db	00107$
      002F4D 40                    1430 	.db	00108$
      002F4E 5B                    1431 	.db	00109$
      002F4F BD                    1432 	.db	00110$
      002F50 F2                    1433 	.db	00139$
      002F51 F2                    1434 	.db	00139$
      002F52 F2                    1435 	.db	00139$
      002F53 F2                    1436 	.db	00139$
      002F54 F2                    1437 	.db	00139$
      002F55 F2                    1438 	.db	00139$
      002F56 F2                    1439 	.db	00139$
      002F57 7D                    1440 	.db	00111$
      002F58 AD                    1441 	.db	00142$
      002F59 56                    1442 	.db	00134$
      002F5A 88                    1443 	.db	00136$
      002F5B 91                    1444 	.db	00137$
      002F5C CC                    1445 	.db	00138$
      002F5D                       1446 00254$:
      002F5D 2F                    1447 	.db	00101$>>8
      002F5E 2F                    1448 	.db	00102$>>8
      002F5F 30                    1449 	.db	00104$>>8
      002F60 31                    1450 	.db	00105$>>8
      002F61 31                    1451 	.db	00106$>>8
      002F62 32                    1452 	.db	00107$>>8
      002F63 32                    1453 	.db	00108$>>8
      002F64 32                    1454 	.db	00109$>>8
      002F65 32                    1455 	.db	00110$>>8
      002F66 37                    1456 	.db	00139$>>8
      002F67 37                    1457 	.db	00139$>>8
      002F68 37                    1458 	.db	00139$>>8
      002F69 37                    1459 	.db	00139$>>8
      002F6A 37                    1460 	.db	00139$>>8
      002F6B 37                    1461 	.db	00139$>>8
      002F6C 37                    1462 	.db	00139$>>8
      002F6D 33                    1463 	.db	00111$>>8
      002F6E 2D                    1464 	.db	00142$>>8
      002F6F 37                    1465 	.db	00134$>>8
      002F70 37                    1466 	.db	00136$>>8
      002F71 37                    1467 	.db	00137$>>8
      002F72 37                    1468 	.db	00138$>>8
                                   1469 ;	main.c:106: case '1': {
      002F73                       1470 00101$:
                                   1471 ;	main.c:107: printf("Enter the register bank to select:\n\r");
      002F73 74 59            [12] 1472 	mov	a,#___str_18
      002F75 C0 E0            [24] 1473 	push	acc
      002F77 74 62            [12] 1474 	mov	a,#(___str_18 >> 8)
      002F79 C0 E0            [24] 1475 	push	acc
      002F7B 74 80            [12] 1476 	mov	a,#0x80
      002F7D C0 E0            [24] 1477 	push	acc
      002F7F 12 54 C1         [24] 1478 	lcall	_printf
      002F82 15 81            [12] 1479 	dec	sp
      002F84 15 81            [12] 1480 	dec	sp
      002F86 15 81            [12] 1481 	dec	sp
                                   1482 ;	main.c:108: uint8_t reg_bank = get_user_buffer_size();
      002F88 12 2C 93         [24] 1483 	lcall	_get_user_buffer_size
      002F8B AE 82            [24] 1484 	mov	r6, dpl
                                   1485 ;	main.c:109: printf("Enter the address of the Control Register:\n\r");
      002F8D C0 06            [24] 1486 	push	ar6
      002F8F 74 7E            [12] 1487 	mov	a,#___str_19
      002F91 C0 E0            [24] 1488 	push	acc
      002F93 74 62            [12] 1489 	mov	a,#(___str_19 >> 8)
      002F95 C0 E0            [24] 1490 	push	acc
      002F97 74 80            [12] 1491 	mov	a,#0x80
      002F99 C0 E0            [24] 1492 	push	acc
      002F9B 12 54 C1         [24] 1493 	lcall	_printf
      002F9E 15 81            [12] 1494 	dec	sp
      002FA0 15 81            [12] 1495 	dec	sp
      002FA2 15 81            [12] 1496 	dec	sp
                                   1497 ;	main.c:110: uint8_t addr = get_user_buffer_size();
      002FA4 12 2C 93         [24] 1498 	lcall	_get_user_buffer_size
      002FA7 AD 82            [24] 1499 	mov	r5, dpl
                                   1500 ;	main.c:111: printf("Enter the data you want to write:\n\r");
      002FA9 C0 05            [24] 1501 	push	ar5
      002FAB 74 AB            [12] 1502 	mov	a,#___str_20
      002FAD C0 E0            [24] 1503 	push	acc
      002FAF 74 62            [12] 1504 	mov	a,#(___str_20 >> 8)
      002FB1 C0 E0            [24] 1505 	push	acc
      002FB3 74 80            [12] 1506 	mov	a,#0x80
      002FB5 C0 E0            [24] 1507 	push	acc
      002FB7 12 54 C1         [24] 1508 	lcall	_printf
      002FBA 15 81            [12] 1509 	dec	sp
      002FBC 15 81            [12] 1510 	dec	sp
      002FBE 15 81            [12] 1511 	dec	sp
                                   1512 ;	main.c:112: uint8_t data = get_user_buffer_size();
      002FC0 12 2C 93         [24] 1513 	lcall	_get_user_buffer_size
      002FC3 AC 82            [24] 1514 	mov	r4, dpl
      002FC5 D0 05            [24] 1515 	pop	ar5
      002FC7 D0 06            [24] 1516 	pop	ar6
                                   1517 ;	main.c:113: spi_control_write(reg_bank, addr, data);
      002FC9 90 03 84         [24] 1518 	mov	dptr,#_spi_control_write_PARM_2
      002FCC ED               [12] 1519 	mov	a,r5
      002FCD F0               [24] 1520 	movx	@dptr,a
      002FCE 90 03 85         [24] 1521 	mov	dptr,#_spi_control_write_PARM_3
      002FD1 EC               [12] 1522 	mov	a,r4
      002FD2 F0               [24] 1523 	movx	@dptr,a
      002FD3 8E 82            [24] 1524 	mov	dpl, r6
      002FD5 12 39 25         [24] 1525 	lcall	_spi_control_write
                                   1526 ;	main.c:114: break;
      002FD8 02 2D AD         [24] 1527 	ljmp	00142$
                                   1528 ;	main.c:116: case '2': {
      002FDB                       1529 00102$:
                                   1530 ;	main.c:117: printf("Enter the number of bytes to write:\n\r");
      002FDB 74 CF            [12] 1531 	mov	a,#___str_21
      002FDD C0 E0            [24] 1532 	push	acc
      002FDF 74 62            [12] 1533 	mov	a,#(___str_21 >> 8)
      002FE1 C0 E0            [24] 1534 	push	acc
      002FE3 74 80            [12] 1535 	mov	a,#0x80
      002FE5 C0 E0            [24] 1536 	push	acc
      002FE7 12 54 C1         [24] 1537 	lcall	_printf
      002FEA 15 81            [12] 1538 	dec	sp
      002FEC 15 81            [12] 1539 	dec	sp
      002FEE 15 81            [12] 1540 	dec	sp
                                   1541 ;	main.c:118: int num_bytes = get_user_buffer_size();
      002FF0 12 2C 93         [24] 1542 	lcall	_get_user_buffer_size
      002FF3 AE 82            [24] 1543 	mov	r6, dpl
      002FF5 AF 83            [24] 1544 	mov	r7, dph
                                   1545 ;	main.c:119: printf("Enter the starting address:\n\r");
      002FF7 C0 07            [24] 1546 	push	ar7
      002FF9 C0 06            [24] 1547 	push	ar6
      002FFB 74 F5            [12] 1548 	mov	a,#___str_22
      002FFD C0 E0            [24] 1549 	push	acc
      002FFF 74 62            [12] 1550 	mov	a,#(___str_22 >> 8)
      003001 C0 E0            [24] 1551 	push	acc
      003003 74 80            [12] 1552 	mov	a,#0x80
      003005 C0 E0            [24] 1553 	push	acc
      003007 12 54 C1         [24] 1554 	lcall	_printf
      00300A 15 81            [12] 1555 	dec	sp
      00300C 15 81            [12] 1556 	dec	sp
      00300E 15 81            [12] 1557 	dec	sp
                                   1558 ;	main.c:120: uint16_t start_address = get_user_buffer_size();
      003010 12 2C 93         [24] 1559 	lcall	_get_user_buffer_size
      003013 AC 82            [24] 1560 	mov	r4, dpl
      003015 AD 83            [24] 1561 	mov	r5, dph
      003017 D0 06            [24] 1562 	pop	ar6
      003019 D0 07            [24] 1563 	pop	ar7
                                   1564 ;	main.c:122: printf("Enter %d bytes of data (in hex):\n\r", num_bytes);
      00301B C0 07            [24] 1565 	push	ar7
      00301D C0 06            [24] 1566 	push	ar6
      00301F C0 05            [24] 1567 	push	ar5
      003021 C0 04            [24] 1568 	push	ar4
      003023 C0 06            [24] 1569 	push	ar6
      003025 C0 07            [24] 1570 	push	ar7
      003027 74 13            [12] 1571 	mov	a,#___str_23
      003029 C0 E0            [24] 1572 	push	acc
      00302B 74 63            [12] 1573 	mov	a,#(___str_23 >> 8)
      00302D C0 E0            [24] 1574 	push	acc
      00302F 74 80            [12] 1575 	mov	a,#0x80
      003031 C0 E0            [24] 1576 	push	acc
      003033 12 54 C1         [24] 1577 	lcall	_printf
      003036 E5 81            [12] 1578 	mov	a,sp
      003038 24 FB            [12] 1579 	add	a,#0xfb
      00303A F5 81            [12] 1580 	mov	sp,a
      00303C D0 04            [24] 1581 	pop	ar4
      00303E D0 05            [24] 1582 	pop	ar5
      003040 D0 06            [24] 1583 	pop	ar6
      003042 D0 07            [24] 1584 	pop	ar7
                                   1585 ;	main.c:123: for (int i = 0; i < num_bytes; i++) {
      003044 7A 00            [12] 1586 	mov	r2,#0x00
      003046 7B 00            [12] 1587 	mov	r3,#0x00
      003048                       1588 00145$:
      003048 C3               [12] 1589 	clr	c
      003049 EA               [12] 1590 	mov	a,r2
      00304A 9E               [12] 1591 	subb	a,r6
      00304B EB               [12] 1592 	mov	a,r3
      00304C 64 80            [12] 1593 	xrl	a,#0x80
      00304E 8F F0            [24] 1594 	mov	b,r7
      003050 63 F0 80         [24] 1595 	xrl	b,#0x80
      003053 95 F0            [12] 1596 	subb	a,b
      003055 50 63            [24] 1597 	jnc	00103$
                                   1598 ;	main.c:124: printf("Byte %d: ", i);
      003057 C0 04            [24] 1599 	push	ar4
      003059 C0 05            [24] 1600 	push	ar5
      00305B C0 07            [24] 1601 	push	ar7
      00305D C0 06            [24] 1602 	push	ar6
      00305F C0 05            [24] 1603 	push	ar5
      003061 C0 04            [24] 1604 	push	ar4
      003063 C0 03            [24] 1605 	push	ar3
      003065 C0 02            [24] 1606 	push	ar2
      003067 C0 02            [24] 1607 	push	ar2
      003069 C0 03            [24] 1608 	push	ar3
      00306B 74 36            [12] 1609 	mov	a,#___str_24
      00306D C0 E0            [24] 1610 	push	acc
      00306F 74 63            [12] 1611 	mov	a,#(___str_24 >> 8)
      003071 C0 E0            [24] 1612 	push	acc
      003073 74 80            [12] 1613 	mov	a,#0x80
      003075 C0 E0            [24] 1614 	push	acc
      003077 12 54 C1         [24] 1615 	lcall	_printf
      00307A E5 81            [12] 1616 	mov	a,sp
      00307C 24 FB            [12] 1617 	add	a,#0xfb
      00307E F5 81            [12] 1618 	mov	sp,a
      003080 D0 02            [24] 1619 	pop	ar2
      003082 D0 03            [24] 1620 	pop	ar3
      003084 D0 04            [24] 1621 	pop	ar4
      003086 D0 05            [24] 1622 	pop	ar5
                                   1623 ;	main.c:125: buffer[i] = get_user_buffer_size();
      003088 EA               [12] 1624 	mov	a,r2
      003089 24 7B            [12] 1625 	add	a, #_main_buffer_40003_147
      00308B F8               [12] 1626 	mov	r0,a
      00308C EB               [12] 1627 	mov	a,r3
      00308D 34 01            [12] 1628 	addc	a, #(_main_buffer_40003_147 >> 8)
      00308F F9               [12] 1629 	mov	r1,a
      003090 C0 03            [24] 1630 	push	ar3
      003092 C0 02            [24] 1631 	push	ar2
      003094 C0 01            [24] 1632 	push	ar1
      003096 C0 00            [24] 1633 	push	ar0
      003098 12 2C 93         [24] 1634 	lcall	_get_user_buffer_size
      00309B AC 82            [24] 1635 	mov	r4, dpl
      00309D D0 00            [24] 1636 	pop	ar0
      00309F D0 01            [24] 1637 	pop	ar1
      0030A1 D0 02            [24] 1638 	pop	ar2
      0030A3 D0 03            [24] 1639 	pop	ar3
      0030A5 D0 06            [24] 1640 	pop	ar6
      0030A7 D0 07            [24] 1641 	pop	ar7
      0030A9 88 82            [24] 1642 	mov	dpl,r0
      0030AB 89 83            [24] 1643 	mov	dph,r1
      0030AD EC               [12] 1644 	mov	a,r4
      0030AE F0               [24] 1645 	movx	@dptr,a
                                   1646 ;	main.c:123: for (int i = 0; i < num_bytes; i++) {
      0030AF 0A               [12] 1647 	inc	r2
      0030B0 BA 00 01         [24] 1648 	cjne	r2,#0x00,00256$
      0030B3 0B               [12] 1649 	inc	r3
      0030B4                       1650 00256$:
      0030B4 D0 05            [24] 1651 	pop	ar5
      0030B6 D0 04            [24] 1652 	pop	ar4
      0030B8 80 8E            [24] 1653 	sjmp	00145$
      0030BA                       1654 00103$:
                                   1655 ;	main.c:127: spi_buffer_write(num_bytes, start_address, buffer);
      0030BA 90 03 9C         [24] 1656 	mov	dptr,#_spi_buffer_write_PARM_2
      0030BD EC               [12] 1657 	mov	a,r4
      0030BE F0               [24] 1658 	movx	@dptr,a
      0030BF ED               [12] 1659 	mov	a,r5
      0030C0 A3               [24] 1660 	inc	dptr
      0030C1 F0               [24] 1661 	movx	@dptr,a
      0030C2 90 03 9E         [24] 1662 	mov	dptr,#_spi_buffer_write_PARM_3
      0030C5 74 7B            [12] 1663 	mov	a,#_main_buffer_40003_147
      0030C7 F0               [24] 1664 	movx	@dptr,a
      0030C8 74 01            [12] 1665 	mov	a,#(_main_buffer_40003_147 >> 8)
      0030CA A3               [24] 1666 	inc	dptr
      0030CB F0               [24] 1667 	movx	@dptr,a
      0030CC E4               [12] 1668 	clr	a
      0030CD A3               [24] 1669 	inc	dptr
      0030CE F0               [24] 1670 	movx	@dptr,a
      0030CF 8E 82            [24] 1671 	mov	dpl, r6
      0030D1 8F 83            [24] 1672 	mov	dph, r7
      0030D3 12 3E 54         [24] 1673 	lcall	_spi_buffer_write
                                   1674 ;	main.c:128: break;
      0030D6 02 2D AD         [24] 1675 	ljmp	00142$
                                   1676 ;	main.c:130: case '3': {
      0030D9                       1677 00104$:
                                   1678 ;	main.c:131: printf("Enter the number of bytes to read:\n\r");
      0030D9 74 40            [12] 1679 	mov	a,#___str_25
      0030DB C0 E0            [24] 1680 	push	acc
      0030DD 74 63            [12] 1681 	mov	a,#(___str_25 >> 8)
      0030DF C0 E0            [24] 1682 	push	acc
      0030E1 74 80            [12] 1683 	mov	a,#0x80
      0030E3 C0 E0            [24] 1684 	push	acc
      0030E5 12 54 C1         [24] 1685 	lcall	_printf
      0030E8 15 81            [12] 1686 	dec	sp
      0030EA 15 81            [12] 1687 	dec	sp
      0030EC 15 81            [12] 1688 	dec	sp
                                   1689 ;	main.c:132: int num_bytes = get_user_buffer_size();
      0030EE 12 2C 93         [24] 1690 	lcall	_get_user_buffer_size
      0030F1 AE 82            [24] 1691 	mov	r6, dpl
      0030F3 AF 83            [24] 1692 	mov	r7, dph
                                   1693 ;	main.c:133: printf("Enter the starting address:\n\r");
      0030F5 C0 07            [24] 1694 	push	ar7
      0030F7 C0 06            [24] 1695 	push	ar6
      0030F9 74 F5            [12] 1696 	mov	a,#___str_22
      0030FB C0 E0            [24] 1697 	push	acc
      0030FD 74 62            [12] 1698 	mov	a,#(___str_22 >> 8)
      0030FF C0 E0            [24] 1699 	push	acc
      003101 74 80            [12] 1700 	mov	a,#0x80
      003103 C0 E0            [24] 1701 	push	acc
      003105 12 54 C1         [24] 1702 	lcall	_printf
      003108 15 81            [12] 1703 	dec	sp
      00310A 15 81            [12] 1704 	dec	sp
      00310C 15 81            [12] 1705 	dec	sp
                                   1706 ;	main.c:134: uint16_t start_address = get_user_buffer_size();
      00310E 12 2C 93         [24] 1707 	lcall	_get_user_buffer_size
      003111 AC 82            [24] 1708 	mov	r4, dpl
      003113 AD 83            [24] 1709 	mov	r5, dph
      003115 D0 06            [24] 1710 	pop	ar6
      003117 D0 07            [24] 1711 	pop	ar7
      003119 90 03 95         [24] 1712 	mov	dptr,#_spi_buffer_read_PARM_2
      00311C EC               [12] 1713 	mov	a,r4
      00311D F0               [24] 1714 	movx	@dptr,a
      00311E ED               [12] 1715 	mov	a,r5
      00311F A3               [24] 1716 	inc	dptr
      003120 F0               [24] 1717 	movx	@dptr,a
                                   1718 ;	main.c:136: spi_buffer_read(num_bytes, start_address, buffer);
      003121 90 03 97         [24] 1719 	mov	dptr,#_spi_buffer_read_PARM_3
      003124 74 7B            [12] 1720 	mov	a,#_main_buffer_40003_152
      003126 F0               [24] 1721 	movx	@dptr,a
      003127 74 02            [12] 1722 	mov	a,#(_main_buffer_40003_152 >> 8)
      003129 A3               [24] 1723 	inc	dptr
      00312A F0               [24] 1724 	movx	@dptr,a
      00312B E4               [12] 1725 	clr	a
      00312C A3               [24] 1726 	inc	dptr
      00312D F0               [24] 1727 	movx	@dptr,a
      00312E 8E 82            [24] 1728 	mov	dpl, r6
      003130 8F 83            [24] 1729 	mov	dph, r7
      003132 12 3C D5         [24] 1730 	lcall	_spi_buffer_read
                                   1731 ;	main.c:137: break;
      003135 02 2D AD         [24] 1732 	ljmp	00142$
                                   1733 ;	main.c:139: case '4': {
      003138                       1734 00105$:
                                   1735 ;	main.c:140: printf("Enter the MAC register bank to select:\n\r");
      003138 74 65            [12] 1736 	mov	a,#___str_26
      00313A C0 E0            [24] 1737 	push	acc
      00313C 74 63            [12] 1738 	mov	a,#(___str_26 >> 8)
      00313E C0 E0            [24] 1739 	push	acc
      003140 74 80            [12] 1740 	mov	a,#0x80
      003142 C0 E0            [24] 1741 	push	acc
      003144 12 54 C1         [24] 1742 	lcall	_printf
      003147 15 81            [12] 1743 	dec	sp
      003149 15 81            [12] 1744 	dec	sp
      00314B 15 81            [12] 1745 	dec	sp
                                   1746 ;	main.c:141: uint8_t reg_bank = get_user_buffer_size();
      00314D 12 2C 93         [24] 1747 	lcall	_get_user_buffer_size
      003150 AE 82            [24] 1748 	mov	r6, dpl
                                   1749 ;	main.c:142: printf("Enter the address of the MAC Register:\n\r");
      003152 C0 06            [24] 1750 	push	ar6
      003154 74 8E            [12] 1751 	mov	a,#___str_27
      003156 C0 E0            [24] 1752 	push	acc
      003158 74 63            [12] 1753 	mov	a,#(___str_27 >> 8)
      00315A C0 E0            [24] 1754 	push	acc
      00315C 74 80            [12] 1755 	mov	a,#0x80
      00315E C0 E0            [24] 1756 	push	acc
      003160 12 54 C1         [24] 1757 	lcall	_printf
      003163 15 81            [12] 1758 	dec	sp
      003165 15 81            [12] 1759 	dec	sp
      003167 15 81            [12] 1760 	dec	sp
                                   1761 ;	main.c:143: uint8_t addr = get_user_buffer_size();
      003169 12 2C 93         [24] 1762 	lcall	_get_user_buffer_size
      00316C AD 82            [24] 1763 	mov	r5, dpl
      00316E D0 06            [24] 1764 	pop	ar6
                                   1765 ;	main.c:144: uint8_t data = mac_spi_read(addr, reg_bank);
      003170 90 03 8D         [24] 1766 	mov	dptr,#_mac_spi_read_PARM_2
      003173 EE               [12] 1767 	mov	a,r6
      003174 F0               [24] 1768 	movx	@dptr,a
      003175 8D 82            [24] 1769 	mov	dpl, r5
      003177 12 3A 9B         [24] 1770 	lcall	_mac_spi_read
      00317A AF 82            [24] 1771 	mov	r7, dpl
                                   1772 ;	main.c:145: printf("MAC Register Data: 0x%02X\n\r", data);
      00317C 7E 00            [12] 1773 	mov	r6,#0x00
      00317E C0 07            [24] 1774 	push	ar7
      003180 C0 06            [24] 1775 	push	ar6
      003182 74 B7            [12] 1776 	mov	a,#___str_28
      003184 C0 E0            [24] 1777 	push	acc
      003186 74 63            [12] 1778 	mov	a,#(___str_28 >> 8)
      003188 C0 E0            [24] 1779 	push	acc
      00318A 74 80            [12] 1780 	mov	a,#0x80
      00318C C0 E0            [24] 1781 	push	acc
      00318E 12 54 C1         [24] 1782 	lcall	_printf
      003191 E5 81            [12] 1783 	mov	a,sp
      003193 24 FB            [12] 1784 	add	a,#0xfb
      003195 F5 81            [12] 1785 	mov	sp,a
                                   1786 ;	main.c:146: break;
      003197 02 2D AD         [24] 1787 	ljmp	00142$
                                   1788 ;	main.c:148: case '5': {
      00319A                       1789 00106$:
                                   1790 ;	main.c:149: printf("Enter the PHY register address:\n\r");
      00319A 74 D3            [12] 1791 	mov	a,#___str_29
      00319C C0 E0            [24] 1792 	push	acc
      00319E 74 63            [12] 1793 	mov	a,#(___str_29 >> 8)
      0031A0 C0 E0            [24] 1794 	push	acc
      0031A2 74 80            [12] 1795 	mov	a,#0x80
      0031A4 C0 E0            [24] 1796 	push	acc
      0031A6 12 54 C1         [24] 1797 	lcall	_printf
      0031A9 15 81            [12] 1798 	dec	sp
      0031AB 15 81            [12] 1799 	dec	sp
      0031AD 15 81            [12] 1800 	dec	sp
                                   1801 ;	main.c:150: uint8_t addr = get_user_buffer_size();
      0031AF 12 2C 93         [24] 1802 	lcall	_get_user_buffer_size
      0031B2 AE 82            [24] 1803 	mov	r6, dpl
                                   1804 ;	main.c:151: printf("Enter the 16-bit data to write:\n\r");
      0031B4 C0 06            [24] 1805 	push	ar6
      0031B6 74 F5            [12] 1806 	mov	a,#___str_30
      0031B8 C0 E0            [24] 1807 	push	acc
      0031BA 74 63            [12] 1808 	mov	a,#(___str_30 >> 8)
      0031BC C0 E0            [24] 1809 	push	acc
      0031BE 74 80            [12] 1810 	mov	a,#0x80
      0031C0 C0 E0            [24] 1811 	push	acc
      0031C2 12 54 C1         [24] 1812 	lcall	_printf
      0031C5 15 81            [12] 1813 	dec	sp
      0031C7 15 81            [12] 1814 	dec	sp
      0031C9 15 81            [12] 1815 	dec	sp
                                   1816 ;	main.c:152: uint16_t data = get_user_buffer_size();
      0031CB 12 2C 93         [24] 1817 	lcall	_get_user_buffer_size
      0031CE AD 82            [24] 1818 	mov	r5, dpl
      0031D0 AF 83            [24] 1819 	mov	r7, dph
      0031D2 D0 06            [24] 1820 	pop	ar6
                                   1821 ;	main.c:153: phy_spi_write(addr, data);
      0031D4 90 03 8A         [24] 1822 	mov	dptr,#_phy_spi_write_PARM_2
      0031D7 ED               [12] 1823 	mov	a,r5
      0031D8 F0               [24] 1824 	movx	@dptr,a
      0031D9 EF               [12] 1825 	mov	a,r7
      0031DA A3               [24] 1826 	inc	dptr
      0031DB F0               [24] 1827 	movx	@dptr,a
      0031DC 8E 82            [24] 1828 	mov	dpl, r6
      0031DE C0 07            [24] 1829 	push	ar7
      0031E0 C0 05            [24] 1830 	push	ar5
      0031E2 12 3A 18         [24] 1831 	lcall	_phy_spi_write
      0031E5 D0 05            [24] 1832 	pop	ar5
      0031E7 D0 07            [24] 1833 	pop	ar7
                                   1834 ;	main.c:154: printf("PHY Write Data: 0x%04X\n\r", data);
      0031E9 C0 05            [24] 1835 	push	ar5
      0031EB C0 07            [24] 1836 	push	ar7
      0031ED 74 17            [12] 1837 	mov	a,#___str_31
      0031EF C0 E0            [24] 1838 	push	acc
      0031F1 74 64            [12] 1839 	mov	a,#(___str_31 >> 8)
      0031F3 C0 E0            [24] 1840 	push	acc
      0031F5 74 80            [12] 1841 	mov	a,#0x80
      0031F7 C0 E0            [24] 1842 	push	acc
      0031F9 12 54 C1         [24] 1843 	lcall	_printf
      0031FC E5 81            [12] 1844 	mov	a,sp
      0031FE 24 FB            [12] 1845 	add	a,#0xfb
      003200 F5 81            [12] 1846 	mov	sp,a
                                   1847 ;	main.c:155: break;
      003202 02 2D AD         [24] 1848 	ljmp	00142$
                                   1849 ;	main.c:157: case '6': {
      003205                       1850 00107$:
                                   1851 ;	main.c:158: printf("Enter the PHY register address to read:\n\r");
      003205 74 30            [12] 1852 	mov	a,#___str_32
      003207 C0 E0            [24] 1853 	push	acc
      003209 74 64            [12] 1854 	mov	a,#(___str_32 >> 8)
      00320B C0 E0            [24] 1855 	push	acc
      00320D 74 80            [12] 1856 	mov	a,#0x80
      00320F C0 E0            [24] 1857 	push	acc
      003211 12 54 C1         [24] 1858 	lcall	_printf
      003214 15 81            [12] 1859 	dec	sp
      003216 15 81            [12] 1860 	dec	sp
      003218 15 81            [12] 1861 	dec	sp
                                   1862 ;	main.c:159: uint8_t addr = get_user_buffer_size();
      00321A 12 2C 93         [24] 1863 	lcall	_get_user_buffer_size
                                   1864 ;	main.c:160: uint16_t data = phy_spi_read(addr);
      00321D 12 3A DE         [24] 1865 	lcall	_phy_spi_read
      003220 AE 82            [24] 1866 	mov	r6, dpl
      003222 AF 83            [24] 1867 	mov	r7, dph
                                   1868 ;	main.c:161: printf("PHY Read Data: 0x%04X\n\r", data);
      003224 C0 06            [24] 1869 	push	ar6
      003226 C0 07            [24] 1870 	push	ar7
      003228 74 5A            [12] 1871 	mov	a,#___str_33
      00322A C0 E0            [24] 1872 	push	acc
      00322C 74 64            [12] 1873 	mov	a,#(___str_33 >> 8)
      00322E C0 E0            [24] 1874 	push	acc
      003230 74 80            [12] 1875 	mov	a,#0x80
      003232 C0 E0            [24] 1876 	push	acc
      003234 12 54 C1         [24] 1877 	lcall	_printf
      003237 E5 81            [12] 1878 	mov	a,sp
      003239 24 FB            [12] 1879 	add	a,#0xfb
      00323B F5 81            [12] 1880 	mov	sp,a
                                   1881 ;	main.c:162: break;
      00323D 02 2D AD         [24] 1882 	ljmp	00142$
                                   1883 ;	main.c:164: case '7': {
      003240                       1884 00108$:
                                   1885 ;	main.c:165: printf("Resetting ENC28J60...\n\r");
      003240 74 72            [12] 1886 	mov	a,#___str_34
      003242 C0 E0            [24] 1887 	push	acc
      003244 74 64            [12] 1888 	mov	a,#(___str_34 >> 8)
      003246 C0 E0            [24] 1889 	push	acc
      003248 74 80            [12] 1890 	mov	a,#0x80
      00324A C0 E0            [24] 1891 	push	acc
      00324C 12 54 C1         [24] 1892 	lcall	_printf
      00324F 15 81            [12] 1893 	dec	sp
      003251 15 81            [12] 1894 	dec	sp
      003253 15 81            [12] 1895 	dec	sp
                                   1896 ;	main.c:166: enc_reset();
      003255 12 39 9F         [24] 1897 	lcall	_enc_reset
                                   1898 ;	main.c:167: break;
      003258 02 2D AD         [24] 1899 	ljmp	00142$
                                   1900 ;	main.c:169: case '8': {
      00325B                       1901 00109$:
                                   1902 ;	main.c:170: printf("Enter the ETH register address to read:\n\r");
      00325B 74 8A            [12] 1903 	mov	a,#___str_35
      00325D C0 E0            [24] 1904 	push	acc
      00325F 74 64            [12] 1905 	mov	a,#(___str_35 >> 8)
      003261 C0 E0            [24] 1906 	push	acc
      003263 74 80            [12] 1907 	mov	a,#0x80
      003265 C0 E0            [24] 1908 	push	acc
      003267 12 54 C1         [24] 1909 	lcall	_printf
      00326A 15 81            [12] 1910 	dec	sp
      00326C 15 81            [12] 1911 	dec	sp
      00326E 15 81            [12] 1912 	dec	sp
                                   1913 ;	main.c:171: uint8_t addr = get_user_buffer_size();
      003270 12 2C 93         [24] 1914 	lcall	_get_user_buffer_size
      003273 AE 82            [24] 1915 	mov	r6, dpl
                                   1916 ;	main.c:172: printf("Enter the bank (0 or 1):\n\r");
      003275 C0 06            [24] 1917 	push	ar6
      003277 74 B4            [12] 1918 	mov	a,#___str_36
      003279 C0 E0            [24] 1919 	push	acc
      00327B 74 64            [12] 1920 	mov	a,#(___str_36 >> 8)
      00327D C0 E0            [24] 1921 	push	acc
      00327F 74 80            [12] 1922 	mov	a,#0x80
      003281 C0 E0            [24] 1923 	push	acc
      003283 12 54 C1         [24] 1924 	lcall	_printf
      003286 15 81            [12] 1925 	dec	sp
      003288 15 81            [12] 1926 	dec	sp
      00328A 15 81            [12] 1927 	dec	sp
                                   1928 ;	main.c:173: uint8_t bank = get_user_buffer_size();
      00328C 12 2C 93         [24] 1929 	lcall	_get_user_buffer_size
      00328F AD 82            [24] 1930 	mov	r5, dpl
      003291 D0 06            [24] 1931 	pop	ar6
      003293 90 03 88         [24] 1932 	mov	dptr,#_eth_spi_read_PARM_2
      003296 ED               [12] 1933 	mov	a,r5
      003297 F0               [24] 1934 	movx	@dptr,a
                                   1935 ;	main.c:174: uint8_t data = eth_spi_read(addr, bank);
      003298 8E 82            [24] 1936 	mov	dpl, r6
      00329A 12 39 AA         [24] 1937 	lcall	_eth_spi_read
      00329D AF 82            [24] 1938 	mov	r7, dpl
                                   1939 ;	main.c:175: printf("ETH Register Data: 0x%02X\n\r", data);
      00329F 7E 00            [12] 1940 	mov	r6,#0x00
      0032A1 C0 07            [24] 1941 	push	ar7
      0032A3 C0 06            [24] 1942 	push	ar6
      0032A5 74 CF            [12] 1943 	mov	a,#___str_37
      0032A7 C0 E0            [24] 1944 	push	acc
      0032A9 74 64            [12] 1945 	mov	a,#(___str_37 >> 8)
      0032AB C0 E0            [24] 1946 	push	acc
      0032AD 74 80            [12] 1947 	mov	a,#0x80
      0032AF C0 E0            [24] 1948 	push	acc
      0032B1 12 54 C1         [24] 1949 	lcall	_printf
      0032B4 E5 81            [12] 1950 	mov	a,sp
      0032B6 24 FB            [12] 1951 	add	a,#0xfb
      0032B8 F5 81            [12] 1952 	mov	sp,a
                                   1953 ;	main.c:176: break;
      0032BA 02 2D AD         [24] 1954 	ljmp	00142$
                                   1955 ;	main.c:178: case '9': {
      0032BD                       1956 00110$:
                                   1957 ;	main.c:179: printf("\n\rChoose an action: \n\r");
      0032BD 74 DE            [12] 1958 	mov	a,#___str_2
      0032BF C0 E0            [24] 1959 	push	acc
      0032C1 74 60            [12] 1960 	mov	a,#(___str_2 >> 8)
      0032C3 C0 E0            [24] 1961 	push	acc
      0032C5 74 80            [12] 1962 	mov	a,#0x80
      0032C7 C0 E0            [24] 1963 	push	acc
      0032C9 12 54 C1         [24] 1964 	lcall	_printf
      0032CC 15 81            [12] 1965 	dec	sp
      0032CE 15 81            [12] 1966 	dec	sp
      0032D0 15 81            [12] 1967 	dec	sp
                                   1968 ;	main.c:180: printf("1 --> Control Write\n\r");
      0032D2 74 F5            [12] 1969 	mov	a,#___str_3
      0032D4 C0 E0            [24] 1970 	push	acc
      0032D6 74 60            [12] 1971 	mov	a,#(___str_3 >> 8)
      0032D8 C0 E0            [24] 1972 	push	acc
      0032DA 74 80            [12] 1973 	mov	a,#0x80
      0032DC C0 E0            [24] 1974 	push	acc
      0032DE 12 54 C1         [24] 1975 	lcall	_printf
      0032E1 15 81            [12] 1976 	dec	sp
      0032E3 15 81            [12] 1977 	dec	sp
      0032E5 15 81            [12] 1978 	dec	sp
                                   1979 ;	main.c:181: printf("2 --> Buffer Write\n\r");
      0032E7 74 0B            [12] 1980 	mov	a,#___str_4
      0032E9 C0 E0            [24] 1981 	push	acc
      0032EB 74 61            [12] 1982 	mov	a,#(___str_4 >> 8)
      0032ED C0 E0            [24] 1983 	push	acc
      0032EF 74 80            [12] 1984 	mov	a,#0x80
      0032F1 C0 E0            [24] 1985 	push	acc
      0032F3 12 54 C1         [24] 1986 	lcall	_printf
      0032F6 15 81            [12] 1987 	dec	sp
      0032F8 15 81            [12] 1988 	dec	sp
      0032FA 15 81            [12] 1989 	dec	sp
                                   1990 ;	main.c:182: printf("3 --> Buffer Read\n\r");
      0032FC 74 20            [12] 1991 	mov	a,#___str_5
      0032FE C0 E0            [24] 1992 	push	acc
      003300 74 61            [12] 1993 	mov	a,#(___str_5 >> 8)
      003302 C0 E0            [24] 1994 	push	acc
      003304 74 80            [12] 1995 	mov	a,#0x80
      003306 C0 E0            [24] 1996 	push	acc
      003308 12 54 C1         [24] 1997 	lcall	_printf
      00330B 15 81            [12] 1998 	dec	sp
      00330D 15 81            [12] 1999 	dec	sp
      00330F 15 81            [12] 2000 	dec	sp
                                   2001 ;	main.c:183: printf("4 --> MAC Register Read\n\r");
      003311 74 34            [12] 2002 	mov	a,#___str_6
      003313 C0 E0            [24] 2003 	push	acc
      003315 74 61            [12] 2004 	mov	a,#(___str_6 >> 8)
      003317 C0 E0            [24] 2005 	push	acc
      003319 74 80            [12] 2006 	mov	a,#0x80
      00331B C0 E0            [24] 2007 	push	acc
      00331D 12 54 C1         [24] 2008 	lcall	_printf
      003320 15 81            [12] 2009 	dec	sp
      003322 15 81            [12] 2010 	dec	sp
      003324 15 81            [12] 2011 	dec	sp
                                   2012 ;	main.c:184: printf("5 --> PHY SPI Write\n\r");
      003326 74 4E            [12] 2013 	mov	a,#___str_7
      003328 C0 E0            [24] 2014 	push	acc
      00332A 74 61            [12] 2015 	mov	a,#(___str_7 >> 8)
      00332C C0 E0            [24] 2016 	push	acc
      00332E 74 80            [12] 2017 	mov	a,#0x80
      003330 C0 E0            [24] 2018 	push	acc
      003332 12 54 C1         [24] 2019 	lcall	_printf
      003335 15 81            [12] 2020 	dec	sp
      003337 15 81            [12] 2021 	dec	sp
      003339 15 81            [12] 2022 	dec	sp
                                   2023 ;	main.c:185: printf("6 --> PHY SPI Read\n\r");
      00333B 74 64            [12] 2024 	mov	a,#___str_8
      00333D C0 E0            [24] 2025 	push	acc
      00333F 74 61            [12] 2026 	mov	a,#(___str_8 >> 8)
      003341 C0 E0            [24] 2027 	push	acc
      003343 74 80            [12] 2028 	mov	a,#0x80
      003345 C0 E0            [24] 2029 	push	acc
      003347 12 54 C1         [24] 2030 	lcall	_printf
      00334A 15 81            [12] 2031 	dec	sp
      00334C 15 81            [12] 2032 	dec	sp
      00334E 15 81            [12] 2033 	dec	sp
                                   2034 ;	main.c:186: printf("7 --> ENC Reset\n\r");
      003350 74 79            [12] 2035 	mov	a,#___str_9
      003352 C0 E0            [24] 2036 	push	acc
      003354 74 61            [12] 2037 	mov	a,#(___str_9 >> 8)
      003356 C0 E0            [24] 2038 	push	acc
      003358 74 80            [12] 2039 	mov	a,#0x80
      00335A C0 E0            [24] 2040 	push	acc
      00335C 12 54 C1         [24] 2041 	lcall	_printf
      00335F 15 81            [12] 2042 	dec	sp
      003361 15 81            [12] 2043 	dec	sp
      003363 15 81            [12] 2044 	dec	sp
                                   2045 ;	main.c:187: printf("8 --> Read ETH Register\n\r");
      003365 74 8B            [12] 2046 	mov	a,#___str_10
      003367 C0 E0            [24] 2047 	push	acc
      003369 74 61            [12] 2048 	mov	a,#(___str_10 >> 8)
      00336B C0 E0            [24] 2049 	push	acc
      00336D 74 80            [12] 2050 	mov	a,#0x80
      00336F C0 E0            [24] 2051 	push	acc
      003371 12 54 C1         [24] 2052 	lcall	_printf
      003374 15 81            [12] 2053 	dec	sp
      003376 15 81            [12] 2054 	dec	sp
      003378 15 81            [12] 2055 	dec	sp
                                   2056 ;	main.c:188: break;
      00337A 02 2D AD         [24] 2057 	ljmp	00142$
                                   2058 ;	main.c:190: case 'A':{
      00337D                       2059 00111$:
                                   2060 ;	main.c:191: send_arp_request();
      00337D 12 22 09         [24] 2061 	lcall	_send_arp_request
                                   2062 ;	main.c:192: while(1)
      003380                       2063 00131$:
                                   2064 ;	main.c:194: if(ENC_pkt_count() > 0)
      003380 12 2A 67         [24] 2065 	lcall	_ENC_pkt_count
      003383 E5 82            [12] 2066 	mov	a, dpl
      003385 60 F9            [24] 2067 	jz	00131$
                                   2068 ;	main.c:201: if (gNextPacketPtr == 0)
      003387 90 03 7B         [24] 2069 	mov	dptr,#_main_gNextPacketPtr_60001_168
      00338A E0               [24] 2070 	movx	a,@dptr
      00338B FE               [12] 2071 	mov	r6,a
      00338C A3               [24] 2072 	inc	dptr
      00338D E0               [24] 2073 	movx	a,@dptr
      00338E FF               [12] 2074 	mov	r7,a
      00338F 90 03 7B         [24] 2075 	mov	dptr,#_main_gNextPacketPtr_60001_168
      003392 E0               [24] 2076 	movx	a,@dptr
      003393 F5 F0            [12] 2077 	mov	b,a
      003395 A3               [24] 2078 	inc	dptr
      003396 E0               [24] 2079 	movx	a,@dptr
      003397 45 F0            [12] 2080 	orl	a,b
      003399 70 08            [24] 2081 	jnz	00113$
                                   2082 ;	main.c:203: update_ERXRDPT(RX_BUFFER_END);
      00339B 90 0B FF         [24] 2083 	mov	dptr,#0x0bff
      00339E 12 2A 73         [24] 2084 	lcall	_update_ERXRDPT
      0033A1 80 0C            [24] 2085 	sjmp	00114$
      0033A3                       2086 00113$:
                                   2087 ;	main.c:207: update_ERXRDPT(gNextPacketPtr - 1);
      0033A3 1E               [12] 2088 	dec	r6
      0033A4 BE FF 01         [24] 2089 	cjne	r6,#0xff,00259$
      0033A7 1F               [12] 2090 	dec	r7
      0033A8                       2091 00259$:
      0033A8 8E 82            [24] 2092 	mov	dpl, r6
      0033AA 8F 83            [24] 2093 	mov	dph, r7
      0033AC 12 2A 73         [24] 2094 	lcall	_update_ERXRDPT
      0033AF                       2095 00114$:
                                   2096 ;	main.c:209: uint8_t *packet_data = (uint8_t *)malloc(6);
      0033AF 90 00 06         [24] 2097 	mov	dptr,#0x0006
      0033B2 12 52 0B         [24] 2098 	lcall	_malloc
      0033B5 AE 82            [24] 2099 	mov	r6, dpl
      0033B7 AD 83            [24] 2100 	mov	r5,dph
      0033B9 7F 00            [12] 2101 	mov	r7,#0x00
                                   2102 ;	main.c:210: spi_buffer_read(6, gNextPacketPtr, packet_data);
      0033BB 90 03 7B         [24] 2103 	mov	dptr,#_main_gNextPacketPtr_60001_168
      0033BE E0               [24] 2104 	movx	a,@dptr
      0033BF FB               [12] 2105 	mov	r3,a
      0033C0 A3               [24] 2106 	inc	dptr
      0033C1 E0               [24] 2107 	movx	a,@dptr
      0033C2 FC               [12] 2108 	mov	r4,a
      0033C3 90 03 95         [24] 2109 	mov	dptr,#_spi_buffer_read_PARM_2
      0033C6 EB               [12] 2110 	mov	a,r3
      0033C7 F0               [24] 2111 	movx	@dptr,a
      0033C8 EC               [12] 2112 	mov	a,r4
      0033C9 A3               [24] 2113 	inc	dptr
      0033CA F0               [24] 2114 	movx	@dptr,a
      0033CB 90 03 97         [24] 2115 	mov	dptr,#_spi_buffer_read_PARM_3
      0033CE EE               [12] 2116 	mov	a,r6
      0033CF F0               [24] 2117 	movx	@dptr,a
      0033D0 ED               [12] 2118 	mov	a,r5
      0033D1 A3               [24] 2119 	inc	dptr
      0033D2 F0               [24] 2120 	movx	@dptr,a
      0033D3 EF               [12] 2121 	mov	a,r7
      0033D4 A3               [24] 2122 	inc	dptr
      0033D5 F0               [24] 2123 	movx	@dptr,a
      0033D6 90 00 06         [24] 2124 	mov	dptr,#0x0006
      0033D9 C0 07            [24] 2125 	push	ar7
      0033DB C0 06            [24] 2126 	push	ar6
      0033DD C0 05            [24] 2127 	push	ar5
      0033DF 12 3C D5         [24] 2128 	lcall	_spi_buffer_read
      0033E2 D0 05            [24] 2129 	pop	ar5
      0033E4 D0 06            [24] 2130 	pop	ar6
      0033E6 D0 07            [24] 2131 	pop	ar7
                                   2132 ;	main.c:214: nextPacket = (uint16_t)(packet_data[1] << 8 | packet_data[0]); // Next Packet (MSB, LSB)
      0033E8 74 01            [12] 2133 	mov	a,#0x01
      0033EA 2E               [12] 2134 	add	a, r6
      0033EB FA               [12] 2135 	mov	r2,a
      0033EC E4               [12] 2136 	clr	a
      0033ED 3D               [12] 2137 	addc	a, r5
      0033EE FB               [12] 2138 	mov	r3,a
      0033EF 8F 04            [24] 2139 	mov	ar4,r7
      0033F1 8A 82            [24] 2140 	mov	dpl,r2
      0033F3 8B 83            [24] 2141 	mov	dph,r3
      0033F5 8C F0            [24] 2142 	mov	b,r4
      0033F7 12 5E E3         [24] 2143 	lcall	__gptrget
      0033FA FC               [12] 2144 	mov	r4,a
      0033FB 7A 00            [12] 2145 	mov	r2,#0x00
      0033FD 8E 82            [24] 2146 	mov	dpl,r6
      0033FF 8D 83            [24] 2147 	mov	dph,r5
      003401 8F F0            [24] 2148 	mov	b,r7
      003403 12 5E E3         [24] 2149 	lcall	__gptrget
      003406 7B 00            [12] 2150 	mov	r3,#0x00
      003408 42 02            [12] 2151 	orl	ar2,a
      00340A EB               [12] 2152 	mov	a,r3
      00340B 42 04            [12] 2153 	orl	ar4,a
      00340D 8A 2A            [24] 2154 	mov	_main_sloc4_1_0,r2
      00340F 8C 2B            [24] 2155 	mov	(_main_sloc4_1_0 + 1),r4
                                   2156 ;	main.c:215: byteCount = (uint16_t)(packet_data[3] << 8 | packet_data[2]);  // Byte Count (MSB, LSB)
      003411 74 03            [12] 2157 	mov	a,#0x03
      003413 2E               [12] 2158 	add	a, r6
      003414 F8               [12] 2159 	mov	r0,a
      003415 E4               [12] 2160 	clr	a
      003416 3D               [12] 2161 	addc	a, r5
      003417 F9               [12] 2162 	mov	r1,a
      003418 8F 03            [24] 2163 	mov	ar3,r7
      00341A 88 82            [24] 2164 	mov	dpl,r0
      00341C 89 83            [24] 2165 	mov	dph,r1
      00341E 8B F0            [24] 2166 	mov	b,r3
      003420 12 5E E3         [24] 2167 	lcall	__gptrget
      003423 F8               [12] 2168 	mov	r0,a
      003424 7B 00            [12] 2169 	mov	r3,#0x00
      003426 88 23            [24] 2170 	mov	(_main_sloc0_1_0 + 1),r0
      003428 8B 22            [24] 2171 	mov	_main_sloc0_1_0,r3
      00342A 74 02            [12] 2172 	mov	a,#0x02
      00342C 2E               [12] 2173 	add	a, r6
      00342D F8               [12] 2174 	mov	r0,a
      00342E E4               [12] 2175 	clr	a
      00342F 3D               [12] 2176 	addc	a, r5
      003430 F9               [12] 2177 	mov	r1,a
      003431 8F 03            [24] 2178 	mov	ar3,r7
      003433 88 82            [24] 2179 	mov	dpl,r0
      003435 89 83            [24] 2180 	mov	dph,r1
      003437 8B F0            [24] 2181 	mov	b,r3
      003439 12 5E E3         [24] 2182 	lcall	__gptrget
      00343C F8               [12] 2183 	mov	r0,a
      00343D 7B 00            [12] 2184 	mov	r3,#0x00
      00343F E5 23            [12] 2185 	mov	a,(_main_sloc0_1_0 + 1)
      003441 42 03            [12] 2186 	orl	ar3,a
      003443 88 22            [24] 2187 	mov	_main_sloc0_1_0,r0
      003445 8B 23            [24] 2188 	mov	(_main_sloc0_1_0 + 1),r3
                                   2189 ;	main.c:216: status = (uint16_t)(packet_data[5] << 8 | packet_data[4]);     // Status (MSB, LSB)
      003447 74 05            [12] 2190 	mov	a,#0x05
      003449 2E               [12] 2191 	add	a, r6
      00344A F8               [12] 2192 	mov	r0,a
      00344B E4               [12] 2193 	clr	a
      00344C 3D               [12] 2194 	addc	a, r5
      00344D F9               [12] 2195 	mov	r1,a
      00344E 8F 03            [24] 2196 	mov	ar3,r7
      003450 88 82            [24] 2197 	mov	dpl,r0
      003452 89 83            [24] 2198 	mov	dph,r1
      003454 8B F0            [24] 2199 	mov	b,r3
      003456 12 5E E3         [24] 2200 	lcall	__gptrget
      003459 F8               [12] 2201 	mov	r0,a
      00345A 7B 00            [12] 2202 	mov	r3,#0x00
      00345C 88 25            [24] 2203 	mov	(_main_sloc1_1_0 + 1),r0
      00345E 8B 24            [24] 2204 	mov	_main_sloc1_1_0,r3
      003460 74 04            [12] 2205 	mov	a,#0x04
      003462 2E               [12] 2206 	add	a, r6
      003463 F8               [12] 2207 	mov	r0,a
      003464 E4               [12] 2208 	clr	a
      003465 3D               [12] 2209 	addc	a, r5
      003466 F9               [12] 2210 	mov	r1,a
      003467 8F 03            [24] 2211 	mov	ar3,r7
      003469 88 82            [24] 2212 	mov	dpl,r0
      00346B 89 83            [24] 2213 	mov	dph,r1
      00346D 8B F0            [24] 2214 	mov	b,r3
      00346F 12 5E E3         [24] 2215 	lcall	__gptrget
      003472 F8               [12] 2216 	mov	r0,a
      003473 7B 00            [12] 2217 	mov	r3,#0x00
      003475 E5 25            [12] 2218 	mov	a,(_main_sloc1_1_0 + 1)
      003477 42 03            [12] 2219 	orl	ar3,a
      003479 88 24            [24] 2220 	mov	_main_sloc1_1_0,r0
      00347B 8B 25            [24] 2221 	mov	(_main_sloc1_1_0 + 1),r3
                                   2222 ;	main.c:219: len = byteCount - 4;
      00347D A9 22            [24] 2223 	mov	r1,_main_sloc0_1_0
      00347F AB 23            [24] 2224 	mov	r3,(_main_sloc0_1_0 + 1)
      003481 E9               [12] 2225 	mov	a,r1
      003482 24 FC            [12] 2226 	add	a,#0xfc
      003484 F9               [12] 2227 	mov	r1,a
      003485 EB               [12] 2228 	mov	a,r3
      003486 34 FF            [12] 2229 	addc	a,#0xff
      003488 FB               [12] 2230 	mov	r3,a
      003489 89 28            [24] 2231 	mov	_main_sloc3_1_0,r1
      00348B 8B 29            [24] 2232 	mov	(_main_sloc3_1_0 + 1),r3
                                   2233 ;	main.c:221: uint8_t *packet_data_actual = (uint8_t *)malloc(len);
      00348D 85 28 26         [24] 2234 	mov	_main_sloc2_1_0,_main_sloc3_1_0
      003490 85 29 27         [24] 2235 	mov	(_main_sloc2_1_0 + 1),(_main_sloc3_1_0 + 1)
      003493 85 26 82         [24] 2236 	mov	dpl, _main_sloc2_1_0
      003496 85 27 83         [24] 2237 	mov	dph, (_main_sloc2_1_0 + 1)
      003499 C0 07            [24] 2238 	push	ar7
      00349B C0 06            [24] 2239 	push	ar6
      00349D C0 05            [24] 2240 	push	ar5
      00349F 12 52 0B         [24] 2241 	lcall	_malloc
      0034A2 A8 82            [24] 2242 	mov	r0, dpl
      0034A4 AB 83            [24] 2243 	mov	r3, dph
      0034A6 D0 05            [24] 2244 	pop	ar5
      0034A8 D0 06            [24] 2245 	pop	ar6
      0034AA D0 07            [24] 2246 	pop	ar7
      0034AC 88 2C            [24] 2247 	mov	_main_sloc5_1_0,r0
      0034AE 8B 2D            [24] 2248 	mov	(_main_sloc5_1_0 + 1),r3
      0034B0 75 2E 00         [24] 2249 	mov	(_main_sloc5_1_0 + 2),#0x00
                                   2250 ;	main.c:222: spi_buffer_read(len, gNextPacketPtr + 6, packet_data_actual);
      0034B3 90 03 7B         [24] 2251 	mov	dptr,#_main_gNextPacketPtr_60001_168
      0034B6 E0               [24] 2252 	movx	a,@dptr
      0034B7 FA               [12] 2253 	mov	r2,a
      0034B8 A3               [24] 2254 	inc	dptr
      0034B9 E0               [24] 2255 	movx	a,@dptr
      0034BA FC               [12] 2256 	mov	r4,a
      0034BB 74 06            [12] 2257 	mov	a,#0x06
      0034BD 2A               [12] 2258 	add	a, r2
      0034BE FA               [12] 2259 	mov	r2,a
      0034BF E4               [12] 2260 	clr	a
      0034C0 3C               [12] 2261 	addc	a, r4
      0034C1 FC               [12] 2262 	mov	r4,a
      0034C2 90 03 95         [24] 2263 	mov	dptr,#_spi_buffer_read_PARM_2
      0034C5 EA               [12] 2264 	mov	a,r2
      0034C6 F0               [24] 2265 	movx	@dptr,a
      0034C7 EC               [12] 2266 	mov	a,r4
      0034C8 A3               [24] 2267 	inc	dptr
      0034C9 F0               [24] 2268 	movx	@dptr,a
      0034CA 90 03 97         [24] 2269 	mov	dptr,#_spi_buffer_read_PARM_3
      0034CD E5 2C            [12] 2270 	mov	a,_main_sloc5_1_0
      0034CF F0               [24] 2271 	movx	@dptr,a
      0034D0 E5 2D            [12] 2272 	mov	a,(_main_sloc5_1_0 + 1)
      0034D2 A3               [24] 2273 	inc	dptr
      0034D3 F0               [24] 2274 	movx	@dptr,a
      0034D4 E5 2E            [12] 2275 	mov	a,(_main_sloc5_1_0 + 2)
      0034D6 A3               [24] 2276 	inc	dptr
      0034D7 F0               [24] 2277 	movx	@dptr,a
      0034D8 85 28 82         [24] 2278 	mov	dpl, _main_sloc3_1_0
      0034DB 85 29 83         [24] 2279 	mov	dph, (_main_sloc3_1_0 + 1)
      0034DE C0 07            [24] 2280 	push	ar7
      0034E0 C0 06            [24] 2281 	push	ar6
      0034E2 C0 05            [24] 2282 	push	ar5
      0034E4 12 3C D5         [24] 2283 	lcall	_spi_buffer_read
                                   2284 ;	main.c:224: int is_tcp_for_target = 0;
      0034E7 90 03 7D         [24] 2285 	mov	dptr,#_main_is_tcp_for_target_60004_173
      0034EA E4               [12] 2286 	clr	a
      0034EB F0               [24] 2287 	movx	@dptr,a
      0034EC A3               [24] 2288 	inc	dptr
      0034ED F0               [24] 2289 	movx	@dptr,a
                                   2290 ;	main.c:227: if (memcmp(packet_data_actual, device_mac, 6) == 0) {
      0034EE AA 2C            [24] 2291 	mov	r2,_main_sloc5_1_0
      0034F0 AB 2D            [24] 2292 	mov	r3,(_main_sloc5_1_0 + 1)
      0034F2 FC               [12] 2293 	mov	r4,a
      0034F3 90 09 DB         [24] 2294 	mov	dptr,#_memcmp_PARM_2
      0034F6 74 67            [12] 2295 	mov	a,#_main_device_mac_10000_137
      0034F8 F0               [24] 2296 	movx	@dptr,a
      0034F9 74 01            [12] 2297 	mov	a,#(_main_device_mac_10000_137 >> 8)
      0034FB A3               [24] 2298 	inc	dptr
      0034FC F0               [24] 2299 	movx	@dptr,a
      0034FD E4               [12] 2300 	clr	a
      0034FE A3               [24] 2301 	inc	dptr
      0034FF F0               [24] 2302 	movx	@dptr,a
      003500 90 09 DE         [24] 2303 	mov	dptr,#_memcmp_PARM_3
      003503 74 06            [12] 2304 	mov	a,#0x06
      003505 F0               [24] 2305 	movx	@dptr,a
      003506 E4               [12] 2306 	clr	a
      003507 A3               [24] 2307 	inc	dptr
      003508 F0               [24] 2308 	movx	@dptr,a
      003509 8A 82            [24] 2309 	mov	dpl, r2
      00350B 8B 83            [24] 2310 	mov	dph, r3
      00350D 8C F0            [24] 2311 	mov	b, r4
      00350F 12 53 94         [24] 2312 	lcall	_memcmp
      003512 E5 82            [12] 2313 	mov	a, dpl
      003514 85 83 F0         [24] 2314 	mov	b, dph
      003517 D0 05            [24] 2315 	pop	ar5
      003519 D0 06            [24] 2316 	pop	ar6
      00351B D0 07            [24] 2317 	pop	ar7
      00351D 45 F0            [12] 2318 	orl	a,b
      00351F 70 70            [24] 2319 	jnz	00121$
                                   2320 ;	main.c:230: if (packet_data_actual[12] == 0x08 && packet_data_actual[13] == 0x00) {
      003521 74 0C            [12] 2321 	mov	a,#0x0c
      003523 25 2C            [12] 2322 	add	a, _main_sloc5_1_0
      003525 FA               [12] 2323 	mov	r2,a
      003526 E4               [12] 2324 	clr	a
      003527 35 2D            [12] 2325 	addc	a, (_main_sloc5_1_0 + 1)
      003529 FB               [12] 2326 	mov	r3,a
      00352A AC 2E            [24] 2327 	mov	r4,(_main_sloc5_1_0 + 2)
      00352C 8A 82            [24] 2328 	mov	dpl,r2
      00352E 8B 83            [24] 2329 	mov	dph,r3
      003530 8C F0            [24] 2330 	mov	b,r4
      003532 12 5E E3         [24] 2331 	lcall	__gptrget
      003535 FA               [12] 2332 	mov	r2,a
      003536 BA 08 58         [24] 2333 	cjne	r2,#0x08,00121$
      003539 74 0D            [12] 2334 	mov	a,#0x0d
      00353B 25 2C            [12] 2335 	add	a, _main_sloc5_1_0
      00353D FA               [12] 2336 	mov	r2,a
      00353E E4               [12] 2337 	clr	a
      00353F 35 2D            [12] 2338 	addc	a, (_main_sloc5_1_0 + 1)
      003541 FB               [12] 2339 	mov	r3,a
      003542 AC 2E            [24] 2340 	mov	r4,(_main_sloc5_1_0 + 2)
      003544 8A 82            [24] 2341 	mov	dpl,r2
      003546 8B 83            [24] 2342 	mov	dph,r3
      003548 8C F0            [24] 2343 	mov	b,r4
      00354A 12 5E E3         [24] 2344 	lcall	__gptrget
      00354D 70 42            [24] 2345 	jnz	00121$
                                   2346 ;	main.c:231: printf("Valid ETHER packet.....................\n\r");
      00354F C0 07            [24] 2347 	push	ar7
      003551 C0 06            [24] 2348 	push	ar6
      003553 C0 05            [24] 2349 	push	ar5
      003555 74 EB            [12] 2350 	mov	a,#___str_38
      003557 C0 E0            [24] 2351 	push	acc
      003559 74 64            [12] 2352 	mov	a,#(___str_38 >> 8)
      00355B C0 E0            [24] 2353 	push	acc
      00355D 74 80            [12] 2354 	mov	a,#0x80
      00355F C0 E0            [24] 2355 	push	acc
      003561 12 54 C1         [24] 2356 	lcall	_printf
      003564 15 81            [12] 2357 	dec	sp
      003566 15 81            [12] 2358 	dec	sp
      003568 15 81            [12] 2359 	dec	sp
      00356A D0 05            [24] 2360 	pop	ar5
      00356C D0 06            [24] 2361 	pop	ar6
      00356E D0 07            [24] 2362 	pop	ar7
                                   2363 ;	main.c:233: if (packet_data_actual[23] == 0x06) {
      003570 74 17            [12] 2364 	mov	a,#0x17
      003572 25 2C            [12] 2365 	add	a, _main_sloc5_1_0
      003574 FA               [12] 2366 	mov	r2,a
      003575 E4               [12] 2367 	clr	a
      003576 35 2D            [12] 2368 	addc	a, (_main_sloc5_1_0 + 1)
      003578 FB               [12] 2369 	mov	r3,a
      003579 AC 2E            [24] 2370 	mov	r4,(_main_sloc5_1_0 + 2)
      00357B 8A 82            [24] 2371 	mov	dpl,r2
      00357D 8B 83            [24] 2372 	mov	dph,r3
      00357F 8C F0            [24] 2373 	mov	b,r4
      003581 12 5E E3         [24] 2374 	lcall	__gptrget
      003584 FA               [12] 2375 	mov	r2,a
      003585 BA 06 09         [24] 2376 	cjne	r2,#0x06,00121$
                                   2377 ;	main.c:234: is_tcp_for_target = 1;
      003588 90 03 7D         [24] 2378 	mov	dptr,#_main_is_tcp_for_target_60004_173
      00358B 74 01            [12] 2379 	mov	a,#0x01
      00358D F0               [24] 2380 	movx	@dptr,a
      00358E E4               [12] 2381 	clr	a
      00358F A3               [24] 2382 	inc	dptr
      003590 F0               [24] 2383 	movx	@dptr,a
      003591                       2384 00121$:
                                   2385 ;	main.c:238: if (is_tcp_for_target)
      003591 90 03 7D         [24] 2386 	mov	dptr,#_main_is_tcp_for_target_60004_173
      003594 E0               [24] 2387 	movx	a,@dptr
      003595 F5 F0            [12] 2388 	mov	b,a
      003597 A3               [24] 2389 	inc	dptr
      003598 E0               [24] 2390 	movx	a,@dptr
      003599 45 F0            [12] 2391 	orl	a,b
      00359B 70 03            [24] 2392 	jnz	00266$
      00359D 02 36 8D         [24] 2393 	ljmp	00126$
      0035A0                       2394 00266$:
                                   2395 ;	main.c:243: uint8_t *response = process_tcp_packet(packet_data_actual, len+4, &response_size);
      0035A0 74 04            [12] 2396 	mov	a,#0x04
      0035A2 25 26            [12] 2397 	add	a, _main_sloc2_1_0
      0035A4 FB               [12] 2398 	mov	r3,a
      0035A5 E4               [12] 2399 	clr	a
      0035A6 35 27            [12] 2400 	addc	a, (_main_sloc2_1_0 + 1)
      0035A8 FC               [12] 2401 	mov	r4,a
      0035A9 90 03 C2         [24] 2402 	mov	dptr,#_process_tcp_packet_PARM_2
      0035AC EB               [12] 2403 	mov	a,r3
      0035AD F0               [24] 2404 	movx	@dptr,a
      0035AE EC               [12] 2405 	mov	a,r4
      0035AF A3               [24] 2406 	inc	dptr
      0035B0 F0               [24] 2407 	movx	@dptr,a
      0035B1 90 03 C4         [24] 2408 	mov	dptr,#_process_tcp_packet_PARM_3
      0035B4 74 7F            [12] 2409 	mov	a,#_main_response_size_70004_177
      0035B6 F0               [24] 2410 	movx	@dptr,a
      0035B7 74 03            [12] 2411 	mov	a,#(_main_response_size_70004_177 >> 8)
      0035B9 A3               [24] 2412 	inc	dptr
      0035BA F0               [24] 2413 	movx	@dptr,a
      0035BB E4               [12] 2414 	clr	a
      0035BC A3               [24] 2415 	inc	dptr
      0035BD F0               [24] 2416 	movx	@dptr,a
      0035BE 85 2C 82         [24] 2417 	mov	dpl, _main_sloc5_1_0
      0035C1 85 2D 83         [24] 2418 	mov	dph, (_main_sloc5_1_0 + 1)
      0035C4 85 2E F0         [24] 2419 	mov	b, (_main_sloc5_1_0 + 2)
      0035C7 C0 07            [24] 2420 	push	ar7
      0035C9 C0 06            [24] 2421 	push	ar6
      0035CB C0 05            [24] 2422 	push	ar5
      0035CD 12 45 E9         [24] 2423 	lcall	_process_tcp_packet
      0035D0 AA 82            [24] 2424 	mov	r2, dpl
      0035D2 AB 83            [24] 2425 	mov	r3, dph
      0035D4 AC F0            [24] 2426 	mov	r4, b
      0035D6 D0 05            [24] 2427 	pop	ar5
      0035D8 D0 06            [24] 2428 	pop	ar6
      0035DA D0 07            [24] 2429 	pop	ar7
                                   2430 ;	main.c:246: if (response != NULL) {
      0035DC EA               [12] 2431 	mov	a,r2
      0035DD 4B               [12] 2432 	orl	a,r3
      0035DE 60 69            [24] 2433 	jz	00123$
                                   2434 ;	main.c:247: printf("\nProcessed response data:\n");
      0035E0 C0 07            [24] 2435 	push	ar7
      0035E2 C0 06            [24] 2436 	push	ar6
      0035E4 C0 05            [24] 2437 	push	ar5
      0035E6 C0 04            [24] 2438 	push	ar4
      0035E8 C0 03            [24] 2439 	push	ar3
      0035EA C0 02            [24] 2440 	push	ar2
      0035EC 74 15            [12] 2441 	mov	a,#___str_39
      0035EE C0 E0            [24] 2442 	push	acc
      0035F0 74 65            [12] 2443 	mov	a,#(___str_39 >> 8)
      0035F2 C0 E0            [24] 2444 	push	acc
      0035F4 74 80            [12] 2445 	mov	a,#0x80
      0035F6 C0 E0            [24] 2446 	push	acc
      0035F8 12 54 C1         [24] 2447 	lcall	_printf
      0035FB 15 81            [12] 2448 	dec	sp
      0035FD 15 81            [12] 2449 	dec	sp
      0035FF 15 81            [12] 2450 	dec	sp
      003601 D0 02            [24] 2451 	pop	ar2
      003603 D0 03            [24] 2452 	pop	ar3
      003605 D0 04            [24] 2453 	pop	ar4
      003607 D0 05            [24] 2454 	pop	ar5
      003609 D0 06            [24] 2455 	pop	ar6
      00360B D0 07            [24] 2456 	pop	ar7
                                   2457 ;	main.c:249: transmit_tcp_packet(response, response_size);
      00360D 90 03 7F         [24] 2458 	mov	dptr,#_main_response_size_70004_177
      003610 E0               [24] 2459 	movx	a,@dptr
      003611 F8               [12] 2460 	mov	r0,a
      003612 A3               [24] 2461 	inc	dptr
      003613 E0               [24] 2462 	movx	a,@dptr
      003614 F9               [12] 2463 	mov	r1,a
      003615 90 09 B2         [24] 2464 	mov	dptr,#_transmit_tcp_packet_PARM_2
      003618 E8               [12] 2465 	mov	a,r0
      003619 F0               [24] 2466 	movx	@dptr,a
      00361A E9               [12] 2467 	mov	a,r1
      00361B A3               [24] 2468 	inc	dptr
      00361C F0               [24] 2469 	movx	@dptr,a
      00361D 8A 82            [24] 2470 	mov	dpl, r2
      00361F 8B 83            [24] 2471 	mov	dph, r3
      003621 8C F0            [24] 2472 	mov	b, r4
      003623 C0 07            [24] 2473 	push	ar7
      003625 C0 06            [24] 2474 	push	ar6
      003627 C0 05            [24] 2475 	push	ar5
      003629 C0 04            [24] 2476 	push	ar4
      00362B C0 03            [24] 2477 	push	ar3
      00362D C0 02            [24] 2478 	push	ar2
      00362F 12 4D 31         [24] 2479 	lcall	_transmit_tcp_packet
      003632 D0 02            [24] 2480 	pop	ar2
      003634 D0 03            [24] 2481 	pop	ar3
      003636 D0 04            [24] 2482 	pop	ar4
                                   2483 ;	main.c:250: free(response); // Free response memory if allocated dynamically
      003638 8A 82            [24] 2484 	mov	dpl, r2
      00363A 8B 83            [24] 2485 	mov	dph, r3
      00363C 8C F0            [24] 2486 	mov	b, r4
      00363E 12 4E B8         [24] 2487 	lcall	_free
      003641 D0 05            [24] 2488 	pop	ar5
      003643 D0 06            [24] 2489 	pop	ar6
      003645 D0 07            [24] 2490 	pop	ar7
      003647 80 21            [24] 2491 	sjmp	00124$
      003649                       2492 00123$:
                                   2493 ;	main.c:252: printf("\nNo response generated by TCP packet processing.\n");
      003649 C0 07            [24] 2494 	push	ar7
      00364B C0 06            [24] 2495 	push	ar6
      00364D C0 05            [24] 2496 	push	ar5
      00364F 74 30            [12] 2497 	mov	a,#___str_40
      003651 C0 E0            [24] 2498 	push	acc
      003653 74 65            [12] 2499 	mov	a,#(___str_40 >> 8)
      003655 C0 E0            [24] 2500 	push	acc
      003657 74 80            [12] 2501 	mov	a,#0x80
      003659 C0 E0            [24] 2502 	push	acc
      00365B 12 54 C1         [24] 2503 	lcall	_printf
      00365E 15 81            [12] 2504 	dec	sp
      003660 15 81            [12] 2505 	dec	sp
      003662 15 81            [12] 2506 	dec	sp
      003664 D0 05            [24] 2507 	pop	ar5
      003666 D0 06            [24] 2508 	pop	ar6
      003668 D0 07            [24] 2509 	pop	ar7
      00366A                       2510 00124$:
                                   2511 ;	main.c:255: printf("YESSSS\n");
      00366A C0 07            [24] 2512 	push	ar7
      00366C C0 06            [24] 2513 	push	ar6
      00366E C0 05            [24] 2514 	push	ar5
      003670 74 62            [12] 2515 	mov	a,#___str_41
      003672 C0 E0            [24] 2516 	push	acc
      003674 74 65            [12] 2517 	mov	a,#(___str_41 >> 8)
      003676 C0 E0            [24] 2518 	push	acc
      003678 74 80            [12] 2519 	mov	a,#0x80
      00367A C0 E0            [24] 2520 	push	acc
      00367C 12 54 C1         [24] 2521 	lcall	_printf
      00367F 15 81            [12] 2522 	dec	sp
      003681 15 81            [12] 2523 	dec	sp
      003683 15 81            [12] 2524 	dec	sp
      003685 D0 05            [24] 2525 	pop	ar5
      003687 D0 06            [24] 2526 	pop	ar6
      003689 D0 07            [24] 2527 	pop	ar7
      00368B 80 21            [24] 2528 	sjmp	00127$
      00368D                       2529 00126$:
                                   2530 ;	main.c:259: printf("NOOOO\n");
      00368D C0 07            [24] 2531 	push	ar7
      00368F C0 06            [24] 2532 	push	ar6
      003691 C0 05            [24] 2533 	push	ar5
      003693 74 6A            [12] 2534 	mov	a,#___str_42
      003695 C0 E0            [24] 2535 	push	acc
      003697 74 65            [12] 2536 	mov	a,#(___str_42 >> 8)
      003699 C0 E0            [24] 2537 	push	acc
      00369B 74 80            [12] 2538 	mov	a,#0x80
      00369D C0 E0            [24] 2539 	push	acc
      00369F 12 54 C1         [24] 2540 	lcall	_printf
      0036A2 15 81            [12] 2541 	dec	sp
      0036A4 15 81            [12] 2542 	dec	sp
      0036A6 15 81            [12] 2543 	dec	sp
      0036A8 D0 05            [24] 2544 	pop	ar5
      0036AA D0 06            [24] 2545 	pop	ar6
      0036AC D0 07            [24] 2546 	pop	ar7
      0036AE                       2547 00127$:
                                   2548 ;	main.c:263: gNextPacketPtr = nextPacket;
      0036AE 90 03 7B         [24] 2549 	mov	dptr,#_main_gNextPacketPtr_60001_168
      0036B1 E5 2A            [12] 2550 	mov	a,_main_sloc4_1_0
      0036B3 F0               [24] 2551 	movx	@dptr,a
      0036B4 E5 2B            [12] 2552 	mov	a,(_main_sloc4_1_0 + 1)
      0036B6 A3               [24] 2553 	inc	dptr
      0036B7 F0               [24] 2554 	movx	@dptr,a
                                   2555 ;	main.c:268: printf("nextPacket: 0x%04X\n", nextPacket);
      0036B8 C0 07            [24] 2556 	push	ar7
      0036BA C0 06            [24] 2557 	push	ar6
      0036BC C0 05            [24] 2558 	push	ar5
      0036BE C0 2A            [24] 2559 	push	_main_sloc4_1_0
      0036C0 C0 2B            [24] 2560 	push	(_main_sloc4_1_0 + 1)
      0036C2 74 71            [12] 2561 	mov	a,#___str_43
      0036C4 C0 E0            [24] 2562 	push	acc
      0036C6 74 65            [12] 2563 	mov	a,#(___str_43 >> 8)
      0036C8 C0 E0            [24] 2564 	push	acc
      0036CA 74 80            [12] 2565 	mov	a,#0x80
      0036CC C0 E0            [24] 2566 	push	acc
      0036CE 12 54 C1         [24] 2567 	lcall	_printf
      0036D1 E5 81            [12] 2568 	mov	a,sp
      0036D3 24 FB            [12] 2569 	add	a,#0xfb
      0036D5 F5 81            [12] 2570 	mov	sp,a
                                   2571 ;	main.c:269: printf("byteCount: %d\n", byteCount);
      0036D7 C0 22            [24] 2572 	push	_main_sloc0_1_0
      0036D9 C0 23            [24] 2573 	push	(_main_sloc0_1_0 + 1)
      0036DB 74 85            [12] 2574 	mov	a,#___str_44
      0036DD C0 E0            [24] 2575 	push	acc
      0036DF 74 65            [12] 2576 	mov	a,#(___str_44 >> 8)
      0036E1 C0 E0            [24] 2577 	push	acc
      0036E3 74 80            [12] 2578 	mov	a,#0x80
      0036E5 C0 E0            [24] 2579 	push	acc
      0036E7 12 54 C1         [24] 2580 	lcall	_printf
      0036EA E5 81            [12] 2581 	mov	a,sp
      0036EC 24 FB            [12] 2582 	add	a,#0xfb
      0036EE F5 81            [12] 2583 	mov	sp,a
                                   2584 ;	main.c:270: printf("status: 0x%02X\n", status);
      0036F0 C0 24            [24] 2585 	push	_main_sloc1_1_0
      0036F2 C0 25            [24] 2586 	push	(_main_sloc1_1_0 + 1)
      0036F4 74 94            [12] 2587 	mov	a,#___str_45
      0036F6 C0 E0            [24] 2588 	push	acc
      0036F8 74 65            [12] 2589 	mov	a,#(___str_45 >> 8)
      0036FA C0 E0            [24] 2590 	push	acc
      0036FC 74 80            [12] 2591 	mov	a,#0x80
      0036FE C0 E0            [24] 2592 	push	acc
      003700 12 54 C1         [24] 2593 	lcall	_printf
      003703 E5 81            [12] 2594 	mov	a,sp
      003705 24 FB            [12] 2595 	add	a,#0xfb
      003707 F5 81            [12] 2596 	mov	sp,a
      003709 D0 05            [24] 2597 	pop	ar5
      00370B D0 06            [24] 2598 	pop	ar6
      00370D D0 07            [24] 2599 	pop	ar7
                                   2600 ;	main.c:273: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
      00370F 90 03 8D         [24] 2601 	mov	dptr,#_mac_spi_read_PARM_2
      003712 E4               [12] 2602 	clr	a
      003713 F0               [24] 2603 	movx	@dptr,a
      003714 75 82 1E         [24] 2604 	mov	dpl, #0x1e
      003717 C0 07            [24] 2605 	push	ar7
      003719 C0 06            [24] 2606 	push	ar6
      00371B C0 05            [24] 2607 	push	ar5
      00371D 12 3A 9B         [24] 2608 	lcall	_mac_spi_read
      003720 E5 82            [12] 2609 	mov	a, dpl
      003722 D0 05            [24] 2610 	pop	ar5
      003724 D0 06            [24] 2611 	pop	ar6
      003726 D0 07            [24] 2612 	pop	ar7
                                   2613 ;	main.c:274: spi_control_write(2, 0x1E, (read_econ2 | (1 << 6))); //mac enable for reception
      003728 44 40            [12] 2614 	orl	a,#0x40
      00372A FC               [12] 2615 	mov	r4,a
      00372B 90 03 84         [24] 2616 	mov	dptr,#_spi_control_write_PARM_2
      00372E 74 1E            [12] 2617 	mov	a,#0x1e
      003730 F0               [24] 2618 	movx	@dptr,a
      003731 90 03 85         [24] 2619 	mov	dptr,#_spi_control_write_PARM_3
      003734 EC               [12] 2620 	mov	a,r4
      003735 F0               [24] 2621 	movx	@dptr,a
      003736 75 82 02         [24] 2622 	mov	dpl, #0x02
      003739 C0 07            [24] 2623 	push	ar7
      00373B C0 06            [24] 2624 	push	ar6
      00373D C0 05            [24] 2625 	push	ar5
      00373F 12 39 25         [24] 2626 	lcall	_spi_control_write
      003742 D0 05            [24] 2627 	pop	ar5
      003744 D0 06            [24] 2628 	pop	ar6
      003746 D0 07            [24] 2629 	pop	ar7
                                   2630 ;	main.c:275: free(packet_data);
      003748 7F 00            [12] 2631 	mov	r7,#0x00
      00374A 8E 82            [24] 2632 	mov	dpl, r6
      00374C 8D 83            [24] 2633 	mov	dph, r5
      00374E 8F F0            [24] 2634 	mov	b, r7
      003750 12 4E B8         [24] 2635 	lcall	_free
      003753 02 33 80         [24] 2636 	ljmp	00131$
                                   2637 ;	main.c:286: case 'C':{
      003756                       2638 00134$:
                                   2639 ;	main.c:287: printf(" Resetting ENC using RESET pin in Hardware(P1_0)\n\r");
      003756 74 A4            [12] 2640 	mov	a,#___str_46
      003758 C0 E0            [24] 2641 	push	acc
      00375A 74 65            [12] 2642 	mov	a,#(___str_46 >> 8)
      00375C C0 E0            [24] 2643 	push	acc
      00375E 74 80            [12] 2644 	mov	a,#0x80
      003760 C0 E0            [24] 2645 	push	acc
      003762 12 54 C1         [24] 2646 	lcall	_printf
      003765 15 81            [12] 2647 	dec	sp
      003767 15 81            [12] 2648 	dec	sp
      003769 15 81            [12] 2649 	dec	sp
                                   2650 ;	main.c:288: ENC_RESET = 0;
                                   2651 ;	assignBit
      00376B C2 90            [12] 2652 	clr	_P1_0
                                   2653 ;	main.c:289: for(int i = 0; i < 6000; i++);
      00376D 7E 00            [12] 2654 	mov	r6,#0x00
      00376F 7F 00            [12] 2655 	mov	r7,#0x00
      003771                       2656 00148$:
      003771 C3               [12] 2657 	clr	c
      003772 EE               [12] 2658 	mov	a,r6
      003773 94 70            [12] 2659 	subb	a,#0x70
      003775 EF               [12] 2660 	mov	a,r7
      003776 64 80            [12] 2661 	xrl	a,#0x80
      003778 94 97            [12] 2662 	subb	a,#0x97
      00377A 50 07            [24] 2663 	jnc	00135$
      00377C 0E               [12] 2664 	inc	r6
      00377D BE 00 F1         [24] 2665 	cjne	r6,#0x00,00148$
      003780 0F               [12] 2666 	inc	r7
      003781 80 EE            [24] 2667 	sjmp	00148$
      003783                       2668 00135$:
                                   2669 ;	main.c:290: ENC_RESET = 1;
                                   2670 ;	assignBit
      003783 D2 90            [12] 2671 	setb	_P1_0
                                   2672 ;	main.c:291: break;
      003785 02 2D AD         [24] 2673 	ljmp	00142$
                                   2674 ;	main.c:293: case 'D':
      003788                       2675 00136$:
                                   2676 ;	main.c:297: process_packet_from_buffer(0x0846);
      003788 90 08 46         [24] 2677 	mov	dptr,#0x0846
      00378B 12 4A 81         [24] 2678 	lcall	_process_packet_from_buffer
                                   2679 ;	main.c:298: break;
      00378E 02 2D AD         [24] 2680 	ljmp	00142$
                                   2681 ;	main.c:300: case 'E':{
      003791                       2682 00137$:
                                   2683 ;	main.c:301: IT0 = 1;  // Edge-triggered mode for INT0
                                   2684 ;	assignBit
      003791 D2 88            [12] 2685 	setb	_IT0
                                   2686 ;	main.c:302: EX0 = 1;  // Enable INT0
                                   2687 ;	assignBit
      003793 D2 A8            [12] 2688 	setb	_EX0
                                   2689 ;	main.c:303: EA = 1;   // Enable global interrupts
                                   2690 ;	assignBit
      003795 D2 AF            [12] 2691 	setb	_EA
                                   2692 ;	main.c:304: uint8_t read_econ2 = mac_spi_read(0x1E, 0); //mac enable for reception
      003797 90 03 8D         [24] 2693 	mov	dptr,#_mac_spi_read_PARM_2
      00379A E4               [12] 2694 	clr	a
      00379B F0               [24] 2695 	movx	@dptr,a
      00379C 75 82 1E         [24] 2696 	mov	dpl, #0x1e
      00379F 12 3A 9B         [24] 2697 	lcall	_mac_spi_read
                                   2698 ;	main.c:306: printf("Enabling TXPKTIE\n\r");
      0037A2 74 D7            [12] 2699 	mov	a,#___str_47
      0037A4 C0 E0            [24] 2700 	push	acc
      0037A6 74 65            [12] 2701 	mov	a,#(___str_47 >> 8)
      0037A8 C0 E0            [24] 2702 	push	acc
      0037AA 74 80            [12] 2703 	mov	a,#0x80
      0037AC C0 E0            [24] 2704 	push	acc
      0037AE 12 54 C1         [24] 2705 	lcall	_printf
      0037B1 15 81            [12] 2706 	dec	sp
      0037B3 15 81            [12] 2707 	dec	sp
      0037B5 15 81            [12] 2708 	dec	sp
                                   2709 ;	main.c:307: spi_control_write(0, 0x1B, 0xC0);
      0037B7 90 03 84         [24] 2710 	mov	dptr,#_spi_control_write_PARM_2
      0037BA 74 1B            [12] 2711 	mov	a,#0x1b
      0037BC F0               [24] 2712 	movx	@dptr,a
      0037BD 90 03 85         [24] 2713 	mov	dptr,#_spi_control_write_PARM_3
      0037C0 74 C0            [12] 2714 	mov	a,#0xc0
      0037C2 F0               [24] 2715 	movx	@dptr,a
      0037C3 75 82 00         [24] 2716 	mov	dpl, #0x00
      0037C6 12 39 25         [24] 2717 	lcall	_spi_control_write
                                   2718 ;	main.c:308: break;
      0037C9 02 2D AD         [24] 2719 	ljmp	00142$
                                   2720 ;	main.c:310: case 'F':{
      0037CC                       2721 00138$:
                                   2722 ;	main.c:311: printf("Disabling TXPKTIE\n\r");
      0037CC 74 EA            [12] 2723 	mov	a,#___str_48
      0037CE C0 E0            [24] 2724 	push	acc
      0037D0 74 65            [12] 2725 	mov	a,#(___str_48 >> 8)
      0037D2 C0 E0            [24] 2726 	push	acc
      0037D4 74 80            [12] 2727 	mov	a,#0x80
      0037D6 C0 E0            [24] 2728 	push	acc
      0037D8 12 54 C1         [24] 2729 	lcall	_printf
      0037DB 15 81            [12] 2730 	dec	sp
      0037DD 15 81            [12] 2731 	dec	sp
      0037DF 15 81            [12] 2732 	dec	sp
                                   2733 ;	main.c:312: spi_control_write(0, 0x1B, 0);
      0037E1 90 03 84         [24] 2734 	mov	dptr,#_spi_control_write_PARM_2
      0037E4 74 1B            [12] 2735 	mov	a,#0x1b
      0037E6 F0               [24] 2736 	movx	@dptr,a
      0037E7 90 03 85         [24] 2737 	mov	dptr,#_spi_control_write_PARM_3
      0037EA E4               [12] 2738 	clr	a
      0037EB F0               [24] 2739 	movx	@dptr,a
      0037EC 75 82 00         [24] 2740 	mov	dpl, #0x00
      0037EF 12 39 25         [24] 2741 	lcall	_spi_control_write
                                   2742 ;	main.c:314: default: {
      0037F2                       2743 00139$:
                                   2744 ;	main.c:315: printf("Invalid option. Please select a valid action.\n\r");
      0037F2 74 FE            [12] 2745 	mov	a,#___str_49
      0037F4 C0 E0            [24] 2746 	push	acc
      0037F6 74 65            [12] 2747 	mov	a,#(___str_49 >> 8)
      0037F8 C0 E0            [24] 2748 	push	acc
      0037FA 74 80            [12] 2749 	mov	a,#0x80
      0037FC C0 E0            [24] 2750 	push	acc
      0037FE 12 54 C1         [24] 2751 	lcall	_printf
      003801 15 81            [12] 2752 	dec	sp
      003803 15 81            [12] 2753 	dec	sp
      003805 15 81            [12] 2754 	dec	sp
                                   2755 ;	main.c:318: }
                                   2756 ;	main.c:320: }
      003807 02 2D AD         [24] 2757 	ljmp	00142$
                                   2758 	.area CSEG    (CODE)
                                   2759 	.area CONST   (CODE)
                                   2760 	.area CONST   (CODE)
      0060C2                       2761 ___str_0:
      0060C2 0A                    2762 	.db 0x0a
      0060C3 0D                    2763 	.db 0x0d
      0060C4 00                    2764 	.db 0x00
                                   2765 	.area CSEG    (CODE)
                                   2766 	.area CONST   (CODE)
      0060C5                       2767 ___str_1:
      0060C5 53 50 49 20 4F 70 65  2768 	.ascii "SPI Operations on 8051"
             72 61 74 69 6F 6E 73
             20 6F 6E 20 38 30 35
             31
      0060DB 0A                    2769 	.db 0x0a
      0060DC 0D                    2770 	.db 0x0d
      0060DD 00                    2771 	.db 0x00
                                   2772 	.area CSEG    (CODE)
                                   2773 	.area CONST   (CODE)
      0060DE                       2774 ___str_2:
      0060DE 0A                    2775 	.db 0x0a
      0060DF 0D                    2776 	.db 0x0d
      0060E0 43 68 6F 6F 73 65 20  2777 	.ascii "Choose an action: "
             61 6E 20 61 63 74 69
             6F 6E 3A 20
      0060F2 0A                    2778 	.db 0x0a
      0060F3 0D                    2779 	.db 0x0d
      0060F4 00                    2780 	.db 0x00
                                   2781 	.area CSEG    (CODE)
                                   2782 	.area CONST   (CODE)
      0060F5                       2783 ___str_3:
      0060F5 31 20 2D 2D 3E 20 43  2784 	.ascii "1 --> Control Write"
             6F 6E 74 72 6F 6C 20
             57 72 69 74 65
      006108 0A                    2785 	.db 0x0a
      006109 0D                    2786 	.db 0x0d
      00610A 00                    2787 	.db 0x00
                                   2788 	.area CSEG    (CODE)
                                   2789 	.area CONST   (CODE)
      00610B                       2790 ___str_4:
      00610B 32 20 2D 2D 3E 20 42  2791 	.ascii "2 --> Buffer Write"
             75 66 66 65 72 20 57
             72 69 74 65
      00611D 0A                    2792 	.db 0x0a
      00611E 0D                    2793 	.db 0x0d
      00611F 00                    2794 	.db 0x00
                                   2795 	.area CSEG    (CODE)
                                   2796 	.area CONST   (CODE)
      006120                       2797 ___str_5:
      006120 33 20 2D 2D 3E 20 42  2798 	.ascii "3 --> Buffer Read"
             75 66 66 65 72 20 52
             65 61 64
      006131 0A                    2799 	.db 0x0a
      006132 0D                    2800 	.db 0x0d
      006133 00                    2801 	.db 0x00
                                   2802 	.area CSEG    (CODE)
                                   2803 	.area CONST   (CODE)
      006134                       2804 ___str_6:
      006134 34 20 2D 2D 3E 20 4D  2805 	.ascii "4 --> MAC Register Read"
             41 43 20 52 65 67 69
             73 74 65 72 20 52 65
             61 64
      00614B 0A                    2806 	.db 0x0a
      00614C 0D                    2807 	.db 0x0d
      00614D 00                    2808 	.db 0x00
                                   2809 	.area CSEG    (CODE)
                                   2810 	.area CONST   (CODE)
      00614E                       2811 ___str_7:
      00614E 35 20 2D 2D 3E 20 50  2812 	.ascii "5 --> PHY SPI Write"
             48 59 20 53 50 49 20
             57 72 69 74 65
      006161 0A                    2813 	.db 0x0a
      006162 0D                    2814 	.db 0x0d
      006163 00                    2815 	.db 0x00
                                   2816 	.area CSEG    (CODE)
                                   2817 	.area CONST   (CODE)
      006164                       2818 ___str_8:
      006164 36 20 2D 2D 3E 20 50  2819 	.ascii "6 --> PHY SPI Read"
             48 59 20 53 50 49 20
             52 65 61 64
      006176 0A                    2820 	.db 0x0a
      006177 0D                    2821 	.db 0x0d
      006178 00                    2822 	.db 0x00
                                   2823 	.area CSEG    (CODE)
                                   2824 	.area CONST   (CODE)
      006179                       2825 ___str_9:
      006179 37 20 2D 2D 3E 20 45  2826 	.ascii "7 --> ENC Reset"
             4E 43 20 52 65 73 65
             74
      006188 0A                    2827 	.db 0x0a
      006189 0D                    2828 	.db 0x0d
      00618A 00                    2829 	.db 0x00
                                   2830 	.area CSEG    (CODE)
                                   2831 	.area CONST   (CODE)
      00618B                       2832 ___str_10:
      00618B 38 20 2D 2D 3E 20 52  2833 	.ascii "8 --> Read ETH Register"
             65 61 64 20 45 54 48
             20 52 65 67 69 73 74
             65 72
      0061A2 0A                    2834 	.db 0x0a
      0061A3 0D                    2835 	.db 0x0d
      0061A4 00                    2836 	.db 0x00
                                   2837 	.area CSEG    (CODE)
                                   2838 	.area CONST   (CODE)
      0061A5                       2839 ___str_11:
      0061A5 39 20 2D 2D 3E 20 44  2840 	.ascii "9 --> Display Menu"
             69 73 70 6C 61 79 20
             4D 65 6E 75
      0061B7 0A                    2841 	.db 0x0a
      0061B8 0D                    2842 	.db 0x0d
      0061B9 00                    2843 	.db 0x00
                                   2844 	.area CSEG    (CODE)
                                   2845 	.area CONST   (CODE)
      0061BA                       2846 ___str_12:
      0061BA 41 20 2D 2D 3E 20 53  2847 	.ascii "A --> Send ARP Request"
             65 6E 64 20 41 52 50
             20 52 65 71 75 65 73
             74
      0061D0 0A                    2848 	.db 0x0a
      0061D1 0D                    2849 	.db 0x0d
      0061D2 00                    2850 	.db 0x00
                                   2851 	.area CSEG    (CODE)
                                   2852 	.area CONST   (CODE)
      0061D3                       2853 ___str_13:
      0061D3 42 20 2D 2D 3E 20 49  2854 	.ascii "B --> Init RX buffers"
             6E 69 74 20 52 58 20
             62 75 66 66 65 72 73
      0061E8 0A                    2855 	.db 0x0a
      0061E9 0D                    2856 	.db 0x0d
      0061EA 00                    2857 	.db 0x00
                                   2858 	.area CSEG    (CODE)
                                   2859 	.area CONST   (CODE)
      0061EB                       2860 ___str_14:
      0061EB 43 20 2D 2D 3E 20 48  2861 	.ascii "C --> Hard Reset(nRESET pin)"
             61 72 64 20 52 65 73
             65 74 28 6E 52 45 53
             45 54 20 70 69 6E 29
      006207 0A                    2862 	.db 0x0a
      006208 0D                    2863 	.db 0x0d
      006209 00                    2864 	.db 0x00
                                   2865 	.area CSEG    (CODE)
                                   2866 	.area CONST   (CODE)
      00620A                       2867 ___str_15:
      00620A 44 20 2D 2D 3E 20 50  2868 	.ascii "D --> Process TCP"
             72 6F 63 65 73 73 20
             54 43 50
      00621B 0A                    2869 	.db 0x0a
      00621C 0D                    2870 	.db 0x0d
      00621D 00                    2871 	.db 0x00
                                   2872 	.area CSEG    (CODE)
                                   2873 	.area CONST   (CODE)
      00621E                       2874 ___str_16:
      00621E 45 20 2D 2D 3E 20 45  2875 	.ascii "E --> Enable TX interrupt"
             6E 61 62 6C 65 20 54
             58 20 69 6E 74 65 72
             72 75 70 74
      006237 0A                    2876 	.db 0x0a
      006238 0D                    2877 	.db 0x0d
      006239 00                    2878 	.db 0x00
                                   2879 	.area CSEG    (CODE)
                                   2880 	.area CONST   (CODE)
      00623A                       2881 ___str_17:
      00623A 46 20 2D 2D 3E 20 44  2882 	.ascii "F --> Disabling TX interrupt"
             69 73 61 62 6C 69 6E
             67 20 54 58 20 69 6E
             74 65 72 72 75 70 74
      006256 0A                    2883 	.db 0x0a
      006257 0D                    2884 	.db 0x0d
      006258 00                    2885 	.db 0x00
                                   2886 	.area CSEG    (CODE)
                                   2887 	.area CONST   (CODE)
      006259                       2888 ___str_18:
      006259 45 6E 74 65 72 20 74  2889 	.ascii "Enter the register bank to select:"
             68 65 20 72 65 67 69
             73 74 65 72 20 62 61
             6E 6B 20 74 6F 20 73
             65 6C 65 63 74 3A
      00627B 0A                    2890 	.db 0x0a
      00627C 0D                    2891 	.db 0x0d
      00627D 00                    2892 	.db 0x00
                                   2893 	.area CSEG    (CODE)
                                   2894 	.area CONST   (CODE)
      00627E                       2895 ___str_19:
      00627E 45 6E 74 65 72 20 74  2896 	.ascii "Enter the address of the Control Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 43 6F 6E
             74 72 6F 6C 20 52 65
             67 69 73 74 65 72 3A
      0062A8 0A                    2897 	.db 0x0a
      0062A9 0D                    2898 	.db 0x0d
      0062AA 00                    2899 	.db 0x00
                                   2900 	.area CSEG    (CODE)
                                   2901 	.area CONST   (CODE)
      0062AB                       2902 ___str_20:
      0062AB 45 6E 74 65 72 20 74  2903 	.ascii "Enter the data you want to write:"
             68 65 20 64 61 74 61
             20 79 6F 75 20 77 61
             6E 74 20 74 6F 20 77
             72 69 74 65 3A
      0062CC 0A                    2904 	.db 0x0a
      0062CD 0D                    2905 	.db 0x0d
      0062CE 00                    2906 	.db 0x00
                                   2907 	.area CSEG    (CODE)
                                   2908 	.area CONST   (CODE)
      0062CF                       2909 ___str_21:
      0062CF 45 6E 74 65 72 20 74  2910 	.ascii "Enter the number of bytes to write:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 77 72 69 74 65 3A
      0062F2 0A                    2911 	.db 0x0a
      0062F3 0D                    2912 	.db 0x0d
      0062F4 00                    2913 	.db 0x00
                                   2914 	.area CSEG    (CODE)
                                   2915 	.area CONST   (CODE)
      0062F5                       2916 ___str_22:
      0062F5 45 6E 74 65 72 20 74  2917 	.ascii "Enter the starting address:"
             68 65 20 73 74 61 72
             74 69 6E 67 20 61 64
             64 72 65 73 73 3A
      006310 0A                    2918 	.db 0x0a
      006311 0D                    2919 	.db 0x0d
      006312 00                    2920 	.db 0x00
                                   2921 	.area CSEG    (CODE)
                                   2922 	.area CONST   (CODE)
      006313                       2923 ___str_23:
      006313 45 6E 74 65 72 20 25  2924 	.ascii "Enter %d bytes of data (in hex):"
             64 20 62 79 74 65 73
             20 6F 66 20 64 61 74
             61 20 28 69 6E 20 68
             65 78 29 3A
      006333 0A                    2925 	.db 0x0a
      006334 0D                    2926 	.db 0x0d
      006335 00                    2927 	.db 0x00
                                   2928 	.area CSEG    (CODE)
                                   2929 	.area CONST   (CODE)
      006336                       2930 ___str_24:
      006336 42 79 74 65 20 25 64  2931 	.ascii "Byte %d: "
             3A 20
      00633F 00                    2932 	.db 0x00
                                   2933 	.area CSEG    (CODE)
                                   2934 	.area CONST   (CODE)
      006340                       2935 ___str_25:
      006340 45 6E 74 65 72 20 74  2936 	.ascii "Enter the number of bytes to read:"
             68 65 20 6E 75 6D 62
             65 72 20 6F 66 20 62
             79 74 65 73 20 74 6F
             20 72 65 61 64 3A
      006362 0A                    2937 	.db 0x0a
      006363 0D                    2938 	.db 0x0d
      006364 00                    2939 	.db 0x00
                                   2940 	.area CSEG    (CODE)
                                   2941 	.area CONST   (CODE)
      006365                       2942 ___str_26:
      006365 45 6E 74 65 72 20 74  2943 	.ascii "Enter the MAC register bank to select:"
             68 65 20 4D 41 43 20
             72 65 67 69 73 74 65
             72 20 62 61 6E 6B 20
             74 6F 20 73 65 6C 65
             63 74 3A
      00638B 0A                    2944 	.db 0x0a
      00638C 0D                    2945 	.db 0x0d
      00638D 00                    2946 	.db 0x00
                                   2947 	.area CSEG    (CODE)
                                   2948 	.area CONST   (CODE)
      00638E                       2949 ___str_27:
      00638E 45 6E 74 65 72 20 74  2950 	.ascii "Enter the address of the MAC Register:"
             68 65 20 61 64 64 72
             65 73 73 20 6F 66 20
             74 68 65 20 4D 41 43
             20 52 65 67 69 73 74
             65 72 3A
      0063B4 0A                    2951 	.db 0x0a
      0063B5 0D                    2952 	.db 0x0d
      0063B6 00                    2953 	.db 0x00
                                   2954 	.area CSEG    (CODE)
                                   2955 	.area CONST   (CODE)
      0063B7                       2956 ___str_28:
      0063B7 4D 41 43 20 52 65 67  2957 	.ascii "MAC Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      0063D0 0A                    2958 	.db 0x0a
      0063D1 0D                    2959 	.db 0x0d
      0063D2 00                    2960 	.db 0x00
                                   2961 	.area CSEG    (CODE)
                                   2962 	.area CONST   (CODE)
      0063D3                       2963 ___str_29:
      0063D3 45 6E 74 65 72 20 74  2964 	.ascii "Enter the PHY register address:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 3A
      0063F2 0A                    2965 	.db 0x0a
      0063F3 0D                    2966 	.db 0x0d
      0063F4 00                    2967 	.db 0x00
                                   2968 	.area CSEG    (CODE)
                                   2969 	.area CONST   (CODE)
      0063F5                       2970 ___str_30:
      0063F5 45 6E 74 65 72 20 74  2971 	.ascii "Enter the 16-bit data to write:"
             68 65 20 31 36 2D 62
             69 74 20 64 61 74 61
             20 74 6F 20 77 72 69
             74 65 3A
      006414 0A                    2972 	.db 0x0a
      006415 0D                    2973 	.db 0x0d
      006416 00                    2974 	.db 0x00
                                   2975 	.area CSEG    (CODE)
                                   2976 	.area CONST   (CODE)
      006417                       2977 ___str_31:
      006417 50 48 59 20 57 72 69  2978 	.ascii "PHY Write Data: 0x%04X"
             74 65 20 44 61 74 61
             3A 20 30 78 25 30 34
             58
      00642D 0A                    2979 	.db 0x0a
      00642E 0D                    2980 	.db 0x0d
      00642F 00                    2981 	.db 0x00
                                   2982 	.area CSEG    (CODE)
                                   2983 	.area CONST   (CODE)
      006430                       2984 ___str_32:
      006430 45 6E 74 65 72 20 74  2985 	.ascii "Enter the PHY register address to read:"
             68 65 20 50 48 59 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      006457 0A                    2986 	.db 0x0a
      006458 0D                    2987 	.db 0x0d
      006459 00                    2988 	.db 0x00
                                   2989 	.area CSEG    (CODE)
                                   2990 	.area CONST   (CODE)
      00645A                       2991 ___str_33:
      00645A 50 48 59 20 52 65 61  2992 	.ascii "PHY Read Data: 0x%04X"
             64 20 44 61 74 61 3A
             20 30 78 25 30 34 58
      00646F 0A                    2993 	.db 0x0a
      006470 0D                    2994 	.db 0x0d
      006471 00                    2995 	.db 0x00
                                   2996 	.area CSEG    (CODE)
                                   2997 	.area CONST   (CODE)
      006472                       2998 ___str_34:
      006472 52 65 73 65 74 74 69  2999 	.ascii "Resetting ENC28J60..."
             6E 67 20 45 4E 43 32
             38 4A 36 30 2E 2E 2E
      006487 0A                    3000 	.db 0x0a
      006488 0D                    3001 	.db 0x0d
      006489 00                    3002 	.db 0x00
                                   3003 	.area CSEG    (CODE)
                                   3004 	.area CONST   (CODE)
      00648A                       3005 ___str_35:
      00648A 45 6E 74 65 72 20 74  3006 	.ascii "Enter the ETH register address to read:"
             68 65 20 45 54 48 20
             72 65 67 69 73 74 65
             72 20 61 64 64 72 65
             73 73 20 74 6F 20 72
             65 61 64 3A
      0064B1 0A                    3007 	.db 0x0a
      0064B2 0D                    3008 	.db 0x0d
      0064B3 00                    3009 	.db 0x00
                                   3010 	.area CSEG    (CODE)
                                   3011 	.area CONST   (CODE)
      0064B4                       3012 ___str_36:
      0064B4 45 6E 74 65 72 20 74  3013 	.ascii "Enter the bank (0 or 1):"
             68 65 20 62 61 6E 6B
             20 28 30 20 6F 72 20
             31 29 3A
      0064CC 0A                    3014 	.db 0x0a
      0064CD 0D                    3015 	.db 0x0d
      0064CE 00                    3016 	.db 0x00
                                   3017 	.area CSEG    (CODE)
                                   3018 	.area CONST   (CODE)
      0064CF                       3019 ___str_37:
      0064CF 45 54 48 20 52 65 67  3020 	.ascii "ETH Register Data: 0x%02X"
             69 73 74 65 72 20 44
             61 74 61 3A 20 30 78
             25 30 32 58
      0064E8 0A                    3021 	.db 0x0a
      0064E9 0D                    3022 	.db 0x0d
      0064EA 00                    3023 	.db 0x00
                                   3024 	.area CSEG    (CODE)
                                   3025 	.area CONST   (CODE)
      0064EB                       3026 ___str_38:
      0064EB 56 61 6C 69 64 20 45  3027 	.ascii "Valid ETHER packet....................."
             54 48 45 52 20 70 61
             63 6B 65 74 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E 2E 2E 2E
             2E 2E 2E 2E
      006512 0A                    3028 	.db 0x0a
      006513 0D                    3029 	.db 0x0d
      006514 00                    3030 	.db 0x00
                                   3031 	.area CSEG    (CODE)
                                   3032 	.area CONST   (CODE)
      006515                       3033 ___str_39:
      006515 0A                    3034 	.db 0x0a
      006516 50 72 6F 63 65 73 73  3035 	.ascii "Processed response data:"
             65 64 20 72 65 73 70
             6F 6E 73 65 20 64 61
             74 61 3A
      00652E 0A                    3036 	.db 0x0a
      00652F 00                    3037 	.db 0x00
                                   3038 	.area CSEG    (CODE)
                                   3039 	.area CONST   (CODE)
      006530                       3040 ___str_40:
      006530 0A                    3041 	.db 0x0a
      006531 4E 6F 20 72 65 73 70  3042 	.ascii "No response generated by TCP packet processing."
             6F 6E 73 65 20 67 65
             6E 65 72 61 74 65 64
             20 62 79 20 54 43 50
             20 70 61 63 6B 65 74
             20 70 72 6F 63 65 73
             73 69 6E 67 2E
      006560 0A                    3043 	.db 0x0a
      006561 00                    3044 	.db 0x00
                                   3045 	.area CSEG    (CODE)
                                   3046 	.area CONST   (CODE)
      006562                       3047 ___str_41:
      006562 59 45 53 53 53 53     3048 	.ascii "YESSSS"
      006568 0A                    3049 	.db 0x0a
      006569 00                    3050 	.db 0x00
                                   3051 	.area CSEG    (CODE)
                                   3052 	.area CONST   (CODE)
      00656A                       3053 ___str_42:
      00656A 4E 4F 4F 4F 4F        3054 	.ascii "NOOOO"
      00656F 0A                    3055 	.db 0x0a
      006570 00                    3056 	.db 0x00
                                   3057 	.area CSEG    (CODE)
                                   3058 	.area CONST   (CODE)
      006571                       3059 ___str_43:
      006571 6E 65 78 74 50 61 63  3060 	.ascii "nextPacket: 0x%04X"
             6B 65 74 3A 20 30 78
             25 30 34 58
      006583 0A                    3061 	.db 0x0a
      006584 00                    3062 	.db 0x00
                                   3063 	.area CSEG    (CODE)
                                   3064 	.area CONST   (CODE)
      006585                       3065 ___str_44:
      006585 62 79 74 65 43 6F 75  3066 	.ascii "byteCount: %d"
             6E 74 3A 20 25 64
      006592 0A                    3067 	.db 0x0a
      006593 00                    3068 	.db 0x00
                                   3069 	.area CSEG    (CODE)
                                   3070 	.area CONST   (CODE)
      006594                       3071 ___str_45:
      006594 73 74 61 74 75 73 3A  3072 	.ascii "status: 0x%02X"
             20 30 78 25 30 32 58
      0065A2 0A                    3073 	.db 0x0a
      0065A3 00                    3074 	.db 0x00
                                   3075 	.area CSEG    (CODE)
                                   3076 	.area CONST   (CODE)
      0065A4                       3077 ___str_46:
      0065A4 20 52 65 73 65 74 74  3078 	.ascii " Resetting ENC using RESET pin in Hardware(P1_0)"
             69 6E 67 20 45 4E 43
             20 75 73 69 6E 67 20
             52 45 53 45 54 20 70
             69 6E 20 69 6E 20 48
             61 72 64 77 61 72 65
             28 50 31 5F 30 29
      0065D4 0A                    3079 	.db 0x0a
      0065D5 0D                    3080 	.db 0x0d
      0065D6 00                    3081 	.db 0x00
                                   3082 	.area CSEG    (CODE)
                                   3083 	.area CONST   (CODE)
      0065D7                       3084 ___str_47:
      0065D7 45 6E 61 62 6C 69 6E  3085 	.ascii "Enabling TXPKTIE"
             67 20 54 58 50 4B 54
             49 45
      0065E7 0A                    3086 	.db 0x0a
      0065E8 0D                    3087 	.db 0x0d
      0065E9 00                    3088 	.db 0x00
                                   3089 	.area CSEG    (CODE)
                                   3090 	.area CONST   (CODE)
      0065EA                       3091 ___str_48:
      0065EA 44 69 73 61 62 6C 69  3092 	.ascii "Disabling TXPKTIE"
             6E 67 20 54 58 50 4B
             54 49 45
      0065FB 0A                    3093 	.db 0x0a
      0065FC 0D                    3094 	.db 0x0d
      0065FD 00                    3095 	.db 0x00
                                   3096 	.area CSEG    (CODE)
                                   3097 	.area CONST   (CODE)
      0065FE                       3098 ___str_49:
      0065FE 49 6E 76 61 6C 69 64  3099 	.ascii "Invalid option. Please select a valid action."
             20 6F 70 74 69 6F 6E
             2E 20 50 6C 65 61 73
             65 20 73 65 6C 65 63
             74 20 61 20 76 61 6C
             69 64 20 61 63 74 69
             6F 6E 2E
      00662B 0A                    3100 	.db 0x0a
      00662C 0D                    3101 	.db 0x0d
      00662D 00                    3102 	.db 0x00
                                   3103 	.area CSEG    (CODE)
                                   3104 	.area XINIT   (CODE)
      006AA3                       3105 __xinit__device_mac:
      006AA3 02                    3106 	.db #0x02	; 2
      006AA4 11                    3107 	.db #0x11	; 17
      006AA5 22                    3108 	.db #0x22	; 34
      006AA6 33                    3109 	.db #0x33	; 51	'3'
      006AA7 44                    3110 	.db #0x44	; 68	'D'
      006AA8 55                    3111 	.db #0x55	; 85	'U'
      006AA9                       3112 __xinit__target_mac:
      006AA9 F8                    3113 	.db #0xf8	; 248
      006AAA 75                    3114 	.db #0x75	; 117	'u'
      006AAB A4                    3115 	.db #0xa4	; 164
      006AAC 8C                    3116 	.db #0x8c	; 140
      006AAD 41                    3117 	.db #0x41	; 65	'A'
      006AAE 31                    3118 	.db #0x31	; 49	'1'
      006AAF                       3119 __xinit__device_ip:
      006AAF C0                    3120 	.db #0xc0	; 192
      006AB0 A8                    3121 	.db #0xa8	; 168
      006AB1 01                    3122 	.db #0x01	; 1
      006AB2 64                    3123 	.db #0x64	; 100	'd'
      006AB3                       3124 __xinit__target_ip:
      006AB3 C0                    3125 	.db #0xc0	; 192
      006AB4 A8                    3126 	.db #0xa8	; 168
      006AB5 01                    3127 	.db #0x01	; 1
      006AB6 01                    3128 	.db #0x01	; 1
                                   3129 	.area CABS    (ABS,CODE)

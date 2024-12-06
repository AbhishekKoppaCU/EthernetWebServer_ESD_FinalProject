                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module Eth
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _external_interrupt0_isr
                                     12 	.globl _enc28j60_transmission_successful
                                     13 	.globl _wait_for_transmission_complete
                                     14 	.globl _enc28j60_set_transmit_pointers
                                     15 	.globl _enc28j60_start_transmission
                                     16 	.globl _delay_ms
                                     17 	.globl _set_mac_address
                                     18 	.globl _spi_control_write
                                     19 	.globl _spi_buffer_write
                                     20 	.globl _mac_spi_read
                                     21 	.globl _printf
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
                                    231 	.globl _target_ip
                                    232 	.globl _source_ip
                                    233 	.globl _dest_mac
                                    234 	.globl _source_mac
                                    235 	.globl _enc28j60_set_transmit_pointers_PARM_2
                                    236 	.globl _enc28j60_init_rx_buffer_PARM_2
                                    237 	.globl _enc28j60_init_rx_buffer
                                    238 	.globl _RX_disable
                                    239 	.globl _RX_enable
                                    240 	.globl _send_arp_request
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
                                    466 ; overlayable bit register bank
                                    467 ;--------------------------------------------------------
                                    468 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        469 bits:
      000021                        470 	.ds 1
                           008000   471 	b0 = bits[0]
                           008100   472 	b1 = bits[1]
                           008200   473 	b2 = bits[2]
                           008300   474 	b3 = bits[3]
                           008400   475 	b4 = bits[4]
                           008500   476 	b5 = bits[5]
                           008600   477 	b6 = bits[6]
                           008700   478 	b7 = bits[7]
                                    479 ;--------------------------------------------------------
                                    480 ; internal ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area DSEG    (DATA)
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
      000000                        499 _enc28j60_transmission_successful_sloc0_1_0:
      000000                        500 	.ds 1
                                    501 ;--------------------------------------------------------
                                    502 ; paged external ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area PSEG    (PAG,XDATA)
                                    505 ;--------------------------------------------------------
                                    506 ; uninitialized external ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area XSEG    (XDATA)
      000100                        509 _delay_ms_ms_10000_71:
      000100                        510 	.ds 2
      000102                        511 _delay_ms_i_20000_73:
      000102                        512 	.ds 4
      000106                        513 _enc28j60_init_rx_buffer_PARM_2:
      000106                        514 	.ds 2
      000108                        515 _enc28j60_init_rx_buffer_start_address_10000_77:
      000108                        516 	.ds 2
      00010A                        517 _enc28j60_set_transmit_pointers_PARM_2:
      00010A                        518 	.ds 2
      00010C                        519 _enc28j60_set_transmit_pointers_start_address_10000_80:
      00010C                        520 	.ds 2
      00010E                        521 _wait_for_transmission_complete_timeout_ms_10000_82:
      00010E                        522 	.ds 2
      000110                        523 _send_arp_request_source_mac_10000_92:
      000110                        524 	.ds 6
      000116                        525 _send_arp_request_dest_mac_10000_92:
      000116                        526 	.ds 6
      00011C                        527 _send_arp_request_source_ip_10000_92:
      00011C                        528 	.ds 4
      000120                        529 _send_arp_request_target_ip_10000_92:
      000120                        530 	.ds 4
      000124                        531 _send_arp_request_arp_packet_10000_92:
      000124                        532 	.ds 43
                                    533 ;--------------------------------------------------------
                                    534 ; absolute external ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area XABS    (ABS,XDATA)
                                    537 ;--------------------------------------------------------
                                    538 ; initialized external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XISEG   (XDATA)
      0003C5                        541 _source_mac::
      0003C5                        542 	.ds 6
      0003CB                        543 _dest_mac::
      0003CB                        544 	.ds 6
      0003D1                        545 _source_ip::
      0003D1                        546 	.ds 4
      0003D5                        547 _target_ip::
      0003D5                        548 	.ds 4
                                    549 	.area HOME    (CODE)
                                    550 	.area GSINIT0 (CODE)
                                    551 	.area GSINIT1 (CODE)
                                    552 	.area GSINIT2 (CODE)
                                    553 	.area GSINIT3 (CODE)
                                    554 	.area GSINIT4 (CODE)
                                    555 	.area GSINIT5 (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.area GSFINAL (CODE)
                                    558 	.area CSEG    (CODE)
                                    559 ;--------------------------------------------------------
                                    560 ; global & static initialisations
                                    561 ;--------------------------------------------------------
                                    562 	.area HOME    (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.area GSFINAL (CODE)
                                    565 	.area GSINIT  (CODE)
                                    566 ;--------------------------------------------------------
                                    567 ; Home
                                    568 ;--------------------------------------------------------
                                    569 	.area HOME    (CODE)
                                    570 	.area HOME    (CODE)
                                    571 ;--------------------------------------------------------
                                    572 ; code
                                    573 ;--------------------------------------------------------
                                    574 	.area CSEG    (CODE)
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'set_mac_address'
                                    577 ;------------------------------------------------------------
                                    578 ;mac_address               Allocated with name '_set_mac_address_mac_address_10000_69'
                                    579 ;------------------------------------------------------------
                                    580 ;	Eth.c:35: void set_mac_address(uint8_t* mac_address)
                                    581 ;	-----------------------------------------
                                    582 ;	 function set_mac_address
                                    583 ;	-----------------------------------------
      002065                        584 _set_mac_address:
                           000007   585 	ar7 = 0x07
                           000006   586 	ar6 = 0x06
                           000005   587 	ar5 = 0x05
                           000004   588 	ar4 = 0x04
                           000003   589 	ar3 = 0x03
                           000002   590 	ar2 = 0x02
                           000001   591 	ar1 = 0x01
                           000000   592 	ar0 = 0x00
                                    593 ;	Eth.c:41: spi_control_write(3, 0x01, 0x02);  // MAADR6
      002065 90 03 63         [24]  594 	mov	dptr,#_spi_control_write_PARM_2
      002068 74 01            [12]  595 	mov	a,#0x01
      00206A F0               [24]  596 	movx	@dptr,a
      00206B 90 03 64         [24]  597 	mov	dptr,#_spi_control_write_PARM_3
      00206E 04               [12]  598 	inc	a
      00206F F0               [24]  599 	movx	@dptr,a
      002070 75 82 03         [24]  600 	mov	dpl, #0x03
      002073 12 2F F0         [24]  601 	lcall	_spi_control_write
                                    602 ;	Eth.c:42: spi_control_write(3, 0x00, 0x11);  // MAADR5
      002076 90 03 63         [24]  603 	mov	dptr,#_spi_control_write_PARM_2
      002079 E4               [12]  604 	clr	a
      00207A F0               [24]  605 	movx	@dptr,a
      00207B 90 03 64         [24]  606 	mov	dptr,#_spi_control_write_PARM_3
      00207E 74 11            [12]  607 	mov	a,#0x11
      002080 F0               [24]  608 	movx	@dptr,a
      002081 75 82 03         [24]  609 	mov	dpl, #0x03
      002084 12 2F F0         [24]  610 	lcall	_spi_control_write
                                    611 ;	Eth.c:43: spi_control_write(3, 0x03, 0x22);  // MAADR4
      002087 90 03 63         [24]  612 	mov	dptr,#_spi_control_write_PARM_2
      00208A 74 03            [12]  613 	mov	a,#0x03
      00208C F0               [24]  614 	movx	@dptr,a
      00208D 90 03 64         [24]  615 	mov	dptr,#_spi_control_write_PARM_3
      002090 74 22            [12]  616 	mov	a,#0x22
      002092 F0               [24]  617 	movx	@dptr,a
      002093 75 82 03         [24]  618 	mov	dpl, #0x03
      002096 12 2F F0         [24]  619 	lcall	_spi_control_write
                                    620 ;	Eth.c:44: spi_control_write(3, 0x02, 0x33);  // MAADR3
      002099 90 03 63         [24]  621 	mov	dptr,#_spi_control_write_PARM_2
      00209C 74 02            [12]  622 	mov	a,#0x02
      00209E F0               [24]  623 	movx	@dptr,a
      00209F 90 03 64         [24]  624 	mov	dptr,#_spi_control_write_PARM_3
      0020A2 74 33            [12]  625 	mov	a,#0x33
      0020A4 F0               [24]  626 	movx	@dptr,a
      0020A5 75 82 03         [24]  627 	mov	dpl, #0x03
      0020A8 12 2F F0         [24]  628 	lcall	_spi_control_write
                                    629 ;	Eth.c:45: spi_control_write(3, 0x05, 0x44);  // MAADR2
      0020AB 90 03 63         [24]  630 	mov	dptr,#_spi_control_write_PARM_2
      0020AE 74 05            [12]  631 	mov	a,#0x05
      0020B0 F0               [24]  632 	movx	@dptr,a
      0020B1 90 03 64         [24]  633 	mov	dptr,#_spi_control_write_PARM_3
      0020B4 74 44            [12]  634 	mov	a,#0x44
      0020B6 F0               [24]  635 	movx	@dptr,a
      0020B7 75 82 03         [24]  636 	mov	dpl, #0x03
      0020BA 12 2F F0         [24]  637 	lcall	_spi_control_write
                                    638 ;	Eth.c:46: spi_control_write(3, 0x04, 0x55);  // MAADR1
      0020BD 90 03 63         [24]  639 	mov	dptr,#_spi_control_write_PARM_2
      0020C0 74 04            [12]  640 	mov	a,#0x04
      0020C2 F0               [24]  641 	movx	@dptr,a
      0020C3 90 03 64         [24]  642 	mov	dptr,#_spi_control_write_PARM_3
      0020C6 74 55            [12]  643 	mov	a,#0x55
      0020C8 F0               [24]  644 	movx	@dptr,a
      0020C9 75 82 03         [24]  645 	mov	dpl, #0x03
                                    646 ;	Eth.c:48: }
      0020CC 02 2F F0         [24]  647 	ljmp	_spi_control_write
                                    648 ;------------------------------------------------------------
                                    649 ;Allocation info for local variables in function 'delay_ms'
                                    650 ;------------------------------------------------------------
                                    651 ;ms                        Allocated with name '_delay_ms_ms_10000_71'
                                    652 ;i                         Allocated with name '_delay_ms_i_20000_73'
                                    653 ;------------------------------------------------------------
                                    654 ;	Eth.c:51: void delay_ms(uint16_t ms)
                                    655 ;	-----------------------------------------
                                    656 ;	 function delay_ms
                                    657 ;	-----------------------------------------
      0020CF                        658 _delay_ms:
      0020CF AF 83            [24]  659 	mov	r7,dph
      0020D1 E5 82            [12]  660 	mov	a,dpl
      0020D3 90 01 00         [24]  661 	mov	dptr,#_delay_ms_ms_10000_71
      0020D6 F0               [24]  662 	movx	@dptr,a
      0020D7 EF               [12]  663 	mov	a,r7
      0020D8 A3               [24]  664 	inc	dptr
      0020D9 F0               [24]  665 	movx	@dptr,a
                                    666 ;	Eth.c:53: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      0020DA 90 01 02         [24]  667 	mov	dptr,#_delay_ms_i_20000_73
      0020DD E4               [12]  668 	clr	a
      0020DE F0               [24]  669 	movx	@dptr,a
      0020DF A3               [24]  670 	inc	dptr
      0020E0 F0               [24]  671 	movx	@dptr,a
      0020E1 A3               [24]  672 	inc	dptr
      0020E2 F0               [24]  673 	movx	@dptr,a
      0020E3 A3               [24]  674 	inc	dptr
      0020E4 F0               [24]  675 	movx	@dptr,a
      0020E5 90 01 00         [24]  676 	mov	dptr,#_delay_ms_ms_10000_71
      0020E8 E0               [24]  677 	movx	a,@dptr
      0020E9 FE               [12]  678 	mov	r6,a
      0020EA A3               [24]  679 	inc	dptr
      0020EB E0               [24]  680 	movx	a,@dptr
      0020EC FF               [12]  681 	mov	r7,a
      0020ED                        682 00103$:
      0020ED 90 03 8C         [24]  683 	mov	dptr,#__mulint_PARM_2
      0020F0 EE               [12]  684 	mov	a,r6
      0020F1 F0               [24]  685 	movx	@dptr,a
      0020F2 EF               [12]  686 	mov	a,r7
      0020F3 A3               [24]  687 	inc	dptr
      0020F4 F0               [24]  688 	movx	@dptr,a
      0020F5 90 03 E8         [24]  689 	mov	dptr,#0x03e8
      0020F8 C0 07            [24]  690 	push	ar7
      0020FA C0 06            [24]  691 	push	ar6
      0020FC 12 39 A8         [24]  692 	lcall	__mulint
      0020FF AC 82            [24]  693 	mov	r4, dpl
      002101 AD 83            [24]  694 	mov	r5, dph
      002103 D0 06            [24]  695 	pop	ar6
      002105 D0 07            [24]  696 	pop	ar7
      002107 90 01 02         [24]  697 	mov	dptr,#_delay_ms_i_20000_73
      00210A E0               [24]  698 	movx	a,@dptr
      00210B F8               [12]  699 	mov	r0,a
      00210C A3               [24]  700 	inc	dptr
      00210D E0               [24]  701 	movx	a,@dptr
      00210E F9               [12]  702 	mov	r1,a
      00210F A3               [24]  703 	inc	dptr
      002110 E0               [24]  704 	movx	a,@dptr
      002111 FA               [12]  705 	mov	r2,a
      002112 A3               [24]  706 	inc	dptr
      002113 E0               [24]  707 	movx	a,@dptr
      002114 FB               [12]  708 	mov	r3,a
      002115 C0 06            [24]  709 	push	ar6
      002117 C0 07            [24]  710 	push	ar7
      002119 7E 00            [12]  711 	mov	r6,#0x00
      00211B 7F 00            [12]  712 	mov	r7,#0x00
      00211D C3               [12]  713 	clr	c
      00211E E8               [12]  714 	mov	a,r0
      00211F 9C               [12]  715 	subb	a,r4
      002120 E9               [12]  716 	mov	a,r1
      002121 9D               [12]  717 	subb	a,r5
      002122 EA               [12]  718 	mov	a,r2
      002123 9E               [12]  719 	subb	a,r6
      002124 EB               [12]  720 	mov	a,r3
      002125 9F               [12]  721 	subb	a,r7
      002126 D0 07            [24]  722 	pop	ar7
      002128 D0 06            [24]  723 	pop	ar6
      00212A 50 23            [24]  724 	jnc	00105$
      00212C 90 01 02         [24]  725 	mov	dptr,#_delay_ms_i_20000_73
      00212F E0               [24]  726 	movx	a,@dptr
      002130 FA               [12]  727 	mov	r2,a
      002131 A3               [24]  728 	inc	dptr
      002132 E0               [24]  729 	movx	a,@dptr
      002133 FB               [12]  730 	mov	r3,a
      002134 A3               [24]  731 	inc	dptr
      002135 E0               [24]  732 	movx	a,@dptr
      002136 FC               [12]  733 	mov	r4,a
      002137 A3               [24]  734 	inc	dptr
      002138 E0               [24]  735 	movx	a,@dptr
      002139 FD               [12]  736 	mov	r5,a
      00213A 90 01 02         [24]  737 	mov	dptr,#_delay_ms_i_20000_73
      00213D 74 01            [12]  738 	mov	a,#0x01
      00213F 2A               [12]  739 	add	a, r2
      002140 F0               [24]  740 	movx	@dptr,a
      002141 E4               [12]  741 	clr	a
      002142 3B               [12]  742 	addc	a, r3
      002143 A3               [24]  743 	inc	dptr
      002144 F0               [24]  744 	movx	@dptr,a
      002145 E4               [12]  745 	clr	a
      002146 3C               [12]  746 	addc	a, r4
      002147 A3               [24]  747 	inc	dptr
      002148 F0               [24]  748 	movx	@dptr,a
      002149 E4               [12]  749 	clr	a
      00214A 3D               [12]  750 	addc	a, r5
      00214B A3               [24]  751 	inc	dptr
      00214C F0               [24]  752 	movx	@dptr,a
      00214D 80 9E            [24]  753 	sjmp	00103$
      00214F                        754 00105$:
                                    755 ;	Eth.c:57: }
      00214F 22               [24]  756 	ret
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    759 ;------------------------------------------------------------
                                    760 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_76'
                                    761 ;------------------------------------------------------------
                                    762 ;	Eth.c:59: void enc28j60_start_transmission(void)
                                    763 ;	-----------------------------------------
                                    764 ;	 function enc28j60_start_transmission
                                    765 ;	-----------------------------------------
      002150                        766 _enc28j60_start_transmission:
                                    767 ;	Eth.c:61: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      002150 90 03 6C         [24]  768 	mov	dptr,#_mac_spi_read_PARM_2
      002153 E4               [12]  769 	clr	a
      002154 F0               [24]  770 	movx	@dptr,a
      002155 75 82 1F         [24]  771 	mov	dpl, #0x1f
      002158 12 31 66         [24]  772 	lcall	_mac_spi_read
      00215B E5 82            [12]  773 	mov	a, dpl
                                    774 ;	Eth.c:62: econ1 |= 0x08; // Set TXRTS (bit 3)
      00215D 44 08            [12]  775 	orl	a,#0x08
      00215F FF               [12]  776 	mov	r7,a
                                    777 ;	Eth.c:63: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      002160 90 03 63         [24]  778 	mov	dptr,#_spi_control_write_PARM_2
      002163 74 1F            [12]  779 	mov	a,#0x1f
      002165 F0               [24]  780 	movx	@dptr,a
      002166 90 03 64         [24]  781 	mov	dptr,#_spi_control_write_PARM_3
      002169 EF               [12]  782 	mov	a,r7
      00216A F0               [24]  783 	movx	@dptr,a
      00216B 75 82 00         [24]  784 	mov	dpl, #0x00
                                    785 ;	Eth.c:64: }
      00216E 02 2F F0         [24]  786 	ljmp	_spi_control_write
                                    787 ;------------------------------------------------------------
                                    788 ;Allocation info for local variables in function 'enc28j60_init_rx_buffer'
                                    789 ;------------------------------------------------------------
                                    790 ;end_address               Allocated with name '_enc28j60_init_rx_buffer_PARM_2'
                                    791 ;start_address             Allocated with name '_enc28j60_init_rx_buffer_start_address_10000_77'
                                    792 ;------------------------------------------------------------
                                    793 ;	Eth.c:65: void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address)
                                    794 ;	-----------------------------------------
                                    795 ;	 function enc28j60_init_rx_buffer
                                    796 ;	-----------------------------------------
      002171                        797 _enc28j60_init_rx_buffer:
      002171 AF 83            [24]  798 	mov	r7,dph
      002173 E5 82            [12]  799 	mov	a,dpl
      002175 90 01 08         [24]  800 	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_77
      002178 F0               [24]  801 	movx	@dptr,a
      002179 EF               [12]  802 	mov	a,r7
      00217A A3               [24]  803 	inc	dptr
      00217B F0               [24]  804 	movx	@dptr,a
                                    805 ;	Eth.c:68: if (start_address >= end_address || end_address > 0x1FFF) {
      00217C 90 01 08         [24]  806 	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_77
      00217F E0               [24]  807 	movx	a,@dptr
      002180 FE               [12]  808 	mov	r6,a
      002181 A3               [24]  809 	inc	dptr
      002182 E0               [24]  810 	movx	a,@dptr
      002183 FF               [12]  811 	mov	r7,a
      002184 90 01 06         [24]  812 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      002187 E0               [24]  813 	movx	a,@dptr
      002188 FC               [12]  814 	mov	r4,a
      002189 A3               [24]  815 	inc	dptr
      00218A E0               [24]  816 	movx	a,@dptr
      00218B FD               [12]  817 	mov	r5,a
      00218C C3               [12]  818 	clr	c
      00218D EE               [12]  819 	mov	a,r6
      00218E 9C               [12]  820 	subb	a,r4
      00218F EF               [12]  821 	mov	a,r7
      002190 9D               [12]  822 	subb	a,r5
      002191 50 0D            [24]  823 	jnc	00101$
      002193 8C 02            [24]  824 	mov	ar2,r4
      002195 8D 03            [24]  825 	mov	ar3,r5
      002197 C3               [12]  826 	clr	c
      002198 74 FF            [12]  827 	mov	a,#0xff
      00219A 9A               [12]  828 	subb	a,r2
      00219B 74 1F            [12]  829 	mov	a,#0x1f
      00219D 9B               [12]  830 	subb	a,r3
      00219E 50 16            [24]  831 	jnc	00102$
      0021A0                        832 00101$:
                                    833 ;	Eth.c:69: printf("Invalid RX buffer range.\n");
      0021A0 74 58            [12]  834 	mov	a,#___str_0
      0021A2 C0 E0            [24]  835 	push	acc
      0021A4 74 44            [12]  836 	mov	a,#(___str_0 >> 8)
      0021A6 C0 E0            [24]  837 	push	acc
      0021A8 74 80            [12]  838 	mov	a,#0x80
      0021AA C0 E0            [24]  839 	push	acc
      0021AC 12 3A 16         [24]  840 	lcall	_printf
      0021AF 15 81            [12]  841 	dec	sp
      0021B1 15 81            [12]  842 	dec	sp
      0021B3 15 81            [12]  843 	dec	sp
                                    844 ;	Eth.c:70: return;
      0021B5 22               [24]  845 	ret
      0021B6                        846 00102$:
                                    847 ;	Eth.c:73: spi_control_write(0, 0x08, (uint8_t)(start_address & 0xFF)); // ERXSTL (low byte)
      0021B6 8E 03            [24]  848 	mov	ar3,r6
      0021B8 90 03 63         [24]  849 	mov	dptr,#_spi_control_write_PARM_2
      0021BB 74 08            [12]  850 	mov	a,#0x08
      0021BD F0               [24]  851 	movx	@dptr,a
      0021BE 90 03 64         [24]  852 	mov	dptr,#_spi_control_write_PARM_3
      0021C1 EB               [12]  853 	mov	a,r3
      0021C2 F0               [24]  854 	movx	@dptr,a
      0021C3 75 82 00         [24]  855 	mov	dpl, #0x00
      0021C6 C0 07            [24]  856 	push	ar7
      0021C8 C0 06            [24]  857 	push	ar6
      0021CA C0 05            [24]  858 	push	ar5
      0021CC C0 04            [24]  859 	push	ar4
      0021CE 12 2F F0         [24]  860 	lcall	_spi_control_write
      0021D1 D0 04            [24]  861 	pop	ar4
      0021D3 D0 05            [24]  862 	pop	ar5
      0021D5 D0 06            [24]  863 	pop	ar6
      0021D7 D0 07            [24]  864 	pop	ar7
                                    865 ;	Eth.c:74: spi_control_write(0, 0x09, (uint8_t)((start_address >> 8) & 0xFF)); // ERXSTH (high byte)
      0021D9 8F 03            [24]  866 	mov	ar3,r7
      0021DB 90 03 63         [24]  867 	mov	dptr,#_spi_control_write_PARM_2
      0021DE 74 09            [12]  868 	mov	a,#0x09
      0021E0 F0               [24]  869 	movx	@dptr,a
      0021E1 90 03 64         [24]  870 	mov	dptr,#_spi_control_write_PARM_3
      0021E4 EB               [12]  871 	mov	a,r3
      0021E5 F0               [24]  872 	movx	@dptr,a
      0021E6 75 82 00         [24]  873 	mov	dpl, #0x00
      0021E9 C0 07            [24]  874 	push	ar7
      0021EB C0 06            [24]  875 	push	ar6
      0021ED C0 05            [24]  876 	push	ar5
      0021EF C0 04            [24]  877 	push	ar4
      0021F1 12 2F F0         [24]  878 	lcall	_spi_control_write
      0021F4 D0 04            [24]  879 	pop	ar4
      0021F6 D0 05            [24]  880 	pop	ar5
      0021F8 D0 06            [24]  881 	pop	ar6
      0021FA D0 07            [24]  882 	pop	ar7
                                    883 ;	Eth.c:77: spi_control_write(0, 0x0A, (uint8_t)(end_address & 0xFF)); // ERXNDL (low byte)
      0021FC 8C 03            [24]  884 	mov	ar3,r4
      0021FE 90 03 63         [24]  885 	mov	dptr,#_spi_control_write_PARM_2
      002201 74 0A            [12]  886 	mov	a,#0x0a
      002203 F0               [24]  887 	movx	@dptr,a
      002204 90 03 64         [24]  888 	mov	dptr,#_spi_control_write_PARM_3
      002207 EB               [12]  889 	mov	a,r3
      002208 F0               [24]  890 	movx	@dptr,a
      002209 75 82 00         [24]  891 	mov	dpl, #0x00
      00220C C0 07            [24]  892 	push	ar7
      00220E C0 06            [24]  893 	push	ar6
      002210 C0 05            [24]  894 	push	ar5
      002212 C0 04            [24]  895 	push	ar4
      002214 12 2F F0         [24]  896 	lcall	_spi_control_write
      002217 D0 04            [24]  897 	pop	ar4
      002219 D0 05            [24]  898 	pop	ar5
      00221B D0 06            [24]  899 	pop	ar6
      00221D D0 07            [24]  900 	pop	ar7
                                    901 ;	Eth.c:78: spi_control_write(0, 0x0B, (uint8_t)((end_address >> 8) & 0xFF)); // ERXNDH (high byte)
      00221F 8D 03            [24]  902 	mov	ar3,r5
      002221 90 03 63         [24]  903 	mov	dptr,#_spi_control_write_PARM_2
      002224 74 0B            [12]  904 	mov	a,#0x0b
      002226 F0               [24]  905 	movx	@dptr,a
      002227 90 03 64         [24]  906 	mov	dptr,#_spi_control_write_PARM_3
      00222A EB               [12]  907 	mov	a,r3
      00222B F0               [24]  908 	movx	@dptr,a
      00222C 75 82 00         [24]  909 	mov	dpl, #0x00
      00222F C0 07            [24]  910 	push	ar7
      002231 C0 06            [24]  911 	push	ar6
      002233 C0 05            [24]  912 	push	ar5
      002235 C0 04            [24]  913 	push	ar4
      002237 12 2F F0         [24]  914 	lcall	_spi_control_write
      00223A D0 04            [24]  915 	pop	ar4
      00223C D0 05            [24]  916 	pop	ar5
      00223E D0 06            [24]  917 	pop	ar6
      002240 D0 07            [24]  918 	pop	ar7
                                    919 ;	Eth.c:81: spi_control_write(0, 0x0C, start_address); // ERXRDPTL (low byte)
      002242 8E 03            [24]  920 	mov	ar3,r6
      002244 90 03 63         [24]  921 	mov	dptr,#_spi_control_write_PARM_2
      002247 74 0C            [12]  922 	mov	a,#0x0c
      002249 F0               [24]  923 	movx	@dptr,a
      00224A 90 03 64         [24]  924 	mov	dptr,#_spi_control_write_PARM_3
      00224D EB               [12]  925 	mov	a,r3
      00224E F0               [24]  926 	movx	@dptr,a
      00224F 75 82 00         [24]  927 	mov	dpl, #0x00
      002252 C0 07            [24]  928 	push	ar7
      002254 C0 06            [24]  929 	push	ar6
      002256 C0 05            [24]  930 	push	ar5
      002258 C0 04            [24]  931 	push	ar4
      00225A C0 03            [24]  932 	push	ar3
      00225C 12 2F F0         [24]  933 	lcall	_spi_control_write
      00225F D0 03            [24]  934 	pop	ar3
      002261 D0 04            [24]  935 	pop	ar4
      002263 D0 05            [24]  936 	pop	ar5
      002265 D0 06            [24]  937 	pop	ar6
      002267 D0 07            [24]  938 	pop	ar7
                                    939 ;	Eth.c:82: spi_control_write(0, 0x0D, start_address); // ERXRDPTH (high byte)
      002269 90 03 63         [24]  940 	mov	dptr,#_spi_control_write_PARM_2
      00226C 74 0D            [12]  941 	mov	a,#0x0d
      00226E F0               [24]  942 	movx	@dptr,a
      00226F 90 03 64         [24]  943 	mov	dptr,#_spi_control_write_PARM_3
      002272 EB               [12]  944 	mov	a,r3
      002273 F0               [24]  945 	movx	@dptr,a
      002274 75 82 00         [24]  946 	mov	dpl, #0x00
      002277 C0 07            [24]  947 	push	ar7
      002279 C0 06            [24]  948 	push	ar6
      00227B C0 05            [24]  949 	push	ar5
      00227D C0 04            [24]  950 	push	ar4
      00227F 12 2F F0         [24]  951 	lcall	_spi_control_write
      002282 D0 04            [24]  952 	pop	ar4
      002284 D0 05            [24]  953 	pop	ar5
      002286 D0 06            [24]  954 	pop	ar6
      002288 D0 07            [24]  955 	pop	ar7
                                    956 ;	Eth.c:90: printf("RX buffer initialized: 0x%04X to 0x%04X.\n", start_address, end_address);
      00228A C0 04            [24]  957 	push	ar4
      00228C C0 05            [24]  958 	push	ar5
      00228E C0 06            [24]  959 	push	ar6
      002290 C0 07            [24]  960 	push	ar7
      002292 74 72            [12]  961 	mov	a,#___str_1
      002294 C0 E0            [24]  962 	push	acc
      002296 74 44            [12]  963 	mov	a,#(___str_1 >> 8)
      002298 C0 E0            [24]  964 	push	acc
      00229A 74 80            [12]  965 	mov	a,#0x80
      00229C C0 E0            [24]  966 	push	acc
      00229E 12 3A 16         [24]  967 	lcall	_printf
      0022A1 E5 81            [12]  968 	mov	a,sp
      0022A3 24 F9            [12]  969 	add	a,#0xf9
      0022A5 F5 81            [12]  970 	mov	sp,a
                                    971 ;	Eth.c:91: }
      0022A7 22               [24]  972 	ret
                                    973 ;------------------------------------------------------------
                                    974 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    975 ;------------------------------------------------------------
                                    976 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    977 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_80'
                                    978 ;------------------------------------------------------------
                                    979 ;	Eth.c:93: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    980 ;	-----------------------------------------
                                    981 ;	 function enc28j60_set_transmit_pointers
                                    982 ;	-----------------------------------------
      0022A8                        983 _enc28j60_set_transmit_pointers:
      0022A8 AF 83            [24]  984 	mov	r7,dph
      0022AA E5 82            [12]  985 	mov	a,dpl
      0022AC 90 01 0C         [24]  986 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_80
      0022AF F0               [24]  987 	movx	@dptr,a
      0022B0 EF               [12]  988 	mov	a,r7
      0022B1 A3               [24]  989 	inc	dptr
      0022B2 F0               [24]  990 	movx	@dptr,a
                                    991 ;	Eth.c:96: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      0022B3 90 01 0C         [24]  992 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_80
      0022B6 E0               [24]  993 	movx	a,@dptr
      0022B7 FE               [12]  994 	mov	r6,a
      0022B8 A3               [24]  995 	inc	dptr
      0022B9 E0               [24]  996 	movx	a,@dptr
      0022BA FF               [12]  997 	mov	r7,a
      0022BB 8E 05            [24]  998 	mov	ar5,r6
      0022BD 90 03 63         [24]  999 	mov	dptr,#_spi_control_write_PARM_2
      0022C0 74 04            [12] 1000 	mov	a,#0x04
      0022C2 F0               [24] 1001 	movx	@dptr,a
      0022C3 90 03 64         [24] 1002 	mov	dptr,#_spi_control_write_PARM_3
      0022C6 ED               [12] 1003 	mov	a,r5
      0022C7 F0               [24] 1004 	movx	@dptr,a
      0022C8 75 82 00         [24] 1005 	mov	dpl, #0x00
      0022CB C0 07            [24] 1006 	push	ar7
      0022CD C0 06            [24] 1007 	push	ar6
      0022CF 12 2F F0         [24] 1008 	lcall	_spi_control_write
      0022D2 D0 06            [24] 1009 	pop	ar6
      0022D4 D0 07            [24] 1010 	pop	ar7
                                   1011 ;	Eth.c:97: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      0022D6 8F 06            [24] 1012 	mov	ar6,r7
      0022D8 90 03 63         [24] 1013 	mov	dptr,#_spi_control_write_PARM_2
      0022DB 74 05            [12] 1014 	mov	a,#0x05
      0022DD F0               [24] 1015 	movx	@dptr,a
      0022DE 90 03 64         [24] 1016 	mov	dptr,#_spi_control_write_PARM_3
      0022E1 EE               [12] 1017 	mov	a,r6
      0022E2 F0               [24] 1018 	movx	@dptr,a
      0022E3 75 82 00         [24] 1019 	mov	dpl, #0x00
      0022E6 12 2F F0         [24] 1020 	lcall	_spi_control_write
                                   1021 ;	Eth.c:100: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      0022E9 90 01 0A         [24] 1022 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0022EC E0               [24] 1023 	movx	a,@dptr
      0022ED FE               [12] 1024 	mov	r6,a
      0022EE A3               [24] 1025 	inc	dptr
      0022EF E0               [24] 1026 	movx	a,@dptr
      0022F0 FF               [12] 1027 	mov	r7,a
      0022F1 8E 05            [24] 1028 	mov	ar5,r6
      0022F3 90 03 63         [24] 1029 	mov	dptr,#_spi_control_write_PARM_2
      0022F6 74 06            [12] 1030 	mov	a,#0x06
      0022F8 F0               [24] 1031 	movx	@dptr,a
      0022F9 90 03 64         [24] 1032 	mov	dptr,#_spi_control_write_PARM_3
      0022FC ED               [12] 1033 	mov	a,r5
      0022FD F0               [24] 1034 	movx	@dptr,a
      0022FE 75 82 00         [24] 1035 	mov	dpl, #0x00
      002301 C0 07            [24] 1036 	push	ar7
      002303 C0 06            [24] 1037 	push	ar6
      002305 12 2F F0         [24] 1038 	lcall	_spi_control_write
      002308 D0 06            [24] 1039 	pop	ar6
      00230A D0 07            [24] 1040 	pop	ar7
                                   1041 ;	Eth.c:101: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      00230C 8F 06            [24] 1042 	mov	ar6,r7
      00230E 90 03 63         [24] 1043 	mov	dptr,#_spi_control_write_PARM_2
      002311 74 07            [12] 1044 	mov	a,#0x07
      002313 F0               [24] 1045 	movx	@dptr,a
      002314 90 03 64         [24] 1046 	mov	dptr,#_spi_control_write_PARM_3
      002317 EE               [12] 1047 	mov	a,r6
      002318 F0               [24] 1048 	movx	@dptr,a
      002319 75 82 00         [24] 1049 	mov	dpl, #0x00
                                   1050 ;	Eth.c:102: }
      00231C 02 2F F0         [24] 1051 	ljmp	_spi_control_write
                                   1052 ;------------------------------------------------------------
                                   1053 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                   1054 ;------------------------------------------------------------
                                   1055 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_82'
                                   1056 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_83'
                                   1057 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_84'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	Eth.c:104: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function wait_for_transmission_complete
                                   1062 ;	-----------------------------------------
      00231F                       1063 _wait_for_transmission_complete:
      00231F AF 83            [24] 1064 	mov	r7,dph
      002321 E5 82            [12] 1065 	mov	a,dpl
      002323 90 01 0E         [24] 1066 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_82
      002326 F0               [24] 1067 	movx	@dptr,a
      002327 EF               [12] 1068 	mov	a,r7
      002328 A3               [24] 1069 	inc	dptr
      002329 F0               [24] 1070 	movx	@dptr,a
                                   1071 ;	Eth.c:108: while (elapsed < timeout_ms) {
      00232A 90 01 0E         [24] 1072 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_82
      00232D E0               [24] 1073 	movx	a,@dptr
      00232E FE               [12] 1074 	mov	r6,a
      00232F A3               [24] 1075 	inc	dptr
      002330 E0               [24] 1076 	movx	a,@dptr
      002331 FF               [12] 1077 	mov	r7,a
      002332 7C 00            [12] 1078 	mov	r4,#0x00
      002334 7D 00            [12] 1079 	mov	r5,#0x00
      002336                       1080 00103$:
      002336 C3               [12] 1081 	clr	c
      002337 EC               [12] 1082 	mov	a,r4
      002338 9E               [12] 1083 	subb	a,r6
      002339 ED               [12] 1084 	mov	a,r5
      00233A 9F               [12] 1085 	subb	a,r7
      00233B 50 41            [24] 1086 	jnc	00105$
                                   1087 ;	Eth.c:109: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      00233D 90 03 6C         [24] 1088 	mov	dptr,#_mac_spi_read_PARM_2
      002340 E4               [12] 1089 	clr	a
      002341 F0               [24] 1090 	movx	@dptr,a
      002342 75 82 1F         [24] 1091 	mov	dpl, #0x1f
      002345 C0 07            [24] 1092 	push	ar7
      002347 C0 06            [24] 1093 	push	ar6
      002349 C0 05            [24] 1094 	push	ar5
      00234B C0 04            [24] 1095 	push	ar4
      00234D 12 31 66         [24] 1096 	lcall	_mac_spi_read
      002350 E5 82            [12] 1097 	mov	a, dpl
      002352 D0 04            [24] 1098 	pop	ar4
      002354 D0 05            [24] 1099 	pop	ar5
      002356 D0 06            [24] 1100 	pop	ar6
      002358 D0 07            [24] 1101 	pop	ar7
                                   1102 ;	Eth.c:110: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      00235A 20 E3 04         [24] 1103 	jb	acc.3,00102$
                                   1104 ;	Eth.c:111: return true;  // Transmission completed
      00235D 75 82 01         [24] 1105 	mov	dpl, #0x01
      002360 22               [24] 1106 	ret
      002361                       1107 00102$:
                                   1108 ;	Eth.c:114: delay_ms(1);  // Wait 1 ms
      002361 90 00 01         [24] 1109 	mov	dptr,#0x0001
      002364 C0 07            [24] 1110 	push	ar7
      002366 C0 06            [24] 1111 	push	ar6
      002368 C0 05            [24] 1112 	push	ar5
      00236A C0 04            [24] 1113 	push	ar4
      00236C 12 20 CF         [24] 1114 	lcall	_delay_ms
      00236F D0 04            [24] 1115 	pop	ar4
      002371 D0 05            [24] 1116 	pop	ar5
      002373 D0 06            [24] 1117 	pop	ar6
      002375 D0 07            [24] 1118 	pop	ar7
                                   1119 ;	Eth.c:115: elapsed++;
      002377 0C               [12] 1120 	inc	r4
      002378 BC 00 BB         [24] 1121 	cjne	r4,#0x00,00103$
      00237B 0D               [12] 1122 	inc	r5
      00237C 80 B8            [24] 1123 	sjmp	00103$
      00237E                       1124 00105$:
                                   1125 ;	Eth.c:118: return false;  // Timed out
      00237E 75 82 00         [24] 1126 	mov	dpl, #0x00
                                   1127 ;	Eth.c:119: }
      002381 22               [24] 1128 	ret
                                   1129 ;------------------------------------------------------------
                                   1130 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                   1131 ;------------------------------------------------------------
                                   1132 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_86'
                                   1133 ;------------------------------------------------------------
                                   1134 ;	Eth.c:121: bool enc28j60_transmission_successful()
                                   1135 ;	-----------------------------------------
                                   1136 ;	 function enc28j60_transmission_successful
                                   1137 ;	-----------------------------------------
      002382                       1138 _enc28j60_transmission_successful:
                                   1139 ;	Eth.c:123: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      002382 90 03 6C         [24] 1140 	mov	dptr,#_mac_spi_read_PARM_2
      002385 E4               [12] 1141 	clr	a
      002386 F0               [24] 1142 	movx	@dptr,a
      002387 75 82 1D         [24] 1143 	mov	dpl, #0x1d
      00238A 12 31 66         [24] 1144 	lcall	_mac_spi_read
                                   1145 ;	Eth.c:124: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      00238D E5 82            [12] 1146 	mov	a,dpl
      00238F 03               [12] 1147 	rr	a
      002390 54 01            [12] 1148 	anl	a,#0x01
      002392 B4 01 00         [24] 1149 	cjne	a,#0x01,00103$
      002395                       1150 00103$:
      002395 92 00            [24] 1151 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      002397 E4               [12] 1152 	clr	a
      002398 33               [12] 1153 	rlc	a
      002399 F5 82            [12] 1154 	mov	dpl, a
                                   1155 ;	Eth.c:125: }
      00239B 22               [24] 1156 	ret
                                   1157 ;------------------------------------------------------------
                                   1158 ;Allocation info for local variables in function 'RX_disable'
                                   1159 ;------------------------------------------------------------
                                   1160 ;econ1_value               Allocated with name '_RX_disable_econ1_value_10000_88'
                                   1161 ;------------------------------------------------------------
                                   1162 ;	Eth.c:126: void RX_disable(void)
                                   1163 ;	-----------------------------------------
                                   1164 ;	 function RX_disable
                                   1165 ;	-----------------------------------------
      00239C                       1166 _RX_disable:
                                   1167 ;	Eth.c:128: uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1
      00239C 90 03 6C         [24] 1168 	mov	dptr,#_mac_spi_read_PARM_2
      00239F E4               [12] 1169 	clr	a
      0023A0 F0               [24] 1170 	movx	@dptr,a
      0023A1 75 82 1F         [24] 1171 	mov	dpl, #0x1f
      0023A4 12 31 66         [24] 1172 	lcall	_mac_spi_read
      0023A7 E5 82            [12] 1173 	mov	a, dpl
                                   1174 ;	Eth.c:131: econ1_value &= ~(0x04);
      0023A9 54 FB            [12] 1175 	anl	a,#0xfb
      0023AB FF               [12] 1176 	mov	r7,a
                                   1177 ;	Eth.c:134: spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
      0023AC 90 03 63         [24] 1178 	mov	dptr,#_spi_control_write_PARM_2
      0023AF 74 1F            [12] 1179 	mov	a,#0x1f
      0023B1 F0               [24] 1180 	movx	@dptr,a
      0023B2 90 03 64         [24] 1181 	mov	dptr,#_spi_control_write_PARM_3
      0023B5 EF               [12] 1182 	mov	a,r7
      0023B6 F0               [24] 1183 	movx	@dptr,a
      0023B7 75 82 00         [24] 1184 	mov	dpl, #0x00
                                   1185 ;	Eth.c:135: }
      0023BA 02 2F F0         [24] 1186 	ljmp	_spi_control_write
                                   1187 ;------------------------------------------------------------
                                   1188 ;Allocation info for local variables in function 'RX_enable'
                                   1189 ;------------------------------------------------------------
                                   1190 ;econ1_value               Allocated with name '_RX_enable_econ1_value_10000_90'
                                   1191 ;------------------------------------------------------------
                                   1192 ;	Eth.c:137: void RX_enable(void)
                                   1193 ;	-----------------------------------------
                                   1194 ;	 function RX_enable
                                   1195 ;	-----------------------------------------
      0023BD                       1196 _RX_enable:
                                   1197 ;	Eth.c:139: uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1
      0023BD 90 03 6C         [24] 1198 	mov	dptr,#_mac_spi_read_PARM_2
      0023C0 E4               [12] 1199 	clr	a
      0023C1 F0               [24] 1200 	movx	@dptr,a
      0023C2 75 82 1F         [24] 1201 	mov	dpl, #0x1f
      0023C5 12 31 66         [24] 1202 	lcall	_mac_spi_read
      0023C8 E5 82            [12] 1203 	mov	a, dpl
                                   1204 ;	Eth.c:142: econ1_value |= 0x04;
      0023CA 44 04            [12] 1205 	orl	a,#0x04
      0023CC FF               [12] 1206 	mov	r7,a
                                   1207 ;	Eth.c:145: spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
      0023CD 90 03 63         [24] 1208 	mov	dptr,#_spi_control_write_PARM_2
      0023D0 74 1F            [12] 1209 	mov	a,#0x1f
      0023D2 F0               [24] 1210 	movx	@dptr,a
      0023D3 90 03 64         [24] 1211 	mov	dptr,#_spi_control_write_PARM_3
      0023D6 EF               [12] 1212 	mov	a,r7
      0023D7 F0               [24] 1213 	movx	@dptr,a
      0023D8 75 82 00         [24] 1214 	mov	dpl, #0x00
                                   1215 ;	Eth.c:146: }
      0023DB 02 2F F0         [24] 1216 	ljmp	_spi_control_write
                                   1217 ;------------------------------------------------------------
                                   1218 ;Allocation info for local variables in function 'send_arp_request'
                                   1219 ;------------------------------------------------------------
                                   1220 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_92'
                                   1221 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_92'
                                   1222 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_92'
                                   1223 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_92'
                                   1224 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_92'
                                   1225 ;i                         Allocated with name '_send_arp_request_i_20000_93'
                                   1226 ;i                         Allocated with name '_send_arp_request_i_20000_95'
                                   1227 ;i                         Allocated with name '_send_arp_request_i_20000_97'
                                   1228 ;i                         Allocated with name '_send_arp_request_i_20000_99'
                                   1229 ;i                         Allocated with name '_send_arp_request_i_20000_101'
                                   1230 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_103'
                                   1231 ;start_address             Allocated with name '_send_arp_request_start_address_10001_103'
                                   1232 ;end_address               Allocated with name '_send_arp_request_end_address_10002_105'
                                   1233 ;------------------------------------------------------------
                                   1234 ;	Eth.c:148: void send_arp_request(void)
                                   1235 ;	-----------------------------------------
                                   1236 ;	 function send_arp_request
                                   1237 ;	-----------------------------------------
      0023DE                       1238 _send_arp_request:
                                   1239 ;	Eth.c:152: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      0023DE 90 01 10         [24] 1240 	mov	dptr,#_send_arp_request_source_mac_10000_92
      0023E1 74 02            [12] 1241 	mov	a,#0x02
      0023E3 F0               [24] 1242 	movx	@dptr,a
      0023E4 90 01 11         [24] 1243 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0001)
      0023E7 74 11            [12] 1244 	mov	a,#0x11
      0023E9 F0               [24] 1245 	movx	@dptr,a
      0023EA 90 01 12         [24] 1246 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0002)
      0023ED 23               [12] 1247 	rl	a
      0023EE F0               [24] 1248 	movx	@dptr,a
      0023EF 90 01 13         [24] 1249 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0003)
      0023F2 74 33            [12] 1250 	mov	a,#0x33
      0023F4 F0               [24] 1251 	movx	@dptr,a
      0023F5 90 01 14         [24] 1252 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0004)
      0023F8 74 44            [12] 1253 	mov	a,#0x44
      0023FA F0               [24] 1254 	movx	@dptr,a
      0023FB 90 01 15         [24] 1255 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0005)
      0023FE 74 55            [12] 1256 	mov	a,#0x55
      002400 F0               [24] 1257 	movx	@dptr,a
                                   1258 ;	Eth.c:153: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      002401 90 01 16         [24] 1259 	mov	dptr,#_send_arp_request_dest_mac_10000_92
      002404 74 F8            [12] 1260 	mov	a,#0xf8
      002406 F0               [24] 1261 	movx	@dptr,a
      002407 90 01 17         [24] 1262 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0001)
      00240A 74 75            [12] 1263 	mov	a,#0x75
      00240C F0               [24] 1264 	movx	@dptr,a
      00240D 90 01 18         [24] 1265 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0002)
      002410 74 A4            [12] 1266 	mov	a,#0xa4
      002412 F0               [24] 1267 	movx	@dptr,a
      002413 90 01 19         [24] 1268 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0003)
      002416 74 8C            [12] 1269 	mov	a,#0x8c
      002418 F0               [24] 1270 	movx	@dptr,a
      002419 90 01 1A         [24] 1271 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0004)
      00241C 74 41            [12] 1272 	mov	a,#0x41
      00241E F0               [24] 1273 	movx	@dptr,a
      00241F 90 01 1B         [24] 1274 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0005)
      002422 74 31            [12] 1275 	mov	a,#0x31
      002424 F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	Eth.c:154: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      002425 90 01 1C         [24] 1278 	mov	dptr,#_send_arp_request_source_ip_10000_92
      002428 74 C0            [12] 1279 	mov	a,#0xc0
      00242A F0               [24] 1280 	movx	@dptr,a
      00242B 90 01 1D         [24] 1281 	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0001)
      00242E 74 A8            [12] 1282 	mov	a,#0xa8
      002430 F0               [24] 1283 	movx	@dptr,a
      002431 90 01 1E         [24] 1284 	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0002)
      002434 74 01            [12] 1285 	mov	a,#0x01
      002436 F0               [24] 1286 	movx	@dptr,a
      002437 90 01 1F         [24] 1287 	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0003)
      00243A 74 64            [12] 1288 	mov	a,#0x64
      00243C F0               [24] 1289 	movx	@dptr,a
                                   1290 ;	Eth.c:155: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      00243D 90 01 20         [24] 1291 	mov	dptr,#_send_arp_request_target_ip_10000_92
      002440 74 C0            [12] 1292 	mov	a,#0xc0
      002442 F0               [24] 1293 	movx	@dptr,a
      002443 90 01 21         [24] 1294 	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0001)
      002446 74 A8            [12] 1295 	mov	a,#0xa8
      002448 F0               [24] 1296 	movx	@dptr,a
      002449 90 01 22         [24] 1297 	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0002)
      00244C 74 01            [12] 1298 	mov	a,#0x01
      00244E F0               [24] 1299 	movx	@dptr,a
      00244F 90 01 23         [24] 1300 	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0003)
      002452 F0               [24] 1301 	movx	@dptr,a
                                   1302 ;	Eth.c:159: arp_packet[0] = 0x0E;
      002453 90 01 24         [24] 1303 	mov	dptr,#_send_arp_request_arp_packet_10000_92
      002456 74 0E            [12] 1304 	mov	a,#0x0e
      002458 F0               [24] 1305 	movx	@dptr,a
                                   1306 ;	Eth.c:163: set_mac_address(source_mac);
      002459 90 01 10         [24] 1307 	mov	dptr,#_send_arp_request_source_mac_10000_92
      00245C 75 F0 00         [24] 1308 	mov	b, #0x00
      00245F 12 20 65         [24] 1309 	lcall	_set_mac_address
                                   1310 ;	Eth.c:166: for (int i = 0; i < 6; i++)
      002462 7E 00            [12] 1311 	mov	r6,#0x00
      002464 7F 00            [12] 1312 	mov	r7,#0x00
      002466                       1313 00115$:
      002466 C3               [12] 1314 	clr	c
      002467 EE               [12] 1315 	mov	a,r6
      002468 94 06            [12] 1316 	subb	a,#0x06
      00246A EF               [12] 1317 	mov	a,r7
      00246B 64 80            [12] 1318 	xrl	a,#0x80
      00246D 94 80            [12] 1319 	subb	a,#0x80
      00246F 50 48            [24] 1320 	jnc	00101$
                                   1321 ;	Eth.c:168: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      002471 8E 05            [24] 1322 	mov	ar5,r6
      002473 ED               [12] 1323 	mov	a,r5
      002474 04               [12] 1324 	inc	a
      002475 FC               [12] 1325 	mov	r4,a
      002476 33               [12] 1326 	rlc	a
      002477 95 E0            [12] 1327 	subb	a,acc
      002479 FB               [12] 1328 	mov	r3,a
      00247A EC               [12] 1329 	mov	a,r4
      00247B 24 24            [12] 1330 	add	a, #_send_arp_request_arp_packet_10000_92
      00247D FC               [12] 1331 	mov	r4,a
      00247E EB               [12] 1332 	mov	a,r3
      00247F 34 01            [12] 1333 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      002481 FB               [12] 1334 	mov	r3,a
      002482 EE               [12] 1335 	mov	a,r6
      002483 24 16            [12] 1336 	add	a, #_send_arp_request_dest_mac_10000_92
      002485 F5 82            [12] 1337 	mov	dpl,a
      002487 EF               [12] 1338 	mov	a,r7
      002488 34 01            [12] 1339 	addc	a, #(_send_arp_request_dest_mac_10000_92 >> 8)
      00248A F5 83            [12] 1340 	mov	dph,a
      00248C E0               [24] 1341 	movx	a,@dptr
      00248D 8C 82            [24] 1342 	mov	dpl,r4
      00248F 8B 83            [24] 1343 	mov	dph,r3
      002491 F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	Eth.c:169: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      002492 74 07            [12] 1346 	mov	a,#0x07
      002494 2D               [12] 1347 	add	a, r5
      002495 FD               [12] 1348 	mov	r5,a
      002496 33               [12] 1349 	rlc	a
      002497 95 E0            [12] 1350 	subb	a,acc
      002499 FC               [12] 1351 	mov	r4,a
      00249A ED               [12] 1352 	mov	a,r5
      00249B 24 24            [12] 1353 	add	a, #_send_arp_request_arp_packet_10000_92
      00249D FD               [12] 1354 	mov	r5,a
      00249E EC               [12] 1355 	mov	a,r4
      00249F 34 01            [12] 1356 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      0024A1 FC               [12] 1357 	mov	r4,a
      0024A2 EE               [12] 1358 	mov	a,r6
      0024A3 24 10            [12] 1359 	add	a, #_send_arp_request_source_mac_10000_92
      0024A5 F5 82            [12] 1360 	mov	dpl,a
      0024A7 EF               [12] 1361 	mov	a,r7
      0024A8 34 01            [12] 1362 	addc	a, #(_send_arp_request_source_mac_10000_92 >> 8)
      0024AA F5 83            [12] 1363 	mov	dph,a
      0024AC E0               [24] 1364 	movx	a,@dptr
      0024AD 8D 82            [24] 1365 	mov	dpl,r5
      0024AF 8C 83            [24] 1366 	mov	dph,r4
      0024B1 F0               [24] 1367 	movx	@dptr,a
                                   1368 ;	Eth.c:166: for (int i = 0; i < 6; i++)
      0024B2 0E               [12] 1369 	inc	r6
      0024B3 BE 00 B0         [24] 1370 	cjne	r6,#0x00,00115$
      0024B6 0F               [12] 1371 	inc	r7
      0024B7 80 AD            [24] 1372 	sjmp	00115$
      0024B9                       1373 00101$:
                                   1374 ;	Eth.c:173: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      0024B9 90 01 31         [24] 1375 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000d)
      0024BC 74 08            [12] 1376 	mov	a,#0x08
      0024BE F0               [24] 1377 	movx	@dptr,a
                                   1378 ;	Eth.c:174: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      0024BF 90 01 32         [24] 1379 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000e)
      0024C2 74 06            [12] 1380 	mov	a,#0x06
      0024C4 F0               [24] 1381 	movx	@dptr,a
                                   1382 ;	Eth.c:178: arp_packet[15] = 0x00;
      0024C5 90 01 33         [24] 1383 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000f)
      0024C8 E4               [12] 1384 	clr	a
      0024C9 F0               [24] 1385 	movx	@dptr,a
                                   1386 ;	Eth.c:179: arp_packet[16] = 0x01;
      0024CA 90 01 34         [24] 1387 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0010)
      0024CD 04               [12] 1388 	inc	a
      0024CE F0               [24] 1389 	movx	@dptr,a
                                   1390 ;	Eth.c:182: arp_packet[17] = 0x08;
      0024CF 90 01 35         [24] 1391 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0011)
      0024D2 74 08            [12] 1392 	mov	a,#0x08
      0024D4 F0               [24] 1393 	movx	@dptr,a
                                   1394 ;	Eth.c:183: arp_packet[18] = 0x00;
      0024D5 90 01 36         [24] 1395 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0012)
      0024D8 E4               [12] 1396 	clr	a
      0024D9 F0               [24] 1397 	movx	@dptr,a
                                   1398 ;	Eth.c:186: arp_packet[19] = 0x06;
      0024DA 90 01 37         [24] 1399 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0013)
      0024DD 74 06            [12] 1400 	mov	a,#0x06
      0024DF F0               [24] 1401 	movx	@dptr,a
                                   1402 ;	Eth.c:189: arp_packet[20] = 0x04;
      0024E0 90 01 38         [24] 1403 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0014)
      0024E3 74 04            [12] 1404 	mov	a,#0x04
      0024E5 F0               [24] 1405 	movx	@dptr,a
                                   1406 ;	Eth.c:192: arp_packet[21] = 0x00;
      0024E6 90 01 39         [24] 1407 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0015)
      0024E9 E4               [12] 1408 	clr	a
      0024EA F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	Eth.c:193: arp_packet[22] = 0x01;
      0024EB 90 01 3A         [24] 1411 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0016)
      0024EE 04               [12] 1412 	inc	a
      0024EF F0               [24] 1413 	movx	@dptr,a
                                   1414 ;	Eth.c:196: for (int i = 0; i < 6; i++) {
      0024F0 7E 00            [12] 1415 	mov	r6,#0x00
      0024F2 7F 00            [12] 1416 	mov	r7,#0x00
      0024F4                       1417 00118$:
      0024F4 C3               [12] 1418 	clr	c
      0024F5 EE               [12] 1419 	mov	a,r6
      0024F6 94 06            [12] 1420 	subb	a,#0x06
      0024F8 EF               [12] 1421 	mov	a,r7
      0024F9 64 80            [12] 1422 	xrl	a,#0x80
      0024FB 94 80            [12] 1423 	subb	a,#0x80
      0024FD 50 29            [24] 1424 	jnc	00102$
                                   1425 ;	Eth.c:197: arp_packet[23 + i] = source_mac[i];
      0024FF 8E 05            [24] 1426 	mov	ar5,r6
      002501 74 17            [12] 1427 	mov	a,#0x17
      002503 2D               [12] 1428 	add	a, r5
      002504 FD               [12] 1429 	mov	r5,a
      002505 33               [12] 1430 	rlc	a
      002506 95 E0            [12] 1431 	subb	a,acc
      002508 FC               [12] 1432 	mov	r4,a
      002509 ED               [12] 1433 	mov	a,r5
      00250A 24 24            [12] 1434 	add	a, #_send_arp_request_arp_packet_10000_92
      00250C FD               [12] 1435 	mov	r5,a
      00250D EC               [12] 1436 	mov	a,r4
      00250E 34 01            [12] 1437 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      002510 FC               [12] 1438 	mov	r4,a
      002511 EE               [12] 1439 	mov	a,r6
      002512 24 10            [12] 1440 	add	a, #_send_arp_request_source_mac_10000_92
      002514 F5 82            [12] 1441 	mov	dpl,a
      002516 EF               [12] 1442 	mov	a,r7
      002517 34 01            [12] 1443 	addc	a, #(_send_arp_request_source_mac_10000_92 >> 8)
      002519 F5 83            [12] 1444 	mov	dph,a
      00251B E0               [24] 1445 	movx	a,@dptr
      00251C 8D 82            [24] 1446 	mov	dpl,r5
      00251E 8C 83            [24] 1447 	mov	dph,r4
      002520 F0               [24] 1448 	movx	@dptr,a
                                   1449 ;	Eth.c:196: for (int i = 0; i < 6; i++) {
      002521 0E               [12] 1450 	inc	r6
      002522 BE 00 CF         [24] 1451 	cjne	r6,#0x00,00118$
      002525 0F               [12] 1452 	inc	r7
      002526 80 CC            [24] 1453 	sjmp	00118$
      002528                       1454 00102$:
                                   1455 ;	Eth.c:201: for (int i = 0; i < 4; i++) {
      002528 7E 00            [12] 1456 	mov	r6,#0x00
      00252A 7F 00            [12] 1457 	mov	r7,#0x00
      00252C                       1458 00121$:
      00252C C3               [12] 1459 	clr	c
      00252D EE               [12] 1460 	mov	a,r6
      00252E 94 04            [12] 1461 	subb	a,#0x04
      002530 EF               [12] 1462 	mov	a,r7
      002531 64 80            [12] 1463 	xrl	a,#0x80
      002533 94 80            [12] 1464 	subb	a,#0x80
      002535 50 29            [24] 1465 	jnc	00103$
                                   1466 ;	Eth.c:202: arp_packet[29 + i] = source_ip[i];
      002537 8E 05            [24] 1467 	mov	ar5,r6
      002539 74 1D            [12] 1468 	mov	a,#0x1d
      00253B 2D               [12] 1469 	add	a, r5
      00253C FD               [12] 1470 	mov	r5,a
      00253D 33               [12] 1471 	rlc	a
      00253E 95 E0            [12] 1472 	subb	a,acc
      002540 FC               [12] 1473 	mov	r4,a
      002541 ED               [12] 1474 	mov	a,r5
      002542 24 24            [12] 1475 	add	a, #_send_arp_request_arp_packet_10000_92
      002544 FD               [12] 1476 	mov	r5,a
      002545 EC               [12] 1477 	mov	a,r4
      002546 34 01            [12] 1478 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      002548 FC               [12] 1479 	mov	r4,a
      002549 EE               [12] 1480 	mov	a,r6
      00254A 24 1C            [12] 1481 	add	a, #_send_arp_request_source_ip_10000_92
      00254C F5 82            [12] 1482 	mov	dpl,a
      00254E EF               [12] 1483 	mov	a,r7
      00254F 34 01            [12] 1484 	addc	a, #(_send_arp_request_source_ip_10000_92 >> 8)
      002551 F5 83            [12] 1485 	mov	dph,a
      002553 E0               [24] 1486 	movx	a,@dptr
      002554 8D 82            [24] 1487 	mov	dpl,r5
      002556 8C 83            [24] 1488 	mov	dph,r4
      002558 F0               [24] 1489 	movx	@dptr,a
                                   1490 ;	Eth.c:201: for (int i = 0; i < 4; i++) {
      002559 0E               [12] 1491 	inc	r6
      00255A BE 00 CF         [24] 1492 	cjne	r6,#0x00,00121$
      00255D 0F               [12] 1493 	inc	r7
      00255E 80 CC            [24] 1494 	sjmp	00121$
      002560                       1495 00103$:
                                   1496 ;	Eth.c:206: for (int i = 0; i < 6; i++) {
      002560 7F 00            [12] 1497 	mov	r7,#0x00
      002562                       1498 00124$:
      002562 BF 06 00         [24] 1499 	cjne	r7,#0x06,00215$
      002565                       1500 00215$:
      002565 50 19            [24] 1501 	jnc	00104$
                                   1502 ;	Eth.c:207: arp_packet[33 + i] = 0x00;
      002567 8F 06            [24] 1503 	mov	ar6,r7
      002569 74 21            [12] 1504 	mov	a,#0x21
      00256B 2E               [12] 1505 	add	a, r6
      00256C FE               [12] 1506 	mov	r6,a
      00256D 33               [12] 1507 	rlc	a
      00256E 95 E0            [12] 1508 	subb	a,acc
      002570 FD               [12] 1509 	mov	r5,a
      002571 EE               [12] 1510 	mov	a,r6
      002572 24 24            [12] 1511 	add	a, #_send_arp_request_arp_packet_10000_92
      002574 F5 82            [12] 1512 	mov	dpl,a
      002576 ED               [12] 1513 	mov	a,r5
      002577 34 01            [12] 1514 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      002579 F5 83            [12] 1515 	mov	dph,a
      00257B E4               [12] 1516 	clr	a
      00257C F0               [24] 1517 	movx	@dptr,a
                                   1518 ;	Eth.c:206: for (int i = 0; i < 6; i++) {
      00257D 0F               [12] 1519 	inc	r7
      00257E 80 E2            [24] 1520 	sjmp	00124$
      002580                       1521 00104$:
                                   1522 ;	Eth.c:211: for (int i = 0; i < 4; i++) {
      002580 7E 00            [12] 1523 	mov	r6,#0x00
      002582 7F 00            [12] 1524 	mov	r7,#0x00
      002584                       1525 00127$:
      002584 C3               [12] 1526 	clr	c
      002585 EE               [12] 1527 	mov	a,r6
      002586 94 04            [12] 1528 	subb	a,#0x04
      002588 EF               [12] 1529 	mov	a,r7
      002589 64 80            [12] 1530 	xrl	a,#0x80
      00258B 94 80            [12] 1531 	subb	a,#0x80
      00258D 50 29            [24] 1532 	jnc	00105$
                                   1533 ;	Eth.c:212: arp_packet[39 + i] = target_ip[i];
      00258F 8E 05            [24] 1534 	mov	ar5,r6
      002591 74 27            [12] 1535 	mov	a,#0x27
      002593 2D               [12] 1536 	add	a, r5
      002594 FD               [12] 1537 	mov	r5,a
      002595 33               [12] 1538 	rlc	a
      002596 95 E0            [12] 1539 	subb	a,acc
      002598 FC               [12] 1540 	mov	r4,a
      002599 ED               [12] 1541 	mov	a,r5
      00259A 24 24            [12] 1542 	add	a, #_send_arp_request_arp_packet_10000_92
      00259C FD               [12] 1543 	mov	r5,a
      00259D EC               [12] 1544 	mov	a,r4
      00259E 34 01            [12] 1545 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      0025A0 FC               [12] 1546 	mov	r4,a
      0025A1 EE               [12] 1547 	mov	a,r6
      0025A2 24 20            [12] 1548 	add	a, #_send_arp_request_target_ip_10000_92
      0025A4 F5 82            [12] 1549 	mov	dpl,a
      0025A6 EF               [12] 1550 	mov	a,r7
      0025A7 34 01            [12] 1551 	addc	a, #(_send_arp_request_target_ip_10000_92 >> 8)
      0025A9 F5 83            [12] 1552 	mov	dph,a
      0025AB E0               [24] 1553 	movx	a,@dptr
      0025AC 8D 82            [24] 1554 	mov	dpl,r5
      0025AE 8C 83            [24] 1555 	mov	dph,r4
      0025B0 F0               [24] 1556 	movx	@dptr,a
                                   1557 ;	Eth.c:211: for (int i = 0; i < 4; i++) {
      0025B1 0E               [12] 1558 	inc	r6
      0025B2 BE 00 CF         [24] 1559 	cjne	r6,#0x00,00127$
      0025B5 0F               [12] 1560 	inc	r7
      0025B6 80 CC            [24] 1561 	sjmp	00127$
      0025B8                       1562 00105$:
                                   1563 ;	Eth.c:225: spi_buffer_write(frame_size, start_address, arp_packet);
      0025B8 90 03 7D         [24] 1564 	mov	dptr,#_spi_buffer_write_PARM_2
      0025BB E4               [12] 1565 	clr	a
      0025BC F0               [24] 1566 	movx	@dptr,a
      0025BD A3               [24] 1567 	inc	dptr
      0025BE F0               [24] 1568 	movx	@dptr,a
      0025BF 90 03 7F         [24] 1569 	mov	dptr,#_spi_buffer_write_PARM_3
      0025C2 74 24            [12] 1570 	mov	a,#_send_arp_request_arp_packet_10000_92
      0025C4 F0               [24] 1571 	movx	@dptr,a
      0025C5 74 01            [12] 1572 	mov	a,#(_send_arp_request_arp_packet_10000_92 >> 8)
      0025C7 A3               [24] 1573 	inc	dptr
      0025C8 F0               [24] 1574 	movx	@dptr,a
      0025C9 E4               [12] 1575 	clr	a
      0025CA A3               [24] 1576 	inc	dptr
      0025CB F0               [24] 1577 	movx	@dptr,a
      0025CC 90 00 2C         [24] 1578 	mov	dptr,#0x002c
      0025CF 12 35 6C         [24] 1579 	lcall	_spi_buffer_write
                                   1580 ;	Eth.c:228: enc28j60_set_transmit_pointers(start_address, end_address);
      0025D2 90 01 0A         [24] 1581 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0025D5 74 2B            [12] 1582 	mov	a,#0x2b
      0025D7 F0               [24] 1583 	movx	@dptr,a
      0025D8 E4               [12] 1584 	clr	a
      0025D9 A3               [24] 1585 	inc	dptr
      0025DA F0               [24] 1586 	movx	@dptr,a
      0025DB 90 00 00         [24] 1587 	mov	dptr,#0x0000
      0025DE 12 22 A8         [24] 1588 	lcall	_enc28j60_set_transmit_pointers
                                   1589 ;	Eth.c:231: RX_enable();
      0025E1 12 23 BD         [24] 1590 	lcall	_RX_enable
                                   1591 ;	Eth.c:232: enc28j60_start_transmission();
      0025E4 12 21 50         [24] 1592 	lcall	_enc28j60_start_transmission
                                   1593 ;	Eth.c:235: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      0025E7 90 01 F4         [24] 1594 	mov	dptr,#0x01f4
      0025EA 12 23 1F         [24] 1595 	lcall	_wait_for_transmission_complete
      0025ED E5 82            [12] 1596 	mov	a, dpl
      0025EF 60 33            [24] 1597 	jz	00112$
                                   1598 ;	Eth.c:237: if (enc28j60_transmission_successful()) {
      0025F1 12 23 82         [24] 1599 	lcall	_enc28j60_transmission_successful
      0025F4 E5 82            [12] 1600 	mov	a, dpl
      0025F6 60 16            [24] 1601 	jz	00109$
                                   1602 ;	Eth.c:238: printf("ARP request sent successfully.\n\r");
      0025F8 74 D7            [12] 1603 	mov	a,#___str_3
      0025FA C0 E0            [24] 1604 	push	acc
      0025FC 74 44            [12] 1605 	mov	a,#(___str_3 >> 8)
      0025FE C0 E0            [24] 1606 	push	acc
      002600 74 80            [12] 1607 	mov	a,#0x80
      002602 C0 E0            [24] 1608 	push	acc
      002604 12 3A 16         [24] 1609 	lcall	_printf
      002607 15 81            [12] 1610 	dec	sp
      002609 15 81            [12] 1611 	dec	sp
      00260B 15 81            [12] 1612 	dec	sp
      00260D 22               [24] 1613 	ret
      00260E                       1614 00109$:
                                   1615 ;	Eth.c:240: printf("ARP transmission failed. Check error flags.\n\r");
      00260E 74 F8            [12] 1616 	mov	a,#___str_4
      002610 C0 E0            [24] 1617 	push	acc
      002612 74 44            [12] 1618 	mov	a,#(___str_4 >> 8)
      002614 C0 E0            [24] 1619 	push	acc
      002616 74 80            [12] 1620 	mov	a,#0x80
      002618 C0 E0            [24] 1621 	push	acc
      00261A 12 3A 16         [24] 1622 	lcall	_printf
      00261D 15 81            [12] 1623 	dec	sp
      00261F 15 81            [12] 1624 	dec	sp
      002621 15 81            [12] 1625 	dec	sp
      002623 22               [24] 1626 	ret
      002624                       1627 00112$:
                                   1628 ;	Eth.c:243: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      002624 74 26            [12] 1629 	mov	a,#___str_5
      002626 C0 E0            [24] 1630 	push	acc
      002628 74 45            [12] 1631 	mov	a,#(___str_5 >> 8)
      00262A C0 E0            [24] 1632 	push	acc
      00262C 74 80            [12] 1633 	mov	a,#0x80
      00262E C0 E0            [24] 1634 	push	acc
      002630 12 3A 16         [24] 1635 	lcall	_printf
      002633 15 81            [12] 1636 	dec	sp
      002635 15 81            [12] 1637 	dec	sp
      002637 15 81            [12] 1638 	dec	sp
                                   1639 ;	Eth.c:245: }
      002639 22               [24] 1640 	ret
                                   1641 ;------------------------------------------------------------
                                   1642 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                   1643 ;------------------------------------------------------------
                                   1644 ;eir                       Allocated with name '_external_interrupt0_isr_eir_10000_111'
                                   1645 ;------------------------------------------------------------
                                   1646 ;	Eth.c:247: void external_interrupt0_isr(void) __interrupt (0)
                                   1647 ;	-----------------------------------------
                                   1648 ;	 function external_interrupt0_isr
                                   1649 ;	-----------------------------------------
      00263A                       1650 _external_interrupt0_isr:
      00263A C0 21            [24] 1651 	push	bits
      00263C C0 E0            [24] 1652 	push	acc
      00263E C0 F0            [24] 1653 	push	b
      002640 C0 82            [24] 1654 	push	dpl
      002642 C0 83            [24] 1655 	push	dph
      002644 C0 07            [24] 1656 	push	(0+7)
      002646 C0 06            [24] 1657 	push	(0+6)
      002648 C0 05            [24] 1658 	push	(0+5)
      00264A C0 04            [24] 1659 	push	(0+4)
      00264C C0 03            [24] 1660 	push	(0+3)
      00264E C0 02            [24] 1661 	push	(0+2)
      002650 C0 01            [24] 1662 	push	(0+1)
      002652 C0 00            [24] 1663 	push	(0+0)
      002654 C0 D0            [24] 1664 	push	psw
      002656 75 D0 00         [24] 1665 	mov	psw,#0x00
                                   1666 ;	Eth.c:249: uint8_t eir = mac_spi_read(0x1C, 0); // Read EIR register (address 0x1C, bank 0)
      002659 90 03 6C         [24] 1667 	mov	dptr,#_mac_spi_read_PARM_2
      00265C E4               [12] 1668 	clr	a
      00265D F0               [24] 1669 	movx	@dptr,a
      00265E 75 82 1C         [24] 1670 	mov	dpl, #0x1c
      002661 12 31 66         [24] 1671 	lcall	_mac_spi_read
                                   1672 ;	Eth.c:250: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
      002664 74 69            [12] 1673 	mov	a,#___str_6
      002666 C0 E0            [24] 1674 	push	acc
      002668 74 45            [12] 1675 	mov	a,#(___str_6 >> 8)
      00266A C0 E0            [24] 1676 	push	acc
      00266C 74 80            [12] 1677 	mov	a,#0x80
      00266E C0 E0            [24] 1678 	push	acc
      002670 12 3A 16         [24] 1679 	lcall	_printf
      002673 15 81            [12] 1680 	dec	sp
      002675 15 81            [12] 1681 	dec	sp
      002677 15 81            [12] 1682 	dec	sp
                                   1683 ;	Eth.c:254: }
      002679 D0 D0            [24] 1684 	pop	psw
      00267B D0 00            [24] 1685 	pop	(0+0)
      00267D D0 01            [24] 1686 	pop	(0+1)
      00267F D0 02            [24] 1687 	pop	(0+2)
      002681 D0 03            [24] 1688 	pop	(0+3)
      002683 D0 04            [24] 1689 	pop	(0+4)
      002685 D0 05            [24] 1690 	pop	(0+5)
      002687 D0 06            [24] 1691 	pop	(0+6)
      002689 D0 07            [24] 1692 	pop	(0+7)
      00268B D0 83            [24] 1693 	pop	dph
      00268D D0 82            [24] 1694 	pop	dpl
      00268F D0 F0            [24] 1695 	pop	b
      002691 D0 E0            [24] 1696 	pop	acc
      002693 D0 21            [24] 1697 	pop	bits
      002695 32               [24] 1698 	reti
                                   1699 	.area CSEG    (CODE)
                                   1700 	.area CONST   (CODE)
                                   1701 	.area CONST   (CODE)
      004458                       1702 ___str_0:
      004458 49 6E 76 61 6C 69 64  1703 	.ascii "Invalid RX buffer range."
             20 52 58 20 62 75 66
             66 65 72 20 72 61 6E
             67 65 2E
      004470 0A                    1704 	.db 0x0a
      004471 00                    1705 	.db 0x00
                                   1706 	.area CSEG    (CODE)
                                   1707 	.area CONST   (CODE)
      004472                       1708 ___str_1:
      004472 52 58 20 62 75 66 66  1709 	.ascii "RX buffer initialized: 0x%04X to 0x%04X."
             65 72 20 69 6E 69 74
             69 61 6C 69 7A 65 64
             3A 20 30 78 25 30 34
             58 20 74 6F 20 30 78
             25 30 34 58 2E
      00449A 0A                    1710 	.db 0x0a
      00449B 00                    1711 	.db 0x00
                                   1712 	.area CSEG    (CODE)
                                   1713 	.area CONST   (CODE)
      00449C                       1714 ___str_2:
      00449C 0A                    1715 	.db 0x0a
      00449D 49 6E 76 61 6C 69 64  1716 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      0044D5 0A                    1717 	.db 0x0a
      0044D6 00                    1718 	.db 0x00
                                   1719 	.area CSEG    (CODE)
                                   1720 	.area CONST   (CODE)
      0044D7                       1721 ___str_3:
      0044D7 41 52 50 20 72 65 71  1722 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      0044F5 0A                    1723 	.db 0x0a
      0044F6 0D                    1724 	.db 0x0d
      0044F7 00                    1725 	.db 0x00
                                   1726 	.area CSEG    (CODE)
                                   1727 	.area CONST   (CODE)
      0044F8                       1728 ___str_4:
      0044F8 41 52 50 20 74 72 61  1729 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      004523 0A                    1730 	.db 0x0a
      004524 0D                    1731 	.db 0x0d
      004525 00                    1732 	.db 0x00
                                   1733 	.area CSEG    (CODE)
                                   1734 	.area CONST   (CODE)
      004526                       1735 ___str_5:
      004526 54 72 61 6E 73 6D 69  1736 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      004562 74 6C 79 2E           1737 	.ascii "tly."
      004566 0A                    1738 	.db 0x0a
      004567 0D                    1739 	.db 0x0d
      004568 00                    1740 	.db 0x00
                                   1741 	.area CSEG    (CODE)
                                   1742 	.area CONST   (CODE)
      004569                       1743 ___str_6:
      004569 49 6E 74 65 72 72 72  1744 	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
             72 72 72 72 72 75 75
             75 75 75 75 75 75 75
             70 70 70 70 70 70 70
             70 74 74 74 74 74 74
             74
      00458D 0A                    1745 	.db 0x0a
      00458E 0D                    1746 	.db 0x0d
      00458F 00                    1747 	.db 0x00
                                   1748 	.area CSEG    (CODE)
                                   1749 	.area XINIT   (CODE)
      004C09                       1750 __xinit__source_mac:
      004C09 02                    1751 	.db #0x02	; 2
      004C0A 11                    1752 	.db #0x11	; 17
      004C0B 22                    1753 	.db #0x22	; 34
      004C0C 33                    1754 	.db #0x33	; 51	'3'
      004C0D 44                    1755 	.db #0x44	; 68	'D'
      004C0E 55                    1756 	.db #0x55	; 85	'U'
      004C0F                       1757 __xinit__dest_mac:
      004C0F FF                    1758 	.db #0xff	; 255
      004C10 FF                    1759 	.db #0xff	; 255
      004C11 FF                    1760 	.db #0xff	; 255
      004C12 FF                    1761 	.db #0xff	; 255
      004C13 FF                    1762 	.db #0xff	; 255
      004C14 FF                    1763 	.db #0xff	; 255
      004C15                       1764 __xinit__source_ip:
      004C15 C0                    1765 	.db #0xc0	; 192
      004C16 A8                    1766 	.db #0xa8	; 168
      004C17 01                    1767 	.db #0x01	; 1
      004C18 64                    1768 	.db #0x64	; 100	'd'
      004C19                       1769 __xinit__target_ip:
      004C19 C0                    1770 	.db #0xc0	; 192
      004C1A A8                    1771 	.db #0xa8	; 168
      004C1B 01                    1772 	.db #0x01	; 1
      004C1C 01                    1773 	.db #0x01	; 1
                                   1774 	.area CABS    (ABS,CODE)

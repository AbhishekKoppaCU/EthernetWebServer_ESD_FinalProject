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
      002073 12 30 BC         [24]  601 	lcall	_spi_control_write
                                    602 ;	Eth.c:42: spi_control_write(3, 0x00, 0x11);  // MAADR5
      002076 90 03 63         [24]  603 	mov	dptr,#_spi_control_write_PARM_2
      002079 E4               [12]  604 	clr	a
      00207A F0               [24]  605 	movx	@dptr,a
      00207B 90 03 64         [24]  606 	mov	dptr,#_spi_control_write_PARM_3
      00207E 74 11            [12]  607 	mov	a,#0x11
      002080 F0               [24]  608 	movx	@dptr,a
      002081 75 82 03         [24]  609 	mov	dpl, #0x03
      002084 12 30 BC         [24]  610 	lcall	_spi_control_write
                                    611 ;	Eth.c:43: spi_control_write(3, 0x03, 0x22);  // MAADR4
      002087 90 03 63         [24]  612 	mov	dptr,#_spi_control_write_PARM_2
      00208A 74 03            [12]  613 	mov	a,#0x03
      00208C F0               [24]  614 	movx	@dptr,a
      00208D 90 03 64         [24]  615 	mov	dptr,#_spi_control_write_PARM_3
      002090 74 22            [12]  616 	mov	a,#0x22
      002092 F0               [24]  617 	movx	@dptr,a
      002093 75 82 03         [24]  618 	mov	dpl, #0x03
      002096 12 30 BC         [24]  619 	lcall	_spi_control_write
                                    620 ;	Eth.c:44: spi_control_write(3, 0x02, 0x33);  // MAADR3
      002099 90 03 63         [24]  621 	mov	dptr,#_spi_control_write_PARM_2
      00209C 74 02            [12]  622 	mov	a,#0x02
      00209E F0               [24]  623 	movx	@dptr,a
      00209F 90 03 64         [24]  624 	mov	dptr,#_spi_control_write_PARM_3
      0020A2 74 33            [12]  625 	mov	a,#0x33
      0020A4 F0               [24]  626 	movx	@dptr,a
      0020A5 75 82 03         [24]  627 	mov	dpl, #0x03
      0020A8 12 30 BC         [24]  628 	lcall	_spi_control_write
                                    629 ;	Eth.c:45: spi_control_write(3, 0x05, 0x44);  // MAADR2
      0020AB 90 03 63         [24]  630 	mov	dptr,#_spi_control_write_PARM_2
      0020AE 74 05            [12]  631 	mov	a,#0x05
      0020B0 F0               [24]  632 	movx	@dptr,a
      0020B1 90 03 64         [24]  633 	mov	dptr,#_spi_control_write_PARM_3
      0020B4 74 44            [12]  634 	mov	a,#0x44
      0020B6 F0               [24]  635 	movx	@dptr,a
      0020B7 75 82 03         [24]  636 	mov	dpl, #0x03
      0020BA 12 30 BC         [24]  637 	lcall	_spi_control_write
                                    638 ;	Eth.c:46: spi_control_write(3, 0x04, 0x55);  // MAADR1
      0020BD 90 03 63         [24]  639 	mov	dptr,#_spi_control_write_PARM_2
      0020C0 74 04            [12]  640 	mov	a,#0x04
      0020C2 F0               [24]  641 	movx	@dptr,a
      0020C3 90 03 64         [24]  642 	mov	dptr,#_spi_control_write_PARM_3
      0020C6 74 55            [12]  643 	mov	a,#0x55
      0020C8 F0               [24]  644 	movx	@dptr,a
      0020C9 75 82 03         [24]  645 	mov	dpl, #0x03
                                    646 ;	Eth.c:48: }
      0020CC 02 30 BC         [24]  647 	ljmp	_spi_control_write
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
      0020FC 12 3A 73         [24]  692 	lcall	__mulint
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
      002158 12 32 32         [24]  772 	lcall	_mac_spi_read
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
      00216E 02 30 BC         [24]  786 	ljmp	_spi_control_write
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
      0021A0 74 23            [12]  834 	mov	a,#___str_0
      0021A2 C0 E0            [24]  835 	push	acc
      0021A4 74 45            [12]  836 	mov	a,#(___str_0 >> 8)
      0021A6 C0 E0            [24]  837 	push	acc
      0021A8 74 80            [12]  838 	mov	a,#0x80
      0021AA C0 E0            [24]  839 	push	acc
      0021AC 12 3A E1         [24]  840 	lcall	_printf
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
      0021CE C0 03            [24]  860 	push	ar3
      0021D0 12 30 BC         [24]  861 	lcall	_spi_control_write
      0021D3 D0 03            [24]  862 	pop	ar3
      0021D5 D0 04            [24]  863 	pop	ar4
      0021D7 D0 05            [24]  864 	pop	ar5
      0021D9 D0 06            [24]  865 	pop	ar6
      0021DB D0 07            [24]  866 	pop	ar7
                                    867 ;	Eth.c:74: spi_control_write(0, 0x09, (uint8_t)((start_address >> 8) & 0xFF)); // ERXSTH (high byte)
      0021DD 8F 02            [24]  868 	mov	ar2,r7
      0021DF 90 03 63         [24]  869 	mov	dptr,#_spi_control_write_PARM_2
      0021E2 74 09            [12]  870 	mov	a,#0x09
      0021E4 F0               [24]  871 	movx	@dptr,a
      0021E5 90 03 64         [24]  872 	mov	dptr,#_spi_control_write_PARM_3
      0021E8 EA               [12]  873 	mov	a,r2
      0021E9 F0               [24]  874 	movx	@dptr,a
      0021EA 75 82 00         [24]  875 	mov	dpl, #0x00
      0021ED C0 07            [24]  876 	push	ar7
      0021EF C0 06            [24]  877 	push	ar6
      0021F1 C0 05            [24]  878 	push	ar5
      0021F3 C0 04            [24]  879 	push	ar4
      0021F5 C0 03            [24]  880 	push	ar3
      0021F7 C0 02            [24]  881 	push	ar2
      0021F9 12 30 BC         [24]  882 	lcall	_spi_control_write
      0021FC D0 02            [24]  883 	pop	ar2
      0021FE D0 03            [24]  884 	pop	ar3
      002200 D0 04            [24]  885 	pop	ar4
      002202 D0 05            [24]  886 	pop	ar5
      002204 D0 06            [24]  887 	pop	ar6
      002206 D0 07            [24]  888 	pop	ar7
                                    889 ;	Eth.c:77: spi_control_write(0, 0x0A, (uint8_t)(end_address & 0xFF)); // ERXNDL (low byte)
      002208 8C 01            [24]  890 	mov	ar1,r4
      00220A 90 03 63         [24]  891 	mov	dptr,#_spi_control_write_PARM_2
      00220D 74 0A            [12]  892 	mov	a,#0x0a
      00220F F0               [24]  893 	movx	@dptr,a
      002210 90 03 64         [24]  894 	mov	dptr,#_spi_control_write_PARM_3
      002213 E9               [12]  895 	mov	a,r1
      002214 F0               [24]  896 	movx	@dptr,a
      002215 75 82 00         [24]  897 	mov	dpl, #0x00
      002218 C0 07            [24]  898 	push	ar7
      00221A C0 06            [24]  899 	push	ar6
      00221C C0 05            [24]  900 	push	ar5
      00221E C0 04            [24]  901 	push	ar4
      002220 C0 03            [24]  902 	push	ar3
      002222 C0 02            [24]  903 	push	ar2
      002224 12 30 BC         [24]  904 	lcall	_spi_control_write
      002227 D0 02            [24]  905 	pop	ar2
      002229 D0 03            [24]  906 	pop	ar3
      00222B D0 04            [24]  907 	pop	ar4
      00222D D0 05            [24]  908 	pop	ar5
      00222F D0 06            [24]  909 	pop	ar6
      002231 D0 07            [24]  910 	pop	ar7
                                    911 ;	Eth.c:78: spi_control_write(0, 0x0B, (uint8_t)((end_address >> 8) & 0xFF)); // ERXNDH (high byte)
      002233 8D 01            [24]  912 	mov	ar1,r5
      002235 90 03 63         [24]  913 	mov	dptr,#_spi_control_write_PARM_2
      002238 74 0B            [12]  914 	mov	a,#0x0b
      00223A F0               [24]  915 	movx	@dptr,a
      00223B 90 03 64         [24]  916 	mov	dptr,#_spi_control_write_PARM_3
      00223E E9               [12]  917 	mov	a,r1
      00223F F0               [24]  918 	movx	@dptr,a
      002240 75 82 00         [24]  919 	mov	dpl, #0x00
      002243 C0 07            [24]  920 	push	ar7
      002245 C0 06            [24]  921 	push	ar6
      002247 C0 05            [24]  922 	push	ar5
      002249 C0 04            [24]  923 	push	ar4
      00224B C0 03            [24]  924 	push	ar3
      00224D C0 02            [24]  925 	push	ar2
      00224F 12 30 BC         [24]  926 	lcall	_spi_control_write
      002252 D0 02            [24]  927 	pop	ar2
      002254 D0 03            [24]  928 	pop	ar3
      002256 D0 04            [24]  929 	pop	ar4
      002258 D0 05            [24]  930 	pop	ar5
      00225A D0 06            [24]  931 	pop	ar6
      00225C D0 07            [24]  932 	pop	ar7
                                    933 ;	Eth.c:81: spi_control_write(0, 0x0C, (uint8_t)(start_address & 0xFF)); // ERXRDPTL (low byte)
      00225E 90 03 63         [24]  934 	mov	dptr,#_spi_control_write_PARM_2
      002261 74 0C            [12]  935 	mov	a,#0x0c
      002263 F0               [24]  936 	movx	@dptr,a
      002264 90 03 64         [24]  937 	mov	dptr,#_spi_control_write_PARM_3
      002267 EB               [12]  938 	mov	a,r3
      002268 F0               [24]  939 	movx	@dptr,a
      002269 75 82 00         [24]  940 	mov	dpl, #0x00
      00226C C0 07            [24]  941 	push	ar7
      00226E C0 06            [24]  942 	push	ar6
      002270 C0 05            [24]  943 	push	ar5
      002272 C0 04            [24]  944 	push	ar4
      002274 C0 02            [24]  945 	push	ar2
      002276 12 30 BC         [24]  946 	lcall	_spi_control_write
      002279 D0 02            [24]  947 	pop	ar2
      00227B D0 04            [24]  948 	pop	ar4
      00227D D0 05            [24]  949 	pop	ar5
      00227F D0 06            [24]  950 	pop	ar6
      002281 D0 07            [24]  951 	pop	ar7
                                    952 ;	Eth.c:82: spi_control_write(0, 0x0D, (uint8_t)((start_address >> 8) & 0xFF)); // ERXRDPTH (high byte)
      002283 90 03 63         [24]  953 	mov	dptr,#_spi_control_write_PARM_2
      002286 74 0D            [12]  954 	mov	a,#0x0d
      002288 F0               [24]  955 	movx	@dptr,a
      002289 90 03 64         [24]  956 	mov	dptr,#_spi_control_write_PARM_3
      00228C EA               [12]  957 	mov	a,r2
      00228D F0               [24]  958 	movx	@dptr,a
      00228E 75 82 00         [24]  959 	mov	dpl, #0x00
      002291 C0 07            [24]  960 	push	ar7
      002293 C0 06            [24]  961 	push	ar6
      002295 C0 05            [24]  962 	push	ar5
      002297 C0 04            [24]  963 	push	ar4
      002299 12 30 BC         [24]  964 	lcall	_spi_control_write
      00229C D0 04            [24]  965 	pop	ar4
      00229E D0 05            [24]  966 	pop	ar5
      0022A0 D0 06            [24]  967 	pop	ar6
      0022A2 D0 07            [24]  968 	pop	ar7
                                    969 ;	Eth.c:90: printf("RX buffer initialized: 0x%04X to 0x%04X.\n", start_address, end_address);
      0022A4 C0 04            [24]  970 	push	ar4
      0022A6 C0 05            [24]  971 	push	ar5
      0022A8 C0 06            [24]  972 	push	ar6
      0022AA C0 07            [24]  973 	push	ar7
      0022AC 74 3D            [12]  974 	mov	a,#___str_1
      0022AE C0 E0            [24]  975 	push	acc
      0022B0 74 45            [12]  976 	mov	a,#(___str_1 >> 8)
      0022B2 C0 E0            [24]  977 	push	acc
      0022B4 74 80            [12]  978 	mov	a,#0x80
      0022B6 C0 E0            [24]  979 	push	acc
      0022B8 12 3A E1         [24]  980 	lcall	_printf
      0022BB E5 81            [12]  981 	mov	a,sp
      0022BD 24 F9            [12]  982 	add	a,#0xf9
      0022BF F5 81            [12]  983 	mov	sp,a
                                    984 ;	Eth.c:91: }
      0022C1 22               [24]  985 	ret
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    988 ;------------------------------------------------------------
                                    989 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    990 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_80'
                                    991 ;------------------------------------------------------------
                                    992 ;	Eth.c:93: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    993 ;	-----------------------------------------
                                    994 ;	 function enc28j60_set_transmit_pointers
                                    995 ;	-----------------------------------------
      0022C2                        996 _enc28j60_set_transmit_pointers:
      0022C2 AF 83            [24]  997 	mov	r7,dph
      0022C4 E5 82            [12]  998 	mov	a,dpl
      0022C6 90 01 0C         [24]  999 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_80
      0022C9 F0               [24] 1000 	movx	@dptr,a
      0022CA EF               [12] 1001 	mov	a,r7
      0022CB A3               [24] 1002 	inc	dptr
      0022CC F0               [24] 1003 	movx	@dptr,a
                                   1004 ;	Eth.c:96: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      0022CD 90 01 0C         [24] 1005 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_80
      0022D0 E0               [24] 1006 	movx	a,@dptr
      0022D1 FE               [12] 1007 	mov	r6,a
      0022D2 A3               [24] 1008 	inc	dptr
      0022D3 E0               [24] 1009 	movx	a,@dptr
      0022D4 FF               [12] 1010 	mov	r7,a
      0022D5 8E 05            [24] 1011 	mov	ar5,r6
      0022D7 90 03 63         [24] 1012 	mov	dptr,#_spi_control_write_PARM_2
      0022DA 74 04            [12] 1013 	mov	a,#0x04
      0022DC F0               [24] 1014 	movx	@dptr,a
      0022DD 90 03 64         [24] 1015 	mov	dptr,#_spi_control_write_PARM_3
      0022E0 ED               [12] 1016 	mov	a,r5
      0022E1 F0               [24] 1017 	movx	@dptr,a
      0022E2 75 82 00         [24] 1018 	mov	dpl, #0x00
      0022E5 C0 07            [24] 1019 	push	ar7
      0022E7 C0 06            [24] 1020 	push	ar6
      0022E9 12 30 BC         [24] 1021 	lcall	_spi_control_write
      0022EC D0 06            [24] 1022 	pop	ar6
      0022EE D0 07            [24] 1023 	pop	ar7
                                   1024 ;	Eth.c:97: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      0022F0 8F 06            [24] 1025 	mov	ar6,r7
      0022F2 90 03 63         [24] 1026 	mov	dptr,#_spi_control_write_PARM_2
      0022F5 74 05            [12] 1027 	mov	a,#0x05
      0022F7 F0               [24] 1028 	movx	@dptr,a
      0022F8 90 03 64         [24] 1029 	mov	dptr,#_spi_control_write_PARM_3
      0022FB EE               [12] 1030 	mov	a,r6
      0022FC F0               [24] 1031 	movx	@dptr,a
      0022FD 75 82 00         [24] 1032 	mov	dpl, #0x00
      002300 12 30 BC         [24] 1033 	lcall	_spi_control_write
                                   1034 ;	Eth.c:100: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      002303 90 01 0A         [24] 1035 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002306 E0               [24] 1036 	movx	a,@dptr
      002307 FE               [12] 1037 	mov	r6,a
      002308 A3               [24] 1038 	inc	dptr
      002309 E0               [24] 1039 	movx	a,@dptr
      00230A FF               [12] 1040 	mov	r7,a
      00230B 8E 05            [24] 1041 	mov	ar5,r6
      00230D 90 03 63         [24] 1042 	mov	dptr,#_spi_control_write_PARM_2
      002310 74 06            [12] 1043 	mov	a,#0x06
      002312 F0               [24] 1044 	movx	@dptr,a
      002313 90 03 64         [24] 1045 	mov	dptr,#_spi_control_write_PARM_3
      002316 ED               [12] 1046 	mov	a,r5
      002317 F0               [24] 1047 	movx	@dptr,a
      002318 75 82 00         [24] 1048 	mov	dpl, #0x00
      00231B C0 07            [24] 1049 	push	ar7
      00231D C0 06            [24] 1050 	push	ar6
      00231F 12 30 BC         [24] 1051 	lcall	_spi_control_write
      002322 D0 06            [24] 1052 	pop	ar6
      002324 D0 07            [24] 1053 	pop	ar7
                                   1054 ;	Eth.c:101: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      002326 8F 06            [24] 1055 	mov	ar6,r7
      002328 90 03 63         [24] 1056 	mov	dptr,#_spi_control_write_PARM_2
      00232B 74 07            [12] 1057 	mov	a,#0x07
      00232D F0               [24] 1058 	movx	@dptr,a
      00232E 90 03 64         [24] 1059 	mov	dptr,#_spi_control_write_PARM_3
      002331 EE               [12] 1060 	mov	a,r6
      002332 F0               [24] 1061 	movx	@dptr,a
      002333 75 82 00         [24] 1062 	mov	dpl, #0x00
                                   1063 ;	Eth.c:102: }
      002336 02 30 BC         [24] 1064 	ljmp	_spi_control_write
                                   1065 ;------------------------------------------------------------
                                   1066 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                   1067 ;------------------------------------------------------------
                                   1068 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_82'
                                   1069 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_83'
                                   1070 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_84'
                                   1071 ;------------------------------------------------------------
                                   1072 ;	Eth.c:104: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function wait_for_transmission_complete
                                   1075 ;	-----------------------------------------
      002339                       1076 _wait_for_transmission_complete:
      002339 AF 83            [24] 1077 	mov	r7,dph
      00233B E5 82            [12] 1078 	mov	a,dpl
      00233D 90 01 0E         [24] 1079 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_82
      002340 F0               [24] 1080 	movx	@dptr,a
      002341 EF               [12] 1081 	mov	a,r7
      002342 A3               [24] 1082 	inc	dptr
      002343 F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	Eth.c:108: while (elapsed < timeout_ms) {
      002344 90 01 0E         [24] 1085 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_82
      002347 E0               [24] 1086 	movx	a,@dptr
      002348 FE               [12] 1087 	mov	r6,a
      002349 A3               [24] 1088 	inc	dptr
      00234A E0               [24] 1089 	movx	a,@dptr
      00234B FF               [12] 1090 	mov	r7,a
      00234C 7C 00            [12] 1091 	mov	r4,#0x00
      00234E 7D 00            [12] 1092 	mov	r5,#0x00
      002350                       1093 00103$:
      002350 C3               [12] 1094 	clr	c
      002351 EC               [12] 1095 	mov	a,r4
      002352 9E               [12] 1096 	subb	a,r6
      002353 ED               [12] 1097 	mov	a,r5
      002354 9F               [12] 1098 	subb	a,r7
      002355 50 41            [24] 1099 	jnc	00105$
                                   1100 ;	Eth.c:109: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      002357 90 03 6C         [24] 1101 	mov	dptr,#_mac_spi_read_PARM_2
      00235A E4               [12] 1102 	clr	a
      00235B F0               [24] 1103 	movx	@dptr,a
      00235C 75 82 1F         [24] 1104 	mov	dpl, #0x1f
      00235F C0 07            [24] 1105 	push	ar7
      002361 C0 06            [24] 1106 	push	ar6
      002363 C0 05            [24] 1107 	push	ar5
      002365 C0 04            [24] 1108 	push	ar4
      002367 12 32 32         [24] 1109 	lcall	_mac_spi_read
      00236A E5 82            [12] 1110 	mov	a, dpl
      00236C D0 04            [24] 1111 	pop	ar4
      00236E D0 05            [24] 1112 	pop	ar5
      002370 D0 06            [24] 1113 	pop	ar6
      002372 D0 07            [24] 1114 	pop	ar7
                                   1115 ;	Eth.c:110: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      002374 20 E3 04         [24] 1116 	jb	acc.3,00102$
                                   1117 ;	Eth.c:111: return true;  // Transmission completed
      002377 75 82 01         [24] 1118 	mov	dpl, #0x01
      00237A 22               [24] 1119 	ret
      00237B                       1120 00102$:
                                   1121 ;	Eth.c:114: delay_ms(1);  // Wait 1 ms
      00237B 90 00 01         [24] 1122 	mov	dptr,#0x0001
      00237E C0 07            [24] 1123 	push	ar7
      002380 C0 06            [24] 1124 	push	ar6
      002382 C0 05            [24] 1125 	push	ar5
      002384 C0 04            [24] 1126 	push	ar4
      002386 12 20 CF         [24] 1127 	lcall	_delay_ms
      002389 D0 04            [24] 1128 	pop	ar4
      00238B D0 05            [24] 1129 	pop	ar5
      00238D D0 06            [24] 1130 	pop	ar6
      00238F D0 07            [24] 1131 	pop	ar7
                                   1132 ;	Eth.c:115: elapsed++;
      002391 0C               [12] 1133 	inc	r4
      002392 BC 00 BB         [24] 1134 	cjne	r4,#0x00,00103$
      002395 0D               [12] 1135 	inc	r5
      002396 80 B8            [24] 1136 	sjmp	00103$
      002398                       1137 00105$:
                                   1138 ;	Eth.c:118: return false;  // Timed out
      002398 75 82 00         [24] 1139 	mov	dpl, #0x00
                                   1140 ;	Eth.c:119: }
      00239B 22               [24] 1141 	ret
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                   1144 ;------------------------------------------------------------
                                   1145 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_86'
                                   1146 ;------------------------------------------------------------
                                   1147 ;	Eth.c:121: bool enc28j60_transmission_successful()
                                   1148 ;	-----------------------------------------
                                   1149 ;	 function enc28j60_transmission_successful
                                   1150 ;	-----------------------------------------
      00239C                       1151 _enc28j60_transmission_successful:
                                   1152 ;	Eth.c:123: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      00239C 90 03 6C         [24] 1153 	mov	dptr,#_mac_spi_read_PARM_2
      00239F E4               [12] 1154 	clr	a
      0023A0 F0               [24] 1155 	movx	@dptr,a
      0023A1 75 82 1D         [24] 1156 	mov	dpl, #0x1d
      0023A4 12 32 32         [24] 1157 	lcall	_mac_spi_read
                                   1158 ;	Eth.c:124: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      0023A7 E5 82            [12] 1159 	mov	a,dpl
      0023A9 03               [12] 1160 	rr	a
      0023AA 54 01            [12] 1161 	anl	a,#0x01
      0023AC B4 01 00         [24] 1162 	cjne	a,#0x01,00103$
      0023AF                       1163 00103$:
      0023AF 92 00            [24] 1164 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      0023B1 E4               [12] 1165 	clr	a
      0023B2 33               [12] 1166 	rlc	a
      0023B3 F5 82            [12] 1167 	mov	dpl, a
                                   1168 ;	Eth.c:125: }
      0023B5 22               [24] 1169 	ret
                                   1170 ;------------------------------------------------------------
                                   1171 ;Allocation info for local variables in function 'RX_disable'
                                   1172 ;------------------------------------------------------------
                                   1173 ;econ1_value               Allocated with name '_RX_disable_econ1_value_10000_88'
                                   1174 ;------------------------------------------------------------
                                   1175 ;	Eth.c:126: void RX_disable(void)
                                   1176 ;	-----------------------------------------
                                   1177 ;	 function RX_disable
                                   1178 ;	-----------------------------------------
      0023B6                       1179 _RX_disable:
                                   1180 ;	Eth.c:128: uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1
      0023B6 90 03 6C         [24] 1181 	mov	dptr,#_mac_spi_read_PARM_2
      0023B9 E4               [12] 1182 	clr	a
      0023BA F0               [24] 1183 	movx	@dptr,a
      0023BB 75 82 1F         [24] 1184 	mov	dpl, #0x1f
      0023BE 12 32 32         [24] 1185 	lcall	_mac_spi_read
      0023C1 E5 82            [12] 1186 	mov	a, dpl
                                   1187 ;	Eth.c:131: econ1_value &= ~(0x04);
      0023C3 54 FB            [12] 1188 	anl	a,#0xfb
      0023C5 FF               [12] 1189 	mov	r7,a
                                   1190 ;	Eth.c:134: spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
      0023C6 90 03 63         [24] 1191 	mov	dptr,#_spi_control_write_PARM_2
      0023C9 74 1F            [12] 1192 	mov	a,#0x1f
      0023CB F0               [24] 1193 	movx	@dptr,a
      0023CC 90 03 64         [24] 1194 	mov	dptr,#_spi_control_write_PARM_3
      0023CF EF               [12] 1195 	mov	a,r7
      0023D0 F0               [24] 1196 	movx	@dptr,a
      0023D1 75 82 00         [24] 1197 	mov	dpl, #0x00
                                   1198 ;	Eth.c:135: }
      0023D4 02 30 BC         [24] 1199 	ljmp	_spi_control_write
                                   1200 ;------------------------------------------------------------
                                   1201 ;Allocation info for local variables in function 'RX_enable'
                                   1202 ;------------------------------------------------------------
                                   1203 ;econ1_value               Allocated with name '_RX_enable_econ1_value_10000_90'
                                   1204 ;------------------------------------------------------------
                                   1205 ;	Eth.c:137: void RX_enable(void)
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function RX_enable
                                   1208 ;	-----------------------------------------
      0023D7                       1209 _RX_enable:
                                   1210 ;	Eth.c:139: uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1
      0023D7 90 03 6C         [24] 1211 	mov	dptr,#_mac_spi_read_PARM_2
      0023DA E4               [12] 1212 	clr	a
      0023DB F0               [24] 1213 	movx	@dptr,a
      0023DC 75 82 1F         [24] 1214 	mov	dpl, #0x1f
      0023DF 12 32 32         [24] 1215 	lcall	_mac_spi_read
      0023E2 E5 82            [12] 1216 	mov	a, dpl
                                   1217 ;	Eth.c:142: econ1_value |= 0x04;
      0023E4 44 04            [12] 1218 	orl	a,#0x04
      0023E6 FF               [12] 1219 	mov	r7,a
                                   1220 ;	Eth.c:145: spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
      0023E7 90 03 63         [24] 1221 	mov	dptr,#_spi_control_write_PARM_2
      0023EA 74 1F            [12] 1222 	mov	a,#0x1f
      0023EC F0               [24] 1223 	movx	@dptr,a
      0023ED 90 03 64         [24] 1224 	mov	dptr,#_spi_control_write_PARM_3
      0023F0 EF               [12] 1225 	mov	a,r7
      0023F1 F0               [24] 1226 	movx	@dptr,a
      0023F2 75 82 00         [24] 1227 	mov	dpl, #0x00
                                   1228 ;	Eth.c:146: }
      0023F5 02 30 BC         [24] 1229 	ljmp	_spi_control_write
                                   1230 ;------------------------------------------------------------
                                   1231 ;Allocation info for local variables in function 'send_arp_request'
                                   1232 ;------------------------------------------------------------
                                   1233 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_92'
                                   1234 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_92'
                                   1235 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_92'
                                   1236 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_92'
                                   1237 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_92'
                                   1238 ;i                         Allocated with name '_send_arp_request_i_20000_93'
                                   1239 ;i                         Allocated with name '_send_arp_request_i_20000_95'
                                   1240 ;i                         Allocated with name '_send_arp_request_i_20000_97'
                                   1241 ;i                         Allocated with name '_send_arp_request_i_20000_99'
                                   1242 ;i                         Allocated with name '_send_arp_request_i_20000_101'
                                   1243 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_103'
                                   1244 ;start_address             Allocated with name '_send_arp_request_start_address_10001_103'
                                   1245 ;end_address               Allocated with name '_send_arp_request_end_address_10002_105'
                                   1246 ;------------------------------------------------------------
                                   1247 ;	Eth.c:148: void send_arp_request(void)
                                   1248 ;	-----------------------------------------
                                   1249 ;	 function send_arp_request
                                   1250 ;	-----------------------------------------
      0023F8                       1251 _send_arp_request:
                                   1252 ;	Eth.c:152: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      0023F8 90 01 10         [24] 1253 	mov	dptr,#_send_arp_request_source_mac_10000_92
      0023FB 74 02            [12] 1254 	mov	a,#0x02
      0023FD F0               [24] 1255 	movx	@dptr,a
      0023FE 90 01 11         [24] 1256 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0001)
      002401 74 11            [12] 1257 	mov	a,#0x11
      002403 F0               [24] 1258 	movx	@dptr,a
      002404 90 01 12         [24] 1259 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0002)
      002407 23               [12] 1260 	rl	a
      002408 F0               [24] 1261 	movx	@dptr,a
      002409 90 01 13         [24] 1262 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0003)
      00240C 74 33            [12] 1263 	mov	a,#0x33
      00240E F0               [24] 1264 	movx	@dptr,a
      00240F 90 01 14         [24] 1265 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0004)
      002412 74 44            [12] 1266 	mov	a,#0x44
      002414 F0               [24] 1267 	movx	@dptr,a
      002415 90 01 15         [24] 1268 	mov	dptr,#(_send_arp_request_source_mac_10000_92 + 0x0005)
      002418 74 55            [12] 1269 	mov	a,#0x55
      00241A F0               [24] 1270 	movx	@dptr,a
                                   1271 ;	Eth.c:153: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      00241B 90 01 16         [24] 1272 	mov	dptr,#_send_arp_request_dest_mac_10000_92
      00241E 74 F8            [12] 1273 	mov	a,#0xf8
      002420 F0               [24] 1274 	movx	@dptr,a
      002421 90 01 17         [24] 1275 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0001)
      002424 74 75            [12] 1276 	mov	a,#0x75
      002426 F0               [24] 1277 	movx	@dptr,a
      002427 90 01 18         [24] 1278 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0002)
      00242A 74 A4            [12] 1279 	mov	a,#0xa4
      00242C F0               [24] 1280 	movx	@dptr,a
      00242D 90 01 19         [24] 1281 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0003)
      002430 74 8C            [12] 1282 	mov	a,#0x8c
      002432 F0               [24] 1283 	movx	@dptr,a
      002433 90 01 1A         [24] 1284 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0004)
      002436 74 41            [12] 1285 	mov	a,#0x41
      002438 F0               [24] 1286 	movx	@dptr,a
      002439 90 01 1B         [24] 1287 	mov	dptr,#(_send_arp_request_dest_mac_10000_92 + 0x0005)
      00243C 74 31            [12] 1288 	mov	a,#0x31
      00243E F0               [24] 1289 	movx	@dptr,a
                                   1290 ;	Eth.c:154: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      00243F 90 01 1C         [24] 1291 	mov	dptr,#_send_arp_request_source_ip_10000_92
      002442 74 C0            [12] 1292 	mov	a,#0xc0
      002444 F0               [24] 1293 	movx	@dptr,a
      002445 90 01 1D         [24] 1294 	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0001)
      002448 74 A8            [12] 1295 	mov	a,#0xa8
      00244A F0               [24] 1296 	movx	@dptr,a
      00244B 90 01 1E         [24] 1297 	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0002)
      00244E 74 01            [12] 1298 	mov	a,#0x01
      002450 F0               [24] 1299 	movx	@dptr,a
      002451 90 01 1F         [24] 1300 	mov	dptr,#(_send_arp_request_source_ip_10000_92 + 0x0003)
      002454 74 64            [12] 1301 	mov	a,#0x64
      002456 F0               [24] 1302 	movx	@dptr,a
                                   1303 ;	Eth.c:155: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      002457 90 01 20         [24] 1304 	mov	dptr,#_send_arp_request_target_ip_10000_92
      00245A 74 C0            [12] 1305 	mov	a,#0xc0
      00245C F0               [24] 1306 	movx	@dptr,a
      00245D 90 01 21         [24] 1307 	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0001)
      002460 74 A8            [12] 1308 	mov	a,#0xa8
      002462 F0               [24] 1309 	movx	@dptr,a
      002463 90 01 22         [24] 1310 	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0002)
      002466 74 01            [12] 1311 	mov	a,#0x01
      002468 F0               [24] 1312 	movx	@dptr,a
      002469 90 01 23         [24] 1313 	mov	dptr,#(_send_arp_request_target_ip_10000_92 + 0x0003)
      00246C F0               [24] 1314 	movx	@dptr,a
                                   1315 ;	Eth.c:159: arp_packet[0] = 0x0E;
      00246D 90 01 24         [24] 1316 	mov	dptr,#_send_arp_request_arp_packet_10000_92
      002470 74 0E            [12] 1317 	mov	a,#0x0e
      002472 F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	Eth.c:163: set_mac_address(source_mac);
      002473 90 01 10         [24] 1320 	mov	dptr,#_send_arp_request_source_mac_10000_92
      002476 75 F0 00         [24] 1321 	mov	b, #0x00
      002479 12 20 65         [24] 1322 	lcall	_set_mac_address
                                   1323 ;	Eth.c:166: for (int i = 0; i < 6; i++)
      00247C 7E 00            [12] 1324 	mov	r6,#0x00
      00247E 7F 00            [12] 1325 	mov	r7,#0x00
      002480                       1326 00115$:
      002480 C3               [12] 1327 	clr	c
      002481 EE               [12] 1328 	mov	a,r6
      002482 94 06            [12] 1329 	subb	a,#0x06
      002484 EF               [12] 1330 	mov	a,r7
      002485 64 80            [12] 1331 	xrl	a,#0x80
      002487 94 80            [12] 1332 	subb	a,#0x80
      002489 50 48            [24] 1333 	jnc	00101$
                                   1334 ;	Eth.c:168: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      00248B 8E 05            [24] 1335 	mov	ar5,r6
      00248D ED               [12] 1336 	mov	a,r5
      00248E 04               [12] 1337 	inc	a
      00248F FC               [12] 1338 	mov	r4,a
      002490 33               [12] 1339 	rlc	a
      002491 95 E0            [12] 1340 	subb	a,acc
      002493 FB               [12] 1341 	mov	r3,a
      002494 EC               [12] 1342 	mov	a,r4
      002495 24 24            [12] 1343 	add	a, #_send_arp_request_arp_packet_10000_92
      002497 FC               [12] 1344 	mov	r4,a
      002498 EB               [12] 1345 	mov	a,r3
      002499 34 01            [12] 1346 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      00249B FB               [12] 1347 	mov	r3,a
      00249C EE               [12] 1348 	mov	a,r6
      00249D 24 16            [12] 1349 	add	a, #_send_arp_request_dest_mac_10000_92
      00249F F5 82            [12] 1350 	mov	dpl,a
      0024A1 EF               [12] 1351 	mov	a,r7
      0024A2 34 01            [12] 1352 	addc	a, #(_send_arp_request_dest_mac_10000_92 >> 8)
      0024A4 F5 83            [12] 1353 	mov	dph,a
      0024A6 E0               [24] 1354 	movx	a,@dptr
      0024A7 8C 82            [24] 1355 	mov	dpl,r4
      0024A9 8B 83            [24] 1356 	mov	dph,r3
      0024AB F0               [24] 1357 	movx	@dptr,a
                                   1358 ;	Eth.c:169: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      0024AC 74 07            [12] 1359 	mov	a,#0x07
      0024AE 2D               [12] 1360 	add	a, r5
      0024AF FD               [12] 1361 	mov	r5,a
      0024B0 33               [12] 1362 	rlc	a
      0024B1 95 E0            [12] 1363 	subb	a,acc
      0024B3 FC               [12] 1364 	mov	r4,a
      0024B4 ED               [12] 1365 	mov	a,r5
      0024B5 24 24            [12] 1366 	add	a, #_send_arp_request_arp_packet_10000_92
      0024B7 FD               [12] 1367 	mov	r5,a
      0024B8 EC               [12] 1368 	mov	a,r4
      0024B9 34 01            [12] 1369 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      0024BB FC               [12] 1370 	mov	r4,a
      0024BC EE               [12] 1371 	mov	a,r6
      0024BD 24 10            [12] 1372 	add	a, #_send_arp_request_source_mac_10000_92
      0024BF F5 82            [12] 1373 	mov	dpl,a
      0024C1 EF               [12] 1374 	mov	a,r7
      0024C2 34 01            [12] 1375 	addc	a, #(_send_arp_request_source_mac_10000_92 >> 8)
      0024C4 F5 83            [12] 1376 	mov	dph,a
      0024C6 E0               [24] 1377 	movx	a,@dptr
      0024C7 8D 82            [24] 1378 	mov	dpl,r5
      0024C9 8C 83            [24] 1379 	mov	dph,r4
      0024CB F0               [24] 1380 	movx	@dptr,a
                                   1381 ;	Eth.c:166: for (int i = 0; i < 6; i++)
      0024CC 0E               [12] 1382 	inc	r6
      0024CD BE 00 B0         [24] 1383 	cjne	r6,#0x00,00115$
      0024D0 0F               [12] 1384 	inc	r7
      0024D1 80 AD            [24] 1385 	sjmp	00115$
      0024D3                       1386 00101$:
                                   1387 ;	Eth.c:173: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      0024D3 90 01 31         [24] 1388 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000d)
      0024D6 74 08            [12] 1389 	mov	a,#0x08
      0024D8 F0               [24] 1390 	movx	@dptr,a
                                   1391 ;	Eth.c:174: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      0024D9 90 01 32         [24] 1392 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000e)
      0024DC 74 06            [12] 1393 	mov	a,#0x06
      0024DE F0               [24] 1394 	movx	@dptr,a
                                   1395 ;	Eth.c:178: arp_packet[15] = 0x00;
      0024DF 90 01 33         [24] 1396 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x000f)
      0024E2 E4               [12] 1397 	clr	a
      0024E3 F0               [24] 1398 	movx	@dptr,a
                                   1399 ;	Eth.c:179: arp_packet[16] = 0x01;
      0024E4 90 01 34         [24] 1400 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0010)
      0024E7 04               [12] 1401 	inc	a
      0024E8 F0               [24] 1402 	movx	@dptr,a
                                   1403 ;	Eth.c:182: arp_packet[17] = 0x08;
      0024E9 90 01 35         [24] 1404 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0011)
      0024EC 74 08            [12] 1405 	mov	a,#0x08
      0024EE F0               [24] 1406 	movx	@dptr,a
                                   1407 ;	Eth.c:183: arp_packet[18] = 0x00;
      0024EF 90 01 36         [24] 1408 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0012)
      0024F2 E4               [12] 1409 	clr	a
      0024F3 F0               [24] 1410 	movx	@dptr,a
                                   1411 ;	Eth.c:186: arp_packet[19] = 0x06;
      0024F4 90 01 37         [24] 1412 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0013)
      0024F7 74 06            [12] 1413 	mov	a,#0x06
      0024F9 F0               [24] 1414 	movx	@dptr,a
                                   1415 ;	Eth.c:189: arp_packet[20] = 0x04;
      0024FA 90 01 38         [24] 1416 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0014)
      0024FD 74 04            [12] 1417 	mov	a,#0x04
      0024FF F0               [24] 1418 	movx	@dptr,a
                                   1419 ;	Eth.c:192: arp_packet[21] = 0x00;
      002500 90 01 39         [24] 1420 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0015)
      002503 E4               [12] 1421 	clr	a
      002504 F0               [24] 1422 	movx	@dptr,a
                                   1423 ;	Eth.c:193: arp_packet[22] = 0x01;
      002505 90 01 3A         [24] 1424 	mov	dptr,#(_send_arp_request_arp_packet_10000_92 + 0x0016)
      002508 04               [12] 1425 	inc	a
      002509 F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	Eth.c:196: for (int i = 0; i < 6; i++) {
      00250A 7E 00            [12] 1428 	mov	r6,#0x00
      00250C 7F 00            [12] 1429 	mov	r7,#0x00
      00250E                       1430 00118$:
      00250E C3               [12] 1431 	clr	c
      00250F EE               [12] 1432 	mov	a,r6
      002510 94 06            [12] 1433 	subb	a,#0x06
      002512 EF               [12] 1434 	mov	a,r7
      002513 64 80            [12] 1435 	xrl	a,#0x80
      002515 94 80            [12] 1436 	subb	a,#0x80
      002517 50 29            [24] 1437 	jnc	00102$
                                   1438 ;	Eth.c:197: arp_packet[23 + i] = source_mac[i];
      002519 8E 05            [24] 1439 	mov	ar5,r6
      00251B 74 17            [12] 1440 	mov	a,#0x17
      00251D 2D               [12] 1441 	add	a, r5
      00251E FD               [12] 1442 	mov	r5,a
      00251F 33               [12] 1443 	rlc	a
      002520 95 E0            [12] 1444 	subb	a,acc
      002522 FC               [12] 1445 	mov	r4,a
      002523 ED               [12] 1446 	mov	a,r5
      002524 24 24            [12] 1447 	add	a, #_send_arp_request_arp_packet_10000_92
      002526 FD               [12] 1448 	mov	r5,a
      002527 EC               [12] 1449 	mov	a,r4
      002528 34 01            [12] 1450 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      00252A FC               [12] 1451 	mov	r4,a
      00252B EE               [12] 1452 	mov	a,r6
      00252C 24 10            [12] 1453 	add	a, #_send_arp_request_source_mac_10000_92
      00252E F5 82            [12] 1454 	mov	dpl,a
      002530 EF               [12] 1455 	mov	a,r7
      002531 34 01            [12] 1456 	addc	a, #(_send_arp_request_source_mac_10000_92 >> 8)
      002533 F5 83            [12] 1457 	mov	dph,a
      002535 E0               [24] 1458 	movx	a,@dptr
      002536 8D 82            [24] 1459 	mov	dpl,r5
      002538 8C 83            [24] 1460 	mov	dph,r4
      00253A F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	Eth.c:196: for (int i = 0; i < 6; i++) {
      00253B 0E               [12] 1463 	inc	r6
      00253C BE 00 CF         [24] 1464 	cjne	r6,#0x00,00118$
      00253F 0F               [12] 1465 	inc	r7
      002540 80 CC            [24] 1466 	sjmp	00118$
      002542                       1467 00102$:
                                   1468 ;	Eth.c:201: for (int i = 0; i < 4; i++) {
      002542 7E 00            [12] 1469 	mov	r6,#0x00
      002544 7F 00            [12] 1470 	mov	r7,#0x00
      002546                       1471 00121$:
      002546 C3               [12] 1472 	clr	c
      002547 EE               [12] 1473 	mov	a,r6
      002548 94 04            [12] 1474 	subb	a,#0x04
      00254A EF               [12] 1475 	mov	a,r7
      00254B 64 80            [12] 1476 	xrl	a,#0x80
      00254D 94 80            [12] 1477 	subb	a,#0x80
      00254F 50 29            [24] 1478 	jnc	00103$
                                   1479 ;	Eth.c:202: arp_packet[29 + i] = source_ip[i];
      002551 8E 05            [24] 1480 	mov	ar5,r6
      002553 74 1D            [12] 1481 	mov	a,#0x1d
      002555 2D               [12] 1482 	add	a, r5
      002556 FD               [12] 1483 	mov	r5,a
      002557 33               [12] 1484 	rlc	a
      002558 95 E0            [12] 1485 	subb	a,acc
      00255A FC               [12] 1486 	mov	r4,a
      00255B ED               [12] 1487 	mov	a,r5
      00255C 24 24            [12] 1488 	add	a, #_send_arp_request_arp_packet_10000_92
      00255E FD               [12] 1489 	mov	r5,a
      00255F EC               [12] 1490 	mov	a,r4
      002560 34 01            [12] 1491 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      002562 FC               [12] 1492 	mov	r4,a
      002563 EE               [12] 1493 	mov	a,r6
      002564 24 1C            [12] 1494 	add	a, #_send_arp_request_source_ip_10000_92
      002566 F5 82            [12] 1495 	mov	dpl,a
      002568 EF               [12] 1496 	mov	a,r7
      002569 34 01            [12] 1497 	addc	a, #(_send_arp_request_source_ip_10000_92 >> 8)
      00256B F5 83            [12] 1498 	mov	dph,a
      00256D E0               [24] 1499 	movx	a,@dptr
      00256E 8D 82            [24] 1500 	mov	dpl,r5
      002570 8C 83            [24] 1501 	mov	dph,r4
      002572 F0               [24] 1502 	movx	@dptr,a
                                   1503 ;	Eth.c:201: for (int i = 0; i < 4; i++) {
      002573 0E               [12] 1504 	inc	r6
      002574 BE 00 CF         [24] 1505 	cjne	r6,#0x00,00121$
      002577 0F               [12] 1506 	inc	r7
      002578 80 CC            [24] 1507 	sjmp	00121$
      00257A                       1508 00103$:
                                   1509 ;	Eth.c:206: for (int i = 0; i < 6; i++) {
      00257A 7F 00            [12] 1510 	mov	r7,#0x00
      00257C                       1511 00124$:
      00257C BF 06 00         [24] 1512 	cjne	r7,#0x06,00215$
      00257F                       1513 00215$:
      00257F 50 19            [24] 1514 	jnc	00104$
                                   1515 ;	Eth.c:207: arp_packet[33 + i] = 0x00;
      002581 8F 06            [24] 1516 	mov	ar6,r7
      002583 74 21            [12] 1517 	mov	a,#0x21
      002585 2E               [12] 1518 	add	a, r6
      002586 FE               [12] 1519 	mov	r6,a
      002587 33               [12] 1520 	rlc	a
      002588 95 E0            [12] 1521 	subb	a,acc
      00258A FD               [12] 1522 	mov	r5,a
      00258B EE               [12] 1523 	mov	a,r6
      00258C 24 24            [12] 1524 	add	a, #_send_arp_request_arp_packet_10000_92
      00258E F5 82            [12] 1525 	mov	dpl,a
      002590 ED               [12] 1526 	mov	a,r5
      002591 34 01            [12] 1527 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      002593 F5 83            [12] 1528 	mov	dph,a
      002595 E4               [12] 1529 	clr	a
      002596 F0               [24] 1530 	movx	@dptr,a
                                   1531 ;	Eth.c:206: for (int i = 0; i < 6; i++) {
      002597 0F               [12] 1532 	inc	r7
      002598 80 E2            [24] 1533 	sjmp	00124$
      00259A                       1534 00104$:
                                   1535 ;	Eth.c:211: for (int i = 0; i < 4; i++) {
      00259A 7E 00            [12] 1536 	mov	r6,#0x00
      00259C 7F 00            [12] 1537 	mov	r7,#0x00
      00259E                       1538 00127$:
      00259E C3               [12] 1539 	clr	c
      00259F EE               [12] 1540 	mov	a,r6
      0025A0 94 04            [12] 1541 	subb	a,#0x04
      0025A2 EF               [12] 1542 	mov	a,r7
      0025A3 64 80            [12] 1543 	xrl	a,#0x80
      0025A5 94 80            [12] 1544 	subb	a,#0x80
      0025A7 50 29            [24] 1545 	jnc	00105$
                                   1546 ;	Eth.c:212: arp_packet[39 + i] = target_ip[i];
      0025A9 8E 05            [24] 1547 	mov	ar5,r6
      0025AB 74 27            [12] 1548 	mov	a,#0x27
      0025AD 2D               [12] 1549 	add	a, r5
      0025AE FD               [12] 1550 	mov	r5,a
      0025AF 33               [12] 1551 	rlc	a
      0025B0 95 E0            [12] 1552 	subb	a,acc
      0025B2 FC               [12] 1553 	mov	r4,a
      0025B3 ED               [12] 1554 	mov	a,r5
      0025B4 24 24            [12] 1555 	add	a, #_send_arp_request_arp_packet_10000_92
      0025B6 FD               [12] 1556 	mov	r5,a
      0025B7 EC               [12] 1557 	mov	a,r4
      0025B8 34 01            [12] 1558 	addc	a, #(_send_arp_request_arp_packet_10000_92 >> 8)
      0025BA FC               [12] 1559 	mov	r4,a
      0025BB EE               [12] 1560 	mov	a,r6
      0025BC 24 20            [12] 1561 	add	a, #_send_arp_request_target_ip_10000_92
      0025BE F5 82            [12] 1562 	mov	dpl,a
      0025C0 EF               [12] 1563 	mov	a,r7
      0025C1 34 01            [12] 1564 	addc	a, #(_send_arp_request_target_ip_10000_92 >> 8)
      0025C3 F5 83            [12] 1565 	mov	dph,a
      0025C5 E0               [24] 1566 	movx	a,@dptr
      0025C6 8D 82            [24] 1567 	mov	dpl,r5
      0025C8 8C 83            [24] 1568 	mov	dph,r4
      0025CA F0               [24] 1569 	movx	@dptr,a
                                   1570 ;	Eth.c:211: for (int i = 0; i < 4; i++) {
      0025CB 0E               [12] 1571 	inc	r6
      0025CC BE 00 CF         [24] 1572 	cjne	r6,#0x00,00127$
      0025CF 0F               [12] 1573 	inc	r7
      0025D0 80 CC            [24] 1574 	sjmp	00127$
      0025D2                       1575 00105$:
                                   1576 ;	Eth.c:225: spi_buffer_write(frame_size, start_address, arp_packet);
      0025D2 90 03 7D         [24] 1577 	mov	dptr,#_spi_buffer_write_PARM_2
      0025D5 E4               [12] 1578 	clr	a
      0025D6 F0               [24] 1579 	movx	@dptr,a
      0025D7 74 02            [12] 1580 	mov	a,#0x02
      0025D9 A3               [24] 1581 	inc	dptr
      0025DA F0               [24] 1582 	movx	@dptr,a
      0025DB 90 03 7F         [24] 1583 	mov	dptr,#_spi_buffer_write_PARM_3
      0025DE 74 24            [12] 1584 	mov	a,#_send_arp_request_arp_packet_10000_92
      0025E0 F0               [24] 1585 	movx	@dptr,a
      0025E1 74 01            [12] 1586 	mov	a,#(_send_arp_request_arp_packet_10000_92 >> 8)
      0025E3 A3               [24] 1587 	inc	dptr
      0025E4 F0               [24] 1588 	movx	@dptr,a
      0025E5 E4               [12] 1589 	clr	a
      0025E6 A3               [24] 1590 	inc	dptr
      0025E7 F0               [24] 1591 	movx	@dptr,a
      0025E8 90 00 2C         [24] 1592 	mov	dptr,#0x002c
      0025EB 12 36 38         [24] 1593 	lcall	_spi_buffer_write
                                   1594 ;	Eth.c:228: enc28j60_set_transmit_pointers(start_address, end_address);
      0025EE 90 01 0A         [24] 1595 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0025F1 74 2B            [12] 1596 	mov	a,#0x2b
      0025F3 F0               [24] 1597 	movx	@dptr,a
      0025F4 74 02            [12] 1598 	mov	a,#0x02
      0025F6 A3               [24] 1599 	inc	dptr
      0025F7 F0               [24] 1600 	movx	@dptr,a
      0025F8 90 02 00         [24] 1601 	mov	dptr,#0x0200
      0025FB 12 22 C2         [24] 1602 	lcall	_enc28j60_set_transmit_pointers
                                   1603 ;	Eth.c:231: RX_enable();
      0025FE 12 23 D7         [24] 1604 	lcall	_RX_enable
                                   1605 ;	Eth.c:232: enc28j60_start_transmission();
      002601 12 21 50         [24] 1606 	lcall	_enc28j60_start_transmission
                                   1607 ;	Eth.c:235: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      002604 90 01 F4         [24] 1608 	mov	dptr,#0x01f4
      002607 12 23 39         [24] 1609 	lcall	_wait_for_transmission_complete
      00260A E5 82            [12] 1610 	mov	a, dpl
      00260C 60 33            [24] 1611 	jz	00112$
                                   1612 ;	Eth.c:237: if (enc28j60_transmission_successful()) {
      00260E 12 23 9C         [24] 1613 	lcall	_enc28j60_transmission_successful
      002611 E5 82            [12] 1614 	mov	a, dpl
      002613 60 16            [24] 1615 	jz	00109$
                                   1616 ;	Eth.c:238: printf("ARP request sent successfully.\n\r");
      002615 74 A2            [12] 1617 	mov	a,#___str_3
      002617 C0 E0            [24] 1618 	push	acc
      002619 74 45            [12] 1619 	mov	a,#(___str_3 >> 8)
      00261B C0 E0            [24] 1620 	push	acc
      00261D 74 80            [12] 1621 	mov	a,#0x80
      00261F C0 E0            [24] 1622 	push	acc
      002621 12 3A E1         [24] 1623 	lcall	_printf
      002624 15 81            [12] 1624 	dec	sp
      002626 15 81            [12] 1625 	dec	sp
      002628 15 81            [12] 1626 	dec	sp
      00262A 22               [24] 1627 	ret
      00262B                       1628 00109$:
                                   1629 ;	Eth.c:240: printf("ARP transmission failed. Check error flags.\n\r");
      00262B 74 C3            [12] 1630 	mov	a,#___str_4
      00262D C0 E0            [24] 1631 	push	acc
      00262F 74 45            [12] 1632 	mov	a,#(___str_4 >> 8)
      002631 C0 E0            [24] 1633 	push	acc
      002633 74 80            [12] 1634 	mov	a,#0x80
      002635 C0 E0            [24] 1635 	push	acc
      002637 12 3A E1         [24] 1636 	lcall	_printf
      00263A 15 81            [12] 1637 	dec	sp
      00263C 15 81            [12] 1638 	dec	sp
      00263E 15 81            [12] 1639 	dec	sp
      002640 22               [24] 1640 	ret
      002641                       1641 00112$:
                                   1642 ;	Eth.c:243: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      002641 74 F1            [12] 1643 	mov	a,#___str_5
      002643 C0 E0            [24] 1644 	push	acc
      002645 74 45            [12] 1645 	mov	a,#(___str_5 >> 8)
      002647 C0 E0            [24] 1646 	push	acc
      002649 74 80            [12] 1647 	mov	a,#0x80
      00264B C0 E0            [24] 1648 	push	acc
      00264D 12 3A E1         [24] 1649 	lcall	_printf
      002650 15 81            [12] 1650 	dec	sp
      002652 15 81            [12] 1651 	dec	sp
      002654 15 81            [12] 1652 	dec	sp
                                   1653 ;	Eth.c:245: }
      002656 22               [24] 1654 	ret
                                   1655 ;------------------------------------------------------------
                                   1656 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                   1657 ;------------------------------------------------------------
                                   1658 ;eir                       Allocated with name '_external_interrupt0_isr_eir_10000_111'
                                   1659 ;------------------------------------------------------------
                                   1660 ;	Eth.c:247: void external_interrupt0_isr(void) __interrupt (0)
                                   1661 ;	-----------------------------------------
                                   1662 ;	 function external_interrupt0_isr
                                   1663 ;	-----------------------------------------
      002657                       1664 _external_interrupt0_isr:
      002657 C0 21            [24] 1665 	push	bits
      002659 C0 E0            [24] 1666 	push	acc
      00265B C0 F0            [24] 1667 	push	b
      00265D C0 82            [24] 1668 	push	dpl
      00265F C0 83            [24] 1669 	push	dph
      002661 C0 07            [24] 1670 	push	(0+7)
      002663 C0 06            [24] 1671 	push	(0+6)
      002665 C0 05            [24] 1672 	push	(0+5)
      002667 C0 04            [24] 1673 	push	(0+4)
      002669 C0 03            [24] 1674 	push	(0+3)
      00266B C0 02            [24] 1675 	push	(0+2)
      00266D C0 01            [24] 1676 	push	(0+1)
      00266F C0 00            [24] 1677 	push	(0+0)
      002671 C0 D0            [24] 1678 	push	psw
      002673 75 D0 00         [24] 1679 	mov	psw,#0x00
                                   1680 ;	Eth.c:249: uint8_t eir = mac_spi_read(0x1C, 0); // Read EIR register (address 0x1C, bank 0)
      002676 90 03 6C         [24] 1681 	mov	dptr,#_mac_spi_read_PARM_2
      002679 E4               [12] 1682 	clr	a
      00267A F0               [24] 1683 	movx	@dptr,a
      00267B 75 82 1C         [24] 1684 	mov	dpl, #0x1c
      00267E 12 32 32         [24] 1685 	lcall	_mac_spi_read
                                   1686 ;	Eth.c:250: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
      002681 74 34            [12] 1687 	mov	a,#___str_6
      002683 C0 E0            [24] 1688 	push	acc
      002685 74 46            [12] 1689 	mov	a,#(___str_6 >> 8)
      002687 C0 E0            [24] 1690 	push	acc
      002689 74 80            [12] 1691 	mov	a,#0x80
      00268B C0 E0            [24] 1692 	push	acc
      00268D 12 3A E1         [24] 1693 	lcall	_printf
      002690 15 81            [12] 1694 	dec	sp
      002692 15 81            [12] 1695 	dec	sp
      002694 15 81            [12] 1696 	dec	sp
                                   1697 ;	Eth.c:254: }
      002696 D0 D0            [24] 1698 	pop	psw
      002698 D0 00            [24] 1699 	pop	(0+0)
      00269A D0 01            [24] 1700 	pop	(0+1)
      00269C D0 02            [24] 1701 	pop	(0+2)
      00269E D0 03            [24] 1702 	pop	(0+3)
      0026A0 D0 04            [24] 1703 	pop	(0+4)
      0026A2 D0 05            [24] 1704 	pop	(0+5)
      0026A4 D0 06            [24] 1705 	pop	(0+6)
      0026A6 D0 07            [24] 1706 	pop	(0+7)
      0026A8 D0 83            [24] 1707 	pop	dph
      0026AA D0 82            [24] 1708 	pop	dpl
      0026AC D0 F0            [24] 1709 	pop	b
      0026AE D0 E0            [24] 1710 	pop	acc
      0026B0 D0 21            [24] 1711 	pop	bits
      0026B2 32               [24] 1712 	reti
                                   1713 	.area CSEG    (CODE)
                                   1714 	.area CONST   (CODE)
                                   1715 	.area CONST   (CODE)
      004523                       1716 ___str_0:
      004523 49 6E 76 61 6C 69 64  1717 	.ascii "Invalid RX buffer range."
             20 52 58 20 62 75 66
             66 65 72 20 72 61 6E
             67 65 2E
      00453B 0A                    1718 	.db 0x0a
      00453C 00                    1719 	.db 0x00
                                   1720 	.area CSEG    (CODE)
                                   1721 	.area CONST   (CODE)
      00453D                       1722 ___str_1:
      00453D 52 58 20 62 75 66 66  1723 	.ascii "RX buffer initialized: 0x%04X to 0x%04X."
             65 72 20 69 6E 69 74
             69 61 6C 69 7A 65 64
             3A 20 30 78 25 30 34
             58 20 74 6F 20 30 78
             25 30 34 58 2E
      004565 0A                    1724 	.db 0x0a
      004566 00                    1725 	.db 0x00
                                   1726 	.area CSEG    (CODE)
                                   1727 	.area CONST   (CODE)
      004567                       1728 ___str_2:
      004567 0A                    1729 	.db 0x0a
      004568 49 6E 76 61 6C 69 64  1730 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      0045A0 0A                    1731 	.db 0x0a
      0045A1 00                    1732 	.db 0x00
                                   1733 	.area CSEG    (CODE)
                                   1734 	.area CONST   (CODE)
      0045A2                       1735 ___str_3:
      0045A2 41 52 50 20 72 65 71  1736 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      0045C0 0A                    1737 	.db 0x0a
      0045C1 0D                    1738 	.db 0x0d
      0045C2 00                    1739 	.db 0x00
                                   1740 	.area CSEG    (CODE)
                                   1741 	.area CONST   (CODE)
      0045C3                       1742 ___str_4:
      0045C3 41 52 50 20 74 72 61  1743 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      0045EE 0A                    1744 	.db 0x0a
      0045EF 0D                    1745 	.db 0x0d
      0045F0 00                    1746 	.db 0x00
                                   1747 	.area CSEG    (CODE)
                                   1748 	.area CONST   (CODE)
      0045F1                       1749 ___str_5:
      0045F1 54 72 61 6E 73 6D 69  1750 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      00462D 74 6C 79 2E           1751 	.ascii "tly."
      004631 0A                    1752 	.db 0x0a
      004632 0D                    1753 	.db 0x0d
      004633 00                    1754 	.db 0x00
                                   1755 	.area CSEG    (CODE)
                                   1756 	.area CONST   (CODE)
      004634                       1757 ___str_6:
      004634 49 6E 74 65 72 72 72  1758 	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
             72 72 72 72 72 75 75
             75 75 75 75 75 75 75
             70 70 70 70 70 70 70
             70 74 74 74 74 74 74
             74
      004658 0A                    1759 	.db 0x0a
      004659 0D                    1760 	.db 0x0d
      00465A 00                    1761 	.db 0x00
                                   1762 	.area CSEG    (CODE)
                                   1763 	.area XINIT   (CODE)
      004D0B                       1764 __xinit__source_mac:
      004D0B 02                    1765 	.db #0x02	; 2
      004D0C 11                    1766 	.db #0x11	; 17
      004D0D 22                    1767 	.db #0x22	; 34
      004D0E 33                    1768 	.db #0x33	; 51	'3'
      004D0F 44                    1769 	.db #0x44	; 68	'D'
      004D10 55                    1770 	.db #0x55	; 85	'U'
      004D11                       1771 __xinit__dest_mac:
      004D11 FF                    1772 	.db #0xff	; 255
      004D12 FF                    1773 	.db #0xff	; 255
      004D13 FF                    1774 	.db #0xff	; 255
      004D14 FF                    1775 	.db #0xff	; 255
      004D15 FF                    1776 	.db #0xff	; 255
      004D16 FF                    1777 	.db #0xff	; 255
      004D17                       1778 __xinit__source_ip:
      004D17 C0                    1779 	.db #0xc0	; 192
      004D18 A8                    1780 	.db #0xa8	; 168
      004D19 01                    1781 	.db #0x01	; 1
      004D1A 64                    1782 	.db #0x64	; 100	'd'
      004D1B                       1783 __xinit__target_ip:
      004D1B C0                    1784 	.db #0xc0	; 192
      004D1C A8                    1785 	.db #0xa8	; 168
      004D1D 01                    1786 	.db #0x01	; 1
      004D1E 01                    1787 	.db #0x01	; 1
                                   1788 	.area CABS    (ABS,CODE)

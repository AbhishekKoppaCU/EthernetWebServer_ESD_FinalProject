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
                                     13 	.globl _enc28j60_start_transmission
                                     14 	.globl _delay_ms
                                     15 	.globl _spi_control_write
                                     16 	.globl _eth_spi_read
                                     17 	.globl _phy_spi_write
                                     18 	.globl _spi_buffer_write
                                     19 	.globl _mac_spi_read
                                     20 	.globl _enc_reset
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
                                    231 	.globl _enc_buffer_init_PARM_2
                                    232 	.globl _enc28j60_set_transmit_pointers_PARM_2
                                    233 	.globl _enc28j60_set_transmit_pointers
                                    234 	.globl _wait_for_transmission_complete
                                    235 	.globl _send_arp_request
                                    236 	.globl _enc_buffer_init
                                    237 	.globl _enc_init
                                    238 	.globl _ENC_pkt_count
                                    239 	.globl _update_ERXRDPT
                                    240 ;--------------------------------------------------------
                                    241 ; special function registers
                                    242 ;--------------------------------------------------------
                                    243 	.area RSEG    (ABS,DATA)
      000000                        244 	.org 0x0000
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                           0000E0   296 _ACC	=	0x00e0
                           0000F0   297 _B	=	0x00f0
                           000083   298 _DPH	=	0x0083
                           000083   299 _DP0H	=	0x0083
                           000082   300 _DPL	=	0x0082
                           000082   301 _DP0L	=	0x0082
                           0000A8   302 _IE	=	0x00a8
                           0000B8   303 _IP	=	0x00b8
                           000080   304 _P0	=	0x0080
                           000090   305 _P1	=	0x0090
                           0000A0   306 _P2	=	0x00a0
                           0000B0   307 _P3	=	0x00b0
                           000087   308 _PCON	=	0x0087
                           0000D0   309 _PSW	=	0x00d0
                           000099   310 _SBUF	=	0x0099
                           000099   311 _SBUF0	=	0x0099
                           000098   312 _SCON	=	0x0098
                           000081   313 _SP	=	0x0081
                           000088   314 _TCON	=	0x0088
                           00008C   315 _TH0	=	0x008c
                           00008D   316 _TH1	=	0x008d
                           00008A   317 _TL0	=	0x008a
                           00008B   318 _TL1	=	0x008b
                           000089   319 _TMOD	=	0x0089
                                    320 ;--------------------------------------------------------
                                    321 ; special function bits
                                    322 ;--------------------------------------------------------
                                    323 	.area RSEG    (ABS,DATA)
      000000                        324 	.org 0x0000
                           0000AD   325 _ET2	=	0x00ad
                           0000BD   326 _PT2	=	0x00bd
                           0000C8   327 _T2CON_0	=	0x00c8
                           0000C9   328 _T2CON_1	=	0x00c9
                           0000CA   329 _T2CON_2	=	0x00ca
                           0000CB   330 _T2CON_3	=	0x00cb
                           0000CC   331 _T2CON_4	=	0x00cc
                           0000CD   332 _T2CON_5	=	0x00cd
                           0000CE   333 _T2CON_6	=	0x00ce
                           0000CF   334 _T2CON_7	=	0x00cf
                           0000C8   335 _CP_RL2	=	0x00c8
                           0000C9   336 _C_T2	=	0x00c9
                           0000CA   337 _TR2	=	0x00ca
                           0000CB   338 _EXEN2	=	0x00cb
                           0000CC   339 _TCLK	=	0x00cc
                           0000CD   340 _RCLK	=	0x00cd
                           0000CE   341 _EXF2	=	0x00ce
                           0000CF   342 _TF2	=	0x00cf
                           0000DF   343 _CF	=	0x00df
                           0000DE   344 _CR	=	0x00de
                           0000DC   345 _CCF4	=	0x00dc
                           0000DB   346 _CCF3	=	0x00db
                           0000DA   347 _CCF2	=	0x00da
                           0000D9   348 _CCF1	=	0x00d9
                           0000D8   349 _CCF0	=	0x00d8
                           0000AE   350 _EC	=	0x00ae
                           0000BE   351 _PPCL	=	0x00be
                           0000BD   352 _PT2L	=	0x00bd
                           0000BC   353 _PSL	=	0x00bc
                           0000BB   354 _PT1L	=	0x00bb
                           0000BA   355 _PX1L	=	0x00ba
                           0000B9   356 _PT0L	=	0x00b9
                           0000B8   357 _PX0L	=	0x00b8
                           0000C0   358 _P4_0	=	0x00c0
                           0000C1   359 _P4_1	=	0x00c1
                           0000C2   360 _P4_2	=	0x00c2
                           0000C3   361 _P4_3	=	0x00c3
                           0000C4   362 _P4_4	=	0x00c4
                           0000C5   363 _P4_5	=	0x00c5
                           0000C6   364 _P4_6	=	0x00c6
                           0000C7   365 _P4_7	=	0x00c7
                           0000E8   366 _P5_0	=	0x00e8
                           0000E9   367 _P5_1	=	0x00e9
                           0000EA   368 _P5_2	=	0x00ea
                           0000EB   369 _P5_3	=	0x00eb
                           0000EC   370 _P5_4	=	0x00ec
                           0000ED   371 _P5_5	=	0x00ed
                           0000EE   372 _P5_6	=	0x00ee
                           0000EF   373 _P5_7	=	0x00ef
                           0000F0   374 _BREG_F0	=	0x00f0
                           0000F1   375 _BREG_F1	=	0x00f1
                           0000F2   376 _BREG_F2	=	0x00f2
                           0000F3   377 _BREG_F3	=	0x00f3
                           0000F4   378 _BREG_F4	=	0x00f4
                           0000F5   379 _BREG_F5	=	0x00f5
                           0000F6   380 _BREG_F6	=	0x00f6
                           0000F7   381 _BREG_F7	=	0x00f7
                           0000A8   382 _EX0	=	0x00a8
                           0000A9   383 _ET0	=	0x00a9
                           0000AA   384 _EX1	=	0x00aa
                           0000AB   385 _ET1	=	0x00ab
                           0000AC   386 _ES	=	0x00ac
                           0000AF   387 _EA	=	0x00af
                           0000B8   388 _PX0	=	0x00b8
                           0000B9   389 _PT0	=	0x00b9
                           0000BA   390 _PX1	=	0x00ba
                           0000BB   391 _PT1	=	0x00bb
                           0000BC   392 _PS	=	0x00bc
                           000080   393 _P0_0	=	0x0080
                           000081   394 _P0_1	=	0x0081
                           000082   395 _P0_2	=	0x0082
                           000083   396 _P0_3	=	0x0083
                           000084   397 _P0_4	=	0x0084
                           000085   398 _P0_5	=	0x0085
                           000086   399 _P0_6	=	0x0086
                           000087   400 _P0_7	=	0x0087
                           000090   401 _P1_0	=	0x0090
                           000091   402 _P1_1	=	0x0091
                           000092   403 _P1_2	=	0x0092
                           000093   404 _P1_3	=	0x0093
                           000094   405 _P1_4	=	0x0094
                           000095   406 _P1_5	=	0x0095
                           000096   407 _P1_6	=	0x0096
                           000097   408 _P1_7	=	0x0097
                           0000A0   409 _P2_0	=	0x00a0
                           0000A1   410 _P2_1	=	0x00a1
                           0000A2   411 _P2_2	=	0x00a2
                           0000A3   412 _P2_3	=	0x00a3
                           0000A4   413 _P2_4	=	0x00a4
                           0000A5   414 _P2_5	=	0x00a5
                           0000A6   415 _P2_6	=	0x00a6
                           0000A7   416 _P2_7	=	0x00a7
                           0000B0   417 _P3_0	=	0x00b0
                           0000B1   418 _P3_1	=	0x00b1
                           0000B2   419 _P3_2	=	0x00b2
                           0000B3   420 _P3_3	=	0x00b3
                           0000B4   421 _P3_4	=	0x00b4
                           0000B5   422 _P3_5	=	0x00b5
                           0000B6   423 _P3_6	=	0x00b6
                           0000B7   424 _P3_7	=	0x00b7
                           0000B0   425 _RXD	=	0x00b0
                           0000B0   426 _RXD0	=	0x00b0
                           0000B1   427 _TXD	=	0x00b1
                           0000B1   428 _TXD0	=	0x00b1
                           0000B2   429 _INT0	=	0x00b2
                           0000B3   430 _INT1	=	0x00b3
                           0000B4   431 _T0	=	0x00b4
                           0000B5   432 _T1	=	0x00b5
                           0000B6   433 _WR	=	0x00b6
                           0000B7   434 _RD	=	0x00b7
                           0000D0   435 _P	=	0x00d0
                           0000D1   436 _F1	=	0x00d1
                           0000D2   437 _OV	=	0x00d2
                           0000D3   438 _RS0	=	0x00d3
                           0000D4   439 _RS1	=	0x00d4
                           0000D5   440 _F0	=	0x00d5
                           0000D6   441 _AC	=	0x00d6
                           0000D7   442 _CY	=	0x00d7
                           000098   443 _RI	=	0x0098
                           000099   444 _TI	=	0x0099
                           00009A   445 _RB8	=	0x009a
                           00009B   446 _TB8	=	0x009b
                           00009C   447 _REN	=	0x009c
                           00009D   448 _SM2	=	0x009d
                           00009E   449 _SM1	=	0x009e
                           00009F   450 _SM0	=	0x009f
                           000088   451 _IT0	=	0x0088
                           000089   452 _IE0	=	0x0089
                           00008A   453 _IT1	=	0x008a
                           00008B   454 _IE1	=	0x008b
                           00008C   455 _TR0	=	0x008c
                           00008D   456 _TF0	=	0x008d
                           00008E   457 _TR1	=	0x008e
                           00008F   458 _TF1	=	0x008f
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable register banks
                                    461 ;--------------------------------------------------------
                                    462 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        463 	.ds 8
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable bit register bank
                                    466 ;--------------------------------------------------------
                                    467 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        468 bits:
      000021                        469 	.ds 1
                           008000   470 	b0 = bits[0]
                           008100   471 	b1 = bits[1]
                           008200   472 	b2 = bits[2]
                           008300   473 	b3 = bits[3]
                           008400   474 	b4 = bits[4]
                           008500   475 	b5 = bits[5]
                           008600   476 	b6 = bits[6]
                           008700   477 	b7 = bits[7]
                                    478 ;--------------------------------------------------------
                                    479 ; internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area DSEG    (DATA)
      000008                        482 _enc_init_sloc0_1_0:
      000008                        483 	.ds 3
      00000B                        484 _enc_init_sloc1_1_0:
      00000B                        485 	.ds 3
      00000E                        486 _enc_init_sloc2_1_0:
      00000E                        487 	.ds 3
      000011                        488 _enc_init_sloc3_1_0:
      000011                        489 	.ds 3
                                    490 ;--------------------------------------------------------
                                    491 ; overlayable items in internal ram
                                    492 ;--------------------------------------------------------
                                    493 ;--------------------------------------------------------
                                    494 ; indirectly addressable internal ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area ISEG    (DATA)
                                    497 ;--------------------------------------------------------
                                    498 ; absolute internal ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area IABS    (ABS,DATA)
                                    501 	.area IABS    (ABS,DATA)
                                    502 ;--------------------------------------------------------
                                    503 ; bit data
                                    504 ;--------------------------------------------------------
                                    505 	.area BSEG    (BIT)
      000000                        506 _enc28j60_transmission_successful_sloc0_1_0:
      000000                        507 	.ds 1
                                    508 ;--------------------------------------------------------
                                    509 ; paged external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area PSEG    (PAG,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; uninitialized external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XSEG    (XDATA)
      000100                        516 _delay_ms_ms_10000_124:
      000100                        517 	.ds 2
      000102                        518 _delay_ms_i_20000_126:
      000102                        519 	.ds 4
      000106                        520 _enc28j60_set_transmit_pointers_PARM_2:
      000106                        521 	.ds 2
      000108                        522 _enc28j60_set_transmit_pointers_start_address_10000_130:
      000108                        523 	.ds 2
      00010A                        524 _wait_for_transmission_complete_timeout_ms_10000_132:
      00010A                        525 	.ds 2
      00010C                        526 _send_arp_request_source_mac_10000_138:
      00010C                        527 	.ds 6
      000112                        528 _send_arp_request_dest_mac_10000_138:
      000112                        529 	.ds 6
      000118                        530 _send_arp_request_source_ip_10000_138:
      000118                        531 	.ds 4
      00011C                        532 _send_arp_request_target_ip_10000_138:
      00011C                        533 	.ds 4
      000120                        534 _send_arp_request_arp_packet_10000_138:
      000120                        535 	.ds 43
      00014B                        536 _external_interrupt0_isr_i_10000_157:
      00014B                        537 	.ds 2
      00014D                        538 _enc_buffer_init_PARM_2:
      00014D                        539 	.ds 2
      00014F                        540 _enc_buffer_init_start_address_10000_159:
      00014F                        541 	.ds 2
      000151                        542 _enc_init_mac_10000_162:
      000151                        543 	.ds 3
      000154                        544 _update_ERXRDPT_new_address_10000_169:
      000154                        545 	.ds 2
                                    546 ;--------------------------------------------------------
                                    547 ; absolute external ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area XABS    (ABS,XDATA)
                                    550 ;--------------------------------------------------------
                                    551 ; initialized external ram data
                                    552 ;--------------------------------------------------------
                                    553 	.area XISEG   (XDATA)
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT0 (CODE)
                                    556 	.area GSINIT1 (CODE)
                                    557 	.area GSINIT2 (CODE)
                                    558 	.area GSINIT3 (CODE)
                                    559 	.area GSINIT4 (CODE)
                                    560 	.area GSINIT5 (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.area GSFINAL (CODE)
                                    563 	.area CSEG    (CODE)
                                    564 ;--------------------------------------------------------
                                    565 ; global & static initialisations
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.area GSFINAL (CODE)
                                    570 	.area GSINIT  (CODE)
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                    573 ;------------------------------------------------------------
                                    574 ;i                         Allocated with name '_external_interrupt0_isr_i_10000_157'
                                    575 ;------------------------------------------------------------
                                    576 ;	Eth.c:200: static int i = 0;
      002090 90 01 4B         [24]  577 	mov	dptr,#_external_interrupt0_isr_i_10000_157
      002093 E4               [12]  578 	clr	a
      002094 F0               [24]  579 	movx	@dptr,a
      002095 A3               [24]  580 	inc	dptr
      002096 F0               [24]  581 	movx	@dptr,a
                                    582 ;--------------------------------------------------------
                                    583 ; Home
                                    584 ;--------------------------------------------------------
                                    585 	.area HOME    (CODE)
                                    586 	.area HOME    (CODE)
                                    587 ;--------------------------------------------------------
                                    588 ; code
                                    589 ;--------------------------------------------------------
                                    590 	.area CSEG    (CODE)
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'delay_ms'
                                    593 ;------------------------------------------------------------
                                    594 ;ms                        Allocated with name '_delay_ms_ms_10000_124'
                                    595 ;i                         Allocated with name '_delay_ms_i_20000_126'
                                    596 ;------------------------------------------------------------
                                    597 ;	Eth.c:48: void delay_ms(uint16_t ms)
                                    598 ;	-----------------------------------------
                                    599 ;	 function delay_ms
                                    600 ;	-----------------------------------------
      0020AC                        601 _delay_ms:
                           000007   602 	ar7 = 0x07
                           000006   603 	ar6 = 0x06
                           000005   604 	ar5 = 0x05
                           000004   605 	ar4 = 0x04
                           000003   606 	ar3 = 0x03
                           000002   607 	ar2 = 0x02
                           000001   608 	ar1 = 0x01
                           000000   609 	ar0 = 0x00
      0020AC AF 83            [24]  610 	mov	r7,dph
      0020AE E5 82            [12]  611 	mov	a,dpl
      0020B0 90 01 00         [24]  612 	mov	dptr,#_delay_ms_ms_10000_124
      0020B3 F0               [24]  613 	movx	@dptr,a
      0020B4 EF               [12]  614 	mov	a,r7
      0020B5 A3               [24]  615 	inc	dptr
      0020B6 F0               [24]  616 	movx	@dptr,a
                                    617 ;	Eth.c:50: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      0020B7 90 01 02         [24]  618 	mov	dptr,#_delay_ms_i_20000_126
      0020BA E4               [12]  619 	clr	a
      0020BB F0               [24]  620 	movx	@dptr,a
      0020BC A3               [24]  621 	inc	dptr
      0020BD F0               [24]  622 	movx	@dptr,a
      0020BE A3               [24]  623 	inc	dptr
      0020BF F0               [24]  624 	movx	@dptr,a
      0020C0 A3               [24]  625 	inc	dptr
      0020C1 F0               [24]  626 	movx	@dptr,a
      0020C2 90 01 00         [24]  627 	mov	dptr,#_delay_ms_ms_10000_124
      0020C5 E0               [24]  628 	movx	a,@dptr
      0020C6 FE               [12]  629 	mov	r6,a
      0020C7 A3               [24]  630 	inc	dptr
      0020C8 E0               [24]  631 	movx	a,@dptr
      0020C9 FF               [12]  632 	mov	r7,a
      0020CA                        633 00103$:
      0020CA 90 10 52         [24]  634 	mov	dptr,#__mulint_PARM_2
      0020CD EE               [12]  635 	mov	a,r6
      0020CE F0               [24]  636 	movx	@dptr,a
      0020CF EF               [12]  637 	mov	a,r7
      0020D0 A3               [24]  638 	inc	dptr
      0020D1 F0               [24]  639 	movx	@dptr,a
      0020D2 90 03 E8         [24]  640 	mov	dptr,#0x03e8
      0020D5 C0 07            [24]  641 	push	ar7
      0020D7 C0 06            [24]  642 	push	ar6
      0020D9 12 62 C9         [24]  643 	lcall	__mulint
      0020DC AC 82            [24]  644 	mov	r4, dpl
      0020DE AD 83            [24]  645 	mov	r5, dph
      0020E0 D0 06            [24]  646 	pop	ar6
      0020E2 D0 07            [24]  647 	pop	ar7
      0020E4 90 01 02         [24]  648 	mov	dptr,#_delay_ms_i_20000_126
      0020E7 E0               [24]  649 	movx	a,@dptr
      0020E8 F8               [12]  650 	mov	r0,a
      0020E9 A3               [24]  651 	inc	dptr
      0020EA E0               [24]  652 	movx	a,@dptr
      0020EB F9               [12]  653 	mov	r1,a
      0020EC A3               [24]  654 	inc	dptr
      0020ED E0               [24]  655 	movx	a,@dptr
      0020EE FA               [12]  656 	mov	r2,a
      0020EF A3               [24]  657 	inc	dptr
      0020F0 E0               [24]  658 	movx	a,@dptr
      0020F1 FB               [12]  659 	mov	r3,a
      0020F2 C0 06            [24]  660 	push	ar6
      0020F4 C0 07            [24]  661 	push	ar7
      0020F6 7E 00            [12]  662 	mov	r6,#0x00
      0020F8 7F 00            [12]  663 	mov	r7,#0x00
      0020FA C3               [12]  664 	clr	c
      0020FB E8               [12]  665 	mov	a,r0
      0020FC 9C               [12]  666 	subb	a,r4
      0020FD E9               [12]  667 	mov	a,r1
      0020FE 9D               [12]  668 	subb	a,r5
      0020FF EA               [12]  669 	mov	a,r2
      002100 9E               [12]  670 	subb	a,r6
      002101 EB               [12]  671 	mov	a,r3
      002102 9F               [12]  672 	subb	a,r7
      002103 D0 07            [24]  673 	pop	ar7
      002105 D0 06            [24]  674 	pop	ar6
      002107 50 23            [24]  675 	jnc	00105$
      002109 90 01 02         [24]  676 	mov	dptr,#_delay_ms_i_20000_126
      00210C E0               [24]  677 	movx	a,@dptr
      00210D FA               [12]  678 	mov	r2,a
      00210E A3               [24]  679 	inc	dptr
      00210F E0               [24]  680 	movx	a,@dptr
      002110 FB               [12]  681 	mov	r3,a
      002111 A3               [24]  682 	inc	dptr
      002112 E0               [24]  683 	movx	a,@dptr
      002113 FC               [12]  684 	mov	r4,a
      002114 A3               [24]  685 	inc	dptr
      002115 E0               [24]  686 	movx	a,@dptr
      002116 FD               [12]  687 	mov	r5,a
      002117 90 01 02         [24]  688 	mov	dptr,#_delay_ms_i_20000_126
      00211A 74 01            [12]  689 	mov	a,#0x01
      00211C 2A               [12]  690 	add	a, r2
      00211D F0               [24]  691 	movx	@dptr,a
      00211E E4               [12]  692 	clr	a
      00211F 3B               [12]  693 	addc	a, r3
      002120 A3               [24]  694 	inc	dptr
      002121 F0               [24]  695 	movx	@dptr,a
      002122 E4               [12]  696 	clr	a
      002123 3C               [12]  697 	addc	a, r4
      002124 A3               [24]  698 	inc	dptr
      002125 F0               [24]  699 	movx	@dptr,a
      002126 E4               [12]  700 	clr	a
      002127 3D               [12]  701 	addc	a, r5
      002128 A3               [24]  702 	inc	dptr
      002129 F0               [24]  703 	movx	@dptr,a
      00212A 80 9E            [24]  704 	sjmp	00103$
      00212C                        705 00105$:
                                    706 ;	Eth.c:54: }
      00212C 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    710 ;------------------------------------------------------------
                                    711 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_129'
                                    712 ;------------------------------------------------------------
                                    713 ;	Eth.c:56: void enc28j60_start_transmission(void)
                                    714 ;	-----------------------------------------
                                    715 ;	 function enc28j60_start_transmission
                                    716 ;	-----------------------------------------
      00212D                        717 _enc28j60_start_transmission:
                                    718 ;	Eth.c:58: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      00212D 90 03 8D         [24]  719 	mov	dptr,#_mac_spi_read_PARM_2
      002130 E4               [12]  720 	clr	a
      002131 F0               [24]  721 	movx	@dptr,a
      002132 75 82 1F         [24]  722 	mov	dpl, #0x1f
      002135 12 3A 96         [24]  723 	lcall	_mac_spi_read
      002138 E5 82            [12]  724 	mov	a, dpl
                                    725 ;	Eth.c:59: econ1 |= 0x08; // Set TXRTS (bit 3)
      00213A 44 08            [12]  726 	orl	a,#0x08
      00213C FF               [12]  727 	mov	r7,a
                                    728 ;	Eth.c:60: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      00213D 90 03 84         [24]  729 	mov	dptr,#_spi_control_write_PARM_2
      002140 74 1F            [12]  730 	mov	a,#0x1f
      002142 F0               [24]  731 	movx	@dptr,a
      002143 90 03 85         [24]  732 	mov	dptr,#_spi_control_write_PARM_3
      002146 EF               [12]  733 	mov	a,r7
      002147 F0               [24]  734 	movx	@dptr,a
      002148 75 82 00         [24]  735 	mov	dpl, #0x00
                                    736 ;	Eth.c:61: }
      00214B 02 39 7A         [24]  737 	ljmp	_spi_control_write
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    740 ;------------------------------------------------------------
                                    741 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    742 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_130'
                                    743 ;------------------------------------------------------------
                                    744 ;	Eth.c:64: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    745 ;	-----------------------------------------
                                    746 ;	 function enc28j60_set_transmit_pointers
                                    747 ;	-----------------------------------------
      00214E                        748 _enc28j60_set_transmit_pointers:
      00214E AF 83            [24]  749 	mov	r7,dph
      002150 E5 82            [12]  750 	mov	a,dpl
      002152 90 01 08         [24]  751 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_130
      002155 F0               [24]  752 	movx	@dptr,a
      002156 EF               [12]  753 	mov	a,r7
      002157 A3               [24]  754 	inc	dptr
      002158 F0               [24]  755 	movx	@dptr,a
                                    756 ;	Eth.c:67: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      002159 90 01 08         [24]  757 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_130
      00215C E0               [24]  758 	movx	a,@dptr
      00215D FE               [12]  759 	mov	r6,a
      00215E A3               [24]  760 	inc	dptr
      00215F E0               [24]  761 	movx	a,@dptr
      002160 FF               [12]  762 	mov	r7,a
      002161 8E 05            [24]  763 	mov	ar5,r6
      002163 90 03 84         [24]  764 	mov	dptr,#_spi_control_write_PARM_2
      002166 74 04            [12]  765 	mov	a,#0x04
      002168 F0               [24]  766 	movx	@dptr,a
      002169 90 03 85         [24]  767 	mov	dptr,#_spi_control_write_PARM_3
      00216C ED               [12]  768 	mov	a,r5
      00216D F0               [24]  769 	movx	@dptr,a
      00216E 75 82 00         [24]  770 	mov	dpl, #0x00
      002171 C0 07            [24]  771 	push	ar7
      002173 C0 06            [24]  772 	push	ar6
      002175 12 39 7A         [24]  773 	lcall	_spi_control_write
      002178 D0 06            [24]  774 	pop	ar6
      00217A D0 07            [24]  775 	pop	ar7
                                    776 ;	Eth.c:68: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      00217C 8F 06            [24]  777 	mov	ar6,r7
      00217E 90 03 84         [24]  778 	mov	dptr,#_spi_control_write_PARM_2
      002181 74 05            [12]  779 	mov	a,#0x05
      002183 F0               [24]  780 	movx	@dptr,a
      002184 90 03 85         [24]  781 	mov	dptr,#_spi_control_write_PARM_3
      002187 EE               [12]  782 	mov	a,r6
      002188 F0               [24]  783 	movx	@dptr,a
      002189 75 82 00         [24]  784 	mov	dpl, #0x00
      00218C 12 39 7A         [24]  785 	lcall	_spi_control_write
                                    786 ;	Eth.c:71: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      00218F 90 01 06         [24]  787 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002192 E0               [24]  788 	movx	a,@dptr
      002193 FE               [12]  789 	mov	r6,a
      002194 A3               [24]  790 	inc	dptr
      002195 E0               [24]  791 	movx	a,@dptr
      002196 FF               [12]  792 	mov	r7,a
      002197 8E 05            [24]  793 	mov	ar5,r6
      002199 90 03 84         [24]  794 	mov	dptr,#_spi_control_write_PARM_2
      00219C 74 06            [12]  795 	mov	a,#0x06
      00219E F0               [24]  796 	movx	@dptr,a
      00219F 90 03 85         [24]  797 	mov	dptr,#_spi_control_write_PARM_3
      0021A2 ED               [12]  798 	mov	a,r5
      0021A3 F0               [24]  799 	movx	@dptr,a
      0021A4 75 82 00         [24]  800 	mov	dpl, #0x00
      0021A7 C0 07            [24]  801 	push	ar7
      0021A9 C0 06            [24]  802 	push	ar6
      0021AB 12 39 7A         [24]  803 	lcall	_spi_control_write
      0021AE D0 06            [24]  804 	pop	ar6
      0021B0 D0 07            [24]  805 	pop	ar7
                                    806 ;	Eth.c:72: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      0021B2 8F 06            [24]  807 	mov	ar6,r7
      0021B4 90 03 84         [24]  808 	mov	dptr,#_spi_control_write_PARM_2
      0021B7 74 07            [12]  809 	mov	a,#0x07
      0021B9 F0               [24]  810 	movx	@dptr,a
      0021BA 90 03 85         [24]  811 	mov	dptr,#_spi_control_write_PARM_3
      0021BD EE               [12]  812 	mov	a,r6
      0021BE F0               [24]  813 	movx	@dptr,a
      0021BF 75 82 00         [24]  814 	mov	dpl, #0x00
                                    815 ;	Eth.c:73: }
      0021C2 02 39 7A         [24]  816 	ljmp	_spi_control_write
                                    817 ;------------------------------------------------------------
                                    818 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                    819 ;------------------------------------------------------------
                                    820 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_132'
                                    821 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_133'
                                    822 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_134'
                                    823 ;------------------------------------------------------------
                                    824 ;	Eth.c:75: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                    825 ;	-----------------------------------------
                                    826 ;	 function wait_for_transmission_complete
                                    827 ;	-----------------------------------------
      0021C5                        828 _wait_for_transmission_complete:
      0021C5 AF 83            [24]  829 	mov	r7,dph
      0021C7 E5 82            [12]  830 	mov	a,dpl
      0021C9 90 01 0A         [24]  831 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_132
      0021CC F0               [24]  832 	movx	@dptr,a
      0021CD EF               [12]  833 	mov	a,r7
      0021CE A3               [24]  834 	inc	dptr
      0021CF F0               [24]  835 	movx	@dptr,a
                                    836 ;	Eth.c:79: while (elapsed < timeout_ms) {
      0021D0 90 01 0A         [24]  837 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_132
      0021D3 E0               [24]  838 	movx	a,@dptr
      0021D4 FE               [12]  839 	mov	r6,a
      0021D5 A3               [24]  840 	inc	dptr
      0021D6 E0               [24]  841 	movx	a,@dptr
      0021D7 FF               [12]  842 	mov	r7,a
      0021D8 7C 00            [12]  843 	mov	r4,#0x00
      0021DA 7D 00            [12]  844 	mov	r5,#0x00
      0021DC                        845 00103$:
      0021DC C3               [12]  846 	clr	c
      0021DD EC               [12]  847 	mov	a,r4
      0021DE 9E               [12]  848 	subb	a,r6
      0021DF ED               [12]  849 	mov	a,r5
      0021E0 9F               [12]  850 	subb	a,r7
      0021E1 50 41            [24]  851 	jnc	00105$
                                    852 ;	Eth.c:80: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      0021E3 90 03 8D         [24]  853 	mov	dptr,#_mac_spi_read_PARM_2
      0021E6 E4               [12]  854 	clr	a
      0021E7 F0               [24]  855 	movx	@dptr,a
      0021E8 75 82 1F         [24]  856 	mov	dpl, #0x1f
      0021EB C0 07            [24]  857 	push	ar7
      0021ED C0 06            [24]  858 	push	ar6
      0021EF C0 05            [24]  859 	push	ar5
      0021F1 C0 04            [24]  860 	push	ar4
      0021F3 12 3A 96         [24]  861 	lcall	_mac_spi_read
      0021F6 E5 82            [12]  862 	mov	a, dpl
      0021F8 D0 04            [24]  863 	pop	ar4
      0021FA D0 05            [24]  864 	pop	ar5
      0021FC D0 06            [24]  865 	pop	ar6
      0021FE D0 07            [24]  866 	pop	ar7
                                    867 ;	Eth.c:81: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      002200 20 E3 04         [24]  868 	jb	acc.3,00102$
                                    869 ;	Eth.c:82: return true;  // Transmission completed
      002203 75 82 01         [24]  870 	mov	dpl, #0x01
      002206 22               [24]  871 	ret
      002207                        872 00102$:
                                    873 ;	Eth.c:85: delay_ms(1);  // Wait 1 ms
      002207 90 00 01         [24]  874 	mov	dptr,#0x0001
      00220A C0 07            [24]  875 	push	ar7
      00220C C0 06            [24]  876 	push	ar6
      00220E C0 05            [24]  877 	push	ar5
      002210 C0 04            [24]  878 	push	ar4
      002212 12 20 AC         [24]  879 	lcall	_delay_ms
      002215 D0 04            [24]  880 	pop	ar4
      002217 D0 05            [24]  881 	pop	ar5
      002219 D0 06            [24]  882 	pop	ar6
      00221B D0 07            [24]  883 	pop	ar7
                                    884 ;	Eth.c:86: elapsed++;
      00221D 0C               [12]  885 	inc	r4
      00221E BC 00 BB         [24]  886 	cjne	r4,#0x00,00103$
      002221 0D               [12]  887 	inc	r5
      002222 80 B8            [24]  888 	sjmp	00103$
      002224                        889 00105$:
                                    890 ;	Eth.c:89: return false;  // Timed out
      002224 75 82 00         [24]  891 	mov	dpl, #0x00
                                    892 ;	Eth.c:90: }
      002227 22               [24]  893 	ret
                                    894 ;------------------------------------------------------------
                                    895 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                    896 ;------------------------------------------------------------
                                    897 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_136'
                                    898 ;------------------------------------------------------------
                                    899 ;	Eth.c:92: bool enc28j60_transmission_successful()
                                    900 ;	-----------------------------------------
                                    901 ;	 function enc28j60_transmission_successful
                                    902 ;	-----------------------------------------
      002228                        903 _enc28j60_transmission_successful:
                                    904 ;	Eth.c:94: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      002228 90 03 8D         [24]  905 	mov	dptr,#_mac_spi_read_PARM_2
      00222B E4               [12]  906 	clr	a
      00222C F0               [24]  907 	movx	@dptr,a
      00222D 75 82 1D         [24]  908 	mov	dpl, #0x1d
      002230 12 3A 96         [24]  909 	lcall	_mac_spi_read
                                    910 ;	Eth.c:95: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      002233 E5 82            [12]  911 	mov	a,dpl
      002235 03               [12]  912 	rr	a
      002236 54 01            [12]  913 	anl	a,#0x01
      002238 B4 01 00         [24]  914 	cjne	a,#0x01,00103$
      00223B                        915 00103$:
      00223B 92 00            [24]  916 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      00223D E4               [12]  917 	clr	a
      00223E 33               [12]  918 	rlc	a
      00223F F5 82            [12]  919 	mov	dpl, a
                                    920 ;	Eth.c:96: }
      002241 22               [24]  921 	ret
                                    922 ;------------------------------------------------------------
                                    923 ;Allocation info for local variables in function 'send_arp_request'
                                    924 ;------------------------------------------------------------
                                    925 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_138'
                                    926 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_138'
                                    927 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_138'
                                    928 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_138'
                                    929 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_138'
                                    930 ;i                         Allocated with name '_send_arp_request_i_20000_139'
                                    931 ;i                         Allocated with name '_send_arp_request_i_20000_141'
                                    932 ;i                         Allocated with name '_send_arp_request_i_20000_143'
                                    933 ;i                         Allocated with name '_send_arp_request_i_20000_145'
                                    934 ;i                         Allocated with name '_send_arp_request_i_20000_147'
                                    935 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_149'
                                    936 ;start_address             Allocated with name '_send_arp_request_start_address_10001_149'
                                    937 ;end_address               Allocated with name '_send_arp_request_end_address_10002_151'
                                    938 ;------------------------------------------------------------
                                    939 ;	Eth.c:98: void send_arp_request(void)
                                    940 ;	-----------------------------------------
                                    941 ;	 function send_arp_request
                                    942 ;	-----------------------------------------
      002242                        943 _send_arp_request:
                                    944 ;	Eth.c:102: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      002242 90 01 0C         [24]  945 	mov	dptr,#_send_arp_request_source_mac_10000_138
      002245 74 02            [12]  946 	mov	a,#0x02
      002247 F0               [24]  947 	movx	@dptr,a
      002248 90 01 0D         [24]  948 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0001)
      00224B 74 11            [12]  949 	mov	a,#0x11
      00224D F0               [24]  950 	movx	@dptr,a
      00224E 90 01 0E         [24]  951 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0002)
      002251 23               [12]  952 	rl	a
      002252 F0               [24]  953 	movx	@dptr,a
      002253 90 01 0F         [24]  954 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0003)
      002256 74 33            [12]  955 	mov	a,#0x33
      002258 F0               [24]  956 	movx	@dptr,a
      002259 90 01 10         [24]  957 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0004)
      00225C 74 44            [12]  958 	mov	a,#0x44
      00225E F0               [24]  959 	movx	@dptr,a
      00225F 90 01 11         [24]  960 	mov	dptr,#(_send_arp_request_source_mac_10000_138 + 0x0005)
      002262 74 55            [12]  961 	mov	a,#0x55
      002264 F0               [24]  962 	movx	@dptr,a
                                    963 ;	Eth.c:103: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      002265 90 01 12         [24]  964 	mov	dptr,#_send_arp_request_dest_mac_10000_138
      002268 74 F8            [12]  965 	mov	a,#0xf8
      00226A F0               [24]  966 	movx	@dptr,a
      00226B 90 01 13         [24]  967 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0001)
      00226E 74 75            [12]  968 	mov	a,#0x75
      002270 F0               [24]  969 	movx	@dptr,a
      002271 90 01 14         [24]  970 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0002)
      002274 74 A4            [12]  971 	mov	a,#0xa4
      002276 F0               [24]  972 	movx	@dptr,a
      002277 90 01 15         [24]  973 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0003)
      00227A 74 8C            [12]  974 	mov	a,#0x8c
      00227C F0               [24]  975 	movx	@dptr,a
      00227D 90 01 16         [24]  976 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0004)
      002280 74 41            [12]  977 	mov	a,#0x41
      002282 F0               [24]  978 	movx	@dptr,a
      002283 90 01 17         [24]  979 	mov	dptr,#(_send_arp_request_dest_mac_10000_138 + 0x0005)
      002286 74 31            [12]  980 	mov	a,#0x31
      002288 F0               [24]  981 	movx	@dptr,a
                                    982 ;	Eth.c:104: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      002289 90 01 18         [24]  983 	mov	dptr,#_send_arp_request_source_ip_10000_138
      00228C 74 C0            [12]  984 	mov	a,#0xc0
      00228E F0               [24]  985 	movx	@dptr,a
      00228F 90 01 19         [24]  986 	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0001)
      002292 74 A8            [12]  987 	mov	a,#0xa8
      002294 F0               [24]  988 	movx	@dptr,a
      002295 90 01 1A         [24]  989 	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0002)
      002298 74 01            [12]  990 	mov	a,#0x01
      00229A F0               [24]  991 	movx	@dptr,a
      00229B 90 01 1B         [24]  992 	mov	dptr,#(_send_arp_request_source_ip_10000_138 + 0x0003)
      00229E 74 64            [12]  993 	mov	a,#0x64
      0022A0 F0               [24]  994 	movx	@dptr,a
                                    995 ;	Eth.c:105: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      0022A1 90 01 1C         [24]  996 	mov	dptr,#_send_arp_request_target_ip_10000_138
      0022A4 74 C0            [12]  997 	mov	a,#0xc0
      0022A6 F0               [24]  998 	movx	@dptr,a
      0022A7 90 01 1D         [24]  999 	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0001)
      0022AA 74 A8            [12] 1000 	mov	a,#0xa8
      0022AC F0               [24] 1001 	movx	@dptr,a
      0022AD 90 01 1E         [24] 1002 	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0002)
      0022B0 74 01            [12] 1003 	mov	a,#0x01
      0022B2 F0               [24] 1004 	movx	@dptr,a
      0022B3 90 01 1F         [24] 1005 	mov	dptr,#(_send_arp_request_target_ip_10000_138 + 0x0003)
      0022B6 F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	Eth.c:109: arp_packet[0] = 0x0E;
      0022B7 90 01 20         [24] 1008 	mov	dptr,#_send_arp_request_arp_packet_10000_138
      0022BA 74 0E            [12] 1009 	mov	a,#0x0e
      0022BC F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	Eth.c:117: for (int i = 0; i < 6; i++)
      0022BD 7E 00            [12] 1012 	mov	r6,#0x00
      0022BF 7F 00            [12] 1013 	mov	r7,#0x00
      0022C1                       1014 00115$:
      0022C1 C3               [12] 1015 	clr	c
      0022C2 EE               [12] 1016 	mov	a,r6
      0022C3 94 06            [12] 1017 	subb	a,#0x06
      0022C5 EF               [12] 1018 	mov	a,r7
      0022C6 64 80            [12] 1019 	xrl	a,#0x80
      0022C8 94 80            [12] 1020 	subb	a,#0x80
      0022CA 50 48            [24] 1021 	jnc	00101$
                                   1022 ;	Eth.c:119: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      0022CC 8E 05            [24] 1023 	mov	ar5,r6
      0022CE ED               [12] 1024 	mov	a,r5
      0022CF 04               [12] 1025 	inc	a
      0022D0 FC               [12] 1026 	mov	r4,a
      0022D1 33               [12] 1027 	rlc	a
      0022D2 95 E0            [12] 1028 	subb	a,acc
      0022D4 FB               [12] 1029 	mov	r3,a
      0022D5 EC               [12] 1030 	mov	a,r4
      0022D6 24 20            [12] 1031 	add	a, #_send_arp_request_arp_packet_10000_138
      0022D8 FC               [12] 1032 	mov	r4,a
      0022D9 EB               [12] 1033 	mov	a,r3
      0022DA 34 01            [12] 1034 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0022DC FB               [12] 1035 	mov	r3,a
      0022DD EE               [12] 1036 	mov	a,r6
      0022DE 24 12            [12] 1037 	add	a, #_send_arp_request_dest_mac_10000_138
      0022E0 F5 82            [12] 1038 	mov	dpl,a
      0022E2 EF               [12] 1039 	mov	a,r7
      0022E3 34 01            [12] 1040 	addc	a, #(_send_arp_request_dest_mac_10000_138 >> 8)
      0022E5 F5 83            [12] 1041 	mov	dph,a
      0022E7 E0               [24] 1042 	movx	a,@dptr
      0022E8 8C 82            [24] 1043 	mov	dpl,r4
      0022EA 8B 83            [24] 1044 	mov	dph,r3
      0022EC F0               [24] 1045 	movx	@dptr,a
                                   1046 ;	Eth.c:120: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      0022ED 74 07            [12] 1047 	mov	a,#0x07
      0022EF 2D               [12] 1048 	add	a, r5
      0022F0 FD               [12] 1049 	mov	r5,a
      0022F1 33               [12] 1050 	rlc	a
      0022F2 95 E0            [12] 1051 	subb	a,acc
      0022F4 FC               [12] 1052 	mov	r4,a
      0022F5 ED               [12] 1053 	mov	a,r5
      0022F6 24 20            [12] 1054 	add	a, #_send_arp_request_arp_packet_10000_138
      0022F8 FD               [12] 1055 	mov	r5,a
      0022F9 EC               [12] 1056 	mov	a,r4
      0022FA 34 01            [12] 1057 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0022FC FC               [12] 1058 	mov	r4,a
      0022FD EE               [12] 1059 	mov	a,r6
      0022FE 24 0C            [12] 1060 	add	a, #_send_arp_request_source_mac_10000_138
      002300 F5 82            [12] 1061 	mov	dpl,a
      002302 EF               [12] 1062 	mov	a,r7
      002303 34 01            [12] 1063 	addc	a, #(_send_arp_request_source_mac_10000_138 >> 8)
      002305 F5 83            [12] 1064 	mov	dph,a
      002307 E0               [24] 1065 	movx	a,@dptr
      002308 8D 82            [24] 1066 	mov	dpl,r5
      00230A 8C 83            [24] 1067 	mov	dph,r4
      00230C F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	Eth.c:117: for (int i = 0; i < 6; i++)
      00230D 0E               [12] 1070 	inc	r6
      00230E BE 00 B0         [24] 1071 	cjne	r6,#0x00,00115$
      002311 0F               [12] 1072 	inc	r7
      002312 80 AD            [24] 1073 	sjmp	00115$
      002314                       1074 00101$:
                                   1075 ;	Eth.c:124: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      002314 90 01 2D         [24] 1076 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000d)
      002317 74 08            [12] 1077 	mov	a,#0x08
      002319 F0               [24] 1078 	movx	@dptr,a
                                   1079 ;	Eth.c:125: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      00231A 90 01 2E         [24] 1080 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000e)
      00231D 74 06            [12] 1081 	mov	a,#0x06
      00231F F0               [24] 1082 	movx	@dptr,a
                                   1083 ;	Eth.c:129: arp_packet[15] = 0x00;
      002320 90 01 2F         [24] 1084 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x000f)
      002323 E4               [12] 1085 	clr	a
      002324 F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	Eth.c:130: arp_packet[16] = 0x01;
      002325 90 01 30         [24] 1088 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0010)
      002328 04               [12] 1089 	inc	a
      002329 F0               [24] 1090 	movx	@dptr,a
                                   1091 ;	Eth.c:133: arp_packet[17] = 0x08;
      00232A 90 01 31         [24] 1092 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0011)
      00232D 74 08            [12] 1093 	mov	a,#0x08
      00232F F0               [24] 1094 	movx	@dptr,a
                                   1095 ;	Eth.c:134: arp_packet[18] = 0x00;
      002330 90 01 32         [24] 1096 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0012)
      002333 E4               [12] 1097 	clr	a
      002334 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	Eth.c:137: arp_packet[19] = 0x06;
      002335 90 01 33         [24] 1100 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0013)
      002338 74 06            [12] 1101 	mov	a,#0x06
      00233A F0               [24] 1102 	movx	@dptr,a
                                   1103 ;	Eth.c:140: arp_packet[20] = 0x04;
      00233B 90 01 34         [24] 1104 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0014)
      00233E 74 04            [12] 1105 	mov	a,#0x04
      002340 F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	Eth.c:143: arp_packet[21] = 0x00;
      002341 90 01 35         [24] 1108 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0015)
      002344 E4               [12] 1109 	clr	a
      002345 F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	Eth.c:144: arp_packet[22] = 0x01;
      002346 90 01 36         [24] 1112 	mov	dptr,#(_send_arp_request_arp_packet_10000_138 + 0x0016)
      002349 04               [12] 1113 	inc	a
      00234A F0               [24] 1114 	movx	@dptr,a
                                   1115 ;	Eth.c:147: for (int i = 0; i < 6; i++) {
      00234B 7E 00            [12] 1116 	mov	r6,#0x00
      00234D 7F 00            [12] 1117 	mov	r7,#0x00
      00234F                       1118 00118$:
      00234F C3               [12] 1119 	clr	c
      002350 EE               [12] 1120 	mov	a,r6
      002351 94 06            [12] 1121 	subb	a,#0x06
      002353 EF               [12] 1122 	mov	a,r7
      002354 64 80            [12] 1123 	xrl	a,#0x80
      002356 94 80            [12] 1124 	subb	a,#0x80
      002358 50 29            [24] 1125 	jnc	00102$
                                   1126 ;	Eth.c:148: arp_packet[23 + i] = source_mac[i];
      00235A 8E 05            [24] 1127 	mov	ar5,r6
      00235C 74 17            [12] 1128 	mov	a,#0x17
      00235E 2D               [12] 1129 	add	a, r5
      00235F FD               [12] 1130 	mov	r5,a
      002360 33               [12] 1131 	rlc	a
      002361 95 E0            [12] 1132 	subb	a,acc
      002363 FC               [12] 1133 	mov	r4,a
      002364 ED               [12] 1134 	mov	a,r5
      002365 24 20            [12] 1135 	add	a, #_send_arp_request_arp_packet_10000_138
      002367 FD               [12] 1136 	mov	r5,a
      002368 EC               [12] 1137 	mov	a,r4
      002369 34 01            [12] 1138 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      00236B FC               [12] 1139 	mov	r4,a
      00236C EE               [12] 1140 	mov	a,r6
      00236D 24 0C            [12] 1141 	add	a, #_send_arp_request_source_mac_10000_138
      00236F F5 82            [12] 1142 	mov	dpl,a
      002371 EF               [12] 1143 	mov	a,r7
      002372 34 01            [12] 1144 	addc	a, #(_send_arp_request_source_mac_10000_138 >> 8)
      002374 F5 83            [12] 1145 	mov	dph,a
      002376 E0               [24] 1146 	movx	a,@dptr
      002377 8D 82            [24] 1147 	mov	dpl,r5
      002379 8C 83            [24] 1148 	mov	dph,r4
      00237B F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	Eth.c:147: for (int i = 0; i < 6; i++) {
      00237C 0E               [12] 1151 	inc	r6
      00237D BE 00 CF         [24] 1152 	cjne	r6,#0x00,00118$
      002380 0F               [12] 1153 	inc	r7
      002381 80 CC            [24] 1154 	sjmp	00118$
      002383                       1155 00102$:
                                   1156 ;	Eth.c:152: for (int i = 0; i < 4; i++) {
      002383 7E 00            [12] 1157 	mov	r6,#0x00
      002385 7F 00            [12] 1158 	mov	r7,#0x00
      002387                       1159 00121$:
      002387 C3               [12] 1160 	clr	c
      002388 EE               [12] 1161 	mov	a,r6
      002389 94 04            [12] 1162 	subb	a,#0x04
      00238B EF               [12] 1163 	mov	a,r7
      00238C 64 80            [12] 1164 	xrl	a,#0x80
      00238E 94 80            [12] 1165 	subb	a,#0x80
      002390 50 29            [24] 1166 	jnc	00103$
                                   1167 ;	Eth.c:153: arp_packet[29 + i] = source_ip[i];
      002392 8E 05            [24] 1168 	mov	ar5,r6
      002394 74 1D            [12] 1169 	mov	a,#0x1d
      002396 2D               [12] 1170 	add	a, r5
      002397 FD               [12] 1171 	mov	r5,a
      002398 33               [12] 1172 	rlc	a
      002399 95 E0            [12] 1173 	subb	a,acc
      00239B FC               [12] 1174 	mov	r4,a
      00239C ED               [12] 1175 	mov	a,r5
      00239D 24 20            [12] 1176 	add	a, #_send_arp_request_arp_packet_10000_138
      00239F FD               [12] 1177 	mov	r5,a
      0023A0 EC               [12] 1178 	mov	a,r4
      0023A1 34 01            [12] 1179 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0023A3 FC               [12] 1180 	mov	r4,a
      0023A4 EE               [12] 1181 	mov	a,r6
      0023A5 24 18            [12] 1182 	add	a, #_send_arp_request_source_ip_10000_138
      0023A7 F5 82            [12] 1183 	mov	dpl,a
      0023A9 EF               [12] 1184 	mov	a,r7
      0023AA 34 01            [12] 1185 	addc	a, #(_send_arp_request_source_ip_10000_138 >> 8)
      0023AC F5 83            [12] 1186 	mov	dph,a
      0023AE E0               [24] 1187 	movx	a,@dptr
      0023AF 8D 82            [24] 1188 	mov	dpl,r5
      0023B1 8C 83            [24] 1189 	mov	dph,r4
      0023B3 F0               [24] 1190 	movx	@dptr,a
                                   1191 ;	Eth.c:152: for (int i = 0; i < 4; i++) {
      0023B4 0E               [12] 1192 	inc	r6
      0023B5 BE 00 CF         [24] 1193 	cjne	r6,#0x00,00121$
      0023B8 0F               [12] 1194 	inc	r7
      0023B9 80 CC            [24] 1195 	sjmp	00121$
      0023BB                       1196 00103$:
                                   1197 ;	Eth.c:157: for (int i = 0; i < 6; i++) {
      0023BB 7F 00            [12] 1198 	mov	r7,#0x00
      0023BD                       1199 00124$:
      0023BD BF 06 00         [24] 1200 	cjne	r7,#0x06,00215$
      0023C0                       1201 00215$:
      0023C0 50 19            [24] 1202 	jnc	00104$
                                   1203 ;	Eth.c:158: arp_packet[33 + i] = 0x00;
      0023C2 8F 06            [24] 1204 	mov	ar6,r7
      0023C4 74 21            [12] 1205 	mov	a,#0x21
      0023C6 2E               [12] 1206 	add	a, r6
      0023C7 FE               [12] 1207 	mov	r6,a
      0023C8 33               [12] 1208 	rlc	a
      0023C9 95 E0            [12] 1209 	subb	a,acc
      0023CB FD               [12] 1210 	mov	r5,a
      0023CC EE               [12] 1211 	mov	a,r6
      0023CD 24 20            [12] 1212 	add	a, #_send_arp_request_arp_packet_10000_138
      0023CF F5 82            [12] 1213 	mov	dpl,a
      0023D1 ED               [12] 1214 	mov	a,r5
      0023D2 34 01            [12] 1215 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0023D4 F5 83            [12] 1216 	mov	dph,a
      0023D6 E4               [12] 1217 	clr	a
      0023D7 F0               [24] 1218 	movx	@dptr,a
                                   1219 ;	Eth.c:157: for (int i = 0; i < 6; i++) {
      0023D8 0F               [12] 1220 	inc	r7
      0023D9 80 E2            [24] 1221 	sjmp	00124$
      0023DB                       1222 00104$:
                                   1223 ;	Eth.c:162: for (int i = 0; i < 4; i++) {
      0023DB 7E 00            [12] 1224 	mov	r6,#0x00
      0023DD 7F 00            [12] 1225 	mov	r7,#0x00
      0023DF                       1226 00127$:
      0023DF C3               [12] 1227 	clr	c
      0023E0 EE               [12] 1228 	mov	a,r6
      0023E1 94 04            [12] 1229 	subb	a,#0x04
      0023E3 EF               [12] 1230 	mov	a,r7
      0023E4 64 80            [12] 1231 	xrl	a,#0x80
      0023E6 94 80            [12] 1232 	subb	a,#0x80
      0023E8 50 29            [24] 1233 	jnc	00105$
                                   1234 ;	Eth.c:163: arp_packet[39 + i] = target_ip[i];
      0023EA 8E 05            [24] 1235 	mov	ar5,r6
      0023EC 74 27            [12] 1236 	mov	a,#0x27
      0023EE 2D               [12] 1237 	add	a, r5
      0023EF FD               [12] 1238 	mov	r5,a
      0023F0 33               [12] 1239 	rlc	a
      0023F1 95 E0            [12] 1240 	subb	a,acc
      0023F3 FC               [12] 1241 	mov	r4,a
      0023F4 ED               [12] 1242 	mov	a,r5
      0023F5 24 20            [12] 1243 	add	a, #_send_arp_request_arp_packet_10000_138
      0023F7 FD               [12] 1244 	mov	r5,a
      0023F8 EC               [12] 1245 	mov	a,r4
      0023F9 34 01            [12] 1246 	addc	a, #(_send_arp_request_arp_packet_10000_138 >> 8)
      0023FB FC               [12] 1247 	mov	r4,a
      0023FC EE               [12] 1248 	mov	a,r6
      0023FD 24 1C            [12] 1249 	add	a, #_send_arp_request_target_ip_10000_138
      0023FF F5 82            [12] 1250 	mov	dpl,a
      002401 EF               [12] 1251 	mov	a,r7
      002402 34 01            [12] 1252 	addc	a, #(_send_arp_request_target_ip_10000_138 >> 8)
      002404 F5 83            [12] 1253 	mov	dph,a
      002406 E0               [24] 1254 	movx	a,@dptr
      002407 8D 82            [24] 1255 	mov	dpl,r5
      002409 8C 83            [24] 1256 	mov	dph,r4
      00240B F0               [24] 1257 	movx	@dptr,a
                                   1258 ;	Eth.c:162: for (int i = 0; i < 4; i++) {
      00240C 0E               [12] 1259 	inc	r6
      00240D BE 00 CF         [24] 1260 	cjne	r6,#0x00,00127$
      002410 0F               [12] 1261 	inc	r7
      002411 80 CC            [24] 1262 	sjmp	00127$
      002413                       1263 00105$:
                                   1264 ;	Eth.c:176: spi_buffer_write(frame_size, start_address, arp_packet);
      002413 90 03 9C         [24] 1265 	mov	dptr,#_spi_buffer_write_PARM_2
      002416 E4               [12] 1266 	clr	a
      002417 F0               [24] 1267 	movx	@dptr,a
      002418 74 0C            [12] 1268 	mov	a,#0x0c
      00241A A3               [24] 1269 	inc	dptr
      00241B F0               [24] 1270 	movx	@dptr,a
      00241C 90 03 9E         [24] 1271 	mov	dptr,#_spi_buffer_write_PARM_3
      00241F 74 20            [12] 1272 	mov	a,#_send_arp_request_arp_packet_10000_138
      002421 F0               [24] 1273 	movx	@dptr,a
      002422 74 01            [12] 1274 	mov	a,#(_send_arp_request_arp_packet_10000_138 >> 8)
      002424 A3               [24] 1275 	inc	dptr
      002425 F0               [24] 1276 	movx	@dptr,a
      002426 E4               [12] 1277 	clr	a
      002427 A3               [24] 1278 	inc	dptr
      002428 F0               [24] 1279 	movx	@dptr,a
      002429 90 00 2C         [24] 1280 	mov	dptr,#0x002c
      00242C 12 3E 14         [24] 1281 	lcall	_spi_buffer_write
                                   1282 ;	Eth.c:179: enc28j60_set_transmit_pointers(start_address, end_address);
      00242F 90 01 06         [24] 1283 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002432 74 2B            [12] 1284 	mov	a,#0x2b
      002434 F0               [24] 1285 	movx	@dptr,a
      002435 74 0C            [12] 1286 	mov	a,#0x0c
      002437 A3               [24] 1287 	inc	dptr
      002438 F0               [24] 1288 	movx	@dptr,a
      002439 90 0C 00         [24] 1289 	mov	dptr,#0x0c00
      00243C 12 21 4E         [24] 1290 	lcall	_enc28j60_set_transmit_pointers
                                   1291 ;	Eth.c:183: enc28j60_start_transmission();
      00243F 12 21 2D         [24] 1292 	lcall	_enc28j60_start_transmission
                                   1293 ;	Eth.c:186: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      002442 90 01 F4         [24] 1294 	mov	dptr,#0x01f4
      002445 12 21 C5         [24] 1295 	lcall	_wait_for_transmission_complete
      002448 E5 82            [12] 1296 	mov	a, dpl
      00244A 60 33            [24] 1297 	jz	00112$
                                   1298 ;	Eth.c:188: if (enc28j60_transmission_successful()) {
      00244C 12 22 28         [24] 1299 	lcall	_enc28j60_transmission_successful
      00244F E5 82            [12] 1300 	mov	a, dpl
      002451 60 16            [24] 1301 	jz	00109$
                                   1302 ;	Eth.c:189: printf("ARP request sent successfully.\n\r");
      002453 74 93            [12] 1303 	mov	a,#___str_1
      002455 C0 E0            [24] 1304 	push	acc
      002457 74 6E            [12] 1305 	mov	a,#(___str_1 >> 8)
      002459 C0 E0            [24] 1306 	push	acc
      00245B 74 80            [12] 1307 	mov	a,#0x80
      00245D C0 E0            [24] 1308 	push	acc
      00245F 12 64 16         [24] 1309 	lcall	_printf
      002462 15 81            [12] 1310 	dec	sp
      002464 15 81            [12] 1311 	dec	sp
      002466 15 81            [12] 1312 	dec	sp
      002468 22               [24] 1313 	ret
      002469                       1314 00109$:
                                   1315 ;	Eth.c:191: printf("ARP transmission failed. Check error flags.\n\r");
      002469 74 B4            [12] 1316 	mov	a,#___str_2
      00246B C0 E0            [24] 1317 	push	acc
      00246D 74 6E            [12] 1318 	mov	a,#(___str_2 >> 8)
      00246F C0 E0            [24] 1319 	push	acc
      002471 74 80            [12] 1320 	mov	a,#0x80
      002473 C0 E0            [24] 1321 	push	acc
      002475 12 64 16         [24] 1322 	lcall	_printf
      002478 15 81            [12] 1323 	dec	sp
      00247A 15 81            [12] 1324 	dec	sp
      00247C 15 81            [12] 1325 	dec	sp
      00247E 22               [24] 1326 	ret
      00247F                       1327 00112$:
                                   1328 ;	Eth.c:194: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      00247F 74 E2            [12] 1329 	mov	a,#___str_3
      002481 C0 E0            [24] 1330 	push	acc
      002483 74 6E            [12] 1331 	mov	a,#(___str_3 >> 8)
      002485 C0 E0            [24] 1332 	push	acc
      002487 74 80            [12] 1333 	mov	a,#0x80
      002489 C0 E0            [24] 1334 	push	acc
      00248B 12 64 16         [24] 1335 	lcall	_printf
      00248E 15 81            [12] 1336 	dec	sp
      002490 15 81            [12] 1337 	dec	sp
      002492 15 81            [12] 1338 	dec	sp
                                   1339 ;	Eth.c:196: }
      002494 22               [24] 1340 	ret
                                   1341 ;------------------------------------------------------------
                                   1342 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                   1343 ;------------------------------------------------------------
                                   1344 ;i                         Allocated with name '_external_interrupt0_isr_i_10000_157'
                                   1345 ;------------------------------------------------------------
                                   1346 ;	Eth.c:198: void external_interrupt0_isr(void) __interrupt (0)
                                   1347 ;	-----------------------------------------
                                   1348 ;	 function external_interrupt0_isr
                                   1349 ;	-----------------------------------------
      002495                       1350 _external_interrupt0_isr:
      002495 C0 21            [24] 1351 	push	bits
      002497 C0 E0            [24] 1352 	push	acc
      002499 C0 F0            [24] 1353 	push	b
      00249B C0 82            [24] 1354 	push	dpl
      00249D C0 83            [24] 1355 	push	dph
      00249F C0 07            [24] 1356 	push	(0+7)
      0024A1 C0 06            [24] 1357 	push	(0+6)
      0024A3 C0 05            [24] 1358 	push	(0+5)
      0024A5 C0 04            [24] 1359 	push	(0+4)
      0024A7 C0 03            [24] 1360 	push	(0+3)
      0024A9 C0 02            [24] 1361 	push	(0+2)
      0024AB C0 01            [24] 1362 	push	(0+1)
      0024AD C0 00            [24] 1363 	push	(0+0)
      0024AF C0 D0            [24] 1364 	push	psw
      0024B1 75 D0 00         [24] 1365 	mov	psw,#0x00
                                   1366 ;	Eth.c:202: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
      0024B4 74 25            [12] 1367 	mov	a,#___str_4
      0024B6 C0 E0            [24] 1368 	push	acc
      0024B8 74 6F            [12] 1369 	mov	a,#(___str_4 >> 8)
      0024BA C0 E0            [24] 1370 	push	acc
      0024BC 74 80            [12] 1371 	mov	a,#0x80
      0024BE C0 E0            [24] 1372 	push	acc
      0024C0 12 64 16         [24] 1373 	lcall	_printf
      0024C3 15 81            [12] 1374 	dec	sp
      0024C5 15 81            [12] 1375 	dec	sp
      0024C7 15 81            [12] 1376 	dec	sp
                                   1377 ;	Eth.c:217: i++;
      0024C9 90 01 4B         [24] 1378 	mov	dptr,#_external_interrupt0_isr_i_10000_157
      0024CC E0               [24] 1379 	movx	a,@dptr
      0024CD 24 01            [12] 1380 	add	a, #0x01
      0024CF F0               [24] 1381 	movx	@dptr,a
      0024D0 A3               [24] 1382 	inc	dptr
      0024D1 E0               [24] 1383 	movx	a,@dptr
      0024D2 34 00            [12] 1384 	addc	a, #0x00
      0024D4 F0               [24] 1385 	movx	@dptr,a
                                   1386 ;	Eth.c:218: }
      0024D5 D0 D0            [24] 1387 	pop	psw
      0024D7 D0 00            [24] 1388 	pop	(0+0)
      0024D9 D0 01            [24] 1389 	pop	(0+1)
      0024DB D0 02            [24] 1390 	pop	(0+2)
      0024DD D0 03            [24] 1391 	pop	(0+3)
      0024DF D0 04            [24] 1392 	pop	(0+4)
      0024E1 D0 05            [24] 1393 	pop	(0+5)
      0024E3 D0 06            [24] 1394 	pop	(0+6)
      0024E5 D0 07            [24] 1395 	pop	(0+7)
      0024E7 D0 83            [24] 1396 	pop	dph
      0024E9 D0 82            [24] 1397 	pop	dpl
      0024EB D0 F0            [24] 1398 	pop	b
      0024ED D0 E0            [24] 1399 	pop	acc
      0024EF D0 21            [24] 1400 	pop	bits
      0024F1 32               [24] 1401 	reti
                                   1402 ;------------------------------------------------------------
                                   1403 ;Allocation info for local variables in function 'enc_buffer_init'
                                   1404 ;------------------------------------------------------------
                                   1405 ;end_address               Allocated with name '_enc_buffer_init_PARM_2'
                                   1406 ;start_address             Allocated with name '_enc_buffer_init_start_address_10000_159'
                                   1407 ;------------------------------------------------------------
                                   1408 ;	Eth.c:221: void enc_buffer_init(uint16_t start_address, uint16_t end_address) {
                                   1409 ;	-----------------------------------------
                                   1410 ;	 function enc_buffer_init
                                   1411 ;	-----------------------------------------
      0024F2                       1412 _enc_buffer_init:
      0024F2 AF 83            [24] 1413 	mov	r7,dph
      0024F4 E5 82            [12] 1414 	mov	a,dpl
      0024F6 90 01 4F         [24] 1415 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      0024F9 F0               [24] 1416 	movx	@dptr,a
      0024FA EF               [12] 1417 	mov	a,r7
      0024FB A3               [24] 1418 	inc	dptr
      0024FC F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	Eth.c:223: if (start_address > 0x1FFF || end_address > 0x1FFF) {
      0024FD 90 01 4F         [24] 1421 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      002500 E0               [24] 1422 	movx	a,@dptr
      002501 FE               [12] 1423 	mov	r6,a
      002502 A3               [24] 1424 	inc	dptr
      002503 E0               [24] 1425 	movx	a,@dptr
      002504 FF               [12] 1426 	mov	r7,a
      002505 C3               [12] 1427 	clr	c
      002506 74 FF            [12] 1428 	mov	a,#0xff
      002508 9E               [12] 1429 	subb	a,r6
      002509 74 1F            [12] 1430 	mov	a,#0x1f
      00250B 9F               [12] 1431 	subb	a,r7
      00250C 40 15            [24] 1432 	jc	00101$
      00250E 90 01 4D         [24] 1433 	mov	dptr,#_enc_buffer_init_PARM_2
      002511 E0               [24] 1434 	movx	a,@dptr
      002512 FC               [12] 1435 	mov	r4,a
      002513 A3               [24] 1436 	inc	dptr
      002514 E0               [24] 1437 	movx	a,@dptr
      002515 FD               [12] 1438 	mov	r5,a
      002516 8C 02            [24] 1439 	mov	ar2,r4
      002518 8D 03            [24] 1440 	mov	ar3,r5
      00251A C3               [12] 1441 	clr	c
      00251B 74 FF            [12] 1442 	mov	a,#0xff
      00251D 9A               [12] 1443 	subb	a,r2
      00251E 74 1F            [12] 1444 	mov	a,#0x1f
      002520 9B               [12] 1445 	subb	a,r3
      002521 50 2A            [24] 1446 	jnc	00102$
      002523                       1447 00101$:
                                   1448 ;	Eth.c:224: printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
      002523 90 01 4D         [24] 1449 	mov	dptr,#_enc_buffer_init_PARM_2
      002526 E0               [24] 1450 	movx	a,@dptr
      002527 C0 E0            [24] 1451 	push	acc
      002529 A3               [24] 1452 	inc	dptr
      00252A E0               [24] 1453 	movx	a,@dptr
      00252B C0 E0            [24] 1454 	push	acc
      00252D 90 01 4F         [24] 1455 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      002530 E0               [24] 1456 	movx	a,@dptr
      002531 C0 E0            [24] 1457 	push	acc
      002533 A3               [24] 1458 	inc	dptr
      002534 E0               [24] 1459 	movx	a,@dptr
      002535 C0 E0            [24] 1460 	push	acc
      002537 74 4C            [12] 1461 	mov	a,#___str_5
      002539 C0 E0            [24] 1462 	push	acc
      00253B 74 6F            [12] 1463 	mov	a,#(___str_5 >> 8)
      00253D C0 E0            [24] 1464 	push	acc
      00253F 74 80            [12] 1465 	mov	a,#0x80
      002541 C0 E0            [24] 1466 	push	acc
      002543 12 64 16         [24] 1467 	lcall	_printf
      002546 E5 81            [12] 1468 	mov	a,sp
      002548 24 F9            [12] 1469 	add	a,#0xf9
      00254A F5 81            [12] 1470 	mov	sp,a
                                   1471 ;	Eth.c:226: return;
      00254C 22               [24] 1472 	ret
      00254D                       1473 00102$:
                                   1474 ;	Eth.c:229: start_address &= ~1;  // Align to even address
      00254D 53 06 FE         [24] 1475 	anl	ar6,#0xfe
      002550 90 01 4F         [24] 1476 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      002553 EE               [12] 1477 	mov	a,r6
      002554 F0               [24] 1478 	movx	@dptr,a
      002555 EF               [12] 1479 	mov	a,r7
      002556 A3               [24] 1480 	inc	dptr
      002557 F0               [24] 1481 	movx	@dptr,a
                                   1482 ;	Eth.c:231: spi_control_write(0, 0x00, (uint8_t) (start_address & 0xFF)); // ERDPTL
      002558 90 01 4F         [24] 1483 	mov	dptr,#_enc_buffer_init_start_address_10000_159
      00255B E0               [24] 1484 	movx	a,@dptr
      00255C FE               [12] 1485 	mov	r6,a
      00255D A3               [24] 1486 	inc	dptr
      00255E E0               [24] 1487 	movx	a,@dptr
      00255F FF               [12] 1488 	mov	r7,a
      002560 8E 03            [24] 1489 	mov	ar3,r6
      002562 90 03 84         [24] 1490 	mov	dptr,#_spi_control_write_PARM_2
      002565 E4               [12] 1491 	clr	a
      002566 F0               [24] 1492 	movx	@dptr,a
      002567 90 03 85         [24] 1493 	mov	dptr,#_spi_control_write_PARM_3
      00256A EB               [12] 1494 	mov	a,r3
      00256B F0               [24] 1495 	movx	@dptr,a
      00256C 75 82 00         [24] 1496 	mov	dpl, #0x00
      00256F C0 07            [24] 1497 	push	ar7
      002571 C0 06            [24] 1498 	push	ar6
      002573 C0 05            [24] 1499 	push	ar5
      002575 C0 04            [24] 1500 	push	ar4
      002577 C0 03            [24] 1501 	push	ar3
      002579 12 39 7A         [24] 1502 	lcall	_spi_control_write
      00257C D0 03            [24] 1503 	pop	ar3
      00257E D0 04            [24] 1504 	pop	ar4
      002580 D0 05            [24] 1505 	pop	ar5
      002582 D0 06            [24] 1506 	pop	ar6
      002584 D0 07            [24] 1507 	pop	ar7
                                   1508 ;	Eth.c:232: spi_control_write(0, 0x01, (uint8_t) (start_address >> 8)); // ERDPTH
      002586 8F 02            [24] 1509 	mov	ar2,r7
      002588 90 03 84         [24] 1510 	mov	dptr,#_spi_control_write_PARM_2
      00258B 74 01            [12] 1511 	mov	a,#0x01
      00258D F0               [24] 1512 	movx	@dptr,a
      00258E 90 03 85         [24] 1513 	mov	dptr,#_spi_control_write_PARM_3
      002591 EA               [12] 1514 	mov	a,r2
      002592 F0               [24] 1515 	movx	@dptr,a
      002593 75 82 00         [24] 1516 	mov	dpl, #0x00
      002596 C0 07            [24] 1517 	push	ar7
      002598 C0 06            [24] 1518 	push	ar6
      00259A C0 05            [24] 1519 	push	ar5
      00259C C0 04            [24] 1520 	push	ar4
      00259E C0 03            [24] 1521 	push	ar3
      0025A0 C0 02            [24] 1522 	push	ar2
      0025A2 12 39 7A         [24] 1523 	lcall	_spi_control_write
      0025A5 D0 02            [24] 1524 	pop	ar2
      0025A7 D0 03            [24] 1525 	pop	ar3
      0025A9 D0 04            [24] 1526 	pop	ar4
      0025AB D0 05            [24] 1527 	pop	ar5
      0025AD D0 06            [24] 1528 	pop	ar6
      0025AF D0 07            [24] 1529 	pop	ar7
                                   1530 ;	Eth.c:233: spi_control_write(0, 0x08, (uint8_t) (start_address & 0xFF)); // ERXSTL
      0025B1 90 03 84         [24] 1531 	mov	dptr,#_spi_control_write_PARM_2
      0025B4 74 08            [12] 1532 	mov	a,#0x08
      0025B6 F0               [24] 1533 	movx	@dptr,a
      0025B7 90 03 85         [24] 1534 	mov	dptr,#_spi_control_write_PARM_3
      0025BA EB               [12] 1535 	mov	a,r3
      0025BB F0               [24] 1536 	movx	@dptr,a
      0025BC 75 82 00         [24] 1537 	mov	dpl, #0x00
      0025BF C0 07            [24] 1538 	push	ar7
      0025C1 C0 06            [24] 1539 	push	ar6
      0025C3 C0 05            [24] 1540 	push	ar5
      0025C5 C0 04            [24] 1541 	push	ar4
      0025C7 C0 03            [24] 1542 	push	ar3
      0025C9 C0 02            [24] 1543 	push	ar2
      0025CB 12 39 7A         [24] 1544 	lcall	_spi_control_write
      0025CE D0 02            [24] 1545 	pop	ar2
      0025D0 D0 03            [24] 1546 	pop	ar3
      0025D2 D0 04            [24] 1547 	pop	ar4
      0025D4 D0 05            [24] 1548 	pop	ar5
      0025D6 D0 06            [24] 1549 	pop	ar6
      0025D8 D0 07            [24] 1550 	pop	ar7
                                   1551 ;	Eth.c:234: spi_control_write(0, 0x09, (uint8_t) (start_address >> 8)); // ERXSTH
      0025DA 90 03 84         [24] 1552 	mov	dptr,#_spi_control_write_PARM_2
      0025DD 74 09            [12] 1553 	mov	a,#0x09
      0025DF F0               [24] 1554 	movx	@dptr,a
      0025E0 90 03 85         [24] 1555 	mov	dptr,#_spi_control_write_PARM_3
      0025E3 EA               [12] 1556 	mov	a,r2
      0025E4 F0               [24] 1557 	movx	@dptr,a
      0025E5 75 82 00         [24] 1558 	mov	dpl, #0x00
      0025E8 C0 07            [24] 1559 	push	ar7
      0025EA C0 06            [24] 1560 	push	ar6
      0025EC C0 05            [24] 1561 	push	ar5
      0025EE C0 04            [24] 1562 	push	ar4
      0025F0 C0 03            [24] 1563 	push	ar3
      0025F2 C0 02            [24] 1564 	push	ar2
      0025F4 12 39 7A         [24] 1565 	lcall	_spi_control_write
      0025F7 D0 02            [24] 1566 	pop	ar2
      0025F9 D0 03            [24] 1567 	pop	ar3
      0025FB D0 04            [24] 1568 	pop	ar4
      0025FD D0 05            [24] 1569 	pop	ar5
      0025FF D0 06            [24] 1570 	pop	ar6
      002601 D0 07            [24] 1571 	pop	ar7
                                   1572 ;	Eth.c:235: spi_control_write(0, 0x0A, (uint8_t) (end_address & 0xFF)); // ERXNDL
      002603 8C 01            [24] 1573 	mov	ar1,r4
      002605 90 03 84         [24] 1574 	mov	dptr,#_spi_control_write_PARM_2
      002608 74 0A            [12] 1575 	mov	a,#0x0a
      00260A F0               [24] 1576 	movx	@dptr,a
      00260B 90 03 85         [24] 1577 	mov	dptr,#_spi_control_write_PARM_3
      00260E E9               [12] 1578 	mov	a,r1
      00260F F0               [24] 1579 	movx	@dptr,a
      002610 75 82 00         [24] 1580 	mov	dpl, #0x00
      002613 C0 07            [24] 1581 	push	ar7
      002615 C0 06            [24] 1582 	push	ar6
      002617 C0 05            [24] 1583 	push	ar5
      002619 C0 04            [24] 1584 	push	ar4
      00261B C0 03            [24] 1585 	push	ar3
      00261D C0 02            [24] 1586 	push	ar2
      00261F 12 39 7A         [24] 1587 	lcall	_spi_control_write
      002622 D0 02            [24] 1588 	pop	ar2
      002624 D0 03            [24] 1589 	pop	ar3
      002626 D0 04            [24] 1590 	pop	ar4
      002628 D0 05            [24] 1591 	pop	ar5
      00262A D0 06            [24] 1592 	pop	ar6
      00262C D0 07            [24] 1593 	pop	ar7
                                   1594 ;	Eth.c:236: spi_control_write(0, 0x0B, (uint8_t) (end_address >> 8)); // ERXNDH
      00262E 8D 01            [24] 1595 	mov	ar1,r5
      002630 90 03 84         [24] 1596 	mov	dptr,#_spi_control_write_PARM_2
      002633 74 0B            [12] 1597 	mov	a,#0x0b
      002635 F0               [24] 1598 	movx	@dptr,a
      002636 90 03 85         [24] 1599 	mov	dptr,#_spi_control_write_PARM_3
      002639 E9               [12] 1600 	mov	a,r1
      00263A F0               [24] 1601 	movx	@dptr,a
      00263B 75 82 00         [24] 1602 	mov	dpl, #0x00
      00263E C0 07            [24] 1603 	push	ar7
      002640 C0 06            [24] 1604 	push	ar6
      002642 C0 05            [24] 1605 	push	ar5
      002644 C0 04            [24] 1606 	push	ar4
      002646 C0 03            [24] 1607 	push	ar3
      002648 C0 02            [24] 1608 	push	ar2
      00264A 12 39 7A         [24] 1609 	lcall	_spi_control_write
      00264D D0 02            [24] 1610 	pop	ar2
      00264F D0 03            [24] 1611 	pop	ar3
      002651 D0 04            [24] 1612 	pop	ar4
      002653 D0 05            [24] 1613 	pop	ar5
      002655 D0 06            [24] 1614 	pop	ar6
      002657 D0 07            [24] 1615 	pop	ar7
                                   1616 ;	Eth.c:237: spi_control_write(0, 0x0C, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
      002659 90 03 84         [24] 1617 	mov	dptr,#_spi_control_write_PARM_2
      00265C 74 0C            [12] 1618 	mov	a,#0x0c
      00265E F0               [24] 1619 	movx	@dptr,a
      00265F 90 03 85         [24] 1620 	mov	dptr,#_spi_control_write_PARM_3
      002662 EB               [12] 1621 	mov	a,r3
      002663 F0               [24] 1622 	movx	@dptr,a
      002664 75 82 00         [24] 1623 	mov	dpl, #0x00
      002667 C0 07            [24] 1624 	push	ar7
      002669 C0 06            [24] 1625 	push	ar6
      00266B C0 05            [24] 1626 	push	ar5
      00266D C0 04            [24] 1627 	push	ar4
      00266F C0 02            [24] 1628 	push	ar2
      002671 12 39 7A         [24] 1629 	lcall	_spi_control_write
      002674 D0 02            [24] 1630 	pop	ar2
      002676 D0 04            [24] 1631 	pop	ar4
      002678 D0 05            [24] 1632 	pop	ar5
      00267A D0 06            [24] 1633 	pop	ar6
      00267C D0 07            [24] 1634 	pop	ar7
                                   1635 ;	Eth.c:238: spi_control_write(0, 0x0D, (uint8_t) (start_address >> 8)); // ERXRDPTH
      00267E 90 03 84         [24] 1636 	mov	dptr,#_spi_control_write_PARM_2
      002681 74 0D            [12] 1637 	mov	a,#0x0d
      002683 F0               [24] 1638 	movx	@dptr,a
      002684 90 03 85         [24] 1639 	mov	dptr,#_spi_control_write_PARM_3
      002687 EA               [12] 1640 	mov	a,r2
      002688 F0               [24] 1641 	movx	@dptr,a
      002689 75 82 00         [24] 1642 	mov	dpl, #0x00
      00268C C0 07            [24] 1643 	push	ar7
      00268E C0 06            [24] 1644 	push	ar6
      002690 C0 05            [24] 1645 	push	ar5
      002692 C0 04            [24] 1646 	push	ar4
      002694 12 39 7A         [24] 1647 	lcall	_spi_control_write
      002697 D0 04            [24] 1648 	pop	ar4
      002699 D0 05            [24] 1649 	pop	ar5
      00269B D0 06            [24] 1650 	pop	ar6
      00269D D0 07            [24] 1651 	pop	ar7
                                   1652 ;	Eth.c:239: printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
      00269F C0 04            [24] 1653 	push	ar4
      0026A1 C0 05            [24] 1654 	push	ar5
      0026A3 C0 06            [24] 1655 	push	ar6
      0026A5 C0 07            [24] 1656 	push	ar7
      0026A7 74 7D            [12] 1657 	mov	a,#___str_6
      0026A9 C0 E0            [24] 1658 	push	acc
      0026AB 74 6F            [12] 1659 	mov	a,#(___str_6 >> 8)
      0026AD C0 E0            [24] 1660 	push	acc
      0026AF 74 80            [12] 1661 	mov	a,#0x80
      0026B1 C0 E0            [24] 1662 	push	acc
      0026B3 12 64 16         [24] 1663 	lcall	_printf
      0026B6 E5 81            [12] 1664 	mov	a,sp
      0026B8 24 F9            [12] 1665 	add	a,#0xf9
      0026BA F5 81            [12] 1666 	mov	sp,a
                                   1667 ;	Eth.c:241: }
      0026BC 22               [24] 1668 	ret
                                   1669 ;------------------------------------------------------------
                                   1670 ;Allocation info for local variables in function 'enc_init'
                                   1671 ;------------------------------------------------------------
                                   1672 ;sloc0                     Allocated with name '_enc_init_sloc0_1_0'
                                   1673 ;sloc1                     Allocated with name '_enc_init_sloc1_1_0'
                                   1674 ;sloc2                     Allocated with name '_enc_init_sloc2_1_0'
                                   1675 ;sloc3                     Allocated with name '_enc_init_sloc3_1_0'
                                   1676 ;mac                       Allocated with name '_enc_init_mac_10000_162'
                                   1677 ;rx_start                  Allocated with name '_enc_init_rx_start_10001_164'
                                   1678 ;rx_end                    Allocated with name '_enc_init_rx_end_10001_164'
                                   1679 ;tx_start                  Allocated with name '_enc_init_tx_start_10001_164'
                                   1680 ;tx_end                    Allocated with name '_enc_init_tx_end_10001_164'
                                   1681 ;read_macon1               Allocated with name '_enc_init_read_macon1_10002_165'
                                   1682 ;rev                       Allocated with name '_enc_init_rev_10003_166'
                                   1683 ;------------------------------------------------------------
                                   1684 ;	Eth.c:243: void enc_init(const uint8_t *mac)
                                   1685 ;	-----------------------------------------
                                   1686 ;	 function enc_init
                                   1687 ;	-----------------------------------------
      0026BD                       1688 _enc_init:
      0026BD AF F0            [24] 1689 	mov	r7,b
      0026BF AE 83            [24] 1690 	mov	r6,dph
      0026C1 E5 82            [12] 1691 	mov	a,dpl
      0026C3 90 01 51         [24] 1692 	mov	dptr,#_enc_init_mac_10000_162
      0026C6 F0               [24] 1693 	movx	@dptr,a
      0026C7 EE               [12] 1694 	mov	a,r6
      0026C8 A3               [24] 1695 	inc	dptr
      0026C9 F0               [24] 1696 	movx	@dptr,a
      0026CA EF               [12] 1697 	mov	a,r7
      0026CB A3               [24] 1698 	inc	dptr
      0026CC F0               [24] 1699 	movx	@dptr,a
                                   1700 ;	Eth.c:246: enc_reset();
      0026CD 12 39 C5         [24] 1701 	lcall	_enc_reset
                                   1702 ;	Eth.c:249: while (!(mac_spi_read(0x1D, 0) & 0x01))
      0026D0                       1703 00101$:
      0026D0 90 03 8D         [24] 1704 	mov	dptr,#_mac_spi_read_PARM_2
      0026D3 E4               [12] 1705 	clr	a
      0026D4 F0               [24] 1706 	movx	@dptr,a
      0026D5 75 82 1D         [24] 1707 	mov	dpl, #0x1d
      0026D8 12 3A 96         [24] 1708 	lcall	_mac_spi_read
      0026DB E5 82            [12] 1709 	mov	a, dpl
      0026DD 30 E0 F0         [24] 1710 	jnb	acc.0,00101$
                                   1711 ;	Eth.c:259: enc_buffer_init(rx_start, rx_end);
      0026E0 90 01 4D         [24] 1712 	mov	dptr,#_enc_buffer_init_PARM_2
      0026E3 74 FF            [12] 1713 	mov	a,#0xff
      0026E5 F0               [24] 1714 	movx	@dptr,a
      0026E6 74 0B            [12] 1715 	mov	a,#0x0b
      0026E8 A3               [24] 1716 	inc	dptr
      0026E9 F0               [24] 1717 	movx	@dptr,a
      0026EA 90 00 00         [24] 1718 	mov	dptr,#0x0000
      0026ED 12 24 F2         [24] 1719 	lcall	_enc_buffer_init
                                   1720 ;	Eth.c:261: spi_control_write(0, 0x04, (uint8_t) (tx_start & 0xFF)); // Low byte
      0026F0 90 03 84         [24] 1721 	mov	dptr,#_spi_control_write_PARM_2
      0026F3 74 04            [12] 1722 	mov	a,#0x04
      0026F5 F0               [24] 1723 	movx	@dptr,a
      0026F6 90 03 85         [24] 1724 	mov	dptr,#_spi_control_write_PARM_3
      0026F9 E4               [12] 1725 	clr	a
      0026FA F0               [24] 1726 	movx	@dptr,a
      0026FB 75 82 00         [24] 1727 	mov	dpl, #0x00
      0026FE 12 39 7A         [24] 1728 	lcall	_spi_control_write
                                   1729 ;	Eth.c:262: spi_control_write(0, 0x05, (uint8_t) ((tx_start >> 8) & 0xFF)); // High byte
      002701 90 03 84         [24] 1730 	mov	dptr,#_spi_control_write_PARM_2
      002704 74 05            [12] 1731 	mov	a,#0x05
      002706 F0               [24] 1732 	movx	@dptr,a
      002707 90 03 85         [24] 1733 	mov	dptr,#_spi_control_write_PARM_3
      00270A 74 0C            [12] 1734 	mov	a,#0x0c
      00270C F0               [24] 1735 	movx	@dptr,a
      00270D 75 82 00         [24] 1736 	mov	dpl, #0x00
      002710 12 39 7A         [24] 1737 	lcall	_spi_control_write
                                   1738 ;	Eth.c:265: spi_control_write(0, 0x06, (uint8_t) (tx_end & 0xFF)); // Low byte
      002713 90 03 84         [24] 1739 	mov	dptr,#_spi_control_write_PARM_2
      002716 74 06            [12] 1740 	mov	a,#0x06
      002718 F0               [24] 1741 	movx	@dptr,a
      002719 90 03 85         [24] 1742 	mov	dptr,#_spi_control_write_PARM_3
      00271C 74 FF            [12] 1743 	mov	a,#0xff
      00271E F0               [24] 1744 	movx	@dptr,a
      00271F 75 82 00         [24] 1745 	mov	dpl, #0x00
      002722 12 39 7A         [24] 1746 	lcall	_spi_control_write
                                   1747 ;	Eth.c:266: spi_control_write(0, 0x07, (uint8_t) ((tx_end >> 8) & 0xFF)); // High byte
      002725 90 03 84         [24] 1748 	mov	dptr,#_spi_control_write_PARM_2
      002728 74 07            [12] 1749 	mov	a,#0x07
      00272A F0               [24] 1750 	movx	@dptr,a
      00272B 90 03 85         [24] 1751 	mov	dptr,#_spi_control_write_PARM_3
      00272E 74 11            [12] 1752 	mov	a,#0x11
      002730 F0               [24] 1753 	movx	@dptr,a
      002731 75 82 00         [24] 1754 	mov	dpl, #0x00
      002734 12 39 7A         [24] 1755 	lcall	_spi_control_write
                                   1756 ;	Eth.c:268: spi_control_write(1, 0x18, 0xB1);// crcen,ucen,pcen,bcen
      002737 90 03 84         [24] 1757 	mov	dptr,#_spi_control_write_PARM_2
      00273A 74 18            [12] 1758 	mov	a,#0x18
      00273C F0               [24] 1759 	movx	@dptr,a
      00273D 90 03 85         [24] 1760 	mov	dptr,#_spi_control_write_PARM_3
      002740 74 B1            [12] 1761 	mov	a,#0xb1
      002742 F0               [24] 1762 	movx	@dptr,a
      002743 75 82 01         [24] 1763 	mov	dpl, #0x01
      002746 12 39 7A         [24] 1764 	lcall	_spi_control_write
                                   1765 ;	Eth.c:269: spi_control_write(1, 0x08, 0x3F); //pattern match
      002749 90 03 84         [24] 1766 	mov	dptr,#_spi_control_write_PARM_2
      00274C 74 08            [12] 1767 	mov	a,#0x08
      00274E F0               [24] 1768 	movx	@dptr,a
      00274F 90 03 85         [24] 1769 	mov	dptr,#_spi_control_write_PARM_3
      002752 74 3F            [12] 1770 	mov	a,#0x3f
      002754 F0               [24] 1771 	movx	@dptr,a
      002755 75 82 01         [24] 1772 	mov	dpl, #0x01
      002758 12 39 7A         [24] 1773 	lcall	_spi_control_write
                                   1774 ;	Eth.c:270: spi_control_write(1, 0x09, 0x30); //pattern match
      00275B 90 03 84         [24] 1775 	mov	dptr,#_spi_control_write_PARM_2
      00275E 74 09            [12] 1776 	mov	a,#0x09
      002760 F0               [24] 1777 	movx	@dptr,a
      002761 90 03 85         [24] 1778 	mov	dptr,#_spi_control_write_PARM_3
      002764 74 30            [12] 1779 	mov	a,#0x30
      002766 F0               [24] 1780 	movx	@dptr,a
      002767 75 82 01         [24] 1781 	mov	dpl, #0x01
      00276A 12 39 7A         [24] 1782 	lcall	_spi_control_write
                                   1783 ;	Eth.c:271: spi_control_write(1, 0x10, 0xF9); //pattern match
      00276D 90 03 84         [24] 1784 	mov	dptr,#_spi_control_write_PARM_2
      002770 74 10            [12] 1785 	mov	a,#0x10
      002772 F0               [24] 1786 	movx	@dptr,a
      002773 90 03 85         [24] 1787 	mov	dptr,#_spi_control_write_PARM_3
      002776 74 F9            [12] 1788 	mov	a,#0xf9
      002778 F0               [24] 1789 	movx	@dptr,a
      002779 75 82 01         [24] 1790 	mov	dpl, #0x01
      00277C 12 39 7A         [24] 1791 	lcall	_spi_control_write
                                   1792 ;	Eth.c:272: spi_control_write(1, 0x11, 0xF7); //pattern match
      00277F 90 03 84         [24] 1793 	mov	dptr,#_spi_control_write_PARM_2
      002782 74 11            [12] 1794 	mov	a,#0x11
      002784 F0               [24] 1795 	movx	@dptr,a
      002785 90 03 85         [24] 1796 	mov	dptr,#_spi_control_write_PARM_3
      002788 74 F7            [12] 1797 	mov	a,#0xf7
      00278A F0               [24] 1798 	movx	@dptr,a
      00278B 75 82 01         [24] 1799 	mov	dpl, #0x01
      00278E 12 39 7A         [24] 1800 	lcall	_spi_control_write
                                   1801 ;	Eth.c:274: uint8_t read_macon1 = mac_spi_read(0x00, 2); //mac enable for reception
      002791 90 03 8D         [24] 1802 	mov	dptr,#_mac_spi_read_PARM_2
      002794 74 02            [12] 1803 	mov	a,#0x02
      002796 F0               [24] 1804 	movx	@dptr,a
      002797 75 82 00         [24] 1805 	mov	dpl, #0x00
      00279A 12 3A 96         [24] 1806 	lcall	_mac_spi_read
      00279D E5 82            [12] 1807 	mov	a, dpl
                                   1808 ;	Eth.c:275: spi_control_write   (2, 0x00, (read_macon1 | (1 << 0))); //mac enable for reception
      00279F 44 01            [12] 1809 	orl	a,#0x01
      0027A1 FF               [12] 1810 	mov	r7,a
      0027A2 90 03 84         [24] 1811 	mov	dptr,#_spi_control_write_PARM_2
      0027A5 E4               [12] 1812 	clr	a
      0027A6 F0               [24] 1813 	movx	@dptr,a
      0027A7 90 03 85         [24] 1814 	mov	dptr,#_spi_control_write_PARM_3
      0027AA EF               [12] 1815 	mov	a,r7
      0027AB F0               [24] 1816 	movx	@dptr,a
      0027AC 75 82 02         [24] 1817 	mov	dpl, #0x02
      0027AF 12 39 7A         [24] 1818 	lcall	_spi_control_write
                                   1819 ;	Eth.c:277: spi_control_write(2, 0x02, 0x32); //MACON3_PADCFG0|MACON3_TXCRCEN|MACON3_FRMLNEN)
      0027B2 90 03 84         [24] 1820 	mov	dptr,#_spi_control_write_PARM_2
      0027B5 74 02            [12] 1821 	mov	a,#0x02
      0027B7 F0               [24] 1822 	movx	@dptr,a
      0027B8 90 03 85         [24] 1823 	mov	dptr,#_spi_control_write_PARM_3
      0027BB 74 32            [12] 1824 	mov	a,#0x32
      0027BD F0               [24] 1825 	movx	@dptr,a
      0027BE 75 82 02         [24] 1826 	mov	dpl, #0x02
      0027C1 12 39 7A         [24] 1827 	lcall	_spi_control_write
                                   1828 ;	Eth.c:281: spi_control_write(2, 0x06, 0x12); // MAIPGL: Non-back-to-back gap
      0027C4 90 03 84         [24] 1829 	mov	dptr,#_spi_control_write_PARM_2
      0027C7 74 06            [12] 1830 	mov	a,#0x06
      0027C9 F0               [24] 1831 	movx	@dptr,a
      0027CA 90 03 85         [24] 1832 	mov	dptr,#_spi_control_write_PARM_3
      0027CD 74 12            [12] 1833 	mov	a,#0x12
      0027CF F0               [24] 1834 	movx	@dptr,a
      0027D0 75 82 02         [24] 1835 	mov	dpl, #0x02
      0027D3 12 39 7A         [24] 1836 	lcall	_spi_control_write
                                   1837 ;	Eth.c:282: spi_control_write(2, 0x07, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)
      0027D6 90 03 84         [24] 1838 	mov	dptr,#_spi_control_write_PARM_2
      0027D9 74 07            [12] 1839 	mov	a,#0x07
      0027DB F0               [24] 1840 	movx	@dptr,a
      0027DC 90 03 85         [24] 1841 	mov	dptr,#_spi_control_write_PARM_3
      0027DF 74 0C            [12] 1842 	mov	a,#0x0c
      0027E1 F0               [24] 1843 	movx	@dptr,a
      0027E2 75 82 02         [24] 1844 	mov	dpl, #0x02
      0027E5 12 39 7A         [24] 1845 	lcall	_spi_control_write
                                   1846 ;	Eth.c:284: spi_control_write(2, 0x04, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
      0027E8 90 03 84         [24] 1847 	mov	dptr,#_spi_control_write_PARM_2
      0027EB 74 04            [12] 1848 	mov	a,#0x04
      0027ED F0               [24] 1849 	movx	@dptr,a
      0027EE 90 03 85         [24] 1850 	mov	dptr,#_spi_control_write_PARM_3
      0027F1 74 12            [12] 1851 	mov	a,#0x12
      0027F3 F0               [24] 1852 	movx	@dptr,a
      0027F4 75 82 02         [24] 1853 	mov	dpl, #0x02
      0027F7 12 39 7A         [24] 1854 	lcall	_spi_control_write
                                   1855 ;	Eth.c:286: spi_control_write(2, 0x03, 0x40); // MACON4: IEEE compliance00
      0027FA 90 03 84         [24] 1856 	mov	dptr,#_spi_control_write_PARM_2
      0027FD 74 03            [12] 1857 	mov	a,#0x03
      0027FF F0               [24] 1858 	movx	@dptr,a
      002800 90 03 85         [24] 1859 	mov	dptr,#_spi_control_write_PARM_3
      002803 74 40            [12] 1860 	mov	a,#0x40
      002805 F0               [24] 1861 	movx	@dptr,a
      002806 75 82 02         [24] 1862 	mov	dpl, #0x02
      002809 12 39 7A         [24] 1863 	lcall	_spi_control_write
                                   1864 ;	Eth.c:289: spi_control_write(2, 0x0A, 0xDC); // MAMXFLL
      00280C 90 03 84         [24] 1865 	mov	dptr,#_spi_control_write_PARM_2
      00280F 74 0A            [12] 1866 	mov	a,#0x0a
      002811 F0               [24] 1867 	movx	@dptr,a
      002812 90 03 85         [24] 1868 	mov	dptr,#_spi_control_write_PARM_3
      002815 74 DC            [12] 1869 	mov	a,#0xdc
      002817 F0               [24] 1870 	movx	@dptr,a
      002818 75 82 02         [24] 1871 	mov	dpl, #0x02
      00281B 12 39 7A         [24] 1872 	lcall	_spi_control_write
                                   1873 ;	Eth.c:290: spi_control_write(2, 0x0B, 0x05); // MAMXFLH
      00281E 90 03 84         [24] 1874 	mov	dptr,#_spi_control_write_PARM_2
      002821 74 0B            [12] 1875 	mov	a,#0x0b
      002823 F0               [24] 1876 	movx	@dptr,a
      002824 90 03 85         [24] 1877 	mov	dptr,#_spi_control_write_PARM_3
      002827 74 05            [12] 1878 	mov	a,#0x05
      002829 F0               [24] 1879 	movx	@dptr,a
      00282A 75 82 02         [24] 1880 	mov	dpl, #0x02
      00282D 12 39 7A         [24] 1881 	lcall	_spi_control_write
                                   1882 ;	Eth.c:293: spi_control_write(3, 0x01, mac[5]); // MAADR6
      002830 90 01 51         [24] 1883 	mov	dptr,#_enc_init_mac_10000_162
      002833 E0               [24] 1884 	movx	a,@dptr
      002834 FD               [12] 1885 	mov	r5,a
      002835 A3               [24] 1886 	inc	dptr
      002836 E0               [24] 1887 	movx	a,@dptr
      002837 FE               [12] 1888 	mov	r6,a
      002838 A3               [24] 1889 	inc	dptr
      002839 E0               [24] 1890 	movx	a,@dptr
      00283A FF               [12] 1891 	mov	r7,a
      00283B 74 05            [12] 1892 	mov	a,#0x05
      00283D 2D               [12] 1893 	add	a, r5
      00283E F5 08            [12] 1894 	mov	_enc_init_sloc0_1_0,a
      002840 E4               [12] 1895 	clr	a
      002841 3E               [12] 1896 	addc	a, r6
      002842 F5 09            [12] 1897 	mov	(_enc_init_sloc0_1_0 + 1),a
      002844 8F 0A            [24] 1898 	mov	(_enc_init_sloc0_1_0 + 2),r7
      002846 85 08 82         [24] 1899 	mov	dpl,_enc_init_sloc0_1_0
      002849 85 09 83         [24] 1900 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      00284C 85 0A F0         [24] 1901 	mov	b,(_enc_init_sloc0_1_0 + 2)
      00284F 12 6E 38         [24] 1902 	lcall	__gptrget
      002852 F9               [12] 1903 	mov	r1,a
      002853 90 03 84         [24] 1904 	mov	dptr,#_spi_control_write_PARM_2
      002856 74 01            [12] 1905 	mov	a,#0x01
      002858 F0               [24] 1906 	movx	@dptr,a
      002859 90 03 85         [24] 1907 	mov	dptr,#_spi_control_write_PARM_3
      00285C E9               [12] 1908 	mov	a,r1
      00285D F0               [24] 1909 	movx	@dptr,a
      00285E 75 82 03         [24] 1910 	mov	dpl, #0x03
      002861 C0 07            [24] 1911 	push	ar7
      002863 C0 06            [24] 1912 	push	ar6
      002865 C0 05            [24] 1913 	push	ar5
      002867 12 39 7A         [24] 1914 	lcall	_spi_control_write
      00286A D0 05            [24] 1915 	pop	ar5
      00286C D0 06            [24] 1916 	pop	ar6
      00286E D0 07            [24] 1917 	pop	ar7
                                   1918 ;	Eth.c:294: spi_control_write(3, 0x00, mac[4]); // MAADR5
      002870 74 04            [12] 1919 	mov	a,#0x04
      002872 2D               [12] 1920 	add	a, r5
      002873 F5 0B            [12] 1921 	mov	_enc_init_sloc1_1_0,a
      002875 E4               [12] 1922 	clr	a
      002876 3E               [12] 1923 	addc	a, r6
      002877 F5 0C            [12] 1924 	mov	(_enc_init_sloc1_1_0 + 1),a
      002879 8F 0D            [24] 1925 	mov	(_enc_init_sloc1_1_0 + 2),r7
      00287B 85 0B 82         [24] 1926 	mov	dpl,_enc_init_sloc1_1_0
      00287E 85 0C 83         [24] 1927 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      002881 85 0D F0         [24] 1928 	mov	b,(_enc_init_sloc1_1_0 + 2)
      002884 12 6E 38         [24] 1929 	lcall	__gptrget
      002887 FB               [12] 1930 	mov	r3,a
      002888 90 03 84         [24] 1931 	mov	dptr,#_spi_control_write_PARM_2
      00288B E4               [12] 1932 	clr	a
      00288C F0               [24] 1933 	movx	@dptr,a
      00288D 90 03 85         [24] 1934 	mov	dptr,#_spi_control_write_PARM_3
      002890 EB               [12] 1935 	mov	a,r3
      002891 F0               [24] 1936 	movx	@dptr,a
      002892 75 82 03         [24] 1937 	mov	dpl, #0x03
      002895 C0 07            [24] 1938 	push	ar7
      002897 C0 06            [24] 1939 	push	ar6
      002899 C0 05            [24] 1940 	push	ar5
      00289B 12 39 7A         [24] 1941 	lcall	_spi_control_write
      00289E D0 05            [24] 1942 	pop	ar5
      0028A0 D0 06            [24] 1943 	pop	ar6
      0028A2 D0 07            [24] 1944 	pop	ar7
                                   1945 ;	Eth.c:295: spi_control_write(3, 0x03, mac[3]); // MAADR4
      0028A4 74 03            [12] 1946 	mov	a,#0x03
      0028A6 2D               [12] 1947 	add	a, r5
      0028A7 F5 0E            [12] 1948 	mov	_enc_init_sloc2_1_0,a
      0028A9 E4               [12] 1949 	clr	a
      0028AA 3E               [12] 1950 	addc	a, r6
      0028AB F5 0F            [12] 1951 	mov	(_enc_init_sloc2_1_0 + 1),a
      0028AD 8F 10            [24] 1952 	mov	(_enc_init_sloc2_1_0 + 2),r7
      0028AF 85 0E 82         [24] 1953 	mov	dpl,_enc_init_sloc2_1_0
      0028B2 85 0F 83         [24] 1954 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      0028B5 85 10 F0         [24] 1955 	mov	b,(_enc_init_sloc2_1_0 + 2)
      0028B8 12 6E 38         [24] 1956 	lcall	__gptrget
      0028BB F9               [12] 1957 	mov	r1,a
      0028BC 90 03 84         [24] 1958 	mov	dptr,#_spi_control_write_PARM_2
      0028BF 74 03            [12] 1959 	mov	a,#0x03
      0028C1 F0               [24] 1960 	movx	@dptr,a
      0028C2 90 03 85         [24] 1961 	mov	dptr,#_spi_control_write_PARM_3
      0028C5 E9               [12] 1962 	mov	a,r1
      0028C6 F0               [24] 1963 	movx	@dptr,a
      0028C7 75 82 03         [24] 1964 	mov	dpl, #0x03
      0028CA C0 07            [24] 1965 	push	ar7
      0028CC C0 06            [24] 1966 	push	ar6
      0028CE C0 05            [24] 1967 	push	ar5
      0028D0 12 39 7A         [24] 1968 	lcall	_spi_control_write
      0028D3 D0 05            [24] 1969 	pop	ar5
      0028D5 D0 06            [24] 1970 	pop	ar6
      0028D7 D0 07            [24] 1971 	pop	ar7
                                   1972 ;	Eth.c:296: spi_control_write(3, 0x02, mac[2]); // MAADR3
      0028D9 74 02            [12] 1973 	mov	a,#0x02
      0028DB 2D               [12] 1974 	add	a, r5
      0028DC F5 11            [12] 1975 	mov	_enc_init_sloc3_1_0,a
      0028DE E4               [12] 1976 	clr	a
      0028DF 3E               [12] 1977 	addc	a, r6
      0028E0 F5 12            [12] 1978 	mov	(_enc_init_sloc3_1_0 + 1),a
      0028E2 8F 13            [24] 1979 	mov	(_enc_init_sloc3_1_0 + 2),r7
      0028E4 85 11 82         [24] 1980 	mov	dpl,_enc_init_sloc3_1_0
      0028E7 85 12 83         [24] 1981 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      0028EA 85 13 F0         [24] 1982 	mov	b,(_enc_init_sloc3_1_0 + 2)
      0028ED 12 6E 38         [24] 1983 	lcall	__gptrget
      0028F0 FB               [12] 1984 	mov	r3,a
      0028F1 90 03 84         [24] 1985 	mov	dptr,#_spi_control_write_PARM_2
      0028F4 74 02            [12] 1986 	mov	a,#0x02
      0028F6 F0               [24] 1987 	movx	@dptr,a
      0028F7 90 03 85         [24] 1988 	mov	dptr,#_spi_control_write_PARM_3
      0028FA EB               [12] 1989 	mov	a,r3
      0028FB F0               [24] 1990 	movx	@dptr,a
      0028FC 75 82 03         [24] 1991 	mov	dpl, #0x03
      0028FF C0 07            [24] 1992 	push	ar7
      002901 C0 06            [24] 1993 	push	ar6
      002903 C0 05            [24] 1994 	push	ar5
      002905 12 39 7A         [24] 1995 	lcall	_spi_control_write
      002908 D0 05            [24] 1996 	pop	ar5
      00290A D0 06            [24] 1997 	pop	ar6
      00290C D0 07            [24] 1998 	pop	ar7
                                   1999 ;	Eth.c:297: spi_control_write(3, 0x05, mac[1]); // MAADR2
      00290E 74 01            [12] 2000 	mov	a,#0x01
      002910 2D               [12] 2001 	add	a, r5
      002911 FA               [12] 2002 	mov	r2,a
      002912 E4               [12] 2003 	clr	a
      002913 3E               [12] 2004 	addc	a, r6
      002914 FB               [12] 2005 	mov	r3,a
      002915 8F 04            [24] 2006 	mov	ar4,r7
      002917 8A 82            [24] 2007 	mov	dpl,r2
      002919 8B 83            [24] 2008 	mov	dph,r3
      00291B 8C F0            [24] 2009 	mov	b,r4
      00291D 12 6E 38         [24] 2010 	lcall	__gptrget
      002920 F9               [12] 2011 	mov	r1,a
      002921 90 03 84         [24] 2012 	mov	dptr,#_spi_control_write_PARM_2
      002924 74 05            [12] 2013 	mov	a,#0x05
      002926 F0               [24] 2014 	movx	@dptr,a
      002927 90 03 85         [24] 2015 	mov	dptr,#_spi_control_write_PARM_3
      00292A E9               [12] 2016 	mov	a,r1
      00292B F0               [24] 2017 	movx	@dptr,a
      00292C 75 82 03         [24] 2018 	mov	dpl, #0x03
      00292F C0 07            [24] 2019 	push	ar7
      002931 C0 06            [24] 2020 	push	ar6
      002933 C0 05            [24] 2021 	push	ar5
      002935 C0 04            [24] 2022 	push	ar4
      002937 C0 03            [24] 2023 	push	ar3
      002939 C0 02            [24] 2024 	push	ar2
      00293B 12 39 7A         [24] 2025 	lcall	_spi_control_write
      00293E D0 02            [24] 2026 	pop	ar2
      002940 D0 03            [24] 2027 	pop	ar3
      002942 D0 04            [24] 2028 	pop	ar4
      002944 D0 05            [24] 2029 	pop	ar5
      002946 D0 06            [24] 2030 	pop	ar6
      002948 D0 07            [24] 2031 	pop	ar7
                                   2032 ;	Eth.c:298: spi_control_write(3, 0x04, mac[0]); // MAADR1
      00294A 8D 82            [24] 2033 	mov	dpl,r5
      00294C 8E 83            [24] 2034 	mov	dph,r6
      00294E 8F F0            [24] 2035 	mov	b,r7
      002950 12 6E 38         [24] 2036 	lcall	__gptrget
      002953 F9               [12] 2037 	mov	r1,a
      002954 90 03 84         [24] 2038 	mov	dptr,#_spi_control_write_PARM_2
      002957 74 04            [12] 2039 	mov	a,#0x04
      002959 F0               [24] 2040 	movx	@dptr,a
      00295A 90 03 85         [24] 2041 	mov	dptr,#_spi_control_write_PARM_3
      00295D E9               [12] 2042 	mov	a,r1
      00295E F0               [24] 2043 	movx	@dptr,a
      00295F 75 82 03         [24] 2044 	mov	dpl, #0x03
      002962 C0 07            [24] 2045 	push	ar7
      002964 C0 06            [24] 2046 	push	ar6
      002966 C0 05            [24] 2047 	push	ar5
      002968 C0 04            [24] 2048 	push	ar4
      00296A C0 03            [24] 2049 	push	ar3
      00296C C0 02            [24] 2050 	push	ar2
      00296E 12 39 7A         [24] 2051 	lcall	_spi_control_write
      002971 D0 02            [24] 2052 	pop	ar2
      002973 D0 03            [24] 2053 	pop	ar3
      002975 D0 04            [24] 2054 	pop	ar4
      002977 D0 05            [24] 2055 	pop	ar5
      002979 D0 06            [24] 2056 	pop	ar6
      00297B D0 07            [24] 2057 	pop	ar7
                                   2058 ;	Eth.c:299: phy_spi_write(0x10, 0x0100);
      00297D 90 03 8A         [24] 2059 	mov	dptr,#_phy_spi_write_PARM_2
      002980 E4               [12] 2060 	clr	a
      002981 F0               [24] 2061 	movx	@dptr,a
      002982 04               [12] 2062 	inc	a
      002983 A3               [24] 2063 	inc	dptr
      002984 F0               [24] 2064 	movx	@dptr,a
      002985 75 82 10         [24] 2065 	mov	dpl, #0x10
      002988 C0 07            [24] 2066 	push	ar7
      00298A C0 06            [24] 2067 	push	ar6
      00298C C0 05            [24] 2068 	push	ar5
      00298E C0 04            [24] 2069 	push	ar4
      002990 C0 03            [24] 2070 	push	ar3
      002992 C0 02            [24] 2071 	push	ar2
      002994 12 3A 13         [24] 2072 	lcall	_phy_spi_write
      002997 D0 02            [24] 2073 	pop	ar2
      002999 D0 03            [24] 2074 	pop	ar3
      00299B D0 04            [24] 2075 	pop	ar4
      00299D D0 05            [24] 2076 	pop	ar5
      00299F D0 06            [24] 2077 	pop	ar6
      0029A1 D0 07            [24] 2078 	pop	ar7
                                   2079 ;	Eth.c:302: spi_control_write(0, 0X1B, 0XC0); // reception enable bit
      0029A3 90 03 84         [24] 2080 	mov	dptr,#_spi_control_write_PARM_2
      0029A6 74 1B            [12] 2081 	mov	a,#0x1b
      0029A8 F0               [24] 2082 	movx	@dptr,a
      0029A9 90 03 85         [24] 2083 	mov	dptr,#_spi_control_write_PARM_3
      0029AC 74 C0            [12] 2084 	mov	a,#0xc0
      0029AE F0               [24] 2085 	movx	@dptr,a
      0029AF 75 82 00         [24] 2086 	mov	dpl, #0x00
      0029B2 C0 07            [24] 2087 	push	ar7
      0029B4 C0 06            [24] 2088 	push	ar6
      0029B6 C0 05            [24] 2089 	push	ar5
      0029B8 C0 04            [24] 2090 	push	ar4
      0029BA C0 03            [24] 2091 	push	ar3
      0029BC C0 02            [24] 2092 	push	ar2
      0029BE 12 39 7A         [24] 2093 	lcall	_spi_control_write
      0029C1 D0 02            [24] 2094 	pop	ar2
      0029C3 D0 03            [24] 2095 	pop	ar3
      0029C5 D0 04            [24] 2096 	pop	ar4
      0029C7 D0 05            [24] 2097 	pop	ar5
      0029C9 D0 06            [24] 2098 	pop	ar6
      0029CB D0 07            [24] 2099 	pop	ar7
                                   2100 ;	Eth.c:303: spi_control_write(0, 0X1F, 0X04); // reception enable bit
      0029CD 90 03 84         [24] 2101 	mov	dptr,#_spi_control_write_PARM_2
      0029D0 74 1F            [12] 2102 	mov	a,#0x1f
      0029D2 F0               [24] 2103 	movx	@dptr,a
      0029D3 90 03 85         [24] 2104 	mov	dptr,#_spi_control_write_PARM_3
      0029D6 74 04            [12] 2105 	mov	a,#0x04
      0029D8 F0               [24] 2106 	movx	@dptr,a
      0029D9 75 82 00         [24] 2107 	mov	dpl, #0x00
      0029DC C0 07            [24] 2108 	push	ar7
      0029DE C0 06            [24] 2109 	push	ar6
      0029E0 C0 05            [24] 2110 	push	ar5
      0029E2 C0 04            [24] 2111 	push	ar4
      0029E4 C0 03            [24] 2112 	push	ar3
      0029E6 C0 02            [24] 2113 	push	ar2
      0029E8 12 39 7A         [24] 2114 	lcall	_spi_control_write
                                   2115 ;	Eth.c:305: printf("\nENC28J60 Initialization Complete.\n");
      0029EB 74 AC            [12] 2116 	mov	a,#___str_7
      0029ED C0 E0            [24] 2117 	push	acc
      0029EF 74 6F            [12] 2118 	mov	a,#(___str_7 >> 8)
      0029F1 C0 E0            [24] 2119 	push	acc
      0029F3 74 80            [12] 2120 	mov	a,#0x80
      0029F5 C0 E0            [24] 2121 	push	acc
      0029F7 12 64 16         [24] 2122 	lcall	_printf
      0029FA 15 81            [12] 2123 	dec	sp
      0029FC 15 81            [12] 2124 	dec	sp
      0029FE 15 81            [12] 2125 	dec	sp
      002A00 D0 02            [24] 2126 	pop	ar2
      002A02 D0 03            [24] 2127 	pop	ar3
      002A04 D0 04            [24] 2128 	pop	ar4
      002A06 D0 05            [24] 2129 	pop	ar5
      002A08 D0 06            [24] 2130 	pop	ar6
      002A0A D0 07            [24] 2131 	pop	ar7
                                   2132 ;	Eth.c:307: mac[2], mac[3], mac[4], mac[5]);
      002A0C 85 08 82         [24] 2133 	mov	dpl,_enc_init_sloc0_1_0
      002A0F 85 09 83         [24] 2134 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      002A12 85 0A F0         [24] 2135 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002A15 12 6E 38         [24] 2136 	lcall	__gptrget
      002A18 F9               [12] 2137 	mov	r1,a
      002A19 89 08            [24] 2138 	mov	_enc_init_sloc0_1_0,r1
      002A1B 75 09 00         [24] 2139 	mov	(_enc_init_sloc0_1_0 + 1),#0x00
      002A1E 85 0B 82         [24] 2140 	mov	dpl,_enc_init_sloc1_1_0
      002A21 85 0C 83         [24] 2141 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      002A24 85 0D F0         [24] 2142 	mov	b,(_enc_init_sloc1_1_0 + 2)
      002A27 12 6E 38         [24] 2143 	lcall	__gptrget
      002A2A F9               [12] 2144 	mov	r1,a
      002A2B 89 0B            [24] 2145 	mov	_enc_init_sloc1_1_0,r1
      002A2D 75 0C 00         [24] 2146 	mov	(_enc_init_sloc1_1_0 + 1),#0x00
      002A30 85 0E 82         [24] 2147 	mov	dpl,_enc_init_sloc2_1_0
      002A33 85 0F 83         [24] 2148 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      002A36 85 10 F0         [24] 2149 	mov	b,(_enc_init_sloc2_1_0 + 2)
      002A39 12 6E 38         [24] 2150 	lcall	__gptrget
      002A3C F9               [12] 2151 	mov	r1,a
      002A3D 89 0E            [24] 2152 	mov	_enc_init_sloc2_1_0,r1
      002A3F 75 0F 00         [24] 2153 	mov	(_enc_init_sloc2_1_0 + 1),#0x00
      002A42 85 11 82         [24] 2154 	mov	dpl,_enc_init_sloc3_1_0
      002A45 85 12 83         [24] 2155 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      002A48 85 13 F0         [24] 2156 	mov	b,(_enc_init_sloc3_1_0 + 2)
      002A4B 12 6E 38         [24] 2157 	lcall	__gptrget
      002A4E F8               [12] 2158 	mov	r0,a
      002A4F 79 00            [12] 2159 	mov	r1,#0x00
                                   2160 ;	Eth.c:306: printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
      002A51 8A 82            [24] 2161 	mov	dpl,r2
      002A53 8B 83            [24] 2162 	mov	dph,r3
      002A55 8C F0            [24] 2163 	mov	b,r4
      002A57 12 6E 38         [24] 2164 	lcall	__gptrget
      002A5A FA               [12] 2165 	mov	r2,a
      002A5B 7C 00            [12] 2166 	mov	r4,#0x00
      002A5D 8D 82            [24] 2167 	mov	dpl,r5
      002A5F 8E 83            [24] 2168 	mov	dph,r6
      002A61 8F F0            [24] 2169 	mov	b,r7
      002A63 12 6E 38         [24] 2170 	lcall	__gptrget
      002A66 FD               [12] 2171 	mov	r5,a
      002A67 7F 00            [12] 2172 	mov	r7,#0x00
      002A69 C0 08            [24] 2173 	push	_enc_init_sloc0_1_0
      002A6B C0 09            [24] 2174 	push	(_enc_init_sloc0_1_0 + 1)
      002A6D C0 0B            [24] 2175 	push	_enc_init_sloc1_1_0
      002A6F C0 0C            [24] 2176 	push	(_enc_init_sloc1_1_0 + 1)
      002A71 C0 0E            [24] 2177 	push	_enc_init_sloc2_1_0
      002A73 C0 0F            [24] 2178 	push	(_enc_init_sloc2_1_0 + 1)
      002A75 C0 00            [24] 2179 	push	ar0
      002A77 C0 01            [24] 2180 	push	ar1
      002A79 C0 02            [24] 2181 	push	ar2
      002A7B C0 04            [24] 2182 	push	ar4
      002A7D C0 05            [24] 2183 	push	ar5
      002A7F C0 07            [24] 2184 	push	ar7
      002A81 74 D0            [12] 2185 	mov	a,#___str_8
      002A83 C0 E0            [24] 2186 	push	acc
      002A85 74 6F            [12] 2187 	mov	a,#(___str_8 >> 8)
      002A87 C0 E0            [24] 2188 	push	acc
      002A89 74 80            [12] 2189 	mov	a,#0x80
      002A8B C0 E0            [24] 2190 	push	acc
      002A8D 12 64 16         [24] 2191 	lcall	_printf
      002A90 E5 81            [12] 2192 	mov	a,sp
      002A92 24 F1            [12] 2193 	add	a,#0xf1
      002A94 F5 81            [12] 2194 	mov	sp,a
                                   2195 ;	Eth.c:308: uint8_t rev = eth_spi_read(0x12,3);
      002A96 90 03 88         [24] 2196 	mov	dptr,#_eth_spi_read_PARM_2
      002A99 74 03            [12] 2197 	mov	a,#0x03
      002A9B F0               [24] 2198 	movx	@dptr,a
      002A9C 75 82 12         [24] 2199 	mov	dpl, #0x12
                                   2200 ;	Eth.c:310: if (rev > 5) ++rev;
                                   2201 ;	Eth.c:358: }
      002A9F 02 39 D0         [24] 2202 	ljmp	_eth_spi_read
                                   2203 ;------------------------------------------------------------
                                   2204 ;Allocation info for local variables in function 'ENC_pkt_count'
                                   2205 ;------------------------------------------------------------
                                   2206 ;count                     Allocated with name '_ENC_pkt_count_count_10000_168'
                                   2207 ;------------------------------------------------------------
                                   2208 ;	Eth.c:360: uint8_t ENC_pkt_count(void)
                                   2209 ;	-----------------------------------------
                                   2210 ;	 function ENC_pkt_count
                                   2211 ;	-----------------------------------------
      002AA2                       2212 _ENC_pkt_count:
                                   2213 ;	Eth.c:362: uint8_t count = mac_spi_read(0x19, 1);
      002AA2 90 03 8D         [24] 2214 	mov	dptr,#_mac_spi_read_PARM_2
      002AA5 74 01            [12] 2215 	mov	a,#0x01
      002AA7 F0               [24] 2216 	movx	@dptr,a
      002AA8 75 82 19         [24] 2217 	mov	dpl, #0x19
                                   2218 ;	Eth.c:363: return count;
                                   2219 ;	Eth.c:364: }
      002AAB 02 3A 96         [24] 2220 	ljmp	_mac_spi_read
                                   2221 ;------------------------------------------------------------
                                   2222 ;Allocation info for local variables in function 'update_ERXRDPT'
                                   2223 ;------------------------------------------------------------
                                   2224 ;new_address               Allocated with name '_update_ERXRDPT_new_address_10000_169'
                                   2225 ;high_byte                 Allocated with name '_update_ERXRDPT_high_byte_10000_170'
                                   2226 ;low_byte                  Allocated with name '_update_ERXRDPT_low_byte_10000_170'
                                   2227 ;------------------------------------------------------------
                                   2228 ;	Eth.c:366: void update_ERXRDPT(uint16_t new_address) {
                                   2229 ;	-----------------------------------------
                                   2230 ;	 function update_ERXRDPT
                                   2231 ;	-----------------------------------------
      002AAE                       2232 _update_ERXRDPT:
      002AAE AF 83            [24] 2233 	mov	r7,dph
      002AB0 E5 82            [12] 2234 	mov	a,dpl
      002AB2 90 01 54         [24] 2235 	mov	dptr,#_update_ERXRDPT_new_address_10000_169
      002AB5 F0               [24] 2236 	movx	@dptr,a
      002AB6 EF               [12] 2237 	mov	a,r7
      002AB7 A3               [24] 2238 	inc	dptr
      002AB8 F0               [24] 2239 	movx	@dptr,a
                                   2240 ;	Eth.c:368: uint8_t high_byte = (uint8_t)((new_address >> 8) & 0xFF);
      002AB9 90 01 54         [24] 2241 	mov	dptr,#_update_ERXRDPT_new_address_10000_169
      002ABC E0               [24] 2242 	movx	a,@dptr
      002ABD FE               [12] 2243 	mov	r6,a
      002ABE A3               [24] 2244 	inc	dptr
      002ABF E0               [24] 2245 	movx	a,@dptr
      002AC0 FF               [12] 2246 	mov	r7,a
      002AC1 FD               [12] 2247 	mov	r5,a
                                   2248 ;	Eth.c:369: uint8_t low_byte = (uint8_t)(new_address & 0xFF);
      002AC2 8E 04            [24] 2249 	mov	ar4,r6
                                   2250 ;	Eth.c:372: spi_control_write(0, 0x0C, low_byte);  // Write to low-byte register
      002AC4 90 03 84         [24] 2251 	mov	dptr,#_spi_control_write_PARM_2
      002AC7 74 0C            [12] 2252 	mov	a,#0x0c
      002AC9 F0               [24] 2253 	movx	@dptr,a
      002ACA 90 03 85         [24] 2254 	mov	dptr,#_spi_control_write_PARM_3
      002ACD EC               [12] 2255 	mov	a,r4
      002ACE F0               [24] 2256 	movx	@dptr,a
      002ACF 75 82 00         [24] 2257 	mov	dpl, #0x00
      002AD2 C0 07            [24] 2258 	push	ar7
      002AD4 C0 06            [24] 2259 	push	ar6
      002AD6 C0 05            [24] 2260 	push	ar5
      002AD8 12 39 7A         [24] 2261 	lcall	_spi_control_write
      002ADB D0 05            [24] 2262 	pop	ar5
      002ADD D0 06            [24] 2263 	pop	ar6
      002ADF D0 07            [24] 2264 	pop	ar7
                                   2265 ;	Eth.c:373: spi_control_write(0, 0x0D, high_byte); // Write to high-byte register
      002AE1 90 03 84         [24] 2266 	mov	dptr,#_spi_control_write_PARM_2
      002AE4 74 0D            [12] 2267 	mov	a,#0x0d
      002AE6 F0               [24] 2268 	movx	@dptr,a
      002AE7 90 03 85         [24] 2269 	mov	dptr,#_spi_control_write_PARM_3
      002AEA ED               [12] 2270 	mov	a,r5
      002AEB F0               [24] 2271 	movx	@dptr,a
      002AEC 75 82 00         [24] 2272 	mov	dpl, #0x00
      002AEF C0 07            [24] 2273 	push	ar7
      002AF1 C0 06            [24] 2274 	push	ar6
      002AF3 12 39 7A         [24] 2275 	lcall	_spi_control_write
      002AF6 D0 06            [24] 2276 	pop	ar6
      002AF8 D0 07            [24] 2277 	pop	ar7
                                   2278 ;	Eth.c:376: printf("Updated ERXRDPT to 0x%04X\n", new_address);
      002AFA C0 06            [24] 2279 	push	ar6
      002AFC C0 07            [24] 2280 	push	ar7
      002AFE 74 FC            [12] 2281 	mov	a,#___str_9
      002B00 C0 E0            [24] 2282 	push	acc
      002B02 74 6F            [12] 2283 	mov	a,#(___str_9 >> 8)
      002B04 C0 E0            [24] 2284 	push	acc
      002B06 74 80            [12] 2285 	mov	a,#0x80
      002B08 C0 E0            [24] 2286 	push	acc
      002B0A 12 64 16         [24] 2287 	lcall	_printf
      002B0D E5 81            [12] 2288 	mov	a,sp
      002B0F 24 FB            [12] 2289 	add	a,#0xfb
      002B11 F5 81            [12] 2290 	mov	sp,a
                                   2291 ;	Eth.c:377: }
      002B13 22               [24] 2292 	ret
                                   2293 	.area CSEG    (CODE)
                                   2294 	.area CONST   (CODE)
                                   2295 	.area CONST   (CODE)
      006E58                       2296 ___str_0:
      006E58 0A                    2297 	.db 0x0a
      006E59 49 6E 76 61 6C 69 64  2298 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      006E91 0A                    2299 	.db 0x0a
      006E92 00                    2300 	.db 0x00
                                   2301 	.area CSEG    (CODE)
                                   2302 	.area CONST   (CODE)
      006E93                       2303 ___str_1:
      006E93 41 52 50 20 72 65 71  2304 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      006EB1 0A                    2305 	.db 0x0a
      006EB2 0D                    2306 	.db 0x0d
      006EB3 00                    2307 	.db 0x00
                                   2308 	.area CSEG    (CODE)
                                   2309 	.area CONST   (CODE)
      006EB4                       2310 ___str_2:
      006EB4 41 52 50 20 74 72 61  2311 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      006EDF 0A                    2312 	.db 0x0a
      006EE0 0D                    2313 	.db 0x0d
      006EE1 00                    2314 	.db 0x00
                                   2315 	.area CSEG    (CODE)
                                   2316 	.area CONST   (CODE)
      006EE2                       2317 ___str_3:
      006EE2 54 72 61 6E 73 6D 69  2318 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      006F1E 74 6C 79 2E           2319 	.ascii "tly."
      006F22 0A                    2320 	.db 0x0a
      006F23 0D                    2321 	.db 0x0d
      006F24 00                    2322 	.db 0x00
                                   2323 	.area CSEG    (CODE)
                                   2324 	.area CONST   (CODE)
      006F25                       2325 ___str_4:
      006F25 49 6E 74 65 72 72 72  2326 	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
             72 72 72 72 72 75 75
             75 75 75 75 75 75 75
             70 70 70 70 70 70 70
             70 74 74 74 74 74 74
             74
      006F49 0A                    2327 	.db 0x0a
      006F4A 0D                    2328 	.db 0x0d
      006F4B 00                    2329 	.db 0x00
                                   2330 	.area CSEG    (CODE)
                                   2331 	.area CONST   (CODE)
      006F4C                       2332 ___str_5:
      006F4C 0A                    2333 	.db 0x0a
      006F4D 49 6E 76 61 6C 69 64  2334 	.ascii "Invalid Buffer Range: Start 0x%04X, End 0x%04X"
             20 42 75 66 66 65 72
             20 52 61 6E 67 65 3A
             20 53 74 61 72 74 20
             30 78 25 30 34 58 2C
             20 45 6E 64 20 30 78
             25 30 34 58
      006F7B 0A                    2335 	.db 0x0a
      006F7C 00                    2336 	.db 0x00
                                   2337 	.area CSEG    (CODE)
                                   2338 	.area CONST   (CODE)
      006F7D                       2339 ___str_6:
      006F7D 0A                    2340 	.db 0x0a
      006F7E 42 75 66 66 65 72 20  2341 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      006FAA 0A                    2342 	.db 0x0a
      006FAB 00                    2343 	.db 0x00
                                   2344 	.area CSEG    (CODE)
                                   2345 	.area CONST   (CODE)
      006FAC                       2346 ___str_7:
      006FAC 0A                    2347 	.db 0x0a
      006FAD 45 4E 43 32 38 4A 36  2348 	.ascii "ENC28J60 Initialization Complete."
             30 20 49 6E 69 74 69
             61 6C 69 7A 61 74 69
             6F 6E 20 43 6F 6D 70
             6C 65 74 65 2E
      006FCE 0A                    2349 	.db 0x0a
      006FCF 00                    2350 	.db 0x00
                                   2351 	.area CSEG    (CODE)
                                   2352 	.area CONST   (CODE)
      006FD0                       2353 ___str_8:
      006FD0 4D 41 43 20 41 64 64  2354 	.ascii "MAC Address: %02X:%02X:%02X:%02X:%02X:%02X"
             72 65 73 73 3A 20 25
             30 32 58 3A 25 30 32
             58 3A 25 30 32 58 3A
             25 30 32 58 3A 25 30
             32 58 3A 25 30 32 58
      006FFA 0A                    2355 	.db 0x0a
      006FFB 00                    2356 	.db 0x00
                                   2357 	.area CSEG    (CODE)
                                   2358 	.area CONST   (CODE)
      006FFC                       2359 ___str_9:
      006FFC 55 70 64 61 74 65 64  2360 	.ascii "Updated ERXRDPT to 0x%04X"
             20 45 52 58 52 44 50
             54 20 74 6F 20 30 78
             25 30 34 58
      007015 0A                    2361 	.db 0x0a
      007016 00                    2362 	.db 0x00
                                   2363 	.area CSEG    (CODE)
                                   2364 	.area XINIT   (CODE)
                                   2365 	.area CABS    (ABS,CODE)

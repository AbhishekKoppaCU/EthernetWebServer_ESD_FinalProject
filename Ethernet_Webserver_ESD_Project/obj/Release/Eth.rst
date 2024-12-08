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
                                     16 	.globl _phy_spi_write
                                     17 	.globl _spi_buffer_write
                                     18 	.globl _mac_spi_read
                                     19 	.globl _enc_reset
                                     20 	.globl _printf
                                     21 	.globl _TF1
                                     22 	.globl _TR1
                                     23 	.globl _TF0
                                     24 	.globl _TR0
                                     25 	.globl _IE1
                                     26 	.globl _IT1
                                     27 	.globl _IE0
                                     28 	.globl _IT0
                                     29 	.globl _SM0
                                     30 	.globl _SM1
                                     31 	.globl _SM2
                                     32 	.globl _REN
                                     33 	.globl _TB8
                                     34 	.globl _RB8
                                     35 	.globl _TI
                                     36 	.globl _RI
                                     37 	.globl _CY
                                     38 	.globl _AC
                                     39 	.globl _F0
                                     40 	.globl _RS1
                                     41 	.globl _RS0
                                     42 	.globl _OV
                                     43 	.globl _F1
                                     44 	.globl _P
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD0
                                     52 	.globl _TXD
                                     53 	.globl _RXD0
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _P2_7
                                     64 	.globl _P2_6
                                     65 	.globl _P2_5
                                     66 	.globl _P2_4
                                     67 	.globl _P2_3
                                     68 	.globl _P2_2
                                     69 	.globl _P2_1
                                     70 	.globl _P2_0
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _PS
                                     88 	.globl _PT1
                                     89 	.globl _PX1
                                     90 	.globl _PT0
                                     91 	.globl _PX0
                                     92 	.globl _EA
                                     93 	.globl _ES
                                     94 	.globl _ET1
                                     95 	.globl _EX1
                                     96 	.globl _ET0
                                     97 	.globl _EX0
                                     98 	.globl _BREG_F7
                                     99 	.globl _BREG_F6
                                    100 	.globl _BREG_F5
                                    101 	.globl _BREG_F4
                                    102 	.globl _BREG_F3
                                    103 	.globl _BREG_F2
                                    104 	.globl _BREG_F1
                                    105 	.globl _BREG_F0
                                    106 	.globl _P5_7
                                    107 	.globl _P5_6
                                    108 	.globl _P5_5
                                    109 	.globl _P5_4
                                    110 	.globl _P5_3
                                    111 	.globl _P5_2
                                    112 	.globl _P5_1
                                    113 	.globl _P5_0
                                    114 	.globl _P4_7
                                    115 	.globl _P4_6
                                    116 	.globl _P4_5
                                    117 	.globl _P4_4
                                    118 	.globl _P4_3
                                    119 	.globl _P4_2
                                    120 	.globl _P4_1
                                    121 	.globl _P4_0
                                    122 	.globl _PX0L
                                    123 	.globl _PT0L
                                    124 	.globl _PX1L
                                    125 	.globl _PT1L
                                    126 	.globl _PSL
                                    127 	.globl _PT2L
                                    128 	.globl _PPCL
                                    129 	.globl _EC
                                    130 	.globl _CCF0
                                    131 	.globl _CCF1
                                    132 	.globl _CCF2
                                    133 	.globl _CCF3
                                    134 	.globl _CCF4
                                    135 	.globl _CR
                                    136 	.globl _CF
                                    137 	.globl _TF2
                                    138 	.globl _EXF2
                                    139 	.globl _RCLK
                                    140 	.globl _TCLK
                                    141 	.globl _EXEN2
                                    142 	.globl _TR2
                                    143 	.globl _C_T2
                                    144 	.globl _CP_RL2
                                    145 	.globl _T2CON_7
                                    146 	.globl _T2CON_6
                                    147 	.globl _T2CON_5
                                    148 	.globl _T2CON_4
                                    149 	.globl _T2CON_3
                                    150 	.globl _T2CON_2
                                    151 	.globl _T2CON_1
                                    152 	.globl _T2CON_0
                                    153 	.globl _PT2
                                    154 	.globl _ET2
                                    155 	.globl _TMOD
                                    156 	.globl _TL1
                                    157 	.globl _TL0
                                    158 	.globl _TH1
                                    159 	.globl _TH0
                                    160 	.globl _TCON
                                    161 	.globl _SP
                                    162 	.globl _SCON
                                    163 	.globl _SBUF0
                                    164 	.globl _SBUF
                                    165 	.globl _PSW
                                    166 	.globl _PCON
                                    167 	.globl _P3
                                    168 	.globl _P2
                                    169 	.globl _P1
                                    170 	.globl _P0
                                    171 	.globl _IP
                                    172 	.globl _IE
                                    173 	.globl _DP0L
                                    174 	.globl _DPL
                                    175 	.globl _DP0H
                                    176 	.globl _DPH
                                    177 	.globl _B
                                    178 	.globl _ACC
                                    179 	.globl _EECON
                                    180 	.globl _KBF
                                    181 	.globl _KBE
                                    182 	.globl _KBLS
                                    183 	.globl _BRL
                                    184 	.globl _BDRCON
                                    185 	.globl _T2MOD
                                    186 	.globl _SPDAT
                                    187 	.globl _SPSTA
                                    188 	.globl _SPCON
                                    189 	.globl _SADEN
                                    190 	.globl _SADDR
                                    191 	.globl _WDTPRG
                                    192 	.globl _WDTRST
                                    193 	.globl _P5
                                    194 	.globl _P4
                                    195 	.globl _IPH1
                                    196 	.globl _IPL1
                                    197 	.globl _IPH0
                                    198 	.globl _IPL0
                                    199 	.globl _IEN1
                                    200 	.globl _IEN0
                                    201 	.globl _CMOD
                                    202 	.globl _CL
                                    203 	.globl _CH
                                    204 	.globl _CCON
                                    205 	.globl _CCAPM4
                                    206 	.globl _CCAPM3
                                    207 	.globl _CCAPM2
                                    208 	.globl _CCAPM1
                                    209 	.globl _CCAPM0
                                    210 	.globl _CCAP4L
                                    211 	.globl _CCAP3L
                                    212 	.globl _CCAP2L
                                    213 	.globl _CCAP1L
                                    214 	.globl _CCAP0L
                                    215 	.globl _CCAP4H
                                    216 	.globl _CCAP3H
                                    217 	.globl _CCAP2H
                                    218 	.globl _CCAP1H
                                    219 	.globl _CCAP0H
                                    220 	.globl _CKCON1
                                    221 	.globl _CKCON0
                                    222 	.globl _CKRL
                                    223 	.globl _AUXR1
                                    224 	.globl _AUXR
                                    225 	.globl _TH2
                                    226 	.globl _TL2
                                    227 	.globl _RCAP2H
                                    228 	.globl _RCAP2L
                                    229 	.globl _T2CON
                                    230 	.globl _enc_buffer_init_PARM_2
                                    231 	.globl _enc28j60_set_transmit_pointers_PARM_2
                                    232 	.globl _enc28j60_set_transmit_pointers
                                    233 	.globl _wait_for_transmission_complete
                                    234 	.globl _send_arp_request
                                    235 	.globl _enc_buffer_init
                                    236 	.globl _enc_init
                                    237 	.globl _ENC_pkt_count
                                    238 	.globl _update_ERXRDPT
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
                                    464 ; overlayable bit register bank
                                    465 ;--------------------------------------------------------
                                    466 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        467 bits:
      000021                        468 	.ds 1
                           008000   469 	b0 = bits[0]
                           008100   470 	b1 = bits[1]
                           008200   471 	b2 = bits[2]
                           008300   472 	b3 = bits[3]
                           008400   473 	b4 = bits[4]
                           008500   474 	b5 = bits[5]
                           008600   475 	b6 = bits[6]
                           008700   476 	b7 = bits[7]
                                    477 ;--------------------------------------------------------
                                    478 ; internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area DSEG    (DATA)
      000008                        481 _enc_init_sloc0_1_0:
      000008                        482 	.ds 3
      00000B                        483 _enc_init_sloc1_1_0:
      00000B                        484 	.ds 3
      00000E                        485 _enc_init_sloc2_1_0:
      00000E                        486 	.ds 3
      000011                        487 _enc_init_sloc3_1_0:
      000011                        488 	.ds 3
                                    489 ;--------------------------------------------------------
                                    490 ; overlayable items in internal ram
                                    491 ;--------------------------------------------------------
                                    492 ;--------------------------------------------------------
                                    493 ; indirectly addressable internal ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area ISEG    (DATA)
                                    496 ;--------------------------------------------------------
                                    497 ; absolute internal ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area IABS    (ABS,DATA)
                                    500 	.area IABS    (ABS,DATA)
                                    501 ;--------------------------------------------------------
                                    502 ; bit data
                                    503 ;--------------------------------------------------------
                                    504 	.area BSEG    (BIT)
      000000                        505 _enc28j60_transmission_successful_sloc0_1_0:
      000000                        506 	.ds 1
                                    507 ;--------------------------------------------------------
                                    508 ; paged external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area PSEG    (PAG,XDATA)
                                    511 ;--------------------------------------------------------
                                    512 ; uninitialized external ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area XSEG    (XDATA)
      000100                        515 _delay_ms_ms_10000_122:
      000100                        516 	.ds 2
      000102                        517 _delay_ms_i_20000_124:
      000102                        518 	.ds 4
      000106                        519 _enc28j60_set_transmit_pointers_PARM_2:
      000106                        520 	.ds 2
      000108                        521 _enc28j60_set_transmit_pointers_start_address_10000_128:
      000108                        522 	.ds 2
      00010A                        523 _wait_for_transmission_complete_timeout_ms_10000_130:
      00010A                        524 	.ds 2
      00010C                        525 _send_arp_request_source_mac_10000_136:
      00010C                        526 	.ds 6
      000112                        527 _send_arp_request_dest_mac_10000_136:
      000112                        528 	.ds 6
      000118                        529 _send_arp_request_source_ip_10000_136:
      000118                        530 	.ds 4
      00011C                        531 _send_arp_request_target_ip_10000_136:
      00011C                        532 	.ds 4
      000120                        533 _send_arp_request_arp_packet_10000_136:
      000120                        534 	.ds 43
      00014B                        535 _external_interrupt0_isr_i_10000_155:
      00014B                        536 	.ds 2
      00014D                        537 _enc_buffer_init_PARM_2:
      00014D                        538 	.ds 2
      00014F                        539 _enc_buffer_init_start_address_10000_157:
      00014F                        540 	.ds 2
      000151                        541 _enc_init_mac_10000_160:
      000151                        542 	.ds 3
      000154                        543 _update_ERXRDPT_new_address_10000_167:
      000154                        544 	.ds 2
                                    545 ;--------------------------------------------------------
                                    546 ; absolute external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XABS    (ABS,XDATA)
                                    549 ;--------------------------------------------------------
                                    550 ; initialized external ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area XISEG   (XDATA)
                                    553 	.area HOME    (CODE)
                                    554 	.area GSINIT0 (CODE)
                                    555 	.area GSINIT1 (CODE)
                                    556 	.area GSINIT2 (CODE)
                                    557 	.area GSINIT3 (CODE)
                                    558 	.area GSINIT4 (CODE)
                                    559 	.area GSINIT5 (CODE)
                                    560 	.area GSINIT  (CODE)
                                    561 	.area GSFINAL (CODE)
                                    562 	.area CSEG    (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; global & static initialisations
                                    565 ;--------------------------------------------------------
                                    566 	.area HOME    (CODE)
                                    567 	.area GSINIT  (CODE)
                                    568 	.area GSFINAL (CODE)
                                    569 	.area GSINIT  (CODE)
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                    572 ;------------------------------------------------------------
                                    573 ;i                         Allocated with name '_external_interrupt0_isr_i_10000_155'
                                    574 ;------------------------------------------------------------
                                    575 ;	Eth.c:200: static int i = 0;
      002062 90 01 4B         [24]  576 	mov	dptr,#_external_interrupt0_isr_i_10000_155
      002065 E4               [12]  577 	clr	a
      002066 F0               [24]  578 	movx	@dptr,a
      002067 A3               [24]  579 	inc	dptr
      002068 F0               [24]  580 	movx	@dptr,a
                                    581 ;--------------------------------------------------------
                                    582 ; Home
                                    583 ;--------------------------------------------------------
                                    584 	.area HOME    (CODE)
                                    585 	.area HOME    (CODE)
                                    586 ;--------------------------------------------------------
                                    587 ; code
                                    588 ;--------------------------------------------------------
                                    589 	.area CSEG    (CODE)
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'delay_ms'
                                    592 ;------------------------------------------------------------
                                    593 ;ms                        Allocated with name '_delay_ms_ms_10000_122'
                                    594 ;i                         Allocated with name '_delay_ms_i_20000_124'
                                    595 ;------------------------------------------------------------
                                    596 ;	Eth.c:48: void delay_ms(uint16_t ms)
                                    597 ;	-----------------------------------------
                                    598 ;	 function delay_ms
                                    599 ;	-----------------------------------------
      002073                        600 _delay_ms:
                           000007   601 	ar7 = 0x07
                           000006   602 	ar6 = 0x06
                           000005   603 	ar5 = 0x05
                           000004   604 	ar4 = 0x04
                           000003   605 	ar3 = 0x03
                           000002   606 	ar2 = 0x02
                           000001   607 	ar1 = 0x01
                           000000   608 	ar0 = 0x00
      002073 AF 83            [24]  609 	mov	r7,dph
      002075 E5 82            [12]  610 	mov	a,dpl
      002077 90 01 00         [24]  611 	mov	dptr,#_delay_ms_ms_10000_122
      00207A F0               [24]  612 	movx	@dptr,a
      00207B EF               [12]  613 	mov	a,r7
      00207C A3               [24]  614 	inc	dptr
      00207D F0               [24]  615 	movx	@dptr,a
                                    616 ;	Eth.c:50: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      00207E 90 01 02         [24]  617 	mov	dptr,#_delay_ms_i_20000_124
      002081 E4               [12]  618 	clr	a
      002082 F0               [24]  619 	movx	@dptr,a
      002083 A3               [24]  620 	inc	dptr
      002084 F0               [24]  621 	movx	@dptr,a
      002085 A3               [24]  622 	inc	dptr
      002086 F0               [24]  623 	movx	@dptr,a
      002087 A3               [24]  624 	inc	dptr
      002088 F0               [24]  625 	movx	@dptr,a
      002089 90 01 00         [24]  626 	mov	dptr,#_delay_ms_ms_10000_122
      00208C E0               [24]  627 	movx	a,@dptr
      00208D FE               [12]  628 	mov	r6,a
      00208E A3               [24]  629 	inc	dptr
      00208F E0               [24]  630 	movx	a,@dptr
      002090 FF               [12]  631 	mov	r7,a
      002091                        632 00103$:
      002091 90 09 D9         [24]  633 	mov	dptr,#__mulint_PARM_2
      002094 EE               [12]  634 	mov	a,r6
      002095 F0               [24]  635 	movx	@dptr,a
      002096 EF               [12]  636 	mov	a,r7
      002097 A3               [24]  637 	inc	dptr
      002098 F0               [24]  638 	movx	@dptr,a
      002099 90 03 E8         [24]  639 	mov	dptr,#0x03e8
      00209C C0 07            [24]  640 	push	ar7
      00209E C0 06            [24]  641 	push	ar6
      0020A0 12 53 74         [24]  642 	lcall	__mulint
      0020A3 AC 82            [24]  643 	mov	r4, dpl
      0020A5 AD 83            [24]  644 	mov	r5, dph
      0020A7 D0 06            [24]  645 	pop	ar6
      0020A9 D0 07            [24]  646 	pop	ar7
      0020AB 90 01 02         [24]  647 	mov	dptr,#_delay_ms_i_20000_124
      0020AE E0               [24]  648 	movx	a,@dptr
      0020AF F8               [12]  649 	mov	r0,a
      0020B0 A3               [24]  650 	inc	dptr
      0020B1 E0               [24]  651 	movx	a,@dptr
      0020B2 F9               [12]  652 	mov	r1,a
      0020B3 A3               [24]  653 	inc	dptr
      0020B4 E0               [24]  654 	movx	a,@dptr
      0020B5 FA               [12]  655 	mov	r2,a
      0020B6 A3               [24]  656 	inc	dptr
      0020B7 E0               [24]  657 	movx	a,@dptr
      0020B8 FB               [12]  658 	mov	r3,a
      0020B9 C0 06            [24]  659 	push	ar6
      0020BB C0 07            [24]  660 	push	ar7
      0020BD 7E 00            [12]  661 	mov	r6,#0x00
      0020BF 7F 00            [12]  662 	mov	r7,#0x00
      0020C1 C3               [12]  663 	clr	c
      0020C2 E8               [12]  664 	mov	a,r0
      0020C3 9C               [12]  665 	subb	a,r4
      0020C4 E9               [12]  666 	mov	a,r1
      0020C5 9D               [12]  667 	subb	a,r5
      0020C6 EA               [12]  668 	mov	a,r2
      0020C7 9E               [12]  669 	subb	a,r6
      0020C8 EB               [12]  670 	mov	a,r3
      0020C9 9F               [12]  671 	subb	a,r7
      0020CA D0 07            [24]  672 	pop	ar7
      0020CC D0 06            [24]  673 	pop	ar6
      0020CE 50 23            [24]  674 	jnc	00105$
      0020D0 90 01 02         [24]  675 	mov	dptr,#_delay_ms_i_20000_124
      0020D3 E0               [24]  676 	movx	a,@dptr
      0020D4 FA               [12]  677 	mov	r2,a
      0020D5 A3               [24]  678 	inc	dptr
      0020D6 E0               [24]  679 	movx	a,@dptr
      0020D7 FB               [12]  680 	mov	r3,a
      0020D8 A3               [24]  681 	inc	dptr
      0020D9 E0               [24]  682 	movx	a,@dptr
      0020DA FC               [12]  683 	mov	r4,a
      0020DB A3               [24]  684 	inc	dptr
      0020DC E0               [24]  685 	movx	a,@dptr
      0020DD FD               [12]  686 	mov	r5,a
      0020DE 90 01 02         [24]  687 	mov	dptr,#_delay_ms_i_20000_124
      0020E1 74 01            [12]  688 	mov	a,#0x01
      0020E3 2A               [12]  689 	add	a, r2
      0020E4 F0               [24]  690 	movx	@dptr,a
      0020E5 E4               [12]  691 	clr	a
      0020E6 3B               [12]  692 	addc	a, r3
      0020E7 A3               [24]  693 	inc	dptr
      0020E8 F0               [24]  694 	movx	@dptr,a
      0020E9 E4               [12]  695 	clr	a
      0020EA 3C               [12]  696 	addc	a, r4
      0020EB A3               [24]  697 	inc	dptr
      0020EC F0               [24]  698 	movx	@dptr,a
      0020ED E4               [12]  699 	clr	a
      0020EE 3D               [12]  700 	addc	a, r5
      0020EF A3               [24]  701 	inc	dptr
      0020F0 F0               [24]  702 	movx	@dptr,a
      0020F1 80 9E            [24]  703 	sjmp	00103$
      0020F3                        704 00105$:
                                    705 ;	Eth.c:54: }
      0020F3 22               [24]  706 	ret
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    709 ;------------------------------------------------------------
                                    710 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_127'
                                    711 ;------------------------------------------------------------
                                    712 ;	Eth.c:56: void enc28j60_start_transmission(void)
                                    713 ;	-----------------------------------------
                                    714 ;	 function enc28j60_start_transmission
                                    715 ;	-----------------------------------------
      0020F4                        716 _enc28j60_start_transmission:
                                    717 ;	Eth.c:58: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      0020F4 90 03 8D         [24]  718 	mov	dptr,#_mac_spi_read_PARM_2
      0020F7 E4               [12]  719 	clr	a
      0020F8 F0               [24]  720 	movx	@dptr,a
      0020F9 75 82 1F         [24]  721 	mov	dpl, #0x1f
      0020FC 12 3A 9B         [24]  722 	lcall	_mac_spi_read
      0020FF E5 82            [12]  723 	mov	a, dpl
                                    724 ;	Eth.c:59: econ1 |= 0x08; // Set TXRTS (bit 3)
      002101 44 08            [12]  725 	orl	a,#0x08
      002103 FF               [12]  726 	mov	r7,a
                                    727 ;	Eth.c:60: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      002104 90 03 84         [24]  728 	mov	dptr,#_spi_control_write_PARM_2
      002107 74 1F            [12]  729 	mov	a,#0x1f
      002109 F0               [24]  730 	movx	@dptr,a
      00210A 90 03 85         [24]  731 	mov	dptr,#_spi_control_write_PARM_3
      00210D EF               [12]  732 	mov	a,r7
      00210E F0               [24]  733 	movx	@dptr,a
      00210F 75 82 00         [24]  734 	mov	dpl, #0x00
                                    735 ;	Eth.c:61: }
      002112 02 39 25         [24]  736 	ljmp	_spi_control_write
                                    737 ;------------------------------------------------------------
                                    738 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    739 ;------------------------------------------------------------
                                    740 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    741 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_128'
                                    742 ;------------------------------------------------------------
                                    743 ;	Eth.c:64: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    744 ;	-----------------------------------------
                                    745 ;	 function enc28j60_set_transmit_pointers
                                    746 ;	-----------------------------------------
      002115                        747 _enc28j60_set_transmit_pointers:
      002115 AF 83            [24]  748 	mov	r7,dph
      002117 E5 82            [12]  749 	mov	a,dpl
      002119 90 01 08         [24]  750 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_128
      00211C F0               [24]  751 	movx	@dptr,a
      00211D EF               [12]  752 	mov	a,r7
      00211E A3               [24]  753 	inc	dptr
      00211F F0               [24]  754 	movx	@dptr,a
                                    755 ;	Eth.c:67: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      002120 90 01 08         [24]  756 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_128
      002123 E0               [24]  757 	movx	a,@dptr
      002124 FE               [12]  758 	mov	r6,a
      002125 A3               [24]  759 	inc	dptr
      002126 E0               [24]  760 	movx	a,@dptr
      002127 FF               [12]  761 	mov	r7,a
      002128 8E 05            [24]  762 	mov	ar5,r6
      00212A 90 03 84         [24]  763 	mov	dptr,#_spi_control_write_PARM_2
      00212D 74 04            [12]  764 	mov	a,#0x04
      00212F F0               [24]  765 	movx	@dptr,a
      002130 90 03 85         [24]  766 	mov	dptr,#_spi_control_write_PARM_3
      002133 ED               [12]  767 	mov	a,r5
      002134 F0               [24]  768 	movx	@dptr,a
      002135 75 82 00         [24]  769 	mov	dpl, #0x00
      002138 C0 07            [24]  770 	push	ar7
      00213A C0 06            [24]  771 	push	ar6
      00213C 12 39 25         [24]  772 	lcall	_spi_control_write
      00213F D0 06            [24]  773 	pop	ar6
      002141 D0 07            [24]  774 	pop	ar7
                                    775 ;	Eth.c:68: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      002143 8F 06            [24]  776 	mov	ar6,r7
      002145 90 03 84         [24]  777 	mov	dptr,#_spi_control_write_PARM_2
      002148 74 05            [12]  778 	mov	a,#0x05
      00214A F0               [24]  779 	movx	@dptr,a
      00214B 90 03 85         [24]  780 	mov	dptr,#_spi_control_write_PARM_3
      00214E EE               [12]  781 	mov	a,r6
      00214F F0               [24]  782 	movx	@dptr,a
      002150 75 82 00         [24]  783 	mov	dpl, #0x00
      002153 12 39 25         [24]  784 	lcall	_spi_control_write
                                    785 ;	Eth.c:71: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      002156 90 01 06         [24]  786 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002159 E0               [24]  787 	movx	a,@dptr
      00215A FE               [12]  788 	mov	r6,a
      00215B A3               [24]  789 	inc	dptr
      00215C E0               [24]  790 	movx	a,@dptr
      00215D FF               [12]  791 	mov	r7,a
      00215E 8E 05            [24]  792 	mov	ar5,r6
      002160 90 03 84         [24]  793 	mov	dptr,#_spi_control_write_PARM_2
      002163 74 06            [12]  794 	mov	a,#0x06
      002165 F0               [24]  795 	movx	@dptr,a
      002166 90 03 85         [24]  796 	mov	dptr,#_spi_control_write_PARM_3
      002169 ED               [12]  797 	mov	a,r5
      00216A F0               [24]  798 	movx	@dptr,a
      00216B 75 82 00         [24]  799 	mov	dpl, #0x00
      00216E C0 07            [24]  800 	push	ar7
      002170 C0 06            [24]  801 	push	ar6
      002172 12 39 25         [24]  802 	lcall	_spi_control_write
      002175 D0 06            [24]  803 	pop	ar6
      002177 D0 07            [24]  804 	pop	ar7
                                    805 ;	Eth.c:72: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      002179 8F 06            [24]  806 	mov	ar6,r7
      00217B 90 03 84         [24]  807 	mov	dptr,#_spi_control_write_PARM_2
      00217E 74 07            [12]  808 	mov	a,#0x07
      002180 F0               [24]  809 	movx	@dptr,a
      002181 90 03 85         [24]  810 	mov	dptr,#_spi_control_write_PARM_3
      002184 EE               [12]  811 	mov	a,r6
      002185 F0               [24]  812 	movx	@dptr,a
      002186 75 82 00         [24]  813 	mov	dpl, #0x00
                                    814 ;	Eth.c:73: }
      002189 02 39 25         [24]  815 	ljmp	_spi_control_write
                                    816 ;------------------------------------------------------------
                                    817 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                    818 ;------------------------------------------------------------
                                    819 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_130'
                                    820 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_131'
                                    821 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_132'
                                    822 ;------------------------------------------------------------
                                    823 ;	Eth.c:75: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                    824 ;	-----------------------------------------
                                    825 ;	 function wait_for_transmission_complete
                                    826 ;	-----------------------------------------
      00218C                        827 _wait_for_transmission_complete:
      00218C AF 83            [24]  828 	mov	r7,dph
      00218E E5 82            [12]  829 	mov	a,dpl
      002190 90 01 0A         [24]  830 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_130
      002193 F0               [24]  831 	movx	@dptr,a
      002194 EF               [12]  832 	mov	a,r7
      002195 A3               [24]  833 	inc	dptr
      002196 F0               [24]  834 	movx	@dptr,a
                                    835 ;	Eth.c:79: while (elapsed < timeout_ms) {
      002197 90 01 0A         [24]  836 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_130
      00219A E0               [24]  837 	movx	a,@dptr
      00219B FE               [12]  838 	mov	r6,a
      00219C A3               [24]  839 	inc	dptr
      00219D E0               [24]  840 	movx	a,@dptr
      00219E FF               [12]  841 	mov	r7,a
      00219F 7C 00            [12]  842 	mov	r4,#0x00
      0021A1 7D 00            [12]  843 	mov	r5,#0x00
      0021A3                        844 00103$:
      0021A3 C3               [12]  845 	clr	c
      0021A4 EC               [12]  846 	mov	a,r4
      0021A5 9E               [12]  847 	subb	a,r6
      0021A6 ED               [12]  848 	mov	a,r5
      0021A7 9F               [12]  849 	subb	a,r7
      0021A8 50 41            [24]  850 	jnc	00105$
                                    851 ;	Eth.c:80: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      0021AA 90 03 8D         [24]  852 	mov	dptr,#_mac_spi_read_PARM_2
      0021AD E4               [12]  853 	clr	a
      0021AE F0               [24]  854 	movx	@dptr,a
      0021AF 75 82 1F         [24]  855 	mov	dpl, #0x1f
      0021B2 C0 07            [24]  856 	push	ar7
      0021B4 C0 06            [24]  857 	push	ar6
      0021B6 C0 05            [24]  858 	push	ar5
      0021B8 C0 04            [24]  859 	push	ar4
      0021BA 12 3A 9B         [24]  860 	lcall	_mac_spi_read
      0021BD E5 82            [12]  861 	mov	a, dpl
      0021BF D0 04            [24]  862 	pop	ar4
      0021C1 D0 05            [24]  863 	pop	ar5
      0021C3 D0 06            [24]  864 	pop	ar6
      0021C5 D0 07            [24]  865 	pop	ar7
                                    866 ;	Eth.c:81: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      0021C7 20 E3 04         [24]  867 	jb	acc.3,00102$
                                    868 ;	Eth.c:82: return true;  // Transmission completed
      0021CA 75 82 01         [24]  869 	mov	dpl, #0x01
      0021CD 22               [24]  870 	ret
      0021CE                        871 00102$:
                                    872 ;	Eth.c:85: delay_ms(1);  // Wait 1 ms
      0021CE 90 00 01         [24]  873 	mov	dptr,#0x0001
      0021D1 C0 07            [24]  874 	push	ar7
      0021D3 C0 06            [24]  875 	push	ar6
      0021D5 C0 05            [24]  876 	push	ar5
      0021D7 C0 04            [24]  877 	push	ar4
      0021D9 12 20 73         [24]  878 	lcall	_delay_ms
      0021DC D0 04            [24]  879 	pop	ar4
      0021DE D0 05            [24]  880 	pop	ar5
      0021E0 D0 06            [24]  881 	pop	ar6
      0021E2 D0 07            [24]  882 	pop	ar7
                                    883 ;	Eth.c:86: elapsed++;
      0021E4 0C               [12]  884 	inc	r4
      0021E5 BC 00 BB         [24]  885 	cjne	r4,#0x00,00103$
      0021E8 0D               [12]  886 	inc	r5
      0021E9 80 B8            [24]  887 	sjmp	00103$
      0021EB                        888 00105$:
                                    889 ;	Eth.c:89: return false;  // Timed out
      0021EB 75 82 00         [24]  890 	mov	dpl, #0x00
                                    891 ;	Eth.c:90: }
      0021EE 22               [24]  892 	ret
                                    893 ;------------------------------------------------------------
                                    894 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                    895 ;------------------------------------------------------------
                                    896 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_134'
                                    897 ;------------------------------------------------------------
                                    898 ;	Eth.c:92: bool enc28j60_transmission_successful()
                                    899 ;	-----------------------------------------
                                    900 ;	 function enc28j60_transmission_successful
                                    901 ;	-----------------------------------------
      0021EF                        902 _enc28j60_transmission_successful:
                                    903 ;	Eth.c:94: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      0021EF 90 03 8D         [24]  904 	mov	dptr,#_mac_spi_read_PARM_2
      0021F2 E4               [12]  905 	clr	a
      0021F3 F0               [24]  906 	movx	@dptr,a
      0021F4 75 82 1D         [24]  907 	mov	dpl, #0x1d
      0021F7 12 3A 9B         [24]  908 	lcall	_mac_spi_read
                                    909 ;	Eth.c:95: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      0021FA E5 82            [12]  910 	mov	a,dpl
      0021FC 03               [12]  911 	rr	a
      0021FD 54 01            [12]  912 	anl	a,#0x01
      0021FF B4 01 00         [24]  913 	cjne	a,#0x01,00103$
      002202                        914 00103$:
      002202 92 00            [24]  915 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      002204 E4               [12]  916 	clr	a
      002205 33               [12]  917 	rlc	a
      002206 F5 82            [12]  918 	mov	dpl, a
                                    919 ;	Eth.c:96: }
      002208 22               [24]  920 	ret
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'send_arp_request'
                                    923 ;------------------------------------------------------------
                                    924 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_136'
                                    925 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_136'
                                    926 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_136'
                                    927 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_136'
                                    928 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_136'
                                    929 ;i                         Allocated with name '_send_arp_request_i_20000_137'
                                    930 ;i                         Allocated with name '_send_arp_request_i_20000_139'
                                    931 ;i                         Allocated with name '_send_arp_request_i_20000_141'
                                    932 ;i                         Allocated with name '_send_arp_request_i_20000_143'
                                    933 ;i                         Allocated with name '_send_arp_request_i_20000_145'
                                    934 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_147'
                                    935 ;start_address             Allocated with name '_send_arp_request_start_address_10001_147'
                                    936 ;end_address               Allocated with name '_send_arp_request_end_address_10002_149'
                                    937 ;------------------------------------------------------------
                                    938 ;	Eth.c:98: void send_arp_request(void)
                                    939 ;	-----------------------------------------
                                    940 ;	 function send_arp_request
                                    941 ;	-----------------------------------------
      002209                        942 _send_arp_request:
                                    943 ;	Eth.c:102: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      002209 90 01 0C         [24]  944 	mov	dptr,#_send_arp_request_source_mac_10000_136
      00220C 74 02            [12]  945 	mov	a,#0x02
      00220E F0               [24]  946 	movx	@dptr,a
      00220F 90 01 0D         [24]  947 	mov	dptr,#(_send_arp_request_source_mac_10000_136 + 0x0001)
      002212 74 11            [12]  948 	mov	a,#0x11
      002214 F0               [24]  949 	movx	@dptr,a
      002215 90 01 0E         [24]  950 	mov	dptr,#(_send_arp_request_source_mac_10000_136 + 0x0002)
      002218 23               [12]  951 	rl	a
      002219 F0               [24]  952 	movx	@dptr,a
      00221A 90 01 0F         [24]  953 	mov	dptr,#(_send_arp_request_source_mac_10000_136 + 0x0003)
      00221D 74 33            [12]  954 	mov	a,#0x33
      00221F F0               [24]  955 	movx	@dptr,a
      002220 90 01 10         [24]  956 	mov	dptr,#(_send_arp_request_source_mac_10000_136 + 0x0004)
      002223 74 44            [12]  957 	mov	a,#0x44
      002225 F0               [24]  958 	movx	@dptr,a
      002226 90 01 11         [24]  959 	mov	dptr,#(_send_arp_request_source_mac_10000_136 + 0x0005)
      002229 74 55            [12]  960 	mov	a,#0x55
      00222B F0               [24]  961 	movx	@dptr,a
                                    962 ;	Eth.c:103: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      00222C 90 01 12         [24]  963 	mov	dptr,#_send_arp_request_dest_mac_10000_136
      00222F 74 F8            [12]  964 	mov	a,#0xf8
      002231 F0               [24]  965 	movx	@dptr,a
      002232 90 01 13         [24]  966 	mov	dptr,#(_send_arp_request_dest_mac_10000_136 + 0x0001)
      002235 74 75            [12]  967 	mov	a,#0x75
      002237 F0               [24]  968 	movx	@dptr,a
      002238 90 01 14         [24]  969 	mov	dptr,#(_send_arp_request_dest_mac_10000_136 + 0x0002)
      00223B 74 A4            [12]  970 	mov	a,#0xa4
      00223D F0               [24]  971 	movx	@dptr,a
      00223E 90 01 15         [24]  972 	mov	dptr,#(_send_arp_request_dest_mac_10000_136 + 0x0003)
      002241 74 8C            [12]  973 	mov	a,#0x8c
      002243 F0               [24]  974 	movx	@dptr,a
      002244 90 01 16         [24]  975 	mov	dptr,#(_send_arp_request_dest_mac_10000_136 + 0x0004)
      002247 74 41            [12]  976 	mov	a,#0x41
      002249 F0               [24]  977 	movx	@dptr,a
      00224A 90 01 17         [24]  978 	mov	dptr,#(_send_arp_request_dest_mac_10000_136 + 0x0005)
      00224D 74 31            [12]  979 	mov	a,#0x31
      00224F F0               [24]  980 	movx	@dptr,a
                                    981 ;	Eth.c:104: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      002250 90 01 18         [24]  982 	mov	dptr,#_send_arp_request_source_ip_10000_136
      002253 74 C0            [12]  983 	mov	a,#0xc0
      002255 F0               [24]  984 	movx	@dptr,a
      002256 90 01 19         [24]  985 	mov	dptr,#(_send_arp_request_source_ip_10000_136 + 0x0001)
      002259 74 A8            [12]  986 	mov	a,#0xa8
      00225B F0               [24]  987 	movx	@dptr,a
      00225C 90 01 1A         [24]  988 	mov	dptr,#(_send_arp_request_source_ip_10000_136 + 0x0002)
      00225F 74 01            [12]  989 	mov	a,#0x01
      002261 F0               [24]  990 	movx	@dptr,a
      002262 90 01 1B         [24]  991 	mov	dptr,#(_send_arp_request_source_ip_10000_136 + 0x0003)
      002265 74 64            [12]  992 	mov	a,#0x64
      002267 F0               [24]  993 	movx	@dptr,a
                                    994 ;	Eth.c:105: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      002268 90 01 1C         [24]  995 	mov	dptr,#_send_arp_request_target_ip_10000_136
      00226B 74 C0            [12]  996 	mov	a,#0xc0
      00226D F0               [24]  997 	movx	@dptr,a
      00226E 90 01 1D         [24]  998 	mov	dptr,#(_send_arp_request_target_ip_10000_136 + 0x0001)
      002271 74 A8            [12]  999 	mov	a,#0xa8
      002273 F0               [24] 1000 	movx	@dptr,a
      002274 90 01 1E         [24] 1001 	mov	dptr,#(_send_arp_request_target_ip_10000_136 + 0x0002)
      002277 74 01            [12] 1002 	mov	a,#0x01
      002279 F0               [24] 1003 	movx	@dptr,a
      00227A 90 01 1F         [24] 1004 	mov	dptr,#(_send_arp_request_target_ip_10000_136 + 0x0003)
      00227D F0               [24] 1005 	movx	@dptr,a
                                   1006 ;	Eth.c:109: arp_packet[0] = 0x0E;
      00227E 90 01 20         [24] 1007 	mov	dptr,#_send_arp_request_arp_packet_10000_136
      002281 74 0E            [12] 1008 	mov	a,#0x0e
      002283 F0               [24] 1009 	movx	@dptr,a
                                   1010 ;	Eth.c:117: for (int i = 0; i < 6; i++)
      002284 7E 00            [12] 1011 	mov	r6,#0x00
      002286 7F 00            [12] 1012 	mov	r7,#0x00
      002288                       1013 00115$:
      002288 C3               [12] 1014 	clr	c
      002289 EE               [12] 1015 	mov	a,r6
      00228A 94 06            [12] 1016 	subb	a,#0x06
      00228C EF               [12] 1017 	mov	a,r7
      00228D 64 80            [12] 1018 	xrl	a,#0x80
      00228F 94 80            [12] 1019 	subb	a,#0x80
      002291 50 48            [24] 1020 	jnc	00101$
                                   1021 ;	Eth.c:119: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      002293 8E 05            [24] 1022 	mov	ar5,r6
      002295 ED               [12] 1023 	mov	a,r5
      002296 04               [12] 1024 	inc	a
      002297 FC               [12] 1025 	mov	r4,a
      002298 33               [12] 1026 	rlc	a
      002299 95 E0            [12] 1027 	subb	a,acc
      00229B FB               [12] 1028 	mov	r3,a
      00229C EC               [12] 1029 	mov	a,r4
      00229D 24 20            [12] 1030 	add	a, #_send_arp_request_arp_packet_10000_136
      00229F FC               [12] 1031 	mov	r4,a
      0022A0 EB               [12] 1032 	mov	a,r3
      0022A1 34 01            [12] 1033 	addc	a, #(_send_arp_request_arp_packet_10000_136 >> 8)
      0022A3 FB               [12] 1034 	mov	r3,a
      0022A4 EE               [12] 1035 	mov	a,r6
      0022A5 24 12            [12] 1036 	add	a, #_send_arp_request_dest_mac_10000_136
      0022A7 F5 82            [12] 1037 	mov	dpl,a
      0022A9 EF               [12] 1038 	mov	a,r7
      0022AA 34 01            [12] 1039 	addc	a, #(_send_arp_request_dest_mac_10000_136 >> 8)
      0022AC F5 83            [12] 1040 	mov	dph,a
      0022AE E0               [24] 1041 	movx	a,@dptr
      0022AF 8C 82            [24] 1042 	mov	dpl,r4
      0022B1 8B 83            [24] 1043 	mov	dph,r3
      0022B3 F0               [24] 1044 	movx	@dptr,a
                                   1045 ;	Eth.c:120: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      0022B4 74 07            [12] 1046 	mov	a,#0x07
      0022B6 2D               [12] 1047 	add	a, r5
      0022B7 FD               [12] 1048 	mov	r5,a
      0022B8 33               [12] 1049 	rlc	a
      0022B9 95 E0            [12] 1050 	subb	a,acc
      0022BB FC               [12] 1051 	mov	r4,a
      0022BC ED               [12] 1052 	mov	a,r5
      0022BD 24 20            [12] 1053 	add	a, #_send_arp_request_arp_packet_10000_136
      0022BF FD               [12] 1054 	mov	r5,a
      0022C0 EC               [12] 1055 	mov	a,r4
      0022C1 34 01            [12] 1056 	addc	a, #(_send_arp_request_arp_packet_10000_136 >> 8)
      0022C3 FC               [12] 1057 	mov	r4,a
      0022C4 EE               [12] 1058 	mov	a,r6
      0022C5 24 0C            [12] 1059 	add	a, #_send_arp_request_source_mac_10000_136
      0022C7 F5 82            [12] 1060 	mov	dpl,a
      0022C9 EF               [12] 1061 	mov	a,r7
      0022CA 34 01            [12] 1062 	addc	a, #(_send_arp_request_source_mac_10000_136 >> 8)
      0022CC F5 83            [12] 1063 	mov	dph,a
      0022CE E0               [24] 1064 	movx	a,@dptr
      0022CF 8D 82            [24] 1065 	mov	dpl,r5
      0022D1 8C 83            [24] 1066 	mov	dph,r4
      0022D3 F0               [24] 1067 	movx	@dptr,a
                                   1068 ;	Eth.c:117: for (int i = 0; i < 6; i++)
      0022D4 0E               [12] 1069 	inc	r6
      0022D5 BE 00 B0         [24] 1070 	cjne	r6,#0x00,00115$
      0022D8 0F               [12] 1071 	inc	r7
      0022D9 80 AD            [24] 1072 	sjmp	00115$
      0022DB                       1073 00101$:
                                   1074 ;	Eth.c:124: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      0022DB 90 01 2D         [24] 1075 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x000d)
      0022DE 74 08            [12] 1076 	mov	a,#0x08
      0022E0 F0               [24] 1077 	movx	@dptr,a
                                   1078 ;	Eth.c:125: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      0022E1 90 01 2E         [24] 1079 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x000e)
      0022E4 74 06            [12] 1080 	mov	a,#0x06
      0022E6 F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	Eth.c:129: arp_packet[15] = 0x00;
      0022E7 90 01 2F         [24] 1083 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x000f)
      0022EA E4               [12] 1084 	clr	a
      0022EB F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	Eth.c:130: arp_packet[16] = 0x01;
      0022EC 90 01 30         [24] 1087 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x0010)
      0022EF 04               [12] 1088 	inc	a
      0022F0 F0               [24] 1089 	movx	@dptr,a
                                   1090 ;	Eth.c:133: arp_packet[17] = 0x08;
      0022F1 90 01 31         [24] 1091 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x0011)
      0022F4 74 08            [12] 1092 	mov	a,#0x08
      0022F6 F0               [24] 1093 	movx	@dptr,a
                                   1094 ;	Eth.c:134: arp_packet[18] = 0x00;
      0022F7 90 01 32         [24] 1095 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x0012)
      0022FA E4               [12] 1096 	clr	a
      0022FB F0               [24] 1097 	movx	@dptr,a
                                   1098 ;	Eth.c:137: arp_packet[19] = 0x06;
      0022FC 90 01 33         [24] 1099 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x0013)
      0022FF 74 06            [12] 1100 	mov	a,#0x06
      002301 F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	Eth.c:140: arp_packet[20] = 0x04;
      002302 90 01 34         [24] 1103 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x0014)
      002305 74 04            [12] 1104 	mov	a,#0x04
      002307 F0               [24] 1105 	movx	@dptr,a
                                   1106 ;	Eth.c:143: arp_packet[21] = 0x00;
      002308 90 01 35         [24] 1107 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x0015)
      00230B E4               [12] 1108 	clr	a
      00230C F0               [24] 1109 	movx	@dptr,a
                                   1110 ;	Eth.c:144: arp_packet[22] = 0x01;
      00230D 90 01 36         [24] 1111 	mov	dptr,#(_send_arp_request_arp_packet_10000_136 + 0x0016)
      002310 04               [12] 1112 	inc	a
      002311 F0               [24] 1113 	movx	@dptr,a
                                   1114 ;	Eth.c:147: for (int i = 0; i < 6; i++) {
      002312 7E 00            [12] 1115 	mov	r6,#0x00
      002314 7F 00            [12] 1116 	mov	r7,#0x00
      002316                       1117 00118$:
      002316 C3               [12] 1118 	clr	c
      002317 EE               [12] 1119 	mov	a,r6
      002318 94 06            [12] 1120 	subb	a,#0x06
      00231A EF               [12] 1121 	mov	a,r7
      00231B 64 80            [12] 1122 	xrl	a,#0x80
      00231D 94 80            [12] 1123 	subb	a,#0x80
      00231F 50 29            [24] 1124 	jnc	00102$
                                   1125 ;	Eth.c:148: arp_packet[23 + i] = source_mac[i];
      002321 8E 05            [24] 1126 	mov	ar5,r6
      002323 74 17            [12] 1127 	mov	a,#0x17
      002325 2D               [12] 1128 	add	a, r5
      002326 FD               [12] 1129 	mov	r5,a
      002327 33               [12] 1130 	rlc	a
      002328 95 E0            [12] 1131 	subb	a,acc
      00232A FC               [12] 1132 	mov	r4,a
      00232B ED               [12] 1133 	mov	a,r5
      00232C 24 20            [12] 1134 	add	a, #_send_arp_request_arp_packet_10000_136
      00232E FD               [12] 1135 	mov	r5,a
      00232F EC               [12] 1136 	mov	a,r4
      002330 34 01            [12] 1137 	addc	a, #(_send_arp_request_arp_packet_10000_136 >> 8)
      002332 FC               [12] 1138 	mov	r4,a
      002333 EE               [12] 1139 	mov	a,r6
      002334 24 0C            [12] 1140 	add	a, #_send_arp_request_source_mac_10000_136
      002336 F5 82            [12] 1141 	mov	dpl,a
      002338 EF               [12] 1142 	mov	a,r7
      002339 34 01            [12] 1143 	addc	a, #(_send_arp_request_source_mac_10000_136 >> 8)
      00233B F5 83            [12] 1144 	mov	dph,a
      00233D E0               [24] 1145 	movx	a,@dptr
      00233E 8D 82            [24] 1146 	mov	dpl,r5
      002340 8C 83            [24] 1147 	mov	dph,r4
      002342 F0               [24] 1148 	movx	@dptr,a
                                   1149 ;	Eth.c:147: for (int i = 0; i < 6; i++) {
      002343 0E               [12] 1150 	inc	r6
      002344 BE 00 CF         [24] 1151 	cjne	r6,#0x00,00118$
      002347 0F               [12] 1152 	inc	r7
      002348 80 CC            [24] 1153 	sjmp	00118$
      00234A                       1154 00102$:
                                   1155 ;	Eth.c:152: for (int i = 0; i < 4; i++) {
      00234A 7E 00            [12] 1156 	mov	r6,#0x00
      00234C 7F 00            [12] 1157 	mov	r7,#0x00
      00234E                       1158 00121$:
      00234E C3               [12] 1159 	clr	c
      00234F EE               [12] 1160 	mov	a,r6
      002350 94 04            [12] 1161 	subb	a,#0x04
      002352 EF               [12] 1162 	mov	a,r7
      002353 64 80            [12] 1163 	xrl	a,#0x80
      002355 94 80            [12] 1164 	subb	a,#0x80
      002357 50 29            [24] 1165 	jnc	00103$
                                   1166 ;	Eth.c:153: arp_packet[29 + i] = source_ip[i];
      002359 8E 05            [24] 1167 	mov	ar5,r6
      00235B 74 1D            [12] 1168 	mov	a,#0x1d
      00235D 2D               [12] 1169 	add	a, r5
      00235E FD               [12] 1170 	mov	r5,a
      00235F 33               [12] 1171 	rlc	a
      002360 95 E0            [12] 1172 	subb	a,acc
      002362 FC               [12] 1173 	mov	r4,a
      002363 ED               [12] 1174 	mov	a,r5
      002364 24 20            [12] 1175 	add	a, #_send_arp_request_arp_packet_10000_136
      002366 FD               [12] 1176 	mov	r5,a
      002367 EC               [12] 1177 	mov	a,r4
      002368 34 01            [12] 1178 	addc	a, #(_send_arp_request_arp_packet_10000_136 >> 8)
      00236A FC               [12] 1179 	mov	r4,a
      00236B EE               [12] 1180 	mov	a,r6
      00236C 24 18            [12] 1181 	add	a, #_send_arp_request_source_ip_10000_136
      00236E F5 82            [12] 1182 	mov	dpl,a
      002370 EF               [12] 1183 	mov	a,r7
      002371 34 01            [12] 1184 	addc	a, #(_send_arp_request_source_ip_10000_136 >> 8)
      002373 F5 83            [12] 1185 	mov	dph,a
      002375 E0               [24] 1186 	movx	a,@dptr
      002376 8D 82            [24] 1187 	mov	dpl,r5
      002378 8C 83            [24] 1188 	mov	dph,r4
      00237A F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	Eth.c:152: for (int i = 0; i < 4; i++) {
      00237B 0E               [12] 1191 	inc	r6
      00237C BE 00 CF         [24] 1192 	cjne	r6,#0x00,00121$
      00237F 0F               [12] 1193 	inc	r7
      002380 80 CC            [24] 1194 	sjmp	00121$
      002382                       1195 00103$:
                                   1196 ;	Eth.c:157: for (int i = 0; i < 6; i++) {
      002382 7F 00            [12] 1197 	mov	r7,#0x00
      002384                       1198 00124$:
      002384 BF 06 00         [24] 1199 	cjne	r7,#0x06,00215$
      002387                       1200 00215$:
      002387 50 19            [24] 1201 	jnc	00104$
                                   1202 ;	Eth.c:158: arp_packet[33 + i] = 0x00;
      002389 8F 06            [24] 1203 	mov	ar6,r7
      00238B 74 21            [12] 1204 	mov	a,#0x21
      00238D 2E               [12] 1205 	add	a, r6
      00238E FE               [12] 1206 	mov	r6,a
      00238F 33               [12] 1207 	rlc	a
      002390 95 E0            [12] 1208 	subb	a,acc
      002392 FD               [12] 1209 	mov	r5,a
      002393 EE               [12] 1210 	mov	a,r6
      002394 24 20            [12] 1211 	add	a, #_send_arp_request_arp_packet_10000_136
      002396 F5 82            [12] 1212 	mov	dpl,a
      002398 ED               [12] 1213 	mov	a,r5
      002399 34 01            [12] 1214 	addc	a, #(_send_arp_request_arp_packet_10000_136 >> 8)
      00239B F5 83            [12] 1215 	mov	dph,a
      00239D E4               [12] 1216 	clr	a
      00239E F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	Eth.c:157: for (int i = 0; i < 6; i++) {
      00239F 0F               [12] 1219 	inc	r7
      0023A0 80 E2            [24] 1220 	sjmp	00124$
      0023A2                       1221 00104$:
                                   1222 ;	Eth.c:162: for (int i = 0; i < 4; i++) {
      0023A2 7E 00            [12] 1223 	mov	r6,#0x00
      0023A4 7F 00            [12] 1224 	mov	r7,#0x00
      0023A6                       1225 00127$:
      0023A6 C3               [12] 1226 	clr	c
      0023A7 EE               [12] 1227 	mov	a,r6
      0023A8 94 04            [12] 1228 	subb	a,#0x04
      0023AA EF               [12] 1229 	mov	a,r7
      0023AB 64 80            [12] 1230 	xrl	a,#0x80
      0023AD 94 80            [12] 1231 	subb	a,#0x80
      0023AF 50 29            [24] 1232 	jnc	00105$
                                   1233 ;	Eth.c:163: arp_packet[39 + i] = target_ip[i];
      0023B1 8E 05            [24] 1234 	mov	ar5,r6
      0023B3 74 27            [12] 1235 	mov	a,#0x27
      0023B5 2D               [12] 1236 	add	a, r5
      0023B6 FD               [12] 1237 	mov	r5,a
      0023B7 33               [12] 1238 	rlc	a
      0023B8 95 E0            [12] 1239 	subb	a,acc
      0023BA FC               [12] 1240 	mov	r4,a
      0023BB ED               [12] 1241 	mov	a,r5
      0023BC 24 20            [12] 1242 	add	a, #_send_arp_request_arp_packet_10000_136
      0023BE FD               [12] 1243 	mov	r5,a
      0023BF EC               [12] 1244 	mov	a,r4
      0023C0 34 01            [12] 1245 	addc	a, #(_send_arp_request_arp_packet_10000_136 >> 8)
      0023C2 FC               [12] 1246 	mov	r4,a
      0023C3 EE               [12] 1247 	mov	a,r6
      0023C4 24 1C            [12] 1248 	add	a, #_send_arp_request_target_ip_10000_136
      0023C6 F5 82            [12] 1249 	mov	dpl,a
      0023C8 EF               [12] 1250 	mov	a,r7
      0023C9 34 01            [12] 1251 	addc	a, #(_send_arp_request_target_ip_10000_136 >> 8)
      0023CB F5 83            [12] 1252 	mov	dph,a
      0023CD E0               [24] 1253 	movx	a,@dptr
      0023CE 8D 82            [24] 1254 	mov	dpl,r5
      0023D0 8C 83            [24] 1255 	mov	dph,r4
      0023D2 F0               [24] 1256 	movx	@dptr,a
                                   1257 ;	Eth.c:162: for (int i = 0; i < 4; i++) {
      0023D3 0E               [12] 1258 	inc	r6
      0023D4 BE 00 CF         [24] 1259 	cjne	r6,#0x00,00127$
      0023D7 0F               [12] 1260 	inc	r7
      0023D8 80 CC            [24] 1261 	sjmp	00127$
      0023DA                       1262 00105$:
                                   1263 ;	Eth.c:176: spi_buffer_write(frame_size, start_address, arp_packet);
      0023DA 90 03 9C         [24] 1264 	mov	dptr,#_spi_buffer_write_PARM_2
      0023DD E4               [12] 1265 	clr	a
      0023DE F0               [24] 1266 	movx	@dptr,a
      0023DF 74 0C            [12] 1267 	mov	a,#0x0c
      0023E1 A3               [24] 1268 	inc	dptr
      0023E2 F0               [24] 1269 	movx	@dptr,a
      0023E3 90 03 9E         [24] 1270 	mov	dptr,#_spi_buffer_write_PARM_3
      0023E6 74 20            [12] 1271 	mov	a,#_send_arp_request_arp_packet_10000_136
      0023E8 F0               [24] 1272 	movx	@dptr,a
      0023E9 74 01            [12] 1273 	mov	a,#(_send_arp_request_arp_packet_10000_136 >> 8)
      0023EB A3               [24] 1274 	inc	dptr
      0023EC F0               [24] 1275 	movx	@dptr,a
      0023ED E4               [12] 1276 	clr	a
      0023EE A3               [24] 1277 	inc	dptr
      0023EF F0               [24] 1278 	movx	@dptr,a
      0023F0 90 00 2C         [24] 1279 	mov	dptr,#0x002c
      0023F3 12 3E 54         [24] 1280 	lcall	_spi_buffer_write
                                   1281 ;	Eth.c:179: enc28j60_set_transmit_pointers(start_address, end_address);
      0023F6 90 01 06         [24] 1282 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0023F9 74 2B            [12] 1283 	mov	a,#0x2b
      0023FB F0               [24] 1284 	movx	@dptr,a
      0023FC 74 0C            [12] 1285 	mov	a,#0x0c
      0023FE A3               [24] 1286 	inc	dptr
      0023FF F0               [24] 1287 	movx	@dptr,a
      002400 90 0C 00         [24] 1288 	mov	dptr,#0x0c00
      002403 12 21 15         [24] 1289 	lcall	_enc28j60_set_transmit_pointers
                                   1290 ;	Eth.c:183: enc28j60_start_transmission();
      002406 12 20 F4         [24] 1291 	lcall	_enc28j60_start_transmission
                                   1292 ;	Eth.c:186: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      002409 90 01 F4         [24] 1293 	mov	dptr,#0x01f4
      00240C 12 21 8C         [24] 1294 	lcall	_wait_for_transmission_complete
      00240F E5 82            [12] 1295 	mov	a, dpl
      002411 60 33            [24] 1296 	jz	00112$
                                   1297 ;	Eth.c:188: if (enc28j60_transmission_successful()) {
      002413 12 21 EF         [24] 1298 	lcall	_enc28j60_transmission_successful
      002416 E5 82            [12] 1299 	mov	a, dpl
      002418 60 16            [24] 1300 	jz	00109$
                                   1301 ;	Eth.c:189: printf("ARP request sent successfully.\n\r");
      00241A 74 3E            [12] 1302 	mov	a,#___str_1
      00241C C0 E0            [24] 1303 	push	acc
      00241E 74 5F            [12] 1304 	mov	a,#(___str_1 >> 8)
      002420 C0 E0            [24] 1305 	push	acc
      002422 74 80            [12] 1306 	mov	a,#0x80
      002424 C0 E0            [24] 1307 	push	acc
      002426 12 54 C1         [24] 1308 	lcall	_printf
      002429 15 81            [12] 1309 	dec	sp
      00242B 15 81            [12] 1310 	dec	sp
      00242D 15 81            [12] 1311 	dec	sp
      00242F 22               [24] 1312 	ret
      002430                       1313 00109$:
                                   1314 ;	Eth.c:191: printf("ARP transmission failed. Check error flags.\n\r");
      002430 74 5F            [12] 1315 	mov	a,#___str_2
      002432 C0 E0            [24] 1316 	push	acc
      002434 74 5F            [12] 1317 	mov	a,#(___str_2 >> 8)
      002436 C0 E0            [24] 1318 	push	acc
      002438 74 80            [12] 1319 	mov	a,#0x80
      00243A C0 E0            [24] 1320 	push	acc
      00243C 12 54 C1         [24] 1321 	lcall	_printf
      00243F 15 81            [12] 1322 	dec	sp
      002441 15 81            [12] 1323 	dec	sp
      002443 15 81            [12] 1324 	dec	sp
      002445 22               [24] 1325 	ret
      002446                       1326 00112$:
                                   1327 ;	Eth.c:194: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      002446 74 8D            [12] 1328 	mov	a,#___str_3
      002448 C0 E0            [24] 1329 	push	acc
      00244A 74 5F            [12] 1330 	mov	a,#(___str_3 >> 8)
      00244C C0 E0            [24] 1331 	push	acc
      00244E 74 80            [12] 1332 	mov	a,#0x80
      002450 C0 E0            [24] 1333 	push	acc
      002452 12 54 C1         [24] 1334 	lcall	_printf
      002455 15 81            [12] 1335 	dec	sp
      002457 15 81            [12] 1336 	dec	sp
      002459 15 81            [12] 1337 	dec	sp
                                   1338 ;	Eth.c:196: }
      00245B 22               [24] 1339 	ret
                                   1340 ;------------------------------------------------------------
                                   1341 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                   1342 ;------------------------------------------------------------
                                   1343 ;i                         Allocated with name '_external_interrupt0_isr_i_10000_155'
                                   1344 ;------------------------------------------------------------
                                   1345 ;	Eth.c:198: void external_interrupt0_isr(void) __interrupt (0)
                                   1346 ;	-----------------------------------------
                                   1347 ;	 function external_interrupt0_isr
                                   1348 ;	-----------------------------------------
      00245C                       1349 _external_interrupt0_isr:
      00245C C0 21            [24] 1350 	push	bits
      00245E C0 E0            [24] 1351 	push	acc
      002460 C0 F0            [24] 1352 	push	b
      002462 C0 82            [24] 1353 	push	dpl
      002464 C0 83            [24] 1354 	push	dph
      002466 C0 07            [24] 1355 	push	(0+7)
      002468 C0 06            [24] 1356 	push	(0+6)
      00246A C0 05            [24] 1357 	push	(0+5)
      00246C C0 04            [24] 1358 	push	(0+4)
      00246E C0 03            [24] 1359 	push	(0+3)
      002470 C0 02            [24] 1360 	push	(0+2)
      002472 C0 01            [24] 1361 	push	(0+1)
      002474 C0 00            [24] 1362 	push	(0+0)
      002476 C0 D0            [24] 1363 	push	psw
      002478 75 D0 00         [24] 1364 	mov	psw,#0x00
                                   1365 ;	Eth.c:202: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
      00247B 74 D0            [12] 1366 	mov	a,#___str_4
      00247D C0 E0            [24] 1367 	push	acc
      00247F 74 5F            [12] 1368 	mov	a,#(___str_4 >> 8)
      002481 C0 E0            [24] 1369 	push	acc
      002483 74 80            [12] 1370 	mov	a,#0x80
      002485 C0 E0            [24] 1371 	push	acc
      002487 12 54 C1         [24] 1372 	lcall	_printf
      00248A 15 81            [12] 1373 	dec	sp
      00248C 15 81            [12] 1374 	dec	sp
      00248E 15 81            [12] 1375 	dec	sp
                                   1376 ;	Eth.c:217: i++;
      002490 90 01 4B         [24] 1377 	mov	dptr,#_external_interrupt0_isr_i_10000_155
      002493 E0               [24] 1378 	movx	a,@dptr
      002494 24 01            [12] 1379 	add	a, #0x01
      002496 F0               [24] 1380 	movx	@dptr,a
      002497 A3               [24] 1381 	inc	dptr
      002498 E0               [24] 1382 	movx	a,@dptr
      002499 34 00            [12] 1383 	addc	a, #0x00
      00249B F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	Eth.c:218: }
      00249C D0 D0            [24] 1386 	pop	psw
      00249E D0 00            [24] 1387 	pop	(0+0)
      0024A0 D0 01            [24] 1388 	pop	(0+1)
      0024A2 D0 02            [24] 1389 	pop	(0+2)
      0024A4 D0 03            [24] 1390 	pop	(0+3)
      0024A6 D0 04            [24] 1391 	pop	(0+4)
      0024A8 D0 05            [24] 1392 	pop	(0+5)
      0024AA D0 06            [24] 1393 	pop	(0+6)
      0024AC D0 07            [24] 1394 	pop	(0+7)
      0024AE D0 83            [24] 1395 	pop	dph
      0024B0 D0 82            [24] 1396 	pop	dpl
      0024B2 D0 F0            [24] 1397 	pop	b
      0024B4 D0 E0            [24] 1398 	pop	acc
      0024B6 D0 21            [24] 1399 	pop	bits
      0024B8 32               [24] 1400 	reti
                                   1401 ;------------------------------------------------------------
                                   1402 ;Allocation info for local variables in function 'enc_buffer_init'
                                   1403 ;------------------------------------------------------------
                                   1404 ;end_address               Allocated with name '_enc_buffer_init_PARM_2'
                                   1405 ;start_address             Allocated with name '_enc_buffer_init_start_address_10000_157'
                                   1406 ;------------------------------------------------------------
                                   1407 ;	Eth.c:221: void enc_buffer_init(uint16_t start_address, uint16_t end_address) {
                                   1408 ;	-----------------------------------------
                                   1409 ;	 function enc_buffer_init
                                   1410 ;	-----------------------------------------
      0024B9                       1411 _enc_buffer_init:
      0024B9 AF 83            [24] 1412 	mov	r7,dph
      0024BB E5 82            [12] 1413 	mov	a,dpl
      0024BD 90 01 4F         [24] 1414 	mov	dptr,#_enc_buffer_init_start_address_10000_157
      0024C0 F0               [24] 1415 	movx	@dptr,a
      0024C1 EF               [12] 1416 	mov	a,r7
      0024C2 A3               [24] 1417 	inc	dptr
      0024C3 F0               [24] 1418 	movx	@dptr,a
                                   1419 ;	Eth.c:223: if (start_address > 0x1FFF || end_address > 0x1FFF) {
      0024C4 90 01 4F         [24] 1420 	mov	dptr,#_enc_buffer_init_start_address_10000_157
      0024C7 E0               [24] 1421 	movx	a,@dptr
      0024C8 FE               [12] 1422 	mov	r6,a
      0024C9 A3               [24] 1423 	inc	dptr
      0024CA E0               [24] 1424 	movx	a,@dptr
      0024CB FF               [12] 1425 	mov	r7,a
      0024CC C3               [12] 1426 	clr	c
      0024CD 74 FF            [12] 1427 	mov	a,#0xff
      0024CF 9E               [12] 1428 	subb	a,r6
      0024D0 74 1F            [12] 1429 	mov	a,#0x1f
      0024D2 9F               [12] 1430 	subb	a,r7
      0024D3 40 15            [24] 1431 	jc	00101$
      0024D5 90 01 4D         [24] 1432 	mov	dptr,#_enc_buffer_init_PARM_2
      0024D8 E0               [24] 1433 	movx	a,@dptr
      0024D9 FC               [12] 1434 	mov	r4,a
      0024DA A3               [24] 1435 	inc	dptr
      0024DB E0               [24] 1436 	movx	a,@dptr
      0024DC FD               [12] 1437 	mov	r5,a
      0024DD 8C 02            [24] 1438 	mov	ar2,r4
      0024DF 8D 03            [24] 1439 	mov	ar3,r5
      0024E1 C3               [12] 1440 	clr	c
      0024E2 74 FF            [12] 1441 	mov	a,#0xff
      0024E4 9A               [12] 1442 	subb	a,r2
      0024E5 74 1F            [12] 1443 	mov	a,#0x1f
      0024E7 9B               [12] 1444 	subb	a,r3
      0024E8 50 2A            [24] 1445 	jnc	00102$
      0024EA                       1446 00101$:
                                   1447 ;	Eth.c:224: printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
      0024EA 90 01 4D         [24] 1448 	mov	dptr,#_enc_buffer_init_PARM_2
      0024ED E0               [24] 1449 	movx	a,@dptr
      0024EE C0 E0            [24] 1450 	push	acc
      0024F0 A3               [24] 1451 	inc	dptr
      0024F1 E0               [24] 1452 	movx	a,@dptr
      0024F2 C0 E0            [24] 1453 	push	acc
      0024F4 90 01 4F         [24] 1454 	mov	dptr,#_enc_buffer_init_start_address_10000_157
      0024F7 E0               [24] 1455 	movx	a,@dptr
      0024F8 C0 E0            [24] 1456 	push	acc
      0024FA A3               [24] 1457 	inc	dptr
      0024FB E0               [24] 1458 	movx	a,@dptr
      0024FC C0 E0            [24] 1459 	push	acc
      0024FE 74 F7            [12] 1460 	mov	a,#___str_5
      002500 C0 E0            [24] 1461 	push	acc
      002502 74 5F            [12] 1462 	mov	a,#(___str_5 >> 8)
      002504 C0 E0            [24] 1463 	push	acc
      002506 74 80            [12] 1464 	mov	a,#0x80
      002508 C0 E0            [24] 1465 	push	acc
      00250A 12 54 C1         [24] 1466 	lcall	_printf
      00250D E5 81            [12] 1467 	mov	a,sp
      00250F 24 F9            [12] 1468 	add	a,#0xf9
      002511 F5 81            [12] 1469 	mov	sp,a
                                   1470 ;	Eth.c:226: return;
      002513 22               [24] 1471 	ret
      002514                       1472 00102$:
                                   1473 ;	Eth.c:229: start_address &= ~1;  // Align to even address
      002514 53 06 FE         [24] 1474 	anl	ar6,#0xfe
      002517 90 01 4F         [24] 1475 	mov	dptr,#_enc_buffer_init_start_address_10000_157
      00251A EE               [12] 1476 	mov	a,r6
      00251B F0               [24] 1477 	movx	@dptr,a
      00251C EF               [12] 1478 	mov	a,r7
      00251D A3               [24] 1479 	inc	dptr
      00251E F0               [24] 1480 	movx	@dptr,a
                                   1481 ;	Eth.c:231: spi_control_write(0, 0x00, (uint8_t) (start_address & 0xFF)); // ERDPTL
      00251F 90 01 4F         [24] 1482 	mov	dptr,#_enc_buffer_init_start_address_10000_157
      002522 E0               [24] 1483 	movx	a,@dptr
      002523 FE               [12] 1484 	mov	r6,a
      002524 A3               [24] 1485 	inc	dptr
      002525 E0               [24] 1486 	movx	a,@dptr
      002526 FF               [12] 1487 	mov	r7,a
      002527 8E 03            [24] 1488 	mov	ar3,r6
      002529 90 03 84         [24] 1489 	mov	dptr,#_spi_control_write_PARM_2
      00252C E4               [12] 1490 	clr	a
      00252D F0               [24] 1491 	movx	@dptr,a
      00252E 90 03 85         [24] 1492 	mov	dptr,#_spi_control_write_PARM_3
      002531 EB               [12] 1493 	mov	a,r3
      002532 F0               [24] 1494 	movx	@dptr,a
      002533 75 82 00         [24] 1495 	mov	dpl, #0x00
      002536 C0 07            [24] 1496 	push	ar7
      002538 C0 06            [24] 1497 	push	ar6
      00253A C0 05            [24] 1498 	push	ar5
      00253C C0 04            [24] 1499 	push	ar4
      00253E C0 03            [24] 1500 	push	ar3
      002540 12 39 25         [24] 1501 	lcall	_spi_control_write
      002543 D0 03            [24] 1502 	pop	ar3
      002545 D0 04            [24] 1503 	pop	ar4
      002547 D0 05            [24] 1504 	pop	ar5
      002549 D0 06            [24] 1505 	pop	ar6
      00254B D0 07            [24] 1506 	pop	ar7
                                   1507 ;	Eth.c:232: spi_control_write(0, 0x01, (uint8_t) (start_address >> 8)); // ERDPTH
      00254D 8F 02            [24] 1508 	mov	ar2,r7
      00254F 90 03 84         [24] 1509 	mov	dptr,#_spi_control_write_PARM_2
      002552 74 01            [12] 1510 	mov	a,#0x01
      002554 F0               [24] 1511 	movx	@dptr,a
      002555 90 03 85         [24] 1512 	mov	dptr,#_spi_control_write_PARM_3
      002558 EA               [12] 1513 	mov	a,r2
      002559 F0               [24] 1514 	movx	@dptr,a
      00255A 75 82 00         [24] 1515 	mov	dpl, #0x00
      00255D C0 07            [24] 1516 	push	ar7
      00255F C0 06            [24] 1517 	push	ar6
      002561 C0 05            [24] 1518 	push	ar5
      002563 C0 04            [24] 1519 	push	ar4
      002565 C0 03            [24] 1520 	push	ar3
      002567 C0 02            [24] 1521 	push	ar2
      002569 12 39 25         [24] 1522 	lcall	_spi_control_write
      00256C D0 02            [24] 1523 	pop	ar2
      00256E D0 03            [24] 1524 	pop	ar3
      002570 D0 04            [24] 1525 	pop	ar4
      002572 D0 05            [24] 1526 	pop	ar5
      002574 D0 06            [24] 1527 	pop	ar6
      002576 D0 07            [24] 1528 	pop	ar7
                                   1529 ;	Eth.c:233: spi_control_write(0, 0x08, (uint8_t) (start_address & 0xFF)); // ERXSTL
      002578 90 03 84         [24] 1530 	mov	dptr,#_spi_control_write_PARM_2
      00257B 74 08            [12] 1531 	mov	a,#0x08
      00257D F0               [24] 1532 	movx	@dptr,a
      00257E 90 03 85         [24] 1533 	mov	dptr,#_spi_control_write_PARM_3
      002581 EB               [12] 1534 	mov	a,r3
      002582 F0               [24] 1535 	movx	@dptr,a
      002583 75 82 00         [24] 1536 	mov	dpl, #0x00
      002586 C0 07            [24] 1537 	push	ar7
      002588 C0 06            [24] 1538 	push	ar6
      00258A C0 05            [24] 1539 	push	ar5
      00258C C0 04            [24] 1540 	push	ar4
      00258E C0 03            [24] 1541 	push	ar3
      002590 C0 02            [24] 1542 	push	ar2
      002592 12 39 25         [24] 1543 	lcall	_spi_control_write
      002595 D0 02            [24] 1544 	pop	ar2
      002597 D0 03            [24] 1545 	pop	ar3
      002599 D0 04            [24] 1546 	pop	ar4
      00259B D0 05            [24] 1547 	pop	ar5
      00259D D0 06            [24] 1548 	pop	ar6
      00259F D0 07            [24] 1549 	pop	ar7
                                   1550 ;	Eth.c:234: spi_control_write(0, 0x09, (uint8_t) (start_address >> 8)); // ERXSTH
      0025A1 90 03 84         [24] 1551 	mov	dptr,#_spi_control_write_PARM_2
      0025A4 74 09            [12] 1552 	mov	a,#0x09
      0025A6 F0               [24] 1553 	movx	@dptr,a
      0025A7 90 03 85         [24] 1554 	mov	dptr,#_spi_control_write_PARM_3
      0025AA EA               [12] 1555 	mov	a,r2
      0025AB F0               [24] 1556 	movx	@dptr,a
      0025AC 75 82 00         [24] 1557 	mov	dpl, #0x00
      0025AF C0 07            [24] 1558 	push	ar7
      0025B1 C0 06            [24] 1559 	push	ar6
      0025B3 C0 05            [24] 1560 	push	ar5
      0025B5 C0 04            [24] 1561 	push	ar4
      0025B7 C0 03            [24] 1562 	push	ar3
      0025B9 C0 02            [24] 1563 	push	ar2
      0025BB 12 39 25         [24] 1564 	lcall	_spi_control_write
      0025BE D0 02            [24] 1565 	pop	ar2
      0025C0 D0 03            [24] 1566 	pop	ar3
      0025C2 D0 04            [24] 1567 	pop	ar4
      0025C4 D0 05            [24] 1568 	pop	ar5
      0025C6 D0 06            [24] 1569 	pop	ar6
      0025C8 D0 07            [24] 1570 	pop	ar7
                                   1571 ;	Eth.c:235: spi_control_write(0, 0x0A, (uint8_t) (end_address & 0xFF)); // ERXNDL
      0025CA 8C 01            [24] 1572 	mov	ar1,r4
      0025CC 90 03 84         [24] 1573 	mov	dptr,#_spi_control_write_PARM_2
      0025CF 74 0A            [12] 1574 	mov	a,#0x0a
      0025D1 F0               [24] 1575 	movx	@dptr,a
      0025D2 90 03 85         [24] 1576 	mov	dptr,#_spi_control_write_PARM_3
      0025D5 E9               [12] 1577 	mov	a,r1
      0025D6 F0               [24] 1578 	movx	@dptr,a
      0025D7 75 82 00         [24] 1579 	mov	dpl, #0x00
      0025DA C0 07            [24] 1580 	push	ar7
      0025DC C0 06            [24] 1581 	push	ar6
      0025DE C0 05            [24] 1582 	push	ar5
      0025E0 C0 04            [24] 1583 	push	ar4
      0025E2 C0 03            [24] 1584 	push	ar3
      0025E4 C0 02            [24] 1585 	push	ar2
      0025E6 12 39 25         [24] 1586 	lcall	_spi_control_write
      0025E9 D0 02            [24] 1587 	pop	ar2
      0025EB D0 03            [24] 1588 	pop	ar3
      0025ED D0 04            [24] 1589 	pop	ar4
      0025EF D0 05            [24] 1590 	pop	ar5
      0025F1 D0 06            [24] 1591 	pop	ar6
      0025F3 D0 07            [24] 1592 	pop	ar7
                                   1593 ;	Eth.c:236: spi_control_write(0, 0x0B, (uint8_t) (end_address >> 8)); // ERXNDH
      0025F5 8D 01            [24] 1594 	mov	ar1,r5
      0025F7 90 03 84         [24] 1595 	mov	dptr,#_spi_control_write_PARM_2
      0025FA 74 0B            [12] 1596 	mov	a,#0x0b
      0025FC F0               [24] 1597 	movx	@dptr,a
      0025FD 90 03 85         [24] 1598 	mov	dptr,#_spi_control_write_PARM_3
      002600 E9               [12] 1599 	mov	a,r1
      002601 F0               [24] 1600 	movx	@dptr,a
      002602 75 82 00         [24] 1601 	mov	dpl, #0x00
      002605 C0 07            [24] 1602 	push	ar7
      002607 C0 06            [24] 1603 	push	ar6
      002609 C0 05            [24] 1604 	push	ar5
      00260B C0 04            [24] 1605 	push	ar4
      00260D C0 03            [24] 1606 	push	ar3
      00260F C0 02            [24] 1607 	push	ar2
      002611 12 39 25         [24] 1608 	lcall	_spi_control_write
      002614 D0 02            [24] 1609 	pop	ar2
      002616 D0 03            [24] 1610 	pop	ar3
      002618 D0 04            [24] 1611 	pop	ar4
      00261A D0 05            [24] 1612 	pop	ar5
      00261C D0 06            [24] 1613 	pop	ar6
      00261E D0 07            [24] 1614 	pop	ar7
                                   1615 ;	Eth.c:237: spi_control_write(0, 0x0C, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
      002620 90 03 84         [24] 1616 	mov	dptr,#_spi_control_write_PARM_2
      002623 74 0C            [12] 1617 	mov	a,#0x0c
      002625 F0               [24] 1618 	movx	@dptr,a
      002626 90 03 85         [24] 1619 	mov	dptr,#_spi_control_write_PARM_3
      002629 EB               [12] 1620 	mov	a,r3
      00262A F0               [24] 1621 	movx	@dptr,a
      00262B 75 82 00         [24] 1622 	mov	dpl, #0x00
      00262E C0 07            [24] 1623 	push	ar7
      002630 C0 06            [24] 1624 	push	ar6
      002632 C0 05            [24] 1625 	push	ar5
      002634 C0 04            [24] 1626 	push	ar4
      002636 C0 02            [24] 1627 	push	ar2
      002638 12 39 25         [24] 1628 	lcall	_spi_control_write
      00263B D0 02            [24] 1629 	pop	ar2
      00263D D0 04            [24] 1630 	pop	ar4
      00263F D0 05            [24] 1631 	pop	ar5
      002641 D0 06            [24] 1632 	pop	ar6
      002643 D0 07            [24] 1633 	pop	ar7
                                   1634 ;	Eth.c:238: spi_control_write(0, 0x0D, (uint8_t) (start_address >> 8)); // ERXRDPTH
      002645 90 03 84         [24] 1635 	mov	dptr,#_spi_control_write_PARM_2
      002648 74 0D            [12] 1636 	mov	a,#0x0d
      00264A F0               [24] 1637 	movx	@dptr,a
      00264B 90 03 85         [24] 1638 	mov	dptr,#_spi_control_write_PARM_3
      00264E EA               [12] 1639 	mov	a,r2
      00264F F0               [24] 1640 	movx	@dptr,a
      002650 75 82 00         [24] 1641 	mov	dpl, #0x00
      002653 C0 07            [24] 1642 	push	ar7
      002655 C0 06            [24] 1643 	push	ar6
      002657 C0 05            [24] 1644 	push	ar5
      002659 C0 04            [24] 1645 	push	ar4
      00265B 12 39 25         [24] 1646 	lcall	_spi_control_write
      00265E D0 04            [24] 1647 	pop	ar4
      002660 D0 05            [24] 1648 	pop	ar5
      002662 D0 06            [24] 1649 	pop	ar6
      002664 D0 07            [24] 1650 	pop	ar7
                                   1651 ;	Eth.c:239: printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
      002666 C0 04            [24] 1652 	push	ar4
      002668 C0 05            [24] 1653 	push	ar5
      00266A C0 06            [24] 1654 	push	ar6
      00266C C0 07            [24] 1655 	push	ar7
      00266E 74 28            [12] 1656 	mov	a,#___str_6
      002670 C0 E0            [24] 1657 	push	acc
      002672 74 60            [12] 1658 	mov	a,#(___str_6 >> 8)
      002674 C0 E0            [24] 1659 	push	acc
      002676 74 80            [12] 1660 	mov	a,#0x80
      002678 C0 E0            [24] 1661 	push	acc
      00267A 12 54 C1         [24] 1662 	lcall	_printf
      00267D E5 81            [12] 1663 	mov	a,sp
      00267F 24 F9            [12] 1664 	add	a,#0xf9
      002681 F5 81            [12] 1665 	mov	sp,a
                                   1666 ;	Eth.c:241: }
      002683 22               [24] 1667 	ret
                                   1668 ;------------------------------------------------------------
                                   1669 ;Allocation info for local variables in function 'enc_init'
                                   1670 ;------------------------------------------------------------
                                   1671 ;sloc0                     Allocated with name '_enc_init_sloc0_1_0'
                                   1672 ;sloc1                     Allocated with name '_enc_init_sloc1_1_0'
                                   1673 ;sloc2                     Allocated with name '_enc_init_sloc2_1_0'
                                   1674 ;sloc3                     Allocated with name '_enc_init_sloc3_1_0'
                                   1675 ;mac                       Allocated with name '_enc_init_mac_10000_160'
                                   1676 ;rx_start                  Allocated with name '_enc_init_rx_start_10001_162'
                                   1677 ;rx_end                    Allocated with name '_enc_init_rx_end_10001_162'
                                   1678 ;read_macon3               Allocated with name '_enc_init_read_macon3_10002_163'
                                   1679 ;read_macon1               Allocated with name '_enc_init_read_macon1_10003_164'
                                   1680 ;------------------------------------------------------------
                                   1681 ;	Eth.c:243: void enc_init(const uint8_t *mac)
                                   1682 ;	-----------------------------------------
                                   1683 ;	 function enc_init
                                   1684 ;	-----------------------------------------
      002684                       1685 _enc_init:
      002684 AF F0            [24] 1686 	mov	r7,b
      002686 AE 83            [24] 1687 	mov	r6,dph
      002688 E5 82            [12] 1688 	mov	a,dpl
      00268A 90 01 51         [24] 1689 	mov	dptr,#_enc_init_mac_10000_160
      00268D F0               [24] 1690 	movx	@dptr,a
      00268E EE               [12] 1691 	mov	a,r6
      00268F A3               [24] 1692 	inc	dptr
      002690 F0               [24] 1693 	movx	@dptr,a
      002691 EF               [12] 1694 	mov	a,r7
      002692 A3               [24] 1695 	inc	dptr
      002693 F0               [24] 1696 	movx	@dptr,a
                                   1697 ;	Eth.c:246: enc_reset();
      002694 12 39 9F         [24] 1698 	lcall	_enc_reset
                                   1699 ;	Eth.c:249: while (!(mac_spi_read(0x1D, 0) & 0x01))
      002697                       1700 00101$:
      002697 90 03 8D         [24] 1701 	mov	dptr,#_mac_spi_read_PARM_2
      00269A E4               [12] 1702 	clr	a
      00269B F0               [24] 1703 	movx	@dptr,a
      00269C 75 82 1D         [24] 1704 	mov	dpl, #0x1d
      00269F 12 3A 9B         [24] 1705 	lcall	_mac_spi_read
      0026A2 E5 82            [12] 1706 	mov	a, dpl
      0026A4 30 E0 F0         [24] 1707 	jnb	acc.0,00101$
                                   1708 ;	Eth.c:257: enc_buffer_init(rx_start, rx_end);
      0026A7 90 01 4D         [24] 1709 	mov	dptr,#_enc_buffer_init_PARM_2
      0026AA 74 FF            [12] 1710 	mov	a,#0xff
      0026AC F0               [24] 1711 	movx	@dptr,a
      0026AD 74 0B            [12] 1712 	mov	a,#0x0b
      0026AF A3               [24] 1713 	inc	dptr
      0026B0 F0               [24] 1714 	movx	@dptr,a
      0026B1 90 00 00         [24] 1715 	mov	dptr,#0x0000
      0026B4 12 24 B9         [24] 1716 	lcall	_enc_buffer_init
                                   1717 ;	Eth.c:268: spi_control_write(2, 0x02, 0x70); // MACON3: Padding, CRC, and frame length checking enabled37
      0026B7 90 03 84         [24] 1718 	mov	dptr,#_spi_control_write_PARM_2
      0026BA 74 02            [12] 1719 	mov	a,#0x02
      0026BC F0               [24] 1720 	movx	@dptr,a
      0026BD 90 03 85         [24] 1721 	mov	dptr,#_spi_control_write_PARM_3
      0026C0 74 70            [12] 1722 	mov	a,#0x70
      0026C2 F0               [24] 1723 	movx	@dptr,a
      0026C3 75 82 02         [24] 1724 	mov	dpl, #0x02
      0026C6 12 39 25         [24] 1725 	lcall	_spi_control_write
                                   1726 ;	Eth.c:269: spi_control_write(2, 0x03, 0x40); // MACON4: IEEE compliance00
      0026C9 90 03 84         [24] 1727 	mov	dptr,#_spi_control_write_PARM_2
      0026CC 74 03            [12] 1728 	mov	a,#0x03
      0026CE F0               [24] 1729 	movx	@dptr,a
      0026CF 90 03 85         [24] 1730 	mov	dptr,#_spi_control_write_PARM_3
      0026D2 74 40            [12] 1731 	mov	a,#0x40
      0026D4 F0               [24] 1732 	movx	@dptr,a
      0026D5 75 82 02         [24] 1733 	mov	dpl, #0x02
      0026D8 12 39 25         [24] 1734 	lcall	_spi_control_write
                                   1735 ;	Eth.c:272: spi_control_write(2, 0x0A, 0xEE); // MAMXFLL
      0026DB 90 03 84         [24] 1736 	mov	dptr,#_spi_control_write_PARM_2
      0026DE 74 0A            [12] 1737 	mov	a,#0x0a
      0026E0 F0               [24] 1738 	movx	@dptr,a
      0026E1 90 03 85         [24] 1739 	mov	dptr,#_spi_control_write_PARM_3
      0026E4 74 EE            [12] 1740 	mov	a,#0xee
      0026E6 F0               [24] 1741 	movx	@dptr,a
      0026E7 75 82 02         [24] 1742 	mov	dpl, #0x02
      0026EA 12 39 25         [24] 1743 	lcall	_spi_control_write
                                   1744 ;	Eth.c:273: spi_control_write(2, 0x0B, 0x05); // MAMXFLH
      0026ED 90 03 84         [24] 1745 	mov	dptr,#_spi_control_write_PARM_2
      0026F0 74 0B            [12] 1746 	mov	a,#0x0b
      0026F2 F0               [24] 1747 	movx	@dptr,a
      0026F3 90 03 85         [24] 1748 	mov	dptr,#_spi_control_write_PARM_3
      0026F6 74 05            [12] 1749 	mov	a,#0x05
      0026F8 F0               [24] 1750 	movx	@dptr,a
      0026F9 75 82 02         [24] 1751 	mov	dpl, #0x02
      0026FC 12 39 25         [24] 1752 	lcall	_spi_control_write
                                   1753 ;	Eth.c:276: spi_control_write(2, 0x04, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
      0026FF 90 03 84         [24] 1754 	mov	dptr,#_spi_control_write_PARM_2
      002702 74 04            [12] 1755 	mov	a,#0x04
      002704 F0               [24] 1756 	movx	@dptr,a
      002705 90 03 85         [24] 1757 	mov	dptr,#_spi_control_write_PARM_3
      002708 74 12            [12] 1758 	mov	a,#0x12
      00270A F0               [24] 1759 	movx	@dptr,a
      00270B 75 82 02         [24] 1760 	mov	dpl, #0x02
      00270E 12 39 25         [24] 1761 	lcall	_spi_control_write
                                   1762 ;	Eth.c:277: spi_control_write(2, 0x06, 0x12); // MAIPGL: Non-back-to-back gap
      002711 90 03 84         [24] 1763 	mov	dptr,#_spi_control_write_PARM_2
      002714 74 06            [12] 1764 	mov	a,#0x06
      002716 F0               [24] 1765 	movx	@dptr,a
      002717 90 03 85         [24] 1766 	mov	dptr,#_spi_control_write_PARM_3
      00271A 74 12            [12] 1767 	mov	a,#0x12
      00271C F0               [24] 1768 	movx	@dptr,a
      00271D 75 82 02         [24] 1769 	mov	dpl, #0x02
      002720 12 39 25         [24] 1770 	lcall	_spi_control_write
                                   1771 ;	Eth.c:278: spi_control_write(2, 0x07, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)
      002723 90 03 84         [24] 1772 	mov	dptr,#_spi_control_write_PARM_2
      002726 74 07            [12] 1773 	mov	a,#0x07
      002728 F0               [24] 1774 	movx	@dptr,a
      002729 90 03 85         [24] 1775 	mov	dptr,#_spi_control_write_PARM_3
      00272C 74 0C            [12] 1776 	mov	a,#0x0c
      00272E F0               [24] 1777 	movx	@dptr,a
      00272F 75 82 02         [24] 1778 	mov	dpl, #0x02
      002732 12 39 25         [24] 1779 	lcall	_spi_control_write
                                   1780 ;	Eth.c:281: spi_control_write(3, 0x01, mac[5]); // MAADR6
      002735 90 01 51         [24] 1781 	mov	dptr,#_enc_init_mac_10000_160
      002738 E0               [24] 1782 	movx	a,@dptr
      002739 FD               [12] 1783 	mov	r5,a
      00273A A3               [24] 1784 	inc	dptr
      00273B E0               [24] 1785 	movx	a,@dptr
      00273C FE               [12] 1786 	mov	r6,a
      00273D A3               [24] 1787 	inc	dptr
      00273E E0               [24] 1788 	movx	a,@dptr
      00273F FF               [12] 1789 	mov	r7,a
      002740 74 05            [12] 1790 	mov	a,#0x05
      002742 2D               [12] 1791 	add	a, r5
      002743 F5 08            [12] 1792 	mov	_enc_init_sloc0_1_0,a
      002745 E4               [12] 1793 	clr	a
      002746 3E               [12] 1794 	addc	a, r6
      002747 F5 09            [12] 1795 	mov	(_enc_init_sloc0_1_0 + 1),a
      002749 8F 0A            [24] 1796 	mov	(_enc_init_sloc0_1_0 + 2),r7
      00274B 85 08 82         [24] 1797 	mov	dpl,_enc_init_sloc0_1_0
      00274E 85 09 83         [24] 1798 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      002751 85 0A F0         [24] 1799 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002754 12 5E E3         [24] 1800 	lcall	__gptrget
      002757 F9               [12] 1801 	mov	r1,a
      002758 90 03 84         [24] 1802 	mov	dptr,#_spi_control_write_PARM_2
      00275B 74 01            [12] 1803 	mov	a,#0x01
      00275D F0               [24] 1804 	movx	@dptr,a
      00275E 90 03 85         [24] 1805 	mov	dptr,#_spi_control_write_PARM_3
      002761 E9               [12] 1806 	mov	a,r1
      002762 F0               [24] 1807 	movx	@dptr,a
      002763 75 82 03         [24] 1808 	mov	dpl, #0x03
      002766 C0 07            [24] 1809 	push	ar7
      002768 C0 06            [24] 1810 	push	ar6
      00276A C0 05            [24] 1811 	push	ar5
      00276C 12 39 25         [24] 1812 	lcall	_spi_control_write
      00276F D0 05            [24] 1813 	pop	ar5
      002771 D0 06            [24] 1814 	pop	ar6
      002773 D0 07            [24] 1815 	pop	ar7
                                   1816 ;	Eth.c:282: spi_control_write(3, 0x00, mac[4]); // MAADR5
      002775 74 04            [12] 1817 	mov	a,#0x04
      002777 2D               [12] 1818 	add	a, r5
      002778 F5 0B            [12] 1819 	mov	_enc_init_sloc1_1_0,a
      00277A E4               [12] 1820 	clr	a
      00277B 3E               [12] 1821 	addc	a, r6
      00277C F5 0C            [12] 1822 	mov	(_enc_init_sloc1_1_0 + 1),a
      00277E 8F 0D            [24] 1823 	mov	(_enc_init_sloc1_1_0 + 2),r7
      002780 85 0B 82         [24] 1824 	mov	dpl,_enc_init_sloc1_1_0
      002783 85 0C 83         [24] 1825 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      002786 85 0D F0         [24] 1826 	mov	b,(_enc_init_sloc1_1_0 + 2)
      002789 12 5E E3         [24] 1827 	lcall	__gptrget
      00278C FB               [12] 1828 	mov	r3,a
      00278D 90 03 84         [24] 1829 	mov	dptr,#_spi_control_write_PARM_2
      002790 E4               [12] 1830 	clr	a
      002791 F0               [24] 1831 	movx	@dptr,a
      002792 90 03 85         [24] 1832 	mov	dptr,#_spi_control_write_PARM_3
      002795 EB               [12] 1833 	mov	a,r3
      002796 F0               [24] 1834 	movx	@dptr,a
      002797 75 82 03         [24] 1835 	mov	dpl, #0x03
      00279A C0 07            [24] 1836 	push	ar7
      00279C C0 06            [24] 1837 	push	ar6
      00279E C0 05            [24] 1838 	push	ar5
      0027A0 12 39 25         [24] 1839 	lcall	_spi_control_write
      0027A3 D0 05            [24] 1840 	pop	ar5
      0027A5 D0 06            [24] 1841 	pop	ar6
      0027A7 D0 07            [24] 1842 	pop	ar7
                                   1843 ;	Eth.c:283: spi_control_write(3, 0x03, mac[3]); // MAADR4
      0027A9 74 03            [12] 1844 	mov	a,#0x03
      0027AB 2D               [12] 1845 	add	a, r5
      0027AC F5 0E            [12] 1846 	mov	_enc_init_sloc2_1_0,a
      0027AE E4               [12] 1847 	clr	a
      0027AF 3E               [12] 1848 	addc	a, r6
      0027B0 F5 0F            [12] 1849 	mov	(_enc_init_sloc2_1_0 + 1),a
      0027B2 8F 10            [24] 1850 	mov	(_enc_init_sloc2_1_0 + 2),r7
      0027B4 85 0E 82         [24] 1851 	mov	dpl,_enc_init_sloc2_1_0
      0027B7 85 0F 83         [24] 1852 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      0027BA 85 10 F0         [24] 1853 	mov	b,(_enc_init_sloc2_1_0 + 2)
      0027BD 12 5E E3         [24] 1854 	lcall	__gptrget
      0027C0 F9               [12] 1855 	mov	r1,a
      0027C1 90 03 84         [24] 1856 	mov	dptr,#_spi_control_write_PARM_2
      0027C4 74 03            [12] 1857 	mov	a,#0x03
      0027C6 F0               [24] 1858 	movx	@dptr,a
      0027C7 90 03 85         [24] 1859 	mov	dptr,#_spi_control_write_PARM_3
      0027CA E9               [12] 1860 	mov	a,r1
      0027CB F0               [24] 1861 	movx	@dptr,a
      0027CC 75 82 03         [24] 1862 	mov	dpl, #0x03
      0027CF C0 07            [24] 1863 	push	ar7
      0027D1 C0 06            [24] 1864 	push	ar6
      0027D3 C0 05            [24] 1865 	push	ar5
      0027D5 12 39 25         [24] 1866 	lcall	_spi_control_write
      0027D8 D0 05            [24] 1867 	pop	ar5
      0027DA D0 06            [24] 1868 	pop	ar6
      0027DC D0 07            [24] 1869 	pop	ar7
                                   1870 ;	Eth.c:284: spi_control_write(3, 0x02, mac[2]); // MAADR3
      0027DE 74 02            [12] 1871 	mov	a,#0x02
      0027E0 2D               [12] 1872 	add	a, r5
      0027E1 F5 11            [12] 1873 	mov	_enc_init_sloc3_1_0,a
      0027E3 E4               [12] 1874 	clr	a
      0027E4 3E               [12] 1875 	addc	a, r6
      0027E5 F5 12            [12] 1876 	mov	(_enc_init_sloc3_1_0 + 1),a
      0027E7 8F 13            [24] 1877 	mov	(_enc_init_sloc3_1_0 + 2),r7
      0027E9 85 11 82         [24] 1878 	mov	dpl,_enc_init_sloc3_1_0
      0027EC 85 12 83         [24] 1879 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      0027EF 85 13 F0         [24] 1880 	mov	b,(_enc_init_sloc3_1_0 + 2)
      0027F2 12 5E E3         [24] 1881 	lcall	__gptrget
      0027F5 FB               [12] 1882 	mov	r3,a
      0027F6 90 03 84         [24] 1883 	mov	dptr,#_spi_control_write_PARM_2
      0027F9 74 02            [12] 1884 	mov	a,#0x02
      0027FB F0               [24] 1885 	movx	@dptr,a
      0027FC 90 03 85         [24] 1886 	mov	dptr,#_spi_control_write_PARM_3
      0027FF EB               [12] 1887 	mov	a,r3
      002800 F0               [24] 1888 	movx	@dptr,a
      002801 75 82 03         [24] 1889 	mov	dpl, #0x03
      002804 C0 07            [24] 1890 	push	ar7
      002806 C0 06            [24] 1891 	push	ar6
      002808 C0 05            [24] 1892 	push	ar5
      00280A 12 39 25         [24] 1893 	lcall	_spi_control_write
      00280D D0 05            [24] 1894 	pop	ar5
      00280F D0 06            [24] 1895 	pop	ar6
      002811 D0 07            [24] 1896 	pop	ar7
                                   1897 ;	Eth.c:285: spi_control_write(3, 0x05, mac[1]); // MAADR2
      002813 74 01            [12] 1898 	mov	a,#0x01
      002815 2D               [12] 1899 	add	a, r5
      002816 FA               [12] 1900 	mov	r2,a
      002817 E4               [12] 1901 	clr	a
      002818 3E               [12] 1902 	addc	a, r6
      002819 FB               [12] 1903 	mov	r3,a
      00281A 8F 04            [24] 1904 	mov	ar4,r7
      00281C 8A 82            [24] 1905 	mov	dpl,r2
      00281E 8B 83            [24] 1906 	mov	dph,r3
      002820 8C F0            [24] 1907 	mov	b,r4
      002822 12 5E E3         [24] 1908 	lcall	__gptrget
      002825 F9               [12] 1909 	mov	r1,a
      002826 90 03 84         [24] 1910 	mov	dptr,#_spi_control_write_PARM_2
      002829 74 05            [12] 1911 	mov	a,#0x05
      00282B F0               [24] 1912 	movx	@dptr,a
      00282C 90 03 85         [24] 1913 	mov	dptr,#_spi_control_write_PARM_3
      00282F E9               [12] 1914 	mov	a,r1
      002830 F0               [24] 1915 	movx	@dptr,a
      002831 75 82 03         [24] 1916 	mov	dpl, #0x03
      002834 C0 07            [24] 1917 	push	ar7
      002836 C0 06            [24] 1918 	push	ar6
      002838 C0 05            [24] 1919 	push	ar5
      00283A C0 04            [24] 1920 	push	ar4
      00283C C0 03            [24] 1921 	push	ar3
      00283E C0 02            [24] 1922 	push	ar2
      002840 12 39 25         [24] 1923 	lcall	_spi_control_write
      002843 D0 02            [24] 1924 	pop	ar2
      002845 D0 03            [24] 1925 	pop	ar3
      002847 D0 04            [24] 1926 	pop	ar4
      002849 D0 05            [24] 1927 	pop	ar5
      00284B D0 06            [24] 1928 	pop	ar6
      00284D D0 07            [24] 1929 	pop	ar7
                                   1930 ;	Eth.c:286: spi_control_write(3, 0x04, mac[0]); // MAADR1
      00284F 8D 82            [24] 1931 	mov	dpl,r5
      002851 8E 83            [24] 1932 	mov	dph,r6
      002853 8F F0            [24] 1933 	mov	b,r7
      002855 12 5E E3         [24] 1934 	lcall	__gptrget
      002858 F9               [12] 1935 	mov	r1,a
      002859 90 03 84         [24] 1936 	mov	dptr,#_spi_control_write_PARM_2
      00285C 74 04            [12] 1937 	mov	a,#0x04
      00285E F0               [24] 1938 	movx	@dptr,a
      00285F 90 03 85         [24] 1939 	mov	dptr,#_spi_control_write_PARM_3
      002862 E9               [12] 1940 	mov	a,r1
      002863 F0               [24] 1941 	movx	@dptr,a
      002864 75 82 03         [24] 1942 	mov	dpl, #0x03
      002867 C0 07            [24] 1943 	push	ar7
      002869 C0 06            [24] 1944 	push	ar6
      00286B C0 05            [24] 1945 	push	ar5
      00286D C0 04            [24] 1946 	push	ar4
      00286F C0 03            [24] 1947 	push	ar3
      002871 C0 02            [24] 1948 	push	ar2
      002873 12 39 25         [24] 1949 	lcall	_spi_control_write
      002876 D0 02            [24] 1950 	pop	ar2
      002878 D0 03            [24] 1951 	pop	ar3
      00287A D0 04            [24] 1952 	pop	ar4
      00287C D0 05            [24] 1953 	pop	ar5
      00287E D0 06            [24] 1954 	pop	ar6
      002880 D0 07            [24] 1955 	pop	ar7
                                   1956 ;	Eth.c:288: spi_control_write(1, 0x18, 0x80); //unicast filter funcationality register
      002882 90 03 84         [24] 1957 	mov	dptr,#_spi_control_write_PARM_2
      002885 74 18            [12] 1958 	mov	a,#0x18
      002887 F0               [24] 1959 	movx	@dptr,a
      002888 90 03 85         [24] 1960 	mov	dptr,#_spi_control_write_PARM_3
      00288B 74 80            [12] 1961 	mov	a,#0x80
      00288D F0               [24] 1962 	movx	@dptr,a
      00288E 75 82 01         [24] 1963 	mov	dpl, #0x01
      002891 C0 07            [24] 1964 	push	ar7
      002893 C0 06            [24] 1965 	push	ar6
      002895 C0 05            [24] 1966 	push	ar5
      002897 C0 04            [24] 1967 	push	ar4
      002899 C0 03            [24] 1968 	push	ar3
      00289B C0 02            [24] 1969 	push	ar2
      00289D 12 39 25         [24] 1970 	lcall	_spi_control_write
      0028A0 D0 02            [24] 1971 	pop	ar2
      0028A2 D0 03            [24] 1972 	pop	ar3
      0028A4 D0 04            [24] 1973 	pop	ar4
      0028A6 D0 05            [24] 1974 	pop	ar5
      0028A8 D0 06            [24] 1975 	pop	ar6
      0028AA D0 07            [24] 1976 	pop	ar7
                                   1977 ;	Eth.c:290: uint8_t read_macon3 = mac_spi_read(0x03, 2);
      0028AC 90 03 8D         [24] 1978 	mov	dptr,#_mac_spi_read_PARM_2
      0028AF 74 02            [12] 1979 	mov	a,#0x02
      0028B1 F0               [24] 1980 	movx	@dptr,a
      0028B2 75 82 03         [24] 1981 	mov	dpl, #0x03
      0028B5 C0 07            [24] 1982 	push	ar7
      0028B7 C0 06            [24] 1983 	push	ar6
      0028B9 C0 05            [24] 1984 	push	ar5
      0028BB C0 04            [24] 1985 	push	ar4
      0028BD C0 03            [24] 1986 	push	ar3
      0028BF C0 02            [24] 1987 	push	ar2
      0028C1 12 3A 9B         [24] 1988 	lcall	_mac_spi_read
      0028C4 E5 82            [12] 1989 	mov	a, dpl
      0028C6 D0 02            [24] 1990 	pop	ar2
      0028C8 D0 03            [24] 1991 	pop	ar3
      0028CA D0 04            [24] 1992 	pop	ar4
      0028CC D0 05            [24] 1993 	pop	ar5
      0028CE D0 06            [24] 1994 	pop	ar6
      0028D0 D0 07            [24] 1995 	pop	ar7
                                   1996 ;	Eth.c:291: spi_control_write(2, 0x03, (read_macon3 | (1 << 0)));
      0028D2 44 01            [12] 1997 	orl	a,#0x01
      0028D4 F9               [12] 1998 	mov	r1,a
      0028D5 90 03 84         [24] 1999 	mov	dptr,#_spi_control_write_PARM_2
      0028D8 74 03            [12] 2000 	mov	a,#0x03
      0028DA F0               [24] 2001 	movx	@dptr,a
      0028DB 90 03 85         [24] 2002 	mov	dptr,#_spi_control_write_PARM_3
      0028DE E9               [12] 2003 	mov	a,r1
      0028DF F0               [24] 2004 	movx	@dptr,a
      0028E0 75 82 02         [24] 2005 	mov	dpl, #0x02
      0028E3 C0 07            [24] 2006 	push	ar7
      0028E5 C0 06            [24] 2007 	push	ar6
      0028E7 C0 05            [24] 2008 	push	ar5
      0028E9 C0 04            [24] 2009 	push	ar4
      0028EB C0 03            [24] 2010 	push	ar3
      0028ED C0 02            [24] 2011 	push	ar2
      0028EF 12 39 25         [24] 2012 	lcall	_spi_control_write
      0028F2 D0 02            [24] 2013 	pop	ar2
      0028F4 D0 03            [24] 2014 	pop	ar3
      0028F6 D0 04            [24] 2015 	pop	ar4
      0028F8 D0 05            [24] 2016 	pop	ar5
      0028FA D0 06            [24] 2017 	pop	ar6
      0028FC D0 07            [24] 2018 	pop	ar7
                                   2019 ;	Eth.c:292: uint8_t read_macon1 = mac_spi_read(0x00, 2); //mac enable for reception
      0028FE 90 03 8D         [24] 2020 	mov	dptr,#_mac_spi_read_PARM_2
      002901 74 02            [12] 2021 	mov	a,#0x02
      002903 F0               [24] 2022 	movx	@dptr,a
      002904 75 82 00         [24] 2023 	mov	dpl, #0x00
      002907 C0 07            [24] 2024 	push	ar7
      002909 C0 06            [24] 2025 	push	ar6
      00290B C0 05            [24] 2026 	push	ar5
      00290D C0 04            [24] 2027 	push	ar4
      00290F C0 03            [24] 2028 	push	ar3
      002911 C0 02            [24] 2029 	push	ar2
      002913 12 3A 9B         [24] 2030 	lcall	_mac_spi_read
      002916 E5 82            [12] 2031 	mov	a, dpl
      002918 D0 02            [24] 2032 	pop	ar2
      00291A D0 03            [24] 2033 	pop	ar3
      00291C D0 04            [24] 2034 	pop	ar4
      00291E D0 05            [24] 2035 	pop	ar5
      002920 D0 06            [24] 2036 	pop	ar6
      002922 D0 07            [24] 2037 	pop	ar7
                                   2038 ;	Eth.c:293: spi_control_write(2, 0x00, (read_macon1 | (1 << 0))); //mac enable for reception
      002924 44 01            [12] 2039 	orl	a,#0x01
      002926 F9               [12] 2040 	mov	r1,a
      002927 90 03 84         [24] 2041 	mov	dptr,#_spi_control_write_PARM_2
      00292A E4               [12] 2042 	clr	a
      00292B F0               [24] 2043 	movx	@dptr,a
      00292C 90 03 85         [24] 2044 	mov	dptr,#_spi_control_write_PARM_3
      00292F E9               [12] 2045 	mov	a,r1
      002930 F0               [24] 2046 	movx	@dptr,a
      002931 75 82 02         [24] 2047 	mov	dpl, #0x02
      002934 C0 07            [24] 2048 	push	ar7
      002936 C0 06            [24] 2049 	push	ar6
      002938 C0 05            [24] 2050 	push	ar5
      00293A C0 04            [24] 2051 	push	ar4
      00293C C0 03            [24] 2052 	push	ar3
      00293E C0 02            [24] 2053 	push	ar2
      002940 12 39 25         [24] 2054 	lcall	_spi_control_write
      002943 D0 02            [24] 2055 	pop	ar2
      002945 D0 03            [24] 2056 	pop	ar3
      002947 D0 04            [24] 2057 	pop	ar4
      002949 D0 05            [24] 2058 	pop	ar5
      00294B D0 06            [24] 2059 	pop	ar6
      00294D D0 07            [24] 2060 	pop	ar7
                                   2061 ;	Eth.c:294: phy_spi_write(0x00, 0x0100);
      00294F 90 03 8A         [24] 2062 	mov	dptr,#_phy_spi_write_PARM_2
      002952 E4               [12] 2063 	clr	a
      002953 F0               [24] 2064 	movx	@dptr,a
      002954 04               [12] 2065 	inc	a
      002955 A3               [24] 2066 	inc	dptr
      002956 F0               [24] 2067 	movx	@dptr,a
      002957 75 82 00         [24] 2068 	mov	dpl, #0x00
      00295A C0 07            [24] 2069 	push	ar7
      00295C C0 06            [24] 2070 	push	ar6
      00295E C0 05            [24] 2071 	push	ar5
      002960 C0 04            [24] 2072 	push	ar4
      002962 C0 03            [24] 2073 	push	ar3
      002964 C0 02            [24] 2074 	push	ar2
      002966 12 3A 18         [24] 2075 	lcall	_phy_spi_write
      002969 D0 02            [24] 2076 	pop	ar2
      00296B D0 03            [24] 2077 	pop	ar3
      00296D D0 04            [24] 2078 	pop	ar4
      00296F D0 05            [24] 2079 	pop	ar5
      002971 D0 06            [24] 2080 	pop	ar6
      002973 D0 07            [24] 2081 	pop	ar7
                                   2082 ;	Eth.c:297: phy_spi_write(0x14, 0x3422); // PHLCON: LEDA=Link/Activity, LEDB=RX/TX Activity
      002975 90 03 8A         [24] 2083 	mov	dptr,#_phy_spi_write_PARM_2
      002978 74 22            [12] 2084 	mov	a,#0x22
      00297A F0               [24] 2085 	movx	@dptr,a
      00297B 74 34            [12] 2086 	mov	a,#0x34
      00297D A3               [24] 2087 	inc	dptr
      00297E F0               [24] 2088 	movx	@dptr,a
      00297F 75 82 14         [24] 2089 	mov	dpl, #0x14
      002982 C0 07            [24] 2090 	push	ar7
      002984 C0 06            [24] 2091 	push	ar6
      002986 C0 05            [24] 2092 	push	ar5
      002988 C0 04            [24] 2093 	push	ar4
      00298A C0 03            [24] 2094 	push	ar3
      00298C C0 02            [24] 2095 	push	ar2
      00298E 12 3A 18         [24] 2096 	lcall	_phy_spi_write
      002991 D0 02            [24] 2097 	pop	ar2
      002993 D0 03            [24] 2098 	pop	ar3
      002995 D0 04            [24] 2099 	pop	ar4
      002997 D0 05            [24] 2100 	pop	ar5
      002999 D0 06            [24] 2101 	pop	ar6
      00299B D0 07            [24] 2102 	pop	ar7
                                   2103 ;	Eth.c:298: spi_control_write(0, 0X1F, 0X04); // reception enable bit
      00299D 90 03 84         [24] 2104 	mov	dptr,#_spi_control_write_PARM_2
      0029A0 74 1F            [12] 2105 	mov	a,#0x1f
      0029A2 F0               [24] 2106 	movx	@dptr,a
      0029A3 90 03 85         [24] 2107 	mov	dptr,#_spi_control_write_PARM_3
      0029A6 74 04            [12] 2108 	mov	a,#0x04
      0029A8 F0               [24] 2109 	movx	@dptr,a
      0029A9 75 82 00         [24] 2110 	mov	dpl, #0x00
      0029AC C0 07            [24] 2111 	push	ar7
      0029AE C0 06            [24] 2112 	push	ar6
      0029B0 C0 05            [24] 2113 	push	ar5
      0029B2 C0 04            [24] 2114 	push	ar4
      0029B4 C0 03            [24] 2115 	push	ar3
      0029B6 C0 02            [24] 2116 	push	ar2
      0029B8 12 39 25         [24] 2117 	lcall	_spi_control_write
                                   2118 ;	Eth.c:299: printf("\nENC28J60 Initialization Complete.\n");
      0029BB 74 57            [12] 2119 	mov	a,#___str_7
      0029BD C0 E0            [24] 2120 	push	acc
      0029BF 74 60            [12] 2121 	mov	a,#(___str_7 >> 8)
      0029C1 C0 E0            [24] 2122 	push	acc
      0029C3 74 80            [12] 2123 	mov	a,#0x80
      0029C5 C0 E0            [24] 2124 	push	acc
      0029C7 12 54 C1         [24] 2125 	lcall	_printf
      0029CA 15 81            [12] 2126 	dec	sp
      0029CC 15 81            [12] 2127 	dec	sp
      0029CE 15 81            [12] 2128 	dec	sp
      0029D0 D0 02            [24] 2129 	pop	ar2
      0029D2 D0 03            [24] 2130 	pop	ar3
      0029D4 D0 04            [24] 2131 	pop	ar4
      0029D6 D0 05            [24] 2132 	pop	ar5
      0029D8 D0 06            [24] 2133 	pop	ar6
      0029DA D0 07            [24] 2134 	pop	ar7
                                   2135 ;	Eth.c:301: mac[2], mac[3], mac[4], mac[5]);
      0029DC 85 08 82         [24] 2136 	mov	dpl,_enc_init_sloc0_1_0
      0029DF 85 09 83         [24] 2137 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      0029E2 85 0A F0         [24] 2138 	mov	b,(_enc_init_sloc0_1_0 + 2)
      0029E5 12 5E E3         [24] 2139 	lcall	__gptrget
      0029E8 F9               [12] 2140 	mov	r1,a
      0029E9 89 08            [24] 2141 	mov	_enc_init_sloc0_1_0,r1
      0029EB 75 09 00         [24] 2142 	mov	(_enc_init_sloc0_1_0 + 1),#0x00
      0029EE 85 0B 82         [24] 2143 	mov	dpl,_enc_init_sloc1_1_0
      0029F1 85 0C 83         [24] 2144 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      0029F4 85 0D F0         [24] 2145 	mov	b,(_enc_init_sloc1_1_0 + 2)
      0029F7 12 5E E3         [24] 2146 	lcall	__gptrget
      0029FA F9               [12] 2147 	mov	r1,a
      0029FB 89 0B            [24] 2148 	mov	_enc_init_sloc1_1_0,r1
      0029FD 75 0C 00         [24] 2149 	mov	(_enc_init_sloc1_1_0 + 1),#0x00
      002A00 85 0E 82         [24] 2150 	mov	dpl,_enc_init_sloc2_1_0
      002A03 85 0F 83         [24] 2151 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      002A06 85 10 F0         [24] 2152 	mov	b,(_enc_init_sloc2_1_0 + 2)
      002A09 12 5E E3         [24] 2153 	lcall	__gptrget
      002A0C F9               [12] 2154 	mov	r1,a
      002A0D 89 0E            [24] 2155 	mov	_enc_init_sloc2_1_0,r1
      002A0F 75 0F 00         [24] 2156 	mov	(_enc_init_sloc2_1_0 + 1),#0x00
      002A12 85 11 82         [24] 2157 	mov	dpl,_enc_init_sloc3_1_0
      002A15 85 12 83         [24] 2158 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      002A18 85 13 F0         [24] 2159 	mov	b,(_enc_init_sloc3_1_0 + 2)
      002A1B 12 5E E3         [24] 2160 	lcall	__gptrget
      002A1E F8               [12] 2161 	mov	r0,a
      002A1F 79 00            [12] 2162 	mov	r1,#0x00
                                   2163 ;	Eth.c:300: printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
      002A21 8A 82            [24] 2164 	mov	dpl,r2
      002A23 8B 83            [24] 2165 	mov	dph,r3
      002A25 8C F0            [24] 2166 	mov	b,r4
      002A27 12 5E E3         [24] 2167 	lcall	__gptrget
      002A2A FA               [12] 2168 	mov	r2,a
      002A2B 7C 00            [12] 2169 	mov	r4,#0x00
      002A2D 8D 82            [24] 2170 	mov	dpl,r5
      002A2F 8E 83            [24] 2171 	mov	dph,r6
      002A31 8F F0            [24] 2172 	mov	b,r7
      002A33 12 5E E3         [24] 2173 	lcall	__gptrget
      002A36 FD               [12] 2174 	mov	r5,a
      002A37 7F 00            [12] 2175 	mov	r7,#0x00
      002A39 C0 08            [24] 2176 	push	_enc_init_sloc0_1_0
      002A3B C0 09            [24] 2177 	push	(_enc_init_sloc0_1_0 + 1)
      002A3D C0 0B            [24] 2178 	push	_enc_init_sloc1_1_0
      002A3F C0 0C            [24] 2179 	push	(_enc_init_sloc1_1_0 + 1)
      002A41 C0 0E            [24] 2180 	push	_enc_init_sloc2_1_0
      002A43 C0 0F            [24] 2181 	push	(_enc_init_sloc2_1_0 + 1)
      002A45 C0 00            [24] 2182 	push	ar0
      002A47 C0 01            [24] 2183 	push	ar1
      002A49 C0 02            [24] 2184 	push	ar2
      002A4B C0 04            [24] 2185 	push	ar4
      002A4D C0 05            [24] 2186 	push	ar5
      002A4F C0 07            [24] 2187 	push	ar7
      002A51 74 7B            [12] 2188 	mov	a,#___str_8
      002A53 C0 E0            [24] 2189 	push	acc
      002A55 74 60            [12] 2190 	mov	a,#(___str_8 >> 8)
      002A57 C0 E0            [24] 2191 	push	acc
      002A59 74 80            [12] 2192 	mov	a,#0x80
      002A5B C0 E0            [24] 2193 	push	acc
      002A5D 12 54 C1         [24] 2194 	lcall	_printf
      002A60 E5 81            [12] 2195 	mov	a,sp
      002A62 24 F1            [12] 2196 	add	a,#0xf1
      002A64 F5 81            [12] 2197 	mov	sp,a
                                   2198 ;	Eth.c:302: }
      002A66 22               [24] 2199 	ret
                                   2200 ;------------------------------------------------------------
                                   2201 ;Allocation info for local variables in function 'ENC_pkt_count'
                                   2202 ;------------------------------------------------------------
                                   2203 ;count                     Allocated with name '_ENC_pkt_count_count_10000_166'
                                   2204 ;------------------------------------------------------------
                                   2205 ;	Eth.c:304: uint8_t ENC_pkt_count(void)
                                   2206 ;	-----------------------------------------
                                   2207 ;	 function ENC_pkt_count
                                   2208 ;	-----------------------------------------
      002A67                       2209 _ENC_pkt_count:
                                   2210 ;	Eth.c:306: uint8_t count = mac_spi_read(0x19, 1);
      002A67 90 03 8D         [24] 2211 	mov	dptr,#_mac_spi_read_PARM_2
      002A6A 74 01            [12] 2212 	mov	a,#0x01
      002A6C F0               [24] 2213 	movx	@dptr,a
      002A6D 75 82 19         [24] 2214 	mov	dpl, #0x19
                                   2215 ;	Eth.c:307: return count;
                                   2216 ;	Eth.c:308: }
      002A70 02 3A 9B         [24] 2217 	ljmp	_mac_spi_read
                                   2218 ;------------------------------------------------------------
                                   2219 ;Allocation info for local variables in function 'update_ERXRDPT'
                                   2220 ;------------------------------------------------------------
                                   2221 ;new_address               Allocated with name '_update_ERXRDPT_new_address_10000_167'
                                   2222 ;high_byte                 Allocated with name '_update_ERXRDPT_high_byte_10000_168'
                                   2223 ;low_byte                  Allocated with name '_update_ERXRDPT_low_byte_10000_168'
                                   2224 ;------------------------------------------------------------
                                   2225 ;	Eth.c:310: void update_ERXRDPT(uint16_t new_address) {
                                   2226 ;	-----------------------------------------
                                   2227 ;	 function update_ERXRDPT
                                   2228 ;	-----------------------------------------
      002A73                       2229 _update_ERXRDPT:
      002A73 AF 83            [24] 2230 	mov	r7,dph
      002A75 E5 82            [12] 2231 	mov	a,dpl
      002A77 90 01 54         [24] 2232 	mov	dptr,#_update_ERXRDPT_new_address_10000_167
      002A7A F0               [24] 2233 	movx	@dptr,a
      002A7B EF               [12] 2234 	mov	a,r7
      002A7C A3               [24] 2235 	inc	dptr
      002A7D F0               [24] 2236 	movx	@dptr,a
                                   2237 ;	Eth.c:312: uint8_t high_byte = (uint8_t)((new_address >> 8) & 0xFF);
      002A7E 90 01 54         [24] 2238 	mov	dptr,#_update_ERXRDPT_new_address_10000_167
      002A81 E0               [24] 2239 	movx	a,@dptr
      002A82 FE               [12] 2240 	mov	r6,a
      002A83 A3               [24] 2241 	inc	dptr
      002A84 E0               [24] 2242 	movx	a,@dptr
      002A85 FF               [12] 2243 	mov	r7,a
      002A86 FD               [12] 2244 	mov	r5,a
                                   2245 ;	Eth.c:313: uint8_t low_byte = (uint8_t)(new_address & 0xFF);
      002A87 8E 04            [24] 2246 	mov	ar4,r6
                                   2247 ;	Eth.c:316: spi_control_write(0, 0x0C, low_byte);  // Write to low-byte register
      002A89 90 03 84         [24] 2248 	mov	dptr,#_spi_control_write_PARM_2
      002A8C 74 0C            [12] 2249 	mov	a,#0x0c
      002A8E F0               [24] 2250 	movx	@dptr,a
      002A8F 90 03 85         [24] 2251 	mov	dptr,#_spi_control_write_PARM_3
      002A92 EC               [12] 2252 	mov	a,r4
      002A93 F0               [24] 2253 	movx	@dptr,a
      002A94 75 82 00         [24] 2254 	mov	dpl, #0x00
      002A97 C0 07            [24] 2255 	push	ar7
      002A99 C0 06            [24] 2256 	push	ar6
      002A9B C0 05            [24] 2257 	push	ar5
      002A9D 12 39 25         [24] 2258 	lcall	_spi_control_write
      002AA0 D0 05            [24] 2259 	pop	ar5
      002AA2 D0 06            [24] 2260 	pop	ar6
      002AA4 D0 07            [24] 2261 	pop	ar7
                                   2262 ;	Eth.c:317: spi_control_write(0, 0x0D, high_byte); // Write to high-byte register
      002AA6 90 03 84         [24] 2263 	mov	dptr,#_spi_control_write_PARM_2
      002AA9 74 0D            [12] 2264 	mov	a,#0x0d
      002AAB F0               [24] 2265 	movx	@dptr,a
      002AAC 90 03 85         [24] 2266 	mov	dptr,#_spi_control_write_PARM_3
      002AAF ED               [12] 2267 	mov	a,r5
      002AB0 F0               [24] 2268 	movx	@dptr,a
      002AB1 75 82 00         [24] 2269 	mov	dpl, #0x00
      002AB4 C0 07            [24] 2270 	push	ar7
      002AB6 C0 06            [24] 2271 	push	ar6
      002AB8 12 39 25         [24] 2272 	lcall	_spi_control_write
      002ABB D0 06            [24] 2273 	pop	ar6
      002ABD D0 07            [24] 2274 	pop	ar7
                                   2275 ;	Eth.c:320: printf("Updated ERXRDPT to 0x%04X\n", new_address);
      002ABF C0 06            [24] 2276 	push	ar6
      002AC1 C0 07            [24] 2277 	push	ar7
      002AC3 74 A7            [12] 2278 	mov	a,#___str_9
      002AC5 C0 E0            [24] 2279 	push	acc
      002AC7 74 60            [12] 2280 	mov	a,#(___str_9 >> 8)
      002AC9 C0 E0            [24] 2281 	push	acc
      002ACB 74 80            [12] 2282 	mov	a,#0x80
      002ACD C0 E0            [24] 2283 	push	acc
      002ACF 12 54 C1         [24] 2284 	lcall	_printf
      002AD2 E5 81            [12] 2285 	mov	a,sp
      002AD4 24 FB            [12] 2286 	add	a,#0xfb
      002AD6 F5 81            [12] 2287 	mov	sp,a
                                   2288 ;	Eth.c:321: }
      002AD8 22               [24] 2289 	ret
                                   2290 	.area CSEG    (CODE)
                                   2291 	.area CONST   (CODE)
                                   2292 	.area CONST   (CODE)
      005F03                       2293 ___str_0:
      005F03 0A                    2294 	.db 0x0a
      005F04 49 6E 76 61 6C 69 64  2295 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      005F3C 0A                    2296 	.db 0x0a
      005F3D 00                    2297 	.db 0x00
                                   2298 	.area CSEG    (CODE)
                                   2299 	.area CONST   (CODE)
      005F3E                       2300 ___str_1:
      005F3E 41 52 50 20 72 65 71  2301 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      005F5C 0A                    2302 	.db 0x0a
      005F5D 0D                    2303 	.db 0x0d
      005F5E 00                    2304 	.db 0x00
                                   2305 	.area CSEG    (CODE)
                                   2306 	.area CONST   (CODE)
      005F5F                       2307 ___str_2:
      005F5F 41 52 50 20 74 72 61  2308 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      005F8A 0A                    2309 	.db 0x0a
      005F8B 0D                    2310 	.db 0x0d
      005F8C 00                    2311 	.db 0x00
                                   2312 	.area CSEG    (CODE)
                                   2313 	.area CONST   (CODE)
      005F8D                       2314 ___str_3:
      005F8D 54 72 61 6E 73 6D 69  2315 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      005FC9 74 6C 79 2E           2316 	.ascii "tly."
      005FCD 0A                    2317 	.db 0x0a
      005FCE 0D                    2318 	.db 0x0d
      005FCF 00                    2319 	.db 0x00
                                   2320 	.area CSEG    (CODE)
                                   2321 	.area CONST   (CODE)
      005FD0                       2322 ___str_4:
      005FD0 49 6E 74 65 72 72 72  2323 	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
             72 72 72 72 72 75 75
             75 75 75 75 75 75 75
             70 70 70 70 70 70 70
             70 74 74 74 74 74 74
             74
      005FF4 0A                    2324 	.db 0x0a
      005FF5 0D                    2325 	.db 0x0d
      005FF6 00                    2326 	.db 0x00
                                   2327 	.area CSEG    (CODE)
                                   2328 	.area CONST   (CODE)
      005FF7                       2329 ___str_5:
      005FF7 0A                    2330 	.db 0x0a
      005FF8 49 6E 76 61 6C 69 64  2331 	.ascii "Invalid Buffer Range: Start 0x%04X, End 0x%04X"
             20 42 75 66 66 65 72
             20 52 61 6E 67 65 3A
             20 53 74 61 72 74 20
             30 78 25 30 34 58 2C
             20 45 6E 64 20 30 78
             25 30 34 58
      006026 0A                    2332 	.db 0x0a
      006027 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area CONST   (CODE)
      006028                       2336 ___str_6:
      006028 0A                    2337 	.db 0x0a
      006029 42 75 66 66 65 72 20  2338 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      006055 0A                    2339 	.db 0x0a
      006056 00                    2340 	.db 0x00
                                   2341 	.area CSEG    (CODE)
                                   2342 	.area CONST   (CODE)
      006057                       2343 ___str_7:
      006057 0A                    2344 	.db 0x0a
      006058 45 4E 43 32 38 4A 36  2345 	.ascii "ENC28J60 Initialization Complete."
             30 20 49 6E 69 74 69
             61 6C 69 7A 61 74 69
             6F 6E 20 43 6F 6D 70
             6C 65 74 65 2E
      006079 0A                    2346 	.db 0x0a
      00607A 00                    2347 	.db 0x00
                                   2348 	.area CSEG    (CODE)
                                   2349 	.area CONST   (CODE)
      00607B                       2350 ___str_8:
      00607B 4D 41 43 20 41 64 64  2351 	.ascii "MAC Address: %02X:%02X:%02X:%02X:%02X:%02X"
             72 65 73 73 3A 20 25
             30 32 58 3A 25 30 32
             58 3A 25 30 32 58 3A
             25 30 32 58 3A 25 30
             32 58 3A 25 30 32 58
      0060A5 0A                    2352 	.db 0x0a
      0060A6 00                    2353 	.db 0x00
                                   2354 	.area CSEG    (CODE)
                                   2355 	.area CONST   (CODE)
      0060A7                       2356 ___str_9:
      0060A7 55 70 64 61 74 65 64  2357 	.ascii "Updated ERXRDPT to 0x%04X"
             20 45 52 58 52 44 50
             54 20 74 6F 20 30 78
             25 30 34 58
      0060C0 0A                    2358 	.db 0x0a
      0060C1 00                    2359 	.db 0x00
                                   2360 	.area CSEG    (CODE)
                                   2361 	.area XINIT   (CODE)
                                   2362 	.area CABS    (ABS,CODE)

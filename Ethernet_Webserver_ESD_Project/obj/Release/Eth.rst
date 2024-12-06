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
                                     17 	.globl _spi_control_write
                                     18 	.globl _phy_spi_write
                                     19 	.globl _spi_buffer_write
                                     20 	.globl _mac_spi_read
                                     21 	.globl _enc_reset
                                     22 	.globl _printf
                                     23 	.globl _TF1
                                     24 	.globl _TR1
                                     25 	.globl _TF0
                                     26 	.globl _TR0
                                     27 	.globl _IE1
                                     28 	.globl _IT1
                                     29 	.globl _IE0
                                     30 	.globl _IT0
                                     31 	.globl _SM0
                                     32 	.globl _SM1
                                     33 	.globl _SM2
                                     34 	.globl _REN
                                     35 	.globl _TB8
                                     36 	.globl _RB8
                                     37 	.globl _TI
                                     38 	.globl _RI
                                     39 	.globl _CY
                                     40 	.globl _AC
                                     41 	.globl _F0
                                     42 	.globl _RS1
                                     43 	.globl _RS0
                                     44 	.globl _OV
                                     45 	.globl _F1
                                     46 	.globl _P
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD0
                                     54 	.globl _TXD
                                     55 	.globl _RXD0
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _PS
                                     90 	.globl _PT1
                                     91 	.globl _PX1
                                     92 	.globl _PT0
                                     93 	.globl _PX0
                                     94 	.globl _EA
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _BREG_F7
                                    101 	.globl _BREG_F6
                                    102 	.globl _BREG_F5
                                    103 	.globl _BREG_F4
                                    104 	.globl _BREG_F3
                                    105 	.globl _BREG_F2
                                    106 	.globl _BREG_F1
                                    107 	.globl _BREG_F0
                                    108 	.globl _P5_7
                                    109 	.globl _P5_6
                                    110 	.globl _P5_5
                                    111 	.globl _P5_4
                                    112 	.globl _P5_3
                                    113 	.globl _P5_2
                                    114 	.globl _P5_1
                                    115 	.globl _P5_0
                                    116 	.globl _P4_7
                                    117 	.globl _P4_6
                                    118 	.globl _P4_5
                                    119 	.globl _P4_4
                                    120 	.globl _P4_3
                                    121 	.globl _P4_2
                                    122 	.globl _P4_1
                                    123 	.globl _P4_0
                                    124 	.globl _PX0L
                                    125 	.globl _PT0L
                                    126 	.globl _PX1L
                                    127 	.globl _PT1L
                                    128 	.globl _PSL
                                    129 	.globl _PT2L
                                    130 	.globl _PPCL
                                    131 	.globl _EC
                                    132 	.globl _CCF0
                                    133 	.globl _CCF1
                                    134 	.globl _CCF2
                                    135 	.globl _CCF3
                                    136 	.globl _CCF4
                                    137 	.globl _CR
                                    138 	.globl _CF
                                    139 	.globl _TF2
                                    140 	.globl _EXF2
                                    141 	.globl _RCLK
                                    142 	.globl _TCLK
                                    143 	.globl _EXEN2
                                    144 	.globl _TR2
                                    145 	.globl _C_T2
                                    146 	.globl _CP_RL2
                                    147 	.globl _T2CON_7
                                    148 	.globl _T2CON_6
                                    149 	.globl _T2CON_5
                                    150 	.globl _T2CON_4
                                    151 	.globl _T2CON_3
                                    152 	.globl _T2CON_2
                                    153 	.globl _T2CON_1
                                    154 	.globl _T2CON_0
                                    155 	.globl _PT2
                                    156 	.globl _ET2
                                    157 	.globl _TMOD
                                    158 	.globl _TL1
                                    159 	.globl _TL0
                                    160 	.globl _TH1
                                    161 	.globl _TH0
                                    162 	.globl _TCON
                                    163 	.globl _SP
                                    164 	.globl _SCON
                                    165 	.globl _SBUF0
                                    166 	.globl _SBUF
                                    167 	.globl _PSW
                                    168 	.globl _PCON
                                    169 	.globl _P3
                                    170 	.globl _P2
                                    171 	.globl _P1
                                    172 	.globl _P0
                                    173 	.globl _IP
                                    174 	.globl _IE
                                    175 	.globl _DP0L
                                    176 	.globl _DPL
                                    177 	.globl _DP0H
                                    178 	.globl _DPH
                                    179 	.globl _B
                                    180 	.globl _ACC
                                    181 	.globl _EECON
                                    182 	.globl _KBF
                                    183 	.globl _KBE
                                    184 	.globl _KBLS
                                    185 	.globl _BRL
                                    186 	.globl _BDRCON
                                    187 	.globl _T2MOD
                                    188 	.globl _SPDAT
                                    189 	.globl _SPSTA
                                    190 	.globl _SPCON
                                    191 	.globl _SADEN
                                    192 	.globl _SADDR
                                    193 	.globl _WDTPRG
                                    194 	.globl _WDTRST
                                    195 	.globl _P5
                                    196 	.globl _P4
                                    197 	.globl _IPH1
                                    198 	.globl _IPL1
                                    199 	.globl _IPH0
                                    200 	.globl _IPL0
                                    201 	.globl _IEN1
                                    202 	.globl _IEN0
                                    203 	.globl _CMOD
                                    204 	.globl _CL
                                    205 	.globl _CH
                                    206 	.globl _CCON
                                    207 	.globl _CCAPM4
                                    208 	.globl _CCAPM3
                                    209 	.globl _CCAPM2
                                    210 	.globl _CCAPM1
                                    211 	.globl _CCAPM0
                                    212 	.globl _CCAP4L
                                    213 	.globl _CCAP3L
                                    214 	.globl _CCAP2L
                                    215 	.globl _CCAP1L
                                    216 	.globl _CCAP0L
                                    217 	.globl _CCAP4H
                                    218 	.globl _CCAP3H
                                    219 	.globl _CCAP2H
                                    220 	.globl _CCAP1H
                                    221 	.globl _CCAP0H
                                    222 	.globl _CKCON1
                                    223 	.globl _CKCON0
                                    224 	.globl _CKRL
                                    225 	.globl _AUXR1
                                    226 	.globl _AUXR
                                    227 	.globl _TH2
                                    228 	.globl _TL2
                                    229 	.globl _RCAP2H
                                    230 	.globl _RCAP2L
                                    231 	.globl _T2CON
                                    232 	.globl _enc_buffer_init_PARM_2
                                    233 	.globl _enc28j60_set_transmit_pointers_PARM_2
                                    234 	.globl _RX_disable
                                    235 	.globl _RX_enable
                                    236 	.globl _send_arp_request
                                    237 	.globl _enc_buffer_init
                                    238 	.globl _enc_init
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
      000100                        515 _delay_ms_ms_10000_73:
      000100                        516 	.ds 2
      000102                        517 _delay_ms_i_20000_75:
      000102                        518 	.ds 4
      000106                        519 _enc28j60_set_transmit_pointers_PARM_2:
      000106                        520 	.ds 2
      000108                        521 _enc28j60_set_transmit_pointers_start_address_10000_79:
      000108                        522 	.ds 2
      00010A                        523 _wait_for_transmission_complete_timeout_ms_10000_81:
      00010A                        524 	.ds 2
      00010C                        525 _send_arp_request_source_mac_10000_91:
      00010C                        526 	.ds 6
      000112                        527 _send_arp_request_dest_mac_10000_91:
      000112                        528 	.ds 6
      000118                        529 _send_arp_request_source_ip_10000_91:
      000118                        530 	.ds 4
      00011C                        531 _send_arp_request_target_ip_10000_91:
      00011C                        532 	.ds 4
      000120                        533 _send_arp_request_arp_packet_10000_91:
      000120                        534 	.ds 43
      00014B                        535 _enc_buffer_init_PARM_2:
      00014B                        536 	.ds 2
      00014D                        537 _enc_buffer_init_start_address_10000_111:
      00014D                        538 	.ds 2
      00014F                        539 _enc_init_mac_10000_114:
      00014F                        540 	.ds 3
                                    541 ;--------------------------------------------------------
                                    542 ; absolute external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XABS    (ABS,XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; initialized external ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XISEG   (XDATA)
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
                                    576 ;Allocation info for local variables in function 'delay_ms'
                                    577 ;------------------------------------------------------------
                                    578 ;ms                        Allocated with name '_delay_ms_ms_10000_73'
                                    579 ;i                         Allocated with name '_delay_ms_i_20000_75'
                                    580 ;------------------------------------------------------------
                                    581 ;	Eth.c:48: void delay_ms(uint16_t ms)
                                    582 ;	-----------------------------------------
                                    583 ;	 function delay_ms
                                    584 ;	-----------------------------------------
      002065                        585 _delay_ms:
                           000007   586 	ar7 = 0x07
                           000006   587 	ar6 = 0x06
                           000005   588 	ar5 = 0x05
                           000004   589 	ar4 = 0x04
                           000003   590 	ar3 = 0x03
                           000002   591 	ar2 = 0x02
                           000001   592 	ar1 = 0x01
                           000000   593 	ar0 = 0x00
      002065 AF 83            [24]  594 	mov	r7,dph
      002067 E5 82            [12]  595 	mov	a,dpl
      002069 90 01 00         [24]  596 	mov	dptr,#_delay_ms_ms_10000_73
      00206C F0               [24]  597 	movx	@dptr,a
      00206D EF               [12]  598 	mov	a,r7
      00206E A3               [24]  599 	inc	dptr
      00206F F0               [24]  600 	movx	@dptr,a
                                    601 ;	Eth.c:50: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      002070 90 01 02         [24]  602 	mov	dptr,#_delay_ms_i_20000_75
      002073 E4               [12]  603 	clr	a
      002074 F0               [24]  604 	movx	@dptr,a
      002075 A3               [24]  605 	inc	dptr
      002076 F0               [24]  606 	movx	@dptr,a
      002077 A3               [24]  607 	inc	dptr
      002078 F0               [24]  608 	movx	@dptr,a
      002079 A3               [24]  609 	inc	dptr
      00207A F0               [24]  610 	movx	@dptr,a
      00207B 90 01 00         [24]  611 	mov	dptr,#_delay_ms_ms_10000_73
      00207E E0               [24]  612 	movx	a,@dptr
      00207F FE               [12]  613 	mov	r6,a
      002080 A3               [24]  614 	inc	dptr
      002081 E0               [24]  615 	movx	a,@dptr
      002082 FF               [12]  616 	mov	r7,a
      002083                        617 00103$:
      002083 90 03 8F         [24]  618 	mov	dptr,#__mulint_PARM_2
      002086 EE               [12]  619 	mov	a,r6
      002087 F0               [24]  620 	movx	@dptr,a
      002088 EF               [12]  621 	mov	a,r7
      002089 A3               [24]  622 	inc	dptr
      00208A F0               [24]  623 	movx	@dptr,a
      00208B 90 03 E8         [24]  624 	mov	dptr,#0x03e8
      00208E C0 07            [24]  625 	push	ar7
      002090 C0 06            [24]  626 	push	ar6
      002092 12 3C DE         [24]  627 	lcall	__mulint
      002095 AC 82            [24]  628 	mov	r4, dpl
      002097 AD 83            [24]  629 	mov	r5, dph
      002099 D0 06            [24]  630 	pop	ar6
      00209B D0 07            [24]  631 	pop	ar7
      00209D 90 01 02         [24]  632 	mov	dptr,#_delay_ms_i_20000_75
      0020A0 E0               [24]  633 	movx	a,@dptr
      0020A1 F8               [12]  634 	mov	r0,a
      0020A2 A3               [24]  635 	inc	dptr
      0020A3 E0               [24]  636 	movx	a,@dptr
      0020A4 F9               [12]  637 	mov	r1,a
      0020A5 A3               [24]  638 	inc	dptr
      0020A6 E0               [24]  639 	movx	a,@dptr
      0020A7 FA               [12]  640 	mov	r2,a
      0020A8 A3               [24]  641 	inc	dptr
      0020A9 E0               [24]  642 	movx	a,@dptr
      0020AA FB               [12]  643 	mov	r3,a
      0020AB C0 06            [24]  644 	push	ar6
      0020AD C0 07            [24]  645 	push	ar7
      0020AF 7E 00            [12]  646 	mov	r6,#0x00
      0020B1 7F 00            [12]  647 	mov	r7,#0x00
      0020B3 C3               [12]  648 	clr	c
      0020B4 E8               [12]  649 	mov	a,r0
      0020B5 9C               [12]  650 	subb	a,r4
      0020B6 E9               [12]  651 	mov	a,r1
      0020B7 9D               [12]  652 	subb	a,r5
      0020B8 EA               [12]  653 	mov	a,r2
      0020B9 9E               [12]  654 	subb	a,r6
      0020BA EB               [12]  655 	mov	a,r3
      0020BB 9F               [12]  656 	subb	a,r7
      0020BC D0 07            [24]  657 	pop	ar7
      0020BE D0 06            [24]  658 	pop	ar6
      0020C0 50 23            [24]  659 	jnc	00105$
      0020C2 90 01 02         [24]  660 	mov	dptr,#_delay_ms_i_20000_75
      0020C5 E0               [24]  661 	movx	a,@dptr
      0020C6 FA               [12]  662 	mov	r2,a
      0020C7 A3               [24]  663 	inc	dptr
      0020C8 E0               [24]  664 	movx	a,@dptr
      0020C9 FB               [12]  665 	mov	r3,a
      0020CA A3               [24]  666 	inc	dptr
      0020CB E0               [24]  667 	movx	a,@dptr
      0020CC FC               [12]  668 	mov	r4,a
      0020CD A3               [24]  669 	inc	dptr
      0020CE E0               [24]  670 	movx	a,@dptr
      0020CF FD               [12]  671 	mov	r5,a
      0020D0 90 01 02         [24]  672 	mov	dptr,#_delay_ms_i_20000_75
      0020D3 74 01            [12]  673 	mov	a,#0x01
      0020D5 2A               [12]  674 	add	a, r2
      0020D6 F0               [24]  675 	movx	@dptr,a
      0020D7 E4               [12]  676 	clr	a
      0020D8 3B               [12]  677 	addc	a, r3
      0020D9 A3               [24]  678 	inc	dptr
      0020DA F0               [24]  679 	movx	@dptr,a
      0020DB E4               [12]  680 	clr	a
      0020DC 3C               [12]  681 	addc	a, r4
      0020DD A3               [24]  682 	inc	dptr
      0020DE F0               [24]  683 	movx	@dptr,a
      0020DF E4               [12]  684 	clr	a
      0020E0 3D               [12]  685 	addc	a, r5
      0020E1 A3               [24]  686 	inc	dptr
      0020E2 F0               [24]  687 	movx	@dptr,a
      0020E3 80 9E            [24]  688 	sjmp	00103$
      0020E5                        689 00105$:
                                    690 ;	Eth.c:54: }
      0020E5 22               [24]  691 	ret
                                    692 ;------------------------------------------------------------
                                    693 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    694 ;------------------------------------------------------------
                                    695 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_78'
                                    696 ;------------------------------------------------------------
                                    697 ;	Eth.c:56: void enc28j60_start_transmission(void)
                                    698 ;	-----------------------------------------
                                    699 ;	 function enc28j60_start_transmission
                                    700 ;	-----------------------------------------
      0020E6                        701 _enc28j60_start_transmission:
                                    702 ;	Eth.c:58: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      0020E6 90 03 6F         [24]  703 	mov	dptr,#_mac_spi_read_PARM_2
      0020E9 E4               [12]  704 	clr	a
      0020EA F0               [24]  705 	movx	@dptr,a
      0020EB 75 82 1F         [24]  706 	mov	dpl, #0x1f
      0020EE 12 35 65         [24]  707 	lcall	_mac_spi_read
      0020F1 E5 82            [12]  708 	mov	a, dpl
                                    709 ;	Eth.c:59: econ1 |= 0x08; // Set TXRTS (bit 3)
      0020F3 44 08            [12]  710 	orl	a,#0x08
      0020F5 FF               [12]  711 	mov	r7,a
                                    712 ;	Eth.c:60: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      0020F6 90 03 66         [24]  713 	mov	dptr,#_spi_control_write_PARM_2
      0020F9 74 1F            [12]  714 	mov	a,#0x1f
      0020FB F0               [24]  715 	movx	@dptr,a
      0020FC 90 03 67         [24]  716 	mov	dptr,#_spi_control_write_PARM_3
      0020FF EF               [12]  717 	mov	a,r7
      002100 F0               [24]  718 	movx	@dptr,a
      002101 75 82 00         [24]  719 	mov	dpl, #0x00
                                    720 ;	Eth.c:61: }
      002104 02 33 EF         [24]  721 	ljmp	_spi_control_write
                                    722 ;------------------------------------------------------------
                                    723 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    724 ;------------------------------------------------------------
                                    725 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    726 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_79'
                                    727 ;------------------------------------------------------------
                                    728 ;	Eth.c:64: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    729 ;	-----------------------------------------
                                    730 ;	 function enc28j60_set_transmit_pointers
                                    731 ;	-----------------------------------------
      002107                        732 _enc28j60_set_transmit_pointers:
      002107 AF 83            [24]  733 	mov	r7,dph
      002109 E5 82            [12]  734 	mov	a,dpl
      00210B 90 01 08         [24]  735 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_79
      00210E F0               [24]  736 	movx	@dptr,a
      00210F EF               [12]  737 	mov	a,r7
      002110 A3               [24]  738 	inc	dptr
      002111 F0               [24]  739 	movx	@dptr,a
                                    740 ;	Eth.c:67: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      002112 90 01 08         [24]  741 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_79
      002115 E0               [24]  742 	movx	a,@dptr
      002116 FE               [12]  743 	mov	r6,a
      002117 A3               [24]  744 	inc	dptr
      002118 E0               [24]  745 	movx	a,@dptr
      002119 FF               [12]  746 	mov	r7,a
      00211A 8E 05            [24]  747 	mov	ar5,r6
      00211C 90 03 66         [24]  748 	mov	dptr,#_spi_control_write_PARM_2
      00211F 74 04            [12]  749 	mov	a,#0x04
      002121 F0               [24]  750 	movx	@dptr,a
      002122 90 03 67         [24]  751 	mov	dptr,#_spi_control_write_PARM_3
      002125 ED               [12]  752 	mov	a,r5
      002126 F0               [24]  753 	movx	@dptr,a
      002127 75 82 00         [24]  754 	mov	dpl, #0x00
      00212A C0 07            [24]  755 	push	ar7
      00212C C0 06            [24]  756 	push	ar6
      00212E 12 33 EF         [24]  757 	lcall	_spi_control_write
      002131 D0 06            [24]  758 	pop	ar6
      002133 D0 07            [24]  759 	pop	ar7
                                    760 ;	Eth.c:68: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      002135 8F 06            [24]  761 	mov	ar6,r7
      002137 90 03 66         [24]  762 	mov	dptr,#_spi_control_write_PARM_2
      00213A 74 05            [12]  763 	mov	a,#0x05
      00213C F0               [24]  764 	movx	@dptr,a
      00213D 90 03 67         [24]  765 	mov	dptr,#_spi_control_write_PARM_3
      002140 EE               [12]  766 	mov	a,r6
      002141 F0               [24]  767 	movx	@dptr,a
      002142 75 82 00         [24]  768 	mov	dpl, #0x00
      002145 12 33 EF         [24]  769 	lcall	_spi_control_write
                                    770 ;	Eth.c:71: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      002148 90 01 06         [24]  771 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      00214B E0               [24]  772 	movx	a,@dptr
      00214C FE               [12]  773 	mov	r6,a
      00214D A3               [24]  774 	inc	dptr
      00214E E0               [24]  775 	movx	a,@dptr
      00214F FF               [12]  776 	mov	r7,a
      002150 8E 05            [24]  777 	mov	ar5,r6
      002152 90 03 66         [24]  778 	mov	dptr,#_spi_control_write_PARM_2
      002155 74 06            [12]  779 	mov	a,#0x06
      002157 F0               [24]  780 	movx	@dptr,a
      002158 90 03 67         [24]  781 	mov	dptr,#_spi_control_write_PARM_3
      00215B ED               [12]  782 	mov	a,r5
      00215C F0               [24]  783 	movx	@dptr,a
      00215D 75 82 00         [24]  784 	mov	dpl, #0x00
      002160 C0 07            [24]  785 	push	ar7
      002162 C0 06            [24]  786 	push	ar6
      002164 12 33 EF         [24]  787 	lcall	_spi_control_write
      002167 D0 06            [24]  788 	pop	ar6
      002169 D0 07            [24]  789 	pop	ar7
                                    790 ;	Eth.c:72: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      00216B 8F 06            [24]  791 	mov	ar6,r7
      00216D 90 03 66         [24]  792 	mov	dptr,#_spi_control_write_PARM_2
      002170 74 07            [12]  793 	mov	a,#0x07
      002172 F0               [24]  794 	movx	@dptr,a
      002173 90 03 67         [24]  795 	mov	dptr,#_spi_control_write_PARM_3
      002176 EE               [12]  796 	mov	a,r6
      002177 F0               [24]  797 	movx	@dptr,a
      002178 75 82 00         [24]  798 	mov	dpl, #0x00
                                    799 ;	Eth.c:73: }
      00217B 02 33 EF         [24]  800 	ljmp	_spi_control_write
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                    803 ;------------------------------------------------------------
                                    804 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_81'
                                    805 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_82'
                                    806 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_83'
                                    807 ;------------------------------------------------------------
                                    808 ;	Eth.c:75: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                    809 ;	-----------------------------------------
                                    810 ;	 function wait_for_transmission_complete
                                    811 ;	-----------------------------------------
      00217E                        812 _wait_for_transmission_complete:
      00217E AF 83            [24]  813 	mov	r7,dph
      002180 E5 82            [12]  814 	mov	a,dpl
      002182 90 01 0A         [24]  815 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_81
      002185 F0               [24]  816 	movx	@dptr,a
      002186 EF               [12]  817 	mov	a,r7
      002187 A3               [24]  818 	inc	dptr
      002188 F0               [24]  819 	movx	@dptr,a
                                    820 ;	Eth.c:79: while (elapsed < timeout_ms) {
      002189 90 01 0A         [24]  821 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_81
      00218C E0               [24]  822 	movx	a,@dptr
      00218D FE               [12]  823 	mov	r6,a
      00218E A3               [24]  824 	inc	dptr
      00218F E0               [24]  825 	movx	a,@dptr
      002190 FF               [12]  826 	mov	r7,a
      002191 7C 00            [12]  827 	mov	r4,#0x00
      002193 7D 00            [12]  828 	mov	r5,#0x00
      002195                        829 00103$:
      002195 C3               [12]  830 	clr	c
      002196 EC               [12]  831 	mov	a,r4
      002197 9E               [12]  832 	subb	a,r6
      002198 ED               [12]  833 	mov	a,r5
      002199 9F               [12]  834 	subb	a,r7
      00219A 50 41            [24]  835 	jnc	00105$
                                    836 ;	Eth.c:80: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      00219C 90 03 6F         [24]  837 	mov	dptr,#_mac_spi_read_PARM_2
      00219F E4               [12]  838 	clr	a
      0021A0 F0               [24]  839 	movx	@dptr,a
      0021A1 75 82 1F         [24]  840 	mov	dpl, #0x1f
      0021A4 C0 07            [24]  841 	push	ar7
      0021A6 C0 06            [24]  842 	push	ar6
      0021A8 C0 05            [24]  843 	push	ar5
      0021AA C0 04            [24]  844 	push	ar4
      0021AC 12 35 65         [24]  845 	lcall	_mac_spi_read
      0021AF E5 82            [12]  846 	mov	a, dpl
      0021B1 D0 04            [24]  847 	pop	ar4
      0021B3 D0 05            [24]  848 	pop	ar5
      0021B5 D0 06            [24]  849 	pop	ar6
      0021B7 D0 07            [24]  850 	pop	ar7
                                    851 ;	Eth.c:81: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      0021B9 20 E3 04         [24]  852 	jb	acc.3,00102$
                                    853 ;	Eth.c:82: return true;  // Transmission completed
      0021BC 75 82 01         [24]  854 	mov	dpl, #0x01
      0021BF 22               [24]  855 	ret
      0021C0                        856 00102$:
                                    857 ;	Eth.c:85: delay_ms(1);  // Wait 1 ms
      0021C0 90 00 01         [24]  858 	mov	dptr,#0x0001
      0021C3 C0 07            [24]  859 	push	ar7
      0021C5 C0 06            [24]  860 	push	ar6
      0021C7 C0 05            [24]  861 	push	ar5
      0021C9 C0 04            [24]  862 	push	ar4
      0021CB 12 20 65         [24]  863 	lcall	_delay_ms
      0021CE D0 04            [24]  864 	pop	ar4
      0021D0 D0 05            [24]  865 	pop	ar5
      0021D2 D0 06            [24]  866 	pop	ar6
      0021D4 D0 07            [24]  867 	pop	ar7
                                    868 ;	Eth.c:86: elapsed++;
      0021D6 0C               [12]  869 	inc	r4
      0021D7 BC 00 BB         [24]  870 	cjne	r4,#0x00,00103$
      0021DA 0D               [12]  871 	inc	r5
      0021DB 80 B8            [24]  872 	sjmp	00103$
      0021DD                        873 00105$:
                                    874 ;	Eth.c:89: return false;  // Timed out
      0021DD 75 82 00         [24]  875 	mov	dpl, #0x00
                                    876 ;	Eth.c:90: }
      0021E0 22               [24]  877 	ret
                                    878 ;------------------------------------------------------------
                                    879 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                    880 ;------------------------------------------------------------
                                    881 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_85'
                                    882 ;------------------------------------------------------------
                                    883 ;	Eth.c:92: bool enc28j60_transmission_successful()
                                    884 ;	-----------------------------------------
                                    885 ;	 function enc28j60_transmission_successful
                                    886 ;	-----------------------------------------
      0021E1                        887 _enc28j60_transmission_successful:
                                    888 ;	Eth.c:94: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      0021E1 90 03 6F         [24]  889 	mov	dptr,#_mac_spi_read_PARM_2
      0021E4 E4               [12]  890 	clr	a
      0021E5 F0               [24]  891 	movx	@dptr,a
      0021E6 75 82 1D         [24]  892 	mov	dpl, #0x1d
      0021E9 12 35 65         [24]  893 	lcall	_mac_spi_read
                                    894 ;	Eth.c:95: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      0021EC E5 82            [12]  895 	mov	a,dpl
      0021EE 03               [12]  896 	rr	a
      0021EF 54 01            [12]  897 	anl	a,#0x01
      0021F1 B4 01 00         [24]  898 	cjne	a,#0x01,00103$
      0021F4                        899 00103$:
      0021F4 92 00            [24]  900 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      0021F6 E4               [12]  901 	clr	a
      0021F7 33               [12]  902 	rlc	a
      0021F8 F5 82            [12]  903 	mov	dpl, a
                                    904 ;	Eth.c:96: }
      0021FA 22               [24]  905 	ret
                                    906 ;------------------------------------------------------------
                                    907 ;Allocation info for local variables in function 'RX_disable'
                                    908 ;------------------------------------------------------------
                                    909 ;econ1_value               Allocated with name '_RX_disable_econ1_value_10000_87'
                                    910 ;------------------------------------------------------------
                                    911 ;	Eth.c:97: void RX_disable(void)
                                    912 ;	-----------------------------------------
                                    913 ;	 function RX_disable
                                    914 ;	-----------------------------------------
      0021FB                        915 _RX_disable:
                                    916 ;	Eth.c:99: uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1
      0021FB 90 03 6F         [24]  917 	mov	dptr,#_mac_spi_read_PARM_2
      0021FE E4               [12]  918 	clr	a
      0021FF F0               [24]  919 	movx	@dptr,a
      002200 75 82 1F         [24]  920 	mov	dpl, #0x1f
      002203 12 35 65         [24]  921 	lcall	_mac_spi_read
      002206 E5 82            [12]  922 	mov	a, dpl
                                    923 ;	Eth.c:102: econ1_value &= ~(0x04);
      002208 54 FB            [12]  924 	anl	a,#0xfb
      00220A FF               [12]  925 	mov	r7,a
                                    926 ;	Eth.c:105: spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
      00220B 90 03 66         [24]  927 	mov	dptr,#_spi_control_write_PARM_2
      00220E 74 1F            [12]  928 	mov	a,#0x1f
      002210 F0               [24]  929 	movx	@dptr,a
      002211 90 03 67         [24]  930 	mov	dptr,#_spi_control_write_PARM_3
      002214 EF               [12]  931 	mov	a,r7
      002215 F0               [24]  932 	movx	@dptr,a
      002216 75 82 00         [24]  933 	mov	dpl, #0x00
                                    934 ;	Eth.c:106: }
      002219 02 33 EF         [24]  935 	ljmp	_spi_control_write
                                    936 ;------------------------------------------------------------
                                    937 ;Allocation info for local variables in function 'RX_enable'
                                    938 ;------------------------------------------------------------
                                    939 ;econ1_value               Allocated with name '_RX_enable_econ1_value_10000_89'
                                    940 ;------------------------------------------------------------
                                    941 ;	Eth.c:108: void RX_enable(void)
                                    942 ;	-----------------------------------------
                                    943 ;	 function RX_enable
                                    944 ;	-----------------------------------------
      00221C                        945 _RX_enable:
                                    946 ;	Eth.c:110: uint8_t econ1_value = mac_spi_read(0x1F, 0); // Read ECON1
      00221C 90 03 6F         [24]  947 	mov	dptr,#_mac_spi_read_PARM_2
      00221F E4               [12]  948 	clr	a
      002220 F0               [24]  949 	movx	@dptr,a
      002221 75 82 1F         [24]  950 	mov	dpl, #0x1f
      002224 12 35 65         [24]  951 	lcall	_mac_spi_read
      002227 E5 82            [12]  952 	mov	a, dpl
                                    953 ;	Eth.c:113: econ1_value |= 0x04;
      002229 44 04            [12]  954 	orl	a,#0x04
      00222B FF               [12]  955 	mov	r7,a
                                    956 ;	Eth.c:116: spi_control_write(0, 0x1F, econ1_value); // Write back to ECON1
      00222C 90 03 66         [24]  957 	mov	dptr,#_spi_control_write_PARM_2
      00222F 74 1F            [12]  958 	mov	a,#0x1f
      002231 F0               [24]  959 	movx	@dptr,a
      002232 90 03 67         [24]  960 	mov	dptr,#_spi_control_write_PARM_3
      002235 EF               [12]  961 	mov	a,r7
      002236 F0               [24]  962 	movx	@dptr,a
      002237 75 82 00         [24]  963 	mov	dpl, #0x00
                                    964 ;	Eth.c:117: }
      00223A 02 33 EF         [24]  965 	ljmp	_spi_control_write
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'send_arp_request'
                                    968 ;------------------------------------------------------------
                                    969 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_91'
                                    970 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_91'
                                    971 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_91'
                                    972 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_91'
                                    973 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_91'
                                    974 ;i                         Allocated with name '_send_arp_request_i_20000_92'
                                    975 ;i                         Allocated with name '_send_arp_request_i_20000_94'
                                    976 ;i                         Allocated with name '_send_arp_request_i_20000_96'
                                    977 ;i                         Allocated with name '_send_arp_request_i_20000_98'
                                    978 ;i                         Allocated with name '_send_arp_request_i_20000_100'
                                    979 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_102'
                                    980 ;start_address             Allocated with name '_send_arp_request_start_address_10001_102'
                                    981 ;end_address               Allocated with name '_send_arp_request_end_address_10002_104'
                                    982 ;------------------------------------------------------------
                                    983 ;	Eth.c:119: void send_arp_request(void)
                                    984 ;	-----------------------------------------
                                    985 ;	 function send_arp_request
                                    986 ;	-----------------------------------------
      00223D                        987 _send_arp_request:
                                    988 ;	Eth.c:123: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      00223D 90 01 0C         [24]  989 	mov	dptr,#_send_arp_request_source_mac_10000_91
      002240 74 02            [12]  990 	mov	a,#0x02
      002242 F0               [24]  991 	movx	@dptr,a
      002243 90 01 0D         [24]  992 	mov	dptr,#(_send_arp_request_source_mac_10000_91 + 0x0001)
      002246 74 11            [12]  993 	mov	a,#0x11
      002248 F0               [24]  994 	movx	@dptr,a
      002249 90 01 0E         [24]  995 	mov	dptr,#(_send_arp_request_source_mac_10000_91 + 0x0002)
      00224C 23               [12]  996 	rl	a
      00224D F0               [24]  997 	movx	@dptr,a
      00224E 90 01 0F         [24]  998 	mov	dptr,#(_send_arp_request_source_mac_10000_91 + 0x0003)
      002251 74 33            [12]  999 	mov	a,#0x33
      002253 F0               [24] 1000 	movx	@dptr,a
      002254 90 01 10         [24] 1001 	mov	dptr,#(_send_arp_request_source_mac_10000_91 + 0x0004)
      002257 74 44            [12] 1002 	mov	a,#0x44
      002259 F0               [24] 1003 	movx	@dptr,a
      00225A 90 01 11         [24] 1004 	mov	dptr,#(_send_arp_request_source_mac_10000_91 + 0x0005)
      00225D 74 55            [12] 1005 	mov	a,#0x55
      00225F F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	Eth.c:124: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      002260 90 01 12         [24] 1008 	mov	dptr,#_send_arp_request_dest_mac_10000_91
      002263 74 F8            [12] 1009 	mov	a,#0xf8
      002265 F0               [24] 1010 	movx	@dptr,a
      002266 90 01 13         [24] 1011 	mov	dptr,#(_send_arp_request_dest_mac_10000_91 + 0x0001)
      002269 74 75            [12] 1012 	mov	a,#0x75
      00226B F0               [24] 1013 	movx	@dptr,a
      00226C 90 01 14         [24] 1014 	mov	dptr,#(_send_arp_request_dest_mac_10000_91 + 0x0002)
      00226F 74 A4            [12] 1015 	mov	a,#0xa4
      002271 F0               [24] 1016 	movx	@dptr,a
      002272 90 01 15         [24] 1017 	mov	dptr,#(_send_arp_request_dest_mac_10000_91 + 0x0003)
      002275 74 8C            [12] 1018 	mov	a,#0x8c
      002277 F0               [24] 1019 	movx	@dptr,a
      002278 90 01 16         [24] 1020 	mov	dptr,#(_send_arp_request_dest_mac_10000_91 + 0x0004)
      00227B 74 41            [12] 1021 	mov	a,#0x41
      00227D F0               [24] 1022 	movx	@dptr,a
      00227E 90 01 17         [24] 1023 	mov	dptr,#(_send_arp_request_dest_mac_10000_91 + 0x0005)
      002281 74 31            [12] 1024 	mov	a,#0x31
      002283 F0               [24] 1025 	movx	@dptr,a
                                   1026 ;	Eth.c:125: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      002284 90 01 18         [24] 1027 	mov	dptr,#_send_arp_request_source_ip_10000_91
      002287 74 C0            [12] 1028 	mov	a,#0xc0
      002289 F0               [24] 1029 	movx	@dptr,a
      00228A 90 01 19         [24] 1030 	mov	dptr,#(_send_arp_request_source_ip_10000_91 + 0x0001)
      00228D 74 A8            [12] 1031 	mov	a,#0xa8
      00228F F0               [24] 1032 	movx	@dptr,a
      002290 90 01 1A         [24] 1033 	mov	dptr,#(_send_arp_request_source_ip_10000_91 + 0x0002)
      002293 74 01            [12] 1034 	mov	a,#0x01
      002295 F0               [24] 1035 	movx	@dptr,a
      002296 90 01 1B         [24] 1036 	mov	dptr,#(_send_arp_request_source_ip_10000_91 + 0x0003)
      002299 74 64            [12] 1037 	mov	a,#0x64
      00229B F0               [24] 1038 	movx	@dptr,a
                                   1039 ;	Eth.c:126: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      00229C 90 01 1C         [24] 1040 	mov	dptr,#_send_arp_request_target_ip_10000_91
      00229F 74 C0            [12] 1041 	mov	a,#0xc0
      0022A1 F0               [24] 1042 	movx	@dptr,a
      0022A2 90 01 1D         [24] 1043 	mov	dptr,#(_send_arp_request_target_ip_10000_91 + 0x0001)
      0022A5 74 A8            [12] 1044 	mov	a,#0xa8
      0022A7 F0               [24] 1045 	movx	@dptr,a
      0022A8 90 01 1E         [24] 1046 	mov	dptr,#(_send_arp_request_target_ip_10000_91 + 0x0002)
      0022AB 74 01            [12] 1047 	mov	a,#0x01
      0022AD F0               [24] 1048 	movx	@dptr,a
      0022AE 90 01 1F         [24] 1049 	mov	dptr,#(_send_arp_request_target_ip_10000_91 + 0x0003)
      0022B1 F0               [24] 1050 	movx	@dptr,a
                                   1051 ;	Eth.c:130: arp_packet[0] = 0x0E;
      0022B2 90 01 20         [24] 1052 	mov	dptr,#_send_arp_request_arp_packet_10000_91
      0022B5 74 0E            [12] 1053 	mov	a,#0x0e
      0022B7 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	Eth.c:138: for (int i = 0; i < 6; i++)
      0022B8 7E 00            [12] 1056 	mov	r6,#0x00
      0022BA 7F 00            [12] 1057 	mov	r7,#0x00
      0022BC                       1058 00115$:
      0022BC C3               [12] 1059 	clr	c
      0022BD EE               [12] 1060 	mov	a,r6
      0022BE 94 06            [12] 1061 	subb	a,#0x06
      0022C0 EF               [12] 1062 	mov	a,r7
      0022C1 64 80            [12] 1063 	xrl	a,#0x80
      0022C3 94 80            [12] 1064 	subb	a,#0x80
      0022C5 50 48            [24] 1065 	jnc	00101$
                                   1066 ;	Eth.c:140: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      0022C7 8E 05            [24] 1067 	mov	ar5,r6
      0022C9 ED               [12] 1068 	mov	a,r5
      0022CA 04               [12] 1069 	inc	a
      0022CB FC               [12] 1070 	mov	r4,a
      0022CC 33               [12] 1071 	rlc	a
      0022CD 95 E0            [12] 1072 	subb	a,acc
      0022CF FB               [12] 1073 	mov	r3,a
      0022D0 EC               [12] 1074 	mov	a,r4
      0022D1 24 20            [12] 1075 	add	a, #_send_arp_request_arp_packet_10000_91
      0022D3 FC               [12] 1076 	mov	r4,a
      0022D4 EB               [12] 1077 	mov	a,r3
      0022D5 34 01            [12] 1078 	addc	a, #(_send_arp_request_arp_packet_10000_91 >> 8)
      0022D7 FB               [12] 1079 	mov	r3,a
      0022D8 EE               [12] 1080 	mov	a,r6
      0022D9 24 12            [12] 1081 	add	a, #_send_arp_request_dest_mac_10000_91
      0022DB F5 82            [12] 1082 	mov	dpl,a
      0022DD EF               [12] 1083 	mov	a,r7
      0022DE 34 01            [12] 1084 	addc	a, #(_send_arp_request_dest_mac_10000_91 >> 8)
      0022E0 F5 83            [12] 1085 	mov	dph,a
      0022E2 E0               [24] 1086 	movx	a,@dptr
      0022E3 8C 82            [24] 1087 	mov	dpl,r4
      0022E5 8B 83            [24] 1088 	mov	dph,r3
      0022E7 F0               [24] 1089 	movx	@dptr,a
                                   1090 ;	Eth.c:141: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      0022E8 74 07            [12] 1091 	mov	a,#0x07
      0022EA 2D               [12] 1092 	add	a, r5
      0022EB FD               [12] 1093 	mov	r5,a
      0022EC 33               [12] 1094 	rlc	a
      0022ED 95 E0            [12] 1095 	subb	a,acc
      0022EF FC               [12] 1096 	mov	r4,a
      0022F0 ED               [12] 1097 	mov	a,r5
      0022F1 24 20            [12] 1098 	add	a, #_send_arp_request_arp_packet_10000_91
      0022F3 FD               [12] 1099 	mov	r5,a
      0022F4 EC               [12] 1100 	mov	a,r4
      0022F5 34 01            [12] 1101 	addc	a, #(_send_arp_request_arp_packet_10000_91 >> 8)
      0022F7 FC               [12] 1102 	mov	r4,a
      0022F8 EE               [12] 1103 	mov	a,r6
      0022F9 24 0C            [12] 1104 	add	a, #_send_arp_request_source_mac_10000_91
      0022FB F5 82            [12] 1105 	mov	dpl,a
      0022FD EF               [12] 1106 	mov	a,r7
      0022FE 34 01            [12] 1107 	addc	a, #(_send_arp_request_source_mac_10000_91 >> 8)
      002300 F5 83            [12] 1108 	mov	dph,a
      002302 E0               [24] 1109 	movx	a,@dptr
      002303 8D 82            [24] 1110 	mov	dpl,r5
      002305 8C 83            [24] 1111 	mov	dph,r4
      002307 F0               [24] 1112 	movx	@dptr,a
                                   1113 ;	Eth.c:138: for (int i = 0; i < 6; i++)
      002308 0E               [12] 1114 	inc	r6
      002309 BE 00 B0         [24] 1115 	cjne	r6,#0x00,00115$
      00230C 0F               [12] 1116 	inc	r7
      00230D 80 AD            [24] 1117 	sjmp	00115$
      00230F                       1118 00101$:
                                   1119 ;	Eth.c:145: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      00230F 90 01 2D         [24] 1120 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x000d)
      002312 74 08            [12] 1121 	mov	a,#0x08
      002314 F0               [24] 1122 	movx	@dptr,a
                                   1123 ;	Eth.c:146: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      002315 90 01 2E         [24] 1124 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x000e)
      002318 74 06            [12] 1125 	mov	a,#0x06
      00231A F0               [24] 1126 	movx	@dptr,a
                                   1127 ;	Eth.c:150: arp_packet[15] = 0x00;
      00231B 90 01 2F         [24] 1128 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x000f)
      00231E E4               [12] 1129 	clr	a
      00231F F0               [24] 1130 	movx	@dptr,a
                                   1131 ;	Eth.c:151: arp_packet[16] = 0x01;
      002320 90 01 30         [24] 1132 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x0010)
      002323 04               [12] 1133 	inc	a
      002324 F0               [24] 1134 	movx	@dptr,a
                                   1135 ;	Eth.c:154: arp_packet[17] = 0x08;
      002325 90 01 31         [24] 1136 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x0011)
      002328 74 08            [12] 1137 	mov	a,#0x08
      00232A F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	Eth.c:155: arp_packet[18] = 0x00;
      00232B 90 01 32         [24] 1140 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x0012)
      00232E E4               [12] 1141 	clr	a
      00232F F0               [24] 1142 	movx	@dptr,a
                                   1143 ;	Eth.c:158: arp_packet[19] = 0x06;
      002330 90 01 33         [24] 1144 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x0013)
      002333 74 06            [12] 1145 	mov	a,#0x06
      002335 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	Eth.c:161: arp_packet[20] = 0x04;
      002336 90 01 34         [24] 1148 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x0014)
      002339 74 04            [12] 1149 	mov	a,#0x04
      00233B F0               [24] 1150 	movx	@dptr,a
                                   1151 ;	Eth.c:164: arp_packet[21] = 0x00;
      00233C 90 01 35         [24] 1152 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x0015)
      00233F E4               [12] 1153 	clr	a
      002340 F0               [24] 1154 	movx	@dptr,a
                                   1155 ;	Eth.c:165: arp_packet[22] = 0x01;
      002341 90 01 36         [24] 1156 	mov	dptr,#(_send_arp_request_arp_packet_10000_91 + 0x0016)
      002344 04               [12] 1157 	inc	a
      002345 F0               [24] 1158 	movx	@dptr,a
                                   1159 ;	Eth.c:168: for (int i = 0; i < 6; i++) {
      002346 7E 00            [12] 1160 	mov	r6,#0x00
      002348 7F 00            [12] 1161 	mov	r7,#0x00
      00234A                       1162 00118$:
      00234A C3               [12] 1163 	clr	c
      00234B EE               [12] 1164 	mov	a,r6
      00234C 94 06            [12] 1165 	subb	a,#0x06
      00234E EF               [12] 1166 	mov	a,r7
      00234F 64 80            [12] 1167 	xrl	a,#0x80
      002351 94 80            [12] 1168 	subb	a,#0x80
      002353 50 29            [24] 1169 	jnc	00102$
                                   1170 ;	Eth.c:169: arp_packet[23 + i] = source_mac[i];
      002355 8E 05            [24] 1171 	mov	ar5,r6
      002357 74 17            [12] 1172 	mov	a,#0x17
      002359 2D               [12] 1173 	add	a, r5
      00235A FD               [12] 1174 	mov	r5,a
      00235B 33               [12] 1175 	rlc	a
      00235C 95 E0            [12] 1176 	subb	a,acc
      00235E FC               [12] 1177 	mov	r4,a
      00235F ED               [12] 1178 	mov	a,r5
      002360 24 20            [12] 1179 	add	a, #_send_arp_request_arp_packet_10000_91
      002362 FD               [12] 1180 	mov	r5,a
      002363 EC               [12] 1181 	mov	a,r4
      002364 34 01            [12] 1182 	addc	a, #(_send_arp_request_arp_packet_10000_91 >> 8)
      002366 FC               [12] 1183 	mov	r4,a
      002367 EE               [12] 1184 	mov	a,r6
      002368 24 0C            [12] 1185 	add	a, #_send_arp_request_source_mac_10000_91
      00236A F5 82            [12] 1186 	mov	dpl,a
      00236C EF               [12] 1187 	mov	a,r7
      00236D 34 01            [12] 1188 	addc	a, #(_send_arp_request_source_mac_10000_91 >> 8)
      00236F F5 83            [12] 1189 	mov	dph,a
      002371 E0               [24] 1190 	movx	a,@dptr
      002372 8D 82            [24] 1191 	mov	dpl,r5
      002374 8C 83            [24] 1192 	mov	dph,r4
      002376 F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	Eth.c:168: for (int i = 0; i < 6; i++) {
      002377 0E               [12] 1195 	inc	r6
      002378 BE 00 CF         [24] 1196 	cjne	r6,#0x00,00118$
      00237B 0F               [12] 1197 	inc	r7
      00237C 80 CC            [24] 1198 	sjmp	00118$
      00237E                       1199 00102$:
                                   1200 ;	Eth.c:173: for (int i = 0; i < 4; i++) {
      00237E 7E 00            [12] 1201 	mov	r6,#0x00
      002380 7F 00            [12] 1202 	mov	r7,#0x00
      002382                       1203 00121$:
      002382 C3               [12] 1204 	clr	c
      002383 EE               [12] 1205 	mov	a,r6
      002384 94 04            [12] 1206 	subb	a,#0x04
      002386 EF               [12] 1207 	mov	a,r7
      002387 64 80            [12] 1208 	xrl	a,#0x80
      002389 94 80            [12] 1209 	subb	a,#0x80
      00238B 50 29            [24] 1210 	jnc	00103$
                                   1211 ;	Eth.c:174: arp_packet[29 + i] = source_ip[i];
      00238D 8E 05            [24] 1212 	mov	ar5,r6
      00238F 74 1D            [12] 1213 	mov	a,#0x1d
      002391 2D               [12] 1214 	add	a, r5
      002392 FD               [12] 1215 	mov	r5,a
      002393 33               [12] 1216 	rlc	a
      002394 95 E0            [12] 1217 	subb	a,acc
      002396 FC               [12] 1218 	mov	r4,a
      002397 ED               [12] 1219 	mov	a,r5
      002398 24 20            [12] 1220 	add	a, #_send_arp_request_arp_packet_10000_91
      00239A FD               [12] 1221 	mov	r5,a
      00239B EC               [12] 1222 	mov	a,r4
      00239C 34 01            [12] 1223 	addc	a, #(_send_arp_request_arp_packet_10000_91 >> 8)
      00239E FC               [12] 1224 	mov	r4,a
      00239F EE               [12] 1225 	mov	a,r6
      0023A0 24 18            [12] 1226 	add	a, #_send_arp_request_source_ip_10000_91
      0023A2 F5 82            [12] 1227 	mov	dpl,a
      0023A4 EF               [12] 1228 	mov	a,r7
      0023A5 34 01            [12] 1229 	addc	a, #(_send_arp_request_source_ip_10000_91 >> 8)
      0023A7 F5 83            [12] 1230 	mov	dph,a
      0023A9 E0               [24] 1231 	movx	a,@dptr
      0023AA 8D 82            [24] 1232 	mov	dpl,r5
      0023AC 8C 83            [24] 1233 	mov	dph,r4
      0023AE F0               [24] 1234 	movx	@dptr,a
                                   1235 ;	Eth.c:173: for (int i = 0; i < 4; i++) {
      0023AF 0E               [12] 1236 	inc	r6
      0023B0 BE 00 CF         [24] 1237 	cjne	r6,#0x00,00121$
      0023B3 0F               [12] 1238 	inc	r7
      0023B4 80 CC            [24] 1239 	sjmp	00121$
      0023B6                       1240 00103$:
                                   1241 ;	Eth.c:178: for (int i = 0; i < 6; i++) {
      0023B6 7F 00            [12] 1242 	mov	r7,#0x00
      0023B8                       1243 00124$:
      0023B8 BF 06 00         [24] 1244 	cjne	r7,#0x06,00215$
      0023BB                       1245 00215$:
      0023BB 50 19            [24] 1246 	jnc	00104$
                                   1247 ;	Eth.c:179: arp_packet[33 + i] = 0x00;
      0023BD 8F 06            [24] 1248 	mov	ar6,r7
      0023BF 74 21            [12] 1249 	mov	a,#0x21
      0023C1 2E               [12] 1250 	add	a, r6
      0023C2 FE               [12] 1251 	mov	r6,a
      0023C3 33               [12] 1252 	rlc	a
      0023C4 95 E0            [12] 1253 	subb	a,acc
      0023C6 FD               [12] 1254 	mov	r5,a
      0023C7 EE               [12] 1255 	mov	a,r6
      0023C8 24 20            [12] 1256 	add	a, #_send_arp_request_arp_packet_10000_91
      0023CA F5 82            [12] 1257 	mov	dpl,a
      0023CC ED               [12] 1258 	mov	a,r5
      0023CD 34 01            [12] 1259 	addc	a, #(_send_arp_request_arp_packet_10000_91 >> 8)
      0023CF F5 83            [12] 1260 	mov	dph,a
      0023D1 E4               [12] 1261 	clr	a
      0023D2 F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	Eth.c:178: for (int i = 0; i < 6; i++) {
      0023D3 0F               [12] 1264 	inc	r7
      0023D4 80 E2            [24] 1265 	sjmp	00124$
      0023D6                       1266 00104$:
                                   1267 ;	Eth.c:183: for (int i = 0; i < 4; i++) {
      0023D6 7E 00            [12] 1268 	mov	r6,#0x00
      0023D8 7F 00            [12] 1269 	mov	r7,#0x00
      0023DA                       1270 00127$:
      0023DA C3               [12] 1271 	clr	c
      0023DB EE               [12] 1272 	mov	a,r6
      0023DC 94 04            [12] 1273 	subb	a,#0x04
      0023DE EF               [12] 1274 	mov	a,r7
      0023DF 64 80            [12] 1275 	xrl	a,#0x80
      0023E1 94 80            [12] 1276 	subb	a,#0x80
      0023E3 50 29            [24] 1277 	jnc	00105$
                                   1278 ;	Eth.c:184: arp_packet[39 + i] = target_ip[i];
      0023E5 8E 05            [24] 1279 	mov	ar5,r6
      0023E7 74 27            [12] 1280 	mov	a,#0x27
      0023E9 2D               [12] 1281 	add	a, r5
      0023EA FD               [12] 1282 	mov	r5,a
      0023EB 33               [12] 1283 	rlc	a
      0023EC 95 E0            [12] 1284 	subb	a,acc
      0023EE FC               [12] 1285 	mov	r4,a
      0023EF ED               [12] 1286 	mov	a,r5
      0023F0 24 20            [12] 1287 	add	a, #_send_arp_request_arp_packet_10000_91
      0023F2 FD               [12] 1288 	mov	r5,a
      0023F3 EC               [12] 1289 	mov	a,r4
      0023F4 34 01            [12] 1290 	addc	a, #(_send_arp_request_arp_packet_10000_91 >> 8)
      0023F6 FC               [12] 1291 	mov	r4,a
      0023F7 EE               [12] 1292 	mov	a,r6
      0023F8 24 1C            [12] 1293 	add	a, #_send_arp_request_target_ip_10000_91
      0023FA F5 82            [12] 1294 	mov	dpl,a
      0023FC EF               [12] 1295 	mov	a,r7
      0023FD 34 01            [12] 1296 	addc	a, #(_send_arp_request_target_ip_10000_91 >> 8)
      0023FF F5 83            [12] 1297 	mov	dph,a
      002401 E0               [24] 1298 	movx	a,@dptr
      002402 8D 82            [24] 1299 	mov	dpl,r5
      002404 8C 83            [24] 1300 	mov	dph,r4
      002406 F0               [24] 1301 	movx	@dptr,a
                                   1302 ;	Eth.c:183: for (int i = 0; i < 4; i++) {
      002407 0E               [12] 1303 	inc	r6
      002408 BE 00 CF         [24] 1304 	cjne	r6,#0x00,00127$
      00240B 0F               [12] 1305 	inc	r7
      00240C 80 CC            [24] 1306 	sjmp	00127$
      00240E                       1307 00105$:
                                   1308 ;	Eth.c:197: spi_buffer_write(frame_size, start_address, arp_packet);
      00240E 90 03 80         [24] 1309 	mov	dptr,#_spi_buffer_write_PARM_2
      002411 E4               [12] 1310 	clr	a
      002412 F0               [24] 1311 	movx	@dptr,a
      002413 A3               [24] 1312 	inc	dptr
      002414 F0               [24] 1313 	movx	@dptr,a
      002415 90 03 82         [24] 1314 	mov	dptr,#_spi_buffer_write_PARM_3
      002418 74 20            [12] 1315 	mov	a,#_send_arp_request_arp_packet_10000_91
      00241A F0               [24] 1316 	movx	@dptr,a
      00241B 74 01            [12] 1317 	mov	a,#(_send_arp_request_arp_packet_10000_91 >> 8)
      00241D A3               [24] 1318 	inc	dptr
      00241E F0               [24] 1319 	movx	@dptr,a
      00241F E4               [12] 1320 	clr	a
      002420 A3               [24] 1321 	inc	dptr
      002421 F0               [24] 1322 	movx	@dptr,a
      002422 90 00 2C         [24] 1323 	mov	dptr,#0x002c
      002425 12 39 6B         [24] 1324 	lcall	_spi_buffer_write
                                   1325 ;	Eth.c:200: enc28j60_set_transmit_pointers(start_address, end_address);
      002428 90 01 06         [24] 1326 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      00242B 74 2B            [12] 1327 	mov	a,#0x2b
      00242D F0               [24] 1328 	movx	@dptr,a
      00242E E4               [12] 1329 	clr	a
      00242F A3               [24] 1330 	inc	dptr
      002430 F0               [24] 1331 	movx	@dptr,a
      002431 90 00 00         [24] 1332 	mov	dptr,#0x0000
      002434 12 21 07         [24] 1333 	lcall	_enc28j60_set_transmit_pointers
                                   1334 ;	Eth.c:203: RX_enable();
      002437 12 22 1C         [24] 1335 	lcall	_RX_enable
                                   1336 ;	Eth.c:204: enc28j60_start_transmission();
      00243A 12 20 E6         [24] 1337 	lcall	_enc28j60_start_transmission
                                   1338 ;	Eth.c:207: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      00243D 90 01 F4         [24] 1339 	mov	dptr,#0x01f4
      002440 12 21 7E         [24] 1340 	lcall	_wait_for_transmission_complete
      002443 E5 82            [12] 1341 	mov	a, dpl
      002445 60 33            [24] 1342 	jz	00112$
                                   1343 ;	Eth.c:209: if (enc28j60_transmission_successful()) {
      002447 12 21 E1         [24] 1344 	lcall	_enc28j60_transmission_successful
      00244A E5 82            [12] 1345 	mov	a, dpl
      00244C 60 16            [24] 1346 	jz	00109$
                                   1347 ;	Eth.c:210: printf("ARP request sent successfully.\n\r");
      00244E 74 C9            [12] 1348 	mov	a,#___str_1
      002450 C0 E0            [24] 1349 	push	acc
      002452 74 47            [12] 1350 	mov	a,#(___str_1 >> 8)
      002454 C0 E0            [24] 1351 	push	acc
      002456 74 80            [12] 1352 	mov	a,#0x80
      002458 C0 E0            [24] 1353 	push	acc
      00245A 12 3D 4C         [24] 1354 	lcall	_printf
      00245D 15 81            [12] 1355 	dec	sp
      00245F 15 81            [12] 1356 	dec	sp
      002461 15 81            [12] 1357 	dec	sp
      002463 22               [24] 1358 	ret
      002464                       1359 00109$:
                                   1360 ;	Eth.c:212: printf("ARP transmission failed. Check error flags.\n\r");
      002464 74 EA            [12] 1361 	mov	a,#___str_2
      002466 C0 E0            [24] 1362 	push	acc
      002468 74 47            [12] 1363 	mov	a,#(___str_2 >> 8)
      00246A C0 E0            [24] 1364 	push	acc
      00246C 74 80            [12] 1365 	mov	a,#0x80
      00246E C0 E0            [24] 1366 	push	acc
      002470 12 3D 4C         [24] 1367 	lcall	_printf
      002473 15 81            [12] 1368 	dec	sp
      002475 15 81            [12] 1369 	dec	sp
      002477 15 81            [12] 1370 	dec	sp
      002479 22               [24] 1371 	ret
      00247A                       1372 00112$:
                                   1373 ;	Eth.c:215: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      00247A 74 18            [12] 1374 	mov	a,#___str_3
      00247C C0 E0            [24] 1375 	push	acc
      00247E 74 48            [12] 1376 	mov	a,#(___str_3 >> 8)
      002480 C0 E0            [24] 1377 	push	acc
      002482 74 80            [12] 1378 	mov	a,#0x80
      002484 C0 E0            [24] 1379 	push	acc
      002486 12 3D 4C         [24] 1380 	lcall	_printf
      002489 15 81            [12] 1381 	dec	sp
      00248B 15 81            [12] 1382 	dec	sp
      00248D 15 81            [12] 1383 	dec	sp
                                   1384 ;	Eth.c:217: }
      00248F 22               [24] 1385 	ret
                                   1386 ;------------------------------------------------------------
                                   1387 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                   1388 ;------------------------------------------------------------
                                   1389 ;eir                       Allocated with name '_external_interrupt0_isr_eir_10000_110'
                                   1390 ;------------------------------------------------------------
                                   1391 ;	Eth.c:219: void external_interrupt0_isr(void) __interrupt (0)
                                   1392 ;	-----------------------------------------
                                   1393 ;	 function external_interrupt0_isr
                                   1394 ;	-----------------------------------------
      002490                       1395 _external_interrupt0_isr:
      002490 C0 21            [24] 1396 	push	bits
      002492 C0 E0            [24] 1397 	push	acc
      002494 C0 F0            [24] 1398 	push	b
      002496 C0 82            [24] 1399 	push	dpl
      002498 C0 83            [24] 1400 	push	dph
      00249A C0 07            [24] 1401 	push	(0+7)
      00249C C0 06            [24] 1402 	push	(0+6)
      00249E C0 05            [24] 1403 	push	(0+5)
      0024A0 C0 04            [24] 1404 	push	(0+4)
      0024A2 C0 03            [24] 1405 	push	(0+3)
      0024A4 C0 02            [24] 1406 	push	(0+2)
      0024A6 C0 01            [24] 1407 	push	(0+1)
      0024A8 C0 00            [24] 1408 	push	(0+0)
      0024AA C0 D0            [24] 1409 	push	psw
      0024AC 75 D0 00         [24] 1410 	mov	psw,#0x00
                                   1411 ;	Eth.c:221: uint8_t eir = mac_spi_read(0x1C, 0); // Read EIR register (address 0x1C, bank 0)
      0024AF 90 03 6F         [24] 1412 	mov	dptr,#_mac_spi_read_PARM_2
      0024B2 E4               [12] 1413 	clr	a
      0024B3 F0               [24] 1414 	movx	@dptr,a
      0024B4 75 82 1C         [24] 1415 	mov	dpl, #0x1c
      0024B7 12 35 65         [24] 1416 	lcall	_mac_spi_read
                                   1417 ;	Eth.c:222: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
      0024BA 74 5B            [12] 1418 	mov	a,#___str_4
      0024BC C0 E0            [24] 1419 	push	acc
      0024BE 74 48            [12] 1420 	mov	a,#(___str_4 >> 8)
      0024C0 C0 E0            [24] 1421 	push	acc
      0024C2 74 80            [12] 1422 	mov	a,#0x80
      0024C4 C0 E0            [24] 1423 	push	acc
      0024C6 12 3D 4C         [24] 1424 	lcall	_printf
      0024C9 15 81            [12] 1425 	dec	sp
      0024CB 15 81            [12] 1426 	dec	sp
      0024CD 15 81            [12] 1427 	dec	sp
                                   1428 ;	Eth.c:226: }
      0024CF D0 D0            [24] 1429 	pop	psw
      0024D1 D0 00            [24] 1430 	pop	(0+0)
      0024D3 D0 01            [24] 1431 	pop	(0+1)
      0024D5 D0 02            [24] 1432 	pop	(0+2)
      0024D7 D0 03            [24] 1433 	pop	(0+3)
      0024D9 D0 04            [24] 1434 	pop	(0+4)
      0024DB D0 05            [24] 1435 	pop	(0+5)
      0024DD D0 06            [24] 1436 	pop	(0+6)
      0024DF D0 07            [24] 1437 	pop	(0+7)
      0024E1 D0 83            [24] 1438 	pop	dph
      0024E3 D0 82            [24] 1439 	pop	dpl
      0024E5 D0 F0            [24] 1440 	pop	b
      0024E7 D0 E0            [24] 1441 	pop	acc
      0024E9 D0 21            [24] 1442 	pop	bits
      0024EB 32               [24] 1443 	reti
                                   1444 ;------------------------------------------------------------
                                   1445 ;Allocation info for local variables in function 'enc_buffer_init'
                                   1446 ;------------------------------------------------------------
                                   1447 ;end_address               Allocated with name '_enc_buffer_init_PARM_2'
                                   1448 ;start_address             Allocated with name '_enc_buffer_init_start_address_10000_111'
                                   1449 ;------------------------------------------------------------
                                   1450 ;	Eth.c:229: void enc_buffer_init(uint16_t start_address, uint16_t end_address) {
                                   1451 ;	-----------------------------------------
                                   1452 ;	 function enc_buffer_init
                                   1453 ;	-----------------------------------------
      0024EC                       1454 _enc_buffer_init:
      0024EC AF 83            [24] 1455 	mov	r7,dph
      0024EE E5 82            [12] 1456 	mov	a,dpl
      0024F0 90 01 4D         [24] 1457 	mov	dptr,#_enc_buffer_init_start_address_10000_111
      0024F3 F0               [24] 1458 	movx	@dptr,a
      0024F4 EF               [12] 1459 	mov	a,r7
      0024F5 A3               [24] 1460 	inc	dptr
      0024F6 F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	Eth.c:231: if (start_address > 0x1FFF || end_address > 0x1FFF) {
      0024F7 90 01 4D         [24] 1463 	mov	dptr,#_enc_buffer_init_start_address_10000_111
      0024FA E0               [24] 1464 	movx	a,@dptr
      0024FB FE               [12] 1465 	mov	r6,a
      0024FC A3               [24] 1466 	inc	dptr
      0024FD E0               [24] 1467 	movx	a,@dptr
      0024FE FF               [12] 1468 	mov	r7,a
      0024FF C3               [12] 1469 	clr	c
      002500 74 FF            [12] 1470 	mov	a,#0xff
      002502 9E               [12] 1471 	subb	a,r6
      002503 74 1F            [12] 1472 	mov	a,#0x1f
      002505 9F               [12] 1473 	subb	a,r7
      002506 40 15            [24] 1474 	jc	00101$
      002508 90 01 4B         [24] 1475 	mov	dptr,#_enc_buffer_init_PARM_2
      00250B E0               [24] 1476 	movx	a,@dptr
      00250C FC               [12] 1477 	mov	r4,a
      00250D A3               [24] 1478 	inc	dptr
      00250E E0               [24] 1479 	movx	a,@dptr
      00250F FD               [12] 1480 	mov	r5,a
      002510 8C 02            [24] 1481 	mov	ar2,r4
      002512 8D 03            [24] 1482 	mov	ar3,r5
      002514 C3               [12] 1483 	clr	c
      002515 74 FF            [12] 1484 	mov	a,#0xff
      002517 9A               [12] 1485 	subb	a,r2
      002518 74 1F            [12] 1486 	mov	a,#0x1f
      00251A 9B               [12] 1487 	subb	a,r3
      00251B 50 2A            [24] 1488 	jnc	00102$
      00251D                       1489 00101$:
                                   1490 ;	Eth.c:232: printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
      00251D 90 01 4B         [24] 1491 	mov	dptr,#_enc_buffer_init_PARM_2
      002520 E0               [24] 1492 	movx	a,@dptr
      002521 C0 E0            [24] 1493 	push	acc
      002523 A3               [24] 1494 	inc	dptr
      002524 E0               [24] 1495 	movx	a,@dptr
      002525 C0 E0            [24] 1496 	push	acc
      002527 90 01 4D         [24] 1497 	mov	dptr,#_enc_buffer_init_start_address_10000_111
      00252A E0               [24] 1498 	movx	a,@dptr
      00252B C0 E0            [24] 1499 	push	acc
      00252D A3               [24] 1500 	inc	dptr
      00252E E0               [24] 1501 	movx	a,@dptr
      00252F C0 E0            [24] 1502 	push	acc
      002531 74 82            [12] 1503 	mov	a,#___str_5
      002533 C0 E0            [24] 1504 	push	acc
      002535 74 48            [12] 1505 	mov	a,#(___str_5 >> 8)
      002537 C0 E0            [24] 1506 	push	acc
      002539 74 80            [12] 1507 	mov	a,#0x80
      00253B C0 E0            [24] 1508 	push	acc
      00253D 12 3D 4C         [24] 1509 	lcall	_printf
      002540 E5 81            [12] 1510 	mov	a,sp
      002542 24 F9            [12] 1511 	add	a,#0xf9
      002544 F5 81            [12] 1512 	mov	sp,a
                                   1513 ;	Eth.c:234: return;
      002546 22               [24] 1514 	ret
      002547                       1515 00102$:
                                   1516 ;	Eth.c:237: start_address &= ~1;  // Align to even address
      002547 53 06 FE         [24] 1517 	anl	ar6,#0xfe
      00254A 90 01 4D         [24] 1518 	mov	dptr,#_enc_buffer_init_start_address_10000_111
      00254D EE               [12] 1519 	mov	a,r6
      00254E F0               [24] 1520 	movx	@dptr,a
      00254F EF               [12] 1521 	mov	a,r7
      002550 A3               [24] 1522 	inc	dptr
      002551 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	Eth.c:239: spi_control_write(0, 0x00, (uint8_t) (start_address & 0xFF)); // ERDPTL
      002552 90 01 4D         [24] 1525 	mov	dptr,#_enc_buffer_init_start_address_10000_111
      002555 E0               [24] 1526 	movx	a,@dptr
      002556 FE               [12] 1527 	mov	r6,a
      002557 A3               [24] 1528 	inc	dptr
      002558 E0               [24] 1529 	movx	a,@dptr
      002559 FF               [12] 1530 	mov	r7,a
      00255A 8E 03            [24] 1531 	mov	ar3,r6
      00255C 90 03 66         [24] 1532 	mov	dptr,#_spi_control_write_PARM_2
      00255F E4               [12] 1533 	clr	a
      002560 F0               [24] 1534 	movx	@dptr,a
      002561 90 03 67         [24] 1535 	mov	dptr,#_spi_control_write_PARM_3
      002564 EB               [12] 1536 	mov	a,r3
      002565 F0               [24] 1537 	movx	@dptr,a
      002566 75 82 00         [24] 1538 	mov	dpl, #0x00
      002569 C0 07            [24] 1539 	push	ar7
      00256B C0 06            [24] 1540 	push	ar6
      00256D C0 05            [24] 1541 	push	ar5
      00256F C0 04            [24] 1542 	push	ar4
      002571 C0 03            [24] 1543 	push	ar3
      002573 12 33 EF         [24] 1544 	lcall	_spi_control_write
      002576 D0 03            [24] 1545 	pop	ar3
      002578 D0 04            [24] 1546 	pop	ar4
      00257A D0 05            [24] 1547 	pop	ar5
      00257C D0 06            [24] 1548 	pop	ar6
      00257E D0 07            [24] 1549 	pop	ar7
                                   1550 ;	Eth.c:240: spi_control_write(0, 0x01, (uint8_t) (start_address >> 8)); // ERDPTH
      002580 8F 02            [24] 1551 	mov	ar2,r7
      002582 90 03 66         [24] 1552 	mov	dptr,#_spi_control_write_PARM_2
      002585 74 01            [12] 1553 	mov	a,#0x01
      002587 F0               [24] 1554 	movx	@dptr,a
      002588 90 03 67         [24] 1555 	mov	dptr,#_spi_control_write_PARM_3
      00258B EA               [12] 1556 	mov	a,r2
      00258C F0               [24] 1557 	movx	@dptr,a
      00258D 75 82 00         [24] 1558 	mov	dpl, #0x00
      002590 C0 07            [24] 1559 	push	ar7
      002592 C0 06            [24] 1560 	push	ar6
      002594 C0 05            [24] 1561 	push	ar5
      002596 C0 04            [24] 1562 	push	ar4
      002598 C0 03            [24] 1563 	push	ar3
      00259A C0 02            [24] 1564 	push	ar2
      00259C 12 33 EF         [24] 1565 	lcall	_spi_control_write
      00259F D0 02            [24] 1566 	pop	ar2
      0025A1 D0 03            [24] 1567 	pop	ar3
      0025A3 D0 04            [24] 1568 	pop	ar4
      0025A5 D0 05            [24] 1569 	pop	ar5
      0025A7 D0 06            [24] 1570 	pop	ar6
      0025A9 D0 07            [24] 1571 	pop	ar7
                                   1572 ;	Eth.c:241: spi_control_write(0, 0x08, (uint8_t) (start_address & 0xFF)); // ERXSTL
      0025AB 90 03 66         [24] 1573 	mov	dptr,#_spi_control_write_PARM_2
      0025AE 74 08            [12] 1574 	mov	a,#0x08
      0025B0 F0               [24] 1575 	movx	@dptr,a
      0025B1 90 03 67         [24] 1576 	mov	dptr,#_spi_control_write_PARM_3
      0025B4 EB               [12] 1577 	mov	a,r3
      0025B5 F0               [24] 1578 	movx	@dptr,a
      0025B6 75 82 00         [24] 1579 	mov	dpl, #0x00
      0025B9 C0 07            [24] 1580 	push	ar7
      0025BB C0 06            [24] 1581 	push	ar6
      0025BD C0 05            [24] 1582 	push	ar5
      0025BF C0 04            [24] 1583 	push	ar4
      0025C1 C0 03            [24] 1584 	push	ar3
      0025C3 C0 02            [24] 1585 	push	ar2
      0025C5 12 33 EF         [24] 1586 	lcall	_spi_control_write
      0025C8 D0 02            [24] 1587 	pop	ar2
      0025CA D0 03            [24] 1588 	pop	ar3
      0025CC D0 04            [24] 1589 	pop	ar4
      0025CE D0 05            [24] 1590 	pop	ar5
      0025D0 D0 06            [24] 1591 	pop	ar6
      0025D2 D0 07            [24] 1592 	pop	ar7
                                   1593 ;	Eth.c:242: spi_control_write(0, 0x09, (uint8_t) (start_address >> 8)); // ERXSTH
      0025D4 90 03 66         [24] 1594 	mov	dptr,#_spi_control_write_PARM_2
      0025D7 74 09            [12] 1595 	mov	a,#0x09
      0025D9 F0               [24] 1596 	movx	@dptr,a
      0025DA 90 03 67         [24] 1597 	mov	dptr,#_spi_control_write_PARM_3
      0025DD EA               [12] 1598 	mov	a,r2
      0025DE F0               [24] 1599 	movx	@dptr,a
      0025DF 75 82 00         [24] 1600 	mov	dpl, #0x00
      0025E2 C0 07            [24] 1601 	push	ar7
      0025E4 C0 06            [24] 1602 	push	ar6
      0025E6 C0 05            [24] 1603 	push	ar5
      0025E8 C0 04            [24] 1604 	push	ar4
      0025EA C0 03            [24] 1605 	push	ar3
      0025EC C0 02            [24] 1606 	push	ar2
      0025EE 12 33 EF         [24] 1607 	lcall	_spi_control_write
      0025F1 D0 02            [24] 1608 	pop	ar2
      0025F3 D0 03            [24] 1609 	pop	ar3
      0025F5 D0 04            [24] 1610 	pop	ar4
      0025F7 D0 05            [24] 1611 	pop	ar5
      0025F9 D0 06            [24] 1612 	pop	ar6
      0025FB D0 07            [24] 1613 	pop	ar7
                                   1614 ;	Eth.c:243: spi_control_write(0, 0x0A, (uint8_t) (end_address & 0xFF)); // ERXNDL
      0025FD 8C 01            [24] 1615 	mov	ar1,r4
      0025FF 90 03 66         [24] 1616 	mov	dptr,#_spi_control_write_PARM_2
      002602 74 0A            [12] 1617 	mov	a,#0x0a
      002604 F0               [24] 1618 	movx	@dptr,a
      002605 90 03 67         [24] 1619 	mov	dptr,#_spi_control_write_PARM_3
      002608 E9               [12] 1620 	mov	a,r1
      002609 F0               [24] 1621 	movx	@dptr,a
      00260A 75 82 00         [24] 1622 	mov	dpl, #0x00
      00260D C0 07            [24] 1623 	push	ar7
      00260F C0 06            [24] 1624 	push	ar6
      002611 C0 05            [24] 1625 	push	ar5
      002613 C0 04            [24] 1626 	push	ar4
      002615 C0 03            [24] 1627 	push	ar3
      002617 C0 02            [24] 1628 	push	ar2
      002619 12 33 EF         [24] 1629 	lcall	_spi_control_write
      00261C D0 02            [24] 1630 	pop	ar2
      00261E D0 03            [24] 1631 	pop	ar3
      002620 D0 04            [24] 1632 	pop	ar4
      002622 D0 05            [24] 1633 	pop	ar5
      002624 D0 06            [24] 1634 	pop	ar6
      002626 D0 07            [24] 1635 	pop	ar7
                                   1636 ;	Eth.c:244: spi_control_write(0, 0x0B, (uint8_t) (end_address >> 8)); // ERXNDH
      002628 8D 01            [24] 1637 	mov	ar1,r5
      00262A 90 03 66         [24] 1638 	mov	dptr,#_spi_control_write_PARM_2
      00262D 74 0B            [12] 1639 	mov	a,#0x0b
      00262F F0               [24] 1640 	movx	@dptr,a
      002630 90 03 67         [24] 1641 	mov	dptr,#_spi_control_write_PARM_3
      002633 E9               [12] 1642 	mov	a,r1
      002634 F0               [24] 1643 	movx	@dptr,a
      002635 75 82 00         [24] 1644 	mov	dpl, #0x00
      002638 C0 07            [24] 1645 	push	ar7
      00263A C0 06            [24] 1646 	push	ar6
      00263C C0 05            [24] 1647 	push	ar5
      00263E C0 04            [24] 1648 	push	ar4
      002640 C0 03            [24] 1649 	push	ar3
      002642 C0 02            [24] 1650 	push	ar2
      002644 12 33 EF         [24] 1651 	lcall	_spi_control_write
      002647 D0 02            [24] 1652 	pop	ar2
      002649 D0 03            [24] 1653 	pop	ar3
      00264B D0 04            [24] 1654 	pop	ar4
      00264D D0 05            [24] 1655 	pop	ar5
      00264F D0 06            [24] 1656 	pop	ar6
      002651 D0 07            [24] 1657 	pop	ar7
                                   1658 ;	Eth.c:245: spi_control_write(0, 0x0C, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
      002653 90 03 66         [24] 1659 	mov	dptr,#_spi_control_write_PARM_2
      002656 74 0C            [12] 1660 	mov	a,#0x0c
      002658 F0               [24] 1661 	movx	@dptr,a
      002659 90 03 67         [24] 1662 	mov	dptr,#_spi_control_write_PARM_3
      00265C EB               [12] 1663 	mov	a,r3
      00265D F0               [24] 1664 	movx	@dptr,a
      00265E 75 82 00         [24] 1665 	mov	dpl, #0x00
      002661 C0 07            [24] 1666 	push	ar7
      002663 C0 06            [24] 1667 	push	ar6
      002665 C0 05            [24] 1668 	push	ar5
      002667 C0 04            [24] 1669 	push	ar4
      002669 C0 02            [24] 1670 	push	ar2
      00266B 12 33 EF         [24] 1671 	lcall	_spi_control_write
      00266E D0 02            [24] 1672 	pop	ar2
      002670 D0 04            [24] 1673 	pop	ar4
      002672 D0 05            [24] 1674 	pop	ar5
      002674 D0 06            [24] 1675 	pop	ar6
      002676 D0 07            [24] 1676 	pop	ar7
                                   1677 ;	Eth.c:246: spi_control_write(0, 0x0D, (uint8_t) (start_address >> 8)); // ERXRDPTH
      002678 90 03 66         [24] 1678 	mov	dptr,#_spi_control_write_PARM_2
      00267B 74 0D            [12] 1679 	mov	a,#0x0d
      00267D F0               [24] 1680 	movx	@dptr,a
      00267E 90 03 67         [24] 1681 	mov	dptr,#_spi_control_write_PARM_3
      002681 EA               [12] 1682 	mov	a,r2
      002682 F0               [24] 1683 	movx	@dptr,a
      002683 75 82 00         [24] 1684 	mov	dpl, #0x00
      002686 C0 07            [24] 1685 	push	ar7
      002688 C0 06            [24] 1686 	push	ar6
      00268A C0 05            [24] 1687 	push	ar5
      00268C C0 04            [24] 1688 	push	ar4
      00268E 12 33 EF         [24] 1689 	lcall	_spi_control_write
      002691 D0 04            [24] 1690 	pop	ar4
      002693 D0 05            [24] 1691 	pop	ar5
      002695 D0 06            [24] 1692 	pop	ar6
      002697 D0 07            [24] 1693 	pop	ar7
                                   1694 ;	Eth.c:247: printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
      002699 C0 04            [24] 1695 	push	ar4
      00269B C0 05            [24] 1696 	push	ar5
      00269D C0 06            [24] 1697 	push	ar6
      00269F C0 07            [24] 1698 	push	ar7
      0026A1 74 B3            [12] 1699 	mov	a,#___str_6
      0026A3 C0 E0            [24] 1700 	push	acc
      0026A5 74 48            [12] 1701 	mov	a,#(___str_6 >> 8)
      0026A7 C0 E0            [24] 1702 	push	acc
      0026A9 74 80            [12] 1703 	mov	a,#0x80
      0026AB C0 E0            [24] 1704 	push	acc
      0026AD 12 3D 4C         [24] 1705 	lcall	_printf
      0026B0 E5 81            [12] 1706 	mov	a,sp
      0026B2 24 F9            [12] 1707 	add	a,#0xf9
      0026B4 F5 81            [12] 1708 	mov	sp,a
                                   1709 ;	Eth.c:249: }
      0026B6 22               [24] 1710 	ret
                                   1711 ;------------------------------------------------------------
                                   1712 ;Allocation info for local variables in function 'enc_init'
                                   1713 ;------------------------------------------------------------
                                   1714 ;sloc0                     Allocated with name '_enc_init_sloc0_1_0'
                                   1715 ;sloc1                     Allocated with name '_enc_init_sloc1_1_0'
                                   1716 ;sloc2                     Allocated with name '_enc_init_sloc2_1_0'
                                   1717 ;sloc3                     Allocated with name '_enc_init_sloc3_1_0'
                                   1718 ;mac                       Allocated with name '_enc_init_mac_10000_114'
                                   1719 ;rx_start                  Allocated with name '_enc_init_rx_start_10001_116'
                                   1720 ;rx_end                    Allocated with name '_enc_init_rx_end_10001_116'
                                   1721 ;read_macon3               Allocated with name '_enc_init_read_macon3_10002_117'
                                   1722 ;read_macon1               Allocated with name '_enc_init_read_macon1_10003_118'
                                   1723 ;------------------------------------------------------------
                                   1724 ;	Eth.c:251: void enc_init(const uint8_t *mac)
                                   1725 ;	-----------------------------------------
                                   1726 ;	 function enc_init
                                   1727 ;	-----------------------------------------
      0026B7                       1728 _enc_init:
      0026B7 AF F0            [24] 1729 	mov	r7,b
      0026B9 AE 83            [24] 1730 	mov	r6,dph
      0026BB E5 82            [12] 1731 	mov	a,dpl
      0026BD 90 01 4F         [24] 1732 	mov	dptr,#_enc_init_mac_10000_114
      0026C0 F0               [24] 1733 	movx	@dptr,a
      0026C1 EE               [12] 1734 	mov	a,r6
      0026C2 A3               [24] 1735 	inc	dptr
      0026C3 F0               [24] 1736 	movx	@dptr,a
      0026C4 EF               [12] 1737 	mov	a,r7
      0026C5 A3               [24] 1738 	inc	dptr
      0026C6 F0               [24] 1739 	movx	@dptr,a
                                   1740 ;	Eth.c:254: enc_reset();
      0026C7 12 34 69         [24] 1741 	lcall	_enc_reset
                                   1742 ;	Eth.c:257: while (!(mac_spi_read(0x1D, 0) & 0x01))
      0026CA                       1743 00101$:
      0026CA 90 03 6F         [24] 1744 	mov	dptr,#_mac_spi_read_PARM_2
      0026CD E4               [12] 1745 	clr	a
      0026CE F0               [24] 1746 	movx	@dptr,a
      0026CF 75 82 1D         [24] 1747 	mov	dpl, #0x1d
      0026D2 12 35 65         [24] 1748 	lcall	_mac_spi_read
      0026D5 E5 82            [12] 1749 	mov	a, dpl
      0026D7 30 E0 F0         [24] 1750 	jnb	acc.0,00101$
                                   1751 ;	Eth.c:265: enc_buffer_init(rx_start, rx_end);
      0026DA 90 01 4B         [24] 1752 	mov	dptr,#_enc_buffer_init_PARM_2
      0026DD 74 FF            [12] 1753 	mov	a,#0xff
      0026DF F0               [24] 1754 	movx	@dptr,a
      0026E0 74 1F            [12] 1755 	mov	a,#0x1f
      0026E2 A3               [24] 1756 	inc	dptr
      0026E3 F0               [24] 1757 	movx	@dptr,a
      0026E4 90 08 00         [24] 1758 	mov	dptr,#0x0800
      0026E7 12 24 EC         [24] 1759 	lcall	_enc_buffer_init
                                   1760 ;	Eth.c:276: spi_control_write(2, 0x02, 0x70); // MACON3: Padding, CRC, and frame length checking enabled37
      0026EA 90 03 66         [24] 1761 	mov	dptr,#_spi_control_write_PARM_2
      0026ED 74 02            [12] 1762 	mov	a,#0x02
      0026EF F0               [24] 1763 	movx	@dptr,a
      0026F0 90 03 67         [24] 1764 	mov	dptr,#_spi_control_write_PARM_3
      0026F3 74 70            [12] 1765 	mov	a,#0x70
      0026F5 F0               [24] 1766 	movx	@dptr,a
      0026F6 75 82 02         [24] 1767 	mov	dpl, #0x02
      0026F9 12 33 EF         [24] 1768 	lcall	_spi_control_write
                                   1769 ;	Eth.c:277: spi_control_write(2, 0x03, 0x40); // MACON4: IEEE compliance00
      0026FC 90 03 66         [24] 1770 	mov	dptr,#_spi_control_write_PARM_2
      0026FF 74 03            [12] 1771 	mov	a,#0x03
      002701 F0               [24] 1772 	movx	@dptr,a
      002702 90 03 67         [24] 1773 	mov	dptr,#_spi_control_write_PARM_3
      002705 74 40            [12] 1774 	mov	a,#0x40
      002707 F0               [24] 1775 	movx	@dptr,a
      002708 75 82 02         [24] 1776 	mov	dpl, #0x02
      00270B 12 33 EF         [24] 1777 	lcall	_spi_control_write
                                   1778 ;	Eth.c:280: spi_control_write(2, 0x0A, 0xEE); // MAMXFLL
      00270E 90 03 66         [24] 1779 	mov	dptr,#_spi_control_write_PARM_2
      002711 74 0A            [12] 1780 	mov	a,#0x0a
      002713 F0               [24] 1781 	movx	@dptr,a
      002714 90 03 67         [24] 1782 	mov	dptr,#_spi_control_write_PARM_3
      002717 74 EE            [12] 1783 	mov	a,#0xee
      002719 F0               [24] 1784 	movx	@dptr,a
      00271A 75 82 02         [24] 1785 	mov	dpl, #0x02
      00271D 12 33 EF         [24] 1786 	lcall	_spi_control_write
                                   1787 ;	Eth.c:281: spi_control_write(2, 0x0B, 0x05); // MAMXFLH
      002720 90 03 66         [24] 1788 	mov	dptr,#_spi_control_write_PARM_2
      002723 74 0B            [12] 1789 	mov	a,#0x0b
      002725 F0               [24] 1790 	movx	@dptr,a
      002726 90 03 67         [24] 1791 	mov	dptr,#_spi_control_write_PARM_3
      002729 74 05            [12] 1792 	mov	a,#0x05
      00272B F0               [24] 1793 	movx	@dptr,a
      00272C 75 82 02         [24] 1794 	mov	dpl, #0x02
      00272F 12 33 EF         [24] 1795 	lcall	_spi_control_write
                                   1796 ;	Eth.c:284: spi_control_write(2, 0x04, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
      002732 90 03 66         [24] 1797 	mov	dptr,#_spi_control_write_PARM_2
      002735 74 04            [12] 1798 	mov	a,#0x04
      002737 F0               [24] 1799 	movx	@dptr,a
      002738 90 03 67         [24] 1800 	mov	dptr,#_spi_control_write_PARM_3
      00273B 74 12            [12] 1801 	mov	a,#0x12
      00273D F0               [24] 1802 	movx	@dptr,a
      00273E 75 82 02         [24] 1803 	mov	dpl, #0x02
      002741 12 33 EF         [24] 1804 	lcall	_spi_control_write
                                   1805 ;	Eth.c:285: spi_control_write(2, 0x06, 0x12); // MAIPGL: Non-back-to-back gap
      002744 90 03 66         [24] 1806 	mov	dptr,#_spi_control_write_PARM_2
      002747 74 06            [12] 1807 	mov	a,#0x06
      002749 F0               [24] 1808 	movx	@dptr,a
      00274A 90 03 67         [24] 1809 	mov	dptr,#_spi_control_write_PARM_3
      00274D 74 12            [12] 1810 	mov	a,#0x12
      00274F F0               [24] 1811 	movx	@dptr,a
      002750 75 82 02         [24] 1812 	mov	dpl, #0x02
      002753 12 33 EF         [24] 1813 	lcall	_spi_control_write
                                   1814 ;	Eth.c:286: spi_control_write(2, 0x07, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)
      002756 90 03 66         [24] 1815 	mov	dptr,#_spi_control_write_PARM_2
      002759 74 07            [12] 1816 	mov	a,#0x07
      00275B F0               [24] 1817 	movx	@dptr,a
      00275C 90 03 67         [24] 1818 	mov	dptr,#_spi_control_write_PARM_3
      00275F 74 0C            [12] 1819 	mov	a,#0x0c
      002761 F0               [24] 1820 	movx	@dptr,a
      002762 75 82 02         [24] 1821 	mov	dpl, #0x02
      002765 12 33 EF         [24] 1822 	lcall	_spi_control_write
                                   1823 ;	Eth.c:289: spi_control_write(3, 0x01, mac[5]); // MAADR6
      002768 90 01 4F         [24] 1824 	mov	dptr,#_enc_init_mac_10000_114
      00276B E0               [24] 1825 	movx	a,@dptr
      00276C FD               [12] 1826 	mov	r5,a
      00276D A3               [24] 1827 	inc	dptr
      00276E E0               [24] 1828 	movx	a,@dptr
      00276F FE               [12] 1829 	mov	r6,a
      002770 A3               [24] 1830 	inc	dptr
      002771 E0               [24] 1831 	movx	a,@dptr
      002772 FF               [12] 1832 	mov	r7,a
      002773 74 05            [12] 1833 	mov	a,#0x05
      002775 2D               [12] 1834 	add	a, r5
      002776 F5 08            [12] 1835 	mov	_enc_init_sloc0_1_0,a
      002778 E4               [12] 1836 	clr	a
      002779 3E               [12] 1837 	addc	a, r6
      00277A F5 09            [12] 1838 	mov	(_enc_init_sloc0_1_0 + 1),a
      00277C 8F 0A            [24] 1839 	mov	(_enc_init_sloc0_1_0 + 2),r7
      00277E 85 08 82         [24] 1840 	mov	dpl,_enc_init_sloc0_1_0
      002781 85 09 83         [24] 1841 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      002784 85 0A F0         [24] 1842 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002787 12 47 6E         [24] 1843 	lcall	__gptrget
      00278A F9               [12] 1844 	mov	r1,a
      00278B 90 03 66         [24] 1845 	mov	dptr,#_spi_control_write_PARM_2
      00278E 74 01            [12] 1846 	mov	a,#0x01
      002790 F0               [24] 1847 	movx	@dptr,a
      002791 90 03 67         [24] 1848 	mov	dptr,#_spi_control_write_PARM_3
      002794 E9               [12] 1849 	mov	a,r1
      002795 F0               [24] 1850 	movx	@dptr,a
      002796 75 82 03         [24] 1851 	mov	dpl, #0x03
      002799 C0 07            [24] 1852 	push	ar7
      00279B C0 06            [24] 1853 	push	ar6
      00279D C0 05            [24] 1854 	push	ar5
      00279F 12 33 EF         [24] 1855 	lcall	_spi_control_write
      0027A2 D0 05            [24] 1856 	pop	ar5
      0027A4 D0 06            [24] 1857 	pop	ar6
      0027A6 D0 07            [24] 1858 	pop	ar7
                                   1859 ;	Eth.c:290: spi_control_write(3, 0x00, mac[4]); // MAADR5
      0027A8 74 04            [12] 1860 	mov	a,#0x04
      0027AA 2D               [12] 1861 	add	a, r5
      0027AB F5 0B            [12] 1862 	mov	_enc_init_sloc1_1_0,a
      0027AD E4               [12] 1863 	clr	a
      0027AE 3E               [12] 1864 	addc	a, r6
      0027AF F5 0C            [12] 1865 	mov	(_enc_init_sloc1_1_0 + 1),a
      0027B1 8F 0D            [24] 1866 	mov	(_enc_init_sloc1_1_0 + 2),r7
      0027B3 85 0B 82         [24] 1867 	mov	dpl,_enc_init_sloc1_1_0
      0027B6 85 0C 83         [24] 1868 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      0027B9 85 0D F0         [24] 1869 	mov	b,(_enc_init_sloc1_1_0 + 2)
      0027BC 12 47 6E         [24] 1870 	lcall	__gptrget
      0027BF FB               [12] 1871 	mov	r3,a
      0027C0 90 03 66         [24] 1872 	mov	dptr,#_spi_control_write_PARM_2
      0027C3 E4               [12] 1873 	clr	a
      0027C4 F0               [24] 1874 	movx	@dptr,a
      0027C5 90 03 67         [24] 1875 	mov	dptr,#_spi_control_write_PARM_3
      0027C8 EB               [12] 1876 	mov	a,r3
      0027C9 F0               [24] 1877 	movx	@dptr,a
      0027CA 75 82 03         [24] 1878 	mov	dpl, #0x03
      0027CD C0 07            [24] 1879 	push	ar7
      0027CF C0 06            [24] 1880 	push	ar6
      0027D1 C0 05            [24] 1881 	push	ar5
      0027D3 12 33 EF         [24] 1882 	lcall	_spi_control_write
      0027D6 D0 05            [24] 1883 	pop	ar5
      0027D8 D0 06            [24] 1884 	pop	ar6
      0027DA D0 07            [24] 1885 	pop	ar7
                                   1886 ;	Eth.c:291: spi_control_write(3, 0x03, mac[3]); // MAADR4
      0027DC 74 03            [12] 1887 	mov	a,#0x03
      0027DE 2D               [12] 1888 	add	a, r5
      0027DF F5 0E            [12] 1889 	mov	_enc_init_sloc2_1_0,a
      0027E1 E4               [12] 1890 	clr	a
      0027E2 3E               [12] 1891 	addc	a, r6
      0027E3 F5 0F            [12] 1892 	mov	(_enc_init_sloc2_1_0 + 1),a
      0027E5 8F 10            [24] 1893 	mov	(_enc_init_sloc2_1_0 + 2),r7
      0027E7 85 0E 82         [24] 1894 	mov	dpl,_enc_init_sloc2_1_0
      0027EA 85 0F 83         [24] 1895 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      0027ED 85 10 F0         [24] 1896 	mov	b,(_enc_init_sloc2_1_0 + 2)
      0027F0 12 47 6E         [24] 1897 	lcall	__gptrget
      0027F3 F9               [12] 1898 	mov	r1,a
      0027F4 90 03 66         [24] 1899 	mov	dptr,#_spi_control_write_PARM_2
      0027F7 74 03            [12] 1900 	mov	a,#0x03
      0027F9 F0               [24] 1901 	movx	@dptr,a
      0027FA 90 03 67         [24] 1902 	mov	dptr,#_spi_control_write_PARM_3
      0027FD E9               [12] 1903 	mov	a,r1
      0027FE F0               [24] 1904 	movx	@dptr,a
      0027FF 75 82 03         [24] 1905 	mov	dpl, #0x03
      002802 C0 07            [24] 1906 	push	ar7
      002804 C0 06            [24] 1907 	push	ar6
      002806 C0 05            [24] 1908 	push	ar5
      002808 12 33 EF         [24] 1909 	lcall	_spi_control_write
      00280B D0 05            [24] 1910 	pop	ar5
      00280D D0 06            [24] 1911 	pop	ar6
      00280F D0 07            [24] 1912 	pop	ar7
                                   1913 ;	Eth.c:292: spi_control_write(3, 0x02, mac[2]); // MAADR3
      002811 74 02            [12] 1914 	mov	a,#0x02
      002813 2D               [12] 1915 	add	a, r5
      002814 F5 11            [12] 1916 	mov	_enc_init_sloc3_1_0,a
      002816 E4               [12] 1917 	clr	a
      002817 3E               [12] 1918 	addc	a, r6
      002818 F5 12            [12] 1919 	mov	(_enc_init_sloc3_1_0 + 1),a
      00281A 8F 13            [24] 1920 	mov	(_enc_init_sloc3_1_0 + 2),r7
      00281C 85 11 82         [24] 1921 	mov	dpl,_enc_init_sloc3_1_0
      00281F 85 12 83         [24] 1922 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      002822 85 13 F0         [24] 1923 	mov	b,(_enc_init_sloc3_1_0 + 2)
      002825 12 47 6E         [24] 1924 	lcall	__gptrget
      002828 FB               [12] 1925 	mov	r3,a
      002829 90 03 66         [24] 1926 	mov	dptr,#_spi_control_write_PARM_2
      00282C 74 02            [12] 1927 	mov	a,#0x02
      00282E F0               [24] 1928 	movx	@dptr,a
      00282F 90 03 67         [24] 1929 	mov	dptr,#_spi_control_write_PARM_3
      002832 EB               [12] 1930 	mov	a,r3
      002833 F0               [24] 1931 	movx	@dptr,a
      002834 75 82 03         [24] 1932 	mov	dpl, #0x03
      002837 C0 07            [24] 1933 	push	ar7
      002839 C0 06            [24] 1934 	push	ar6
      00283B C0 05            [24] 1935 	push	ar5
      00283D 12 33 EF         [24] 1936 	lcall	_spi_control_write
      002840 D0 05            [24] 1937 	pop	ar5
      002842 D0 06            [24] 1938 	pop	ar6
      002844 D0 07            [24] 1939 	pop	ar7
                                   1940 ;	Eth.c:293: spi_control_write(3, 0x05, mac[1]); // MAADR2
      002846 74 01            [12] 1941 	mov	a,#0x01
      002848 2D               [12] 1942 	add	a, r5
      002849 FA               [12] 1943 	mov	r2,a
      00284A E4               [12] 1944 	clr	a
      00284B 3E               [12] 1945 	addc	a, r6
      00284C FB               [12] 1946 	mov	r3,a
      00284D 8F 04            [24] 1947 	mov	ar4,r7
      00284F 8A 82            [24] 1948 	mov	dpl,r2
      002851 8B 83            [24] 1949 	mov	dph,r3
      002853 8C F0            [24] 1950 	mov	b,r4
      002855 12 47 6E         [24] 1951 	lcall	__gptrget
      002858 F9               [12] 1952 	mov	r1,a
      002859 90 03 66         [24] 1953 	mov	dptr,#_spi_control_write_PARM_2
      00285C 74 05            [12] 1954 	mov	a,#0x05
      00285E F0               [24] 1955 	movx	@dptr,a
      00285F 90 03 67         [24] 1956 	mov	dptr,#_spi_control_write_PARM_3
      002862 E9               [12] 1957 	mov	a,r1
      002863 F0               [24] 1958 	movx	@dptr,a
      002864 75 82 03         [24] 1959 	mov	dpl, #0x03
      002867 C0 07            [24] 1960 	push	ar7
      002869 C0 06            [24] 1961 	push	ar6
      00286B C0 05            [24] 1962 	push	ar5
      00286D C0 04            [24] 1963 	push	ar4
      00286F C0 03            [24] 1964 	push	ar3
      002871 C0 02            [24] 1965 	push	ar2
      002873 12 33 EF         [24] 1966 	lcall	_spi_control_write
      002876 D0 02            [24] 1967 	pop	ar2
      002878 D0 03            [24] 1968 	pop	ar3
      00287A D0 04            [24] 1969 	pop	ar4
      00287C D0 05            [24] 1970 	pop	ar5
      00287E D0 06            [24] 1971 	pop	ar6
      002880 D0 07            [24] 1972 	pop	ar7
                                   1973 ;	Eth.c:294: spi_control_write(3, 0x04, mac[0]); // MAADR1
      002882 8D 82            [24] 1974 	mov	dpl,r5
      002884 8E 83            [24] 1975 	mov	dph,r6
      002886 8F F0            [24] 1976 	mov	b,r7
      002888 12 47 6E         [24] 1977 	lcall	__gptrget
      00288B F9               [12] 1978 	mov	r1,a
      00288C 90 03 66         [24] 1979 	mov	dptr,#_spi_control_write_PARM_2
      00288F 74 04            [12] 1980 	mov	a,#0x04
      002891 F0               [24] 1981 	movx	@dptr,a
      002892 90 03 67         [24] 1982 	mov	dptr,#_spi_control_write_PARM_3
      002895 E9               [12] 1983 	mov	a,r1
      002896 F0               [24] 1984 	movx	@dptr,a
      002897 75 82 03         [24] 1985 	mov	dpl, #0x03
      00289A C0 07            [24] 1986 	push	ar7
      00289C C0 06            [24] 1987 	push	ar6
      00289E C0 05            [24] 1988 	push	ar5
      0028A0 C0 04            [24] 1989 	push	ar4
      0028A2 C0 03            [24] 1990 	push	ar3
      0028A4 C0 02            [24] 1991 	push	ar2
      0028A6 12 33 EF         [24] 1992 	lcall	_spi_control_write
      0028A9 D0 02            [24] 1993 	pop	ar2
      0028AB D0 03            [24] 1994 	pop	ar3
      0028AD D0 04            [24] 1995 	pop	ar4
      0028AF D0 05            [24] 1996 	pop	ar5
      0028B1 D0 06            [24] 1997 	pop	ar6
      0028B3 D0 07            [24] 1998 	pop	ar7
                                   1999 ;	Eth.c:296: spi_control_write(1, 0x18, 0x80); //unicast filter funcationality register
      0028B5 90 03 66         [24] 2000 	mov	dptr,#_spi_control_write_PARM_2
      0028B8 74 18            [12] 2001 	mov	a,#0x18
      0028BA F0               [24] 2002 	movx	@dptr,a
      0028BB 90 03 67         [24] 2003 	mov	dptr,#_spi_control_write_PARM_3
      0028BE 74 80            [12] 2004 	mov	a,#0x80
      0028C0 F0               [24] 2005 	movx	@dptr,a
      0028C1 75 82 01         [24] 2006 	mov	dpl, #0x01
      0028C4 C0 07            [24] 2007 	push	ar7
      0028C6 C0 06            [24] 2008 	push	ar6
      0028C8 C0 05            [24] 2009 	push	ar5
      0028CA C0 04            [24] 2010 	push	ar4
      0028CC C0 03            [24] 2011 	push	ar3
      0028CE C0 02            [24] 2012 	push	ar2
      0028D0 12 33 EF         [24] 2013 	lcall	_spi_control_write
      0028D3 D0 02            [24] 2014 	pop	ar2
      0028D5 D0 03            [24] 2015 	pop	ar3
      0028D7 D0 04            [24] 2016 	pop	ar4
      0028D9 D0 05            [24] 2017 	pop	ar5
      0028DB D0 06            [24] 2018 	pop	ar6
      0028DD D0 07            [24] 2019 	pop	ar7
                                   2020 ;	Eth.c:297: uint8_t read_macon3 = mac_spi_read(0x03, 2);
      0028DF 90 03 6F         [24] 2021 	mov	dptr,#_mac_spi_read_PARM_2
      0028E2 74 02            [12] 2022 	mov	a,#0x02
      0028E4 F0               [24] 2023 	movx	@dptr,a
      0028E5 75 82 03         [24] 2024 	mov	dpl, #0x03
      0028E8 C0 07            [24] 2025 	push	ar7
      0028EA C0 06            [24] 2026 	push	ar6
      0028EC C0 05            [24] 2027 	push	ar5
      0028EE C0 04            [24] 2028 	push	ar4
      0028F0 C0 03            [24] 2029 	push	ar3
      0028F2 C0 02            [24] 2030 	push	ar2
      0028F4 12 35 65         [24] 2031 	lcall	_mac_spi_read
      0028F7 E5 82            [12] 2032 	mov	a, dpl
      0028F9 D0 02            [24] 2033 	pop	ar2
      0028FB D0 03            [24] 2034 	pop	ar3
      0028FD D0 04            [24] 2035 	pop	ar4
      0028FF D0 05            [24] 2036 	pop	ar5
      002901 D0 06            [24] 2037 	pop	ar6
      002903 D0 07            [24] 2038 	pop	ar7
                                   2039 ;	Eth.c:298: spi_control_write(2, 0x03, (read_macon3 | (1 << 0)));
      002905 44 01            [12] 2040 	orl	a,#0x01
      002907 F9               [12] 2041 	mov	r1,a
      002908 90 03 66         [24] 2042 	mov	dptr,#_spi_control_write_PARM_2
      00290B 74 03            [12] 2043 	mov	a,#0x03
      00290D F0               [24] 2044 	movx	@dptr,a
      00290E 90 03 67         [24] 2045 	mov	dptr,#_spi_control_write_PARM_3
      002911 E9               [12] 2046 	mov	a,r1
      002912 F0               [24] 2047 	movx	@dptr,a
      002913 75 82 02         [24] 2048 	mov	dpl, #0x02
      002916 C0 07            [24] 2049 	push	ar7
      002918 C0 06            [24] 2050 	push	ar6
      00291A C0 05            [24] 2051 	push	ar5
      00291C C0 04            [24] 2052 	push	ar4
      00291E C0 03            [24] 2053 	push	ar3
      002920 C0 02            [24] 2054 	push	ar2
      002922 12 33 EF         [24] 2055 	lcall	_spi_control_write
      002925 D0 02            [24] 2056 	pop	ar2
      002927 D0 03            [24] 2057 	pop	ar3
      002929 D0 04            [24] 2058 	pop	ar4
      00292B D0 05            [24] 2059 	pop	ar5
      00292D D0 06            [24] 2060 	pop	ar6
      00292F D0 07            [24] 2061 	pop	ar7
                                   2062 ;	Eth.c:299: uint8_t read_macon1 = mac_spi_read(0x00, 2); //mac enable for reception
      002931 90 03 6F         [24] 2063 	mov	dptr,#_mac_spi_read_PARM_2
      002934 74 02            [12] 2064 	mov	a,#0x02
      002936 F0               [24] 2065 	movx	@dptr,a
      002937 75 82 00         [24] 2066 	mov	dpl, #0x00
      00293A C0 07            [24] 2067 	push	ar7
      00293C C0 06            [24] 2068 	push	ar6
      00293E C0 05            [24] 2069 	push	ar5
      002940 C0 04            [24] 2070 	push	ar4
      002942 C0 03            [24] 2071 	push	ar3
      002944 C0 02            [24] 2072 	push	ar2
      002946 12 35 65         [24] 2073 	lcall	_mac_spi_read
      002949 E5 82            [12] 2074 	mov	a, dpl
      00294B D0 02            [24] 2075 	pop	ar2
      00294D D0 03            [24] 2076 	pop	ar3
      00294F D0 04            [24] 2077 	pop	ar4
      002951 D0 05            [24] 2078 	pop	ar5
      002953 D0 06            [24] 2079 	pop	ar6
      002955 D0 07            [24] 2080 	pop	ar7
                                   2081 ;	Eth.c:300: spi_control_write(2, 0x00, (read_macon1 | (1 << 0))); //mac enable for reception
      002957 44 01            [12] 2082 	orl	a,#0x01
      002959 F9               [12] 2083 	mov	r1,a
      00295A 90 03 66         [24] 2084 	mov	dptr,#_spi_control_write_PARM_2
      00295D E4               [12] 2085 	clr	a
      00295E F0               [24] 2086 	movx	@dptr,a
      00295F 90 03 67         [24] 2087 	mov	dptr,#_spi_control_write_PARM_3
      002962 E9               [12] 2088 	mov	a,r1
      002963 F0               [24] 2089 	movx	@dptr,a
      002964 75 82 02         [24] 2090 	mov	dpl, #0x02
      002967 C0 07            [24] 2091 	push	ar7
      002969 C0 06            [24] 2092 	push	ar6
      00296B C0 05            [24] 2093 	push	ar5
      00296D C0 04            [24] 2094 	push	ar4
      00296F C0 03            [24] 2095 	push	ar3
      002971 C0 02            [24] 2096 	push	ar2
      002973 12 33 EF         [24] 2097 	lcall	_spi_control_write
      002976 D0 02            [24] 2098 	pop	ar2
      002978 D0 03            [24] 2099 	pop	ar3
      00297A D0 04            [24] 2100 	pop	ar4
      00297C D0 05            [24] 2101 	pop	ar5
      00297E D0 06            [24] 2102 	pop	ar6
      002980 D0 07            [24] 2103 	pop	ar7
                                   2104 ;	Eth.c:301: phy_spi_write(0x00, 0x0100);
      002982 90 03 6C         [24] 2105 	mov	dptr,#_phy_spi_write_PARM_2
      002985 E4               [12] 2106 	clr	a
      002986 F0               [24] 2107 	movx	@dptr,a
      002987 04               [12] 2108 	inc	a
      002988 A3               [24] 2109 	inc	dptr
      002989 F0               [24] 2110 	movx	@dptr,a
      00298A 75 82 00         [24] 2111 	mov	dpl, #0x00
      00298D C0 07            [24] 2112 	push	ar7
      00298F C0 06            [24] 2113 	push	ar6
      002991 C0 05            [24] 2114 	push	ar5
      002993 C0 04            [24] 2115 	push	ar4
      002995 C0 03            [24] 2116 	push	ar3
      002997 C0 02            [24] 2117 	push	ar2
      002999 12 34 E2         [24] 2118 	lcall	_phy_spi_write
      00299C D0 02            [24] 2119 	pop	ar2
      00299E D0 03            [24] 2120 	pop	ar3
      0029A0 D0 04            [24] 2121 	pop	ar4
      0029A2 D0 05            [24] 2122 	pop	ar5
      0029A4 D0 06            [24] 2123 	pop	ar6
      0029A6 D0 07            [24] 2124 	pop	ar7
                                   2125 ;	Eth.c:304: phy_spi_write(0x14, 0x3422); // PHLCON: LEDA=Link/Activity, LEDB=RX/TX Activity
      0029A8 90 03 6C         [24] 2126 	mov	dptr,#_phy_spi_write_PARM_2
      0029AB 74 22            [12] 2127 	mov	a,#0x22
      0029AD F0               [24] 2128 	movx	@dptr,a
      0029AE 74 34            [12] 2129 	mov	a,#0x34
      0029B0 A3               [24] 2130 	inc	dptr
      0029B1 F0               [24] 2131 	movx	@dptr,a
      0029B2 75 82 14         [24] 2132 	mov	dpl, #0x14
      0029B5 C0 07            [24] 2133 	push	ar7
      0029B7 C0 06            [24] 2134 	push	ar6
      0029B9 C0 05            [24] 2135 	push	ar5
      0029BB C0 04            [24] 2136 	push	ar4
      0029BD C0 03            [24] 2137 	push	ar3
      0029BF C0 02            [24] 2138 	push	ar2
      0029C1 12 34 E2         [24] 2139 	lcall	_phy_spi_write
      0029C4 D0 02            [24] 2140 	pop	ar2
      0029C6 D0 03            [24] 2141 	pop	ar3
      0029C8 D0 04            [24] 2142 	pop	ar4
      0029CA D0 05            [24] 2143 	pop	ar5
      0029CC D0 06            [24] 2144 	pop	ar6
      0029CE D0 07            [24] 2145 	pop	ar7
                                   2146 ;	Eth.c:305: spi_control_write(0, 0X1F, 0X04); // reception enable bit
      0029D0 90 03 66         [24] 2147 	mov	dptr,#_spi_control_write_PARM_2
      0029D3 74 1F            [12] 2148 	mov	a,#0x1f
      0029D5 F0               [24] 2149 	movx	@dptr,a
      0029D6 90 03 67         [24] 2150 	mov	dptr,#_spi_control_write_PARM_3
      0029D9 74 04            [12] 2151 	mov	a,#0x04
      0029DB F0               [24] 2152 	movx	@dptr,a
      0029DC 75 82 00         [24] 2153 	mov	dpl, #0x00
      0029DF C0 07            [24] 2154 	push	ar7
      0029E1 C0 06            [24] 2155 	push	ar6
      0029E3 C0 05            [24] 2156 	push	ar5
      0029E5 C0 04            [24] 2157 	push	ar4
      0029E7 C0 03            [24] 2158 	push	ar3
      0029E9 C0 02            [24] 2159 	push	ar2
      0029EB 12 33 EF         [24] 2160 	lcall	_spi_control_write
                                   2161 ;	Eth.c:306: printf("\nENC28J60 Initialization Complete.\n");
      0029EE 74 E2            [12] 2162 	mov	a,#___str_7
      0029F0 C0 E0            [24] 2163 	push	acc
      0029F2 74 48            [12] 2164 	mov	a,#(___str_7 >> 8)
      0029F4 C0 E0            [24] 2165 	push	acc
      0029F6 74 80            [12] 2166 	mov	a,#0x80
      0029F8 C0 E0            [24] 2167 	push	acc
      0029FA 12 3D 4C         [24] 2168 	lcall	_printf
      0029FD 15 81            [12] 2169 	dec	sp
      0029FF 15 81            [12] 2170 	dec	sp
      002A01 15 81            [12] 2171 	dec	sp
      002A03 D0 02            [24] 2172 	pop	ar2
      002A05 D0 03            [24] 2173 	pop	ar3
      002A07 D0 04            [24] 2174 	pop	ar4
      002A09 D0 05            [24] 2175 	pop	ar5
      002A0B D0 06            [24] 2176 	pop	ar6
      002A0D D0 07            [24] 2177 	pop	ar7
                                   2178 ;	Eth.c:308: mac[2], mac[3], mac[4], mac[5]);
      002A0F 85 08 82         [24] 2179 	mov	dpl,_enc_init_sloc0_1_0
      002A12 85 09 83         [24] 2180 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      002A15 85 0A F0         [24] 2181 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002A18 12 47 6E         [24] 2182 	lcall	__gptrget
      002A1B F9               [12] 2183 	mov	r1,a
      002A1C 89 08            [24] 2184 	mov	_enc_init_sloc0_1_0,r1
      002A1E 75 09 00         [24] 2185 	mov	(_enc_init_sloc0_1_0 + 1),#0x00
      002A21 85 0B 82         [24] 2186 	mov	dpl,_enc_init_sloc1_1_0
      002A24 85 0C 83         [24] 2187 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      002A27 85 0D F0         [24] 2188 	mov	b,(_enc_init_sloc1_1_0 + 2)
      002A2A 12 47 6E         [24] 2189 	lcall	__gptrget
      002A2D F9               [12] 2190 	mov	r1,a
      002A2E 89 0B            [24] 2191 	mov	_enc_init_sloc1_1_0,r1
      002A30 75 0C 00         [24] 2192 	mov	(_enc_init_sloc1_1_0 + 1),#0x00
      002A33 85 0E 82         [24] 2193 	mov	dpl,_enc_init_sloc2_1_0
      002A36 85 0F 83         [24] 2194 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      002A39 85 10 F0         [24] 2195 	mov	b,(_enc_init_sloc2_1_0 + 2)
      002A3C 12 47 6E         [24] 2196 	lcall	__gptrget
      002A3F F9               [12] 2197 	mov	r1,a
      002A40 89 0E            [24] 2198 	mov	_enc_init_sloc2_1_0,r1
      002A42 75 0F 00         [24] 2199 	mov	(_enc_init_sloc2_1_0 + 1),#0x00
      002A45 85 11 82         [24] 2200 	mov	dpl,_enc_init_sloc3_1_0
      002A48 85 12 83         [24] 2201 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      002A4B 85 13 F0         [24] 2202 	mov	b,(_enc_init_sloc3_1_0 + 2)
      002A4E 12 47 6E         [24] 2203 	lcall	__gptrget
      002A51 F8               [12] 2204 	mov	r0,a
      002A52 79 00            [12] 2205 	mov	r1,#0x00
                                   2206 ;	Eth.c:307: printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
      002A54 8A 82            [24] 2207 	mov	dpl,r2
      002A56 8B 83            [24] 2208 	mov	dph,r3
      002A58 8C F0            [24] 2209 	mov	b,r4
      002A5A 12 47 6E         [24] 2210 	lcall	__gptrget
      002A5D FA               [12] 2211 	mov	r2,a
      002A5E 7C 00            [12] 2212 	mov	r4,#0x00
      002A60 8D 82            [24] 2213 	mov	dpl,r5
      002A62 8E 83            [24] 2214 	mov	dph,r6
      002A64 8F F0            [24] 2215 	mov	b,r7
      002A66 12 47 6E         [24] 2216 	lcall	__gptrget
      002A69 FD               [12] 2217 	mov	r5,a
      002A6A 7F 00            [12] 2218 	mov	r7,#0x00
      002A6C C0 08            [24] 2219 	push	_enc_init_sloc0_1_0
      002A6E C0 09            [24] 2220 	push	(_enc_init_sloc0_1_0 + 1)
      002A70 C0 0B            [24] 2221 	push	_enc_init_sloc1_1_0
      002A72 C0 0C            [24] 2222 	push	(_enc_init_sloc1_1_0 + 1)
      002A74 C0 0E            [24] 2223 	push	_enc_init_sloc2_1_0
      002A76 C0 0F            [24] 2224 	push	(_enc_init_sloc2_1_0 + 1)
      002A78 C0 00            [24] 2225 	push	ar0
      002A7A C0 01            [24] 2226 	push	ar1
      002A7C C0 02            [24] 2227 	push	ar2
      002A7E C0 04            [24] 2228 	push	ar4
      002A80 C0 05            [24] 2229 	push	ar5
      002A82 C0 07            [24] 2230 	push	ar7
      002A84 74 06            [12] 2231 	mov	a,#___str_8
      002A86 C0 E0            [24] 2232 	push	acc
      002A88 74 49            [12] 2233 	mov	a,#(___str_8 >> 8)
      002A8A C0 E0            [24] 2234 	push	acc
      002A8C 74 80            [12] 2235 	mov	a,#0x80
      002A8E C0 E0            [24] 2236 	push	acc
      002A90 12 3D 4C         [24] 2237 	lcall	_printf
      002A93 E5 81            [12] 2238 	mov	a,sp
      002A95 24 F1            [12] 2239 	add	a,#0xf1
      002A97 F5 81            [12] 2240 	mov	sp,a
                                   2241 ;	Eth.c:309: }
      002A99 22               [24] 2242 	ret
                                   2243 	.area CSEG    (CODE)
                                   2244 	.area CONST   (CODE)
                                   2245 	.area CONST   (CODE)
      00478E                       2246 ___str_0:
      00478E 0A                    2247 	.db 0x0a
      00478F 49 6E 76 61 6C 69 64  2248 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      0047C7 0A                    2249 	.db 0x0a
      0047C8 00                    2250 	.db 0x00
                                   2251 	.area CSEG    (CODE)
                                   2252 	.area CONST   (CODE)
      0047C9                       2253 ___str_1:
      0047C9 41 52 50 20 72 65 71  2254 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      0047E7 0A                    2255 	.db 0x0a
      0047E8 0D                    2256 	.db 0x0d
      0047E9 00                    2257 	.db 0x00
                                   2258 	.area CSEG    (CODE)
                                   2259 	.area CONST   (CODE)
      0047EA                       2260 ___str_2:
      0047EA 41 52 50 20 74 72 61  2261 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      004815 0A                    2262 	.db 0x0a
      004816 0D                    2263 	.db 0x0d
      004817 00                    2264 	.db 0x00
                                   2265 	.area CSEG    (CODE)
                                   2266 	.area CONST   (CODE)
      004818                       2267 ___str_3:
      004818 54 72 61 6E 73 6D 69  2268 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      004854 74 6C 79 2E           2269 	.ascii "tly."
      004858 0A                    2270 	.db 0x0a
      004859 0D                    2271 	.db 0x0d
      00485A 00                    2272 	.db 0x00
                                   2273 	.area CSEG    (CODE)
                                   2274 	.area CONST   (CODE)
      00485B                       2275 ___str_4:
      00485B 49 6E 74 65 72 72 72  2276 	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
             72 72 72 72 72 75 75
             75 75 75 75 75 75 75
             70 70 70 70 70 70 70
             70 74 74 74 74 74 74
             74
      00487F 0A                    2277 	.db 0x0a
      004880 0D                    2278 	.db 0x0d
      004881 00                    2279 	.db 0x00
                                   2280 	.area CSEG    (CODE)
                                   2281 	.area CONST   (CODE)
      004882                       2282 ___str_5:
      004882 0A                    2283 	.db 0x0a
      004883 49 6E 76 61 6C 69 64  2284 	.ascii "Invalid Buffer Range: Start 0x%04X, End 0x%04X"
             20 42 75 66 66 65 72
             20 52 61 6E 67 65 3A
             20 53 74 61 72 74 20
             30 78 25 30 34 58 2C
             20 45 6E 64 20 30 78
             25 30 34 58
      0048B1 0A                    2285 	.db 0x0a
      0048B2 00                    2286 	.db 0x00
                                   2287 	.area CSEG    (CODE)
                                   2288 	.area CONST   (CODE)
      0048B3                       2289 ___str_6:
      0048B3 0A                    2290 	.db 0x0a
      0048B4 42 75 66 66 65 72 20  2291 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      0048E0 0A                    2292 	.db 0x0a
      0048E1 00                    2293 	.db 0x00
                                   2294 	.area CSEG    (CODE)
                                   2295 	.area CONST   (CODE)
      0048E2                       2296 ___str_7:
      0048E2 0A                    2297 	.db 0x0a
      0048E3 45 4E 43 32 38 4A 36  2298 	.ascii "ENC28J60 Initialization Complete."
             30 20 49 6E 69 74 69
             61 6C 69 7A 61 74 69
             6F 6E 20 43 6F 6D 70
             6C 65 74 65 2E
      004904 0A                    2299 	.db 0x0a
      004905 00                    2300 	.db 0x00
                                   2301 	.area CSEG    (CODE)
                                   2302 	.area CONST   (CODE)
      004906                       2303 ___str_8:
      004906 4D 41 43 20 41 64 64  2304 	.ascii "MAC Address: %02X:%02X:%02X:%02X:%02X:%02X"
             72 65 73 73 3A 20 25
             30 32 58 3A 25 30 32
             58 3A 25 30 32 58 3A
             25 30 32 58 3A 25 30
             32 58 3A 25 30 32 58
      004930 0A                    2305 	.db 0x0a
      004931 00                    2306 	.db 0x00
                                   2307 	.area CSEG    (CODE)
                                   2308 	.area XINIT   (CODE)
                                   2309 	.area CABS    (ABS,CODE)

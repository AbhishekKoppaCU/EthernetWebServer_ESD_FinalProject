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
                                    238 	.globl _send_arp_request
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
                                    481 ;--------------------------------------------------------
                                    482 ; overlayable items in internal ram
                                    483 ;--------------------------------------------------------
                                    484 ;--------------------------------------------------------
                                    485 ; indirectly addressable internal ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area ISEG    (DATA)
                                    488 ;--------------------------------------------------------
                                    489 ; absolute internal ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area IABS    (ABS,DATA)
                                    492 	.area IABS    (ABS,DATA)
                                    493 ;--------------------------------------------------------
                                    494 ; bit data
                                    495 ;--------------------------------------------------------
                                    496 	.area BSEG    (BIT)
      000000                        497 _enc28j60_transmission_successful_sloc0_1_0:
      000000                        498 	.ds 1
                                    499 ;--------------------------------------------------------
                                    500 ; paged external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area PSEG    (PAG,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; uninitialized external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XSEG    (XDATA)
      000100                        507 _delay_ms_ms_10000_67:
      000100                        508 	.ds 2
      000102                        509 _delay_ms_i_20000_69:
      000102                        510 	.ds 4
      000106                        511 _enc28j60_init_rx_buffer_PARM_2:
      000106                        512 	.ds 2
      000108                        513 _enc28j60_init_rx_buffer_start_address_10000_73:
      000108                        514 	.ds 2
      00010A                        515 _enc28j60_set_transmit_pointers_PARM_2:
      00010A                        516 	.ds 2
      00010C                        517 _enc28j60_set_transmit_pointers_start_address_10000_76:
      00010C                        518 	.ds 2
      00010E                        519 _wait_for_transmission_complete_timeout_ms_10000_78:
      00010E                        520 	.ds 2
      000110                        521 _send_arp_request_source_mac_10000_84:
      000110                        522 	.ds 6
      000116                        523 _send_arp_request_dest_mac_10000_84:
      000116                        524 	.ds 6
      00011C                        525 _send_arp_request_source_ip_10000_84:
      00011C                        526 	.ds 4
      000120                        527 _send_arp_request_target_ip_10000_84:
      000120                        528 	.ds 4
      000124                        529 _send_arp_request_arp_packet_10000_84:
      000124                        530 	.ds 43
                                    531 ;--------------------------------------------------------
                                    532 ; absolute external ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area XABS    (ABS,XDATA)
                                    535 ;--------------------------------------------------------
                                    536 ; initialized external ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area XISEG   (XDATA)
      0003C4                        539 _source_mac::
      0003C4                        540 	.ds 6
      0003CA                        541 _dest_mac::
      0003CA                        542 	.ds 6
      0003D0                        543 _source_ip::
      0003D0                        544 	.ds 4
      0003D4                        545 _target_ip::
      0003D4                        546 	.ds 4
                                    547 	.area HOME    (CODE)
                                    548 	.area GSINIT0 (CODE)
                                    549 	.area GSINIT1 (CODE)
                                    550 	.area GSINIT2 (CODE)
                                    551 	.area GSINIT3 (CODE)
                                    552 	.area GSINIT4 (CODE)
                                    553 	.area GSINIT5 (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 	.area GSFINAL (CODE)
                                    556 	.area CSEG    (CODE)
                                    557 ;--------------------------------------------------------
                                    558 ; global & static initialisations
                                    559 ;--------------------------------------------------------
                                    560 	.area HOME    (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.area GSFINAL (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 ;--------------------------------------------------------
                                    565 ; Home
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area HOME    (CODE)
                                    569 ;--------------------------------------------------------
                                    570 ; code
                                    571 ;--------------------------------------------------------
                                    572 	.area CSEG    (CODE)
                                    573 ;------------------------------------------------------------
                                    574 ;Allocation info for local variables in function 'set_mac_address'
                                    575 ;------------------------------------------------------------
                                    576 ;mac_address               Allocated with name '_set_mac_address_mac_address_10000_65'
                                    577 ;------------------------------------------------------------
                                    578 ;	Eth.c:35: void set_mac_address(uint8_t* mac_address)
                                    579 ;	-----------------------------------------
                                    580 ;	 function set_mac_address
                                    581 ;	-----------------------------------------
      002065                        582 _set_mac_address:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
                                    591 ;	Eth.c:41: spi_control_write(3, 0x01, 0x02);  // MAADR6
      002065 90 03 62         [24]  592 	mov	dptr,#_spi_control_write_PARM_2
      002068 74 01            [12]  593 	mov	a,#0x01
      00206A F0               [24]  594 	movx	@dptr,a
      00206B 90 03 63         [24]  595 	mov	dptr,#_spi_control_write_PARM_3
      00206E 04               [12]  596 	inc	a
      00206F F0               [24]  597 	movx	@dptr,a
      002070 75 82 03         [24]  598 	mov	dpl, #0x03
      002073 12 2F CE         [24]  599 	lcall	_spi_control_write
                                    600 ;	Eth.c:42: spi_control_write(3, 0x00, 0x11);  // MAADR5
      002076 90 03 62         [24]  601 	mov	dptr,#_spi_control_write_PARM_2
      002079 E4               [12]  602 	clr	a
      00207A F0               [24]  603 	movx	@dptr,a
      00207B 90 03 63         [24]  604 	mov	dptr,#_spi_control_write_PARM_3
      00207E 74 11            [12]  605 	mov	a,#0x11
      002080 F0               [24]  606 	movx	@dptr,a
      002081 75 82 03         [24]  607 	mov	dpl, #0x03
      002084 12 2F CE         [24]  608 	lcall	_spi_control_write
                                    609 ;	Eth.c:43: spi_control_write(3, 0x03, 0x22);  // MAADR4
      002087 90 03 62         [24]  610 	mov	dptr,#_spi_control_write_PARM_2
      00208A 74 03            [12]  611 	mov	a,#0x03
      00208C F0               [24]  612 	movx	@dptr,a
      00208D 90 03 63         [24]  613 	mov	dptr,#_spi_control_write_PARM_3
      002090 74 22            [12]  614 	mov	a,#0x22
      002092 F0               [24]  615 	movx	@dptr,a
      002093 75 82 03         [24]  616 	mov	dpl, #0x03
      002096 12 2F CE         [24]  617 	lcall	_spi_control_write
                                    618 ;	Eth.c:44: spi_control_write(3, 0x02, 0x33);  // MAADR3
      002099 90 03 62         [24]  619 	mov	dptr,#_spi_control_write_PARM_2
      00209C 74 02            [12]  620 	mov	a,#0x02
      00209E F0               [24]  621 	movx	@dptr,a
      00209F 90 03 63         [24]  622 	mov	dptr,#_spi_control_write_PARM_3
      0020A2 74 33            [12]  623 	mov	a,#0x33
      0020A4 F0               [24]  624 	movx	@dptr,a
      0020A5 75 82 03         [24]  625 	mov	dpl, #0x03
      0020A8 12 2F CE         [24]  626 	lcall	_spi_control_write
                                    627 ;	Eth.c:45: spi_control_write(3, 0x05, 0x44);  // MAADR2
      0020AB 90 03 62         [24]  628 	mov	dptr,#_spi_control_write_PARM_2
      0020AE 74 05            [12]  629 	mov	a,#0x05
      0020B0 F0               [24]  630 	movx	@dptr,a
      0020B1 90 03 63         [24]  631 	mov	dptr,#_spi_control_write_PARM_3
      0020B4 74 44            [12]  632 	mov	a,#0x44
      0020B6 F0               [24]  633 	movx	@dptr,a
      0020B7 75 82 03         [24]  634 	mov	dpl, #0x03
      0020BA 12 2F CE         [24]  635 	lcall	_spi_control_write
                                    636 ;	Eth.c:46: spi_control_write(3, 0x04, 0x55);  // MAADR1
      0020BD 90 03 62         [24]  637 	mov	dptr,#_spi_control_write_PARM_2
      0020C0 74 04            [12]  638 	mov	a,#0x04
      0020C2 F0               [24]  639 	movx	@dptr,a
      0020C3 90 03 63         [24]  640 	mov	dptr,#_spi_control_write_PARM_3
      0020C6 74 55            [12]  641 	mov	a,#0x55
      0020C8 F0               [24]  642 	movx	@dptr,a
      0020C9 75 82 03         [24]  643 	mov	dpl, #0x03
                                    644 ;	Eth.c:48: }
      0020CC 02 2F CE         [24]  645 	ljmp	_spi_control_write
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'delay_ms'
                                    648 ;------------------------------------------------------------
                                    649 ;ms                        Allocated with name '_delay_ms_ms_10000_67'
                                    650 ;i                         Allocated with name '_delay_ms_i_20000_69'
                                    651 ;------------------------------------------------------------
                                    652 ;	Eth.c:51: void delay_ms(uint16_t ms)
                                    653 ;	-----------------------------------------
                                    654 ;	 function delay_ms
                                    655 ;	-----------------------------------------
      0020CF                        656 _delay_ms:
      0020CF AF 83            [24]  657 	mov	r7,dph
      0020D1 E5 82            [12]  658 	mov	a,dpl
      0020D3 90 01 00         [24]  659 	mov	dptr,#_delay_ms_ms_10000_67
      0020D6 F0               [24]  660 	movx	@dptr,a
      0020D7 EF               [12]  661 	mov	a,r7
      0020D8 A3               [24]  662 	inc	dptr
      0020D9 F0               [24]  663 	movx	@dptr,a
                                    664 ;	Eth.c:53: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      0020DA 90 01 02         [24]  665 	mov	dptr,#_delay_ms_i_20000_69
      0020DD E4               [12]  666 	clr	a
      0020DE F0               [24]  667 	movx	@dptr,a
      0020DF A3               [24]  668 	inc	dptr
      0020E0 F0               [24]  669 	movx	@dptr,a
      0020E1 A3               [24]  670 	inc	dptr
      0020E2 F0               [24]  671 	movx	@dptr,a
      0020E3 A3               [24]  672 	inc	dptr
      0020E4 F0               [24]  673 	movx	@dptr,a
      0020E5 90 01 00         [24]  674 	mov	dptr,#_delay_ms_ms_10000_67
      0020E8 E0               [24]  675 	movx	a,@dptr
      0020E9 FE               [12]  676 	mov	r6,a
      0020EA A3               [24]  677 	inc	dptr
      0020EB E0               [24]  678 	movx	a,@dptr
      0020EC FF               [12]  679 	mov	r7,a
      0020ED                        680 00103$:
      0020ED 90 03 8B         [24]  681 	mov	dptr,#__mulint_PARM_2
      0020F0 EE               [12]  682 	mov	a,r6
      0020F1 F0               [24]  683 	movx	@dptr,a
      0020F2 EF               [12]  684 	mov	a,r7
      0020F3 A3               [24]  685 	inc	dptr
      0020F4 F0               [24]  686 	movx	@dptr,a
      0020F5 90 03 E8         [24]  687 	mov	dptr,#0x03e8
      0020F8 C0 07            [24]  688 	push	ar7
      0020FA C0 06            [24]  689 	push	ar6
      0020FC 12 39 75         [24]  690 	lcall	__mulint
      0020FF AC 82            [24]  691 	mov	r4, dpl
      002101 AD 83            [24]  692 	mov	r5, dph
      002103 D0 06            [24]  693 	pop	ar6
      002105 D0 07            [24]  694 	pop	ar7
      002107 90 01 02         [24]  695 	mov	dptr,#_delay_ms_i_20000_69
      00210A E0               [24]  696 	movx	a,@dptr
      00210B F8               [12]  697 	mov	r0,a
      00210C A3               [24]  698 	inc	dptr
      00210D E0               [24]  699 	movx	a,@dptr
      00210E F9               [12]  700 	mov	r1,a
      00210F A3               [24]  701 	inc	dptr
      002110 E0               [24]  702 	movx	a,@dptr
      002111 FA               [12]  703 	mov	r2,a
      002112 A3               [24]  704 	inc	dptr
      002113 E0               [24]  705 	movx	a,@dptr
      002114 FB               [12]  706 	mov	r3,a
      002115 C0 06            [24]  707 	push	ar6
      002117 C0 07            [24]  708 	push	ar7
      002119 7E 00            [12]  709 	mov	r6,#0x00
      00211B 7F 00            [12]  710 	mov	r7,#0x00
      00211D C3               [12]  711 	clr	c
      00211E E8               [12]  712 	mov	a,r0
      00211F 9C               [12]  713 	subb	a,r4
      002120 E9               [12]  714 	mov	a,r1
      002121 9D               [12]  715 	subb	a,r5
      002122 EA               [12]  716 	mov	a,r2
      002123 9E               [12]  717 	subb	a,r6
      002124 EB               [12]  718 	mov	a,r3
      002125 9F               [12]  719 	subb	a,r7
      002126 D0 07            [24]  720 	pop	ar7
      002128 D0 06            [24]  721 	pop	ar6
      00212A 50 23            [24]  722 	jnc	00105$
      00212C 90 01 02         [24]  723 	mov	dptr,#_delay_ms_i_20000_69
      00212F E0               [24]  724 	movx	a,@dptr
      002130 FA               [12]  725 	mov	r2,a
      002131 A3               [24]  726 	inc	dptr
      002132 E0               [24]  727 	movx	a,@dptr
      002133 FB               [12]  728 	mov	r3,a
      002134 A3               [24]  729 	inc	dptr
      002135 E0               [24]  730 	movx	a,@dptr
      002136 FC               [12]  731 	mov	r4,a
      002137 A3               [24]  732 	inc	dptr
      002138 E0               [24]  733 	movx	a,@dptr
      002139 FD               [12]  734 	mov	r5,a
      00213A 90 01 02         [24]  735 	mov	dptr,#_delay_ms_i_20000_69
      00213D 74 01            [12]  736 	mov	a,#0x01
      00213F 2A               [12]  737 	add	a, r2
      002140 F0               [24]  738 	movx	@dptr,a
      002141 E4               [12]  739 	clr	a
      002142 3B               [12]  740 	addc	a, r3
      002143 A3               [24]  741 	inc	dptr
      002144 F0               [24]  742 	movx	@dptr,a
      002145 E4               [12]  743 	clr	a
      002146 3C               [12]  744 	addc	a, r4
      002147 A3               [24]  745 	inc	dptr
      002148 F0               [24]  746 	movx	@dptr,a
      002149 E4               [12]  747 	clr	a
      00214A 3D               [12]  748 	addc	a, r5
      00214B A3               [24]  749 	inc	dptr
      00214C F0               [24]  750 	movx	@dptr,a
      00214D 80 9E            [24]  751 	sjmp	00103$
      00214F                        752 00105$:
                                    753 ;	Eth.c:57: }
      00214F 22               [24]  754 	ret
                                    755 ;------------------------------------------------------------
                                    756 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    757 ;------------------------------------------------------------
                                    758 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_72'
                                    759 ;------------------------------------------------------------
                                    760 ;	Eth.c:59: void enc28j60_start_transmission(void)
                                    761 ;	-----------------------------------------
                                    762 ;	 function enc28j60_start_transmission
                                    763 ;	-----------------------------------------
      002150                        764 _enc28j60_start_transmission:
                                    765 ;	Eth.c:61: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      002150 90 03 6B         [24]  766 	mov	dptr,#_mac_spi_read_PARM_2
      002153 E4               [12]  767 	clr	a
      002154 F0               [24]  768 	movx	@dptr,a
      002155 75 82 1F         [24]  769 	mov	dpl, #0x1f
      002158 12 31 44         [24]  770 	lcall	_mac_spi_read
      00215B E5 82            [12]  771 	mov	a, dpl
                                    772 ;	Eth.c:62: econ1 |= 0x08; // Set TXRTS (bit 3)
      00215D 44 08            [12]  773 	orl	a,#0x08
      00215F FF               [12]  774 	mov	r7,a
                                    775 ;	Eth.c:63: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      002160 90 03 62         [24]  776 	mov	dptr,#_spi_control_write_PARM_2
      002163 74 1F            [12]  777 	mov	a,#0x1f
      002165 F0               [24]  778 	movx	@dptr,a
      002166 90 03 63         [24]  779 	mov	dptr,#_spi_control_write_PARM_3
      002169 EF               [12]  780 	mov	a,r7
      00216A F0               [24]  781 	movx	@dptr,a
      00216B 75 82 00         [24]  782 	mov	dpl, #0x00
                                    783 ;	Eth.c:64: }
      00216E 02 2F CE         [24]  784 	ljmp	_spi_control_write
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'enc28j60_init_rx_buffer'
                                    787 ;------------------------------------------------------------
                                    788 ;end_address               Allocated with name '_enc28j60_init_rx_buffer_PARM_2'
                                    789 ;start_address             Allocated with name '_enc28j60_init_rx_buffer_start_address_10000_73'
                                    790 ;------------------------------------------------------------
                                    791 ;	Eth.c:65: void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address)
                                    792 ;	-----------------------------------------
                                    793 ;	 function enc28j60_init_rx_buffer
                                    794 ;	-----------------------------------------
      002171                        795 _enc28j60_init_rx_buffer:
      002171 AF 83            [24]  796 	mov	r7,dph
      002173 E5 82            [12]  797 	mov	a,dpl
      002175 90 01 08         [24]  798 	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_73
      002178 F0               [24]  799 	movx	@dptr,a
      002179 EF               [12]  800 	mov	a,r7
      00217A A3               [24]  801 	inc	dptr
      00217B F0               [24]  802 	movx	@dptr,a
                                    803 ;	Eth.c:68: if (start_address >= end_address || end_address > 0x1FFF) {
      00217C 90 01 08         [24]  804 	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_73
      00217F E0               [24]  805 	movx	a,@dptr
      002180 FE               [12]  806 	mov	r6,a
      002181 A3               [24]  807 	inc	dptr
      002182 E0               [24]  808 	movx	a,@dptr
      002183 FF               [12]  809 	mov	r7,a
      002184 90 01 06         [24]  810 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      002187 E0               [24]  811 	movx	a,@dptr
      002188 FC               [12]  812 	mov	r4,a
      002189 A3               [24]  813 	inc	dptr
      00218A E0               [24]  814 	movx	a,@dptr
      00218B FD               [12]  815 	mov	r5,a
      00218C C3               [12]  816 	clr	c
      00218D EE               [12]  817 	mov	a,r6
      00218E 9C               [12]  818 	subb	a,r4
      00218F EF               [12]  819 	mov	a,r7
      002190 9D               [12]  820 	subb	a,r5
      002191 50 0D            [24]  821 	jnc	00101$
      002193 8C 02            [24]  822 	mov	ar2,r4
      002195 8D 03            [24]  823 	mov	ar3,r5
      002197 C3               [12]  824 	clr	c
      002198 74 FF            [12]  825 	mov	a,#0xff
      00219A 9A               [12]  826 	subb	a,r2
      00219B 74 1F            [12]  827 	mov	a,#0x1f
      00219D 9B               [12]  828 	subb	a,r3
      00219E 50 16            [24]  829 	jnc	00102$
      0021A0                        830 00101$:
                                    831 ;	Eth.c:69: printf("Invalid RX buffer range.\n");
      0021A0 74 25            [12]  832 	mov	a,#___str_0
      0021A2 C0 E0            [24]  833 	push	acc
      0021A4 74 44            [12]  834 	mov	a,#(___str_0 >> 8)
      0021A6 C0 E0            [24]  835 	push	acc
      0021A8 74 80            [12]  836 	mov	a,#0x80
      0021AA C0 E0            [24]  837 	push	acc
      0021AC 12 39 E3         [24]  838 	lcall	_printf
      0021AF 15 81            [12]  839 	dec	sp
      0021B1 15 81            [12]  840 	dec	sp
      0021B3 15 81            [12]  841 	dec	sp
                                    842 ;	Eth.c:70: return;
      0021B5 22               [24]  843 	ret
      0021B6                        844 00102$:
                                    845 ;	Eth.c:73: spi_control_write(0, 0x08, (uint8_t)(start_address & 0xFF)); // ERXSTL (low byte)
      0021B6 8E 03            [24]  846 	mov	ar3,r6
      0021B8 90 03 62         [24]  847 	mov	dptr,#_spi_control_write_PARM_2
      0021BB 74 08            [12]  848 	mov	a,#0x08
      0021BD F0               [24]  849 	movx	@dptr,a
      0021BE 90 03 63         [24]  850 	mov	dptr,#_spi_control_write_PARM_3
      0021C1 EB               [12]  851 	mov	a,r3
      0021C2 F0               [24]  852 	movx	@dptr,a
      0021C3 75 82 00         [24]  853 	mov	dpl, #0x00
      0021C6 C0 07            [24]  854 	push	ar7
      0021C8 C0 06            [24]  855 	push	ar6
      0021CA C0 05            [24]  856 	push	ar5
      0021CC C0 04            [24]  857 	push	ar4
      0021CE C0 03            [24]  858 	push	ar3
      0021D0 12 2F CE         [24]  859 	lcall	_spi_control_write
      0021D3 D0 03            [24]  860 	pop	ar3
      0021D5 D0 04            [24]  861 	pop	ar4
      0021D7 D0 05            [24]  862 	pop	ar5
      0021D9 D0 06            [24]  863 	pop	ar6
      0021DB D0 07            [24]  864 	pop	ar7
                                    865 ;	Eth.c:74: spi_control_write(0, 0x09, (uint8_t)((start_address >> 8) & 0xFF)); // ERXSTH (high byte)
      0021DD 8F 02            [24]  866 	mov	ar2,r7
      0021DF 90 03 62         [24]  867 	mov	dptr,#_spi_control_write_PARM_2
      0021E2 74 09            [12]  868 	mov	a,#0x09
      0021E4 F0               [24]  869 	movx	@dptr,a
      0021E5 90 03 63         [24]  870 	mov	dptr,#_spi_control_write_PARM_3
      0021E8 EA               [12]  871 	mov	a,r2
      0021E9 F0               [24]  872 	movx	@dptr,a
      0021EA 75 82 00         [24]  873 	mov	dpl, #0x00
      0021ED C0 07            [24]  874 	push	ar7
      0021EF C0 06            [24]  875 	push	ar6
      0021F1 C0 05            [24]  876 	push	ar5
      0021F3 C0 04            [24]  877 	push	ar4
      0021F5 C0 03            [24]  878 	push	ar3
      0021F7 C0 02            [24]  879 	push	ar2
      0021F9 12 2F CE         [24]  880 	lcall	_spi_control_write
      0021FC D0 02            [24]  881 	pop	ar2
      0021FE D0 03            [24]  882 	pop	ar3
      002200 D0 04            [24]  883 	pop	ar4
      002202 D0 05            [24]  884 	pop	ar5
      002204 D0 06            [24]  885 	pop	ar6
      002206 D0 07            [24]  886 	pop	ar7
                                    887 ;	Eth.c:77: spi_control_write(0, 0x0A, (uint8_t)(end_address & 0xFF)); // ERXNDL (low byte)
      002208 8C 01            [24]  888 	mov	ar1,r4
      00220A 90 03 62         [24]  889 	mov	dptr,#_spi_control_write_PARM_2
      00220D 74 0A            [12]  890 	mov	a,#0x0a
      00220F F0               [24]  891 	movx	@dptr,a
      002210 90 03 63         [24]  892 	mov	dptr,#_spi_control_write_PARM_3
      002213 E9               [12]  893 	mov	a,r1
      002214 F0               [24]  894 	movx	@dptr,a
      002215 75 82 00         [24]  895 	mov	dpl, #0x00
      002218 C0 07            [24]  896 	push	ar7
      00221A C0 06            [24]  897 	push	ar6
      00221C C0 05            [24]  898 	push	ar5
      00221E C0 04            [24]  899 	push	ar4
      002220 C0 03            [24]  900 	push	ar3
      002222 C0 02            [24]  901 	push	ar2
      002224 12 2F CE         [24]  902 	lcall	_spi_control_write
      002227 D0 02            [24]  903 	pop	ar2
      002229 D0 03            [24]  904 	pop	ar3
      00222B D0 04            [24]  905 	pop	ar4
      00222D D0 05            [24]  906 	pop	ar5
      00222F D0 06            [24]  907 	pop	ar6
      002231 D0 07            [24]  908 	pop	ar7
                                    909 ;	Eth.c:78: spi_control_write(0, 0x0B, (uint8_t)((end_address >> 8) & 0xFF)); // ERXNDH (high byte)
      002233 8D 01            [24]  910 	mov	ar1,r5
      002235 90 03 62         [24]  911 	mov	dptr,#_spi_control_write_PARM_2
      002238 74 0B            [12]  912 	mov	a,#0x0b
      00223A F0               [24]  913 	movx	@dptr,a
      00223B 90 03 63         [24]  914 	mov	dptr,#_spi_control_write_PARM_3
      00223E E9               [12]  915 	mov	a,r1
      00223F F0               [24]  916 	movx	@dptr,a
      002240 75 82 00         [24]  917 	mov	dpl, #0x00
      002243 C0 07            [24]  918 	push	ar7
      002245 C0 06            [24]  919 	push	ar6
      002247 C0 05            [24]  920 	push	ar5
      002249 C0 04            [24]  921 	push	ar4
      00224B C0 03            [24]  922 	push	ar3
      00224D C0 02            [24]  923 	push	ar2
      00224F 12 2F CE         [24]  924 	lcall	_spi_control_write
      002252 D0 02            [24]  925 	pop	ar2
      002254 D0 03            [24]  926 	pop	ar3
      002256 D0 04            [24]  927 	pop	ar4
      002258 D0 05            [24]  928 	pop	ar5
      00225A D0 06            [24]  929 	pop	ar6
      00225C D0 07            [24]  930 	pop	ar7
                                    931 ;	Eth.c:81: spi_control_write(0, 0x0C, (uint8_t)(start_address & 0xFF)); // ERXRDPTL (low byte)
      00225E 90 03 62         [24]  932 	mov	dptr,#_spi_control_write_PARM_2
      002261 74 0C            [12]  933 	mov	a,#0x0c
      002263 F0               [24]  934 	movx	@dptr,a
      002264 90 03 63         [24]  935 	mov	dptr,#_spi_control_write_PARM_3
      002267 EB               [12]  936 	mov	a,r3
      002268 F0               [24]  937 	movx	@dptr,a
      002269 75 82 00         [24]  938 	mov	dpl, #0x00
      00226C C0 07            [24]  939 	push	ar7
      00226E C0 06            [24]  940 	push	ar6
      002270 C0 05            [24]  941 	push	ar5
      002272 C0 04            [24]  942 	push	ar4
      002274 C0 02            [24]  943 	push	ar2
      002276 12 2F CE         [24]  944 	lcall	_spi_control_write
      002279 D0 02            [24]  945 	pop	ar2
      00227B D0 04            [24]  946 	pop	ar4
      00227D D0 05            [24]  947 	pop	ar5
      00227F D0 06            [24]  948 	pop	ar6
      002281 D0 07            [24]  949 	pop	ar7
                                    950 ;	Eth.c:82: spi_control_write(0, 0x0D, (uint8_t)((start_address >> 8) & 0xFF)); // ERXRDPTH (high byte)
      002283 90 03 62         [24]  951 	mov	dptr,#_spi_control_write_PARM_2
      002286 74 0D            [12]  952 	mov	a,#0x0d
      002288 F0               [24]  953 	movx	@dptr,a
      002289 90 03 63         [24]  954 	mov	dptr,#_spi_control_write_PARM_3
      00228C EA               [12]  955 	mov	a,r2
      00228D F0               [24]  956 	movx	@dptr,a
      00228E 75 82 00         [24]  957 	mov	dpl, #0x00
      002291 C0 07            [24]  958 	push	ar7
      002293 C0 06            [24]  959 	push	ar6
      002295 C0 05            [24]  960 	push	ar5
      002297 C0 04            [24]  961 	push	ar4
      002299 12 2F CE         [24]  962 	lcall	_spi_control_write
      00229C D0 04            [24]  963 	pop	ar4
      00229E D0 05            [24]  964 	pop	ar5
      0022A0 D0 06            [24]  965 	pop	ar6
      0022A2 D0 07            [24]  966 	pop	ar7
                                    967 ;	Eth.c:89: printf("RX buffer initialized: 0x%04X to 0x%04X.\n", start_address, end_address);
      0022A4 C0 04            [24]  968 	push	ar4
      0022A6 C0 05            [24]  969 	push	ar5
      0022A8 C0 06            [24]  970 	push	ar6
      0022AA C0 07            [24]  971 	push	ar7
      0022AC 74 3F            [12]  972 	mov	a,#___str_1
      0022AE C0 E0            [24]  973 	push	acc
      0022B0 74 44            [12]  974 	mov	a,#(___str_1 >> 8)
      0022B2 C0 E0            [24]  975 	push	acc
      0022B4 74 80            [12]  976 	mov	a,#0x80
      0022B6 C0 E0            [24]  977 	push	acc
      0022B8 12 39 E3         [24]  978 	lcall	_printf
      0022BB E5 81            [12]  979 	mov	a,sp
      0022BD 24 F9            [12]  980 	add	a,#0xf9
      0022BF F5 81            [12]  981 	mov	sp,a
                                    982 ;	Eth.c:90: }
      0022C1 22               [24]  983 	ret
                                    984 ;------------------------------------------------------------
                                    985 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    986 ;------------------------------------------------------------
                                    987 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    988 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_76'
                                    989 ;------------------------------------------------------------
                                    990 ;	Eth.c:92: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    991 ;	-----------------------------------------
                                    992 ;	 function enc28j60_set_transmit_pointers
                                    993 ;	-----------------------------------------
      0022C2                        994 _enc28j60_set_transmit_pointers:
      0022C2 AF 83            [24]  995 	mov	r7,dph
      0022C4 E5 82            [12]  996 	mov	a,dpl
      0022C6 90 01 0C         [24]  997 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_76
      0022C9 F0               [24]  998 	movx	@dptr,a
      0022CA EF               [12]  999 	mov	a,r7
      0022CB A3               [24] 1000 	inc	dptr
      0022CC F0               [24] 1001 	movx	@dptr,a
                                   1002 ;	Eth.c:95: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      0022CD 90 01 0C         [24] 1003 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_76
      0022D0 E0               [24] 1004 	movx	a,@dptr
      0022D1 FE               [12] 1005 	mov	r6,a
      0022D2 A3               [24] 1006 	inc	dptr
      0022D3 E0               [24] 1007 	movx	a,@dptr
      0022D4 FF               [12] 1008 	mov	r7,a
      0022D5 8E 05            [24] 1009 	mov	ar5,r6
      0022D7 90 03 62         [24] 1010 	mov	dptr,#_spi_control_write_PARM_2
      0022DA 74 04            [12] 1011 	mov	a,#0x04
      0022DC F0               [24] 1012 	movx	@dptr,a
      0022DD 90 03 63         [24] 1013 	mov	dptr,#_spi_control_write_PARM_3
      0022E0 ED               [12] 1014 	mov	a,r5
      0022E1 F0               [24] 1015 	movx	@dptr,a
      0022E2 75 82 00         [24] 1016 	mov	dpl, #0x00
      0022E5 C0 07            [24] 1017 	push	ar7
      0022E7 C0 06            [24] 1018 	push	ar6
      0022E9 12 2F CE         [24] 1019 	lcall	_spi_control_write
      0022EC D0 06            [24] 1020 	pop	ar6
      0022EE D0 07            [24] 1021 	pop	ar7
                                   1022 ;	Eth.c:96: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      0022F0 8F 06            [24] 1023 	mov	ar6,r7
      0022F2 90 03 62         [24] 1024 	mov	dptr,#_spi_control_write_PARM_2
      0022F5 74 05            [12] 1025 	mov	a,#0x05
      0022F7 F0               [24] 1026 	movx	@dptr,a
      0022F8 90 03 63         [24] 1027 	mov	dptr,#_spi_control_write_PARM_3
      0022FB EE               [12] 1028 	mov	a,r6
      0022FC F0               [24] 1029 	movx	@dptr,a
      0022FD 75 82 00         [24] 1030 	mov	dpl, #0x00
      002300 12 2F CE         [24] 1031 	lcall	_spi_control_write
                                   1032 ;	Eth.c:99: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      002303 90 01 0A         [24] 1033 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002306 E0               [24] 1034 	movx	a,@dptr
      002307 FE               [12] 1035 	mov	r6,a
      002308 A3               [24] 1036 	inc	dptr
      002309 E0               [24] 1037 	movx	a,@dptr
      00230A FF               [12] 1038 	mov	r7,a
      00230B 8E 05            [24] 1039 	mov	ar5,r6
      00230D 90 03 62         [24] 1040 	mov	dptr,#_spi_control_write_PARM_2
      002310 74 06            [12] 1041 	mov	a,#0x06
      002312 F0               [24] 1042 	movx	@dptr,a
      002313 90 03 63         [24] 1043 	mov	dptr,#_spi_control_write_PARM_3
      002316 ED               [12] 1044 	mov	a,r5
      002317 F0               [24] 1045 	movx	@dptr,a
      002318 75 82 00         [24] 1046 	mov	dpl, #0x00
      00231B C0 07            [24] 1047 	push	ar7
      00231D C0 06            [24] 1048 	push	ar6
      00231F 12 2F CE         [24] 1049 	lcall	_spi_control_write
      002322 D0 06            [24] 1050 	pop	ar6
      002324 D0 07            [24] 1051 	pop	ar7
                                   1052 ;	Eth.c:100: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      002326 8F 06            [24] 1053 	mov	ar6,r7
      002328 90 03 62         [24] 1054 	mov	dptr,#_spi_control_write_PARM_2
      00232B 74 07            [12] 1055 	mov	a,#0x07
      00232D F0               [24] 1056 	movx	@dptr,a
      00232E 90 03 63         [24] 1057 	mov	dptr,#_spi_control_write_PARM_3
      002331 EE               [12] 1058 	mov	a,r6
      002332 F0               [24] 1059 	movx	@dptr,a
      002333 75 82 00         [24] 1060 	mov	dpl, #0x00
                                   1061 ;	Eth.c:101: }
      002336 02 2F CE         [24] 1062 	ljmp	_spi_control_write
                                   1063 ;------------------------------------------------------------
                                   1064 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                   1065 ;------------------------------------------------------------
                                   1066 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_78'
                                   1067 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_79'
                                   1068 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_80'
                                   1069 ;------------------------------------------------------------
                                   1070 ;	Eth.c:103: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function wait_for_transmission_complete
                                   1073 ;	-----------------------------------------
      002339                       1074 _wait_for_transmission_complete:
      002339 AF 83            [24] 1075 	mov	r7,dph
      00233B E5 82            [12] 1076 	mov	a,dpl
      00233D 90 01 0E         [24] 1077 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_78
      002340 F0               [24] 1078 	movx	@dptr,a
      002341 EF               [12] 1079 	mov	a,r7
      002342 A3               [24] 1080 	inc	dptr
      002343 F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	Eth.c:107: while (elapsed < timeout_ms) {
      002344 90 01 0E         [24] 1083 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_78
      002347 E0               [24] 1084 	movx	a,@dptr
      002348 FE               [12] 1085 	mov	r6,a
      002349 A3               [24] 1086 	inc	dptr
      00234A E0               [24] 1087 	movx	a,@dptr
      00234B FF               [12] 1088 	mov	r7,a
      00234C 7C 00            [12] 1089 	mov	r4,#0x00
      00234E 7D 00            [12] 1090 	mov	r5,#0x00
      002350                       1091 00103$:
      002350 C3               [12] 1092 	clr	c
      002351 EC               [12] 1093 	mov	a,r4
      002352 9E               [12] 1094 	subb	a,r6
      002353 ED               [12] 1095 	mov	a,r5
      002354 9F               [12] 1096 	subb	a,r7
      002355 50 41            [24] 1097 	jnc	00105$
                                   1098 ;	Eth.c:108: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      002357 90 03 6B         [24] 1099 	mov	dptr,#_mac_spi_read_PARM_2
      00235A E4               [12] 1100 	clr	a
      00235B F0               [24] 1101 	movx	@dptr,a
      00235C 75 82 1F         [24] 1102 	mov	dpl, #0x1f
      00235F C0 07            [24] 1103 	push	ar7
      002361 C0 06            [24] 1104 	push	ar6
      002363 C0 05            [24] 1105 	push	ar5
      002365 C0 04            [24] 1106 	push	ar4
      002367 12 31 44         [24] 1107 	lcall	_mac_spi_read
      00236A E5 82            [12] 1108 	mov	a, dpl
      00236C D0 04            [24] 1109 	pop	ar4
      00236E D0 05            [24] 1110 	pop	ar5
      002370 D0 06            [24] 1111 	pop	ar6
      002372 D0 07            [24] 1112 	pop	ar7
                                   1113 ;	Eth.c:109: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      002374 20 E3 04         [24] 1114 	jb	acc.3,00102$
                                   1115 ;	Eth.c:110: return true;  // Transmission completed
      002377 75 82 01         [24] 1116 	mov	dpl, #0x01
      00237A 22               [24] 1117 	ret
      00237B                       1118 00102$:
                                   1119 ;	Eth.c:113: delay_ms(1);  // Wait 1 ms
      00237B 90 00 01         [24] 1120 	mov	dptr,#0x0001
      00237E C0 07            [24] 1121 	push	ar7
      002380 C0 06            [24] 1122 	push	ar6
      002382 C0 05            [24] 1123 	push	ar5
      002384 C0 04            [24] 1124 	push	ar4
      002386 12 20 CF         [24] 1125 	lcall	_delay_ms
      002389 D0 04            [24] 1126 	pop	ar4
      00238B D0 05            [24] 1127 	pop	ar5
      00238D D0 06            [24] 1128 	pop	ar6
      00238F D0 07            [24] 1129 	pop	ar7
                                   1130 ;	Eth.c:114: elapsed++;
      002391 0C               [12] 1131 	inc	r4
      002392 BC 00 BB         [24] 1132 	cjne	r4,#0x00,00103$
      002395 0D               [12] 1133 	inc	r5
      002396 80 B8            [24] 1134 	sjmp	00103$
      002398                       1135 00105$:
                                   1136 ;	Eth.c:117: return false;  // Timed out
      002398 75 82 00         [24] 1137 	mov	dpl, #0x00
                                   1138 ;	Eth.c:118: }
      00239B 22               [24] 1139 	ret
                                   1140 ;------------------------------------------------------------
                                   1141 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                   1142 ;------------------------------------------------------------
                                   1143 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_82'
                                   1144 ;------------------------------------------------------------
                                   1145 ;	Eth.c:120: bool enc28j60_transmission_successful()
                                   1146 ;	-----------------------------------------
                                   1147 ;	 function enc28j60_transmission_successful
                                   1148 ;	-----------------------------------------
      00239C                       1149 _enc28j60_transmission_successful:
                                   1150 ;	Eth.c:122: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      00239C 90 03 6B         [24] 1151 	mov	dptr,#_mac_spi_read_PARM_2
      00239F E4               [12] 1152 	clr	a
      0023A0 F0               [24] 1153 	movx	@dptr,a
      0023A1 75 82 1D         [24] 1154 	mov	dpl, #0x1d
      0023A4 12 31 44         [24] 1155 	lcall	_mac_spi_read
                                   1156 ;	Eth.c:123: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      0023A7 E5 82            [12] 1157 	mov	a,dpl
      0023A9 03               [12] 1158 	rr	a
      0023AA 54 01            [12] 1159 	anl	a,#0x01
      0023AC B4 01 00         [24] 1160 	cjne	a,#0x01,00103$
      0023AF                       1161 00103$:
      0023AF 92 00            [24] 1162 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      0023B1 E4               [12] 1163 	clr	a
      0023B2 33               [12] 1164 	rlc	a
      0023B3 F5 82            [12] 1165 	mov	dpl, a
                                   1166 ;	Eth.c:124: }
      0023B5 22               [24] 1167 	ret
                                   1168 ;------------------------------------------------------------
                                   1169 ;Allocation info for local variables in function 'send_arp_request'
                                   1170 ;------------------------------------------------------------
                                   1171 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_84'
                                   1172 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_84'
                                   1173 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_84'
                                   1174 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_84'
                                   1175 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_84'
                                   1176 ;i                         Allocated with name '_send_arp_request_i_20000_85'
                                   1177 ;i                         Allocated with name '_send_arp_request_i_20000_87'
                                   1178 ;i                         Allocated with name '_send_arp_request_i_20000_89'
                                   1179 ;i                         Allocated with name '_send_arp_request_i_20000_91'
                                   1180 ;i                         Allocated with name '_send_arp_request_i_20000_93'
                                   1181 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_95'
                                   1182 ;start_address             Allocated with name '_send_arp_request_start_address_10001_95'
                                   1183 ;end_address               Allocated with name '_send_arp_request_end_address_10002_97'
                                   1184 ;------------------------------------------------------------
                                   1185 ;	Eth.c:127: void send_arp_request(void)
                                   1186 ;	-----------------------------------------
                                   1187 ;	 function send_arp_request
                                   1188 ;	-----------------------------------------
      0023B6                       1189 _send_arp_request:
                                   1190 ;	Eth.c:130: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      0023B6 90 01 10         [24] 1191 	mov	dptr,#_send_arp_request_source_mac_10000_84
      0023B9 74 02            [12] 1192 	mov	a,#0x02
      0023BB F0               [24] 1193 	movx	@dptr,a
      0023BC 90 01 11         [24] 1194 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0001)
      0023BF 74 11            [12] 1195 	mov	a,#0x11
      0023C1 F0               [24] 1196 	movx	@dptr,a
      0023C2 90 01 12         [24] 1197 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0002)
      0023C5 23               [12] 1198 	rl	a
      0023C6 F0               [24] 1199 	movx	@dptr,a
      0023C7 90 01 13         [24] 1200 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0003)
      0023CA 74 33            [12] 1201 	mov	a,#0x33
      0023CC F0               [24] 1202 	movx	@dptr,a
      0023CD 90 01 14         [24] 1203 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0004)
      0023D0 74 44            [12] 1204 	mov	a,#0x44
      0023D2 F0               [24] 1205 	movx	@dptr,a
      0023D3 90 01 15         [24] 1206 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0005)
      0023D6 74 55            [12] 1207 	mov	a,#0x55
      0023D8 F0               [24] 1208 	movx	@dptr,a
                                   1209 ;	Eth.c:131: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      0023D9 90 01 16         [24] 1210 	mov	dptr,#_send_arp_request_dest_mac_10000_84
      0023DC 74 F8            [12] 1211 	mov	a,#0xf8
      0023DE F0               [24] 1212 	movx	@dptr,a
      0023DF 90 01 17         [24] 1213 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0001)
      0023E2 74 75            [12] 1214 	mov	a,#0x75
      0023E4 F0               [24] 1215 	movx	@dptr,a
      0023E5 90 01 18         [24] 1216 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0002)
      0023E8 74 A4            [12] 1217 	mov	a,#0xa4
      0023EA F0               [24] 1218 	movx	@dptr,a
      0023EB 90 01 19         [24] 1219 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0003)
      0023EE 74 8C            [12] 1220 	mov	a,#0x8c
      0023F0 F0               [24] 1221 	movx	@dptr,a
      0023F1 90 01 1A         [24] 1222 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0004)
      0023F4 74 41            [12] 1223 	mov	a,#0x41
      0023F6 F0               [24] 1224 	movx	@dptr,a
      0023F7 90 01 1B         [24] 1225 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0005)
      0023FA 74 31            [12] 1226 	mov	a,#0x31
      0023FC F0               [24] 1227 	movx	@dptr,a
                                   1228 ;	Eth.c:132: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      0023FD 90 01 1C         [24] 1229 	mov	dptr,#_send_arp_request_source_ip_10000_84
      002400 74 C0            [12] 1230 	mov	a,#0xc0
      002402 F0               [24] 1231 	movx	@dptr,a
      002403 90 01 1D         [24] 1232 	mov	dptr,#(_send_arp_request_source_ip_10000_84 + 0x0001)
      002406 74 A8            [12] 1233 	mov	a,#0xa8
      002408 F0               [24] 1234 	movx	@dptr,a
      002409 90 01 1E         [24] 1235 	mov	dptr,#(_send_arp_request_source_ip_10000_84 + 0x0002)
      00240C 74 01            [12] 1236 	mov	a,#0x01
      00240E F0               [24] 1237 	movx	@dptr,a
      00240F 90 01 1F         [24] 1238 	mov	dptr,#(_send_arp_request_source_ip_10000_84 + 0x0003)
      002412 74 64            [12] 1239 	mov	a,#0x64
      002414 F0               [24] 1240 	movx	@dptr,a
                                   1241 ;	Eth.c:133: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      002415 90 01 20         [24] 1242 	mov	dptr,#_send_arp_request_target_ip_10000_84
      002418 74 C0            [12] 1243 	mov	a,#0xc0
      00241A F0               [24] 1244 	movx	@dptr,a
      00241B 90 01 21         [24] 1245 	mov	dptr,#(_send_arp_request_target_ip_10000_84 + 0x0001)
      00241E 74 A8            [12] 1246 	mov	a,#0xa8
      002420 F0               [24] 1247 	movx	@dptr,a
      002421 90 01 22         [24] 1248 	mov	dptr,#(_send_arp_request_target_ip_10000_84 + 0x0002)
      002424 74 01            [12] 1249 	mov	a,#0x01
      002426 F0               [24] 1250 	movx	@dptr,a
      002427 90 01 23         [24] 1251 	mov	dptr,#(_send_arp_request_target_ip_10000_84 + 0x0003)
      00242A F0               [24] 1252 	movx	@dptr,a
                                   1253 ;	Eth.c:137: arp_packet[0] = 0x0E;
      00242B 90 01 24         [24] 1254 	mov	dptr,#_send_arp_request_arp_packet_10000_84
      00242E 74 0E            [12] 1255 	mov	a,#0x0e
      002430 F0               [24] 1256 	movx	@dptr,a
                                   1257 ;	Eth.c:141: set_mac_address(source_mac);
      002431 90 01 10         [24] 1258 	mov	dptr,#_send_arp_request_source_mac_10000_84
      002434 75 F0 00         [24] 1259 	mov	b, #0x00
      002437 12 20 65         [24] 1260 	lcall	_set_mac_address
                                   1261 ;	Eth.c:143: for (int i = 0; i < 6; i++)
      00243A 7E 00            [12] 1262 	mov	r6,#0x00
      00243C 7F 00            [12] 1263 	mov	r7,#0x00
      00243E                       1264 00115$:
      00243E C3               [12] 1265 	clr	c
      00243F EE               [12] 1266 	mov	a,r6
      002440 94 06            [12] 1267 	subb	a,#0x06
      002442 EF               [12] 1268 	mov	a,r7
      002443 64 80            [12] 1269 	xrl	a,#0x80
      002445 94 80            [12] 1270 	subb	a,#0x80
      002447 50 48            [24] 1271 	jnc	00101$
                                   1272 ;	Eth.c:145: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      002449 8E 05            [24] 1273 	mov	ar5,r6
      00244B ED               [12] 1274 	mov	a,r5
      00244C 04               [12] 1275 	inc	a
      00244D FC               [12] 1276 	mov	r4,a
      00244E 33               [12] 1277 	rlc	a
      00244F 95 E0            [12] 1278 	subb	a,acc
      002451 FB               [12] 1279 	mov	r3,a
      002452 EC               [12] 1280 	mov	a,r4
      002453 24 24            [12] 1281 	add	a, #_send_arp_request_arp_packet_10000_84
      002455 FC               [12] 1282 	mov	r4,a
      002456 EB               [12] 1283 	mov	a,r3
      002457 34 01            [12] 1284 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002459 FB               [12] 1285 	mov	r3,a
      00245A EE               [12] 1286 	mov	a,r6
      00245B 24 16            [12] 1287 	add	a, #_send_arp_request_dest_mac_10000_84
      00245D F5 82            [12] 1288 	mov	dpl,a
      00245F EF               [12] 1289 	mov	a,r7
      002460 34 01            [12] 1290 	addc	a, #(_send_arp_request_dest_mac_10000_84 >> 8)
      002462 F5 83            [12] 1291 	mov	dph,a
      002464 E0               [24] 1292 	movx	a,@dptr
      002465 8C 82            [24] 1293 	mov	dpl,r4
      002467 8B 83            [24] 1294 	mov	dph,r3
      002469 F0               [24] 1295 	movx	@dptr,a
                                   1296 ;	Eth.c:146: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      00246A 74 07            [12] 1297 	mov	a,#0x07
      00246C 2D               [12] 1298 	add	a, r5
      00246D FD               [12] 1299 	mov	r5,a
      00246E 33               [12] 1300 	rlc	a
      00246F 95 E0            [12] 1301 	subb	a,acc
      002471 FC               [12] 1302 	mov	r4,a
      002472 ED               [12] 1303 	mov	a,r5
      002473 24 24            [12] 1304 	add	a, #_send_arp_request_arp_packet_10000_84
      002475 FD               [12] 1305 	mov	r5,a
      002476 EC               [12] 1306 	mov	a,r4
      002477 34 01            [12] 1307 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002479 FC               [12] 1308 	mov	r4,a
      00247A EE               [12] 1309 	mov	a,r6
      00247B 24 10            [12] 1310 	add	a, #_send_arp_request_source_mac_10000_84
      00247D F5 82            [12] 1311 	mov	dpl,a
      00247F EF               [12] 1312 	mov	a,r7
      002480 34 01            [12] 1313 	addc	a, #(_send_arp_request_source_mac_10000_84 >> 8)
      002482 F5 83            [12] 1314 	mov	dph,a
      002484 E0               [24] 1315 	movx	a,@dptr
      002485 8D 82            [24] 1316 	mov	dpl,r5
      002487 8C 83            [24] 1317 	mov	dph,r4
      002489 F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	Eth.c:143: for (int i = 0; i < 6; i++)
      00248A 0E               [12] 1320 	inc	r6
      00248B BE 00 B0         [24] 1321 	cjne	r6,#0x00,00115$
      00248E 0F               [12] 1322 	inc	r7
      00248F 80 AD            [24] 1323 	sjmp	00115$
      002491                       1324 00101$:
                                   1325 ;	Eth.c:150: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      002491 90 01 31         [24] 1326 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000d)
      002494 74 08            [12] 1327 	mov	a,#0x08
      002496 F0               [24] 1328 	movx	@dptr,a
                                   1329 ;	Eth.c:151: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      002497 90 01 32         [24] 1330 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000e)
      00249A 74 06            [12] 1331 	mov	a,#0x06
      00249C F0               [24] 1332 	movx	@dptr,a
                                   1333 ;	Eth.c:155: arp_packet[15] = 0x00;
      00249D 90 01 33         [24] 1334 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000f)
      0024A0 E4               [12] 1335 	clr	a
      0024A1 F0               [24] 1336 	movx	@dptr,a
                                   1337 ;	Eth.c:156: arp_packet[16] = 0x01;
      0024A2 90 01 34         [24] 1338 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0010)
      0024A5 04               [12] 1339 	inc	a
      0024A6 F0               [24] 1340 	movx	@dptr,a
                                   1341 ;	Eth.c:159: arp_packet[17] = 0x08;
      0024A7 90 01 35         [24] 1342 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0011)
      0024AA 74 08            [12] 1343 	mov	a,#0x08
      0024AC F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	Eth.c:160: arp_packet[18] = 0x00;
      0024AD 90 01 36         [24] 1346 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0012)
      0024B0 E4               [12] 1347 	clr	a
      0024B1 F0               [24] 1348 	movx	@dptr,a
                                   1349 ;	Eth.c:163: arp_packet[19] = 0x06;
      0024B2 90 01 37         [24] 1350 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0013)
      0024B5 74 06            [12] 1351 	mov	a,#0x06
      0024B7 F0               [24] 1352 	movx	@dptr,a
                                   1353 ;	Eth.c:166: arp_packet[20] = 0x04;
      0024B8 90 01 38         [24] 1354 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0014)
      0024BB 74 04            [12] 1355 	mov	a,#0x04
      0024BD F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	Eth.c:169: arp_packet[21] = 0x00;
      0024BE 90 01 39         [24] 1358 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0015)
      0024C1 E4               [12] 1359 	clr	a
      0024C2 F0               [24] 1360 	movx	@dptr,a
                                   1361 ;	Eth.c:170: arp_packet[22] = 0x01;
      0024C3 90 01 3A         [24] 1362 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0016)
      0024C6 04               [12] 1363 	inc	a
      0024C7 F0               [24] 1364 	movx	@dptr,a
                                   1365 ;	Eth.c:173: for (int i = 0; i < 6; i++) {
      0024C8 7E 00            [12] 1366 	mov	r6,#0x00
      0024CA 7F 00            [12] 1367 	mov	r7,#0x00
      0024CC                       1368 00118$:
      0024CC C3               [12] 1369 	clr	c
      0024CD EE               [12] 1370 	mov	a,r6
      0024CE 94 06            [12] 1371 	subb	a,#0x06
      0024D0 EF               [12] 1372 	mov	a,r7
      0024D1 64 80            [12] 1373 	xrl	a,#0x80
      0024D3 94 80            [12] 1374 	subb	a,#0x80
      0024D5 50 29            [24] 1375 	jnc	00102$
                                   1376 ;	Eth.c:174: arp_packet[23 + i] = source_mac[i];
      0024D7 8E 05            [24] 1377 	mov	ar5,r6
      0024D9 74 17            [12] 1378 	mov	a,#0x17
      0024DB 2D               [12] 1379 	add	a, r5
      0024DC FD               [12] 1380 	mov	r5,a
      0024DD 33               [12] 1381 	rlc	a
      0024DE 95 E0            [12] 1382 	subb	a,acc
      0024E0 FC               [12] 1383 	mov	r4,a
      0024E1 ED               [12] 1384 	mov	a,r5
      0024E2 24 24            [12] 1385 	add	a, #_send_arp_request_arp_packet_10000_84
      0024E4 FD               [12] 1386 	mov	r5,a
      0024E5 EC               [12] 1387 	mov	a,r4
      0024E6 34 01            [12] 1388 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      0024E8 FC               [12] 1389 	mov	r4,a
      0024E9 EE               [12] 1390 	mov	a,r6
      0024EA 24 10            [12] 1391 	add	a, #_send_arp_request_source_mac_10000_84
      0024EC F5 82            [12] 1392 	mov	dpl,a
      0024EE EF               [12] 1393 	mov	a,r7
      0024EF 34 01            [12] 1394 	addc	a, #(_send_arp_request_source_mac_10000_84 >> 8)
      0024F1 F5 83            [12] 1395 	mov	dph,a
      0024F3 E0               [24] 1396 	movx	a,@dptr
      0024F4 8D 82            [24] 1397 	mov	dpl,r5
      0024F6 8C 83            [24] 1398 	mov	dph,r4
      0024F8 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	Eth.c:173: for (int i = 0; i < 6; i++) {
      0024F9 0E               [12] 1401 	inc	r6
      0024FA BE 00 CF         [24] 1402 	cjne	r6,#0x00,00118$
      0024FD 0F               [12] 1403 	inc	r7
      0024FE 80 CC            [24] 1404 	sjmp	00118$
      002500                       1405 00102$:
                                   1406 ;	Eth.c:178: for (int i = 0; i < 4; i++) {
      002500 7E 00            [12] 1407 	mov	r6,#0x00
      002502 7F 00            [12] 1408 	mov	r7,#0x00
      002504                       1409 00121$:
      002504 C3               [12] 1410 	clr	c
      002505 EE               [12] 1411 	mov	a,r6
      002506 94 04            [12] 1412 	subb	a,#0x04
      002508 EF               [12] 1413 	mov	a,r7
      002509 64 80            [12] 1414 	xrl	a,#0x80
      00250B 94 80            [12] 1415 	subb	a,#0x80
      00250D 50 29            [24] 1416 	jnc	00103$
                                   1417 ;	Eth.c:179: arp_packet[29 + i] = source_ip[i];
      00250F 8E 05            [24] 1418 	mov	ar5,r6
      002511 74 1D            [12] 1419 	mov	a,#0x1d
      002513 2D               [12] 1420 	add	a, r5
      002514 FD               [12] 1421 	mov	r5,a
      002515 33               [12] 1422 	rlc	a
      002516 95 E0            [12] 1423 	subb	a,acc
      002518 FC               [12] 1424 	mov	r4,a
      002519 ED               [12] 1425 	mov	a,r5
      00251A 24 24            [12] 1426 	add	a, #_send_arp_request_arp_packet_10000_84
      00251C FD               [12] 1427 	mov	r5,a
      00251D EC               [12] 1428 	mov	a,r4
      00251E 34 01            [12] 1429 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002520 FC               [12] 1430 	mov	r4,a
      002521 EE               [12] 1431 	mov	a,r6
      002522 24 1C            [12] 1432 	add	a, #_send_arp_request_source_ip_10000_84
      002524 F5 82            [12] 1433 	mov	dpl,a
      002526 EF               [12] 1434 	mov	a,r7
      002527 34 01            [12] 1435 	addc	a, #(_send_arp_request_source_ip_10000_84 >> 8)
      002529 F5 83            [12] 1436 	mov	dph,a
      00252B E0               [24] 1437 	movx	a,@dptr
      00252C 8D 82            [24] 1438 	mov	dpl,r5
      00252E 8C 83            [24] 1439 	mov	dph,r4
      002530 F0               [24] 1440 	movx	@dptr,a
                                   1441 ;	Eth.c:178: for (int i = 0; i < 4; i++) {
      002531 0E               [12] 1442 	inc	r6
      002532 BE 00 CF         [24] 1443 	cjne	r6,#0x00,00121$
      002535 0F               [12] 1444 	inc	r7
      002536 80 CC            [24] 1445 	sjmp	00121$
      002538                       1446 00103$:
                                   1447 ;	Eth.c:183: for (int i = 0; i < 6; i++) {
      002538 7F 00            [12] 1448 	mov	r7,#0x00
      00253A                       1449 00124$:
      00253A BF 06 00         [24] 1450 	cjne	r7,#0x06,00215$
      00253D                       1451 00215$:
      00253D 50 19            [24] 1452 	jnc	00104$
                                   1453 ;	Eth.c:184: arp_packet[33 + i] = 0x00;
      00253F 8F 06            [24] 1454 	mov	ar6,r7
      002541 74 21            [12] 1455 	mov	a,#0x21
      002543 2E               [12] 1456 	add	a, r6
      002544 FE               [12] 1457 	mov	r6,a
      002545 33               [12] 1458 	rlc	a
      002546 95 E0            [12] 1459 	subb	a,acc
      002548 FD               [12] 1460 	mov	r5,a
      002549 EE               [12] 1461 	mov	a,r6
      00254A 24 24            [12] 1462 	add	a, #_send_arp_request_arp_packet_10000_84
      00254C F5 82            [12] 1463 	mov	dpl,a
      00254E ED               [12] 1464 	mov	a,r5
      00254F 34 01            [12] 1465 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002551 F5 83            [12] 1466 	mov	dph,a
      002553 E4               [12] 1467 	clr	a
      002554 F0               [24] 1468 	movx	@dptr,a
                                   1469 ;	Eth.c:183: for (int i = 0; i < 6; i++) {
      002555 0F               [12] 1470 	inc	r7
      002556 80 E2            [24] 1471 	sjmp	00124$
      002558                       1472 00104$:
                                   1473 ;	Eth.c:188: for (int i = 0; i < 4; i++) {
      002558 7E 00            [12] 1474 	mov	r6,#0x00
      00255A 7F 00            [12] 1475 	mov	r7,#0x00
      00255C                       1476 00127$:
      00255C C3               [12] 1477 	clr	c
      00255D EE               [12] 1478 	mov	a,r6
      00255E 94 04            [12] 1479 	subb	a,#0x04
      002560 EF               [12] 1480 	mov	a,r7
      002561 64 80            [12] 1481 	xrl	a,#0x80
      002563 94 80            [12] 1482 	subb	a,#0x80
      002565 50 29            [24] 1483 	jnc	00105$
                                   1484 ;	Eth.c:189: arp_packet[39 + i] = target_ip[i];
      002567 8E 05            [24] 1485 	mov	ar5,r6
      002569 74 27            [12] 1486 	mov	a,#0x27
      00256B 2D               [12] 1487 	add	a, r5
      00256C FD               [12] 1488 	mov	r5,a
      00256D 33               [12] 1489 	rlc	a
      00256E 95 E0            [12] 1490 	subb	a,acc
      002570 FC               [12] 1491 	mov	r4,a
      002571 ED               [12] 1492 	mov	a,r5
      002572 24 24            [12] 1493 	add	a, #_send_arp_request_arp_packet_10000_84
      002574 FD               [12] 1494 	mov	r5,a
      002575 EC               [12] 1495 	mov	a,r4
      002576 34 01            [12] 1496 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002578 FC               [12] 1497 	mov	r4,a
      002579 EE               [12] 1498 	mov	a,r6
      00257A 24 20            [12] 1499 	add	a, #_send_arp_request_target_ip_10000_84
      00257C F5 82            [12] 1500 	mov	dpl,a
      00257E EF               [12] 1501 	mov	a,r7
      00257F 34 01            [12] 1502 	addc	a, #(_send_arp_request_target_ip_10000_84 >> 8)
      002581 F5 83            [12] 1503 	mov	dph,a
      002583 E0               [24] 1504 	movx	a,@dptr
      002584 8D 82            [24] 1505 	mov	dpl,r5
      002586 8C 83            [24] 1506 	mov	dph,r4
      002588 F0               [24] 1507 	movx	@dptr,a
                                   1508 ;	Eth.c:188: for (int i = 0; i < 4; i++) {
      002589 0E               [12] 1509 	inc	r6
      00258A BE 00 CF         [24] 1510 	cjne	r6,#0x00,00127$
      00258D 0F               [12] 1511 	inc	r7
      00258E 80 CC            [24] 1512 	sjmp	00127$
      002590                       1513 00105$:
                                   1514 ;	Eth.c:202: spi_buffer_write(frame_size, start_address, arp_packet);
      002590 90 03 7C         [24] 1515 	mov	dptr,#_spi_buffer_write_PARM_2
      002593 E4               [12] 1516 	clr	a
      002594 F0               [24] 1517 	movx	@dptr,a
      002595 74 03            [12] 1518 	mov	a,#0x03
      002597 A3               [24] 1519 	inc	dptr
      002598 F0               [24] 1520 	movx	@dptr,a
      002599 90 03 7E         [24] 1521 	mov	dptr,#_spi_buffer_write_PARM_3
      00259C 74 24            [12] 1522 	mov	a,#_send_arp_request_arp_packet_10000_84
      00259E F0               [24] 1523 	movx	@dptr,a
      00259F 74 01            [12] 1524 	mov	a,#(_send_arp_request_arp_packet_10000_84 >> 8)
      0025A1 A3               [24] 1525 	inc	dptr
      0025A2 F0               [24] 1526 	movx	@dptr,a
      0025A3 E4               [12] 1527 	clr	a
      0025A4 A3               [24] 1528 	inc	dptr
      0025A5 F0               [24] 1529 	movx	@dptr,a
      0025A6 90 00 2C         [24] 1530 	mov	dptr,#0x002c
      0025A9 12 35 4A         [24] 1531 	lcall	_spi_buffer_write
                                   1532 ;	Eth.c:205: enc28j60_set_transmit_pointers(start_address, end_address);
      0025AC 90 01 0A         [24] 1533 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0025AF 74 2B            [12] 1534 	mov	a,#0x2b
      0025B1 F0               [24] 1535 	movx	@dptr,a
      0025B2 74 03            [12] 1536 	mov	a,#0x03
      0025B4 A3               [24] 1537 	inc	dptr
      0025B5 F0               [24] 1538 	movx	@dptr,a
      0025B6 90 03 00         [24] 1539 	mov	dptr,#0x0300
      0025B9 12 22 C2         [24] 1540 	lcall	_enc28j60_set_transmit_pointers
                                   1541 ;	Eth.c:208: enc28j60_start_transmission();
      0025BC 12 21 50         [24] 1542 	lcall	_enc28j60_start_transmission
                                   1543 ;	Eth.c:211: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      0025BF 90 01 F4         [24] 1544 	mov	dptr,#0x01f4
      0025C2 12 23 39         [24] 1545 	lcall	_wait_for_transmission_complete
      0025C5 E5 82            [12] 1546 	mov	a, dpl
      0025C7 60 33            [24] 1547 	jz	00112$
                                   1548 ;	Eth.c:213: if (enc28j60_transmission_successful()) {
      0025C9 12 23 9C         [24] 1549 	lcall	_enc28j60_transmission_successful
      0025CC E5 82            [12] 1550 	mov	a, dpl
      0025CE 60 16            [24] 1551 	jz	00109$
                                   1552 ;	Eth.c:214: printf("ARP request sent successfully.\n\r");
      0025D0 74 A4            [12] 1553 	mov	a,#___str_3
      0025D2 C0 E0            [24] 1554 	push	acc
      0025D4 74 44            [12] 1555 	mov	a,#(___str_3 >> 8)
      0025D6 C0 E0            [24] 1556 	push	acc
      0025D8 74 80            [12] 1557 	mov	a,#0x80
      0025DA C0 E0            [24] 1558 	push	acc
      0025DC 12 39 E3         [24] 1559 	lcall	_printf
      0025DF 15 81            [12] 1560 	dec	sp
      0025E1 15 81            [12] 1561 	dec	sp
      0025E3 15 81            [12] 1562 	dec	sp
      0025E5 22               [24] 1563 	ret
      0025E6                       1564 00109$:
                                   1565 ;	Eth.c:216: printf("ARP transmission failed. Check error flags.\n\r");
      0025E6 74 C5            [12] 1566 	mov	a,#___str_4
      0025E8 C0 E0            [24] 1567 	push	acc
      0025EA 74 44            [12] 1568 	mov	a,#(___str_4 >> 8)
      0025EC C0 E0            [24] 1569 	push	acc
      0025EE 74 80            [12] 1570 	mov	a,#0x80
      0025F0 C0 E0            [24] 1571 	push	acc
      0025F2 12 39 E3         [24] 1572 	lcall	_printf
      0025F5 15 81            [12] 1573 	dec	sp
      0025F7 15 81            [12] 1574 	dec	sp
      0025F9 15 81            [12] 1575 	dec	sp
      0025FB 22               [24] 1576 	ret
      0025FC                       1577 00112$:
                                   1578 ;	Eth.c:219: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      0025FC 74 F3            [12] 1579 	mov	a,#___str_5
      0025FE C0 E0            [24] 1580 	push	acc
      002600 74 44            [12] 1581 	mov	a,#(___str_5 >> 8)
      002602 C0 E0            [24] 1582 	push	acc
      002604 74 80            [12] 1583 	mov	a,#0x80
      002606 C0 E0            [24] 1584 	push	acc
      002608 12 39 E3         [24] 1585 	lcall	_printf
      00260B 15 81            [12] 1586 	dec	sp
      00260D 15 81            [12] 1587 	dec	sp
      00260F 15 81            [12] 1588 	dec	sp
                                   1589 ;	Eth.c:221: }
      002611 22               [24] 1590 	ret
                                   1591 ;------------------------------------------------------------
                                   1592 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                   1593 ;------------------------------------------------------------
                                   1594 ;eir                       Allocated with name '_external_interrupt0_isr_eir_10000_103'
                                   1595 ;------------------------------------------------------------
                                   1596 ;	Eth.c:223: void external_interrupt0_isr(void) __interrupt (0)
                                   1597 ;	-----------------------------------------
                                   1598 ;	 function external_interrupt0_isr
                                   1599 ;	-----------------------------------------
      002612                       1600 _external_interrupt0_isr:
      002612 C0 21            [24] 1601 	push	bits
      002614 C0 E0            [24] 1602 	push	acc
      002616 C0 F0            [24] 1603 	push	b
      002618 C0 82            [24] 1604 	push	dpl
      00261A C0 83            [24] 1605 	push	dph
      00261C C0 07            [24] 1606 	push	(0+7)
      00261E C0 06            [24] 1607 	push	(0+6)
      002620 C0 05            [24] 1608 	push	(0+5)
      002622 C0 04            [24] 1609 	push	(0+4)
      002624 C0 03            [24] 1610 	push	(0+3)
      002626 C0 02            [24] 1611 	push	(0+2)
      002628 C0 01            [24] 1612 	push	(0+1)
      00262A C0 00            [24] 1613 	push	(0+0)
      00262C C0 D0            [24] 1614 	push	psw
      00262E 75 D0 00         [24] 1615 	mov	psw,#0x00
                                   1616 ;	Eth.c:225: uint8_t eir = mac_spi_read(0x1C, 0); // Read EIR register (address 0x1C, bank 0)
      002631 90 03 6B         [24] 1617 	mov	dptr,#_mac_spi_read_PARM_2
      002634 E4               [12] 1618 	clr	a
      002635 F0               [24] 1619 	movx	@dptr,a
      002636 75 82 1C         [24] 1620 	mov	dpl, #0x1c
      002639 12 31 44         [24] 1621 	lcall	_mac_spi_read
                                   1622 ;	Eth.c:226: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
      00263C 74 36            [12] 1623 	mov	a,#___str_6
      00263E C0 E0            [24] 1624 	push	acc
      002640 74 45            [12] 1625 	mov	a,#(___str_6 >> 8)
      002642 C0 E0            [24] 1626 	push	acc
      002644 74 80            [12] 1627 	mov	a,#0x80
      002646 C0 E0            [24] 1628 	push	acc
      002648 12 39 E3         [24] 1629 	lcall	_printf
      00264B 15 81            [12] 1630 	dec	sp
      00264D 15 81            [12] 1631 	dec	sp
      00264F 15 81            [12] 1632 	dec	sp
                                   1633 ;	Eth.c:230: }
      002651 D0 D0            [24] 1634 	pop	psw
      002653 D0 00            [24] 1635 	pop	(0+0)
      002655 D0 01            [24] 1636 	pop	(0+1)
      002657 D0 02            [24] 1637 	pop	(0+2)
      002659 D0 03            [24] 1638 	pop	(0+3)
      00265B D0 04            [24] 1639 	pop	(0+4)
      00265D D0 05            [24] 1640 	pop	(0+5)
      00265F D0 06            [24] 1641 	pop	(0+6)
      002661 D0 07            [24] 1642 	pop	(0+7)
      002663 D0 83            [24] 1643 	pop	dph
      002665 D0 82            [24] 1644 	pop	dpl
      002667 D0 F0            [24] 1645 	pop	b
      002669 D0 E0            [24] 1646 	pop	acc
      00266B D0 21            [24] 1647 	pop	bits
      00266D 32               [24] 1648 	reti
                                   1649 	.area CSEG    (CODE)
                                   1650 	.area CONST   (CODE)
                                   1651 	.area CONST   (CODE)
      004425                       1652 ___str_0:
      004425 49 6E 76 61 6C 69 64  1653 	.ascii "Invalid RX buffer range."
             20 52 58 20 62 75 66
             66 65 72 20 72 61 6E
             67 65 2E
      00443D 0A                    1654 	.db 0x0a
      00443E 00                    1655 	.db 0x00
                                   1656 	.area CSEG    (CODE)
                                   1657 	.area CONST   (CODE)
      00443F                       1658 ___str_1:
      00443F 52 58 20 62 75 66 66  1659 	.ascii "RX buffer initialized: 0x%04X to 0x%04X."
             65 72 20 69 6E 69 74
             69 61 6C 69 7A 65 64
             3A 20 30 78 25 30 34
             58 20 74 6F 20 30 78
             25 30 34 58 2E
      004467 0A                    1660 	.db 0x0a
      004468 00                    1661 	.db 0x00
                                   1662 	.area CSEG    (CODE)
                                   1663 	.area CONST   (CODE)
      004469                       1664 ___str_2:
      004469 0A                    1665 	.db 0x0a
      00446A 49 6E 76 61 6C 69 64  1666 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      0044A2 0A                    1667 	.db 0x0a
      0044A3 00                    1668 	.db 0x00
                                   1669 	.area CSEG    (CODE)
                                   1670 	.area CONST   (CODE)
      0044A4                       1671 ___str_3:
      0044A4 41 52 50 20 72 65 71  1672 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      0044C2 0A                    1673 	.db 0x0a
      0044C3 0D                    1674 	.db 0x0d
      0044C4 00                    1675 	.db 0x00
                                   1676 	.area CSEG    (CODE)
                                   1677 	.area CONST   (CODE)
      0044C5                       1678 ___str_4:
      0044C5 41 52 50 20 74 72 61  1679 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      0044F0 0A                    1680 	.db 0x0a
      0044F1 0D                    1681 	.db 0x0d
      0044F2 00                    1682 	.db 0x00
                                   1683 	.area CSEG    (CODE)
                                   1684 	.area CONST   (CODE)
      0044F3                       1685 ___str_5:
      0044F3 54 72 61 6E 73 6D 69  1686 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      00452F 74 6C 79 2E           1687 	.ascii "tly."
      004533 0A                    1688 	.db 0x0a
      004534 0D                    1689 	.db 0x0d
      004535 00                    1690 	.db 0x00
                                   1691 	.area CSEG    (CODE)
                                   1692 	.area CONST   (CODE)
      004536                       1693 ___str_6:
      004536 49 6E 74 65 72 72 72  1694 	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
             72 72 72 72 72 75 75
             75 75 75 75 75 75 75
             70 70 70 70 70 70 70
             70 74 74 74 74 74 74
             74
      00455A 0A                    1695 	.db 0x0a
      00455B 0D                    1696 	.db 0x0d
      00455C 00                    1697 	.db 0x00
                                   1698 	.area CSEG    (CODE)
                                   1699 	.area XINIT   (CODE)
      004BEA                       1700 __xinit__source_mac:
      004BEA 02                    1701 	.db #0x02	; 2
      004BEB 11                    1702 	.db #0x11	; 17
      004BEC 22                    1703 	.db #0x22	; 34
      004BED 33                    1704 	.db #0x33	; 51	'3'
      004BEE 44                    1705 	.db #0x44	; 68	'D'
      004BEF 55                    1706 	.db #0x55	; 85	'U'
      004BF0                       1707 __xinit__dest_mac:
      004BF0 FF                    1708 	.db #0xff	; 255
      004BF1 FF                    1709 	.db #0xff	; 255
      004BF2 FF                    1710 	.db #0xff	; 255
      004BF3 FF                    1711 	.db #0xff	; 255
      004BF4 FF                    1712 	.db #0xff	; 255
      004BF5 FF                    1713 	.db #0xff	; 255
      004BF6                       1714 __xinit__source_ip:
      004BF6 C0                    1715 	.db #0xc0	; 192
      004BF7 A8                    1716 	.db #0xa8	; 168
      004BF8 01                    1717 	.db #0x01	; 1
      004BF9 64                    1718 	.db #0x64	; 100	'd'
      004BFA                       1719 __xinit__target_ip:
      004BFA C0                    1720 	.db #0xc0	; 192
      004BFB A8                    1721 	.db #0xa8	; 168
      004BFC 01                    1722 	.db #0x01	; 1
      004BFD 01                    1723 	.db #0x01	; 1
                                   1724 	.area CABS    (ABS,CODE)

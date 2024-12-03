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
                                     11 	.globl _enc28j60_transmission_successful
                                     12 	.globl _wait_for_transmission_complete
                                     13 	.globl _enc28j60_set_transmit_pointers
                                     14 	.globl _enc28j60_start_transmission
                                     15 	.globl _delay_ms
                                     16 	.globl _set_mac_address
                                     17 	.globl _spi_control_write
                                     18 	.globl _spi_buffer_write
                                     19 	.globl _mac_spi_read
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
                                    230 	.globl _target_ip
                                    231 	.globl _source_ip
                                    232 	.globl _dest_mac
                                    233 	.globl _source_mac
                                    234 	.globl _enc28j60_set_transmit_pointers_PARM_2
                                    235 	.globl _enc28j60_init_rx_buffer_PARM_2
                                    236 	.globl _enc28j60_init_rx_buffer
                                    237 	.globl _send_arp_request
                                    238 ;--------------------------------------------------------
                                    239 ; special function registers
                                    240 ;--------------------------------------------------------
                                    241 	.area RSEG    (ABS,DATA)
      000000                        242 	.org 0x0000
                           0000C8   243 _T2CON	=	0x00c8
                           0000CA   244 _RCAP2L	=	0x00ca
                           0000CB   245 _RCAP2H	=	0x00cb
                           0000CC   246 _TL2	=	0x00cc
                           0000CD   247 _TH2	=	0x00cd
                           00008E   248 _AUXR	=	0x008e
                           0000A2   249 _AUXR1	=	0x00a2
                           000097   250 _CKRL	=	0x0097
                           00008F   251 _CKCON0	=	0x008f
                           0000AF   252 _CKCON1	=	0x00af
                           0000FA   253 _CCAP0H	=	0x00fa
                           0000FB   254 _CCAP1H	=	0x00fb
                           0000FC   255 _CCAP2H	=	0x00fc
                           0000FD   256 _CCAP3H	=	0x00fd
                           0000FE   257 _CCAP4H	=	0x00fe
                           0000EA   258 _CCAP0L	=	0x00ea
                           0000EB   259 _CCAP1L	=	0x00eb
                           0000EC   260 _CCAP2L	=	0x00ec
                           0000ED   261 _CCAP3L	=	0x00ed
                           0000EE   262 _CCAP4L	=	0x00ee
                           0000DA   263 _CCAPM0	=	0x00da
                           0000DB   264 _CCAPM1	=	0x00db
                           0000DC   265 _CCAPM2	=	0x00dc
                           0000DD   266 _CCAPM3	=	0x00dd
                           0000DE   267 _CCAPM4	=	0x00de
                           0000D8   268 _CCON	=	0x00d8
                           0000F9   269 _CH	=	0x00f9
                           0000E9   270 _CL	=	0x00e9
                           0000D9   271 _CMOD	=	0x00d9
                           0000A8   272 _IEN0	=	0x00a8
                           0000B1   273 _IEN1	=	0x00b1
                           0000B8   274 _IPL0	=	0x00b8
                           0000B7   275 _IPH0	=	0x00b7
                           0000B2   276 _IPL1	=	0x00b2
                           0000B3   277 _IPH1	=	0x00b3
                           0000C0   278 _P4	=	0x00c0
                           0000E8   279 _P5	=	0x00e8
                           0000A6   280 _WDTRST	=	0x00a6
                           0000A7   281 _WDTPRG	=	0x00a7
                           0000A9   282 _SADDR	=	0x00a9
                           0000B9   283 _SADEN	=	0x00b9
                           0000C3   284 _SPCON	=	0x00c3
                           0000C4   285 _SPSTA	=	0x00c4
                           0000C5   286 _SPDAT	=	0x00c5
                           0000C9   287 _T2MOD	=	0x00c9
                           00009B   288 _BDRCON	=	0x009b
                           00009A   289 _BRL	=	0x009a
                           00009C   290 _KBLS	=	0x009c
                           00009D   291 _KBE	=	0x009d
                           00009E   292 _KBF	=	0x009e
                           0000D2   293 _EECON	=	0x00d2
                           0000E0   294 _ACC	=	0x00e0
                           0000F0   295 _B	=	0x00f0
                           000083   296 _DPH	=	0x0083
                           000083   297 _DP0H	=	0x0083
                           000082   298 _DPL	=	0x0082
                           000082   299 _DP0L	=	0x0082
                           0000A8   300 _IE	=	0x00a8
                           0000B8   301 _IP	=	0x00b8
                           000080   302 _P0	=	0x0080
                           000090   303 _P1	=	0x0090
                           0000A0   304 _P2	=	0x00a0
                           0000B0   305 _P3	=	0x00b0
                           000087   306 _PCON	=	0x0087
                           0000D0   307 _PSW	=	0x00d0
                           000099   308 _SBUF	=	0x0099
                           000099   309 _SBUF0	=	0x0099
                           000098   310 _SCON	=	0x0098
                           000081   311 _SP	=	0x0081
                           000088   312 _TCON	=	0x0088
                           00008C   313 _TH0	=	0x008c
                           00008D   314 _TH1	=	0x008d
                           00008A   315 _TL0	=	0x008a
                           00008B   316 _TL1	=	0x008b
                           000089   317 _TMOD	=	0x0089
                                    318 ;--------------------------------------------------------
                                    319 ; special function bits
                                    320 ;--------------------------------------------------------
                                    321 	.area RSEG    (ABS,DATA)
      000000                        322 	.org 0x0000
                           0000AD   323 _ET2	=	0x00ad
                           0000BD   324 _PT2	=	0x00bd
                           0000C8   325 _T2CON_0	=	0x00c8
                           0000C9   326 _T2CON_1	=	0x00c9
                           0000CA   327 _T2CON_2	=	0x00ca
                           0000CB   328 _T2CON_3	=	0x00cb
                           0000CC   329 _T2CON_4	=	0x00cc
                           0000CD   330 _T2CON_5	=	0x00cd
                           0000CE   331 _T2CON_6	=	0x00ce
                           0000CF   332 _T2CON_7	=	0x00cf
                           0000C8   333 _CP_RL2	=	0x00c8
                           0000C9   334 _C_T2	=	0x00c9
                           0000CA   335 _TR2	=	0x00ca
                           0000CB   336 _EXEN2	=	0x00cb
                           0000CC   337 _TCLK	=	0x00cc
                           0000CD   338 _RCLK	=	0x00cd
                           0000CE   339 _EXF2	=	0x00ce
                           0000CF   340 _TF2	=	0x00cf
                           0000DF   341 _CF	=	0x00df
                           0000DE   342 _CR	=	0x00de
                           0000DC   343 _CCF4	=	0x00dc
                           0000DB   344 _CCF3	=	0x00db
                           0000DA   345 _CCF2	=	0x00da
                           0000D9   346 _CCF1	=	0x00d9
                           0000D8   347 _CCF0	=	0x00d8
                           0000AE   348 _EC	=	0x00ae
                           0000BE   349 _PPCL	=	0x00be
                           0000BD   350 _PT2L	=	0x00bd
                           0000BC   351 _PSL	=	0x00bc
                           0000BB   352 _PT1L	=	0x00bb
                           0000BA   353 _PX1L	=	0x00ba
                           0000B9   354 _PT0L	=	0x00b9
                           0000B8   355 _PX0L	=	0x00b8
                           0000C0   356 _P4_0	=	0x00c0
                           0000C1   357 _P4_1	=	0x00c1
                           0000C2   358 _P4_2	=	0x00c2
                           0000C3   359 _P4_3	=	0x00c3
                           0000C4   360 _P4_4	=	0x00c4
                           0000C5   361 _P4_5	=	0x00c5
                           0000C6   362 _P4_6	=	0x00c6
                           0000C7   363 _P4_7	=	0x00c7
                           0000E8   364 _P5_0	=	0x00e8
                           0000E9   365 _P5_1	=	0x00e9
                           0000EA   366 _P5_2	=	0x00ea
                           0000EB   367 _P5_3	=	0x00eb
                           0000EC   368 _P5_4	=	0x00ec
                           0000ED   369 _P5_5	=	0x00ed
                           0000EE   370 _P5_6	=	0x00ee
                           0000EF   371 _P5_7	=	0x00ef
                           0000F0   372 _BREG_F0	=	0x00f0
                           0000F1   373 _BREG_F1	=	0x00f1
                           0000F2   374 _BREG_F2	=	0x00f2
                           0000F3   375 _BREG_F3	=	0x00f3
                           0000F4   376 _BREG_F4	=	0x00f4
                           0000F5   377 _BREG_F5	=	0x00f5
                           0000F6   378 _BREG_F6	=	0x00f6
                           0000F7   379 _BREG_F7	=	0x00f7
                           0000A8   380 _EX0	=	0x00a8
                           0000A9   381 _ET0	=	0x00a9
                           0000AA   382 _EX1	=	0x00aa
                           0000AB   383 _ET1	=	0x00ab
                           0000AC   384 _ES	=	0x00ac
                           0000AF   385 _EA	=	0x00af
                           0000B8   386 _PX0	=	0x00b8
                           0000B9   387 _PT0	=	0x00b9
                           0000BA   388 _PX1	=	0x00ba
                           0000BB   389 _PT1	=	0x00bb
                           0000BC   390 _PS	=	0x00bc
                           000080   391 _P0_0	=	0x0080
                           000081   392 _P0_1	=	0x0081
                           000082   393 _P0_2	=	0x0082
                           000083   394 _P0_3	=	0x0083
                           000084   395 _P0_4	=	0x0084
                           000085   396 _P0_5	=	0x0085
                           000086   397 _P0_6	=	0x0086
                           000087   398 _P0_7	=	0x0087
                           000090   399 _P1_0	=	0x0090
                           000091   400 _P1_1	=	0x0091
                           000092   401 _P1_2	=	0x0092
                           000093   402 _P1_3	=	0x0093
                           000094   403 _P1_4	=	0x0094
                           000095   404 _P1_5	=	0x0095
                           000096   405 _P1_6	=	0x0096
                           000097   406 _P1_7	=	0x0097
                           0000A0   407 _P2_0	=	0x00a0
                           0000A1   408 _P2_1	=	0x00a1
                           0000A2   409 _P2_2	=	0x00a2
                           0000A3   410 _P2_3	=	0x00a3
                           0000A4   411 _P2_4	=	0x00a4
                           0000A5   412 _P2_5	=	0x00a5
                           0000A6   413 _P2_6	=	0x00a6
                           0000A7   414 _P2_7	=	0x00a7
                           0000B0   415 _P3_0	=	0x00b0
                           0000B1   416 _P3_1	=	0x00b1
                           0000B2   417 _P3_2	=	0x00b2
                           0000B3   418 _P3_3	=	0x00b3
                           0000B4   419 _P3_4	=	0x00b4
                           0000B5   420 _P3_5	=	0x00b5
                           0000B6   421 _P3_6	=	0x00b6
                           0000B7   422 _P3_7	=	0x00b7
                           0000B0   423 _RXD	=	0x00b0
                           0000B0   424 _RXD0	=	0x00b0
                           0000B1   425 _TXD	=	0x00b1
                           0000B1   426 _TXD0	=	0x00b1
                           0000B2   427 _INT0	=	0x00b2
                           0000B3   428 _INT1	=	0x00b3
                           0000B4   429 _T0	=	0x00b4
                           0000B5   430 _T1	=	0x00b5
                           0000B6   431 _WR	=	0x00b6
                           0000B7   432 _RD	=	0x00b7
                           0000D0   433 _P	=	0x00d0
                           0000D1   434 _F1	=	0x00d1
                           0000D2   435 _OV	=	0x00d2
                           0000D3   436 _RS0	=	0x00d3
                           0000D4   437 _RS1	=	0x00d4
                           0000D5   438 _F0	=	0x00d5
                           0000D6   439 _AC	=	0x00d6
                           0000D7   440 _CY	=	0x00d7
                           000098   441 _RI	=	0x0098
                           000099   442 _TI	=	0x0099
                           00009A   443 _RB8	=	0x009a
                           00009B   444 _TB8	=	0x009b
                           00009C   445 _REN	=	0x009c
                           00009D   446 _SM2	=	0x009d
                           00009E   447 _SM1	=	0x009e
                           00009F   448 _SM0	=	0x009f
                           000088   449 _IT0	=	0x0088
                           000089   450 _IE0	=	0x0089
                           00008A   451 _IT1	=	0x008a
                           00008B   452 _IE1	=	0x008b
                           00008C   453 _TR0	=	0x008c
                           00008D   454 _TF0	=	0x008d
                           00008E   455 _TR1	=	0x008e
                           00008F   456 _TF1	=	0x008f
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable register banks
                                    459 ;--------------------------------------------------------
                                    460 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        461 	.ds 8
                                    462 ;--------------------------------------------------------
                                    463 ; internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area DSEG    (DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; overlayable items in internal ram
                                    468 ;--------------------------------------------------------
                                    469 ;--------------------------------------------------------
                                    470 ; indirectly addressable internal ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area ISEG    (DATA)
                                    473 ;--------------------------------------------------------
                                    474 ; absolute internal ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area IABS    (ABS,DATA)
                                    477 	.area IABS    (ABS,DATA)
                                    478 ;--------------------------------------------------------
                                    479 ; bit data
                                    480 ;--------------------------------------------------------
                                    481 	.area BSEG    (BIT)
      000000                        482 _enc28j60_transmission_successful_sloc0_1_0:
      000000                        483 	.ds 1
                                    484 ;--------------------------------------------------------
                                    485 ; paged external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area PSEG    (PAG,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; uninitialized external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XSEG    (XDATA)
      000100                        492 _delay_ms_ms_10000_67:
      000100                        493 	.ds 2
      000102                        494 _delay_ms_i_20000_69:
      000102                        495 	.ds 4
      000106                        496 _enc28j60_init_rx_buffer_PARM_2:
      000106                        497 	.ds 2
      000108                        498 _enc28j60_init_rx_buffer_start_address_10000_73:
      000108                        499 	.ds 2
      00010A                        500 _enc28j60_set_transmit_pointers_PARM_2:
      00010A                        501 	.ds 2
      00010C                        502 _enc28j60_set_transmit_pointers_start_address_10000_76:
      00010C                        503 	.ds 2
      00010E                        504 _wait_for_transmission_complete_timeout_ms_10000_78:
      00010E                        505 	.ds 2
      000110                        506 _send_arp_request_source_mac_10000_84:
      000110                        507 	.ds 6
      000116                        508 _send_arp_request_dest_mac_10000_84:
      000116                        509 	.ds 6
      00011C                        510 _send_arp_request_source_ip_10000_84:
      00011C                        511 	.ds 4
      000120                        512 _send_arp_request_target_ip_10000_84:
      000120                        513 	.ds 4
      000124                        514 _send_arp_request_arp_packet_10000_84:
      000124                        515 	.ds 51
                                    516 ;--------------------------------------------------------
                                    517 ; absolute external ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area XABS    (ABS,XDATA)
                                    520 ;--------------------------------------------------------
                                    521 ; initialized external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area XISEG   (XDATA)
      0003CC                        524 _source_mac::
      0003CC                        525 	.ds 6
      0003D2                        526 _dest_mac::
      0003D2                        527 	.ds 6
      0003D8                        528 _source_ip::
      0003D8                        529 	.ds 4
      0003DC                        530 _target_ip::
      0003DC                        531 	.ds 4
                                    532 	.area HOME    (CODE)
                                    533 	.area GSINIT0 (CODE)
                                    534 	.area GSINIT1 (CODE)
                                    535 	.area GSINIT2 (CODE)
                                    536 	.area GSINIT3 (CODE)
                                    537 	.area GSINIT4 (CODE)
                                    538 	.area GSINIT5 (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area CSEG    (CODE)
                                    542 ;--------------------------------------------------------
                                    543 ; global & static initialisations
                                    544 ;--------------------------------------------------------
                                    545 	.area HOME    (CODE)
                                    546 	.area GSINIT  (CODE)
                                    547 	.area GSFINAL (CODE)
                                    548 	.area GSINIT  (CODE)
                                    549 ;--------------------------------------------------------
                                    550 ; Home
                                    551 ;--------------------------------------------------------
                                    552 	.area HOME    (CODE)
                                    553 	.area HOME    (CODE)
                                    554 ;--------------------------------------------------------
                                    555 ; code
                                    556 ;--------------------------------------------------------
                                    557 	.area CSEG    (CODE)
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'set_mac_address'
                                    560 ;------------------------------------------------------------
                                    561 ;mac_address               Allocated with name '_set_mac_address_mac_address_10000_65'
                                    562 ;------------------------------------------------------------
                                    563 ;	Eth.c:35: void set_mac_address(uint8_t* mac_address)
                                    564 ;	-----------------------------------------
                                    565 ;	 function set_mac_address
                                    566 ;	-----------------------------------------
      002062                        567 _set_mac_address:
                           000007   568 	ar7 = 0x07
                           000006   569 	ar6 = 0x06
                           000005   570 	ar5 = 0x05
                           000004   571 	ar4 = 0x04
                           000003   572 	ar3 = 0x03
                           000002   573 	ar2 = 0x02
                           000001   574 	ar1 = 0x01
                           000000   575 	ar0 = 0x00
                                    576 ;	Eth.c:41: spi_control_write(3, 0x01, 0x00);  // MAADR6
      002062 90 03 6A         [24]  577 	mov	dptr,#_spi_control_write_PARM_2
      002065 74 01            [12]  578 	mov	a,#0x01
      002067 F0               [24]  579 	movx	@dptr,a
      002068 90 03 6B         [24]  580 	mov	dptr,#_spi_control_write_PARM_3
      00206B E4               [12]  581 	clr	a
      00206C F0               [24]  582 	movx	@dptr,a
      00206D 75 82 03         [24]  583 	mov	dpl, #0x03
      002070 12 2F 53         [24]  584 	lcall	_spi_control_write
                                    585 ;	Eth.c:42: spi_control_write(3, 0x00, 0x11);  // MAADR5
      002073 90 03 6A         [24]  586 	mov	dptr,#_spi_control_write_PARM_2
      002076 E4               [12]  587 	clr	a
      002077 F0               [24]  588 	movx	@dptr,a
      002078 90 03 6B         [24]  589 	mov	dptr,#_spi_control_write_PARM_3
      00207B 74 11            [12]  590 	mov	a,#0x11
      00207D F0               [24]  591 	movx	@dptr,a
      00207E 75 82 03         [24]  592 	mov	dpl, #0x03
      002081 12 2F 53         [24]  593 	lcall	_spi_control_write
                                    594 ;	Eth.c:43: spi_control_write(3, 0x03, 0x22);  // MAADR4
      002084 90 03 6A         [24]  595 	mov	dptr,#_spi_control_write_PARM_2
      002087 74 03            [12]  596 	mov	a,#0x03
      002089 F0               [24]  597 	movx	@dptr,a
      00208A 90 03 6B         [24]  598 	mov	dptr,#_spi_control_write_PARM_3
      00208D 74 22            [12]  599 	mov	a,#0x22
      00208F F0               [24]  600 	movx	@dptr,a
      002090 75 82 03         [24]  601 	mov	dpl, #0x03
      002093 12 2F 53         [24]  602 	lcall	_spi_control_write
                                    603 ;	Eth.c:44: spi_control_write(3, 0x02, 0x33);  // MAADR3
      002096 90 03 6A         [24]  604 	mov	dptr,#_spi_control_write_PARM_2
      002099 74 02            [12]  605 	mov	a,#0x02
      00209B F0               [24]  606 	movx	@dptr,a
      00209C 90 03 6B         [24]  607 	mov	dptr,#_spi_control_write_PARM_3
      00209F 74 33            [12]  608 	mov	a,#0x33
      0020A1 F0               [24]  609 	movx	@dptr,a
      0020A2 75 82 03         [24]  610 	mov	dpl, #0x03
      0020A5 12 2F 53         [24]  611 	lcall	_spi_control_write
                                    612 ;	Eth.c:45: spi_control_write(3, 0x05, 0x44);  // MAADR2
      0020A8 90 03 6A         [24]  613 	mov	dptr,#_spi_control_write_PARM_2
      0020AB 74 05            [12]  614 	mov	a,#0x05
      0020AD F0               [24]  615 	movx	@dptr,a
      0020AE 90 03 6B         [24]  616 	mov	dptr,#_spi_control_write_PARM_3
      0020B1 74 44            [12]  617 	mov	a,#0x44
      0020B3 F0               [24]  618 	movx	@dptr,a
      0020B4 75 82 03         [24]  619 	mov	dpl, #0x03
      0020B7 12 2F 53         [24]  620 	lcall	_spi_control_write
                                    621 ;	Eth.c:46: spi_control_write(3, 0x04, 0x55);  // MAADR1
      0020BA 90 03 6A         [24]  622 	mov	dptr,#_spi_control_write_PARM_2
      0020BD 74 04            [12]  623 	mov	a,#0x04
      0020BF F0               [24]  624 	movx	@dptr,a
      0020C0 90 03 6B         [24]  625 	mov	dptr,#_spi_control_write_PARM_3
      0020C3 74 55            [12]  626 	mov	a,#0x55
      0020C5 F0               [24]  627 	movx	@dptr,a
      0020C6 75 82 03         [24]  628 	mov	dpl, #0x03
                                    629 ;	Eth.c:48: }
      0020C9 02 2F 53         [24]  630 	ljmp	_spi_control_write
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'delay_ms'
                                    633 ;------------------------------------------------------------
                                    634 ;ms                        Allocated with name '_delay_ms_ms_10000_67'
                                    635 ;i                         Allocated with name '_delay_ms_i_20000_69'
                                    636 ;------------------------------------------------------------
                                    637 ;	Eth.c:51: void delay_ms(uint16_t ms)
                                    638 ;	-----------------------------------------
                                    639 ;	 function delay_ms
                                    640 ;	-----------------------------------------
      0020CC                        641 _delay_ms:
      0020CC AF 83            [24]  642 	mov	r7,dph
      0020CE E5 82            [12]  643 	mov	a,dpl
      0020D0 90 01 00         [24]  644 	mov	dptr,#_delay_ms_ms_10000_67
      0020D3 F0               [24]  645 	movx	@dptr,a
      0020D4 EF               [12]  646 	mov	a,r7
      0020D5 A3               [24]  647 	inc	dptr
      0020D6 F0               [24]  648 	movx	@dptr,a
                                    649 ;	Eth.c:53: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      0020D7 90 01 02         [24]  650 	mov	dptr,#_delay_ms_i_20000_69
      0020DA E4               [12]  651 	clr	a
      0020DB F0               [24]  652 	movx	@dptr,a
      0020DC A3               [24]  653 	inc	dptr
      0020DD F0               [24]  654 	movx	@dptr,a
      0020DE A3               [24]  655 	inc	dptr
      0020DF F0               [24]  656 	movx	@dptr,a
      0020E0 A3               [24]  657 	inc	dptr
      0020E1 F0               [24]  658 	movx	@dptr,a
      0020E2 90 01 00         [24]  659 	mov	dptr,#_delay_ms_ms_10000_67
      0020E5 E0               [24]  660 	movx	a,@dptr
      0020E6 FE               [12]  661 	mov	r6,a
      0020E7 A3               [24]  662 	inc	dptr
      0020E8 E0               [24]  663 	movx	a,@dptr
      0020E9 FF               [12]  664 	mov	r7,a
      0020EA                        665 00103$:
      0020EA 90 03 93         [24]  666 	mov	dptr,#__mulint_PARM_2
      0020ED EE               [12]  667 	mov	a,r6
      0020EE F0               [24]  668 	movx	@dptr,a
      0020EF EF               [12]  669 	mov	a,r7
      0020F0 A3               [24]  670 	inc	dptr
      0020F1 F0               [24]  671 	movx	@dptr,a
      0020F2 90 03 E8         [24]  672 	mov	dptr,#0x03e8
      0020F5 C0 07            [24]  673 	push	ar7
      0020F7 C0 06            [24]  674 	push	ar6
      0020F9 12 38 CF         [24]  675 	lcall	__mulint
      0020FC AC 82            [24]  676 	mov	r4, dpl
      0020FE AD 83            [24]  677 	mov	r5, dph
      002100 D0 06            [24]  678 	pop	ar6
      002102 D0 07            [24]  679 	pop	ar7
      002104 90 01 02         [24]  680 	mov	dptr,#_delay_ms_i_20000_69
      002107 E0               [24]  681 	movx	a,@dptr
      002108 F8               [12]  682 	mov	r0,a
      002109 A3               [24]  683 	inc	dptr
      00210A E0               [24]  684 	movx	a,@dptr
      00210B F9               [12]  685 	mov	r1,a
      00210C A3               [24]  686 	inc	dptr
      00210D E0               [24]  687 	movx	a,@dptr
      00210E FA               [12]  688 	mov	r2,a
      00210F A3               [24]  689 	inc	dptr
      002110 E0               [24]  690 	movx	a,@dptr
      002111 FB               [12]  691 	mov	r3,a
      002112 C0 06            [24]  692 	push	ar6
      002114 C0 07            [24]  693 	push	ar7
      002116 7E 00            [12]  694 	mov	r6,#0x00
      002118 7F 00            [12]  695 	mov	r7,#0x00
      00211A C3               [12]  696 	clr	c
      00211B E8               [12]  697 	mov	a,r0
      00211C 9C               [12]  698 	subb	a,r4
      00211D E9               [12]  699 	mov	a,r1
      00211E 9D               [12]  700 	subb	a,r5
      00211F EA               [12]  701 	mov	a,r2
      002120 9E               [12]  702 	subb	a,r6
      002121 EB               [12]  703 	mov	a,r3
      002122 9F               [12]  704 	subb	a,r7
      002123 D0 07            [24]  705 	pop	ar7
      002125 D0 06            [24]  706 	pop	ar6
      002127 50 23            [24]  707 	jnc	00105$
      002129 90 01 02         [24]  708 	mov	dptr,#_delay_ms_i_20000_69
      00212C E0               [24]  709 	movx	a,@dptr
      00212D FA               [12]  710 	mov	r2,a
      00212E A3               [24]  711 	inc	dptr
      00212F E0               [24]  712 	movx	a,@dptr
      002130 FB               [12]  713 	mov	r3,a
      002131 A3               [24]  714 	inc	dptr
      002132 E0               [24]  715 	movx	a,@dptr
      002133 FC               [12]  716 	mov	r4,a
      002134 A3               [24]  717 	inc	dptr
      002135 E0               [24]  718 	movx	a,@dptr
      002136 FD               [12]  719 	mov	r5,a
      002137 90 01 02         [24]  720 	mov	dptr,#_delay_ms_i_20000_69
      00213A 74 01            [12]  721 	mov	a,#0x01
      00213C 2A               [12]  722 	add	a, r2
      00213D F0               [24]  723 	movx	@dptr,a
      00213E E4               [12]  724 	clr	a
      00213F 3B               [12]  725 	addc	a, r3
      002140 A3               [24]  726 	inc	dptr
      002141 F0               [24]  727 	movx	@dptr,a
      002142 E4               [12]  728 	clr	a
      002143 3C               [12]  729 	addc	a, r4
      002144 A3               [24]  730 	inc	dptr
      002145 F0               [24]  731 	movx	@dptr,a
      002146 E4               [12]  732 	clr	a
      002147 3D               [12]  733 	addc	a, r5
      002148 A3               [24]  734 	inc	dptr
      002149 F0               [24]  735 	movx	@dptr,a
      00214A 80 9E            [24]  736 	sjmp	00103$
      00214C                        737 00105$:
                                    738 ;	Eth.c:57: }
      00214C 22               [24]  739 	ret
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    742 ;------------------------------------------------------------
                                    743 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_72'
                                    744 ;------------------------------------------------------------
                                    745 ;	Eth.c:59: void enc28j60_start_transmission(void)
                                    746 ;	-----------------------------------------
                                    747 ;	 function enc28j60_start_transmission
                                    748 ;	-----------------------------------------
      00214D                        749 _enc28j60_start_transmission:
                                    750 ;	Eth.c:61: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      00214D 90 03 73         [24]  751 	mov	dptr,#_mac_spi_read_PARM_2
      002150 E4               [12]  752 	clr	a
      002151 F0               [24]  753 	movx	@dptr,a
      002152 75 82 1F         [24]  754 	mov	dpl, #0x1f
      002155 12 30 C9         [24]  755 	lcall	_mac_spi_read
      002158 E5 82            [12]  756 	mov	a, dpl
                                    757 ;	Eth.c:62: econ1 |= 0x08; // Set TXRTS (bit 3)
      00215A 44 08            [12]  758 	orl	a,#0x08
      00215C FF               [12]  759 	mov	r7,a
                                    760 ;	Eth.c:63: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      00215D 90 03 6A         [24]  761 	mov	dptr,#_spi_control_write_PARM_2
      002160 74 1F            [12]  762 	mov	a,#0x1f
      002162 F0               [24]  763 	movx	@dptr,a
      002163 90 03 6B         [24]  764 	mov	dptr,#_spi_control_write_PARM_3
      002166 EF               [12]  765 	mov	a,r7
      002167 F0               [24]  766 	movx	@dptr,a
      002168 75 82 00         [24]  767 	mov	dpl, #0x00
                                    768 ;	Eth.c:64: }
      00216B 02 2F 53         [24]  769 	ljmp	_spi_control_write
                                    770 ;------------------------------------------------------------
                                    771 ;Allocation info for local variables in function 'enc28j60_init_rx_buffer'
                                    772 ;------------------------------------------------------------
                                    773 ;end_address               Allocated with name '_enc28j60_init_rx_buffer_PARM_2'
                                    774 ;start_address             Allocated with name '_enc28j60_init_rx_buffer_start_address_10000_73'
                                    775 ;------------------------------------------------------------
                                    776 ;	Eth.c:65: void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address)
                                    777 ;	-----------------------------------------
                                    778 ;	 function enc28j60_init_rx_buffer
                                    779 ;	-----------------------------------------
      00216E                        780 _enc28j60_init_rx_buffer:
      00216E AF 83            [24]  781 	mov	r7,dph
      002170 E5 82            [12]  782 	mov	a,dpl
      002172 90 01 08         [24]  783 	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_73
      002175 F0               [24]  784 	movx	@dptr,a
      002176 EF               [12]  785 	mov	a,r7
      002177 A3               [24]  786 	inc	dptr
      002178 F0               [24]  787 	movx	@dptr,a
                                    788 ;	Eth.c:68: if (start_address >= end_address || end_address > 0x1FFF) {
      002179 90 01 08         [24]  789 	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_73
      00217C E0               [24]  790 	movx	a,@dptr
      00217D FE               [12]  791 	mov	r6,a
      00217E A3               [24]  792 	inc	dptr
      00217F E0               [24]  793 	movx	a,@dptr
      002180 FF               [12]  794 	mov	r7,a
      002181 90 01 06         [24]  795 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      002184 E0               [24]  796 	movx	a,@dptr
      002185 FC               [12]  797 	mov	r4,a
      002186 A3               [24]  798 	inc	dptr
      002187 E0               [24]  799 	movx	a,@dptr
      002188 FD               [12]  800 	mov	r5,a
      002189 C3               [12]  801 	clr	c
      00218A EE               [12]  802 	mov	a,r6
      00218B 9C               [12]  803 	subb	a,r4
      00218C EF               [12]  804 	mov	a,r7
      00218D 9D               [12]  805 	subb	a,r5
      00218E 50 0D            [24]  806 	jnc	00101$
      002190 8C 02            [24]  807 	mov	ar2,r4
      002192 8D 03            [24]  808 	mov	ar3,r5
      002194 C3               [12]  809 	clr	c
      002195 74 FF            [12]  810 	mov	a,#0xff
      002197 9A               [12]  811 	subb	a,r2
      002198 74 1F            [12]  812 	mov	a,#0x1f
      00219A 9B               [12]  813 	subb	a,r3
      00219B 50 16            [24]  814 	jnc	00102$
      00219D                        815 00101$:
                                    816 ;	Eth.c:69: printf("Invalid RX buffer range.\n");
      00219D 74 7F            [12]  817 	mov	a,#___str_0
      00219F C0 E0            [24]  818 	push	acc
      0021A1 74 43            [12]  819 	mov	a,#(___str_0 >> 8)
      0021A3 C0 E0            [24]  820 	push	acc
      0021A5 74 80            [12]  821 	mov	a,#0x80
      0021A7 C0 E0            [24]  822 	push	acc
      0021A9 12 39 3D         [24]  823 	lcall	_printf
      0021AC 15 81            [12]  824 	dec	sp
      0021AE 15 81            [12]  825 	dec	sp
      0021B0 15 81            [12]  826 	dec	sp
                                    827 ;	Eth.c:70: return;
      0021B2 22               [24]  828 	ret
      0021B3                        829 00102$:
                                    830 ;	Eth.c:73: spi_control_write(0, 0x08, (uint8_t)(start_address & 0xFF)); // ERXSTL (low byte)
      0021B3 8E 03            [24]  831 	mov	ar3,r6
      0021B5 90 03 6A         [24]  832 	mov	dptr,#_spi_control_write_PARM_2
      0021B8 74 08            [12]  833 	mov	a,#0x08
      0021BA F0               [24]  834 	movx	@dptr,a
      0021BB 90 03 6B         [24]  835 	mov	dptr,#_spi_control_write_PARM_3
      0021BE EB               [12]  836 	mov	a,r3
      0021BF F0               [24]  837 	movx	@dptr,a
      0021C0 75 82 00         [24]  838 	mov	dpl, #0x00
      0021C3 C0 07            [24]  839 	push	ar7
      0021C5 C0 06            [24]  840 	push	ar6
      0021C7 C0 05            [24]  841 	push	ar5
      0021C9 C0 04            [24]  842 	push	ar4
      0021CB C0 03            [24]  843 	push	ar3
      0021CD 12 2F 53         [24]  844 	lcall	_spi_control_write
      0021D0 D0 03            [24]  845 	pop	ar3
      0021D2 D0 04            [24]  846 	pop	ar4
      0021D4 D0 05            [24]  847 	pop	ar5
      0021D6 D0 06            [24]  848 	pop	ar6
      0021D8 D0 07            [24]  849 	pop	ar7
                                    850 ;	Eth.c:74: spi_control_write(0, 0x09, (uint8_t)((start_address >> 8) & 0xFF)); // ERXSTH (high byte)
      0021DA 8F 02            [24]  851 	mov	ar2,r7
      0021DC 90 03 6A         [24]  852 	mov	dptr,#_spi_control_write_PARM_2
      0021DF 74 09            [12]  853 	mov	a,#0x09
      0021E1 F0               [24]  854 	movx	@dptr,a
      0021E2 90 03 6B         [24]  855 	mov	dptr,#_spi_control_write_PARM_3
      0021E5 EA               [12]  856 	mov	a,r2
      0021E6 F0               [24]  857 	movx	@dptr,a
      0021E7 75 82 00         [24]  858 	mov	dpl, #0x00
      0021EA C0 07            [24]  859 	push	ar7
      0021EC C0 06            [24]  860 	push	ar6
      0021EE C0 05            [24]  861 	push	ar5
      0021F0 C0 04            [24]  862 	push	ar4
      0021F2 C0 03            [24]  863 	push	ar3
      0021F4 C0 02            [24]  864 	push	ar2
      0021F6 12 2F 53         [24]  865 	lcall	_spi_control_write
      0021F9 D0 02            [24]  866 	pop	ar2
      0021FB D0 03            [24]  867 	pop	ar3
      0021FD D0 04            [24]  868 	pop	ar4
      0021FF D0 05            [24]  869 	pop	ar5
      002201 D0 06            [24]  870 	pop	ar6
      002203 D0 07            [24]  871 	pop	ar7
                                    872 ;	Eth.c:77: spi_control_write(0, 0x0A, (uint8_t)(end_address & 0xFF)); // ERXNDL (low byte)
      002205 8C 01            [24]  873 	mov	ar1,r4
      002207 90 03 6A         [24]  874 	mov	dptr,#_spi_control_write_PARM_2
      00220A 74 0A            [12]  875 	mov	a,#0x0a
      00220C F0               [24]  876 	movx	@dptr,a
      00220D 90 03 6B         [24]  877 	mov	dptr,#_spi_control_write_PARM_3
      002210 E9               [12]  878 	mov	a,r1
      002211 F0               [24]  879 	movx	@dptr,a
      002212 75 82 00         [24]  880 	mov	dpl, #0x00
      002215 C0 07            [24]  881 	push	ar7
      002217 C0 06            [24]  882 	push	ar6
      002219 C0 05            [24]  883 	push	ar5
      00221B C0 04            [24]  884 	push	ar4
      00221D C0 03            [24]  885 	push	ar3
      00221F C0 02            [24]  886 	push	ar2
      002221 12 2F 53         [24]  887 	lcall	_spi_control_write
      002224 D0 02            [24]  888 	pop	ar2
      002226 D0 03            [24]  889 	pop	ar3
      002228 D0 04            [24]  890 	pop	ar4
      00222A D0 05            [24]  891 	pop	ar5
      00222C D0 06            [24]  892 	pop	ar6
      00222E D0 07            [24]  893 	pop	ar7
                                    894 ;	Eth.c:78: spi_control_write(0, 0x0B, (uint8_t)((end_address >> 8) & 0xFF)); // ERXNDH (high byte)
      002230 8D 01            [24]  895 	mov	ar1,r5
      002232 90 03 6A         [24]  896 	mov	dptr,#_spi_control_write_PARM_2
      002235 74 0B            [12]  897 	mov	a,#0x0b
      002237 F0               [24]  898 	movx	@dptr,a
      002238 90 03 6B         [24]  899 	mov	dptr,#_spi_control_write_PARM_3
      00223B E9               [12]  900 	mov	a,r1
      00223C F0               [24]  901 	movx	@dptr,a
      00223D 75 82 00         [24]  902 	mov	dpl, #0x00
      002240 C0 07            [24]  903 	push	ar7
      002242 C0 06            [24]  904 	push	ar6
      002244 C0 05            [24]  905 	push	ar5
      002246 C0 04            [24]  906 	push	ar4
      002248 C0 03            [24]  907 	push	ar3
      00224A C0 02            [24]  908 	push	ar2
      00224C 12 2F 53         [24]  909 	lcall	_spi_control_write
      00224F D0 02            [24]  910 	pop	ar2
      002251 D0 03            [24]  911 	pop	ar3
      002253 D0 04            [24]  912 	pop	ar4
      002255 D0 05            [24]  913 	pop	ar5
      002257 D0 06            [24]  914 	pop	ar6
      002259 D0 07            [24]  915 	pop	ar7
                                    916 ;	Eth.c:81: spi_control_write(0, 0x0C, (uint8_t)(start_address & 0xFF)); // ERXRDPTL (low byte)
      00225B 90 03 6A         [24]  917 	mov	dptr,#_spi_control_write_PARM_2
      00225E 74 0C            [12]  918 	mov	a,#0x0c
      002260 F0               [24]  919 	movx	@dptr,a
      002261 90 03 6B         [24]  920 	mov	dptr,#_spi_control_write_PARM_3
      002264 EB               [12]  921 	mov	a,r3
      002265 F0               [24]  922 	movx	@dptr,a
      002266 75 82 00         [24]  923 	mov	dpl, #0x00
      002269 C0 07            [24]  924 	push	ar7
      00226B C0 06            [24]  925 	push	ar6
      00226D C0 05            [24]  926 	push	ar5
      00226F C0 04            [24]  927 	push	ar4
      002271 C0 02            [24]  928 	push	ar2
      002273 12 2F 53         [24]  929 	lcall	_spi_control_write
      002276 D0 02            [24]  930 	pop	ar2
      002278 D0 04            [24]  931 	pop	ar4
      00227A D0 05            [24]  932 	pop	ar5
      00227C D0 06            [24]  933 	pop	ar6
      00227E D0 07            [24]  934 	pop	ar7
                                    935 ;	Eth.c:82: spi_control_write(0, 0x0D, (uint8_t)((start_address >> 8) & 0xFF)); // ERXRDPTH (high byte)
      002280 90 03 6A         [24]  936 	mov	dptr,#_spi_control_write_PARM_2
      002283 74 0D            [12]  937 	mov	a,#0x0d
      002285 F0               [24]  938 	movx	@dptr,a
      002286 90 03 6B         [24]  939 	mov	dptr,#_spi_control_write_PARM_3
      002289 EA               [12]  940 	mov	a,r2
      00228A F0               [24]  941 	movx	@dptr,a
      00228B 75 82 00         [24]  942 	mov	dpl, #0x00
      00228E C0 07            [24]  943 	push	ar7
      002290 C0 06            [24]  944 	push	ar6
      002292 C0 05            [24]  945 	push	ar5
      002294 C0 04            [24]  946 	push	ar4
      002296 12 2F 53         [24]  947 	lcall	_spi_control_write
      002299 D0 04            [24]  948 	pop	ar4
      00229B D0 05            [24]  949 	pop	ar5
      00229D D0 06            [24]  950 	pop	ar6
      00229F D0 07            [24]  951 	pop	ar7
                                    952 ;	Eth.c:89: printf("RX buffer initialized: 0x%04X to 0x%04X.\n", start_address, end_address);
      0022A1 C0 04            [24]  953 	push	ar4
      0022A3 C0 05            [24]  954 	push	ar5
      0022A5 C0 06            [24]  955 	push	ar6
      0022A7 C0 07            [24]  956 	push	ar7
      0022A9 74 99            [12]  957 	mov	a,#___str_1
      0022AB C0 E0            [24]  958 	push	acc
      0022AD 74 43            [12]  959 	mov	a,#(___str_1 >> 8)
      0022AF C0 E0            [24]  960 	push	acc
      0022B1 74 80            [12]  961 	mov	a,#0x80
      0022B3 C0 E0            [24]  962 	push	acc
      0022B5 12 39 3D         [24]  963 	lcall	_printf
      0022B8 E5 81            [12]  964 	mov	a,sp
      0022BA 24 F9            [12]  965 	add	a,#0xf9
      0022BC F5 81            [12]  966 	mov	sp,a
                                    967 ;	Eth.c:90: }
      0022BE 22               [24]  968 	ret
                                    969 ;------------------------------------------------------------
                                    970 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    971 ;------------------------------------------------------------
                                    972 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    973 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_76'
                                    974 ;------------------------------------------------------------
                                    975 ;	Eth.c:92: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    976 ;	-----------------------------------------
                                    977 ;	 function enc28j60_set_transmit_pointers
                                    978 ;	-----------------------------------------
      0022BF                        979 _enc28j60_set_transmit_pointers:
      0022BF AF 83            [24]  980 	mov	r7,dph
      0022C1 E5 82            [12]  981 	mov	a,dpl
      0022C3 90 01 0C         [24]  982 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_76
      0022C6 F0               [24]  983 	movx	@dptr,a
      0022C7 EF               [12]  984 	mov	a,r7
      0022C8 A3               [24]  985 	inc	dptr
      0022C9 F0               [24]  986 	movx	@dptr,a
                                    987 ;	Eth.c:95: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      0022CA 90 01 0C         [24]  988 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_76
      0022CD E0               [24]  989 	movx	a,@dptr
      0022CE FE               [12]  990 	mov	r6,a
      0022CF A3               [24]  991 	inc	dptr
      0022D0 E0               [24]  992 	movx	a,@dptr
      0022D1 FF               [12]  993 	mov	r7,a
      0022D2 8E 05            [24]  994 	mov	ar5,r6
      0022D4 90 03 6A         [24]  995 	mov	dptr,#_spi_control_write_PARM_2
      0022D7 74 04            [12]  996 	mov	a,#0x04
      0022D9 F0               [24]  997 	movx	@dptr,a
      0022DA 90 03 6B         [24]  998 	mov	dptr,#_spi_control_write_PARM_3
      0022DD ED               [12]  999 	mov	a,r5
      0022DE F0               [24] 1000 	movx	@dptr,a
      0022DF 75 82 00         [24] 1001 	mov	dpl, #0x00
      0022E2 C0 07            [24] 1002 	push	ar7
      0022E4 C0 06            [24] 1003 	push	ar6
      0022E6 12 2F 53         [24] 1004 	lcall	_spi_control_write
      0022E9 D0 06            [24] 1005 	pop	ar6
      0022EB D0 07            [24] 1006 	pop	ar7
                                   1007 ;	Eth.c:96: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      0022ED 8F 06            [24] 1008 	mov	ar6,r7
      0022EF 90 03 6A         [24] 1009 	mov	dptr,#_spi_control_write_PARM_2
      0022F2 74 05            [12] 1010 	mov	a,#0x05
      0022F4 F0               [24] 1011 	movx	@dptr,a
      0022F5 90 03 6B         [24] 1012 	mov	dptr,#_spi_control_write_PARM_3
      0022F8 EE               [12] 1013 	mov	a,r6
      0022F9 F0               [24] 1014 	movx	@dptr,a
      0022FA 75 82 00         [24] 1015 	mov	dpl, #0x00
      0022FD 12 2F 53         [24] 1016 	lcall	_spi_control_write
                                   1017 ;	Eth.c:99: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      002300 90 01 0A         [24] 1018 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002303 E0               [24] 1019 	movx	a,@dptr
      002304 FE               [12] 1020 	mov	r6,a
      002305 A3               [24] 1021 	inc	dptr
      002306 E0               [24] 1022 	movx	a,@dptr
      002307 FF               [12] 1023 	mov	r7,a
      002308 8E 05            [24] 1024 	mov	ar5,r6
      00230A 90 03 6A         [24] 1025 	mov	dptr,#_spi_control_write_PARM_2
      00230D 74 06            [12] 1026 	mov	a,#0x06
      00230F F0               [24] 1027 	movx	@dptr,a
      002310 90 03 6B         [24] 1028 	mov	dptr,#_spi_control_write_PARM_3
      002313 ED               [12] 1029 	mov	a,r5
      002314 F0               [24] 1030 	movx	@dptr,a
      002315 75 82 00         [24] 1031 	mov	dpl, #0x00
      002318 C0 07            [24] 1032 	push	ar7
      00231A C0 06            [24] 1033 	push	ar6
      00231C 12 2F 53         [24] 1034 	lcall	_spi_control_write
      00231F D0 06            [24] 1035 	pop	ar6
      002321 D0 07            [24] 1036 	pop	ar7
                                   1037 ;	Eth.c:100: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      002323 8F 06            [24] 1038 	mov	ar6,r7
      002325 90 03 6A         [24] 1039 	mov	dptr,#_spi_control_write_PARM_2
      002328 74 07            [12] 1040 	mov	a,#0x07
      00232A F0               [24] 1041 	movx	@dptr,a
      00232B 90 03 6B         [24] 1042 	mov	dptr,#_spi_control_write_PARM_3
      00232E EE               [12] 1043 	mov	a,r6
      00232F F0               [24] 1044 	movx	@dptr,a
      002330 75 82 00         [24] 1045 	mov	dpl, #0x00
                                   1046 ;	Eth.c:101: }
      002333 02 2F 53         [24] 1047 	ljmp	_spi_control_write
                                   1048 ;------------------------------------------------------------
                                   1049 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                   1050 ;------------------------------------------------------------
                                   1051 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_78'
                                   1052 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_79'
                                   1053 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_80'
                                   1054 ;------------------------------------------------------------
                                   1055 ;	Eth.c:103: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                   1056 ;	-----------------------------------------
                                   1057 ;	 function wait_for_transmission_complete
                                   1058 ;	-----------------------------------------
      002336                       1059 _wait_for_transmission_complete:
      002336 AF 83            [24] 1060 	mov	r7,dph
      002338 E5 82            [12] 1061 	mov	a,dpl
      00233A 90 01 0E         [24] 1062 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_78
      00233D F0               [24] 1063 	movx	@dptr,a
      00233E EF               [12] 1064 	mov	a,r7
      00233F A3               [24] 1065 	inc	dptr
      002340 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	Eth.c:107: while (elapsed < timeout_ms) {
      002341 90 01 0E         [24] 1068 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_78
      002344 E0               [24] 1069 	movx	a,@dptr
      002345 FE               [12] 1070 	mov	r6,a
      002346 A3               [24] 1071 	inc	dptr
      002347 E0               [24] 1072 	movx	a,@dptr
      002348 FF               [12] 1073 	mov	r7,a
      002349 7C 00            [12] 1074 	mov	r4,#0x00
      00234B 7D 00            [12] 1075 	mov	r5,#0x00
      00234D                       1076 00103$:
      00234D C3               [12] 1077 	clr	c
      00234E EC               [12] 1078 	mov	a,r4
      00234F 9E               [12] 1079 	subb	a,r6
      002350 ED               [12] 1080 	mov	a,r5
      002351 9F               [12] 1081 	subb	a,r7
      002352 50 41            [24] 1082 	jnc	00105$
                                   1083 ;	Eth.c:108: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      002354 90 03 73         [24] 1084 	mov	dptr,#_mac_spi_read_PARM_2
      002357 E4               [12] 1085 	clr	a
      002358 F0               [24] 1086 	movx	@dptr,a
      002359 75 82 1F         [24] 1087 	mov	dpl, #0x1f
      00235C C0 07            [24] 1088 	push	ar7
      00235E C0 06            [24] 1089 	push	ar6
      002360 C0 05            [24] 1090 	push	ar5
      002362 C0 04            [24] 1091 	push	ar4
      002364 12 30 C9         [24] 1092 	lcall	_mac_spi_read
      002367 E5 82            [12] 1093 	mov	a, dpl
      002369 D0 04            [24] 1094 	pop	ar4
      00236B D0 05            [24] 1095 	pop	ar5
      00236D D0 06            [24] 1096 	pop	ar6
      00236F D0 07            [24] 1097 	pop	ar7
                                   1098 ;	Eth.c:109: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      002371 20 E3 04         [24] 1099 	jb	acc.3,00102$
                                   1100 ;	Eth.c:110: return true;  // Transmission completed
      002374 75 82 01         [24] 1101 	mov	dpl, #0x01
      002377 22               [24] 1102 	ret
      002378                       1103 00102$:
                                   1104 ;	Eth.c:113: delay_ms(1);  // Wait 1 ms
      002378 90 00 01         [24] 1105 	mov	dptr,#0x0001
      00237B C0 07            [24] 1106 	push	ar7
      00237D C0 06            [24] 1107 	push	ar6
      00237F C0 05            [24] 1108 	push	ar5
      002381 C0 04            [24] 1109 	push	ar4
      002383 12 20 CC         [24] 1110 	lcall	_delay_ms
      002386 D0 04            [24] 1111 	pop	ar4
      002388 D0 05            [24] 1112 	pop	ar5
      00238A D0 06            [24] 1113 	pop	ar6
      00238C D0 07            [24] 1114 	pop	ar7
                                   1115 ;	Eth.c:114: elapsed++;
      00238E 0C               [12] 1116 	inc	r4
      00238F BC 00 BB         [24] 1117 	cjne	r4,#0x00,00103$
      002392 0D               [12] 1118 	inc	r5
      002393 80 B8            [24] 1119 	sjmp	00103$
      002395                       1120 00105$:
                                   1121 ;	Eth.c:117: return false;  // Timed out
      002395 75 82 00         [24] 1122 	mov	dpl, #0x00
                                   1123 ;	Eth.c:118: }
      002398 22               [24] 1124 	ret
                                   1125 ;------------------------------------------------------------
                                   1126 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                   1127 ;------------------------------------------------------------
                                   1128 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_82'
                                   1129 ;------------------------------------------------------------
                                   1130 ;	Eth.c:120: bool enc28j60_transmission_successful()
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function enc28j60_transmission_successful
                                   1133 ;	-----------------------------------------
      002399                       1134 _enc28j60_transmission_successful:
                                   1135 ;	Eth.c:122: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      002399 90 03 73         [24] 1136 	mov	dptr,#_mac_spi_read_PARM_2
      00239C E4               [12] 1137 	clr	a
      00239D F0               [24] 1138 	movx	@dptr,a
      00239E 75 82 1D         [24] 1139 	mov	dpl, #0x1d
      0023A1 12 30 C9         [24] 1140 	lcall	_mac_spi_read
                                   1141 ;	Eth.c:123: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      0023A4 E5 82            [12] 1142 	mov	a,dpl
      0023A6 03               [12] 1143 	rr	a
      0023A7 54 01            [12] 1144 	anl	a,#0x01
      0023A9 B4 01 00         [24] 1145 	cjne	a,#0x01,00103$
      0023AC                       1146 00103$:
      0023AC 92 00            [24] 1147 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      0023AE E4               [12] 1148 	clr	a
      0023AF 33               [12] 1149 	rlc	a
      0023B0 F5 82            [12] 1150 	mov	dpl, a
                                   1151 ;	Eth.c:124: }
      0023B2 22               [24] 1152 	ret
                                   1153 ;------------------------------------------------------------
                                   1154 ;Allocation info for local variables in function 'send_arp_request'
                                   1155 ;------------------------------------------------------------
                                   1156 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_84'
                                   1157 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_84'
                                   1158 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_84'
                                   1159 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_84'
                                   1160 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_84'
                                   1161 ;i                         Allocated with name '_send_arp_request_i_20000_85'
                                   1162 ;i                         Allocated with name '_send_arp_request_i_20000_87'
                                   1163 ;i                         Allocated with name '_send_arp_request_i_20000_89'
                                   1164 ;i                         Allocated with name '_send_arp_request_i_20000_91'
                                   1165 ;i                         Allocated with name '_send_arp_request_i_20000_93'
                                   1166 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_95'
                                   1167 ;start_address             Allocated with name '_send_arp_request_start_address_10001_95'
                                   1168 ;end_address               Allocated with name '_send_arp_request_end_address_10002_97'
                                   1169 ;------------------------------------------------------------
                                   1170 ;	Eth.c:127: void send_arp_request(void)
                                   1171 ;	-----------------------------------------
                                   1172 ;	 function send_arp_request
                                   1173 ;	-----------------------------------------
      0023B3                       1174 _send_arp_request:
                                   1175 ;	Eth.c:130: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      0023B3 90 01 10         [24] 1176 	mov	dptr,#_send_arp_request_source_mac_10000_84
      0023B6 74 02            [12] 1177 	mov	a,#0x02
      0023B8 F0               [24] 1178 	movx	@dptr,a
      0023B9 90 01 11         [24] 1179 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0001)
      0023BC 74 11            [12] 1180 	mov	a,#0x11
      0023BE F0               [24] 1181 	movx	@dptr,a
      0023BF 90 01 12         [24] 1182 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0002)
      0023C2 23               [12] 1183 	rl	a
      0023C3 F0               [24] 1184 	movx	@dptr,a
      0023C4 90 01 13         [24] 1185 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0003)
      0023C7 74 33            [12] 1186 	mov	a,#0x33
      0023C9 F0               [24] 1187 	movx	@dptr,a
      0023CA 90 01 14         [24] 1188 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0004)
      0023CD 74 44            [12] 1189 	mov	a,#0x44
      0023CF F0               [24] 1190 	movx	@dptr,a
      0023D0 90 01 15         [24] 1191 	mov	dptr,#(_send_arp_request_source_mac_10000_84 + 0x0005)
      0023D3 74 55            [12] 1192 	mov	a,#0x55
      0023D5 F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	Eth.c:131: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      0023D6 90 01 16         [24] 1195 	mov	dptr,#_send_arp_request_dest_mac_10000_84
      0023D9 74 F8            [12] 1196 	mov	a,#0xf8
      0023DB F0               [24] 1197 	movx	@dptr,a
      0023DC 90 01 17         [24] 1198 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0001)
      0023DF 74 75            [12] 1199 	mov	a,#0x75
      0023E1 F0               [24] 1200 	movx	@dptr,a
      0023E2 90 01 18         [24] 1201 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0002)
      0023E5 74 A4            [12] 1202 	mov	a,#0xa4
      0023E7 F0               [24] 1203 	movx	@dptr,a
      0023E8 90 01 19         [24] 1204 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0003)
      0023EB 74 8C            [12] 1205 	mov	a,#0x8c
      0023ED F0               [24] 1206 	movx	@dptr,a
      0023EE 90 01 1A         [24] 1207 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0004)
      0023F1 74 41            [12] 1208 	mov	a,#0x41
      0023F3 F0               [24] 1209 	movx	@dptr,a
      0023F4 90 01 1B         [24] 1210 	mov	dptr,#(_send_arp_request_dest_mac_10000_84 + 0x0005)
      0023F7 74 31            [12] 1211 	mov	a,#0x31
      0023F9 F0               [24] 1212 	movx	@dptr,a
                                   1213 ;	Eth.c:132: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      0023FA 90 01 1C         [24] 1214 	mov	dptr,#_send_arp_request_source_ip_10000_84
      0023FD 74 C0            [12] 1215 	mov	a,#0xc0
      0023FF F0               [24] 1216 	movx	@dptr,a
      002400 90 01 1D         [24] 1217 	mov	dptr,#(_send_arp_request_source_ip_10000_84 + 0x0001)
      002403 74 A8            [12] 1218 	mov	a,#0xa8
      002405 F0               [24] 1219 	movx	@dptr,a
      002406 90 01 1E         [24] 1220 	mov	dptr,#(_send_arp_request_source_ip_10000_84 + 0x0002)
      002409 74 01            [12] 1221 	mov	a,#0x01
      00240B F0               [24] 1222 	movx	@dptr,a
      00240C 90 01 1F         [24] 1223 	mov	dptr,#(_send_arp_request_source_ip_10000_84 + 0x0003)
      00240F 74 64            [12] 1224 	mov	a,#0x64
      002411 F0               [24] 1225 	movx	@dptr,a
                                   1226 ;	Eth.c:133: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      002412 90 01 20         [24] 1227 	mov	dptr,#_send_arp_request_target_ip_10000_84
      002415 74 C0            [12] 1228 	mov	a,#0xc0
      002417 F0               [24] 1229 	movx	@dptr,a
      002418 90 01 21         [24] 1230 	mov	dptr,#(_send_arp_request_target_ip_10000_84 + 0x0001)
      00241B 74 A8            [12] 1231 	mov	a,#0xa8
      00241D F0               [24] 1232 	movx	@dptr,a
      00241E 90 01 22         [24] 1233 	mov	dptr,#(_send_arp_request_target_ip_10000_84 + 0x0002)
      002421 74 01            [12] 1234 	mov	a,#0x01
      002423 F0               [24] 1235 	movx	@dptr,a
      002424 90 01 23         [24] 1236 	mov	dptr,#(_send_arp_request_target_ip_10000_84 + 0x0003)
      002427 F0               [24] 1237 	movx	@dptr,a
                                   1238 ;	Eth.c:137: arp_packet[0] = 0x0E;
      002428 90 01 24         [24] 1239 	mov	dptr,#_send_arp_request_arp_packet_10000_84
      00242B 74 0E            [12] 1240 	mov	a,#0x0e
      00242D F0               [24] 1241 	movx	@dptr,a
                                   1242 ;	Eth.c:141: set_mac_address(source_mac);
      00242E 90 01 10         [24] 1243 	mov	dptr,#_send_arp_request_source_mac_10000_84
      002431 75 F0 00         [24] 1244 	mov	b, #0x00
      002434 12 20 62         [24] 1245 	lcall	_set_mac_address
                                   1246 ;	Eth.c:143: for (int i = 0; i < 6; i++)
      002437 7E 00            [12] 1247 	mov	r6,#0x00
      002439 7F 00            [12] 1248 	mov	r7,#0x00
      00243B                       1249 00115$:
      00243B C3               [12] 1250 	clr	c
      00243C EE               [12] 1251 	mov	a,r6
      00243D 94 06            [12] 1252 	subb	a,#0x06
      00243F EF               [12] 1253 	mov	a,r7
      002440 64 80            [12] 1254 	xrl	a,#0x80
      002442 94 80            [12] 1255 	subb	a,#0x80
      002444 50 48            [24] 1256 	jnc	00101$
                                   1257 ;	Eth.c:145: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      002446 8E 05            [24] 1258 	mov	ar5,r6
      002448 ED               [12] 1259 	mov	a,r5
      002449 04               [12] 1260 	inc	a
      00244A FC               [12] 1261 	mov	r4,a
      00244B 33               [12] 1262 	rlc	a
      00244C 95 E0            [12] 1263 	subb	a,acc
      00244E FB               [12] 1264 	mov	r3,a
      00244F EC               [12] 1265 	mov	a,r4
      002450 24 24            [12] 1266 	add	a, #_send_arp_request_arp_packet_10000_84
      002452 FC               [12] 1267 	mov	r4,a
      002453 EB               [12] 1268 	mov	a,r3
      002454 34 01            [12] 1269 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002456 FB               [12] 1270 	mov	r3,a
      002457 EE               [12] 1271 	mov	a,r6
      002458 24 16            [12] 1272 	add	a, #_send_arp_request_dest_mac_10000_84
      00245A F5 82            [12] 1273 	mov	dpl,a
      00245C EF               [12] 1274 	mov	a,r7
      00245D 34 01            [12] 1275 	addc	a, #(_send_arp_request_dest_mac_10000_84 >> 8)
      00245F F5 83            [12] 1276 	mov	dph,a
      002461 E0               [24] 1277 	movx	a,@dptr
      002462 8C 82            [24] 1278 	mov	dpl,r4
      002464 8B 83            [24] 1279 	mov	dph,r3
      002466 F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	Eth.c:146: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      002467 74 07            [12] 1282 	mov	a,#0x07
      002469 2D               [12] 1283 	add	a, r5
      00246A FD               [12] 1284 	mov	r5,a
      00246B 33               [12] 1285 	rlc	a
      00246C 95 E0            [12] 1286 	subb	a,acc
      00246E FC               [12] 1287 	mov	r4,a
      00246F ED               [12] 1288 	mov	a,r5
      002470 24 24            [12] 1289 	add	a, #_send_arp_request_arp_packet_10000_84
      002472 FD               [12] 1290 	mov	r5,a
      002473 EC               [12] 1291 	mov	a,r4
      002474 34 01            [12] 1292 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002476 FC               [12] 1293 	mov	r4,a
      002477 EE               [12] 1294 	mov	a,r6
      002478 24 10            [12] 1295 	add	a, #_send_arp_request_source_mac_10000_84
      00247A F5 82            [12] 1296 	mov	dpl,a
      00247C EF               [12] 1297 	mov	a,r7
      00247D 34 01            [12] 1298 	addc	a, #(_send_arp_request_source_mac_10000_84 >> 8)
      00247F F5 83            [12] 1299 	mov	dph,a
      002481 E0               [24] 1300 	movx	a,@dptr
      002482 8D 82            [24] 1301 	mov	dpl,r5
      002484 8C 83            [24] 1302 	mov	dph,r4
      002486 F0               [24] 1303 	movx	@dptr,a
                                   1304 ;	Eth.c:143: for (int i = 0; i < 6; i++)
      002487 0E               [12] 1305 	inc	r6
      002488 BE 00 B0         [24] 1306 	cjne	r6,#0x00,00115$
      00248B 0F               [12] 1307 	inc	r7
      00248C 80 AD            [24] 1308 	sjmp	00115$
      00248E                       1309 00101$:
                                   1310 ;	Eth.c:150: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      00248E 90 01 31         [24] 1311 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000d)
      002491 74 08            [12] 1312 	mov	a,#0x08
      002493 F0               [24] 1313 	movx	@dptr,a
                                   1314 ;	Eth.c:151: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      002494 90 01 32         [24] 1315 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000e)
      002497 74 06            [12] 1316 	mov	a,#0x06
      002499 F0               [24] 1317 	movx	@dptr,a
                                   1318 ;	Eth.c:155: arp_packet[15] = 0x00;
      00249A 90 01 33         [24] 1319 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000f)
      00249D E4               [12] 1320 	clr	a
      00249E F0               [24] 1321 	movx	@dptr,a
                                   1322 ;	Eth.c:156: arp_packet[16] = 0x01;
      00249F 90 01 34         [24] 1323 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0010)
      0024A2 04               [12] 1324 	inc	a
      0024A3 F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	Eth.c:159: arp_packet[17] = 0x08;
      0024A4 90 01 35         [24] 1327 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0011)
      0024A7 74 08            [12] 1328 	mov	a,#0x08
      0024A9 F0               [24] 1329 	movx	@dptr,a
                                   1330 ;	Eth.c:160: arp_packet[18] = 0x00;
      0024AA 90 01 36         [24] 1331 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0012)
      0024AD E4               [12] 1332 	clr	a
      0024AE F0               [24] 1333 	movx	@dptr,a
                                   1334 ;	Eth.c:163: arp_packet[19] = 0x06;
      0024AF 90 01 37         [24] 1335 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0013)
      0024B2 74 06            [12] 1336 	mov	a,#0x06
      0024B4 F0               [24] 1337 	movx	@dptr,a
                                   1338 ;	Eth.c:166: arp_packet[20] = 0x04;
      0024B5 90 01 38         [24] 1339 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0014)
      0024B8 74 04            [12] 1340 	mov	a,#0x04
      0024BA F0               [24] 1341 	movx	@dptr,a
                                   1342 ;	Eth.c:169: arp_packet[21] = 0x00;
      0024BB 90 01 39         [24] 1343 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0015)
      0024BE E4               [12] 1344 	clr	a
      0024BF F0               [24] 1345 	movx	@dptr,a
                                   1346 ;	Eth.c:170: arp_packet[22] = 0x01;
      0024C0 90 01 3A         [24] 1347 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0016)
      0024C3 04               [12] 1348 	inc	a
      0024C4 F0               [24] 1349 	movx	@dptr,a
                                   1350 ;	Eth.c:173: for (int i = 0; i < 6; i++) {
      0024C5 7E 00            [12] 1351 	mov	r6,#0x00
      0024C7 7F 00            [12] 1352 	mov	r7,#0x00
      0024C9                       1353 00118$:
      0024C9 C3               [12] 1354 	clr	c
      0024CA EE               [12] 1355 	mov	a,r6
      0024CB 94 06            [12] 1356 	subb	a,#0x06
      0024CD EF               [12] 1357 	mov	a,r7
      0024CE 64 80            [12] 1358 	xrl	a,#0x80
      0024D0 94 80            [12] 1359 	subb	a,#0x80
      0024D2 50 29            [24] 1360 	jnc	00102$
                                   1361 ;	Eth.c:174: arp_packet[23 + i] = source_mac[i];
      0024D4 8E 05            [24] 1362 	mov	ar5,r6
      0024D6 74 17            [12] 1363 	mov	a,#0x17
      0024D8 2D               [12] 1364 	add	a, r5
      0024D9 FD               [12] 1365 	mov	r5,a
      0024DA 33               [12] 1366 	rlc	a
      0024DB 95 E0            [12] 1367 	subb	a,acc
      0024DD FC               [12] 1368 	mov	r4,a
      0024DE ED               [12] 1369 	mov	a,r5
      0024DF 24 24            [12] 1370 	add	a, #_send_arp_request_arp_packet_10000_84
      0024E1 FD               [12] 1371 	mov	r5,a
      0024E2 EC               [12] 1372 	mov	a,r4
      0024E3 34 01            [12] 1373 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      0024E5 FC               [12] 1374 	mov	r4,a
      0024E6 EE               [12] 1375 	mov	a,r6
      0024E7 24 10            [12] 1376 	add	a, #_send_arp_request_source_mac_10000_84
      0024E9 F5 82            [12] 1377 	mov	dpl,a
      0024EB EF               [12] 1378 	mov	a,r7
      0024EC 34 01            [12] 1379 	addc	a, #(_send_arp_request_source_mac_10000_84 >> 8)
      0024EE F5 83            [12] 1380 	mov	dph,a
      0024F0 E0               [24] 1381 	movx	a,@dptr
      0024F1 8D 82            [24] 1382 	mov	dpl,r5
      0024F3 8C 83            [24] 1383 	mov	dph,r4
      0024F5 F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	Eth.c:173: for (int i = 0; i < 6; i++) {
      0024F6 0E               [12] 1386 	inc	r6
      0024F7 BE 00 CF         [24] 1387 	cjne	r6,#0x00,00118$
      0024FA 0F               [12] 1388 	inc	r7
      0024FB 80 CC            [24] 1389 	sjmp	00118$
      0024FD                       1390 00102$:
                                   1391 ;	Eth.c:178: for (int i = 0; i < 4; i++) {
      0024FD 7E 00            [12] 1392 	mov	r6,#0x00
      0024FF 7F 00            [12] 1393 	mov	r7,#0x00
      002501                       1394 00121$:
      002501 C3               [12] 1395 	clr	c
      002502 EE               [12] 1396 	mov	a,r6
      002503 94 04            [12] 1397 	subb	a,#0x04
      002505 EF               [12] 1398 	mov	a,r7
      002506 64 80            [12] 1399 	xrl	a,#0x80
      002508 94 80            [12] 1400 	subb	a,#0x80
      00250A 50 29            [24] 1401 	jnc	00103$
                                   1402 ;	Eth.c:179: arp_packet[29 + i] = source_ip[i];
      00250C 8E 05            [24] 1403 	mov	ar5,r6
      00250E 74 1D            [12] 1404 	mov	a,#0x1d
      002510 2D               [12] 1405 	add	a, r5
      002511 FD               [12] 1406 	mov	r5,a
      002512 33               [12] 1407 	rlc	a
      002513 95 E0            [12] 1408 	subb	a,acc
      002515 FC               [12] 1409 	mov	r4,a
      002516 ED               [12] 1410 	mov	a,r5
      002517 24 24            [12] 1411 	add	a, #_send_arp_request_arp_packet_10000_84
      002519 FD               [12] 1412 	mov	r5,a
      00251A EC               [12] 1413 	mov	a,r4
      00251B 34 01            [12] 1414 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      00251D FC               [12] 1415 	mov	r4,a
      00251E EE               [12] 1416 	mov	a,r6
      00251F 24 1C            [12] 1417 	add	a, #_send_arp_request_source_ip_10000_84
      002521 F5 82            [12] 1418 	mov	dpl,a
      002523 EF               [12] 1419 	mov	a,r7
      002524 34 01            [12] 1420 	addc	a, #(_send_arp_request_source_ip_10000_84 >> 8)
      002526 F5 83            [12] 1421 	mov	dph,a
      002528 E0               [24] 1422 	movx	a,@dptr
      002529 8D 82            [24] 1423 	mov	dpl,r5
      00252B 8C 83            [24] 1424 	mov	dph,r4
      00252D F0               [24] 1425 	movx	@dptr,a
                                   1426 ;	Eth.c:178: for (int i = 0; i < 4; i++) {
      00252E 0E               [12] 1427 	inc	r6
      00252F BE 00 CF         [24] 1428 	cjne	r6,#0x00,00121$
      002532 0F               [12] 1429 	inc	r7
      002533 80 CC            [24] 1430 	sjmp	00121$
      002535                       1431 00103$:
                                   1432 ;	Eth.c:183: for (int i = 0; i < 6; i++) {
      002535 7F 00            [12] 1433 	mov	r7,#0x00
      002537                       1434 00124$:
      002537 BF 06 00         [24] 1435 	cjne	r7,#0x06,00215$
      00253A                       1436 00215$:
      00253A 50 19            [24] 1437 	jnc	00104$
                                   1438 ;	Eth.c:184: arp_packet[33 + i] = 0x00;
      00253C 8F 06            [24] 1439 	mov	ar6,r7
      00253E 74 21            [12] 1440 	mov	a,#0x21
      002540 2E               [12] 1441 	add	a, r6
      002541 FE               [12] 1442 	mov	r6,a
      002542 33               [12] 1443 	rlc	a
      002543 95 E0            [12] 1444 	subb	a,acc
      002545 FD               [12] 1445 	mov	r5,a
      002546 EE               [12] 1446 	mov	a,r6
      002547 24 24            [12] 1447 	add	a, #_send_arp_request_arp_packet_10000_84
      002549 F5 82            [12] 1448 	mov	dpl,a
      00254B ED               [12] 1449 	mov	a,r5
      00254C 34 01            [12] 1450 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      00254E F5 83            [12] 1451 	mov	dph,a
      002550 E4               [12] 1452 	clr	a
      002551 F0               [24] 1453 	movx	@dptr,a
                                   1454 ;	Eth.c:183: for (int i = 0; i < 6; i++) {
      002552 0F               [12] 1455 	inc	r7
      002553 80 E2            [24] 1456 	sjmp	00124$
      002555                       1457 00104$:
                                   1458 ;	Eth.c:188: for (int i = 0; i < 4; i++) {
      002555 7E 00            [12] 1459 	mov	r6,#0x00
      002557 7F 00            [12] 1460 	mov	r7,#0x00
      002559                       1461 00127$:
      002559 C3               [12] 1462 	clr	c
      00255A EE               [12] 1463 	mov	a,r6
      00255B 94 04            [12] 1464 	subb	a,#0x04
      00255D EF               [12] 1465 	mov	a,r7
      00255E 64 80            [12] 1466 	xrl	a,#0x80
      002560 94 80            [12] 1467 	subb	a,#0x80
      002562 50 29            [24] 1468 	jnc	00105$
                                   1469 ;	Eth.c:189: arp_packet[39 + i] = target_ip[i];
      002564 8E 05            [24] 1470 	mov	ar5,r6
      002566 74 27            [12] 1471 	mov	a,#0x27
      002568 2D               [12] 1472 	add	a, r5
      002569 FD               [12] 1473 	mov	r5,a
      00256A 33               [12] 1474 	rlc	a
      00256B 95 E0            [12] 1475 	subb	a,acc
      00256D FC               [12] 1476 	mov	r4,a
      00256E ED               [12] 1477 	mov	a,r5
      00256F 24 24            [12] 1478 	add	a, #_send_arp_request_arp_packet_10000_84
      002571 FD               [12] 1479 	mov	r5,a
      002572 EC               [12] 1480 	mov	a,r4
      002573 34 01            [12] 1481 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002575 FC               [12] 1482 	mov	r4,a
      002576 EE               [12] 1483 	mov	a,r6
      002577 24 20            [12] 1484 	add	a, #_send_arp_request_target_ip_10000_84
      002579 F5 82            [12] 1485 	mov	dpl,a
      00257B EF               [12] 1486 	mov	a,r7
      00257C 34 01            [12] 1487 	addc	a, #(_send_arp_request_target_ip_10000_84 >> 8)
      00257E F5 83            [12] 1488 	mov	dph,a
      002580 E0               [24] 1489 	movx	a,@dptr
      002581 8D 82            [24] 1490 	mov	dpl,r5
      002583 8C 83            [24] 1491 	mov	dph,r4
      002585 F0               [24] 1492 	movx	@dptr,a
                                   1493 ;	Eth.c:188: for (int i = 0; i < 4; i++) {
      002586 0E               [12] 1494 	inc	r6
      002587 BE 00 CF         [24] 1495 	cjne	r6,#0x00,00127$
      00258A 0F               [12] 1496 	inc	r7
      00258B 80 CC            [24] 1497 	sjmp	00127$
      00258D                       1498 00105$:
                                   1499 ;	Eth.c:191: arp_packet[44] = 'A';
      00258D 90 01 50         [24] 1500 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x002c)
      002590 74 41            [12] 1501 	mov	a,#0x41
      002592 F0               [24] 1502 	movx	@dptr,a
                                   1503 ;	Eth.c:192: arp_packet[45] = 'B';
      002593 90 01 51         [24] 1504 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x002d)
      002596 04               [12] 1505 	inc	a
      002597 F0               [24] 1506 	movx	@dptr,a
                                   1507 ;	Eth.c:193: arp_packet[46] = 'H';
      002598 90 01 52         [24] 1508 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x002e)
      00259B 74 48            [12] 1509 	mov	a,#0x48
      00259D F0               [24] 1510 	movx	@dptr,a
                                   1511 ;	Eth.c:194: arp_packet[47] = 'I';
      00259E 90 01 53         [24] 1512 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x002f)
      0025A1 04               [12] 1513 	inc	a
      0025A2 F0               [24] 1514 	movx	@dptr,a
                                   1515 ;	Eth.c:195: arp_packet[48] = 'S';
      0025A3 90 01 54         [24] 1516 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0030)
      0025A6 74 53            [12] 1517 	mov	a,#0x53
      0025A8 F0               [24] 1518 	movx	@dptr,a
                                   1519 ;	Eth.c:196: arp_packet[49] = 'H';
      0025A9 90 01 55         [24] 1520 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0031)
      0025AC 74 48            [12] 1521 	mov	a,#0x48
      0025AE F0               [24] 1522 	movx	@dptr,a
                                   1523 ;	Eth.c:197: arp_packet[50] = 'E';
      0025AF 90 01 56         [24] 1524 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0032)
      0025B2 74 45            [12] 1525 	mov	a,#0x45
      0025B4 F0               [24] 1526 	movx	@dptr,a
                                   1527 ;	Eth.c:198: arp_packet[51] = 'K';
      0025B5 90 01 57         [24] 1528 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0033)
      0025B8 74 4B            [12] 1529 	mov	a,#0x4b
      0025BA F0               [24] 1530 	movx	@dptr,a
                                   1531 ;	Eth.c:209: spi_buffer_write(frame_size, start_address, arp_packet);
      0025BB 90 03 84         [24] 1532 	mov	dptr,#_spi_buffer_write_PARM_2
      0025BE 74 F0            [12] 1533 	mov	a,#0xf0
      0025C0 F0               [24] 1534 	movx	@dptr,a
      0025C1 E4               [12] 1535 	clr	a
      0025C2 A3               [24] 1536 	inc	dptr
      0025C3 F0               [24] 1537 	movx	@dptr,a
      0025C4 90 03 86         [24] 1538 	mov	dptr,#_spi_buffer_write_PARM_3
      0025C7 74 24            [12] 1539 	mov	a,#_send_arp_request_arp_packet_10000_84
      0025C9 F0               [24] 1540 	movx	@dptr,a
      0025CA 74 01            [12] 1541 	mov	a,#(_send_arp_request_arp_packet_10000_84 >> 8)
      0025CC A3               [24] 1542 	inc	dptr
      0025CD F0               [24] 1543 	movx	@dptr,a
      0025CE E4               [12] 1544 	clr	a
      0025CF A3               [24] 1545 	inc	dptr
      0025D0 F0               [24] 1546 	movx	@dptr,a
      0025D1 90 00 33         [24] 1547 	mov	dptr,#0x0033
      0025D4 12 34 CF         [24] 1548 	lcall	_spi_buffer_write
                                   1549 ;	Eth.c:212: enc28j60_set_transmit_pointers(start_address, end_address);
      0025D7 90 01 0A         [24] 1550 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0025DA 74 22            [12] 1551 	mov	a,#0x22
      0025DC F0               [24] 1552 	movx	@dptr,a
      0025DD 74 01            [12] 1553 	mov	a,#0x01
      0025DF A3               [24] 1554 	inc	dptr
      0025E0 F0               [24] 1555 	movx	@dptr,a
      0025E1 90 00 F0         [24] 1556 	mov	dptr,#0x00f0
      0025E4 12 22 BF         [24] 1557 	lcall	_enc28j60_set_transmit_pointers
                                   1558 ;	Eth.c:215: enc28j60_start_transmission();
      0025E7 12 21 4D         [24] 1559 	lcall	_enc28j60_start_transmission
                                   1560 ;	Eth.c:218: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      0025EA 90 01 F4         [24] 1561 	mov	dptr,#0x01f4
      0025ED 12 23 36         [24] 1562 	lcall	_wait_for_transmission_complete
      0025F0 E5 82            [12] 1563 	mov	a, dpl
      0025F2 60 33            [24] 1564 	jz	00112$
                                   1565 ;	Eth.c:220: if (enc28j60_transmission_successful()) {
      0025F4 12 23 99         [24] 1566 	lcall	_enc28j60_transmission_successful
      0025F7 E5 82            [12] 1567 	mov	a, dpl
      0025F9 60 16            [24] 1568 	jz	00109$
                                   1569 ;	Eth.c:221: printf("ARP request sent successfully.\n\r");
      0025FB 74 FE            [12] 1570 	mov	a,#___str_3
      0025FD C0 E0            [24] 1571 	push	acc
      0025FF 74 43            [12] 1572 	mov	a,#(___str_3 >> 8)
      002601 C0 E0            [24] 1573 	push	acc
      002603 74 80            [12] 1574 	mov	a,#0x80
      002605 C0 E0            [24] 1575 	push	acc
      002607 12 39 3D         [24] 1576 	lcall	_printf
      00260A 15 81            [12] 1577 	dec	sp
      00260C 15 81            [12] 1578 	dec	sp
      00260E 15 81            [12] 1579 	dec	sp
      002610 22               [24] 1580 	ret
      002611                       1581 00109$:
                                   1582 ;	Eth.c:223: printf("ARP transmission failed. Check error flags.\n\r");
      002611 74 1F            [12] 1583 	mov	a,#___str_4
      002613 C0 E0            [24] 1584 	push	acc
      002615 74 44            [12] 1585 	mov	a,#(___str_4 >> 8)
      002617 C0 E0            [24] 1586 	push	acc
      002619 74 80            [12] 1587 	mov	a,#0x80
      00261B C0 E0            [24] 1588 	push	acc
      00261D 12 39 3D         [24] 1589 	lcall	_printf
      002620 15 81            [12] 1590 	dec	sp
      002622 15 81            [12] 1591 	dec	sp
      002624 15 81            [12] 1592 	dec	sp
      002626 22               [24] 1593 	ret
      002627                       1594 00112$:
                                   1595 ;	Eth.c:226: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      002627 74 4D            [12] 1596 	mov	a,#___str_5
      002629 C0 E0            [24] 1597 	push	acc
      00262B 74 44            [12] 1598 	mov	a,#(___str_5 >> 8)
      00262D C0 E0            [24] 1599 	push	acc
      00262F 74 80            [12] 1600 	mov	a,#0x80
      002631 C0 E0            [24] 1601 	push	acc
      002633 12 39 3D         [24] 1602 	lcall	_printf
      002636 15 81            [12] 1603 	dec	sp
      002638 15 81            [12] 1604 	dec	sp
      00263A 15 81            [12] 1605 	dec	sp
                                   1606 ;	Eth.c:228: }
      00263C 22               [24] 1607 	ret
                                   1608 	.area CSEG    (CODE)
                                   1609 	.area CONST   (CODE)
                                   1610 	.area CONST   (CODE)
      00437F                       1611 ___str_0:
      00437F 49 6E 76 61 6C 69 64  1612 	.ascii "Invalid RX buffer range."
             20 52 58 20 62 75 66
             66 65 72 20 72 61 6E
             67 65 2E
      004397 0A                    1613 	.db 0x0a
      004398 00                    1614 	.db 0x00
                                   1615 	.area CSEG    (CODE)
                                   1616 	.area CONST   (CODE)
      004399                       1617 ___str_1:
      004399 52 58 20 62 75 66 66  1618 	.ascii "RX buffer initialized: 0x%04X to 0x%04X."
             65 72 20 69 6E 69 74
             69 61 6C 69 7A 65 64
             3A 20 30 78 25 30 34
             58 20 74 6F 20 30 78
             25 30 34 58 2E
      0043C1 0A                    1619 	.db 0x0a
      0043C2 00                    1620 	.db 0x00
                                   1621 	.area CSEG    (CODE)
                                   1622 	.area CONST   (CODE)
      0043C3                       1623 ___str_2:
      0043C3 0A                    1624 	.db 0x0a
      0043C4 49 6E 76 61 6C 69 64  1625 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      0043FC 0A                    1626 	.db 0x0a
      0043FD 00                    1627 	.db 0x00
                                   1628 	.area CSEG    (CODE)
                                   1629 	.area CONST   (CODE)
      0043FE                       1630 ___str_3:
      0043FE 41 52 50 20 72 65 71  1631 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      00441C 0A                    1632 	.db 0x0a
      00441D 0D                    1633 	.db 0x0d
      00441E 00                    1634 	.db 0x00
                                   1635 	.area CSEG    (CODE)
                                   1636 	.area CONST   (CODE)
      00441F                       1637 ___str_4:
      00441F 41 52 50 20 74 72 61  1638 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      00444A 0A                    1639 	.db 0x0a
      00444B 0D                    1640 	.db 0x0d
      00444C 00                    1641 	.db 0x00
                                   1642 	.area CSEG    (CODE)
                                   1643 	.area CONST   (CODE)
      00444D                       1644 ___str_5:
      00444D 54 72 61 6E 73 6D 69  1645 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      004489 74 6C 79 2E           1646 	.ascii "tly."
      00448D 0A                    1647 	.db 0x0a
      00448E 0D                    1648 	.db 0x0d
      00448F 00                    1649 	.db 0x00
                                   1650 	.area CSEG    (CODE)
                                   1651 	.area XINIT   (CODE)
      004ACB                       1652 __xinit__source_mac:
      004ACB 02                    1653 	.db #0x02	; 2
      004ACC 11                    1654 	.db #0x11	; 17
      004ACD 22                    1655 	.db #0x22	; 34
      004ACE 33                    1656 	.db #0x33	; 51	'3'
      004ACF 44                    1657 	.db #0x44	; 68	'D'
      004AD0 55                    1658 	.db #0x55	; 85	'U'
      004AD1                       1659 __xinit__dest_mac:
      004AD1 FF                    1660 	.db #0xff	; 255
      004AD2 FF                    1661 	.db #0xff	; 255
      004AD3 FF                    1662 	.db #0xff	; 255
      004AD4 FF                    1663 	.db #0xff	; 255
      004AD5 FF                    1664 	.db #0xff	; 255
      004AD6 FF                    1665 	.db #0xff	; 255
      004AD7                       1666 __xinit__source_ip:
      004AD7 C0                    1667 	.db #0xc0	; 192
      004AD8 A8                    1668 	.db #0xa8	; 168
      004AD9 01                    1669 	.db #0x01	; 1
      004ADA 64                    1670 	.db #0x64	; 100	'd'
      004ADB                       1671 __xinit__target_ip:
      004ADB C0                    1672 	.db #0xc0	; 192
      004ADC A8                    1673 	.db #0xa8	; 168
      004ADD 01                    1674 	.db #0x01	; 1
      004ADE 01                    1675 	.db #0x01	; 1
                                   1676 	.area CABS    (ABS,CODE)

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
      000110                        506 _send_arp_request_arp_packet_10000_84:
      000110                        507 	.ds 42
                                    508 ;--------------------------------------------------------
                                    509 ; absolute external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XABS    (ABS,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; initialized external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XISEG   (XDATA)
      0003AF                        516 _source_mac::
      0003AF                        517 	.ds 6
      0003B5                        518 _dest_mac::
      0003B5                        519 	.ds 6
      0003BB                        520 _source_ip::
      0003BB                        521 	.ds 4
      0003BF                        522 _target_ip::
      0003BF                        523 	.ds 4
                                    524 	.area HOME    (CODE)
                                    525 	.area GSINIT0 (CODE)
                                    526 	.area GSINIT1 (CODE)
                                    527 	.area GSINIT2 (CODE)
                                    528 	.area GSINIT3 (CODE)
                                    529 	.area GSINIT4 (CODE)
                                    530 	.area GSINIT5 (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.area GSFINAL (CODE)
                                    533 	.area CSEG    (CODE)
                                    534 ;--------------------------------------------------------
                                    535 ; global & static initialisations
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.area GSFINAL (CODE)
                                    540 	.area GSINIT  (CODE)
                                    541 ;--------------------------------------------------------
                                    542 ; Home
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area HOME    (CODE)
                                    546 ;--------------------------------------------------------
                                    547 ; code
                                    548 ;--------------------------------------------------------
                                    549 	.area CSEG    (CODE)
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'set_mac_address'
                                    552 ;------------------------------------------------------------
                                    553 ;mac_address               Allocated with name '_set_mac_address_mac_address_10000_65'
                                    554 ;------------------------------------------------------------
                                    555 ;	Eth.c:35: void set_mac_address(uint8_t* mac_address)
                                    556 ;	-----------------------------------------
                                    557 ;	 function set_mac_address
                                    558 ;	-----------------------------------------
      002062                        559 _set_mac_address:
                           000007   560 	ar7 = 0x07
                           000006   561 	ar6 = 0x06
                           000005   562 	ar5 = 0x05
                           000004   563 	ar4 = 0x04
                           000003   564 	ar3 = 0x03
                           000002   565 	ar2 = 0x02
                           000001   566 	ar1 = 0x01
                           000000   567 	ar0 = 0x00
                                    568 ;	Eth.c:41: spi_control_write(3, 0x01, 0x00);  // MAADR6
      002062 90 03 4D         [24]  569 	mov	dptr,#_spi_control_write_PARM_2
      002065 74 01            [12]  570 	mov	a,#0x01
      002067 F0               [24]  571 	movx	@dptr,a
      002068 90 03 4E         [24]  572 	mov	dptr,#_spi_control_write_PARM_3
      00206B E4               [12]  573 	clr	a
      00206C F0               [24]  574 	movx	@dptr,a
      00206D 75 82 03         [24]  575 	mov	dpl, #0x03
      002070 12 2E B0         [24]  576 	lcall	_spi_control_write
                                    577 ;	Eth.c:42: spi_control_write(3, 0x00, 0x11);  // MAADR5
      002073 90 03 4D         [24]  578 	mov	dptr,#_spi_control_write_PARM_2
      002076 E4               [12]  579 	clr	a
      002077 F0               [24]  580 	movx	@dptr,a
      002078 90 03 4E         [24]  581 	mov	dptr,#_spi_control_write_PARM_3
      00207B 74 11            [12]  582 	mov	a,#0x11
      00207D F0               [24]  583 	movx	@dptr,a
      00207E 75 82 03         [24]  584 	mov	dpl, #0x03
      002081 12 2E B0         [24]  585 	lcall	_spi_control_write
                                    586 ;	Eth.c:43: spi_control_write(3, 0x03, 0x22);  // MAADR4
      002084 90 03 4D         [24]  587 	mov	dptr,#_spi_control_write_PARM_2
      002087 74 03            [12]  588 	mov	a,#0x03
      002089 F0               [24]  589 	movx	@dptr,a
      00208A 90 03 4E         [24]  590 	mov	dptr,#_spi_control_write_PARM_3
      00208D 74 22            [12]  591 	mov	a,#0x22
      00208F F0               [24]  592 	movx	@dptr,a
      002090 75 82 03         [24]  593 	mov	dpl, #0x03
      002093 12 2E B0         [24]  594 	lcall	_spi_control_write
                                    595 ;	Eth.c:44: spi_control_write(3, 0x02, 0x33);  // MAADR3
      002096 90 03 4D         [24]  596 	mov	dptr,#_spi_control_write_PARM_2
      002099 74 02            [12]  597 	mov	a,#0x02
      00209B F0               [24]  598 	movx	@dptr,a
      00209C 90 03 4E         [24]  599 	mov	dptr,#_spi_control_write_PARM_3
      00209F 74 33            [12]  600 	mov	a,#0x33
      0020A1 F0               [24]  601 	movx	@dptr,a
      0020A2 75 82 03         [24]  602 	mov	dpl, #0x03
      0020A5 12 2E B0         [24]  603 	lcall	_spi_control_write
                                    604 ;	Eth.c:45: spi_control_write(3, 0x05, 0x44);  // MAADR2
      0020A8 90 03 4D         [24]  605 	mov	dptr,#_spi_control_write_PARM_2
      0020AB 74 05            [12]  606 	mov	a,#0x05
      0020AD F0               [24]  607 	movx	@dptr,a
      0020AE 90 03 4E         [24]  608 	mov	dptr,#_spi_control_write_PARM_3
      0020B1 74 44            [12]  609 	mov	a,#0x44
      0020B3 F0               [24]  610 	movx	@dptr,a
      0020B4 75 82 03         [24]  611 	mov	dpl, #0x03
      0020B7 12 2E B0         [24]  612 	lcall	_spi_control_write
                                    613 ;	Eth.c:46: spi_control_write(3, 0x04, 0x55);  // MAADR1
      0020BA 90 03 4D         [24]  614 	mov	dptr,#_spi_control_write_PARM_2
      0020BD 74 04            [12]  615 	mov	a,#0x04
      0020BF F0               [24]  616 	movx	@dptr,a
      0020C0 90 03 4E         [24]  617 	mov	dptr,#_spi_control_write_PARM_3
      0020C3 74 55            [12]  618 	mov	a,#0x55
      0020C5 F0               [24]  619 	movx	@dptr,a
      0020C6 75 82 03         [24]  620 	mov	dpl, #0x03
                                    621 ;	Eth.c:48: }
      0020C9 02 2E B0         [24]  622 	ljmp	_spi_control_write
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'delay_ms'
                                    625 ;------------------------------------------------------------
                                    626 ;ms                        Allocated with name '_delay_ms_ms_10000_67'
                                    627 ;i                         Allocated with name '_delay_ms_i_20000_69'
                                    628 ;------------------------------------------------------------
                                    629 ;	Eth.c:51: void delay_ms(uint16_t ms)
                                    630 ;	-----------------------------------------
                                    631 ;	 function delay_ms
                                    632 ;	-----------------------------------------
      0020CC                        633 _delay_ms:
      0020CC AF 83            [24]  634 	mov	r7,dph
      0020CE E5 82            [12]  635 	mov	a,dpl
      0020D0 90 01 00         [24]  636 	mov	dptr,#_delay_ms_ms_10000_67
      0020D3 F0               [24]  637 	movx	@dptr,a
      0020D4 EF               [12]  638 	mov	a,r7
      0020D5 A3               [24]  639 	inc	dptr
      0020D6 F0               [24]  640 	movx	@dptr,a
                                    641 ;	Eth.c:53: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      0020D7 90 01 02         [24]  642 	mov	dptr,#_delay_ms_i_20000_69
      0020DA E4               [12]  643 	clr	a
      0020DB F0               [24]  644 	movx	@dptr,a
      0020DC A3               [24]  645 	inc	dptr
      0020DD F0               [24]  646 	movx	@dptr,a
      0020DE A3               [24]  647 	inc	dptr
      0020DF F0               [24]  648 	movx	@dptr,a
      0020E0 A3               [24]  649 	inc	dptr
      0020E1 F0               [24]  650 	movx	@dptr,a
      0020E2 90 01 00         [24]  651 	mov	dptr,#_delay_ms_ms_10000_67
      0020E5 E0               [24]  652 	movx	a,@dptr
      0020E6 FE               [12]  653 	mov	r6,a
      0020E7 A3               [24]  654 	inc	dptr
      0020E8 E0               [24]  655 	movx	a,@dptr
      0020E9 FF               [12]  656 	mov	r7,a
      0020EA                        657 00103$:
      0020EA 90 03 76         [24]  658 	mov	dptr,#__mulint_PARM_2
      0020ED EE               [12]  659 	mov	a,r6
      0020EE F0               [24]  660 	movx	@dptr,a
      0020EF EF               [12]  661 	mov	a,r7
      0020F0 A3               [24]  662 	inc	dptr
      0020F1 F0               [24]  663 	movx	@dptr,a
      0020F2 90 03 E8         [24]  664 	mov	dptr,#0x03e8
      0020F5 C0 07            [24]  665 	push	ar7
      0020F7 C0 06            [24]  666 	push	ar6
      0020F9 12 38 2C         [24]  667 	lcall	__mulint
      0020FC AC 82            [24]  668 	mov	r4, dpl
      0020FE AD 83            [24]  669 	mov	r5, dph
      002100 D0 06            [24]  670 	pop	ar6
      002102 D0 07            [24]  671 	pop	ar7
      002104 90 01 02         [24]  672 	mov	dptr,#_delay_ms_i_20000_69
      002107 E0               [24]  673 	movx	a,@dptr
      002108 F8               [12]  674 	mov	r0,a
      002109 A3               [24]  675 	inc	dptr
      00210A E0               [24]  676 	movx	a,@dptr
      00210B F9               [12]  677 	mov	r1,a
      00210C A3               [24]  678 	inc	dptr
      00210D E0               [24]  679 	movx	a,@dptr
      00210E FA               [12]  680 	mov	r2,a
      00210F A3               [24]  681 	inc	dptr
      002110 E0               [24]  682 	movx	a,@dptr
      002111 FB               [12]  683 	mov	r3,a
      002112 C0 06            [24]  684 	push	ar6
      002114 C0 07            [24]  685 	push	ar7
      002116 7E 00            [12]  686 	mov	r6,#0x00
      002118 7F 00            [12]  687 	mov	r7,#0x00
      00211A C3               [12]  688 	clr	c
      00211B E8               [12]  689 	mov	a,r0
      00211C 9C               [12]  690 	subb	a,r4
      00211D E9               [12]  691 	mov	a,r1
      00211E 9D               [12]  692 	subb	a,r5
      00211F EA               [12]  693 	mov	a,r2
      002120 9E               [12]  694 	subb	a,r6
      002121 EB               [12]  695 	mov	a,r3
      002122 9F               [12]  696 	subb	a,r7
      002123 D0 07            [24]  697 	pop	ar7
      002125 D0 06            [24]  698 	pop	ar6
      002127 50 23            [24]  699 	jnc	00105$
      002129 90 01 02         [24]  700 	mov	dptr,#_delay_ms_i_20000_69
      00212C E0               [24]  701 	movx	a,@dptr
      00212D FA               [12]  702 	mov	r2,a
      00212E A3               [24]  703 	inc	dptr
      00212F E0               [24]  704 	movx	a,@dptr
      002130 FB               [12]  705 	mov	r3,a
      002131 A3               [24]  706 	inc	dptr
      002132 E0               [24]  707 	movx	a,@dptr
      002133 FC               [12]  708 	mov	r4,a
      002134 A3               [24]  709 	inc	dptr
      002135 E0               [24]  710 	movx	a,@dptr
      002136 FD               [12]  711 	mov	r5,a
      002137 90 01 02         [24]  712 	mov	dptr,#_delay_ms_i_20000_69
      00213A 74 01            [12]  713 	mov	a,#0x01
      00213C 2A               [12]  714 	add	a, r2
      00213D F0               [24]  715 	movx	@dptr,a
      00213E E4               [12]  716 	clr	a
      00213F 3B               [12]  717 	addc	a, r3
      002140 A3               [24]  718 	inc	dptr
      002141 F0               [24]  719 	movx	@dptr,a
      002142 E4               [12]  720 	clr	a
      002143 3C               [12]  721 	addc	a, r4
      002144 A3               [24]  722 	inc	dptr
      002145 F0               [24]  723 	movx	@dptr,a
      002146 E4               [12]  724 	clr	a
      002147 3D               [12]  725 	addc	a, r5
      002148 A3               [24]  726 	inc	dptr
      002149 F0               [24]  727 	movx	@dptr,a
      00214A 80 9E            [24]  728 	sjmp	00103$
      00214C                        729 00105$:
                                    730 ;	Eth.c:57: }
      00214C 22               [24]  731 	ret
                                    732 ;------------------------------------------------------------
                                    733 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    734 ;------------------------------------------------------------
                                    735 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_72'
                                    736 ;------------------------------------------------------------
                                    737 ;	Eth.c:59: void enc28j60_start_transmission(void)
                                    738 ;	-----------------------------------------
                                    739 ;	 function enc28j60_start_transmission
                                    740 ;	-----------------------------------------
      00214D                        741 _enc28j60_start_transmission:
                                    742 ;	Eth.c:61: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      00214D 90 03 56         [24]  743 	mov	dptr,#_mac_spi_read_PARM_2
      002150 E4               [12]  744 	clr	a
      002151 F0               [24]  745 	movx	@dptr,a
      002152 75 82 1F         [24]  746 	mov	dpl, #0x1f
      002155 12 30 26         [24]  747 	lcall	_mac_spi_read
      002158 E5 82            [12]  748 	mov	a, dpl
                                    749 ;	Eth.c:62: econ1 |= 0x08; // Set TXRTS (bit 3)
      00215A 44 08            [12]  750 	orl	a,#0x08
      00215C FF               [12]  751 	mov	r7,a
                                    752 ;	Eth.c:63: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      00215D 90 03 4D         [24]  753 	mov	dptr,#_spi_control_write_PARM_2
      002160 74 1F            [12]  754 	mov	a,#0x1f
      002162 F0               [24]  755 	movx	@dptr,a
      002163 90 03 4E         [24]  756 	mov	dptr,#_spi_control_write_PARM_3
      002166 EF               [12]  757 	mov	a,r7
      002167 F0               [24]  758 	movx	@dptr,a
      002168 75 82 00         [24]  759 	mov	dpl, #0x00
                                    760 ;	Eth.c:64: }
      00216B 02 2E B0         [24]  761 	ljmp	_spi_control_write
                                    762 ;------------------------------------------------------------
                                    763 ;Allocation info for local variables in function 'enc28j60_init_rx_buffer'
                                    764 ;------------------------------------------------------------
                                    765 ;end_address               Allocated with name '_enc28j60_init_rx_buffer_PARM_2'
                                    766 ;start_address             Allocated with name '_enc28j60_init_rx_buffer_start_address_10000_73'
                                    767 ;------------------------------------------------------------
                                    768 ;	Eth.c:65: void enc28j60_init_rx_buffer(uint16_t start_address, uint16_t end_address)
                                    769 ;	-----------------------------------------
                                    770 ;	 function enc28j60_init_rx_buffer
                                    771 ;	-----------------------------------------
      00216E                        772 _enc28j60_init_rx_buffer:
      00216E AF 83            [24]  773 	mov	r7,dph
      002170 E5 82            [12]  774 	mov	a,dpl
      002172 90 01 08         [24]  775 	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_73
      002175 F0               [24]  776 	movx	@dptr,a
      002176 EF               [12]  777 	mov	a,r7
      002177 A3               [24]  778 	inc	dptr
      002178 F0               [24]  779 	movx	@dptr,a
                                    780 ;	Eth.c:68: if (start_address >= end_address || end_address > 0x1FFF) {
      002179 90 01 08         [24]  781 	mov	dptr,#_enc28j60_init_rx_buffer_start_address_10000_73
      00217C E0               [24]  782 	movx	a,@dptr
      00217D FE               [12]  783 	mov	r6,a
      00217E A3               [24]  784 	inc	dptr
      00217F E0               [24]  785 	movx	a,@dptr
      002180 FF               [12]  786 	mov	r7,a
      002181 90 01 06         [24]  787 	mov	dptr,#_enc28j60_init_rx_buffer_PARM_2
      002184 E0               [24]  788 	movx	a,@dptr
      002185 FC               [12]  789 	mov	r4,a
      002186 A3               [24]  790 	inc	dptr
      002187 E0               [24]  791 	movx	a,@dptr
      002188 FD               [12]  792 	mov	r5,a
      002189 C3               [12]  793 	clr	c
      00218A EE               [12]  794 	mov	a,r6
      00218B 9C               [12]  795 	subb	a,r4
      00218C EF               [12]  796 	mov	a,r7
      00218D 9D               [12]  797 	subb	a,r5
      00218E 50 0D            [24]  798 	jnc	00101$
      002190 8C 02            [24]  799 	mov	ar2,r4
      002192 8D 03            [24]  800 	mov	ar3,r5
      002194 C3               [12]  801 	clr	c
      002195 74 FF            [12]  802 	mov	a,#0xff
      002197 9A               [12]  803 	subb	a,r2
      002198 74 1F            [12]  804 	mov	a,#0x1f
      00219A 9B               [12]  805 	subb	a,r3
      00219B 50 16            [24]  806 	jnc	00102$
      00219D                        807 00101$:
                                    808 ;	Eth.c:69: printf("Invalid RX buffer range.\n");
      00219D 74 DC            [12]  809 	mov	a,#___str_0
      00219F C0 E0            [24]  810 	push	acc
      0021A1 74 42            [12]  811 	mov	a,#(___str_0 >> 8)
      0021A3 C0 E0            [24]  812 	push	acc
      0021A5 74 80            [12]  813 	mov	a,#0x80
      0021A7 C0 E0            [24]  814 	push	acc
      0021A9 12 38 9A         [24]  815 	lcall	_printf
      0021AC 15 81            [12]  816 	dec	sp
      0021AE 15 81            [12]  817 	dec	sp
      0021B0 15 81            [12]  818 	dec	sp
                                    819 ;	Eth.c:70: return;
      0021B2 22               [24]  820 	ret
      0021B3                        821 00102$:
                                    822 ;	Eth.c:73: spi_control_write(0, 0x08, (uint8_t)(start_address & 0xFF)); // ERXSTL (low byte)
      0021B3 8E 03            [24]  823 	mov	ar3,r6
      0021B5 90 03 4D         [24]  824 	mov	dptr,#_spi_control_write_PARM_2
      0021B8 74 08            [12]  825 	mov	a,#0x08
      0021BA F0               [24]  826 	movx	@dptr,a
      0021BB 90 03 4E         [24]  827 	mov	dptr,#_spi_control_write_PARM_3
      0021BE EB               [12]  828 	mov	a,r3
      0021BF F0               [24]  829 	movx	@dptr,a
      0021C0 75 82 00         [24]  830 	mov	dpl, #0x00
      0021C3 C0 07            [24]  831 	push	ar7
      0021C5 C0 06            [24]  832 	push	ar6
      0021C7 C0 05            [24]  833 	push	ar5
      0021C9 C0 04            [24]  834 	push	ar4
      0021CB C0 03            [24]  835 	push	ar3
      0021CD 12 2E B0         [24]  836 	lcall	_spi_control_write
      0021D0 D0 03            [24]  837 	pop	ar3
      0021D2 D0 04            [24]  838 	pop	ar4
      0021D4 D0 05            [24]  839 	pop	ar5
      0021D6 D0 06            [24]  840 	pop	ar6
      0021D8 D0 07            [24]  841 	pop	ar7
                                    842 ;	Eth.c:74: spi_control_write(0, 0x09, (uint8_t)((start_address >> 8) & 0xFF)); // ERXSTH (high byte)
      0021DA 8F 02            [24]  843 	mov	ar2,r7
      0021DC 90 03 4D         [24]  844 	mov	dptr,#_spi_control_write_PARM_2
      0021DF 74 09            [12]  845 	mov	a,#0x09
      0021E1 F0               [24]  846 	movx	@dptr,a
      0021E2 90 03 4E         [24]  847 	mov	dptr,#_spi_control_write_PARM_3
      0021E5 EA               [12]  848 	mov	a,r2
      0021E6 F0               [24]  849 	movx	@dptr,a
      0021E7 75 82 00         [24]  850 	mov	dpl, #0x00
      0021EA C0 07            [24]  851 	push	ar7
      0021EC C0 06            [24]  852 	push	ar6
      0021EE C0 05            [24]  853 	push	ar5
      0021F0 C0 04            [24]  854 	push	ar4
      0021F2 C0 03            [24]  855 	push	ar3
      0021F4 C0 02            [24]  856 	push	ar2
      0021F6 12 2E B0         [24]  857 	lcall	_spi_control_write
      0021F9 D0 02            [24]  858 	pop	ar2
      0021FB D0 03            [24]  859 	pop	ar3
      0021FD D0 04            [24]  860 	pop	ar4
      0021FF D0 05            [24]  861 	pop	ar5
      002201 D0 06            [24]  862 	pop	ar6
      002203 D0 07            [24]  863 	pop	ar7
                                    864 ;	Eth.c:77: spi_control_write(0, 0x0A, (uint8_t)(end_address & 0xFF)); // ERXNDL (low byte)
      002205 8C 01            [24]  865 	mov	ar1,r4
      002207 90 03 4D         [24]  866 	mov	dptr,#_spi_control_write_PARM_2
      00220A 74 0A            [12]  867 	mov	a,#0x0a
      00220C F0               [24]  868 	movx	@dptr,a
      00220D 90 03 4E         [24]  869 	mov	dptr,#_spi_control_write_PARM_3
      002210 E9               [12]  870 	mov	a,r1
      002211 F0               [24]  871 	movx	@dptr,a
      002212 75 82 00         [24]  872 	mov	dpl, #0x00
      002215 C0 07            [24]  873 	push	ar7
      002217 C0 06            [24]  874 	push	ar6
      002219 C0 05            [24]  875 	push	ar5
      00221B C0 04            [24]  876 	push	ar4
      00221D C0 03            [24]  877 	push	ar3
      00221F C0 02            [24]  878 	push	ar2
      002221 12 2E B0         [24]  879 	lcall	_spi_control_write
      002224 D0 02            [24]  880 	pop	ar2
      002226 D0 03            [24]  881 	pop	ar3
      002228 D0 04            [24]  882 	pop	ar4
      00222A D0 05            [24]  883 	pop	ar5
      00222C D0 06            [24]  884 	pop	ar6
      00222E D0 07            [24]  885 	pop	ar7
                                    886 ;	Eth.c:78: spi_control_write(0, 0x0B, (uint8_t)((end_address >> 8) & 0xFF)); // ERXNDH (high byte)
      002230 8D 01            [24]  887 	mov	ar1,r5
      002232 90 03 4D         [24]  888 	mov	dptr,#_spi_control_write_PARM_2
      002235 74 0B            [12]  889 	mov	a,#0x0b
      002237 F0               [24]  890 	movx	@dptr,a
      002238 90 03 4E         [24]  891 	mov	dptr,#_spi_control_write_PARM_3
      00223B E9               [12]  892 	mov	a,r1
      00223C F0               [24]  893 	movx	@dptr,a
      00223D 75 82 00         [24]  894 	mov	dpl, #0x00
      002240 C0 07            [24]  895 	push	ar7
      002242 C0 06            [24]  896 	push	ar6
      002244 C0 05            [24]  897 	push	ar5
      002246 C0 04            [24]  898 	push	ar4
      002248 C0 03            [24]  899 	push	ar3
      00224A C0 02            [24]  900 	push	ar2
      00224C 12 2E B0         [24]  901 	lcall	_spi_control_write
      00224F D0 02            [24]  902 	pop	ar2
      002251 D0 03            [24]  903 	pop	ar3
      002253 D0 04            [24]  904 	pop	ar4
      002255 D0 05            [24]  905 	pop	ar5
      002257 D0 06            [24]  906 	pop	ar6
      002259 D0 07            [24]  907 	pop	ar7
                                    908 ;	Eth.c:81: spi_control_write(0, 0x0C, (uint8_t)(start_address & 0xFF)); // ERXRDPTL (low byte)
      00225B 90 03 4D         [24]  909 	mov	dptr,#_spi_control_write_PARM_2
      00225E 74 0C            [12]  910 	mov	a,#0x0c
      002260 F0               [24]  911 	movx	@dptr,a
      002261 90 03 4E         [24]  912 	mov	dptr,#_spi_control_write_PARM_3
      002264 EB               [12]  913 	mov	a,r3
      002265 F0               [24]  914 	movx	@dptr,a
      002266 75 82 00         [24]  915 	mov	dpl, #0x00
      002269 C0 07            [24]  916 	push	ar7
      00226B C0 06            [24]  917 	push	ar6
      00226D C0 05            [24]  918 	push	ar5
      00226F C0 04            [24]  919 	push	ar4
      002271 C0 02            [24]  920 	push	ar2
      002273 12 2E B0         [24]  921 	lcall	_spi_control_write
      002276 D0 02            [24]  922 	pop	ar2
      002278 D0 04            [24]  923 	pop	ar4
      00227A D0 05            [24]  924 	pop	ar5
      00227C D0 06            [24]  925 	pop	ar6
      00227E D0 07            [24]  926 	pop	ar7
                                    927 ;	Eth.c:82: spi_control_write(0, 0x0D, (uint8_t)((start_address >> 8) & 0xFF)); // ERXRDPTH (high byte)
      002280 90 03 4D         [24]  928 	mov	dptr,#_spi_control_write_PARM_2
      002283 74 0D            [12]  929 	mov	a,#0x0d
      002285 F0               [24]  930 	movx	@dptr,a
      002286 90 03 4E         [24]  931 	mov	dptr,#_spi_control_write_PARM_3
      002289 EA               [12]  932 	mov	a,r2
      00228A F0               [24]  933 	movx	@dptr,a
      00228B 75 82 00         [24]  934 	mov	dpl, #0x00
      00228E C0 07            [24]  935 	push	ar7
      002290 C0 06            [24]  936 	push	ar6
      002292 C0 05            [24]  937 	push	ar5
      002294 C0 04            [24]  938 	push	ar4
      002296 12 2E B0         [24]  939 	lcall	_spi_control_write
      002299 D0 04            [24]  940 	pop	ar4
      00229B D0 05            [24]  941 	pop	ar5
      00229D D0 06            [24]  942 	pop	ar6
      00229F D0 07            [24]  943 	pop	ar7
                                    944 ;	Eth.c:89: printf("RX buffer initialized: 0x%04X to 0x%04X.\n", start_address, end_address);
      0022A1 C0 04            [24]  945 	push	ar4
      0022A3 C0 05            [24]  946 	push	ar5
      0022A5 C0 06            [24]  947 	push	ar6
      0022A7 C0 07            [24]  948 	push	ar7
      0022A9 74 F6            [12]  949 	mov	a,#___str_1
      0022AB C0 E0            [24]  950 	push	acc
      0022AD 74 42            [12]  951 	mov	a,#(___str_1 >> 8)
      0022AF C0 E0            [24]  952 	push	acc
      0022B1 74 80            [12]  953 	mov	a,#0x80
      0022B3 C0 E0            [24]  954 	push	acc
      0022B5 12 38 9A         [24]  955 	lcall	_printf
      0022B8 E5 81            [12]  956 	mov	a,sp
      0022BA 24 F9            [12]  957 	add	a,#0xf9
      0022BC F5 81            [12]  958 	mov	sp,a
                                    959 ;	Eth.c:90: }
      0022BE 22               [24]  960 	ret
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    963 ;------------------------------------------------------------
                                    964 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    965 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_76'
                                    966 ;------------------------------------------------------------
                                    967 ;	Eth.c:92: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    968 ;	-----------------------------------------
                                    969 ;	 function enc28j60_set_transmit_pointers
                                    970 ;	-----------------------------------------
      0022BF                        971 _enc28j60_set_transmit_pointers:
      0022BF AF 83            [24]  972 	mov	r7,dph
      0022C1 E5 82            [12]  973 	mov	a,dpl
      0022C3 90 01 0C         [24]  974 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_76
      0022C6 F0               [24]  975 	movx	@dptr,a
      0022C7 EF               [12]  976 	mov	a,r7
      0022C8 A3               [24]  977 	inc	dptr
      0022C9 F0               [24]  978 	movx	@dptr,a
                                    979 ;	Eth.c:95: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      0022CA 90 01 0C         [24]  980 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_76
      0022CD E0               [24]  981 	movx	a,@dptr
      0022CE FE               [12]  982 	mov	r6,a
      0022CF A3               [24]  983 	inc	dptr
      0022D0 E0               [24]  984 	movx	a,@dptr
      0022D1 FF               [12]  985 	mov	r7,a
      0022D2 8E 05            [24]  986 	mov	ar5,r6
      0022D4 90 03 4D         [24]  987 	mov	dptr,#_spi_control_write_PARM_2
      0022D7 74 04            [12]  988 	mov	a,#0x04
      0022D9 F0               [24]  989 	movx	@dptr,a
      0022DA 90 03 4E         [24]  990 	mov	dptr,#_spi_control_write_PARM_3
      0022DD ED               [12]  991 	mov	a,r5
      0022DE F0               [24]  992 	movx	@dptr,a
      0022DF 75 82 00         [24]  993 	mov	dpl, #0x00
      0022E2 C0 07            [24]  994 	push	ar7
      0022E4 C0 06            [24]  995 	push	ar6
      0022E6 12 2E B0         [24]  996 	lcall	_spi_control_write
      0022E9 D0 06            [24]  997 	pop	ar6
      0022EB D0 07            [24]  998 	pop	ar7
                                    999 ;	Eth.c:96: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      0022ED 8F 06            [24] 1000 	mov	ar6,r7
      0022EF 90 03 4D         [24] 1001 	mov	dptr,#_spi_control_write_PARM_2
      0022F2 74 05            [12] 1002 	mov	a,#0x05
      0022F4 F0               [24] 1003 	movx	@dptr,a
      0022F5 90 03 4E         [24] 1004 	mov	dptr,#_spi_control_write_PARM_3
      0022F8 EE               [12] 1005 	mov	a,r6
      0022F9 F0               [24] 1006 	movx	@dptr,a
      0022FA 75 82 00         [24] 1007 	mov	dpl, #0x00
      0022FD 12 2E B0         [24] 1008 	lcall	_spi_control_write
                                   1009 ;	Eth.c:99: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      002300 90 01 0A         [24] 1010 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002303 E0               [24] 1011 	movx	a,@dptr
      002304 FE               [12] 1012 	mov	r6,a
      002305 A3               [24] 1013 	inc	dptr
      002306 E0               [24] 1014 	movx	a,@dptr
      002307 FF               [12] 1015 	mov	r7,a
      002308 8E 05            [24] 1016 	mov	ar5,r6
      00230A 90 03 4D         [24] 1017 	mov	dptr,#_spi_control_write_PARM_2
      00230D 74 06            [12] 1018 	mov	a,#0x06
      00230F F0               [24] 1019 	movx	@dptr,a
      002310 90 03 4E         [24] 1020 	mov	dptr,#_spi_control_write_PARM_3
      002313 ED               [12] 1021 	mov	a,r5
      002314 F0               [24] 1022 	movx	@dptr,a
      002315 75 82 00         [24] 1023 	mov	dpl, #0x00
      002318 C0 07            [24] 1024 	push	ar7
      00231A C0 06            [24] 1025 	push	ar6
      00231C 12 2E B0         [24] 1026 	lcall	_spi_control_write
      00231F D0 06            [24] 1027 	pop	ar6
      002321 D0 07            [24] 1028 	pop	ar7
                                   1029 ;	Eth.c:100: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      002323 8F 06            [24] 1030 	mov	ar6,r7
      002325 90 03 4D         [24] 1031 	mov	dptr,#_spi_control_write_PARM_2
      002328 74 07            [12] 1032 	mov	a,#0x07
      00232A F0               [24] 1033 	movx	@dptr,a
      00232B 90 03 4E         [24] 1034 	mov	dptr,#_spi_control_write_PARM_3
      00232E EE               [12] 1035 	mov	a,r6
      00232F F0               [24] 1036 	movx	@dptr,a
      002330 75 82 00         [24] 1037 	mov	dpl, #0x00
                                   1038 ;	Eth.c:101: }
      002333 02 2E B0         [24] 1039 	ljmp	_spi_control_write
                                   1040 ;------------------------------------------------------------
                                   1041 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                   1042 ;------------------------------------------------------------
                                   1043 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_78'
                                   1044 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_79'
                                   1045 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_80'
                                   1046 ;------------------------------------------------------------
                                   1047 ;	Eth.c:103: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                   1048 ;	-----------------------------------------
                                   1049 ;	 function wait_for_transmission_complete
                                   1050 ;	-----------------------------------------
      002336                       1051 _wait_for_transmission_complete:
      002336 AF 83            [24] 1052 	mov	r7,dph
      002338 E5 82            [12] 1053 	mov	a,dpl
      00233A 90 01 0E         [24] 1054 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_78
      00233D F0               [24] 1055 	movx	@dptr,a
      00233E EF               [12] 1056 	mov	a,r7
      00233F A3               [24] 1057 	inc	dptr
      002340 F0               [24] 1058 	movx	@dptr,a
                                   1059 ;	Eth.c:107: while (elapsed < timeout_ms) {
      002341 90 01 0E         [24] 1060 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_78
      002344 E0               [24] 1061 	movx	a,@dptr
      002345 FE               [12] 1062 	mov	r6,a
      002346 A3               [24] 1063 	inc	dptr
      002347 E0               [24] 1064 	movx	a,@dptr
      002348 FF               [12] 1065 	mov	r7,a
      002349 7C 00            [12] 1066 	mov	r4,#0x00
      00234B 7D 00            [12] 1067 	mov	r5,#0x00
      00234D                       1068 00103$:
      00234D C3               [12] 1069 	clr	c
      00234E EC               [12] 1070 	mov	a,r4
      00234F 9E               [12] 1071 	subb	a,r6
      002350 ED               [12] 1072 	mov	a,r5
      002351 9F               [12] 1073 	subb	a,r7
      002352 50 41            [24] 1074 	jnc	00105$
                                   1075 ;	Eth.c:108: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      002354 90 03 56         [24] 1076 	mov	dptr,#_mac_spi_read_PARM_2
      002357 E4               [12] 1077 	clr	a
      002358 F0               [24] 1078 	movx	@dptr,a
      002359 75 82 1F         [24] 1079 	mov	dpl, #0x1f
      00235C C0 07            [24] 1080 	push	ar7
      00235E C0 06            [24] 1081 	push	ar6
      002360 C0 05            [24] 1082 	push	ar5
      002362 C0 04            [24] 1083 	push	ar4
      002364 12 30 26         [24] 1084 	lcall	_mac_spi_read
      002367 E5 82            [12] 1085 	mov	a, dpl
      002369 D0 04            [24] 1086 	pop	ar4
      00236B D0 05            [24] 1087 	pop	ar5
      00236D D0 06            [24] 1088 	pop	ar6
      00236F D0 07            [24] 1089 	pop	ar7
                                   1090 ;	Eth.c:109: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      002371 20 E3 04         [24] 1091 	jb	acc.3,00102$
                                   1092 ;	Eth.c:110: return true;  // Transmission completed
      002374 75 82 01         [24] 1093 	mov	dpl, #0x01
      002377 22               [24] 1094 	ret
      002378                       1095 00102$:
                                   1096 ;	Eth.c:113: delay_ms(1);  // Wait 1 ms
      002378 90 00 01         [24] 1097 	mov	dptr,#0x0001
      00237B C0 07            [24] 1098 	push	ar7
      00237D C0 06            [24] 1099 	push	ar6
      00237F C0 05            [24] 1100 	push	ar5
      002381 C0 04            [24] 1101 	push	ar4
      002383 12 20 CC         [24] 1102 	lcall	_delay_ms
      002386 D0 04            [24] 1103 	pop	ar4
      002388 D0 05            [24] 1104 	pop	ar5
      00238A D0 06            [24] 1105 	pop	ar6
      00238C D0 07            [24] 1106 	pop	ar7
                                   1107 ;	Eth.c:114: elapsed++;
      00238E 0C               [12] 1108 	inc	r4
      00238F BC 00 BB         [24] 1109 	cjne	r4,#0x00,00103$
      002392 0D               [12] 1110 	inc	r5
      002393 80 B8            [24] 1111 	sjmp	00103$
      002395                       1112 00105$:
                                   1113 ;	Eth.c:117: return false;  // Timed out
      002395 75 82 00         [24] 1114 	mov	dpl, #0x00
                                   1115 ;	Eth.c:118: }
      002398 22               [24] 1116 	ret
                                   1117 ;------------------------------------------------------------
                                   1118 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                   1119 ;------------------------------------------------------------
                                   1120 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_82'
                                   1121 ;------------------------------------------------------------
                                   1122 ;	Eth.c:120: bool enc28j60_transmission_successful()
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function enc28j60_transmission_successful
                                   1125 ;	-----------------------------------------
      002399                       1126 _enc28j60_transmission_successful:
                                   1127 ;	Eth.c:122: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      002399 90 03 56         [24] 1128 	mov	dptr,#_mac_spi_read_PARM_2
      00239C E4               [12] 1129 	clr	a
      00239D F0               [24] 1130 	movx	@dptr,a
      00239E 75 82 1D         [24] 1131 	mov	dpl, #0x1d
      0023A1 12 30 26         [24] 1132 	lcall	_mac_spi_read
                                   1133 ;	Eth.c:123: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      0023A4 E5 82            [12] 1134 	mov	a,dpl
      0023A6 03               [12] 1135 	rr	a
      0023A7 54 01            [12] 1136 	anl	a,#0x01
      0023A9 B4 01 00         [24] 1137 	cjne	a,#0x01,00103$
      0023AC                       1138 00103$:
      0023AC 92 00            [24] 1139 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      0023AE E4               [12] 1140 	clr	a
      0023AF 33               [12] 1141 	rlc	a
      0023B0 F5 82            [12] 1142 	mov	dpl, a
                                   1143 ;	Eth.c:124: }
      0023B2 22               [24] 1144 	ret
                                   1145 ;------------------------------------------------------------
                                   1146 ;Allocation info for local variables in function 'send_arp_request'
                                   1147 ;------------------------------------------------------------
                                   1148 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_84'
                                   1149 ;i                         Allocated with name '_send_arp_request_i_20000_85'
                                   1150 ;i                         Allocated with name '_send_arp_request_i_20000_87'
                                   1151 ;i                         Allocated with name '_send_arp_request_i_20000_89'
                                   1152 ;i                         Allocated with name '_send_arp_request_i_20000_91'
                                   1153 ;i                         Allocated with name '_send_arp_request_i_20000_93'
                                   1154 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_95'
                                   1155 ;start_address             Allocated with name '_send_arp_request_start_address_10001_95'
                                   1156 ;end_address               Allocated with name '_send_arp_request_end_address_10002_97'
                                   1157 ;------------------------------------------------------------
                                   1158 ;	Eth.c:127: void send_arp_request(void)
                                   1159 ;	-----------------------------------------
                                   1160 ;	 function send_arp_request
                                   1161 ;	-----------------------------------------
      0023B3                       1162 _send_arp_request:
                                   1163 ;	Eth.c:132: arp_packet[0] = 0x0E;
      0023B3 90 01 10         [24] 1164 	mov	dptr,#_send_arp_request_arp_packet_10000_84
      0023B6 74 0E            [12] 1165 	mov	a,#0x0e
      0023B8 F0               [24] 1166 	movx	@dptr,a
                                   1167 ;	Eth.c:136: set_mac_address(source_mac);
      0023B9 90 03 AF         [24] 1168 	mov	dptr,#_source_mac
      0023BC 75 F0 00         [24] 1169 	mov	b, #0x00
      0023BF 12 20 62         [24] 1170 	lcall	_set_mac_address
                                   1171 ;	Eth.c:138: for (int i = 0; i < 6; i++)
      0023C2 7E 00            [12] 1172 	mov	r6,#0x00
      0023C4 7F 00            [12] 1173 	mov	r7,#0x00
      0023C6                       1174 00115$:
      0023C6 C3               [12] 1175 	clr	c
      0023C7 EE               [12] 1176 	mov	a,r6
      0023C8 94 06            [12] 1177 	subb	a,#0x06
      0023CA EF               [12] 1178 	mov	a,r7
      0023CB 64 80            [12] 1179 	xrl	a,#0x80
      0023CD 94 80            [12] 1180 	subb	a,#0x80
      0023CF 50 48            [24] 1181 	jnc	00101$
                                   1182 ;	Eth.c:140: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      0023D1 8E 05            [24] 1183 	mov	ar5,r6
      0023D3 ED               [12] 1184 	mov	a,r5
      0023D4 04               [12] 1185 	inc	a
      0023D5 FC               [12] 1186 	mov	r4,a
      0023D6 33               [12] 1187 	rlc	a
      0023D7 95 E0            [12] 1188 	subb	a,acc
      0023D9 FB               [12] 1189 	mov	r3,a
      0023DA EC               [12] 1190 	mov	a,r4
      0023DB 24 10            [12] 1191 	add	a, #_send_arp_request_arp_packet_10000_84
      0023DD FC               [12] 1192 	mov	r4,a
      0023DE EB               [12] 1193 	mov	a,r3
      0023DF 34 01            [12] 1194 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      0023E1 FB               [12] 1195 	mov	r3,a
      0023E2 EE               [12] 1196 	mov	a,r6
      0023E3 24 B5            [12] 1197 	add	a, #_dest_mac
      0023E5 F5 82            [12] 1198 	mov	dpl,a
      0023E7 EF               [12] 1199 	mov	a,r7
      0023E8 34 03            [12] 1200 	addc	a, #(_dest_mac >> 8)
      0023EA F5 83            [12] 1201 	mov	dph,a
      0023EC E0               [24] 1202 	movx	a,@dptr
      0023ED 8C 82            [24] 1203 	mov	dpl,r4
      0023EF 8B 83            [24] 1204 	mov	dph,r3
      0023F1 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	Eth.c:141: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      0023F2 74 07            [12] 1207 	mov	a,#0x07
      0023F4 2D               [12] 1208 	add	a, r5
      0023F5 FD               [12] 1209 	mov	r5,a
      0023F6 33               [12] 1210 	rlc	a
      0023F7 95 E0            [12] 1211 	subb	a,acc
      0023F9 FC               [12] 1212 	mov	r4,a
      0023FA ED               [12] 1213 	mov	a,r5
      0023FB 24 10            [12] 1214 	add	a, #_send_arp_request_arp_packet_10000_84
      0023FD FD               [12] 1215 	mov	r5,a
      0023FE EC               [12] 1216 	mov	a,r4
      0023FF 34 01            [12] 1217 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002401 FC               [12] 1218 	mov	r4,a
      002402 EE               [12] 1219 	mov	a,r6
      002403 24 AF            [12] 1220 	add	a, #_source_mac
      002405 F5 82            [12] 1221 	mov	dpl,a
      002407 EF               [12] 1222 	mov	a,r7
      002408 34 03            [12] 1223 	addc	a, #(_source_mac >> 8)
      00240A F5 83            [12] 1224 	mov	dph,a
      00240C E0               [24] 1225 	movx	a,@dptr
      00240D 8D 82            [24] 1226 	mov	dpl,r5
      00240F 8C 83            [24] 1227 	mov	dph,r4
      002411 F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	Eth.c:138: for (int i = 0; i < 6; i++)
      002412 0E               [12] 1230 	inc	r6
      002413 BE 00 B0         [24] 1231 	cjne	r6,#0x00,00115$
      002416 0F               [12] 1232 	inc	r7
      002417 80 AD            [24] 1233 	sjmp	00115$
      002419                       1234 00101$:
                                   1235 ;	Eth.c:145: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      002419 90 01 1D         [24] 1236 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000d)
      00241C 74 08            [12] 1237 	mov	a,#0x08
      00241E F0               [24] 1238 	movx	@dptr,a
                                   1239 ;	Eth.c:146: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      00241F 90 01 1E         [24] 1240 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000e)
      002422 74 06            [12] 1241 	mov	a,#0x06
      002424 F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	Eth.c:150: arp_packet[15] = 0x00;
      002425 90 01 1F         [24] 1244 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x000f)
      002428 E4               [12] 1245 	clr	a
      002429 F0               [24] 1246 	movx	@dptr,a
                                   1247 ;	Eth.c:151: arp_packet[16] = 0x01;
      00242A 90 01 20         [24] 1248 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0010)
      00242D 04               [12] 1249 	inc	a
      00242E F0               [24] 1250 	movx	@dptr,a
                                   1251 ;	Eth.c:154: arp_packet[17] = 0x08;
      00242F 90 01 21         [24] 1252 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0011)
      002432 74 08            [12] 1253 	mov	a,#0x08
      002434 F0               [24] 1254 	movx	@dptr,a
                                   1255 ;	Eth.c:155: arp_packet[18] = 0x00;
      002435 90 01 22         [24] 1256 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0012)
      002438 E4               [12] 1257 	clr	a
      002439 F0               [24] 1258 	movx	@dptr,a
                                   1259 ;	Eth.c:158: arp_packet[19] = 0x06;
      00243A 90 01 23         [24] 1260 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0013)
      00243D 74 06            [12] 1261 	mov	a,#0x06
      00243F F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	Eth.c:161: arp_packet[20] = 0x04;
      002440 90 01 24         [24] 1264 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0014)
      002443 74 04            [12] 1265 	mov	a,#0x04
      002445 F0               [24] 1266 	movx	@dptr,a
                                   1267 ;	Eth.c:164: arp_packet[21] = 0x00;
      002446 90 01 25         [24] 1268 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0015)
      002449 E4               [12] 1269 	clr	a
      00244A F0               [24] 1270 	movx	@dptr,a
                                   1271 ;	Eth.c:165: arp_packet[22] = 0x01;
      00244B 90 01 26         [24] 1272 	mov	dptr,#(_send_arp_request_arp_packet_10000_84 + 0x0016)
      00244E 04               [12] 1273 	inc	a
      00244F F0               [24] 1274 	movx	@dptr,a
                                   1275 ;	Eth.c:168: for (int i = 0; i < 6; i++) {
      002450 7E 00            [12] 1276 	mov	r6,#0x00
      002452 7F 00            [12] 1277 	mov	r7,#0x00
      002454                       1278 00118$:
      002454 C3               [12] 1279 	clr	c
      002455 EE               [12] 1280 	mov	a,r6
      002456 94 06            [12] 1281 	subb	a,#0x06
      002458 EF               [12] 1282 	mov	a,r7
      002459 64 80            [12] 1283 	xrl	a,#0x80
      00245B 94 80            [12] 1284 	subb	a,#0x80
      00245D 50 29            [24] 1285 	jnc	00102$
                                   1286 ;	Eth.c:169: arp_packet[23 + i] = source_mac[i];
      00245F 8E 05            [24] 1287 	mov	ar5,r6
      002461 74 17            [12] 1288 	mov	a,#0x17
      002463 2D               [12] 1289 	add	a, r5
      002464 FD               [12] 1290 	mov	r5,a
      002465 33               [12] 1291 	rlc	a
      002466 95 E0            [12] 1292 	subb	a,acc
      002468 FC               [12] 1293 	mov	r4,a
      002469 ED               [12] 1294 	mov	a,r5
      00246A 24 10            [12] 1295 	add	a, #_send_arp_request_arp_packet_10000_84
      00246C FD               [12] 1296 	mov	r5,a
      00246D EC               [12] 1297 	mov	a,r4
      00246E 34 01            [12] 1298 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002470 FC               [12] 1299 	mov	r4,a
      002471 EE               [12] 1300 	mov	a,r6
      002472 24 AF            [12] 1301 	add	a, #_source_mac
      002474 F5 82            [12] 1302 	mov	dpl,a
      002476 EF               [12] 1303 	mov	a,r7
      002477 34 03            [12] 1304 	addc	a, #(_source_mac >> 8)
      002479 F5 83            [12] 1305 	mov	dph,a
      00247B E0               [24] 1306 	movx	a,@dptr
      00247C 8D 82            [24] 1307 	mov	dpl,r5
      00247E 8C 83            [24] 1308 	mov	dph,r4
      002480 F0               [24] 1309 	movx	@dptr,a
                                   1310 ;	Eth.c:168: for (int i = 0; i < 6; i++) {
      002481 0E               [12] 1311 	inc	r6
      002482 BE 00 CF         [24] 1312 	cjne	r6,#0x00,00118$
      002485 0F               [12] 1313 	inc	r7
      002486 80 CC            [24] 1314 	sjmp	00118$
      002488                       1315 00102$:
                                   1316 ;	Eth.c:173: for (int i = 0; i < 4; i++) {
      002488 7E 00            [12] 1317 	mov	r6,#0x00
      00248A 7F 00            [12] 1318 	mov	r7,#0x00
      00248C                       1319 00121$:
      00248C C3               [12] 1320 	clr	c
      00248D EE               [12] 1321 	mov	a,r6
      00248E 94 04            [12] 1322 	subb	a,#0x04
      002490 EF               [12] 1323 	mov	a,r7
      002491 64 80            [12] 1324 	xrl	a,#0x80
      002493 94 80            [12] 1325 	subb	a,#0x80
      002495 50 29            [24] 1326 	jnc	00103$
                                   1327 ;	Eth.c:174: arp_packet[29 + i] = source_ip[i];
      002497 8E 05            [24] 1328 	mov	ar5,r6
      002499 74 1D            [12] 1329 	mov	a,#0x1d
      00249B 2D               [12] 1330 	add	a, r5
      00249C FD               [12] 1331 	mov	r5,a
      00249D 33               [12] 1332 	rlc	a
      00249E 95 E0            [12] 1333 	subb	a,acc
      0024A0 FC               [12] 1334 	mov	r4,a
      0024A1 ED               [12] 1335 	mov	a,r5
      0024A2 24 10            [12] 1336 	add	a, #_send_arp_request_arp_packet_10000_84
      0024A4 FD               [12] 1337 	mov	r5,a
      0024A5 EC               [12] 1338 	mov	a,r4
      0024A6 34 01            [12] 1339 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      0024A8 FC               [12] 1340 	mov	r4,a
      0024A9 EE               [12] 1341 	mov	a,r6
      0024AA 24 BB            [12] 1342 	add	a, #_source_ip
      0024AC F5 82            [12] 1343 	mov	dpl,a
      0024AE EF               [12] 1344 	mov	a,r7
      0024AF 34 03            [12] 1345 	addc	a, #(_source_ip >> 8)
      0024B1 F5 83            [12] 1346 	mov	dph,a
      0024B3 E0               [24] 1347 	movx	a,@dptr
      0024B4 8D 82            [24] 1348 	mov	dpl,r5
      0024B6 8C 83            [24] 1349 	mov	dph,r4
      0024B8 F0               [24] 1350 	movx	@dptr,a
                                   1351 ;	Eth.c:173: for (int i = 0; i < 4; i++) {
      0024B9 0E               [12] 1352 	inc	r6
      0024BA BE 00 CF         [24] 1353 	cjne	r6,#0x00,00121$
      0024BD 0F               [12] 1354 	inc	r7
      0024BE 80 CC            [24] 1355 	sjmp	00121$
      0024C0                       1356 00103$:
                                   1357 ;	Eth.c:178: for (int i = 0; i < 6; i++) {
      0024C0 7F 00            [12] 1358 	mov	r7,#0x00
      0024C2                       1359 00124$:
      0024C2 BF 06 00         [24] 1360 	cjne	r7,#0x06,00215$
      0024C5                       1361 00215$:
      0024C5 50 19            [24] 1362 	jnc	00104$
                                   1363 ;	Eth.c:179: arp_packet[33 + i] = 0x00;
      0024C7 8F 06            [24] 1364 	mov	ar6,r7
      0024C9 74 21            [12] 1365 	mov	a,#0x21
      0024CB 2E               [12] 1366 	add	a, r6
      0024CC FE               [12] 1367 	mov	r6,a
      0024CD 33               [12] 1368 	rlc	a
      0024CE 95 E0            [12] 1369 	subb	a,acc
      0024D0 FD               [12] 1370 	mov	r5,a
      0024D1 EE               [12] 1371 	mov	a,r6
      0024D2 24 10            [12] 1372 	add	a, #_send_arp_request_arp_packet_10000_84
      0024D4 F5 82            [12] 1373 	mov	dpl,a
      0024D6 ED               [12] 1374 	mov	a,r5
      0024D7 34 01            [12] 1375 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      0024D9 F5 83            [12] 1376 	mov	dph,a
      0024DB E4               [12] 1377 	clr	a
      0024DC F0               [24] 1378 	movx	@dptr,a
                                   1379 ;	Eth.c:178: for (int i = 0; i < 6; i++) {
      0024DD 0F               [12] 1380 	inc	r7
      0024DE 80 E2            [24] 1381 	sjmp	00124$
      0024E0                       1382 00104$:
                                   1383 ;	Eth.c:183: for (int i = 0; i < 4; i++) {
      0024E0 7E 00            [12] 1384 	mov	r6,#0x00
      0024E2 7F 00            [12] 1385 	mov	r7,#0x00
      0024E4                       1386 00127$:
      0024E4 C3               [12] 1387 	clr	c
      0024E5 EE               [12] 1388 	mov	a,r6
      0024E6 94 04            [12] 1389 	subb	a,#0x04
      0024E8 EF               [12] 1390 	mov	a,r7
      0024E9 64 80            [12] 1391 	xrl	a,#0x80
      0024EB 94 80            [12] 1392 	subb	a,#0x80
      0024ED 50 29            [24] 1393 	jnc	00105$
                                   1394 ;	Eth.c:184: arp_packet[39 + i] = target_ip[i];
      0024EF 8E 05            [24] 1395 	mov	ar5,r6
      0024F1 74 27            [12] 1396 	mov	a,#0x27
      0024F3 2D               [12] 1397 	add	a, r5
      0024F4 FD               [12] 1398 	mov	r5,a
      0024F5 33               [12] 1399 	rlc	a
      0024F6 95 E0            [12] 1400 	subb	a,acc
      0024F8 FC               [12] 1401 	mov	r4,a
      0024F9 ED               [12] 1402 	mov	a,r5
      0024FA 24 10            [12] 1403 	add	a, #_send_arp_request_arp_packet_10000_84
      0024FC FD               [12] 1404 	mov	r5,a
      0024FD EC               [12] 1405 	mov	a,r4
      0024FE 34 01            [12] 1406 	addc	a, #(_send_arp_request_arp_packet_10000_84 >> 8)
      002500 FC               [12] 1407 	mov	r4,a
      002501 EE               [12] 1408 	mov	a,r6
      002502 24 BF            [12] 1409 	add	a, #_target_ip
      002504 F5 82            [12] 1410 	mov	dpl,a
      002506 EF               [12] 1411 	mov	a,r7
      002507 34 03            [12] 1412 	addc	a, #(_target_ip >> 8)
      002509 F5 83            [12] 1413 	mov	dph,a
      00250B E0               [24] 1414 	movx	a,@dptr
      00250C 8D 82            [24] 1415 	mov	dpl,r5
      00250E 8C 83            [24] 1416 	mov	dph,r4
      002510 F0               [24] 1417 	movx	@dptr,a
                                   1418 ;	Eth.c:183: for (int i = 0; i < 4; i++) {
      002511 0E               [12] 1419 	inc	r6
      002512 BE 00 CF         [24] 1420 	cjne	r6,#0x00,00127$
      002515 0F               [12] 1421 	inc	r7
      002516 80 CC            [24] 1422 	sjmp	00127$
      002518                       1423 00105$:
                                   1424 ;	Eth.c:196: spi_buffer_write(frame_size, start_address, arp_packet);
      002518 90 03 67         [24] 1425 	mov	dptr,#_spi_buffer_write_PARM_2
      00251B 74 F0            [12] 1426 	mov	a,#0xf0
      00251D F0               [24] 1427 	movx	@dptr,a
      00251E E4               [12] 1428 	clr	a
      00251F A3               [24] 1429 	inc	dptr
      002520 F0               [24] 1430 	movx	@dptr,a
      002521 90 03 69         [24] 1431 	mov	dptr,#_spi_buffer_write_PARM_3
      002524 74 10            [12] 1432 	mov	a,#_send_arp_request_arp_packet_10000_84
      002526 F0               [24] 1433 	movx	@dptr,a
      002527 74 01            [12] 1434 	mov	a,#(_send_arp_request_arp_packet_10000_84 >> 8)
      002529 A3               [24] 1435 	inc	dptr
      00252A F0               [24] 1436 	movx	@dptr,a
      00252B E4               [12] 1437 	clr	a
      00252C A3               [24] 1438 	inc	dptr
      00252D F0               [24] 1439 	movx	@dptr,a
      00252E 90 00 2A         [24] 1440 	mov	dptr,#0x002a
      002531 12 34 2C         [24] 1441 	lcall	_spi_buffer_write
                                   1442 ;	Eth.c:199: enc28j60_set_transmit_pointers(start_address, end_address);
      002534 90 01 0A         [24] 1443 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      002537 74 19            [12] 1444 	mov	a,#0x19
      002539 F0               [24] 1445 	movx	@dptr,a
      00253A 74 01            [12] 1446 	mov	a,#0x01
      00253C A3               [24] 1447 	inc	dptr
      00253D F0               [24] 1448 	movx	@dptr,a
      00253E 90 00 F0         [24] 1449 	mov	dptr,#0x00f0
      002541 12 22 BF         [24] 1450 	lcall	_enc28j60_set_transmit_pointers
                                   1451 ;	Eth.c:202: enc28j60_start_transmission();
      002544 12 21 4D         [24] 1452 	lcall	_enc28j60_start_transmission
                                   1453 ;	Eth.c:205: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      002547 90 01 F4         [24] 1454 	mov	dptr,#0x01f4
      00254A 12 23 36         [24] 1455 	lcall	_wait_for_transmission_complete
      00254D E5 82            [12] 1456 	mov	a, dpl
      00254F 60 33            [24] 1457 	jz	00112$
                                   1458 ;	Eth.c:207: if (enc28j60_transmission_successful()) {
      002551 12 23 99         [24] 1459 	lcall	_enc28j60_transmission_successful
      002554 E5 82            [12] 1460 	mov	a, dpl
      002556 60 16            [24] 1461 	jz	00109$
                                   1462 ;	Eth.c:208: printf("ARP request sent successfully.\n\r");
      002558 74 5B            [12] 1463 	mov	a,#___str_3
      00255A C0 E0            [24] 1464 	push	acc
      00255C 74 43            [12] 1465 	mov	a,#(___str_3 >> 8)
      00255E C0 E0            [24] 1466 	push	acc
      002560 74 80            [12] 1467 	mov	a,#0x80
      002562 C0 E0            [24] 1468 	push	acc
      002564 12 38 9A         [24] 1469 	lcall	_printf
      002567 15 81            [12] 1470 	dec	sp
      002569 15 81            [12] 1471 	dec	sp
      00256B 15 81            [12] 1472 	dec	sp
      00256D 22               [24] 1473 	ret
      00256E                       1474 00109$:
                                   1475 ;	Eth.c:210: printf("ARP transmission failed. Check error flags.\n\r");
      00256E 74 7C            [12] 1476 	mov	a,#___str_4
      002570 C0 E0            [24] 1477 	push	acc
      002572 74 43            [12] 1478 	mov	a,#(___str_4 >> 8)
      002574 C0 E0            [24] 1479 	push	acc
      002576 74 80            [12] 1480 	mov	a,#0x80
      002578 C0 E0            [24] 1481 	push	acc
      00257A 12 38 9A         [24] 1482 	lcall	_printf
      00257D 15 81            [12] 1483 	dec	sp
      00257F 15 81            [12] 1484 	dec	sp
      002581 15 81            [12] 1485 	dec	sp
      002583 22               [24] 1486 	ret
      002584                       1487 00112$:
                                   1488 ;	Eth.c:213: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      002584 74 AA            [12] 1489 	mov	a,#___str_5
      002586 C0 E0            [24] 1490 	push	acc
      002588 74 43            [12] 1491 	mov	a,#(___str_5 >> 8)
      00258A C0 E0            [24] 1492 	push	acc
      00258C 74 80            [12] 1493 	mov	a,#0x80
      00258E C0 E0            [24] 1494 	push	acc
      002590 12 38 9A         [24] 1495 	lcall	_printf
      002593 15 81            [12] 1496 	dec	sp
      002595 15 81            [12] 1497 	dec	sp
      002597 15 81            [12] 1498 	dec	sp
                                   1499 ;	Eth.c:215: }
      002599 22               [24] 1500 	ret
                                   1501 	.area CSEG    (CODE)
                                   1502 	.area CONST   (CODE)
                                   1503 	.area CONST   (CODE)
      0042DC                       1504 ___str_0:
      0042DC 49 6E 76 61 6C 69 64  1505 	.ascii "Invalid RX buffer range."
             20 52 58 20 62 75 66
             66 65 72 20 72 61 6E
             67 65 2E
      0042F4 0A                    1506 	.db 0x0a
      0042F5 00                    1507 	.db 0x00
                                   1508 	.area CSEG    (CODE)
                                   1509 	.area CONST   (CODE)
      0042F6                       1510 ___str_1:
      0042F6 52 58 20 62 75 66 66  1511 	.ascii "RX buffer initialized: 0x%04X to 0x%04X."
             65 72 20 69 6E 69 74
             69 61 6C 69 7A 65 64
             3A 20 30 78 25 30 34
             58 20 74 6F 20 30 78
             25 30 34 58 2E
      00431E 0A                    1512 	.db 0x0a
      00431F 00                    1513 	.db 0x00
                                   1514 	.area CSEG    (CODE)
                                   1515 	.area CONST   (CODE)
      004320                       1516 ___str_2:
      004320 0A                    1517 	.db 0x0a
      004321 49 6E 76 61 6C 69 64  1518 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      004359 0A                    1519 	.db 0x0a
      00435A 00                    1520 	.db 0x00
                                   1521 	.area CSEG    (CODE)
                                   1522 	.area CONST   (CODE)
      00435B                       1523 ___str_3:
      00435B 41 52 50 20 72 65 71  1524 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      004379 0A                    1525 	.db 0x0a
      00437A 0D                    1526 	.db 0x0d
      00437B 00                    1527 	.db 0x00
                                   1528 	.area CSEG    (CODE)
                                   1529 	.area CONST   (CODE)
      00437C                       1530 ___str_4:
      00437C 41 52 50 20 74 72 61  1531 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      0043A7 0A                    1532 	.db 0x0a
      0043A8 0D                    1533 	.db 0x0d
      0043A9 00                    1534 	.db 0x00
                                   1535 	.area CSEG    (CODE)
                                   1536 	.area CONST   (CODE)
      0043AA                       1537 ___str_5:
      0043AA 54 72 61 6E 73 6D 69  1538 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      0043E6 74 6C 79 2E           1539 	.ascii "tly."
      0043EA 0A                    1540 	.db 0x0a
      0043EB 0D                    1541 	.db 0x0d
      0043EC 00                    1542 	.db 0x00
                                   1543 	.area CSEG    (CODE)
                                   1544 	.area XINIT   (CODE)
      004A28                       1545 __xinit__source_mac:
      004A28 00                    1546 	.db #0x00	; 0
      004A29 11                    1547 	.db #0x11	; 17
      004A2A 22                    1548 	.db #0x22	; 34
      004A2B 33                    1549 	.db #0x33	; 51	'3'
      004A2C 44                    1550 	.db #0x44	; 68	'D'
      004A2D 55                    1551 	.db #0x55	; 85	'U'
      004A2E                       1552 __xinit__dest_mac:
      004A2E FF                    1553 	.db #0xff	; 255
      004A2F FF                    1554 	.db #0xff	; 255
      004A30 FF                    1555 	.db #0xff	; 255
      004A31 FF                    1556 	.db #0xff	; 255
      004A32 FF                    1557 	.db #0xff	; 255
      004A33 FF                    1558 	.db #0xff	; 255
      004A34                       1559 __xinit__source_ip:
      004A34 A9                    1560 	.db #0xa9	; 169
      004A35 FE                    1561 	.db #0xfe	; 254
      004A36 ED                    1562 	.db #0xed	; 237
      004A37 64                    1563 	.db #0x64	; 100	'd'
      004A38                       1564 __xinit__target_ip:
      004A38 FF                    1565 	.db #0xff	; 255
      004A39 FF                    1566 	.db #0xff	; 255
      004A3A FF                    1567 	.db #0xff	; 255
      004A3B FF                    1568 	.db #0xff	; 255
                                   1569 	.area CABS    (ABS,CODE)

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
                                    234 	.globl _send_arp_request
                                    235 	.globl _enc_buffer_init
                                    236 	.globl _enc_init
                                    237 ;--------------------------------------------------------
                                    238 ; special function registers
                                    239 ;--------------------------------------------------------
                                    240 	.area RSEG    (ABS,DATA)
      000000                        241 	.org 0x0000
                           0000C8   242 _T2CON	=	0x00c8
                           0000CA   243 _RCAP2L	=	0x00ca
                           0000CB   244 _RCAP2H	=	0x00cb
                           0000CC   245 _TL2	=	0x00cc
                           0000CD   246 _TH2	=	0x00cd
                           00008E   247 _AUXR	=	0x008e
                           0000A2   248 _AUXR1	=	0x00a2
                           000097   249 _CKRL	=	0x0097
                           00008F   250 _CKCON0	=	0x008f
                           0000AF   251 _CKCON1	=	0x00af
                           0000FA   252 _CCAP0H	=	0x00fa
                           0000FB   253 _CCAP1H	=	0x00fb
                           0000FC   254 _CCAP2H	=	0x00fc
                           0000FD   255 _CCAP3H	=	0x00fd
                           0000FE   256 _CCAP4H	=	0x00fe
                           0000EA   257 _CCAP0L	=	0x00ea
                           0000EB   258 _CCAP1L	=	0x00eb
                           0000EC   259 _CCAP2L	=	0x00ec
                           0000ED   260 _CCAP3L	=	0x00ed
                           0000EE   261 _CCAP4L	=	0x00ee
                           0000DA   262 _CCAPM0	=	0x00da
                           0000DB   263 _CCAPM1	=	0x00db
                           0000DC   264 _CCAPM2	=	0x00dc
                           0000DD   265 _CCAPM3	=	0x00dd
                           0000DE   266 _CCAPM4	=	0x00de
                           0000D8   267 _CCON	=	0x00d8
                           0000F9   268 _CH	=	0x00f9
                           0000E9   269 _CL	=	0x00e9
                           0000D9   270 _CMOD	=	0x00d9
                           0000A8   271 _IEN0	=	0x00a8
                           0000B1   272 _IEN1	=	0x00b1
                           0000B8   273 _IPL0	=	0x00b8
                           0000B7   274 _IPH0	=	0x00b7
                           0000B2   275 _IPL1	=	0x00b2
                           0000B3   276 _IPH1	=	0x00b3
                           0000C0   277 _P4	=	0x00c0
                           0000E8   278 _P5	=	0x00e8
                           0000A6   279 _WDTRST	=	0x00a6
                           0000A7   280 _WDTPRG	=	0x00a7
                           0000A9   281 _SADDR	=	0x00a9
                           0000B9   282 _SADEN	=	0x00b9
                           0000C3   283 _SPCON	=	0x00c3
                           0000C4   284 _SPSTA	=	0x00c4
                           0000C5   285 _SPDAT	=	0x00c5
                           0000C9   286 _T2MOD	=	0x00c9
                           00009B   287 _BDRCON	=	0x009b
                           00009A   288 _BRL	=	0x009a
                           00009C   289 _KBLS	=	0x009c
                           00009D   290 _KBE	=	0x009d
                           00009E   291 _KBF	=	0x009e
                           0000D2   292 _EECON	=	0x00d2
                           0000E0   293 _ACC	=	0x00e0
                           0000F0   294 _B	=	0x00f0
                           000083   295 _DPH	=	0x0083
                           000083   296 _DP0H	=	0x0083
                           000082   297 _DPL	=	0x0082
                           000082   298 _DP0L	=	0x0082
                           0000A8   299 _IE	=	0x00a8
                           0000B8   300 _IP	=	0x00b8
                           000080   301 _P0	=	0x0080
                           000090   302 _P1	=	0x0090
                           0000A0   303 _P2	=	0x00a0
                           0000B0   304 _P3	=	0x00b0
                           000087   305 _PCON	=	0x0087
                           0000D0   306 _PSW	=	0x00d0
                           000099   307 _SBUF	=	0x0099
                           000099   308 _SBUF0	=	0x0099
                           000098   309 _SCON	=	0x0098
                           000081   310 _SP	=	0x0081
                           000088   311 _TCON	=	0x0088
                           00008C   312 _TH0	=	0x008c
                           00008D   313 _TH1	=	0x008d
                           00008A   314 _TL0	=	0x008a
                           00008B   315 _TL1	=	0x008b
                           000089   316 _TMOD	=	0x0089
                                    317 ;--------------------------------------------------------
                                    318 ; special function bits
                                    319 ;--------------------------------------------------------
                                    320 	.area RSEG    (ABS,DATA)
      000000                        321 	.org 0x0000
                           0000AD   322 _ET2	=	0x00ad
                           0000BD   323 _PT2	=	0x00bd
                           0000C8   324 _T2CON_0	=	0x00c8
                           0000C9   325 _T2CON_1	=	0x00c9
                           0000CA   326 _T2CON_2	=	0x00ca
                           0000CB   327 _T2CON_3	=	0x00cb
                           0000CC   328 _T2CON_4	=	0x00cc
                           0000CD   329 _T2CON_5	=	0x00cd
                           0000CE   330 _T2CON_6	=	0x00ce
                           0000CF   331 _T2CON_7	=	0x00cf
                           0000C8   332 _CP_RL2	=	0x00c8
                           0000C9   333 _C_T2	=	0x00c9
                           0000CA   334 _TR2	=	0x00ca
                           0000CB   335 _EXEN2	=	0x00cb
                           0000CC   336 _TCLK	=	0x00cc
                           0000CD   337 _RCLK	=	0x00cd
                           0000CE   338 _EXF2	=	0x00ce
                           0000CF   339 _TF2	=	0x00cf
                           0000DF   340 _CF	=	0x00df
                           0000DE   341 _CR	=	0x00de
                           0000DC   342 _CCF4	=	0x00dc
                           0000DB   343 _CCF3	=	0x00db
                           0000DA   344 _CCF2	=	0x00da
                           0000D9   345 _CCF1	=	0x00d9
                           0000D8   346 _CCF0	=	0x00d8
                           0000AE   347 _EC	=	0x00ae
                           0000BE   348 _PPCL	=	0x00be
                           0000BD   349 _PT2L	=	0x00bd
                           0000BC   350 _PSL	=	0x00bc
                           0000BB   351 _PT1L	=	0x00bb
                           0000BA   352 _PX1L	=	0x00ba
                           0000B9   353 _PT0L	=	0x00b9
                           0000B8   354 _PX0L	=	0x00b8
                           0000C0   355 _P4_0	=	0x00c0
                           0000C1   356 _P4_1	=	0x00c1
                           0000C2   357 _P4_2	=	0x00c2
                           0000C3   358 _P4_3	=	0x00c3
                           0000C4   359 _P4_4	=	0x00c4
                           0000C5   360 _P4_5	=	0x00c5
                           0000C6   361 _P4_6	=	0x00c6
                           0000C7   362 _P4_7	=	0x00c7
                           0000E8   363 _P5_0	=	0x00e8
                           0000E9   364 _P5_1	=	0x00e9
                           0000EA   365 _P5_2	=	0x00ea
                           0000EB   366 _P5_3	=	0x00eb
                           0000EC   367 _P5_4	=	0x00ec
                           0000ED   368 _P5_5	=	0x00ed
                           0000EE   369 _P5_6	=	0x00ee
                           0000EF   370 _P5_7	=	0x00ef
                           0000F0   371 _BREG_F0	=	0x00f0
                           0000F1   372 _BREG_F1	=	0x00f1
                           0000F2   373 _BREG_F2	=	0x00f2
                           0000F3   374 _BREG_F3	=	0x00f3
                           0000F4   375 _BREG_F4	=	0x00f4
                           0000F5   376 _BREG_F5	=	0x00f5
                           0000F6   377 _BREG_F6	=	0x00f6
                           0000F7   378 _BREG_F7	=	0x00f7
                           0000A8   379 _EX0	=	0x00a8
                           0000A9   380 _ET0	=	0x00a9
                           0000AA   381 _EX1	=	0x00aa
                           0000AB   382 _ET1	=	0x00ab
                           0000AC   383 _ES	=	0x00ac
                           0000AF   384 _EA	=	0x00af
                           0000B8   385 _PX0	=	0x00b8
                           0000B9   386 _PT0	=	0x00b9
                           0000BA   387 _PX1	=	0x00ba
                           0000BB   388 _PT1	=	0x00bb
                           0000BC   389 _PS	=	0x00bc
                           000080   390 _P0_0	=	0x0080
                           000081   391 _P0_1	=	0x0081
                           000082   392 _P0_2	=	0x0082
                           000083   393 _P0_3	=	0x0083
                           000084   394 _P0_4	=	0x0084
                           000085   395 _P0_5	=	0x0085
                           000086   396 _P0_6	=	0x0086
                           000087   397 _P0_7	=	0x0087
                           000090   398 _P1_0	=	0x0090
                           000091   399 _P1_1	=	0x0091
                           000092   400 _P1_2	=	0x0092
                           000093   401 _P1_3	=	0x0093
                           000094   402 _P1_4	=	0x0094
                           000095   403 _P1_5	=	0x0095
                           000096   404 _P1_6	=	0x0096
                           000097   405 _P1_7	=	0x0097
                           0000A0   406 _P2_0	=	0x00a0
                           0000A1   407 _P2_1	=	0x00a1
                           0000A2   408 _P2_2	=	0x00a2
                           0000A3   409 _P2_3	=	0x00a3
                           0000A4   410 _P2_4	=	0x00a4
                           0000A5   411 _P2_5	=	0x00a5
                           0000A6   412 _P2_6	=	0x00a6
                           0000A7   413 _P2_7	=	0x00a7
                           0000B0   414 _P3_0	=	0x00b0
                           0000B1   415 _P3_1	=	0x00b1
                           0000B2   416 _P3_2	=	0x00b2
                           0000B3   417 _P3_3	=	0x00b3
                           0000B4   418 _P3_4	=	0x00b4
                           0000B5   419 _P3_5	=	0x00b5
                           0000B6   420 _P3_6	=	0x00b6
                           0000B7   421 _P3_7	=	0x00b7
                           0000B0   422 _RXD	=	0x00b0
                           0000B0   423 _RXD0	=	0x00b0
                           0000B1   424 _TXD	=	0x00b1
                           0000B1   425 _TXD0	=	0x00b1
                           0000B2   426 _INT0	=	0x00b2
                           0000B3   427 _INT1	=	0x00b3
                           0000B4   428 _T0	=	0x00b4
                           0000B5   429 _T1	=	0x00b5
                           0000B6   430 _WR	=	0x00b6
                           0000B7   431 _RD	=	0x00b7
                           0000D0   432 _P	=	0x00d0
                           0000D1   433 _F1	=	0x00d1
                           0000D2   434 _OV	=	0x00d2
                           0000D3   435 _RS0	=	0x00d3
                           0000D4   436 _RS1	=	0x00d4
                           0000D5   437 _F0	=	0x00d5
                           0000D6   438 _AC	=	0x00d6
                           0000D7   439 _CY	=	0x00d7
                           000098   440 _RI	=	0x0098
                           000099   441 _TI	=	0x0099
                           00009A   442 _RB8	=	0x009a
                           00009B   443 _TB8	=	0x009b
                           00009C   444 _REN	=	0x009c
                           00009D   445 _SM2	=	0x009d
                           00009E   446 _SM1	=	0x009e
                           00009F   447 _SM0	=	0x009f
                           000088   448 _IT0	=	0x0088
                           000089   449 _IE0	=	0x0089
                           00008A   450 _IT1	=	0x008a
                           00008B   451 _IE1	=	0x008b
                           00008C   452 _TR0	=	0x008c
                           00008D   453 _TF0	=	0x008d
                           00008E   454 _TR1	=	0x008e
                           00008F   455 _TF1	=	0x008f
                                    456 ;--------------------------------------------------------
                                    457 ; overlayable register banks
                                    458 ;--------------------------------------------------------
                                    459 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        460 	.ds 8
                                    461 ;--------------------------------------------------------
                                    462 ; overlayable bit register bank
                                    463 ;--------------------------------------------------------
                                    464 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        465 bits:
      000021                        466 	.ds 1
                           008000   467 	b0 = bits[0]
                           008100   468 	b1 = bits[1]
                           008200   469 	b2 = bits[2]
                           008300   470 	b3 = bits[3]
                           008400   471 	b4 = bits[4]
                           008500   472 	b5 = bits[5]
                           008600   473 	b6 = bits[6]
                           008700   474 	b7 = bits[7]
                                    475 ;--------------------------------------------------------
                                    476 ; internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area DSEG    (DATA)
      000008                        479 _enc_init_sloc0_1_0:
      000008                        480 	.ds 3
      00000B                        481 _enc_init_sloc1_1_0:
      00000B                        482 	.ds 3
      00000E                        483 _enc_init_sloc2_1_0:
      00000E                        484 	.ds 3
      000011                        485 _enc_init_sloc3_1_0:
      000011                        486 	.ds 3
                                    487 ;--------------------------------------------------------
                                    488 ; overlayable items in internal ram
                                    489 ;--------------------------------------------------------
                                    490 ;--------------------------------------------------------
                                    491 ; indirectly addressable internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area ISEG    (DATA)
                                    494 ;--------------------------------------------------------
                                    495 ; absolute internal ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area IABS    (ABS,DATA)
                                    498 	.area IABS    (ABS,DATA)
                                    499 ;--------------------------------------------------------
                                    500 ; bit data
                                    501 ;--------------------------------------------------------
                                    502 	.area BSEG    (BIT)
      000000                        503 _enc28j60_transmission_successful_sloc0_1_0:
      000000                        504 	.ds 1
                                    505 ;--------------------------------------------------------
                                    506 ; paged external ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area PSEG    (PAG,XDATA)
                                    509 ;--------------------------------------------------------
                                    510 ; uninitialized external ram data
                                    511 ;--------------------------------------------------------
                                    512 	.area XSEG    (XDATA)
      000100                        513 _delay_ms_ms_10000_73:
      000100                        514 	.ds 2
      000102                        515 _delay_ms_i_20000_75:
      000102                        516 	.ds 4
      000106                        517 _enc28j60_set_transmit_pointers_PARM_2:
      000106                        518 	.ds 2
      000108                        519 _enc28j60_set_transmit_pointers_start_address_10000_79:
      000108                        520 	.ds 2
      00010A                        521 _wait_for_transmission_complete_timeout_ms_10000_81:
      00010A                        522 	.ds 2
      00010C                        523 _send_arp_request_source_mac_10000_87:
      00010C                        524 	.ds 6
      000112                        525 _send_arp_request_dest_mac_10000_87:
      000112                        526 	.ds 6
      000118                        527 _send_arp_request_source_ip_10000_87:
      000118                        528 	.ds 4
      00011C                        529 _send_arp_request_target_ip_10000_87:
      00011C                        530 	.ds 4
      000120                        531 _send_arp_request_arp_packet_10000_87:
      000120                        532 	.ds 43
      00014B                        533 _enc_buffer_init_PARM_2:
      00014B                        534 	.ds 2
      00014D                        535 _enc_buffer_init_start_address_10000_107:
      00014D                        536 	.ds 2
      00014F                        537 _enc_init_mac_10000_110:
      00014F                        538 	.ds 3
                                    539 ;--------------------------------------------------------
                                    540 ; absolute external ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area XABS    (ABS,XDATA)
                                    543 ;--------------------------------------------------------
                                    544 ; initialized external ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area XISEG   (XDATA)
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
                                    574 ;Allocation info for local variables in function 'delay_ms'
                                    575 ;------------------------------------------------------------
                                    576 ;ms                        Allocated with name '_delay_ms_ms_10000_73'
                                    577 ;i                         Allocated with name '_delay_ms_i_20000_75'
                                    578 ;------------------------------------------------------------
                                    579 ;	Eth.c:48: void delay_ms(uint16_t ms)
                                    580 ;	-----------------------------------------
                                    581 ;	 function delay_ms
                                    582 ;	-----------------------------------------
      002065                        583 _delay_ms:
                           000007   584 	ar7 = 0x07
                           000006   585 	ar6 = 0x06
                           000005   586 	ar5 = 0x05
                           000004   587 	ar4 = 0x04
                           000003   588 	ar3 = 0x03
                           000002   589 	ar2 = 0x02
                           000001   590 	ar1 = 0x01
                           000000   591 	ar0 = 0x00
      002065 AF 83            [24]  592 	mov	r7,dph
      002067 E5 82            [12]  593 	mov	a,dpl
      002069 90 01 00         [24]  594 	mov	dptr,#_delay_ms_ms_10000_73
      00206C F0               [24]  595 	movx	@dptr,a
      00206D EF               [12]  596 	mov	a,r7
      00206E A3               [24]  597 	inc	dptr
      00206F F0               [24]  598 	movx	@dptr,a
                                    599 ;	Eth.c:50: for (volatile uint32_t i = 0; i < ms * 1000; i++)
      002070 90 01 02         [24]  600 	mov	dptr,#_delay_ms_i_20000_75
      002073 E4               [12]  601 	clr	a
      002074 F0               [24]  602 	movx	@dptr,a
      002075 A3               [24]  603 	inc	dptr
      002076 F0               [24]  604 	movx	@dptr,a
      002077 A3               [24]  605 	inc	dptr
      002078 F0               [24]  606 	movx	@dptr,a
      002079 A3               [24]  607 	inc	dptr
      00207A F0               [24]  608 	movx	@dptr,a
      00207B 90 01 00         [24]  609 	mov	dptr,#_delay_ms_ms_10000_73
      00207E E0               [24]  610 	movx	a,@dptr
      00207F FE               [12]  611 	mov	r6,a
      002080 A3               [24]  612 	inc	dptr
      002081 E0               [24]  613 	movx	a,@dptr
      002082 FF               [12]  614 	mov	r7,a
      002083                        615 00103$:
      002083 90 03 A3         [24]  616 	mov	dptr,#__mulint_PARM_2
      002086 EE               [12]  617 	mov	a,r6
      002087 F0               [24]  618 	movx	@dptr,a
      002088 EF               [12]  619 	mov	a,r7
      002089 A3               [24]  620 	inc	dptr
      00208A F0               [24]  621 	movx	@dptr,a
      00208B 90 03 E8         [24]  622 	mov	dptr,#0x03e8
      00208E C0 07            [24]  623 	push	ar7
      002090 C0 06            [24]  624 	push	ar6
      002092 12 3D 0E         [24]  625 	lcall	__mulint
      002095 AC 82            [24]  626 	mov	r4, dpl
      002097 AD 83            [24]  627 	mov	r5, dph
      002099 D0 06            [24]  628 	pop	ar6
      00209B D0 07            [24]  629 	pop	ar7
      00209D 90 01 02         [24]  630 	mov	dptr,#_delay_ms_i_20000_75
      0020A0 E0               [24]  631 	movx	a,@dptr
      0020A1 F8               [12]  632 	mov	r0,a
      0020A2 A3               [24]  633 	inc	dptr
      0020A3 E0               [24]  634 	movx	a,@dptr
      0020A4 F9               [12]  635 	mov	r1,a
      0020A5 A3               [24]  636 	inc	dptr
      0020A6 E0               [24]  637 	movx	a,@dptr
      0020A7 FA               [12]  638 	mov	r2,a
      0020A8 A3               [24]  639 	inc	dptr
      0020A9 E0               [24]  640 	movx	a,@dptr
      0020AA FB               [12]  641 	mov	r3,a
      0020AB C0 06            [24]  642 	push	ar6
      0020AD C0 07            [24]  643 	push	ar7
      0020AF 7E 00            [12]  644 	mov	r6,#0x00
      0020B1 7F 00            [12]  645 	mov	r7,#0x00
      0020B3 C3               [12]  646 	clr	c
      0020B4 E8               [12]  647 	mov	a,r0
      0020B5 9C               [12]  648 	subb	a,r4
      0020B6 E9               [12]  649 	mov	a,r1
      0020B7 9D               [12]  650 	subb	a,r5
      0020B8 EA               [12]  651 	mov	a,r2
      0020B9 9E               [12]  652 	subb	a,r6
      0020BA EB               [12]  653 	mov	a,r3
      0020BB 9F               [12]  654 	subb	a,r7
      0020BC D0 07            [24]  655 	pop	ar7
      0020BE D0 06            [24]  656 	pop	ar6
      0020C0 50 23            [24]  657 	jnc	00105$
      0020C2 90 01 02         [24]  658 	mov	dptr,#_delay_ms_i_20000_75
      0020C5 E0               [24]  659 	movx	a,@dptr
      0020C6 FA               [12]  660 	mov	r2,a
      0020C7 A3               [24]  661 	inc	dptr
      0020C8 E0               [24]  662 	movx	a,@dptr
      0020C9 FB               [12]  663 	mov	r3,a
      0020CA A3               [24]  664 	inc	dptr
      0020CB E0               [24]  665 	movx	a,@dptr
      0020CC FC               [12]  666 	mov	r4,a
      0020CD A3               [24]  667 	inc	dptr
      0020CE E0               [24]  668 	movx	a,@dptr
      0020CF FD               [12]  669 	mov	r5,a
      0020D0 90 01 02         [24]  670 	mov	dptr,#_delay_ms_i_20000_75
      0020D3 74 01            [12]  671 	mov	a,#0x01
      0020D5 2A               [12]  672 	add	a, r2
      0020D6 F0               [24]  673 	movx	@dptr,a
      0020D7 E4               [12]  674 	clr	a
      0020D8 3B               [12]  675 	addc	a, r3
      0020D9 A3               [24]  676 	inc	dptr
      0020DA F0               [24]  677 	movx	@dptr,a
      0020DB E4               [12]  678 	clr	a
      0020DC 3C               [12]  679 	addc	a, r4
      0020DD A3               [24]  680 	inc	dptr
      0020DE F0               [24]  681 	movx	@dptr,a
      0020DF E4               [12]  682 	clr	a
      0020E0 3D               [12]  683 	addc	a, r5
      0020E1 A3               [24]  684 	inc	dptr
      0020E2 F0               [24]  685 	movx	@dptr,a
      0020E3 80 9E            [24]  686 	sjmp	00103$
      0020E5                        687 00105$:
                                    688 ;	Eth.c:54: }
      0020E5 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'enc28j60_start_transmission'
                                    692 ;------------------------------------------------------------
                                    693 ;econ1                     Allocated with name '_enc28j60_start_transmission_econ1_10000_78'
                                    694 ;------------------------------------------------------------
                                    695 ;	Eth.c:56: void enc28j60_start_transmission(void)
                                    696 ;	-----------------------------------------
                                    697 ;	 function enc28j60_start_transmission
                                    698 ;	-----------------------------------------
      0020E6                        699 _enc28j60_start_transmission:
                                    700 ;	Eth.c:58: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      0020E6 90 03 83         [24]  701 	mov	dptr,#_mac_spi_read_PARM_2
      0020E9 E4               [12]  702 	clr	a
      0020EA F0               [24]  703 	movx	@dptr,a
      0020EB 75 82 1F         [24]  704 	mov	dpl, #0x1f
      0020EE 12 35 95         [24]  705 	lcall	_mac_spi_read
      0020F1 E5 82            [12]  706 	mov	a, dpl
                                    707 ;	Eth.c:59: econ1 |= 0x08; // Set TXRTS (bit 3)
      0020F3 44 08            [12]  708 	orl	a,#0x08
      0020F5 FF               [12]  709 	mov	r7,a
                                    710 ;	Eth.c:60: spi_control_write(0, 0x1F, econ1); // Write back to ECON1
      0020F6 90 03 7A         [24]  711 	mov	dptr,#_spi_control_write_PARM_2
      0020F9 74 1F            [12]  712 	mov	a,#0x1f
      0020FB F0               [24]  713 	movx	@dptr,a
      0020FC 90 03 7B         [24]  714 	mov	dptr,#_spi_control_write_PARM_3
      0020FF EF               [12]  715 	mov	a,r7
      002100 F0               [24]  716 	movx	@dptr,a
      002101 75 82 00         [24]  717 	mov	dpl, #0x00
                                    718 ;	Eth.c:61: }
      002104 02 34 1F         [24]  719 	ljmp	_spi_control_write
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function 'enc28j60_set_transmit_pointers'
                                    722 ;------------------------------------------------------------
                                    723 ;end_address               Allocated with name '_enc28j60_set_transmit_pointers_PARM_2'
                                    724 ;start_address             Allocated with name '_enc28j60_set_transmit_pointers_start_address_10000_79'
                                    725 ;------------------------------------------------------------
                                    726 ;	Eth.c:64: void enc28j60_set_transmit_pointers(uint16_t start_address, uint16_t end_address)
                                    727 ;	-----------------------------------------
                                    728 ;	 function enc28j60_set_transmit_pointers
                                    729 ;	-----------------------------------------
      002107                        730 _enc28j60_set_transmit_pointers:
      002107 AF 83            [24]  731 	mov	r7,dph
      002109 E5 82            [12]  732 	mov	a,dpl
      00210B 90 01 08         [24]  733 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_79
      00210E F0               [24]  734 	movx	@dptr,a
      00210F EF               [12]  735 	mov	a,r7
      002110 A3               [24]  736 	inc	dptr
      002111 F0               [24]  737 	movx	@dptr,a
                                    738 ;	Eth.c:67: spi_control_write(0, 0x04, (uint8_t)(start_address & 0xFF)); // Low byte
      002112 90 01 08         [24]  739 	mov	dptr,#_enc28j60_set_transmit_pointers_start_address_10000_79
      002115 E0               [24]  740 	movx	a,@dptr
      002116 FE               [12]  741 	mov	r6,a
      002117 A3               [24]  742 	inc	dptr
      002118 E0               [24]  743 	movx	a,@dptr
      002119 FF               [12]  744 	mov	r7,a
      00211A 8E 05            [24]  745 	mov	ar5,r6
      00211C 90 03 7A         [24]  746 	mov	dptr,#_spi_control_write_PARM_2
      00211F 74 04            [12]  747 	mov	a,#0x04
      002121 F0               [24]  748 	movx	@dptr,a
      002122 90 03 7B         [24]  749 	mov	dptr,#_spi_control_write_PARM_3
      002125 ED               [12]  750 	mov	a,r5
      002126 F0               [24]  751 	movx	@dptr,a
      002127 75 82 00         [24]  752 	mov	dpl, #0x00
      00212A C0 07            [24]  753 	push	ar7
      00212C C0 06            [24]  754 	push	ar6
      00212E 12 34 1F         [24]  755 	lcall	_spi_control_write
      002131 D0 06            [24]  756 	pop	ar6
      002133 D0 07            [24]  757 	pop	ar7
                                    758 ;	Eth.c:68: spi_control_write(0, 0x05, (uint8_t)((start_address >> 8) & 0xFF)); // High byte
      002135 8F 06            [24]  759 	mov	ar6,r7
      002137 90 03 7A         [24]  760 	mov	dptr,#_spi_control_write_PARM_2
      00213A 74 05            [12]  761 	mov	a,#0x05
      00213C F0               [24]  762 	movx	@dptr,a
      00213D 90 03 7B         [24]  763 	mov	dptr,#_spi_control_write_PARM_3
      002140 EE               [12]  764 	mov	a,r6
      002141 F0               [24]  765 	movx	@dptr,a
      002142 75 82 00         [24]  766 	mov	dpl, #0x00
      002145 12 34 1F         [24]  767 	lcall	_spi_control_write
                                    768 ;	Eth.c:71: spi_control_write(0, 0x06, (uint8_t)(end_address & 0xFF)); // Low byte
      002148 90 01 06         [24]  769 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      00214B E0               [24]  770 	movx	a,@dptr
      00214C FE               [12]  771 	mov	r6,a
      00214D A3               [24]  772 	inc	dptr
      00214E E0               [24]  773 	movx	a,@dptr
      00214F FF               [12]  774 	mov	r7,a
      002150 8E 05            [24]  775 	mov	ar5,r6
      002152 90 03 7A         [24]  776 	mov	dptr,#_spi_control_write_PARM_2
      002155 74 06            [12]  777 	mov	a,#0x06
      002157 F0               [24]  778 	movx	@dptr,a
      002158 90 03 7B         [24]  779 	mov	dptr,#_spi_control_write_PARM_3
      00215B ED               [12]  780 	mov	a,r5
      00215C F0               [24]  781 	movx	@dptr,a
      00215D 75 82 00         [24]  782 	mov	dpl, #0x00
      002160 C0 07            [24]  783 	push	ar7
      002162 C0 06            [24]  784 	push	ar6
      002164 12 34 1F         [24]  785 	lcall	_spi_control_write
      002167 D0 06            [24]  786 	pop	ar6
      002169 D0 07            [24]  787 	pop	ar7
                                    788 ;	Eth.c:72: spi_control_write(0, 0x07, (uint8_t)((end_address >> 8) & 0xFF)); // High byte
      00216B 8F 06            [24]  789 	mov	ar6,r7
      00216D 90 03 7A         [24]  790 	mov	dptr,#_spi_control_write_PARM_2
      002170 74 07            [12]  791 	mov	a,#0x07
      002172 F0               [24]  792 	movx	@dptr,a
      002173 90 03 7B         [24]  793 	mov	dptr,#_spi_control_write_PARM_3
      002176 EE               [12]  794 	mov	a,r6
      002177 F0               [24]  795 	movx	@dptr,a
      002178 75 82 00         [24]  796 	mov	dpl, #0x00
                                    797 ;	Eth.c:73: }
      00217B 02 34 1F         [24]  798 	ljmp	_spi_control_write
                                    799 ;------------------------------------------------------------
                                    800 ;Allocation info for local variables in function 'wait_for_transmission_complete'
                                    801 ;------------------------------------------------------------
                                    802 ;timeout_ms                Allocated with name '_wait_for_transmission_complete_timeout_ms_10000_81'
                                    803 ;elapsed                   Allocated with name '_wait_for_transmission_complete_elapsed_10000_82'
                                    804 ;econ1                     Allocated with name '_wait_for_transmission_complete_econ1_20000_83'
                                    805 ;------------------------------------------------------------
                                    806 ;	Eth.c:75: bool wait_for_transmission_complete(uint16_t timeout_ms)
                                    807 ;	-----------------------------------------
                                    808 ;	 function wait_for_transmission_complete
                                    809 ;	-----------------------------------------
      00217E                        810 _wait_for_transmission_complete:
      00217E AF 83            [24]  811 	mov	r7,dph
      002180 E5 82            [12]  812 	mov	a,dpl
      002182 90 01 0A         [24]  813 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_81
      002185 F0               [24]  814 	movx	@dptr,a
      002186 EF               [12]  815 	mov	a,r7
      002187 A3               [24]  816 	inc	dptr
      002188 F0               [24]  817 	movx	@dptr,a
                                    818 ;	Eth.c:79: while (elapsed < timeout_ms) {
      002189 90 01 0A         [24]  819 	mov	dptr,#_wait_for_transmission_complete_timeout_ms_10000_81
      00218C E0               [24]  820 	movx	a,@dptr
      00218D FE               [12]  821 	mov	r6,a
      00218E A3               [24]  822 	inc	dptr
      00218F E0               [24]  823 	movx	a,@dptr
      002190 FF               [12]  824 	mov	r7,a
      002191 7C 00            [12]  825 	mov	r4,#0x00
      002193 7D 00            [12]  826 	mov	r5,#0x00
      002195                        827 00103$:
      002195 C3               [12]  828 	clr	c
      002196 EC               [12]  829 	mov	a,r4
      002197 9E               [12]  830 	subb	a,r6
      002198 ED               [12]  831 	mov	a,r5
      002199 9F               [12]  832 	subb	a,r7
      00219A 50 41            [24]  833 	jnc	00105$
                                    834 ;	Eth.c:80: uint8_t econ1 = mac_spi_read(0x1F, 0); // Read ECON1
      00219C 90 03 83         [24]  835 	mov	dptr,#_mac_spi_read_PARM_2
      00219F E4               [12]  836 	clr	a
      0021A0 F0               [24]  837 	movx	@dptr,a
      0021A1 75 82 1F         [24]  838 	mov	dpl, #0x1f
      0021A4 C0 07            [24]  839 	push	ar7
      0021A6 C0 06            [24]  840 	push	ar6
      0021A8 C0 05            [24]  841 	push	ar5
      0021AA C0 04            [24]  842 	push	ar4
      0021AC 12 35 95         [24]  843 	lcall	_mac_spi_read
      0021AF E5 82            [12]  844 	mov	a, dpl
      0021B1 D0 04            [24]  845 	pop	ar4
      0021B3 D0 05            [24]  846 	pop	ar5
      0021B5 D0 06            [24]  847 	pop	ar6
      0021B7 D0 07            [24]  848 	pop	ar7
                                    849 ;	Eth.c:81: if (!(econ1 & (1 << 3))) { // TXRTS (bit 3) cleared means transmission complete
      0021B9 20 E3 04         [24]  850 	jb	acc.3,00102$
                                    851 ;	Eth.c:82: return true;  // Transmission completed
      0021BC 75 82 01         [24]  852 	mov	dpl, #0x01
      0021BF 22               [24]  853 	ret
      0021C0                        854 00102$:
                                    855 ;	Eth.c:85: delay_ms(1);  // Wait 1 ms
      0021C0 90 00 01         [24]  856 	mov	dptr,#0x0001
      0021C3 C0 07            [24]  857 	push	ar7
      0021C5 C0 06            [24]  858 	push	ar6
      0021C7 C0 05            [24]  859 	push	ar5
      0021C9 C0 04            [24]  860 	push	ar4
      0021CB 12 20 65         [24]  861 	lcall	_delay_ms
      0021CE D0 04            [24]  862 	pop	ar4
      0021D0 D0 05            [24]  863 	pop	ar5
      0021D2 D0 06            [24]  864 	pop	ar6
      0021D4 D0 07            [24]  865 	pop	ar7
                                    866 ;	Eth.c:86: elapsed++;
      0021D6 0C               [12]  867 	inc	r4
      0021D7 BC 00 BB         [24]  868 	cjne	r4,#0x00,00103$
      0021DA 0D               [12]  869 	inc	r5
      0021DB 80 B8            [24]  870 	sjmp	00103$
      0021DD                        871 00105$:
                                    872 ;	Eth.c:89: return false;  // Timed out
      0021DD 75 82 00         [24]  873 	mov	dpl, #0x00
                                    874 ;	Eth.c:90: }
      0021E0 22               [24]  875 	ret
                                    876 ;------------------------------------------------------------
                                    877 ;Allocation info for local variables in function 'enc28j60_transmission_successful'
                                    878 ;------------------------------------------------------------
                                    879 ;estat                     Allocated with name '_enc28j60_transmission_successful_estat_10000_85'
                                    880 ;------------------------------------------------------------
                                    881 ;	Eth.c:92: bool enc28j60_transmission_successful()
                                    882 ;	-----------------------------------------
                                    883 ;	 function enc28j60_transmission_successful
                                    884 ;	-----------------------------------------
      0021E1                        885 _enc28j60_transmission_successful:
                                    886 ;	Eth.c:94: uint8_t estat = mac_spi_read(0x1D, 0); // Read ESTAT
      0021E1 90 03 83         [24]  887 	mov	dptr,#_mac_spi_read_PARM_2
      0021E4 E4               [12]  888 	clr	a
      0021E5 F0               [24]  889 	movx	@dptr,a
      0021E6 75 82 1D         [24]  890 	mov	dpl, #0x1d
      0021E9 12 35 95         [24]  891 	lcall	_mac_spi_read
                                    892 ;	Eth.c:95: return !(estat & 0x02); // Check if TXABRT (bit 1) is not set
      0021EC E5 82            [12]  893 	mov	a,dpl
      0021EE 03               [12]  894 	rr	a
      0021EF 54 01            [12]  895 	anl	a,#0x01
      0021F1 B4 01 00         [24]  896 	cjne	a,#0x01,00103$
      0021F4                        897 00103$:
      0021F4 92 00            [24]  898 	mov  _enc28j60_transmission_successful_sloc0_1_0,c
      0021F6 E4               [12]  899 	clr	a
      0021F7 33               [12]  900 	rlc	a
      0021F8 F5 82            [12]  901 	mov	dpl, a
                                    902 ;	Eth.c:96: }
      0021FA 22               [24]  903 	ret
                                    904 ;------------------------------------------------------------
                                    905 ;Allocation info for local variables in function 'send_arp_request'
                                    906 ;------------------------------------------------------------
                                    907 ;source_mac                Allocated with name '_send_arp_request_source_mac_10000_87'
                                    908 ;dest_mac                  Allocated with name '_send_arp_request_dest_mac_10000_87'
                                    909 ;source_ip                 Allocated with name '_send_arp_request_source_ip_10000_87'
                                    910 ;target_ip                 Allocated with name '_send_arp_request_target_ip_10000_87'
                                    911 ;arp_packet                Allocated with name '_send_arp_request_arp_packet_10000_87'
                                    912 ;i                         Allocated with name '_send_arp_request_i_20000_88'
                                    913 ;i                         Allocated with name '_send_arp_request_i_20000_90'
                                    914 ;i                         Allocated with name '_send_arp_request_i_20000_92'
                                    915 ;i                         Allocated with name '_send_arp_request_i_20000_94'
                                    916 ;i                         Allocated with name '_send_arp_request_i_20000_96'
                                    917 ;frame_size                Allocated with name '_send_arp_request_frame_size_10001_98'
                                    918 ;start_address             Allocated with name '_send_arp_request_start_address_10001_98'
                                    919 ;end_address               Allocated with name '_send_arp_request_end_address_10002_100'
                                    920 ;------------------------------------------------------------
                                    921 ;	Eth.c:98: void send_arp_request(void)
                                    922 ;	-----------------------------------------
                                    923 ;	 function send_arp_request
                                    924 ;	-----------------------------------------
      0021FB                        925 _send_arp_request:
                                    926 ;	Eth.c:102: uint8_t source_mac[6] = {0x02, 0x11, 0x22, 0x33, 0x44, 0x55};  // ENC28J60 MAC address
      0021FB 90 01 0C         [24]  927 	mov	dptr,#_send_arp_request_source_mac_10000_87
      0021FE 74 02            [12]  928 	mov	a,#0x02
      002200 F0               [24]  929 	movx	@dptr,a
      002201 90 01 0D         [24]  930 	mov	dptr,#(_send_arp_request_source_mac_10000_87 + 0x0001)
      002204 74 11            [12]  931 	mov	a,#0x11
      002206 F0               [24]  932 	movx	@dptr,a
      002207 90 01 0E         [24]  933 	mov	dptr,#(_send_arp_request_source_mac_10000_87 + 0x0002)
      00220A 23               [12]  934 	rl	a
      00220B F0               [24]  935 	movx	@dptr,a
      00220C 90 01 0F         [24]  936 	mov	dptr,#(_send_arp_request_source_mac_10000_87 + 0x0003)
      00220F 74 33            [12]  937 	mov	a,#0x33
      002211 F0               [24]  938 	movx	@dptr,a
      002212 90 01 10         [24]  939 	mov	dptr,#(_send_arp_request_source_mac_10000_87 + 0x0004)
      002215 74 44            [12]  940 	mov	a,#0x44
      002217 F0               [24]  941 	movx	@dptr,a
      002218 90 01 11         [24]  942 	mov	dptr,#(_send_arp_request_source_mac_10000_87 + 0x0005)
      00221B 74 55            [12]  943 	mov	a,#0x55
      00221D F0               [24]  944 	movx	@dptr,a
                                    945 ;	Eth.c:103: uint8_t dest_mac[6] = {0xF8, 0x75, 0xA4, 0x8C, 0x41, 0x31};  // Target PC MAC address
      00221E 90 01 12         [24]  946 	mov	dptr,#_send_arp_request_dest_mac_10000_87
      002221 74 F8            [12]  947 	mov	a,#0xf8
      002223 F0               [24]  948 	movx	@dptr,a
      002224 90 01 13         [24]  949 	mov	dptr,#(_send_arp_request_dest_mac_10000_87 + 0x0001)
      002227 74 75            [12]  950 	mov	a,#0x75
      002229 F0               [24]  951 	movx	@dptr,a
      00222A 90 01 14         [24]  952 	mov	dptr,#(_send_arp_request_dest_mac_10000_87 + 0x0002)
      00222D 74 A4            [12]  953 	mov	a,#0xa4
      00222F F0               [24]  954 	movx	@dptr,a
      002230 90 01 15         [24]  955 	mov	dptr,#(_send_arp_request_dest_mac_10000_87 + 0x0003)
      002233 74 8C            [12]  956 	mov	a,#0x8c
      002235 F0               [24]  957 	movx	@dptr,a
      002236 90 01 16         [24]  958 	mov	dptr,#(_send_arp_request_dest_mac_10000_87 + 0x0004)
      002239 74 41            [12]  959 	mov	a,#0x41
      00223B F0               [24]  960 	movx	@dptr,a
      00223C 90 01 17         [24]  961 	mov	dptr,#(_send_arp_request_dest_mac_10000_87 + 0x0005)
      00223F 74 31            [12]  962 	mov	a,#0x31
      002241 F0               [24]  963 	movx	@dptr,a
                                    964 ;	Eth.c:104: uint8_t source_ip[4] = {192, 168, 1, 100};  // ENC28J60 IP address (Example)
      002242 90 01 18         [24]  965 	mov	dptr,#_send_arp_request_source_ip_10000_87
      002245 74 C0            [12]  966 	mov	a,#0xc0
      002247 F0               [24]  967 	movx	@dptr,a
      002248 90 01 19         [24]  968 	mov	dptr,#(_send_arp_request_source_ip_10000_87 + 0x0001)
      00224B 74 A8            [12]  969 	mov	a,#0xa8
      00224D F0               [24]  970 	movx	@dptr,a
      00224E 90 01 1A         [24]  971 	mov	dptr,#(_send_arp_request_source_ip_10000_87 + 0x0002)
      002251 74 01            [12]  972 	mov	a,#0x01
      002253 F0               [24]  973 	movx	@dptr,a
      002254 90 01 1B         [24]  974 	mov	dptr,#(_send_arp_request_source_ip_10000_87 + 0x0003)
      002257 74 64            [12]  975 	mov	a,#0x64
      002259 F0               [24]  976 	movx	@dptr,a
                                    977 ;	Eth.c:105: uint8_t target_ip[4] = {192, 168, 1, 1};  // Target PC IP address
      00225A 90 01 1C         [24]  978 	mov	dptr,#_send_arp_request_target_ip_10000_87
      00225D 74 C0            [12]  979 	mov	a,#0xc0
      00225F F0               [24]  980 	movx	@dptr,a
      002260 90 01 1D         [24]  981 	mov	dptr,#(_send_arp_request_target_ip_10000_87 + 0x0001)
      002263 74 A8            [12]  982 	mov	a,#0xa8
      002265 F0               [24]  983 	movx	@dptr,a
      002266 90 01 1E         [24]  984 	mov	dptr,#(_send_arp_request_target_ip_10000_87 + 0x0002)
      002269 74 01            [12]  985 	mov	a,#0x01
      00226B F0               [24]  986 	movx	@dptr,a
      00226C 90 01 1F         [24]  987 	mov	dptr,#(_send_arp_request_target_ip_10000_87 + 0x0003)
      00226F F0               [24]  988 	movx	@dptr,a
                                    989 ;	Eth.c:109: arp_packet[0] = 0x0E;
      002270 90 01 20         [24]  990 	mov	dptr,#_send_arp_request_arp_packet_10000_87
      002273 74 0E            [12]  991 	mov	a,#0x0e
      002275 F0               [24]  992 	movx	@dptr,a
                                    993 ;	Eth.c:117: for (int i = 0; i < 6; i++)
      002276 7E 00            [12]  994 	mov	r6,#0x00
      002278 7F 00            [12]  995 	mov	r7,#0x00
      00227A                        996 00115$:
      00227A C3               [12]  997 	clr	c
      00227B EE               [12]  998 	mov	a,r6
      00227C 94 06            [12]  999 	subb	a,#0x06
      00227E EF               [12] 1000 	mov	a,r7
      00227F 64 80            [12] 1001 	xrl	a,#0x80
      002281 94 80            [12] 1002 	subb	a,#0x80
      002283 50 48            [24] 1003 	jnc	00101$
                                   1004 ;	Eth.c:119: arp_packet[i + 1] = dest_mac[i];  // Destination MAC address
      002285 8E 05            [24] 1005 	mov	ar5,r6
      002287 ED               [12] 1006 	mov	a,r5
      002288 04               [12] 1007 	inc	a
      002289 FC               [12] 1008 	mov	r4,a
      00228A 33               [12] 1009 	rlc	a
      00228B 95 E0            [12] 1010 	subb	a,acc
      00228D FB               [12] 1011 	mov	r3,a
      00228E EC               [12] 1012 	mov	a,r4
      00228F 24 20            [12] 1013 	add	a, #_send_arp_request_arp_packet_10000_87
      002291 FC               [12] 1014 	mov	r4,a
      002292 EB               [12] 1015 	mov	a,r3
      002293 34 01            [12] 1016 	addc	a, #(_send_arp_request_arp_packet_10000_87 >> 8)
      002295 FB               [12] 1017 	mov	r3,a
      002296 EE               [12] 1018 	mov	a,r6
      002297 24 12            [12] 1019 	add	a, #_send_arp_request_dest_mac_10000_87
      002299 F5 82            [12] 1020 	mov	dpl,a
      00229B EF               [12] 1021 	mov	a,r7
      00229C 34 01            [12] 1022 	addc	a, #(_send_arp_request_dest_mac_10000_87 >> 8)
      00229E F5 83            [12] 1023 	mov	dph,a
      0022A0 E0               [24] 1024 	movx	a,@dptr
      0022A1 8C 82            [24] 1025 	mov	dpl,r4
      0022A3 8B 83            [24] 1026 	mov	dph,r3
      0022A5 F0               [24] 1027 	movx	@dptr,a
                                   1028 ;	Eth.c:120: arp_packet[i + 7] = source_mac[i];  // Source MAC address
      0022A6 74 07            [12] 1029 	mov	a,#0x07
      0022A8 2D               [12] 1030 	add	a, r5
      0022A9 FD               [12] 1031 	mov	r5,a
      0022AA 33               [12] 1032 	rlc	a
      0022AB 95 E0            [12] 1033 	subb	a,acc
      0022AD FC               [12] 1034 	mov	r4,a
      0022AE ED               [12] 1035 	mov	a,r5
      0022AF 24 20            [12] 1036 	add	a, #_send_arp_request_arp_packet_10000_87
      0022B1 FD               [12] 1037 	mov	r5,a
      0022B2 EC               [12] 1038 	mov	a,r4
      0022B3 34 01            [12] 1039 	addc	a, #(_send_arp_request_arp_packet_10000_87 >> 8)
      0022B5 FC               [12] 1040 	mov	r4,a
      0022B6 EE               [12] 1041 	mov	a,r6
      0022B7 24 0C            [12] 1042 	add	a, #_send_arp_request_source_mac_10000_87
      0022B9 F5 82            [12] 1043 	mov	dpl,a
      0022BB EF               [12] 1044 	mov	a,r7
      0022BC 34 01            [12] 1045 	addc	a, #(_send_arp_request_source_mac_10000_87 >> 8)
      0022BE F5 83            [12] 1046 	mov	dph,a
      0022C0 E0               [24] 1047 	movx	a,@dptr
      0022C1 8D 82            [24] 1048 	mov	dpl,r5
      0022C3 8C 83            [24] 1049 	mov	dph,r4
      0022C5 F0               [24] 1050 	movx	@dptr,a
                                   1051 ;	Eth.c:117: for (int i = 0; i < 6; i++)
      0022C6 0E               [12] 1052 	inc	r6
      0022C7 BE 00 B0         [24] 1053 	cjne	r6,#0x00,00115$
      0022CA 0F               [12] 1054 	inc	r7
      0022CB 80 AD            [24] 1055 	sjmp	00115$
      0022CD                       1056 00101$:
                                   1057 ;	Eth.c:124: arp_packet[13] = (ETH_TYPE_ARP >> 8) & 0xFF;
      0022CD 90 01 2D         [24] 1058 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x000d)
      0022D0 74 08            [12] 1059 	mov	a,#0x08
      0022D2 F0               [24] 1060 	movx	@dptr,a
                                   1061 ;	Eth.c:125: arp_packet[14] = ETH_TYPE_ARP & 0xFF;
      0022D3 90 01 2E         [24] 1062 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x000e)
      0022D6 74 06            [12] 1063 	mov	a,#0x06
      0022D8 F0               [24] 1064 	movx	@dptr,a
                                   1065 ;	Eth.c:129: arp_packet[15] = 0x00;
      0022D9 90 01 2F         [24] 1066 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x000f)
      0022DC E4               [12] 1067 	clr	a
      0022DD F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	Eth.c:130: arp_packet[16] = 0x01;
      0022DE 90 01 30         [24] 1070 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x0010)
      0022E1 04               [12] 1071 	inc	a
      0022E2 F0               [24] 1072 	movx	@dptr,a
                                   1073 ;	Eth.c:133: arp_packet[17] = 0x08;
      0022E3 90 01 31         [24] 1074 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x0011)
      0022E6 74 08            [12] 1075 	mov	a,#0x08
      0022E8 F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	Eth.c:134: arp_packet[18] = 0x00;
      0022E9 90 01 32         [24] 1078 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x0012)
      0022EC E4               [12] 1079 	clr	a
      0022ED F0               [24] 1080 	movx	@dptr,a
                                   1081 ;	Eth.c:137: arp_packet[19] = 0x06;
      0022EE 90 01 33         [24] 1082 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x0013)
      0022F1 74 06            [12] 1083 	mov	a,#0x06
      0022F3 F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	Eth.c:140: arp_packet[20] = 0x04;
      0022F4 90 01 34         [24] 1086 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x0014)
      0022F7 74 04            [12] 1087 	mov	a,#0x04
      0022F9 F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	Eth.c:143: arp_packet[21] = 0x00;
      0022FA 90 01 35         [24] 1090 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x0015)
      0022FD E4               [12] 1091 	clr	a
      0022FE F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	Eth.c:144: arp_packet[22] = 0x01;
      0022FF 90 01 36         [24] 1094 	mov	dptr,#(_send_arp_request_arp_packet_10000_87 + 0x0016)
      002302 04               [12] 1095 	inc	a
      002303 F0               [24] 1096 	movx	@dptr,a
                                   1097 ;	Eth.c:147: for (int i = 0; i < 6; i++) {
      002304 7E 00            [12] 1098 	mov	r6,#0x00
      002306 7F 00            [12] 1099 	mov	r7,#0x00
      002308                       1100 00118$:
      002308 C3               [12] 1101 	clr	c
      002309 EE               [12] 1102 	mov	a,r6
      00230A 94 06            [12] 1103 	subb	a,#0x06
      00230C EF               [12] 1104 	mov	a,r7
      00230D 64 80            [12] 1105 	xrl	a,#0x80
      00230F 94 80            [12] 1106 	subb	a,#0x80
      002311 50 29            [24] 1107 	jnc	00102$
                                   1108 ;	Eth.c:148: arp_packet[23 + i] = source_mac[i];
      002313 8E 05            [24] 1109 	mov	ar5,r6
      002315 74 17            [12] 1110 	mov	a,#0x17
      002317 2D               [12] 1111 	add	a, r5
      002318 FD               [12] 1112 	mov	r5,a
      002319 33               [12] 1113 	rlc	a
      00231A 95 E0            [12] 1114 	subb	a,acc
      00231C FC               [12] 1115 	mov	r4,a
      00231D ED               [12] 1116 	mov	a,r5
      00231E 24 20            [12] 1117 	add	a, #_send_arp_request_arp_packet_10000_87
      002320 FD               [12] 1118 	mov	r5,a
      002321 EC               [12] 1119 	mov	a,r4
      002322 34 01            [12] 1120 	addc	a, #(_send_arp_request_arp_packet_10000_87 >> 8)
      002324 FC               [12] 1121 	mov	r4,a
      002325 EE               [12] 1122 	mov	a,r6
      002326 24 0C            [12] 1123 	add	a, #_send_arp_request_source_mac_10000_87
      002328 F5 82            [12] 1124 	mov	dpl,a
      00232A EF               [12] 1125 	mov	a,r7
      00232B 34 01            [12] 1126 	addc	a, #(_send_arp_request_source_mac_10000_87 >> 8)
      00232D F5 83            [12] 1127 	mov	dph,a
      00232F E0               [24] 1128 	movx	a,@dptr
      002330 8D 82            [24] 1129 	mov	dpl,r5
      002332 8C 83            [24] 1130 	mov	dph,r4
      002334 F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	Eth.c:147: for (int i = 0; i < 6; i++) {
      002335 0E               [12] 1133 	inc	r6
      002336 BE 00 CF         [24] 1134 	cjne	r6,#0x00,00118$
      002339 0F               [12] 1135 	inc	r7
      00233A 80 CC            [24] 1136 	sjmp	00118$
      00233C                       1137 00102$:
                                   1138 ;	Eth.c:152: for (int i = 0; i < 4; i++) {
      00233C 7E 00            [12] 1139 	mov	r6,#0x00
      00233E 7F 00            [12] 1140 	mov	r7,#0x00
      002340                       1141 00121$:
      002340 C3               [12] 1142 	clr	c
      002341 EE               [12] 1143 	mov	a,r6
      002342 94 04            [12] 1144 	subb	a,#0x04
      002344 EF               [12] 1145 	mov	a,r7
      002345 64 80            [12] 1146 	xrl	a,#0x80
      002347 94 80            [12] 1147 	subb	a,#0x80
      002349 50 29            [24] 1148 	jnc	00103$
                                   1149 ;	Eth.c:153: arp_packet[29 + i] = source_ip[i];
      00234B 8E 05            [24] 1150 	mov	ar5,r6
      00234D 74 1D            [12] 1151 	mov	a,#0x1d
      00234F 2D               [12] 1152 	add	a, r5
      002350 FD               [12] 1153 	mov	r5,a
      002351 33               [12] 1154 	rlc	a
      002352 95 E0            [12] 1155 	subb	a,acc
      002354 FC               [12] 1156 	mov	r4,a
      002355 ED               [12] 1157 	mov	a,r5
      002356 24 20            [12] 1158 	add	a, #_send_arp_request_arp_packet_10000_87
      002358 FD               [12] 1159 	mov	r5,a
      002359 EC               [12] 1160 	mov	a,r4
      00235A 34 01            [12] 1161 	addc	a, #(_send_arp_request_arp_packet_10000_87 >> 8)
      00235C FC               [12] 1162 	mov	r4,a
      00235D EE               [12] 1163 	mov	a,r6
      00235E 24 18            [12] 1164 	add	a, #_send_arp_request_source_ip_10000_87
      002360 F5 82            [12] 1165 	mov	dpl,a
      002362 EF               [12] 1166 	mov	a,r7
      002363 34 01            [12] 1167 	addc	a, #(_send_arp_request_source_ip_10000_87 >> 8)
      002365 F5 83            [12] 1168 	mov	dph,a
      002367 E0               [24] 1169 	movx	a,@dptr
      002368 8D 82            [24] 1170 	mov	dpl,r5
      00236A 8C 83            [24] 1171 	mov	dph,r4
      00236C F0               [24] 1172 	movx	@dptr,a
                                   1173 ;	Eth.c:152: for (int i = 0; i < 4; i++) {
      00236D 0E               [12] 1174 	inc	r6
      00236E BE 00 CF         [24] 1175 	cjne	r6,#0x00,00121$
      002371 0F               [12] 1176 	inc	r7
      002372 80 CC            [24] 1177 	sjmp	00121$
      002374                       1178 00103$:
                                   1179 ;	Eth.c:157: for (int i = 0; i < 6; i++) {
      002374 7F 00            [12] 1180 	mov	r7,#0x00
      002376                       1181 00124$:
      002376 BF 06 00         [24] 1182 	cjne	r7,#0x06,00215$
      002379                       1183 00215$:
      002379 50 19            [24] 1184 	jnc	00104$
                                   1185 ;	Eth.c:158: arp_packet[33 + i] = 0x00;
      00237B 8F 06            [24] 1186 	mov	ar6,r7
      00237D 74 21            [12] 1187 	mov	a,#0x21
      00237F 2E               [12] 1188 	add	a, r6
      002380 FE               [12] 1189 	mov	r6,a
      002381 33               [12] 1190 	rlc	a
      002382 95 E0            [12] 1191 	subb	a,acc
      002384 FD               [12] 1192 	mov	r5,a
      002385 EE               [12] 1193 	mov	a,r6
      002386 24 20            [12] 1194 	add	a, #_send_arp_request_arp_packet_10000_87
      002388 F5 82            [12] 1195 	mov	dpl,a
      00238A ED               [12] 1196 	mov	a,r5
      00238B 34 01            [12] 1197 	addc	a, #(_send_arp_request_arp_packet_10000_87 >> 8)
      00238D F5 83            [12] 1198 	mov	dph,a
      00238F E4               [12] 1199 	clr	a
      002390 F0               [24] 1200 	movx	@dptr,a
                                   1201 ;	Eth.c:157: for (int i = 0; i < 6; i++) {
      002391 0F               [12] 1202 	inc	r7
      002392 80 E2            [24] 1203 	sjmp	00124$
      002394                       1204 00104$:
                                   1205 ;	Eth.c:162: for (int i = 0; i < 4; i++) {
      002394 7E 00            [12] 1206 	mov	r6,#0x00
      002396 7F 00            [12] 1207 	mov	r7,#0x00
      002398                       1208 00127$:
      002398 C3               [12] 1209 	clr	c
      002399 EE               [12] 1210 	mov	a,r6
      00239A 94 04            [12] 1211 	subb	a,#0x04
      00239C EF               [12] 1212 	mov	a,r7
      00239D 64 80            [12] 1213 	xrl	a,#0x80
      00239F 94 80            [12] 1214 	subb	a,#0x80
      0023A1 50 29            [24] 1215 	jnc	00105$
                                   1216 ;	Eth.c:163: arp_packet[39 + i] = target_ip[i];
      0023A3 8E 05            [24] 1217 	mov	ar5,r6
      0023A5 74 27            [12] 1218 	mov	a,#0x27
      0023A7 2D               [12] 1219 	add	a, r5
      0023A8 FD               [12] 1220 	mov	r5,a
      0023A9 33               [12] 1221 	rlc	a
      0023AA 95 E0            [12] 1222 	subb	a,acc
      0023AC FC               [12] 1223 	mov	r4,a
      0023AD ED               [12] 1224 	mov	a,r5
      0023AE 24 20            [12] 1225 	add	a, #_send_arp_request_arp_packet_10000_87
      0023B0 FD               [12] 1226 	mov	r5,a
      0023B1 EC               [12] 1227 	mov	a,r4
      0023B2 34 01            [12] 1228 	addc	a, #(_send_arp_request_arp_packet_10000_87 >> 8)
      0023B4 FC               [12] 1229 	mov	r4,a
      0023B5 EE               [12] 1230 	mov	a,r6
      0023B6 24 1C            [12] 1231 	add	a, #_send_arp_request_target_ip_10000_87
      0023B8 F5 82            [12] 1232 	mov	dpl,a
      0023BA EF               [12] 1233 	mov	a,r7
      0023BB 34 01            [12] 1234 	addc	a, #(_send_arp_request_target_ip_10000_87 >> 8)
      0023BD F5 83            [12] 1235 	mov	dph,a
      0023BF E0               [24] 1236 	movx	a,@dptr
      0023C0 8D 82            [24] 1237 	mov	dpl,r5
      0023C2 8C 83            [24] 1238 	mov	dph,r4
      0023C4 F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	Eth.c:162: for (int i = 0; i < 4; i++) {
      0023C5 0E               [12] 1241 	inc	r6
      0023C6 BE 00 CF         [24] 1242 	cjne	r6,#0x00,00127$
      0023C9 0F               [12] 1243 	inc	r7
      0023CA 80 CC            [24] 1244 	sjmp	00127$
      0023CC                       1245 00105$:
                                   1246 ;	Eth.c:176: spi_buffer_write(frame_size, start_address, arp_packet);
      0023CC 90 03 94         [24] 1247 	mov	dptr,#_spi_buffer_write_PARM_2
      0023CF E4               [12] 1248 	clr	a
      0023D0 F0               [24] 1249 	movx	@dptr,a
      0023D1 A3               [24] 1250 	inc	dptr
      0023D2 F0               [24] 1251 	movx	@dptr,a
      0023D3 90 03 96         [24] 1252 	mov	dptr,#_spi_buffer_write_PARM_3
      0023D6 74 20            [12] 1253 	mov	a,#_send_arp_request_arp_packet_10000_87
      0023D8 F0               [24] 1254 	movx	@dptr,a
      0023D9 74 01            [12] 1255 	mov	a,#(_send_arp_request_arp_packet_10000_87 >> 8)
      0023DB A3               [24] 1256 	inc	dptr
      0023DC F0               [24] 1257 	movx	@dptr,a
      0023DD E4               [12] 1258 	clr	a
      0023DE A3               [24] 1259 	inc	dptr
      0023DF F0               [24] 1260 	movx	@dptr,a
      0023E0 90 00 2C         [24] 1261 	mov	dptr,#0x002c
      0023E3 12 39 9B         [24] 1262 	lcall	_spi_buffer_write
                                   1263 ;	Eth.c:179: enc28j60_set_transmit_pointers(start_address, end_address);
      0023E6 90 01 06         [24] 1264 	mov	dptr,#_enc28j60_set_transmit_pointers_PARM_2
      0023E9 74 2B            [12] 1265 	mov	a,#0x2b
      0023EB F0               [24] 1266 	movx	@dptr,a
      0023EC E4               [12] 1267 	clr	a
      0023ED A3               [24] 1268 	inc	dptr
      0023EE F0               [24] 1269 	movx	@dptr,a
      0023EF 90 00 00         [24] 1270 	mov	dptr,#0x0000
      0023F2 12 21 07         [24] 1271 	lcall	_enc28j60_set_transmit_pointers
                                   1272 ;	Eth.c:183: enc28j60_start_transmission();
      0023F5 12 20 E6         [24] 1273 	lcall	_enc28j60_start_transmission
                                   1274 ;	Eth.c:186: if (wait_for_transmission_complete(500)) {  // Wait up to 500 ms
      0023F8 90 01 F4         [24] 1275 	mov	dptr,#0x01f4
      0023FB 12 21 7E         [24] 1276 	lcall	_wait_for_transmission_complete
      0023FE E5 82            [12] 1277 	mov	a, dpl
      002400 60 33            [24] 1278 	jz	00112$
                                   1279 ;	Eth.c:188: if (enc28j60_transmission_successful()) {
      002402 12 21 E1         [24] 1280 	lcall	_enc28j60_transmission_successful
      002405 E5 82            [12] 1281 	mov	a, dpl
      002407 60 16            [24] 1282 	jz	00109$
                                   1283 ;	Eth.c:189: printf("ARP request sent successfully.\n\r");
      002409 74 F9            [12] 1284 	mov	a,#___str_1
      00240B C0 E0            [24] 1285 	push	acc
      00240D 74 47            [12] 1286 	mov	a,#(___str_1 >> 8)
      00240F C0 E0            [24] 1287 	push	acc
      002411 74 80            [12] 1288 	mov	a,#0x80
      002413 C0 E0            [24] 1289 	push	acc
      002415 12 3D 7C         [24] 1290 	lcall	_printf
      002418 15 81            [12] 1291 	dec	sp
      00241A 15 81            [12] 1292 	dec	sp
      00241C 15 81            [12] 1293 	dec	sp
      00241E 22               [24] 1294 	ret
      00241F                       1295 00109$:
                                   1296 ;	Eth.c:191: printf("ARP transmission failed. Check error flags.\n\r");
      00241F 74 1A            [12] 1297 	mov	a,#___str_2
      002421 C0 E0            [24] 1298 	push	acc
      002423 74 48            [12] 1299 	mov	a,#(___str_2 >> 8)
      002425 C0 E0            [24] 1300 	push	acc
      002427 74 80            [12] 1301 	mov	a,#0x80
      002429 C0 E0            [24] 1302 	push	acc
      00242B 12 3D 7C         [24] 1303 	lcall	_printf
      00242E 15 81            [12] 1304 	dec	sp
      002430 15 81            [12] 1305 	dec	sp
      002432 15 81            [12] 1306 	dec	sp
      002434 22               [24] 1307 	ret
      002435                       1308 00112$:
                                   1309 ;	Eth.c:194: printf("Transmission timeout. ENC28J60 may not be functioning correctly.\n\r");
      002435 74 48            [12] 1310 	mov	a,#___str_3
      002437 C0 E0            [24] 1311 	push	acc
      002439 74 48            [12] 1312 	mov	a,#(___str_3 >> 8)
      00243B C0 E0            [24] 1313 	push	acc
      00243D 74 80            [12] 1314 	mov	a,#0x80
      00243F C0 E0            [24] 1315 	push	acc
      002441 12 3D 7C         [24] 1316 	lcall	_printf
      002444 15 81            [12] 1317 	dec	sp
      002446 15 81            [12] 1318 	dec	sp
      002448 15 81            [12] 1319 	dec	sp
                                   1320 ;	Eth.c:196: }
      00244A 22               [24] 1321 	ret
                                   1322 ;------------------------------------------------------------
                                   1323 ;Allocation info for local variables in function 'external_interrupt0_isr'
                                   1324 ;------------------------------------------------------------
                                   1325 ;eir                       Allocated with name '_external_interrupt0_isr_eir_10000_106'
                                   1326 ;------------------------------------------------------------
                                   1327 ;	Eth.c:198: void external_interrupt0_isr(void) __interrupt (0)
                                   1328 ;	-----------------------------------------
                                   1329 ;	 function external_interrupt0_isr
                                   1330 ;	-----------------------------------------
      00244B                       1331 _external_interrupt0_isr:
      00244B C0 21            [24] 1332 	push	bits
      00244D C0 E0            [24] 1333 	push	acc
      00244F C0 F0            [24] 1334 	push	b
      002451 C0 82            [24] 1335 	push	dpl
      002453 C0 83            [24] 1336 	push	dph
      002455 C0 07            [24] 1337 	push	(0+7)
      002457 C0 06            [24] 1338 	push	(0+6)
      002459 C0 05            [24] 1339 	push	(0+5)
      00245B C0 04            [24] 1340 	push	(0+4)
      00245D C0 03            [24] 1341 	push	(0+3)
      00245F C0 02            [24] 1342 	push	(0+2)
      002461 C0 01            [24] 1343 	push	(0+1)
      002463 C0 00            [24] 1344 	push	(0+0)
      002465 C0 D0            [24] 1345 	push	psw
      002467 75 D0 00         [24] 1346 	mov	psw,#0x00
                                   1347 ;	Eth.c:200: uint8_t eir = mac_spi_read(0x1C, 0); // Read EIR register (address 0x1C, bank 0)
      00246A 90 03 83         [24] 1348 	mov	dptr,#_mac_spi_read_PARM_2
      00246D E4               [12] 1349 	clr	a
      00246E F0               [24] 1350 	movx	@dptr,a
      00246F 75 82 1C         [24] 1351 	mov	dpl, #0x1c
      002472 12 35 95         [24] 1352 	lcall	_mac_spi_read
                                   1353 ;	Eth.c:201: printf("Interrrrrrrruuuuuuuuuppppppppttttttt\n\r");
      002475 74 8B            [12] 1354 	mov	a,#___str_4
      002477 C0 E0            [24] 1355 	push	acc
      002479 74 48            [12] 1356 	mov	a,#(___str_4 >> 8)
      00247B C0 E0            [24] 1357 	push	acc
      00247D 74 80            [12] 1358 	mov	a,#0x80
      00247F C0 E0            [24] 1359 	push	acc
      002481 12 3D 7C         [24] 1360 	lcall	_printf
      002484 15 81            [12] 1361 	dec	sp
      002486 15 81            [12] 1362 	dec	sp
      002488 15 81            [12] 1363 	dec	sp
                                   1364 ;	Eth.c:205: }
      00248A D0 D0            [24] 1365 	pop	psw
      00248C D0 00            [24] 1366 	pop	(0+0)
      00248E D0 01            [24] 1367 	pop	(0+1)
      002490 D0 02            [24] 1368 	pop	(0+2)
      002492 D0 03            [24] 1369 	pop	(0+3)
      002494 D0 04            [24] 1370 	pop	(0+4)
      002496 D0 05            [24] 1371 	pop	(0+5)
      002498 D0 06            [24] 1372 	pop	(0+6)
      00249A D0 07            [24] 1373 	pop	(0+7)
      00249C D0 83            [24] 1374 	pop	dph
      00249E D0 82            [24] 1375 	pop	dpl
      0024A0 D0 F0            [24] 1376 	pop	b
      0024A2 D0 E0            [24] 1377 	pop	acc
      0024A4 D0 21            [24] 1378 	pop	bits
      0024A6 32               [24] 1379 	reti
                                   1380 ;------------------------------------------------------------
                                   1381 ;Allocation info for local variables in function 'enc_buffer_init'
                                   1382 ;------------------------------------------------------------
                                   1383 ;end_address               Allocated with name '_enc_buffer_init_PARM_2'
                                   1384 ;start_address             Allocated with name '_enc_buffer_init_start_address_10000_107'
                                   1385 ;------------------------------------------------------------
                                   1386 ;	Eth.c:208: void enc_buffer_init(uint16_t start_address, uint16_t end_address) {
                                   1387 ;	-----------------------------------------
                                   1388 ;	 function enc_buffer_init
                                   1389 ;	-----------------------------------------
      0024A7                       1390 _enc_buffer_init:
      0024A7 AF 83            [24] 1391 	mov	r7,dph
      0024A9 E5 82            [12] 1392 	mov	a,dpl
      0024AB 90 01 4D         [24] 1393 	mov	dptr,#_enc_buffer_init_start_address_10000_107
      0024AE F0               [24] 1394 	movx	@dptr,a
      0024AF EF               [12] 1395 	mov	a,r7
      0024B0 A3               [24] 1396 	inc	dptr
      0024B1 F0               [24] 1397 	movx	@dptr,a
                                   1398 ;	Eth.c:210: if (start_address > 0x1FFF || end_address > 0x1FFF) {
      0024B2 90 01 4D         [24] 1399 	mov	dptr,#_enc_buffer_init_start_address_10000_107
      0024B5 E0               [24] 1400 	movx	a,@dptr
      0024B6 FE               [12] 1401 	mov	r6,a
      0024B7 A3               [24] 1402 	inc	dptr
      0024B8 E0               [24] 1403 	movx	a,@dptr
      0024B9 FF               [12] 1404 	mov	r7,a
      0024BA C3               [12] 1405 	clr	c
      0024BB 74 FF            [12] 1406 	mov	a,#0xff
      0024BD 9E               [12] 1407 	subb	a,r6
      0024BE 74 1F            [12] 1408 	mov	a,#0x1f
      0024C0 9F               [12] 1409 	subb	a,r7
      0024C1 40 15            [24] 1410 	jc	00101$
      0024C3 90 01 4B         [24] 1411 	mov	dptr,#_enc_buffer_init_PARM_2
      0024C6 E0               [24] 1412 	movx	a,@dptr
      0024C7 FC               [12] 1413 	mov	r4,a
      0024C8 A3               [24] 1414 	inc	dptr
      0024C9 E0               [24] 1415 	movx	a,@dptr
      0024CA FD               [12] 1416 	mov	r5,a
      0024CB 8C 02            [24] 1417 	mov	ar2,r4
      0024CD 8D 03            [24] 1418 	mov	ar3,r5
      0024CF C3               [12] 1419 	clr	c
      0024D0 74 FF            [12] 1420 	mov	a,#0xff
      0024D2 9A               [12] 1421 	subb	a,r2
      0024D3 74 1F            [12] 1422 	mov	a,#0x1f
      0024D5 9B               [12] 1423 	subb	a,r3
      0024D6 50 2A            [24] 1424 	jnc	00102$
      0024D8                       1425 00101$:
                                   1426 ;	Eth.c:211: printf("\nInvalid Buffer Range: Start 0x%04X, End 0x%04X\n",
      0024D8 90 01 4B         [24] 1427 	mov	dptr,#_enc_buffer_init_PARM_2
      0024DB E0               [24] 1428 	movx	a,@dptr
      0024DC C0 E0            [24] 1429 	push	acc
      0024DE A3               [24] 1430 	inc	dptr
      0024DF E0               [24] 1431 	movx	a,@dptr
      0024E0 C0 E0            [24] 1432 	push	acc
      0024E2 90 01 4D         [24] 1433 	mov	dptr,#_enc_buffer_init_start_address_10000_107
      0024E5 E0               [24] 1434 	movx	a,@dptr
      0024E6 C0 E0            [24] 1435 	push	acc
      0024E8 A3               [24] 1436 	inc	dptr
      0024E9 E0               [24] 1437 	movx	a,@dptr
      0024EA C0 E0            [24] 1438 	push	acc
      0024EC 74 B2            [12] 1439 	mov	a,#___str_5
      0024EE C0 E0            [24] 1440 	push	acc
      0024F0 74 48            [12] 1441 	mov	a,#(___str_5 >> 8)
      0024F2 C0 E0            [24] 1442 	push	acc
      0024F4 74 80            [12] 1443 	mov	a,#0x80
      0024F6 C0 E0            [24] 1444 	push	acc
      0024F8 12 3D 7C         [24] 1445 	lcall	_printf
      0024FB E5 81            [12] 1446 	mov	a,sp
      0024FD 24 F9            [12] 1447 	add	a,#0xf9
      0024FF F5 81            [12] 1448 	mov	sp,a
                                   1449 ;	Eth.c:213: return;
      002501 22               [24] 1450 	ret
      002502                       1451 00102$:
                                   1452 ;	Eth.c:216: start_address &= ~1;  // Align to even address
      002502 53 06 FE         [24] 1453 	anl	ar6,#0xfe
      002505 90 01 4D         [24] 1454 	mov	dptr,#_enc_buffer_init_start_address_10000_107
      002508 EE               [12] 1455 	mov	a,r6
      002509 F0               [24] 1456 	movx	@dptr,a
      00250A EF               [12] 1457 	mov	a,r7
      00250B A3               [24] 1458 	inc	dptr
      00250C F0               [24] 1459 	movx	@dptr,a
                                   1460 ;	Eth.c:218: spi_control_write(0, 0x00, (uint8_t) (start_address & 0xFF)); // ERDPTL
      00250D 90 01 4D         [24] 1461 	mov	dptr,#_enc_buffer_init_start_address_10000_107
      002510 E0               [24] 1462 	movx	a,@dptr
      002511 FE               [12] 1463 	mov	r6,a
      002512 A3               [24] 1464 	inc	dptr
      002513 E0               [24] 1465 	movx	a,@dptr
      002514 FF               [12] 1466 	mov	r7,a
      002515 8E 03            [24] 1467 	mov	ar3,r6
      002517 90 03 7A         [24] 1468 	mov	dptr,#_spi_control_write_PARM_2
      00251A E4               [12] 1469 	clr	a
      00251B F0               [24] 1470 	movx	@dptr,a
      00251C 90 03 7B         [24] 1471 	mov	dptr,#_spi_control_write_PARM_3
      00251F EB               [12] 1472 	mov	a,r3
      002520 F0               [24] 1473 	movx	@dptr,a
      002521 75 82 00         [24] 1474 	mov	dpl, #0x00
      002524 C0 07            [24] 1475 	push	ar7
      002526 C0 06            [24] 1476 	push	ar6
      002528 C0 05            [24] 1477 	push	ar5
      00252A C0 04            [24] 1478 	push	ar4
      00252C C0 03            [24] 1479 	push	ar3
      00252E 12 34 1F         [24] 1480 	lcall	_spi_control_write
      002531 D0 03            [24] 1481 	pop	ar3
      002533 D0 04            [24] 1482 	pop	ar4
      002535 D0 05            [24] 1483 	pop	ar5
      002537 D0 06            [24] 1484 	pop	ar6
      002539 D0 07            [24] 1485 	pop	ar7
                                   1486 ;	Eth.c:219: spi_control_write(0, 0x01, (uint8_t) (start_address >> 8)); // ERDPTH
      00253B 8F 02            [24] 1487 	mov	ar2,r7
      00253D 90 03 7A         [24] 1488 	mov	dptr,#_spi_control_write_PARM_2
      002540 74 01            [12] 1489 	mov	a,#0x01
      002542 F0               [24] 1490 	movx	@dptr,a
      002543 90 03 7B         [24] 1491 	mov	dptr,#_spi_control_write_PARM_3
      002546 EA               [12] 1492 	mov	a,r2
      002547 F0               [24] 1493 	movx	@dptr,a
      002548 75 82 00         [24] 1494 	mov	dpl, #0x00
      00254B C0 07            [24] 1495 	push	ar7
      00254D C0 06            [24] 1496 	push	ar6
      00254F C0 05            [24] 1497 	push	ar5
      002551 C0 04            [24] 1498 	push	ar4
      002553 C0 03            [24] 1499 	push	ar3
      002555 C0 02            [24] 1500 	push	ar2
      002557 12 34 1F         [24] 1501 	lcall	_spi_control_write
      00255A D0 02            [24] 1502 	pop	ar2
      00255C D0 03            [24] 1503 	pop	ar3
      00255E D0 04            [24] 1504 	pop	ar4
      002560 D0 05            [24] 1505 	pop	ar5
      002562 D0 06            [24] 1506 	pop	ar6
      002564 D0 07            [24] 1507 	pop	ar7
                                   1508 ;	Eth.c:220: spi_control_write(0, 0x08, (uint8_t) (start_address & 0xFF)); // ERXSTL
      002566 90 03 7A         [24] 1509 	mov	dptr,#_spi_control_write_PARM_2
      002569 74 08            [12] 1510 	mov	a,#0x08
      00256B F0               [24] 1511 	movx	@dptr,a
      00256C 90 03 7B         [24] 1512 	mov	dptr,#_spi_control_write_PARM_3
      00256F EB               [12] 1513 	mov	a,r3
      002570 F0               [24] 1514 	movx	@dptr,a
      002571 75 82 00         [24] 1515 	mov	dpl, #0x00
      002574 C0 07            [24] 1516 	push	ar7
      002576 C0 06            [24] 1517 	push	ar6
      002578 C0 05            [24] 1518 	push	ar5
      00257A C0 04            [24] 1519 	push	ar4
      00257C C0 03            [24] 1520 	push	ar3
      00257E C0 02            [24] 1521 	push	ar2
      002580 12 34 1F         [24] 1522 	lcall	_spi_control_write
      002583 D0 02            [24] 1523 	pop	ar2
      002585 D0 03            [24] 1524 	pop	ar3
      002587 D0 04            [24] 1525 	pop	ar4
      002589 D0 05            [24] 1526 	pop	ar5
      00258B D0 06            [24] 1527 	pop	ar6
      00258D D0 07            [24] 1528 	pop	ar7
                                   1529 ;	Eth.c:221: spi_control_write(0, 0x09, (uint8_t) (start_address >> 8)); // ERXSTH
      00258F 90 03 7A         [24] 1530 	mov	dptr,#_spi_control_write_PARM_2
      002592 74 09            [12] 1531 	mov	a,#0x09
      002594 F0               [24] 1532 	movx	@dptr,a
      002595 90 03 7B         [24] 1533 	mov	dptr,#_spi_control_write_PARM_3
      002598 EA               [12] 1534 	mov	a,r2
      002599 F0               [24] 1535 	movx	@dptr,a
      00259A 75 82 00         [24] 1536 	mov	dpl, #0x00
      00259D C0 07            [24] 1537 	push	ar7
      00259F C0 06            [24] 1538 	push	ar6
      0025A1 C0 05            [24] 1539 	push	ar5
      0025A3 C0 04            [24] 1540 	push	ar4
      0025A5 C0 03            [24] 1541 	push	ar3
      0025A7 C0 02            [24] 1542 	push	ar2
      0025A9 12 34 1F         [24] 1543 	lcall	_spi_control_write
      0025AC D0 02            [24] 1544 	pop	ar2
      0025AE D0 03            [24] 1545 	pop	ar3
      0025B0 D0 04            [24] 1546 	pop	ar4
      0025B2 D0 05            [24] 1547 	pop	ar5
      0025B4 D0 06            [24] 1548 	pop	ar6
      0025B6 D0 07            [24] 1549 	pop	ar7
                                   1550 ;	Eth.c:222: spi_control_write(0, 0x0A, (uint8_t) (end_address & 0xFF)); // ERXNDL
      0025B8 8C 01            [24] 1551 	mov	ar1,r4
      0025BA 90 03 7A         [24] 1552 	mov	dptr,#_spi_control_write_PARM_2
      0025BD 74 0A            [12] 1553 	mov	a,#0x0a
      0025BF F0               [24] 1554 	movx	@dptr,a
      0025C0 90 03 7B         [24] 1555 	mov	dptr,#_spi_control_write_PARM_3
      0025C3 E9               [12] 1556 	mov	a,r1
      0025C4 F0               [24] 1557 	movx	@dptr,a
      0025C5 75 82 00         [24] 1558 	mov	dpl, #0x00
      0025C8 C0 07            [24] 1559 	push	ar7
      0025CA C0 06            [24] 1560 	push	ar6
      0025CC C0 05            [24] 1561 	push	ar5
      0025CE C0 04            [24] 1562 	push	ar4
      0025D0 C0 03            [24] 1563 	push	ar3
      0025D2 C0 02            [24] 1564 	push	ar2
      0025D4 12 34 1F         [24] 1565 	lcall	_spi_control_write
      0025D7 D0 02            [24] 1566 	pop	ar2
      0025D9 D0 03            [24] 1567 	pop	ar3
      0025DB D0 04            [24] 1568 	pop	ar4
      0025DD D0 05            [24] 1569 	pop	ar5
      0025DF D0 06            [24] 1570 	pop	ar6
      0025E1 D0 07            [24] 1571 	pop	ar7
                                   1572 ;	Eth.c:223: spi_control_write(0, 0x0B, (uint8_t) (end_address >> 8)); // ERXNDH
      0025E3 8D 01            [24] 1573 	mov	ar1,r5
      0025E5 90 03 7A         [24] 1574 	mov	dptr,#_spi_control_write_PARM_2
      0025E8 74 0B            [12] 1575 	mov	a,#0x0b
      0025EA F0               [24] 1576 	movx	@dptr,a
      0025EB 90 03 7B         [24] 1577 	mov	dptr,#_spi_control_write_PARM_3
      0025EE E9               [12] 1578 	mov	a,r1
      0025EF F0               [24] 1579 	movx	@dptr,a
      0025F0 75 82 00         [24] 1580 	mov	dpl, #0x00
      0025F3 C0 07            [24] 1581 	push	ar7
      0025F5 C0 06            [24] 1582 	push	ar6
      0025F7 C0 05            [24] 1583 	push	ar5
      0025F9 C0 04            [24] 1584 	push	ar4
      0025FB C0 03            [24] 1585 	push	ar3
      0025FD C0 02            [24] 1586 	push	ar2
      0025FF 12 34 1F         [24] 1587 	lcall	_spi_control_write
      002602 D0 02            [24] 1588 	pop	ar2
      002604 D0 03            [24] 1589 	pop	ar3
      002606 D0 04            [24] 1590 	pop	ar4
      002608 D0 05            [24] 1591 	pop	ar5
      00260A D0 06            [24] 1592 	pop	ar6
      00260C D0 07            [24] 1593 	pop	ar7
                                   1594 ;	Eth.c:224: spi_control_write(0, 0x0C, (uint8_t) (start_address & 0xFF)); // ERXRDPTL
      00260E 90 03 7A         [24] 1595 	mov	dptr,#_spi_control_write_PARM_2
      002611 74 0C            [12] 1596 	mov	a,#0x0c
      002613 F0               [24] 1597 	movx	@dptr,a
      002614 90 03 7B         [24] 1598 	mov	dptr,#_spi_control_write_PARM_3
      002617 EB               [12] 1599 	mov	a,r3
      002618 F0               [24] 1600 	movx	@dptr,a
      002619 75 82 00         [24] 1601 	mov	dpl, #0x00
      00261C C0 07            [24] 1602 	push	ar7
      00261E C0 06            [24] 1603 	push	ar6
      002620 C0 05            [24] 1604 	push	ar5
      002622 C0 04            [24] 1605 	push	ar4
      002624 C0 02            [24] 1606 	push	ar2
      002626 12 34 1F         [24] 1607 	lcall	_spi_control_write
      002629 D0 02            [24] 1608 	pop	ar2
      00262B D0 04            [24] 1609 	pop	ar4
      00262D D0 05            [24] 1610 	pop	ar5
      00262F D0 06            [24] 1611 	pop	ar6
      002631 D0 07            [24] 1612 	pop	ar7
                                   1613 ;	Eth.c:225: spi_control_write(0, 0x0D, (uint8_t) (start_address >> 8)); // ERXRDPTH
      002633 90 03 7A         [24] 1614 	mov	dptr,#_spi_control_write_PARM_2
      002636 74 0D            [12] 1615 	mov	a,#0x0d
      002638 F0               [24] 1616 	movx	@dptr,a
      002639 90 03 7B         [24] 1617 	mov	dptr,#_spi_control_write_PARM_3
      00263C EA               [12] 1618 	mov	a,r2
      00263D F0               [24] 1619 	movx	@dptr,a
      00263E 75 82 00         [24] 1620 	mov	dpl, #0x00
      002641 C0 07            [24] 1621 	push	ar7
      002643 C0 06            [24] 1622 	push	ar6
      002645 C0 05            [24] 1623 	push	ar5
      002647 C0 04            [24] 1624 	push	ar4
      002649 12 34 1F         [24] 1625 	lcall	_spi_control_write
      00264C D0 04            [24] 1626 	pop	ar4
      00264E D0 05            [24] 1627 	pop	ar5
      002650 D0 06            [24] 1628 	pop	ar6
      002652 D0 07            [24] 1629 	pop	ar7
                                   1630 ;	Eth.c:226: printf("\nBuffer Initialized: Start 0x%04X, End 0x%04X\n", start_address,
      002654 C0 04            [24] 1631 	push	ar4
      002656 C0 05            [24] 1632 	push	ar5
      002658 C0 06            [24] 1633 	push	ar6
      00265A C0 07            [24] 1634 	push	ar7
      00265C 74 E3            [12] 1635 	mov	a,#___str_6
      00265E C0 E0            [24] 1636 	push	acc
      002660 74 48            [12] 1637 	mov	a,#(___str_6 >> 8)
      002662 C0 E0            [24] 1638 	push	acc
      002664 74 80            [12] 1639 	mov	a,#0x80
      002666 C0 E0            [24] 1640 	push	acc
      002668 12 3D 7C         [24] 1641 	lcall	_printf
      00266B E5 81            [12] 1642 	mov	a,sp
      00266D 24 F9            [12] 1643 	add	a,#0xf9
      00266F F5 81            [12] 1644 	mov	sp,a
                                   1645 ;	Eth.c:228: }
      002671 22               [24] 1646 	ret
                                   1647 ;------------------------------------------------------------
                                   1648 ;Allocation info for local variables in function 'enc_init'
                                   1649 ;------------------------------------------------------------
                                   1650 ;sloc0                     Allocated with name '_enc_init_sloc0_1_0'
                                   1651 ;sloc1                     Allocated with name '_enc_init_sloc1_1_0'
                                   1652 ;sloc2                     Allocated with name '_enc_init_sloc2_1_0'
                                   1653 ;sloc3                     Allocated with name '_enc_init_sloc3_1_0'
                                   1654 ;mac                       Allocated with name '_enc_init_mac_10000_110'
                                   1655 ;rx_start                  Allocated with name '_enc_init_rx_start_10001_112'
                                   1656 ;rx_end                    Allocated with name '_enc_init_rx_end_10001_112'
                                   1657 ;read_macon3               Allocated with name '_enc_init_read_macon3_10002_113'
                                   1658 ;read_macon1               Allocated with name '_enc_init_read_macon1_10003_114'
                                   1659 ;------------------------------------------------------------
                                   1660 ;	Eth.c:230: void enc_init(const uint8_t *mac)
                                   1661 ;	-----------------------------------------
                                   1662 ;	 function enc_init
                                   1663 ;	-----------------------------------------
      002672                       1664 _enc_init:
      002672 AF F0            [24] 1665 	mov	r7,b
      002674 AE 83            [24] 1666 	mov	r6,dph
      002676 E5 82            [12] 1667 	mov	a,dpl
      002678 90 01 4F         [24] 1668 	mov	dptr,#_enc_init_mac_10000_110
      00267B F0               [24] 1669 	movx	@dptr,a
      00267C EE               [12] 1670 	mov	a,r6
      00267D A3               [24] 1671 	inc	dptr
      00267E F0               [24] 1672 	movx	@dptr,a
      00267F EF               [12] 1673 	mov	a,r7
      002680 A3               [24] 1674 	inc	dptr
      002681 F0               [24] 1675 	movx	@dptr,a
                                   1676 ;	Eth.c:233: enc_reset();
      002682 12 34 99         [24] 1677 	lcall	_enc_reset
                                   1678 ;	Eth.c:236: while (!(mac_spi_read(0x1D, 0) & 0x01))
      002685                       1679 00101$:
      002685 90 03 83         [24] 1680 	mov	dptr,#_mac_spi_read_PARM_2
      002688 E4               [12] 1681 	clr	a
      002689 F0               [24] 1682 	movx	@dptr,a
      00268A 75 82 1D         [24] 1683 	mov	dpl, #0x1d
      00268D 12 35 95         [24] 1684 	lcall	_mac_spi_read
      002690 E5 82            [12] 1685 	mov	a, dpl
      002692 30 E0 F0         [24] 1686 	jnb	acc.0,00101$
                                   1687 ;	Eth.c:244: enc_buffer_init(rx_start, rx_end);
      002695 90 01 4B         [24] 1688 	mov	dptr,#_enc_buffer_init_PARM_2
      002698 74 FF            [12] 1689 	mov	a,#0xff
      00269A F0               [24] 1690 	movx	@dptr,a
      00269B 74 1F            [12] 1691 	mov	a,#0x1f
      00269D A3               [24] 1692 	inc	dptr
      00269E F0               [24] 1693 	movx	@dptr,a
      00269F 90 08 00         [24] 1694 	mov	dptr,#0x0800
      0026A2 12 24 A7         [24] 1695 	lcall	_enc_buffer_init
                                   1696 ;	Eth.c:255: spi_control_write(2, 0x02, 0x70); // MACON3: Padding, CRC, and frame length checking enabled37
      0026A5 90 03 7A         [24] 1697 	mov	dptr,#_spi_control_write_PARM_2
      0026A8 74 02            [12] 1698 	mov	a,#0x02
      0026AA F0               [24] 1699 	movx	@dptr,a
      0026AB 90 03 7B         [24] 1700 	mov	dptr,#_spi_control_write_PARM_3
      0026AE 74 70            [12] 1701 	mov	a,#0x70
      0026B0 F0               [24] 1702 	movx	@dptr,a
      0026B1 75 82 02         [24] 1703 	mov	dpl, #0x02
      0026B4 12 34 1F         [24] 1704 	lcall	_spi_control_write
                                   1705 ;	Eth.c:256: spi_control_write(2, 0x03, 0x40); // MACON4: IEEE compliance00
      0026B7 90 03 7A         [24] 1706 	mov	dptr,#_spi_control_write_PARM_2
      0026BA 74 03            [12] 1707 	mov	a,#0x03
      0026BC F0               [24] 1708 	movx	@dptr,a
      0026BD 90 03 7B         [24] 1709 	mov	dptr,#_spi_control_write_PARM_3
      0026C0 74 40            [12] 1710 	mov	a,#0x40
      0026C2 F0               [24] 1711 	movx	@dptr,a
      0026C3 75 82 02         [24] 1712 	mov	dpl, #0x02
      0026C6 12 34 1F         [24] 1713 	lcall	_spi_control_write
                                   1714 ;	Eth.c:259: spi_control_write(2, 0x0A, 0xEE); // MAMXFLL
      0026C9 90 03 7A         [24] 1715 	mov	dptr,#_spi_control_write_PARM_2
      0026CC 74 0A            [12] 1716 	mov	a,#0x0a
      0026CE F0               [24] 1717 	movx	@dptr,a
      0026CF 90 03 7B         [24] 1718 	mov	dptr,#_spi_control_write_PARM_3
      0026D2 74 EE            [12] 1719 	mov	a,#0xee
      0026D4 F0               [24] 1720 	movx	@dptr,a
      0026D5 75 82 02         [24] 1721 	mov	dpl, #0x02
      0026D8 12 34 1F         [24] 1722 	lcall	_spi_control_write
                                   1723 ;	Eth.c:260: spi_control_write(2, 0x0B, 0x05); // MAMXFLH
      0026DB 90 03 7A         [24] 1724 	mov	dptr,#_spi_control_write_PARM_2
      0026DE 74 0B            [12] 1725 	mov	a,#0x0b
      0026E0 F0               [24] 1726 	movx	@dptr,a
      0026E1 90 03 7B         [24] 1727 	mov	dptr,#_spi_control_write_PARM_3
      0026E4 74 05            [12] 1728 	mov	a,#0x05
      0026E6 F0               [24] 1729 	movx	@dptr,a
      0026E7 75 82 02         [24] 1730 	mov	dpl, #0x02
      0026EA 12 34 1F         [24] 1731 	lcall	_spi_control_write
                                   1732 ;	Eth.c:263: spi_control_write(2, 0x04, 0x12); // MABBIPG: Back-to-back gap (Full Duplex)
      0026ED 90 03 7A         [24] 1733 	mov	dptr,#_spi_control_write_PARM_2
      0026F0 74 04            [12] 1734 	mov	a,#0x04
      0026F2 F0               [24] 1735 	movx	@dptr,a
      0026F3 90 03 7B         [24] 1736 	mov	dptr,#_spi_control_write_PARM_3
      0026F6 74 12            [12] 1737 	mov	a,#0x12
      0026F8 F0               [24] 1738 	movx	@dptr,a
      0026F9 75 82 02         [24] 1739 	mov	dpl, #0x02
      0026FC 12 34 1F         [24] 1740 	lcall	_spi_control_write
                                   1741 ;	Eth.c:264: spi_control_write(2, 0x06, 0x12); // MAIPGL: Non-back-to-back gap
      0026FF 90 03 7A         [24] 1742 	mov	dptr,#_spi_control_write_PARM_2
      002702 74 06            [12] 1743 	mov	a,#0x06
      002704 F0               [24] 1744 	movx	@dptr,a
      002705 90 03 7B         [24] 1745 	mov	dptr,#_spi_control_write_PARM_3
      002708 74 12            [12] 1746 	mov	a,#0x12
      00270A F0               [24] 1747 	movx	@dptr,a
      00270B 75 82 02         [24] 1748 	mov	dpl, #0x02
      00270E 12 34 1F         [24] 1749 	lcall	_spi_control_write
                                   1750 ;	Eth.c:265: spi_control_write(2, 0x07, 0x0C); // MAIPGH: Non-back-to-back gap (Half Duplex)
      002711 90 03 7A         [24] 1751 	mov	dptr,#_spi_control_write_PARM_2
      002714 74 07            [12] 1752 	mov	a,#0x07
      002716 F0               [24] 1753 	movx	@dptr,a
      002717 90 03 7B         [24] 1754 	mov	dptr,#_spi_control_write_PARM_3
      00271A 74 0C            [12] 1755 	mov	a,#0x0c
      00271C F0               [24] 1756 	movx	@dptr,a
      00271D 75 82 02         [24] 1757 	mov	dpl, #0x02
      002720 12 34 1F         [24] 1758 	lcall	_spi_control_write
                                   1759 ;	Eth.c:268: spi_control_write(3, 0x01, mac[5]); // MAADR6
      002723 90 01 4F         [24] 1760 	mov	dptr,#_enc_init_mac_10000_110
      002726 E0               [24] 1761 	movx	a,@dptr
      002727 FD               [12] 1762 	mov	r5,a
      002728 A3               [24] 1763 	inc	dptr
      002729 E0               [24] 1764 	movx	a,@dptr
      00272A FE               [12] 1765 	mov	r6,a
      00272B A3               [24] 1766 	inc	dptr
      00272C E0               [24] 1767 	movx	a,@dptr
      00272D FF               [12] 1768 	mov	r7,a
      00272E 74 05            [12] 1769 	mov	a,#0x05
      002730 2D               [12] 1770 	add	a, r5
      002731 F5 08            [12] 1771 	mov	_enc_init_sloc0_1_0,a
      002733 E4               [12] 1772 	clr	a
      002734 3E               [12] 1773 	addc	a, r6
      002735 F5 09            [12] 1774 	mov	(_enc_init_sloc0_1_0 + 1),a
      002737 8F 0A            [24] 1775 	mov	(_enc_init_sloc0_1_0 + 2),r7
      002739 85 08 82         [24] 1776 	mov	dpl,_enc_init_sloc0_1_0
      00273C 85 09 83         [24] 1777 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      00273F 85 0A F0         [24] 1778 	mov	b,(_enc_init_sloc0_1_0 + 2)
      002742 12 47 9E         [24] 1779 	lcall	__gptrget
      002745 F9               [12] 1780 	mov	r1,a
      002746 90 03 7A         [24] 1781 	mov	dptr,#_spi_control_write_PARM_2
      002749 74 01            [12] 1782 	mov	a,#0x01
      00274B F0               [24] 1783 	movx	@dptr,a
      00274C 90 03 7B         [24] 1784 	mov	dptr,#_spi_control_write_PARM_3
      00274F E9               [12] 1785 	mov	a,r1
      002750 F0               [24] 1786 	movx	@dptr,a
      002751 75 82 03         [24] 1787 	mov	dpl, #0x03
      002754 C0 07            [24] 1788 	push	ar7
      002756 C0 06            [24] 1789 	push	ar6
      002758 C0 05            [24] 1790 	push	ar5
      00275A 12 34 1F         [24] 1791 	lcall	_spi_control_write
      00275D D0 05            [24] 1792 	pop	ar5
      00275F D0 06            [24] 1793 	pop	ar6
      002761 D0 07            [24] 1794 	pop	ar7
                                   1795 ;	Eth.c:269: spi_control_write(3, 0x00, mac[4]); // MAADR5
      002763 74 04            [12] 1796 	mov	a,#0x04
      002765 2D               [12] 1797 	add	a, r5
      002766 F5 0B            [12] 1798 	mov	_enc_init_sloc1_1_0,a
      002768 E4               [12] 1799 	clr	a
      002769 3E               [12] 1800 	addc	a, r6
      00276A F5 0C            [12] 1801 	mov	(_enc_init_sloc1_1_0 + 1),a
      00276C 8F 0D            [24] 1802 	mov	(_enc_init_sloc1_1_0 + 2),r7
      00276E 85 0B 82         [24] 1803 	mov	dpl,_enc_init_sloc1_1_0
      002771 85 0C 83         [24] 1804 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      002774 85 0D F0         [24] 1805 	mov	b,(_enc_init_sloc1_1_0 + 2)
      002777 12 47 9E         [24] 1806 	lcall	__gptrget
      00277A FB               [12] 1807 	mov	r3,a
      00277B 90 03 7A         [24] 1808 	mov	dptr,#_spi_control_write_PARM_2
      00277E E4               [12] 1809 	clr	a
      00277F F0               [24] 1810 	movx	@dptr,a
      002780 90 03 7B         [24] 1811 	mov	dptr,#_spi_control_write_PARM_3
      002783 EB               [12] 1812 	mov	a,r3
      002784 F0               [24] 1813 	movx	@dptr,a
      002785 75 82 03         [24] 1814 	mov	dpl, #0x03
      002788 C0 07            [24] 1815 	push	ar7
      00278A C0 06            [24] 1816 	push	ar6
      00278C C0 05            [24] 1817 	push	ar5
      00278E 12 34 1F         [24] 1818 	lcall	_spi_control_write
      002791 D0 05            [24] 1819 	pop	ar5
      002793 D0 06            [24] 1820 	pop	ar6
      002795 D0 07            [24] 1821 	pop	ar7
                                   1822 ;	Eth.c:270: spi_control_write(3, 0x03, mac[3]); // MAADR4
      002797 74 03            [12] 1823 	mov	a,#0x03
      002799 2D               [12] 1824 	add	a, r5
      00279A F5 0E            [12] 1825 	mov	_enc_init_sloc2_1_0,a
      00279C E4               [12] 1826 	clr	a
      00279D 3E               [12] 1827 	addc	a, r6
      00279E F5 0F            [12] 1828 	mov	(_enc_init_sloc2_1_0 + 1),a
      0027A0 8F 10            [24] 1829 	mov	(_enc_init_sloc2_1_0 + 2),r7
      0027A2 85 0E 82         [24] 1830 	mov	dpl,_enc_init_sloc2_1_0
      0027A5 85 0F 83         [24] 1831 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      0027A8 85 10 F0         [24] 1832 	mov	b,(_enc_init_sloc2_1_0 + 2)
      0027AB 12 47 9E         [24] 1833 	lcall	__gptrget
      0027AE F9               [12] 1834 	mov	r1,a
      0027AF 90 03 7A         [24] 1835 	mov	dptr,#_spi_control_write_PARM_2
      0027B2 74 03            [12] 1836 	mov	a,#0x03
      0027B4 F0               [24] 1837 	movx	@dptr,a
      0027B5 90 03 7B         [24] 1838 	mov	dptr,#_spi_control_write_PARM_3
      0027B8 E9               [12] 1839 	mov	a,r1
      0027B9 F0               [24] 1840 	movx	@dptr,a
      0027BA 75 82 03         [24] 1841 	mov	dpl, #0x03
      0027BD C0 07            [24] 1842 	push	ar7
      0027BF C0 06            [24] 1843 	push	ar6
      0027C1 C0 05            [24] 1844 	push	ar5
      0027C3 12 34 1F         [24] 1845 	lcall	_spi_control_write
      0027C6 D0 05            [24] 1846 	pop	ar5
      0027C8 D0 06            [24] 1847 	pop	ar6
      0027CA D0 07            [24] 1848 	pop	ar7
                                   1849 ;	Eth.c:271: spi_control_write(3, 0x02, mac[2]); // MAADR3
      0027CC 74 02            [12] 1850 	mov	a,#0x02
      0027CE 2D               [12] 1851 	add	a, r5
      0027CF F5 11            [12] 1852 	mov	_enc_init_sloc3_1_0,a
      0027D1 E4               [12] 1853 	clr	a
      0027D2 3E               [12] 1854 	addc	a, r6
      0027D3 F5 12            [12] 1855 	mov	(_enc_init_sloc3_1_0 + 1),a
      0027D5 8F 13            [24] 1856 	mov	(_enc_init_sloc3_1_0 + 2),r7
      0027D7 85 11 82         [24] 1857 	mov	dpl,_enc_init_sloc3_1_0
      0027DA 85 12 83         [24] 1858 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      0027DD 85 13 F0         [24] 1859 	mov	b,(_enc_init_sloc3_1_0 + 2)
      0027E0 12 47 9E         [24] 1860 	lcall	__gptrget
      0027E3 FB               [12] 1861 	mov	r3,a
      0027E4 90 03 7A         [24] 1862 	mov	dptr,#_spi_control_write_PARM_2
      0027E7 74 02            [12] 1863 	mov	a,#0x02
      0027E9 F0               [24] 1864 	movx	@dptr,a
      0027EA 90 03 7B         [24] 1865 	mov	dptr,#_spi_control_write_PARM_3
      0027ED EB               [12] 1866 	mov	a,r3
      0027EE F0               [24] 1867 	movx	@dptr,a
      0027EF 75 82 03         [24] 1868 	mov	dpl, #0x03
      0027F2 C0 07            [24] 1869 	push	ar7
      0027F4 C0 06            [24] 1870 	push	ar6
      0027F6 C0 05            [24] 1871 	push	ar5
      0027F8 12 34 1F         [24] 1872 	lcall	_spi_control_write
      0027FB D0 05            [24] 1873 	pop	ar5
      0027FD D0 06            [24] 1874 	pop	ar6
      0027FF D0 07            [24] 1875 	pop	ar7
                                   1876 ;	Eth.c:272: spi_control_write(3, 0x05, mac[1]); // MAADR2
      002801 74 01            [12] 1877 	mov	a,#0x01
      002803 2D               [12] 1878 	add	a, r5
      002804 FA               [12] 1879 	mov	r2,a
      002805 E4               [12] 1880 	clr	a
      002806 3E               [12] 1881 	addc	a, r6
      002807 FB               [12] 1882 	mov	r3,a
      002808 8F 04            [24] 1883 	mov	ar4,r7
      00280A 8A 82            [24] 1884 	mov	dpl,r2
      00280C 8B 83            [24] 1885 	mov	dph,r3
      00280E 8C F0            [24] 1886 	mov	b,r4
      002810 12 47 9E         [24] 1887 	lcall	__gptrget
      002813 F9               [12] 1888 	mov	r1,a
      002814 90 03 7A         [24] 1889 	mov	dptr,#_spi_control_write_PARM_2
      002817 74 05            [12] 1890 	mov	a,#0x05
      002819 F0               [24] 1891 	movx	@dptr,a
      00281A 90 03 7B         [24] 1892 	mov	dptr,#_spi_control_write_PARM_3
      00281D E9               [12] 1893 	mov	a,r1
      00281E F0               [24] 1894 	movx	@dptr,a
      00281F 75 82 03         [24] 1895 	mov	dpl, #0x03
      002822 C0 07            [24] 1896 	push	ar7
      002824 C0 06            [24] 1897 	push	ar6
      002826 C0 05            [24] 1898 	push	ar5
      002828 C0 04            [24] 1899 	push	ar4
      00282A C0 03            [24] 1900 	push	ar3
      00282C C0 02            [24] 1901 	push	ar2
      00282E 12 34 1F         [24] 1902 	lcall	_spi_control_write
      002831 D0 02            [24] 1903 	pop	ar2
      002833 D0 03            [24] 1904 	pop	ar3
      002835 D0 04            [24] 1905 	pop	ar4
      002837 D0 05            [24] 1906 	pop	ar5
      002839 D0 06            [24] 1907 	pop	ar6
      00283B D0 07            [24] 1908 	pop	ar7
                                   1909 ;	Eth.c:273: spi_control_write(3, 0x04, mac[0]); // MAADR1
      00283D 8D 82            [24] 1910 	mov	dpl,r5
      00283F 8E 83            [24] 1911 	mov	dph,r6
      002841 8F F0            [24] 1912 	mov	b,r7
      002843 12 47 9E         [24] 1913 	lcall	__gptrget
      002846 F9               [12] 1914 	mov	r1,a
      002847 90 03 7A         [24] 1915 	mov	dptr,#_spi_control_write_PARM_2
      00284A 74 04            [12] 1916 	mov	a,#0x04
      00284C F0               [24] 1917 	movx	@dptr,a
      00284D 90 03 7B         [24] 1918 	mov	dptr,#_spi_control_write_PARM_3
      002850 E9               [12] 1919 	mov	a,r1
      002851 F0               [24] 1920 	movx	@dptr,a
      002852 75 82 03         [24] 1921 	mov	dpl, #0x03
      002855 C0 07            [24] 1922 	push	ar7
      002857 C0 06            [24] 1923 	push	ar6
      002859 C0 05            [24] 1924 	push	ar5
      00285B C0 04            [24] 1925 	push	ar4
      00285D C0 03            [24] 1926 	push	ar3
      00285F C0 02            [24] 1927 	push	ar2
      002861 12 34 1F         [24] 1928 	lcall	_spi_control_write
      002864 D0 02            [24] 1929 	pop	ar2
      002866 D0 03            [24] 1930 	pop	ar3
      002868 D0 04            [24] 1931 	pop	ar4
      00286A D0 05            [24] 1932 	pop	ar5
      00286C D0 06            [24] 1933 	pop	ar6
      00286E D0 07            [24] 1934 	pop	ar7
                                   1935 ;	Eth.c:275: spi_control_write(1, 0x18, 0x80); //unicast filter funcationality register
      002870 90 03 7A         [24] 1936 	mov	dptr,#_spi_control_write_PARM_2
      002873 74 18            [12] 1937 	mov	a,#0x18
      002875 F0               [24] 1938 	movx	@dptr,a
      002876 90 03 7B         [24] 1939 	mov	dptr,#_spi_control_write_PARM_3
      002879 74 80            [12] 1940 	mov	a,#0x80
      00287B F0               [24] 1941 	movx	@dptr,a
      00287C 75 82 01         [24] 1942 	mov	dpl, #0x01
      00287F C0 07            [24] 1943 	push	ar7
      002881 C0 06            [24] 1944 	push	ar6
      002883 C0 05            [24] 1945 	push	ar5
      002885 C0 04            [24] 1946 	push	ar4
      002887 C0 03            [24] 1947 	push	ar3
      002889 C0 02            [24] 1948 	push	ar2
      00288B 12 34 1F         [24] 1949 	lcall	_spi_control_write
      00288E D0 02            [24] 1950 	pop	ar2
      002890 D0 03            [24] 1951 	pop	ar3
      002892 D0 04            [24] 1952 	pop	ar4
      002894 D0 05            [24] 1953 	pop	ar5
      002896 D0 06            [24] 1954 	pop	ar6
      002898 D0 07            [24] 1955 	pop	ar7
                                   1956 ;	Eth.c:276: uint8_t read_macon3 = mac_spi_read(0x03, 2);
      00289A 90 03 83         [24] 1957 	mov	dptr,#_mac_spi_read_PARM_2
      00289D 74 02            [12] 1958 	mov	a,#0x02
      00289F F0               [24] 1959 	movx	@dptr,a
      0028A0 75 82 03         [24] 1960 	mov	dpl, #0x03
      0028A3 C0 07            [24] 1961 	push	ar7
      0028A5 C0 06            [24] 1962 	push	ar6
      0028A7 C0 05            [24] 1963 	push	ar5
      0028A9 C0 04            [24] 1964 	push	ar4
      0028AB C0 03            [24] 1965 	push	ar3
      0028AD C0 02            [24] 1966 	push	ar2
      0028AF 12 35 95         [24] 1967 	lcall	_mac_spi_read
      0028B2 E5 82            [12] 1968 	mov	a, dpl
      0028B4 D0 02            [24] 1969 	pop	ar2
      0028B6 D0 03            [24] 1970 	pop	ar3
      0028B8 D0 04            [24] 1971 	pop	ar4
      0028BA D0 05            [24] 1972 	pop	ar5
      0028BC D0 06            [24] 1973 	pop	ar6
      0028BE D0 07            [24] 1974 	pop	ar7
                                   1975 ;	Eth.c:277: spi_control_write(2, 0x03, (read_macon3 | (1 << 0)));
      0028C0 44 01            [12] 1976 	orl	a,#0x01
      0028C2 F9               [12] 1977 	mov	r1,a
      0028C3 90 03 7A         [24] 1978 	mov	dptr,#_spi_control_write_PARM_2
      0028C6 74 03            [12] 1979 	mov	a,#0x03
      0028C8 F0               [24] 1980 	movx	@dptr,a
      0028C9 90 03 7B         [24] 1981 	mov	dptr,#_spi_control_write_PARM_3
      0028CC E9               [12] 1982 	mov	a,r1
      0028CD F0               [24] 1983 	movx	@dptr,a
      0028CE 75 82 02         [24] 1984 	mov	dpl, #0x02
      0028D1 C0 07            [24] 1985 	push	ar7
      0028D3 C0 06            [24] 1986 	push	ar6
      0028D5 C0 05            [24] 1987 	push	ar5
      0028D7 C0 04            [24] 1988 	push	ar4
      0028D9 C0 03            [24] 1989 	push	ar3
      0028DB C0 02            [24] 1990 	push	ar2
      0028DD 12 34 1F         [24] 1991 	lcall	_spi_control_write
      0028E0 D0 02            [24] 1992 	pop	ar2
      0028E2 D0 03            [24] 1993 	pop	ar3
      0028E4 D0 04            [24] 1994 	pop	ar4
      0028E6 D0 05            [24] 1995 	pop	ar5
      0028E8 D0 06            [24] 1996 	pop	ar6
      0028EA D0 07            [24] 1997 	pop	ar7
                                   1998 ;	Eth.c:278: uint8_t read_macon1 = mac_spi_read(0x00, 2); //mac enable for reception
      0028EC 90 03 83         [24] 1999 	mov	dptr,#_mac_spi_read_PARM_2
      0028EF 74 02            [12] 2000 	mov	a,#0x02
      0028F1 F0               [24] 2001 	movx	@dptr,a
      0028F2 75 82 00         [24] 2002 	mov	dpl, #0x00
      0028F5 C0 07            [24] 2003 	push	ar7
      0028F7 C0 06            [24] 2004 	push	ar6
      0028F9 C0 05            [24] 2005 	push	ar5
      0028FB C0 04            [24] 2006 	push	ar4
      0028FD C0 03            [24] 2007 	push	ar3
      0028FF C0 02            [24] 2008 	push	ar2
      002901 12 35 95         [24] 2009 	lcall	_mac_spi_read
      002904 E5 82            [12] 2010 	mov	a, dpl
      002906 D0 02            [24] 2011 	pop	ar2
      002908 D0 03            [24] 2012 	pop	ar3
      00290A D0 04            [24] 2013 	pop	ar4
      00290C D0 05            [24] 2014 	pop	ar5
      00290E D0 06            [24] 2015 	pop	ar6
      002910 D0 07            [24] 2016 	pop	ar7
                                   2017 ;	Eth.c:279: spi_control_write(2, 0x00, (read_macon1 | (1 << 0))); //mac enable for reception
      002912 44 01            [12] 2018 	orl	a,#0x01
      002914 F9               [12] 2019 	mov	r1,a
      002915 90 03 7A         [24] 2020 	mov	dptr,#_spi_control_write_PARM_2
      002918 E4               [12] 2021 	clr	a
      002919 F0               [24] 2022 	movx	@dptr,a
      00291A 90 03 7B         [24] 2023 	mov	dptr,#_spi_control_write_PARM_3
      00291D E9               [12] 2024 	mov	a,r1
      00291E F0               [24] 2025 	movx	@dptr,a
      00291F 75 82 02         [24] 2026 	mov	dpl, #0x02
      002922 C0 07            [24] 2027 	push	ar7
      002924 C0 06            [24] 2028 	push	ar6
      002926 C0 05            [24] 2029 	push	ar5
      002928 C0 04            [24] 2030 	push	ar4
      00292A C0 03            [24] 2031 	push	ar3
      00292C C0 02            [24] 2032 	push	ar2
      00292E 12 34 1F         [24] 2033 	lcall	_spi_control_write
      002931 D0 02            [24] 2034 	pop	ar2
      002933 D0 03            [24] 2035 	pop	ar3
      002935 D0 04            [24] 2036 	pop	ar4
      002937 D0 05            [24] 2037 	pop	ar5
      002939 D0 06            [24] 2038 	pop	ar6
      00293B D0 07            [24] 2039 	pop	ar7
                                   2040 ;	Eth.c:280: phy_spi_write(0x00, 0x0100);
      00293D 90 03 80         [24] 2041 	mov	dptr,#_phy_spi_write_PARM_2
      002940 E4               [12] 2042 	clr	a
      002941 F0               [24] 2043 	movx	@dptr,a
      002942 04               [12] 2044 	inc	a
      002943 A3               [24] 2045 	inc	dptr
      002944 F0               [24] 2046 	movx	@dptr,a
      002945 75 82 00         [24] 2047 	mov	dpl, #0x00
      002948 C0 07            [24] 2048 	push	ar7
      00294A C0 06            [24] 2049 	push	ar6
      00294C C0 05            [24] 2050 	push	ar5
      00294E C0 04            [24] 2051 	push	ar4
      002950 C0 03            [24] 2052 	push	ar3
      002952 C0 02            [24] 2053 	push	ar2
      002954 12 35 12         [24] 2054 	lcall	_phy_spi_write
      002957 D0 02            [24] 2055 	pop	ar2
      002959 D0 03            [24] 2056 	pop	ar3
      00295B D0 04            [24] 2057 	pop	ar4
      00295D D0 05            [24] 2058 	pop	ar5
      00295F D0 06            [24] 2059 	pop	ar6
      002961 D0 07            [24] 2060 	pop	ar7
                                   2061 ;	Eth.c:283: phy_spi_write(0x14, 0x3422); // PHLCON: LEDA=Link/Activity, LEDB=RX/TX Activity
      002963 90 03 80         [24] 2062 	mov	dptr,#_phy_spi_write_PARM_2
      002966 74 22            [12] 2063 	mov	a,#0x22
      002968 F0               [24] 2064 	movx	@dptr,a
      002969 74 34            [12] 2065 	mov	a,#0x34
      00296B A3               [24] 2066 	inc	dptr
      00296C F0               [24] 2067 	movx	@dptr,a
      00296D 75 82 14         [24] 2068 	mov	dpl, #0x14
      002970 C0 07            [24] 2069 	push	ar7
      002972 C0 06            [24] 2070 	push	ar6
      002974 C0 05            [24] 2071 	push	ar5
      002976 C0 04            [24] 2072 	push	ar4
      002978 C0 03            [24] 2073 	push	ar3
      00297A C0 02            [24] 2074 	push	ar2
      00297C 12 35 12         [24] 2075 	lcall	_phy_spi_write
      00297F D0 02            [24] 2076 	pop	ar2
      002981 D0 03            [24] 2077 	pop	ar3
      002983 D0 04            [24] 2078 	pop	ar4
      002985 D0 05            [24] 2079 	pop	ar5
      002987 D0 06            [24] 2080 	pop	ar6
      002989 D0 07            [24] 2081 	pop	ar7
                                   2082 ;	Eth.c:284: spi_control_write(0, 0X1F, 0X04); // reception enable bit
      00298B 90 03 7A         [24] 2083 	mov	dptr,#_spi_control_write_PARM_2
      00298E 74 1F            [12] 2084 	mov	a,#0x1f
      002990 F0               [24] 2085 	movx	@dptr,a
      002991 90 03 7B         [24] 2086 	mov	dptr,#_spi_control_write_PARM_3
      002994 74 04            [12] 2087 	mov	a,#0x04
      002996 F0               [24] 2088 	movx	@dptr,a
      002997 75 82 00         [24] 2089 	mov	dpl, #0x00
      00299A C0 07            [24] 2090 	push	ar7
      00299C C0 06            [24] 2091 	push	ar6
      00299E C0 05            [24] 2092 	push	ar5
      0029A0 C0 04            [24] 2093 	push	ar4
      0029A2 C0 03            [24] 2094 	push	ar3
      0029A4 C0 02            [24] 2095 	push	ar2
      0029A6 12 34 1F         [24] 2096 	lcall	_spi_control_write
                                   2097 ;	Eth.c:285: printf("\nENC28J60 Initialization Complete.\n");
      0029A9 74 12            [12] 2098 	mov	a,#___str_7
      0029AB C0 E0            [24] 2099 	push	acc
      0029AD 74 49            [12] 2100 	mov	a,#(___str_7 >> 8)
      0029AF C0 E0            [24] 2101 	push	acc
      0029B1 74 80            [12] 2102 	mov	a,#0x80
      0029B3 C0 E0            [24] 2103 	push	acc
      0029B5 12 3D 7C         [24] 2104 	lcall	_printf
      0029B8 15 81            [12] 2105 	dec	sp
      0029BA 15 81            [12] 2106 	dec	sp
      0029BC 15 81            [12] 2107 	dec	sp
      0029BE D0 02            [24] 2108 	pop	ar2
      0029C0 D0 03            [24] 2109 	pop	ar3
      0029C2 D0 04            [24] 2110 	pop	ar4
      0029C4 D0 05            [24] 2111 	pop	ar5
      0029C6 D0 06            [24] 2112 	pop	ar6
      0029C8 D0 07            [24] 2113 	pop	ar7
                                   2114 ;	Eth.c:287: mac[2], mac[3], mac[4], mac[5]);
      0029CA 85 08 82         [24] 2115 	mov	dpl,_enc_init_sloc0_1_0
      0029CD 85 09 83         [24] 2116 	mov	dph,(_enc_init_sloc0_1_0 + 1)
      0029D0 85 0A F0         [24] 2117 	mov	b,(_enc_init_sloc0_1_0 + 2)
      0029D3 12 47 9E         [24] 2118 	lcall	__gptrget
      0029D6 F9               [12] 2119 	mov	r1,a
      0029D7 89 08            [24] 2120 	mov	_enc_init_sloc0_1_0,r1
      0029D9 75 09 00         [24] 2121 	mov	(_enc_init_sloc0_1_0 + 1),#0x00
      0029DC 85 0B 82         [24] 2122 	mov	dpl,_enc_init_sloc1_1_0
      0029DF 85 0C 83         [24] 2123 	mov	dph,(_enc_init_sloc1_1_0 + 1)
      0029E2 85 0D F0         [24] 2124 	mov	b,(_enc_init_sloc1_1_0 + 2)
      0029E5 12 47 9E         [24] 2125 	lcall	__gptrget
      0029E8 F9               [12] 2126 	mov	r1,a
      0029E9 89 0B            [24] 2127 	mov	_enc_init_sloc1_1_0,r1
      0029EB 75 0C 00         [24] 2128 	mov	(_enc_init_sloc1_1_0 + 1),#0x00
      0029EE 85 0E 82         [24] 2129 	mov	dpl,_enc_init_sloc2_1_0
      0029F1 85 0F 83         [24] 2130 	mov	dph,(_enc_init_sloc2_1_0 + 1)
      0029F4 85 10 F0         [24] 2131 	mov	b,(_enc_init_sloc2_1_0 + 2)
      0029F7 12 47 9E         [24] 2132 	lcall	__gptrget
      0029FA F9               [12] 2133 	mov	r1,a
      0029FB 89 0E            [24] 2134 	mov	_enc_init_sloc2_1_0,r1
      0029FD 75 0F 00         [24] 2135 	mov	(_enc_init_sloc2_1_0 + 1),#0x00
      002A00 85 11 82         [24] 2136 	mov	dpl,_enc_init_sloc3_1_0
      002A03 85 12 83         [24] 2137 	mov	dph,(_enc_init_sloc3_1_0 + 1)
      002A06 85 13 F0         [24] 2138 	mov	b,(_enc_init_sloc3_1_0 + 2)
      002A09 12 47 9E         [24] 2139 	lcall	__gptrget
      002A0C F8               [12] 2140 	mov	r0,a
      002A0D 79 00            [12] 2141 	mov	r1,#0x00
                                   2142 ;	Eth.c:286: printf("MAC Address: %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1],
      002A0F 8A 82            [24] 2143 	mov	dpl,r2
      002A11 8B 83            [24] 2144 	mov	dph,r3
      002A13 8C F0            [24] 2145 	mov	b,r4
      002A15 12 47 9E         [24] 2146 	lcall	__gptrget
      002A18 FA               [12] 2147 	mov	r2,a
      002A19 7C 00            [12] 2148 	mov	r4,#0x00
      002A1B 8D 82            [24] 2149 	mov	dpl,r5
      002A1D 8E 83            [24] 2150 	mov	dph,r6
      002A1F 8F F0            [24] 2151 	mov	b,r7
      002A21 12 47 9E         [24] 2152 	lcall	__gptrget
      002A24 FD               [12] 2153 	mov	r5,a
      002A25 7F 00            [12] 2154 	mov	r7,#0x00
      002A27 C0 08            [24] 2155 	push	_enc_init_sloc0_1_0
      002A29 C0 09            [24] 2156 	push	(_enc_init_sloc0_1_0 + 1)
      002A2B C0 0B            [24] 2157 	push	_enc_init_sloc1_1_0
      002A2D C0 0C            [24] 2158 	push	(_enc_init_sloc1_1_0 + 1)
      002A2F C0 0E            [24] 2159 	push	_enc_init_sloc2_1_0
      002A31 C0 0F            [24] 2160 	push	(_enc_init_sloc2_1_0 + 1)
      002A33 C0 00            [24] 2161 	push	ar0
      002A35 C0 01            [24] 2162 	push	ar1
      002A37 C0 02            [24] 2163 	push	ar2
      002A39 C0 04            [24] 2164 	push	ar4
      002A3B C0 05            [24] 2165 	push	ar5
      002A3D C0 07            [24] 2166 	push	ar7
      002A3F 74 36            [12] 2167 	mov	a,#___str_8
      002A41 C0 E0            [24] 2168 	push	acc
      002A43 74 49            [12] 2169 	mov	a,#(___str_8 >> 8)
      002A45 C0 E0            [24] 2170 	push	acc
      002A47 74 80            [12] 2171 	mov	a,#0x80
      002A49 C0 E0            [24] 2172 	push	acc
      002A4B 12 3D 7C         [24] 2173 	lcall	_printf
      002A4E E5 81            [12] 2174 	mov	a,sp
      002A50 24 F1            [12] 2175 	add	a,#0xf1
      002A52 F5 81            [12] 2176 	mov	sp,a
                                   2177 ;	Eth.c:288: }
      002A54 22               [24] 2178 	ret
                                   2179 	.area CSEG    (CODE)
                                   2180 	.area CONST   (CODE)
                                   2181 	.area CONST   (CODE)
      0047BE                       2182 ___str_0:
      0047BE 0A                    2183 	.db 0x0a
      0047BF 49 6E 76 61 6C 69 64  2184 	.ascii "Invalid Buffer Size. Buffer exceeds valid address range."
             20 42 75 66 66 65 72
             20 53 69 7A 65 2E 20
             42 75 66 66 65 72 20
             65 78 63 65 65 64 73
             20 76 61 6C 69 64 20
             61 64 64 72 65 73 73
             20 72 61 6E 67 65 2E
      0047F7 0A                    2185 	.db 0x0a
      0047F8 00                    2186 	.db 0x00
                                   2187 	.area CSEG    (CODE)
                                   2188 	.area CONST   (CODE)
      0047F9                       2189 ___str_1:
      0047F9 41 52 50 20 72 65 71  2190 	.ascii "ARP request sent successfully."
             75 65 73 74 20 73 65
             6E 74 20 73 75 63 63
             65 73 73 66 75 6C 6C
             79 2E
      004817 0A                    2191 	.db 0x0a
      004818 0D                    2192 	.db 0x0d
      004819 00                    2193 	.db 0x00
                                   2194 	.area CSEG    (CODE)
                                   2195 	.area CONST   (CODE)
      00481A                       2196 ___str_2:
      00481A 41 52 50 20 74 72 61  2197 	.ascii "ARP transmission failed. Check error flags."
             6E 73 6D 69 73 73 69
             6F 6E 20 66 61 69 6C
             65 64 2E 20 43 68 65
             63 6B 20 65 72 72 6F
             72 20 66 6C 61 67 73
             2E
      004845 0A                    2198 	.db 0x0a
      004846 0D                    2199 	.db 0x0d
      004847 00                    2200 	.db 0x00
                                   2201 	.area CSEG    (CODE)
                                   2202 	.area CONST   (CODE)
      004848                       2203 ___str_3:
      004848 54 72 61 6E 73 6D 69  2204 	.ascii "Transmission timeout. ENC28J60 may not be functioning correc"
             73 73 69 6F 6E 20 74
             69 6D 65 6F 75 74 2E
             20 45 4E 43 32 38 4A
             36 30 20 6D 61 79 20
             6E 6F 74 20 62 65 20
             66 75 6E 63 74 69 6F
             6E 69 6E 67 20 63 6F
             72 72 65 63
      004884 74 6C 79 2E           2205 	.ascii "tly."
      004888 0A                    2206 	.db 0x0a
      004889 0D                    2207 	.db 0x0d
      00488A 00                    2208 	.db 0x00
                                   2209 	.area CSEG    (CODE)
                                   2210 	.area CONST   (CODE)
      00488B                       2211 ___str_4:
      00488B 49 6E 74 65 72 72 72  2212 	.ascii "Interrrrrrrruuuuuuuuuppppppppttttttt"
             72 72 72 72 72 75 75
             75 75 75 75 75 75 75
             70 70 70 70 70 70 70
             70 74 74 74 74 74 74
             74
      0048AF 0A                    2213 	.db 0x0a
      0048B0 0D                    2214 	.db 0x0d
      0048B1 00                    2215 	.db 0x00
                                   2216 	.area CSEG    (CODE)
                                   2217 	.area CONST   (CODE)
      0048B2                       2218 ___str_5:
      0048B2 0A                    2219 	.db 0x0a
      0048B3 49 6E 76 61 6C 69 64  2220 	.ascii "Invalid Buffer Range: Start 0x%04X, End 0x%04X"
             20 42 75 66 66 65 72
             20 52 61 6E 67 65 3A
             20 53 74 61 72 74 20
             30 78 25 30 34 58 2C
             20 45 6E 64 20 30 78
             25 30 34 58
      0048E1 0A                    2221 	.db 0x0a
      0048E2 00                    2222 	.db 0x00
                                   2223 	.area CSEG    (CODE)
                                   2224 	.area CONST   (CODE)
      0048E3                       2225 ___str_6:
      0048E3 0A                    2226 	.db 0x0a
      0048E4 42 75 66 66 65 72 20  2227 	.ascii "Buffer Initialized: Start 0x%04X, End 0x%04X"
             49 6E 69 74 69 61 6C
             69 7A 65 64 3A 20 53
             74 61 72 74 20 30 78
             25 30 34 58 2C 20 45
             6E 64 20 30 78 25 30
             34 58
      004910 0A                    2228 	.db 0x0a
      004911 00                    2229 	.db 0x00
                                   2230 	.area CSEG    (CODE)
                                   2231 	.area CONST   (CODE)
      004912                       2232 ___str_7:
      004912 0A                    2233 	.db 0x0a
      004913 45 4E 43 32 38 4A 36  2234 	.ascii "ENC28J60 Initialization Complete."
             30 20 49 6E 69 74 69
             61 6C 69 7A 61 74 69
             6F 6E 20 43 6F 6D 70
             6C 65 74 65 2E
      004934 0A                    2235 	.db 0x0a
      004935 00                    2236 	.db 0x00
                                   2237 	.area CSEG    (CODE)
                                   2238 	.area CONST   (CODE)
      004936                       2239 ___str_8:
      004936 4D 41 43 20 41 64 64  2240 	.ascii "MAC Address: %02X:%02X:%02X:%02X:%02X:%02X"
             72 65 73 73 3A 20 25
             30 32 58 3A 25 30 32
             58 3A 25 30 32 58 3A
             25 30 32 58 3A 25 30
             32 58 3A 25 30 32 58
      004960 0A                    2241 	.db 0x0a
      004961 00                    2242 	.db 0x00
                                   2243 	.area CSEG    (CODE)
                                   2244 	.area XINIT   (CODE)
                                   2245 	.area CABS    (ABS,CODE)

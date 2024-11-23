                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module SPI
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _test_read_ctrl
                                     12 	.globl _SPI_read
                                     13 	.globl _printf
                                     14 	.globl _TF1
                                     15 	.globl _TR1
                                     16 	.globl _TF0
                                     17 	.globl _TR0
                                     18 	.globl _IE1
                                     19 	.globl _IT1
                                     20 	.globl _IE0
                                     21 	.globl _IT0
                                     22 	.globl _SM0
                                     23 	.globl _SM1
                                     24 	.globl _SM2
                                     25 	.globl _REN
                                     26 	.globl _TB8
                                     27 	.globl _RB8
                                     28 	.globl _TI
                                     29 	.globl _RI
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD0
                                     45 	.globl _TXD
                                     46 	.globl _RXD0
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _P0_7
                                     73 	.globl _P0_6
                                     74 	.globl _P0_5
                                     75 	.globl _P0_4
                                     76 	.globl _P0_3
                                     77 	.globl _P0_2
                                     78 	.globl _P0_1
                                     79 	.globl _P0_0
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _EA
                                     86 	.globl _ES
                                     87 	.globl _ET1
                                     88 	.globl _EX1
                                     89 	.globl _ET0
                                     90 	.globl _EX0
                                     91 	.globl _BREG_F7
                                     92 	.globl _BREG_F6
                                     93 	.globl _BREG_F5
                                     94 	.globl _BREG_F4
                                     95 	.globl _BREG_F3
                                     96 	.globl _BREG_F2
                                     97 	.globl _BREG_F1
                                     98 	.globl _BREG_F0
                                     99 	.globl _P5_7
                                    100 	.globl _P5_6
                                    101 	.globl _P5_5
                                    102 	.globl _P5_4
                                    103 	.globl _P5_3
                                    104 	.globl _P5_2
                                    105 	.globl _P5_1
                                    106 	.globl _P5_0
                                    107 	.globl _P4_7
                                    108 	.globl _P4_6
                                    109 	.globl _P4_5
                                    110 	.globl _P4_4
                                    111 	.globl _P4_3
                                    112 	.globl _P4_2
                                    113 	.globl _P4_1
                                    114 	.globl _P4_0
                                    115 	.globl _PX0L
                                    116 	.globl _PT0L
                                    117 	.globl _PX1L
                                    118 	.globl _PT1L
                                    119 	.globl _PSL
                                    120 	.globl _PT2L
                                    121 	.globl _PPCL
                                    122 	.globl _EC
                                    123 	.globl _CCF0
                                    124 	.globl _CCF1
                                    125 	.globl _CCF2
                                    126 	.globl _CCF3
                                    127 	.globl _CCF4
                                    128 	.globl _CR
                                    129 	.globl _CF
                                    130 	.globl _TF2
                                    131 	.globl _EXF2
                                    132 	.globl _RCLK
                                    133 	.globl _TCLK
                                    134 	.globl _EXEN2
                                    135 	.globl _TR2
                                    136 	.globl _C_T2
                                    137 	.globl _CP_RL2
                                    138 	.globl _T2CON_7
                                    139 	.globl _T2CON_6
                                    140 	.globl _T2CON_5
                                    141 	.globl _T2CON_4
                                    142 	.globl _T2CON_3
                                    143 	.globl _T2CON_2
                                    144 	.globl _T2CON_1
                                    145 	.globl _T2CON_0
                                    146 	.globl _PT2
                                    147 	.globl _ET2
                                    148 	.globl _TMOD
                                    149 	.globl _TL1
                                    150 	.globl _TL0
                                    151 	.globl _TH1
                                    152 	.globl _TH0
                                    153 	.globl _TCON
                                    154 	.globl _SP
                                    155 	.globl _SCON
                                    156 	.globl _SBUF0
                                    157 	.globl _SBUF
                                    158 	.globl _PSW
                                    159 	.globl _PCON
                                    160 	.globl _P3
                                    161 	.globl _P2
                                    162 	.globl _P1
                                    163 	.globl _P0
                                    164 	.globl _IP
                                    165 	.globl _IE
                                    166 	.globl _DP0L
                                    167 	.globl _DPL
                                    168 	.globl _DP0H
                                    169 	.globl _DPH
                                    170 	.globl _B
                                    171 	.globl _ACC
                                    172 	.globl _EECON
                                    173 	.globl _KBF
                                    174 	.globl _KBE
                                    175 	.globl _KBLS
                                    176 	.globl _BRL
                                    177 	.globl _BDRCON
                                    178 	.globl _T2MOD
                                    179 	.globl _SPDAT
                                    180 	.globl _SPSTA
                                    181 	.globl _SPCON
                                    182 	.globl _SADEN
                                    183 	.globl _SADDR
                                    184 	.globl _WDTPRG
                                    185 	.globl _WDTRST
                                    186 	.globl _P5
                                    187 	.globl _P4
                                    188 	.globl _IPH1
                                    189 	.globl _IPL1
                                    190 	.globl _IPH0
                                    191 	.globl _IPL0
                                    192 	.globl _IEN1
                                    193 	.globl _IEN0
                                    194 	.globl _CMOD
                                    195 	.globl _CL
                                    196 	.globl _CH
                                    197 	.globl _CCON
                                    198 	.globl _CCAPM4
                                    199 	.globl _CCAPM3
                                    200 	.globl _CCAPM2
                                    201 	.globl _CCAPM1
                                    202 	.globl _CCAPM0
                                    203 	.globl _CCAP4L
                                    204 	.globl _CCAP3L
                                    205 	.globl _CCAP2L
                                    206 	.globl _CCAP1L
                                    207 	.globl _CCAP0L
                                    208 	.globl _CCAP4H
                                    209 	.globl _CCAP3H
                                    210 	.globl _CCAP2H
                                    211 	.globl _CCAP1H
                                    212 	.globl _CCAP0H
                                    213 	.globl _CKCON1
                                    214 	.globl _CKCON0
                                    215 	.globl _CKRL
                                    216 	.globl _AUXR1
                                    217 	.globl _AUXR
                                    218 	.globl _TH2
                                    219 	.globl _TL2
                                    220 	.globl _RCAP2H
                                    221 	.globl _RCAP2L
                                    222 	.globl _T2CON
                                    223 	.globl _configure_SPI
                                    224 	.globl _SPI_send
                                    225 	.globl _poll_MISTAT_BUSY
                                    226 	.globl _ENC_PHY_read
                                    227 	.globl _SPI_BB_init
                                    228 	.globl _SPI_send_BB
                                    229 	.globl _delay_us
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           0000C8   235 _T2CON	=	0x00c8
                           0000CA   236 _RCAP2L	=	0x00ca
                           0000CB   237 _RCAP2H	=	0x00cb
                           0000CC   238 _TL2	=	0x00cc
                           0000CD   239 _TH2	=	0x00cd
                           00008E   240 _AUXR	=	0x008e
                           0000A2   241 _AUXR1	=	0x00a2
                           000097   242 _CKRL	=	0x0097
                           00008F   243 _CKCON0	=	0x008f
                           0000AF   244 _CKCON1	=	0x00af
                           0000FA   245 _CCAP0H	=	0x00fa
                           0000FB   246 _CCAP1H	=	0x00fb
                           0000FC   247 _CCAP2H	=	0x00fc
                           0000FD   248 _CCAP3H	=	0x00fd
                           0000FE   249 _CCAP4H	=	0x00fe
                           0000EA   250 _CCAP0L	=	0x00ea
                           0000EB   251 _CCAP1L	=	0x00eb
                           0000EC   252 _CCAP2L	=	0x00ec
                           0000ED   253 _CCAP3L	=	0x00ed
                           0000EE   254 _CCAP4L	=	0x00ee
                           0000DA   255 _CCAPM0	=	0x00da
                           0000DB   256 _CCAPM1	=	0x00db
                           0000DC   257 _CCAPM2	=	0x00dc
                           0000DD   258 _CCAPM3	=	0x00dd
                           0000DE   259 _CCAPM4	=	0x00de
                           0000D8   260 _CCON	=	0x00d8
                           0000F9   261 _CH	=	0x00f9
                           0000E9   262 _CL	=	0x00e9
                           0000D9   263 _CMOD	=	0x00d9
                           0000A8   264 _IEN0	=	0x00a8
                           0000B1   265 _IEN1	=	0x00b1
                           0000B8   266 _IPL0	=	0x00b8
                           0000B7   267 _IPH0	=	0x00b7
                           0000B2   268 _IPL1	=	0x00b2
                           0000B3   269 _IPH1	=	0x00b3
                           0000C0   270 _P4	=	0x00c0
                           0000E8   271 _P5	=	0x00e8
                           0000A6   272 _WDTRST	=	0x00a6
                           0000A7   273 _WDTPRG	=	0x00a7
                           0000A9   274 _SADDR	=	0x00a9
                           0000B9   275 _SADEN	=	0x00b9
                           0000C3   276 _SPCON	=	0x00c3
                           0000C4   277 _SPSTA	=	0x00c4
                           0000C5   278 _SPDAT	=	0x00c5
                           0000C9   279 _T2MOD	=	0x00c9
                           00009B   280 _BDRCON	=	0x009b
                           00009A   281 _BRL	=	0x009a
                           00009C   282 _KBLS	=	0x009c
                           00009D   283 _KBE	=	0x009d
                           00009E   284 _KBF	=	0x009e
                           0000D2   285 _EECON	=	0x00d2
                           0000E0   286 _ACC	=	0x00e0
                           0000F0   287 _B	=	0x00f0
                           000083   288 _DPH	=	0x0083
                           000083   289 _DP0H	=	0x0083
                           000082   290 _DPL	=	0x0082
                           000082   291 _DP0L	=	0x0082
                           0000A8   292 _IE	=	0x00a8
                           0000B8   293 _IP	=	0x00b8
                           000080   294 _P0	=	0x0080
                           000090   295 _P1	=	0x0090
                           0000A0   296 _P2	=	0x00a0
                           0000B0   297 _P3	=	0x00b0
                           000087   298 _PCON	=	0x0087
                           0000D0   299 _PSW	=	0x00d0
                           000099   300 _SBUF	=	0x0099
                           000099   301 _SBUF0	=	0x0099
                           000098   302 _SCON	=	0x0098
                           000081   303 _SP	=	0x0081
                           000088   304 _TCON	=	0x0088
                           00008C   305 _TH0	=	0x008c
                           00008D   306 _TH1	=	0x008d
                           00008A   307 _TL0	=	0x008a
                           00008B   308 _TL1	=	0x008b
                           000089   309 _TMOD	=	0x0089
                                    310 ;--------------------------------------------------------
                                    311 ; special function bits
                                    312 ;--------------------------------------------------------
                                    313 	.area RSEG    (ABS,DATA)
      000000                        314 	.org 0x0000
                           0000AD   315 _ET2	=	0x00ad
                           0000BD   316 _PT2	=	0x00bd
                           0000C8   317 _T2CON_0	=	0x00c8
                           0000C9   318 _T2CON_1	=	0x00c9
                           0000CA   319 _T2CON_2	=	0x00ca
                           0000CB   320 _T2CON_3	=	0x00cb
                           0000CC   321 _T2CON_4	=	0x00cc
                           0000CD   322 _T2CON_5	=	0x00cd
                           0000CE   323 _T2CON_6	=	0x00ce
                           0000CF   324 _T2CON_7	=	0x00cf
                           0000C8   325 _CP_RL2	=	0x00c8
                           0000C9   326 _C_T2	=	0x00c9
                           0000CA   327 _TR2	=	0x00ca
                           0000CB   328 _EXEN2	=	0x00cb
                           0000CC   329 _TCLK	=	0x00cc
                           0000CD   330 _RCLK	=	0x00cd
                           0000CE   331 _EXF2	=	0x00ce
                           0000CF   332 _TF2	=	0x00cf
                           0000DF   333 _CF	=	0x00df
                           0000DE   334 _CR	=	0x00de
                           0000DC   335 _CCF4	=	0x00dc
                           0000DB   336 _CCF3	=	0x00db
                           0000DA   337 _CCF2	=	0x00da
                           0000D9   338 _CCF1	=	0x00d9
                           0000D8   339 _CCF0	=	0x00d8
                           0000AE   340 _EC	=	0x00ae
                           0000BE   341 _PPCL	=	0x00be
                           0000BD   342 _PT2L	=	0x00bd
                           0000BC   343 _PSL	=	0x00bc
                           0000BB   344 _PT1L	=	0x00bb
                           0000BA   345 _PX1L	=	0x00ba
                           0000B9   346 _PT0L	=	0x00b9
                           0000B8   347 _PX0L	=	0x00b8
                           0000C0   348 _P4_0	=	0x00c0
                           0000C1   349 _P4_1	=	0x00c1
                           0000C2   350 _P4_2	=	0x00c2
                           0000C3   351 _P4_3	=	0x00c3
                           0000C4   352 _P4_4	=	0x00c4
                           0000C5   353 _P4_5	=	0x00c5
                           0000C6   354 _P4_6	=	0x00c6
                           0000C7   355 _P4_7	=	0x00c7
                           0000E8   356 _P5_0	=	0x00e8
                           0000E9   357 _P5_1	=	0x00e9
                           0000EA   358 _P5_2	=	0x00ea
                           0000EB   359 _P5_3	=	0x00eb
                           0000EC   360 _P5_4	=	0x00ec
                           0000ED   361 _P5_5	=	0x00ed
                           0000EE   362 _P5_6	=	0x00ee
                           0000EF   363 _P5_7	=	0x00ef
                           0000F0   364 _BREG_F0	=	0x00f0
                           0000F1   365 _BREG_F1	=	0x00f1
                           0000F2   366 _BREG_F2	=	0x00f2
                           0000F3   367 _BREG_F3	=	0x00f3
                           0000F4   368 _BREG_F4	=	0x00f4
                           0000F5   369 _BREG_F5	=	0x00f5
                           0000F6   370 _BREG_F6	=	0x00f6
                           0000F7   371 _BREG_F7	=	0x00f7
                           0000A8   372 _EX0	=	0x00a8
                           0000A9   373 _ET0	=	0x00a9
                           0000AA   374 _EX1	=	0x00aa
                           0000AB   375 _ET1	=	0x00ab
                           0000AC   376 _ES	=	0x00ac
                           0000AF   377 _EA	=	0x00af
                           0000B8   378 _PX0	=	0x00b8
                           0000B9   379 _PT0	=	0x00b9
                           0000BA   380 _PX1	=	0x00ba
                           0000BB   381 _PT1	=	0x00bb
                           0000BC   382 _PS	=	0x00bc
                           000080   383 _P0_0	=	0x0080
                           000081   384 _P0_1	=	0x0081
                           000082   385 _P0_2	=	0x0082
                           000083   386 _P0_3	=	0x0083
                           000084   387 _P0_4	=	0x0084
                           000085   388 _P0_5	=	0x0085
                           000086   389 _P0_6	=	0x0086
                           000087   390 _P0_7	=	0x0087
                           000090   391 _P1_0	=	0x0090
                           000091   392 _P1_1	=	0x0091
                           000092   393 _P1_2	=	0x0092
                           000093   394 _P1_3	=	0x0093
                           000094   395 _P1_4	=	0x0094
                           000095   396 _P1_5	=	0x0095
                           000096   397 _P1_6	=	0x0096
                           000097   398 _P1_7	=	0x0097
                           0000A0   399 _P2_0	=	0x00a0
                           0000A1   400 _P2_1	=	0x00a1
                           0000A2   401 _P2_2	=	0x00a2
                           0000A3   402 _P2_3	=	0x00a3
                           0000A4   403 _P2_4	=	0x00a4
                           0000A5   404 _P2_5	=	0x00a5
                           0000A6   405 _P2_6	=	0x00a6
                           0000A7   406 _P2_7	=	0x00a7
                           0000B0   407 _P3_0	=	0x00b0
                           0000B1   408 _P3_1	=	0x00b1
                           0000B2   409 _P3_2	=	0x00b2
                           0000B3   410 _P3_3	=	0x00b3
                           0000B4   411 _P3_4	=	0x00b4
                           0000B5   412 _P3_5	=	0x00b5
                           0000B6   413 _P3_6	=	0x00b6
                           0000B7   414 _P3_7	=	0x00b7
                           0000B0   415 _RXD	=	0x00b0
                           0000B0   416 _RXD0	=	0x00b0
                           0000B1   417 _TXD	=	0x00b1
                           0000B1   418 _TXD0	=	0x00b1
                           0000B2   419 _INT0	=	0x00b2
                           0000B3   420 _INT1	=	0x00b3
                           0000B4   421 _T0	=	0x00b4
                           0000B5   422 _T1	=	0x00b5
                           0000B6   423 _WR	=	0x00b6
                           0000B7   424 _RD	=	0x00b7
                           0000D0   425 _P	=	0x00d0
                           0000D1   426 _F1	=	0x00d1
                           0000D2   427 _OV	=	0x00d2
                           0000D3   428 _RS0	=	0x00d3
                           0000D4   429 _RS1	=	0x00d4
                           0000D5   430 _F0	=	0x00d5
                           0000D6   431 _AC	=	0x00d6
                           0000D7   432 _CY	=	0x00d7
                           000098   433 _RI	=	0x0098
                           000099   434 _TI	=	0x0099
                           00009A   435 _RB8	=	0x009a
                           00009B   436 _TB8	=	0x009b
                           00009C   437 _REN	=	0x009c
                           00009D   438 _SM2	=	0x009d
                           00009E   439 _SM1	=	0x009e
                           00009F   440 _SM0	=	0x009f
                           000088   441 _IT0	=	0x0088
                           000089   442 _IE0	=	0x0089
                           00008A   443 _IT1	=	0x008a
                           00008B   444 _IE1	=	0x008b
                           00008C   445 _TR0	=	0x008c
                           00008D   446 _TF0	=	0x008d
                           00008E   447 _TR1	=	0x008e
                           00008F   448 _TF1	=	0x008f
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable register banks
                                    451 ;--------------------------------------------------------
                                    452 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        453 	.ds 8
                                    454 ;--------------------------------------------------------
                                    455 ; internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area DSEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable items in internal ram
                                    460 ;--------------------------------------------------------
                                    461 ;--------------------------------------------------------
                                    462 ; indirectly addressable internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area ISEG    (DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area IABS    (ABS,DATA)
                                    469 	.area IABS    (ABS,DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; bit data
                                    472 ;--------------------------------------------------------
                                    473 	.area BSEG    (BIT)
                                    474 ;--------------------------------------------------------
                                    475 ; paged external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area PSEG    (PAG,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; uninitialized external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XSEG    (XDATA)
      000100                        482 _SPI_send_data_10000_54:
      000100                        483 	.ds 1
      000101                        484 _SPI_read_receivedData_10000_58:
      000101                        485 	.ds 1
      000102                        486 _SPI_send_BB_data_10000_69:
      000102                        487 	.ds 1
      000103                        488 _delay_us_us_10000_75:
      000103                        489 	.ds 2
                                    490 ;--------------------------------------------------------
                                    491 ; absolute external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area XABS    (ABS,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; initialized external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XISEG   (XDATA)
                                    498 	.area HOME    (CODE)
                                    499 	.area GSINIT0 (CODE)
                                    500 	.area GSINIT1 (CODE)
                                    501 	.area GSINIT2 (CODE)
                                    502 	.area GSINIT3 (CODE)
                                    503 	.area GSINIT4 (CODE)
                                    504 	.area GSINIT5 (CODE)
                                    505 	.area GSINIT  (CODE)
                                    506 	.area GSFINAL (CODE)
                                    507 	.area CSEG    (CODE)
                                    508 ;--------------------------------------------------------
                                    509 ; global & static initialisations
                                    510 ;--------------------------------------------------------
                                    511 	.area HOME    (CODE)
                                    512 	.area GSINIT  (CODE)
                                    513 	.area GSFINAL (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 ;--------------------------------------------------------
                                    516 ; Home
                                    517 ;--------------------------------------------------------
                                    518 	.area HOME    (CODE)
                                    519 	.area HOME    (CODE)
                                    520 ;--------------------------------------------------------
                                    521 ; code
                                    522 ;--------------------------------------------------------
                                    523 	.area CSEG    (CODE)
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'configure_SPI'
                                    526 ;------------------------------------------------------------
                                    527 ;	SPI.c:7: void configure_SPI(void)
                                    528 ;	-----------------------------------------
                                    529 ;	 function configure_SPI
                                    530 ;	-----------------------------------------
      00210E                        531 _configure_SPI:
                           000007   532 	ar7 = 0x07
                           000006   533 	ar6 = 0x06
                           000005   534 	ar5 = 0x05
                           000004   535 	ar4 = 0x04
                           000003   536 	ar3 = 0x03
                           000002   537 	ar2 = 0x02
                           000001   538 	ar1 = 0x01
                           000000   539 	ar0 = 0x00
                                    540 ;	SPI.c:9: CKCON0 |= 0x05;
      00210E 43 8F 05         [24]  541 	orl	_CKCON0,#0x05
                                    542 ;	SPI.c:10: SPCON |= 0x10;              //master mode
      002111 43 C3 10         [24]  543 	orl	_SPCON,#0x10
                                    544 ;	SPI.c:11: P1_1=1;                     //CS disable
                                    545 ;	assignBit
      002114 D2 91            [12]  546 	setb	_P1_1
                                    547 ;	SPI.c:12: SPCON |= 0x00;          //Fclk/2
      002116 85 C3 C3         [24]  548 	mov	_SPCON,_SPCON
                                    549 ;	SPI.c:13: SPCON |= 0x20;          //disable SS
      002119 43 C3 20         [24]  550 	orl	_SPCON,#0x20
                                    551 ;	SPI.c:14: SPCON &= ~0x08;         //CPOL = 0
      00211C 53 C3 F7         [24]  552 	anl	_SPCON,#0xf7
                                    553 ;	SPI.c:15: SPCON &= ~0x04;          //CPHA = 0
      00211F 53 C3 FB         [24]  554 	anl	_SPCON,#0xfb
                                    555 ;	SPI.c:17: SPCON |= 0x40;          //Enable SPI
      002122 43 C3 40         [24]  556 	orl	_SPCON,#0x40
                                    557 ;	SPI.c:19: }
      002125 22               [24]  558 	ret
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'SPI_send'
                                    561 ;------------------------------------------------------------
                                    562 ;data                      Allocated with name '_SPI_send_data_10000_54'
                                    563 ;------------------------------------------------------------
                                    564 ;	SPI.c:22: void SPI_send(uint8_t data)
                                    565 ;	-----------------------------------------
                                    566 ;	 function SPI_send
                                    567 ;	-----------------------------------------
      002126                        568 _SPI_send:
      002126 E5 82            [12]  569 	mov	a,dpl
      002128 90 01 00         [24]  570 	mov	dptr,#_SPI_send_data_10000_54
      00212B F0               [24]  571 	movx	@dptr,a
                                    572 ;	SPI.c:25: P1_1 = 0;              // Pull CS (SS) low to activate the DAC
                                    573 ;	assignBit
      00212C C2 91            [12]  574 	clr	_P1_1
                                    575 ;	SPI.c:27: SPDAT = data;           // Config + MSB of data
      00212E 90 01 00         [24]  576 	mov	dptr,#_SPI_send_data_10000_54
      002131 E0               [24]  577 	movx	a,@dptr
      002132 FF               [12]  578 	mov	r7,a
      002133 8F C5            [24]  579 	mov	_SPDAT,r7
                                    580 ;	SPI.c:28: printf("Sending data: %x\n\r", data);
      002135 7E 00            [12]  581 	mov	r6,#0x00
      002137 C0 07            [24]  582 	push	ar7
      002139 C0 06            [24]  583 	push	ar6
      00213B 74 4A            [12]  584 	mov	a,#___str_0
      00213D C0 E0            [24]  585 	push	acc
      00213F 74 2E            [12]  586 	mov	a,#(___str_0 >> 8)
      002141 C0 E0            [24]  587 	push	acc
      002143 74 80            [12]  588 	mov	a,#0x80
      002145 C0 E0            [24]  589 	push	acc
      002147 12 23 E1         [24]  590 	lcall	_printf
      00214A E5 81            [12]  591 	mov	a,sp
      00214C 24 FB            [12]  592 	add	a,#0xfb
      00214E F5 81            [12]  593 	mov	sp,a
                                    594 ;	SPI.c:29: while (!(SPSTA & 0x80))
      002150                        595 00101$:
      002150 E5 C4            [12]  596 	mov	a,_SPSTA
      002152 30 E7 FB         [24]  597 	jnb	acc.7,00101$
                                    598 ;	SPI.c:42: delay_us(5);
      002155 90 00 05         [24]  599 	mov	dptr,#0x0005
      002158 12 22 BF         [24]  600 	lcall	_delay_us
                                    601 ;	SPI.c:44: P1_1 = 1;
                                    602 ;	assignBit
      00215B D2 91            [12]  603 	setb	_P1_1
                                    604 ;	SPI.c:45: }
      00215D 22               [24]  605 	ret
                                    606 ;------------------------------------------------------------
                                    607 ;Allocation info for local variables in function 'SPI_read'
                                    608 ;------------------------------------------------------------
                                    609 ;receivedData              Allocated with name '_SPI_read_receivedData_10000_58'
                                    610 ;------------------------------------------------------------
                                    611 ;	SPI.c:47: uint8_t SPI_read(void)
                                    612 ;	-----------------------------------------
                                    613 ;	 function SPI_read
                                    614 ;	-----------------------------------------
      00215E                        615 _SPI_read:
                                    616 ;	SPI.c:51: P1_1 = 0;              // Pull CS (SS) low to activate the slave device
                                    617 ;	assignBit
      00215E C2 91            [12]  618 	clr	_P1_1
                                    619 ;	SPI.c:53: SPDAT = 0x3F;          // Send a dummy byte to generate clock pulses
      002160 75 C5 3F         [24]  620 	mov	_SPDAT,#0x3f
                                    621 ;	SPI.c:54: while (!(SPSTA & 0x80))
      002163                        622 00101$:
      002163 E5 C4            [12]  623 	mov	a,_SPSTA
      002165 30 E7 FB         [24]  624 	jnb	acc.7,00101$
                                    625 ;	SPI.c:59: receivedData = SPDAT;  // Read the data received from the slave
      002168 90 01 01         [24]  626 	mov	dptr,#_SPI_read_receivedData_10000_58
      00216B E5 C5            [12]  627 	mov	a,_SPDAT
      00216D F0               [24]  628 	movx	@dptr,a
                                    629 ;	SPI.c:60: printf("Received data: %x\n\r", receivedData);
      00216E E0               [24]  630 	movx	a,@dptr
      00216F FF               [12]  631 	mov	r7,a
      002170 FD               [12]  632 	mov	r5,a
      002171 7E 00            [12]  633 	mov	r6,#0x00
      002173 C0 07            [24]  634 	push	ar7
      002175 C0 05            [24]  635 	push	ar5
      002177 C0 06            [24]  636 	push	ar6
      002179 74 5D            [12]  637 	mov	a,#___str_1
      00217B C0 E0            [24]  638 	push	acc
      00217D 74 2E            [12]  639 	mov	a,#(___str_1 >> 8)
      00217F C0 E0            [24]  640 	push	acc
      002181 74 80            [12]  641 	mov	a,#0x80
      002183 C0 E0            [24]  642 	push	acc
      002185 12 23 E1         [24]  643 	lcall	_printf
      002188 E5 81            [12]  644 	mov	a,sp
      00218A 24 FB            [12]  645 	add	a,#0xfb
      00218C F5 81            [12]  646 	mov	sp,a
                                    647 ;	SPI.c:62: delay_us(5);           // Small delay to ensure stability
      00218E 90 00 05         [24]  648 	mov	dptr,#0x0005
      002191 12 22 BF         [24]  649 	lcall	_delay_us
      002194 D0 07            [24]  650 	pop	ar7
                                    651 ;	SPI.c:63: P1_1 = 1;              // Pull CS (SS) high to deactivate the slave device
                                    652 ;	assignBit
      002196 D2 91            [12]  653 	setb	_P1_1
                                    654 ;	SPI.c:65: return receivedData;   // Return the received data
      002198 8F 82            [24]  655 	mov	dpl, r7
                                    656 ;	SPI.c:66: }
      00219A 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'poll_MISTAT_BUSY'
                                    660 ;------------------------------------------------------------
                                    661 ;	SPI.c:68: void poll_MISTAT_BUSY(void)
                                    662 ;	-----------------------------------------
                                    663 ;	 function poll_MISTAT_BUSY
                                    664 ;	-----------------------------------------
      00219B                        665 _poll_MISTAT_BUSY:
                                    666 ;	SPI.c:70: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);                 //ECON1
      00219B 75 82 5F         [24]  667 	mov	dpl, #0x5f
      00219E 12 21 26         [24]  668 	lcall	_SPI_send
                                    669 ;	SPI.c:71: SPI_send(ENC_REGISTER_BANK_3);
      0021A1 75 82 03         [24]  670 	mov	dpl, #0x03
      0021A4 12 21 26         [24]  671 	lcall	_SPI_send
                                    672 ;	SPI.c:72: SPI_send(ENC_READ_CONTROL_REG_OPCODE | ENC_MISTAT);
      0021A7 75 82 0A         [24]  673 	mov	dpl, #0x0a
      0021AA 12 21 26         [24]  674 	lcall	_SPI_send
                                    675 ;	SPI.c:73: SPI_read();                                                 //Dummy byte
      0021AD 12 21 5E         [24]  676 	lcall	_SPI_read
                                    677 ;	SPI.c:74: while((SPI_read() & 0x01) != 0)
      0021B0                        678 00101$:
      0021B0 12 21 5E         [24]  679 	lcall	_SPI_read
      0021B3 E5 82            [12]  680 	mov	a, dpl
      0021B5 30 E0 17         [24]  681 	jnb	acc.0,00104$
                                    682 ;	SPI.c:76: printf("Busy wait!!");
      0021B8 74 71            [12]  683 	mov	a,#___str_2
      0021BA C0 E0            [24]  684 	push	acc
      0021BC 74 2E            [12]  685 	mov	a,#(___str_2 >> 8)
      0021BE C0 E0            [24]  686 	push	acc
      0021C0 74 80            [12]  687 	mov	a,#0x80
      0021C2 C0 E0            [24]  688 	push	acc
      0021C4 12 23 E1         [24]  689 	lcall	_printf
      0021C7 15 81            [12]  690 	dec	sp
      0021C9 15 81            [12]  691 	dec	sp
      0021CB 15 81            [12]  692 	dec	sp
      0021CD 80 E1            [24]  693 	sjmp	00101$
      0021CF                        694 00104$:
                                    695 ;	SPI.c:78: }
      0021CF 22               [24]  696 	ret
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'test_read_ctrl'
                                    699 ;------------------------------------------------------------
                                    700 ;received_byte             Allocated with name '_test_read_ctrl_received_byte_10000_64'
                                    701 ;------------------------------------------------------------
                                    702 ;	SPI.c:80: void test_read_ctrl(void)
                                    703 ;	-----------------------------------------
                                    704 ;	 function test_read_ctrl
                                    705 ;	-----------------------------------------
      0021D0                        706 _test_read_ctrl:
                                    707 ;	SPI.c:83: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);
      0021D0 75 82 5F         [24]  708 	mov	dpl, #0x5f
      0021D3 12 21 26         [24]  709 	lcall	_SPI_send
                                    710 ;	SPI.c:84: SPI_send(ENC_REGISTER_BANK_2);
      0021D6 75 82 02         [24]  711 	mov	dpl, #0x02
      0021D9 12 21 26         [24]  712 	lcall	_SPI_send
                                    713 ;	SPI.c:85: SPI_send(ENC_READ_CONTROL_REG_OPCODE | ENC_ECON1);
      0021DC 75 82 1F         [24]  714 	mov	dpl, #0x1f
      0021DF 12 21 26         [24]  715 	lcall	_SPI_send
                                    716 ;	SPI.c:86: SPI_read();  //Dummy byte
      0021E2 12 21 5E         [24]  717 	lcall	_SPI_read
                                    718 ;	SPI.c:87: received_byte = SPI_read();
      0021E5 12 21 5E         [24]  719 	lcall	_SPI_read
      0021E8 AF 82            [24]  720 	mov	r7, dpl
                                    721 ;	SPI.c:88: printf("Received test read ctrl word: %x\n\r", received_byte);
      0021EA 7E 00            [12]  722 	mov	r6,#0x00
      0021EC C0 07            [24]  723 	push	ar7
      0021EE C0 06            [24]  724 	push	ar6
      0021F0 74 7D            [12]  725 	mov	a,#___str_3
      0021F2 C0 E0            [24]  726 	push	acc
      0021F4 74 2E            [12]  727 	mov	a,#(___str_3 >> 8)
      0021F6 C0 E0            [24]  728 	push	acc
      0021F8 74 80            [12]  729 	mov	a,#0x80
      0021FA C0 E0            [24]  730 	push	acc
      0021FC 12 23 E1         [24]  731 	lcall	_printf
      0021FF E5 81            [12]  732 	mov	a,sp
      002201 24 FB            [12]  733 	add	a,#0xfb
      002203 F5 81            [12]  734 	mov	sp,a
                                    735 ;	SPI.c:89: }
      002205 22               [24]  736 	ret
                                    737 ;------------------------------------------------------------
                                    738 ;Allocation info for local variables in function 'ENC_PHY_read'
                                    739 ;------------------------------------------------------------
                                    740 ;PHY_reg                   Allocated with name '_ENC_PHY_read_PHY_reg_10000_65'
                                    741 ;received_LSB              Allocated with name '_ENC_PHY_read_received_LSB_10000_66'
                                    742 ;received_MSB              Allocated with name '_ENC_PHY_read_received_MSB_10000_66'
                                    743 ;received_word             Allocated with name '_ENC_PHY_read_received_word_10000_66'
                                    744 ;------------------------------------------------------------
                                    745 ;	SPI.c:92: uint16_t ENC_PHY_read(uint8_t PHY_reg)
                                    746 ;	-----------------------------------------
                                    747 ;	 function ENC_PHY_read
                                    748 ;	-----------------------------------------
      002206                        749 _ENC_PHY_read:
                                    750 ;	SPI.c:96: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);                 //ECON1
      002206 75 82 5F         [24]  751 	mov	dpl, #0x5f
      002209 12 21 26         [24]  752 	lcall	_SPI_send
                                    753 ;	SPI.c:97: SPI_send(ENC_REGISTER_BANK_2);
      00220C 75 82 02         [24]  754 	mov	dpl, #0x02
      00220F 12 21 26         [24]  755 	lcall	_SPI_send
                                    756 ;	SPI.c:98: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIREGADR);
      002212 75 82 54         [24]  757 	mov	dpl, #0x54
      002215 12 21 26         [24]  758 	lcall	_SPI_send
                                    759 ;	SPI.c:99: SPI_send(ENC_PHLCON);                                   //Write the address of the PHY register in the MIREGADR register
      002218 75 82 14         [24]  760 	mov	dpl, #0x14
      00221B 12 21 26         [24]  761 	lcall	_SPI_send
                                    762 ;	SPI.c:101: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MICMD);
      00221E 75 82 52         [24]  763 	mov	dpl, #0x52
      002221 12 21 26         [24]  764 	lcall	_SPI_send
                                    765 ;	SPI.c:102: SPI_send(SET);
      002224 75 82 01         [24]  766 	mov	dpl, #0x01
      002227 12 21 26         [24]  767 	lcall	_SPI_send
                                    768 ;	SPI.c:104: poll_MISTAT_BUSY();
      00222A 12 21 9B         [24]  769 	lcall	_poll_MISTAT_BUSY
                                    770 ;	SPI.c:106: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MICMD);
      00222D 75 82 52         [24]  771 	mov	dpl, #0x52
      002230 12 21 26         [24]  772 	lcall	_SPI_send
                                    773 ;	SPI.c:107: SPI_send(CLEAR);
      002233 75 82 00         [24]  774 	mov	dpl, #0x00
      002236 12 21 26         [24]  775 	lcall	_SPI_send
                                    776 ;	SPI.c:109: SPI_send(ENC_READ_CONTROL_REG_OPCODE | ENC_MIRDL);
      002239 75 82 18         [24]  777 	mov	dpl, #0x18
      00223C 12 21 26         [24]  778 	lcall	_SPI_send
                                    779 ;	SPI.c:110: SPI_read();  //Dummy byte
      00223F 12 21 5E         [24]  780 	lcall	_SPI_read
                                    781 ;	SPI.c:111: received_LSB = SPI_read();
      002242 12 21 5E         [24]  782 	lcall	_SPI_read
      002245 AF 82            [24]  783 	mov	r7, dpl
                                    784 ;	SPI.c:113: SPI_send(ENC_READ_CONTROL_REG_OPCODE | ENC_MIRDH);
      002247 75 82 19         [24]  785 	mov	dpl, #0x19
      00224A C0 07            [24]  786 	push	ar7
      00224C 12 21 26         [24]  787 	lcall	_SPI_send
                                    788 ;	SPI.c:114: SPI_read();  //Dummy byte
      00224F 12 21 5E         [24]  789 	lcall	_SPI_read
                                    790 ;	SPI.c:115: received_MSB = SPI_read();
      002252 12 21 5E         [24]  791 	lcall	_SPI_read
      002255 AE 82            [24]  792 	mov	r6, dpl
      002257 D0 07            [24]  793 	pop	ar7
                                    794 ;	SPI.c:117: received_word = (received_MSB << 8) | received_LSB;
      002259 8E 05            [24]  795 	mov	ar5,r6
      00225B E4               [12]  796 	clr	a
      00225C FE               [12]  797 	mov	r6,a
      00225D FC               [12]  798 	mov	r4,a
      00225E EF               [12]  799 	mov	a,r7
      00225F 42 06            [12]  800 	orl	ar6,a
      002261 EC               [12]  801 	mov	a,r4
      002262 42 05            [12]  802 	orl	ar5,a
                                    803 ;	SPI.c:118: return received_word;
      002264 8E 82            [24]  804 	mov	dpl, r6
      002266 8D 83            [24]  805 	mov	dph, r5
                                    806 ;	SPI.c:120: }
      002268 22               [24]  807 	ret
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'SPI_BB_init'
                                    810 ;------------------------------------------------------------
                                    811 ;	SPI.c:122: void SPI_BB_init(void)
                                    812 ;	-----------------------------------------
                                    813 ;	 function SPI_BB_init
                                    814 ;	-----------------------------------------
      002269                        815 _SPI_BB_init:
                                    816 ;	SPI.c:124: SPCON = 0;
      002269 75 C3 00         [24]  817 	mov	_SPCON,#0x00
                                    818 ;	SPI.c:125: SPI_DATA = 1;
                                    819 ;	assignBit
      00226C D2 97            [12]  820 	setb	_P1_7
                                    821 ;	SPI.c:126: SPI_CLOCK = 0;
                                    822 ;	assignBit
      00226E C2 96            [12]  823 	clr	_P1_6
                                    824 ;	SPI.c:127: SPI_CHIP_SELECT = 1;
                                    825 ;	assignBit
      002270 D2 91            [12]  826 	setb	_P1_1
                                    827 ;	SPI.c:128: }
      002272 22               [24]  828 	ret
                                    829 ;------------------------------------------------------------
                                    830 ;Allocation info for local variables in function 'SPI_send_BB'
                                    831 ;------------------------------------------------------------
                                    832 ;data                      Allocated with name '_SPI_send_BB_data_10000_69'
                                    833 ;i                         Allocated with name '_SPI_send_BB_i_20000_71'
                                    834 ;------------------------------------------------------------
                                    835 ;	SPI.c:130: void SPI_send_BB(uint8_t data)
                                    836 ;	-----------------------------------------
                                    837 ;	 function SPI_send_BB
                                    838 ;	-----------------------------------------
      002273                        839 _SPI_send_BB:
      002273 E5 82            [12]  840 	mov	a,dpl
      002275 90 01 02         [24]  841 	mov	dptr,#_SPI_send_BB_data_10000_69
      002278 F0               [24]  842 	movx	@dptr,a
                                    843 ;	SPI.c:133: printf("Sending BB data: %x\n\r", data);
      002279 E0               [24]  844 	movx	a,@dptr
      00227A FF               [12]  845 	mov	r7,a
      00227B 7E 00            [12]  846 	mov	r6,#0x00
      00227D C0 07            [24]  847 	push	ar7
      00227F C0 06            [24]  848 	push	ar6
      002281 74 A0            [12]  849 	mov	a,#___str_4
      002283 C0 E0            [24]  850 	push	acc
      002285 74 2E            [12]  851 	mov	a,#(___str_4 >> 8)
      002287 C0 E0            [24]  852 	push	acc
      002289 74 80            [12]  853 	mov	a,#0x80
      00228B C0 E0            [24]  854 	push	acc
      00228D 12 23 E1         [24]  855 	lcall	_printf
      002290 E5 81            [12]  856 	mov	a,sp
      002292 24 FB            [12]  857 	add	a,#0xfb
      002294 F5 81            [12]  858 	mov	sp,a
                                    859 ;	SPI.c:134: SPI_CHIP_SELECT = 0;
                                    860 ;	assignBit
      002296 C2 91            [12]  861 	clr	_P1_1
                                    862 ;	SPI.c:135: for(int i = 0; i < 8; i++)
      002298 7F 00            [12]  863 	mov	r7,#0x00
      00229A                        864 00106$:
      00229A BF 08 00         [24]  865 	cjne	r7,#0x08,00129$
      00229D                        866 00129$:
      00229D 50 1D            [24]  867 	jnc	00104$
                                    868 ;	SPI.c:138: if(data & 0x80)
      00229F 90 01 02         [24]  869 	mov	dptr,#_SPI_send_BB_data_10000_69
      0022A2 E0               [24]  870 	movx	a,@dptr
      0022A3 30 E7 04         [24]  871 	jnb	acc.7,00102$
                                    872 ;	SPI.c:140: SPI_DATA = 1;
                                    873 ;	assignBit
      0022A6 D2 97            [12]  874 	setb	_P1_7
      0022A8 80 02            [24]  875 	sjmp	00103$
      0022AA                        876 00102$:
                                    877 ;	SPI.c:144: SPI_DATA = 0;
                                    878 ;	assignBit
      0022AA C2 97            [12]  879 	clr	_P1_7
      0022AC                        880 00103$:
                                    881 ;	SPI.c:146: SPI_CLOCK = 1;
                                    882 ;	assignBit
      0022AC D2 96            [12]  883 	setb	_P1_6
                                    884 ;	SPI.c:148: data = data << 1;
      0022AE 90 01 02         [24]  885 	mov	dptr,#_SPI_send_BB_data_10000_69
      0022B1 E0               [24]  886 	movx	a,@dptr
      0022B2 25 E0            [12]  887 	add	a,acc
      0022B4 F0               [24]  888 	movx	@dptr,a
                                    889 ;	SPI.c:149: SPI_CLOCK = 0;
                                    890 ;	assignBit
      0022B5 C2 96            [12]  891 	clr	_P1_6
                                    892 ;	SPI.c:150: SPI_DATA = 0;
                                    893 ;	assignBit
      0022B7 C2 97            [12]  894 	clr	_P1_7
                                    895 ;	SPI.c:135: for(int i = 0; i < 8; i++)
      0022B9 0F               [12]  896 	inc	r7
      0022BA 80 DE            [24]  897 	sjmp	00106$
      0022BC                        898 00104$:
                                    899 ;	SPI.c:153: SPI_CHIP_SELECT = 1;
                                    900 ;	assignBit
      0022BC D2 91            [12]  901 	setb	_P1_1
                                    902 ;	SPI.c:154: }
      0022BE 22               [24]  903 	ret
                                    904 ;------------------------------------------------------------
                                    905 ;Allocation info for local variables in function 'delay_us'
                                    906 ;------------------------------------------------------------
                                    907 ;us                        Allocated with name '_delay_us_us_10000_75'
                                    908 ;------------------------------------------------------------
                                    909 ;	SPI.c:156: void delay_us(uint16_t us)
                                    910 ;	-----------------------------------------
                                    911 ;	 function delay_us
                                    912 ;	-----------------------------------------
      0022BF                        913 _delay_us:
      0022BF AF 83            [24]  914 	mov	r7,dph
      0022C1 E5 82            [12]  915 	mov	a,dpl
      0022C3 90 01 03         [24]  916 	mov	dptr,#_delay_us_us_10000_75
      0022C6 F0               [24]  917 	movx	@dptr,a
      0022C7 EF               [12]  918 	mov	a,r7
      0022C8 A3               [24]  919 	inc	dptr
      0022C9 F0               [24]  920 	movx	@dptr,a
                                    921 ;	SPI.c:158: while (us--)
      0022CA 90 01 03         [24]  922 	mov	dptr,#_delay_us_us_10000_75
      0022CD E0               [24]  923 	movx	a,@dptr
      0022CE FE               [12]  924 	mov	r6,a
      0022CF A3               [24]  925 	inc	dptr
      0022D0 E0               [24]  926 	movx	a,@dptr
      0022D1 FF               [12]  927 	mov	r7,a
      0022D2                        928 00101$:
      0022D2 8E 04            [24]  929 	mov	ar4,r6
      0022D4 8F 05            [24]  930 	mov	ar5,r7
      0022D6 1E               [12]  931 	dec	r6
      0022D7 BE FF 01         [24]  932 	cjne	r6,#0xff,00118$
      0022DA 1F               [12]  933 	dec	r7
      0022DB                        934 00118$:
      0022DB 90 01 03         [24]  935 	mov	dptr,#_delay_us_us_10000_75
      0022DE EE               [12]  936 	mov	a,r6
      0022DF F0               [24]  937 	movx	@dptr,a
      0022E0 EF               [12]  938 	mov	a,r7
      0022E1 A3               [24]  939 	inc	dptr
      0022E2 F0               [24]  940 	movx	@dptr,a
      0022E3 EC               [12]  941 	mov	a,r4
      0022E4 4D               [12]  942 	orl	a,r5
      0022E5 70 EB            [24]  943 	jnz	00101$
      0022E7 90 01 03         [24]  944 	mov	dptr,#_delay_us_us_10000_75
      0022EA EE               [12]  945 	mov	a,r6
      0022EB F0               [24]  946 	movx	@dptr,a
      0022EC EF               [12]  947 	mov	a,r7
      0022ED A3               [24]  948 	inc	dptr
      0022EE F0               [24]  949 	movx	@dptr,a
                                    950 ;	SPI.c:161: }
      0022EF 22               [24]  951 	ret
                                    952 	.area CSEG    (CODE)
                                    953 	.area CONST   (CODE)
                                    954 	.area CONST   (CODE)
      002E4A                        955 ___str_0:
      002E4A 53 65 6E 64 69 6E 67   956 	.ascii "Sending data: %x"
             20 64 61 74 61 3A 20
             25 78
      002E5A 0A                     957 	.db 0x0a
      002E5B 0D                     958 	.db 0x0d
      002E5C 00                     959 	.db 0x00
                                    960 	.area CSEG    (CODE)
                                    961 	.area CONST   (CODE)
      002E5D                        962 ___str_1:
      002E5D 52 65 63 65 69 76 65   963 	.ascii "Received data: %x"
             64 20 64 61 74 61 3A
             20 25 78
      002E6E 0A                     964 	.db 0x0a
      002E6F 0D                     965 	.db 0x0d
      002E70 00                     966 	.db 0x00
                                    967 	.area CSEG    (CODE)
                                    968 	.area CONST   (CODE)
      002E71                        969 ___str_2:
      002E71 42 75 73 79 20 77 61   970 	.ascii "Busy wait!!"
             69 74 21 21
      002E7C 00                     971 	.db 0x00
                                    972 	.area CSEG    (CODE)
                                    973 	.area CONST   (CODE)
      002E7D                        974 ___str_3:
      002E7D 52 65 63 65 69 76 65   975 	.ascii "Received test read ctrl word: %x"
             64 20 74 65 73 74 20
             72 65 61 64 20 63 74
             72 6C 20 77 6F 72 64
             3A 20 25 78
      002E9D 0A                     976 	.db 0x0a
      002E9E 0D                     977 	.db 0x0d
      002E9F 00                     978 	.db 0x00
                                    979 	.area CSEG    (CODE)
                                    980 	.area CONST   (CODE)
      002EA0                        981 ___str_4:
      002EA0 53 65 6E 64 69 6E 67   982 	.ascii "Sending BB data: %x"
             20 42 42 20 64 61 74
             61 3A 20 25 78
      002EB3 0A                     983 	.db 0x0a
      002EB4 0D                     984 	.db 0x0d
      002EB5 00                     985 	.db 0x00
                                    986 	.area CSEG    (CODE)
                                    987 	.area XINIT   (CODE)
                                    988 	.area CABS    (ABS,CODE)

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
                                     11 	.globl _printf
                                     12 	.globl _TF1
                                     13 	.globl _TR1
                                     14 	.globl _TF0
                                     15 	.globl _TR0
                                     16 	.globl _IE1
                                     17 	.globl _IT1
                                     18 	.globl _IE0
                                     19 	.globl _IT0
                                     20 	.globl _SM0
                                     21 	.globl _SM1
                                     22 	.globl _SM2
                                     23 	.globl _REN
                                     24 	.globl _TB8
                                     25 	.globl _RB8
                                     26 	.globl _TI
                                     27 	.globl _RI
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _RD
                                     37 	.globl _WR
                                     38 	.globl _T1
                                     39 	.globl _T0
                                     40 	.globl _INT1
                                     41 	.globl _INT0
                                     42 	.globl _TXD0
                                     43 	.globl _TXD
                                     44 	.globl _RXD0
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _P0_7
                                     71 	.globl _P0_6
                                     72 	.globl _P0_5
                                     73 	.globl _P0_4
                                     74 	.globl _P0_3
                                     75 	.globl _P0_2
                                     76 	.globl _P0_1
                                     77 	.globl _P0_0
                                     78 	.globl _PS
                                     79 	.globl _PT1
                                     80 	.globl _PX1
                                     81 	.globl _PT0
                                     82 	.globl _PX0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _BREG_F7
                                     90 	.globl _BREG_F6
                                     91 	.globl _BREG_F5
                                     92 	.globl _BREG_F4
                                     93 	.globl _BREG_F3
                                     94 	.globl _BREG_F2
                                     95 	.globl _BREG_F1
                                     96 	.globl _BREG_F0
                                     97 	.globl _P5_7
                                     98 	.globl _P5_6
                                     99 	.globl _P5_5
                                    100 	.globl _P5_4
                                    101 	.globl _P5_3
                                    102 	.globl _P5_2
                                    103 	.globl _P5_1
                                    104 	.globl _P5_0
                                    105 	.globl _P4_7
                                    106 	.globl _P4_6
                                    107 	.globl _P4_5
                                    108 	.globl _P4_4
                                    109 	.globl _P4_3
                                    110 	.globl _P4_2
                                    111 	.globl _P4_1
                                    112 	.globl _P4_0
                                    113 	.globl _PX0L
                                    114 	.globl _PT0L
                                    115 	.globl _PX1L
                                    116 	.globl _PT1L
                                    117 	.globl _PSL
                                    118 	.globl _PT2L
                                    119 	.globl _PPCL
                                    120 	.globl _EC
                                    121 	.globl _CCF0
                                    122 	.globl _CCF1
                                    123 	.globl _CCF2
                                    124 	.globl _CCF3
                                    125 	.globl _CCF4
                                    126 	.globl _CR
                                    127 	.globl _CF
                                    128 	.globl _TF2
                                    129 	.globl _EXF2
                                    130 	.globl _RCLK
                                    131 	.globl _TCLK
                                    132 	.globl _EXEN2
                                    133 	.globl _TR2
                                    134 	.globl _C_T2
                                    135 	.globl _CP_RL2
                                    136 	.globl _T2CON_7
                                    137 	.globl _T2CON_6
                                    138 	.globl _T2CON_5
                                    139 	.globl _T2CON_4
                                    140 	.globl _T2CON_3
                                    141 	.globl _T2CON_2
                                    142 	.globl _T2CON_1
                                    143 	.globl _T2CON_0
                                    144 	.globl _PT2
                                    145 	.globl _ET2
                                    146 	.globl _TMOD
                                    147 	.globl _TL1
                                    148 	.globl _TL0
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TCON
                                    152 	.globl _SP
                                    153 	.globl _SCON
                                    154 	.globl _SBUF0
                                    155 	.globl _SBUF
                                    156 	.globl _PSW
                                    157 	.globl _PCON
                                    158 	.globl _P3
                                    159 	.globl _P2
                                    160 	.globl _P1
                                    161 	.globl _P0
                                    162 	.globl _IP
                                    163 	.globl _IE
                                    164 	.globl _DP0L
                                    165 	.globl _DPL
                                    166 	.globl _DP0H
                                    167 	.globl _DPH
                                    168 	.globl _B
                                    169 	.globl _ACC
                                    170 	.globl _EECON
                                    171 	.globl _KBF
                                    172 	.globl _KBE
                                    173 	.globl _KBLS
                                    174 	.globl _BRL
                                    175 	.globl _BDRCON
                                    176 	.globl _T2MOD
                                    177 	.globl _SPDAT
                                    178 	.globl _SPSTA
                                    179 	.globl _SPCON
                                    180 	.globl _SADEN
                                    181 	.globl _SADDR
                                    182 	.globl _WDTPRG
                                    183 	.globl _WDTRST
                                    184 	.globl _P5
                                    185 	.globl _P4
                                    186 	.globl _IPH1
                                    187 	.globl _IPL1
                                    188 	.globl _IPH0
                                    189 	.globl _IPL0
                                    190 	.globl _IEN1
                                    191 	.globl _IEN0
                                    192 	.globl _CMOD
                                    193 	.globl _CL
                                    194 	.globl _CH
                                    195 	.globl _CCON
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM1
                                    200 	.globl _CCAPM0
                                    201 	.globl _CCAP4L
                                    202 	.globl _CCAP3L
                                    203 	.globl _CCAP2L
                                    204 	.globl _CCAP1L
                                    205 	.globl _CCAP0L
                                    206 	.globl _CCAP4H
                                    207 	.globl _CCAP3H
                                    208 	.globl _CCAP2H
                                    209 	.globl _CCAP1H
                                    210 	.globl _CCAP0H
                                    211 	.globl _CKCON1
                                    212 	.globl _CKCON0
                                    213 	.globl _CKRL
                                    214 	.globl _AUXR1
                                    215 	.globl _AUXR
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _T2CON
                                    221 	.globl _configure_SPI
                                    222 	.globl _SPI_send
                                    223 	.globl _SPI_ctrl_read
                                    224 	.globl _poll_MISTAT_BUSY
                                    225 	.globl _test_read_ctrl
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
      000111                        482 _SPI_send_data_10000_56:
      000111                        483 	.ds 1
      000112                        484 _SPI_ctrl_read_addr_10000_59:
      000112                        485 	.ds 1
      000113                        486 _SPI_ctrl_read_receivedData_10000_60:
      000113                        487 	.ds 1
      000114                        488 _test_read_ctrl_address_10000_65:
      000114                        489 	.ds 1
      000115                        490 _SPI_send_BB_data_10000_71:
      000115                        491 	.ds 1
      000116                        492 _delay_us_us_10000_77:
      000116                        493 	.ds 2
                                    494 ;--------------------------------------------------------
                                    495 ; absolute external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XABS    (ABS,XDATA)
                                    498 ;--------------------------------------------------------
                                    499 ; initialized external ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area XISEG   (XDATA)
                                    502 	.area HOME    (CODE)
                                    503 	.area GSINIT0 (CODE)
                                    504 	.area GSINIT1 (CODE)
                                    505 	.area GSINIT2 (CODE)
                                    506 	.area GSINIT3 (CODE)
                                    507 	.area GSINIT4 (CODE)
                                    508 	.area GSINIT5 (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 	.area GSFINAL (CODE)
                                    511 	.area CSEG    (CODE)
                                    512 ;--------------------------------------------------------
                                    513 ; global & static initialisations
                                    514 ;--------------------------------------------------------
                                    515 	.area HOME    (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.area GSFINAL (CODE)
                                    518 	.area GSINIT  (CODE)
                                    519 ;--------------------------------------------------------
                                    520 ; Home
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
                                    523 	.area HOME    (CODE)
                                    524 ;--------------------------------------------------------
                                    525 ; code
                                    526 ;--------------------------------------------------------
                                    527 	.area CSEG    (CODE)
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'configure_SPI'
                                    530 ;------------------------------------------------------------
                                    531 ;	SPI.c:14: void configure_SPI(void)
                                    532 ;	-----------------------------------------
                                    533 ;	 function configure_SPI
                                    534 ;	-----------------------------------------
      0023CE                        535 _configure_SPI:
                           000007   536 	ar7 = 0x07
                           000006   537 	ar6 = 0x06
                           000005   538 	ar5 = 0x05
                           000004   539 	ar4 = 0x04
                           000003   540 	ar3 = 0x03
                           000002   541 	ar2 = 0x02
                           000001   542 	ar1 = 0x01
                           000000   543 	ar0 = 0x00
                                    544 ;	SPI.c:27: CS_PIN = 1;
                                    545 ;	assignBit
      0023CE D2 91            [12]  546 	setb	_P1_1
                                    547 ;	SPI.c:28: SPCON = 0x00;
      0023D0 75 C3 00         [24]  548 	mov	_SPCON,#0x00
                                    549 ;	SPI.c:29: SPCON |= SS_DISABLE;
      0023D3 43 C3 20         [24]  550 	orl	_SPCON,#0x20
                                    551 ;	SPI.c:30: SPCON |= MASTER_MODE;
      0023D6 43 C3 10         [24]  552 	orl	_SPCON,#0x10
                                    553 ;	SPI.c:31: SPCON |= SPI_ENABLE;
      0023D9 43 C3 40         [24]  554 	orl	_SPCON,#0x40
                                    555 ;	SPI.c:32: }
      0023DC 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'SPI_send'
                                    559 ;------------------------------------------------------------
                                    560 ;data                      Allocated with name '_SPI_send_data_10000_56'
                                    561 ;------------------------------------------------------------
                                    562 ;	SPI.c:35: void SPI_send(uint8_t data)
                                    563 ;	-----------------------------------------
                                    564 ;	 function SPI_send
                                    565 ;	-----------------------------------------
      0023DD                        566 _SPI_send:
      0023DD E5 82            [12]  567 	mov	a,dpl
      0023DF 90 01 11         [24]  568 	mov	dptr,#_SPI_send_data_10000_56
      0023E2 F0               [24]  569 	movx	@dptr,a
                                    570 ;	SPI.c:40: SPDAT = data;           // Config + MSB of data
      0023E3 E0               [24]  571 	movx	a,@dptr
      0023E4 F5 C5            [12]  572 	mov	_SPDAT,a
                                    573 ;	SPI.c:42: while (!(SPSTA & 0x80))
      0023E6                        574 00101$:
      0023E6 E5 C4            [12]  575 	mov	a,_SPSTA
      0023E8 30 E7 FB         [24]  576 	jnb	acc.7,00101$
                                    577 ;	SPI.c:58: }
      0023EB 22               [24]  578 	ret
                                    579 ;------------------------------------------------------------
                                    580 ;Allocation info for local variables in function 'SPI_ctrl_read'
                                    581 ;------------------------------------------------------------
                                    582 ;addr                      Allocated with name '_SPI_ctrl_read_addr_10000_59'
                                    583 ;receivedData              Allocated with name '_SPI_ctrl_read_receivedData_10000_60'
                                    584 ;------------------------------------------------------------
                                    585 ;	SPI.c:60: uint8_t SPI_ctrl_read(uint8_t addr)
                                    586 ;	-----------------------------------------
                                    587 ;	 function SPI_ctrl_read
                                    588 ;	-----------------------------------------
      0023EC                        589 _SPI_ctrl_read:
      0023EC E5 82            [12]  590 	mov	a,dpl
      0023EE 90 01 12         [24]  591 	mov	dptr,#_SPI_ctrl_read_addr_10000_59
      0023F1 F0               [24]  592 	movx	@dptr,a
                                    593 ;	SPI.c:66: SPDAT = addr;          // Send a dummy byte to generate clock pulses
      0023F2 E0               [24]  594 	movx	a,@dptr
      0023F3 F5 C5            [12]  595 	mov	_SPDAT,a
                                    596 ;	SPI.c:67: while (!(SPSTA & 0x80))
      0023F5                        597 00101$:
      0023F5 E5 C4            [12]  598 	mov	a,_SPSTA
      0023F7 30 E7 FB         [24]  599 	jnb	acc.7,00101$
                                    600 ;	SPI.c:73: receivedData = SPDAT;  // Read the data received from the slave
      0023FA 90 01 13         [24]  601 	mov	dptr,#_SPI_ctrl_read_receivedData_10000_60
      0023FD E5 C5            [12]  602 	mov	a,_SPDAT
      0023FF F0               [24]  603 	movx	@dptr,a
                                    604 ;	SPI.c:79: return receivedData;   // Return the received data
      002400 E0               [24]  605 	movx	a,@dptr
                                    606 ;	SPI.c:80: }
      002401 F5 82            [12]  607 	mov	dpl,a
      002403 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'poll_MISTAT_BUSY'
                                    611 ;------------------------------------------------------------
                                    612 ;	SPI.c:82: void poll_MISTAT_BUSY(void)
                                    613 ;	-----------------------------------------
                                    614 ;	 function poll_MISTAT_BUSY
                                    615 ;	-----------------------------------------
      002404                        616 _poll_MISTAT_BUSY:
                                    617 ;	SPI.c:84: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);                 //ECON1
      002404 75 82 5F         [24]  618 	mov	dpl, #0x5f
      002407 12 23 DD         [24]  619 	lcall	_SPI_send
                                    620 ;	SPI.c:85: SPI_send(ENC_REGISTER_BANK_3);
      00240A 75 82 03         [24]  621 	mov	dpl, #0x03
      00240D 12 23 DD         [24]  622 	lcall	_SPI_send
                                    623 ;	SPI.c:87: SPI_ctrl_read(ENC_MISTAT);                                                 //Dummy byte
      002410 75 82 0A         [24]  624 	mov	dpl, #0x0a
      002413 12 23 EC         [24]  625 	lcall	_SPI_ctrl_read
                                    626 ;	SPI.c:88: while((SPI_ctrl_read(ENC_MISTAT) & 0x01) != 0)
      002416                        627 00101$:
      002416 75 82 0A         [24]  628 	mov	dpl, #0x0a
      002419 12 23 EC         [24]  629 	lcall	_SPI_ctrl_read
      00241C E5 82            [12]  630 	mov	a, dpl
      00241E 30 E0 17         [24]  631 	jnb	acc.0,00104$
                                    632 ;	SPI.c:90: printf("Busy wait!!");
      002421 74 31            [12]  633 	mov	a,#___str_0
      002423 C0 E0            [24]  634 	push	acc
      002425 74 32            [12]  635 	mov	a,#(___str_0 >> 8)
      002427 C0 E0            [24]  636 	push	acc
      002429 74 80            [12]  637 	mov	a,#0x80
      00242B C0 E0            [24]  638 	push	acc
      00242D 12 27 46         [24]  639 	lcall	_printf
      002430 15 81            [12]  640 	dec	sp
      002432 15 81            [12]  641 	dec	sp
      002434 15 81            [12]  642 	dec	sp
      002436 80 DE            [24]  643 	sjmp	00101$
      002438                        644 00104$:
                                    645 ;	SPI.c:92: }
      002438 22               [24]  646 	ret
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'test_read_ctrl'
                                    649 ;------------------------------------------------------------
                                    650 ;address                   Allocated with name '_test_read_ctrl_address_10000_65'
                                    651 ;received_byte             Allocated with name '_test_read_ctrl_received_byte_10000_66'
                                    652 ;------------------------------------------------------------
                                    653 ;	SPI.c:94: void test_read_ctrl(uint8_t address)
                                    654 ;	-----------------------------------------
                                    655 ;	 function test_read_ctrl
                                    656 ;	-----------------------------------------
      002439                        657 _test_read_ctrl:
      002439 E5 82            [12]  658 	mov	a,dpl
      00243B 90 01 14         [24]  659 	mov	dptr,#_test_read_ctrl_address_10000_65
      00243E F0               [24]  660 	movx	@dptr,a
                                    661 ;	SPI.c:104: P1_1 = 0;
                                    662 ;	assignBit
      00243F C2 91            [12]  663 	clr	_P1_1
                                    664 ;	SPI.c:105: delay_us(2);
      002441 90 00 02         [24]  665 	mov	dptr,#0x0002
      002444 12 25 1B         [24]  666 	lcall	_delay_us
                                    667 ;	SPI.c:107: SPI_ctrl_read(address);  //Dummy byte
      002447 90 01 14         [24]  668 	mov	dptr,#_test_read_ctrl_address_10000_65
      00244A E0               [24]  669 	movx	a,@dptr
      00244B FF               [12]  670 	mov	r7,a
      00244C F5 82            [12]  671 	mov	dpl,a
      00244E C0 07            [24]  672 	push	ar7
      002450 12 23 EC         [24]  673 	lcall	_SPI_ctrl_read
      002453 D0 07            [24]  674 	pop	ar7
                                    675 ;	SPI.c:108: received_byte = SPI_ctrl_read(address);
      002455 8F 82            [24]  676 	mov	dpl, r7
      002457 12 23 EC         [24]  677 	lcall	_SPI_ctrl_read
                                    678 ;	SPI.c:109: delay_us(2);
      00245A 90 00 02         [24]  679 	mov	dptr,#0x0002
      00245D 12 25 1B         [24]  680 	lcall	_delay_us
                                    681 ;	SPI.c:110: P1_1 = 1;
                                    682 ;	assignBit
      002460 D2 91            [12]  683 	setb	_P1_1
                                    684 ;	SPI.c:111: delay_us(100);
      002462 90 00 64         [24]  685 	mov	dptr,#0x0064
                                    686 ;	SPI.c:114: }
      002465 02 25 1B         [24]  687 	ljmp	_delay_us
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'ENC_PHY_read'
                                    690 ;------------------------------------------------------------
                                    691 ;PHY_reg                   Allocated with name '_ENC_PHY_read_PHY_reg_10000_67'
                                    692 ;received_LSB              Allocated with name '_ENC_PHY_read_received_LSB_10000_68'
                                    693 ;received_MSB              Allocated with name '_ENC_PHY_read_received_MSB_10000_68'
                                    694 ;received_word             Allocated with name '_ENC_PHY_read_received_word_10000_68'
                                    695 ;------------------------------------------------------------
                                    696 ;	SPI.c:117: uint16_t ENC_PHY_read(uint8_t PHY_reg)
                                    697 ;	-----------------------------------------
                                    698 ;	 function ENC_PHY_read
                                    699 ;	-----------------------------------------
      002468                        700 _ENC_PHY_read:
                                    701 ;	SPI.c:121: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);                 //ECON1
      002468 75 82 5F         [24]  702 	mov	dpl, #0x5f
      00246B 12 23 DD         [24]  703 	lcall	_SPI_send
                                    704 ;	SPI.c:122: SPI_send(ENC_REGISTER_BANK_2);
      00246E 75 82 02         [24]  705 	mov	dpl, #0x02
      002471 12 23 DD         [24]  706 	lcall	_SPI_send
                                    707 ;	SPI.c:123: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIREGADR);
      002474 75 82 54         [24]  708 	mov	dpl, #0x54
      002477 12 23 DD         [24]  709 	lcall	_SPI_send
                                    710 ;	SPI.c:124: SPI_send(ENC_PHLCON);                                   //Write the address of the PHY register in the MIREGADR register
      00247A 75 82 14         [24]  711 	mov	dpl, #0x14
      00247D 12 23 DD         [24]  712 	lcall	_SPI_send
                                    713 ;	SPI.c:126: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MICMD);
      002480 75 82 52         [24]  714 	mov	dpl, #0x52
      002483 12 23 DD         [24]  715 	lcall	_SPI_send
                                    716 ;	SPI.c:127: SPI_send(SET);
      002486 75 82 01         [24]  717 	mov	dpl, #0x01
      002489 12 23 DD         [24]  718 	lcall	_SPI_send
                                    719 ;	SPI.c:129: poll_MISTAT_BUSY();
      00248C 12 24 04         [24]  720 	lcall	_poll_MISTAT_BUSY
                                    721 ;	SPI.c:131: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MICMD);
      00248F 75 82 52         [24]  722 	mov	dpl, #0x52
      002492 12 23 DD         [24]  723 	lcall	_SPI_send
                                    724 ;	SPI.c:132: SPI_send(CLEAR);
      002495 75 82 00         [24]  725 	mov	dpl, #0x00
      002498 12 23 DD         [24]  726 	lcall	_SPI_send
                                    727 ;	SPI.c:135: SPI_ctrl_read(ENC_MIRDL);  //Dummy byte
      00249B 75 82 18         [24]  728 	mov	dpl, #0x18
      00249E 12 23 EC         [24]  729 	lcall	_SPI_ctrl_read
                                    730 ;	SPI.c:136: received_LSB = SPI_ctrl_read(ENC_MIRDL);
      0024A1 75 82 18         [24]  731 	mov	dpl, #0x18
      0024A4 12 23 EC         [24]  732 	lcall	_SPI_ctrl_read
      0024A7 AF 82            [24]  733 	mov	r7, dpl
                                    734 ;	SPI.c:139: received_MSB = SPI_ctrl_read(ENC_MIRDH);  //Dummy byte
      0024A9 75 82 19         [24]  735 	mov	dpl, #0x19
      0024AC C0 07            [24]  736 	push	ar7
      0024AE 12 23 EC         [24]  737 	lcall	_SPI_ctrl_read
      0024B1 AE 82            [24]  738 	mov	r6, dpl
      0024B3 D0 07            [24]  739 	pop	ar7
                                    740 ;	SPI.c:142: received_word = (received_MSB << 8) | received_LSB;
      0024B5 8E 05            [24]  741 	mov	ar5,r6
      0024B7 E4               [12]  742 	clr	a
      0024B8 FE               [12]  743 	mov	r6,a
      0024B9 FC               [12]  744 	mov	r4,a
      0024BA EF               [12]  745 	mov	a,r7
      0024BB 42 06            [12]  746 	orl	ar6,a
      0024BD EC               [12]  747 	mov	a,r4
      0024BE 42 05            [12]  748 	orl	ar5,a
                                    749 ;	SPI.c:143: return received_word;
      0024C0 8E 82            [24]  750 	mov	dpl, r6
      0024C2 8D 83            [24]  751 	mov	dph, r5
                                    752 ;	SPI.c:145: }
      0024C4 22               [24]  753 	ret
                                    754 ;------------------------------------------------------------
                                    755 ;Allocation info for local variables in function 'SPI_BB_init'
                                    756 ;------------------------------------------------------------
                                    757 ;	SPI.c:147: void SPI_BB_init(void)
                                    758 ;	-----------------------------------------
                                    759 ;	 function SPI_BB_init
                                    760 ;	-----------------------------------------
      0024C5                        761 _SPI_BB_init:
                                    762 ;	SPI.c:149: SPCON = 0;
      0024C5 75 C3 00         [24]  763 	mov	_SPCON,#0x00
                                    764 ;	SPI.c:150: SPI_DATA = 1;
                                    765 ;	assignBit
      0024C8 D2 97            [12]  766 	setb	_P1_7
                                    767 ;	SPI.c:151: SPI_CLOCK = 0;
                                    768 ;	assignBit
      0024CA C2 96            [12]  769 	clr	_P1_6
                                    770 ;	SPI.c:152: SPI_CHIP_SELECT = 1;
                                    771 ;	assignBit
      0024CC D2 91            [12]  772 	setb	_P1_1
                                    773 ;	SPI.c:153: }
      0024CE 22               [24]  774 	ret
                                    775 ;------------------------------------------------------------
                                    776 ;Allocation info for local variables in function 'SPI_send_BB'
                                    777 ;------------------------------------------------------------
                                    778 ;data                      Allocated with name '_SPI_send_BB_data_10000_71'
                                    779 ;i                         Allocated with name '_SPI_send_BB_i_20000_73'
                                    780 ;------------------------------------------------------------
                                    781 ;	SPI.c:155: void SPI_send_BB(uint8_t data)
                                    782 ;	-----------------------------------------
                                    783 ;	 function SPI_send_BB
                                    784 ;	-----------------------------------------
      0024CF                        785 _SPI_send_BB:
      0024CF E5 82            [12]  786 	mov	a,dpl
      0024D1 90 01 15         [24]  787 	mov	dptr,#_SPI_send_BB_data_10000_71
      0024D4 F0               [24]  788 	movx	@dptr,a
                                    789 ;	SPI.c:158: printf("Sending BB data: %x\n\r", data);
      0024D5 E0               [24]  790 	movx	a,@dptr
      0024D6 FF               [12]  791 	mov	r7,a
      0024D7 7E 00            [12]  792 	mov	r6,#0x00
      0024D9 C0 07            [24]  793 	push	ar7
      0024DB C0 06            [24]  794 	push	ar6
      0024DD 74 3D            [12]  795 	mov	a,#___str_1
      0024DF C0 E0            [24]  796 	push	acc
      0024E1 74 32            [12]  797 	mov	a,#(___str_1 >> 8)
      0024E3 C0 E0            [24]  798 	push	acc
      0024E5 74 80            [12]  799 	mov	a,#0x80
      0024E7 C0 E0            [24]  800 	push	acc
      0024E9 12 27 46         [24]  801 	lcall	_printf
      0024EC E5 81            [12]  802 	mov	a,sp
      0024EE 24 FB            [12]  803 	add	a,#0xfb
      0024F0 F5 81            [12]  804 	mov	sp,a
                                    805 ;	SPI.c:159: SPI_CHIP_SELECT = 0;
                                    806 ;	assignBit
      0024F2 C2 91            [12]  807 	clr	_P1_1
                                    808 ;	SPI.c:160: for(int i = 0; i < 8; i++)
      0024F4 7F 00            [12]  809 	mov	r7,#0x00
      0024F6                        810 00106$:
      0024F6 BF 08 00         [24]  811 	cjne	r7,#0x08,00129$
      0024F9                        812 00129$:
      0024F9 50 1D            [24]  813 	jnc	00104$
                                    814 ;	SPI.c:163: if(data & 0x80)
      0024FB 90 01 15         [24]  815 	mov	dptr,#_SPI_send_BB_data_10000_71
      0024FE E0               [24]  816 	movx	a,@dptr
      0024FF 30 E7 04         [24]  817 	jnb	acc.7,00102$
                                    818 ;	SPI.c:165: SPI_DATA = 1;
                                    819 ;	assignBit
      002502 D2 97            [12]  820 	setb	_P1_7
      002504 80 02            [24]  821 	sjmp	00103$
      002506                        822 00102$:
                                    823 ;	SPI.c:169: SPI_DATA = 0;
                                    824 ;	assignBit
      002506 C2 97            [12]  825 	clr	_P1_7
      002508                        826 00103$:
                                    827 ;	SPI.c:171: SPI_CLOCK = 1;
                                    828 ;	assignBit
      002508 D2 96            [12]  829 	setb	_P1_6
                                    830 ;	SPI.c:173: data = data << 1;
      00250A 90 01 15         [24]  831 	mov	dptr,#_SPI_send_BB_data_10000_71
      00250D E0               [24]  832 	movx	a,@dptr
      00250E 25 E0            [12]  833 	add	a,acc
      002510 F0               [24]  834 	movx	@dptr,a
                                    835 ;	SPI.c:174: SPI_CLOCK = 0;
                                    836 ;	assignBit
      002511 C2 96            [12]  837 	clr	_P1_6
                                    838 ;	SPI.c:175: SPI_DATA = 0;
                                    839 ;	assignBit
      002513 C2 97            [12]  840 	clr	_P1_7
                                    841 ;	SPI.c:160: for(int i = 0; i < 8; i++)
      002515 0F               [12]  842 	inc	r7
      002516 80 DE            [24]  843 	sjmp	00106$
      002518                        844 00104$:
                                    845 ;	SPI.c:178: SPI_CHIP_SELECT = 1;
                                    846 ;	assignBit
      002518 D2 91            [12]  847 	setb	_P1_1
                                    848 ;	SPI.c:179: }
      00251A 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'delay_us'
                                    852 ;------------------------------------------------------------
                                    853 ;us                        Allocated with name '_delay_us_us_10000_77'
                                    854 ;------------------------------------------------------------
                                    855 ;	SPI.c:181: void delay_us(uint16_t us)
                                    856 ;	-----------------------------------------
                                    857 ;	 function delay_us
                                    858 ;	-----------------------------------------
      00251B                        859 _delay_us:
      00251B AF 83            [24]  860 	mov	r7,dph
      00251D E5 82            [12]  861 	mov	a,dpl
      00251F 90 01 16         [24]  862 	mov	dptr,#_delay_us_us_10000_77
      002522 F0               [24]  863 	movx	@dptr,a
      002523 EF               [12]  864 	mov	a,r7
      002524 A3               [24]  865 	inc	dptr
      002525 F0               [24]  866 	movx	@dptr,a
                                    867 ;	SPI.c:183: while (us--)
      002526 90 01 16         [24]  868 	mov	dptr,#_delay_us_us_10000_77
      002529 E0               [24]  869 	movx	a,@dptr
      00252A FE               [12]  870 	mov	r6,a
      00252B A3               [24]  871 	inc	dptr
      00252C E0               [24]  872 	movx	a,@dptr
      00252D FF               [12]  873 	mov	r7,a
      00252E                        874 00101$:
      00252E 8E 04            [24]  875 	mov	ar4,r6
      002530 8F 05            [24]  876 	mov	ar5,r7
      002532 1E               [12]  877 	dec	r6
      002533 BE FF 01         [24]  878 	cjne	r6,#0xff,00118$
      002536 1F               [12]  879 	dec	r7
      002537                        880 00118$:
      002537 90 01 16         [24]  881 	mov	dptr,#_delay_us_us_10000_77
      00253A EE               [12]  882 	mov	a,r6
      00253B F0               [24]  883 	movx	@dptr,a
      00253C EF               [12]  884 	mov	a,r7
      00253D A3               [24]  885 	inc	dptr
      00253E F0               [24]  886 	movx	@dptr,a
      00253F EC               [12]  887 	mov	a,r4
      002540 4D               [12]  888 	orl	a,r5
      002541 70 EB            [24]  889 	jnz	00101$
      002543 90 01 16         [24]  890 	mov	dptr,#_delay_us_us_10000_77
      002546 EE               [12]  891 	mov	a,r6
      002547 F0               [24]  892 	movx	@dptr,a
      002548 EF               [12]  893 	mov	a,r7
      002549 A3               [24]  894 	inc	dptr
      00254A F0               [24]  895 	movx	@dptr,a
                                    896 ;	SPI.c:186: }
      00254B 22               [24]  897 	ret
                                    898 	.area CSEG    (CODE)
                                    899 	.area CONST   (CODE)
                                    900 	.area CONST   (CODE)
      003231                        901 ___str_0:
      003231 42 75 73 79 20 77 61   902 	.ascii "Busy wait!!"
             69 74 21 21
      00323C 00                     903 	.db 0x00
                                    904 	.area CSEG    (CODE)
                                    905 	.area CONST   (CODE)
      00323D                        906 ___str_1:
      00323D 53 65 6E 64 69 6E 67   907 	.ascii "Sending BB data: %x"
             20 42 42 20 64 61 74
             61 3A 20 25 78
      003250 0A                     908 	.db 0x0a
      003251 0D                     909 	.db 0x0d
      003252 00                     910 	.db 0x00
                                    911 	.area CSEG    (CODE)
                                    912 	.area XINIT   (CODE)
                                    913 	.area CABS    (ABS,CODE)

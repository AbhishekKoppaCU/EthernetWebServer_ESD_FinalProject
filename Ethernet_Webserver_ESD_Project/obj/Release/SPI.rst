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
                                    223 	.globl _delay_us
                                    224 ;--------------------------------------------------------
                                    225 ; special function registers
                                    226 ;--------------------------------------------------------
                                    227 	.area RSEG    (ABS,DATA)
      000000                        228 	.org 0x0000
                           0000C8   229 _T2CON	=	0x00c8
                           0000CA   230 _RCAP2L	=	0x00ca
                           0000CB   231 _RCAP2H	=	0x00cb
                           0000CC   232 _TL2	=	0x00cc
                           0000CD   233 _TH2	=	0x00cd
                           00008E   234 _AUXR	=	0x008e
                           0000A2   235 _AUXR1	=	0x00a2
                           000097   236 _CKRL	=	0x0097
                           00008F   237 _CKCON0	=	0x008f
                           0000AF   238 _CKCON1	=	0x00af
                           0000FA   239 _CCAP0H	=	0x00fa
                           0000FB   240 _CCAP1H	=	0x00fb
                           0000FC   241 _CCAP2H	=	0x00fc
                           0000FD   242 _CCAP3H	=	0x00fd
                           0000FE   243 _CCAP4H	=	0x00fe
                           0000EA   244 _CCAP0L	=	0x00ea
                           0000EB   245 _CCAP1L	=	0x00eb
                           0000EC   246 _CCAP2L	=	0x00ec
                           0000ED   247 _CCAP3L	=	0x00ed
                           0000EE   248 _CCAP4L	=	0x00ee
                           0000DA   249 _CCAPM0	=	0x00da
                           0000DB   250 _CCAPM1	=	0x00db
                           0000DC   251 _CCAPM2	=	0x00dc
                           0000DD   252 _CCAPM3	=	0x00dd
                           0000DE   253 _CCAPM4	=	0x00de
                           0000D8   254 _CCON	=	0x00d8
                           0000F9   255 _CH	=	0x00f9
                           0000E9   256 _CL	=	0x00e9
                           0000D9   257 _CMOD	=	0x00d9
                           0000A8   258 _IEN0	=	0x00a8
                           0000B1   259 _IEN1	=	0x00b1
                           0000B8   260 _IPL0	=	0x00b8
                           0000B7   261 _IPH0	=	0x00b7
                           0000B2   262 _IPL1	=	0x00b2
                           0000B3   263 _IPH1	=	0x00b3
                           0000C0   264 _P4	=	0x00c0
                           0000E8   265 _P5	=	0x00e8
                           0000A6   266 _WDTRST	=	0x00a6
                           0000A7   267 _WDTPRG	=	0x00a7
                           0000A9   268 _SADDR	=	0x00a9
                           0000B9   269 _SADEN	=	0x00b9
                           0000C3   270 _SPCON	=	0x00c3
                           0000C4   271 _SPSTA	=	0x00c4
                           0000C5   272 _SPDAT	=	0x00c5
                           0000C9   273 _T2MOD	=	0x00c9
                           00009B   274 _BDRCON	=	0x009b
                           00009A   275 _BRL	=	0x009a
                           00009C   276 _KBLS	=	0x009c
                           00009D   277 _KBE	=	0x009d
                           00009E   278 _KBF	=	0x009e
                           0000D2   279 _EECON	=	0x00d2
                           0000E0   280 _ACC	=	0x00e0
                           0000F0   281 _B	=	0x00f0
                           000083   282 _DPH	=	0x0083
                           000083   283 _DP0H	=	0x0083
                           000082   284 _DPL	=	0x0082
                           000082   285 _DP0L	=	0x0082
                           0000A8   286 _IE	=	0x00a8
                           0000B8   287 _IP	=	0x00b8
                           000080   288 _P0	=	0x0080
                           000090   289 _P1	=	0x0090
                           0000A0   290 _P2	=	0x00a0
                           0000B0   291 _P3	=	0x00b0
                           000087   292 _PCON	=	0x0087
                           0000D0   293 _PSW	=	0x00d0
                           000099   294 _SBUF	=	0x0099
                           000099   295 _SBUF0	=	0x0099
                           000098   296 _SCON	=	0x0098
                           000081   297 _SP	=	0x0081
                           000088   298 _TCON	=	0x0088
                           00008C   299 _TH0	=	0x008c
                           00008D   300 _TH1	=	0x008d
                           00008A   301 _TL0	=	0x008a
                           00008B   302 _TL1	=	0x008b
                           000089   303 _TMOD	=	0x0089
                                    304 ;--------------------------------------------------------
                                    305 ; special function bits
                                    306 ;--------------------------------------------------------
                                    307 	.area RSEG    (ABS,DATA)
      000000                        308 	.org 0x0000
                           0000AD   309 _ET2	=	0x00ad
                           0000BD   310 _PT2	=	0x00bd
                           0000C8   311 _T2CON_0	=	0x00c8
                           0000C9   312 _T2CON_1	=	0x00c9
                           0000CA   313 _T2CON_2	=	0x00ca
                           0000CB   314 _T2CON_3	=	0x00cb
                           0000CC   315 _T2CON_4	=	0x00cc
                           0000CD   316 _T2CON_5	=	0x00cd
                           0000CE   317 _T2CON_6	=	0x00ce
                           0000CF   318 _T2CON_7	=	0x00cf
                           0000C8   319 _CP_RL2	=	0x00c8
                           0000C9   320 _C_T2	=	0x00c9
                           0000CA   321 _TR2	=	0x00ca
                           0000CB   322 _EXEN2	=	0x00cb
                           0000CC   323 _TCLK	=	0x00cc
                           0000CD   324 _RCLK	=	0x00cd
                           0000CE   325 _EXF2	=	0x00ce
                           0000CF   326 _TF2	=	0x00cf
                           0000DF   327 _CF	=	0x00df
                           0000DE   328 _CR	=	0x00de
                           0000DC   329 _CCF4	=	0x00dc
                           0000DB   330 _CCF3	=	0x00db
                           0000DA   331 _CCF2	=	0x00da
                           0000D9   332 _CCF1	=	0x00d9
                           0000D8   333 _CCF0	=	0x00d8
                           0000AE   334 _EC	=	0x00ae
                           0000BE   335 _PPCL	=	0x00be
                           0000BD   336 _PT2L	=	0x00bd
                           0000BC   337 _PSL	=	0x00bc
                           0000BB   338 _PT1L	=	0x00bb
                           0000BA   339 _PX1L	=	0x00ba
                           0000B9   340 _PT0L	=	0x00b9
                           0000B8   341 _PX0L	=	0x00b8
                           0000C0   342 _P4_0	=	0x00c0
                           0000C1   343 _P4_1	=	0x00c1
                           0000C2   344 _P4_2	=	0x00c2
                           0000C3   345 _P4_3	=	0x00c3
                           0000C4   346 _P4_4	=	0x00c4
                           0000C5   347 _P4_5	=	0x00c5
                           0000C6   348 _P4_6	=	0x00c6
                           0000C7   349 _P4_7	=	0x00c7
                           0000E8   350 _P5_0	=	0x00e8
                           0000E9   351 _P5_1	=	0x00e9
                           0000EA   352 _P5_2	=	0x00ea
                           0000EB   353 _P5_3	=	0x00eb
                           0000EC   354 _P5_4	=	0x00ec
                           0000ED   355 _P5_5	=	0x00ed
                           0000EE   356 _P5_6	=	0x00ee
                           0000EF   357 _P5_7	=	0x00ef
                           0000F0   358 _BREG_F0	=	0x00f0
                           0000F1   359 _BREG_F1	=	0x00f1
                           0000F2   360 _BREG_F2	=	0x00f2
                           0000F3   361 _BREG_F3	=	0x00f3
                           0000F4   362 _BREG_F4	=	0x00f4
                           0000F5   363 _BREG_F5	=	0x00f5
                           0000F6   364 _BREG_F6	=	0x00f6
                           0000F7   365 _BREG_F7	=	0x00f7
                           0000A8   366 _EX0	=	0x00a8
                           0000A9   367 _ET0	=	0x00a9
                           0000AA   368 _EX1	=	0x00aa
                           0000AB   369 _ET1	=	0x00ab
                           0000AC   370 _ES	=	0x00ac
                           0000AF   371 _EA	=	0x00af
                           0000B8   372 _PX0	=	0x00b8
                           0000B9   373 _PT0	=	0x00b9
                           0000BA   374 _PX1	=	0x00ba
                           0000BB   375 _PT1	=	0x00bb
                           0000BC   376 _PS	=	0x00bc
                           000080   377 _P0_0	=	0x0080
                           000081   378 _P0_1	=	0x0081
                           000082   379 _P0_2	=	0x0082
                           000083   380 _P0_3	=	0x0083
                           000084   381 _P0_4	=	0x0084
                           000085   382 _P0_5	=	0x0085
                           000086   383 _P0_6	=	0x0086
                           000087   384 _P0_7	=	0x0087
                           000090   385 _P1_0	=	0x0090
                           000091   386 _P1_1	=	0x0091
                           000092   387 _P1_2	=	0x0092
                           000093   388 _P1_3	=	0x0093
                           000094   389 _P1_4	=	0x0094
                           000095   390 _P1_5	=	0x0095
                           000096   391 _P1_6	=	0x0096
                           000097   392 _P1_7	=	0x0097
                           0000A0   393 _P2_0	=	0x00a0
                           0000A1   394 _P2_1	=	0x00a1
                           0000A2   395 _P2_2	=	0x00a2
                           0000A3   396 _P2_3	=	0x00a3
                           0000A4   397 _P2_4	=	0x00a4
                           0000A5   398 _P2_5	=	0x00a5
                           0000A6   399 _P2_6	=	0x00a6
                           0000A7   400 _P2_7	=	0x00a7
                           0000B0   401 _P3_0	=	0x00b0
                           0000B1   402 _P3_1	=	0x00b1
                           0000B2   403 _P3_2	=	0x00b2
                           0000B3   404 _P3_3	=	0x00b3
                           0000B4   405 _P3_4	=	0x00b4
                           0000B5   406 _P3_5	=	0x00b5
                           0000B6   407 _P3_6	=	0x00b6
                           0000B7   408 _P3_7	=	0x00b7
                           0000B0   409 _RXD	=	0x00b0
                           0000B0   410 _RXD0	=	0x00b0
                           0000B1   411 _TXD	=	0x00b1
                           0000B1   412 _TXD0	=	0x00b1
                           0000B2   413 _INT0	=	0x00b2
                           0000B3   414 _INT1	=	0x00b3
                           0000B4   415 _T0	=	0x00b4
                           0000B5   416 _T1	=	0x00b5
                           0000B6   417 _WR	=	0x00b6
                           0000B7   418 _RD	=	0x00b7
                           0000D0   419 _P	=	0x00d0
                           0000D1   420 _F1	=	0x00d1
                           0000D2   421 _OV	=	0x00d2
                           0000D3   422 _RS0	=	0x00d3
                           0000D4   423 _RS1	=	0x00d4
                           0000D5   424 _F0	=	0x00d5
                           0000D6   425 _AC	=	0x00d6
                           0000D7   426 _CY	=	0x00d7
                           000098   427 _RI	=	0x0098
                           000099   428 _TI	=	0x0099
                           00009A   429 _RB8	=	0x009a
                           00009B   430 _TB8	=	0x009b
                           00009C   431 _REN	=	0x009c
                           00009D   432 _SM2	=	0x009d
                           00009E   433 _SM1	=	0x009e
                           00009F   434 _SM0	=	0x009f
                           000088   435 _IT0	=	0x0088
                           000089   436 _IE0	=	0x0089
                           00008A   437 _IT1	=	0x008a
                           00008B   438 _IE1	=	0x008b
                           00008C   439 _TR0	=	0x008c
                           00008D   440 _TF0	=	0x008d
                           00008E   441 _TR1	=	0x008e
                           00008F   442 _TF1	=	0x008f
                                    443 ;--------------------------------------------------------
                                    444 ; overlayable register banks
                                    445 ;--------------------------------------------------------
                                    446 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        447 	.ds 8
                                    448 ;--------------------------------------------------------
                                    449 ; internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area DSEG    (DATA)
                                    452 ;--------------------------------------------------------
                                    453 ; overlayable items in internal ram
                                    454 ;--------------------------------------------------------
                                    455 ;--------------------------------------------------------
                                    456 ; indirectly addressable internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area ISEG    (DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; absolute internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area IABS    (ABS,DATA)
                                    463 	.area IABS    (ABS,DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; bit data
                                    466 ;--------------------------------------------------------
                                    467 	.area BSEG    (BIT)
                                    468 ;--------------------------------------------------------
                                    469 ; paged external ram data
                                    470 ;--------------------------------------------------------
                                    471 	.area PSEG    (PAG,XDATA)
                                    472 ;--------------------------------------------------------
                                    473 ; uninitialized external ram data
                                    474 ;--------------------------------------------------------
                                    475 	.area XSEG    (XDATA)
      000100                        476 _SPI_send_data_10000_49:
      000100                        477 	.ds 1
      000101                        478 _delay_us_us_10000_52:
      000101                        479 	.ds 2
                                    480 ;--------------------------------------------------------
                                    481 ; absolute external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XABS    (ABS,XDATA)
                                    484 ;--------------------------------------------------------
                                    485 ; initialized external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XISEG   (XDATA)
                                    488 	.area HOME    (CODE)
                                    489 	.area GSINIT0 (CODE)
                                    490 	.area GSINIT1 (CODE)
                                    491 	.area GSINIT2 (CODE)
                                    492 	.area GSINIT3 (CODE)
                                    493 	.area GSINIT4 (CODE)
                                    494 	.area GSINIT5 (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area CSEG    (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; global & static initialisations
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area GSINIT  (CODE)
                                    503 	.area GSFINAL (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 ;--------------------------------------------------------
                                    506 ; Home
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area HOME    (CODE)
                                    510 ;--------------------------------------------------------
                                    511 ; code
                                    512 ;--------------------------------------------------------
                                    513 	.area CSEG    (CODE)
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'configure_SPI'
                                    516 ;------------------------------------------------------------
                                    517 ;	SPI.c:7: void configure_SPI(void)
                                    518 ;	-----------------------------------------
                                    519 ;	 function configure_SPI
                                    520 ;	-----------------------------------------
      00210B                        521 _configure_SPI:
                           000007   522 	ar7 = 0x07
                           000006   523 	ar6 = 0x06
                           000005   524 	ar5 = 0x05
                           000004   525 	ar4 = 0x04
                           000003   526 	ar3 = 0x03
                           000002   527 	ar2 = 0x02
                           000001   528 	ar1 = 0x01
                           000000   529 	ar0 = 0x00
                                    530 ;	SPI.c:9: CKCON0 |= 0x05;
      00210B 43 8F 05         [24]  531 	orl	_CKCON0,#0x05
                                    532 ;	SPI.c:10: SPCON |= 0x10;              //master mode
      00210E 43 C3 10         [24]  533 	orl	_SPCON,#0x10
                                    534 ;	SPI.c:11: P1_1=1;                     //CS disable
                                    535 ;	assignBit
      002111 D2 91            [12]  536 	setb	_P1_1
                                    537 ;	SPI.c:12: SPCON |= 0x00;          //Fclk/2
      002113 85 C3 C3         [24]  538 	mov	_SPCON,_SPCON
                                    539 ;	SPI.c:13: SPCON |= 0x20;          //disable SS
      002116 43 C3 20         [24]  540 	orl	_SPCON,#0x20
                                    541 ;	SPI.c:14: SPCON &= ~0x08;         //CPOL = 0
      002119 53 C3 F7         [24]  542 	anl	_SPCON,#0xf7
                                    543 ;	SPI.c:15: SPCON &= ~0x04;          //CPHA = 0
      00211C 53 C3 FB         [24]  544 	anl	_SPCON,#0xfb
                                    545 ;	SPI.c:17: SPCON |= 0x40;          //Enable SPI
      00211F 43 C3 40         [24]  546 	orl	_SPCON,#0x40
                                    547 ;	SPI.c:19: }
      002122 22               [24]  548 	ret
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'SPI_send'
                                    551 ;------------------------------------------------------------
                                    552 ;data                      Allocated with name '_SPI_send_data_10000_49'
                                    553 ;------------------------------------------------------------
                                    554 ;	SPI.c:22: void SPI_send(uint8_t data)
                                    555 ;	-----------------------------------------
                                    556 ;	 function SPI_send
                                    557 ;	-----------------------------------------
      002123                        558 _SPI_send:
      002123 E5 82            [12]  559 	mov	a,dpl
      002125 90 01 00         [24]  560 	mov	dptr,#_SPI_send_data_10000_49
      002128 F0               [24]  561 	movx	@dptr,a
                                    562 ;	SPI.c:25: P1_1 = 0;              // Pull CS (SS) low to activate the DAC
                                    563 ;	assignBit
      002129 C2 91            [12]  564 	clr	_P1_1
                                    565 ;	SPI.c:27: SPDAT = data;           // Config + MSB of data
      00212B 90 01 00         [24]  566 	mov	dptr,#_SPI_send_data_10000_49
      00212E E0               [24]  567 	movx	a,@dptr
      00212F FF               [12]  568 	mov	r7,a
      002130 8F C5            [24]  569 	mov	_SPDAT,r7
                                    570 ;	SPI.c:28: printf("Sending data: %x\n\r", data);
      002132 7E 00            [12]  571 	mov	r6,#0x00
      002134 C0 07            [24]  572 	push	ar7
      002136 C0 06            [24]  573 	push	ar6
      002138 74 E0            [12]  574 	mov	a,#___str_0
      00213A C0 E0            [24]  575 	push	acc
      00213C 74 2C            [12]  576 	mov	a,#(___str_0 >> 8)
      00213E C0 E0            [24]  577 	push	acc
      002140 74 80            [12]  578 	mov	a,#0x80
      002142 C0 E0            [24]  579 	push	acc
      002144 12 22 77         [24]  580 	lcall	_printf
      002147 E5 81            [12]  581 	mov	a,sp
      002149 24 FB            [12]  582 	add	a,#0xfb
      00214B F5 81            [12]  583 	mov	sp,a
                                    584 ;	SPI.c:29: while (!(SPSTA & 0x80))
      00214D                        585 00101$:
      00214D E5 C4            [12]  586 	mov	a,_SPSTA
      00214F 30 E7 FB         [24]  587 	jnb	acc.7,00101$
                                    588 ;	SPI.c:44: P1_1 = 1;
                                    589 ;	assignBit
      002152 D2 91            [12]  590 	setb	_P1_1
                                    591 ;	SPI.c:45: }
      002154 22               [24]  592 	ret
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'delay_us'
                                    595 ;------------------------------------------------------------
                                    596 ;us                        Allocated with name '_delay_us_us_10000_52'
                                    597 ;------------------------------------------------------------
                                    598 ;	SPI.c:47: void delay_us(uint16_t us)
                                    599 ;	-----------------------------------------
                                    600 ;	 function delay_us
                                    601 ;	-----------------------------------------
      002155                        602 _delay_us:
      002155 AF 83            [24]  603 	mov	r7,dph
      002157 E5 82            [12]  604 	mov	a,dpl
      002159 90 01 01         [24]  605 	mov	dptr,#_delay_us_us_10000_52
      00215C F0               [24]  606 	movx	@dptr,a
      00215D EF               [12]  607 	mov	a,r7
      00215E A3               [24]  608 	inc	dptr
      00215F F0               [24]  609 	movx	@dptr,a
                                    610 ;	SPI.c:49: while (us--)
      002160 90 01 01         [24]  611 	mov	dptr,#_delay_us_us_10000_52
      002163 E0               [24]  612 	movx	a,@dptr
      002164 FE               [12]  613 	mov	r6,a
      002165 A3               [24]  614 	inc	dptr
      002166 E0               [24]  615 	movx	a,@dptr
      002167 FF               [12]  616 	mov	r7,a
      002168                        617 00101$:
      002168 8E 04            [24]  618 	mov	ar4,r6
      00216A 8F 05            [24]  619 	mov	ar5,r7
      00216C 1E               [12]  620 	dec	r6
      00216D BE FF 01         [24]  621 	cjne	r6,#0xff,00118$
      002170 1F               [12]  622 	dec	r7
      002171                        623 00118$:
      002171 90 01 01         [24]  624 	mov	dptr,#_delay_us_us_10000_52
      002174 EE               [12]  625 	mov	a,r6
      002175 F0               [24]  626 	movx	@dptr,a
      002176 EF               [12]  627 	mov	a,r7
      002177 A3               [24]  628 	inc	dptr
      002178 F0               [24]  629 	movx	@dptr,a
      002179 EC               [12]  630 	mov	a,r4
      00217A 4D               [12]  631 	orl	a,r5
      00217B 70 EB            [24]  632 	jnz	00101$
      00217D 90 01 01         [24]  633 	mov	dptr,#_delay_us_us_10000_52
      002180 EE               [12]  634 	mov	a,r6
      002181 F0               [24]  635 	movx	@dptr,a
      002182 EF               [12]  636 	mov	a,r7
      002183 A3               [24]  637 	inc	dptr
      002184 F0               [24]  638 	movx	@dptr,a
                                    639 ;	SPI.c:52: }
      002185 22               [24]  640 	ret
                                    641 	.area CSEG    (CODE)
                                    642 	.area CONST   (CODE)
                                    643 	.area CONST   (CODE)
      002CE0                        644 ___str_0:
      002CE0 53 65 6E 64 69 6E 67   645 	.ascii "Sending data: %x"
             20 64 61 74 61 3A 20
             25 78
      002CF0 0A                     646 	.db 0x0a
      002CF1 0D                     647 	.db 0x0d
      002CF2 00                     648 	.db 0x00
                                    649 	.area CSEG    (CODE)
                                    650 	.area XINIT   (CODE)
                                    651 	.area CABS    (ABS,CODE)

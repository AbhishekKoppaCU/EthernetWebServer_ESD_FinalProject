                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module Utilities
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TF1
                                     12 	.globl _TR1
                                     13 	.globl _TF0
                                     14 	.globl _TR0
                                     15 	.globl _IE1
                                     16 	.globl _IT1
                                     17 	.globl _IE0
                                     18 	.globl _IT0
                                     19 	.globl _SM0
                                     20 	.globl _SM1
                                     21 	.globl _SM2
                                     22 	.globl _REN
                                     23 	.globl _TB8
                                     24 	.globl _RB8
                                     25 	.globl _TI
                                     26 	.globl _RI
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD0
                                     42 	.globl _TXD
                                     43 	.globl _RXD0
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _P1_7
                                     62 	.globl _P1_6
                                     63 	.globl _P1_5
                                     64 	.globl _P1_4
                                     65 	.globl _P1_3
                                     66 	.globl _P1_2
                                     67 	.globl _P1_1
                                     68 	.globl _P1_0
                                     69 	.globl _P0_7
                                     70 	.globl _P0_6
                                     71 	.globl _P0_5
                                     72 	.globl _P0_4
                                     73 	.globl _P0_3
                                     74 	.globl _P0_2
                                     75 	.globl _P0_1
                                     76 	.globl _P0_0
                                     77 	.globl _PS
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _EA
                                     83 	.globl _ES
                                     84 	.globl _ET1
                                     85 	.globl _EX1
                                     86 	.globl _ET0
                                     87 	.globl _EX0
                                     88 	.globl _BREG_F7
                                     89 	.globl _BREG_F6
                                     90 	.globl _BREG_F5
                                     91 	.globl _BREG_F4
                                     92 	.globl _BREG_F3
                                     93 	.globl _BREG_F2
                                     94 	.globl _BREG_F1
                                     95 	.globl _BREG_F0
                                     96 	.globl _P5_7
                                     97 	.globl _P5_6
                                     98 	.globl _P5_5
                                     99 	.globl _P5_4
                                    100 	.globl _P5_3
                                    101 	.globl _P5_2
                                    102 	.globl _P5_1
                                    103 	.globl _P5_0
                                    104 	.globl _P4_7
                                    105 	.globl _P4_6
                                    106 	.globl _P4_5
                                    107 	.globl _P4_4
                                    108 	.globl _P4_3
                                    109 	.globl _P4_2
                                    110 	.globl _P4_1
                                    111 	.globl _P4_0
                                    112 	.globl _PX0L
                                    113 	.globl _PT0L
                                    114 	.globl _PX1L
                                    115 	.globl _PT1L
                                    116 	.globl _PSL
                                    117 	.globl _PT2L
                                    118 	.globl _PPCL
                                    119 	.globl _EC
                                    120 	.globl _CCF0
                                    121 	.globl _CCF1
                                    122 	.globl _CCF2
                                    123 	.globl _CCF3
                                    124 	.globl _CCF4
                                    125 	.globl _CR
                                    126 	.globl _CF
                                    127 	.globl _TF2
                                    128 	.globl _EXF2
                                    129 	.globl _RCLK
                                    130 	.globl _TCLK
                                    131 	.globl _EXEN2
                                    132 	.globl _TR2
                                    133 	.globl _C_T2
                                    134 	.globl _CP_RL2
                                    135 	.globl _T2CON_7
                                    136 	.globl _T2CON_6
                                    137 	.globl _T2CON_5
                                    138 	.globl _T2CON_4
                                    139 	.globl _T2CON_3
                                    140 	.globl _T2CON_2
                                    141 	.globl _T2CON_1
                                    142 	.globl _T2CON_0
                                    143 	.globl _PT2
                                    144 	.globl _ET2
                                    145 	.globl _TMOD
                                    146 	.globl _TL1
                                    147 	.globl _TL0
                                    148 	.globl _TH1
                                    149 	.globl _TH0
                                    150 	.globl _TCON
                                    151 	.globl _SP
                                    152 	.globl _SCON
                                    153 	.globl _SBUF0
                                    154 	.globl _SBUF
                                    155 	.globl _PSW
                                    156 	.globl _PCON
                                    157 	.globl _P3
                                    158 	.globl _P2
                                    159 	.globl _P1
                                    160 	.globl _P0
                                    161 	.globl _IP
                                    162 	.globl _IE
                                    163 	.globl _DP0L
                                    164 	.globl _DPL
                                    165 	.globl _DP0H
                                    166 	.globl _DPH
                                    167 	.globl _B
                                    168 	.globl _ACC
                                    169 	.globl _EECON
                                    170 	.globl _KBF
                                    171 	.globl _KBE
                                    172 	.globl _KBLS
                                    173 	.globl _BRL
                                    174 	.globl _BDRCON
                                    175 	.globl _T2MOD
                                    176 	.globl _SPDAT
                                    177 	.globl _SPSTA
                                    178 	.globl _SPCON
                                    179 	.globl _SADEN
                                    180 	.globl _SADDR
                                    181 	.globl _WDTPRG
                                    182 	.globl _WDTRST
                                    183 	.globl _P5
                                    184 	.globl _P4
                                    185 	.globl _IPH1
                                    186 	.globl _IPL1
                                    187 	.globl _IPH0
                                    188 	.globl _IPL0
                                    189 	.globl _IEN1
                                    190 	.globl _IEN0
                                    191 	.globl _CMOD
                                    192 	.globl _CL
                                    193 	.globl _CH
                                    194 	.globl _CCON
                                    195 	.globl _CCAPM4
                                    196 	.globl _CCAPM3
                                    197 	.globl _CCAPM2
                                    198 	.globl _CCAPM1
                                    199 	.globl _CCAPM0
                                    200 	.globl _CCAP4L
                                    201 	.globl _CCAP3L
                                    202 	.globl _CCAP2L
                                    203 	.globl _CCAP1L
                                    204 	.globl _CCAP0L
                                    205 	.globl _CCAP4H
                                    206 	.globl _CCAP3H
                                    207 	.globl _CCAP2H
                                    208 	.globl _CCAP1H
                                    209 	.globl _CCAP0H
                                    210 	.globl _CKCON1
                                    211 	.globl _CKCON0
                                    212 	.globl _CKRL
                                    213 	.globl _AUXR1
                                    214 	.globl _AUXR
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _T2CON
                                    220 	.globl _putchar
                                    221 	.globl _getchar
                                    222 	.globl _putstr
                                    223 ;--------------------------------------------------------
                                    224 ; special function registers
                                    225 ;--------------------------------------------------------
                                    226 	.area RSEG    (ABS,DATA)
      000000                        227 	.org 0x0000
                           0000C8   228 _T2CON	=	0x00c8
                           0000CA   229 _RCAP2L	=	0x00ca
                           0000CB   230 _RCAP2H	=	0x00cb
                           0000CC   231 _TL2	=	0x00cc
                           0000CD   232 _TH2	=	0x00cd
                           00008E   233 _AUXR	=	0x008e
                           0000A2   234 _AUXR1	=	0x00a2
                           000097   235 _CKRL	=	0x0097
                           00008F   236 _CKCON0	=	0x008f
                           0000AF   237 _CKCON1	=	0x00af
                           0000FA   238 _CCAP0H	=	0x00fa
                           0000FB   239 _CCAP1H	=	0x00fb
                           0000FC   240 _CCAP2H	=	0x00fc
                           0000FD   241 _CCAP3H	=	0x00fd
                           0000FE   242 _CCAP4H	=	0x00fe
                           0000EA   243 _CCAP0L	=	0x00ea
                           0000EB   244 _CCAP1L	=	0x00eb
                           0000EC   245 _CCAP2L	=	0x00ec
                           0000ED   246 _CCAP3L	=	0x00ed
                           0000EE   247 _CCAP4L	=	0x00ee
                           0000DA   248 _CCAPM0	=	0x00da
                           0000DB   249 _CCAPM1	=	0x00db
                           0000DC   250 _CCAPM2	=	0x00dc
                           0000DD   251 _CCAPM3	=	0x00dd
                           0000DE   252 _CCAPM4	=	0x00de
                           0000D8   253 _CCON	=	0x00d8
                           0000F9   254 _CH	=	0x00f9
                           0000E9   255 _CL	=	0x00e9
                           0000D9   256 _CMOD	=	0x00d9
                           0000A8   257 _IEN0	=	0x00a8
                           0000B1   258 _IEN1	=	0x00b1
                           0000B8   259 _IPL0	=	0x00b8
                           0000B7   260 _IPH0	=	0x00b7
                           0000B2   261 _IPL1	=	0x00b2
                           0000B3   262 _IPH1	=	0x00b3
                           0000C0   263 _P4	=	0x00c0
                           0000E8   264 _P5	=	0x00e8
                           0000A6   265 _WDTRST	=	0x00a6
                           0000A7   266 _WDTPRG	=	0x00a7
                           0000A9   267 _SADDR	=	0x00a9
                           0000B9   268 _SADEN	=	0x00b9
                           0000C3   269 _SPCON	=	0x00c3
                           0000C4   270 _SPSTA	=	0x00c4
                           0000C5   271 _SPDAT	=	0x00c5
                           0000C9   272 _T2MOD	=	0x00c9
                           00009B   273 _BDRCON	=	0x009b
                           00009A   274 _BRL	=	0x009a
                           00009C   275 _KBLS	=	0x009c
                           00009D   276 _KBE	=	0x009d
                           00009E   277 _KBF	=	0x009e
                           0000D2   278 _EECON	=	0x00d2
                           0000E0   279 _ACC	=	0x00e0
                           0000F0   280 _B	=	0x00f0
                           000083   281 _DPH	=	0x0083
                           000083   282 _DP0H	=	0x0083
                           000082   283 _DPL	=	0x0082
                           000082   284 _DP0L	=	0x0082
                           0000A8   285 _IE	=	0x00a8
                           0000B8   286 _IP	=	0x00b8
                           000080   287 _P0	=	0x0080
                           000090   288 _P1	=	0x0090
                           0000A0   289 _P2	=	0x00a0
                           0000B0   290 _P3	=	0x00b0
                           000087   291 _PCON	=	0x0087
                           0000D0   292 _PSW	=	0x00d0
                           000099   293 _SBUF	=	0x0099
                           000099   294 _SBUF0	=	0x0099
                           000098   295 _SCON	=	0x0098
                           000081   296 _SP	=	0x0081
                           000088   297 _TCON	=	0x0088
                           00008C   298 _TH0	=	0x008c
                           00008D   299 _TH1	=	0x008d
                           00008A   300 _TL0	=	0x008a
                           00008B   301 _TL1	=	0x008b
                           000089   302 _TMOD	=	0x0089
                                    303 ;--------------------------------------------------------
                                    304 ; special function bits
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           0000AD   308 _ET2	=	0x00ad
                           0000BD   309 _PT2	=	0x00bd
                           0000C8   310 _T2CON_0	=	0x00c8
                           0000C9   311 _T2CON_1	=	0x00c9
                           0000CA   312 _T2CON_2	=	0x00ca
                           0000CB   313 _T2CON_3	=	0x00cb
                           0000CC   314 _T2CON_4	=	0x00cc
                           0000CD   315 _T2CON_5	=	0x00cd
                           0000CE   316 _T2CON_6	=	0x00ce
                           0000CF   317 _T2CON_7	=	0x00cf
                           0000C8   318 _CP_RL2	=	0x00c8
                           0000C9   319 _C_T2	=	0x00c9
                           0000CA   320 _TR2	=	0x00ca
                           0000CB   321 _EXEN2	=	0x00cb
                           0000CC   322 _TCLK	=	0x00cc
                           0000CD   323 _RCLK	=	0x00cd
                           0000CE   324 _EXF2	=	0x00ce
                           0000CF   325 _TF2	=	0x00cf
                           0000DF   326 _CF	=	0x00df
                           0000DE   327 _CR	=	0x00de
                           0000DC   328 _CCF4	=	0x00dc
                           0000DB   329 _CCF3	=	0x00db
                           0000DA   330 _CCF2	=	0x00da
                           0000D9   331 _CCF1	=	0x00d9
                           0000D8   332 _CCF0	=	0x00d8
                           0000AE   333 _EC	=	0x00ae
                           0000BE   334 _PPCL	=	0x00be
                           0000BD   335 _PT2L	=	0x00bd
                           0000BC   336 _PSL	=	0x00bc
                           0000BB   337 _PT1L	=	0x00bb
                           0000BA   338 _PX1L	=	0x00ba
                           0000B9   339 _PT0L	=	0x00b9
                           0000B8   340 _PX0L	=	0x00b8
                           0000C0   341 _P4_0	=	0x00c0
                           0000C1   342 _P4_1	=	0x00c1
                           0000C2   343 _P4_2	=	0x00c2
                           0000C3   344 _P4_3	=	0x00c3
                           0000C4   345 _P4_4	=	0x00c4
                           0000C5   346 _P4_5	=	0x00c5
                           0000C6   347 _P4_6	=	0x00c6
                           0000C7   348 _P4_7	=	0x00c7
                           0000E8   349 _P5_0	=	0x00e8
                           0000E9   350 _P5_1	=	0x00e9
                           0000EA   351 _P5_2	=	0x00ea
                           0000EB   352 _P5_3	=	0x00eb
                           0000EC   353 _P5_4	=	0x00ec
                           0000ED   354 _P5_5	=	0x00ed
                           0000EE   355 _P5_6	=	0x00ee
                           0000EF   356 _P5_7	=	0x00ef
                           0000F0   357 _BREG_F0	=	0x00f0
                           0000F1   358 _BREG_F1	=	0x00f1
                           0000F2   359 _BREG_F2	=	0x00f2
                           0000F3   360 _BREG_F3	=	0x00f3
                           0000F4   361 _BREG_F4	=	0x00f4
                           0000F5   362 _BREG_F5	=	0x00f5
                           0000F6   363 _BREG_F6	=	0x00f6
                           0000F7   364 _BREG_F7	=	0x00f7
                           0000A8   365 _EX0	=	0x00a8
                           0000A9   366 _ET0	=	0x00a9
                           0000AA   367 _EX1	=	0x00aa
                           0000AB   368 _ET1	=	0x00ab
                           0000AC   369 _ES	=	0x00ac
                           0000AF   370 _EA	=	0x00af
                           0000B8   371 _PX0	=	0x00b8
                           0000B9   372 _PT0	=	0x00b9
                           0000BA   373 _PX1	=	0x00ba
                           0000BB   374 _PT1	=	0x00bb
                           0000BC   375 _PS	=	0x00bc
                           000080   376 _P0_0	=	0x0080
                           000081   377 _P0_1	=	0x0081
                           000082   378 _P0_2	=	0x0082
                           000083   379 _P0_3	=	0x0083
                           000084   380 _P0_4	=	0x0084
                           000085   381 _P0_5	=	0x0085
                           000086   382 _P0_6	=	0x0086
                           000087   383 _P0_7	=	0x0087
                           000090   384 _P1_0	=	0x0090
                           000091   385 _P1_1	=	0x0091
                           000092   386 _P1_2	=	0x0092
                           000093   387 _P1_3	=	0x0093
                           000094   388 _P1_4	=	0x0094
                           000095   389 _P1_5	=	0x0095
                           000096   390 _P1_6	=	0x0096
                           000097   391 _P1_7	=	0x0097
                           0000A0   392 _P2_0	=	0x00a0
                           0000A1   393 _P2_1	=	0x00a1
                           0000A2   394 _P2_2	=	0x00a2
                           0000A3   395 _P2_3	=	0x00a3
                           0000A4   396 _P2_4	=	0x00a4
                           0000A5   397 _P2_5	=	0x00a5
                           0000A6   398 _P2_6	=	0x00a6
                           0000A7   399 _P2_7	=	0x00a7
                           0000B0   400 _P3_0	=	0x00b0
                           0000B1   401 _P3_1	=	0x00b1
                           0000B2   402 _P3_2	=	0x00b2
                           0000B3   403 _P3_3	=	0x00b3
                           0000B4   404 _P3_4	=	0x00b4
                           0000B5   405 _P3_5	=	0x00b5
                           0000B6   406 _P3_6	=	0x00b6
                           0000B7   407 _P3_7	=	0x00b7
                           0000B0   408 _RXD	=	0x00b0
                           0000B0   409 _RXD0	=	0x00b0
                           0000B1   410 _TXD	=	0x00b1
                           0000B1   411 _TXD0	=	0x00b1
                           0000B2   412 _INT0	=	0x00b2
                           0000B3   413 _INT1	=	0x00b3
                           0000B4   414 _T0	=	0x00b4
                           0000B5   415 _T1	=	0x00b5
                           0000B6   416 _WR	=	0x00b6
                           0000B7   417 _RD	=	0x00b7
                           0000D0   418 _P	=	0x00d0
                           0000D1   419 _F1	=	0x00d1
                           0000D2   420 _OV	=	0x00d2
                           0000D3   421 _RS0	=	0x00d3
                           0000D4   422 _RS1	=	0x00d4
                           0000D5   423 _F0	=	0x00d5
                           0000D6   424 _AC	=	0x00d6
                           0000D7   425 _CY	=	0x00d7
                           000098   426 _RI	=	0x0098
                           000099   427 _TI	=	0x0099
                           00009A   428 _RB8	=	0x009a
                           00009B   429 _TB8	=	0x009b
                           00009C   430 _REN	=	0x009c
                           00009D   431 _SM2	=	0x009d
                           00009E   432 _SM1	=	0x009e
                           00009F   433 _SM0	=	0x009f
                           000088   434 _IT0	=	0x0088
                           000089   435 _IE0	=	0x0089
                           00008A   436 _IT1	=	0x008a
                           00008B   437 _IE1	=	0x008b
                           00008C   438 _TR0	=	0x008c
                           00008D   439 _TF0	=	0x008d
                           00008E   440 _TR1	=	0x008e
                           00008F   441 _TF1	=	0x008f
                                    442 ;--------------------------------------------------------
                                    443 ; overlayable register banks
                                    444 ;--------------------------------------------------------
                                    445 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        446 	.ds 8
                                    447 ;--------------------------------------------------------
                                    448 ; internal ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area DSEG    (DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable items in internal ram
                                    453 ;--------------------------------------------------------
                                    454 ;--------------------------------------------------------
                                    455 ; indirectly addressable internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area ISEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; absolute internal ram data
                                    460 ;--------------------------------------------------------
                                    461 	.area IABS    (ABS,DATA)
                                    462 	.area IABS    (ABS,DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; bit data
                                    465 ;--------------------------------------------------------
                                    466 	.area BSEG    (BIT)
                                    467 ;--------------------------------------------------------
                                    468 ; paged external ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area PSEG    (PAG,XDATA)
                                    471 ;--------------------------------------------------------
                                    472 ; uninitialized external ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area XSEG    (XDATA)
      000370                        475 _putchar_c_10000_66:
      000370                        476 	.ds 2
      000372                        477 _putstr_s_10000_70:
      000372                        478 	.ds 3
                                    479 ;--------------------------------------------------------
                                    480 ; absolute external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XABS    (ABS,XDATA)
                                    483 ;--------------------------------------------------------
                                    484 ; initialized external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area XISEG   (XDATA)
                                    487 	.area HOME    (CODE)
                                    488 	.area GSINIT0 (CODE)
                                    489 	.area GSINIT1 (CODE)
                                    490 	.area GSINIT2 (CODE)
                                    491 	.area GSINIT3 (CODE)
                                    492 	.area GSINIT4 (CODE)
                                    493 	.area GSINIT5 (CODE)
                                    494 	.area GSINIT  (CODE)
                                    495 	.area GSFINAL (CODE)
                                    496 	.area CSEG    (CODE)
                                    497 ;--------------------------------------------------------
                                    498 ; global & static initialisations
                                    499 ;--------------------------------------------------------
                                    500 	.area HOME    (CODE)
                                    501 	.area GSINIT  (CODE)
                                    502 	.area GSFINAL (CODE)
                                    503 	.area GSINIT  (CODE)
                                    504 ;--------------------------------------------------------
                                    505 ; Home
                                    506 ;--------------------------------------------------------
                                    507 	.area HOME    (CODE)
                                    508 	.area HOME    (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; code
                                    511 ;--------------------------------------------------------
                                    512 	.area CSEG    (CODE)
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'putchar'
                                    515 ;------------------------------------------------------------
                                    516 ;c                         Allocated with name '_putchar_c_10000_66'
                                    517 ;------------------------------------------------------------
                                    518 ;	Utilities.c:6: int putchar (int c)
                                    519 ;	-----------------------------------------
                                    520 ;	 function putchar
                                    521 ;	-----------------------------------------
      003665                        522 _putchar:
                           000007   523 	ar7 = 0x07
                           000006   524 	ar6 = 0x06
                           000005   525 	ar5 = 0x05
                           000004   526 	ar4 = 0x04
                           000003   527 	ar3 = 0x03
                           000002   528 	ar2 = 0x02
                           000001   529 	ar1 = 0x01
                           000000   530 	ar0 = 0x00
      003665 AF 83            [24]  531 	mov	r7,dph
      003667 E5 82            [12]  532 	mov	a,dpl
      003669 90 03 70         [24]  533 	mov	dptr,#_putchar_c_10000_66
      00366C F0               [24]  534 	movx	@dptr,a
      00366D EF               [12]  535 	mov	a,r7
      00366E A3               [24]  536 	inc	dptr
      00366F F0               [24]  537 	movx	@dptr,a
                                    538 ;	Utilities.c:9: while (!TI);
      003670                        539 00101$:
      003670 30 99 FD         [24]  540 	jnb	_TI,00101$
                                    541 ;	Utilities.c:11: SBUF = c;           // load serial port with transmit value
      003673 90 03 70         [24]  542 	mov	dptr,#_putchar_c_10000_66
      003676 E0               [24]  543 	movx	a,@dptr
      003677 FE               [12]  544 	mov	r6,a
      003678 A3               [24]  545 	inc	dptr
      003679 E0               [24]  546 	movx	a,@dptr
      00367A FF               [12]  547 	mov	r7,a
      00367B 8E 99            [24]  548 	mov	_SBUF,r6
                                    549 ;	Utilities.c:12: TI = 0;             // clear TI flag
                                    550 ;	assignBit
      00367D C2 99            [12]  551 	clr	_TI
                                    552 ;	Utilities.c:14: return c;
      00367F 8E 82            [24]  553 	mov	dpl, r6
      003681 8F 83            [24]  554 	mov	dph, r7
                                    555 ;	Utilities.c:15: }
      003683 22               [24]  556 	ret
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'getchar'
                                    559 ;------------------------------------------------------------
                                    560 ;	Utilities.c:18: int getchar (void)
                                    561 ;	-----------------------------------------
                                    562 ;	 function getchar
                                    563 ;	-----------------------------------------
      003684                        564 _getchar:
                                    565 ;	Utilities.c:21: while (!RI);
      003684                        566 00101$:
                                    567 ;	Utilities.c:23: RI = 0;                         // clear RI flag
                                    568 ;	assignBit
      003684 10 98 02         [24]  569 	jbc	_RI,00118$
      003687 80 FB            [24]  570 	sjmp	00101$
      003689                        571 00118$:
                                    572 ;	Utilities.c:24: return SBUF;                    // return character from SBUF
      003689 AE 99            [24]  573 	mov	r6,_SBUF
      00368B 7F 00            [12]  574 	mov	r7,#0x00
      00368D 8E 82            [24]  575 	mov	dpl, r6
      00368F 8F 83            [24]  576 	mov	dph, r7
                                    577 ;	Utilities.c:25: }
      003691 22               [24]  578 	ret
                                    579 ;------------------------------------------------------------
                                    580 ;Allocation info for local variables in function 'putstr'
                                    581 ;------------------------------------------------------------
                                    582 ;s                         Allocated with name '_putstr_s_10000_70'
                                    583 ;i                         Allocated with name '_putstr_i_10000_71'
                                    584 ;------------------------------------------------------------
                                    585 ;	Utilities.c:27: int putstr (char *s)
                                    586 ;	-----------------------------------------
                                    587 ;	 function putstr
                                    588 ;	-----------------------------------------
      003692                        589 _putstr:
      003692 AF F0            [24]  590 	mov	r7,b
      003694 AE 83            [24]  591 	mov	r6,dph
      003696 E5 82            [12]  592 	mov	a,dpl
      003698 90 03 72         [24]  593 	mov	dptr,#_putstr_s_10000_70
      00369B F0               [24]  594 	movx	@dptr,a
      00369C EE               [12]  595 	mov	a,r6
      00369D A3               [24]  596 	inc	dptr
      00369E F0               [24]  597 	movx	@dptr,a
      00369F EF               [12]  598 	mov	a,r7
      0036A0 A3               [24]  599 	inc	dptr
      0036A1 F0               [24]  600 	movx	@dptr,a
                                    601 ;	Utilities.c:30: while (*s){            // output characters until NULL found
      0036A2 90 03 72         [24]  602 	mov	dptr,#_putstr_s_10000_70
      0036A5 E0               [24]  603 	movx	a,@dptr
      0036A6 FD               [12]  604 	mov	r5,a
      0036A7 A3               [24]  605 	inc	dptr
      0036A8 E0               [24]  606 	movx	a,@dptr
      0036A9 FE               [12]  607 	mov	r6,a
      0036AA A3               [24]  608 	inc	dptr
      0036AB E0               [24]  609 	movx	a,@dptr
      0036AC FF               [12]  610 	mov	r7,a
      0036AD 7B 00            [12]  611 	mov	r3,#0x00
      0036AF 7C 00            [12]  612 	mov	r4,#0x00
      0036B1                        613 00101$:
      0036B1 8D 82            [24]  614 	mov	dpl,r5
      0036B3 8E 83            [24]  615 	mov	dph,r6
      0036B5 8F F0            [24]  616 	mov	b,r7
      0036B7 12 42 BC         [24]  617 	lcall	__gptrget
      0036BA FA               [12]  618 	mov	r2,a
      0036BB 60 36            [24]  619 	jz	00108$
                                    620 ;	Utilities.c:31: putchar(*s++);
      0036BD 0D               [12]  621 	inc	r5
      0036BE BD 00 01         [24]  622 	cjne	r5,#0x00,00120$
      0036C1 0E               [12]  623 	inc	r6
      0036C2                        624 00120$:
      0036C2 90 03 72         [24]  625 	mov	dptr,#_putstr_s_10000_70
      0036C5 ED               [12]  626 	mov	a,r5
      0036C6 F0               [24]  627 	movx	@dptr,a
      0036C7 EE               [12]  628 	mov	a,r6
      0036C8 A3               [24]  629 	inc	dptr
      0036C9 F0               [24]  630 	movx	@dptr,a
      0036CA EF               [12]  631 	mov	a,r7
      0036CB A3               [24]  632 	inc	dptr
      0036CC F0               [24]  633 	movx	@dptr,a
      0036CD 8A 01            [24]  634 	mov	ar1,r2
      0036CF 7A 00            [12]  635 	mov	r2,#0x00
      0036D1 89 82            [24]  636 	mov	dpl, r1
      0036D3 8A 83            [24]  637 	mov	dph, r2
      0036D5 C0 07            [24]  638 	push	ar7
      0036D7 C0 06            [24]  639 	push	ar6
      0036D9 C0 05            [24]  640 	push	ar5
      0036DB C0 04            [24]  641 	push	ar4
      0036DD C0 03            [24]  642 	push	ar3
      0036DF 12 36 65         [24]  643 	lcall	_putchar
      0036E2 D0 03            [24]  644 	pop	ar3
      0036E4 D0 04            [24]  645 	pop	ar4
      0036E6 D0 05            [24]  646 	pop	ar5
      0036E8 D0 06            [24]  647 	pop	ar6
      0036EA D0 07            [24]  648 	pop	ar7
                                    649 ;	Utilities.c:32: i++;
      0036EC 0B               [12]  650 	inc	r3
      0036ED BB 00 C1         [24]  651 	cjne	r3,#0x00,00101$
      0036F0 0C               [12]  652 	inc	r4
      0036F1 80 BE            [24]  653 	sjmp	00101$
      0036F3                        654 00108$:
      0036F3 90 03 72         [24]  655 	mov	dptr,#_putstr_s_10000_70
      0036F6 ED               [12]  656 	mov	a,r5
      0036F7 F0               [24]  657 	movx	@dptr,a
      0036F8 EE               [12]  658 	mov	a,r6
      0036F9 A3               [24]  659 	inc	dptr
      0036FA F0               [24]  660 	movx	@dptr,a
      0036FB EF               [12]  661 	mov	a,r7
      0036FC A3               [24]  662 	inc	dptr
      0036FD F0               [24]  663 	movx	@dptr,a
                                    664 ;	Utilities.c:34: return i+1;
      0036FE 0B               [12]  665 	inc	r3
      0036FF BB 00 01         [24]  666 	cjne	r3,#0x00,00122$
      003702 0C               [12]  667 	inc	r4
      003703                        668 00122$:
      003703 8B 82            [24]  669 	mov	dpl, r3
      003705 8C 83            [24]  670 	mov	dph, r4
                                    671 ;	Utilities.c:35: }
      003707 22               [24]  672 	ret
                                    673 	.area CSEG    (CODE)
                                    674 	.area CONST   (CODE)
                                    675 	.area XINIT   (CODE)
                                    676 	.area CABS    (ABS,CODE)

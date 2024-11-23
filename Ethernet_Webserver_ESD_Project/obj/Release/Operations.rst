                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module Operations
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_us
                                     12 	.globl _SPI_send
                                     13 	.globl _TF1
                                     14 	.globl _TR1
                                     15 	.globl _TF0
                                     16 	.globl _TR0
                                     17 	.globl _IE1
                                     18 	.globl _IT1
                                     19 	.globl _IE0
                                     20 	.globl _IT0
                                     21 	.globl _SM0
                                     22 	.globl _SM1
                                     23 	.globl _SM2
                                     24 	.globl _REN
                                     25 	.globl _TB8
                                     26 	.globl _RB8
                                     27 	.globl _TI
                                     28 	.globl _RI
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD0
                                     44 	.globl _TXD
                                     45 	.globl _RXD0
                                     46 	.globl _RXD
                                     47 	.globl _P3_7
                                     48 	.globl _P3_6
                                     49 	.globl _P3_5
                                     50 	.globl _P3_4
                                     51 	.globl _P3_3
                                     52 	.globl _P3_2
                                     53 	.globl _P3_1
                                     54 	.globl _P3_0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _P0_7
                                     72 	.globl _P0_6
                                     73 	.globl _P0_5
                                     74 	.globl _P0_4
                                     75 	.globl _P0_3
                                     76 	.globl _P0_2
                                     77 	.globl _P0_1
                                     78 	.globl _P0_0
                                     79 	.globl _PS
                                     80 	.globl _PT1
                                     81 	.globl _PX1
                                     82 	.globl _PT0
                                     83 	.globl _PX0
                                     84 	.globl _EA
                                     85 	.globl _ES
                                     86 	.globl _ET1
                                     87 	.globl _EX1
                                     88 	.globl _ET0
                                     89 	.globl _EX0
                                     90 	.globl _BREG_F7
                                     91 	.globl _BREG_F6
                                     92 	.globl _BREG_F5
                                     93 	.globl _BREG_F4
                                     94 	.globl _BREG_F3
                                     95 	.globl _BREG_F2
                                     96 	.globl _BREG_F1
                                     97 	.globl _BREG_F0
                                     98 	.globl _P5_7
                                     99 	.globl _P5_6
                                    100 	.globl _P5_5
                                    101 	.globl _P5_4
                                    102 	.globl _P5_3
                                    103 	.globl _P5_2
                                    104 	.globl _P5_1
                                    105 	.globl _P5_0
                                    106 	.globl _P4_7
                                    107 	.globl _P4_6
                                    108 	.globl _P4_5
                                    109 	.globl _P4_4
                                    110 	.globl _P4_3
                                    111 	.globl _P4_2
                                    112 	.globl _P4_1
                                    113 	.globl _P4_0
                                    114 	.globl _PX0L
                                    115 	.globl _PT0L
                                    116 	.globl _PX1L
                                    117 	.globl _PT1L
                                    118 	.globl _PSL
                                    119 	.globl _PT2L
                                    120 	.globl _PPCL
                                    121 	.globl _EC
                                    122 	.globl _CCF0
                                    123 	.globl _CCF1
                                    124 	.globl _CCF2
                                    125 	.globl _CCF3
                                    126 	.globl _CCF4
                                    127 	.globl _CR
                                    128 	.globl _CF
                                    129 	.globl _TF2
                                    130 	.globl _EXF2
                                    131 	.globl _RCLK
                                    132 	.globl _TCLK
                                    133 	.globl _EXEN2
                                    134 	.globl _TR2
                                    135 	.globl _C_T2
                                    136 	.globl _CP_RL2
                                    137 	.globl _T2CON_7
                                    138 	.globl _T2CON_6
                                    139 	.globl _T2CON_5
                                    140 	.globl _T2CON_4
                                    141 	.globl _T2CON_3
                                    142 	.globl _T2CON_2
                                    143 	.globl _T2CON_1
                                    144 	.globl _T2CON_0
                                    145 	.globl _PT2
                                    146 	.globl _ET2
                                    147 	.globl _TMOD
                                    148 	.globl _TL1
                                    149 	.globl _TL0
                                    150 	.globl _TH1
                                    151 	.globl _TH0
                                    152 	.globl _TCON
                                    153 	.globl _SP
                                    154 	.globl _SCON
                                    155 	.globl _SBUF0
                                    156 	.globl _SBUF
                                    157 	.globl _PSW
                                    158 	.globl _PCON
                                    159 	.globl _P3
                                    160 	.globl _P2
                                    161 	.globl _P1
                                    162 	.globl _P0
                                    163 	.globl _IP
                                    164 	.globl _IE
                                    165 	.globl _DP0L
                                    166 	.globl _DPL
                                    167 	.globl _DP0H
                                    168 	.globl _DPH
                                    169 	.globl _B
                                    170 	.globl _ACC
                                    171 	.globl _EECON
                                    172 	.globl _KBF
                                    173 	.globl _KBE
                                    174 	.globl _KBLS
                                    175 	.globl _BRL
                                    176 	.globl _BDRCON
                                    177 	.globl _T2MOD
                                    178 	.globl _SPDAT
                                    179 	.globl _SPSTA
                                    180 	.globl _SPCON
                                    181 	.globl _SADEN
                                    182 	.globl _SADDR
                                    183 	.globl _WDTPRG
                                    184 	.globl _WDTRST
                                    185 	.globl _P5
                                    186 	.globl _P4
                                    187 	.globl _IPH1
                                    188 	.globl _IPL1
                                    189 	.globl _IPH0
                                    190 	.globl _IPL0
                                    191 	.globl _IEN1
                                    192 	.globl _IEN0
                                    193 	.globl _CMOD
                                    194 	.globl _CL
                                    195 	.globl _CH
                                    196 	.globl _CCON
                                    197 	.globl _CCAPM4
                                    198 	.globl _CCAPM3
                                    199 	.globl _CCAPM2
                                    200 	.globl _CCAPM1
                                    201 	.globl _CCAPM0
                                    202 	.globl _CCAP4L
                                    203 	.globl _CCAP3L
                                    204 	.globl _CCAP2L
                                    205 	.globl _CCAP1L
                                    206 	.globl _CCAP0L
                                    207 	.globl _CCAP4H
                                    208 	.globl _CCAP3H
                                    209 	.globl _CCAP2H
                                    210 	.globl _CCAP1H
                                    211 	.globl _CCAP0H
                                    212 	.globl _CKCON1
                                    213 	.globl _CKCON0
                                    214 	.globl _CKRL
                                    215 	.globl _AUXR1
                                    216 	.globl _AUXR
                                    217 	.globl _TH2
                                    218 	.globl _TL2
                                    219 	.globl _RCAP2H
                                    220 	.globl _RCAP2L
                                    221 	.globl _T2CON
                                    222 	.globl _LED_Fast_Blink
                                    223 	.globl _LED_Slow_Blink
                                    224 	.globl _LED_On
                                    225 	.globl _LED_Off
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           0000C8   231 _T2CON	=	0x00c8
                           0000CA   232 _RCAP2L	=	0x00ca
                           0000CB   233 _RCAP2H	=	0x00cb
                           0000CC   234 _TL2	=	0x00cc
                           0000CD   235 _TH2	=	0x00cd
                           00008E   236 _AUXR	=	0x008e
                           0000A2   237 _AUXR1	=	0x00a2
                           000097   238 _CKRL	=	0x0097
                           00008F   239 _CKCON0	=	0x008f
                           0000AF   240 _CKCON1	=	0x00af
                           0000FA   241 _CCAP0H	=	0x00fa
                           0000FB   242 _CCAP1H	=	0x00fb
                           0000FC   243 _CCAP2H	=	0x00fc
                           0000FD   244 _CCAP3H	=	0x00fd
                           0000FE   245 _CCAP4H	=	0x00fe
                           0000EA   246 _CCAP0L	=	0x00ea
                           0000EB   247 _CCAP1L	=	0x00eb
                           0000EC   248 _CCAP2L	=	0x00ec
                           0000ED   249 _CCAP3L	=	0x00ed
                           0000EE   250 _CCAP4L	=	0x00ee
                           0000DA   251 _CCAPM0	=	0x00da
                           0000DB   252 _CCAPM1	=	0x00db
                           0000DC   253 _CCAPM2	=	0x00dc
                           0000DD   254 _CCAPM3	=	0x00dd
                           0000DE   255 _CCAPM4	=	0x00de
                           0000D8   256 _CCON	=	0x00d8
                           0000F9   257 _CH	=	0x00f9
                           0000E9   258 _CL	=	0x00e9
                           0000D9   259 _CMOD	=	0x00d9
                           0000A8   260 _IEN0	=	0x00a8
                           0000B1   261 _IEN1	=	0x00b1
                           0000B8   262 _IPL0	=	0x00b8
                           0000B7   263 _IPH0	=	0x00b7
                           0000B2   264 _IPL1	=	0x00b2
                           0000B3   265 _IPH1	=	0x00b3
                           0000C0   266 _P4	=	0x00c0
                           0000E8   267 _P5	=	0x00e8
                           0000A6   268 _WDTRST	=	0x00a6
                           0000A7   269 _WDTPRG	=	0x00a7
                           0000A9   270 _SADDR	=	0x00a9
                           0000B9   271 _SADEN	=	0x00b9
                           0000C3   272 _SPCON	=	0x00c3
                           0000C4   273 _SPSTA	=	0x00c4
                           0000C5   274 _SPDAT	=	0x00c5
                           0000C9   275 _T2MOD	=	0x00c9
                           00009B   276 _BDRCON	=	0x009b
                           00009A   277 _BRL	=	0x009a
                           00009C   278 _KBLS	=	0x009c
                           00009D   279 _KBE	=	0x009d
                           00009E   280 _KBF	=	0x009e
                           0000D2   281 _EECON	=	0x00d2
                           0000E0   282 _ACC	=	0x00e0
                           0000F0   283 _B	=	0x00f0
                           000083   284 _DPH	=	0x0083
                           000083   285 _DP0H	=	0x0083
                           000082   286 _DPL	=	0x0082
                           000082   287 _DP0L	=	0x0082
                           0000A8   288 _IE	=	0x00a8
                           0000B8   289 _IP	=	0x00b8
                           000080   290 _P0	=	0x0080
                           000090   291 _P1	=	0x0090
                           0000A0   292 _P2	=	0x00a0
                           0000B0   293 _P3	=	0x00b0
                           000087   294 _PCON	=	0x0087
                           0000D0   295 _PSW	=	0x00d0
                           000099   296 _SBUF	=	0x0099
                           000099   297 _SBUF0	=	0x0099
                           000098   298 _SCON	=	0x0098
                           000081   299 _SP	=	0x0081
                           000088   300 _TCON	=	0x0088
                           00008C   301 _TH0	=	0x008c
                           00008D   302 _TH1	=	0x008d
                           00008A   303 _TL0	=	0x008a
                           00008B   304 _TL1	=	0x008b
                           000089   305 _TMOD	=	0x0089
                                    306 ;--------------------------------------------------------
                                    307 ; special function bits
                                    308 ;--------------------------------------------------------
                                    309 	.area RSEG    (ABS,DATA)
      000000                        310 	.org 0x0000
                           0000AD   311 _ET2	=	0x00ad
                           0000BD   312 _PT2	=	0x00bd
                           0000C8   313 _T2CON_0	=	0x00c8
                           0000C9   314 _T2CON_1	=	0x00c9
                           0000CA   315 _T2CON_2	=	0x00ca
                           0000CB   316 _T2CON_3	=	0x00cb
                           0000CC   317 _T2CON_4	=	0x00cc
                           0000CD   318 _T2CON_5	=	0x00cd
                           0000CE   319 _T2CON_6	=	0x00ce
                           0000CF   320 _T2CON_7	=	0x00cf
                           0000C8   321 _CP_RL2	=	0x00c8
                           0000C9   322 _C_T2	=	0x00c9
                           0000CA   323 _TR2	=	0x00ca
                           0000CB   324 _EXEN2	=	0x00cb
                           0000CC   325 _TCLK	=	0x00cc
                           0000CD   326 _RCLK	=	0x00cd
                           0000CE   327 _EXF2	=	0x00ce
                           0000CF   328 _TF2	=	0x00cf
                           0000DF   329 _CF	=	0x00df
                           0000DE   330 _CR	=	0x00de
                           0000DC   331 _CCF4	=	0x00dc
                           0000DB   332 _CCF3	=	0x00db
                           0000DA   333 _CCF2	=	0x00da
                           0000D9   334 _CCF1	=	0x00d9
                           0000D8   335 _CCF0	=	0x00d8
                           0000AE   336 _EC	=	0x00ae
                           0000BE   337 _PPCL	=	0x00be
                           0000BD   338 _PT2L	=	0x00bd
                           0000BC   339 _PSL	=	0x00bc
                           0000BB   340 _PT1L	=	0x00bb
                           0000BA   341 _PX1L	=	0x00ba
                           0000B9   342 _PT0L	=	0x00b9
                           0000B8   343 _PX0L	=	0x00b8
                           0000C0   344 _P4_0	=	0x00c0
                           0000C1   345 _P4_1	=	0x00c1
                           0000C2   346 _P4_2	=	0x00c2
                           0000C3   347 _P4_3	=	0x00c3
                           0000C4   348 _P4_4	=	0x00c4
                           0000C5   349 _P4_5	=	0x00c5
                           0000C6   350 _P4_6	=	0x00c6
                           0000C7   351 _P4_7	=	0x00c7
                           0000E8   352 _P5_0	=	0x00e8
                           0000E9   353 _P5_1	=	0x00e9
                           0000EA   354 _P5_2	=	0x00ea
                           0000EB   355 _P5_3	=	0x00eb
                           0000EC   356 _P5_4	=	0x00ec
                           0000ED   357 _P5_5	=	0x00ed
                           0000EE   358 _P5_6	=	0x00ee
                           0000EF   359 _P5_7	=	0x00ef
                           0000F0   360 _BREG_F0	=	0x00f0
                           0000F1   361 _BREG_F1	=	0x00f1
                           0000F2   362 _BREG_F2	=	0x00f2
                           0000F3   363 _BREG_F3	=	0x00f3
                           0000F4   364 _BREG_F4	=	0x00f4
                           0000F5   365 _BREG_F5	=	0x00f5
                           0000F6   366 _BREG_F6	=	0x00f6
                           0000F7   367 _BREG_F7	=	0x00f7
                           0000A8   368 _EX0	=	0x00a8
                           0000A9   369 _ET0	=	0x00a9
                           0000AA   370 _EX1	=	0x00aa
                           0000AB   371 _ET1	=	0x00ab
                           0000AC   372 _ES	=	0x00ac
                           0000AF   373 _EA	=	0x00af
                           0000B8   374 _PX0	=	0x00b8
                           0000B9   375 _PT0	=	0x00b9
                           0000BA   376 _PX1	=	0x00ba
                           0000BB   377 _PT1	=	0x00bb
                           0000BC   378 _PS	=	0x00bc
                           000080   379 _P0_0	=	0x0080
                           000081   380 _P0_1	=	0x0081
                           000082   381 _P0_2	=	0x0082
                           000083   382 _P0_3	=	0x0083
                           000084   383 _P0_4	=	0x0084
                           000085   384 _P0_5	=	0x0085
                           000086   385 _P0_6	=	0x0086
                           000087   386 _P0_7	=	0x0087
                           000090   387 _P1_0	=	0x0090
                           000091   388 _P1_1	=	0x0091
                           000092   389 _P1_2	=	0x0092
                           000093   390 _P1_3	=	0x0093
                           000094   391 _P1_4	=	0x0094
                           000095   392 _P1_5	=	0x0095
                           000096   393 _P1_6	=	0x0096
                           000097   394 _P1_7	=	0x0097
                           0000A0   395 _P2_0	=	0x00a0
                           0000A1   396 _P2_1	=	0x00a1
                           0000A2   397 _P2_2	=	0x00a2
                           0000A3   398 _P2_3	=	0x00a3
                           0000A4   399 _P2_4	=	0x00a4
                           0000A5   400 _P2_5	=	0x00a5
                           0000A6   401 _P2_6	=	0x00a6
                           0000A7   402 _P2_7	=	0x00a7
                           0000B0   403 _P3_0	=	0x00b0
                           0000B1   404 _P3_1	=	0x00b1
                           0000B2   405 _P3_2	=	0x00b2
                           0000B3   406 _P3_3	=	0x00b3
                           0000B4   407 _P3_4	=	0x00b4
                           0000B5   408 _P3_5	=	0x00b5
                           0000B6   409 _P3_6	=	0x00b6
                           0000B7   410 _P3_7	=	0x00b7
                           0000B0   411 _RXD	=	0x00b0
                           0000B0   412 _RXD0	=	0x00b0
                           0000B1   413 _TXD	=	0x00b1
                           0000B1   414 _TXD0	=	0x00b1
                           0000B2   415 _INT0	=	0x00b2
                           0000B3   416 _INT1	=	0x00b3
                           0000B4   417 _T0	=	0x00b4
                           0000B5   418 _T1	=	0x00b5
                           0000B6   419 _WR	=	0x00b6
                           0000B7   420 _RD	=	0x00b7
                           0000D0   421 _P	=	0x00d0
                           0000D1   422 _F1	=	0x00d1
                           0000D2   423 _OV	=	0x00d2
                           0000D3   424 _RS0	=	0x00d3
                           0000D4   425 _RS1	=	0x00d4
                           0000D5   426 _F0	=	0x00d5
                           0000D6   427 _AC	=	0x00d6
                           0000D7   428 _CY	=	0x00d7
                           000098   429 _RI	=	0x0098
                           000099   430 _TI	=	0x0099
                           00009A   431 _RB8	=	0x009a
                           00009B   432 _TB8	=	0x009b
                           00009C   433 _REN	=	0x009c
                           00009D   434 _SM2	=	0x009d
                           00009E   435 _SM1	=	0x009e
                           00009F   436 _SM0	=	0x009f
                           000088   437 _IT0	=	0x0088
                           000089   438 _IE0	=	0x0089
                           00008A   439 _IT1	=	0x008a
                           00008B   440 _IE1	=	0x008b
                           00008C   441 _TR0	=	0x008c
                           00008D   442 _TF0	=	0x008d
                           00008E   443 _TR1	=	0x008e
                           00008F   444 _TF1	=	0x008f
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable register banks
                                    447 ;--------------------------------------------------------
                                    448 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        449 	.ds 8
                                    450 ;--------------------------------------------------------
                                    451 ; internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area DSEG    (DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable items in internal ram
                                    456 ;--------------------------------------------------------
                                    457 ;--------------------------------------------------------
                                    458 ; indirectly addressable internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area ISEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; absolute internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area IABS    (ABS,DATA)
                                    465 	.area IABS    (ABS,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; bit data
                                    468 ;--------------------------------------------------------
                                    469 	.area BSEG    (BIT)
                                    470 ;--------------------------------------------------------
                                    471 ; paged external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area PSEG    (PAG,XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; uninitialized external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XSEG    (XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; absolute external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XABS    (ABS,XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; initialized external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XISEG   (XDATA)
                                    486 	.area HOME    (CODE)
                                    487 	.area GSINIT0 (CODE)
                                    488 	.area GSINIT1 (CODE)
                                    489 	.area GSINIT2 (CODE)
                                    490 	.area GSINIT3 (CODE)
                                    491 	.area GSINIT4 (CODE)
                                    492 	.area GSINIT5 (CODE)
                                    493 	.area GSINIT  (CODE)
                                    494 	.area GSFINAL (CODE)
                                    495 	.area CSEG    (CODE)
                                    496 ;--------------------------------------------------------
                                    497 ; global & static initialisations
                                    498 ;--------------------------------------------------------
                                    499 	.area HOME    (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.area GSFINAL (CODE)
                                    502 	.area GSINIT  (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; Home
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
                                    507 	.area HOME    (CODE)
                                    508 ;--------------------------------------------------------
                                    509 ; code
                                    510 ;--------------------------------------------------------
                                    511 	.area CSEG    (CODE)
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'LED_Fast_Blink'
                                    514 ;------------------------------------------------------------
                                    515 ;	Operations.c:4: void LED_Fast_Blink(void)
                                    516 ;	-----------------------------------------
                                    517 ;	 function LED_Fast_Blink
                                    518 ;	-----------------------------------------
      002082                        519 _LED_Fast_Blink:
                           000007   520 	ar7 = 0x07
                           000006   521 	ar6 = 0x06
                           000005   522 	ar5 = 0x05
                           000004   523 	ar4 = 0x04
                           000003   524 	ar3 = 0x03
                           000002   525 	ar2 = 0x02
                           000001   526 	ar1 = 0x01
                           000000   527 	ar0 = 0x00
                                    528 ;	Operations.c:6: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);     //Write to the ECON1 register
      002082 75 82 5F         [24]  529 	mov	dpl, #0x5f
      002085 12 21 26         [24]  530 	lcall	_SPI_send
                                    531 ;	Operations.c:7: SPI_send(ENC_REGISTER_BANK_2);                          //Select register bank2
      002088 75 82 02         [24]  532 	mov	dpl, #0x02
      00208B 12 21 26         [24]  533 	lcall	_SPI_send
                                    534 ;	Operations.c:9: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIREGADR);  //Select the MIREGADR register
      00208E 75 82 54         [24]  535 	mov	dpl, #0x54
      002091 12 21 26         [24]  536 	lcall	_SPI_send
                                    537 ;	Operations.c:10: SPI_send(ENC_PHLCON);                                   //Write the address of the PHY register in the MIREGADR register
      002094 75 82 14         [24]  538 	mov	dpl, #0x14
      002097 12 21 26         [24]  539 	lcall	_SPI_send
                                    540 ;	Operations.c:12: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIWRL);
      00209A 75 82 56         [24]  541 	mov	dpl, #0x56
      00209D 12 21 26         [24]  542 	lcall	_SPI_send
                                    543 ;	Operations.c:13: SPI_send(LED_FAST_BLINK_LSB);
      0020A0 75 82 00         [24]  544 	mov	dpl, #0x00
      0020A3 12 21 26         [24]  545 	lcall	_SPI_send
                                    546 ;	Operations.c:14: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIWRH);
      0020A6 75 82 57         [24]  547 	mov	dpl, #0x57
      0020A9 12 21 26         [24]  548 	lcall	_SPI_send
                                    549 ;	Operations.c:15: SPI_send(LED_FAST_BLINK_MSB);
      0020AC 75 82 0A         [24]  550 	mov	dpl, #0x0a
                                    551 ;	Operations.c:17: }
      0020AF 02 21 26         [24]  552 	ljmp	_SPI_send
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'LED_Slow_Blink'
                                    555 ;------------------------------------------------------------
                                    556 ;	Operations.c:19: void LED_Slow_Blink(void)
                                    557 ;	-----------------------------------------
                                    558 ;	 function LED_Slow_Blink
                                    559 ;	-----------------------------------------
      0020B2                        560 _LED_Slow_Blink:
                                    561 ;	Operations.c:22: }
      0020B2 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'LED_On'
                                    565 ;------------------------------------------------------------
                                    566 ;	Operations.c:24: void LED_On(void)
                                    567 ;	-----------------------------------------
                                    568 ;	 function LED_On
                                    569 ;	-----------------------------------------
      0020B3                        570 _LED_On:
                                    571 ;	Operations.c:26: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_ECON1);     //Write to the ECON1 register
      0020B3 75 82 5F         [24]  572 	mov	dpl, #0x5f
      0020B6 12 21 26         [24]  573 	lcall	_SPI_send
                                    574 ;	Operations.c:27: delay_us(10);
      0020B9 90 00 0A         [24]  575 	mov	dptr,#0x000a
      0020BC 12 22 BF         [24]  576 	lcall	_delay_us
                                    577 ;	Operations.c:28: SPI_send(ENC_REGISTER_BANK_2);                          //Select register bank2
      0020BF 75 82 02         [24]  578 	mov	dpl, #0x02
      0020C2 12 21 26         [24]  579 	lcall	_SPI_send
                                    580 ;	Operations.c:29: delay_us(10);
      0020C5 90 00 0A         [24]  581 	mov	dptr,#0x000a
      0020C8 12 22 BF         [24]  582 	lcall	_delay_us
                                    583 ;	Operations.c:31: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIREGADR);  //Select the MIREGADR register
      0020CB 75 82 54         [24]  584 	mov	dpl, #0x54
      0020CE 12 21 26         [24]  585 	lcall	_SPI_send
                                    586 ;	Operations.c:32: delay_us(10);
      0020D1 90 00 0A         [24]  587 	mov	dptr,#0x000a
      0020D4 12 22 BF         [24]  588 	lcall	_delay_us
                                    589 ;	Operations.c:33: SPI_send(ENC_PHLCON);                                   //Write the address of the PHY register in the MIREGADR register
      0020D7 75 82 14         [24]  590 	mov	dpl, #0x14
      0020DA 12 21 26         [24]  591 	lcall	_SPI_send
                                    592 ;	Operations.c:34: delay_us(10);
      0020DD 90 00 0A         [24]  593 	mov	dptr,#0x000a
      0020E0 12 22 BF         [24]  594 	lcall	_delay_us
                                    595 ;	Operations.c:36: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIWRL);
      0020E3 75 82 56         [24]  596 	mov	dpl, #0x56
      0020E6 12 21 26         [24]  597 	lcall	_SPI_send
                                    598 ;	Operations.c:37: delay_us(10);
      0020E9 90 00 0A         [24]  599 	mov	dptr,#0x000a
      0020EC 12 22 BF         [24]  600 	lcall	_delay_us
                                    601 ;	Operations.c:38: SPI_send(LED_ON_LSB);
      0020EF 75 82 00         [24]  602 	mov	dpl, #0x00
      0020F2 12 21 26         [24]  603 	lcall	_SPI_send
                                    604 ;	Operations.c:39: delay_us(10);
      0020F5 90 00 0A         [24]  605 	mov	dptr,#0x000a
      0020F8 12 22 BF         [24]  606 	lcall	_delay_us
                                    607 ;	Operations.c:40: SPI_send(ENC_WRITE_CONTROL_REG_OPCODE | ENC_MIWRH);
      0020FB 75 82 57         [24]  608 	mov	dpl, #0x57
      0020FE 12 21 26         [24]  609 	lcall	_SPI_send
                                    610 ;	Operations.c:41: delay_us(10);
      002101 90 00 0A         [24]  611 	mov	dptr,#0x000a
      002104 12 22 BF         [24]  612 	lcall	_delay_us
                                    613 ;	Operations.c:42: SPI_send(LED_ON_MSB);
      002107 75 82 08         [24]  614 	mov	dpl, #0x08
                                    615 ;	Operations.c:44: }
      00210A 02 21 26         [24]  616 	ljmp	_SPI_send
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'LED_Off'
                                    619 ;------------------------------------------------------------
                                    620 ;	Operations.c:46: void LED_Off(void)
                                    621 ;	-----------------------------------------
                                    622 ;	 function LED_Off
                                    623 ;	-----------------------------------------
      00210D                        624 _LED_Off:
                                    625 ;	Operations.c:49: }
      00210D 22               [24]  626 	ret
                                    627 	.area CSEG    (CODE)
                                    628 	.area CONST   (CODE)
                                    629 	.area XINIT   (CODE)
                                    630 	.area CABS    (ABS,CODE)

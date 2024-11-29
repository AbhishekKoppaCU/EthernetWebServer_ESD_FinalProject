                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _get_user_buffer_size
                                     13 	.globl _hex_to_int
                                     14 	.globl _LED_On
                                     15 	.globl _test_read_ctrl
                                     16 	.globl _delay_us
                                     17 	.globl _SPI_send
                                     18 	.globl _configure_SPI
                                     19 	.globl _printf_tiny
                                     20 	.globl _putchar
                                     21 	.globl _getchar
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
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           0000C8   237 _T2CON	=	0x00c8
                           0000CA   238 _RCAP2L	=	0x00ca
                           0000CB   239 _RCAP2H	=	0x00cb
                           0000CC   240 _TL2	=	0x00cc
                           0000CD   241 _TH2	=	0x00cd
                           00008E   242 _AUXR	=	0x008e
                           0000A2   243 _AUXR1	=	0x00a2
                           000097   244 _CKRL	=	0x0097
                           00008F   245 _CKCON0	=	0x008f
                           0000AF   246 _CKCON1	=	0x00af
                           0000FA   247 _CCAP0H	=	0x00fa
                           0000FB   248 _CCAP1H	=	0x00fb
                           0000FC   249 _CCAP2H	=	0x00fc
                           0000FD   250 _CCAP3H	=	0x00fd
                           0000FE   251 _CCAP4H	=	0x00fe
                           0000EA   252 _CCAP0L	=	0x00ea
                           0000EB   253 _CCAP1L	=	0x00eb
                           0000EC   254 _CCAP2L	=	0x00ec
                           0000ED   255 _CCAP3L	=	0x00ed
                           0000EE   256 _CCAP4L	=	0x00ee
                           0000DA   257 _CCAPM0	=	0x00da
                           0000DB   258 _CCAPM1	=	0x00db
                           0000DC   259 _CCAPM2	=	0x00dc
                           0000DD   260 _CCAPM3	=	0x00dd
                           0000DE   261 _CCAPM4	=	0x00de
                           0000D8   262 _CCON	=	0x00d8
                           0000F9   263 _CH	=	0x00f9
                           0000E9   264 _CL	=	0x00e9
                           0000D9   265 _CMOD	=	0x00d9
                           0000A8   266 _IEN0	=	0x00a8
                           0000B1   267 _IEN1	=	0x00b1
                           0000B8   268 _IPL0	=	0x00b8
                           0000B7   269 _IPH0	=	0x00b7
                           0000B2   270 _IPL1	=	0x00b2
                           0000B3   271 _IPH1	=	0x00b3
                           0000C0   272 _P4	=	0x00c0
                           0000E8   273 _P5	=	0x00e8
                           0000A6   274 _WDTRST	=	0x00a6
                           0000A7   275 _WDTPRG	=	0x00a7
                           0000A9   276 _SADDR	=	0x00a9
                           0000B9   277 _SADEN	=	0x00b9
                           0000C3   278 _SPCON	=	0x00c3
                           0000C4   279 _SPSTA	=	0x00c4
                           0000C5   280 _SPDAT	=	0x00c5
                           0000C9   281 _T2MOD	=	0x00c9
                           00009B   282 _BDRCON	=	0x009b
                           00009A   283 _BRL	=	0x009a
                           00009C   284 _KBLS	=	0x009c
                           00009D   285 _KBE	=	0x009d
                           00009E   286 _KBF	=	0x009e
                           0000D2   287 _EECON	=	0x00d2
                           0000E0   288 _ACC	=	0x00e0
                           0000F0   289 _B	=	0x00f0
                           000083   290 _DPH	=	0x0083
                           000083   291 _DP0H	=	0x0083
                           000082   292 _DPL	=	0x0082
                           000082   293 _DP0L	=	0x0082
                           0000A8   294 _IE	=	0x00a8
                           0000B8   295 _IP	=	0x00b8
                           000080   296 _P0	=	0x0080
                           000090   297 _P1	=	0x0090
                           0000A0   298 _P2	=	0x00a0
                           0000B0   299 _P3	=	0x00b0
                           000087   300 _PCON	=	0x0087
                           0000D0   301 _PSW	=	0x00d0
                           000099   302 _SBUF	=	0x0099
                           000099   303 _SBUF0	=	0x0099
                           000098   304 _SCON	=	0x0098
                           000081   305 _SP	=	0x0081
                           000088   306 _TCON	=	0x0088
                           00008C   307 _TH0	=	0x008c
                           00008D   308 _TH1	=	0x008d
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           000089   311 _TMOD	=	0x0089
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           0000AD   317 _ET2	=	0x00ad
                           0000BD   318 _PT2	=	0x00bd
                           0000C8   319 _T2CON_0	=	0x00c8
                           0000C9   320 _T2CON_1	=	0x00c9
                           0000CA   321 _T2CON_2	=	0x00ca
                           0000CB   322 _T2CON_3	=	0x00cb
                           0000CC   323 _T2CON_4	=	0x00cc
                           0000CD   324 _T2CON_5	=	0x00cd
                           0000CE   325 _T2CON_6	=	0x00ce
                           0000CF   326 _T2CON_7	=	0x00cf
                           0000C8   327 _CP_RL2	=	0x00c8
                           0000C9   328 _C_T2	=	0x00c9
                           0000CA   329 _TR2	=	0x00ca
                           0000CB   330 _EXEN2	=	0x00cb
                           0000CC   331 _TCLK	=	0x00cc
                           0000CD   332 _RCLK	=	0x00cd
                           0000CE   333 _EXF2	=	0x00ce
                           0000CF   334 _TF2	=	0x00cf
                           0000DF   335 _CF	=	0x00df
                           0000DE   336 _CR	=	0x00de
                           0000DC   337 _CCF4	=	0x00dc
                           0000DB   338 _CCF3	=	0x00db
                           0000DA   339 _CCF2	=	0x00da
                           0000D9   340 _CCF1	=	0x00d9
                           0000D8   341 _CCF0	=	0x00d8
                           0000AE   342 _EC	=	0x00ae
                           0000BE   343 _PPCL	=	0x00be
                           0000BD   344 _PT2L	=	0x00bd
                           0000BC   345 _PSL	=	0x00bc
                           0000BB   346 _PT1L	=	0x00bb
                           0000BA   347 _PX1L	=	0x00ba
                           0000B9   348 _PT0L	=	0x00b9
                           0000B8   349 _PX0L	=	0x00b8
                           0000C0   350 _P4_0	=	0x00c0
                           0000C1   351 _P4_1	=	0x00c1
                           0000C2   352 _P4_2	=	0x00c2
                           0000C3   353 _P4_3	=	0x00c3
                           0000C4   354 _P4_4	=	0x00c4
                           0000C5   355 _P4_5	=	0x00c5
                           0000C6   356 _P4_6	=	0x00c6
                           0000C7   357 _P4_7	=	0x00c7
                           0000E8   358 _P5_0	=	0x00e8
                           0000E9   359 _P5_1	=	0x00e9
                           0000EA   360 _P5_2	=	0x00ea
                           0000EB   361 _P5_3	=	0x00eb
                           0000EC   362 _P5_4	=	0x00ec
                           0000ED   363 _P5_5	=	0x00ed
                           0000EE   364 _P5_6	=	0x00ee
                           0000EF   365 _P5_7	=	0x00ef
                           0000F0   366 _BREG_F0	=	0x00f0
                           0000F1   367 _BREG_F1	=	0x00f1
                           0000F2   368 _BREG_F2	=	0x00f2
                           0000F3   369 _BREG_F3	=	0x00f3
                           0000F4   370 _BREG_F4	=	0x00f4
                           0000F5   371 _BREG_F5	=	0x00f5
                           0000F6   372 _BREG_F6	=	0x00f6
                           0000F7   373 _BREG_F7	=	0x00f7
                           0000A8   374 _EX0	=	0x00a8
                           0000A9   375 _ET0	=	0x00a9
                           0000AA   376 _EX1	=	0x00aa
                           0000AB   377 _ET1	=	0x00ab
                           0000AC   378 _ES	=	0x00ac
                           0000AF   379 _EA	=	0x00af
                           0000B8   380 _PX0	=	0x00b8
                           0000B9   381 _PT0	=	0x00b9
                           0000BA   382 _PX1	=	0x00ba
                           0000BB   383 _PT1	=	0x00bb
                           0000BC   384 _PS	=	0x00bc
                           000080   385 _P0_0	=	0x0080
                           000081   386 _P0_1	=	0x0081
                           000082   387 _P0_2	=	0x0082
                           000083   388 _P0_3	=	0x0083
                           000084   389 _P0_4	=	0x0084
                           000085   390 _P0_5	=	0x0085
                           000086   391 _P0_6	=	0x0086
                           000087   392 _P0_7	=	0x0087
                           000090   393 _P1_0	=	0x0090
                           000091   394 _P1_1	=	0x0091
                           000092   395 _P1_2	=	0x0092
                           000093   396 _P1_3	=	0x0093
                           000094   397 _P1_4	=	0x0094
                           000095   398 _P1_5	=	0x0095
                           000096   399 _P1_6	=	0x0096
                           000097   400 _P1_7	=	0x0097
                           0000A0   401 _P2_0	=	0x00a0
                           0000A1   402 _P2_1	=	0x00a1
                           0000A2   403 _P2_2	=	0x00a2
                           0000A3   404 _P2_3	=	0x00a3
                           0000A4   405 _P2_4	=	0x00a4
                           0000A5   406 _P2_5	=	0x00a5
                           0000A6   407 _P2_6	=	0x00a6
                           0000A7   408 _P2_7	=	0x00a7
                           0000B0   409 _P3_0	=	0x00b0
                           0000B1   410 _P3_1	=	0x00b1
                           0000B2   411 _P3_2	=	0x00b2
                           0000B3   412 _P3_3	=	0x00b3
                           0000B4   413 _P3_4	=	0x00b4
                           0000B5   414 _P3_5	=	0x00b5
                           0000B6   415 _P3_6	=	0x00b6
                           0000B7   416 _P3_7	=	0x00b7
                           0000B0   417 _RXD	=	0x00b0
                           0000B0   418 _RXD0	=	0x00b0
                           0000B1   419 _TXD	=	0x00b1
                           0000B1   420 _TXD0	=	0x00b1
                           0000B2   421 _INT0	=	0x00b2
                           0000B3   422 _INT1	=	0x00b3
                           0000B4   423 _T0	=	0x00b4
                           0000B5   424 _T1	=	0x00b5
                           0000B6   425 _WR	=	0x00b6
                           0000B7   426 _RD	=	0x00b7
                           0000D0   427 _P	=	0x00d0
                           0000D1   428 _F1	=	0x00d1
                           0000D2   429 _OV	=	0x00d2
                           0000D3   430 _RS0	=	0x00d3
                           0000D4   431 _RS1	=	0x00d4
                           0000D5   432 _F0	=	0x00d5
                           0000D6   433 _AC	=	0x00d6
                           0000D7   434 _CY	=	0x00d7
                           000098   435 _RI	=	0x0098
                           000099   436 _TI	=	0x0099
                           00009A   437 _RB8	=	0x009a
                           00009B   438 _TB8	=	0x009b
                           00009C   439 _REN	=	0x009c
                           00009D   440 _SM2	=	0x009d
                           00009E   441 _SM1	=	0x009e
                           00009F   442 _SM0	=	0x009f
                           000088   443 _IT0	=	0x0088
                           000089   444 _IE0	=	0x0089
                           00008A   445 _IT1	=	0x008a
                           00008B   446 _IE1	=	0x008b
                           00008C   447 _TR0	=	0x008c
                           00008D   448 _TF0	=	0x008d
                           00008E   449 _TR1	=	0x008e
                           00008F   450 _TF1	=	0x008f
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable register banks
                                    453 ;--------------------------------------------------------
                                    454 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        455 	.ds 8
                                    456 ;--------------------------------------------------------
                                    457 ; internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area DSEG    (DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable items in internal ram
                                    462 ;--------------------------------------------------------
                                    463 	.area	OSEG    (OVR,DATA)
      000013                        464 _hex_to_int_sloc0_1_0:
      000013                        465 	.ds 3
      000016                        466 _hex_to_int_sloc1_1_0:
      000016                        467 	.ds 1
      000017                        468 _hex_to_int_sloc2_1_0:
      000017                        469 	.ds 2
                                    470 ;--------------------------------------------------------
                                    471 ; Stack segment in internal ram
                                    472 ;--------------------------------------------------------
                                    473 	.area SSEG
      000019                        474 __start__stack:
      000019                        475 	.ds	1
                                    476 
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area IABS    (ABS,DATA)
                                    485 	.area IABS    (ABS,DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; bit data
                                    488 ;--------------------------------------------------------
                                    489 	.area BSEG    (BIT)
                                    490 ;--------------------------------------------------------
                                    491 ; paged external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area PSEG    (PAG,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; uninitialized external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XSEG    (XDATA)
      000100                        498 _hex_to_int_str_10000_58:
      000100                        499 	.ds 3
      000103                        500 _hex_to_int_result_10000_59:
      000103                        501 	.ds 2
      000105                        502 _hex_to_int_ASCII_20000_60:
      000105                        503 	.ds 2
      000107                        504 _get_user_buffer_size_input_10000_65:
      000107                        505 	.ds 10
                                    506 ;--------------------------------------------------------
                                    507 ; absolute external ram data
                                    508 ;--------------------------------------------------------
                                    509 	.area XABS    (ABS,XDATA)
                                    510 ;--------------------------------------------------------
                                    511 ; initialized external ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XISEG   (XDATA)
                                    514 	.area HOME    (CODE)
                                    515 	.area GSINIT0 (CODE)
                                    516 	.area GSINIT1 (CODE)
                                    517 	.area GSINIT2 (CODE)
                                    518 	.area GSINIT3 (CODE)
                                    519 	.area GSINIT4 (CODE)
                                    520 	.area GSINIT5 (CODE)
                                    521 	.area GSINIT  (CODE)
                                    522 	.area GSFINAL (CODE)
                                    523 	.area CSEG    (CODE)
                                    524 ;--------------------------------------------------------
                                    525 ; interrupt vector
                                    526 ;--------------------------------------------------------
                                    527 	.area HOME    (CODE)
      002000                        528 __interrupt_vect:
      002000 02 20 06         [24]  529 	ljmp	__sdcc_gsinit_startup
                                    530 ;--------------------------------------------------------
                                    531 ; global & static initialisations
                                    532 ;--------------------------------------------------------
                                    533 	.area HOME    (CODE)
                                    534 	.area GSINIT  (CODE)
                                    535 	.area GSFINAL (CODE)
                                    536 	.area GSINIT  (CODE)
                                    537 	.globl __sdcc_gsinit_startup
                                    538 	.globl __sdcc_program_startup
                                    539 	.globl __start__stack
                                    540 	.globl __mcs51_genXINIT
                                    541 	.globl __mcs51_genXRAMCLEAR
                                    542 	.globl __mcs51_genRAMCLEAR
                                    543 	.area GSFINAL (CODE)
      00205F 02 20 03         [24]  544 	ljmp	__sdcc_program_startup
                                    545 ;--------------------------------------------------------
                                    546 ; Home
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area HOME    (CODE)
      002003                        550 __sdcc_program_startup:
      002003 02 22 A0         [24]  551 	ljmp	_main
                                    552 ;	return from main will return to caller
                                    553 ;--------------------------------------------------------
                                    554 ; code
                                    555 ;--------------------------------------------------------
                                    556 	.area CSEG    (CODE)
                                    557 ;------------------------------------------------------------
                                    558 ;Allocation info for local variables in function 'hex_to_int'
                                    559 ;------------------------------------------------------------
                                    560 ;str                       Allocated with name '_hex_to_int_str_10000_58'
                                    561 ;i                         Allocated with name '_hex_to_int_i_10000_59'
                                    562 ;result                    Allocated with name '_hex_to_int_result_10000_59'
                                    563 ;ASCII                     Allocated with name '_hex_to_int_ASCII_20000_60'
                                    564 ;sloc0                     Allocated with name '_hex_to_int_sloc0_1_0'
                                    565 ;sloc1                     Allocated with name '_hex_to_int_sloc1_1_0'
                                    566 ;sloc2                     Allocated with name '_hex_to_int_sloc2_1_0'
                                    567 ;------------------------------------------------------------
                                    568 ;	main.c:8: int hex_to_int(char* str)
                                    569 ;	-----------------------------------------
                                    570 ;	 function hex_to_int
                                    571 ;	-----------------------------------------
      002062                        572 _hex_to_int:
                           000007   573 	ar7 = 0x07
                           000006   574 	ar6 = 0x06
                           000005   575 	ar5 = 0x05
                           000004   576 	ar4 = 0x04
                           000003   577 	ar3 = 0x03
                           000002   578 	ar2 = 0x02
                           000001   579 	ar1 = 0x01
                           000000   580 	ar0 = 0x00
      002062 AF F0            [24]  581 	mov	r7,b
      002064 AE 83            [24]  582 	mov	r6,dph
      002066 E5 82            [12]  583 	mov	a,dpl
      002068 90 01 00         [24]  584 	mov	dptr,#_hex_to_int_str_10000_58
      00206B F0               [24]  585 	movx	@dptr,a
      00206C EE               [12]  586 	mov	a,r6
      00206D A3               [24]  587 	inc	dptr
      00206E F0               [24]  588 	movx	@dptr,a
      00206F EF               [12]  589 	mov	a,r7
      002070 A3               [24]  590 	inc	dptr
      002071 F0               [24]  591 	movx	@dptr,a
                                    592 ;	main.c:11: int i = 0, result = 0;
      002072 90 01 03         [24]  593 	mov	dptr,#_hex_to_int_result_10000_59
      002075 E4               [12]  594 	clr	a
      002076 F0               [24]  595 	movx	@dptr,a
      002077 A3               [24]  596 	inc	dptr
      002078 F0               [24]  597 	movx	@dptr,a
                                    598 ;	main.c:12: while(str[i] != '\0')
      002079 90 01 00         [24]  599 	mov	dptr,#_hex_to_int_str_10000_58
      00207C E0               [24]  600 	movx	a,@dptr
      00207D FD               [12]  601 	mov	r5,a
      00207E A3               [24]  602 	inc	dptr
      00207F E0               [24]  603 	movx	a,@dptr
      002080 FE               [12]  604 	mov	r6,a
      002081 A3               [24]  605 	inc	dptr
      002082 E0               [24]  606 	movx	a,@dptr
      002083 FF               [12]  607 	mov	r7,a
      002084 8D 02            [24]  608 	mov	ar2,r5
      002086 8E 03            [24]  609 	mov	ar3,r6
      002088 8F 04            [24]  610 	mov	ar4,r7
      00208A 8D 13            [24]  611 	mov	_hex_to_int_sloc0_1_0,r5
      00208C 8E 14            [24]  612 	mov	(_hex_to_int_sloc0_1_0 + 1),r6
      00208E 8F 15            [24]  613 	mov	(_hex_to_int_sloc0_1_0 + 2),r7
      002090 78 00            [12]  614 	mov	r0,#0x00
      002092 79 00            [12]  615 	mov	r1,#0x00
      002094                        616 00112$:
      002094 C0 02            [24]  617 	push	ar2
      002096 C0 03            [24]  618 	push	ar3
      002098 C0 04            [24]  619 	push	ar4
      00209A E8               [12]  620 	mov	a,r0
      00209B 25 13            [12]  621 	add	a, _hex_to_int_sloc0_1_0
      00209D FA               [12]  622 	mov	r2,a
      00209E E9               [12]  623 	mov	a,r1
      00209F 35 14            [12]  624 	addc	a, (_hex_to_int_sloc0_1_0 + 1)
      0020A1 FB               [12]  625 	mov	r3,a
      0020A2 AC 15            [24]  626 	mov	r4,(_hex_to_int_sloc0_1_0 + 2)
      0020A4 8A 82            [24]  627 	mov	dpl,r2
      0020A6 8B 83            [24]  628 	mov	dph,r3
      0020A8 8C F0            [24]  629 	mov	b,r4
      0020AA 12 31 88         [24]  630 	lcall	__gptrget
      0020AD F5 16            [12]  631 	mov	_hex_to_int_sloc1_1_0,a
      0020AF D0 04            [24]  632 	pop	ar4
      0020B1 D0 03            [24]  633 	pop	ar3
      0020B3 D0 02            [24]  634 	pop	ar2
      0020B5 E5 16            [12]  635 	mov	a,_hex_to_int_sloc1_1_0
      0020B7 70 03            [24]  636 	jnz	00166$
      0020B9 02 22 10         [24]  637 	ljmp	00114$
      0020BC                        638 00166$:
                                    639 ;	main.c:14: int ASCII = (int)str[i];
      0020BC C0 02            [24]  640 	push	ar2
      0020BE C0 03            [24]  641 	push	ar3
      0020C0 C0 04            [24]  642 	push	ar4
      0020C2 85 16 17         [24]  643 	mov	_hex_to_int_sloc2_1_0,_hex_to_int_sloc1_1_0
      0020C5 75 18 00         [24]  644 	mov	(_hex_to_int_sloc2_1_0 + 1),#0x00
      0020C8 90 01 05         [24]  645 	mov	dptr,#_hex_to_int_ASCII_20000_60
      0020CB E5 17            [12]  646 	mov	a,_hex_to_int_sloc2_1_0
      0020CD F0               [24]  647 	movx	@dptr,a
      0020CE E5 18            [12]  648 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0020D0 A3               [24]  649 	inc	dptr
      0020D1 F0               [24]  650 	movx	@dptr,a
                                    651 ;	main.c:15: result *= 16;
      0020D2 90 01 03         [24]  652 	mov	dptr,#_hex_to_int_result_10000_59
      0020D5 E0               [24]  653 	movx	a,@dptr
      0020D6 FB               [12]  654 	mov	r3,a
      0020D7 A3               [24]  655 	inc	dptr
      0020D8 E0               [24]  656 	movx	a,@dptr
      0020D9 C4               [12]  657 	swap	a
      0020DA 54 F0            [12]  658 	anl	a,#0xf0
      0020DC CB               [12]  659 	xch	a,r3
      0020DD C4               [12]  660 	swap	a
      0020DE CB               [12]  661 	xch	a,r3
      0020DF 6B               [12]  662 	xrl	a,r3
      0020E0 CB               [12]  663 	xch	a,r3
      0020E1 54 F0            [12]  664 	anl	a,#0xf0
      0020E3 CB               [12]  665 	xch	a,r3
      0020E4 6B               [12]  666 	xrl	a,r3
      0020E5 FC               [12]  667 	mov	r4,a
      0020E6 90 01 03         [24]  668 	mov	dptr,#_hex_to_int_result_10000_59
      0020E9 EB               [12]  669 	mov	a,r3
      0020EA F0               [24]  670 	movx	@dptr,a
      0020EB EC               [12]  671 	mov	a,r4
      0020EC A3               [24]  672 	inc	dptr
      0020ED F0               [24]  673 	movx	@dptr,a
                                    674 ;	main.c:16: if(ASCII >= '0' && ASCII <= '9')
      0020EE C3               [12]  675 	clr	c
      0020EF E5 17            [12]  676 	mov	a,_hex_to_int_sloc2_1_0
      0020F1 94 30            [12]  677 	subb	a,#0x30
      0020F3 E5 18            [12]  678 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0020F5 64 80            [12]  679 	xrl	a,#0x80
      0020F7 94 80            [12]  680 	subb	a,#0x80
      0020F9 D0 04            [24]  681 	pop	ar4
      0020FB D0 03            [24]  682 	pop	ar3
      0020FD D0 02            [24]  683 	pop	ar2
      0020FF 40 3F            [24]  684 	jc	00109$
      002101 74 39            [12]  685 	mov	a,#0x39
      002103 95 17            [12]  686 	subb	a,_hex_to_int_sloc2_1_0
      002105 74 80            [12]  687 	mov	a,#(0x00 ^ 0x80)
      002107 85 18 F0         [24]  688 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      00210A 63 F0 80         [24]  689 	xrl	b,#0x80
      00210D 95 F0            [12]  690 	subb	a,b
      00210F 40 2F            [24]  691 	jc	00109$
                                    692 ;	main.c:18: result += str[i] - 48;
      002111 C0 02            [24]  693 	push	ar2
      002113 C0 03            [24]  694 	push	ar3
      002115 C0 04            [24]  695 	push	ar4
      002117 E5 17            [12]  696 	mov	a,_hex_to_int_sloc2_1_0
      002119 24 D0            [12]  697 	add	a,#0xd0
      00211B F5 17            [12]  698 	mov	_hex_to_int_sloc2_1_0,a
      00211D E5 18            [12]  699 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00211F 34 FF            [12]  700 	addc	a,#0xff
      002121 F5 18            [12]  701 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002123 90 01 03         [24]  702 	mov	dptr,#_hex_to_int_result_10000_59
      002126 E0               [24]  703 	movx	a,@dptr
      002127 FA               [12]  704 	mov	r2,a
      002128 A3               [24]  705 	inc	dptr
      002129 E0               [24]  706 	movx	a,@dptr
      00212A FC               [12]  707 	mov	r4,a
      00212B 90 01 03         [24]  708 	mov	dptr,#_hex_to_int_result_10000_59
      00212E E5 17            [12]  709 	mov	a,_hex_to_int_sloc2_1_0
      002130 2A               [12]  710 	add	a, r2
      002131 F0               [24]  711 	movx	@dptr,a
      002132 E5 18            [12]  712 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002134 3C               [12]  713 	addc	a, r4
      002135 A3               [24]  714 	inc	dptr
      002136 F0               [24]  715 	movx	@dptr,a
      002137 D0 04            [24]  716 	pop	ar4
      002139 D0 03            [24]  717 	pop	ar3
      00213B D0 02            [24]  718 	pop	ar2
      00213D 02 22 08         [24]  719 	ljmp	00110$
      002140                        720 00109$:
                                    721 ;	main.c:20: else if(ASCII >= 'A' && ASCII <= 'F')
      002140 90 01 05         [24]  722 	mov	dptr,#_hex_to_int_ASCII_20000_60
      002143 E0               [24]  723 	movx	a,@dptr
      002144 F5 17            [12]  724 	mov	_hex_to_int_sloc2_1_0,a
      002146 A3               [24]  725 	inc	dptr
      002147 E0               [24]  726 	movx	a,@dptr
      002148 F5 18            [12]  727 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      00214A C3               [12]  728 	clr	c
      00214B E5 17            [12]  729 	mov	a,_hex_to_int_sloc2_1_0
      00214D 94 41            [12]  730 	subb	a,#0x41
      00214F E5 18            [12]  731 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      002151 64 80            [12]  732 	xrl	a,#0x80
      002153 94 80            [12]  733 	subb	a,#0x80
      002155 40 4E            [24]  734 	jc	00105$
      002157 74 46            [12]  735 	mov	a,#0x46
      002159 95 17            [12]  736 	subb	a,_hex_to_int_sloc2_1_0
      00215B 74 80            [12]  737 	mov	a,#(0x00 ^ 0x80)
      00215D 85 18 F0         [24]  738 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      002160 63 F0 80         [24]  739 	xrl	b,#0x80
      002163 95 F0            [12]  740 	subb	a,b
      002165 40 3E            [24]  741 	jc	00105$
                                    742 ;	main.c:22: result += str[i] - 55;
      002167 C0 05            [24]  743 	push	ar5
      002169 C0 06            [24]  744 	push	ar6
      00216B C0 07            [24]  745 	push	ar7
      00216D E8               [12]  746 	mov	a,r0
      00216E 2A               [12]  747 	add	a, r2
      00216F FD               [12]  748 	mov	r5,a
      002170 E9               [12]  749 	mov	a,r1
      002171 3B               [12]  750 	addc	a, r3
      002172 FE               [12]  751 	mov	r6,a
      002173 8C 07            [24]  752 	mov	ar7,r4
      002175 8D 82            [24]  753 	mov	dpl,r5
      002177 8E 83            [24]  754 	mov	dph,r6
      002179 8F F0            [24]  755 	mov	b,r7
      00217B 12 31 88         [24]  756 	lcall	__gptrget
      00217E 7F 00            [12]  757 	mov	r7,#0x00
      002180 24 C9            [12]  758 	add	a,#0xc9
      002182 F5 17            [12]  759 	mov	_hex_to_int_sloc2_1_0,a
      002184 EF               [12]  760 	mov	a,r7
      002185 34 FF            [12]  761 	addc	a,#0xff
      002187 F5 18            [12]  762 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      002189 90 01 03         [24]  763 	mov	dptr,#_hex_to_int_result_10000_59
      00218C E0               [24]  764 	movx	a,@dptr
      00218D FE               [12]  765 	mov	r6,a
      00218E A3               [24]  766 	inc	dptr
      00218F E0               [24]  767 	movx	a,@dptr
      002190 FF               [12]  768 	mov	r7,a
      002191 90 01 03         [24]  769 	mov	dptr,#_hex_to_int_result_10000_59
      002194 E5 17            [12]  770 	mov	a,_hex_to_int_sloc2_1_0
      002196 2E               [12]  771 	add	a, r6
      002197 F0               [24]  772 	movx	@dptr,a
      002198 E5 18            [12]  773 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      00219A 3F               [12]  774 	addc	a, r7
      00219B A3               [24]  775 	inc	dptr
      00219C F0               [24]  776 	movx	@dptr,a
      00219D D0 07            [24]  777 	pop	ar7
      00219F D0 06            [24]  778 	pop	ar6
      0021A1 D0 05            [24]  779 	pop	ar5
      0021A3 80 63            [24]  780 	sjmp	00110$
      0021A5                        781 00105$:
                                    782 ;	main.c:24: else if(ASCII >= 'a' && ASCII <= 'f')
      0021A5 90 01 05         [24]  783 	mov	dptr,#_hex_to_int_ASCII_20000_60
      0021A8 E0               [24]  784 	movx	a,@dptr
      0021A9 F5 17            [12]  785 	mov	_hex_to_int_sloc2_1_0,a
      0021AB A3               [24]  786 	inc	dptr
      0021AC E0               [24]  787 	movx	a,@dptr
      0021AD F5 18            [12]  788 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0021AF C3               [12]  789 	clr	c
      0021B0 E5 17            [12]  790 	mov	a,_hex_to_int_sloc2_1_0
      0021B2 94 61            [12]  791 	subb	a,#0x61
      0021B4 E5 18            [12]  792 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0021B6 64 80            [12]  793 	xrl	a,#0x80
      0021B8 94 80            [12]  794 	subb	a,#0x80
      0021BA 40 4C            [24]  795 	jc	00110$
      0021BC 74 66            [12]  796 	mov	a,#0x66
      0021BE 95 17            [12]  797 	subb	a,_hex_to_int_sloc2_1_0
      0021C0 74 80            [12]  798 	mov	a,#(0x00 ^ 0x80)
      0021C2 85 18 F0         [24]  799 	mov	b,(_hex_to_int_sloc2_1_0 + 1)
      0021C5 63 F0 80         [24]  800 	xrl	b,#0x80
      0021C8 95 F0            [12]  801 	subb	a,b
      0021CA 40 3C            [24]  802 	jc	00110$
                                    803 ;	main.c:26: result += str[i] - 87;
      0021CC C0 02            [24]  804 	push	ar2
      0021CE C0 03            [24]  805 	push	ar3
      0021D0 C0 04            [24]  806 	push	ar4
      0021D2 E8               [12]  807 	mov	a,r0
      0021D3 2D               [12]  808 	add	a, r5
      0021D4 FA               [12]  809 	mov	r2,a
      0021D5 E9               [12]  810 	mov	a,r1
      0021D6 3E               [12]  811 	addc	a, r6
      0021D7 FB               [12]  812 	mov	r3,a
      0021D8 8F 04            [24]  813 	mov	ar4,r7
      0021DA 8A 82            [24]  814 	mov	dpl,r2
      0021DC 8B 83            [24]  815 	mov	dph,r3
      0021DE 8C F0            [24]  816 	mov	b,r4
      0021E0 12 31 88         [24]  817 	lcall	__gptrget
      0021E3 7C 00            [12]  818 	mov	r4,#0x00
      0021E5 24 A9            [12]  819 	add	a,#0xa9
      0021E7 F5 17            [12]  820 	mov	_hex_to_int_sloc2_1_0,a
      0021E9 EC               [12]  821 	mov	a,r4
      0021EA 34 FF            [12]  822 	addc	a,#0xff
      0021EC F5 18            [12]  823 	mov	(_hex_to_int_sloc2_1_0 + 1),a
      0021EE 90 01 03         [24]  824 	mov	dptr,#_hex_to_int_result_10000_59
      0021F1 E0               [24]  825 	movx	a,@dptr
      0021F2 FB               [12]  826 	mov	r3,a
      0021F3 A3               [24]  827 	inc	dptr
      0021F4 E0               [24]  828 	movx	a,@dptr
      0021F5 FC               [12]  829 	mov	r4,a
      0021F6 90 01 03         [24]  830 	mov	dptr,#_hex_to_int_result_10000_59
      0021F9 E5 17            [12]  831 	mov	a,_hex_to_int_sloc2_1_0
      0021FB 2B               [12]  832 	add	a, r3
      0021FC F0               [24]  833 	movx	@dptr,a
      0021FD E5 18            [12]  834 	mov	a,(_hex_to_int_sloc2_1_0 + 1)
      0021FF 3C               [12]  835 	addc	a, r4
      002200 A3               [24]  836 	inc	dptr
      002201 F0               [24]  837 	movx	@dptr,a
                                    838 ;	main.c:30: return result;
      002202 D0 04            [24]  839 	pop	ar4
      002204 D0 03            [24]  840 	pop	ar3
      002206 D0 02            [24]  841 	pop	ar2
                                    842 ;	main.c:26: result += str[i] - 87;
      002208                        843 00110$:
                                    844 ;	main.c:28: i++;
      002208 08               [12]  845 	inc	r0
      002209 B8 00 01         [24]  846 	cjne	r0,#0x00,00173$
      00220C 09               [12]  847 	inc	r1
      00220D                        848 00173$:
      00220D 02 20 94         [24]  849 	ljmp	00112$
      002210                        850 00114$:
                                    851 ;	main.c:30: return result;
      002210 90 01 03         [24]  852 	mov	dptr,#_hex_to_int_result_10000_59
      002213 E0               [24]  853 	movx	a,@dptr
      002214 FE               [12]  854 	mov	r6,a
      002215 A3               [24]  855 	inc	dptr
      002216 E0               [24]  856 	movx	a,@dptr
                                    857 ;	main.c:32: }
      002217 8E 82            [24]  858 	mov	dpl,r6
      002219 F5 83            [12]  859 	mov	dph,a
      00221B 22               [24]  860 	ret
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'get_user_buffer_size'
                                    863 ;------------------------------------------------------------
                                    864 ;size                      Allocated with name '_get_user_buffer_size_size_10000_65'
                                    865 ;i                         Allocated with name '_get_user_buffer_size_i_10000_65'
                                    866 ;output                    Allocated with name '_get_user_buffer_size_output_10000_65'
                                    867 ;input                     Allocated with name '_get_user_buffer_size_input_10000_65'
                                    868 ;ch                        Allocated with name '_get_user_buffer_size_ch_10000_65'
                                    869 ;------------------------------------------------------------
                                    870 ;	main.c:35: int get_user_buffer_size(void)
                                    871 ;	-----------------------------------------
                                    872 ;	 function get_user_buffer_size
                                    873 ;	-----------------------------------------
      00221C                        874 _get_user_buffer_size:
                                    875 ;	main.c:41: while((ch = getchar()) != '\n' && ch != '\r' && i < sizeof(input) - 1)              //Keep taking the input from the user until user presses enter
      00221C 7E 00            [12]  876 	mov	r6,#0x00
      00221E 7F 00            [12]  877 	mov	r7,#0x00
      002220                        878 00103$:
      002220 C0 07            [24]  879 	push	ar7
      002222 C0 06            [24]  880 	push	ar6
      002224 12 25 6B         [24]  881 	lcall	_getchar
      002227 AC 82            [24]  882 	mov	r4, dpl
      002229 D0 06            [24]  883 	pop	ar6
      00222B D0 07            [24]  884 	pop	ar7
      00222D BC 0A 02         [24]  885 	cjne	r4,#0x0a,00133$
      002230 80 3A            [24]  886 	sjmp	00105$
      002232                        887 00133$:
      002232 BC 0D 02         [24]  888 	cjne	r4,#0x0d,00134$
      002235 80 35            [24]  889 	sjmp	00105$
      002237                        890 00134$:
      002237 C3               [12]  891 	clr	c
      002238 EE               [12]  892 	mov	a,r6
      002239 94 09            [12]  893 	subb	a,#0x09
      00223B EF               [12]  894 	mov	a,r7
      00223C 64 80            [12]  895 	xrl	a,#0x80
      00223E 94 80            [12]  896 	subb	a,#0x80
      002240 50 2A            [24]  897 	jnc	00105$
                                    898 ;	main.c:43: putchar(ch);
      002242 8C 03            [24]  899 	mov	ar3,r4
      002244 7D 00            [12]  900 	mov	r5,#0x00
      002246 8B 82            [24]  901 	mov	dpl, r3
      002248 8D 83            [24]  902 	mov	dph, r5
      00224A C0 07            [24]  903 	push	ar7
      00224C C0 06            [24]  904 	push	ar6
      00224E C0 04            [24]  905 	push	ar4
      002250 12 25 4C         [24]  906 	lcall	_putchar
      002253 D0 04            [24]  907 	pop	ar4
      002255 D0 06            [24]  908 	pop	ar6
      002257 D0 07            [24]  909 	pop	ar7
                                    910 ;	main.c:44: input[i] = ch;      //Append the input array with the received character
      002259 EE               [12]  911 	mov	a,r6
      00225A 24 07            [12]  912 	add	a, #_get_user_buffer_size_input_10000_65
      00225C F5 82            [12]  913 	mov	dpl,a
      00225E EF               [12]  914 	mov	a,r7
      00225F 34 01            [12]  915 	addc	a, #(_get_user_buffer_size_input_10000_65 >> 8)
      002261 F5 83            [12]  916 	mov	dph,a
      002263 EC               [12]  917 	mov	a,r4
      002264 F0               [24]  918 	movx	@dptr,a
                                    919 ;	main.c:45: i++;
      002265 0E               [12]  920 	inc	r6
      002266 BE 00 B7         [24]  921 	cjne	r6,#0x00,00103$
      002269 0F               [12]  922 	inc	r7
      00226A 80 B4            [24]  923 	sjmp	00103$
      00226C                        924 00105$:
                                    925 ;	main.c:47: input[i] = '\0';
      00226C EE               [12]  926 	mov	a,r6
      00226D 24 07            [12]  927 	add	a, #_get_user_buffer_size_input_10000_65
      00226F F5 82            [12]  928 	mov	dpl,a
      002271 EF               [12]  929 	mov	a,r7
      002272 34 01            [12]  930 	addc	a, #(_get_user_buffer_size_input_10000_65 >> 8)
      002274 F5 83            [12]  931 	mov	dph,a
      002276 E4               [12]  932 	clr	a
      002277 F0               [24]  933 	movx	@dptr,a
                                    934 ;	main.c:48: output = hex_to_int(input); //Convert the char hex data to int
      002278 90 01 07         [24]  935 	mov	dptr,#_get_user_buffer_size_input_10000_65
      00227B F5 F0            [12]  936 	mov	b,a
      00227D 12 20 62         [24]  937 	lcall	_hex_to_int
      002280 AE 82            [24]  938 	mov	r6, dpl
      002282 AF 83            [24]  939 	mov	r7, dph
                                    940 ;	main.c:49: printf_tiny("\n\r");
      002284 C0 07            [24]  941 	push	ar7
      002286 C0 06            [24]  942 	push	ar6
      002288 74 A8            [12]  943 	mov	a,#___str_0
      00228A C0 E0            [24]  944 	push	acc
      00228C 74 31            [12]  945 	mov	a,#(___str_0 >> 8)
      00228E C0 E0            [24]  946 	push	acc
      002290 12 25 EF         [24]  947 	lcall	_printf_tiny
      002293 15 81            [12]  948 	dec	sp
      002295 15 81            [12]  949 	dec	sp
      002297 D0 06            [24]  950 	pop	ar6
      002299 D0 07            [24]  951 	pop	ar7
                                    952 ;	main.c:51: return output;
      00229B 8E 82            [24]  953 	mov	dpl, r6
      00229D 8F 83            [24]  954 	mov	dph, r7
                                    955 ;	main.c:52: }
      00229F 22               [24]  956 	ret
                                    957 ;------------------------------------------------------------
                                    958 ;Allocation info for local variables in function 'main'
                                    959 ;------------------------------------------------------------
                                    960 ;c                         Allocated with name '_main_c_20001_70'
                                    961 ;addr                      Allocated with name '_main_addr_30002_72'
                                    962 ;------------------------------------------------------------
                                    963 ;	main.c:54: void main(void)
                                    964 ;	-----------------------------------------
                                    965 ;	 function main
                                    966 ;	-----------------------------------------
      0022A0                        967 _main:
                                    968 ;	main.c:57: printf("test\n\r");
      0022A0 74 AB            [12]  969 	mov	a,#___str_1
      0022A2 C0 E0            [24]  970 	push	acc
      0022A4 74 31            [12]  971 	mov	a,#(___str_1 >> 8)
      0022A6 C0 E0            [24]  972 	push	acc
      0022A8 74 80            [12]  973 	mov	a,#0x80
      0022AA C0 E0            [24]  974 	push	acc
      0022AC 12 27 46         [24]  975 	lcall	_printf
      0022AF 15 81            [12]  976 	dec	sp
      0022B1 15 81            [12]  977 	dec	sp
      0022B3 15 81            [12]  978 	dec	sp
                                    979 ;	main.c:58: configure_SPI();
      0022B5 12 23 CE         [24]  980 	lcall	_configure_SPI
                                    981 ;	main.c:59: while(1)
      0022B8                        982 00106$:
                                    983 ;	main.c:61: printf("Choose action: L-->LED ON\n\rR-->Read\n\r");
      0022B8 74 B2            [12]  984 	mov	a,#___str_2
      0022BA C0 E0            [24]  985 	push	acc
      0022BC 74 31            [12]  986 	mov	a,#(___str_2 >> 8)
      0022BE C0 E0            [24]  987 	push	acc
      0022C0 74 80            [12]  988 	mov	a,#0x80
      0022C2 C0 E0            [24]  989 	push	acc
      0022C4 12 27 46         [24]  990 	lcall	_printf
      0022C7 15 81            [12]  991 	dec	sp
      0022C9 15 81            [12]  992 	dec	sp
      0022CB 15 81            [12]  993 	dec	sp
                                    994 ;	main.c:62: char c = getchar();
      0022CD 12 25 6B         [24]  995 	lcall	_getchar
      0022D0 AE 82            [24]  996 	mov	r6, dpl
                                    997 ;	main.c:63: putchar(c);
      0022D2 8E 05            [24]  998 	mov	ar5,r6
      0022D4 7F 00            [12]  999 	mov	r7,#0x00
      0022D6 8D 82            [24] 1000 	mov	dpl, r5
      0022D8 8F 83            [24] 1001 	mov	dph, r7
      0022DA C0 06            [24] 1002 	push	ar6
      0022DC 12 25 4C         [24] 1003 	lcall	_putchar
                                   1004 ;	main.c:64: printf("\n\r");
      0022DF 74 A8            [12] 1005 	mov	a,#___str_0
      0022E1 C0 E0            [24] 1006 	push	acc
      0022E3 74 31            [12] 1007 	mov	a,#(___str_0 >> 8)
      0022E5 C0 E0            [24] 1008 	push	acc
      0022E7 74 80            [12] 1009 	mov	a,#0x80
      0022E9 C0 E0            [24] 1010 	push	acc
      0022EB 12 27 46         [24] 1011 	lcall	_printf
      0022EE 15 81            [12] 1012 	dec	sp
      0022F0 15 81            [12] 1013 	dec	sp
      0022F2 15 81            [12] 1014 	dec	sp
      0022F4 D0 06            [24] 1015 	pop	ar6
                                   1016 ;	main.c:65: switch(c)
      0022F6 BE 4C 02         [24] 1017 	cjne	r6,#0x4c,00137$
      0022F9 80 0A            [24] 1018 	sjmp	00101$
      0022FB                       1019 00137$:
      0022FB BE 52 02         [24] 1020 	cjne	r6,#0x52,00138$
      0022FE 80 0A            [24] 1021 	sjmp	00102$
      002300                       1022 00138$:
                                   1023 ;	main.c:67: case 'L':
      002300 BE 57 B5         [24] 1024 	cjne	r6,#0x57,00106$
      002303 80 22            [24] 1025 	sjmp	00103$
      002305                       1026 00101$:
                                   1027 ;	main.c:68: LED_On();
      002305 12 23 8C         [24] 1028 	lcall	_LED_On
                                   1029 ;	main.c:69: break;
                                   1030 ;	main.c:70: case 'R':
      002308 80 AE            [24] 1031 	sjmp	00106$
      00230A                       1032 00102$:
                                   1033 ;	main.c:71: printf("Enter the Control register address you want to read from\n\r");
      00230A 74 D8            [12] 1034 	mov	a,#___str_3
      00230C C0 E0            [24] 1035 	push	acc
      00230E 74 31            [12] 1036 	mov	a,#(___str_3 >> 8)
      002310 C0 E0            [24] 1037 	push	acc
      002312 74 80            [12] 1038 	mov	a,#0x80
      002314 C0 E0            [24] 1039 	push	acc
      002316 12 27 46         [24] 1040 	lcall	_printf
      002319 15 81            [12] 1041 	dec	sp
      00231B 15 81            [12] 1042 	dec	sp
      00231D 15 81            [12] 1043 	dec	sp
                                   1044 ;	main.c:72: uint8_t addr = get_user_buffer_size();
      00231F 12 22 1C         [24] 1045 	lcall	_get_user_buffer_size
                                   1046 ;	main.c:73: test_read_ctrl(addr);
      002322 12 24 39         [24] 1047 	lcall	_test_read_ctrl
                                   1048 ;	main.c:74: break;
                                   1049 ;	main.c:75: case 'W':
      002325 80 91            [24] 1050 	sjmp	00106$
      002327                       1051 00103$:
                                   1052 ;	main.c:76: printf("Enter the 16 bit data write\n\r");
      002327 74 13            [12] 1053 	mov	a,#___str_4
      002329 C0 E0            [24] 1054 	push	acc
      00232B 74 32            [12] 1055 	mov	a,#(___str_4 >> 8)
      00232D C0 E0            [24] 1056 	push	acc
      00232F 74 80            [12] 1057 	mov	a,#0x80
      002331 C0 E0            [24] 1058 	push	acc
      002333 12 27 46         [24] 1059 	lcall	_printf
      002336 15 81            [12] 1060 	dec	sp
      002338 15 81            [12] 1061 	dec	sp
      00233A 15 81            [12] 1062 	dec	sp
                                   1063 ;	main.c:77: P1_1 = 0;
                                   1064 ;	assignBit
      00233C C2 91            [12] 1065 	clr	_P1_1
                                   1066 ;	main.c:78: delay_us(2);
      00233E 90 00 02         [24] 1067 	mov	dptr,#0x0002
      002341 12 25 1B         [24] 1068 	lcall	_delay_us
                                   1069 ;	main.c:80: SPI_send(0x5F);
      002344 75 82 5F         [24] 1070 	mov	dpl, #0x5f
      002347 12 23 DD         [24] 1071 	lcall	_SPI_send
                                   1072 ;	main.c:81: SPI_send(0x02);
      00234A 75 82 02         [24] 1073 	mov	dpl, #0x02
      00234D 12 23 DD         [24] 1074 	lcall	_SPI_send
                                   1075 ;	main.c:82: delay_us(2);
      002350 90 00 02         [24] 1076 	mov	dptr,#0x0002
      002353 12 25 1B         [24] 1077 	lcall	_delay_us
                                   1078 ;	main.c:83: P1_1 = 1;
                                   1079 ;	assignBit
      002356 D2 91            [12] 1080 	setb	_P1_1
                                   1081 ;	main.c:85: }
                                   1082 ;	main.c:128: while(1)
                                   1083 ;	main.c:130: }
      002358 02 22 B8         [24] 1084 	ljmp	00106$
                                   1085 	.area CSEG    (CODE)
                                   1086 	.area CONST   (CODE)
                                   1087 	.area CONST   (CODE)
      0031A8                       1088 ___str_0:
      0031A8 0A                    1089 	.db 0x0a
      0031A9 0D                    1090 	.db 0x0d
      0031AA 00                    1091 	.db 0x00
                                   1092 	.area CSEG    (CODE)
                                   1093 	.area CONST   (CODE)
      0031AB                       1094 ___str_1:
      0031AB 74 65 73 74           1095 	.ascii "test"
      0031AF 0A                    1096 	.db 0x0a
      0031B0 0D                    1097 	.db 0x0d
      0031B1 00                    1098 	.db 0x00
                                   1099 	.area CSEG    (CODE)
                                   1100 	.area CONST   (CODE)
      0031B2                       1101 ___str_2:
      0031B2 43 68 6F 6F 73 65 20  1102 	.ascii "Choose action: L-->LED ON"
             61 63 74 69 6F 6E 3A
             20 4C 2D 2D 3E 4C 45
             44 20 4F 4E
      0031CB 0A                    1103 	.db 0x0a
      0031CC 0D                    1104 	.db 0x0d
      0031CD 52 2D 2D 3E 52 65 61  1105 	.ascii "R-->Read"
             64
      0031D5 0A                    1106 	.db 0x0a
      0031D6 0D                    1107 	.db 0x0d
      0031D7 00                    1108 	.db 0x00
                                   1109 	.area CSEG    (CODE)
                                   1110 	.area CONST   (CODE)
      0031D8                       1111 ___str_3:
      0031D8 45 6E 74 65 72 20 74  1112 	.ascii "Enter the Control register address you want to read from"
             68 65 20 43 6F 6E 74
             72 6F 6C 20 72 65 67
             69 73 74 65 72 20 61
             64 64 72 65 73 73 20
             79 6F 75 20 77 61 6E
             74 20 74 6F 20 72 65
             61 64 20 66 72 6F 6D
      003210 0A                    1113 	.db 0x0a
      003211 0D                    1114 	.db 0x0d
      003212 00                    1115 	.db 0x00
                                   1116 	.area CSEG    (CODE)
                                   1117 	.area CONST   (CODE)
      003213                       1118 ___str_4:
      003213 45 6E 74 65 72 20 74  1119 	.ascii "Enter the 16 bit data write"
             68 65 20 31 36 20 62
             69 74 20 64 61 74 61
             20 77 72 69 74 65
      00322E 0A                    1120 	.db 0x0a
      00322F 0D                    1121 	.db 0x0d
      003230 00                    1122 	.db 0x00
                                   1123 	.area CSEG    (CODE)
                                   1124 	.area XINIT   (CODE)
                                   1125 	.area CABS    (ABS,CODE)

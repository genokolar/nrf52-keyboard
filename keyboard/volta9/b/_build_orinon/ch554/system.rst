                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module system
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _UIF_BUS_RST
                                     13 	.globl _UIF_DETECT
                                     14 	.globl _UIF_TRANSFER
                                     15 	.globl _UIF_SUSPEND
                                     16 	.globl _UIF_HST_SOF
                                     17 	.globl _UIF_FIFO_OV
                                     18 	.globl _U_SIE_FREE
                                     19 	.globl _U_TOG_OK
                                     20 	.globl _U_IS_NAK
                                     21 	.globl _ADC_CHAN0
                                     22 	.globl _ADC_CHAN1
                                     23 	.globl _CMP_CHAN
                                     24 	.globl _ADC_START
                                     25 	.globl _ADC_IF
                                     26 	.globl _CMP_IF
                                     27 	.globl _CMPO
                                     28 	.globl _U1RI
                                     29 	.globl _U1TI
                                     30 	.globl _U1RB8
                                     31 	.globl _U1TB8
                                     32 	.globl _U1REN
                                     33 	.globl _U1SMOD
                                     34 	.globl _U1SM0
                                     35 	.globl _S0_R_FIFO
                                     36 	.globl _S0_T_FIFO
                                     37 	.globl _S0_FREE
                                     38 	.globl _S0_IF_BYTE
                                     39 	.globl _S0_IF_FIRST
                                     40 	.globl _S0_IF_OV
                                     41 	.globl _S0_FST_ACT
                                     42 	.globl _CP_RL2
                                     43 	.globl _C_T2
                                     44 	.globl _TR2
                                     45 	.globl _EXEN2
                                     46 	.globl _TCLK
                                     47 	.globl _RCLK
                                     48 	.globl _EXF2
                                     49 	.globl _CAP1F
                                     50 	.globl _TF2
                                     51 	.globl _RI
                                     52 	.globl _TI
                                     53 	.globl _RB8
                                     54 	.globl _TB8
                                     55 	.globl _REN
                                     56 	.globl _SM2
                                     57 	.globl _SM1
                                     58 	.globl _SM0
                                     59 	.globl _IT0
                                     60 	.globl _IE0
                                     61 	.globl _IT1
                                     62 	.globl _IE1
                                     63 	.globl _TR0
                                     64 	.globl _TF0
                                     65 	.globl _TR1
                                     66 	.globl _TF1
                                     67 	.globl _RXD
                                     68 	.globl _PWM1_
                                     69 	.globl _P3_0
                                     70 	.globl _TXD
                                     71 	.globl _PWM2_
                                     72 	.globl _P3_1
                                     73 	.globl _AIN3
                                     74 	.globl _VBUS1
                                     75 	.globl _INT0
                                     76 	.globl _TXD1_
                                     77 	.globl _P3_2
                                     78 	.globl _INT1
                                     79 	.globl _P3_3
                                     80 	.globl _T0
                                     81 	.globl _RXD1_
                                     82 	.globl _PWM2
                                     83 	.globl _P3_4
                                     84 	.globl _T1
                                     85 	.globl _P3_5
                                     86 	.globl _UDP
                                     87 	.globl _P3_6
                                     88 	.globl _UDM
                                     89 	.globl _P3_7
                                     90 	.globl _TIN0
                                     91 	.globl _CAP1
                                     92 	.globl _T2
                                     93 	.globl _P1_0
                                     94 	.globl _AIN0
                                     95 	.globl _VBUS2
                                     96 	.globl _TIN1
                                     97 	.globl _CAP2
                                     98 	.globl _T2EX
                                     99 	.globl _P1_1
                                    100 	.globl _RXD_
                                    101 	.globl _P1_2
                                    102 	.globl _TXD_
                                    103 	.globl _P1_3
                                    104 	.globl _AIN1
                                    105 	.globl _UCC1
                                    106 	.globl _TIN2
                                    107 	.globl _SCS
                                    108 	.globl _CAP1_
                                    109 	.globl _T2_
                                    110 	.globl _P1_4
                                    111 	.globl _AIN2
                                    112 	.globl _UCC2
                                    113 	.globl _TIN3
                                    114 	.globl _PWM1
                                    115 	.globl _MOSI
                                    116 	.globl _P1_5
                                    117 	.globl _TIN4
                                    118 	.globl _RXD1
                                    119 	.globl _MISO
                                    120 	.globl _P1_6
                                    121 	.globl _TIN5
                                    122 	.globl _TXD1
                                    123 	.globl _SCK
                                    124 	.globl _P1_7
                                    125 	.globl _IE_SPI0
                                    126 	.globl _IE_TKEY
                                    127 	.globl _IE_USB
                                    128 	.globl _IE_ADC
                                    129 	.globl _IE_UART1
                                    130 	.globl _IE_PWMX
                                    131 	.globl _IE_GPIO
                                    132 	.globl _IE_WDOG
                                    133 	.globl _PX0
                                    134 	.globl _PT0
                                    135 	.globl _PX1
                                    136 	.globl _PT1
                                    137 	.globl _PS
                                    138 	.globl _PT2
                                    139 	.globl _PL_FLAG
                                    140 	.globl _PH_FLAG
                                    141 	.globl _EX0
                                    142 	.globl _ET0
                                    143 	.globl _EX1
                                    144 	.globl _ET1
                                    145 	.globl _ES
                                    146 	.globl _ET2
                                    147 	.globl _E_DIS
                                    148 	.globl _EA
                                    149 	.globl _P
                                    150 	.globl _F1
                                    151 	.globl _OV
                                    152 	.globl _RS0
                                    153 	.globl _RS1
                                    154 	.globl _F0
                                    155 	.globl _AC
                                    156 	.globl _CY
                                    157 	.globl _UEP1_DMA_H
                                    158 	.globl _UEP1_DMA_L
                                    159 	.globl _UEP1_DMA
                                    160 	.globl _UEP0_DMA_H
                                    161 	.globl _UEP0_DMA_L
                                    162 	.globl _UEP0_DMA
                                    163 	.globl _UEP2_3_MOD
                                    164 	.globl _UEP4_1_MOD
                                    165 	.globl _UEP3_DMA_H
                                    166 	.globl _UEP3_DMA_L
                                    167 	.globl _UEP3_DMA
                                    168 	.globl _UEP2_DMA_H
                                    169 	.globl _UEP2_DMA_L
                                    170 	.globl _UEP2_DMA
                                    171 	.globl _USB_DEV_AD
                                    172 	.globl _USB_CTRL
                                    173 	.globl _USB_INT_EN
                                    174 	.globl _UEP4_T_LEN
                                    175 	.globl _UEP4_CTRL
                                    176 	.globl _UEP0_T_LEN
                                    177 	.globl _UEP0_CTRL
                                    178 	.globl _USB_RX_LEN
                                    179 	.globl _USB_MIS_ST
                                    180 	.globl _USB_INT_ST
                                    181 	.globl _USB_INT_FG
                                    182 	.globl _UEP3_T_LEN
                                    183 	.globl _UEP3_CTRL
                                    184 	.globl _UEP2_T_LEN
                                    185 	.globl _UEP2_CTRL
                                    186 	.globl _UEP1_T_LEN
                                    187 	.globl _UEP1_CTRL
                                    188 	.globl _UDEV_CTRL
                                    189 	.globl _USB_C_CTRL
                                    190 	.globl _TKEY_DATH
                                    191 	.globl _TKEY_DATL
                                    192 	.globl _TKEY_DAT
                                    193 	.globl _TKEY_CTRL
                                    194 	.globl _ADC_DATA
                                    195 	.globl _ADC_CFG
                                    196 	.globl _ADC_CTRL
                                    197 	.globl _SBAUD1
                                    198 	.globl _SBUF1
                                    199 	.globl _SCON1
                                    200 	.globl _SPI0_SETUP
                                    201 	.globl _SPI0_CK_SE
                                    202 	.globl _SPI0_CTRL
                                    203 	.globl _SPI0_DATA
                                    204 	.globl _SPI0_STAT
                                    205 	.globl _PWM_CK_SE
                                    206 	.globl _PWM_CTRL
                                    207 	.globl _PWM_DATA1
                                    208 	.globl _PWM_DATA2
                                    209 	.globl _T2CAP1H
                                    210 	.globl _T2CAP1L
                                    211 	.globl _T2CAP1
                                    212 	.globl _TH2
                                    213 	.globl _TL2
                                    214 	.globl _T2COUNT
                                    215 	.globl _RCAP2H
                                    216 	.globl _RCAP2L
                                    217 	.globl _RCAP2
                                    218 	.globl _T2MOD
                                    219 	.globl _T2CON
                                    220 	.globl _SBUF
                                    221 	.globl _SCON
                                    222 	.globl _TH1
                                    223 	.globl _TH0
                                    224 	.globl _TL1
                                    225 	.globl _TL0
                                    226 	.globl _TMOD
                                    227 	.globl _TCON
                                    228 	.globl _XBUS_AUX
                                    229 	.globl _PIN_FUNC
                                    230 	.globl _P3_DIR_PU
                                    231 	.globl _P3_MOD_OC
                                    232 	.globl _P3
                                    233 	.globl _P2
                                    234 	.globl _P1_DIR_PU
                                    235 	.globl _P1_MOD_OC
                                    236 	.globl _P1
                                    237 	.globl _ROM_CTRL
                                    238 	.globl _ROM_DATA_H
                                    239 	.globl _ROM_DATA_L
                                    240 	.globl _ROM_DATA
                                    241 	.globl _ROM_ADDR_H
                                    242 	.globl _ROM_ADDR_L
                                    243 	.globl _ROM_ADDR
                                    244 	.globl _GPIO_IE
                                    245 	.globl _IP_EX
                                    246 	.globl _IE_EX
                                    247 	.globl _IP
                                    248 	.globl _IE
                                    249 	.globl _WDOG_COUNT
                                    250 	.globl _RESET_KEEP
                                    251 	.globl _WAKE_CTRL
                                    252 	.globl _CLOCK_CFG
                                    253 	.globl _PCON
                                    254 	.globl _GLOBAL_CFG
                                    255 	.globl _SAFE_MOD
                                    256 	.globl _DPH
                                    257 	.globl _DPL
                                    258 	.globl _SP
                                    259 	.globl _B
                                    260 	.globl _ACC
                                    261 	.globl _PSW
                                    262 	.globl _CfgSysClock
                                    263 	.globl _InitUART
                                    264 	.globl _DelayMs
                                    265 	.globl _PrintHex
                                    266 	.globl _putchar
                                    267 	.globl _getchar
                                    268 ;--------------------------------------------------------
                                    269 ; special function registers
                                    270 ;--------------------------------------------------------
                                    271 	.area RSEG    (ABS,DATA)
      000000                        272 	.org 0x0000
                           0000D0   273 _PSW	=	0x00d0
                           0000E0   274 _ACC	=	0x00e0
                           0000F0   275 _B	=	0x00f0
                           000081   276 _SP	=	0x0081
                           000082   277 _DPL	=	0x0082
                           000083   278 _DPH	=	0x0083
                           0000A1   279 _SAFE_MOD	=	0x00a1
                           0000B1   280 _GLOBAL_CFG	=	0x00b1
                           000087   281 _PCON	=	0x0087
                           0000B9   282 _CLOCK_CFG	=	0x00b9
                           0000A9   283 _WAKE_CTRL	=	0x00a9
                           0000FE   284 _RESET_KEEP	=	0x00fe
                           0000FF   285 _WDOG_COUNT	=	0x00ff
                           0000A8   286 _IE	=	0x00a8
                           0000B8   287 _IP	=	0x00b8
                           0000E8   288 _IE_EX	=	0x00e8
                           0000E9   289 _IP_EX	=	0x00e9
                           0000C7   290 _GPIO_IE	=	0x00c7
                           008584   291 _ROM_ADDR	=	0x8584
                           000084   292 _ROM_ADDR_L	=	0x0084
                           000085   293 _ROM_ADDR_H	=	0x0085
                           008F8E   294 _ROM_DATA	=	0x8f8e
                           00008E   295 _ROM_DATA_L	=	0x008e
                           00008F   296 _ROM_DATA_H	=	0x008f
                           000086   297 _ROM_CTRL	=	0x0086
                           000090   298 _P1	=	0x0090
                           000092   299 _P1_MOD_OC	=	0x0092
                           000093   300 _P1_DIR_PU	=	0x0093
                           0000A0   301 _P2	=	0x00a0
                           0000B0   302 _P3	=	0x00b0
                           000096   303 _P3_MOD_OC	=	0x0096
                           000097   304 _P3_DIR_PU	=	0x0097
                           0000C6   305 _PIN_FUNC	=	0x00c6
                           0000A2   306 _XBUS_AUX	=	0x00a2
                           000088   307 _TCON	=	0x0088
                           000089   308 _TMOD	=	0x0089
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           00008C   311 _TH0	=	0x008c
                           00008D   312 _TH1	=	0x008d
                           000098   313 _SCON	=	0x0098
                           000099   314 _SBUF	=	0x0099
                           0000C8   315 _T2CON	=	0x00c8
                           0000C9   316 _T2MOD	=	0x00c9
                           00CBCA   317 _RCAP2	=	0xcbca
                           0000CA   318 _RCAP2L	=	0x00ca
                           0000CB   319 _RCAP2H	=	0x00cb
                           00CDCC   320 _T2COUNT	=	0xcdcc
                           0000CC   321 _TL2	=	0x00cc
                           0000CD   322 _TH2	=	0x00cd
                           00CFCE   323 _T2CAP1	=	0xcfce
                           0000CE   324 _T2CAP1L	=	0x00ce
                           0000CF   325 _T2CAP1H	=	0x00cf
                           00009B   326 _PWM_DATA2	=	0x009b
                           00009C   327 _PWM_DATA1	=	0x009c
                           00009D   328 _PWM_CTRL	=	0x009d
                           00009E   329 _PWM_CK_SE	=	0x009e
                           0000F8   330 _SPI0_STAT	=	0x00f8
                           0000F9   331 _SPI0_DATA	=	0x00f9
                           0000FA   332 _SPI0_CTRL	=	0x00fa
                           0000FB   333 _SPI0_CK_SE	=	0x00fb
                           0000FC   334 _SPI0_SETUP	=	0x00fc
                           0000C0   335 _SCON1	=	0x00c0
                           0000C1   336 _SBUF1	=	0x00c1
                           0000C2   337 _SBAUD1	=	0x00c2
                           000080   338 _ADC_CTRL	=	0x0080
                           00009A   339 _ADC_CFG	=	0x009a
                           00009F   340 _ADC_DATA	=	0x009f
                           0000C3   341 _TKEY_CTRL	=	0x00c3
                           00C5C4   342 _TKEY_DAT	=	0xc5c4
                           0000C4   343 _TKEY_DATL	=	0x00c4
                           0000C5   344 _TKEY_DATH	=	0x00c5
                           000091   345 _USB_C_CTRL	=	0x0091
                           0000D1   346 _UDEV_CTRL	=	0x00d1
                           0000D2   347 _UEP1_CTRL	=	0x00d2
                           0000D3   348 _UEP1_T_LEN	=	0x00d3
                           0000D4   349 _UEP2_CTRL	=	0x00d4
                           0000D5   350 _UEP2_T_LEN	=	0x00d5
                           0000D6   351 _UEP3_CTRL	=	0x00d6
                           0000D7   352 _UEP3_T_LEN	=	0x00d7
                           0000D8   353 _USB_INT_FG	=	0x00d8
                           0000D9   354 _USB_INT_ST	=	0x00d9
                           0000DA   355 _USB_MIS_ST	=	0x00da
                           0000DB   356 _USB_RX_LEN	=	0x00db
                           0000DC   357 _UEP0_CTRL	=	0x00dc
                           0000DD   358 _UEP0_T_LEN	=	0x00dd
                           0000DE   359 _UEP4_CTRL	=	0x00de
                           0000DF   360 _UEP4_T_LEN	=	0x00df
                           0000E1   361 _USB_INT_EN	=	0x00e1
                           0000E2   362 _USB_CTRL	=	0x00e2
                           0000E3   363 _USB_DEV_AD	=	0x00e3
                           00E5E4   364 _UEP2_DMA	=	0xe5e4
                           0000E4   365 _UEP2_DMA_L	=	0x00e4
                           0000E5   366 _UEP2_DMA_H	=	0x00e5
                           00E7E6   367 _UEP3_DMA	=	0xe7e6
                           0000E6   368 _UEP3_DMA_L	=	0x00e6
                           0000E7   369 _UEP3_DMA_H	=	0x00e7
                           0000EA   370 _UEP4_1_MOD	=	0x00ea
                           0000EB   371 _UEP2_3_MOD	=	0x00eb
                           00EDEC   372 _UEP0_DMA	=	0xedec
                           0000EC   373 _UEP0_DMA_L	=	0x00ec
                           0000ED   374 _UEP0_DMA_H	=	0x00ed
                           00EFEE   375 _UEP1_DMA	=	0xefee
                           0000EE   376 _UEP1_DMA_L	=	0x00ee
                           0000EF   377 _UEP1_DMA_H	=	0x00ef
                                    378 ;--------------------------------------------------------
                                    379 ; special function bits
                                    380 ;--------------------------------------------------------
                                    381 	.area RSEG    (ABS,DATA)
      000000                        382 	.org 0x0000
                           0000D7   383 _CY	=	0x00d7
                           0000D6   384 _AC	=	0x00d6
                           0000D5   385 _F0	=	0x00d5
                           0000D4   386 _RS1	=	0x00d4
                           0000D3   387 _RS0	=	0x00d3
                           0000D2   388 _OV	=	0x00d2
                           0000D1   389 _F1	=	0x00d1
                           0000D0   390 _P	=	0x00d0
                           0000AF   391 _EA	=	0x00af
                           0000AE   392 _E_DIS	=	0x00ae
                           0000AD   393 _ET2	=	0x00ad
                           0000AC   394 _ES	=	0x00ac
                           0000AB   395 _ET1	=	0x00ab
                           0000AA   396 _EX1	=	0x00aa
                           0000A9   397 _ET0	=	0x00a9
                           0000A8   398 _EX0	=	0x00a8
                           0000AF   399 _PH_FLAG	=	0x00af
                           0000AE   400 _PL_FLAG	=	0x00ae
                           0000AD   401 _PT2	=	0x00ad
                           0000AC   402 _PS	=	0x00ac
                           0000AB   403 _PT1	=	0x00ab
                           0000AA   404 _PX1	=	0x00aa
                           0000A9   405 _PT0	=	0x00a9
                           0000A8   406 _PX0	=	0x00a8
                           0000EF   407 _IE_WDOG	=	0x00ef
                           0000EE   408 _IE_GPIO	=	0x00ee
                           0000ED   409 _IE_PWMX	=	0x00ed
                           0000EC   410 _IE_UART1	=	0x00ec
                           0000EB   411 _IE_ADC	=	0x00eb
                           0000EA   412 _IE_USB	=	0x00ea
                           0000E9   413 _IE_TKEY	=	0x00e9
                           0000E8   414 _IE_SPI0	=	0x00e8
                           000097   415 _P1_7	=	0x0097
                           000097   416 _SCK	=	0x0097
                           000097   417 _TXD1	=	0x0097
                           000097   418 _TIN5	=	0x0097
                           000096   419 _P1_6	=	0x0096
                           000096   420 _MISO	=	0x0096
                           000096   421 _RXD1	=	0x0096
                           000096   422 _TIN4	=	0x0096
                           000095   423 _P1_5	=	0x0095
                           000095   424 _MOSI	=	0x0095
                           000095   425 _PWM1	=	0x0095
                           000095   426 _TIN3	=	0x0095
                           000095   427 _UCC2	=	0x0095
                           000095   428 _AIN2	=	0x0095
                           000094   429 _P1_4	=	0x0094
                           000094   430 _T2_	=	0x0094
                           000094   431 _CAP1_	=	0x0094
                           000094   432 _SCS	=	0x0094
                           000094   433 _TIN2	=	0x0094
                           000094   434 _UCC1	=	0x0094
                           000094   435 _AIN1	=	0x0094
                           000093   436 _P1_3	=	0x0093
                           000093   437 _TXD_	=	0x0093
                           000092   438 _P1_2	=	0x0092
                           000092   439 _RXD_	=	0x0092
                           000091   440 _P1_1	=	0x0091
                           000091   441 _T2EX	=	0x0091
                           000091   442 _CAP2	=	0x0091
                           000091   443 _TIN1	=	0x0091
                           000091   444 _VBUS2	=	0x0091
                           000091   445 _AIN0	=	0x0091
                           000090   446 _P1_0	=	0x0090
                           000090   447 _T2	=	0x0090
                           000090   448 _CAP1	=	0x0090
                           000090   449 _TIN0	=	0x0090
                           0000B7   450 _P3_7	=	0x00b7
                           0000B7   451 _UDM	=	0x00b7
                           0000B6   452 _P3_6	=	0x00b6
                           0000B6   453 _UDP	=	0x00b6
                           0000B5   454 _P3_5	=	0x00b5
                           0000B5   455 _T1	=	0x00b5
                           0000B4   456 _P3_4	=	0x00b4
                           0000B4   457 _PWM2	=	0x00b4
                           0000B4   458 _RXD1_	=	0x00b4
                           0000B4   459 _T0	=	0x00b4
                           0000B3   460 _P3_3	=	0x00b3
                           0000B3   461 _INT1	=	0x00b3
                           0000B2   462 _P3_2	=	0x00b2
                           0000B2   463 _TXD1_	=	0x00b2
                           0000B2   464 _INT0	=	0x00b2
                           0000B2   465 _VBUS1	=	0x00b2
                           0000B2   466 _AIN3	=	0x00b2
                           0000B1   467 _P3_1	=	0x00b1
                           0000B1   468 _PWM2_	=	0x00b1
                           0000B1   469 _TXD	=	0x00b1
                           0000B0   470 _P3_0	=	0x00b0
                           0000B0   471 _PWM1_	=	0x00b0
                           0000B0   472 _RXD	=	0x00b0
                           00008F   473 _TF1	=	0x008f
                           00008E   474 _TR1	=	0x008e
                           00008D   475 _TF0	=	0x008d
                           00008C   476 _TR0	=	0x008c
                           00008B   477 _IE1	=	0x008b
                           00008A   478 _IT1	=	0x008a
                           000089   479 _IE0	=	0x0089
                           000088   480 _IT0	=	0x0088
                           00009F   481 _SM0	=	0x009f
                           00009E   482 _SM1	=	0x009e
                           00009D   483 _SM2	=	0x009d
                           00009C   484 _REN	=	0x009c
                           00009B   485 _TB8	=	0x009b
                           00009A   486 _RB8	=	0x009a
                           000099   487 _TI	=	0x0099
                           000098   488 _RI	=	0x0098
                           0000CF   489 _TF2	=	0x00cf
                           0000CF   490 _CAP1F	=	0x00cf
                           0000CE   491 _EXF2	=	0x00ce
                           0000CD   492 _RCLK	=	0x00cd
                           0000CC   493 _TCLK	=	0x00cc
                           0000CB   494 _EXEN2	=	0x00cb
                           0000CA   495 _TR2	=	0x00ca
                           0000C9   496 _C_T2	=	0x00c9
                           0000C8   497 _CP_RL2	=	0x00c8
                           0000FF   498 _S0_FST_ACT	=	0x00ff
                           0000FE   499 _S0_IF_OV	=	0x00fe
                           0000FD   500 _S0_IF_FIRST	=	0x00fd
                           0000FC   501 _S0_IF_BYTE	=	0x00fc
                           0000FB   502 _S0_FREE	=	0x00fb
                           0000FA   503 _S0_T_FIFO	=	0x00fa
                           0000F8   504 _S0_R_FIFO	=	0x00f8
                           0000C7   505 _U1SM0	=	0x00c7
                           0000C5   506 _U1SMOD	=	0x00c5
                           0000C4   507 _U1REN	=	0x00c4
                           0000C3   508 _U1TB8	=	0x00c3
                           0000C2   509 _U1RB8	=	0x00c2
                           0000C1   510 _U1TI	=	0x00c1
                           0000C0   511 _U1RI	=	0x00c0
                           000087   512 _CMPO	=	0x0087
                           000086   513 _CMP_IF	=	0x0086
                           000085   514 _ADC_IF	=	0x0085
                           000084   515 _ADC_START	=	0x0084
                           000083   516 _CMP_CHAN	=	0x0083
                           000081   517 _ADC_CHAN1	=	0x0081
                           000080   518 _ADC_CHAN0	=	0x0080
                           0000DF   519 _U_IS_NAK	=	0x00df
                           0000DE   520 _U_TOG_OK	=	0x00de
                           0000DD   521 _U_SIE_FREE	=	0x00dd
                           0000DC   522 _UIF_FIFO_OV	=	0x00dc
                           0000DB   523 _UIF_HST_SOF	=	0x00db
                           0000DA   524 _UIF_SUSPEND	=	0x00da
                           0000D9   525 _UIF_TRANSFER	=	0x00d9
                           0000D8   526 _UIF_DETECT	=	0x00d8
                           0000D8   527 _UIF_BUS_RST	=	0x00d8
                                    528 ;--------------------------------------------------------
                                    529 ; overlayable register banks
                                    530 ;--------------------------------------------------------
                                    531 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        532 	.ds 8
                                    533 ;--------------------------------------------------------
                                    534 ; internal ram data
                                    535 ;--------------------------------------------------------
                                    536 	.area DSEG    (DATA)
                                    537 ;--------------------------------------------------------
                                    538 ; overlayable items in internal ram 
                                    539 ;--------------------------------------------------------
                                    540 ;--------------------------------------------------------
                                    541 ; indirectly addressable internal ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area ISEG    (DATA)
                                    544 ;--------------------------------------------------------
                                    545 ; absolute internal ram data
                                    546 ;--------------------------------------------------------
                                    547 	.area IABS    (ABS,DATA)
                                    548 	.area IABS    (ABS,DATA)
                                    549 ;--------------------------------------------------------
                                    550 ; bit data
                                    551 ;--------------------------------------------------------
                                    552 	.area BSEG    (BIT)
                                    553 ;--------------------------------------------------------
                                    554 ; paged external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area PSEG    (PAG,XDATA)
                                    557 ;--------------------------------------------------------
                                    558 ; external ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area XSEG    (XDATA)
                                    561 ;--------------------------------------------------------
                                    562 ; absolute external ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area XABS    (ABS,XDATA)
                                    565 ;--------------------------------------------------------
                                    566 ; external initialized ram data
                                    567 ;--------------------------------------------------------
                                    568 	.area XISEG   (XDATA)
                                    569 	.area HOME    (CODE)
                                    570 	.area GSINIT0 (CODE)
                                    571 	.area GSINIT1 (CODE)
                                    572 	.area GSINIT2 (CODE)
                                    573 	.area GSINIT3 (CODE)
                                    574 	.area GSINIT4 (CODE)
                                    575 	.area GSINIT5 (CODE)
                                    576 	.area GSINIT  (CODE)
                                    577 	.area GSFINAL (CODE)
                                    578 	.area CSEG    (CODE)
                                    579 ;--------------------------------------------------------
                                    580 ; global & static initialisations
                                    581 ;--------------------------------------------------------
                                    582 	.area HOME    (CODE)
                                    583 	.area GSINIT  (CODE)
                                    584 	.area GSFINAL (CODE)
                                    585 	.area GSINIT  (CODE)
                                    586 ;--------------------------------------------------------
                                    587 ; Home
                                    588 ;--------------------------------------------------------
                                    589 	.area HOME    (CODE)
                                    590 	.area HOME    (CODE)
                                    591 ;--------------------------------------------------------
                                    592 ; code
                                    593 ;--------------------------------------------------------
                                    594 	.area CSEG    (CODE)
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'CfgSysClock'
                                    597 ;------------------------------------------------------------
                                    598 ;	../../../usb/system.c:14: void CfgSysClock()
                                    599 ;	-----------------------------------------
                                    600 ;	 function CfgSysClock
                                    601 ;	-----------------------------------------
      000A07                        602 _CfgSysClock:
                           000007   603 	ar7 = 0x07
                           000006   604 	ar6 = 0x06
                           000005   605 	ar5 = 0x05
                           000004   606 	ar4 = 0x04
                           000003   607 	ar3 = 0x03
                           000002   608 	ar2 = 0x02
                           000001   609 	ar1 = 0x01
                           000000   610 	ar0 = 0x00
                                    611 ;	../../../usb/system.c:16: SAFE_MOD = 0x55; //Enter unsafe mode
      000A07 75 A1 55         [24]  612 	mov	_SAFE_MOD,#0x55
                                    613 ;	../../../usb/system.c:17: SAFE_MOD = 0xAA;
      000A0A 75 A1 AA         [24]  614 	mov	_SAFE_MOD,#0xaa
                                    615 ;	../../../usb/system.c:18: CLOCK_CFG = CLOCK_CFG & ~MASK_SYS_CK_SEL | 0x06; // 24MHz
      000A0D 74 F8            [12]  616 	mov	a,#0xf8
      000A0F 55 B9            [12]  617 	anl	a,_CLOCK_CFG
      000A11 44 06            [12]  618 	orl	a,#0x06
      000A13 F5 B9            [12]  619 	mov	_CLOCK_CFG,a
                                    620 ;	../../../usb/system.c:19: SAFE_MOD = 0x00;
      000A15 75 A1 00         [24]  621 	mov	_SAFE_MOD,#0x00
                                    622 ;	../../../usb/system.c:20: }
      000A18 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'InitUART'
                                    626 ;------------------------------------------------------------
                                    627 ;x                         Allocated to registers 
                                    628 ;------------------------------------------------------------
                                    629 ;	../../../usb/system.c:25: void InitUART()
                                    630 ;	-----------------------------------------
                                    631 ;	 function InitUART
                                    632 ;	-----------------------------------------
      000A19                        633 _InitUART:
                                    634 ;	../../../usb/system.c:30: SM0 = 0; // 8Bit
                                    635 ;	assignBit
      000A19 C2 9F            [12]  636 	clr	_SM0
                                    637 ;	../../../usb/system.c:31: SM1 = 1; // Variable
                                    638 ;	assignBit
      000A1B D2 9E            [12]  639 	setb	_SM1
                                    640 ;	../../../usb/system.c:32: SM2 = 0; // Single device
                                    641 ;	assignBit
      000A1D C2 9D            [12]  642 	clr	_SM2
                                    643 ;	../../../usb/system.c:34: RCLK = 0; // using timer1 as send/recv clock
                                    644 ;	assignBit
      000A1F C2 CD            [12]  645 	clr	_RCLK
                                    646 ;	../../../usb/system.c:35: TCLK = 0; //
                                    647 ;	assignBit
      000A21 C2 CC            [12]  648 	clr	_TCLK
                                    649 ;	../../../usb/system.c:37: PCON |= SMOD; //SMOD = 0; uart slow mode
      000A23 43 87 80         [24]  650 	orl	_PCON,#0x80
                                    651 ;	../../../usb/system.c:48: TMOD = TMOD & ~bT1_GATE & ~bT1_CT & ~MASK_T1_MOD | bT1_M1; //0X20，Timer1作为8位自动重载定时器
      000A26 74 0F            [12]  652 	mov	a,#0x0f
      000A28 55 89            [12]  653 	anl	a,_TMOD
      000A2A 44 20            [12]  654 	orl	a,#0x20
      000A2C F5 89            [12]  655 	mov	_TMOD,a
                                    656 ;	../../../usb/system.c:49: T2MOD = T2MOD | bTMR_CLK | bT1_CLK; //Timer1时钟选择
      000A2E 43 C9 A0         [24]  657 	orl	_T2MOD,#0xa0
                                    658 ;	../../../usb/system.c:50: TH1 = 0 - x; //12MHz晶振,buad/12为实际需设置波特率
      000A31 75 8D E6         [24]  659 	mov	_TH1,#0xe6
                                    660 ;	../../../usb/system.c:51: TR1 = 1; //启动定时器1
                                    661 ;	assignBit
      000A34 D2 8E            [12]  662 	setb	_TR1
                                    663 ;	../../../usb/system.c:52: TI = 1;
                                    664 ;	assignBit
      000A36 D2 99            [12]  665 	setb	_TI
                                    666 ;	../../../usb/system.c:53: REN = 1; //串口0接收使能
                                    667 ;	assignBit
      000A38 D2 9C            [12]  668 	setb	_REN
                                    669 ;	../../../usb/system.c:54: }
      000A3A 22               [24]  670 	ret
                                    671 ;------------------------------------------------------------
                                    672 ;Allocation info for local variables in function 'DelayMs'
                                    673 ;------------------------------------------------------------
                                    674 ;n                         Allocated to registers 
                                    675 ;------------------------------------------------------------
                                    676 ;	../../../usb/system.c:62: void DelayMs(uint16_t n) // 以mS为单位延时
                                    677 ;	-----------------------------------------
                                    678 ;	 function DelayMs
                                    679 ;	-----------------------------------------
      000A3B                        680 _DelayMs:
      000A3B AE 82            [24]  681 	mov	r6,dpl
      000A3D AF 83            [24]  682 	mov	r7,dph
                                    683 ;	../../../usb/system.c:65: while (n--) {
      000A3F                        684 00107$:
      000A3F 8E 04            [24]  685 	mov	ar4,r6
      000A41 8F 05            [24]  686 	mov	ar5,r7
      000A43 1E               [12]  687 	dec	r6
      000A44 BE FF 01         [24]  688 	cjne	r6,#0xff,00129$
      000A47 1F               [12]  689 	dec	r7
      000A48                        690 00129$:
      000A48 EC               [12]  691 	mov	a,r4
      000A49 4D               [12]  692 	orl	a,r5
      000A4A 60 0C            [24]  693 	jz	00110$
                                    694 ;	../../../usb/system.c:66: while ((TKEY_CTRL & bTKC_IF) == 0)
      000A4C                        695 00101$:
      000A4C E5 C3            [12]  696 	mov	a,_TKEY_CTRL
      000A4E 30 E7 FB         [24]  697 	jnb	acc.7,00101$
                                    698 ;	../../../usb/system.c:68: while (TKEY_CTRL & bTKC_IF)
      000A51                        699 00104$:
      000A51 E5 C3            [12]  700 	mov	a,_TKEY_CTRL
      000A53 30 E7 E9         [24]  701 	jnb	acc.7,00107$
      000A56 80 F9            [24]  702 	sjmp	00104$
      000A58                        703 00110$:
                                    704 ;	../../../usb/system.c:71: }
      000A58 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'PrintHex'
                                    708 ;------------------------------------------------------------
                                    709 ;len                       Allocated to stack - _bp -3
                                    710 ;data                      Allocated to stack - _bp +1
                                    711 ;i                         Allocated to registers r3 r4 
                                    712 ;------------------------------------------------------------
                                    713 ;	../../../usb/system.c:73: void PrintHex(uint8_t* data, uint8_t len)
                                    714 ;	-----------------------------------------
                                    715 ;	 function PrintHex
                                    716 ;	-----------------------------------------
      000A59                        717 _PrintHex:
      000A59 C0 1F            [24]  718 	push	_bp
      000A5B 85 81 1F         [24]  719 	mov	_bp,sp
      000A5E C0 82            [24]  720 	push	dpl
      000A60 C0 83            [24]  721 	push	dph
      000A62 C0 F0            [24]  722 	push	b
                                    723 ;	../../../usb/system.c:75: for (int i = 0; i < len; i++) {
      000A64 7B 00            [12]  724 	mov	r3,#0x00
      000A66 7C 00            [12]  725 	mov	r4,#0x00
      000A68                        726 00103$:
      000A68 E5 1F            [12]  727 	mov	a,_bp
      000A6A 24 FD            [12]  728 	add	a,#0xfd
      000A6C F8               [12]  729 	mov	r0,a
      000A6D 86 02            [24]  730 	mov	ar2,@r0
      000A6F 7F 00            [12]  731 	mov	r7,#0x00
      000A71 C3               [12]  732 	clr	c
      000A72 EB               [12]  733 	mov	a,r3
      000A73 9A               [12]  734 	subb	a,r2
      000A74 EC               [12]  735 	mov	a,r4
      000A75 64 80            [12]  736 	xrl	a,#0x80
      000A77 8F F0            [24]  737 	mov	b,r7
      000A79 63 F0 80         [24]  738 	xrl	b,#0x80
      000A7C 95 F0            [12]  739 	subb	a,b
      000A7E 50 3D            [24]  740 	jnc	00105$
                                    741 ;	../../../usb/system.c:76: printf_tiny("%x ", data[i]);
      000A80 A8 1F            [24]  742 	mov	r0,_bp
      000A82 08               [12]  743 	inc	r0
      000A83 EB               [12]  744 	mov	a,r3
      000A84 26               [12]  745 	add	a,@r0
      000A85 FA               [12]  746 	mov	r2,a
      000A86 EC               [12]  747 	mov	a,r4
      000A87 08               [12]  748 	inc	r0
      000A88 36               [12]  749 	addc	a,@r0
      000A89 FE               [12]  750 	mov	r6,a
      000A8A 08               [12]  751 	inc	r0
      000A8B 86 07            [24]  752 	mov	ar7,@r0
      000A8D 8A 82            [24]  753 	mov	dpl,r2
      000A8F 8E 83            [24]  754 	mov	dph,r6
      000A91 8F F0            [24]  755 	mov	b,r7
      000A93 12 33 25         [24]  756 	lcall	__gptrget
      000A96 FA               [12]  757 	mov	r2,a
      000A97 7F 00            [12]  758 	mov	r7,#0x00
      000A99 C0 04            [24]  759 	push	ar4
      000A9B C0 03            [24]  760 	push	ar3
      000A9D C0 02            [24]  761 	push	ar2
      000A9F C0 07            [24]  762 	push	ar7
      000AA1 74 98            [12]  763 	mov	a,#___str_0
      000AA3 C0 E0            [24]  764 	push	acc
      000AA5 74 33            [12]  765 	mov	a,#(___str_0 >> 8)
      000AA7 C0 E0            [24]  766 	push	acc
      000AA9 12 31 17         [24]  767 	lcall	_printf_tiny
      000AAC E5 81            [12]  768 	mov	a,sp
      000AAE 24 FC            [12]  769 	add	a,#0xfc
      000AB0 F5 81            [12]  770 	mov	sp,a
      000AB2 D0 03            [24]  771 	pop	ar3
      000AB4 D0 04            [24]  772 	pop	ar4
                                    773 ;	../../../usb/system.c:75: for (int i = 0; i < len; i++) {
      000AB6 0B               [12]  774 	inc	r3
      000AB7 BB 00 AE         [24]  775 	cjne	r3,#0x00,00103$
      000ABA 0C               [12]  776 	inc	r4
      000ABB 80 AB            [24]  777 	sjmp	00103$
      000ABD                        778 00105$:
                                    779 ;	../../../usb/system.c:78: }
      000ABD 85 1F 81         [24]  780 	mov	sp,_bp
      000AC0 D0 1F            [24]  781 	pop	_bp
      000AC2 22               [24]  782 	ret
                                    783 ;------------------------------------------------------------
                                    784 ;Allocation info for local variables in function 'putchar'
                                    785 ;------------------------------------------------------------
                                    786 ;c                         Allocated to registers r6 r7 
                                    787 ;------------------------------------------------------------
                                    788 ;	../../../usb/system.c:80: int putchar(int c)
                                    789 ;	-----------------------------------------
                                    790 ;	 function putchar
                                    791 ;	-----------------------------------------
      000AC3                        792 _putchar:
      000AC3 AE 82            [24]  793 	mov	r6,dpl
      000AC5 AF 83            [24]  794 	mov	r7,dph
                                    795 ;	../../../usb/system.c:82: while (TI == 0)
      000AC7                        796 00101$:
                                    797 ;	../../../usb/system.c:84: TI = 0;
                                    798 ;	assignBit
      000AC7 10 99 02         [24]  799 	jbc	_TI,00114$
      000ACA 80 FB            [24]  800 	sjmp	00101$
      000ACC                        801 00114$:
                                    802 ;	../../../usb/system.c:85: SBUF = c;
      000ACC 8E 99            [24]  803 	mov	_SBUF,r6
                                    804 ;	../../../usb/system.c:86: return c;
      000ACE 8E 82            [24]  805 	mov	dpl,r6
      000AD0 8F 83            [24]  806 	mov	dph,r7
                                    807 ;	../../../usb/system.c:87: }
      000AD2 22               [24]  808 	ret
                                    809 ;------------------------------------------------------------
                                    810 ;Allocation info for local variables in function 'getchar'
                                    811 ;------------------------------------------------------------
                                    812 ;	../../../usb/system.c:89: int getchar()
                                    813 ;	-----------------------------------------
                                    814 ;	 function getchar
                                    815 ;	-----------------------------------------
      000AD3                        816 _getchar:
                                    817 ;	../../../usb/system.c:91: while (RI == 0)
      000AD3                        818 00101$:
                                    819 ;	../../../usb/system.c:93: RI = 0;
                                    820 ;	assignBit
      000AD3 10 98 02         [24]  821 	jbc	_RI,00114$
      000AD6 80 FB            [24]  822 	sjmp	00101$
      000AD8                        823 00114$:
                                    824 ;	../../../usb/system.c:94: return SBUF;
      000AD8 AE 99            [24]  825 	mov	r6,_SBUF
      000ADA 7F 00            [12]  826 	mov	r7,#0x00
      000ADC 8E 82            [24]  827 	mov	dpl,r6
      000ADE 8F 83            [24]  828 	mov	dph,r7
                                    829 ;	../../../usb/system.c:95: }
      000AE0 22               [24]  830 	ret
                                    831 	.area CSEG    (CODE)
                                    832 	.area CONST   (CODE)
                                    833 	.area CONST   (CODE)
      003398                        834 ___str_0:
      003398 25 78 20               835 	.ascii "%x "
      00339B 00                     836 	.db 0x00
                                    837 	.area CSEG    (CODE)
                                    838 	.area XINIT   (CODE)
                                    839 	.area CABS    (ABS,CODE)

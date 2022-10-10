                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module SW_DP
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UIF_BUS_RST
                                     12 	.globl _UIF_DETECT
                                     13 	.globl _UIF_TRANSFER
                                     14 	.globl _UIF_SUSPEND
                                     15 	.globl _UIF_HST_SOF
                                     16 	.globl _UIF_FIFO_OV
                                     17 	.globl _U_SIE_FREE
                                     18 	.globl _U_TOG_OK
                                     19 	.globl _U_IS_NAK
                                     20 	.globl _ADC_CHAN0
                                     21 	.globl _ADC_CHAN1
                                     22 	.globl _CMP_CHAN
                                     23 	.globl _ADC_START
                                     24 	.globl _ADC_IF
                                     25 	.globl _CMP_IF
                                     26 	.globl _CMPO
                                     27 	.globl _U1RI
                                     28 	.globl _U1TI
                                     29 	.globl _U1RB8
                                     30 	.globl _U1TB8
                                     31 	.globl _U1REN
                                     32 	.globl _U1SMOD
                                     33 	.globl _U1SM0
                                     34 	.globl _S0_R_FIFO
                                     35 	.globl _S0_T_FIFO
                                     36 	.globl _S0_FREE
                                     37 	.globl _S0_IF_BYTE
                                     38 	.globl _S0_IF_FIRST
                                     39 	.globl _S0_IF_OV
                                     40 	.globl _S0_FST_ACT
                                     41 	.globl _CP_RL2
                                     42 	.globl _C_T2
                                     43 	.globl _TR2
                                     44 	.globl _EXEN2
                                     45 	.globl _TCLK
                                     46 	.globl _RCLK
                                     47 	.globl _EXF2
                                     48 	.globl _CAP1F
                                     49 	.globl _TF2
                                     50 	.globl _RI
                                     51 	.globl _TI
                                     52 	.globl _RB8
                                     53 	.globl _TB8
                                     54 	.globl _REN
                                     55 	.globl _SM2
                                     56 	.globl _SM1
                                     57 	.globl _SM0
                                     58 	.globl _IT0
                                     59 	.globl _IE0
                                     60 	.globl _IT1
                                     61 	.globl _IE1
                                     62 	.globl _TR0
                                     63 	.globl _TF0
                                     64 	.globl _TR1
                                     65 	.globl _TF1
                                     66 	.globl _RXD
                                     67 	.globl _PWM1_
                                     68 	.globl _P3_0
                                     69 	.globl _TXD
                                     70 	.globl _PWM2_
                                     71 	.globl _P3_1
                                     72 	.globl _AIN3
                                     73 	.globl _VBUS1
                                     74 	.globl _INT0
                                     75 	.globl _TXD1_
                                     76 	.globl _P3_2
                                     77 	.globl _INT1
                                     78 	.globl _P3_3
                                     79 	.globl _T0
                                     80 	.globl _RXD1_
                                     81 	.globl _PWM2
                                     82 	.globl _P3_4
                                     83 	.globl _T1
                                     84 	.globl _P3_5
                                     85 	.globl _UDP
                                     86 	.globl _P3_6
                                     87 	.globl _UDM
                                     88 	.globl _P3_7
                                     89 	.globl _TIN0
                                     90 	.globl _CAP1
                                     91 	.globl _T2
                                     92 	.globl _P1_0
                                     93 	.globl _AIN0
                                     94 	.globl _VBUS2
                                     95 	.globl _TIN1
                                     96 	.globl _CAP2
                                     97 	.globl _T2EX
                                     98 	.globl _P1_1
                                     99 	.globl _RXD_
                                    100 	.globl _P1_2
                                    101 	.globl _TXD_
                                    102 	.globl _P1_3
                                    103 	.globl _AIN1
                                    104 	.globl _UCC1
                                    105 	.globl _TIN2
                                    106 	.globl _SCS
                                    107 	.globl _CAP1_
                                    108 	.globl _T2_
                                    109 	.globl _P1_4
                                    110 	.globl _AIN2
                                    111 	.globl _UCC2
                                    112 	.globl _TIN3
                                    113 	.globl _PWM1
                                    114 	.globl _MOSI
                                    115 	.globl _P1_5
                                    116 	.globl _TIN4
                                    117 	.globl _RXD1
                                    118 	.globl _MISO
                                    119 	.globl _P1_6
                                    120 	.globl _TIN5
                                    121 	.globl _TXD1
                                    122 	.globl _SCK
                                    123 	.globl _P1_7
                                    124 	.globl _IE_SPI0
                                    125 	.globl _IE_TKEY
                                    126 	.globl _IE_USB
                                    127 	.globl _IE_ADC
                                    128 	.globl _IE_UART1
                                    129 	.globl _IE_PWMX
                                    130 	.globl _IE_GPIO
                                    131 	.globl _IE_WDOG
                                    132 	.globl _PX0
                                    133 	.globl _PT0
                                    134 	.globl _PX1
                                    135 	.globl _PT1
                                    136 	.globl _PS
                                    137 	.globl _PT2
                                    138 	.globl _PL_FLAG
                                    139 	.globl _PH_FLAG
                                    140 	.globl _EX0
                                    141 	.globl _ET0
                                    142 	.globl _EX1
                                    143 	.globl _ET1
                                    144 	.globl _ES
                                    145 	.globl _ET2
                                    146 	.globl _E_DIS
                                    147 	.globl _EA
                                    148 	.globl _P
                                    149 	.globl _F1
                                    150 	.globl _OV
                                    151 	.globl _RS0
                                    152 	.globl _RS1
                                    153 	.globl _F0
                                    154 	.globl _AC
                                    155 	.globl _CY
                                    156 	.globl _UEP1_DMA_H
                                    157 	.globl _UEP1_DMA_L
                                    158 	.globl _UEP1_DMA
                                    159 	.globl _UEP0_DMA_H
                                    160 	.globl _UEP0_DMA_L
                                    161 	.globl _UEP0_DMA
                                    162 	.globl _UEP2_3_MOD
                                    163 	.globl _UEP4_1_MOD
                                    164 	.globl _UEP3_DMA_H
                                    165 	.globl _UEP3_DMA_L
                                    166 	.globl _UEP3_DMA
                                    167 	.globl _UEP2_DMA_H
                                    168 	.globl _UEP2_DMA_L
                                    169 	.globl _UEP2_DMA
                                    170 	.globl _USB_DEV_AD
                                    171 	.globl _USB_CTRL
                                    172 	.globl _USB_INT_EN
                                    173 	.globl _UEP4_T_LEN
                                    174 	.globl _UEP4_CTRL
                                    175 	.globl _UEP0_T_LEN
                                    176 	.globl _UEP0_CTRL
                                    177 	.globl _USB_RX_LEN
                                    178 	.globl _USB_MIS_ST
                                    179 	.globl _USB_INT_ST
                                    180 	.globl _USB_INT_FG
                                    181 	.globl _UEP3_T_LEN
                                    182 	.globl _UEP3_CTRL
                                    183 	.globl _UEP2_T_LEN
                                    184 	.globl _UEP2_CTRL
                                    185 	.globl _UEP1_T_LEN
                                    186 	.globl _UEP1_CTRL
                                    187 	.globl _UDEV_CTRL
                                    188 	.globl _USB_C_CTRL
                                    189 	.globl _TKEY_DATH
                                    190 	.globl _TKEY_DATL
                                    191 	.globl _TKEY_DAT
                                    192 	.globl _TKEY_CTRL
                                    193 	.globl _ADC_DATA
                                    194 	.globl _ADC_CFG
                                    195 	.globl _ADC_CTRL
                                    196 	.globl _SBAUD1
                                    197 	.globl _SBUF1
                                    198 	.globl _SCON1
                                    199 	.globl _SPI0_SETUP
                                    200 	.globl _SPI0_CK_SE
                                    201 	.globl _SPI0_CTRL
                                    202 	.globl _SPI0_DATA
                                    203 	.globl _SPI0_STAT
                                    204 	.globl _PWM_CK_SE
                                    205 	.globl _PWM_CTRL
                                    206 	.globl _PWM_DATA1
                                    207 	.globl _PWM_DATA2
                                    208 	.globl _T2CAP1H
                                    209 	.globl _T2CAP1L
                                    210 	.globl _T2CAP1
                                    211 	.globl _TH2
                                    212 	.globl _TL2
                                    213 	.globl _T2COUNT
                                    214 	.globl _RCAP2H
                                    215 	.globl _RCAP2L
                                    216 	.globl _RCAP2
                                    217 	.globl _T2MOD
                                    218 	.globl _T2CON
                                    219 	.globl _SBUF
                                    220 	.globl _SCON
                                    221 	.globl _TH1
                                    222 	.globl _TH0
                                    223 	.globl _TL1
                                    224 	.globl _TL0
                                    225 	.globl _TMOD
                                    226 	.globl _TCON
                                    227 	.globl _XBUS_AUX
                                    228 	.globl _PIN_FUNC
                                    229 	.globl _P3_DIR_PU
                                    230 	.globl _P3_MOD_OC
                                    231 	.globl _P3
                                    232 	.globl _P2
                                    233 	.globl _P1_DIR_PU
                                    234 	.globl _P1_MOD_OC
                                    235 	.globl _P1
                                    236 	.globl _ROM_CTRL
                                    237 	.globl _ROM_DATA_H
                                    238 	.globl _ROM_DATA_L
                                    239 	.globl _ROM_DATA
                                    240 	.globl _ROM_ADDR_H
                                    241 	.globl _ROM_ADDR_L
                                    242 	.globl _ROM_ADDR
                                    243 	.globl _GPIO_IE
                                    244 	.globl _IP_EX
                                    245 	.globl _IE_EX
                                    246 	.globl _IP
                                    247 	.globl _IE
                                    248 	.globl _WDOG_COUNT
                                    249 	.globl _RESET_KEEP
                                    250 	.globl _WAKE_CTRL
                                    251 	.globl _CLOCK_CFG
                                    252 	.globl _PCON
                                    253 	.globl _GLOBAL_CFG
                                    254 	.globl _SAFE_MOD
                                    255 	.globl _DPH
                                    256 	.globl _DPL
                                    257 	.globl _SP
                                    258 	.globl _B
                                    259 	.globl _ACC
                                    260 	.globl _PSW
                                    261 	.globl _SWJ_Sequence
                                    262 	.globl _SWD_Sequence
                                    263 	.globl _SWD_Transfer
                                    264 ;--------------------------------------------------------
                                    265 ; special function registers
                                    266 ;--------------------------------------------------------
                                    267 	.area RSEG    (ABS,DATA)
      000000                        268 	.org 0x0000
                           0000D0   269 _PSW	=	0x00d0
                           0000E0   270 _ACC	=	0x00e0
                           0000F0   271 _B	=	0x00f0
                           000081   272 _SP	=	0x0081
                           000082   273 _DPL	=	0x0082
                           000083   274 _DPH	=	0x0083
                           0000A1   275 _SAFE_MOD	=	0x00a1
                           0000B1   276 _GLOBAL_CFG	=	0x00b1
                           000087   277 _PCON	=	0x0087
                           0000B9   278 _CLOCK_CFG	=	0x00b9
                           0000A9   279 _WAKE_CTRL	=	0x00a9
                           0000FE   280 _RESET_KEEP	=	0x00fe
                           0000FF   281 _WDOG_COUNT	=	0x00ff
                           0000A8   282 _IE	=	0x00a8
                           0000B8   283 _IP	=	0x00b8
                           0000E8   284 _IE_EX	=	0x00e8
                           0000E9   285 _IP_EX	=	0x00e9
                           0000C7   286 _GPIO_IE	=	0x00c7
                           008584   287 _ROM_ADDR	=	0x8584
                           000084   288 _ROM_ADDR_L	=	0x0084
                           000085   289 _ROM_ADDR_H	=	0x0085
                           008F8E   290 _ROM_DATA	=	0x8f8e
                           00008E   291 _ROM_DATA_L	=	0x008e
                           00008F   292 _ROM_DATA_H	=	0x008f
                           000086   293 _ROM_CTRL	=	0x0086
                           000090   294 _P1	=	0x0090
                           000092   295 _P1_MOD_OC	=	0x0092
                           000093   296 _P1_DIR_PU	=	0x0093
                           0000A0   297 _P2	=	0x00a0
                           0000B0   298 _P3	=	0x00b0
                           000096   299 _P3_MOD_OC	=	0x0096
                           000097   300 _P3_DIR_PU	=	0x0097
                           0000C6   301 _PIN_FUNC	=	0x00c6
                           0000A2   302 _XBUS_AUX	=	0x00a2
                           000088   303 _TCON	=	0x0088
                           000089   304 _TMOD	=	0x0089
                           00008A   305 _TL0	=	0x008a
                           00008B   306 _TL1	=	0x008b
                           00008C   307 _TH0	=	0x008c
                           00008D   308 _TH1	=	0x008d
                           000098   309 _SCON	=	0x0098
                           000099   310 _SBUF	=	0x0099
                           0000C8   311 _T2CON	=	0x00c8
                           0000C9   312 _T2MOD	=	0x00c9
                           00CBCA   313 _RCAP2	=	0xcbca
                           0000CA   314 _RCAP2L	=	0x00ca
                           0000CB   315 _RCAP2H	=	0x00cb
                           00CDCC   316 _T2COUNT	=	0xcdcc
                           0000CC   317 _TL2	=	0x00cc
                           0000CD   318 _TH2	=	0x00cd
                           00CFCE   319 _T2CAP1	=	0xcfce
                           0000CE   320 _T2CAP1L	=	0x00ce
                           0000CF   321 _T2CAP1H	=	0x00cf
                           00009B   322 _PWM_DATA2	=	0x009b
                           00009C   323 _PWM_DATA1	=	0x009c
                           00009D   324 _PWM_CTRL	=	0x009d
                           00009E   325 _PWM_CK_SE	=	0x009e
                           0000F8   326 _SPI0_STAT	=	0x00f8
                           0000F9   327 _SPI0_DATA	=	0x00f9
                           0000FA   328 _SPI0_CTRL	=	0x00fa
                           0000FB   329 _SPI0_CK_SE	=	0x00fb
                           0000FC   330 _SPI0_SETUP	=	0x00fc
                           0000C0   331 _SCON1	=	0x00c0
                           0000C1   332 _SBUF1	=	0x00c1
                           0000C2   333 _SBAUD1	=	0x00c2
                           000080   334 _ADC_CTRL	=	0x0080
                           00009A   335 _ADC_CFG	=	0x009a
                           00009F   336 _ADC_DATA	=	0x009f
                           0000C3   337 _TKEY_CTRL	=	0x00c3
                           00C5C4   338 _TKEY_DAT	=	0xc5c4
                           0000C4   339 _TKEY_DATL	=	0x00c4
                           0000C5   340 _TKEY_DATH	=	0x00c5
                           000091   341 _USB_C_CTRL	=	0x0091
                           0000D1   342 _UDEV_CTRL	=	0x00d1
                           0000D2   343 _UEP1_CTRL	=	0x00d2
                           0000D3   344 _UEP1_T_LEN	=	0x00d3
                           0000D4   345 _UEP2_CTRL	=	0x00d4
                           0000D5   346 _UEP2_T_LEN	=	0x00d5
                           0000D6   347 _UEP3_CTRL	=	0x00d6
                           0000D7   348 _UEP3_T_LEN	=	0x00d7
                           0000D8   349 _USB_INT_FG	=	0x00d8
                           0000D9   350 _USB_INT_ST	=	0x00d9
                           0000DA   351 _USB_MIS_ST	=	0x00da
                           0000DB   352 _USB_RX_LEN	=	0x00db
                           0000DC   353 _UEP0_CTRL	=	0x00dc
                           0000DD   354 _UEP0_T_LEN	=	0x00dd
                           0000DE   355 _UEP4_CTRL	=	0x00de
                           0000DF   356 _UEP4_T_LEN	=	0x00df
                           0000E1   357 _USB_INT_EN	=	0x00e1
                           0000E2   358 _USB_CTRL	=	0x00e2
                           0000E3   359 _USB_DEV_AD	=	0x00e3
                           00E5E4   360 _UEP2_DMA	=	0xe5e4
                           0000E4   361 _UEP2_DMA_L	=	0x00e4
                           0000E5   362 _UEP2_DMA_H	=	0x00e5
                           00E7E6   363 _UEP3_DMA	=	0xe7e6
                           0000E6   364 _UEP3_DMA_L	=	0x00e6
                           0000E7   365 _UEP3_DMA_H	=	0x00e7
                           0000EA   366 _UEP4_1_MOD	=	0x00ea
                           0000EB   367 _UEP2_3_MOD	=	0x00eb
                           00EDEC   368 _UEP0_DMA	=	0xedec
                           0000EC   369 _UEP0_DMA_L	=	0x00ec
                           0000ED   370 _UEP0_DMA_H	=	0x00ed
                           00EFEE   371 _UEP1_DMA	=	0xefee
                           0000EE   372 _UEP1_DMA_L	=	0x00ee
                           0000EF   373 _UEP1_DMA_H	=	0x00ef
                                    374 ;--------------------------------------------------------
                                    375 ; special function bits
                                    376 ;--------------------------------------------------------
                                    377 	.area RSEG    (ABS,DATA)
      000000                        378 	.org 0x0000
                           0000D7   379 _CY	=	0x00d7
                           0000D6   380 _AC	=	0x00d6
                           0000D5   381 _F0	=	0x00d5
                           0000D4   382 _RS1	=	0x00d4
                           0000D3   383 _RS0	=	0x00d3
                           0000D2   384 _OV	=	0x00d2
                           0000D1   385 _F1	=	0x00d1
                           0000D0   386 _P	=	0x00d0
                           0000AF   387 _EA	=	0x00af
                           0000AE   388 _E_DIS	=	0x00ae
                           0000AD   389 _ET2	=	0x00ad
                           0000AC   390 _ES	=	0x00ac
                           0000AB   391 _ET1	=	0x00ab
                           0000AA   392 _EX1	=	0x00aa
                           0000A9   393 _ET0	=	0x00a9
                           0000A8   394 _EX0	=	0x00a8
                           0000AF   395 _PH_FLAG	=	0x00af
                           0000AE   396 _PL_FLAG	=	0x00ae
                           0000AD   397 _PT2	=	0x00ad
                           0000AC   398 _PS	=	0x00ac
                           0000AB   399 _PT1	=	0x00ab
                           0000AA   400 _PX1	=	0x00aa
                           0000A9   401 _PT0	=	0x00a9
                           0000A8   402 _PX0	=	0x00a8
                           0000EF   403 _IE_WDOG	=	0x00ef
                           0000EE   404 _IE_GPIO	=	0x00ee
                           0000ED   405 _IE_PWMX	=	0x00ed
                           0000EC   406 _IE_UART1	=	0x00ec
                           0000EB   407 _IE_ADC	=	0x00eb
                           0000EA   408 _IE_USB	=	0x00ea
                           0000E9   409 _IE_TKEY	=	0x00e9
                           0000E8   410 _IE_SPI0	=	0x00e8
                           000097   411 _P1_7	=	0x0097
                           000097   412 _SCK	=	0x0097
                           000097   413 _TXD1	=	0x0097
                           000097   414 _TIN5	=	0x0097
                           000096   415 _P1_6	=	0x0096
                           000096   416 _MISO	=	0x0096
                           000096   417 _RXD1	=	0x0096
                           000096   418 _TIN4	=	0x0096
                           000095   419 _P1_5	=	0x0095
                           000095   420 _MOSI	=	0x0095
                           000095   421 _PWM1	=	0x0095
                           000095   422 _TIN3	=	0x0095
                           000095   423 _UCC2	=	0x0095
                           000095   424 _AIN2	=	0x0095
                           000094   425 _P1_4	=	0x0094
                           000094   426 _T2_	=	0x0094
                           000094   427 _CAP1_	=	0x0094
                           000094   428 _SCS	=	0x0094
                           000094   429 _TIN2	=	0x0094
                           000094   430 _UCC1	=	0x0094
                           000094   431 _AIN1	=	0x0094
                           000093   432 _P1_3	=	0x0093
                           000093   433 _TXD_	=	0x0093
                           000092   434 _P1_2	=	0x0092
                           000092   435 _RXD_	=	0x0092
                           000091   436 _P1_1	=	0x0091
                           000091   437 _T2EX	=	0x0091
                           000091   438 _CAP2	=	0x0091
                           000091   439 _TIN1	=	0x0091
                           000091   440 _VBUS2	=	0x0091
                           000091   441 _AIN0	=	0x0091
                           000090   442 _P1_0	=	0x0090
                           000090   443 _T2	=	0x0090
                           000090   444 _CAP1	=	0x0090
                           000090   445 _TIN0	=	0x0090
                           0000B7   446 _P3_7	=	0x00b7
                           0000B7   447 _UDM	=	0x00b7
                           0000B6   448 _P3_6	=	0x00b6
                           0000B6   449 _UDP	=	0x00b6
                           0000B5   450 _P3_5	=	0x00b5
                           0000B5   451 _T1	=	0x00b5
                           0000B4   452 _P3_4	=	0x00b4
                           0000B4   453 _PWM2	=	0x00b4
                           0000B4   454 _RXD1_	=	0x00b4
                           0000B4   455 _T0	=	0x00b4
                           0000B3   456 _P3_3	=	0x00b3
                           0000B3   457 _INT1	=	0x00b3
                           0000B2   458 _P3_2	=	0x00b2
                           0000B2   459 _TXD1_	=	0x00b2
                           0000B2   460 _INT0	=	0x00b2
                           0000B2   461 _VBUS1	=	0x00b2
                           0000B2   462 _AIN3	=	0x00b2
                           0000B1   463 _P3_1	=	0x00b1
                           0000B1   464 _PWM2_	=	0x00b1
                           0000B1   465 _TXD	=	0x00b1
                           0000B0   466 _P3_0	=	0x00b0
                           0000B0   467 _PWM1_	=	0x00b0
                           0000B0   468 _RXD	=	0x00b0
                           00008F   469 _TF1	=	0x008f
                           00008E   470 _TR1	=	0x008e
                           00008D   471 _TF0	=	0x008d
                           00008C   472 _TR0	=	0x008c
                           00008B   473 _IE1	=	0x008b
                           00008A   474 _IT1	=	0x008a
                           000089   475 _IE0	=	0x0089
                           000088   476 _IT0	=	0x0088
                           00009F   477 _SM0	=	0x009f
                           00009E   478 _SM1	=	0x009e
                           00009D   479 _SM2	=	0x009d
                           00009C   480 _REN	=	0x009c
                           00009B   481 _TB8	=	0x009b
                           00009A   482 _RB8	=	0x009a
                           000099   483 _TI	=	0x0099
                           000098   484 _RI	=	0x0098
                           0000CF   485 _TF2	=	0x00cf
                           0000CF   486 _CAP1F	=	0x00cf
                           0000CE   487 _EXF2	=	0x00ce
                           0000CD   488 _RCLK	=	0x00cd
                           0000CC   489 _TCLK	=	0x00cc
                           0000CB   490 _EXEN2	=	0x00cb
                           0000CA   491 _TR2	=	0x00ca
                           0000C9   492 _C_T2	=	0x00c9
                           0000C8   493 _CP_RL2	=	0x00c8
                           0000FF   494 _S0_FST_ACT	=	0x00ff
                           0000FE   495 _S0_IF_OV	=	0x00fe
                           0000FD   496 _S0_IF_FIRST	=	0x00fd
                           0000FC   497 _S0_IF_BYTE	=	0x00fc
                           0000FB   498 _S0_FREE	=	0x00fb
                           0000FA   499 _S0_T_FIFO	=	0x00fa
                           0000F8   500 _S0_R_FIFO	=	0x00f8
                           0000C7   501 _U1SM0	=	0x00c7
                           0000C5   502 _U1SMOD	=	0x00c5
                           0000C4   503 _U1REN	=	0x00c4
                           0000C3   504 _U1TB8	=	0x00c3
                           0000C2   505 _U1RB8	=	0x00c2
                           0000C1   506 _U1TI	=	0x00c1
                           0000C0   507 _U1RI	=	0x00c0
                           000087   508 _CMPO	=	0x0087
                           000086   509 _CMP_IF	=	0x0086
                           000085   510 _ADC_IF	=	0x0085
                           000084   511 _ADC_START	=	0x0084
                           000083   512 _CMP_CHAN	=	0x0083
                           000081   513 _ADC_CHAN1	=	0x0081
                           000080   514 _ADC_CHAN0	=	0x0080
                           0000DF   515 _U_IS_NAK	=	0x00df
                           0000DE   516 _U_TOG_OK	=	0x00de
                           0000DD   517 _U_SIE_FREE	=	0x00dd
                           0000DC   518 _UIF_FIFO_OV	=	0x00dc
                           0000DB   519 _UIF_HST_SOF	=	0x00db
                           0000DA   520 _UIF_SUSPEND	=	0x00da
                           0000D9   521 _UIF_TRANSFER	=	0x00d9
                           0000D8   522 _UIF_DETECT	=	0x00d8
                           0000D8   523 _UIF_BUS_RST	=	0x00d8
                                    524 ;--------------------------------------------------------
                                    525 ; overlayable register banks
                                    526 ;--------------------------------------------------------
                                    527 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        528 	.ds 8
                                    529 ;--------------------------------------------------------
                                    530 ; internal ram data
                                    531 ;--------------------------------------------------------
                                    532 	.area DSEG    (DATA)
                                    533 ;--------------------------------------------------------
                                    534 ; overlayable items in internal ram 
                                    535 ;--------------------------------------------------------
                                    536 ;--------------------------------------------------------
                                    537 ; indirectly addressable internal ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area ISEG    (DATA)
                                    540 ;--------------------------------------------------------
                                    541 ; absolute internal ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area IABS    (ABS,DATA)
                                    544 	.area IABS    (ABS,DATA)
                                    545 ;--------------------------------------------------------
                                    546 ; bit data
                                    547 ;--------------------------------------------------------
                                    548 	.area BSEG    (BIT)
                                    549 ;--------------------------------------------------------
                                    550 ; paged external ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area PSEG    (PAG,XDATA)
                                    553 ;--------------------------------------------------------
                                    554 ; external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area XSEG    (XDATA)
                                    557 ;--------------------------------------------------------
                                    558 ; absolute external ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area XABS    (ABS,XDATA)
                                    561 ;--------------------------------------------------------
                                    562 ; external initialized ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area XISEG   (XDATA)
                                    565 	.area HOME    (CODE)
                                    566 	.area GSINIT0 (CODE)
                                    567 	.area GSINIT1 (CODE)
                                    568 	.area GSINIT2 (CODE)
                                    569 	.area GSINIT3 (CODE)
                                    570 	.area GSINIT4 (CODE)
                                    571 	.area GSINIT5 (CODE)
                                    572 	.area GSINIT  (CODE)
                                    573 	.area GSFINAL (CODE)
                                    574 	.area CSEG    (CODE)
                                    575 ;--------------------------------------------------------
                                    576 ; global & static initialisations
                                    577 ;--------------------------------------------------------
                                    578 	.area HOME    (CODE)
                                    579 	.area GSINIT  (CODE)
                                    580 	.area GSFINAL (CODE)
                                    581 	.area GSINIT  (CODE)
                                    582 ;--------------------------------------------------------
                                    583 ; Home
                                    584 ;--------------------------------------------------------
                                    585 	.area HOME    (CODE)
                                    586 	.area HOME    (CODE)
                                    587 ;--------------------------------------------------------
                                    588 ; code
                                    589 ;--------------------------------------------------------
                                    590 	.area CSEG    (CODE)
                                    591 ;------------------------------------------------------------
                                    592 ;Allocation info for local variables in function 'SWJ_Sequence'
                                    593 ;------------------------------------------------------------
                                    594 ;data                      Allocated to stack - _bp -5
                                    595 ;count                     Allocated to registers 
                                    596 ;val                       Allocated to registers r5 
                                    597 ;n                         Allocated to registers r4 
                                    598 ;sloc0                     Allocated to stack - _bp +1
                                    599 ;------------------------------------------------------------
                                    600 ;	../../../usb/SW_DP.c:63: void SWJ_Sequence(uint16_t count, const uint8_t* data)
                                    601 ;	-----------------------------------------
                                    602 ;	 function SWJ_Sequence
                                    603 ;	-----------------------------------------
      002D4F                        604 _SWJ_Sequence:
                           000007   605 	ar7 = 0x07
                           000006   606 	ar6 = 0x06
                           000005   607 	ar5 = 0x05
                           000004   608 	ar4 = 0x04
                           000003   609 	ar3 = 0x03
                           000002   610 	ar2 = 0x02
                           000001   611 	ar1 = 0x01
                           000000   612 	ar0 = 0x00
      002D4F C0 1F            [24]  613 	push	_bp
      002D51 85 81 1F         [24]  614 	mov	_bp,sp
      002D54 05 81            [12]  615 	inc	sp
      002D56 05 81            [12]  616 	inc	sp
      002D58 05 81            [12]  617 	inc	sp
      002D5A AE 82            [24]  618 	mov	r6,dpl
      002D5C AF 83            [24]  619 	mov	r7,dph
                                    620 ;	../../../usb/SW_DP.c:68: val = 0U;
                                    621 ;	../../../usb/SW_DP.c:69: n = 0U;
                                    622 ;	../../../usb/SW_DP.c:70: while (count--) {
      002D5E E4               [12]  623 	clr	a
      002D5F FD               [12]  624 	mov	r5,a
      002D60 FC               [12]  625 	mov	r4,a
      002D61 E5 1F            [12]  626 	mov	a,_bp
      002D63 24 FB            [12]  627 	add	a,#0xfb
      002D65 F8               [12]  628 	mov	r0,a
      002D66 A9 1F            [24]  629 	mov	r1,_bp
      002D68 09               [12]  630 	inc	r1
      002D69 E6               [12]  631 	mov	a,@r0
      002D6A F7               [12]  632 	mov	@r1,a
      002D6B 08               [12]  633 	inc	r0
      002D6C 09               [12]  634 	inc	r1
      002D6D E6               [12]  635 	mov	a,@r0
      002D6E F7               [12]  636 	mov	@r1,a
      002D6F 08               [12]  637 	inc	r0
      002D70 09               [12]  638 	inc	r1
      002D71 E6               [12]  639 	mov	a,@r0
      002D72 F7               [12]  640 	mov	@r1,a
      002D73                        641 00106$:
      002D73 8E 02            [24]  642 	mov	ar2,r6
      002D75 8F 03            [24]  643 	mov	ar3,r7
      002D77 1E               [12]  644 	dec	r6
      002D78 BE FF 01         [24]  645 	cjne	r6,#0xff,00128$
      002D7B 1F               [12]  646 	dec	r7
      002D7C                        647 00128$:
      002D7C EA               [12]  648 	mov	a,r2
      002D7D 4B               [12]  649 	orl	a,r3
      002D7E 60 31            [24]  650 	jz	00109$
                                    651 ;	../../../usb/SW_DP.c:71: if (n == 0U) {
      002D80 EC               [12]  652 	mov	a,r4
      002D81 70 19            [24]  653 	jnz	00102$
                                    654 ;	../../../usb/SW_DP.c:72: val = *data++;
      002D83 A8 1F            [24]  655 	mov	r0,_bp
      002D85 08               [12]  656 	inc	r0
      002D86 86 82            [24]  657 	mov	dpl,@r0
      002D88 08               [12]  658 	inc	r0
      002D89 86 83            [24]  659 	mov	dph,@r0
      002D8B 08               [12]  660 	inc	r0
      002D8C 86 F0            [24]  661 	mov	b,@r0
      002D8E 12 33 25         [24]  662 	lcall	__gptrget
      002D91 FD               [12]  663 	mov	r5,a
      002D92 A3               [24]  664 	inc	dptr
      002D93 18               [12]  665 	dec	r0
      002D94 18               [12]  666 	dec	r0
      002D95 A6 82            [24]  667 	mov	@r0,dpl
      002D97 08               [12]  668 	inc	r0
      002D98 A6 83            [24]  669 	mov	@r0,dph
                                    670 ;	../../../usb/SW_DP.c:73: n = 8U;
      002D9A 7C 08            [12]  671 	mov	r4,#0x08
      002D9C                        672 00102$:
                                    673 ;	../../../usb/SW_DP.c:75: if (val & 1U) {
      002D9C ED               [12]  674 	mov	a,r5
      002D9D 30 E0 04         [24]  675 	jnb	acc.0,00104$
                                    676 ;	../../../usb/SW_DP.c:76: PIN_SWDIO_TMS_SET();
                                    677 ;	assignBit
      002DA0 D2 90            [12]  678 	setb	_T2
      002DA2 80 02            [24]  679 	sjmp	00105$
      002DA4                        680 00104$:
                                    681 ;	../../../usb/SW_DP.c:78: PIN_SWDIO_TMS_CLR();
                                    682 ;	assignBit
      002DA4 C2 90            [12]  683 	clr	_T2
      002DA6                        684 00105$:
                                    685 ;	../../../usb/SW_DP.c:80: SW_CLOCK_CYCLE();
                                    686 ;	assignBit
      002DA6 C2 91            [12]  687 	clr	_T2EX
                                    688 ;	assignBit
      002DA8 D2 91            [12]  689 	setb	_T2EX
                                    690 ;	../../../usb/SW_DP.c:81: val >>= 1;
      002DAA ED               [12]  691 	mov	a,r5
      002DAB C3               [12]  692 	clr	c
      002DAC 13               [12]  693 	rrc	a
      002DAD FD               [12]  694 	mov	r5,a
                                    695 ;	../../../usb/SW_DP.c:82: n--;
      002DAE 1C               [12]  696 	dec	r4
      002DAF 80 C2            [24]  697 	sjmp	00106$
      002DB1                        698 00109$:
                                    699 ;	../../../usb/SW_DP.c:84: }
      002DB1 85 1F 81         [24]  700 	mov	sp,_bp
      002DB4 D0 1F            [24]  701 	pop	_bp
      002DB6 22               [24]  702 	ret
                                    703 ;------------------------------------------------------------
                                    704 ;Allocation info for local variables in function 'SWD_Sequence'
                                    705 ;------------------------------------------------------------
                                    706 ;swdo                      Allocated to stack - _bp -5
                                    707 ;swdi                      Allocated to stack - _bp -8
                                    708 ;info                      Allocated to registers r7 
                                    709 ;val                       Allocated to registers 
                                    710 ;bit                       Allocated to registers r7 
                                    711 ;n                         Allocated to registers r6 
                                    712 ;k                         Allocated to registers r2 
                                    713 ;sloc0                     Allocated to stack - _bp +1
                                    714 ;------------------------------------------------------------
                                    715 ;	../../../usb/SW_DP.c:93: void SWD_Sequence(uint8_t info, const uint8_t* swdo, uint8_t* swdi)
                                    716 ;	-----------------------------------------
                                    717 ;	 function SWD_Sequence
                                    718 ;	-----------------------------------------
      002DB7                        719 _SWD_Sequence:
      002DB7 C0 1F            [24]  720 	push	_bp
      002DB9 85 81 1F         [24]  721 	mov	_bp,sp
      002DBC 05 81            [12]  722 	inc	sp
      002DBE AF 82            [24]  723 	mov	r7,dpl
                                    724 ;	../../../usb/SW_DP.c:99: n = info & SWD_SEQUENCE_CLK;
      002DC0 74 3F            [12]  725 	mov	a,#0x3f
      002DC2 5F               [12]  726 	anl	a,r7
                                    727 ;	../../../usb/SW_DP.c:100: if (n == 0U) {
      002DC3 FE               [12]  728 	mov	r6,a
      002DC4 70 02            [24]  729 	jnz	00102$
                                    730 ;	../../../usb/SW_DP.c:101: n = 64U;
      002DC6 7E 40            [12]  731 	mov	r6,#0x40
      002DC8                        732 00102$:
                                    733 ;	../../../usb/SW_DP.c:104: if (info & SWD_SEQUENCE_DIN) {
      002DC8 EF               [12]  734 	mov	a,r7
      002DC9 30 E7 70         [24]  735 	jnb	acc.7,00131$
                                    736 ;	../../../usb/SW_DP.c:105: while (n) {
      002DCC E5 1F            [12]  737 	mov	a,_bp
      002DCE 24 F8            [12]  738 	add	a,#0xf8
      002DD0 F8               [12]  739 	mov	r0,a
      002DD1 86 04            [24]  740 	mov	ar4,@r0
      002DD3 08               [12]  741 	inc	r0
      002DD4 86 05            [24]  742 	mov	ar5,@r0
      002DD6 08               [12]  743 	inc	r0
      002DD7 86 07            [24]  744 	mov	ar7,@r0
      002DD9                        745 00104$:
      002DD9 EE               [12]  746 	mov	a,r6
      002DDA 70 03            [24]  747 	jnz	00188$
      002DDC 02 2E 92         [24]  748 	ljmp	00122$
      002DDF                        749 00188$:
                                    750 ;	../../../usb/SW_DP.c:106: val = 0U;
      002DDF 7B 00            [12]  751 	mov	r3,#0x00
                                    752 ;	../../../usb/SW_DP.c:107: for (k = 8U; k && n; k--, n--) {
      002DE1 7A 08            [12]  753 	mov	r2,#0x08
      002DE3 A8 1F            [24]  754 	mov	r0,_bp
      002DE5 08               [12]  755 	inc	r0
      002DE6 A6 06            [24]  756 	mov	@r0,ar6
      002DE8                        757 00116$:
      002DE8 EA               [12]  758 	mov	a,r2
      002DE9 60 2F            [24]  759 	jz	00135$
      002DEB A8 1F            [24]  760 	mov	r0,_bp
      002DED 08               [12]  761 	inc	r0
      002DEE E6               [12]  762 	mov	a,@r0
      002DEF 60 29            [24]  763 	jz	00135$
                                    764 ;	../../../usb/SW_DP.c:108: SW_READ_BIT(bit);
      002DF1 C0 04            [24]  765 	push	ar4
      002DF3 C0 05            [24]  766 	push	ar5
      002DF5 C0 07            [24]  767 	push	ar7
                                    768 ;	assignBit
      002DF7 C2 91            [12]  769 	clr	_T2EX
      002DF9 A2 90            [12]  770 	mov	c,_T2
      002DFB E4               [12]  771 	clr	a
      002DFC 33               [12]  772 	rlc	a
      002DFD FF               [12]  773 	mov	r7,a
      002DFE 53 07 01         [24]  774 	anl	ar7,#0x01
                                    775 ;	assignBit
      002E01 D2 91            [12]  776 	setb	_T2EX
                                    777 ;	../../../usb/SW_DP.c:109: val >>= 1;
      002E03 EB               [12]  778 	mov	a,r3
      002E04 C3               [12]  779 	clr	c
      002E05 13               [12]  780 	rrc	a
      002E06 FD               [12]  781 	mov	r5,a
                                    782 ;	../../../usb/SW_DP.c:110: val |= bit << 7;
      002E07 EF               [12]  783 	mov	a,r7
      002E08 03               [12]  784 	rr	a
      002E09 54 80            [12]  785 	anl	a,#0x80
      002E0B 4D               [12]  786 	orl	a,r5
      002E0C FB               [12]  787 	mov	r3,a
                                    788 ;	../../../usb/SW_DP.c:107: for (k = 8U; k && n; k--, n--) {
      002E0D 1A               [12]  789 	dec	r2
      002E0E A8 1F            [24]  790 	mov	r0,_bp
      002E10 08               [12]  791 	inc	r0
      002E11 16               [12]  792 	dec	@r0
      002E12 D0 07            [24]  793 	pop	ar7
      002E14 D0 05            [24]  794 	pop	ar5
      002E16 D0 04            [24]  795 	pop	ar4
      002E18 80 CE            [24]  796 	sjmp	00116$
      002E1A                        797 00135$:
      002E1A A8 1F            [24]  798 	mov	r0,_bp
      002E1C 08               [12]  799 	inc	r0
      002E1D 86 06            [24]  800 	mov	ar6,@r0
                                    801 ;	../../../usb/SW_DP.c:112: val >>= k;
      002E1F 8A F0            [24]  802 	mov	b,r2
      002E21 05 F0            [12]  803 	inc	b
      002E23 EB               [12]  804 	mov	a,r3
      002E24 80 02            [24]  805 	sjmp	00192$
      002E26                        806 00191$:
      002E26 C3               [12]  807 	clr	c
      002E27 13               [12]  808 	rrc	a
      002E28                        809 00192$:
      002E28 D5 F0 FB         [24]  810 	djnz	b,00191$
                                    811 ;	../../../usb/SW_DP.c:113: *swdi++ = (uint8_t)val;
      002E2B FA               [12]  812 	mov	r2,a
      002E2C 8C 82            [24]  813 	mov	dpl,r4
      002E2E 8D 83            [24]  814 	mov	dph,r5
      002E30 8F F0            [24]  815 	mov	b,r7
      002E32 12 30 FC         [24]  816 	lcall	__gptrput
      002E35 A3               [24]  817 	inc	dptr
      002E36 AC 82            [24]  818 	mov	r4,dpl
      002E38 AD 83            [24]  819 	mov	r5,dph
                                    820 ;	../../../usb/SW_DP.c:116: while (n) {
      002E3A 80 9D            [24]  821 	sjmp	00104$
      002E3C                        822 00131$:
      002E3C E5 1F            [12]  823 	mov	a,_bp
      002E3E 24 FB            [12]  824 	add	a,#0xfb
      002E40 F8               [12]  825 	mov	r0,a
      002E41 86 04            [24]  826 	mov	ar4,@r0
      002E43 08               [12]  827 	inc	r0
      002E44 86 05            [24]  828 	mov	ar5,@r0
      002E46 08               [12]  829 	inc	r0
      002E47 86 07            [24]  830 	mov	ar7,@r0
      002E49                        831 00108$:
      002E49 EE               [12]  832 	mov	a,r6
      002E4A 60 46            [24]  833 	jz	00122$
                                    834 ;	../../../usb/SW_DP.c:117: val = *swdo++;
      002E4C 8C 82            [24]  835 	mov	dpl,r4
      002E4E 8D 83            [24]  836 	mov	dph,r5
      002E50 8F F0            [24]  837 	mov	b,r7
      002E52 12 33 25         [24]  838 	lcall	__gptrget
      002E55 FB               [12]  839 	mov	r3,a
      002E56 A3               [24]  840 	inc	dptr
      002E57 AC 82            [24]  841 	mov	r4,dpl
      002E59 AD 83            [24]  842 	mov	r5,dph
                                    843 ;	../../../usb/SW_DP.c:118: for (k = 8U; k && n; k--, n--) {
      002E5B 7A 08            [12]  844 	mov	r2,#0x08
      002E5D A8 1F            [24]  845 	mov	r0,_bp
      002E5F 08               [12]  846 	inc	r0
      002E60 A6 06            [24]  847 	mov	@r0,ar6
      002E62                        848 00120$:
      002E62 EA               [12]  849 	mov	a,r2
      002E63 60 E4            [24]  850 	jz	00108$
      002E65 A8 1F            [24]  851 	mov	r0,_bp
      002E67 08               [12]  852 	inc	r0
      002E68 E6               [12]  853 	mov	a,@r0
      002E69 60 DE            [24]  854 	jz	00108$
                                    855 ;	../../../usb/SW_DP.c:119: SW_WRITE_BIT(val);
      002E6B C0 04            [24]  856 	push	ar4
      002E6D C0 05            [24]  857 	push	ar5
      002E6F C0 07            [24]  858 	push	ar7
      002E71 EB               [12]  859 	mov	a,r3
      002E72 54 01            [12]  860 	anl	a,#0x01
                                    861 ;	assignBit
      002E74 24 FF            [12]  862 	add	a,#0xff
      002E76 92 90            [24]  863 	mov	_T2,c
                                    864 ;	assignBit
      002E78 C2 91            [12]  865 	clr	_T2EX
                                    866 ;	assignBit
      002E7A D2 91            [12]  867 	setb	_T2EX
                                    868 ;	../../../usb/SW_DP.c:120: val >>= 1;
      002E7C EB               [12]  869 	mov	a,r3
      002E7D C3               [12]  870 	clr	c
      002E7E 13               [12]  871 	rrc	a
      002E7F FB               [12]  872 	mov	r3,a
                                    873 ;	../../../usb/SW_DP.c:118: for (k = 8U; k && n; k--, n--) {
      002E80 1A               [12]  874 	dec	r2
      002E81 A8 1F            [24]  875 	mov	r0,_bp
      002E83 08               [12]  876 	inc	r0
      002E84 16               [12]  877 	dec	@r0
      002E85 A8 1F            [24]  878 	mov	r0,_bp
      002E87 08               [12]  879 	inc	r0
      002E88 86 06            [24]  880 	mov	ar6,@r0
      002E8A D0 07            [24]  881 	pop	ar7
      002E8C D0 05            [24]  882 	pop	ar5
      002E8E D0 04            [24]  883 	pop	ar4
      002E90 80 D0            [24]  884 	sjmp	00120$
      002E92                        885 00122$:
                                    886 ;	../../../usb/SW_DP.c:124: }
      002E92 15 81            [12]  887 	dec	sp
      002E94 D0 1F            [24]  888 	pop	_bp
      002E96 22               [24]  889 	ret
                                    890 ;------------------------------------------------------------
                                    891 ;Allocation info for local variables in function 'SWD_Transfer'
                                    892 ;------------------------------------------------------------
                                    893 ;data                      Allocated to stack - _bp -5
                                    894 ;request                   Allocated to stack - _bp +1
                                    895 ;ack                       Allocated to registers r4 
                                    896 ;bit                       Allocated to registers r5 
                                    897 ;val                       Allocated to registers r6 
                                    898 ;parity                    Allocated to registers r6 
                                    899 ;n                         Allocated to registers 
                                    900 ;b                         Allocated to stack - _bp +3
                                    901 ;n                         Allocated to registers r6 
                                    902 ;n                         Allocated to registers 
                                    903 ;n                         Allocated to registers r7 
                                    904 ;b                         Allocated to registers r4 
                                    905 ;n                         Allocated to registers r2 
                                    906 ;cycles                    Allocated to registers 
                                    907 ;n                         Allocated to registers r4 
                                    908 ;n                         Allocated to registers 
                                    909 ;n                         Allocated to registers r7 
                                    910 ;n                         Allocated to registers 
                                    911 ;sloc0                     Allocated to stack - _bp +18
                                    912 ;sloc1                     Allocated to stack - _bp +2
                                    913 ;------------------------------------------------------------
                                    914 ;	../../../usb/SW_DP.c:130: uint8_t SWD_Transfer(uint8_t request, uint8_t* data)
                                    915 ;	-----------------------------------------
                                    916 ;	 function SWD_Transfer
                                    917 ;	-----------------------------------------
      002E97                        918 _SWD_Transfer:
      002E97 C0 1F            [24]  919 	push	_bp
      002E99 85 81 1F         [24]  920 	mov	_bp,sp
      002E9C C0 82            [24]  921 	push	dpl
      002E9E 05 81            [12]  922 	inc	sp
      002EA0 05 81            [12]  923 	inc	sp
                                    924 ;	../../../usb/SW_DP.c:139: SW_WRITE_BIT(1U); /* Start Bit */
                                    925 ;	assignBit
      002EA2 D2 90            [12]  926 	setb	_T2
                                    927 ;	assignBit
      002EA4 C2 91            [12]  928 	clr	_T2EX
                                    929 ;	assignBit
      002EA6 D2 91            [12]  930 	setb	_T2EX
                                    931 ;	../../../usb/SW_DP.c:140: bit = request >> 0;
      002EA8 A8 1F            [24]  932 	mov	r0,_bp
      002EAA 08               [12]  933 	inc	r0
                                    934 ;	../../../usb/SW_DP.c:141: SW_WRITE_BIT(bit); /* APnDP Bit */
      002EAB E6               [12]  935 	mov	a,@r0
      002EAC FE               [12]  936 	mov	r6,a
      002EAD 54 01            [12]  937 	anl	a,#0x01
                                    938 ;	assignBit
      002EAF 24 FF            [12]  939 	add	a,#0xff
      002EB1 92 90            [24]  940 	mov	_T2,c
                                    941 ;	assignBit
      002EB3 C2 91            [12]  942 	clr	_T2EX
                                    943 ;	assignBit
      002EB5 D2 91            [12]  944 	setb	_T2EX
                                    945 ;	../../../usb/SW_DP.c:143: bit = request >> 1;
      002EB7 A8 1F            [24]  946 	mov	r0,_bp
      002EB9 08               [12]  947 	inc	r0
      002EBA E6               [12]  948 	mov	a,@r0
      002EBB C3               [12]  949 	clr	c
      002EBC 13               [12]  950 	rrc	a
                                    951 ;	../../../usb/SW_DP.c:144: SW_WRITE_BIT(bit); /* RnW Bit */
      002EBD FD               [12]  952 	mov	r5,a
      002EBE 54 01            [12]  953 	anl	a,#0x01
                                    954 ;	assignBit
      002EC0 24 FF            [12]  955 	add	a,#0xff
      002EC2 92 90            [24]  956 	mov	_T2,c
                                    957 ;	assignBit
      002EC4 C2 91            [12]  958 	clr	_T2EX
                                    959 ;	assignBit
      002EC6 D2 91            [12]  960 	setb	_T2EX
                                    961 ;	../../../usb/SW_DP.c:145: parity += bit;
      002EC8 ED               [12]  962 	mov	a,r5
      002EC9 2E               [12]  963 	add	a,r6
      002ECA FE               [12]  964 	mov	r6,a
                                    965 ;	../../../usb/SW_DP.c:146: bit = request >> 2;
      002ECB A8 1F            [24]  966 	mov	r0,_bp
      002ECD 08               [12]  967 	inc	r0
      002ECE E6               [12]  968 	mov	a,@r0
      002ECF 03               [12]  969 	rr	a
      002ED0 03               [12]  970 	rr	a
      002ED1 54 3F            [12]  971 	anl	a,#0x3f
                                    972 ;	../../../usb/SW_DP.c:147: SW_WRITE_BIT(bit); /* A2 Bit */
      002ED3 FD               [12]  973 	mov	r5,a
      002ED4 54 01            [12]  974 	anl	a,#0x01
                                    975 ;	assignBit
      002ED6 24 FF            [12]  976 	add	a,#0xff
      002ED8 92 90            [24]  977 	mov	_T2,c
                                    978 ;	assignBit
      002EDA C2 91            [12]  979 	clr	_T2EX
                                    980 ;	assignBit
      002EDC D2 91            [12]  981 	setb	_T2EX
                                    982 ;	../../../usb/SW_DP.c:148: parity += bit;
      002EDE ED               [12]  983 	mov	a,r5
      002EDF 2E               [12]  984 	add	a,r6
      002EE0 FD               [12]  985 	mov	r5,a
                                    986 ;	../../../usb/SW_DP.c:149: bit = request >> 3;
      002EE1 A8 1F            [24]  987 	mov	r0,_bp
      002EE3 08               [12]  988 	inc	r0
      002EE4 E6               [12]  989 	mov	a,@r0
      002EE5 C4               [12]  990 	swap	a
      002EE6 23               [12]  991 	rl	a
      002EE7 54 1F            [12]  992 	anl	a,#0x1f
                                    993 ;	../../../usb/SW_DP.c:150: SW_WRITE_BIT(bit); /* A3 Bit */
      002EE9 FE               [12]  994 	mov	r6,a
      002EEA 54 01            [12]  995 	anl	a,#0x01
                                    996 ;	assignBit
      002EEC 24 FF            [12]  997 	add	a,#0xff
      002EEE 92 90            [24]  998 	mov	_T2,c
                                    999 ;	assignBit
      002EF0 C2 91            [12] 1000 	clr	_T2EX
                                   1001 ;	assignBit
      002EF2 D2 91            [12] 1002 	setb	_T2EX
                                   1003 ;	../../../usb/SW_DP.c:151: parity += bit;
      002EF4 EE               [12] 1004 	mov	a,r6
      002EF5 2D               [12] 1005 	add	a,r5
                                   1006 ;	../../../usb/SW_DP.c:152: SW_WRITE_BIT(parity); /* Parity Bit */
      002EF6 54 01            [12] 1007 	anl	a,#0x01
                                   1008 ;	assignBit
      002EF8 24 FF            [12] 1009 	add	a,#0xff
      002EFA 92 90            [24] 1010 	mov	_T2,c
                                   1011 ;	assignBit
      002EFC C2 91            [12] 1012 	clr	_T2EX
                                   1013 ;	assignBit
      002EFE D2 91            [12] 1014 	setb	_T2EX
                                   1015 ;	../../../usb/SW_DP.c:153: SW_WRITE_BIT(0U); /* Stop Bit */
                                   1016 ;	assignBit
      002F00 C2 90            [12] 1017 	clr	_T2
                                   1018 ;	assignBit
      002F02 C2 91            [12] 1019 	clr	_T2EX
                                   1020 ;	assignBit
      002F04 D2 91            [12] 1021 	setb	_T2EX
                                   1022 ;	../../../usb/SW_DP.c:154: SW_WRITE_BIT(1U); /* Park Bit */
                                   1023 ;	assignBit
      002F06 D2 90            [12] 1024 	setb	_T2
                                   1025 ;	assignBit
      002F08 C2 91            [12] 1026 	clr	_T2EX
                                   1027 ;	assignBit
      002F0A D2 91            [12] 1028 	setb	_T2EX
                                   1029 ;	../../../usb/SW_DP.c:158: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
      002F0C 90 02 D7         [24] 1030 	mov	dptr,#(_DAP_Data + 0x0017)
      002F0F E0               [24] 1031 	movx	a,@dptr
      002F10 FE               [12] 1032 	mov	r6,a
      002F11 FD               [12] 1033 	mov	r5,a
      002F12                       1034 00136$:
      002F12 ED               [12] 1035 	mov	a,r5
      002F13 60 07            [24] 1036 	jz	00101$
                                   1037 ;	../../../usb/SW_DP.c:159: SW_CLOCK_CYCLE();
                                   1038 ;	assignBit
      002F15 C2 91            [12] 1039 	clr	_T2EX
                                   1040 ;	assignBit
      002F17 D2 91            [12] 1041 	setb	_T2EX
                                   1042 ;	../../../usb/SW_DP.c:158: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
      002F19 1D               [12] 1043 	dec	r5
      002F1A 80 F6            [24] 1044 	sjmp	00136$
      002F1C                       1045 00101$:
                                   1046 ;	../../../usb/SW_DP.c:163: SW_READ_BIT(bit);
                                   1047 ;	assignBit
      002F1C C2 91            [12] 1048 	clr	_T2EX
      002F1E A2 90            [12] 1049 	mov	c,_T2
      002F20 E4               [12] 1050 	clr	a
      002F21 33               [12] 1051 	rlc	a
      002F22 FD               [12] 1052 	mov	r5,a
      002F23 53 05 01         [24] 1053 	anl	ar5,#0x01
                                   1054 ;	assignBit
      002F26 D2 91            [12] 1055 	setb	_T2EX
                                   1056 ;	../../../usb/SW_DP.c:164: ack = bit << 0;
                                   1057 ;	../../../usb/SW_DP.c:165: SW_READ_BIT(bit);
                                   1058 ;	assignBit
      002F28 C2 91            [12] 1059 	clr	_T2EX
      002F2A A2 90            [12] 1060 	mov	c,_T2
      002F2C E4               [12] 1061 	clr	a
      002F2D 33               [12] 1062 	rlc	a
      002F2E FC               [12] 1063 	mov	r4,a
      002F2F 53 04 01         [24] 1064 	anl	ar4,#0x01
                                   1065 ;	assignBit
      002F32 D2 91            [12] 1066 	setb	_T2EX
                                   1067 ;	../../../usb/SW_DP.c:166: ack |= bit << 1;
      002F34 EC               [12] 1068 	mov	a,r4
      002F35 2C               [12] 1069 	add	a,r4
      002F36 FC               [12] 1070 	mov	r4,a
      002F37 ED               [12] 1071 	mov	a,r5
      002F38 42 04            [12] 1072 	orl	ar4,a
                                   1073 ;	../../../usb/SW_DP.c:167: SW_READ_BIT(bit);
                                   1074 ;	assignBit
      002F3A C2 91            [12] 1075 	clr	_T2EX
      002F3C A2 90            [12] 1076 	mov	c,_T2
      002F3E E4               [12] 1077 	clr	a
      002F3F 33               [12] 1078 	rlc	a
      002F40 FD               [12] 1079 	mov	r5,a
      002F41 53 05 01         [24] 1080 	anl	ar5,#0x01
                                   1081 ;	assignBit
      002F44 D2 91            [12] 1082 	setb	_T2EX
                                   1083 ;	../../../usb/SW_DP.c:168: ack |= bit << 2;
      002F46 ED               [12] 1084 	mov	a,r5
      002F47 2D               [12] 1085 	add	a,r5
      002F48 25 E0            [12] 1086 	add	a,acc
      002F4A FD               [12] 1087 	mov	r5,a
      002F4B EC               [12] 1088 	mov	a,r4
      002F4C 42 05            [12] 1089 	orl	ar5,a
                                   1090 ;	../../../usb/SW_DP.c:170: if (ack == DAP_TRANSFER_OK) { /* OK response */
      002F4E BD 01 02         [24] 1091 	cjne	r5,#0x01,00361$
      002F51 80 03            [24] 1092 	sjmp	00362$
      002F53                       1093 00361$:
      002F53 02 30 95         [24] 1094 	ljmp	00121$
      002F56                       1095 00362$:
                                   1096 ;	../../../usb/SW_DP.c:172: if (request & DAP_TRANSFER_RnW) {
      002F56 A8 1F            [24] 1097 	mov	r0,_bp
      002F58 08               [12] 1098 	inc	r0
      002F59 E6               [12] 1099 	mov	a,@r0
      002F5A 20 E1 03         [24] 1100 	jb	acc.1,00363$
      002F5D 02 30 0E         [24] 1101 	ljmp	00186$
      002F60                       1102 00363$:
                                   1103 ;	../../../usb/SW_DP.c:175: parity = 0U;
      002F60 A8 1F            [24] 1104 	mov	r0,_bp
      002F62 08               [12] 1105 	inc	r0
      002F63 08               [12] 1106 	inc	r0
      002F64 76 00            [12] 1107 	mov	@r0,#0x00
                                   1108 ;	../../../usb/SW_DP.c:176: for (uint8_t b = 0; b < 4; b++) {
      002F66 E5 1F            [12] 1109 	mov	a,_bp
      002F68 24 03            [12] 1110 	add	a,#0x03
      002F6A F8               [12] 1111 	mov	r0,a
      002F6B 76 00            [12] 1112 	mov	@r0,#0x00
      002F6D                       1113 00142$:
      002F6D E5 1F            [12] 1114 	mov	a,_bp
      002F6F 24 03            [12] 1115 	add	a,#0x03
      002F71 F8               [12] 1116 	mov	r0,a
      002F72 B6 04 00         [24] 1117 	cjne	@r0,#0x04,00364$
      002F75                       1118 00364$:
      002F75 50 71            [24] 1119 	jnc	00105$
                                   1120 ;	../../../usb/SW_DP.c:177: for (uint8_t n = 8; n; n--) {
      002F77 7E 08            [12] 1121 	mov	r6,#0x08
      002F79                       1122 00139$:
      002F79 EE               [12] 1123 	mov	a,r6
      002F7A 60 63            [24] 1124 	jz	00143$
                                   1125 ;	../../../usb/SW_DP.c:178: SW_READ_BIT(bit); /* Read RDATA[0:31] */
      002F7C C0 05            [24] 1126 	push	ar5
                                   1127 ;	assignBit
      002F7E C2 91            [12] 1128 	clr	_T2EX
      002F80 A2 90            [12] 1129 	mov	c,_T2
      002F82 E4               [12] 1130 	clr	a
      002F83 33               [12] 1131 	rlc	a
      002F84 FD               [12] 1132 	mov	r5,a
      002F85 74 01            [12] 1133 	mov	a,#0x01
      002F87 5D               [12] 1134 	anl	a,r5
      002F88 FC               [12] 1135 	mov	r4,a
                                   1136 ;	assignBit
      002F89 D2 91            [12] 1137 	setb	_T2EX
                                   1138 ;	../../../usb/SW_DP.c:179: parity += bit;
      002F8B A8 1F            [24] 1139 	mov	r0,_bp
      002F8D 08               [12] 1140 	inc	r0
      002F8E 08               [12] 1141 	inc	r0
      002F8F EC               [12] 1142 	mov	a,r4
      002F90 26               [12] 1143 	add	a,@r0
      002F91 F6               [12] 1144 	mov	@r0,a
                                   1145 ;	../../../usb/SW_DP.c:180: if (data) {
      002F92 D0 05            [24] 1146 	pop	ar5
      002F94 E5 1F            [12] 1147 	mov	a,_bp
      002F96 24 FB            [12] 1148 	add	a,#0xfb
      002F98 F8               [12] 1149 	mov	r0,a
      002F99 E6               [12] 1150 	mov	a,@r0
      002F9A 08               [12] 1151 	inc	r0
      002F9B 46               [12] 1152 	orl	a,@r0
      002F9C 60 3E            [24] 1153 	jz	00140$
                                   1154 ;	../../../usb/SW_DP.c:181: data[b] >>= 1;
      002F9E C0 05            [24] 1155 	push	ar5
      002FA0 E5 1F            [12] 1156 	mov	a,_bp
      002FA2 24 FB            [12] 1157 	add	a,#0xfb
      002FA4 F8               [12] 1158 	mov	r0,a
      002FA5 E5 1F            [12] 1159 	mov	a,_bp
      002FA7 24 03            [12] 1160 	add	a,#0x03
      002FA9 F9               [12] 1161 	mov	r1,a
      002FAA E7               [12] 1162 	mov	a,@r1
      002FAB 26               [12] 1163 	add	a,@r0
      002FAC FA               [12] 1164 	mov	r2,a
      002FAD E4               [12] 1165 	clr	a
      002FAE 08               [12] 1166 	inc	r0
      002FAF 36               [12] 1167 	addc	a,@r0
      002FB0 FB               [12] 1168 	mov	r3,a
      002FB1 08               [12] 1169 	inc	r0
      002FB2 86 07            [24] 1170 	mov	ar7,@r0
      002FB4 8A 82            [24] 1171 	mov	dpl,r2
      002FB6 8B 83            [24] 1172 	mov	dph,r3
      002FB8 8F F0            [24] 1173 	mov	b,r7
      002FBA 12 33 25         [24] 1174 	lcall	__gptrget
      002FBD C3               [12] 1175 	clr	c
      002FBE 13               [12] 1176 	rrc	a
      002FBF FD               [12] 1177 	mov	r5,a
      002FC0 8A 82            [24] 1178 	mov	dpl,r2
      002FC2 8B 83            [24] 1179 	mov	dph,r3
      002FC4 8F F0            [24] 1180 	mov	b,r7
      002FC6 12 30 FC         [24] 1181 	lcall	__gptrput
                                   1182 ;	../../../usb/SW_DP.c:182: data[b] |= bit << 7;
      002FC9 EC               [12] 1183 	mov	a,r4
      002FCA 03               [12] 1184 	rr	a
      002FCB 54 80            [12] 1185 	anl	a,#0x80
      002FCD FC               [12] 1186 	mov	r4,a
      002FCE 42 05            [12] 1187 	orl	ar5,a
      002FD0 8A 82            [24] 1188 	mov	dpl,r2
      002FD2 8B 83            [24] 1189 	mov	dph,r3
      002FD4 8F F0            [24] 1190 	mov	b,r7
      002FD6 ED               [12] 1191 	mov	a,r5
      002FD7 12 30 FC         [24] 1192 	lcall	__gptrput
                                   1193 ;	../../../usb/SW_DP.c:256: return ((uint8_t)ack);
      002FDA D0 05            [24] 1194 	pop	ar5
                                   1195 ;	../../../usb/SW_DP.c:182: data[b] |= bit << 7;
      002FDC                       1196 00140$:
                                   1197 ;	../../../usb/SW_DP.c:177: for (uint8_t n = 8; n; n--) {
      002FDC 1E               [12] 1198 	dec	r6
      002FDD 80 9A            [24] 1199 	sjmp	00139$
      002FDF                       1200 00143$:
                                   1201 ;	../../../usb/SW_DP.c:176: for (uint8_t b = 0; b < 4; b++) {
      002FDF E5 1F            [12] 1202 	mov	a,_bp
      002FE1 24 03            [12] 1203 	add	a,#0x03
      002FE3 F8               [12] 1204 	mov	r0,a
      002FE4 06               [12] 1205 	inc	@r0
      002FE5 02 2F 6D         [24] 1206 	ljmp	00142$
      002FE8                       1207 00105$:
                                   1208 ;	../../../usb/SW_DP.c:186: SW_READ_BIT(bit); /* Read Parity */
                                   1209 ;	assignBit
      002FE8 C2 91            [12] 1210 	clr	_T2EX
      002FEA A2 90            [12] 1211 	mov	c,_T2
      002FEC E4               [12] 1212 	clr	a
      002FED 33               [12] 1213 	rlc	a
      002FEE FF               [12] 1214 	mov	r7,a
      002FEF 53 07 01         [24] 1215 	anl	ar7,#0x01
                                   1216 ;	assignBit
      002FF2 D2 91            [12] 1217 	setb	_T2EX
                                   1218 ;	../../../usb/SW_DP.c:187: if ((parity ^ bit) & 1U) {
      002FF4 A8 1F            [24] 1219 	mov	r0,_bp
      002FF6 08               [12] 1220 	inc	r0
      002FF7 08               [12] 1221 	inc	r0
      002FF8 EF               [12] 1222 	mov	a,r7
      002FF9 66               [12] 1223 	xrl	a,@r0
      002FFA 30 E0 02         [24] 1224 	jnb	acc.0,00107$
                                   1225 ;	../../../usb/SW_DP.c:188: ack = DAP_TRANSFER_ERROR;
      002FFD 7D 08            [12] 1226 	mov	r5,#0x08
      002FFF                       1227 00107$:
                                   1228 ;	../../../usb/SW_DP.c:191: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
      002FFF 90 02 D7         [24] 1229 	mov	dptr,#(_DAP_Data + 0x0017)
      003002 E0               [24] 1230 	movx	a,@dptr
      003003 FF               [12] 1231 	mov	r7,a
      003004                       1232 00145$:
      003004 EF               [12] 1233 	mov	a,r7
      003005 60 63            [24] 1234 	jz	00114$
                                   1235 ;	../../../usb/SW_DP.c:192: SW_CLOCK_CYCLE();
                                   1236 ;	assignBit
      003007 C2 91            [12] 1237 	clr	_T2EX
                                   1238 ;	assignBit
      003009 D2 91            [12] 1239 	setb	_T2EX
                                   1240 ;	../../../usb/SW_DP.c:191: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
      00300B 1F               [12] 1241 	dec	r7
                                   1242 ;	../../../usb/SW_DP.c:197: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
      00300C 80 F6            [24] 1243 	sjmp	00145$
      00300E                       1244 00186$:
      00300E 8E 07            [24] 1245 	mov	ar7,r6
      003010                       1246 00148$:
      003010 EF               [12] 1247 	mov	a,r7
      003011 60 07            [24] 1248 	jz	00109$
                                   1249 ;	../../../usb/SW_DP.c:198: SW_CLOCK_CYCLE();
                                   1250 ;	assignBit
      003013 C2 91            [12] 1251 	clr	_T2EX
                                   1252 ;	assignBit
      003015 D2 91            [12] 1253 	setb	_T2EX
                                   1254 ;	../../../usb/SW_DP.c:197: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
      003017 1F               [12] 1255 	dec	r7
      003018 80 F6            [24] 1256 	sjmp	00148$
      00301A                       1257 00109$:
                                   1258 ;	../../../usb/SW_DP.c:202: parity = 0U;
      00301A 7F 00            [12] 1259 	mov	r7,#0x00
                                   1260 ;	../../../usb/SW_DP.c:203: for (uint8_t b = 0; b < 4; b++) {
      00301C 7C 00            [12] 1261 	mov	r4,#0x00
      00301E                       1262 00154$:
      00301E BC 04 00         [24] 1263 	cjne	r4,#0x04,00371$
      003021                       1264 00371$:
      003021 50 3B            [24] 1265 	jnc	00111$
                                   1266 ;	../../../usb/SW_DP.c:204: val = *(data + b);
      003023 C0 05            [24] 1267 	push	ar5
      003025 E5 1F            [12] 1268 	mov	a,_bp
      003027 24 FB            [12] 1269 	add	a,#0xfb
      003029 F8               [12] 1270 	mov	r0,a
      00302A EC               [12] 1271 	mov	a,r4
      00302B 26               [12] 1272 	add	a,@r0
      00302C FA               [12] 1273 	mov	r2,a
      00302D E4               [12] 1274 	clr	a
      00302E 08               [12] 1275 	inc	r0
      00302F 36               [12] 1276 	addc	a,@r0
      003030 FB               [12] 1277 	mov	r3,a
      003031 08               [12] 1278 	inc	r0
      003032 86 05            [24] 1279 	mov	ar5,@r0
      003034 8A 82            [24] 1280 	mov	dpl,r2
      003036 8B 83            [24] 1281 	mov	dph,r3
      003038 8D F0            [24] 1282 	mov	b,r5
      00303A 12 33 25         [24] 1283 	lcall	__gptrget
      00303D FE               [12] 1284 	mov	r6,a
                                   1285 ;	../../../usb/SW_DP.c:205: for (uint8_t n = 8U; n; n--) {
      00303E 7A 08            [12] 1286 	mov	r2,#0x08
                                   1287 ;	../../../usb/SW_DP.c:256: return ((uint8_t)ack);
      003040 D0 05            [24] 1288 	pop	ar5
                                   1289 ;	../../../usb/SW_DP.c:205: for (uint8_t n = 8U; n; n--) {
      003042                       1290 00151$:
      003042 EA               [12] 1291 	mov	a,r2
      003043 60 16            [24] 1292 	jz	00155$
                                   1293 ;	../../../usb/SW_DP.c:206: SW_WRITE_BIT(val); /* Write WDATA[0:31] */
      003045 EE               [12] 1294 	mov	a,r6
      003046 54 01            [12] 1295 	anl	a,#0x01
                                   1296 ;	assignBit
      003048 FB               [12] 1297 	mov	r3,a
      003049 24 FF            [12] 1298 	add	a,#0xff
      00304B 92 90            [24] 1299 	mov	_T2,c
                                   1300 ;	assignBit
      00304D C2 91            [12] 1301 	clr	_T2EX
                                   1302 ;	assignBit
      00304F D2 91            [12] 1303 	setb	_T2EX
                                   1304 ;	../../../usb/SW_DP.c:207: parity += val;
      003051 EE               [12] 1305 	mov	a,r6
      003052 2F               [12] 1306 	add	a,r7
      003053 FF               [12] 1307 	mov	r7,a
                                   1308 ;	../../../usb/SW_DP.c:208: val >>= 1;
      003054 EE               [12] 1309 	mov	a,r6
      003055 C3               [12] 1310 	clr	c
      003056 13               [12] 1311 	rrc	a
      003057 FE               [12] 1312 	mov	r6,a
                                   1313 ;	../../../usb/SW_DP.c:205: for (uint8_t n = 8U; n; n--) {
      003058 1A               [12] 1314 	dec	r2
      003059 80 E7            [24] 1315 	sjmp	00151$
      00305B                       1316 00155$:
                                   1317 ;	../../../usb/SW_DP.c:203: for (uint8_t b = 0; b < 4; b++) {
      00305B 0C               [12] 1318 	inc	r4
      00305C 80 C0            [24] 1319 	sjmp	00154$
      00305E                       1320 00111$:
                                   1321 ;	../../../usb/SW_DP.c:211: SW_WRITE_BIT(parity); /* Write Parity Bit */
      00305E EF               [12] 1322 	mov	a,r7
      00305F 54 01            [12] 1323 	anl	a,#0x01
                                   1324 ;	assignBit
      003061 FF               [12] 1325 	mov	r7,a
      003062 24 FF            [12] 1326 	add	a,#0xff
      003064 92 90            [24] 1327 	mov	_T2,c
                                   1328 ;	assignBit
      003066 C2 91            [12] 1329 	clr	_T2EX
                                   1330 ;	assignBit
      003068 D2 91            [12] 1331 	setb	_T2EX
      00306A                       1332 00114$:
                                   1333 ;	../../../usb/SW_DP.c:214: if (request & DAP_TRANSFER_TIMESTAMP) {
      00306A A8 1F            [24] 1334 	mov	r0,_bp
      00306C 08               [12] 1335 	inc	r0
      00306D E6               [12] 1336 	mov	a,@r0
      00306E 30 E7 0B         [24] 1337 	jnb	acc.7,00116$
                                   1338 ;	../../../usb/SW_DP.c:215: DAP_Data.timestamp = TIMESTAMP_GET();
      003071 90 02 C7         [24] 1339 	mov	dptr,#(_DAP_Data + 0x0007)
      003074 E4               [12] 1340 	clr	a
      003075 F0               [24] 1341 	movx	@dptr,a
      003076 A3               [24] 1342 	inc	dptr
      003077 F0               [24] 1343 	movx	@dptr,a
      003078 A3               [24] 1344 	inc	dptr
      003079 F0               [24] 1345 	movx	@dptr,a
      00307A A3               [24] 1346 	inc	dptr
      00307B F0               [24] 1347 	movx	@dptr,a
      00307C                       1348 00116$:
                                   1349 ;	../../../usb/SW_DP.c:218: if (DAP_Data.transfer.idle_cycles) {
      00307C 90 02 CB         [24] 1350 	mov	dptr,#(_DAP_Data + 0x000b)
      00307F E0               [24] 1351 	movx	a,@dptr
      003080 FF               [12] 1352 	mov	r7,a
      003081 60 0C            [24] 1353 	jz	00119$
                                   1354 ;	../../../usb/SW_DP.c:219: PIN_SWDIO_OUT(0U);
                                   1355 ;	assignBit
      003083 C2 90            [12] 1356 	clr	_T2
                                   1357 ;	../../../usb/SW_DP.c:220: for (uint8_t cycles = DAP_Data.transfer.idle_cycles; cycles; cycles--) {
      003085                       1358 00157$:
      003085 EF               [12] 1359 	mov	a,r7
      003086 60 07            [24] 1360 	jz	00119$
                                   1361 ;	../../../usb/SW_DP.c:221: SW_CLOCK_CYCLE();
                                   1362 ;	assignBit
      003088 C2 91            [12] 1363 	clr	_T2EX
                                   1364 ;	assignBit
      00308A D2 91            [12] 1365 	setb	_T2EX
                                   1366 ;	../../../usb/SW_DP.c:220: for (uint8_t cycles = DAP_Data.transfer.idle_cycles; cycles; cycles--) {
      00308C 1F               [12] 1367 	dec	r7
      00308D 80 F6            [24] 1368 	sjmp	00157$
      00308F                       1369 00119$:
                                   1370 ;	../../../usb/SW_DP.c:224: PIN_SWDIO_OUT(1U);
                                   1371 ;	assignBit
      00308F D2 90            [12] 1372 	setb	_T2
                                   1373 ;	../../../usb/SW_DP.c:225: return ((uint8_t)ack);
      003091 8D 82            [24] 1374 	mov	dpl,r5
      003093 80 61            [24] 1375 	sjmp	00171$
      003095                       1376 00121$:
                                   1377 ;	../../../usb/SW_DP.c:228: if ((ack == DAP_TRANSFER_WAIT) || (ack == DAP_TRANSFER_FAULT)) {
      003095 BD 02 02         [24] 1378 	cjne	r5,#0x02,00377$
      003098 80 03            [24] 1379 	sjmp	00131$
      00309A                       1380 00377$:
      00309A BD 04 47         [24] 1381 	cjne	r5,#0x04,00132$
      00309D                       1382 00131$:
                                   1383 ;	../../../usb/SW_DP.c:230: if (DAP_Data.swd_conf.data_phase && ((request & DAP_TRANSFER_RnW) != 0U)) {
      00309D 90 02 D8         [24] 1384 	mov	dptr,#(_DAP_Data + 0x0018)
      0030A0 E0               [24] 1385 	movx	a,@dptr
      0030A1 FF               [12] 1386 	mov	r7,a
      0030A2 60 13            [24] 1387 	jz	00124$
      0030A4 A8 1F            [24] 1388 	mov	r0,_bp
      0030A6 08               [12] 1389 	inc	r0
      0030A7 E6               [12] 1390 	mov	a,@r0
      0030A8 30 E1 0C         [24] 1391 	jnb	acc.1,00124$
                                   1392 ;	../../../usb/SW_DP.c:231: for (uint8_t n = 32U + 1U; n; n--) {
      0030AB 7C 21            [12] 1393 	mov	r4,#0x21
      0030AD                       1394 00160$:
      0030AD EC               [12] 1395 	mov	a,r4
      0030AE 60 07            [24] 1396 	jz	00124$
                                   1397 ;	../../../usb/SW_DP.c:232: SW_CLOCK_CYCLE(); /* Dummy Read RDATA[0:31] + Parity */
                                   1398 ;	assignBit
      0030B0 C2 91            [12] 1399 	clr	_T2EX
                                   1400 ;	assignBit
      0030B2 D2 91            [12] 1401 	setb	_T2EX
                                   1402 ;	../../../usb/SW_DP.c:231: for (uint8_t n = 32U + 1U; n; n--) {
      0030B4 1C               [12] 1403 	dec	r4
      0030B5 80 F6            [24] 1404 	sjmp	00160$
      0030B7                       1405 00124$:
                                   1406 ;	../../../usb/SW_DP.c:236: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
      0030B7 90 02 D7         [24] 1407 	mov	dptr,#(_DAP_Data + 0x0017)
      0030BA E0               [24] 1408 	movx	a,@dptr
      0030BB FC               [12] 1409 	mov	r4,a
      0030BC                       1410 00163$:
      0030BC EC               [12] 1411 	mov	a,r4
      0030BD 60 07            [24] 1412 	jz	00126$
                                   1413 ;	../../../usb/SW_DP.c:237: SW_CLOCK_CYCLE();
                                   1414 ;	assignBit
      0030BF C2 91            [12] 1415 	clr	_T2EX
                                   1416 ;	assignBit
      0030C1 D2 91            [12] 1417 	setb	_T2EX
                                   1418 ;	../../../usb/SW_DP.c:236: for (uint8_t n = DAP_Data.swd_conf.turnaround; n; n--) {
      0030C3 1C               [12] 1419 	dec	r4
      0030C4 80 F6            [24] 1420 	sjmp	00163$
      0030C6                       1421 00126$:
                                   1422 ;	../../../usb/SW_DP.c:240: if (DAP_Data.swd_conf.data_phase && ((request & DAP_TRANSFER_RnW) == 0U)) {
      0030C6 EF               [12] 1423 	mov	a,r7
      0030C7 60 15            [24] 1424 	jz	00129$
      0030C9 A8 1F            [24] 1425 	mov	r0,_bp
      0030CB 08               [12] 1426 	inc	r0
      0030CC E6               [12] 1427 	mov	a,@r0
      0030CD 20 E1 0E         [24] 1428 	jb	acc.1,00129$
                                   1429 ;	../../../usb/SW_DP.c:241: PIN_SWDIO_OUT(0U);
                                   1430 ;	assignBit
      0030D0 C2 90            [12] 1431 	clr	_T2
                                   1432 ;	../../../usb/SW_DP.c:242: for (uint8_t n = 32U + 1U; n; n--) {
      0030D2 7F 21            [12] 1433 	mov	r7,#0x21
      0030D4                       1434 00166$:
      0030D4 EF               [12] 1435 	mov	a,r7
      0030D5 60 07            [24] 1436 	jz	00129$
                                   1437 ;	../../../usb/SW_DP.c:243: SW_CLOCK_CYCLE(); /* Dummy Write WDATA[0:31] + Parity */
                                   1438 ;	assignBit
      0030D7 C2 91            [12] 1439 	clr	_T2EX
                                   1440 ;	assignBit
      0030D9 D2 91            [12] 1441 	setb	_T2EX
                                   1442 ;	../../../usb/SW_DP.c:242: for (uint8_t n = 32U + 1U; n; n--) {
      0030DB 1F               [12] 1443 	dec	r7
      0030DC 80 F6            [24] 1444 	sjmp	00166$
      0030DE                       1445 00129$:
                                   1446 ;	../../../usb/SW_DP.c:246: PIN_SWDIO_OUT(1U);
                                   1447 ;	assignBit
      0030DE D2 90            [12] 1448 	setb	_T2
                                   1449 ;	../../../usb/SW_DP.c:247: return ((uint8_t)ack);
      0030E0 8D 82            [24] 1450 	mov	dpl,r5
      0030E2 80 12            [24] 1451 	sjmp	00171$
      0030E4                       1452 00132$:
                                   1453 ;	../../../usb/SW_DP.c:251: for (uint8_t n = DAP_Data.swd_conf.turnaround + 32U + 1U; n; n--) {
      0030E4 74 21            [12] 1454 	mov	a,#0x21
      0030E6 2E               [12] 1455 	add	a,r6
      0030E7 FF               [12] 1456 	mov	r7,a
      0030E8                       1457 00169$:
      0030E8 EF               [12] 1458 	mov	a,r7
      0030E9 60 07            [24] 1459 	jz	00134$
                                   1460 ;	../../../usb/SW_DP.c:252: SW_CLOCK_CYCLE(); /* Back off data phase */
                                   1461 ;	assignBit
      0030EB C2 91            [12] 1462 	clr	_T2EX
                                   1463 ;	assignBit
      0030ED D2 91            [12] 1464 	setb	_T2EX
                                   1465 ;	../../../usb/SW_DP.c:251: for (uint8_t n = DAP_Data.swd_conf.turnaround + 32U + 1U; n; n--) {
      0030EF 1F               [12] 1466 	dec	r7
      0030F0 80 F6            [24] 1467 	sjmp	00169$
      0030F2                       1468 00134$:
                                   1469 ;	../../../usb/SW_DP.c:255: PIN_SWDIO_OUT(1U);
                                   1470 ;	assignBit
      0030F2 D2 90            [12] 1471 	setb	_T2
                                   1472 ;	../../../usb/SW_DP.c:256: return ((uint8_t)ack);
      0030F4 8D 82            [24] 1473 	mov	dpl,r5
      0030F6                       1474 00171$:
                                   1475 ;	../../../usb/SW_DP.c:257: }
      0030F6 85 1F 81         [24] 1476 	mov	sp,_bp
      0030F9 D0 1F            [24] 1477 	pop	_bp
      0030FB 22               [24] 1478 	ret
                                   1479 	.area CSEG    (CODE)
                                   1480 	.area CONST   (CODE)
      003685                       1481 _row_pin_array:
      003685 19                    1482 	.db #0x19	; 25
      003686 1A                    1483 	.db #0x1a	; 26
      003687 1B                    1484 	.db #0x1b	; 27
      003688 1C                    1485 	.db #0x1c	; 28
      003689 12                    1486 	.db #0x12	; 18
      00368A 13                    1487 	.db #0x13	; 19
      00368B                       1488 _column_pin_array:
      00368B 17                    1489 	.db #0x17	; 23
      00368C 16                    1490 	.db #0x16	; 22
      00368D 15                    1491 	.db #0x15	; 21
      00368E 14                    1492 	.db #0x14	; 20
      00368F 1D                    1493 	.db #0x1d	; 29
      003690 07                    1494 	.db #0x07	; 7
      003691 06                    1495 	.db #0x06	; 6
      003692 08                    1496 	.db #0x08	; 8
      003693 09                    1497 	.db #0x09	; 9
      003694 0A                    1498 	.db #0x0a	; 10
      003695 0B                    1499 	.db #0x0b	; 11
      003696 05                    1500 	.db #0x05	; 5
      003697 0C                    1501 	.db #0x0c	; 12
      003698 0D                    1502 	.db #0x0d	; 13
      003699 0E                    1503 	.db #0x0e	; 14
      00369A 0F                    1504 	.db #0x0f	; 15
      00369B 04                    1505 	.db #0x04	; 4
      00369C 10                    1506 	.db #0x10	; 16
      00369D 11                    1507 	.db #0x11	; 17
                                   1508 	.area XINIT   (CODE)
                                   1509 	.area CABS    (ABS,CODE)

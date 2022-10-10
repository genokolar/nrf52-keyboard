                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module endpoints
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EP1_OUT
                                     12 	.globl _GetUsbDescriptor
                                     13 	.globl ___memcpy
                                     14 	.globl _UIF_BUS_RST
                                     15 	.globl _UIF_DETECT
                                     16 	.globl _UIF_TRANSFER
                                     17 	.globl _UIF_SUSPEND
                                     18 	.globl _UIF_HST_SOF
                                     19 	.globl _UIF_FIFO_OV
                                     20 	.globl _U_SIE_FREE
                                     21 	.globl _U_TOG_OK
                                     22 	.globl _U_IS_NAK
                                     23 	.globl _ADC_CHAN0
                                     24 	.globl _ADC_CHAN1
                                     25 	.globl _CMP_CHAN
                                     26 	.globl _ADC_START
                                     27 	.globl _ADC_IF
                                     28 	.globl _CMP_IF
                                     29 	.globl _CMPO
                                     30 	.globl _U1RI
                                     31 	.globl _U1TI
                                     32 	.globl _U1RB8
                                     33 	.globl _U1TB8
                                     34 	.globl _U1REN
                                     35 	.globl _U1SMOD
                                     36 	.globl _U1SM0
                                     37 	.globl _S0_R_FIFO
                                     38 	.globl _S0_T_FIFO
                                     39 	.globl _S0_FREE
                                     40 	.globl _S0_IF_BYTE
                                     41 	.globl _S0_IF_FIRST
                                     42 	.globl _S0_IF_OV
                                     43 	.globl _S0_FST_ACT
                                     44 	.globl _CP_RL2
                                     45 	.globl _C_T2
                                     46 	.globl _TR2
                                     47 	.globl _EXEN2
                                     48 	.globl _TCLK
                                     49 	.globl _RCLK
                                     50 	.globl _EXF2
                                     51 	.globl _CAP1F
                                     52 	.globl _TF2
                                     53 	.globl _RI
                                     54 	.globl _TI
                                     55 	.globl _RB8
                                     56 	.globl _TB8
                                     57 	.globl _REN
                                     58 	.globl _SM2
                                     59 	.globl _SM1
                                     60 	.globl _SM0
                                     61 	.globl _IT0
                                     62 	.globl _IE0
                                     63 	.globl _IT1
                                     64 	.globl _IE1
                                     65 	.globl _TR0
                                     66 	.globl _TF0
                                     67 	.globl _TR1
                                     68 	.globl _TF1
                                     69 	.globl _RXD
                                     70 	.globl _PWM1_
                                     71 	.globl _P3_0
                                     72 	.globl _TXD
                                     73 	.globl _PWM2_
                                     74 	.globl _P3_1
                                     75 	.globl _AIN3
                                     76 	.globl _VBUS1
                                     77 	.globl _INT0
                                     78 	.globl _TXD1_
                                     79 	.globl _P3_2
                                     80 	.globl _INT1
                                     81 	.globl _P3_3
                                     82 	.globl _T0
                                     83 	.globl _RXD1_
                                     84 	.globl _PWM2
                                     85 	.globl _P3_4
                                     86 	.globl _T1
                                     87 	.globl _P3_5
                                     88 	.globl _UDP
                                     89 	.globl _P3_6
                                     90 	.globl _UDM
                                     91 	.globl _P3_7
                                     92 	.globl _TIN0
                                     93 	.globl _CAP1
                                     94 	.globl _T2
                                     95 	.globl _P1_0
                                     96 	.globl _AIN0
                                     97 	.globl _VBUS2
                                     98 	.globl _TIN1
                                     99 	.globl _CAP2
                                    100 	.globl _T2EX
                                    101 	.globl _P1_1
                                    102 	.globl _RXD_
                                    103 	.globl _P1_2
                                    104 	.globl _TXD_
                                    105 	.globl _P1_3
                                    106 	.globl _AIN1
                                    107 	.globl _UCC1
                                    108 	.globl _TIN2
                                    109 	.globl _SCS
                                    110 	.globl _CAP1_
                                    111 	.globl _T2_
                                    112 	.globl _P1_4
                                    113 	.globl _AIN2
                                    114 	.globl _UCC2
                                    115 	.globl _TIN3
                                    116 	.globl _PWM1
                                    117 	.globl _MOSI
                                    118 	.globl _P1_5
                                    119 	.globl _TIN4
                                    120 	.globl _RXD1
                                    121 	.globl _MISO
                                    122 	.globl _P1_6
                                    123 	.globl _TIN5
                                    124 	.globl _TXD1
                                    125 	.globl _SCK
                                    126 	.globl _P1_7
                                    127 	.globl _IE_SPI0
                                    128 	.globl _IE_TKEY
                                    129 	.globl _IE_USB
                                    130 	.globl _IE_ADC
                                    131 	.globl _IE_UART1
                                    132 	.globl _IE_PWMX
                                    133 	.globl _IE_GPIO
                                    134 	.globl _IE_WDOG
                                    135 	.globl _PX0
                                    136 	.globl _PT0
                                    137 	.globl _PX1
                                    138 	.globl _PT1
                                    139 	.globl _PS
                                    140 	.globl _PT2
                                    141 	.globl _PL_FLAG
                                    142 	.globl _PH_FLAG
                                    143 	.globl _EX0
                                    144 	.globl _ET0
                                    145 	.globl _EX1
                                    146 	.globl _ET1
                                    147 	.globl _ES
                                    148 	.globl _ET2
                                    149 	.globl _E_DIS
                                    150 	.globl _EA
                                    151 	.globl _P
                                    152 	.globl _F1
                                    153 	.globl _OV
                                    154 	.globl _RS0
                                    155 	.globl _RS1
                                    156 	.globl _F0
                                    157 	.globl _AC
                                    158 	.globl _CY
                                    159 	.globl _UEP1_DMA_H
                                    160 	.globl _UEP1_DMA_L
                                    161 	.globl _UEP1_DMA
                                    162 	.globl _UEP0_DMA_H
                                    163 	.globl _UEP0_DMA_L
                                    164 	.globl _UEP0_DMA
                                    165 	.globl _UEP2_3_MOD
                                    166 	.globl _UEP4_1_MOD
                                    167 	.globl _UEP3_DMA_H
                                    168 	.globl _UEP3_DMA_L
                                    169 	.globl _UEP3_DMA
                                    170 	.globl _UEP2_DMA_H
                                    171 	.globl _UEP2_DMA_L
                                    172 	.globl _UEP2_DMA
                                    173 	.globl _USB_DEV_AD
                                    174 	.globl _USB_CTRL
                                    175 	.globl _USB_INT_EN
                                    176 	.globl _UEP4_T_LEN
                                    177 	.globl _UEP4_CTRL
                                    178 	.globl _UEP0_T_LEN
                                    179 	.globl _UEP0_CTRL
                                    180 	.globl _USB_RX_LEN
                                    181 	.globl _USB_MIS_ST
                                    182 	.globl _USB_INT_ST
                                    183 	.globl _USB_INT_FG
                                    184 	.globl _UEP3_T_LEN
                                    185 	.globl _UEP3_CTRL
                                    186 	.globl _UEP2_T_LEN
                                    187 	.globl _UEP2_CTRL
                                    188 	.globl _UEP1_T_LEN
                                    189 	.globl _UEP1_CTRL
                                    190 	.globl _UDEV_CTRL
                                    191 	.globl _USB_C_CTRL
                                    192 	.globl _TKEY_DATH
                                    193 	.globl _TKEY_DATL
                                    194 	.globl _TKEY_DAT
                                    195 	.globl _TKEY_CTRL
                                    196 	.globl _ADC_DATA
                                    197 	.globl _ADC_CFG
                                    198 	.globl _ADC_CTRL
                                    199 	.globl _SBAUD1
                                    200 	.globl _SBUF1
                                    201 	.globl _SCON1
                                    202 	.globl _SPI0_SETUP
                                    203 	.globl _SPI0_CK_SE
                                    204 	.globl _SPI0_CTRL
                                    205 	.globl _SPI0_DATA
                                    206 	.globl _SPI0_STAT
                                    207 	.globl _PWM_CK_SE
                                    208 	.globl _PWM_CTRL
                                    209 	.globl _PWM_DATA1
                                    210 	.globl _PWM_DATA2
                                    211 	.globl _T2CAP1H
                                    212 	.globl _T2CAP1L
                                    213 	.globl _T2CAP1
                                    214 	.globl _TH2
                                    215 	.globl _TL2
                                    216 	.globl _T2COUNT
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _RCAP2
                                    220 	.globl _T2MOD
                                    221 	.globl _T2CON
                                    222 	.globl _SBUF
                                    223 	.globl _SCON
                                    224 	.globl _TH1
                                    225 	.globl _TH0
                                    226 	.globl _TL1
                                    227 	.globl _TL0
                                    228 	.globl _TMOD
                                    229 	.globl _TCON
                                    230 	.globl _XBUS_AUX
                                    231 	.globl _PIN_FUNC
                                    232 	.globl _P3_DIR_PU
                                    233 	.globl _P3_MOD_OC
                                    234 	.globl _P3
                                    235 	.globl _P2
                                    236 	.globl _P1_DIR_PU
                                    237 	.globl _P1_MOD_OC
                                    238 	.globl _P1
                                    239 	.globl _ROM_CTRL
                                    240 	.globl _ROM_DATA_H
                                    241 	.globl _ROM_DATA_L
                                    242 	.globl _ROM_DATA
                                    243 	.globl _ROM_ADDR_H
                                    244 	.globl _ROM_ADDR_L
                                    245 	.globl _ROM_ADDR
                                    246 	.globl _GPIO_IE
                                    247 	.globl _IP_EX
                                    248 	.globl _IE_EX
                                    249 	.globl _IP
                                    250 	.globl _IE
                                    251 	.globl _WDOG_COUNT
                                    252 	.globl _RESET_KEEP
                                    253 	.globl _WAKE_CTRL
                                    254 	.globl _CLOCK_CFG
                                    255 	.globl _PCON
                                    256 	.globl _GLOBAL_CFG
                                    257 	.globl _SAFE_MOD
                                    258 	.globl _DPH
                                    259 	.globl _DPL
                                    260 	.globl _SP
                                    261 	.globl _B
                                    262 	.globl _ACC
                                    263 	.globl _PSW
                                    264 	.globl _Ep3Buffer
                                    265 	.globl _Ep2Buffer
                                    266 	.globl _Ep1Buffer
                                    267 	.globl _Ep0Buffer
                                    268 	.globl _usb_state
                                    269 	.globl _nop
                                    270 	.globl _EP0_OUT
                                    271 	.globl _EP0_IN
                                    272 	.globl _EP0_SETUP
                                    273 	.globl _EP1_IN
                                    274 	.globl _EP2_IN
                                    275 	.globl _EP3_IN
                                    276 	.globl _EP4_IN
                                    277 	.globl _USBDeviceInit
                                    278 ;--------------------------------------------------------
                                    279 ; special function registers
                                    280 ;--------------------------------------------------------
                                    281 	.area RSEG    (ABS,DATA)
      000000                        282 	.org 0x0000
                           0000D0   283 _PSW	=	0x00d0
                           0000E0   284 _ACC	=	0x00e0
                           0000F0   285 _B	=	0x00f0
                           000081   286 _SP	=	0x0081
                           000082   287 _DPL	=	0x0082
                           000083   288 _DPH	=	0x0083
                           0000A1   289 _SAFE_MOD	=	0x00a1
                           0000B1   290 _GLOBAL_CFG	=	0x00b1
                           000087   291 _PCON	=	0x0087
                           0000B9   292 _CLOCK_CFG	=	0x00b9
                           0000A9   293 _WAKE_CTRL	=	0x00a9
                           0000FE   294 _RESET_KEEP	=	0x00fe
                           0000FF   295 _WDOG_COUNT	=	0x00ff
                           0000A8   296 _IE	=	0x00a8
                           0000B8   297 _IP	=	0x00b8
                           0000E8   298 _IE_EX	=	0x00e8
                           0000E9   299 _IP_EX	=	0x00e9
                           0000C7   300 _GPIO_IE	=	0x00c7
                           008584   301 _ROM_ADDR	=	0x8584
                           000084   302 _ROM_ADDR_L	=	0x0084
                           000085   303 _ROM_ADDR_H	=	0x0085
                           008F8E   304 _ROM_DATA	=	0x8f8e
                           00008E   305 _ROM_DATA_L	=	0x008e
                           00008F   306 _ROM_DATA_H	=	0x008f
                           000086   307 _ROM_CTRL	=	0x0086
                           000090   308 _P1	=	0x0090
                           000092   309 _P1_MOD_OC	=	0x0092
                           000093   310 _P1_DIR_PU	=	0x0093
                           0000A0   311 _P2	=	0x00a0
                           0000B0   312 _P3	=	0x00b0
                           000096   313 _P3_MOD_OC	=	0x0096
                           000097   314 _P3_DIR_PU	=	0x0097
                           0000C6   315 _PIN_FUNC	=	0x00c6
                           0000A2   316 _XBUS_AUX	=	0x00a2
                           000088   317 _TCON	=	0x0088
                           000089   318 _TMOD	=	0x0089
                           00008A   319 _TL0	=	0x008a
                           00008B   320 _TL1	=	0x008b
                           00008C   321 _TH0	=	0x008c
                           00008D   322 _TH1	=	0x008d
                           000098   323 _SCON	=	0x0098
                           000099   324 _SBUF	=	0x0099
                           0000C8   325 _T2CON	=	0x00c8
                           0000C9   326 _T2MOD	=	0x00c9
                           00CBCA   327 _RCAP2	=	0xcbca
                           0000CA   328 _RCAP2L	=	0x00ca
                           0000CB   329 _RCAP2H	=	0x00cb
                           00CDCC   330 _T2COUNT	=	0xcdcc
                           0000CC   331 _TL2	=	0x00cc
                           0000CD   332 _TH2	=	0x00cd
                           00CFCE   333 _T2CAP1	=	0xcfce
                           0000CE   334 _T2CAP1L	=	0x00ce
                           0000CF   335 _T2CAP1H	=	0x00cf
                           00009B   336 _PWM_DATA2	=	0x009b
                           00009C   337 _PWM_DATA1	=	0x009c
                           00009D   338 _PWM_CTRL	=	0x009d
                           00009E   339 _PWM_CK_SE	=	0x009e
                           0000F8   340 _SPI0_STAT	=	0x00f8
                           0000F9   341 _SPI0_DATA	=	0x00f9
                           0000FA   342 _SPI0_CTRL	=	0x00fa
                           0000FB   343 _SPI0_CK_SE	=	0x00fb
                           0000FC   344 _SPI0_SETUP	=	0x00fc
                           0000C0   345 _SCON1	=	0x00c0
                           0000C1   346 _SBUF1	=	0x00c1
                           0000C2   347 _SBAUD1	=	0x00c2
                           000080   348 _ADC_CTRL	=	0x0080
                           00009A   349 _ADC_CFG	=	0x009a
                           00009F   350 _ADC_DATA	=	0x009f
                           0000C3   351 _TKEY_CTRL	=	0x00c3
                           00C5C4   352 _TKEY_DAT	=	0xc5c4
                           0000C4   353 _TKEY_DATL	=	0x00c4
                           0000C5   354 _TKEY_DATH	=	0x00c5
                           000091   355 _USB_C_CTRL	=	0x0091
                           0000D1   356 _UDEV_CTRL	=	0x00d1
                           0000D2   357 _UEP1_CTRL	=	0x00d2
                           0000D3   358 _UEP1_T_LEN	=	0x00d3
                           0000D4   359 _UEP2_CTRL	=	0x00d4
                           0000D5   360 _UEP2_T_LEN	=	0x00d5
                           0000D6   361 _UEP3_CTRL	=	0x00d6
                           0000D7   362 _UEP3_T_LEN	=	0x00d7
                           0000D8   363 _USB_INT_FG	=	0x00d8
                           0000D9   364 _USB_INT_ST	=	0x00d9
                           0000DA   365 _USB_MIS_ST	=	0x00da
                           0000DB   366 _USB_RX_LEN	=	0x00db
                           0000DC   367 _UEP0_CTRL	=	0x00dc
                           0000DD   368 _UEP0_T_LEN	=	0x00dd
                           0000DE   369 _UEP4_CTRL	=	0x00de
                           0000DF   370 _UEP4_T_LEN	=	0x00df
                           0000E1   371 _USB_INT_EN	=	0x00e1
                           0000E2   372 _USB_CTRL	=	0x00e2
                           0000E3   373 _USB_DEV_AD	=	0x00e3
                           00E5E4   374 _UEP2_DMA	=	0xe5e4
                           0000E4   375 _UEP2_DMA_L	=	0x00e4
                           0000E5   376 _UEP2_DMA_H	=	0x00e5
                           00E7E6   377 _UEP3_DMA	=	0xe7e6
                           0000E6   378 _UEP3_DMA_L	=	0x00e6
                           0000E7   379 _UEP3_DMA_H	=	0x00e7
                           0000EA   380 _UEP4_1_MOD	=	0x00ea
                           0000EB   381 _UEP2_3_MOD	=	0x00eb
                           00EDEC   382 _UEP0_DMA	=	0xedec
                           0000EC   383 _UEP0_DMA_L	=	0x00ec
                           0000ED   384 _UEP0_DMA_H	=	0x00ed
                           00EFEE   385 _UEP1_DMA	=	0xefee
                           0000EE   386 _UEP1_DMA_L	=	0x00ee
                           0000EF   387 _UEP1_DMA_H	=	0x00ef
                                    388 ;--------------------------------------------------------
                                    389 ; special function bits
                                    390 ;--------------------------------------------------------
                                    391 	.area RSEG    (ABS,DATA)
      000000                        392 	.org 0x0000
                           0000D7   393 _CY	=	0x00d7
                           0000D6   394 _AC	=	0x00d6
                           0000D5   395 _F0	=	0x00d5
                           0000D4   396 _RS1	=	0x00d4
                           0000D3   397 _RS0	=	0x00d3
                           0000D2   398 _OV	=	0x00d2
                           0000D1   399 _F1	=	0x00d1
                           0000D0   400 _P	=	0x00d0
                           0000AF   401 _EA	=	0x00af
                           0000AE   402 _E_DIS	=	0x00ae
                           0000AD   403 _ET2	=	0x00ad
                           0000AC   404 _ES	=	0x00ac
                           0000AB   405 _ET1	=	0x00ab
                           0000AA   406 _EX1	=	0x00aa
                           0000A9   407 _ET0	=	0x00a9
                           0000A8   408 _EX0	=	0x00a8
                           0000AF   409 _PH_FLAG	=	0x00af
                           0000AE   410 _PL_FLAG	=	0x00ae
                           0000AD   411 _PT2	=	0x00ad
                           0000AC   412 _PS	=	0x00ac
                           0000AB   413 _PT1	=	0x00ab
                           0000AA   414 _PX1	=	0x00aa
                           0000A9   415 _PT0	=	0x00a9
                           0000A8   416 _PX0	=	0x00a8
                           0000EF   417 _IE_WDOG	=	0x00ef
                           0000EE   418 _IE_GPIO	=	0x00ee
                           0000ED   419 _IE_PWMX	=	0x00ed
                           0000EC   420 _IE_UART1	=	0x00ec
                           0000EB   421 _IE_ADC	=	0x00eb
                           0000EA   422 _IE_USB	=	0x00ea
                           0000E9   423 _IE_TKEY	=	0x00e9
                           0000E8   424 _IE_SPI0	=	0x00e8
                           000097   425 _P1_7	=	0x0097
                           000097   426 _SCK	=	0x0097
                           000097   427 _TXD1	=	0x0097
                           000097   428 _TIN5	=	0x0097
                           000096   429 _P1_6	=	0x0096
                           000096   430 _MISO	=	0x0096
                           000096   431 _RXD1	=	0x0096
                           000096   432 _TIN4	=	0x0096
                           000095   433 _P1_5	=	0x0095
                           000095   434 _MOSI	=	0x0095
                           000095   435 _PWM1	=	0x0095
                           000095   436 _TIN3	=	0x0095
                           000095   437 _UCC2	=	0x0095
                           000095   438 _AIN2	=	0x0095
                           000094   439 _P1_4	=	0x0094
                           000094   440 _T2_	=	0x0094
                           000094   441 _CAP1_	=	0x0094
                           000094   442 _SCS	=	0x0094
                           000094   443 _TIN2	=	0x0094
                           000094   444 _UCC1	=	0x0094
                           000094   445 _AIN1	=	0x0094
                           000093   446 _P1_3	=	0x0093
                           000093   447 _TXD_	=	0x0093
                           000092   448 _P1_2	=	0x0092
                           000092   449 _RXD_	=	0x0092
                           000091   450 _P1_1	=	0x0091
                           000091   451 _T2EX	=	0x0091
                           000091   452 _CAP2	=	0x0091
                           000091   453 _TIN1	=	0x0091
                           000091   454 _VBUS2	=	0x0091
                           000091   455 _AIN0	=	0x0091
                           000090   456 _P1_0	=	0x0090
                           000090   457 _T2	=	0x0090
                           000090   458 _CAP1	=	0x0090
                           000090   459 _TIN0	=	0x0090
                           0000B7   460 _P3_7	=	0x00b7
                           0000B7   461 _UDM	=	0x00b7
                           0000B6   462 _P3_6	=	0x00b6
                           0000B6   463 _UDP	=	0x00b6
                           0000B5   464 _P3_5	=	0x00b5
                           0000B5   465 _T1	=	0x00b5
                           0000B4   466 _P3_4	=	0x00b4
                           0000B4   467 _PWM2	=	0x00b4
                           0000B4   468 _RXD1_	=	0x00b4
                           0000B4   469 _T0	=	0x00b4
                           0000B3   470 _P3_3	=	0x00b3
                           0000B3   471 _INT1	=	0x00b3
                           0000B2   472 _P3_2	=	0x00b2
                           0000B2   473 _TXD1_	=	0x00b2
                           0000B2   474 _INT0	=	0x00b2
                           0000B2   475 _VBUS1	=	0x00b2
                           0000B2   476 _AIN3	=	0x00b2
                           0000B1   477 _P3_1	=	0x00b1
                           0000B1   478 _PWM2_	=	0x00b1
                           0000B1   479 _TXD	=	0x00b1
                           0000B0   480 _P3_0	=	0x00b0
                           0000B0   481 _PWM1_	=	0x00b0
                           0000B0   482 _RXD	=	0x00b0
                           00008F   483 _TF1	=	0x008f
                           00008E   484 _TR1	=	0x008e
                           00008D   485 _TF0	=	0x008d
                           00008C   486 _TR0	=	0x008c
                           00008B   487 _IE1	=	0x008b
                           00008A   488 _IT1	=	0x008a
                           000089   489 _IE0	=	0x0089
                           000088   490 _IT0	=	0x0088
                           00009F   491 _SM0	=	0x009f
                           00009E   492 _SM1	=	0x009e
                           00009D   493 _SM2	=	0x009d
                           00009C   494 _REN	=	0x009c
                           00009B   495 _TB8	=	0x009b
                           00009A   496 _RB8	=	0x009a
                           000099   497 _TI	=	0x0099
                           000098   498 _RI	=	0x0098
                           0000CF   499 _TF2	=	0x00cf
                           0000CF   500 _CAP1F	=	0x00cf
                           0000CE   501 _EXF2	=	0x00ce
                           0000CD   502 _RCLK	=	0x00cd
                           0000CC   503 _TCLK	=	0x00cc
                           0000CB   504 _EXEN2	=	0x00cb
                           0000CA   505 _TR2	=	0x00ca
                           0000C9   506 _C_T2	=	0x00c9
                           0000C8   507 _CP_RL2	=	0x00c8
                           0000FF   508 _S0_FST_ACT	=	0x00ff
                           0000FE   509 _S0_IF_OV	=	0x00fe
                           0000FD   510 _S0_IF_FIRST	=	0x00fd
                           0000FC   511 _S0_IF_BYTE	=	0x00fc
                           0000FB   512 _S0_FREE	=	0x00fb
                           0000FA   513 _S0_T_FIFO	=	0x00fa
                           0000F8   514 _S0_R_FIFO	=	0x00f8
                           0000C7   515 _U1SM0	=	0x00c7
                           0000C5   516 _U1SMOD	=	0x00c5
                           0000C4   517 _U1REN	=	0x00c4
                           0000C3   518 _U1TB8	=	0x00c3
                           0000C2   519 _U1RB8	=	0x00c2
                           0000C1   520 _U1TI	=	0x00c1
                           0000C0   521 _U1RI	=	0x00c0
                           000087   522 _CMPO	=	0x0087
                           000086   523 _CMP_IF	=	0x0086
                           000085   524 _ADC_IF	=	0x0085
                           000084   525 _ADC_START	=	0x0084
                           000083   526 _CMP_CHAN	=	0x0083
                           000081   527 _ADC_CHAN1	=	0x0081
                           000080   528 _ADC_CHAN0	=	0x0080
                           0000DF   529 _U_IS_NAK	=	0x00df
                           0000DE   530 _U_TOG_OK	=	0x00de
                           0000DD   531 _U_SIE_FREE	=	0x00dd
                           0000DC   532 _UIF_FIFO_OV	=	0x00dc
                           0000DB   533 _UIF_HST_SOF	=	0x00db
                           0000DA   534 _UIF_SUSPEND	=	0x00da
                           0000D9   535 _UIF_TRANSFER	=	0x00d9
                           0000D8   536 _UIF_DETECT	=	0x00d8
                           0000D8   537 _UIF_BUS_RST	=	0x00d8
                                    538 ;--------------------------------------------------------
                                    539 ; overlayable register banks
                                    540 ;--------------------------------------------------------
                                    541 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        542 	.ds 8
                                    543 ;--------------------------------------------------------
                                    544 ; overlayable bit register bank
                                    545 ;--------------------------------------------------------
                                    546 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        547 bits:
      000020                        548 	.ds 1
                           008000   549 	b0 = bits[0]
                           008100   550 	b1 = bits[1]
                           008200   551 	b2 = bits[2]
                           008300   552 	b3 = bits[3]
                           008400   553 	b4 = bits[4]
                           008500   554 	b5 = bits[5]
                           008600   555 	b6 = bits[6]
                           008700   556 	b7 = bits[7]
                                    557 ;--------------------------------------------------------
                                    558 ; internal ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area DSEG    (DATA)
      000016                        561 _DataInLen:
      000016                        562 	.ds 1
      000017                        563 _UsbConfig:
      000017                        564 	.ds 1
      000018                        565 _UsbAddr:
      000018                        566 	.ds 1
      000019                        567 _pDataIn:
      000019                        568 	.ds 3
      00001C                        569 _usb_state::
      00001C                        570 	.ds 1
      00001D                        571 _keyboard_idle:
      00001D                        572 	.ds 1
                                    573 ;--------------------------------------------------------
                                    574 ; overlayable items in internal ram 
                                    575 ;--------------------------------------------------------
                                    576 ;--------------------------------------------------------
                                    577 ; indirectly addressable internal ram data
                                    578 ;--------------------------------------------------------
                                    579 	.area ISEG    (DATA)
                                    580 ;--------------------------------------------------------
                                    581 ; absolute internal ram data
                                    582 ;--------------------------------------------------------
                                    583 	.area IABS    (ABS,DATA)
                                    584 	.area IABS    (ABS,DATA)
                                    585 ;--------------------------------------------------------
                                    586 ; bit data
                                    587 ;--------------------------------------------------------
                                    588 	.area BSEG    (BIT)
                                    589 ;--------------------------------------------------------
                                    590 ; paged external ram data
                                    591 ;--------------------------------------------------------
                                    592 	.area PSEG    (PAG,XDATA)
                                    593 ;--------------------------------------------------------
                                    594 ; external ram data
                                    595 ;--------------------------------------------------------
                                    596 	.area XSEG    (XDATA)
      000000                        597 _Ep0Buffer::
      000000                        598 	.ds 192
      0000C0                        599 _Ep1Buffer::
      0000C0                        600 	.ds 128
      000140                        601 _Ep2Buffer::
      000140                        602 	.ds 64
      000180                        603 _Ep3Buffer::
      000180                        604 	.ds 128
                                    605 ;--------------------------------------------------------
                                    606 ; absolute external ram data
                                    607 ;--------------------------------------------------------
                                    608 	.area XABS    (ABS,XDATA)
                                    609 ;--------------------------------------------------------
                                    610 ; external initialized ram data
                                    611 ;--------------------------------------------------------
                                    612 	.area XISEG   (XDATA)
                                    613 	.area HOME    (CODE)
                                    614 	.area GSINIT0 (CODE)
                                    615 	.area GSINIT1 (CODE)
                                    616 	.area GSINIT2 (CODE)
                                    617 	.area GSINIT3 (CODE)
                                    618 	.area GSINIT4 (CODE)
                                    619 	.area GSINIT5 (CODE)
                                    620 	.area GSINIT  (CODE)
                                    621 	.area GSFINAL (CODE)
                                    622 	.area CSEG    (CODE)
                                    623 ;--------------------------------------------------------
                                    624 ; global & static initialisations
                                    625 ;--------------------------------------------------------
                                    626 	.area HOME    (CODE)
                                    627 	.area GSINIT  (CODE)
                                    628 	.area GSFINAL (CODE)
                                    629 	.area GSINIT  (CODE)
                                    630 ;	../../../usb/endpoints.c:60: union UsbState usb_state = {
      0000B4 78 1C            [12]  631 	mov	r0,#_usb_state
      0000B6 E6               [12]  632 	mov	a,@r0
      0000B7 44 10            [12]  633 	orl	a,#0x10
      0000B9 F6               [12]  634 	mov	@r0,a
                                    635 ;	../../../usb/endpoints.c:64: static uint8_t keyboard_idle = 0;
      0000BA 75 1D 00         [24]  636 	mov	_keyboard_idle,#0x00
                                    637 ;--------------------------------------------------------
                                    638 ; Home
                                    639 ;--------------------------------------------------------
                                    640 	.area HOME    (CODE)
                                    641 	.area HOME    (CODE)
                                    642 ;--------------------------------------------------------
                                    643 ; code
                                    644 ;--------------------------------------------------------
                                    645 	.area CSEG    (CODE)
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'nop'
                                    648 ;------------------------------------------------------------
                                    649 ;	../../../usb/endpoints.c:87: void nop()
                                    650 ;	-----------------------------------------
                                    651 ;	 function nop
                                    652 ;	-----------------------------------------
      000453                        653 _nop:
                           000007   654 	ar7 = 0x07
                           000006   655 	ar6 = 0x06
                           000005   656 	ar5 = 0x05
                           000004   657 	ar4 = 0x04
                           000003   658 	ar3 = 0x03
                           000002   659 	ar2 = 0x02
                           000001   660 	ar1 = 0x01
                           000000   661 	ar0 = 0x00
                                    662 ;	../../../usb/endpoints.c:89: }
      000453 22               [24]  663 	ret
                                    664 ;------------------------------------------------------------
                                    665 ;Allocation info for local variables in function 'EP0_OUT'
                                    666 ;------------------------------------------------------------
                                    667 ;	../../../usb/endpoints.c:91: void EP0_OUT()
                                    668 ;	-----------------------------------------
                                    669 ;	 function EP0_OUT
                                    670 ;	-----------------------------------------
      000454                        671 _EP0_OUT:
                                    672 ;	../../../usb/endpoints.c:93: switch (usb_state.setup_state) {
      000454 78 1C            [12]  673 	mov	r0,#_usb_state
      000456 E6               [12]  674 	mov	a,@r0
      000457 C4               [12]  675 	swap	a
      000458 03               [12]  676 	rr	a
      000459 54 07            [12]  677 	anl	a,#0x07
      00045B FF               [12]  678 	mov	r7,a
      00045C 60 1A            [24]  679 	jz	00106$
      00045E BF 02 01         [24]  680 	cjne	r7,#0x02,00121$
      000461 22               [24]  681 	ret
      000462                        682 00121$:
      000462 BF 04 0A         [24]  683 	cjne	r7,#0x04,00104$
                                    684 ;	../../../usb/endpoints.c:99: EP0_RESET();
      000465 75 DC 02         [24]  685 	mov	_UEP0_CTRL,#0x02
                                    686 ;	../../../usb/endpoints.c:100: usb_state.setup_state = SETUP_IDLE;
      000468 78 1C            [12]  687 	mov	r0,#_usb_state
      00046A E6               [12]  688 	mov	a,@r0
      00046B 54 1F            [12]  689 	anl	a,#0x1f
      00046D F6               [12]  690 	mov	@r0,a
                                    691 ;	../../../usb/endpoints.c:101: break;
                                    692 ;	../../../usb/endpoints.c:105: default:
      00046E 22               [24]  693 	ret
      00046F                        694 00104$:
                                    695 ;	../../../usb/endpoints.c:107: EP0_RESET();
      00046F 75 DC 02         [24]  696 	mov	_UEP0_CTRL,#0x02
                                    697 ;	../../../usb/endpoints.c:108: usb_state.setup_state = SETUP_IDLE;
      000472 78 1C            [12]  698 	mov	r0,#_usb_state
      000474 E6               [12]  699 	mov	a,@r0
      000475 54 1F            [12]  700 	anl	a,#0x1f
      000477 F6               [12]  701 	mov	@r0,a
                                    702 ;	../../../usb/endpoints.c:110: }
      000478                        703 00106$:
                                    704 ;	../../../usb/endpoints.c:111: }
      000478 22               [24]  705 	ret
                                    706 ;------------------------------------------------------------
                                    707 ;Allocation info for local variables in function 'EP0_IN'
                                    708 ;------------------------------------------------------------
                                    709 ;len                       Allocated to registers r6 
                                    710 ;------------------------------------------------------------
                                    711 ;	../../../usb/endpoints.c:112: void EP0_IN()
                                    712 ;	-----------------------------------------
                                    713 ;	 function EP0_IN
                                    714 ;	-----------------------------------------
      000479                        715 _EP0_IN:
                                    716 ;	../../../usb/endpoints.c:114: switch (usb_state.setup_state) {
      000479 78 1C            [12]  717 	mov	r0,#_usb_state
      00047B E6               [12]  718 	mov	a,@r0
      00047C C4               [12]  719 	swap	a
      00047D 03               [12]  720 	rr	a
      00047E 54 07            [12]  721 	anl	a,#0x07
      000480 FF               [12]  722 	mov	r7,a
      000481 BF 00 01         [24]  723 	cjne	r7,#0x00,00138$
      000484 22               [24]  724 	ret
      000485                        725 00138$:
      000485 BF 01 02         [24]  726 	cjne	r7,#0x01,00139$
      000488 80 08            [24]  727 	sjmp	00102$
      00048A                        728 00139$:
      00048A BF 03 02         [24]  729 	cjne	r7,#0x03,00140$
      00048D 80 63            [24]  730 	sjmp	00105$
      00048F                        731 00140$:
      00048F 02 05 11         [24]  732 	ljmp	00108$
                                    733 ;	../../../usb/endpoints.c:119: case SETUP_DATA_IN:
      000492                        734 00102$:
                                    735 ;	../../../usb/endpoints.c:120: if (DataInLen == 0) {
      000492 E5 16            [12]  736 	mov	a,_DataInLen
      000494 70 08            [24]  737 	jnz	00104$
                                    738 ;	../../../usb/endpoints.c:121: usb_state.setup_state = SETUP_STATE_OUT;
      000496 78 1C            [12]  739 	mov	r0,#_usb_state
      000498 E6               [12]  740 	mov	a,@r0
      000499 54 1F            [12]  741 	anl	a,#0x1f
      00049B 44 80            [12]  742 	orl	a,#0x80
      00049D F6               [12]  743 	mov	@r0,a
      00049E                        744 00104$:
                                    745 ;	../../../usb/endpoints.c:123: uint8_t len = DataInLen >= THIS_ENDP0_SIZE ? THIS_ENDP0_SIZE : DataInLen; //本次传输长度
      00049E C3               [12]  746 	clr	c
      00049F E5 16            [12]  747 	mov	a,_DataInLen
      0004A1 94 08            [12]  748 	subb	a,#0x08
      0004A3 92 00            [24]  749 	mov	b0,c
      0004A5 40 06            [24]  750 	jc	00112$
      0004A7 7E 08            [12]  751 	mov	r6,#0x08
      0004A9 7F 00            [12]  752 	mov	r7,#0x00
      0004AB 80 04            [24]  753 	sjmp	00113$
      0004AD                        754 00112$:
      0004AD AE 16            [24]  755 	mov	r6,_DataInLen
      0004AF 7F 00            [12]  756 	mov	r7,#0x00
      0004B1                        757 00113$:
                                    758 ;	../../../usb/endpoints.c:124: memcpy(Ep0Buffer, pDataIn, len); //加载上传数据
      0004B1 8E 05            [24]  759 	mov	ar5,r6
      0004B3 7F 00            [12]  760 	mov	r7,#0x00
      0004B5 AA 19            [24]  761 	mov	r2,_pDataIn
      0004B7 AB 1A            [24]  762 	mov	r3,(_pDataIn + 1)
      0004B9 AC 1B            [24]  763 	mov	r4,(_pDataIn + 2)
      0004BB C0 06            [24]  764 	push	ar6
      0004BD C0 05            [24]  765 	push	ar5
      0004BF C0 07            [24]  766 	push	ar7
      0004C1 C0 02            [24]  767 	push	ar2
      0004C3 C0 03            [24]  768 	push	ar3
      0004C5 C0 04            [24]  769 	push	ar4
      0004C7 90 00 00         [24]  770 	mov	dptr,#_Ep0Buffer
      0004CA 75 F0 00         [24]  771 	mov	b,#0x00
      0004CD 12 32 20         [24]  772 	lcall	___memcpy
      0004D0 E5 81            [12]  773 	mov	a,sp
      0004D2 24 FB            [12]  774 	add	a,#0xfb
      0004D4 F5 81            [12]  775 	mov	sp,a
      0004D6 D0 06            [24]  776 	pop	ar6
                                    777 ;	../../../usb/endpoints.c:125: DataInLen -= len;
      0004D8 E5 16            [12]  778 	mov	a,_DataInLen
      0004DA C3               [12]  779 	clr	c
      0004DB 9E               [12]  780 	subb	a,r6
      0004DC F5 16            [12]  781 	mov	_DataInLen,a
                                    782 ;	../../../usb/endpoints.c:126: pDataIn += len;
      0004DE EE               [12]  783 	mov	a,r6
      0004DF 25 19            [12]  784 	add	a,_pDataIn
      0004E1 F5 19            [12]  785 	mov	_pDataIn,a
      0004E3 E4               [12]  786 	clr	a
      0004E4 35 1A            [12]  787 	addc	a,(_pDataIn + 1)
      0004E6 F5 1A            [12]  788 	mov	(_pDataIn + 1),a
                                    789 ;	../../../usb/endpoints.c:127: UEP0_T_LEN = len;
      0004E8 8E DD            [24]  790 	mov	_UEP0_T_LEN,r6
                                    791 ;	../../../usb/endpoints.c:128: UEP0_CTRL ^= bUEP_T_TOG; //同步标志位翻转
      0004EA AE DC            [24]  792 	mov	r6,_UEP0_CTRL
      0004EC 63 06 40         [24]  793 	xrl	ar6,#0x40
      0004EF 8E DC            [24]  794 	mov	_UEP0_CTRL,r6
                                    795 ;	../../../usb/endpoints.c:129: break;
                                    796 ;	../../../usb/endpoints.c:131: case SETUP_STATE_IN:
      0004F1 22               [24]  797 	ret
      0004F2                        798 00105$:
                                    799 ;	../../../usb/endpoints.c:133: if (UsbAddr) {
      0004F2 E5 18            [12]  800 	mov	a,_UsbAddr
      0004F4 60 0E            [24]  801 	jz	00107$
                                    802 ;	../../../usb/endpoints.c:134: USB_DEV_AD = USB_DEV_AD & bUDA_GP_BIT | UsbAddr;
      0004F6 E5 E3            [12]  803 	mov	a,_USB_DEV_AD
      0004F8 54 80            [12]  804 	anl	a,#0x80
      0004FA FF               [12]  805 	mov	r7,a
      0004FB E5 18            [12]  806 	mov	a,_UsbAddr
      0004FD FE               [12]  807 	mov	r6,a
      0004FE 4F               [12]  808 	orl	a,r7
      0004FF F5 E3            [12]  809 	mov	_USB_DEV_AD,a
                                    810 ;	../../../usb/endpoints.c:135: UsbAddr = 0;
      000501 75 18 00         [24]  811 	mov	_UsbAddr,#0x00
      000504                        812 00107$:
                                    813 ;	../../../usb/endpoints.c:138: UEP0_T_LEN = 0;
      000504 75 DD 00         [24]  814 	mov	_UEP0_T_LEN,#0x00
                                    815 ;	../../../usb/endpoints.c:139: EP0_RESET();
      000507 75 DC 02         [24]  816 	mov	_UEP0_CTRL,#0x02
                                    817 ;	../../../usb/endpoints.c:140: usb_state.setup_state = SETUP_IDLE;
      00050A 78 1C            [12]  818 	mov	r0,#_usb_state
      00050C E6               [12]  819 	mov	a,@r0
      00050D 54 1F            [12]  820 	anl	a,#0x1f
      00050F F6               [12]  821 	mov	@r0,a
                                    822 ;	../../../usb/endpoints.c:141: break;
                                    823 ;	../../../usb/endpoints.c:142: default:
      000510 22               [24]  824 	ret
      000511                        825 00108$:
                                    826 ;	../../../usb/endpoints.c:144: EP0_RESET();
      000511 75 DC 02         [24]  827 	mov	_UEP0_CTRL,#0x02
                                    828 ;	../../../usb/endpoints.c:145: usb_state.setup_state = SETUP_IDLE;
      000514 78 1C            [12]  829 	mov	r0,#_usb_state
      000516 E6               [12]  830 	mov	a,@r0
      000517 54 1F            [12]  831 	anl	a,#0x1f
      000519 F6               [12]  832 	mov	@r0,a
                                    833 ;	../../../usb/endpoints.c:147: }
                                    834 ;	../../../usb/endpoints.c:148: }
      00051A 22               [24]  835 	ret
                                    836 ;------------------------------------------------------------
                                    837 ;Allocation info for local variables in function 'EP0_SETUP'
                                    838 ;------------------------------------------------------------
                                    839 ;datalen                   Allocated to registers r7 
                                    840 ;len                       Allocated to registers r6 
                                    841 ;------------------------------------------------------------
                                    842 ;	../../../usb/endpoints.c:149: void EP0_SETUP()
                                    843 ;	-----------------------------------------
                                    844 ;	 function EP0_SETUP
                                    845 ;	-----------------------------------------
      00051B                        846 _EP0_SETUP:
                                    847 ;	../../../usb/endpoints.c:151: if (USB_RX_LEN != (sizeof(USB_SETUP_REQ))) {
      00051B 74 08            [12]  848 	mov	a,#0x08
      00051D B5 DB 02         [24]  849 	cjne	a,_USB_RX_LEN,00303$
      000520 80 04            [24]  850 	sjmp	00102$
      000522                        851 00303$:
                                    852 ;	../../../usb/endpoints.c:152: SETUP_STALL();
      000522 75 DC CF         [24]  853 	mov	_UEP0_CTRL,#0xcf
                                    854 ;	../../../usb/endpoints.c:153: return;
      000525 22               [24]  855 	ret
      000526                        856 00102$:
                                    857 ;	../../../usb/endpoints.c:155: uint8_t datalen = 0;
      000526 7F 00            [12]  858 	mov	r7,#0x00
                                    859 ;	../../../usb/endpoints.c:156: DataInLen = UsbSetupBuf->wLength > 0xFF ? 0xFF : UsbSetupBuf->wLength; // 限制总长度
      000528 90 00 06         [24]  860 	mov	dptr,#(_Ep0Buffer + 0x0006)
      00052B E0               [24]  861 	movx	a,@dptr
      00052C FD               [12]  862 	mov	r5,a
      00052D A3               [24]  863 	inc	dptr
      00052E E0               [24]  864 	movx	a,@dptr
      00052F FE               [12]  865 	mov	r6,a
      000530 C3               [12]  866 	clr	c
      000531 74 FF            [12]  867 	mov	a,#0xff
      000533 9D               [12]  868 	subb	a,r5
      000534 E4               [12]  869 	clr	a
      000535 9E               [12]  870 	subb	a,r6
      000536 50 06            [24]  871 	jnc	00163$
      000538 7D FF            [12]  872 	mov	r5,#0xff
      00053A 7E 00            [12]  873 	mov	r6,#0x00
      00053C 80 08            [24]  874 	sjmp	00164$
      00053E                        875 00163$:
      00053E 90 00 06         [24]  876 	mov	dptr,#(_Ep0Buffer + 0x0006)
      000541 E0               [24]  877 	movx	a,@dptr
      000542 FD               [12]  878 	mov	r5,a
      000543 A3               [24]  879 	inc	dptr
      000544 E0               [24]  880 	movx	a,@dptr
      000545 FE               [12]  881 	mov	r6,a
      000546                        882 00164$:
      000546 8D 16            [24]  883 	mov	_DataInLen,r5
                                    884 ;	../../../usb/endpoints.c:157: if (UsbSetupBuf->bmRequestType.Type == 0) //标准请求
      000548 90 00 00         [24]  885 	mov	dptr,#_Ep0Buffer
      00054B E0               [24]  886 	movx	a,@dptr
      00054C 54 60            [12]  887 	anl	a,#0x60
      00054E 60 03            [24]  888 	jz	00305$
      000550 02 07 9E         [24]  889 	ljmp	00153$
      000553                        890 00305$:
                                    891 ;	../../../usb/endpoints.c:159: switch (UsbSetupBuf->bRequest) //请求码
      000553 90 00 01         [24]  892 	mov	dptr,#(_Ep0Buffer + 0x0001)
      000556 E0               [24]  893 	movx	a,@dptr
      000557 FE               [12]  894 	mov  r6,a
      000558 24 F5            [12]  895 	add	a,#0xff - 0x0a
      00055A 50 03            [24]  896 	jnc	00306$
      00055C 02 07 9A         [24]  897 	ljmp	00142$
      00055F                        898 00306$:
      00055F EE               [12]  899 	mov	a,r6
      000560 24 0A            [12]  900 	add	a,#(00307$-3-.)
      000562 83               [24]  901 	movc	a,@a+pc
      000563 F5 82            [12]  902 	mov	dpl,a
      000565 EE               [12]  903 	mov	a,r6
      000566 24 0F            [12]  904 	add	a,#(00308$-3-.)
      000568 83               [24]  905 	movc	a,@a+pc
      000569 F5 83            [12]  906 	mov	dph,a
      00056B E4               [12]  907 	clr	a
      00056C 73               [24]  908 	jmp	@a+dptr
      00056D                        909 00307$:
      00056D 74                     910 	.db	00141$
      00056E 20                     911 	.db	00108$
      00056F 9A                     912 	.db	00142$
      000570 C7                     913 	.db	00125$
      000571 9A                     914 	.db	00142$
      000572 BC                     915 	.db	00104$
      000573 83                     916 	.db	00103$
      000574 9A                     917 	.db	00142$
      000575 CD                     918 	.db	00105$
      000576 E9                     919 	.db	00106$
      000577 06                     920 	.db	00107$
      000578                        921 00308$:
      000578 07                     922 	.db	00141$>>8
      000579 06                     923 	.db	00108$>>8
      00057A 07                     924 	.db	00142$>>8
      00057B 06                     925 	.db	00125$>>8
      00057C 07                     926 	.db	00142$>>8
      00057D 05                     927 	.db	00104$>>8
      00057E 05                     928 	.db	00103$>>8
      00057F 07                     929 	.db	00142$>>8
      000580 05                     930 	.db	00105$>>8
      000581 05                     931 	.db	00106$>>8
      000582 06                     932 	.db	00107$>>8
                                    933 ;	../../../usb/endpoints.c:161: case USB_GET_DESCRIPTOR:
      000583                        934 00103$:
                                    935 ;	../../../usb/endpoints.c:162: datalen = GetUsbDescriptor(UsbSetupBuf->wValueH, UsbSetupBuf->wValueL, UsbSetupBuf->wIndexL, &pDataIn);
      000583 90 00 04         [24]  936 	mov	dptr,#(_Ep0Buffer + 0x0004)
      000586 E0               [24]  937 	movx	a,@dptr
      000587 FE               [12]  938 	mov	r6,a
      000588 90 00 02         [24]  939 	mov	dptr,#(_Ep0Buffer + 0x0002)
      00058B E0               [24]  940 	movx	a,@dptr
      00058C FD               [12]  941 	mov	r5,a
      00058D 90 00 03         [24]  942 	mov	dptr,#(_Ep0Buffer + 0x0003)
      000590 E0               [24]  943 	movx	a,@dptr
      000591 FC               [12]  944 	mov	r4,a
      000592 74 19            [12]  945 	mov	a,#_pDataIn
      000594 C0 E0            [24]  946 	push	acc
      000596 74 00            [12]  947 	mov	a,#(_pDataIn >> 8)
      000598 C0 E0            [24]  948 	push	acc
      00059A 74 40            [12]  949 	mov	a,#0x40
      00059C C0 E0            [24]  950 	push	acc
      00059E C0 06            [24]  951 	push	ar6
      0005A0 C0 05            [24]  952 	push	ar5
      0005A2 8C 82            [24]  953 	mov	dpl,r4
      0005A4 12 12 9D         [24]  954 	lcall	_GetUsbDescriptor
      0005A7 AE 82            [24]  955 	mov	r6,dpl
      0005A9 E5 81            [12]  956 	mov	a,sp
      0005AB 24 FB            [12]  957 	add	a,#0xfb
      0005AD F5 81            [12]  958 	mov	sp,a
      0005AF 8E 07            [24]  959 	mov	ar7,r6
                                    960 ;	../../../usb/endpoints.c:163: usb_state.setup_state = SETUP_DATA_IN;
      0005B1 78 1C            [12]  961 	mov	r0,#_usb_state
      0005B3 E6               [12]  962 	mov	a,@r0
      0005B4 54 1F            [12]  963 	anl	a,#0x1f
      0005B6 44 20            [12]  964 	orl	a,#0x20
      0005B8 F6               [12]  965 	mov	@r0,a
                                    966 ;	../../../usb/endpoints.c:164: break;
      0005B9 02 07 E2         [24]  967 	ljmp	00154$
                                    968 ;	../../../usb/endpoints.c:166: case USB_SET_ADDRESS:
      0005BC                        969 00104$:
                                    970 ;	../../../usb/endpoints.c:167: UsbAddr = UsbSetupBuf->wValueL; //暂存USB设备地址
      0005BC 90 00 02         [24]  971 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0005BF E0               [24]  972 	movx	a,@dptr
      0005C0 F5 18            [12]  973 	mov	_UsbAddr,a
                                    974 ;	../../../usb/endpoints.c:168: usb_state.setup_state = SETUP_STATE_IN;
      0005C2 78 1C            [12]  975 	mov	r0,#_usb_state
      0005C4 E6               [12]  976 	mov	a,@r0
      0005C5 54 1F            [12]  977 	anl	a,#0x1f
      0005C7 44 60            [12]  978 	orl	a,#0x60
      0005C9 F6               [12]  979 	mov	@r0,a
                                    980 ;	../../../usb/endpoints.c:169: break;
      0005CA 02 07 E2         [24]  981 	ljmp	00154$
                                    982 ;	../../../usb/endpoints.c:171: case USB_GET_CONFIGURATION:
      0005CD                        983 00105$:
                                    984 ;	../../../usb/endpoints.c:172: Ep0Buffer[0] = UsbConfig;
      0005CD 90 00 00         [24]  985 	mov	dptr,#_Ep0Buffer
      0005D0 E5 17            [12]  986 	mov	a,_UsbConfig
      0005D2 F0               [24]  987 	movx	@dptr,a
                                    988 ;	../../../usb/endpoints.c:173: pDataIn = Ep0Buffer;
      0005D3 75 19 00         [24]  989 	mov	_pDataIn,#_Ep0Buffer
      0005D6 75 1A 00         [24]  990 	mov	(_pDataIn + 1),#(_Ep0Buffer >> 8)
      0005D9 75 1B 00         [24]  991 	mov	(_pDataIn + 2),#0x00
                                    992 ;	../../../usb/endpoints.c:174: datalen = 1;
      0005DC 7F 01            [12]  993 	mov	r7,#0x01
                                    994 ;	../../../usb/endpoints.c:176: usb_state.setup_state = SETUP_DATA_IN;
      0005DE 78 1C            [12]  995 	mov	r0,#_usb_state
      0005E0 E6               [12]  996 	mov	a,@r0
      0005E1 54 1F            [12]  997 	anl	a,#0x1f
      0005E3 44 20            [12]  998 	orl	a,#0x20
      0005E5 F6               [12]  999 	mov	@r0,a
                                   1000 ;	../../../usb/endpoints.c:177: break;
      0005E6 02 07 E2         [24] 1001 	ljmp	00154$
                                   1002 ;	../../../usb/endpoints.c:179: case USB_SET_CONFIGURATION:
      0005E9                       1003 00106$:
                                   1004 ;	../../../usb/endpoints.c:180: UsbConfig = UsbSetupBuf->wValueL;
      0005E9 90 00 02         [24] 1005 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0005EC E0               [24] 1006 	movx	a,@dptr
                                   1007 ;	../../../usb/endpoints.c:182: usb_state.is_ready = UsbConfig > 0;
                                   1008 ;	assignBit
      0005ED F5 17            [12] 1009 	mov	_UsbConfig,a
      0005EF 24 FF            [12] 1010 	add	a,#0xff
      0005F1 E4               [12] 1011 	clr	a
      0005F2 33               [12] 1012 	rlc	a
      0005F3 FE               [12] 1013 	mov	r6,a
      0005F4 78 1C            [12] 1014 	mov	r0,#_usb_state
      0005F6 13               [12] 1015 	rrc	a
      0005F7 E6               [12] 1016 	mov	a,@r0
      0005F8 92 E0            [24] 1017 	mov	acc.0,c
      0005FA F6               [12] 1018 	mov	@r0,a
                                   1019 ;	../../../usb/endpoints.c:183: usb_state.setup_state = SETUP_STATE_IN;
      0005FB 78 1C            [12] 1020 	mov	r0,#_usb_state
      0005FD E6               [12] 1021 	mov	a,@r0
      0005FE 54 1F            [12] 1022 	anl	a,#0x1f
      000600 44 60            [12] 1023 	orl	a,#0x60
      000602 F6               [12] 1024 	mov	@r0,a
                                   1025 ;	../../../usb/endpoints.c:184: break;
      000603 02 07 E2         [24] 1026 	ljmp	00154$
                                   1027 ;	../../../usb/endpoints.c:186: case USB_GET_INTERFACE:
      000606                       1028 00107$:
                                   1029 ;	../../../usb/endpoints.c:187: Ep0Buffer[0] = 0x00;
      000606 90 00 00         [24] 1030 	mov	dptr,#_Ep0Buffer
      000609 E4               [12] 1031 	clr	a
      00060A F0               [24] 1032 	movx	@dptr,a
                                   1033 ;	../../../usb/endpoints.c:188: pDataIn = Ep0Buffer;
      00060B 75 19 00         [24] 1034 	mov	_pDataIn,#_Ep0Buffer
      00060E 75 1A 00         [24] 1035 	mov	(_pDataIn + 1),#(_Ep0Buffer >> 8)
                                   1036 ;	1-genFromRTrack replaced	mov	(_pDataIn + 2),#0x00
      000611 F5 1B            [12] 1037 	mov	(_pDataIn + 2),a
                                   1038 ;	../../../usb/endpoints.c:189: datalen = 1;
      000613 7F 01            [12] 1039 	mov	r7,#0x01
                                   1040 ;	../../../usb/endpoints.c:191: usb_state.setup_state = SETUP_DATA_IN;
      000615 78 1C            [12] 1041 	mov	r0,#_usb_state
      000617 E6               [12] 1042 	mov	a,@r0
      000618 54 1F            [12] 1043 	anl	a,#0x1f
      00061A 44 20            [12] 1044 	orl	a,#0x20
      00061C F6               [12] 1045 	mov	@r0,a
                                   1046 ;	../../../usb/endpoints.c:192: break;
      00061D 02 07 E2         [24] 1047 	ljmp	00154$
                                   1048 ;	../../../usb/endpoints.c:194: case USB_CLEAR_FEATURE: {
      000620                       1049 00108$:
                                   1050 ;	../../../usb/endpoints.c:195: switch (UsbSetupBuf->bmRequestType.Recipient) {
      000620 90 00 00         [24] 1051 	mov	dptr,#_Ep0Buffer
      000623 E0               [24] 1052 	movx	a,@dptr
      000624 54 1F            [12] 1053 	anl	a,#0x1f
      000626 FE               [12] 1054 	mov	r6,a
      000627 60 73            [24] 1055 	jz	00120$
      000629 BE 02 02         [24] 1056 	cjne	r6,#0x02,00310$
      00062C 80 03            [24] 1057 	sjmp	00311$
      00062E                       1058 00310$:
      00062E 02 06 B8         [24] 1059 	ljmp	00123$
      000631                       1060 00311$:
                                   1061 ;	../../../usb/endpoints.c:197: switch (UsbSetupBuf->wIndexL) {
      000631 90 00 04         [24] 1062 	mov	dptr,#(_Ep0Buffer + 0x0004)
      000634 E0               [24] 1063 	movx	a,@dptr
      000635 FE               [12] 1064 	mov	r6,a
      000636 BE 01 02         [24] 1065 	cjne	r6,#0x01,00312$
      000639 80 58            [24] 1066 	sjmp	00117$
      00063B                       1067 00312$:
      00063B BE 02 02         [24] 1068 	cjne	r6,#0x02,00313$
      00063E 80 4E            [24] 1069 	sjmp	00116$
      000640                       1070 00313$:
      000640 BE 03 02         [24] 1071 	cjne	r6,#0x03,00314$
      000643 80 44            [24] 1072 	sjmp	00115$
      000645                       1073 00314$:
      000645 BE 04 02         [24] 1074 	cjne	r6,#0x04,00315$
      000648 80 3A            [24] 1075 	sjmp	00114$
      00064A                       1076 00315$:
      00064A BE 81 02         [24] 1077 	cjne	r6,#0x81,00316$
      00064D 80 2B            [24] 1078 	sjmp	00113$
      00064F                       1079 00316$:
      00064F BE 82 02         [24] 1080 	cjne	r6,#0x82,00317$
      000652 80 1C            [24] 1081 	sjmp	00112$
      000654                       1082 00317$:
      000654 BE 83 02         [24] 1083 	cjne	r6,#0x83,00318$
      000657 80 0D            [24] 1084 	sjmp	00111$
      000659                       1085 00318$:
      000659 BE 84 3C         [24] 1086 	cjne	r6,#0x84,00118$
                                   1087 ;	../../../usb/endpoints.c:199: EP_IN_NAK_TOG(4);
      00065C 74 BC            [12] 1088 	mov	a,#0xbc
      00065E 55 DE            [12] 1089 	anl	a,_UEP4_CTRL
      000660 44 02            [12] 1090 	orl	a,#0x02
      000662 F5 DE            [12] 1091 	mov	_UEP4_CTRL,a
                                   1092 ;	../../../usb/endpoints.c:200: break;
                                   1093 ;	../../../usb/endpoints.c:201: case 0x83:
      000664 80 56            [24] 1094 	sjmp	00124$
      000666                       1095 00111$:
                                   1096 ;	../../../usb/endpoints.c:202: EP_IN_NAK_TOG(3);
      000666 74 BC            [12] 1097 	mov	a,#0xbc
      000668 55 D6            [12] 1098 	anl	a,_UEP3_CTRL
      00066A 44 02            [12] 1099 	orl	a,#0x02
      00066C F5 D6            [12] 1100 	mov	_UEP3_CTRL,a
                                   1101 ;	../../../usb/endpoints.c:203: break;
                                   1102 ;	../../../usb/endpoints.c:204: case 0x82:
      00066E 80 4C            [24] 1103 	sjmp	00124$
      000670                       1104 00112$:
                                   1105 ;	../../../usb/endpoints.c:205: EP_IN_NAK_TOG(2);
      000670 74 BC            [12] 1106 	mov	a,#0xbc
      000672 55 D4            [12] 1107 	anl	a,_UEP2_CTRL
      000674 44 02            [12] 1108 	orl	a,#0x02
      000676 F5 D4            [12] 1109 	mov	_UEP2_CTRL,a
                                   1110 ;	../../../usb/endpoints.c:206: break;
                                   1111 ;	../../../usb/endpoints.c:207: case 0x81:
      000678 80 42            [24] 1112 	sjmp	00124$
      00067A                       1113 00113$:
                                   1114 ;	../../../usb/endpoints.c:208: EP_IN_NAK_TOG(1);
      00067A 74 BC            [12] 1115 	mov	a,#0xbc
      00067C 55 D2            [12] 1116 	anl	a,_UEP1_CTRL
      00067E 44 02            [12] 1117 	orl	a,#0x02
      000680 F5 D2            [12] 1118 	mov	_UEP1_CTRL,a
                                   1119 ;	../../../usb/endpoints.c:209: break;
                                   1120 ;	../../../usb/endpoints.c:210: case 0x04:
      000682 80 38            [24] 1121 	sjmp	00124$
      000684                       1122 00114$:
                                   1123 ;	../../../usb/endpoints.c:211: EP_OUT_ACK_TOG(4);
      000684 53 DE 73         [24] 1124 	anl	_UEP4_CTRL,#0x73
                                   1125 ;	../../../usb/endpoints.c:212: break;
                                   1126 ;	../../../usb/endpoints.c:213: case 0x03:
      000687 80 33            [24] 1127 	sjmp	00124$
      000689                       1128 00115$:
                                   1129 ;	../../../usb/endpoints.c:214: EP_OUT_ACK_TOG(3);
      000689 53 D6 73         [24] 1130 	anl	_UEP3_CTRL,#0x73
                                   1131 ;	../../../usb/endpoints.c:215: break;
                                   1132 ;	../../../usb/endpoints.c:216: case 0x02:
      00068C 80 2E            [24] 1133 	sjmp	00124$
      00068E                       1134 00116$:
                                   1135 ;	../../../usb/endpoints.c:217: EP_OUT_ACK_TOG(2);
      00068E 53 D4 73         [24] 1136 	anl	_UEP2_CTRL,#0x73
                                   1137 ;	../../../usb/endpoints.c:218: break;
                                   1138 ;	../../../usb/endpoints.c:219: case 0x01:
      000691 80 29            [24] 1139 	sjmp	00124$
      000693                       1140 00117$:
                                   1141 ;	../../../usb/endpoints.c:220: EP_OUT_ACK_TOG(1);
      000693 53 D2 73         [24] 1142 	anl	_UEP1_CTRL,#0x73
                                   1143 ;	../../../usb/endpoints.c:221: break;
                                   1144 ;	../../../usb/endpoints.c:222: default:
      000696 80 24            [24] 1145 	sjmp	00124$
      000698                       1146 00118$:
                                   1147 ;	../../../usb/endpoints.c:223: SETUP_STALL();
      000698 75 DC CF         [24] 1148 	mov	_UEP0_CTRL,#0xcf
                                   1149 ;	../../../usb/endpoints.c:224: return;
      00069B 22               [24] 1150 	ret
                                   1151 ;	../../../usb/endpoints.c:229: case USB_REQ_TO_DEVICE:
      00069C                       1152 00120$:
                                   1153 ;	../../../usb/endpoints.c:230: if (UsbSetupBuf->wValue != 0x01) {
      00069C 90 00 02         [24] 1154 	mov	dptr,#(_Ep0Buffer + 0x0002)
      00069F E0               [24] 1155 	movx	a,@dptr
      0006A0 FD               [12] 1156 	mov	r5,a
      0006A1 A3               [24] 1157 	inc	dptr
      0006A2 E0               [24] 1158 	movx	a,@dptr
      0006A3 FE               [12] 1159 	mov	r6,a
      0006A4 BD 01 05         [24] 1160 	cjne	r5,#0x01,00321$
      0006A7 BE 00 02         [24] 1161 	cjne	r6,#0x00,00321$
      0006AA 80 04            [24] 1162 	sjmp	00122$
      0006AC                       1163 00321$:
                                   1164 ;	../../../usb/endpoints.c:232: SETUP_STALL();
      0006AC 75 DC CF         [24] 1165 	mov	_UEP0_CTRL,#0xcf
                                   1166 ;	../../../usb/endpoints.c:233: return;
      0006AF 22               [24] 1167 	ret
      0006B0                       1168 00122$:
                                   1169 ;	../../../usb/endpoints.c:236: usb_state.remote_wake = false;
      0006B0 78 1C            [12] 1170 	mov	r0,#_usb_state
      0006B2 E6               [12] 1171 	mov	a,@r0
      0006B3 54 F7            [12] 1172 	anl	a,#0xf7
      0006B5 F6               [12] 1173 	mov	@r0,a
                                   1174 ;	../../../usb/endpoints.c:237: break;
                                   1175 ;	../../../usb/endpoints.c:239: default: //unsupport
      0006B6 80 04            [24] 1176 	sjmp	00124$
      0006B8                       1177 00123$:
                                   1178 ;	../../../usb/endpoints.c:240: SETUP_STALL();
      0006B8 75 DC CF         [24] 1179 	mov	_UEP0_CTRL,#0xcf
                                   1180 ;	../../../usb/endpoints.c:241: return;
      0006BB 22               [24] 1181 	ret
                                   1182 ;	../../../usb/endpoints.c:242: }
      0006BC                       1183 00124$:
                                   1184 ;	../../../usb/endpoints.c:243: usb_state.setup_state = SETUP_STATE_IN;
      0006BC 78 1C            [12] 1185 	mov	r0,#_usb_state
      0006BE E6               [12] 1186 	mov	a,@r0
      0006BF 54 1F            [12] 1187 	anl	a,#0x1f
      0006C1 44 60            [12] 1188 	orl	a,#0x60
      0006C3 F6               [12] 1189 	mov	@r0,a
                                   1190 ;	../../../usb/endpoints.c:244: break;
      0006C4 02 07 E2         [24] 1191 	ljmp	00154$
                                   1192 ;	../../../usb/endpoints.c:246: case USB_SET_FEATURE: /* Set Feature */
      0006C7                       1193 00125$:
                                   1194 ;	../../../usb/endpoints.c:248: switch (UsbSetupBuf->bmRequestType.Recipient) {
      0006C7 90 00 00         [24] 1195 	mov	dptr,#_Ep0Buffer
      0006CA E0               [24] 1196 	movx	a,@dptr
      0006CB 54 1F            [12] 1197 	anl	a,#0x1f
      0006CD FE               [12] 1198 	mov	r6,a
      0006CE 60 7A            [24] 1199 	jz	00136$
      0006D0 BE 02 02         [24] 1200 	cjne	r6,#0x02,00323$
      0006D3 80 03            [24] 1201 	sjmp	00324$
      0006D5                       1202 00323$:
      0006D5 02 07 66         [24] 1203 	ljmp	00139$
      0006D8                       1204 00324$:
                                   1205 ;	../../../usb/endpoints.c:252: if (UsbSetupBuf->wValue != 0) {
      0006D8 90 00 02         [24] 1206 	mov	dptr,#(_Ep0Buffer + 0x0002)
      0006DB E0               [24] 1207 	movx	a,@dptr
      0006DC FD               [12] 1208 	mov	r5,a
      0006DD A3               [24] 1209 	inc	dptr
      0006DE E0               [24] 1210 	movx	a,@dptr
      0006DF 4D               [12] 1211 	orl	a,r5
      0006E0 60 04            [24] 1212 	jz	00128$
                                   1213 ;	../../../usb/endpoints.c:253: SETUP_STALL();
      0006E2 75 DC CF         [24] 1214 	mov	_UEP0_CTRL,#0xcf
                                   1215 ;	../../../usb/endpoints.c:254: return;
      0006E5 22               [24] 1216 	ret
      0006E6                       1217 00128$:
                                   1218 ;	../../../usb/endpoints.c:257: switch (UsbSetupBuf->wIndex) {
      0006E6 90 00 04         [24] 1219 	mov	dptr,#(_Ep0Buffer + 0x0004)
      0006E9 E0               [24] 1220 	movx	a,@dptr
      0006EA FD               [12] 1221 	mov	r5,a
      0006EB A3               [24] 1222 	inc	dptr
      0006EC E0               [24] 1223 	movx	a,@dptr
      0006ED FE               [12] 1224 	mov	r6,a
      0006EE BD 02 05         [24] 1225 	cjne	r5,#0x02,00326$
      0006F1 BE 00 02         [24] 1226 	cjne	r6,#0x00,00326$
      0006F4 80 46            [24] 1227 	sjmp	00133$
      0006F6                       1228 00326$:
      0006F6 BD 81 05         [24] 1229 	cjne	r5,#0x81,00327$
      0006F9 BE 00 02         [24] 1230 	cjne	r6,#0x00,00327$
      0006FC 80 34            [24] 1231 	sjmp	00132$
      0006FE                       1232 00327$:
      0006FE BD 82 05         [24] 1233 	cjne	r5,#0x82,00328$
      000701 BE 00 02         [24] 1234 	cjne	r6,#0x00,00328$
      000704 80 22            [24] 1235 	sjmp	00131$
      000706                       1236 00328$:
      000706 BD 83 05         [24] 1237 	cjne	r5,#0x83,00329$
      000709 BE 00 02         [24] 1238 	cjne	r6,#0x00,00329$
      00070C 80 10            [24] 1239 	sjmp	00130$
      00070E                       1240 00329$:
      00070E BD 84 35         [24] 1241 	cjne	r5,#0x84,00134$
      000711 BE 00 32         [24] 1242 	cjne	r6,#0x00,00134$
                                   1243 ;	../../../usb/endpoints.c:259: EP_IN_STALL_TOG(4);
      000714 74 BF            [12] 1244 	mov	a,#0xbf
      000716 55 DE            [12] 1245 	anl	a,_UEP4_CTRL
      000718 44 03            [12] 1246 	orl	a,#0x03
      00071A F5 DE            [12] 1247 	mov	_UEP4_CTRL,a
                                   1248 ;	../../../usb/endpoints.c:260: break;
                                   1249 ;	../../../usb/endpoints.c:261: case 0x83:
      00071C 80 4C            [24] 1250 	sjmp	00140$
      00071E                       1251 00130$:
                                   1252 ;	../../../usb/endpoints.c:262: EP_IN_STALL_TOG(3);
      00071E 74 BF            [12] 1253 	mov	a,#0xbf
      000720 55 D6            [12] 1254 	anl	a,_UEP3_CTRL
      000722 44 03            [12] 1255 	orl	a,#0x03
      000724 F5 D6            [12] 1256 	mov	_UEP3_CTRL,a
                                   1257 ;	../../../usb/endpoints.c:263: break;
                                   1258 ;	../../../usb/endpoints.c:264: case 0x82:
      000726 80 42            [24] 1259 	sjmp	00140$
      000728                       1260 00131$:
                                   1261 ;	../../../usb/endpoints.c:265: EP_IN_STALL_TOG(2);
      000728 74 BF            [12] 1262 	mov	a,#0xbf
      00072A 55 D4            [12] 1263 	anl	a,_UEP2_CTRL
      00072C 44 03            [12] 1264 	orl	a,#0x03
      00072E F5 D4            [12] 1265 	mov	_UEP2_CTRL,a
                                   1266 ;	../../../usb/endpoints.c:266: break;
                                   1267 ;	../../../usb/endpoints.c:267: case 0x81:
      000730 80 38            [24] 1268 	sjmp	00140$
      000732                       1269 00132$:
                                   1270 ;	../../../usb/endpoints.c:268: EP_IN_STALL_TOG(1);
      000732 74 BF            [12] 1271 	mov	a,#0xbf
      000734 55 D2            [12] 1272 	anl	a,_UEP1_CTRL
      000736 44 03            [12] 1273 	orl	a,#0x03
      000738 F5 D2            [12] 1274 	mov	_UEP1_CTRL,a
                                   1275 ;	../../../usb/endpoints.c:269: break;
                                   1276 ;	../../../usb/endpoints.c:270: case 0x02:
      00073A 80 2E            [24] 1277 	sjmp	00140$
      00073C                       1278 00133$:
                                   1279 ;	../../../usb/endpoints.c:271: EP_OUT_STALL_TOG(2);
      00073C 74 7F            [12] 1280 	mov	a,#0x7f
      00073E 55 D4            [12] 1281 	anl	a,_UEP2_CTRL
      000740 44 0C            [12] 1282 	orl	a,#0x0c
      000742 F5 D4            [12] 1283 	mov	_UEP2_CTRL,a
                                   1284 ;	../../../usb/endpoints.c:272: break;
                                   1285 ;	../../../usb/endpoints.c:273: default:
      000744 80 24            [24] 1286 	sjmp	00140$
      000746                       1287 00134$:
                                   1288 ;	../../../usb/endpoints.c:274: SETUP_STALL();
      000746 75 DC CF         [24] 1289 	mov	_UEP0_CTRL,#0xcf
                                   1290 ;	../../../usb/endpoints.c:275: return;
      000749 22               [24] 1291 	ret
                                   1292 ;	../../../usb/endpoints.c:280: case USB_REQ_TO_DEVICE: {
      00074A                       1293 00136$:
                                   1294 ;	../../../usb/endpoints.c:281: if (UsbSetupBuf->wValue != 0x01) {
      00074A 90 00 02         [24] 1295 	mov	dptr,#(_Ep0Buffer + 0x0002)
      00074D E0               [24] 1296 	movx	a,@dptr
      00074E FD               [12] 1297 	mov	r5,a
      00074F A3               [24] 1298 	inc	dptr
      000750 E0               [24] 1299 	movx	a,@dptr
      000751 FE               [12] 1300 	mov	r6,a
      000752 BD 01 05         [24] 1301 	cjne	r5,#0x01,00332$
      000755 BE 00 02         [24] 1302 	cjne	r6,#0x00,00332$
      000758 80 04            [24] 1303 	sjmp	00138$
      00075A                       1304 00332$:
                                   1305 ;	../../../usb/endpoints.c:282: SETUP_STALL();
      00075A 75 DC CF         [24] 1306 	mov	_UEP0_CTRL,#0xcf
                                   1307 ;	../../../usb/endpoints.c:283: return;
      00075D 22               [24] 1308 	ret
      00075E                       1309 00138$:
                                   1310 ;	../../../usb/endpoints.c:286: usb_state.remote_wake = true;
      00075E 78 1C            [12] 1311 	mov	r0,#_usb_state
      000760 E6               [12] 1312 	mov	a,@r0
      000761 44 08            [12] 1313 	orl	a,#0x08
      000763 F6               [12] 1314 	mov	@r0,a
                                   1315 ;	../../../usb/endpoints.c:287: break;
                                   1316 ;	../../../usb/endpoints.c:290: default:
      000764 80 04            [24] 1317 	sjmp	00140$
      000766                       1318 00139$:
                                   1319 ;	../../../usb/endpoints.c:291: SETUP_STALL();
      000766 75 DC CF         [24] 1320 	mov	_UEP0_CTRL,#0xcf
                                   1321 ;	../../../usb/endpoints.c:292: return;
      000769 22               [24] 1322 	ret
                                   1323 ;	../../../usb/endpoints.c:293: }
      00076A                       1324 00140$:
                                   1325 ;	../../../usb/endpoints.c:294: usb_state.setup_state = SETUP_STATE_IN;
      00076A 78 1C            [12] 1326 	mov	r0,#_usb_state
      00076C E6               [12] 1327 	mov	a,@r0
      00076D 54 1F            [12] 1328 	anl	a,#0x1f
      00076F 44 60            [12] 1329 	orl	a,#0x60
      000771 F6               [12] 1330 	mov	@r0,a
                                   1331 ;	../../../usb/endpoints.c:295: break;
                                   1332 ;	../../../usb/endpoints.c:297: case USB_GET_STATUS:
      000772 80 6E            [24] 1333 	sjmp	00154$
      000774                       1334 00141$:
                                   1335 ;	../../../usb/endpoints.c:298: Ep0Buffer[0] = 0x00 | (usb_state.remote_wake ? 0x02 : 0x00);
      000774 78 1C            [12] 1336 	mov	r0,#_usb_state
      000776 E6               [12] 1337 	mov	a,@r0
      000777 30 E3 06         [24] 1338 	jnb	acc.3,00165$
      00077A 7D 02            [12] 1339 	mov	r5,#0x02
      00077C 7E 00            [12] 1340 	mov	r6,#0x00
      00077E 80 04            [24] 1341 	sjmp	00166$
      000780                       1342 00165$:
      000780 7D 00            [12] 1343 	mov	r5,#0x00
      000782 7E 00            [12] 1344 	mov	r6,#0x00
      000784                       1345 00166$:
      000784 90 00 00         [24] 1346 	mov	dptr,#_Ep0Buffer
      000787 ED               [12] 1347 	mov	a,r5
      000788 F0               [24] 1348 	movx	@dptr,a
                                   1349 ;	../../../usb/endpoints.c:299: Ep0Buffer[1] = 0x00;
      000789 90 00 01         [24] 1350 	mov	dptr,#(_Ep0Buffer + 0x0001)
      00078C E4               [12] 1351 	clr	a
      00078D F0               [24] 1352 	movx	@dptr,a
                                   1353 ;	../../../usb/endpoints.c:300: datalen = 2;
      00078E 7F 02            [12] 1354 	mov	r7,#0x02
                                   1355 ;	../../../usb/endpoints.c:301: usb_state.setup_state = SETUP_DATA_IN;
      000790 78 1C            [12] 1356 	mov	r0,#_usb_state
      000792 E6               [12] 1357 	mov	a,@r0
      000793 54 1F            [12] 1358 	anl	a,#0x1f
      000795 44 20            [12] 1359 	orl	a,#0x20
      000797 F6               [12] 1360 	mov	@r0,a
                                   1361 ;	../../../usb/endpoints.c:302: break;
                                   1362 ;	../../../usb/endpoints.c:303: default:
      000798 80 48            [24] 1363 	sjmp	00154$
      00079A                       1364 00142$:
                                   1365 ;	../../../usb/endpoints.c:304: SETUP_STALL();
      00079A 75 DC CF         [24] 1366 	mov	_UEP0_CTRL,#0xcf
                                   1367 ;	../../../usb/endpoints.c:305: return;
      00079D 22               [24] 1368 	ret
                                   1369 ;	../../../usb/endpoints.c:306: }
      00079E                       1370 00153$:
                                   1371 ;	../../../usb/endpoints.c:307: } else if (UsbSetupBuf->bmRequestType.Type == 1) {
      00079E 90 00 00         [24] 1372 	mov	dptr,#_Ep0Buffer
      0007A1 E0               [24] 1373 	movx	a,@dptr
      0007A2 C4               [12] 1374 	swap	a
      0007A3 03               [12] 1375 	rr	a
      0007A4 54 03            [12] 1376 	anl	a,#0x03
      0007A6 FE               [12] 1377 	mov	r6,a
      0007A7 BE 01 34         [24] 1378 	cjne	r6,#0x01,00150$
                                   1379 ;	../../../usb/endpoints.c:309: datalen = ClassRequestHandler(UsbSetupBuf);
      0007AA 90 00 00         [24] 1380 	mov	dptr,#_Ep0Buffer
      0007AD 75 F0 00         [24] 1381 	mov	b,#0x00
      0007B0 12 08 AE         [24] 1382 	lcall	_ClassRequestHandler
      0007B3 AE 82            [24] 1383 	mov	r6,dpl
      0007B5 8E 07            [24] 1384 	mov	ar7,r6
                                   1385 ;	../../../usb/endpoints.c:310: if (datalen == 0xFF) {
      0007B7 BF FF 04         [24] 1386 	cjne	r7,#0xff,00145$
                                   1387 ;	../../../usb/endpoints.c:311: SETUP_STALL();
      0007BA 75 DC CF         [24] 1388 	mov	_UEP0_CTRL,#0xcf
                                   1389 ;	../../../usb/endpoints.c:312: return;
      0007BD 22               [24] 1390 	ret
      0007BE                       1391 00145$:
                                   1392 ;	../../../usb/endpoints.c:314: if (datalen > 0) {
      0007BE EF               [12] 1393 	mov	a,r7
      0007BF 60 0A            [24] 1394 	jz	00147$
                                   1395 ;	../../../usb/endpoints.c:315: usb_state.setup_state = SETUP_STATE_IN;
      0007C1 78 1C            [12] 1396 	mov	r0,#_usb_state
      0007C3 E6               [12] 1397 	mov	a,@r0
      0007C4 54 1F            [12] 1398 	anl	a,#0x1f
      0007C6 44 60            [12] 1399 	orl	a,#0x60
      0007C8 F6               [12] 1400 	mov	@r0,a
      0007C9 80 17            [24] 1401 	sjmp	00154$
      0007CB                       1402 00147$:
                                   1403 ;	../../../usb/endpoints.c:317: pDataIn = Ep0Buffer;
      0007CB 75 19 00         [24] 1404 	mov	_pDataIn,#_Ep0Buffer
      0007CE 75 1A 00         [24] 1405 	mov	(_pDataIn + 1),#(_Ep0Buffer >> 8)
      0007D1 75 1B 00         [24] 1406 	mov	(_pDataIn + 2),#0x00
                                   1407 ;	../../../usb/endpoints.c:318: usb_state.setup_state = SETUP_DATA_IN;
      0007D4 78 1C            [12] 1408 	mov	r0,#_usb_state
      0007D6 E6               [12] 1409 	mov	a,@r0
      0007D7 54 1F            [12] 1410 	anl	a,#0x1f
      0007D9 44 20            [12] 1411 	orl	a,#0x20
      0007DB F6               [12] 1412 	mov	@r0,a
      0007DC 80 04            [24] 1413 	sjmp	00154$
      0007DE                       1414 00150$:
                                   1415 ;	../../../usb/endpoints.c:321: SETUP_STALL();
      0007DE 75 DC CF         [24] 1416 	mov	_UEP0_CTRL,#0xcf
                                   1417 ;	../../../usb/endpoints.c:322: return;
      0007E1 22               [24] 1418 	ret
      0007E2                       1419 00154$:
                                   1420 ;	../../../usb/endpoints.c:325: switch (usb_state.setup_state) {
      0007E2 78 1C            [12] 1421 	mov	r0,#_usb_state
      0007E4 E6               [12] 1422 	mov	a,@r0
      0007E5 C4               [12] 1423 	swap	a
      0007E6 03               [12] 1424 	rr	a
      0007E7 54 07            [12] 1425 	anl	a,#0x07
      0007E9 FE               [12] 1426 	mov	r6,a
      0007EA BE 01 02         [24] 1427 	cjne	r6,#0x01,00339$
      0007ED 80 0A            [24] 1428 	sjmp	00156$
      0007EF                       1429 00339$:
      0007EF BE 03 6C         [24] 1430 	cjne	r6,#0x03,00161$
                                   1431 ;	../../../usb/endpoints.c:327: UEP0_T_LEN = 0; //虽然尚未到状态阶段，但是提前预置上传0长度数据包以防主机提前进入状态阶段
      0007F2 75 DD 00         [24] 1432 	mov	_UEP0_T_LEN,#0x00
                                   1433 ;	../../../usb/endpoints.c:328: EP0_DATA1_ACK(); // 响应SETUP包的STATUS
      0007F5 75 DC C0         [24] 1434 	mov	_UEP0_CTRL,#0xc0
                                   1435 ;	../../../usb/endpoints.c:330: break;
                                   1436 ;	../../../usb/endpoints.c:331: case SETUP_DATA_IN:
      0007F8 22               [24] 1437 	ret
      0007F9                       1438 00156$:
                                   1439 ;	../../../usb/endpoints.c:332: DataInLen = DataInLen > datalen ? datalen : DataInLen;
      0007F9 C3               [12] 1440 	clr	c
      0007FA EF               [12] 1441 	mov	a,r7
      0007FB 95 16            [12] 1442 	subb	a,_DataInLen
      0007FD 40 02            [24] 1443 	jc	00168$
      0007FF AF 16            [24] 1444 	mov	r7,_DataInLen
      000801                       1445 00168$:
      000801 8F 16            [24] 1446 	mov	_DataInLen,r7
                                   1447 ;	../../../usb/endpoints.c:333: uint8_t len = DataInLen >= THIS_ENDP0_SIZE ? THIS_ENDP0_SIZE : DataInLen; //本次传输长度
      000803 C3               [12] 1448 	clr	c
      000804 E5 16            [12] 1449 	mov	a,_DataInLen
      000806 94 08            [12] 1450 	subb	a,#0x08
      000808 92 00            [24] 1451 	mov	b0,c
      00080A 40 06            [24] 1452 	jc	00169$
      00080C 7E 08            [12] 1453 	mov	r6,#0x08
      00080E 7F 00            [12] 1454 	mov	r7,#0x00
      000810 80 04            [24] 1455 	sjmp	00170$
      000812                       1456 00169$:
      000812 AE 16            [24] 1457 	mov	r6,_DataInLen
      000814 7F 00            [12] 1458 	mov	r7,#0x00
      000816                       1459 00170$:
                                   1460 ;	../../../usb/endpoints.c:334: memcpy(Ep0Buffer, pDataIn, len); //加载上传数据
      000816 8E 05            [24] 1461 	mov	ar5,r6
      000818 7F 00            [12] 1462 	mov	r7,#0x00
      00081A AA 19            [24] 1463 	mov	r2,_pDataIn
      00081C AB 1A            [24] 1464 	mov	r3,(_pDataIn + 1)
      00081E AC 1B            [24] 1465 	mov	r4,(_pDataIn + 2)
      000820 C0 06            [24] 1466 	push	ar6
      000822 C0 05            [24] 1467 	push	ar5
      000824 C0 07            [24] 1468 	push	ar7
      000826 C0 02            [24] 1469 	push	ar2
      000828 C0 03            [24] 1470 	push	ar3
      00082A C0 04            [24] 1471 	push	ar4
      00082C 90 00 00         [24] 1472 	mov	dptr,#_Ep0Buffer
      00082F 75 F0 00         [24] 1473 	mov	b,#0x00
      000832 12 32 20         [24] 1474 	lcall	___memcpy
      000835 E5 81            [12] 1475 	mov	a,sp
      000837 24 FB            [12] 1476 	add	a,#0xfb
      000839 F5 81            [12] 1477 	mov	sp,a
      00083B D0 06            [24] 1478 	pop	ar6
                                   1479 ;	../../../usb/endpoints.c:335: DataInLen -= len;
      00083D E5 16            [12] 1480 	mov	a,_DataInLen
      00083F C3               [12] 1481 	clr	c
      000840 9E               [12] 1482 	subb	a,r6
      000841 F5 16            [12] 1483 	mov	_DataInLen,a
                                   1484 ;	../../../usb/endpoints.c:336: pDataIn += len;
      000843 EE               [12] 1485 	mov	a,r6
      000844 25 19            [12] 1486 	add	a,_pDataIn
      000846 F5 19            [12] 1487 	mov	_pDataIn,a
      000848 E4               [12] 1488 	clr	a
      000849 35 1A            [12] 1489 	addc	a,(_pDataIn + 1)
      00084B F5 1A            [12] 1490 	mov	(_pDataIn + 1),a
                                   1491 ;	../../../usb/endpoints.c:338: UEP0_T_LEN = len;
      00084D 8E DD            [24] 1492 	mov	_UEP0_T_LEN,r6
                                   1493 ;	../../../usb/endpoints.c:339: EP0_DATA1_ACK(); // 使用DATA1响应数据
      00084F 75 DC C0         [24] 1494 	mov	_UEP0_CTRL,#0xc0
                                   1495 ;	../../../usb/endpoints.c:341: if (DataInLen == 0)
      000852 E5 16            [12] 1496 	mov	a,_DataInLen
      000854 70 08            [24] 1497 	jnz	00161$
                                   1498 ;	../../../usb/endpoints.c:342: usb_state.setup_state = SETUP_STATE_OUT;
      000856 78 1C            [12] 1499 	mov	r0,#_usb_state
      000858 E6               [12] 1500 	mov	a,@r0
      000859 54 1F            [12] 1501 	anl	a,#0x1f
      00085B 44 80            [12] 1502 	orl	a,#0x80
      00085D F6               [12] 1503 	mov	@r0,a
                                   1504 ;	../../../usb/endpoints.c:346: }
      00085E                       1505 00161$:
                                   1506 ;	../../../usb/endpoints.c:347: }
      00085E 22               [24] 1507 	ret
                                   1508 ;------------------------------------------------------------
                                   1509 ;Allocation info for local variables in function 'EP1_IN'
                                   1510 ;------------------------------------------------------------
                                   1511 ;	../../../usb/endpoints.c:349: void EP1_IN()
                                   1512 ;	-----------------------------------------
                                   1513 ;	 function EP1_IN
                                   1514 ;	-----------------------------------------
      00085F                       1515 _EP1_IN:
                                   1516 ;	../../../usb/endpoints.c:351: EP_IN_FINISH(1);
      00085F 75 D3 00         [24] 1517 	mov	_UEP1_T_LEN,#0x00
      000862 74 FC            [12] 1518 	mov	a,#0xfc
      000864 55 D2            [12] 1519 	anl	a,_UEP1_CTRL
      000866 44 02            [12] 1520 	orl	a,#0x02
      000868 F5 D2            [12] 1521 	mov	_UEP1_CTRL,a
                                   1522 ;	../../../usb/endpoints.c:352: usb_state.is_busy = false;
      00086A 78 1C            [12] 1523 	mov	r0,#_usb_state
      00086C E6               [12] 1524 	mov	a,@r0
      00086D 54 FD            [12] 1525 	anl	a,#0xfd
      00086F F6               [12] 1526 	mov	@r0,a
                                   1527 ;	../../../usb/endpoints.c:353: }
      000870 22               [24] 1528 	ret
                                   1529 ;------------------------------------------------------------
                                   1530 ;Allocation info for local variables in function 'EP2_IN'
                                   1531 ;------------------------------------------------------------
                                   1532 ;	../../../usb/endpoints.c:355: void EP2_IN()
                                   1533 ;	-----------------------------------------
                                   1534 ;	 function EP2_IN
                                   1535 ;	-----------------------------------------
      000871                       1536 _EP2_IN:
                                   1537 ;	../../../usb/endpoints.c:357: EP_IN_FINISH(2);
      000871 75 D5 00         [24] 1538 	mov	_UEP2_T_LEN,#0x00
      000874 74 FC            [12] 1539 	mov	a,#0xfc
      000876 55 D4            [12] 1540 	anl	a,_UEP2_CTRL
      000878 44 02            [12] 1541 	orl	a,#0x02
      00087A F5 D4            [12] 1542 	mov	_UEP2_CTRL,a
                                   1543 ;	../../../usb/endpoints.c:358: usb_state.is_busy = false;
      00087C 78 1C            [12] 1544 	mov	r0,#_usb_state
      00087E E6               [12] 1545 	mov	a,@r0
      00087F 54 FD            [12] 1546 	anl	a,#0xfd
      000881 F6               [12] 1547 	mov	@r0,a
                                   1548 ;	../../../usb/endpoints.c:359: }
      000882 22               [24] 1549 	ret
                                   1550 ;------------------------------------------------------------
                                   1551 ;Allocation info for local variables in function 'EP3_IN'
                                   1552 ;------------------------------------------------------------
                                   1553 ;	../../../usb/endpoints.c:361: void EP3_IN()
                                   1554 ;	-----------------------------------------
                                   1555 ;	 function EP3_IN
                                   1556 ;	-----------------------------------------
      000883                       1557 _EP3_IN:
                                   1558 ;	../../../usb/endpoints.c:363: EP_IN_FINISH(3);
      000883 75 D7 00         [24] 1559 	mov	_UEP3_T_LEN,#0x00
      000886 74 FC            [12] 1560 	mov	a,#0xfc
      000888 55 D6            [12] 1561 	anl	a,_UEP3_CTRL
      00088A 44 02            [12] 1562 	orl	a,#0x02
      00088C F5 D6            [12] 1563 	mov	_UEP3_CTRL,a
                                   1564 ;	../../../usb/endpoints.c:364: usb_state.is_busy = false;
      00088E 78 1C            [12] 1565 	mov	r0,#_usb_state
      000890 E6               [12] 1566 	mov	a,@r0
      000891 54 FD            [12] 1567 	anl	a,#0xfd
      000893 F6               [12] 1568 	mov	@r0,a
                                   1569 ;	../../../usb/endpoints.c:365: }
      000894 22               [24] 1570 	ret
                                   1571 ;------------------------------------------------------------
                                   1572 ;Allocation info for local variables in function 'EP4_IN'
                                   1573 ;------------------------------------------------------------
                                   1574 ;	../../../usb/endpoints.c:367: void EP4_IN()
                                   1575 ;	-----------------------------------------
                                   1576 ;	 function EP4_IN
                                   1577 ;	-----------------------------------------
      000895                       1578 _EP4_IN:
                                   1579 ;	../../../usb/endpoints.c:369: EP_IN_FINISH(4);
      000895 75 DF 00         [24] 1580 	mov	_UEP4_T_LEN,#0x00
      000898 74 FC            [12] 1581 	mov	a,#0xfc
      00089A 55 DE            [12] 1582 	anl	a,_UEP4_CTRL
      00089C 44 02            [12] 1583 	orl	a,#0x02
      00089E F5 DE            [12] 1584 	mov	_UEP4_CTRL,a
                                   1585 ;	../../../usb/endpoints.c:370: UEP4_CTRL ^= bUEP_T_TOG;
      0008A0 AE DE            [24] 1586 	mov	r6,_UEP4_CTRL
      0008A2 63 06 40         [24] 1587 	xrl	ar6,#0x40
      0008A5 8E DE            [24] 1588 	mov	_UEP4_CTRL,r6
                                   1589 ;	../../../usb/endpoints.c:371: usb_state.is_busy = false;
      0008A7 78 1C            [12] 1590 	mov	r0,#_usb_state
      0008A9 E6               [12] 1591 	mov	a,@r0
      0008AA 54 FD            [12] 1592 	anl	a,#0xfd
      0008AC F6               [12] 1593 	mov	@r0,a
                                   1594 ;	../../../usb/endpoints.c:372: }
      0008AD 22               [24] 1595 	ret
                                   1596 ;------------------------------------------------------------
                                   1597 ;Allocation info for local variables in function 'ClassRequestHandler'
                                   1598 ;------------------------------------------------------------
                                   1599 ;packet                    Allocated to registers r5 r6 r7 
                                   1600 ;interface                 Allocated to registers r4 
                                   1601 ;recipient                 Allocated to registers r3 
                                   1602 ;------------------------------------------------------------
                                   1603 ;	../../../usb/endpoints.c:374: static uint8_t ClassRequestHandler(PUSB_SETUP_REQ packet)
                                   1604 ;	-----------------------------------------
                                   1605 ;	 function ClassRequestHandler
                                   1606 ;	-----------------------------------------
      0008AE                       1607 _ClassRequestHandler:
      0008AE AD 82            [24] 1608 	mov	r5,dpl
      0008B0 AE 83            [24] 1609 	mov	r6,dph
      0008B2 AF F0            [24] 1610 	mov	r7,b
                                   1611 ;	../../../usb/endpoints.c:376: uint8_t interface = packet->wIndexL;
      0008B4 74 04            [12] 1612 	mov	a,#0x04
      0008B6 2D               [12] 1613 	add	a,r5
      0008B7 FA               [12] 1614 	mov	r2,a
      0008B8 E4               [12] 1615 	clr	a
      0008B9 3E               [12] 1616 	addc	a,r6
      0008BA FB               [12] 1617 	mov	r3,a
      0008BB 8F 04            [24] 1618 	mov	ar4,r7
      0008BD 8A 82            [24] 1619 	mov	dpl,r2
      0008BF 8B 83            [24] 1620 	mov	dph,r3
      0008C1 8C F0            [24] 1621 	mov	b,r4
      0008C3 12 33 25         [24] 1622 	lcall	__gptrget
      0008C6 FC               [12] 1623 	mov	r4,a
                                   1624 ;	../../../usb/endpoints.c:377: uint8_t recipient = UsbSetupBuf->bmRequestType.Recipient;
      0008C7 90 00 00         [24] 1625 	mov	dptr,#_Ep0Buffer
      0008CA E0               [24] 1626 	movx	a,@dptr
      0008CB 54 1F            [12] 1627 	anl	a,#0x1f
      0008CD FB               [12] 1628 	mov	r3,a
                                   1629 ;	../../../usb/endpoints.c:379: switch (packet->bRequest) {
      0008CE 0D               [12] 1630 	inc	r5
      0008CF BD 00 01         [24] 1631 	cjne	r5,#0x00,00207$
      0008D2 0E               [12] 1632 	inc	r6
      0008D3                       1633 00207$:
      0008D3 8D 82            [24] 1634 	mov	dpl,r5
      0008D5 8E 83            [24] 1635 	mov	dph,r6
      0008D7 8F F0            [24] 1636 	mov	b,r7
      0008D9 12 33 25         [24] 1637 	lcall	__gptrget
      0008DC FF               [12] 1638 	mov	r7,a
      0008DD BF 01 02         [24] 1639 	cjne	r7,#0x01,00208$
      0008E0 80 1E            [24] 1640 	sjmp	00101$
      0008E2                       1641 00208$:
      0008E2 BF 02 02         [24] 1642 	cjne	r7,#0x02,00209$
      0008E5 80 4C            [24] 1643 	sjmp	00105$
      0008E7                       1644 00209$:
      0008E7 BF 03 02         [24] 1645 	cjne	r7,#0x03,00210$
      0008EA 80 57            [24] 1646 	sjmp	00109$
      0008EC                       1647 00210$:
      0008EC BF 09 02         [24] 1648 	cjne	r7,#0x09,00211$
      0008EF 80 71            [24] 1649 	sjmp	00113$
      0008F1                       1650 00211$:
      0008F1 BF 0A 03         [24] 1651 	cjne	r7,#0x0a,00212$
      0008F4 02 09 75         [24] 1652 	ljmp	00117$
      0008F7                       1653 00212$:
      0008F7 BF 0B 03         [24] 1654 	cjne	r7,#0x0b,00213$
      0008FA 02 09 83         [24] 1655 	ljmp	00121$
      0008FD                       1656 00213$:
      0008FD 02 09 9B         [24] 1657 	ljmp	00125$
                                   1658 ;	../../../usb/endpoints.c:380: case 0x01: //GetReport
      000900                       1659 00101$:
                                   1660 ;	../../../usb/endpoints.c:381: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
      000900 EC               [12] 1661 	mov	a,r4
      000901 60 03            [24] 1662 	jz	00214$
      000903 02 09 9F         [24] 1663 	ljmp	00126$
      000906                       1664 00214$:
      000906 BB 01 02         [24] 1665 	cjne	r3,#0x01,00215$
      000909 80 03            [24] 1666 	sjmp	00216$
      00090B                       1667 00215$:
      00090B 02 09 9F         [24] 1668 	ljmp	00126$
      00090E                       1669 00216$:
                                   1670 ;	../../../usb/endpoints.c:382: memcpy(Ep0Buffer, &Ep1Buffer[64], 8);
      00090E 74 08            [12] 1671 	mov	a,#0x08
      000910 C0 E0            [24] 1672 	push	acc
      000912 E4               [12] 1673 	clr	a
      000913 C0 E0            [24] 1674 	push	acc
      000915 74 00            [12] 1675 	mov	a,#(_Ep1Buffer + 0x0040)
      000917 C0 E0            [24] 1676 	push	acc
      000919 74 01            [12] 1677 	mov	a,#((_Ep1Buffer + 0x0040) >> 8)
      00091B C0 E0            [24] 1678 	push	acc
      00091D E4               [12] 1679 	clr	a
      00091E C0 E0            [24] 1680 	push	acc
      000920 90 00 00         [24] 1681 	mov	dptr,#_Ep0Buffer
      000923 75 F0 00         [24] 1682 	mov	b,#0x00
      000926 12 32 20         [24] 1683 	lcall	___memcpy
      000929 E5 81            [12] 1684 	mov	a,sp
      00092B 24 FB            [12] 1685 	add	a,#0xfb
      00092D F5 81            [12] 1686 	mov	sp,a
                                   1687 ;	../../../usb/endpoints.c:383: return 8;
      00092F 75 82 08         [24] 1688 	mov	dpl,#0x08
      000932 22               [24] 1689 	ret
                                   1690 ;	../../../usb/endpoints.c:386: case 0x02: //GetIdle
      000933                       1691 00105$:
                                   1692 ;	../../../usb/endpoints.c:387: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
      000933 EC               [12] 1693 	mov	a,r4
      000934 70 69            [24] 1694 	jnz	00126$
      000936 BB 01 66         [24] 1695 	cjne	r3,#0x01,00126$
                                   1696 ;	../../../usb/endpoints.c:388: Ep0Buffer[0] = keyboard_idle;
      000939 90 00 00         [24] 1697 	mov	dptr,#_Ep0Buffer
      00093C E5 1D            [12] 1698 	mov	a,_keyboard_idle
      00093E F0               [24] 1699 	movx	@dptr,a
                                   1700 ;	../../../usb/endpoints.c:389: return 1;
      00093F 75 82 01         [24] 1701 	mov	dpl,#0x01
      000942 22               [24] 1702 	ret
                                   1703 ;	../../../usb/endpoints.c:392: case 0x03: //GetProtocol
      000943                       1704 00109$:
                                   1705 ;	../../../usb/endpoints.c:393: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
      000943 EC               [12] 1706 	mov	a,r4
      000944 70 59            [24] 1707 	jnz	00126$
      000946 BB 01 56         [24] 1708 	cjne	r3,#0x01,00126$
                                   1709 ;	../../../usb/endpoints.c:394: Ep0Buffer[0] = usb_state.protocol ? 1 : 0;
      000949 78 1C            [12] 1710 	mov	r0,#_usb_state
      00094B E6               [12] 1711 	mov	a,@r0
      00094C 30 E4 06         [24] 1712 	jnb	acc.4,00129$
      00094F 7E 01            [12] 1713 	mov	r6,#0x01
      000951 7F 00            [12] 1714 	mov	r7,#0x00
      000953 80 04            [24] 1715 	sjmp	00130$
      000955                       1716 00129$:
      000955 7E 00            [12] 1717 	mov	r6,#0x00
      000957 7F 00            [12] 1718 	mov	r7,#0x00
      000959                       1719 00130$:
      000959 90 00 00         [24] 1720 	mov	dptr,#_Ep0Buffer
      00095C EE               [12] 1721 	mov	a,r6
      00095D F0               [24] 1722 	movx	@dptr,a
                                   1723 ;	../../../usb/endpoints.c:395: return 1;
      00095E 75 82 01         [24] 1724 	mov	dpl,#0x01
                                   1725 ;	../../../usb/endpoints.c:398: case 0x09: //SetReport
      000961 22               [24] 1726 	ret
      000962                       1727 00113$:
                                   1728 ;	../../../usb/endpoints.c:399: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
      000962 EC               [12] 1729 	mov	a,r4
      000963 70 3A            [24] 1730 	jnz	00126$
      000965 BB 01 37         [24] 1731 	cjne	r3,#0x01,00126$
                                   1732 ;	../../../usb/endpoints.c:400: Ep1Buffer[0] = Ep0Buffer[0];
      000968 90 00 00         [24] 1733 	mov	dptr,#_Ep0Buffer
      00096B E0               [24] 1734 	movx	a,@dptr
      00096C 90 00 C0         [24] 1735 	mov	dptr,#_Ep1Buffer
      00096F F0               [24] 1736 	movx	@dptr,a
                                   1737 ;	../../../usb/endpoints.c:401: EP1_OUT();
      000970 12 02 F3         [24] 1738 	lcall	_EP1_OUT
                                   1739 ;	../../../usb/endpoints.c:403: break;
                                   1740 ;	../../../usb/endpoints.c:404: case 0x0A: //SetIdle
      000973 80 2A            [24] 1741 	sjmp	00126$
      000975                       1742 00117$:
                                   1743 ;	../../../usb/endpoints.c:405: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
      000975 EC               [12] 1744 	mov	a,r4
      000976 70 27            [24] 1745 	jnz	00126$
      000978 BB 01 24         [24] 1746 	cjne	r3,#0x01,00126$
                                   1747 ;	../../../usb/endpoints.c:406: keyboard_idle = UsbSetupBuf->wValueH;
      00097B 90 00 03         [24] 1748 	mov	dptr,#(_Ep0Buffer + 0x0003)
      00097E E0               [24] 1749 	movx	a,@dptr
      00097F F5 1D            [12] 1750 	mov	_keyboard_idle,a
                                   1751 ;	../../../usb/endpoints.c:408: break;
                                   1752 ;	../../../usb/endpoints.c:409: case 0x0B: //SetProtocol
      000981 80 1C            [24] 1753 	sjmp	00126$
      000983                       1754 00121$:
                                   1755 ;	../../../usb/endpoints.c:410: if (interface == 0 && recipient == USB_REQ_TO_INTERFACE) {
      000983 EC               [12] 1756 	mov	a,r4
      000984 70 19            [24] 1757 	jnz	00126$
      000986 BB 01 16         [24] 1758 	cjne	r3,#0x01,00126$
                                   1759 ;	../../../usb/endpoints.c:411: usb_state.protocol = UsbSetupBuf->wValueL > 0;
      000989 90 00 02         [24] 1760 	mov	dptr,#(_Ep0Buffer + 0x0002)
      00098C E0               [24] 1761 	movx	a,@dptr
                                   1762 ;	assignBit
      00098D 24 FF            [12] 1763 	add	a,#0xff
      00098F E4               [12] 1764 	clr	a
      000990 33               [12] 1765 	rlc	a
      000991 FF               [12] 1766 	mov	r7,a
      000992 78 1C            [12] 1767 	mov	r0,#_usb_state
      000994 13               [12] 1768 	rrc	a
      000995 E6               [12] 1769 	mov	a,@r0
      000996 92 E4            [24] 1770 	mov	acc.4,c
      000998 F6               [12] 1771 	mov	@r0,a
                                   1772 ;	../../../usb/endpoints.c:413: break;
                                   1773 ;	../../../usb/endpoints.c:414: default:
      000999 80 04            [24] 1774 	sjmp	00126$
      00099B                       1775 00125$:
                                   1776 ;	../../../usb/endpoints.c:415: return 0xFF; /*命令不支持*/
      00099B 75 82 FF         [24] 1777 	mov	dpl,#0xff
                                   1778 ;	../../../usb/endpoints.c:417: }
      00099E 22               [24] 1779 	ret
      00099F                       1780 00126$:
                                   1781 ;	../../../usb/endpoints.c:418: return 0;
      00099F 75 82 00         [24] 1782 	mov	dpl,#0x00
                                   1783 ;	../../../usb/endpoints.c:419: }
      0009A2 22               [24] 1784 	ret
                                   1785 ;------------------------------------------------------------
                                   1786 ;Allocation info for local variables in function 'USBDeviceInit'
                                   1787 ;------------------------------------------------------------
                                   1788 ;	../../../usb/endpoints.c:424: void USBDeviceInit()
                                   1789 ;	-----------------------------------------
                                   1790 ;	 function USBDeviceInit
                                   1791 ;	-----------------------------------------
      0009A3                       1792 _USBDeviceInit:
                                   1793 ;	../../../usb/endpoints.c:426: IE_USB = 0;
                                   1794 ;	assignBit
      0009A3 C2 EA            [12] 1795 	clr	_IE_USB
                                   1796 ;	../../../usb/endpoints.c:427: USB_CTRL = 0x00; // 先设定USB设备模式
      0009A5 75 E2 00         [24] 1797 	mov	_USB_CTRL,#0x00
                                   1798 ;	../../../usb/endpoints.c:429: UEP0_DMA = (uint16_t)Ep0Buffer; //端点0数据传输地址
      0009A8 7E 00            [12] 1799 	mov	r6,#_Ep0Buffer
      0009AA 7F 00            [12] 1800 	mov	r7,#(_Ep0Buffer >> 8)
      0009AC 8E EC            [24] 1801 	mov	((_UEP0_DMA >> 0) & 0xFF),r6
      0009AE 8F ED            [24] 1802 	mov	((_UEP0_DMA >> 8) & 0xFF),r7
                                   1803 ;	../../../usb/endpoints.c:430: UEP4_1_MOD |= bUEP4_RX_EN | bUEP4_TX_EN; //端点0单64字节收发缓冲区, 端点4单64字节收发缓冲区
      0009B0 43 EA 0C         [24] 1804 	orl	_UEP4_1_MOD,#0x0c
                                   1805 ;	../../../usb/endpoints.c:431: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK; //OUT事务返回ACK，IN事务返回NAK
      0009B3 75 DC 02         [24] 1806 	mov	_UEP0_CTRL,#0x02
                                   1807 ;	../../../usb/endpoints.c:433: UEP1_DMA = (uint16_t)Ep1Buffer; //端点1数据传输地址
      0009B6 7E C0            [12] 1808 	mov	r6,#_Ep1Buffer
      0009B8 7F 00            [12] 1809 	mov	r7,#(_Ep1Buffer >> 8)
      0009BA 8E EE            [24] 1810 	mov	((_UEP1_DMA >> 0) & 0xFF),r6
      0009BC 8F EF            [24] 1811 	mov	((_UEP1_DMA >> 8) & 0xFF),r7
                                   1812 ;	../../../usb/endpoints.c:434: UEP4_1_MOD = UEP4_1_MOD & ~bUEP1_BUF_MOD | bUEP1_TX_EN | bUEP1_RX_EN; //端点1收发使能 64字节收发缓冲区
      0009BE 74 EF            [12] 1813 	mov	a,#0xef
      0009C0 55 EA            [12] 1814 	anl	a,_UEP4_1_MOD
      0009C2 44 C0            [12] 1815 	orl	a,#0xc0
      0009C4 F5 EA            [12] 1816 	mov	_UEP4_1_MOD,a
                                   1817 ;	../../../usb/endpoints.c:435: UEP1_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK; //端点1自动翻转同步标志位，IN事务返回NAK
      0009C6 75 D2 12         [24] 1818 	mov	_UEP1_CTRL,#0x12
                                   1819 ;	../../../usb/endpoints.c:437: UEP2_DMA = (uint16_t)Ep2Buffer; //端点2数据传输地址
      0009C9 7E 40            [12] 1820 	mov	r6,#_Ep2Buffer
      0009CB 7F 01            [12] 1821 	mov	r7,#(_Ep2Buffer >> 8)
      0009CD 8E E4            [24] 1822 	mov	((_UEP2_DMA >> 0) & 0xFF),r6
      0009CF 8F E5            [24] 1823 	mov	((_UEP2_DMA >> 8) & 0xFF),r7
                                   1824 ;	../../../usb/endpoints.c:438: UEP2_3_MOD = UEP2_3_MOD & ~bUEP2_BUF_MOD | bUEP2_TX_EN; //端点2接收使能 64字节缓冲区
      0009D1 74 FE            [12] 1825 	mov	a,#0xfe
      0009D3 55 EB            [12] 1826 	anl	a,_UEP2_3_MOD
      0009D5 44 04            [12] 1827 	orl	a,#0x04
      0009D7 F5 EB            [12] 1828 	mov	_UEP2_3_MOD,a
                                   1829 ;	../../../usb/endpoints.c:439: UEP2_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK; //端点2自动翻转同步标志位，IN事务返回NAK
      0009D9 75 D4 12         [24] 1830 	mov	_UEP2_CTRL,#0x12
                                   1831 ;	../../../usb/endpoints.c:441: UEP3_DMA = (uint16_t)Ep3Buffer; //端点3数据传输地址
      0009DC 7E 80            [12] 1832 	mov	r6,#_Ep3Buffer
      0009DE 7F 01            [12] 1833 	mov	r7,#(_Ep3Buffer >> 8)
      0009E0 8E E6            [24] 1834 	mov	((_UEP3_DMA >> 0) & 0xFF),r6
      0009E2 8F E7            [24] 1835 	mov	((_UEP3_DMA >> 8) & 0xFF),r7
                                   1836 ;	../../../usb/endpoints.c:442: UEP2_3_MOD = UEP2_3_MOD & ~bUEP3_BUF_MOD | bUEP3_TX_EN | bUEP1_RX_EN; //端点3接收使能 64字节缓冲区
      0009E4 74 EF            [12] 1837 	mov	a,#0xef
      0009E6 55 EB            [12] 1838 	anl	a,_UEP2_3_MOD
      0009E8 44 C0            [12] 1839 	orl	a,#0xc0
      0009EA F5 EB            [12] 1840 	mov	_UEP2_3_MOD,a
                                   1841 ;	../../../usb/endpoints.c:443: UEP3_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK; //端点3自动翻转同步标志位，IN事务返回NAK
      0009EC 75 D6 12         [24] 1842 	mov	_UEP3_CTRL,#0x12
                                   1843 ;	../../../usb/endpoints.c:445: UEP4_CTRL = bUEP_AUTO_TOG | UEP_T_RES_NAK; //端点4自动翻转同步标志位，IN事务返回NAK
      0009EF 75 DE 12         [24] 1844 	mov	_UEP4_CTRL,#0x12
                                   1845 ;	../../../usb/endpoints.c:447: USB_DEV_AD = 0x00;
      0009F2 75 E3 00         [24] 1846 	mov	_USB_DEV_AD,#0x00
                                   1847 ;	../../../usb/endpoints.c:448: UDEV_CTRL = bUD_PD_DIS; // 禁止DP/DM下拉电阻
      0009F5 75 D1 80         [24] 1848 	mov	_UDEV_CTRL,#0x80
                                   1849 ;	../../../usb/endpoints.c:449: USB_CTRL = bUC_DEV_PU_EN | bUC_INT_BUSY | bUC_DMA_EN; // 启动USB设备及DMA，在中断期间中断标志未清除前自动返回NAK
      0009F8 75 E2 29         [24] 1850 	mov	_USB_CTRL,#0x29
                                   1851 ;	../../../usb/endpoints.c:450: UDEV_CTRL |= bUD_PORT_EN; // 允许USB端口
      0009FB 43 D1 01         [24] 1852 	orl	_UDEV_CTRL,#0x01
                                   1853 ;	../../../usb/endpoints.c:451: USB_INT_FG = 0xFF; // 清中断标志
      0009FE 75 D8 FF         [24] 1854 	mov	_USB_INT_FG,#0xff
                                   1855 ;	../../../usb/endpoints.c:452: USB_INT_EN = bUIE_SUSPEND | bUIE_TRANSFER | bUIE_BUS_RST;
      000A01 75 E1 07         [24] 1856 	mov	_USB_INT_EN,#0x07
                                   1857 ;	../../../usb/endpoints.c:453: IE_USB = 1;
                                   1858 ;	assignBit
      000A04 D2 EA            [12] 1859 	setb	_IE_USB
                                   1860 ;	../../../usb/endpoints.c:454: }
      000A06 22               [24] 1861 	ret
                                   1862 	.area CSEG    (CODE)
                                   1863 	.area CONST   (CODE)
                                   1864 	.area XINIT   (CODE)
                                   1865 	.area CABS    (ABS,CODE)

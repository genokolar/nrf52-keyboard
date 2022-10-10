                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module interrupt
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EndpointPacketSofHandler
                                     12 	.globl _EndpointPacketSetupHandler
                                     13 	.globl _EndpointPacketInHandler
                                     14 	.globl _EndpointPacketOutHandler
                                     15 	.globl _UsbSuspendEvt
                                     16 	.globl _UIF_BUS_RST
                                     17 	.globl _UIF_DETECT
                                     18 	.globl _UIF_TRANSFER
                                     19 	.globl _UIF_SUSPEND
                                     20 	.globl _UIF_HST_SOF
                                     21 	.globl _UIF_FIFO_OV
                                     22 	.globl _U_SIE_FREE
                                     23 	.globl _U_TOG_OK
                                     24 	.globl _U_IS_NAK
                                     25 	.globl _ADC_CHAN0
                                     26 	.globl _ADC_CHAN1
                                     27 	.globl _CMP_CHAN
                                     28 	.globl _ADC_START
                                     29 	.globl _ADC_IF
                                     30 	.globl _CMP_IF
                                     31 	.globl _CMPO
                                     32 	.globl _U1RI
                                     33 	.globl _U1TI
                                     34 	.globl _U1RB8
                                     35 	.globl _U1TB8
                                     36 	.globl _U1REN
                                     37 	.globl _U1SMOD
                                     38 	.globl _U1SM0
                                     39 	.globl _S0_R_FIFO
                                     40 	.globl _S0_T_FIFO
                                     41 	.globl _S0_FREE
                                     42 	.globl _S0_IF_BYTE
                                     43 	.globl _S0_IF_FIRST
                                     44 	.globl _S0_IF_OV
                                     45 	.globl _S0_FST_ACT
                                     46 	.globl _CP_RL2
                                     47 	.globl _C_T2
                                     48 	.globl _TR2
                                     49 	.globl _EXEN2
                                     50 	.globl _TCLK
                                     51 	.globl _RCLK
                                     52 	.globl _EXF2
                                     53 	.globl _CAP1F
                                     54 	.globl _TF2
                                     55 	.globl _RI
                                     56 	.globl _TI
                                     57 	.globl _RB8
                                     58 	.globl _TB8
                                     59 	.globl _REN
                                     60 	.globl _SM2
                                     61 	.globl _SM1
                                     62 	.globl _SM0
                                     63 	.globl _IT0
                                     64 	.globl _IE0
                                     65 	.globl _IT1
                                     66 	.globl _IE1
                                     67 	.globl _TR0
                                     68 	.globl _TF0
                                     69 	.globl _TR1
                                     70 	.globl _TF1
                                     71 	.globl _RXD
                                     72 	.globl _PWM1_
                                     73 	.globl _P3_0
                                     74 	.globl _TXD
                                     75 	.globl _PWM2_
                                     76 	.globl _P3_1
                                     77 	.globl _AIN3
                                     78 	.globl _VBUS1
                                     79 	.globl _INT0
                                     80 	.globl _TXD1_
                                     81 	.globl _P3_2
                                     82 	.globl _INT1
                                     83 	.globl _P3_3
                                     84 	.globl _T0
                                     85 	.globl _RXD1_
                                     86 	.globl _PWM2
                                     87 	.globl _P3_4
                                     88 	.globl _T1
                                     89 	.globl _P3_5
                                     90 	.globl _UDP
                                     91 	.globl _P3_6
                                     92 	.globl _UDM
                                     93 	.globl _P3_7
                                     94 	.globl _TIN0
                                     95 	.globl _CAP1
                                     96 	.globl _T2
                                     97 	.globl _P1_0
                                     98 	.globl _AIN0
                                     99 	.globl _VBUS2
                                    100 	.globl _TIN1
                                    101 	.globl _CAP2
                                    102 	.globl _T2EX
                                    103 	.globl _P1_1
                                    104 	.globl _RXD_
                                    105 	.globl _P1_2
                                    106 	.globl _TXD_
                                    107 	.globl _P1_3
                                    108 	.globl _AIN1
                                    109 	.globl _UCC1
                                    110 	.globl _TIN2
                                    111 	.globl _SCS
                                    112 	.globl _CAP1_
                                    113 	.globl _T2_
                                    114 	.globl _P1_4
                                    115 	.globl _AIN2
                                    116 	.globl _UCC2
                                    117 	.globl _TIN3
                                    118 	.globl _PWM1
                                    119 	.globl _MOSI
                                    120 	.globl _P1_5
                                    121 	.globl _TIN4
                                    122 	.globl _RXD1
                                    123 	.globl _MISO
                                    124 	.globl _P1_6
                                    125 	.globl _TIN5
                                    126 	.globl _TXD1
                                    127 	.globl _SCK
                                    128 	.globl _P1_7
                                    129 	.globl _IE_SPI0
                                    130 	.globl _IE_TKEY
                                    131 	.globl _IE_USB
                                    132 	.globl _IE_ADC
                                    133 	.globl _IE_UART1
                                    134 	.globl _IE_PWMX
                                    135 	.globl _IE_GPIO
                                    136 	.globl _IE_WDOG
                                    137 	.globl _PX0
                                    138 	.globl _PT0
                                    139 	.globl _PX1
                                    140 	.globl _PT1
                                    141 	.globl _PS
                                    142 	.globl _PT2
                                    143 	.globl _PL_FLAG
                                    144 	.globl _PH_FLAG
                                    145 	.globl _EX0
                                    146 	.globl _ET0
                                    147 	.globl _EX1
                                    148 	.globl _ET1
                                    149 	.globl _ES
                                    150 	.globl _ET2
                                    151 	.globl _E_DIS
                                    152 	.globl _EA
                                    153 	.globl _P
                                    154 	.globl _F1
                                    155 	.globl _OV
                                    156 	.globl _RS0
                                    157 	.globl _RS1
                                    158 	.globl _F0
                                    159 	.globl _AC
                                    160 	.globl _CY
                                    161 	.globl _UEP1_DMA_H
                                    162 	.globl _UEP1_DMA_L
                                    163 	.globl _UEP1_DMA
                                    164 	.globl _UEP0_DMA_H
                                    165 	.globl _UEP0_DMA_L
                                    166 	.globl _UEP0_DMA
                                    167 	.globl _UEP2_3_MOD
                                    168 	.globl _UEP4_1_MOD
                                    169 	.globl _UEP3_DMA_H
                                    170 	.globl _UEP3_DMA_L
                                    171 	.globl _UEP3_DMA
                                    172 	.globl _UEP2_DMA_H
                                    173 	.globl _UEP2_DMA_L
                                    174 	.globl _UEP2_DMA
                                    175 	.globl _USB_DEV_AD
                                    176 	.globl _USB_CTRL
                                    177 	.globl _USB_INT_EN
                                    178 	.globl _UEP4_T_LEN
                                    179 	.globl _UEP4_CTRL
                                    180 	.globl _UEP0_T_LEN
                                    181 	.globl _UEP0_CTRL
                                    182 	.globl _USB_RX_LEN
                                    183 	.globl _USB_MIS_ST
                                    184 	.globl _USB_INT_ST
                                    185 	.globl _USB_INT_FG
                                    186 	.globl _UEP3_T_LEN
                                    187 	.globl _UEP3_CTRL
                                    188 	.globl _UEP2_T_LEN
                                    189 	.globl _UEP2_CTRL
                                    190 	.globl _UEP1_T_LEN
                                    191 	.globl _UEP1_CTRL
                                    192 	.globl _UDEV_CTRL
                                    193 	.globl _USB_C_CTRL
                                    194 	.globl _TKEY_DATH
                                    195 	.globl _TKEY_DATL
                                    196 	.globl _TKEY_DAT
                                    197 	.globl _TKEY_CTRL
                                    198 	.globl _ADC_DATA
                                    199 	.globl _ADC_CFG
                                    200 	.globl _ADC_CTRL
                                    201 	.globl _SBAUD1
                                    202 	.globl _SBUF1
                                    203 	.globl _SCON1
                                    204 	.globl _SPI0_SETUP
                                    205 	.globl _SPI0_CK_SE
                                    206 	.globl _SPI0_CTRL
                                    207 	.globl _SPI0_DATA
                                    208 	.globl _SPI0_STAT
                                    209 	.globl _PWM_CK_SE
                                    210 	.globl _PWM_CTRL
                                    211 	.globl _PWM_DATA1
                                    212 	.globl _PWM_DATA2
                                    213 	.globl _T2CAP1H
                                    214 	.globl _T2CAP1L
                                    215 	.globl _T2CAP1
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _T2COUNT
                                    219 	.globl _RCAP2H
                                    220 	.globl _RCAP2L
                                    221 	.globl _RCAP2
                                    222 	.globl _T2MOD
                                    223 	.globl _T2CON
                                    224 	.globl _SBUF
                                    225 	.globl _SCON
                                    226 	.globl _TH1
                                    227 	.globl _TH0
                                    228 	.globl _TL1
                                    229 	.globl _TL0
                                    230 	.globl _TMOD
                                    231 	.globl _TCON
                                    232 	.globl _XBUS_AUX
                                    233 	.globl _PIN_FUNC
                                    234 	.globl _P3_DIR_PU
                                    235 	.globl _P3_MOD_OC
                                    236 	.globl _P3
                                    237 	.globl _P2
                                    238 	.globl _P1_DIR_PU
                                    239 	.globl _P1_MOD_OC
                                    240 	.globl _P1
                                    241 	.globl _ROM_CTRL
                                    242 	.globl _ROM_DATA_H
                                    243 	.globl _ROM_DATA_L
                                    244 	.globl _ROM_DATA
                                    245 	.globl _ROM_ADDR_H
                                    246 	.globl _ROM_ADDR_L
                                    247 	.globl _ROM_ADDR
                                    248 	.globl _GPIO_IE
                                    249 	.globl _IP_EX
                                    250 	.globl _IE_EX
                                    251 	.globl _IP
                                    252 	.globl _IE
                                    253 	.globl _WDOG_COUNT
                                    254 	.globl _RESET_KEEP
                                    255 	.globl _WAKE_CTRL
                                    256 	.globl _CLOCK_CFG
                                    257 	.globl _PCON
                                    258 	.globl _GLOBAL_CFG
                                    259 	.globl _SAFE_MOD
                                    260 	.globl _DPH
                                    261 	.globl _DPL
                                    262 	.globl _SP
                                    263 	.globl _B
                                    264 	.globl _ACC
                                    265 	.globl _PSW
                                    266 	.globl _UsbIsr
                                    267 ;--------------------------------------------------------
                                    268 ; special function registers
                                    269 ;--------------------------------------------------------
                                    270 	.area RSEG    (ABS,DATA)
      000000                        271 	.org 0x0000
                           0000D0   272 _PSW	=	0x00d0
                           0000E0   273 _ACC	=	0x00e0
                           0000F0   274 _B	=	0x00f0
                           000081   275 _SP	=	0x0081
                           000082   276 _DPL	=	0x0082
                           000083   277 _DPH	=	0x0083
                           0000A1   278 _SAFE_MOD	=	0x00a1
                           0000B1   279 _GLOBAL_CFG	=	0x00b1
                           000087   280 _PCON	=	0x0087
                           0000B9   281 _CLOCK_CFG	=	0x00b9
                           0000A9   282 _WAKE_CTRL	=	0x00a9
                           0000FE   283 _RESET_KEEP	=	0x00fe
                           0000FF   284 _WDOG_COUNT	=	0x00ff
                           0000A8   285 _IE	=	0x00a8
                           0000B8   286 _IP	=	0x00b8
                           0000E8   287 _IE_EX	=	0x00e8
                           0000E9   288 _IP_EX	=	0x00e9
                           0000C7   289 _GPIO_IE	=	0x00c7
                           008584   290 _ROM_ADDR	=	0x8584
                           000084   291 _ROM_ADDR_L	=	0x0084
                           000085   292 _ROM_ADDR_H	=	0x0085
                           008F8E   293 _ROM_DATA	=	0x8f8e
                           00008E   294 _ROM_DATA_L	=	0x008e
                           00008F   295 _ROM_DATA_H	=	0x008f
                           000086   296 _ROM_CTRL	=	0x0086
                           000090   297 _P1	=	0x0090
                           000092   298 _P1_MOD_OC	=	0x0092
                           000093   299 _P1_DIR_PU	=	0x0093
                           0000A0   300 _P2	=	0x00a0
                           0000B0   301 _P3	=	0x00b0
                           000096   302 _P3_MOD_OC	=	0x0096
                           000097   303 _P3_DIR_PU	=	0x0097
                           0000C6   304 _PIN_FUNC	=	0x00c6
                           0000A2   305 _XBUS_AUX	=	0x00a2
                           000088   306 _TCON	=	0x0088
                           000089   307 _TMOD	=	0x0089
                           00008A   308 _TL0	=	0x008a
                           00008B   309 _TL1	=	0x008b
                           00008C   310 _TH0	=	0x008c
                           00008D   311 _TH1	=	0x008d
                           000098   312 _SCON	=	0x0098
                           000099   313 _SBUF	=	0x0099
                           0000C8   314 _T2CON	=	0x00c8
                           0000C9   315 _T2MOD	=	0x00c9
                           00CBCA   316 _RCAP2	=	0xcbca
                           0000CA   317 _RCAP2L	=	0x00ca
                           0000CB   318 _RCAP2H	=	0x00cb
                           00CDCC   319 _T2COUNT	=	0xcdcc
                           0000CC   320 _TL2	=	0x00cc
                           0000CD   321 _TH2	=	0x00cd
                           00CFCE   322 _T2CAP1	=	0xcfce
                           0000CE   323 _T2CAP1L	=	0x00ce
                           0000CF   324 _T2CAP1H	=	0x00cf
                           00009B   325 _PWM_DATA2	=	0x009b
                           00009C   326 _PWM_DATA1	=	0x009c
                           00009D   327 _PWM_CTRL	=	0x009d
                           00009E   328 _PWM_CK_SE	=	0x009e
                           0000F8   329 _SPI0_STAT	=	0x00f8
                           0000F9   330 _SPI0_DATA	=	0x00f9
                           0000FA   331 _SPI0_CTRL	=	0x00fa
                           0000FB   332 _SPI0_CK_SE	=	0x00fb
                           0000FC   333 _SPI0_SETUP	=	0x00fc
                           0000C0   334 _SCON1	=	0x00c0
                           0000C1   335 _SBUF1	=	0x00c1
                           0000C2   336 _SBAUD1	=	0x00c2
                           000080   337 _ADC_CTRL	=	0x0080
                           00009A   338 _ADC_CFG	=	0x009a
                           00009F   339 _ADC_DATA	=	0x009f
                           0000C3   340 _TKEY_CTRL	=	0x00c3
                           00C5C4   341 _TKEY_DAT	=	0xc5c4
                           0000C4   342 _TKEY_DATL	=	0x00c4
                           0000C5   343 _TKEY_DATH	=	0x00c5
                           000091   344 _USB_C_CTRL	=	0x0091
                           0000D1   345 _UDEV_CTRL	=	0x00d1
                           0000D2   346 _UEP1_CTRL	=	0x00d2
                           0000D3   347 _UEP1_T_LEN	=	0x00d3
                           0000D4   348 _UEP2_CTRL	=	0x00d4
                           0000D5   349 _UEP2_T_LEN	=	0x00d5
                           0000D6   350 _UEP3_CTRL	=	0x00d6
                           0000D7   351 _UEP3_T_LEN	=	0x00d7
                           0000D8   352 _USB_INT_FG	=	0x00d8
                           0000D9   353 _USB_INT_ST	=	0x00d9
                           0000DA   354 _USB_MIS_ST	=	0x00da
                           0000DB   355 _USB_RX_LEN	=	0x00db
                           0000DC   356 _UEP0_CTRL	=	0x00dc
                           0000DD   357 _UEP0_T_LEN	=	0x00dd
                           0000DE   358 _UEP4_CTRL	=	0x00de
                           0000DF   359 _UEP4_T_LEN	=	0x00df
                           0000E1   360 _USB_INT_EN	=	0x00e1
                           0000E2   361 _USB_CTRL	=	0x00e2
                           0000E3   362 _USB_DEV_AD	=	0x00e3
                           00E5E4   363 _UEP2_DMA	=	0xe5e4
                           0000E4   364 _UEP2_DMA_L	=	0x00e4
                           0000E5   365 _UEP2_DMA_H	=	0x00e5
                           00E7E6   366 _UEP3_DMA	=	0xe7e6
                           0000E6   367 _UEP3_DMA_L	=	0x00e6
                           0000E7   368 _UEP3_DMA_H	=	0x00e7
                           0000EA   369 _UEP4_1_MOD	=	0x00ea
                           0000EB   370 _UEP2_3_MOD	=	0x00eb
                           00EDEC   371 _UEP0_DMA	=	0xedec
                           0000EC   372 _UEP0_DMA_L	=	0x00ec
                           0000ED   373 _UEP0_DMA_H	=	0x00ed
                           00EFEE   374 _UEP1_DMA	=	0xefee
                           0000EE   375 _UEP1_DMA_L	=	0x00ee
                           0000EF   376 _UEP1_DMA_H	=	0x00ef
                                    377 ;--------------------------------------------------------
                                    378 ; special function bits
                                    379 ;--------------------------------------------------------
                                    380 	.area RSEG    (ABS,DATA)
      000000                        381 	.org 0x0000
                           0000D7   382 _CY	=	0x00d7
                           0000D6   383 _AC	=	0x00d6
                           0000D5   384 _F0	=	0x00d5
                           0000D4   385 _RS1	=	0x00d4
                           0000D3   386 _RS0	=	0x00d3
                           0000D2   387 _OV	=	0x00d2
                           0000D1   388 _F1	=	0x00d1
                           0000D0   389 _P	=	0x00d0
                           0000AF   390 _EA	=	0x00af
                           0000AE   391 _E_DIS	=	0x00ae
                           0000AD   392 _ET2	=	0x00ad
                           0000AC   393 _ES	=	0x00ac
                           0000AB   394 _ET1	=	0x00ab
                           0000AA   395 _EX1	=	0x00aa
                           0000A9   396 _ET0	=	0x00a9
                           0000A8   397 _EX0	=	0x00a8
                           0000AF   398 _PH_FLAG	=	0x00af
                           0000AE   399 _PL_FLAG	=	0x00ae
                           0000AD   400 _PT2	=	0x00ad
                           0000AC   401 _PS	=	0x00ac
                           0000AB   402 _PT1	=	0x00ab
                           0000AA   403 _PX1	=	0x00aa
                           0000A9   404 _PT0	=	0x00a9
                           0000A8   405 _PX0	=	0x00a8
                           0000EF   406 _IE_WDOG	=	0x00ef
                           0000EE   407 _IE_GPIO	=	0x00ee
                           0000ED   408 _IE_PWMX	=	0x00ed
                           0000EC   409 _IE_UART1	=	0x00ec
                           0000EB   410 _IE_ADC	=	0x00eb
                           0000EA   411 _IE_USB	=	0x00ea
                           0000E9   412 _IE_TKEY	=	0x00e9
                           0000E8   413 _IE_SPI0	=	0x00e8
                           000097   414 _P1_7	=	0x0097
                           000097   415 _SCK	=	0x0097
                           000097   416 _TXD1	=	0x0097
                           000097   417 _TIN5	=	0x0097
                           000096   418 _P1_6	=	0x0096
                           000096   419 _MISO	=	0x0096
                           000096   420 _RXD1	=	0x0096
                           000096   421 _TIN4	=	0x0096
                           000095   422 _P1_5	=	0x0095
                           000095   423 _MOSI	=	0x0095
                           000095   424 _PWM1	=	0x0095
                           000095   425 _TIN3	=	0x0095
                           000095   426 _UCC2	=	0x0095
                           000095   427 _AIN2	=	0x0095
                           000094   428 _P1_4	=	0x0094
                           000094   429 _T2_	=	0x0094
                           000094   430 _CAP1_	=	0x0094
                           000094   431 _SCS	=	0x0094
                           000094   432 _TIN2	=	0x0094
                           000094   433 _UCC1	=	0x0094
                           000094   434 _AIN1	=	0x0094
                           000093   435 _P1_3	=	0x0093
                           000093   436 _TXD_	=	0x0093
                           000092   437 _P1_2	=	0x0092
                           000092   438 _RXD_	=	0x0092
                           000091   439 _P1_1	=	0x0091
                           000091   440 _T2EX	=	0x0091
                           000091   441 _CAP2	=	0x0091
                           000091   442 _TIN1	=	0x0091
                           000091   443 _VBUS2	=	0x0091
                           000091   444 _AIN0	=	0x0091
                           000090   445 _P1_0	=	0x0090
                           000090   446 _T2	=	0x0090
                           000090   447 _CAP1	=	0x0090
                           000090   448 _TIN0	=	0x0090
                           0000B7   449 _P3_7	=	0x00b7
                           0000B7   450 _UDM	=	0x00b7
                           0000B6   451 _P3_6	=	0x00b6
                           0000B6   452 _UDP	=	0x00b6
                           0000B5   453 _P3_5	=	0x00b5
                           0000B5   454 _T1	=	0x00b5
                           0000B4   455 _P3_4	=	0x00b4
                           0000B4   456 _PWM2	=	0x00b4
                           0000B4   457 _RXD1_	=	0x00b4
                           0000B4   458 _T0	=	0x00b4
                           0000B3   459 _P3_3	=	0x00b3
                           0000B3   460 _INT1	=	0x00b3
                           0000B2   461 _P3_2	=	0x00b2
                           0000B2   462 _TXD1_	=	0x00b2
                           0000B2   463 _INT0	=	0x00b2
                           0000B2   464 _VBUS1	=	0x00b2
                           0000B2   465 _AIN3	=	0x00b2
                           0000B1   466 _P3_1	=	0x00b1
                           0000B1   467 _PWM2_	=	0x00b1
                           0000B1   468 _TXD	=	0x00b1
                           0000B0   469 _P3_0	=	0x00b0
                           0000B0   470 _PWM1_	=	0x00b0
                           0000B0   471 _RXD	=	0x00b0
                           00008F   472 _TF1	=	0x008f
                           00008E   473 _TR1	=	0x008e
                           00008D   474 _TF0	=	0x008d
                           00008C   475 _TR0	=	0x008c
                           00008B   476 _IE1	=	0x008b
                           00008A   477 _IT1	=	0x008a
                           000089   478 _IE0	=	0x0089
                           000088   479 _IT0	=	0x0088
                           00009F   480 _SM0	=	0x009f
                           00009E   481 _SM1	=	0x009e
                           00009D   482 _SM2	=	0x009d
                           00009C   483 _REN	=	0x009c
                           00009B   484 _TB8	=	0x009b
                           00009A   485 _RB8	=	0x009a
                           000099   486 _TI	=	0x0099
                           000098   487 _RI	=	0x0098
                           0000CF   488 _TF2	=	0x00cf
                           0000CF   489 _CAP1F	=	0x00cf
                           0000CE   490 _EXF2	=	0x00ce
                           0000CD   491 _RCLK	=	0x00cd
                           0000CC   492 _TCLK	=	0x00cc
                           0000CB   493 _EXEN2	=	0x00cb
                           0000CA   494 _TR2	=	0x00ca
                           0000C9   495 _C_T2	=	0x00c9
                           0000C8   496 _CP_RL2	=	0x00c8
                           0000FF   497 _S0_FST_ACT	=	0x00ff
                           0000FE   498 _S0_IF_OV	=	0x00fe
                           0000FD   499 _S0_IF_FIRST	=	0x00fd
                           0000FC   500 _S0_IF_BYTE	=	0x00fc
                           0000FB   501 _S0_FREE	=	0x00fb
                           0000FA   502 _S0_T_FIFO	=	0x00fa
                           0000F8   503 _S0_R_FIFO	=	0x00f8
                           0000C7   504 _U1SM0	=	0x00c7
                           0000C5   505 _U1SMOD	=	0x00c5
                           0000C4   506 _U1REN	=	0x00c4
                           0000C3   507 _U1TB8	=	0x00c3
                           0000C2   508 _U1RB8	=	0x00c2
                           0000C1   509 _U1TI	=	0x00c1
                           0000C0   510 _U1RI	=	0x00c0
                           000087   511 _CMPO	=	0x0087
                           000086   512 _CMP_IF	=	0x0086
                           000085   513 _ADC_IF	=	0x0085
                           000084   514 _ADC_START	=	0x0084
                           000083   515 _CMP_CHAN	=	0x0083
                           000081   516 _ADC_CHAN1	=	0x0081
                           000080   517 _ADC_CHAN0	=	0x0080
                           0000DF   518 _U_IS_NAK	=	0x00df
                           0000DE   519 _U_TOG_OK	=	0x00de
                           0000DD   520 _U_SIE_FREE	=	0x00dd
                           0000DC   521 _UIF_FIFO_OV	=	0x00dc
                           0000DB   522 _UIF_HST_SOF	=	0x00db
                           0000DA   523 _UIF_SUSPEND	=	0x00da
                           0000D9   524 _UIF_TRANSFER	=	0x00d9
                           0000D8   525 _UIF_DETECT	=	0x00d8
                           0000D8   526 _UIF_BUS_RST	=	0x00d8
                                    527 ;--------------------------------------------------------
                                    528 ; overlayable register banks
                                    529 ;--------------------------------------------------------
                                    530 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        531 	.ds 8
                                    532 ;--------------------------------------------------------
                                    533 ; internal ram data
                                    534 ;--------------------------------------------------------
                                    535 	.area DSEG    (DATA)
                                    536 ;--------------------------------------------------------
                                    537 ; overlayable items in internal ram 
                                    538 ;--------------------------------------------------------
                                    539 ;--------------------------------------------------------
                                    540 ; indirectly addressable internal ram data
                                    541 ;--------------------------------------------------------
                                    542 	.area ISEG    (DATA)
                                    543 ;--------------------------------------------------------
                                    544 ; absolute internal ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area IABS    (ABS,DATA)
                                    547 	.area IABS    (ABS,DATA)
                                    548 ;--------------------------------------------------------
                                    549 ; bit data
                                    550 ;--------------------------------------------------------
                                    551 	.area BSEG    (BIT)
                                    552 ;--------------------------------------------------------
                                    553 ; paged external ram data
                                    554 ;--------------------------------------------------------
                                    555 	.area PSEG    (PAG,XDATA)
                                    556 ;--------------------------------------------------------
                                    557 ; external ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area XSEG    (XDATA)
                                    560 ;--------------------------------------------------------
                                    561 ; absolute external ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area XABS    (ABS,XDATA)
                                    564 ;--------------------------------------------------------
                                    565 ; external initialized ram data
                                    566 ;--------------------------------------------------------
                                    567 	.area XISEG   (XDATA)
                                    568 	.area HOME    (CODE)
                                    569 	.area GSINIT0 (CODE)
                                    570 	.area GSINIT1 (CODE)
                                    571 	.area GSINIT2 (CODE)
                                    572 	.area GSINIT3 (CODE)
                                    573 	.area GSINIT4 (CODE)
                                    574 	.area GSINIT5 (CODE)
                                    575 	.area GSINIT  (CODE)
                                    576 	.area GSFINAL (CODE)
                                    577 	.area CSEG    (CODE)
                                    578 ;--------------------------------------------------------
                                    579 ; global & static initialisations
                                    580 ;--------------------------------------------------------
                                    581 	.area HOME    (CODE)
                                    582 	.area GSINIT  (CODE)
                                    583 	.area GSFINAL (CODE)
                                    584 	.area GSINIT  (CODE)
                                    585 ;--------------------------------------------------------
                                    586 ; Home
                                    587 ;--------------------------------------------------------
                                    588 	.area HOME    (CODE)
                                    589 	.area HOME    (CODE)
                                    590 ;--------------------------------------------------------
                                    591 ; code
                                    592 ;--------------------------------------------------------
                                    593 	.area CSEG    (CODE)
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'UsbTransfurEventHandler'
                                    596 ;------------------------------------------------------------
                                    597 ;ep                        Allocated to registers r7 
                                    598 ;------------------------------------------------------------
                                    599 ;	../../../usb/interrupt.c:59: static void UsbTransfurEventHandler()
                                    600 ;	-----------------------------------------
                                    601 ;	 function UsbTransfurEventHandler
                                    602 ;	-----------------------------------------
      000D42                        603 _UsbTransfurEventHandler:
                           000007   604 	ar7 = 0x07
                           000006   605 	ar6 = 0x06
                           000005   606 	ar5 = 0x05
                           000004   607 	ar4 = 0x04
                           000003   608 	ar3 = 0x03
                           000002   609 	ar2 = 0x02
                           000001   610 	ar1 = 0x01
                           000000   611 	ar0 = 0x00
                                    612 ;	../../../usb/interrupt.c:61: uint8_t ep = USB_INT_ST & MASK_UIS_ENDP;
      000D42 AF D9            [24]  613 	mov	r7,_USB_INT_ST
      000D44 53 07 0F         [24]  614 	anl	ar7,#0x0f
                                    615 ;	../../../usb/interrupt.c:63: switch (USB_INT_ST & MASK_UIS_TOKEN) {
      000D47 AD D9            [24]  616 	mov	r5,_USB_INT_ST
      000D49 53 05 30         [24]  617 	anl	ar5,#0x30
      000D4C 7E 00            [12]  618 	mov	r6,#0x00
      000D4E BD 00 05         [24]  619 	cjne	r5,#0x00,00125$
      000D51 BE 00 02         [24]  620 	cjne	r6,#0x00,00125$
      000D54 80 43            [24]  621 	sjmp	00102$
      000D56                        622 00125$:
      000D56 BD 10 06         [24]  623 	cjne	r5,#0x10,00126$
      000D59 BE 00 03         [24]  624 	cjne	r6,#0x00,00126$
      000D5C 02 0D E7         [24]  625 	ljmp	00104$
      000D5F                        626 00126$:
      000D5F BD 20 05         [24]  627 	cjne	r5,#0x20,00127$
      000D62 BE 00 02         [24]  628 	cjne	r6,#0x00,00127$
      000D65 80 0B            [24]  629 	sjmp	00101$
      000D67                        630 00127$:
      000D67 BD 30 05         [24]  631 	cjne	r5,#0x30,00128$
      000D6A BE 00 02         [24]  632 	cjne	r6,#0x00,00128$
      000D6D 80 51            [24]  633 	sjmp	00103$
      000D6F                        634 00128$:
      000D6F 02 0E 0C         [24]  635 	ljmp	00106$
                                    636 ;	../../../usb/interrupt.c:64: case UIS_TOKEN_IN:
      000D72                        637 00101$:
                                    638 ;	../../../usb/interrupt.c:65: (*EndpointPacketInHandler[ep])();
      000D72 EF               [12]  639 	mov	a,r7
      000D73 75 F0 02         [24]  640 	mov	b,#0x02
      000D76 A4               [48]  641 	mul	ab
      000D77 24 BF            [12]  642 	add	a,#_EndpointPacketInHandler
      000D79 F5 82            [12]  643 	mov	dpl,a
      000D7B 74 33            [12]  644 	mov	a,#(_EndpointPacketInHandler >> 8)
      000D7D 35 F0            [12]  645 	addc	a,b
      000D7F F5 83            [12]  646 	mov	dph,a
      000D81 E4               [12]  647 	clr	a
      000D82 93               [24]  648 	movc	a,@a+dptr
      000D83 FD               [12]  649 	mov	r5,a
      000D84 A3               [24]  650 	inc	dptr
      000D85 E4               [12]  651 	clr	a
      000D86 93               [24]  652 	movc	a,@a+dptr
      000D87 FE               [12]  653 	mov	r6,a
      000D88 C0 06            [24]  654 	push	ar6
      000D8A C0 05            [24]  655 	push	ar5
      000D8C 8D 82            [24]  656 	mov	dpl,r5
      000D8E 8E 83            [24]  657 	mov	dph,r6
      000D90 12 00 59         [24]  658 	lcall	__sdcc_call_dptr
      000D93 D0 05            [24]  659 	pop	ar5
      000D95 D0 06            [24]  660 	pop	ar6
                                    661 ;	../../../usb/interrupt.c:66: break;
                                    662 ;	../../../usb/interrupt.c:67: case UIS_TOKEN_OUT:
      000D97 80 73            [24]  663 	sjmp	00106$
      000D99                        664 00102$:
                                    665 ;	../../../usb/interrupt.c:68: (*EndpointPacketOutHandler[ep])();
      000D99 EF               [12]  666 	mov	a,r7
      000D9A 75 F0 02         [24]  667 	mov	b,#0x02
      000D9D A4               [48]  668 	mul	ab
      000D9E 24 B5            [12]  669 	add	a,#_EndpointPacketOutHandler
      000DA0 F5 82            [12]  670 	mov	dpl,a
      000DA2 74 33            [12]  671 	mov	a,#(_EndpointPacketOutHandler >> 8)
      000DA4 35 F0            [12]  672 	addc	a,b
      000DA6 F5 83            [12]  673 	mov	dph,a
      000DA8 E4               [12]  674 	clr	a
      000DA9 93               [24]  675 	movc	a,@a+dptr
      000DAA FD               [12]  676 	mov	r5,a
      000DAB A3               [24]  677 	inc	dptr
      000DAC E4               [12]  678 	clr	a
      000DAD 93               [24]  679 	movc	a,@a+dptr
      000DAE FE               [12]  680 	mov	r6,a
      000DAF C0 06            [24]  681 	push	ar6
      000DB1 C0 05            [24]  682 	push	ar5
      000DB3 8D 82            [24]  683 	mov	dpl,r5
      000DB5 8E 83            [24]  684 	mov	dph,r6
      000DB7 12 00 59         [24]  685 	lcall	__sdcc_call_dptr
      000DBA D0 05            [24]  686 	pop	ar5
      000DBC D0 06            [24]  687 	pop	ar6
                                    688 ;	../../../usb/interrupt.c:69: break;
                                    689 ;	../../../usb/interrupt.c:70: case UIS_TOKEN_SETUP:
      000DBE 80 4C            [24]  690 	sjmp	00106$
      000DC0                        691 00103$:
                                    692 ;	../../../usb/interrupt.c:71: (*EndpointPacketSetupHandler[ep])();
      000DC0 EF               [12]  693 	mov	a,r7
      000DC1 75 F0 02         [24]  694 	mov	b,#0x02
      000DC4 A4               [48]  695 	mul	ab
      000DC5 24 C9            [12]  696 	add	a,#_EndpointPacketSetupHandler
      000DC7 F5 82            [12]  697 	mov	dpl,a
      000DC9 74 33            [12]  698 	mov	a,#(_EndpointPacketSetupHandler >> 8)
      000DCB 35 F0            [12]  699 	addc	a,b
      000DCD F5 83            [12]  700 	mov	dph,a
      000DCF E4               [12]  701 	clr	a
      000DD0 93               [24]  702 	movc	a,@a+dptr
      000DD1 FD               [12]  703 	mov	r5,a
      000DD2 A3               [24]  704 	inc	dptr
      000DD3 E4               [12]  705 	clr	a
      000DD4 93               [24]  706 	movc	a,@a+dptr
      000DD5 FE               [12]  707 	mov	r6,a
      000DD6 C0 06            [24]  708 	push	ar6
      000DD8 C0 05            [24]  709 	push	ar5
      000DDA 8D 82            [24]  710 	mov	dpl,r5
      000DDC 8E 83            [24]  711 	mov	dph,r6
      000DDE 12 00 59         [24]  712 	lcall	__sdcc_call_dptr
      000DE1 D0 05            [24]  713 	pop	ar5
      000DE3 D0 06            [24]  714 	pop	ar6
                                    715 ;	../../../usb/interrupt.c:72: break;
                                    716 ;	../../../usb/interrupt.c:73: case UIS_TOKEN_SOF:
      000DE5 80 25            [24]  717 	sjmp	00106$
      000DE7                        718 00104$:
                                    719 ;	../../../usb/interrupt.c:74: (*EndpointPacketSofHandler[ep])();
      000DE7 EF               [12]  720 	mov	a,r7
      000DE8 75 F0 02         [24]  721 	mov	b,#0x02
      000DEB A4               [48]  722 	mul	ab
      000DEC 24 D3            [12]  723 	add	a,#_EndpointPacketSofHandler
      000DEE F5 82            [12]  724 	mov	dpl,a
      000DF0 74 33            [12]  725 	mov	a,#(_EndpointPacketSofHandler >> 8)
      000DF2 35 F0            [12]  726 	addc	a,b
      000DF4 F5 83            [12]  727 	mov	dph,a
      000DF6 E4               [12]  728 	clr	a
      000DF7 93               [24]  729 	movc	a,@a+dptr
      000DF8 FE               [12]  730 	mov	r6,a
      000DF9 A3               [24]  731 	inc	dptr
      000DFA E4               [12]  732 	clr	a
      000DFB 93               [24]  733 	movc	a,@a+dptr
      000DFC FF               [12]  734 	mov	r7,a
      000DFD C0 07            [24]  735 	push	ar7
      000DFF C0 06            [24]  736 	push	ar6
      000E01 8E 82            [24]  737 	mov	dpl,r6
      000E03 8F 83            [24]  738 	mov	dph,r7
      000E05 12 00 59         [24]  739 	lcall	__sdcc_call_dptr
      000E08 D0 06            [24]  740 	pop	ar6
      000E0A D0 07            [24]  741 	pop	ar7
                                    742 ;	../../../usb/interrupt.c:78: }
      000E0C                        743 00106$:
                                    744 ;	../../../usb/interrupt.c:79: UIF_TRANSFER = 0; //写0清空中断
                                    745 ;	assignBit
      000E0C C2 D9            [12]  746 	clr	_UIF_TRANSFER
                                    747 ;	../../../usb/interrupt.c:80: }
      000E0E 22               [24]  748 	ret
                                    749 ;------------------------------------------------------------
                                    750 ;Allocation info for local variables in function 'UsbBusResetEventHandler'
                                    751 ;------------------------------------------------------------
                                    752 ;	../../../usb/interrupt.c:85: static void UsbBusResetEventHandler()
                                    753 ;	-----------------------------------------
                                    754 ;	 function UsbBusResetEventHandler
                                    755 ;	-----------------------------------------
      000E0F                        756 _UsbBusResetEventHandler:
                                    757 ;	../../../usb/interrupt.c:87: UEP0_CTRL = UEP_R_RES_ACK | UEP_T_RES_NAK;
      000E0F 75 DC 02         [24]  758 	mov	_UEP0_CTRL,#0x02
                                    759 ;	../../../usb/interrupt.c:88: UEP1_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK | UEP_T_RES_NAK;
      000E12 75 D2 12         [24]  760 	mov	_UEP1_CTRL,#0x12
                                    761 ;	../../../usb/interrupt.c:89: UEP2_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK | UEP_T_RES_NAK;
      000E15 75 D4 12         [24]  762 	mov	_UEP2_CTRL,#0x12
                                    763 ;	../../../usb/interrupt.c:90: UEP3_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK | UEP_T_RES_NAK;
      000E18 75 D6 12         [24]  764 	mov	_UEP3_CTRL,#0x12
                                    765 ;	../../../usb/interrupt.c:91: UEP4_CTRL = bUEP_AUTO_TOG | UEP_R_RES_ACK | UEP_T_RES_NAK;
      000E1B 75 DE 12         [24]  766 	mov	_UEP4_CTRL,#0x12
                                    767 ;	../../../usb/interrupt.c:92: USB_DEV_AD = 0x00;
      000E1E 75 E3 00         [24]  768 	mov	_USB_DEV_AD,#0x00
                                    769 ;	../../../usb/interrupt.c:93: UIF_SUSPEND = 0;
                                    770 ;	assignBit
      000E21 C2 DA            [12]  771 	clr	_UIF_SUSPEND
                                    772 ;	../../../usb/interrupt.c:94: UIF_TRANSFER = 0;
                                    773 ;	assignBit
      000E23 C2 D9            [12]  774 	clr	_UIF_TRANSFER
                                    775 ;	../../../usb/interrupt.c:95: UIF_BUS_RST = 0; //清中断标志
                                    776 ;	assignBit
      000E25 C2 D8            [12]  777 	clr	_UIF_BUS_RST
                                    778 ;	../../../usb/interrupt.c:98: usb_state.is_ready = false;
      000E27 78 1C            [12]  779 	mov	r0,#_usb_state
      000E29 E6               [12]  780 	mov	a,@r0
      000E2A 54 FE            [12]  781 	anl	a,#0xfe
      000E2C F6               [12]  782 	mov	@r0,a
                                    783 ;	../../../usb/interrupt.c:99: usb_state.protocol = true;
      000E2D 78 1C            [12]  784 	mov	r0,#_usb_state
      000E2F E6               [12]  785 	mov	a,@r0
      000E30 44 10            [12]  786 	orl	a,#0x10
      000E32 F6               [12]  787 	mov	@r0,a
                                    788 ;	../../../usb/interrupt.c:100: usb_state.setup_state = SETUP_IDLE;
      000E33 78 1C            [12]  789 	mov	r0,#_usb_state
      000E35 E6               [12]  790 	mov	a,@r0
      000E36 54 1F            [12]  791 	anl	a,#0x1f
      000E38 F6               [12]  792 	mov	@r0,a
                                    793 ;	../../../usb/interrupt.c:101: }
      000E39 22               [24]  794 	ret
                                    795 ;------------------------------------------------------------
                                    796 ;Allocation info for local variables in function 'UsbBusSuspendEventHandler'
                                    797 ;------------------------------------------------------------
                                    798 ;	../../../usb/interrupt.c:108: static void UsbBusSuspendEventHandler()
                                    799 ;	-----------------------------------------
                                    800 ;	 function UsbBusSuspendEventHandler
                                    801 ;	-----------------------------------------
      000E3A                        802 _UsbBusSuspendEventHandler:
                                    803 ;	../../../usb/interrupt.c:110: UIF_SUSPEND = 0;
                                    804 ;	assignBit
      000E3A C2 DA            [12]  805 	clr	_UIF_SUSPEND
                                    806 ;	../../../usb/interrupt.c:111: UsbSuspendEvt(USB_MIS_ST & bUMS_SUSPEND); //挂起
      000E3C E5 DA            [12]  807 	mov	a,_USB_MIS_ST
      000E3E 03               [12]  808 	rr	a
      000E3F 03               [12]  809 	rr	a
      000E40 54 01            [12]  810 	anl	a,#0x01
                                    811 ;	assignBit
      000E42 24 FF            [12]  812 	add	a,#0xff
      000E44 E4               [12]  813 	clr	a
      000E45 33               [12]  814 	rlc	a
      000E46 F5 82            [12]  815 	mov	dpl,a
                                    816 ;	../../../usb/interrupt.c:112: }
      000E48 02 04 0A         [24]  817 	ljmp	_UsbSuspendEvt
                                    818 ;------------------------------------------------------------
                                    819 ;Allocation info for local variables in function 'UsbIsr'
                                    820 ;------------------------------------------------------------
                                    821 ;	../../../usb/interrupt.c:119: void UsbIsr()
                                    822 ;	-----------------------------------------
                                    823 ;	 function UsbIsr
                                    824 ;	-----------------------------------------
      000E4B                        825 _UsbIsr:
                                    826 ;	../../../usb/interrupt.c:121: if (UIF_TRANSFER) {
      000E4B 30 D9 03         [24]  827 	jnb	_UIF_TRANSFER,00108$
                                    828 ;	../../../usb/interrupt.c:123: UsbTransfurEventHandler();
      000E4E 02 0D 42         [24]  829 	ljmp	_UsbTransfurEventHandler
      000E51                        830 00108$:
                                    831 ;	../../../usb/interrupt.c:124: } else if (UIF_BUS_RST) {
      000E51 30 D8 03         [24]  832 	jnb	_UIF_BUS_RST,00105$
                                    833 ;	../../../usb/interrupt.c:126: UsbBusResetEventHandler();
      000E54 02 0E 0F         [24]  834 	ljmp	_UsbBusResetEventHandler
      000E57                        835 00105$:
                                    836 ;	../../../usb/interrupt.c:127: } else if (UIF_SUSPEND) {
      000E57 30 DA 03         [24]  837 	jnb	_UIF_SUSPEND,00102$
                                    838 ;	../../../usb/interrupt.c:129: UsbBusSuspendEventHandler();
      000E5A 02 0E 3A         [24]  839 	ljmp	_UsbBusSuspendEventHandler
      000E5D                        840 00102$:
                                    841 ;	../../../usb/interrupt.c:132: USB_INT_FG = 0xFF; //清中断标志
      000E5D 75 D8 FF         [24]  842 	mov	_USB_INT_FG,#0xff
                                    843 ;	../../../usb/interrupt.c:134: }
      000E60 22               [24]  844 	ret
                                    845 	.area CSEG    (CODE)
                                    846 	.area CONST   (CODE)
      0033B5                        847 _EndpointPacketOutHandler:
      0033B5 54 04                  848 	.byte _EP0_OUT, (_EP0_OUT >> 8)
      0033B7 F3 02                  849 	.byte _EP1_OUT, (_EP1_OUT >> 8)
      0033B9 53 04                  850 	.byte _nop, (_nop >> 8)
      0033BB B0 02                  851 	.byte _EP3_OUT, (_EP3_OUT >> 8)
      0033BD D2 2C                  852 	.byte _EP4_OUT, (_EP4_OUT >> 8)
      0033BF                        853 _EndpointPacketInHandler:
      0033BF 79 04                  854 	.byte _EP0_IN, (_EP0_IN >> 8)
      0033C1 5F 08                  855 	.byte _EP1_IN, (_EP1_IN >> 8)
      0033C3 71 08                  856 	.byte _EP2_IN, (_EP2_IN >> 8)
      0033C5 83 08                  857 	.byte _EP3_IN, (_EP3_IN >> 8)
      0033C7 95 08                  858 	.byte _EP4_IN, (_EP4_IN >> 8)
      0033C9                        859 _EndpointPacketSetupHandler:
      0033C9 1B 05                  860 	.byte _EP0_SETUP, (_EP0_SETUP >> 8)
      0033CB 53 04                  861 	.byte _nop, (_nop >> 8)
      0033CD 53 04                  862 	.byte _nop, (_nop >> 8)
      0033CF 53 04                  863 	.byte _nop, (_nop >> 8)
      0033D1 53 04                  864 	.byte _nop, (_nop >> 8)
      0033D3                        865 _EndpointPacketSofHandler:
      0033D3 53 04                  866 	.byte _nop, (_nop >> 8)
      0033D5 53 04                  867 	.byte _nop, (_nop >> 8)
      0033D7 53 04                  868 	.byte _nop, (_nop >> 8)
      0033D9 53 04                  869 	.byte _nop, (_nop >> 8)
      0033DB 53 04                  870 	.byte _nop, (_nop >> 8)
                                    871 	.area XINIT   (CODE)
                                    872 	.area CABS    (ABS,CODE)

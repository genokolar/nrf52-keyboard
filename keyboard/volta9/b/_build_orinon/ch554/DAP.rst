                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module DAP
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _DAP_ProcessVendorCommandEx
                                     12 	.globl _DAP_ProcessVendorCommand
                                     13 	.globl _DelayMs
                                     14 	.globl _DAP_GetFirmwareVersionString
                                     15 	.globl _getSerial
                                     16 	.globl _SWD_Transfer
                                     17 	.globl _SWD_Sequence
                                     18 	.globl _SWJ_Sequence
                                     19 	.globl ___memcpy
                                     20 	.globl _UIF_BUS_RST
                                     21 	.globl _UIF_DETECT
                                     22 	.globl _UIF_TRANSFER
                                     23 	.globl _UIF_SUSPEND
                                     24 	.globl _UIF_HST_SOF
                                     25 	.globl _UIF_FIFO_OV
                                     26 	.globl _U_SIE_FREE
                                     27 	.globl _U_TOG_OK
                                     28 	.globl _U_IS_NAK
                                     29 	.globl _ADC_CHAN0
                                     30 	.globl _ADC_CHAN1
                                     31 	.globl _CMP_CHAN
                                     32 	.globl _ADC_START
                                     33 	.globl _ADC_IF
                                     34 	.globl _CMP_IF
                                     35 	.globl _CMPO
                                     36 	.globl _U1RI
                                     37 	.globl _U1TI
                                     38 	.globl _U1RB8
                                     39 	.globl _U1TB8
                                     40 	.globl _U1REN
                                     41 	.globl _U1SMOD
                                     42 	.globl _U1SM0
                                     43 	.globl _S0_R_FIFO
                                     44 	.globl _S0_T_FIFO
                                     45 	.globl _S0_FREE
                                     46 	.globl _S0_IF_BYTE
                                     47 	.globl _S0_IF_FIRST
                                     48 	.globl _S0_IF_OV
                                     49 	.globl _S0_FST_ACT
                                     50 	.globl _CP_RL2
                                     51 	.globl _C_T2
                                     52 	.globl _TR2
                                     53 	.globl _EXEN2
                                     54 	.globl _TCLK
                                     55 	.globl _RCLK
                                     56 	.globl _EXF2
                                     57 	.globl _CAP1F
                                     58 	.globl _TF2
                                     59 	.globl _RI
                                     60 	.globl _TI
                                     61 	.globl _RB8
                                     62 	.globl _TB8
                                     63 	.globl _REN
                                     64 	.globl _SM2
                                     65 	.globl _SM1
                                     66 	.globl _SM0
                                     67 	.globl _IT0
                                     68 	.globl _IE0
                                     69 	.globl _IT1
                                     70 	.globl _IE1
                                     71 	.globl _TR0
                                     72 	.globl _TF0
                                     73 	.globl _TR1
                                     74 	.globl _TF1
                                     75 	.globl _RXD
                                     76 	.globl _PWM1_
                                     77 	.globl _P3_0
                                     78 	.globl _TXD
                                     79 	.globl _PWM2_
                                     80 	.globl _P3_1
                                     81 	.globl _AIN3
                                     82 	.globl _VBUS1
                                     83 	.globl _INT0
                                     84 	.globl _TXD1_
                                     85 	.globl _P3_2
                                     86 	.globl _INT1
                                     87 	.globl _P3_3
                                     88 	.globl _T0
                                     89 	.globl _RXD1_
                                     90 	.globl _PWM2
                                     91 	.globl _P3_4
                                     92 	.globl _T1
                                     93 	.globl _P3_5
                                     94 	.globl _UDP
                                     95 	.globl _P3_6
                                     96 	.globl _UDM
                                     97 	.globl _P3_7
                                     98 	.globl _TIN0
                                     99 	.globl _CAP1
                                    100 	.globl _T2
                                    101 	.globl _P1_0
                                    102 	.globl _AIN0
                                    103 	.globl _VBUS2
                                    104 	.globl _TIN1
                                    105 	.globl _CAP2
                                    106 	.globl _T2EX
                                    107 	.globl _P1_1
                                    108 	.globl _RXD_
                                    109 	.globl _P1_2
                                    110 	.globl _TXD_
                                    111 	.globl _P1_3
                                    112 	.globl _AIN1
                                    113 	.globl _UCC1
                                    114 	.globl _TIN2
                                    115 	.globl _SCS
                                    116 	.globl _CAP1_
                                    117 	.globl _T2_
                                    118 	.globl _P1_4
                                    119 	.globl _AIN2
                                    120 	.globl _UCC2
                                    121 	.globl _TIN3
                                    122 	.globl _PWM1
                                    123 	.globl _MOSI
                                    124 	.globl _P1_5
                                    125 	.globl _TIN4
                                    126 	.globl _RXD1
                                    127 	.globl _MISO
                                    128 	.globl _P1_6
                                    129 	.globl _TIN5
                                    130 	.globl _TXD1
                                    131 	.globl _SCK
                                    132 	.globl _P1_7
                                    133 	.globl _IE_SPI0
                                    134 	.globl _IE_TKEY
                                    135 	.globl _IE_USB
                                    136 	.globl _IE_ADC
                                    137 	.globl _IE_UART1
                                    138 	.globl _IE_PWMX
                                    139 	.globl _IE_GPIO
                                    140 	.globl _IE_WDOG
                                    141 	.globl _PX0
                                    142 	.globl _PT0
                                    143 	.globl _PX1
                                    144 	.globl _PT1
                                    145 	.globl _PS
                                    146 	.globl _PT2
                                    147 	.globl _PL_FLAG
                                    148 	.globl _PH_FLAG
                                    149 	.globl _EX0
                                    150 	.globl _ET0
                                    151 	.globl _EX1
                                    152 	.globl _ET1
                                    153 	.globl _ES
                                    154 	.globl _ET2
                                    155 	.globl _E_DIS
                                    156 	.globl _EA
                                    157 	.globl _P
                                    158 	.globl _F1
                                    159 	.globl _OV
                                    160 	.globl _RS0
                                    161 	.globl _RS1
                                    162 	.globl _F0
                                    163 	.globl _AC
                                    164 	.globl _CY
                                    165 	.globl _UEP1_DMA_H
                                    166 	.globl _UEP1_DMA_L
                                    167 	.globl _UEP1_DMA
                                    168 	.globl _UEP0_DMA_H
                                    169 	.globl _UEP0_DMA_L
                                    170 	.globl _UEP0_DMA
                                    171 	.globl _UEP2_3_MOD
                                    172 	.globl _UEP4_1_MOD
                                    173 	.globl _UEP3_DMA_H
                                    174 	.globl _UEP3_DMA_L
                                    175 	.globl _UEP3_DMA
                                    176 	.globl _UEP2_DMA_H
                                    177 	.globl _UEP2_DMA_L
                                    178 	.globl _UEP2_DMA
                                    179 	.globl _USB_DEV_AD
                                    180 	.globl _USB_CTRL
                                    181 	.globl _USB_INT_EN
                                    182 	.globl _UEP4_T_LEN
                                    183 	.globl _UEP4_CTRL
                                    184 	.globl _UEP0_T_LEN
                                    185 	.globl _UEP0_CTRL
                                    186 	.globl _USB_RX_LEN
                                    187 	.globl _USB_MIS_ST
                                    188 	.globl _USB_INT_ST
                                    189 	.globl _USB_INT_FG
                                    190 	.globl _UEP3_T_LEN
                                    191 	.globl _UEP3_CTRL
                                    192 	.globl _UEP2_T_LEN
                                    193 	.globl _UEP2_CTRL
                                    194 	.globl _UEP1_T_LEN
                                    195 	.globl _UEP1_CTRL
                                    196 	.globl _UDEV_CTRL
                                    197 	.globl _USB_C_CTRL
                                    198 	.globl _TKEY_DATH
                                    199 	.globl _TKEY_DATL
                                    200 	.globl _TKEY_DAT
                                    201 	.globl _TKEY_CTRL
                                    202 	.globl _ADC_DATA
                                    203 	.globl _ADC_CFG
                                    204 	.globl _ADC_CTRL
                                    205 	.globl _SBAUD1
                                    206 	.globl _SBUF1
                                    207 	.globl _SCON1
                                    208 	.globl _SPI0_SETUP
                                    209 	.globl _SPI0_CK_SE
                                    210 	.globl _SPI0_CTRL
                                    211 	.globl _SPI0_DATA
                                    212 	.globl _SPI0_STAT
                                    213 	.globl _PWM_CK_SE
                                    214 	.globl _PWM_CTRL
                                    215 	.globl _PWM_DATA1
                                    216 	.globl _PWM_DATA2
                                    217 	.globl _T2CAP1H
                                    218 	.globl _T2CAP1L
                                    219 	.globl _T2CAP1
                                    220 	.globl _TH2
                                    221 	.globl _TL2
                                    222 	.globl _T2COUNT
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _RCAP2
                                    226 	.globl _T2MOD
                                    227 	.globl _T2CON
                                    228 	.globl _SBUF
                                    229 	.globl _SCON
                                    230 	.globl _TH1
                                    231 	.globl _TH0
                                    232 	.globl _TL1
                                    233 	.globl _TL0
                                    234 	.globl _TMOD
                                    235 	.globl _TCON
                                    236 	.globl _XBUS_AUX
                                    237 	.globl _PIN_FUNC
                                    238 	.globl _P3_DIR_PU
                                    239 	.globl _P3_MOD_OC
                                    240 	.globl _P3
                                    241 	.globl _P2
                                    242 	.globl _P1_DIR_PU
                                    243 	.globl _P1_MOD_OC
                                    244 	.globl _P1
                                    245 	.globl _ROM_CTRL
                                    246 	.globl _ROM_DATA_H
                                    247 	.globl _ROM_DATA_L
                                    248 	.globl _ROM_DATA
                                    249 	.globl _ROM_ADDR_H
                                    250 	.globl _ROM_ADDR_L
                                    251 	.globl _ROM_ADDR
                                    252 	.globl _GPIO_IE
                                    253 	.globl _IP_EX
                                    254 	.globl _IE_EX
                                    255 	.globl _IP
                                    256 	.globl _IE
                                    257 	.globl _WDOG_COUNT
                                    258 	.globl _RESET_KEEP
                                    259 	.globl _WAKE_CTRL
                                    260 	.globl _CLOCK_CFG
                                    261 	.globl _PCON
                                    262 	.globl _GLOBAL_CFG
                                    263 	.globl _SAFE_MOD
                                    264 	.globl _DPH
                                    265 	.globl _DPL
                                    266 	.globl _SP
                                    267 	.globl _B
                                    268 	.globl _ACC
                                    269 	.globl _PSW
                                    270 	.globl _DAP_Data
                                    271 	.globl _DAP_TransferAbort
                                    272 	.globl _DAP_ProcessCommand
                                    273 	.globl _DAP_ExecuteCommand
                                    274 	.globl _DAP_Setup
                                    275 ;--------------------------------------------------------
                                    276 ; special function registers
                                    277 ;--------------------------------------------------------
                                    278 	.area RSEG    (ABS,DATA)
      000000                        279 	.org 0x0000
                           0000D0   280 _PSW	=	0x00d0
                           0000E0   281 _ACC	=	0x00e0
                           0000F0   282 _B	=	0x00f0
                           000081   283 _SP	=	0x0081
                           000082   284 _DPL	=	0x0082
                           000083   285 _DPH	=	0x0083
                           0000A1   286 _SAFE_MOD	=	0x00a1
                           0000B1   287 _GLOBAL_CFG	=	0x00b1
                           000087   288 _PCON	=	0x0087
                           0000B9   289 _CLOCK_CFG	=	0x00b9
                           0000A9   290 _WAKE_CTRL	=	0x00a9
                           0000FE   291 _RESET_KEEP	=	0x00fe
                           0000FF   292 _WDOG_COUNT	=	0x00ff
                           0000A8   293 _IE	=	0x00a8
                           0000B8   294 _IP	=	0x00b8
                           0000E8   295 _IE_EX	=	0x00e8
                           0000E9   296 _IP_EX	=	0x00e9
                           0000C7   297 _GPIO_IE	=	0x00c7
                           008584   298 _ROM_ADDR	=	0x8584
                           000084   299 _ROM_ADDR_L	=	0x0084
                           000085   300 _ROM_ADDR_H	=	0x0085
                           008F8E   301 _ROM_DATA	=	0x8f8e
                           00008E   302 _ROM_DATA_L	=	0x008e
                           00008F   303 _ROM_DATA_H	=	0x008f
                           000086   304 _ROM_CTRL	=	0x0086
                           000090   305 _P1	=	0x0090
                           000092   306 _P1_MOD_OC	=	0x0092
                           000093   307 _P1_DIR_PU	=	0x0093
                           0000A0   308 _P2	=	0x00a0
                           0000B0   309 _P3	=	0x00b0
                           000096   310 _P3_MOD_OC	=	0x0096
                           000097   311 _P3_DIR_PU	=	0x0097
                           0000C6   312 _PIN_FUNC	=	0x00c6
                           0000A2   313 _XBUS_AUX	=	0x00a2
                           000088   314 _TCON	=	0x0088
                           000089   315 _TMOD	=	0x0089
                           00008A   316 _TL0	=	0x008a
                           00008B   317 _TL1	=	0x008b
                           00008C   318 _TH0	=	0x008c
                           00008D   319 _TH1	=	0x008d
                           000098   320 _SCON	=	0x0098
                           000099   321 _SBUF	=	0x0099
                           0000C8   322 _T2CON	=	0x00c8
                           0000C9   323 _T2MOD	=	0x00c9
                           00CBCA   324 _RCAP2	=	0xcbca
                           0000CA   325 _RCAP2L	=	0x00ca
                           0000CB   326 _RCAP2H	=	0x00cb
                           00CDCC   327 _T2COUNT	=	0xcdcc
                           0000CC   328 _TL2	=	0x00cc
                           0000CD   329 _TH2	=	0x00cd
                           00CFCE   330 _T2CAP1	=	0xcfce
                           0000CE   331 _T2CAP1L	=	0x00ce
                           0000CF   332 _T2CAP1H	=	0x00cf
                           00009B   333 _PWM_DATA2	=	0x009b
                           00009C   334 _PWM_DATA1	=	0x009c
                           00009D   335 _PWM_CTRL	=	0x009d
                           00009E   336 _PWM_CK_SE	=	0x009e
                           0000F8   337 _SPI0_STAT	=	0x00f8
                           0000F9   338 _SPI0_DATA	=	0x00f9
                           0000FA   339 _SPI0_CTRL	=	0x00fa
                           0000FB   340 _SPI0_CK_SE	=	0x00fb
                           0000FC   341 _SPI0_SETUP	=	0x00fc
                           0000C0   342 _SCON1	=	0x00c0
                           0000C1   343 _SBUF1	=	0x00c1
                           0000C2   344 _SBAUD1	=	0x00c2
                           000080   345 _ADC_CTRL	=	0x0080
                           00009A   346 _ADC_CFG	=	0x009a
                           00009F   347 _ADC_DATA	=	0x009f
                           0000C3   348 _TKEY_CTRL	=	0x00c3
                           00C5C4   349 _TKEY_DAT	=	0xc5c4
                           0000C4   350 _TKEY_DATL	=	0x00c4
                           0000C5   351 _TKEY_DATH	=	0x00c5
                           000091   352 _USB_C_CTRL	=	0x0091
                           0000D1   353 _UDEV_CTRL	=	0x00d1
                           0000D2   354 _UEP1_CTRL	=	0x00d2
                           0000D3   355 _UEP1_T_LEN	=	0x00d3
                           0000D4   356 _UEP2_CTRL	=	0x00d4
                           0000D5   357 _UEP2_T_LEN	=	0x00d5
                           0000D6   358 _UEP3_CTRL	=	0x00d6
                           0000D7   359 _UEP3_T_LEN	=	0x00d7
                           0000D8   360 _USB_INT_FG	=	0x00d8
                           0000D9   361 _USB_INT_ST	=	0x00d9
                           0000DA   362 _USB_MIS_ST	=	0x00da
                           0000DB   363 _USB_RX_LEN	=	0x00db
                           0000DC   364 _UEP0_CTRL	=	0x00dc
                           0000DD   365 _UEP0_T_LEN	=	0x00dd
                           0000DE   366 _UEP4_CTRL	=	0x00de
                           0000DF   367 _UEP4_T_LEN	=	0x00df
                           0000E1   368 _USB_INT_EN	=	0x00e1
                           0000E2   369 _USB_CTRL	=	0x00e2
                           0000E3   370 _USB_DEV_AD	=	0x00e3
                           00E5E4   371 _UEP2_DMA	=	0xe5e4
                           0000E4   372 _UEP2_DMA_L	=	0x00e4
                           0000E5   373 _UEP2_DMA_H	=	0x00e5
                           00E7E6   374 _UEP3_DMA	=	0xe7e6
                           0000E6   375 _UEP3_DMA_L	=	0x00e6
                           0000E7   376 _UEP3_DMA_H	=	0x00e7
                           0000EA   377 _UEP4_1_MOD	=	0x00ea
                           0000EB   378 _UEP2_3_MOD	=	0x00eb
                           00EDEC   379 _UEP0_DMA	=	0xedec
                           0000EC   380 _UEP0_DMA_L	=	0x00ec
                           0000ED   381 _UEP0_DMA_H	=	0x00ed
                           00EFEE   382 _UEP1_DMA	=	0xefee
                           0000EE   383 _UEP1_DMA_L	=	0x00ee
                           0000EF   384 _UEP1_DMA_H	=	0x00ef
                                    385 ;--------------------------------------------------------
                                    386 ; special function bits
                                    387 ;--------------------------------------------------------
                                    388 	.area RSEG    (ABS,DATA)
      000000                        389 	.org 0x0000
                           0000D7   390 _CY	=	0x00d7
                           0000D6   391 _AC	=	0x00d6
                           0000D5   392 _F0	=	0x00d5
                           0000D4   393 _RS1	=	0x00d4
                           0000D3   394 _RS0	=	0x00d3
                           0000D2   395 _OV	=	0x00d2
                           0000D1   396 _F1	=	0x00d1
                           0000D0   397 _P	=	0x00d0
                           0000AF   398 _EA	=	0x00af
                           0000AE   399 _E_DIS	=	0x00ae
                           0000AD   400 _ET2	=	0x00ad
                           0000AC   401 _ES	=	0x00ac
                           0000AB   402 _ET1	=	0x00ab
                           0000AA   403 _EX1	=	0x00aa
                           0000A9   404 _ET0	=	0x00a9
                           0000A8   405 _EX0	=	0x00a8
                           0000AF   406 _PH_FLAG	=	0x00af
                           0000AE   407 _PL_FLAG	=	0x00ae
                           0000AD   408 _PT2	=	0x00ad
                           0000AC   409 _PS	=	0x00ac
                           0000AB   410 _PT1	=	0x00ab
                           0000AA   411 _PX1	=	0x00aa
                           0000A9   412 _PT0	=	0x00a9
                           0000A8   413 _PX0	=	0x00a8
                           0000EF   414 _IE_WDOG	=	0x00ef
                           0000EE   415 _IE_GPIO	=	0x00ee
                           0000ED   416 _IE_PWMX	=	0x00ed
                           0000EC   417 _IE_UART1	=	0x00ec
                           0000EB   418 _IE_ADC	=	0x00eb
                           0000EA   419 _IE_USB	=	0x00ea
                           0000E9   420 _IE_TKEY	=	0x00e9
                           0000E8   421 _IE_SPI0	=	0x00e8
                           000097   422 _P1_7	=	0x0097
                           000097   423 _SCK	=	0x0097
                           000097   424 _TXD1	=	0x0097
                           000097   425 _TIN5	=	0x0097
                           000096   426 _P1_6	=	0x0096
                           000096   427 _MISO	=	0x0096
                           000096   428 _RXD1	=	0x0096
                           000096   429 _TIN4	=	0x0096
                           000095   430 _P1_5	=	0x0095
                           000095   431 _MOSI	=	0x0095
                           000095   432 _PWM1	=	0x0095
                           000095   433 _TIN3	=	0x0095
                           000095   434 _UCC2	=	0x0095
                           000095   435 _AIN2	=	0x0095
                           000094   436 _P1_4	=	0x0094
                           000094   437 _T2_	=	0x0094
                           000094   438 _CAP1_	=	0x0094
                           000094   439 _SCS	=	0x0094
                           000094   440 _TIN2	=	0x0094
                           000094   441 _UCC1	=	0x0094
                           000094   442 _AIN1	=	0x0094
                           000093   443 _P1_3	=	0x0093
                           000093   444 _TXD_	=	0x0093
                           000092   445 _P1_2	=	0x0092
                           000092   446 _RXD_	=	0x0092
                           000091   447 _P1_1	=	0x0091
                           000091   448 _T2EX	=	0x0091
                           000091   449 _CAP2	=	0x0091
                           000091   450 _TIN1	=	0x0091
                           000091   451 _VBUS2	=	0x0091
                           000091   452 _AIN0	=	0x0091
                           000090   453 _P1_0	=	0x0090
                           000090   454 _T2	=	0x0090
                           000090   455 _CAP1	=	0x0090
                           000090   456 _TIN0	=	0x0090
                           0000B7   457 _P3_7	=	0x00b7
                           0000B7   458 _UDM	=	0x00b7
                           0000B6   459 _P3_6	=	0x00b6
                           0000B6   460 _UDP	=	0x00b6
                           0000B5   461 _P3_5	=	0x00b5
                           0000B5   462 _T1	=	0x00b5
                           0000B4   463 _P3_4	=	0x00b4
                           0000B4   464 _PWM2	=	0x00b4
                           0000B4   465 _RXD1_	=	0x00b4
                           0000B4   466 _T0	=	0x00b4
                           0000B3   467 _P3_3	=	0x00b3
                           0000B3   468 _INT1	=	0x00b3
                           0000B2   469 _P3_2	=	0x00b2
                           0000B2   470 _TXD1_	=	0x00b2
                           0000B2   471 _INT0	=	0x00b2
                           0000B2   472 _VBUS1	=	0x00b2
                           0000B2   473 _AIN3	=	0x00b2
                           0000B1   474 _P3_1	=	0x00b1
                           0000B1   475 _PWM2_	=	0x00b1
                           0000B1   476 _TXD	=	0x00b1
                           0000B0   477 _P3_0	=	0x00b0
                           0000B0   478 _PWM1_	=	0x00b0
                           0000B0   479 _RXD	=	0x00b0
                           00008F   480 _TF1	=	0x008f
                           00008E   481 _TR1	=	0x008e
                           00008D   482 _TF0	=	0x008d
                           00008C   483 _TR0	=	0x008c
                           00008B   484 _IE1	=	0x008b
                           00008A   485 _IT1	=	0x008a
                           000089   486 _IE0	=	0x0089
                           000088   487 _IT0	=	0x0088
                           00009F   488 _SM0	=	0x009f
                           00009E   489 _SM1	=	0x009e
                           00009D   490 _SM2	=	0x009d
                           00009C   491 _REN	=	0x009c
                           00009B   492 _TB8	=	0x009b
                           00009A   493 _RB8	=	0x009a
                           000099   494 _TI	=	0x0099
                           000098   495 _RI	=	0x0098
                           0000CF   496 _TF2	=	0x00cf
                           0000CF   497 _CAP1F	=	0x00cf
                           0000CE   498 _EXF2	=	0x00ce
                           0000CD   499 _RCLK	=	0x00cd
                           0000CC   500 _TCLK	=	0x00cc
                           0000CB   501 _EXEN2	=	0x00cb
                           0000CA   502 _TR2	=	0x00ca
                           0000C9   503 _C_T2	=	0x00c9
                           0000C8   504 _CP_RL2	=	0x00c8
                           0000FF   505 _S0_FST_ACT	=	0x00ff
                           0000FE   506 _S0_IF_OV	=	0x00fe
                           0000FD   507 _S0_IF_FIRST	=	0x00fd
                           0000FC   508 _S0_IF_BYTE	=	0x00fc
                           0000FB   509 _S0_FREE	=	0x00fb
                           0000FA   510 _S0_T_FIFO	=	0x00fa
                           0000F8   511 _S0_R_FIFO	=	0x00f8
                           0000C7   512 _U1SM0	=	0x00c7
                           0000C5   513 _U1SMOD	=	0x00c5
                           0000C4   514 _U1REN	=	0x00c4
                           0000C3   515 _U1TB8	=	0x00c3
                           0000C2   516 _U1RB8	=	0x00c2
                           0000C1   517 _U1TI	=	0x00c1
                           0000C0   518 _U1RI	=	0x00c0
                           000087   519 _CMPO	=	0x0087
                           000086   520 _CMP_IF	=	0x0086
                           000085   521 _ADC_IF	=	0x0085
                           000084   522 _ADC_START	=	0x0084
                           000083   523 _CMP_CHAN	=	0x0083
                           000081   524 _ADC_CHAN1	=	0x0081
                           000080   525 _ADC_CHAN0	=	0x0080
                           0000DF   526 _U_IS_NAK	=	0x00df
                           0000DE   527 _U_TOG_OK	=	0x00de
                           0000DD   528 _U_SIE_FREE	=	0x00dd
                           0000DC   529 _UIF_FIFO_OV	=	0x00dc
                           0000DB   530 _UIF_HST_SOF	=	0x00db
                           0000DA   531 _UIF_SUSPEND	=	0x00da
                           0000D9   532 _UIF_TRANSFER	=	0x00d9
                           0000D8   533 _UIF_DETECT	=	0x00d8
                           0000D8   534 _UIF_BUS_RST	=	0x00d8
                                    535 ;--------------------------------------------------------
                                    536 ; overlayable register banks
                                    537 ;--------------------------------------------------------
                                    538 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        539 	.ds 8
                                    540 ;--------------------------------------------------------
                                    541 ; overlayable bit register bank
                                    542 ;--------------------------------------------------------
                                    543 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        544 bits:
      000020                        545 	.ds 1
                           008000   546 	b0 = bits[0]
                           008100   547 	b1 = bits[1]
                           008200   548 	b2 = bits[2]
                           008300   549 	b3 = bits[3]
                           008400   550 	b4 = bits[4]
                           008500   551 	b5 = bits[5]
                           008600   552 	b6 = bits[6]
                           008700   553 	b7 = bits[7]
                                    554 ;--------------------------------------------------------
                                    555 ; internal ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area DSEG    (DATA)
      000028                        558 _DAP_TransferAbort::
      000028                        559 	.ds 1
      000029                        560 _request:
      000029                        561 	.ds 3
      00002C                        562 _response:
      00002C                        563 	.ds 3
                                    564 ;--------------------------------------------------------
                                    565 ; overlayable items in internal ram 
                                    566 ;--------------------------------------------------------
                                    567 ;--------------------------------------------------------
                                    568 ; indirectly addressable internal ram data
                                    569 ;--------------------------------------------------------
                                    570 	.area ISEG    (DATA)
                                    571 ;--------------------------------------------------------
                                    572 ; absolute internal ram data
                                    573 ;--------------------------------------------------------
                                    574 	.area IABS    (ABS,DATA)
                                    575 	.area IABS    (ABS,DATA)
                                    576 ;--------------------------------------------------------
                                    577 ; bit data
                                    578 ;--------------------------------------------------------
                                    579 	.area BSEG    (BIT)
                                    580 ;--------------------------------------------------------
                                    581 ; paged external ram data
                                    582 ;--------------------------------------------------------
                                    583 	.area PSEG    (PAG,XDATA)
                                    584 ;--------------------------------------------------------
                                    585 ; external ram data
                                    586 ;--------------------------------------------------------
                                    587 	.area XSEG    (XDATA)
      0002C0                        588 _DAP_Data::
      0002C0                        589 	.ds 25
                                    590 ;--------------------------------------------------------
                                    591 ; absolute external ram data
                                    592 ;--------------------------------------------------------
                                    593 	.area XABS    (ABS,XDATA)
                                    594 ;--------------------------------------------------------
                                    595 ; external initialized ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area XISEG   (XDATA)
                                    598 	.area HOME    (CODE)
                                    599 	.area GSINIT0 (CODE)
                                    600 	.area GSINIT1 (CODE)
                                    601 	.area GSINIT2 (CODE)
                                    602 	.area GSINIT3 (CODE)
                                    603 	.area GSINIT4 (CODE)
                                    604 	.area GSINIT5 (CODE)
                                    605 	.area GSINIT  (CODE)
                                    606 	.area GSFINAL (CODE)
                                    607 	.area CSEG    (CODE)
                                    608 ;--------------------------------------------------------
                                    609 ; global & static initialisations
                                    610 ;--------------------------------------------------------
                                    611 	.area HOME    (CODE)
                                    612 	.area GSINIT  (CODE)
                                    613 	.area GSFINAL (CODE)
                                    614 	.area GSINIT  (CODE)
                                    615 ;--------------------------------------------------------
                                    616 ; Home
                                    617 ;--------------------------------------------------------
                                    618 	.area HOME    (CODE)
                                    619 	.area HOME    (CODE)
                                    620 ;--------------------------------------------------------
                                    621 ; code
                                    622 ;--------------------------------------------------------
                                    623 	.area CSEG    (CODE)
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'DAP_GetFirmwareVersionString'
                                    626 ;------------------------------------------------------------
                                    627 ;str                       Allocated to registers r5 r6 r7 
                                    628 ;------------------------------------------------------------
                                    629 ;	../../../usb/dap_strings.h:47: uint8_t DAP_GetFirmwareVersionString(char* str)
                                    630 ;	-----------------------------------------
                                    631 ;	 function DAP_GetFirmwareVersionString
                                    632 ;	-----------------------------------------
      0013B1                        633 _DAP_GetFirmwareVersionString:
                           000007   634 	ar7 = 0x07
                           000006   635 	ar6 = 0x06
                           000005   636 	ar5 = 0x05
                           000004   637 	ar4 = 0x04
                           000003   638 	ar3 = 0x03
                           000002   639 	ar2 = 0x02
                           000001   640 	ar1 = 0x01
                           000000   641 	ar0 = 0x00
      0013B1 AD 82            [24]  642 	mov	r5,dpl
      0013B3 AE 83            [24]  643 	mov	r6,dph
      0013B5 AF F0            [24]  644 	mov	r7,b
                                    645 ;	../../../usb/dap_strings.h:50: memcpy(str, VER, sizeof(VER));
      0013B7 74 05            [12]  646 	mov	a,#0x05
      0013B9 C0 E0            [24]  647 	push	acc
      0013BB E4               [12]  648 	clr	a
      0013BC C0 E0            [24]  649 	push	acc
      0013BE 74 80            [12]  650 	mov	a,#___str_0
      0013C0 C0 E0            [24]  651 	push	acc
      0013C2 74 36            [12]  652 	mov	a,#(___str_0 >> 8)
      0013C4 C0 E0            [24]  653 	push	acc
      0013C6 74 80            [12]  654 	mov	a,#0x80
      0013C8 C0 E0            [24]  655 	push	acc
      0013CA 8D 82            [24]  656 	mov	dpl,r5
      0013CC 8E 83            [24]  657 	mov	dph,r6
      0013CE 8F F0            [24]  658 	mov	b,r7
      0013D0 12 32 20         [24]  659 	lcall	___memcpy
      0013D3 E5 81            [12]  660 	mov	a,sp
      0013D5 24 FB            [12]  661 	add	a,#0xfb
      0013D7 F5 81            [12]  662 	mov	sp,a
                                    663 ;	../../../usb/dap_strings.h:51: return sizeof(VER);
      0013D9 75 82 05         [24]  664 	mov	dpl,#0x05
                                    665 ;	../../../usb/dap_strings.h:52: }
      0013DC 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'DAP_Info'
                                    669 ;------------------------------------------------------------
                                    670 ;info                      Allocated to stack - _bp -5
                                    671 ;id                        Allocated to registers r7 
                                    672 ;length                    Allocated to registers r6 
                                    673 ;------------------------------------------------------------
                                    674 ;	../../../usb/DAP.c:79: static uint8_t DAP_Info(uint8_t id, uint8_t* info)
                                    675 ;	-----------------------------------------
                                    676 ;	 function DAP_Info
                                    677 ;	-----------------------------------------
      0013DD                        678 _DAP_Info:
      0013DD C0 1F            [24]  679 	push	_bp
      0013DF 85 81 1F         [24]  680 	mov	_bp,sp
      0013E2 AF 82            [24]  681 	mov	r7,dpl
                                    682 ;	../../../usb/DAP.c:81: uint8_t length = 0U;
      0013E4 7E 00            [12]  683 	mov	r6,#0x00
                                    684 ;	../../../usb/DAP.c:83: switch (id) {
      0013E6 BF 01 02         [24]  685 	cjne	r7,#0x01,00160$
      0013E9 80 3A            [24]  686 	sjmp	00101$
      0013EB                        687 00160$:
      0013EB BF 02 02         [24]  688 	cjne	r7,#0x02,00161$
      0013EE 80 3A            [24]  689 	sjmp	00102$
      0013F0                        690 00161$:
      0013F0 BF 03 02         [24]  691 	cjne	r7,#0x03,00162$
      0013F3 80 3A            [24]  692 	sjmp	00103$
      0013F5                        693 00162$:
      0013F5 BF 04 02         [24]  694 	cjne	r7,#0x04,00163$
      0013F8 80 4B            [24]  695 	sjmp	00104$
      0013FA                        696 00163$:
      0013FA BF 05 03         [24]  697 	cjne	r7,#0x05,00164$
      0013FD 02 14 BC         [24]  698 	ljmp	00113$
      001400                        699 00164$:
      001400 BF 06 03         [24]  700 	cjne	r7,#0x06,00165$
      001403 02 14 BC         [24]  701 	ljmp	00113$
      001406                        702 00165$:
      001406 BF F0 02         [24]  703 	cjne	r7,#0xf0,00166$
      001409 80 50            [24]  704 	sjmp	00107$
      00140B                        705 00166$:
      00140B BF F1 03         [24]  706 	cjne	r7,#0xf1,00167$
      00140E 02 14 BC         [24]  707 	ljmp	00113$
      001411                        708 00167$:
      001411 BF FD 03         [24]  709 	cjne	r7,#0xfd,00168$
      001414 02 14 BC         [24]  710 	ljmp	00113$
      001417                        711 00168$:
      001417 BF FE 03         [24]  712 	cjne	r7,#0xfe,00169$
      00141A 02 14 A2         [24]  713 	ljmp	00111$
      00141D                        714 00169$:
      00141D BF FF 02         [24]  715 	cjne	r7,#0xff,00170$
      001420 80 55            [24]  716 	sjmp	00110$
      001422                        717 00170$:
      001422 02 14 BC         [24]  718 	ljmp	00113$
                                    719 ;	../../../usb/DAP.c:84: case DAP_ID_VENDOR:
      001425                        720 00101$:
                                    721 ;	../../../usb/DAP.c:85: length = DAP_GetVendorString((char*)info);
      001425 7E 00            [12]  722 	mov	r6,#0x00
                                    723 ;	../../../usb/DAP.c:86: break;
      001427 02 14 BC         [24]  724 	ljmp	00113$
                                    725 ;	../../../usb/DAP.c:87: case DAP_ID_PRODUCT:
      00142A                        726 00102$:
                                    727 ;	../../../usb/DAP.c:88: length = DAP_GetProductString((char*)info);
      00142A 7E 00            [12]  728 	mov	r6,#0x00
                                    729 ;	../../../usb/DAP.c:89: break;
      00142C 02 14 BC         [24]  730 	ljmp	00113$
                                    731 ;	../../../usb/DAP.c:90: case DAP_ID_SER_NUM:
      00142F                        732 00103$:
                                    733 ;	../../../usb/DAP.c:91: length = DAP_GetSerNumString((char*)info);
      00142F E5 1F            [12]  734 	mov	a,_bp
      001431 24 FB            [12]  735 	add	a,#0xfb
      001433 F8               [12]  736 	mov	r0,a
      001434 86 82            [24]  737 	mov	dpl,@r0
      001436 08               [12]  738 	inc	r0
      001437 86 83            [24]  739 	mov	dph,@r0
      001439 08               [12]  740 	inc	r0
      00143A 86 F0            [24]  741 	mov	b,@r0
      00143C 12 0F 1B         [24]  742 	lcall	_getSerial
      00143F AF 82            [24]  743 	mov	r7,dpl
      001441 8F 06            [24]  744 	mov	ar6,r7
                                    745 ;	../../../usb/DAP.c:92: break;
                                    746 ;	../../../usb/DAP.c:93: case DAP_ID_FW_VER: {
      001443 80 77            [24]  747 	sjmp	00113$
      001445                        748 00104$:
                                    749 ;	../../../usb/DAP.c:95: length = DAP_GetFirmwareVersionString((char*)info);
      001445 E5 1F            [12]  750 	mov	a,_bp
      001447 24 FB            [12]  751 	add	a,#0xfb
      001449 F8               [12]  752 	mov	r0,a
      00144A 86 82            [24]  753 	mov	dpl,@r0
      00144C 08               [12]  754 	inc	r0
      00144D 86 83            [24]  755 	mov	dph,@r0
      00144F 08               [12]  756 	inc	r0
      001450 86 F0            [24]  757 	mov	b,@r0
      001452 12 13 B1         [24]  758 	lcall	_DAP_GetFirmwareVersionString
      001455 AF 82            [24]  759 	mov	r7,dpl
      001457 8F 06            [24]  760 	mov	ar6,r7
                                    761 ;	../../../usb/DAP.c:100: break;
                                    762 ;	../../../usb/DAP.c:114: case DAP_ID_CAPABILITIES:
      001459 80 61            [24]  763 	sjmp	00113$
      00145B                        764 00107$:
                                    765 ;	../../../usb/DAP.c:115: info[0] = ((DAP_SWD != 0) ? (1U << 0) : 0U)
      00145B E5 1F            [12]  766 	mov	a,_bp
      00145D 24 FB            [12]  767 	add	a,#0xfb
      00145F F8               [12]  768 	mov	r0,a
      001460 86 04            [24]  769 	mov	ar4,@r0
      001462 08               [12]  770 	inc	r0
      001463 86 05            [24]  771 	mov	ar5,@r0
      001465 08               [12]  772 	inc	r0
      001466 86 07            [24]  773 	mov	ar7,@r0
      001468 8C 82            [24]  774 	mov	dpl,r4
      00146A 8D 83            [24]  775 	mov	dph,r5
      00146C 8F F0            [24]  776 	mov	b,r7
      00146E 74 11            [12]  777 	mov	a,#0x11
      001470 12 30 FC         [24]  778 	lcall	__gptrput
                                    779 ;	../../../usb/DAP.c:123: length = 1U;
      001473 7E 01            [12]  780 	mov	r6,#0x01
                                    781 ;	../../../usb/DAP.c:124: break;
                                    782 ;	../../../usb/DAP.c:129: case DAP_ID_PACKET_SIZE:
      001475 80 45            [24]  783 	sjmp	00113$
      001477                        784 00110$:
                                    785 ;	../../../usb/DAP.c:130: info[0] = (uint8_t)(DAP_PACKET_SIZE >> 0);
      001477 E5 1F            [12]  786 	mov	a,_bp
      001479 24 FB            [12]  787 	add	a,#0xfb
      00147B F8               [12]  788 	mov	r0,a
      00147C 86 04            [24]  789 	mov	ar4,@r0
      00147E 08               [12]  790 	inc	r0
      00147F 86 05            [24]  791 	mov	ar5,@r0
      001481 08               [12]  792 	inc	r0
      001482 86 07            [24]  793 	mov	ar7,@r0
      001484 8C 82            [24]  794 	mov	dpl,r4
      001486 8D 83            [24]  795 	mov	dph,r5
      001488 8F F0            [24]  796 	mov	b,r7
      00148A 74 40            [12]  797 	mov	a,#0x40
      00148C 12 30 FC         [24]  798 	lcall	__gptrput
                                    799 ;	../../../usb/DAP.c:131: info[1] = (uint8_t)(DAP_PACKET_SIZE >> 8);
      00148F 0C               [12]  800 	inc	r4
      001490 BC 00 01         [24]  801 	cjne	r4,#0x00,00171$
      001493 0D               [12]  802 	inc	r5
      001494                        803 00171$:
      001494 8C 82            [24]  804 	mov	dpl,r4
      001496 8D 83            [24]  805 	mov	dph,r5
      001498 8F F0            [24]  806 	mov	b,r7
      00149A E4               [12]  807 	clr	a
      00149B 12 30 FC         [24]  808 	lcall	__gptrput
                                    809 ;	../../../usb/DAP.c:132: length = 2U;
      00149E 7E 02            [12]  810 	mov	r6,#0x02
                                    811 ;	../../../usb/DAP.c:133: break;
                                    812 ;	../../../usb/DAP.c:134: case DAP_ID_PACKET_COUNT:
      0014A0 80 1A            [24]  813 	sjmp	00113$
      0014A2                        814 00111$:
                                    815 ;	../../../usb/DAP.c:135: info[0] = DAP_PACKET_COUNT;
      0014A2 E5 1F            [12]  816 	mov	a,_bp
      0014A4 24 FB            [12]  817 	add	a,#0xfb
      0014A6 F8               [12]  818 	mov	r0,a
      0014A7 86 04            [24]  819 	mov	ar4,@r0
      0014A9 08               [12]  820 	inc	r0
      0014AA 86 05            [24]  821 	mov	ar5,@r0
      0014AC 08               [12]  822 	inc	r0
      0014AD 86 07            [24]  823 	mov	ar7,@r0
      0014AF 8C 82            [24]  824 	mov	dpl,r4
      0014B1 8D 83            [24]  825 	mov	dph,r5
      0014B3 8F F0            [24]  826 	mov	b,r7
      0014B5 74 01            [12]  827 	mov	a,#0x01
      0014B7 12 30 FC         [24]  828 	lcall	__gptrput
                                    829 ;	../../../usb/DAP.c:136: length = 1U;
      0014BA 7E 01            [12]  830 	mov	r6,#0x01
                                    831 ;	../../../usb/DAP.c:140: }
      0014BC                        832 00113$:
                                    833 ;	../../../usb/DAP.c:142: return (length);
      0014BC 8E 82            [24]  834 	mov	dpl,r6
                                    835 ;	../../../usb/DAP.c:143: }
      0014BE D0 1F            [24]  836 	pop	_bp
      0014C0 22               [24]  837 	ret
                                    838 ;------------------------------------------------------------
                                    839 ;Allocation info for local variables in function 'DAP_Delay'
                                    840 ;------------------------------------------------------------
                                    841 ;delay                     Allocated to registers r5 r7 
                                    842 ;------------------------------------------------------------
                                    843 ;	../../../usb/DAP.c:150: static uint16_t DAP_Delay()
                                    844 ;	-----------------------------------------
                                    845 ;	 function DAP_Delay
                                    846 ;	-----------------------------------------
      0014C1                        847 _DAP_Delay:
                                    848 ;	../../../usb/DAP.c:154: delay = (uint16_t)(*(request + 0)) | (uint16_t)(*(request + 1) << 8);
      0014C1 AD 29            [24]  849 	mov	r5,_request
      0014C3 AE 2A            [24]  850 	mov	r6,(_request + 1)
      0014C5 AF 2B            [24]  851 	mov	r7,(_request + 2)
      0014C7 8D 82            [24]  852 	mov	dpl,r5
      0014C9 8E 83            [24]  853 	mov	dph,r6
      0014CB 8F F0            [24]  854 	mov	b,r7
      0014CD 12 33 25         [24]  855 	lcall	__gptrget
      0014D0 FD               [12]  856 	mov	r5,a
      0014D1 7F 00            [12]  857 	mov	r7,#0x00
      0014D3 74 01            [12]  858 	mov	a,#0x01
      0014D5 25 29            [12]  859 	add	a,_request
      0014D7 FB               [12]  860 	mov	r3,a
      0014D8 E4               [12]  861 	clr	a
      0014D9 35 2A            [12]  862 	addc	a,(_request + 1)
      0014DB FC               [12]  863 	mov	r4,a
      0014DC AE 2B            [24]  864 	mov	r6,(_request + 2)
      0014DE 8B 82            [24]  865 	mov	dpl,r3
      0014E0 8C 83            [24]  866 	mov	dph,r4
      0014E2 8E F0            [24]  867 	mov	b,r6
      0014E4 12 33 25         [24]  868 	lcall	__gptrget
      0014E7 FE               [12]  869 	mov	r6,a
      0014E8 E4               [12]  870 	clr	a
      0014E9 42 05            [12]  871 	orl	ar5,a
      0014EB EE               [12]  872 	mov	a,r6
      0014EC 42 07            [12]  873 	orl	ar7,a
                                    874 ;	../../../usb/DAP.c:155: DelayMs(delay);
      0014EE 8D 82            [24]  875 	mov	dpl,r5
      0014F0 8F 83            [24]  876 	mov	dph,r7
      0014F2 12 0A 3B         [24]  877 	lcall	_DelayMs
                                    878 ;	../../../usb/DAP.c:157: *response = DAP_OK;
      0014F5 AD 2C            [24]  879 	mov	r5,_response
      0014F7 AE 2D            [24]  880 	mov	r6,(_response + 1)
      0014F9 AF 2E            [24]  881 	mov	r7,(_response + 2)
      0014FB 8D 82            [24]  882 	mov	dpl,r5
      0014FD 8E 83            [24]  883 	mov	dph,r6
      0014FF 8F F0            [24]  884 	mov	b,r7
      001501 E4               [12]  885 	clr	a
      001502 12 30 FC         [24]  886 	lcall	__gptrput
                                    887 ;	../../../usb/DAP.c:158: return (((uint16_t)2U << 8) | 1U);
      001505 90 02 01         [24]  888 	mov	dptr,#0x0201
                                    889 ;	../../../usb/DAP.c:159: }
      001508 22               [24]  890 	ret
                                    891 ;------------------------------------------------------------
                                    892 ;Allocation info for local variables in function 'DAP_HostStatus'
                                    893 ;------------------------------------------------------------
                                    894 ;	../../../usb/DAP.c:166: static uint16_t DAP_HostStatus()
                                    895 ;	-----------------------------------------
                                    896 ;	 function DAP_HostStatus
                                    897 ;	-----------------------------------------
      001509                        898 _DAP_HostStatus:
                                    899 ;	../../../usb/DAP.c:168: switch (*request) {
      001509 AD 29            [24]  900 	mov	r5,_request
      00150B AE 2A            [24]  901 	mov	r6,(_request + 1)
      00150D AF 2B            [24]  902 	mov	r7,(_request + 2)
      00150F 8D 82            [24]  903 	mov	dpl,r5
      001511 8E 83            [24]  904 	mov	dph,r6
      001513 8F F0            [24]  905 	mov	b,r7
      001515 12 33 25         [24]  906 	lcall	__gptrget
      001518 FF               [12]  907 	mov	r7,a
      001519 60 1A            [24]  908 	jz	00104$
      00151B BF 01 02         [24]  909 	cjne	r7,#0x01,00116$
      00151E 80 15            [24]  910 	sjmp	00104$
      001520                        911 00116$:
                                    912 ;	../../../usb/DAP.c:176: *response = DAP_ERROR;
      001520 AD 2C            [24]  913 	mov	r5,_response
      001522 AE 2D            [24]  914 	mov	r6,(_response + 1)
      001524 AF 2E            [24]  915 	mov	r7,(_response + 2)
      001526 8D 82            [24]  916 	mov	dpl,r5
      001528 8E 83            [24]  917 	mov	dph,r6
      00152A 8F F0            [24]  918 	mov	b,r7
      00152C 74 FF            [12]  919 	mov	a,#0xff
      00152E 12 30 FC         [24]  920 	lcall	__gptrput
                                    921 ;	../../../usb/DAP.c:177: return (((uint16_t)2U << 8) | 1U);
      001531 90 02 01         [24]  922 	mov	dptr,#0x0201
                                    923 ;	../../../usb/DAP.c:178: }
      001534 22               [24]  924 	ret
      001535                        925 00104$:
                                    926 ;	../../../usb/DAP.c:180: *response = DAP_OK;
      001535 AD 2C            [24]  927 	mov	r5,_response
      001537 AE 2D            [24]  928 	mov	r6,(_response + 1)
      001539 AF 2E            [24]  929 	mov	r7,(_response + 2)
      00153B 8D 82            [24]  930 	mov	dpl,r5
      00153D 8E 83            [24]  931 	mov	dph,r6
      00153F 8F F0            [24]  932 	mov	b,r7
      001541 E4               [12]  933 	clr	a
      001542 12 30 FC         [24]  934 	lcall	__gptrput
                                    935 ;	../../../usb/DAP.c:181: return (((uint16_t)2U << 8) | 1U);
      001545 90 02 01         [24]  936 	mov	dptr,#0x0201
                                    937 ;	../../../usb/DAP.c:182: }
      001548 22               [24]  938 	ret
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'DAP_Connect'
                                    941 ;------------------------------------------------------------
                                    942 ;port                      Allocated to registers r7 
                                    943 ;------------------------------------------------------------
                                    944 ;	../../../usb/DAP.c:189: static uint16_t DAP_Connect()
                                    945 ;	-----------------------------------------
                                    946 ;	 function DAP_Connect
                                    947 ;	-----------------------------------------
      001549                        948 _DAP_Connect:
                                    949 ;	../../../usb/DAP.c:193: if (*request == DAP_PORT_AUTODETECT) {
      001549 AD 29            [24]  950 	mov	r5,_request
      00154B AE 2A            [24]  951 	mov	r6,(_request + 1)
      00154D AF 2B            [24]  952 	mov	r7,(_request + 2)
      00154F 8D 82            [24]  953 	mov	dpl,r5
      001551 8E 83            [24]  954 	mov	dph,r6
      001553 8F F0            [24]  955 	mov	b,r7
      001555 12 33 25         [24]  956 	lcall	__gptrget
      001558 70 04            [24]  957 	jnz	00102$
                                    958 ;	../../../usb/DAP.c:194: port = DAP_DEFAULT_PORT;
      00155A 7F 01            [12]  959 	mov	r7,#0x01
      00155C 80 10            [24]  960 	sjmp	00103$
      00155E                        961 00102$:
                                    962 ;	../../../usb/DAP.c:196: port = *request;
      00155E AC 29            [24]  963 	mov	r4,_request
      001560 AD 2A            [24]  964 	mov	r5,(_request + 1)
      001562 AE 2B            [24]  965 	mov	r6,(_request + 2)
      001564 8C 82            [24]  966 	mov	dpl,r4
      001566 8D 83            [24]  967 	mov	dph,r5
      001568 8E F0            [24]  968 	mov	b,r6
      00156A 12 33 25         [24]  969 	lcall	__gptrget
      00156D FF               [12]  970 	mov	r7,a
      00156E                        971 00103$:
                                    972 ;	../../../usb/DAP.c:199: switch (port) {
      00156E BF 01 18         [24]  973 	cjne	r7,#0x01,00108$
                                    974 ;	../../../usb/DAP.c:201: DAP_Data.debug_port = DAP_PORT_SWD;
      001571 90 02 C0         [24]  975 	mov	dptr,#_DAP_Data
      001574 74 01            [12]  976 	mov	a,#0x01
      001576 F0               [24]  977 	movx	@dptr,a
                                    978 ;	../../../usb/DAP.c:202: PORT_SWD_SETUP();
                                    979 ;	assignBit
      001577 D2 90            [12]  980 	setb	_T2
                                    981 ;	assignBit
      001579 D2 91            [12]  982 	setb	_T2EX
      00157B 43 92 01         [24]  983 	orl	_P1_MOD_OC,#0x01
      00157E 43 93 01         [24]  984 	orl	_P1_DIR_PU,#0x01
      001581 43 92 02         [24]  985 	orl	_P1_MOD_OC,#0x02
      001584 43 93 02         [24]  986 	orl	_P1_DIR_PU,#0x02
                                    987 ;	../../../usb/DAP.c:203: break;
                                    988 ;	../../../usb/DAP.c:204: default:
      001587 80 02            [24]  989 	sjmp	00109$
      001589                        990 00108$:
                                    991 ;	../../../usb/DAP.c:205: port = DAP_PORT_DISABLED;
      001589 7F 00            [12]  992 	mov	r7,#0x00
                                    993 ;	../../../usb/DAP.c:207: }
      00158B                        994 00109$:
                                    995 ;	../../../usb/DAP.c:209: *response = port;
      00158B AC 2C            [24]  996 	mov	r4,_response
      00158D AD 2D            [24]  997 	mov	r5,(_response + 1)
      00158F AE 2E            [24]  998 	mov	r6,(_response + 2)
      001591 8C 82            [24]  999 	mov	dpl,r4
      001593 8D 83            [24] 1000 	mov	dph,r5
      001595 8E F0            [24] 1001 	mov	b,r6
      001597 EF               [12] 1002 	mov	a,r7
      001598 12 30 FC         [24] 1003 	lcall	__gptrput
                                   1004 ;	../../../usb/DAP.c:210: return (((uint16_t)1U << 8) | 1U);
      00159B 90 01 01         [24] 1005 	mov	dptr,#0x0101
                                   1006 ;	../../../usb/DAP.c:211: }
      00159E 22               [24] 1007 	ret
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'DAP_Disconnect'
                                   1010 ;------------------------------------------------------------
                                   1011 ;	../../../usb/DAP.c:216: static uint8_t DAP_Disconnect()
                                   1012 ;	-----------------------------------------
                                   1013 ;	 function DAP_Disconnect
                                   1014 ;	-----------------------------------------
      00159F                       1015 _DAP_Disconnect:
                                   1016 ;	../../../usb/DAP.c:218: DAP_Data.debug_port = DAP_PORT_DISABLED;
      00159F 90 02 C0         [24] 1017 	mov	dptr,#_DAP_Data
      0015A2 E4               [12] 1018 	clr	a
      0015A3 F0               [24] 1019 	movx	@dptr,a
                                   1020 ;	../../../usb/DAP.c:219: PORT_OFF();
      0015A4 53 92 FE         [24] 1021 	anl	_P1_MOD_OC,#0xfe
      0015A7 53 93 FE         [24] 1022 	anl	_P1_DIR_PU,#0xfe
      0015AA 53 92 FD         [24] 1023 	anl	_P1_MOD_OC,#0xfd
      0015AD 53 93 FD         [24] 1024 	anl	_P1_DIR_PU,#0xfd
                                   1025 ;	../../../usb/DAP.c:221: *response = DAP_OK;
      0015B0 AD 2C            [24] 1026 	mov	r5,_response
      0015B2 AE 2D            [24] 1027 	mov	r6,(_response + 1)
      0015B4 AF 2E            [24] 1028 	mov	r7,(_response + 2)
      0015B6 8D 82            [24] 1029 	mov	dpl,r5
      0015B8 8E 83            [24] 1030 	mov	dph,r6
      0015BA 8F F0            [24] 1031 	mov	b,r7
      0015BC E4               [12] 1032 	clr	a
      0015BD 12 30 FC         [24] 1033 	lcall	__gptrput
                                   1034 ;	../../../usb/DAP.c:222: return (1U);
      0015C0 75 82 01         [24] 1035 	mov	dpl,#0x01
                                   1036 ;	../../../usb/DAP.c:223: }
      0015C3 22               [24] 1037 	ret
                                   1038 ;------------------------------------------------------------
                                   1039 ;Allocation info for local variables in function 'DAP_ResetTarget'
                                   1040 ;------------------------------------------------------------
                                   1041 ;	../../../usb/DAP.c:228: static uint8_t DAP_ResetTarget()
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function DAP_ResetTarget
                                   1044 ;	-----------------------------------------
      0015C4                       1045 _DAP_ResetTarget:
                                   1046 ;	../../../usb/DAP.c:230: *(response + 1) = RESET_TARGET();
      0015C4 74 01            [12] 1047 	mov	a,#0x01
      0015C6 25 2C            [12] 1048 	add	a,_response
      0015C8 FD               [12] 1049 	mov	r5,a
      0015C9 E4               [12] 1050 	clr	a
      0015CA 35 2D            [12] 1051 	addc	a,(_response + 1)
      0015CC FE               [12] 1052 	mov	r6,a
      0015CD AF 2E            [24] 1053 	mov	r7,(_response + 2)
      0015CF 8D 82            [24] 1054 	mov	dpl,r5
      0015D1 8E 83            [24] 1055 	mov	dph,r6
      0015D3 8F F0            [24] 1056 	mov	b,r7
      0015D5 E4               [12] 1057 	clr	a
      0015D6 12 30 FC         [24] 1058 	lcall	__gptrput
                                   1059 ;	../../../usb/DAP.c:231: *(response + 0) = DAP_OK;
      0015D9 AD 2C            [24] 1060 	mov	r5,_response
      0015DB AE 2D            [24] 1061 	mov	r6,(_response + 1)
      0015DD AF 2E            [24] 1062 	mov	r7,(_response + 2)
      0015DF 8D 82            [24] 1063 	mov	dpl,r5
      0015E1 8E 83            [24] 1064 	mov	dph,r6
      0015E3 8F F0            [24] 1065 	mov	b,r7
      0015E5 12 30 FC         [24] 1066 	lcall	__gptrput
                                   1067 ;	../../../usb/DAP.c:232: return (2U);
      0015E8 75 82 02         [24] 1068 	mov	dpl,#0x02
                                   1069 ;	../../../usb/DAP.c:233: }
      0015EB 22               [24] 1070 	ret
                                   1071 ;------------------------------------------------------------
                                   1072 ;Allocation info for local variables in function 'DAP_SWJ_Pins'
                                   1073 ;------------------------------------------------------------
                                   1074 ;value                     Allocated to registers 
                                   1075 ;select                    Allocated to registers r6 
                                   1076 ;wait                      Allocated to registers r5 
                                   1077 ;sloc0                     Allocated to stack - _bp +7
                                   1078 ;sloc1                     Allocated to stack - _bp +9
                                   1079 ;sloc2                     Allocated to stack - _bp +4
                                   1080 ;sloc3                     Allocated to stack - _bp +5
                                   1081 ;sloc4                     Allocated to stack - _bp +1
                                   1082 ;sloc5                     Allocated to stack - _bp +2
                                   1083 ;------------------------------------------------------------
                                   1084 ;	../../../usb/DAP.c:240: static uint16_t DAP_SWJ_Pins()
                                   1085 ;	-----------------------------------------
                                   1086 ;	 function DAP_SWJ_Pins
                                   1087 ;	-----------------------------------------
      0015EC                       1088 _DAP_SWJ_Pins:
      0015EC C0 1F            [24] 1089 	push	_bp
      0015EE E5 81            [12] 1090 	mov	a,sp
      0015F0 F5 1F            [12] 1091 	mov	_bp,a
      0015F2 24 0A            [12] 1092 	add	a,#0x0a
      0015F4 F5 81            [12] 1093 	mov	sp,a
                                   1094 ;	../../../usb/DAP.c:246: value = *(request + 0);
      0015F6 AD 29            [24] 1095 	mov	r5,_request
      0015F8 AE 2A            [24] 1096 	mov	r6,(_request + 1)
      0015FA AF 2B            [24] 1097 	mov	r7,(_request + 2)
      0015FC 8D 82            [24] 1098 	mov	dpl,r5
      0015FE 8E 83            [24] 1099 	mov	dph,r6
      001600 8F F0            [24] 1100 	mov	b,r7
      001602 12 33 25         [24] 1101 	lcall	__gptrget
      001605 FF               [12] 1102 	mov	r7,a
                                   1103 ;	../../../usb/DAP.c:247: select = *(request + 1);
      001606 74 01            [12] 1104 	mov	a,#0x01
      001608 25 29            [12] 1105 	add	a,_request
      00160A FC               [12] 1106 	mov	r4,a
      00160B E4               [12] 1107 	clr	a
      00160C 35 2A            [12] 1108 	addc	a,(_request + 1)
      00160E FD               [12] 1109 	mov	r5,a
      00160F AE 2B            [24] 1110 	mov	r6,(_request + 2)
      001611 8C 82            [24] 1111 	mov	dpl,r4
      001613 8D 83            [24] 1112 	mov	dph,r5
      001615 8E F0            [24] 1113 	mov	b,r6
      001617 12 33 25         [24] 1114 	lcall	__gptrget
      00161A FE               [12] 1115 	mov	r6,a
                                   1116 ;	../../../usb/DAP.c:248: wait = (*(request + 2)) | (*(request + 3)) | (*(request + 4)) | (*(request + 5));
      00161B 74 02            [12] 1117 	mov	a,#0x02
      00161D 25 29            [12] 1118 	add	a,_request
      00161F FB               [12] 1119 	mov	r3,a
      001620 E4               [12] 1120 	clr	a
      001621 35 2A            [12] 1121 	addc	a,(_request + 1)
      001623 FC               [12] 1122 	mov	r4,a
      001624 AD 2B            [24] 1123 	mov	r5,(_request + 2)
      001626 8B 82            [24] 1124 	mov	dpl,r3
      001628 8C 83            [24] 1125 	mov	dph,r4
      00162A 8D F0            [24] 1126 	mov	b,r5
      00162C 12 33 25         [24] 1127 	lcall	__gptrget
      00162F FB               [12] 1128 	mov	r3,a
      001630 74 03            [12] 1129 	mov	a,#0x03
      001632 25 29            [12] 1130 	add	a,_request
      001634 FA               [12] 1131 	mov	r2,a
      001635 E4               [12] 1132 	clr	a
      001636 35 2A            [12] 1133 	addc	a,(_request + 1)
      001638 FC               [12] 1134 	mov	r4,a
      001639 AD 2B            [24] 1135 	mov	r5,(_request + 2)
      00163B 8A 82            [24] 1136 	mov	dpl,r2
      00163D 8C 83            [24] 1137 	mov	dph,r4
      00163F 8D F0            [24] 1138 	mov	b,r5
      001641 12 33 25         [24] 1139 	lcall	__gptrget
      001644 42 03            [12] 1140 	orl	ar3,a
      001646 74 04            [12] 1141 	mov	a,#0x04
      001648 25 29            [12] 1142 	add	a,_request
      00164A FA               [12] 1143 	mov	r2,a
      00164B E4               [12] 1144 	clr	a
      00164C 35 2A            [12] 1145 	addc	a,(_request + 1)
      00164E FC               [12] 1146 	mov	r4,a
      00164F AD 2B            [24] 1147 	mov	r5,(_request + 2)
      001651 8A 82            [24] 1148 	mov	dpl,r2
      001653 8C 83            [24] 1149 	mov	dph,r4
      001655 8D F0            [24] 1150 	mov	b,r5
      001657 12 33 25         [24] 1151 	lcall	__gptrget
      00165A 42 03            [12] 1152 	orl	ar3,a
      00165C 74 05            [12] 1153 	mov	a,#0x05
      00165E 25 29            [12] 1154 	add	a,_request
      001660 FA               [12] 1155 	mov	r2,a
      001661 E4               [12] 1156 	clr	a
      001662 35 2A            [12] 1157 	addc	a,(_request + 1)
      001664 FC               [12] 1158 	mov	r4,a
      001665 AD 2B            [24] 1159 	mov	r5,(_request + 2)
      001667 8A 82            [24] 1160 	mov	dpl,r2
      001669 8C 83            [24] 1161 	mov	dph,r4
      00166B 8D F0            [24] 1162 	mov	b,r5
      00166D 12 33 25         [24] 1163 	lcall	__gptrget
      001670 FA               [12] 1164 	mov	r2,a
      001671 42 03            [12] 1165 	orl	ar3,a
      001673 8B 05            [24] 1166 	mov	ar5,r3
                                   1167 ;	../../../usb/DAP.c:250: if ((select & (1U << DAP_SWJ_SWCLK_TCK)) != 0U) {
      001675 EE               [12] 1168 	mov	a,r6
      001676 30 E0 0A         [24] 1169 	jnb	acc.0,00105$
                                   1170 ;	../../../usb/DAP.c:251: if ((value & (1U << DAP_SWJ_SWCLK_TCK)) != 0U) {
      001679 EF               [12] 1171 	mov	a,r7
      00167A 30 E0 04         [24] 1172 	jnb	acc.0,00102$
                                   1173 ;	../../../usb/DAP.c:252: PIN_SWCLK_TCK_SET();
                                   1174 ;	assignBit
      00167D D2 91            [12] 1175 	setb	_T2EX
      00167F 80 02            [24] 1176 	sjmp	00105$
      001681                       1177 00102$:
                                   1178 ;	../../../usb/DAP.c:254: PIN_SWCLK_TCK_CLR();
                                   1179 ;	assignBit
      001681 C2 91            [12] 1180 	clr	_T2EX
      001683                       1181 00105$:
                                   1182 ;	../../../usb/DAP.c:257: if ((select & (1U << DAP_SWJ_SWDIO_TMS)) != 0U) {
      001683 EE               [12] 1183 	mov	a,r6
      001684 30 E1 0A         [24] 1184 	jnb	acc.1,00110$
                                   1185 ;	../../../usb/DAP.c:258: if ((value & (1U << DAP_SWJ_SWDIO_TMS)) != 0U) {
      001687 EF               [12] 1186 	mov	a,r7
      001688 30 E1 04         [24] 1187 	jnb	acc.1,00107$
                                   1188 ;	../../../usb/DAP.c:259: PIN_SWDIO_TMS_SET();
                                   1189 ;	assignBit
      00168B D2 90            [12] 1190 	setb	_T2
      00168D 80 02            [24] 1191 	sjmp	00110$
      00168F                       1192 00107$:
                                   1193 ;	../../../usb/DAP.c:261: PIN_SWDIO_TMS_CLR();
                                   1194 ;	assignBit
      00168F C2 90            [12] 1195 	clr	_T2
      001691                       1196 00110$:
                                   1197 ;	../../../usb/DAP.c:274: if (wait != 0U) {
      001691 ED               [12] 1198 	mov	a,r5
      001692 70 03            [24] 1199 	jnz	00196$
      001694 02 17 3B         [24] 1200 	ljmp	00135$
      001697                       1201 00196$:
                                   1202 ;	../../../usb/DAP.c:275: do {
      001697 8F 05            [24] 1203 	mov	ar5,r7
      001699 74 01            [12] 1204 	mov	a,#0x01
      00169B 5E               [12] 1205 	anl	a,r6
      00169C FB               [12] 1206 	mov	r3,a
      00169D 7C 00            [12] 1207 	mov	r4,#0x00
      00169F E5 1F            [12] 1208 	mov	a,_bp
      0016A1 24 07            [12] 1209 	add	a,#0x07
      0016A3 F8               [12] 1210 	mov	r0,a
      0016A4 74 02            [12] 1211 	mov	a,#0x02
      0016A6 5E               [12] 1212 	anl	a,r6
      0016A7 F6               [12] 1213 	mov	@r0,a
      0016A8 08               [12] 1214 	inc	r0
      0016A9 76 00            [12] 1215 	mov	@r0,#0x00
      0016AB EF               [12] 1216 	mov	a,r7
      0016AC C3               [12] 1217 	clr	c
      0016AD 13               [12] 1218 	rrc	a
      0016AE FA               [12] 1219 	mov	r2,a
      0016AF E5 1F            [12] 1220 	mov	a,_bp
      0016B1 24 09            [12] 1221 	add	a,#0x09
      0016B3 F8               [12] 1222 	mov	r0,a
      0016B4 74 04            [12] 1223 	mov	a,#0x04
      0016B6 5E               [12] 1224 	anl	a,r6
      0016B7 F6               [12] 1225 	mov	@r0,a
      0016B8 08               [12] 1226 	inc	r0
      0016B9 76 00            [12] 1227 	mov	@r0,#0x00
      0016BB E5 1F            [12] 1228 	mov	a,_bp
      0016BD 24 04            [12] 1229 	add	a,#0x04
      0016BF F8               [12] 1230 	mov	r0,a
      0016C0 EF               [12] 1231 	mov	a,r7
      0016C1 03               [12] 1232 	rr	a
      0016C2 03               [12] 1233 	rr	a
      0016C3 54 3F            [12] 1234 	anl	a,#0x3f
      0016C5 F6               [12] 1235 	mov	@r0,a
      0016C6 E5 1F            [12] 1236 	mov	a,_bp
      0016C8 24 05            [12] 1237 	add	a,#0x05
      0016CA F8               [12] 1238 	mov	r0,a
      0016CB 74 20            [12] 1239 	mov	a,#0x20
      0016CD 5E               [12] 1240 	anl	a,r6
      0016CE F6               [12] 1241 	mov	@r0,a
      0016CF 08               [12] 1242 	inc	r0
      0016D0 76 00            [12] 1243 	mov	@r0,#0x00
      0016D2 A8 1F            [24] 1244 	mov	r0,_bp
      0016D4 08               [12] 1245 	inc	r0
      0016D5 EF               [12] 1246 	mov	a,r7
      0016D6 C4               [12] 1247 	swap	a
      0016D7 03               [12] 1248 	rr	a
      0016D8 54 07            [12] 1249 	anl	a,#0x07
      0016DA F6               [12] 1250 	mov	@r0,a
      0016DB A8 1F            [24] 1251 	mov	r0,_bp
      0016DD 08               [12] 1252 	inc	r0
      0016DE 08               [12] 1253 	inc	r0
      0016DF 74 80            [12] 1254 	mov	a,#0x80
      0016E1 5E               [12] 1255 	anl	a,r6
      0016E2 F6               [12] 1256 	mov	@r0,a
      0016E3 08               [12] 1257 	inc	r0
      0016E4 76 00            [12] 1258 	mov	@r0,#0x00
      0016E6 EF               [12] 1259 	mov	a,r7
      0016E7 23               [12] 1260 	rl	a
      0016E8 54 01            [12] 1261 	anl	a,#0x01
      0016EA FF               [12] 1262 	mov	r7,a
      0016EB                       1263 00131$:
                                   1264 ;	../../../usb/DAP.c:276: if ((select & (1U << DAP_SWJ_SWCLK_TCK)) != 0U) {
      0016EB EB               [12] 1265 	mov	a,r3
      0016EC 4C               [12] 1266 	orl	a,r4
      0016ED 60 0A            [24] 1267 	jz	00114$
                                   1268 ;	../../../usb/DAP.c:277: if ((value >> DAP_SWJ_SWCLK_TCK) ^ PIN_SWCLK_TCK_IN()) {
      0016EF A2 91            [12] 1269 	mov	c,_T2EX
      0016F1 E4               [12] 1270 	clr	a
      0016F2 33               [12] 1271 	rlc	a
      0016F3 54 01            [12] 1272 	anl	a,#0x01
      0016F5 FE               [12] 1273 	mov	r6,a
      0016F6 6D               [12] 1274 	xrl	a,r5
      0016F7 70 F2            [24] 1275 	jnz	00131$
                                   1276 ;	../../../usb/DAP.c:278: continue;
      0016F9                       1277 00114$:
                                   1278 ;	../../../usb/DAP.c:281: if ((select & (1U << DAP_SWJ_SWDIO_TMS)) != 0U) {
      0016F9 E5 1F            [12] 1279 	mov	a,_bp
      0016FB 24 07            [12] 1280 	add	a,#0x07
      0016FD F8               [12] 1281 	mov	r0,a
      0016FE E6               [12] 1282 	mov	a,@r0
      0016FF 08               [12] 1283 	inc	r0
      001700 46               [12] 1284 	orl	a,@r0
      001701 60 0A            [24] 1285 	jz	00118$
                                   1286 ;	../../../usb/DAP.c:282: if ((value >> DAP_SWJ_SWDIO_TMS) ^ PIN_SWDIO_TMS_IN()) {
      001703 A2 90            [12] 1287 	mov	c,_T2
      001705 E4               [12] 1288 	clr	a
      001706 33               [12] 1289 	rlc	a
      001707 54 01            [12] 1290 	anl	a,#0x01
      001709 FE               [12] 1291 	mov	r6,a
      00170A 6A               [12] 1292 	xrl	a,r2
      00170B 70 DE            [24] 1293 	jnz	00131$
                                   1294 ;	../../../usb/DAP.c:283: continue;
      00170D                       1295 00118$:
                                   1296 ;	../../../usb/DAP.c:286: if ((select & (1U << DAP_SWJ_TDI)) != 0U) {
      00170D E5 1F            [12] 1297 	mov	a,_bp
      00170F 24 09            [12] 1298 	add	a,#0x09
      001711 F8               [12] 1299 	mov	r0,a
      001712 E6               [12] 1300 	mov	a,@r0
      001713 08               [12] 1301 	inc	r0
      001714 46               [12] 1302 	orl	a,@r0
      001715 60 08            [24] 1303 	jz	00122$
                                   1304 ;	../../../usb/DAP.c:287: if ((value >> DAP_SWJ_TDI) ^ PIN_TDI_IN()) {
      001717 E5 1F            [12] 1305 	mov	a,_bp
      001719 24 04            [12] 1306 	add	a,#0x04
      00171B F8               [12] 1307 	mov	r0,a
      00171C E6               [12] 1308 	mov	a,@r0
      00171D 70 CC            [24] 1309 	jnz	00131$
                                   1310 ;	../../../usb/DAP.c:288: continue;
      00171F                       1311 00122$:
                                   1312 ;	../../../usb/DAP.c:291: if ((select & (1U << DAP_SWJ_nTRST)) != 0U) {
      00171F E5 1F            [12] 1313 	mov	a,_bp
      001721 24 05            [12] 1314 	add	a,#0x05
      001723 F8               [12] 1315 	mov	r0,a
      001724 E6               [12] 1316 	mov	a,@r0
      001725 08               [12] 1317 	inc	r0
      001726 46               [12] 1318 	orl	a,@r0
      001727 60 06            [24] 1319 	jz	00126$
                                   1320 ;	../../../usb/DAP.c:292: if ((value >> DAP_SWJ_nTRST) ^ PIN_nTRST_IN()) {
      001729 A8 1F            [24] 1321 	mov	r0,_bp
      00172B 08               [12] 1322 	inc	r0
      00172C E6               [12] 1323 	mov	a,@r0
      00172D 70 BC            [24] 1324 	jnz	00131$
                                   1325 ;	../../../usb/DAP.c:293: continue;
      00172F                       1326 00126$:
                                   1327 ;	../../../usb/DAP.c:296: if ((select & (1U << DAP_SWJ_nRESET)) != 0U) {
      00172F A8 1F            [24] 1328 	mov	r0,_bp
      001731 08               [12] 1329 	inc	r0
      001732 08               [12] 1330 	inc	r0
      001733 E6               [12] 1331 	mov	a,@r0
      001734 08               [12] 1332 	inc	r0
      001735 46               [12] 1333 	orl	a,@r0
      001736 60 03            [24] 1334 	jz	00135$
                                   1335 ;	../../../usb/DAP.c:297: if ((value >> DAP_SWJ_nRESET) ^ PIN_nRESET_IN()) {
      001738 EF               [12] 1336 	mov	a,r7
      001739 70 B0            [24] 1337 	jnz	00131$
                                   1338 ;	../../../usb/DAP.c:302: } while (1);
      00173B                       1339 00135$:
                                   1340 ;	../../../usb/DAP.c:305: value = (PIN_SWCLK_TCK_IN() << DAP_SWJ_SWCLK_TCK) | (PIN_SWDIO_TMS_IN() << DAP_SWJ_SWDIO_TMS) | (PIN_TDI_IN() << DAP_SWJ_TDI) | (PIN_TDO_IN() << DAP_SWJ_TDO) | (PIN_nTRST_IN() << DAP_SWJ_nTRST) | (PIN_nRESET_IN() << DAP_SWJ_nRESET);
      00173B A2 91            [12] 1341 	mov	c,_T2EX
      00173D E4               [12] 1342 	clr	a
      00173E 33               [12] 1343 	rlc	a
      00173F FF               [12] 1344 	mov	r7,a
      001740 53 07 01         [24] 1345 	anl	ar7,#0x01
      001743 A2 90            [12] 1346 	mov	c,_T2
      001745 E4               [12] 1347 	clr	a
      001746 33               [12] 1348 	rlc	a
      001747 54 01            [12] 1349 	anl	a,#0x01
      001749 25 E0            [12] 1350 	add	a,acc
      00174B 42 07            [12] 1351 	orl	ar7,a
                                   1352 ;	../../../usb/DAP.c:307: *response = (uint8_t)value;
      00174D AC 2C            [24] 1353 	mov	r4,_response
      00174F AD 2D            [24] 1354 	mov	r5,(_response + 1)
      001751 AE 2E            [24] 1355 	mov	r6,(_response + 2)
      001753 8C 82            [24] 1356 	mov	dpl,r4
      001755 8D 83            [24] 1357 	mov	dph,r5
      001757 8E F0            [24] 1358 	mov	b,r6
      001759 EF               [12] 1359 	mov	a,r7
      00175A 12 30 FC         [24] 1360 	lcall	__gptrput
                                   1361 ;	../../../usb/DAP.c:309: return (((uint16_t)6U << 8) | 1U);
      00175D 90 06 01         [24] 1362 	mov	dptr,#0x0601
                                   1363 ;	../../../usb/DAP.c:310: }
      001760 85 1F 81         [24] 1364 	mov	sp,_bp
      001763 D0 1F            [24] 1365 	pop	_bp
      001765 22               [24] 1366 	ret
                                   1367 ;------------------------------------------------------------
                                   1368 ;Allocation info for local variables in function 'DAP_SWJ_Clock'
                                   1369 ;------------------------------------------------------------
                                   1370 ;	../../../usb/DAP.c:317: static uint16_t DAP_SWJ_Clock()
                                   1371 ;	-----------------------------------------
                                   1372 ;	 function DAP_SWJ_Clock
                                   1373 ;	-----------------------------------------
      001766                       1374 _DAP_SWJ_Clock:
                                   1375 ;	../../../usb/DAP.c:320: *response = DAP_OK;
      001766 AD 2C            [24] 1376 	mov	r5,_response
      001768 AE 2D            [24] 1377 	mov	r6,(_response + 1)
      00176A AF 2E            [24] 1378 	mov	r7,(_response + 2)
      00176C 8D 82            [24] 1379 	mov	dpl,r5
      00176E 8E 83            [24] 1380 	mov	dph,r6
      001770 8F F0            [24] 1381 	mov	b,r7
      001772 E4               [12] 1382 	clr	a
      001773 12 30 FC         [24] 1383 	lcall	__gptrput
                                   1384 ;	../../../usb/DAP.c:321: return (((uint16_t)4U << 8) | 1U);
      001776 90 04 01         [24] 1385 	mov	dptr,#0x0401
                                   1386 ;	../../../usb/DAP.c:322: }
      001779 22               [24] 1387 	ret
                                   1388 ;------------------------------------------------------------
                                   1389 ;Allocation info for local variables in function 'DAP_SWJ_Sequence'
                                   1390 ;------------------------------------------------------------
                                   1391 ;count                     Allocated to registers r5 r7 
                                   1392 ;------------------------------------------------------------
                                   1393 ;	../../../usb/DAP.c:329: static uint16_t DAP_SWJ_Sequence()
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function DAP_SWJ_Sequence
                                   1396 ;	-----------------------------------------
      00177A                       1397 _DAP_SWJ_Sequence:
                                   1398 ;	../../../usb/DAP.c:333: count = *request++;
      00177A AD 29            [24] 1399 	mov	r5,_request
      00177C AE 2A            [24] 1400 	mov	r6,(_request + 1)
      00177E AF 2B            [24] 1401 	mov	r7,(_request + 2)
      001780 8D 82            [24] 1402 	mov	dpl,r5
      001782 8E 83            [24] 1403 	mov	dph,r6
      001784 8F F0            [24] 1404 	mov	b,r7
      001786 12 33 25         [24] 1405 	lcall	__gptrget
      001789 FD               [12] 1406 	mov	r5,a
      00178A 05 29            [12] 1407 	inc	_request
      00178C E4               [12] 1408 	clr	a
      00178D B5 29 02         [24] 1409 	cjne	a,_request,00110$
      001790 05 2A            [12] 1410 	inc	(_request + 1)
      001792                       1411 00110$:
      001792 7F 00            [12] 1412 	mov	r7,#0x00
                                   1413 ;	../../../usb/DAP.c:334: if (count == 0U) {
      001794 ED               [12] 1414 	mov	a,r5
      001795 4F               [12] 1415 	orl	a,r7
                                   1416 ;	../../../usb/DAP.c:335: count = 256U;
      001796 70 03            [24] 1417 	jnz	00102$
      001798 FD               [12] 1418 	mov	r5,a
      001799 7F 01            [12] 1419 	mov	r7,#0x01
      00179B                       1420 00102$:
                                   1421 ;	../../../usb/DAP.c:338: SWJ_Sequence(count, request);
      00179B C0 07            [24] 1422 	push	ar7
      00179D C0 05            [24] 1423 	push	ar5
      00179F C0 29            [24] 1424 	push	_request
      0017A1 C0 2A            [24] 1425 	push	(_request + 1)
      0017A3 C0 2B            [24] 1426 	push	(_request + 2)
      0017A5 8D 82            [24] 1427 	mov	dpl,r5
      0017A7 8F 83            [24] 1428 	mov	dph,r7
      0017A9 12 2D 4F         [24] 1429 	lcall	_SWJ_Sequence
      0017AC 15 81            [12] 1430 	dec	sp
      0017AE 15 81            [12] 1431 	dec	sp
      0017B0 15 81            [12] 1432 	dec	sp
      0017B2 D0 05            [24] 1433 	pop	ar5
      0017B4 D0 07            [24] 1434 	pop	ar7
                                   1435 ;	../../../usb/DAP.c:339: *response = DAP_OK;
      0017B6 AB 2C            [24] 1436 	mov	r3,_response
      0017B8 AC 2D            [24] 1437 	mov	r4,(_response + 1)
      0017BA AE 2E            [24] 1438 	mov	r6,(_response + 2)
      0017BC 8B 82            [24] 1439 	mov	dpl,r3
      0017BE 8C 83            [24] 1440 	mov	dph,r4
      0017C0 8E F0            [24] 1441 	mov	b,r6
      0017C2 E4               [12] 1442 	clr	a
      0017C3 12 30 FC         [24] 1443 	lcall	__gptrput
                                   1444 ;	../../../usb/DAP.c:341: count = (count + 7U) >> 3;
      0017C6 74 07            [12] 1445 	mov	a,#0x07
      0017C8 2D               [12] 1446 	add	a,r5
      0017C9 FD               [12] 1447 	mov	r5,a
      0017CA E4               [12] 1448 	clr	a
      0017CB 3F               [12] 1449 	addc	a,r7
      0017CC C4               [12] 1450 	swap	a
      0017CD 23               [12] 1451 	rl	a
      0017CE CD               [12] 1452 	xch	a,r5
      0017CF C4               [12] 1453 	swap	a
      0017D0 23               [12] 1454 	rl	a
      0017D1 54 1F            [12] 1455 	anl	a,#0x1f
      0017D3 6D               [12] 1456 	xrl	a,r5
      0017D4 CD               [12] 1457 	xch	a,r5
      0017D5 54 1F            [12] 1458 	anl	a,#0x1f
      0017D7 CD               [12] 1459 	xch	a,r5
      0017D8 6D               [12] 1460 	xrl	a,r5
      0017D9 CD               [12] 1461 	xch	a,r5
      0017DA FF               [12] 1462 	mov	r7,a
                                   1463 ;	../../../usb/DAP.c:343: return (((uint16_t)(count + 1U) << 8) | 1U);
      0017DB 0D               [12] 1464 	inc	r5
      0017DC BD 00 01         [24] 1465 	cjne	r5,#0x00,00112$
      0017DF 0F               [12] 1466 	inc	r7
      0017E0                       1467 00112$:
      0017E0 8D 07            [24] 1468 	mov	ar7,r5
      0017E2 7D 00            [12] 1469 	mov	r5,#0x00
      0017E4 43 05 01         [24] 1470 	orl	ar5,#0x01
      0017E7 8D 82            [24] 1471 	mov	dpl,r5
      0017E9 8F 83            [24] 1472 	mov	dph,r7
                                   1473 ;	../../../usb/DAP.c:344: }
      0017EB 22               [24] 1474 	ret
                                   1475 ;------------------------------------------------------------
                                   1476 ;Allocation info for local variables in function 'DAP_SWD_Configure'
                                   1477 ;------------------------------------------------------------
                                   1478 ;value                     Allocated to registers r5 
                                   1479 ;------------------------------------------------------------
                                   1480 ;	../../../usb/DAP.c:351: static uint16_t DAP_SWD_Configure()
                                   1481 ;	-----------------------------------------
                                   1482 ;	 function DAP_SWD_Configure
                                   1483 ;	-----------------------------------------
      0017EC                       1484 _DAP_SWD_Configure:
                                   1485 ;	../../../usb/DAP.c:355: value = *request;
      0017EC AD 29            [24] 1486 	mov	r5,_request
      0017EE AE 2A            [24] 1487 	mov	r6,(_request + 1)
      0017F0 AF 2B            [24] 1488 	mov	r7,(_request + 2)
      0017F2 8D 82            [24] 1489 	mov	dpl,r5
      0017F4 8E 83            [24] 1490 	mov	dph,r6
      0017F6 8F F0            [24] 1491 	mov	b,r7
      0017F8 12 33 25         [24] 1492 	lcall	__gptrget
      0017FB FD               [12] 1493 	mov	r5,a
                                   1494 ;	../../../usb/DAP.c:356: DAP_Data.swd_conf.turnaround = (value & 0x03U) + 1U;
      0017FC 74 03            [12] 1495 	mov	a,#0x03
      0017FE 5D               [12] 1496 	anl	a,r5
      0017FF 04               [12] 1497 	inc	a
      001800 90 02 D7         [24] 1498 	mov	dptr,#(_DAP_Data + 0x0017)
      001803 F0               [24] 1499 	movx	@dptr,a
                                   1500 ;	../../../usb/DAP.c:357: DAP_Data.swd_conf.data_phase = (value & 0x04U) ? 1U : 0U;
      001804 ED               [12] 1501 	mov	a,r5
      001805 30 E2 06         [24] 1502 	jnb	acc.2,00103$
      001808 7E 01            [12] 1503 	mov	r6,#0x01
      00180A 7F 00            [12] 1504 	mov	r7,#0x00
      00180C 80 04            [24] 1505 	sjmp	00104$
      00180E                       1506 00103$:
      00180E 7E 00            [12] 1507 	mov	r6,#0x00
      001810 7F 00            [12] 1508 	mov	r7,#0x00
      001812                       1509 00104$:
      001812 90 02 D8         [24] 1510 	mov	dptr,#(_DAP_Data + 0x0018)
      001815 EE               [12] 1511 	mov	a,r6
      001816 F0               [24] 1512 	movx	@dptr,a
                                   1513 ;	../../../usb/DAP.c:359: *response = DAP_OK;
      001817 AD 2C            [24] 1514 	mov	r5,_response
      001819 AE 2D            [24] 1515 	mov	r6,(_response + 1)
      00181B AF 2E            [24] 1516 	mov	r7,(_response + 2)
      00181D 8D 82            [24] 1517 	mov	dpl,r5
      00181F 8E 83            [24] 1518 	mov	dph,r6
      001821 8F F0            [24] 1519 	mov	b,r7
      001823 E4               [12] 1520 	clr	a
      001824 12 30 FC         [24] 1521 	lcall	__gptrput
                                   1522 ;	../../../usb/DAP.c:361: return (((uint16_t)1U << 8) | 1U);
      001827 90 01 01         [24] 1523 	mov	dptr,#0x0101
                                   1524 ;	../../../usb/DAP.c:362: }
      00182A 22               [24] 1525 	ret
                                   1526 ;------------------------------------------------------------
                                   1527 ;Allocation info for local variables in function 'DAP_SWD_Sequence'
                                   1528 ;------------------------------------------------------------
                                   1529 ;sequence_info             Allocated to registers r4 
                                   1530 ;sequence_count            Allocated to registers 
                                   1531 ;request_count             Allocated to registers r7 
                                   1532 ;response_count            Allocated to registers r6 
                                   1533 ;count                     Allocated to registers r3 
                                   1534 ;------------------------------------------------------------
                                   1535 ;	../../../usb/DAP.c:369: static uint16_t DAP_SWD_Sequence()
                                   1536 ;	-----------------------------------------
                                   1537 ;	 function DAP_SWD_Sequence
                                   1538 ;	-----------------------------------------
      00182B                       1539 _DAP_SWD_Sequence:
                                   1540 ;	../../../usb/DAP.c:377: *response++ = DAP_OK;
      00182B AD 2C            [24] 1541 	mov	r5,_response
      00182D AE 2D            [24] 1542 	mov	r6,(_response + 1)
      00182F AF 2E            [24] 1543 	mov	r7,(_response + 2)
      001831 8D 82            [24] 1544 	mov	dpl,r5
      001833 8E 83            [24] 1545 	mov	dph,r6
      001835 8F F0            [24] 1546 	mov	b,r7
      001837 E4               [12] 1547 	clr	a
      001838 12 30 FC         [24] 1548 	lcall	__gptrput
      00183B 05 2C            [12] 1549 	inc	_response
                                   1550 ;	genFromRTrack removed	clr	a
      00183D B5 2C 02         [24] 1551 	cjne	a,_response,00132$
      001840 05 2D            [12] 1552 	inc	(_response + 1)
      001842                       1553 00132$:
                                   1554 ;	../../../usb/DAP.c:378: request_count = 1U;
      001842 7F 01            [12] 1555 	mov	r7,#0x01
                                   1556 ;	../../../usb/DAP.c:379: response_count = 1U;
      001844 7E 01            [12] 1557 	mov	r6,#0x01
                                   1558 ;	../../../usb/DAP.c:381: sequence_count = *request++;
      001846 AB 29            [24] 1559 	mov	r3,_request
      001848 AC 2A            [24] 1560 	mov	r4,(_request + 1)
      00184A AD 2B            [24] 1561 	mov	r5,(_request + 2)
      00184C 8B 82            [24] 1562 	mov	dpl,r3
      00184E 8C 83            [24] 1563 	mov	dph,r4
      001850 8D F0            [24] 1564 	mov	b,r5
      001852 12 33 25         [24] 1565 	lcall	__gptrget
      001855 FD               [12] 1566 	mov	r5,a
      001856 05 29            [12] 1567 	inc	_request
      001858 E4               [12] 1568 	clr	a
      001859 B5 29 02         [24] 1569 	cjne	a,_request,00133$
      00185C 05 2A            [12] 1570 	inc	(_request + 1)
      00185E                       1571 00133$:
                                   1572 ;	../../../usb/DAP.c:382: while (sequence_count--) {
      00185E                       1573 00106$:
      00185E 8D 04            [24] 1574 	mov	ar4,r5
      001860 1D               [12] 1575 	dec	r5
      001861 EC               [12] 1576 	mov	a,r4
      001862 70 03            [24] 1577 	jnz	00134$
      001864 02 18 ED         [24] 1578 	ljmp	00108$
      001867                       1579 00134$:
                                   1580 ;	../../../usb/DAP.c:383: sequence_info = *request++;
      001867 AA 29            [24] 1581 	mov	r2,_request
      001869 AB 2A            [24] 1582 	mov	r3,(_request + 1)
      00186B AC 2B            [24] 1583 	mov	r4,(_request + 2)
      00186D 8A 82            [24] 1584 	mov	dpl,r2
      00186F 8B 83            [24] 1585 	mov	dph,r3
      001871 8C F0            [24] 1586 	mov	b,r4
      001873 12 33 25         [24] 1587 	lcall	__gptrget
      001876 FC               [12] 1588 	mov	r4,a
      001877 05 29            [12] 1589 	inc	_request
      001879 E4               [12] 1590 	clr	a
      00187A B5 29 02         [24] 1591 	cjne	a,_request,00135$
      00187D 05 2A            [12] 1592 	inc	(_request + 1)
      00187F                       1593 00135$:
                                   1594 ;	../../../usb/DAP.c:384: count = sequence_info & SWD_SEQUENCE_CLK;
      00187F 74 3F            [12] 1595 	mov	a,#0x3f
      001881 5C               [12] 1596 	anl	a,r4
                                   1597 ;	../../../usb/DAP.c:385: if (count == 0U) {
      001882 FB               [12] 1598 	mov	r3,a
      001883 70 02            [24] 1599 	jnz	00102$
                                   1600 ;	../../../usb/DAP.c:386: count = 64U;
      001885 7B 40            [12] 1601 	mov	r3,#0x40
      001887                       1602 00102$:
                                   1603 ;	../../../usb/DAP.c:388: count = (count + 7U) / 8U;
      001887 7A 00            [12] 1604 	mov	r2,#0x00
      001889 74 07            [12] 1605 	mov	a,#0x07
      00188B 2B               [12] 1606 	add	a,r3
      00188C FB               [12] 1607 	mov	r3,a
      00188D E4               [12] 1608 	clr	a
      00188E 3A               [12] 1609 	addc	a,r2
      00188F C4               [12] 1610 	swap	a
      001890 23               [12] 1611 	rl	a
      001891 CB               [12] 1612 	xch	a,r3
      001892 C4               [12] 1613 	swap	a
      001893 23               [12] 1614 	rl	a
      001894 54 1F            [12] 1615 	anl	a,#0x1f
      001896 6B               [12] 1616 	xrl	a,r3
      001897 CB               [12] 1617 	xch	a,r3
      001898 54 1F            [12] 1618 	anl	a,#0x1f
      00189A CB               [12] 1619 	xch	a,r3
      00189B 6B               [12] 1620 	xrl	a,r3
      00189C CB               [12] 1621 	xch	a,r3
                                   1622 ;	../../../usb/DAP.c:394: SWD_Sequence(sequence_info, request, response);
      00189D C0 07            [24] 1623 	push	ar7
      00189F C0 06            [24] 1624 	push	ar6
      0018A1 C0 05            [24] 1625 	push	ar5
      0018A3 C0 04            [24] 1626 	push	ar4
      0018A5 C0 03            [24] 1627 	push	ar3
      0018A7 C0 2C            [24] 1628 	push	_response
      0018A9 C0 2D            [24] 1629 	push	(_response + 1)
      0018AB C0 2E            [24] 1630 	push	(_response + 2)
      0018AD C0 29            [24] 1631 	push	_request
      0018AF C0 2A            [24] 1632 	push	(_request + 1)
      0018B1 C0 2B            [24] 1633 	push	(_request + 2)
      0018B3 8C 82            [24] 1634 	mov	dpl,r4
      0018B5 12 2D B7         [24] 1635 	lcall	_SWD_Sequence
      0018B8 E5 81            [12] 1636 	mov	a,sp
      0018BA 24 FA            [12] 1637 	add	a,#0xfa
      0018BC F5 81            [12] 1638 	mov	sp,a
      0018BE D0 03            [24] 1639 	pop	ar3
      0018C0 D0 04            [24] 1640 	pop	ar4
      0018C2 D0 05            [24] 1641 	pop	ar5
      0018C4 D0 06            [24] 1642 	pop	ar6
      0018C6 D0 07            [24] 1643 	pop	ar7
                                   1644 ;	../../../usb/DAP.c:398: if ((sequence_info & SWD_SEQUENCE_DIN) != 0U) {
      0018C8 EC               [12] 1645 	mov	a,r4
      0018C9 30 E7 10         [24] 1646 	jnb	acc.7,00104$
                                   1647 ;	../../../usb/DAP.c:399: request_count++;
      0018CC 0F               [12] 1648 	inc	r7
                                   1649 ;	../../../usb/DAP.c:400: response += count;
      0018CD EB               [12] 1650 	mov	a,r3
      0018CE 25 2C            [12] 1651 	add	a,_response
      0018D0 F5 2C            [12] 1652 	mov	_response,a
      0018D2 E4               [12] 1653 	clr	a
      0018D3 35 2D            [12] 1654 	addc	a,(_response + 1)
      0018D5 F5 2D            [12] 1655 	mov	(_response + 1),a
                                   1656 ;	../../../usb/DAP.c:401: response_count += count;
      0018D7 EB               [12] 1657 	mov	a,r3
      0018D8 2E               [12] 1658 	add	a,r6
      0018D9 FE               [12] 1659 	mov	r6,a
      0018DA 80 82            [24] 1660 	sjmp	00106$
      0018DC                       1661 00104$:
                                   1662 ;	../../../usb/DAP.c:403: request += count;
      0018DC EB               [12] 1663 	mov	a,r3
      0018DD 25 29            [12] 1664 	add	a,_request
      0018DF F5 29            [12] 1665 	mov	_request,a
      0018E1 E4               [12] 1666 	clr	a
      0018E2 35 2A            [12] 1667 	addc	a,(_request + 1)
      0018E4 F5 2A            [12] 1668 	mov	(_request + 1),a
                                   1669 ;	../../../usb/DAP.c:404: request_count += count + 1U;
      0018E6 0B               [12] 1670 	inc	r3
      0018E7 EB               [12] 1671 	mov	a,r3
      0018E8 2F               [12] 1672 	add	a,r7
      0018E9 FF               [12] 1673 	mov	r7,a
      0018EA 02 18 5E         [24] 1674 	ljmp	00106$
      0018ED                       1675 00108$:
                                   1676 ;	../../../usb/DAP.c:408: return (((uint16_t)request_count << 8) | response_count);
      0018ED 8F 05            [24] 1677 	mov	ar5,r7
      0018EF E4               [12] 1678 	clr	a
      0018F0 FF               [12] 1679 	mov	r7,a
      0018F1 FC               [12] 1680 	mov	r4,a
      0018F2 EE               [12] 1681 	mov	a,r6
      0018F3 4F               [12] 1682 	orl	a,r7
      0018F4 F5 82            [12] 1683 	mov	dpl,a
      0018F6 EC               [12] 1684 	mov	a,r4
      0018F7 4D               [12] 1685 	orl	a,r5
      0018F8 F5 83            [12] 1686 	mov	dph,a
                                   1687 ;	../../../usb/DAP.c:409: }
      0018FA 22               [24] 1688 	ret
                                   1689 ;------------------------------------------------------------
                                   1690 ;Allocation info for local variables in function 'DAP_JTAG_Sequence'
                                   1691 ;------------------------------------------------------------
                                   1692 ;sequence_info             Allocated to registers r3 
                                   1693 ;sequence_count            Allocated to registers 
                                   1694 ;request_count             Allocated to registers r7 
                                   1695 ;response_count            Allocated to registers 
                                   1696 ;count                     Allocated to registers r5 
                                   1697 ;------------------------------------------------------------
                                   1698 ;	../../../usb/DAP.c:416: static uint16_t DAP_JTAG_Sequence()
                                   1699 ;	-----------------------------------------
                                   1700 ;	 function DAP_JTAG_Sequence
                                   1701 ;	-----------------------------------------
      0018FB                       1702 _DAP_JTAG_Sequence:
                                   1703 ;	../../../usb/DAP.c:424: *response++ = DAP_ERROR;
      0018FB AD 2C            [24] 1704 	mov	r5,_response
      0018FD AE 2D            [24] 1705 	mov	r6,(_response + 1)
      0018FF AF 2E            [24] 1706 	mov	r7,(_response + 2)
      001901 8D 82            [24] 1707 	mov	dpl,r5
      001903 8E 83            [24] 1708 	mov	dph,r6
      001905 8F F0            [24] 1709 	mov	b,r7
      001907 74 FF            [12] 1710 	mov	a,#0xff
      001909 12 30 FC         [24] 1711 	lcall	__gptrput
      00190C 05 2C            [12] 1712 	inc	_response
      00190E E4               [12] 1713 	clr	a
      00190F B5 2C 02         [24] 1714 	cjne	a,_response,00124$
      001912 05 2D            [12] 1715 	inc	(_response + 1)
      001914                       1716 00124$:
                                   1717 ;	../../../usb/DAP.c:425: request_count = 1U;
      001914 7F 01            [12] 1718 	mov	r7,#0x01
                                   1719 ;	../../../usb/DAP.c:428: sequence_count = *request++;
      001916 AC 29            [24] 1720 	mov	r4,_request
      001918 AD 2A            [24] 1721 	mov	r5,(_request + 1)
      00191A AE 2B            [24] 1722 	mov	r6,(_request + 2)
      00191C 8C 82            [24] 1723 	mov	dpl,r4
      00191E 8D 83            [24] 1724 	mov	dph,r5
      001920 8E F0            [24] 1725 	mov	b,r6
      001922 12 33 25         [24] 1726 	lcall	__gptrget
      001925 FE               [12] 1727 	mov	r6,a
      001926 05 29            [12] 1728 	inc	_request
      001928 E4               [12] 1729 	clr	a
      001929 B5 29 02         [24] 1730 	cjne	a,_request,00125$
      00192C 05 2A            [12] 1731 	inc	(_request + 1)
      00192E                       1732 00125$:
                                   1733 ;	../../../usb/DAP.c:429: while (sequence_count--) {
      00192E                       1734 00103$:
      00192E 8E 05            [24] 1735 	mov	ar5,r6
      001930 1E               [12] 1736 	dec	r6
      001931 ED               [12] 1737 	mov	a,r5
      001932 60 47            [24] 1738 	jz	00105$
                                   1739 ;	../../../usb/DAP.c:430: sequence_info = *request++;
      001934 AB 29            [24] 1740 	mov	r3,_request
      001936 AC 2A            [24] 1741 	mov	r4,(_request + 1)
      001938 AD 2B            [24] 1742 	mov	r5,(_request + 2)
      00193A 8B 82            [24] 1743 	mov	dpl,r3
      00193C 8C 83            [24] 1744 	mov	dph,r4
      00193E 8D F0            [24] 1745 	mov	b,r5
      001940 12 33 25         [24] 1746 	lcall	__gptrget
      001943 FB               [12] 1747 	mov	r3,a
      001944 05 29            [12] 1748 	inc	_request
      001946 E4               [12] 1749 	clr	a
      001947 B5 29 02         [24] 1750 	cjne	a,_request,00127$
      00194A 05 2A            [12] 1751 	inc	(_request + 1)
      00194C                       1752 00127$:
                                   1753 ;	../../../usb/DAP.c:431: count = sequence_info & JTAG_SEQUENCE_TCK;
      00194C 74 3F            [12] 1754 	mov	a,#0x3f
      00194E 5B               [12] 1755 	anl	a,r3
                                   1756 ;	../../../usb/DAP.c:432: if (count == 0U) {
      00194F FD               [12] 1757 	mov	r5,a
      001950 70 02            [24] 1758 	jnz	00102$
                                   1759 ;	../../../usb/DAP.c:433: count = 64U;
      001952 7D 40            [12] 1760 	mov	r5,#0x40
      001954                       1761 00102$:
                                   1762 ;	../../../usb/DAP.c:435: count = (count + 7U) / 8U;
      001954 7C 00            [12] 1763 	mov	r4,#0x00
      001956 74 07            [12] 1764 	mov	a,#0x07
      001958 2D               [12] 1765 	add	a,r5
      001959 FD               [12] 1766 	mov	r5,a
      00195A E4               [12] 1767 	clr	a
      00195B 3C               [12] 1768 	addc	a,r4
      00195C C4               [12] 1769 	swap	a
      00195D 23               [12] 1770 	rl	a
      00195E CD               [12] 1771 	xch	a,r5
      00195F C4               [12] 1772 	swap	a
      001960 23               [12] 1773 	rl	a
      001961 54 1F            [12] 1774 	anl	a,#0x1f
      001963 6D               [12] 1775 	xrl	a,r5
      001964 CD               [12] 1776 	xch	a,r5
      001965 54 1F            [12] 1777 	anl	a,#0x1f
      001967 CD               [12] 1778 	xch	a,r5
      001968 6D               [12] 1779 	xrl	a,r5
      001969 CD               [12] 1780 	xch	a,r5
      00196A FC               [12] 1781 	mov	r4,a
                                   1782 ;	../../../usb/DAP.c:436: request += count;
      00196B ED               [12] 1783 	mov	a,r5
      00196C 25 29            [12] 1784 	add	a,_request
      00196E F5 29            [12] 1785 	mov	_request,a
      001970 E4               [12] 1786 	clr	a
      001971 35 2A            [12] 1787 	addc	a,(_request + 1)
      001973 F5 2A            [12] 1788 	mov	(_request + 1),a
                                   1789 ;	../../../usb/DAP.c:437: request_count += count + 1U;
      001975 0D               [12] 1790 	inc	r5
      001976 ED               [12] 1791 	mov	a,r5
      001977 2F               [12] 1792 	add	a,r7
      001978 FF               [12] 1793 	mov	r7,a
      001979 80 B3            [24] 1794 	sjmp	00103$
      00197B                       1795 00105$:
                                   1796 ;	../../../usb/DAP.c:440: return (((uint16_t)request_count << 8) | response_count);
      00197B 8F 06            [24] 1797 	mov	ar6,r7
      00197D 7F 00            [12] 1798 	mov	r7,#0x00
      00197F 74 01            [12] 1799 	mov	a,#0x01
      001981 4F               [12] 1800 	orl	a,r7
      001982 F5 82            [12] 1801 	mov	dpl,a
      001984 8E 83            [24] 1802 	mov	dph,r6
                                   1803 ;	../../../usb/DAP.c:441: }
      001986 22               [24] 1804 	ret
                                   1805 ;------------------------------------------------------------
                                   1806 ;Allocation info for local variables in function 'DAP_JTAG_Configure'
                                   1807 ;------------------------------------------------------------
                                   1808 ;count                     Allocated to registers r5 
                                   1809 ;------------------------------------------------------------
                                   1810 ;	../../../usb/DAP.c:448: static uint16_t DAP_JTAG_Configure()
                                   1811 ;	-----------------------------------------
                                   1812 ;	 function DAP_JTAG_Configure
                                   1813 ;	-----------------------------------------
      001987                       1814 _DAP_JTAG_Configure:
                                   1815 ;	../../../usb/DAP.c:451: count = *request;
      001987 AD 29            [24] 1816 	mov	r5,_request
      001989 AE 2A            [24] 1817 	mov	r6,(_request + 1)
      00198B AF 2B            [24] 1818 	mov	r7,(_request + 2)
      00198D 8D 82            [24] 1819 	mov	dpl,r5
      00198F 8E 83            [24] 1820 	mov	dph,r6
      001991 8F F0            [24] 1821 	mov	b,r7
      001993 12 33 25         [24] 1822 	lcall	__gptrget
      001996 FD               [12] 1823 	mov	r5,a
                                   1824 ;	../../../usb/DAP.c:452: *response = DAP_ERROR;
      001997 AC 2C            [24] 1825 	mov	r4,_response
      001999 AE 2D            [24] 1826 	mov	r6,(_response + 1)
      00199B AF 2E            [24] 1827 	mov	r7,(_response + 2)
      00199D 8C 82            [24] 1828 	mov	dpl,r4
      00199F 8E 83            [24] 1829 	mov	dph,r6
      0019A1 8F F0            [24] 1830 	mov	b,r7
      0019A3 74 FF            [12] 1831 	mov	a,#0xff
      0019A5 12 30 FC         [24] 1832 	lcall	__gptrput
                                   1833 ;	../../../usb/DAP.c:454: return ((((uint16_t)count + 1U) << 8) | 1U);
      0019A8 7F 00            [12] 1834 	mov	r7,#0x00
      0019AA 0D               [12] 1835 	inc	r5
      0019AB BD 00 01         [24] 1836 	cjne	r5,#0x00,00103$
      0019AE 0F               [12] 1837 	inc	r7
      0019AF                       1838 00103$:
      0019AF 8D 07            [24] 1839 	mov	ar7,r5
      0019B1 7D 00            [12] 1840 	mov	r5,#0x00
      0019B3 43 05 01         [24] 1841 	orl	ar5,#0x01
      0019B6 8D 82            [24] 1842 	mov	dpl,r5
      0019B8 8F 83            [24] 1843 	mov	dph,r7
                                   1844 ;	../../../usb/DAP.c:455: }
      0019BA 22               [24] 1845 	ret
                                   1846 ;------------------------------------------------------------
                                   1847 ;Allocation info for local variables in function 'DAP_JTAG_IDCode'
                                   1848 ;------------------------------------------------------------
                                   1849 ;	../../../usb/DAP.c:462: static uint16_t DAP_JTAG_IDCode()
                                   1850 ;	-----------------------------------------
                                   1851 ;	 function DAP_JTAG_IDCode
                                   1852 ;	-----------------------------------------
      0019BB                       1853 _DAP_JTAG_IDCode:
                                   1854 ;	../../../usb/DAP.c:465: *response = DAP_ERROR;
      0019BB AD 2C            [24] 1855 	mov	r5,_response
      0019BD AE 2D            [24] 1856 	mov	r6,(_response + 1)
      0019BF AF 2E            [24] 1857 	mov	r7,(_response + 2)
      0019C1 8D 82            [24] 1858 	mov	dpl,r5
      0019C3 8E 83            [24] 1859 	mov	dph,r6
      0019C5 8F F0            [24] 1860 	mov	b,r7
      0019C7 74 FF            [12] 1861 	mov	a,#0xff
      0019C9 12 30 FC         [24] 1862 	lcall	__gptrput
                                   1863 ;	../../../usb/DAP.c:466: return (((uint16_t)1U << 8) | 1U);
      0019CC 90 01 01         [24] 1864 	mov	dptr,#0x0101
                                   1865 ;	../../../usb/DAP.c:467: }
      0019CF 22               [24] 1866 	ret
                                   1867 ;------------------------------------------------------------
                                   1868 ;Allocation info for local variables in function 'DAP_TransferConfigure'
                                   1869 ;------------------------------------------------------------
                                   1870 ;	../../../usb/DAP.c:474: static uint16_t DAP_TransferConfigure()
                                   1871 ;	-----------------------------------------
                                   1872 ;	 function DAP_TransferConfigure
                                   1873 ;	-----------------------------------------
      0019D0                       1874 _DAP_TransferConfigure:
                                   1875 ;	../../../usb/DAP.c:476: DAP_Data.transfer.idle_cycles = *(request + 0);
      0019D0 AD 29            [24] 1876 	mov	r5,_request
      0019D2 AE 2A            [24] 1877 	mov	r6,(_request + 1)
      0019D4 AF 2B            [24] 1878 	mov	r7,(_request + 2)
      0019D6 8D 82            [24] 1879 	mov	dpl,r5
      0019D8 8E 83            [24] 1880 	mov	dph,r6
      0019DA 8F F0            [24] 1881 	mov	b,r7
      0019DC 12 33 25         [24] 1882 	lcall	__gptrget
      0019DF 90 02 CB         [24] 1883 	mov	dptr,#(_DAP_Data + 0x000b)
      0019E2 F0               [24] 1884 	movx	@dptr,a
                                   1885 ;	../../../usb/DAP.c:477: DAP_Data.transfer.retry_count = (uint16_t) * (request + 1) | (uint16_t)(*(request + 2) << 8);
      0019E3 74 01            [12] 1886 	mov	a,#0x01
      0019E5 25 29            [12] 1887 	add	a,_request
      0019E7 FD               [12] 1888 	mov	r5,a
      0019E8 E4               [12] 1889 	clr	a
      0019E9 35 2A            [12] 1890 	addc	a,(_request + 1)
      0019EB FE               [12] 1891 	mov	r6,a
      0019EC AF 2B            [24] 1892 	mov	r7,(_request + 2)
      0019EE 8D 82            [24] 1893 	mov	dpl,r5
      0019F0 8E 83            [24] 1894 	mov	dph,r6
      0019F2 8F F0            [24] 1895 	mov	b,r7
      0019F4 12 33 25         [24] 1896 	lcall	__gptrget
      0019F7 FD               [12] 1897 	mov	r5,a
      0019F8 7F 00            [12] 1898 	mov	r7,#0x00
      0019FA 74 02            [12] 1899 	mov	a,#0x02
      0019FC 25 29            [12] 1900 	add	a,_request
      0019FE FB               [12] 1901 	mov	r3,a
      0019FF E4               [12] 1902 	clr	a
      001A00 35 2A            [12] 1903 	addc	a,(_request + 1)
      001A02 FC               [12] 1904 	mov	r4,a
      001A03 AE 2B            [24] 1905 	mov	r6,(_request + 2)
      001A05 8B 82            [24] 1906 	mov	dpl,r3
      001A07 8C 83            [24] 1907 	mov	dph,r4
      001A09 8E F0            [24] 1908 	mov	b,r6
      001A0B 12 33 25         [24] 1909 	lcall	__gptrget
      001A0E FE               [12] 1910 	mov	r6,a
      001A0F E4               [12] 1911 	clr	a
      001A10 42 05            [12] 1912 	orl	ar5,a
      001A12 EE               [12] 1913 	mov	a,r6
      001A13 42 07            [12] 1914 	orl	ar7,a
      001A15 90 02 CF         [24] 1915 	mov	dptr,#(_DAP_Data + 0x000f)
      001A18 ED               [12] 1916 	mov	a,r5
      001A19 F0               [24] 1917 	movx	@dptr,a
      001A1A EF               [12] 1918 	mov	a,r7
      001A1B A3               [24] 1919 	inc	dptr
      001A1C F0               [24] 1920 	movx	@dptr,a
                                   1921 ;	../../../usb/DAP.c:478: DAP_Data.transfer.match_retry = (uint16_t) * (request + 3) | (uint16_t)(*(request + 4) << 8);
      001A1D 74 03            [12] 1922 	mov	a,#0x03
      001A1F 25 29            [12] 1923 	add	a,_request
      001A21 FD               [12] 1924 	mov	r5,a
      001A22 E4               [12] 1925 	clr	a
      001A23 35 2A            [12] 1926 	addc	a,(_request + 1)
      001A25 FE               [12] 1927 	mov	r6,a
      001A26 AF 2B            [24] 1928 	mov	r7,(_request + 2)
      001A28 8D 82            [24] 1929 	mov	dpl,r5
      001A2A 8E 83            [24] 1930 	mov	dph,r6
      001A2C 8F F0            [24] 1931 	mov	b,r7
      001A2E 12 33 25         [24] 1932 	lcall	__gptrget
      001A31 FD               [12] 1933 	mov	r5,a
      001A32 7F 00            [12] 1934 	mov	r7,#0x00
      001A34 74 04            [12] 1935 	mov	a,#0x04
      001A36 25 29            [12] 1936 	add	a,_request
      001A38 FB               [12] 1937 	mov	r3,a
      001A39 E4               [12] 1938 	clr	a
      001A3A 35 2A            [12] 1939 	addc	a,(_request + 1)
      001A3C FC               [12] 1940 	mov	r4,a
      001A3D AE 2B            [24] 1941 	mov	r6,(_request + 2)
      001A3F 8B 82            [24] 1942 	mov	dpl,r3
      001A41 8C 83            [24] 1943 	mov	dph,r4
      001A43 8E F0            [24] 1944 	mov	b,r6
      001A45 12 33 25         [24] 1945 	lcall	__gptrget
      001A48 FE               [12] 1946 	mov	r6,a
      001A49 E4               [12] 1947 	clr	a
      001A4A 42 05            [12] 1948 	orl	ar5,a
      001A4C EE               [12] 1949 	mov	a,r6
      001A4D 42 07            [12] 1950 	orl	ar7,a
      001A4F 90 02 D1         [24] 1951 	mov	dptr,#(_DAP_Data + 0x0011)
      001A52 ED               [12] 1952 	mov	a,r5
      001A53 F0               [24] 1953 	movx	@dptr,a
      001A54 EF               [12] 1954 	mov	a,r7
      001A55 A3               [24] 1955 	inc	dptr
      001A56 F0               [24] 1956 	movx	@dptr,a
                                   1957 ;	../../../usb/DAP.c:480: *response = DAP_OK;
      001A57 AD 2C            [24] 1958 	mov	r5,_response
      001A59 AE 2D            [24] 1959 	mov	r6,(_response + 1)
      001A5B AF 2E            [24] 1960 	mov	r7,(_response + 2)
      001A5D 8D 82            [24] 1961 	mov	dpl,r5
      001A5F 8E 83            [24] 1962 	mov	dph,r6
      001A61 8F F0            [24] 1963 	mov	b,r7
      001A63 E4               [12] 1964 	clr	a
      001A64 12 30 FC         [24] 1965 	lcall	__gptrput
                                   1966 ;	../../../usb/DAP.c:481: return (((uint16_t)5U << 8) | 1U);
      001A67 90 05 01         [24] 1967 	mov	dptr,#0x0501
                                   1968 ;	../../../usb/DAP.c:482: }
      001A6A 22               [24] 1969 	ret
                                   1970 ;------------------------------------------------------------
                                   1971 ;Allocation info for local variables in function 'DAP_SWD_Transfer'
                                   1972 ;------------------------------------------------------------
                                   1973 ;request_head              Allocated to stack - _bp +36
                                   1974 ;request_count             Allocated to stack - _bp +35
                                   1975 ;request_value             Allocated to registers r6 
                                   1976 ;response_head             Allocated to stack - _bp +39
                                   1977 ;response_count            Allocated to stack - _bp +43
                                   1978 ;response_value            Allocated to stack - _bp +42
                                   1979 ;post_read                 Allocated to registers b0 
                                   1980 ;check_write               Allocated to stack - _bp +30
                                   1981 ;match_value               Allocated to stack - _bp +26
                                   1982 ;match_retry               Allocated to registers r7 r5 
                                   1983 ;retry                     Allocated to registers 
                                   1984 ;data                      Allocated to stack - _bp +31
                                   1985 ;req                       Allocated to registers r3 r5 r7 
                                   1986 ;i                         Allocated to registers r3 
                                   1987 ;i                         Allocated to registers r6 
                                   1988 ;mismatch                  Allocated to registers b1 
                                   1989 ;i                         Allocated to registers r6 
                                   1990 ;i                         Allocated to registers r7 
                                   1991 ;i                         Allocated to registers r4 
                                   1992 ;i                         Allocated to registers r7 
                                   1993 ;i                         Allocated to registers r7 
                                   1994 ;sloc0                     Allocated to stack - _bp +7
                                   1995 ;sloc1                     Allocated to stack - _bp +8
                                   1996 ;sloc2                     Allocated to stack - _bp +5
                                   1997 ;sloc3                     Allocated to stack - _bp +9
                                   1998 ;sloc4                     Allocated to stack - _bp +3
                                   1999 ;sloc5                     Allocated to stack - _bp +6
                                   2000 ;sloc6                     Allocated to stack - _bp +1
                                   2001 ;sloc7                     Allocated to stack - _bp +10
                                   2002 ;sloc8                     Allocated to stack - _bp +2
                                   2003 ;sloc9                     Allocated to stack - _bp +12
                                   2004 ;sloc10                    Allocated to stack - _bp +11
                                   2005 ;sloc11                    Allocated to stack - _bp +13
                                   2006 ;sloc12                    Allocated to stack - _bp +4
                                   2007 ;sloc13                    Allocated to stack - _bp +14
                                   2008 ;sloc14                    Allocated to stack - _bp +50
                                   2009 ;sloc15                    Allocated to stack - _bp +24
                                   2010 ;sloc16                    Allocated to stack - _bp +15
                                   2011 ;sloc17                    Allocated to stack - _bp +20
                                   2012 ;sloc18                    Allocated to stack - _bp +56
                                   2013 ;sloc19                    Allocated to stack - _bp +16
                                   2014 ;sloc20                    Allocated to stack - _bp +19
                                   2015 ;sloc21                    Allocated to stack - _bp +21
                                   2016 ;------------------------------------------------------------
                                   2017 ;	../../../usb/DAP.c:489: static uint16_t DAP_SWD_Transfer()
                                   2018 ;	-----------------------------------------
                                   2019 ;	 function DAP_SWD_Transfer
                                   2020 ;	-----------------------------------------
      001A6B                       2021 _DAP_SWD_Transfer:
      001A6B C0 1F            [24] 2022 	push	_bp
      001A6D E5 81            [12] 2023 	mov	a,sp
      001A6F F5 1F            [12] 2024 	mov	_bp,a
      001A71 24 2B            [12] 2025 	add	a,#0x2b
      001A73 F5 81            [12] 2026 	mov	sp,a
                                   2027 ;	../../../usb/DAP.c:504: request_head = request;
      001A75 E5 1F            [12] 2028 	mov	a,_bp
      001A77 24 24            [12] 2029 	add	a,#0x24
      001A79 F8               [12] 2030 	mov	r0,a
      001A7A A6 29            [24] 2031 	mov	@r0,_request
      001A7C 08               [12] 2032 	inc	r0
      001A7D A6 2A            [24] 2033 	mov	@r0,(_request + 1)
      001A7F 08               [12] 2034 	inc	r0
      001A80 A6 2B            [24] 2035 	mov	@r0,(_request + 2)
                                   2036 ;	../../../usb/DAP.c:506: response_count = 0U;
      001A82 E5 1F            [12] 2037 	mov	a,_bp
      001A84 24 13            [12] 2038 	add	a,#0x13
      001A86 F8               [12] 2039 	mov	r0,a
      001A87 76 00            [12] 2040 	mov	@r0,#0x00
                                   2041 ;	../../../usb/DAP.c:507: response_value = 0U;
      001A89 E5 1F            [12] 2042 	mov	a,_bp
      001A8B 24 2A            [12] 2043 	add	a,#0x2a
      001A8D F8               [12] 2044 	mov	r0,a
      001A8E 76 00            [12] 2045 	mov	@r0,#0x00
                                   2046 ;	../../../usb/DAP.c:508: response_head = response;
      001A90 E5 1F            [12] 2047 	mov	a,_bp
      001A92 24 27            [12] 2048 	add	a,#0x27
      001A94 F8               [12] 2049 	mov	r0,a
      001A95 A6 2C            [24] 2050 	mov	@r0,_response
      001A97 08               [12] 2051 	inc	r0
      001A98 A6 2D            [24] 2052 	mov	@r0,(_response + 1)
      001A9A 08               [12] 2053 	inc	r0
      001A9B A6 2E            [24] 2054 	mov	@r0,(_response + 2)
                                   2055 ;	../../../usb/DAP.c:509: response += 2;
      001A9D 74 02            [12] 2056 	mov	a,#0x02
      001A9F 25 2C            [12] 2057 	add	a,_response
      001AA1 F5 2C            [12] 2058 	mov	_response,a
      001AA3 E4               [12] 2059 	clr	a
      001AA4 35 2D            [12] 2060 	addc	a,(_response + 1)
      001AA6 F5 2D            [12] 2061 	mov	(_response + 1),a
                                   2062 ;	../../../usb/DAP.c:511: DAP_TransferAbort = 0U;
      001AA8 75 28 00         [24] 2063 	mov	_DAP_TransferAbort,#0x00
                                   2064 ;	../../../usb/DAP.c:513: post_read = 0U;
                                   2065 ;	assignBit
      001AAB C2 00            [12] 2066 	clr	b0
                                   2067 ;	../../../usb/DAP.c:514: check_write = 0U;
      001AAD E5 1F            [12] 2068 	mov	a,_bp
      001AAF 24 1E            [12] 2069 	add	a,#0x1e
      001AB1 F8               [12] 2070 	mov	r0,a
      001AB2 76 00            [12] 2071 	mov	@r0,#0x00
                                   2072 ;	../../../usb/DAP.c:517: req++; // Ignore DAP index
      001AB4 74 01            [12] 2073 	mov	a,#0x01
      001AB6 25 29            [12] 2074 	add	a,_request
      001AB8 FB               [12] 2075 	mov	r3,a
      001AB9 E4               [12] 2076 	clr	a
      001ABA 35 2A            [12] 2077 	addc	a,(_request + 1)
      001ABC FD               [12] 2078 	mov	r5,a
      001ABD AF 2B            [24] 2079 	mov	r7,(_request + 2)
                                   2080 ;	../../../usb/DAP.c:519: request_count = *req++;
      001ABF 8B 82            [24] 2081 	mov	dpl,r3
      001AC1 8D 83            [24] 2082 	mov	dph,r5
      001AC3 8F F0            [24] 2083 	mov	b,r7
      001AC5 E5 1F            [12] 2084 	mov	a,_bp
      001AC7 24 23            [12] 2085 	add	a,#0x23
      001AC9 F8               [12] 2086 	mov	r0,a
      001ACA 12 33 25         [24] 2087 	lcall	__gptrget
      001ACD F6               [12] 2088 	mov	@r0,a
      001ACE E5 1F            [12] 2089 	mov	a,_bp
      001AD0 24 15            [12] 2090 	add	a,#0x15
      001AD2 F8               [12] 2091 	mov	r0,a
      001AD3 74 01            [12] 2092 	mov	a,#0x01
      001AD5 2B               [12] 2093 	add	a,r3
      001AD6 F6               [12] 2094 	mov	@r0,a
      001AD7 E4               [12] 2095 	clr	a
      001AD8 3D               [12] 2096 	addc	a,r5
      001AD9 08               [12] 2097 	inc	r0
      001ADA F6               [12] 2098 	mov	@r0,a
      001ADB 08               [12] 2099 	inc	r0
      001ADC A6 07            [24] 2100 	mov	@r0,ar7
      001ADE E5 1F            [12] 2101 	mov	a,_bp
      001AE0 24 14            [12] 2102 	add	a,#0x14
      001AE2 F8               [12] 2103 	mov	r0,a
      001AE3 E5 1F            [12] 2104 	mov	a,_bp
      001AE5 24 1A            [12] 2105 	add	a,#0x1a
      001AE7 F6               [12] 2106 	mov	@r0,a
      001AE8 E5 1F            [12] 2107 	mov	a,_bp
      001AEA 24 1F            [12] 2108 	add	a,#0x1f
      001AEC F8               [12] 2109 	mov	r0,a
      001AED E5 1F            [12] 2110 	mov	a,_bp
      001AEF 24 14            [12] 2111 	add	a,#0x14
      001AF1 F9               [12] 2112 	mov	r1,a
      001AF2 C0 00            [24] 2113 	push	ar0
      001AF4 E5 1F            [12] 2114 	mov	a,_bp
      001AF6 24 0F            [12] 2115 	add	a,#0x0f
      001AF8 F8               [12] 2116 	mov	r0,a
      001AF9 E7               [12] 2117 	mov	a,@r1
      001AFA F6               [12] 2118 	mov	@r0,a
      001AFB D0 00            [24] 2119 	pop	ar0
      001AFD E5 1F            [12] 2120 	mov	a,_bp
      001AFF 24 07            [12] 2121 	add	a,#0x07
      001B01 F9               [12] 2122 	mov	r1,a
      001B02 E8               [12] 2123 	mov	a,r0
      001B03 04               [12] 2124 	inc	a
      001B04 F7               [12] 2125 	mov	@r1,a
      001B05 E5 1F            [12] 2126 	mov	a,_bp
      001B07 24 14            [12] 2127 	add	a,#0x14
      001B09 F9               [12] 2128 	mov	r1,a
      001B0A C0 00            [24] 2129 	push	ar0
      001B0C E5 1F            [12] 2130 	mov	a,_bp
      001B0E 24 08            [12] 2131 	add	a,#0x08
      001B10 F8               [12] 2132 	mov	r0,a
      001B11 E7               [12] 2133 	mov	a,@r1
      001B12 04               [12] 2134 	inc	a
      001B13 F6               [12] 2135 	mov	@r0,a
      001B14 D0 00            [24] 2136 	pop	ar0
      001B16 E5 1F            [12] 2137 	mov	a,_bp
      001B18 24 05            [12] 2138 	add	a,#0x05
      001B1A F9               [12] 2139 	mov	r1,a
      001B1B 74 02            [12] 2140 	mov	a,#0x02
      001B1D 28               [12] 2141 	add	a,r0
      001B1E F7               [12] 2142 	mov	@r1,a
      001B1F E5 1F            [12] 2143 	mov	a,_bp
      001B21 24 14            [12] 2144 	add	a,#0x14
      001B23 F9               [12] 2145 	mov	r1,a
      001B24 C0 00            [24] 2146 	push	ar0
      001B26 E5 1F            [12] 2147 	mov	a,_bp
      001B28 24 09            [12] 2148 	add	a,#0x09
      001B2A F8               [12] 2149 	mov	r0,a
      001B2B 74 02            [12] 2150 	mov	a,#0x02
      001B2D 27               [12] 2151 	add	a,@r1
      001B2E F6               [12] 2152 	mov	@r0,a
      001B2F D0 00            [24] 2153 	pop	ar0
      001B31 E5 1F            [12] 2154 	mov	a,_bp
      001B33 24 03            [12] 2155 	add	a,#0x03
      001B35 F9               [12] 2156 	mov	r1,a
      001B36 74 03            [12] 2157 	mov	a,#0x03
      001B38 28               [12] 2158 	add	a,r0
      001B39 F7               [12] 2159 	mov	@r1,a
      001B3A E5 1F            [12] 2160 	mov	a,_bp
      001B3C 24 14            [12] 2161 	add	a,#0x14
      001B3E F9               [12] 2162 	mov	r1,a
      001B3F C0 00            [24] 2163 	push	ar0
      001B41 E5 1F            [12] 2164 	mov	a,_bp
      001B43 24 06            [12] 2165 	add	a,#0x06
      001B45 F8               [12] 2166 	mov	r0,a
      001B46 74 03            [12] 2167 	mov	a,#0x03
      001B48 27               [12] 2168 	add	a,@r1
      001B49 F6               [12] 2169 	mov	@r0,a
      001B4A D0 00            [24] 2170 	pop	ar0
      001B4C A9 1F            [24] 2171 	mov	r1,_bp
      001B4E 09               [12] 2172 	inc	r1
      001B4F A7 00            [24] 2173 	mov	@r1,ar0
      001B51 E5 1F            [12] 2174 	mov	a,_bp
      001B53 24 0A            [12] 2175 	add	a,#0x0a
      001B55 F9               [12] 2176 	mov	r1,a
      001B56 A7 00            [24] 2177 	mov	@r1,ar0
      001B58 A9 1F            [24] 2178 	mov	r1,_bp
      001B5A 09               [12] 2179 	inc	r1
      001B5B 09               [12] 2180 	inc	r1
      001B5C A7 00            [24] 2181 	mov	@r1,ar0
      001B5E E5 1F            [12] 2182 	mov	a,_bp
      001B60 24 0C            [12] 2183 	add	a,#0x0c
      001B62 F9               [12] 2184 	mov	r1,a
      001B63 A7 00            [24] 2185 	mov	@r1,ar0
      001B65 E5 1F            [12] 2186 	mov	a,_bp
      001B67 24 0B            [12] 2187 	add	a,#0x0b
      001B69 F9               [12] 2188 	mov	r1,a
      001B6A A7 00            [24] 2189 	mov	@r1,ar0
      001B6C E5 1F            [12] 2190 	mov	a,_bp
      001B6E 24 0D            [12] 2191 	add	a,#0x0d
      001B70 F9               [12] 2192 	mov	r1,a
      001B71 A7 00            [24] 2193 	mov	@r1,ar0
      001B73 E5 1F            [12] 2194 	mov	a,_bp
      001B75 24 2B            [12] 2195 	add	a,#0x2b
      001B77 F9               [12] 2196 	mov	r1,a
      001B78 77 00            [12] 2197 	mov	@r1,#0x00
      001B7A E5 1F            [12] 2198 	mov	a,_bp
      001B7C 24 23            [12] 2199 	add	a,#0x23
      001B7E F9               [12] 2200 	mov	r1,a
      001B7F C0 00            [24] 2201 	push	ar0
      001B81 E5 1F            [12] 2202 	mov	a,_bp
      001B83 24 04            [12] 2203 	add	a,#0x04
      001B85 F8               [12] 2204 	mov	r0,a
      001B86 E7               [12] 2205 	mov	a,@r1
      001B87 F6               [12] 2206 	mov	@r0,a
      001B88 D0 00            [24] 2207 	pop	ar0
      001B8A                       2208 00242$:
                                   2209 ;	../../../usb/DAP.c:521: for (; request_count != 0U; request_count--) {
      001B8A E5 1F            [12] 2210 	mov	a,_bp
      001B8C 24 04            [12] 2211 	add	a,#0x04
      001B8E F9               [12] 2212 	mov	r1,a
      001B8F E7               [12] 2213 	mov	a,@r1
      001B90 70 03            [24] 2214 	jnz	00677$
      001B92 02 21 85         [24] 2215 	ljmp	00326$
      001B95                       2216 00677$:
                                   2217 ;	../../../usb/DAP.c:522: request_value = *req++;
      001B95 E5 1F            [12] 2218 	mov	a,_bp
      001B97 24 15            [12] 2219 	add	a,#0x15
      001B99 F9               [12] 2220 	mov	r1,a
      001B9A 87 82            [24] 2221 	mov	dpl,@r1
      001B9C 09               [12] 2222 	inc	r1
      001B9D 87 83            [24] 2223 	mov	dph,@r1
      001B9F 09               [12] 2224 	inc	r1
      001BA0 87 F0            [24] 2225 	mov	b,@r1
      001BA2 C0 00            [24] 2226 	push	ar0
      001BA4 E5 1F            [12] 2227 	mov	a,_bp
      001BA6 24 0E            [12] 2228 	add	a,#0x0e
      001BA8 F8               [12] 2229 	mov	r0,a
      001BA9 12 33 25         [24] 2230 	lcall	__gptrget
      001BAC F6               [12] 2231 	mov	@r0,a
      001BAD A3               [24] 2232 	inc	dptr
      001BAE 19               [12] 2233 	dec	r1
      001BAF 19               [12] 2234 	dec	r1
      001BB0 A7 82            [24] 2235 	mov	@r1,dpl
      001BB2 09               [12] 2236 	inc	r1
      001BB3 A7 83            [24] 2237 	mov	@r1,dph
      001BB5 D0 00            [24] 2238 	pop	ar0
                                   2239 ;	../../../usb/DAP.c:523: if ((request_value & DAP_TRANSFER_RnW) != 0U) {
      001BB7 E5 1F            [12] 2240 	mov	a,_bp
      001BB9 24 0E            [12] 2241 	add	a,#0x0e
      001BBB F9               [12] 2242 	mov	r1,a
      001BBC E7               [12] 2243 	mov	a,@r1
      001BBD 20 E1 03         [24] 2244 	jb	acc.1,00678$
      001BC0 02 1F DB         [24] 2245 	ljmp	00191$
      001BC3                       2246 00678$:
                                   2247 ;	../../../usb/DAP.c:525: if (post_read) {
      001BC3 20 00 03         [24] 2248 	jb	b0,00679$
      001BC6 02 1C C7         [24] 2249 	ljmp	00118$
      001BC9                       2250 00679$:
                                   2251 ;	../../../usb/DAP.c:527: retry = DAP_Data.transfer.retry_count;
      001BC9 90 02 CF         [24] 2252 	mov	dptr,#(_DAP_Data + 0x000f)
      001BCC E0               [24] 2253 	movx	a,@dptr
      001BCD FB               [12] 2254 	mov	r3,a
      001BCE A3               [24] 2255 	inc	dptr
      001BCF E0               [24] 2256 	movx	a,@dptr
      001BD0 FA               [12] 2257 	mov	r2,a
                                   2258 ;	../../../usb/DAP.c:528: if ((request_value & (DAP_TRANSFER_APnDP | DAP_TRANSFER_MATCH_VALUE)) == DAP_TRANSFER_APnDP) {
      001BD1 E5 1F            [12] 2259 	mov	a,_bp
      001BD3 24 0E            [12] 2260 	add	a,#0x0e
      001BD5 F9               [12] 2261 	mov	r1,a
      001BD6 87 04            [24] 2262 	mov	ar4,@r1
      001BD8 53 04 11         [24] 2263 	anl	ar4,#0x11
      001BDB 7E 00            [12] 2264 	mov	r6,#0x00
      001BDD BC 01 5A         [24] 2265 	cjne	r4,#0x01,00270$
      001BE0 BE 00 57         [24] 2266 	cjne	r6,#0x00,00270$
                                   2267 ;	../../../usb/DAP.c:530: do {
      001BE3 8B 07            [24] 2268 	mov	ar7,r3
      001BE5 8A 05            [24] 2269 	mov	ar5,r2
      001BE7                       2270 00103$:
                                   2271 ;	../../../usb/DAP.c:531: response_value = SWD_Transfer(request_value, data);
      001BE7 A9 1F            [24] 2272 	mov	r1,_bp
      001BE9 09               [12] 2273 	inc	r1
      001BEA 87 02            [24] 2274 	mov	ar2,@r1
      001BEC 7C 00            [12] 2275 	mov	r4,#0x00
      001BEE 7E 40            [12] 2276 	mov	r6,#0x40
      001BF0 C0 07            [24] 2277 	push	ar7
      001BF2 C0 05            [24] 2278 	push	ar5
      001BF4 C0 00            [24] 2279 	push	ar0
      001BF6 C0 20            [24] 2280 	push	bits
      001BF8 C0 02            [24] 2281 	push	ar2
      001BFA C0 04            [24] 2282 	push	ar4
      001BFC C0 06            [24] 2283 	push	ar6
      001BFE E5 1F            [12] 2284 	mov	a,_bp
      001C00 24 0E            [12] 2285 	add	a,#0x0e
      001C02 F9               [12] 2286 	mov	r1,a
      001C03 87 82            [24] 2287 	mov	dpl,@r1
      001C05 12 2E 97         [24] 2288 	lcall	_SWD_Transfer
      001C08 AE 82            [24] 2289 	mov	r6,dpl
      001C0A 15 81            [12] 2290 	dec	sp
      001C0C 15 81            [12] 2291 	dec	sp
      001C0E 15 81            [12] 2292 	dec	sp
      001C10 D0 20            [24] 2293 	pop	bits
      001C12 D0 00            [24] 2294 	pop	ar0
      001C14 D0 05            [24] 2295 	pop	ar5
      001C16 D0 07            [24] 2296 	pop	ar7
      001C18 E5 1F            [12] 2297 	mov	a,_bp
      001C1A 24 2A            [12] 2298 	add	a,#0x2a
      001C1C F9               [12] 2299 	mov	r1,a
      001C1D A7 06            [24] 2300 	mov	@r1,ar6
                                   2301 ;	../../../usb/DAP.c:532: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      001C1F E5 1F            [12] 2302 	mov	a,_bp
      001C21 24 2A            [12] 2303 	add	a,#0x2a
      001C23 F9               [12] 2304 	mov	r1,a
      001C24 B7 02 64         [24] 2305 	cjne	@r1,#0x02,00113$
      001C27 8F 02            [24] 2306 	mov	ar2,r7
      001C29 8D 06            [24] 2307 	mov	ar6,r5
      001C2B 1F               [12] 2308 	dec	r7
      001C2C BF FF 01         [24] 2309 	cjne	r7,#0xff,00684$
      001C2F 1D               [12] 2310 	dec	r5
      001C30                       2311 00684$:
      001C30 EA               [12] 2312 	mov	a,r2
      001C31 4E               [12] 2313 	orl	a,r6
      001C32 60 57            [24] 2314 	jz	00113$
      001C34 E5 28            [12] 2315 	mov	a,_DAP_TransferAbort
      001C36 60 AF            [24] 2316 	jz	00103$
                                   2317 ;	../../../usb/DAP.c:535: do {
      001C38 80 51            [24] 2318 	sjmp	00113$
      001C3A                       2319 00270$:
      001C3A 8B 07            [24] 2320 	mov	ar7,r3
      001C3C 8A 05            [24] 2321 	mov	ar5,r2
      001C3E                       2322 00108$:
                                   2323 ;	../../../usb/DAP.c:536: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, data);
      001C3E E5 1F            [12] 2324 	mov	a,_bp
      001C40 24 0A            [12] 2325 	add	a,#0x0a
      001C42 F9               [12] 2326 	mov	r1,a
      001C43 87 02            [24] 2327 	mov	ar2,@r1
      001C45 7C 00            [12] 2328 	mov	r4,#0x00
      001C47 7E 40            [12] 2329 	mov	r6,#0x40
      001C49 C0 07            [24] 2330 	push	ar7
      001C4B C0 05            [24] 2331 	push	ar5
      001C4D C0 00            [24] 2332 	push	ar0
      001C4F C0 02            [24] 2333 	push	ar2
      001C51 C0 04            [24] 2334 	push	ar4
      001C53 C0 06            [24] 2335 	push	ar6
      001C55 75 82 0E         [24] 2336 	mov	dpl,#0x0e
      001C58 12 2E 97         [24] 2337 	lcall	_SWD_Transfer
      001C5B AE 82            [24] 2338 	mov	r6,dpl
      001C5D 15 81            [12] 2339 	dec	sp
      001C5F 15 81            [12] 2340 	dec	sp
      001C61 15 81            [12] 2341 	dec	sp
      001C63 D0 00            [24] 2342 	pop	ar0
      001C65 D0 05            [24] 2343 	pop	ar5
      001C67 D0 07            [24] 2344 	pop	ar7
      001C69 E5 1F            [12] 2345 	mov	a,_bp
      001C6B 24 2A            [12] 2346 	add	a,#0x2a
      001C6D F9               [12] 2347 	mov	r1,a
      001C6E A7 06            [24] 2348 	mov	@r1,ar6
                                   2349 ;	../../../usb/DAP.c:537: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      001C70 E5 1F            [12] 2350 	mov	a,_bp
      001C72 24 2A            [12] 2351 	add	a,#0x2a
      001C74 F9               [12] 2352 	mov	r1,a
      001C75 B7 02 11         [24] 2353 	cjne	@r1,#0x02,00110$
      001C78 8F 02            [24] 2354 	mov	ar2,r7
      001C7A 8D 06            [24] 2355 	mov	ar6,r5
      001C7C 1F               [12] 2356 	dec	r7
      001C7D BF FF 01         [24] 2357 	cjne	r7,#0xff,00689$
      001C80 1D               [12] 2358 	dec	r5
      001C81                       2359 00689$:
      001C81 EA               [12] 2360 	mov	a,r2
      001C82 4E               [12] 2361 	orl	a,r6
      001C83 60 04            [24] 2362 	jz	00110$
      001C85 E5 28            [12] 2363 	mov	a,_DAP_TransferAbort
      001C87 60 B5            [24] 2364 	jz	00108$
      001C89                       2365 00110$:
                                   2366 ;	../../../usb/DAP.c:538: post_read = 0U;
                                   2367 ;	assignBit
      001C89 C2 00            [12] 2368 	clr	b0
      001C8B                       2369 00113$:
                                   2370 ;	../../../usb/DAP.c:540: if (response_value != DAP_TRANSFER_OK) {
      001C8B E5 1F            [12] 2371 	mov	a,_bp
      001C8D 24 2A            [12] 2372 	add	a,#0x2a
      001C8F F9               [12] 2373 	mov	r1,a
      001C90 B7 01 02         [24] 2374 	cjne	@r1,#0x01,00692$
      001C93 80 03            [24] 2375 	sjmp	00693$
      001C95                       2376 00692$:
      001C95 02 21 85         [24] 2377 	ljmp	00326$
      001C98                       2378 00693$:
                                   2379 ;	../../../usb/DAP.c:544: for (uint8_t i = 0; i < 4; i++) {
      001C98 7B 00            [12] 2380 	mov	r3,#0x00
      001C9A                       2381 00224$:
      001C9A BB 04 00         [24] 2382 	cjne	r3,#0x04,00694$
      001C9D                       2383 00694$:
      001C9D 50 28            [24] 2384 	jnc	00118$
                                   2385 ;	../../../usb/DAP.c:545: *response++ = data[i];
      001C9F AF 2C            [24] 2386 	mov	r7,_response
      001CA1 AD 2D            [24] 2387 	mov	r5,(_response + 1)
      001CA3 AC 2E            [24] 2388 	mov	r4,(_response + 2)
      001CA5 C0 00            [24] 2389 	push	ar0
      001CA7 A8 1F            [24] 2390 	mov	r0,_bp
      001CA9 08               [12] 2391 	inc	r0
      001CAA 08               [12] 2392 	inc	r0
      001CAB EB               [12] 2393 	mov	a,r3
      001CAC 26               [12] 2394 	add	a,@r0
      001CAD F9               [12] 2395 	mov	r1,a
      001CAE D0 00            [24] 2396 	pop	ar0
      001CB0 87 06            [24] 2397 	mov	ar6,@r1
      001CB2 8F 82            [24] 2398 	mov	dpl,r7
      001CB4 8D 83            [24] 2399 	mov	dph,r5
      001CB6 8C F0            [24] 2400 	mov	b,r4
      001CB8 EE               [12] 2401 	mov	a,r6
      001CB9 12 30 FC         [24] 2402 	lcall	__gptrput
      001CBC 05 2C            [12] 2403 	inc	_response
      001CBE E4               [12] 2404 	clr	a
      001CBF B5 2C 02         [24] 2405 	cjne	a,_response,00696$
      001CC2 05 2D            [12] 2406 	inc	(_response + 1)
      001CC4                       2407 00696$:
                                   2408 ;	../../../usb/DAP.c:544: for (uint8_t i = 0; i < 4; i++) {
      001CC4 0B               [12] 2409 	inc	r3
      001CC5 80 D3            [24] 2410 	sjmp	00224$
      001CC7                       2411 00118$:
                                   2412 ;	../../../usb/DAP.c:548: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U) {
      001CC7 E5 1F            [12] 2413 	mov	a,_bp
      001CC9 24 0E            [12] 2414 	add	a,#0x0e
      001CCB F9               [12] 2415 	mov	r1,a
      001CCC E7               [12] 2416 	mov	a,@r1
      001CCD 20 E4 03         [24] 2417 	jb	acc.4,00697$
      001CD0 02 1E D1         [24] 2418 	ljmp	00166$
      001CD3                       2419 00697$:
                                   2420 ;	../../../usb/DAP.c:550: for (uint8_t i = 0; i < 4; i++)
      001CD3 E5 1F            [12] 2421 	mov	a,_bp
      001CD5 24 15            [12] 2422 	add	a,#0x15
      001CD7 F9               [12] 2423 	mov	r1,a
      001CD8 87 04            [24] 2424 	mov	ar4,@r1
      001CDA 09               [12] 2425 	inc	r1
      001CDB 87 05            [24] 2426 	mov	ar5,@r1
      001CDD 09               [12] 2427 	inc	r1
      001CDE 87 07            [24] 2428 	mov	ar7,@r1
      001CE0 7E 00            [12] 2429 	mov	r6,#0x00
      001CE2                       2430 00227$:
      001CE2 BE 04 00         [24] 2431 	cjne	r6,#0x04,00698$
      001CE5                       2432 00698$:
      001CE5 50 20            [24] 2433 	jnc	00341$
                                   2434 ;	../../../usb/DAP.c:551: match_value[i] = *(req++);
      001CE7 C0 00            [24] 2435 	push	ar0
      001CE9 E5 1F            [12] 2436 	mov	a,_bp
      001CEB 24 14            [12] 2437 	add	a,#0x14
      001CED F8               [12] 2438 	mov	r0,a
      001CEE EE               [12] 2439 	mov	a,r6
      001CEF 26               [12] 2440 	add	a,@r0
      001CF0 F9               [12] 2441 	mov	r1,a
      001CF1 D0 00            [24] 2442 	pop	ar0
      001CF3 8C 82            [24] 2443 	mov	dpl,r4
      001CF5 8D 83            [24] 2444 	mov	dph,r5
      001CF7 8F F0            [24] 2445 	mov	b,r7
      001CF9 12 33 25         [24] 2446 	lcall	__gptrget
      001CFC FA               [12] 2447 	mov	r2,a
      001CFD A3               [24] 2448 	inc	dptr
      001CFE AC 82            [24] 2449 	mov	r4,dpl
      001D00 AD 83            [24] 2450 	mov	r5,dph
      001D02 A7 02            [24] 2451 	mov	@r1,ar2
                                   2452 ;	../../../usb/DAP.c:550: for (uint8_t i = 0; i < 4; i++)
      001D04 0E               [12] 2453 	inc	r6
      001D05 80 DB            [24] 2454 	sjmp	00227$
      001D07                       2455 00341$:
      001D07 E5 1F            [12] 2456 	mov	a,_bp
      001D09 24 15            [12] 2457 	add	a,#0x15
      001D0B F9               [12] 2458 	mov	r1,a
      001D0C A7 04            [24] 2459 	mov	@r1,ar4
      001D0E 09               [12] 2460 	inc	r1
      001D0F A7 05            [24] 2461 	mov	@r1,ar5
      001D11 09               [12] 2462 	inc	r1
      001D12 A7 07            [24] 2463 	mov	@r1,ar7
                                   2464 ;	../../../usb/DAP.c:553: match_retry = DAP_Data.transfer.match_retry;
      001D14 90 02 D1         [24] 2465 	mov	dptr,#(_DAP_Data + 0x0011)
      001D17 E0               [24] 2466 	movx	a,@dptr
      001D18 FF               [12] 2467 	mov	r7,a
      001D19 A3               [24] 2468 	inc	dptr
      001D1A E0               [24] 2469 	movx	a,@dptr
      001D1B FD               [12] 2470 	mov	r5,a
                                   2471 ;	../../../usb/DAP.c:554: if ((request_value & DAP_TRANSFER_APnDP) != 0U) {
      001D1C E5 1F            [12] 2472 	mov	a,_bp
      001D1E 24 0E            [12] 2473 	add	a,#0x0e
      001D20 F9               [12] 2474 	mov	r1,a
      001D21 E7               [12] 2475 	mov	a,@r1
      001D22 30 E0 70         [24] 2476 	jnb	acc.0,00128$
                                   2477 ;	../../../usb/DAP.c:556: retry = DAP_Data.transfer.retry_count;
      001D25 90 02 CF         [24] 2478 	mov	dptr,#(_DAP_Data + 0x000f)
      001D28 E5 1F            [12] 2479 	mov	a,_bp
      001D2A 24 10            [12] 2480 	add	a,#0x10
      001D2C F9               [12] 2481 	mov	r1,a
      001D2D E0               [24] 2482 	movx	a,@dptr
      001D2E F7               [12] 2483 	mov	@r1,a
      001D2F A3               [24] 2484 	inc	dptr
      001D30 E0               [24] 2485 	movx	a,@dptr
      001D31 09               [12] 2486 	inc	r1
      001D32 F7               [12] 2487 	mov	@r1,a
                                   2488 ;	../../../usb/DAP.c:557: do {
      001D33                       2489 00122$:
                                   2490 ;	../../../usb/DAP.c:558: response_value = SWD_Transfer(request_value, NULL);
      001D33 C0 07            [24] 2491 	push	ar7
      001D35 C0 05            [24] 2492 	push	ar5
      001D37 C0 00            [24] 2493 	push	ar0
      001D39 C0 20            [24] 2494 	push	bits
      001D3B E4               [12] 2495 	clr	a
      001D3C C0 E0            [24] 2496 	push	acc
      001D3E C0 E0            [24] 2497 	push	acc
      001D40 C0 E0            [24] 2498 	push	acc
      001D42 E5 1F            [12] 2499 	mov	a,_bp
      001D44 24 0E            [12] 2500 	add	a,#0x0e
      001D46 F9               [12] 2501 	mov	r1,a
      001D47 87 82            [24] 2502 	mov	dpl,@r1
      001D49 12 2E 97         [24] 2503 	lcall	_SWD_Transfer
      001D4C AC 82            [24] 2504 	mov	r4,dpl
      001D4E 15 81            [12] 2505 	dec	sp
      001D50 15 81            [12] 2506 	dec	sp
      001D52 15 81            [12] 2507 	dec	sp
      001D54 D0 20            [24] 2508 	pop	bits
      001D56 D0 00            [24] 2509 	pop	ar0
      001D58 D0 05            [24] 2510 	pop	ar5
      001D5A D0 07            [24] 2511 	pop	ar7
      001D5C E5 1F            [12] 2512 	mov	a,_bp
      001D5E 24 2A            [12] 2513 	add	a,#0x2a
      001D60 F9               [12] 2514 	mov	r1,a
      001D61 A7 04            [24] 2515 	mov	@r1,ar4
                                   2516 ;	../../../usb/DAP.c:559: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      001D63 E5 1F            [12] 2517 	mov	a,_bp
      001D65 24 2A            [12] 2518 	add	a,#0x2a
      001D67 F9               [12] 2519 	mov	r1,a
      001D68 B7 02 1D         [24] 2520 	cjne	@r1,#0x02,00124$
      001D6B E5 1F            [12] 2521 	mov	a,_bp
      001D6D 24 10            [12] 2522 	add	a,#0x10
      001D6F F9               [12] 2523 	mov	r1,a
      001D70 87 02            [24] 2524 	mov	ar2,@r1
      001D72 09               [12] 2525 	inc	r1
      001D73 87 06            [24] 2526 	mov	ar6,@r1
      001D75 E5 1F            [12] 2527 	mov	a,_bp
      001D77 24 10            [12] 2528 	add	a,#0x10
      001D79 F9               [12] 2529 	mov	r1,a
      001D7A 17               [12] 2530 	dec	@r1
      001D7B B7 FF 02         [24] 2531 	cjne	@r1,#0xff,00703$
      001D7E 09               [12] 2532 	inc	r1
      001D7F 17               [12] 2533 	dec	@r1
      001D80                       2534 00703$:
      001D80 EA               [12] 2535 	mov	a,r2
      001D81 4E               [12] 2536 	orl	a,r6
      001D82 60 04            [24] 2537 	jz	00124$
      001D84 E5 28            [12] 2538 	mov	a,_DAP_TransferAbort
      001D86 60 AB            [24] 2539 	jz	00122$
      001D88                       2540 00124$:
                                   2541 ;	../../../usb/DAP.c:560: if (response_value != DAP_TRANSFER_OK) {
      001D88 E5 1F            [12] 2542 	mov	a,_bp
      001D8A 24 2A            [12] 2543 	add	a,#0x2a
      001D8C F9               [12] 2544 	mov	r1,a
      001D8D B7 01 02         [24] 2545 	cjne	@r1,#0x01,00706$
      001D90 80 03            [24] 2546 	sjmp	00707$
      001D92                       2547 00706$:
      001D92 02 21 85         [24] 2548 	ljmp	00326$
      001D95                       2549 00707$:
                                   2550 ;	../../../usb/DAP.c:561: break;
      001D95                       2551 00128$:
                                   2552 ;	../../../usb/DAP.c:564: bool mismatch = false;
                                   2553 ;	assignBit
      001D95 C2 01            [12] 2554 	clr	b1
                                   2555 ;	../../../usb/DAP.c:565: do {
      001D97 E5 1F            [12] 2556 	mov	a,_bp
      001D99 24 18            [12] 2557 	add	a,#0x18
      001D9B F9               [12] 2558 	mov	r1,a
      001D9C A7 07            [24] 2559 	mov	@r1,ar7
      001D9E 09               [12] 2560 	inc	r1
      001D9F A7 05            [24] 2561 	mov	@r1,ar5
      001DA1                       2562 00138$:
                                   2563 ;	../../../usb/DAP.c:567: retry = DAP_Data.transfer.retry_count;
      001DA1 90 02 CF         [24] 2564 	mov	dptr,#(_DAP_Data + 0x000f)
      001DA4 E0               [24] 2565 	movx	a,@dptr
      001DA5 FF               [12] 2566 	mov	r7,a
      001DA6 A3               [24] 2567 	inc	dptr
      001DA7 E0               [24] 2568 	movx	a,@dptr
      001DA8 FD               [12] 2569 	mov	r5,a
                                   2570 ;	../../../usb/DAP.c:568: do {
      001DA9                       2571 00131$:
                                   2572 ;	../../../usb/DAP.c:569: response_value = SWD_Transfer(request_value, data);
      001DA9 88 01            [24] 2573 	mov	ar1,r0
      001DAB 7C 00            [12] 2574 	mov	r4,#0x00
      001DAD 7E 40            [12] 2575 	mov	r6,#0x40
      001DAF C0 07            [24] 2576 	push	ar7
      001DB1 C0 05            [24] 2577 	push	ar5
      001DB3 C0 00            [24] 2578 	push	ar0
      001DB5 C0 20            [24] 2579 	push	bits
      001DB7 C0 01            [24] 2580 	push	ar1
      001DB9 C0 04            [24] 2581 	push	ar4
      001DBB C0 06            [24] 2582 	push	ar6
      001DBD E5 1F            [12] 2583 	mov	a,_bp
      001DBF 24 0E            [12] 2584 	add	a,#0x0e
      001DC1 F9               [12] 2585 	mov	r1,a
      001DC2 87 82            [24] 2586 	mov	dpl,@r1
      001DC4 12 2E 97         [24] 2587 	lcall	_SWD_Transfer
      001DC7 AE 82            [24] 2588 	mov	r6,dpl
      001DC9 15 81            [12] 2589 	dec	sp
      001DCB 15 81            [12] 2590 	dec	sp
      001DCD 15 81            [12] 2591 	dec	sp
      001DCF D0 20            [24] 2592 	pop	bits
      001DD1 D0 00            [24] 2593 	pop	ar0
      001DD3 D0 05            [24] 2594 	pop	ar5
      001DD5 D0 07            [24] 2595 	pop	ar7
      001DD7 E5 1F            [12] 2596 	mov	a,_bp
      001DD9 24 2A            [12] 2597 	add	a,#0x2a
      001DDB F9               [12] 2598 	mov	r1,a
      001DDC A7 06            [24] 2599 	mov	@r1,ar6
                                   2600 ;	../../../usb/DAP.c:570: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      001DDE E5 1F            [12] 2601 	mov	a,_bp
      001DE0 24 2A            [12] 2602 	add	a,#0x2a
      001DE2 F9               [12] 2603 	mov	r1,a
      001DE3 B7 02 11         [24] 2604 	cjne	@r1,#0x02,00133$
      001DE6 8F 02            [24] 2605 	mov	ar2,r7
      001DE8 8D 06            [24] 2606 	mov	ar6,r5
      001DEA 1F               [12] 2607 	dec	r7
      001DEB BF FF 01         [24] 2608 	cjne	r7,#0xff,00710$
      001DEE 1D               [12] 2609 	dec	r5
      001DEF                       2610 00710$:
      001DEF EA               [12] 2611 	mov	a,r2
      001DF0 4E               [12] 2612 	orl	a,r6
      001DF1 60 04            [24] 2613 	jz	00133$
      001DF3 E5 28            [12] 2614 	mov	a,_DAP_TransferAbort
      001DF5 60 B2            [24] 2615 	jz	00131$
      001DF7                       2616 00133$:
                                   2617 ;	../../../usb/DAP.c:571: if (response_value != DAP_TRANSFER_OK) {
      001DF7 E5 1F            [12] 2618 	mov	a,_bp
      001DF9 24 2A            [12] 2619 	add	a,#0x2a
      001DFB F9               [12] 2620 	mov	r1,a
      001DFC B7 01 02         [24] 2621 	cjne	@r1,#0x01,00713$
      001DFF 80 03            [24] 2622 	sjmp	00714$
      001E01                       2623 00713$:
      001E01 02 1E B7         [24] 2624 	ljmp	00140$
      001E04                       2625 00714$:
                                   2626 ;	../../../usb/DAP.c:574: mismatch = ((data[0] & DAP_Data.transfer.match_mask[0]) != match_value[0]
      001E04 86 06            [24] 2627 	mov	ar6,@r0
      001E06 90 02 D3         [24] 2628 	mov	dptr,#(_DAP_Data + 0x0013)
      001E09 E0               [24] 2629 	movx	a,@dptr
      001E0A 52 06            [12] 2630 	anl	ar6,a
      001E0C E5 1F            [12] 2631 	mov	a,_bp
      001E0E 24 0F            [12] 2632 	add	a,#0x0f
      001E10 F9               [12] 2633 	mov	r1,a
      001E11 87 01            [24] 2634 	mov	ar1,@r1
      001E13 87 02            [24] 2635 	mov	ar2,@r1
      001E15 EE               [12] 2636 	mov	a,r6
      001E16 B5 02 03         [24] 2637 	cjne	a,ar2,00715$
      001E19 D3               [12] 2638 	setb	c
      001E1A 80 01            [24] 2639 	sjmp	00716$
      001E1C                       2640 00715$:
      001E1C C3               [12] 2641 	clr	c
      001E1D                       2642 00716$:
      001E1D 92 02            [24] 2643 	mov	b2,c
      001E1F 50 6D            [24] 2644 	jnc	00253$
                                   2645 ;	../../../usb/DAP.c:575: || (data[1] & DAP_Data.transfer.match_mask[1]) != match_value[1]
      001E21 E5 1F            [12] 2646 	mov	a,_bp
      001E23 24 07            [12] 2647 	add	a,#0x07
      001E25 F9               [12] 2648 	mov	r1,a
      001E26 87 01            [24] 2649 	mov	ar1,@r1
      001E28 87 06            [24] 2650 	mov	ar6,@r1
      001E2A 90 02 D4         [24] 2651 	mov	dptr,#(_DAP_Data + 0x0014)
      001E2D E0               [24] 2652 	movx	a,@dptr
      001E2E 52 06            [12] 2653 	anl	ar6,a
      001E30 E5 1F            [12] 2654 	mov	a,_bp
      001E32 24 08            [12] 2655 	add	a,#0x08
      001E34 F9               [12] 2656 	mov	r1,a
      001E35 87 01            [24] 2657 	mov	ar1,@r1
      001E37 87 02            [24] 2658 	mov	ar2,@r1
      001E39 EE               [12] 2659 	mov	a,r6
      001E3A B5 02 03         [24] 2660 	cjne	a,ar2,00718$
      001E3D D3               [12] 2661 	setb	c
      001E3E 80 01            [24] 2662 	sjmp	00719$
      001E40                       2663 00718$:
      001E40 C3               [12] 2664 	clr	c
      001E41                       2665 00719$:
      001E41 92 02            [24] 2666 	mov	b2,c
      001E43 50 49            [24] 2667 	jnc	00253$
                                   2668 ;	../../../usb/DAP.c:576: || (data[2] & DAP_Data.transfer.match_mask[2]) != match_value[2]
      001E45 E5 1F            [12] 2669 	mov	a,_bp
      001E47 24 05            [12] 2670 	add	a,#0x05
      001E49 F9               [12] 2671 	mov	r1,a
      001E4A 87 01            [24] 2672 	mov	ar1,@r1
      001E4C 87 06            [24] 2673 	mov	ar6,@r1
      001E4E 90 02 D5         [24] 2674 	mov	dptr,#(_DAP_Data + 0x0015)
      001E51 E0               [24] 2675 	movx	a,@dptr
      001E52 52 06            [12] 2676 	anl	ar6,a
      001E54 E5 1F            [12] 2677 	mov	a,_bp
      001E56 24 09            [12] 2678 	add	a,#0x09
      001E58 F9               [12] 2679 	mov	r1,a
      001E59 87 01            [24] 2680 	mov	ar1,@r1
      001E5B 87 02            [24] 2681 	mov	ar2,@r1
      001E5D EE               [12] 2682 	mov	a,r6
      001E5E B5 02 03         [24] 2683 	cjne	a,ar2,00721$
      001E61 D3               [12] 2684 	setb	c
      001E62 80 01            [24] 2685 	sjmp	00722$
      001E64                       2686 00721$:
      001E64 C3               [12] 2687 	clr	c
      001E65                       2688 00722$:
      001E65 92 02            [24] 2689 	mov	b2,c
      001E67 50 25            [24] 2690 	jnc	00253$
                                   2691 ;	../../../usb/DAP.c:577: || (data[3] & DAP_Data.transfer.match_mask[3]) != match_value[3]);
      001E69 E5 1F            [12] 2692 	mov	a,_bp
      001E6B 24 03            [12] 2693 	add	a,#0x03
      001E6D F9               [12] 2694 	mov	r1,a
      001E6E 87 01            [24] 2695 	mov	ar1,@r1
      001E70 87 06            [24] 2696 	mov	ar6,@r1
      001E72 90 02 D6         [24] 2697 	mov	dptr,#(_DAP_Data + 0x0016)
      001E75 E0               [24] 2698 	movx	a,@dptr
      001E76 52 06            [12] 2699 	anl	ar6,a
      001E78 E5 1F            [12] 2700 	mov	a,_bp
      001E7A 24 06            [12] 2701 	add	a,#0x06
      001E7C F9               [12] 2702 	mov	r1,a
      001E7D 87 01            [24] 2703 	mov	ar1,@r1
      001E7F 87 02            [24] 2704 	mov	ar2,@r1
      001E81 EE               [12] 2705 	mov	a,r6
      001E82 B5 02 03         [24] 2706 	cjne	a,ar2,00724$
      001E85 D3               [12] 2707 	setb	c
      001E86 80 01            [24] 2708 	sjmp	00725$
      001E88                       2709 00724$:
      001E88 C3               [12] 2710 	clr	c
      001E89                       2711 00725$:
      001E89 92 02            [24] 2712 	mov	b2,c
                                   2713 ;	assignBit
      001E8B 10 02 02         [24] 2714 	jbc	b2,00254$
      001E8E                       2715 00253$:
                                   2716 ;	assignBit
      001E8E D2 02            [12] 2717 	setb	b2
      001E90                       2718 00254$:
                                   2719 ;	assignBit
      001E90 A2 02            [12] 2720 	mov	c,b2
      001E92 92 01            [24] 2721 	mov	b1,c
                                   2722 ;	../../../usb/DAP.c:578: } while (mismatch && match_retry-- && !DAP_TransferAbort);
      001E94 30 02 20         [24] 2723 	jnb	b2,00140$
      001E97 E5 1F            [12] 2724 	mov	a,_bp
      001E99 24 18            [12] 2725 	add	a,#0x18
      001E9B F9               [12] 2726 	mov	r1,a
      001E9C 87 02            [24] 2727 	mov	ar2,@r1
      001E9E 09               [12] 2728 	inc	r1
      001E9F 87 06            [24] 2729 	mov	ar6,@r1
      001EA1 E5 1F            [12] 2730 	mov	a,_bp
      001EA3 24 18            [12] 2731 	add	a,#0x18
      001EA5 F9               [12] 2732 	mov	r1,a
      001EA6 17               [12] 2733 	dec	@r1
      001EA7 B7 FF 02         [24] 2734 	cjne	@r1,#0xff,00728$
      001EAA 09               [12] 2735 	inc	r1
      001EAB 17               [12] 2736 	dec	@r1
      001EAC                       2737 00728$:
      001EAC EA               [12] 2738 	mov	a,r2
      001EAD 4E               [12] 2739 	orl	a,r6
      001EAE 60 07            [24] 2740 	jz	00140$
      001EB0 E5 28            [12] 2741 	mov	a,_DAP_TransferAbort
      001EB2 70 03            [24] 2742 	jnz	00730$
      001EB4 02 1D A1         [24] 2743 	ljmp	00138$
      001EB7                       2744 00730$:
      001EB7                       2745 00140$:
                                   2746 ;	../../../usb/DAP.c:579: if (mismatch) {
      001EB7 30 01 09         [24] 2747 	jnb	b1,00142$
                                   2748 ;	../../../usb/DAP.c:580: response_value |= DAP_TRANSFER_MISMATCH;
      001EBA E5 1F            [12] 2749 	mov	a,_bp
      001EBC 24 2A            [12] 2750 	add	a,#0x2a
      001EBE F9               [12] 2751 	mov	r1,a
      001EBF E7               [12] 2752 	mov	a,@r1
      001EC0 44 10            [12] 2753 	orl	a,#0x10
      001EC2 F7               [12] 2754 	mov	@r1,a
      001EC3                       2755 00142$:
                                   2756 ;	../../../usb/DAP.c:582: if (response_value != DAP_TRANSFER_OK) {
      001EC3 E5 1F            [12] 2757 	mov	a,_bp
      001EC5 24 2A            [12] 2758 	add	a,#0x2a
      001EC7 F9               [12] 2759 	mov	r1,a
      001EC8 B7 01 03         [24] 2760 	cjne	@r1,#0x01,00732$
      001ECB 02 1F D1         [24] 2761 	ljmp	00167$
      001ECE                       2762 00732$:
                                   2763 ;	../../../usb/DAP.c:583: break;
      001ECE 02 21 85         [24] 2764 	ljmp	00326$
      001ED1                       2765 00166$:
                                   2766 ;	../../../usb/DAP.c:587: retry = DAP_Data.transfer.retry_count;
      001ED1 90 02 CF         [24] 2767 	mov	dptr,#(_DAP_Data + 0x000f)
      001ED4 E0               [24] 2768 	movx	a,@dptr
      001ED5 FA               [12] 2769 	mov	r2,a
      001ED6 A3               [24] 2770 	inc	dptr
      001ED7 E0               [24] 2771 	movx	a,@dptr
      001ED8 FE               [12] 2772 	mov	r6,a
                                   2773 ;	../../../usb/DAP.c:588: if ((request_value & DAP_TRANSFER_APnDP) != 0U) {
      001ED9 E5 1F            [12] 2774 	mov	a,_bp
      001EDB 24 0E            [12] 2775 	add	a,#0x0e
      001EDD F9               [12] 2776 	mov	r1,a
      001EDE E7               [12] 2777 	mov	a,@r1
      001EDF 30 E0 65         [24] 2778 	jnb	acc.0,00301$
                                   2779 ;	../../../usb/DAP.c:590: if (post_read == 0U) {
      001EE2 30 00 03         [24] 2780 	jnb	b0,00734$
      001EE5 02 1F D1         [24] 2781 	ljmp	00167$
      001EE8                       2782 00734$:
                                   2783 ;	../../../usb/DAP.c:592: do {
      001EE8 8A 05            [24] 2784 	mov	ar5,r2
      001EEA 8E 03            [24] 2785 	mov	ar3,r6
      001EEC                       2786 00147$:
                                   2787 ;	../../../usb/DAP.c:593: response_value = SWD_Transfer(request_value, NULL);
      001EEC C0 05            [24] 2788 	push	ar5
      001EEE C0 03            [24] 2789 	push	ar3
      001EF0 C0 00            [24] 2790 	push	ar0
      001EF2 C0 20            [24] 2791 	push	bits
      001EF4 E4               [12] 2792 	clr	a
      001EF5 C0 E0            [24] 2793 	push	acc
      001EF7 C0 E0            [24] 2794 	push	acc
      001EF9 C0 E0            [24] 2795 	push	acc
      001EFB E5 1F            [12] 2796 	mov	a,_bp
      001EFD 24 0E            [12] 2797 	add	a,#0x0e
      001EFF F9               [12] 2798 	mov	r1,a
      001F00 87 82            [24] 2799 	mov	dpl,@r1
      001F02 12 2E 97         [24] 2800 	lcall	_SWD_Transfer
      001F05 AC 82            [24] 2801 	mov	r4,dpl
      001F07 15 81            [12] 2802 	dec	sp
      001F09 15 81            [12] 2803 	dec	sp
      001F0B 15 81            [12] 2804 	dec	sp
      001F0D D0 20            [24] 2805 	pop	bits
      001F0F D0 00            [24] 2806 	pop	ar0
      001F11 D0 03            [24] 2807 	pop	ar3
      001F13 D0 05            [24] 2808 	pop	ar5
      001F15 E5 1F            [12] 2809 	mov	a,_bp
      001F17 24 2A            [12] 2810 	add	a,#0x2a
      001F19 F9               [12] 2811 	mov	r1,a
      001F1A A7 04            [24] 2812 	mov	@r1,ar4
                                   2813 ;	../../../usb/DAP.c:594: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      001F1C E5 1F            [12] 2814 	mov	a,_bp
      001F1E 24 2A            [12] 2815 	add	a,#0x2a
      001F20 F9               [12] 2816 	mov	r1,a
      001F21 B7 02 11         [24] 2817 	cjne	@r1,#0x02,00149$
      001F24 8D 04            [24] 2818 	mov	ar4,r5
      001F26 8B 07            [24] 2819 	mov	ar7,r3
      001F28 1D               [12] 2820 	dec	r5
      001F29 BD FF 01         [24] 2821 	cjne	r5,#0xff,00737$
      001F2C 1B               [12] 2822 	dec	r3
      001F2D                       2823 00737$:
      001F2D EC               [12] 2824 	mov	a,r4
      001F2E 4F               [12] 2825 	orl	a,r7
      001F2F 60 04            [24] 2826 	jz	00149$
      001F31 E5 28            [12] 2827 	mov	a,_DAP_TransferAbort
      001F33 60 B7            [24] 2828 	jz	00147$
      001F35                       2829 00149$:
                                   2830 ;	../../../usb/DAP.c:595: if (response_value != DAP_TRANSFER_OK) {
      001F35 E5 1F            [12] 2831 	mov	a,_bp
      001F37 24 2A            [12] 2832 	add	a,#0x2a
      001F39 F9               [12] 2833 	mov	r1,a
      001F3A B7 01 02         [24] 2834 	cjne	@r1,#0x01,00740$
      001F3D 80 03            [24] 2835 	sjmp	00741$
      001F3F                       2836 00740$:
      001F3F 02 21 85         [24] 2837 	ljmp	00326$
      001F42                       2838 00741$:
                                   2839 ;	../../../usb/DAP.c:598: post_read = 1U;
                                   2840 ;	assignBit
      001F42 D2 00            [12] 2841 	setb	b0
      001F44 02 1F D1         [24] 2842 	ljmp	00167$
                                   2843 ;	../../../usb/DAP.c:602: do {
      001F47                       2844 00301$:
      001F47 88 07            [24] 2845 	mov	ar7,r0
      001F49 8A 05            [24] 2846 	mov	ar5,r2
      001F4B                       2847 00156$:
                                   2848 ;	../../../usb/DAP.c:603: response_value = SWD_Transfer(request_value, data);
      001F4B 8F 02            [24] 2849 	mov	ar2,r7
      001F4D 7B 00            [12] 2850 	mov	r3,#0x00
      001F4F 7C 40            [12] 2851 	mov	r4,#0x40
      001F51 C0 07            [24] 2852 	push	ar7
      001F53 C0 06            [24] 2853 	push	ar6
      001F55 C0 05            [24] 2854 	push	ar5
      001F57 C0 00            [24] 2855 	push	ar0
      001F59 C0 20            [24] 2856 	push	bits
      001F5B C0 02            [24] 2857 	push	ar2
      001F5D C0 03            [24] 2858 	push	ar3
      001F5F C0 04            [24] 2859 	push	ar4
      001F61 E5 1F            [12] 2860 	mov	a,_bp
      001F63 24 0E            [12] 2861 	add	a,#0x0e
      001F65 F9               [12] 2862 	mov	r1,a
      001F66 87 82            [24] 2863 	mov	dpl,@r1
      001F68 12 2E 97         [24] 2864 	lcall	_SWD_Transfer
      001F6B AC 82            [24] 2865 	mov	r4,dpl
      001F6D 15 81            [12] 2866 	dec	sp
      001F6F 15 81            [12] 2867 	dec	sp
      001F71 15 81            [12] 2868 	dec	sp
      001F73 D0 20            [24] 2869 	pop	bits
      001F75 D0 00            [24] 2870 	pop	ar0
      001F77 D0 05            [24] 2871 	pop	ar5
      001F79 D0 06            [24] 2872 	pop	ar6
      001F7B D0 07            [24] 2873 	pop	ar7
      001F7D E5 1F            [12] 2874 	mov	a,_bp
      001F7F 24 2A            [12] 2875 	add	a,#0x2a
      001F81 F9               [12] 2876 	mov	r1,a
      001F82 A7 04            [24] 2877 	mov	@r1,ar4
                                   2878 ;	../../../usb/DAP.c:604: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      001F84 E5 1F            [12] 2879 	mov	a,_bp
      001F86 24 2A            [12] 2880 	add	a,#0x2a
      001F88 F9               [12] 2881 	mov	r1,a
      001F89 B7 02 11         [24] 2882 	cjne	@r1,#0x02,00158$
      001F8C 8D 03            [24] 2883 	mov	ar3,r5
      001F8E 8E 04            [24] 2884 	mov	ar4,r6
      001F90 1D               [12] 2885 	dec	r5
      001F91 BD FF 01         [24] 2886 	cjne	r5,#0xff,00744$
      001F94 1E               [12] 2887 	dec	r6
      001F95                       2888 00744$:
      001F95 EB               [12] 2889 	mov	a,r3
      001F96 4C               [12] 2890 	orl	a,r4
      001F97 60 04            [24] 2891 	jz	00158$
      001F99 E5 28            [12] 2892 	mov	a,_DAP_TransferAbort
      001F9B 60 AE            [24] 2893 	jz	00156$
      001F9D                       2894 00158$:
                                   2895 ;	../../../usb/DAP.c:605: if (response_value != DAP_TRANSFER_OK) {
      001F9D E5 1F            [12] 2896 	mov	a,_bp
      001F9F 24 2A            [12] 2897 	add	a,#0x2a
      001FA1 F9               [12] 2898 	mov	r1,a
      001FA2 B7 01 02         [24] 2899 	cjne	@r1,#0x01,00747$
      001FA5 80 03            [24] 2900 	sjmp	00748$
      001FA7                       2901 00747$:
      001FA7 02 21 85         [24] 2902 	ljmp	00326$
      001FAA                       2903 00748$:
                                   2904 ;	../../../usb/DAP.c:609: for (uint8_t i = 0; i < 4; i++) {
      001FAA 7E 00            [12] 2905 	mov	r6,#0x00
      001FAC                       2906 00230$:
      001FAC BE 04 00         [24] 2907 	cjne	r6,#0x04,00749$
      001FAF                       2908 00749$:
      001FAF 50 20            [24] 2909 	jnc	00167$
                                   2910 ;	../../../usb/DAP.c:610: *response++ = data[i];
      001FB1 AB 2C            [24] 2911 	mov	r3,_response
      001FB3 AC 2D            [24] 2912 	mov	r4,(_response + 1)
      001FB5 AD 2E            [24] 2913 	mov	r5,(_response + 2)
      001FB7 EE               [12] 2914 	mov	a,r6
      001FB8 2F               [12] 2915 	add	a,r7
      001FB9 F9               [12] 2916 	mov	r1,a
      001FBA 87 02            [24] 2917 	mov	ar2,@r1
      001FBC 8B 82            [24] 2918 	mov	dpl,r3
      001FBE 8C 83            [24] 2919 	mov	dph,r4
      001FC0 8D F0            [24] 2920 	mov	b,r5
      001FC2 EA               [12] 2921 	mov	a,r2
      001FC3 12 30 FC         [24] 2922 	lcall	__gptrput
      001FC6 05 2C            [12] 2923 	inc	_response
      001FC8 E4               [12] 2924 	clr	a
      001FC9 B5 2C 02         [24] 2925 	cjne	a,_response,00751$
      001FCC 05 2D            [12] 2926 	inc	(_response + 1)
      001FCE                       2927 00751$:
                                   2928 ;	../../../usb/DAP.c:609: for (uint8_t i = 0; i < 4; i++) {
      001FCE 0E               [12] 2929 	inc	r6
      001FCF 80 DB            [24] 2930 	sjmp	00230$
      001FD1                       2931 00167$:
                                   2932 ;	../../../usb/DAP.c:614: check_write = 0U;
      001FD1 E5 1F            [12] 2933 	mov	a,_bp
      001FD3 24 1E            [12] 2934 	add	a,#0x1e
      001FD5 F9               [12] 2935 	mov	r1,a
      001FD6 77 00            [12] 2936 	mov	@r1,#0x00
      001FD8 02 21 52         [24] 2937 	ljmp	00192$
      001FDB                       2938 00191$:
                                   2939 ;	../../../usb/DAP.c:617: if (post_read) {
      001FDB 20 00 03         [24] 2940 	jb	b0,00752$
      001FDE 02 20 6F         [24] 2941 	ljmp	00313$
      001FE1                       2942 00752$:
                                   2943 ;	../../../usb/DAP.c:619: retry = DAP_Data.transfer.retry_count;
      001FE1 90 02 CF         [24] 2944 	mov	dptr,#(_DAP_Data + 0x000f)
      001FE4 E0               [24] 2945 	movx	a,@dptr
      001FE5 FE               [12] 2946 	mov	r6,a
      001FE6 A3               [24] 2947 	inc	dptr
      001FE7 E0               [24] 2948 	movx	a,@dptr
      001FE8 FF               [12] 2949 	mov	r7,a
                                   2950 ;	../../../usb/DAP.c:620: do {
      001FE9 88 05            [24] 2951 	mov	ar5,r0
      001FEB                       2952 00170$:
                                   2953 ;	../../../usb/DAP.c:621: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, data);
      001FEB 8D 02            [24] 2954 	mov	ar2,r5
      001FED 7B 00            [12] 2955 	mov	r3,#0x00
      001FEF 7C 40            [12] 2956 	mov	r4,#0x40
      001FF1 C0 07            [24] 2957 	push	ar7
      001FF3 C0 06            [24] 2958 	push	ar6
      001FF5 C0 05            [24] 2959 	push	ar5
      001FF7 C0 00            [24] 2960 	push	ar0
      001FF9 C0 20            [24] 2961 	push	bits
      001FFB C0 02            [24] 2962 	push	ar2
      001FFD C0 03            [24] 2963 	push	ar3
      001FFF C0 04            [24] 2964 	push	ar4
      002001 75 82 0E         [24] 2965 	mov	dpl,#0x0e
      002004 12 2E 97         [24] 2966 	lcall	_SWD_Transfer
      002007 AC 82            [24] 2967 	mov	r4,dpl
      002009 15 81            [12] 2968 	dec	sp
      00200B 15 81            [12] 2969 	dec	sp
      00200D 15 81            [12] 2970 	dec	sp
      00200F D0 20            [24] 2971 	pop	bits
      002011 D0 00            [24] 2972 	pop	ar0
      002013 D0 05            [24] 2973 	pop	ar5
      002015 D0 06            [24] 2974 	pop	ar6
      002017 D0 07            [24] 2975 	pop	ar7
      002019 E5 1F            [12] 2976 	mov	a,_bp
      00201B 24 2A            [12] 2977 	add	a,#0x2a
      00201D F9               [12] 2978 	mov	r1,a
      00201E A7 04            [24] 2979 	mov	@r1,ar4
                                   2980 ;	../../../usb/DAP.c:622: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      002020 E5 1F            [12] 2981 	mov	a,_bp
      002022 24 2A            [12] 2982 	add	a,#0x2a
      002024 F9               [12] 2983 	mov	r1,a
      002025 B7 02 11         [24] 2984 	cjne	@r1,#0x02,00172$
      002028 8E 03            [24] 2985 	mov	ar3,r6
      00202A 8F 04            [24] 2986 	mov	ar4,r7
      00202C 1E               [12] 2987 	dec	r6
      00202D BE FF 01         [24] 2988 	cjne	r6,#0xff,00755$
      002030 1F               [12] 2989 	dec	r7
      002031                       2990 00755$:
      002031 EB               [12] 2991 	mov	a,r3
      002032 4C               [12] 2992 	orl	a,r4
      002033 60 04            [24] 2993 	jz	00172$
      002035 E5 28            [12] 2994 	mov	a,_DAP_TransferAbort
      002037 60 B2            [24] 2995 	jz	00170$
      002039                       2996 00172$:
                                   2997 ;	../../../usb/DAP.c:623: if (response_value != DAP_TRANSFER_OK) {
      002039 E5 1F            [12] 2998 	mov	a,_bp
      00203B 24 2A            [12] 2999 	add	a,#0x2a
      00203D F9               [12] 3000 	mov	r1,a
      00203E B7 01 02         [24] 3001 	cjne	@r1,#0x01,00758$
      002041 80 03            [24] 3002 	sjmp	00759$
      002043                       3003 00758$:
      002043 02 21 85         [24] 3004 	ljmp	00326$
      002046                       3005 00759$:
                                   3006 ;	../../../usb/DAP.c:627: for (uint8_t i = 0; i < 4; i++) {
      002046 7F 00            [12] 3007 	mov	r7,#0x00
      002048                       3008 00233$:
      002048 BF 04 00         [24] 3009 	cjne	r7,#0x04,00760$
      00204B                       3010 00760$:
      00204B 50 20            [24] 3011 	jnc	00175$
                                   3012 ;	../../../usb/DAP.c:628: *response++ = data[i];
      00204D AB 2C            [24] 3013 	mov	r3,_response
      00204F AC 2D            [24] 3014 	mov	r4,(_response + 1)
      002051 AE 2E            [24] 3015 	mov	r6,(_response + 2)
      002053 EF               [12] 3016 	mov	a,r7
      002054 2D               [12] 3017 	add	a,r5
      002055 F9               [12] 3018 	mov	r1,a
      002056 87 02            [24] 3019 	mov	ar2,@r1
      002058 8B 82            [24] 3020 	mov	dpl,r3
      00205A 8C 83            [24] 3021 	mov	dph,r4
      00205C 8E F0            [24] 3022 	mov	b,r6
      00205E EA               [12] 3023 	mov	a,r2
      00205F 12 30 FC         [24] 3024 	lcall	__gptrput
      002062 05 2C            [12] 3025 	inc	_response
      002064 E4               [12] 3026 	clr	a
      002065 B5 2C 02         [24] 3027 	cjne	a,_response,00762$
      002068 05 2D            [12] 3028 	inc	(_response + 1)
      00206A                       3029 00762$:
                                   3030 ;	../../../usb/DAP.c:627: for (uint8_t i = 0; i < 4; i++) {
      00206A 0F               [12] 3031 	inc	r7
      00206B 80 DB            [24] 3032 	sjmp	00233$
      00206D                       3033 00175$:
                                   3034 ;	../../../usb/DAP.c:630: post_read = 0U;
                                   3035 ;	assignBit
      00206D C2 00            [12] 3036 	clr	b0
                                   3037 ;	../../../usb/DAP.c:633: for (uint8_t i = 0; i < 4; i++) {
      00206F                       3038 00313$:
      00206F E5 1F            [12] 3039 	mov	a,_bp
      002071 24 15            [12] 3040 	add	a,#0x15
      002073 F9               [12] 3041 	mov	r1,a
      002074 87 06            [24] 3042 	mov	ar6,@r1
      002076 09               [12] 3043 	inc	r1
      002077 87 05            [24] 3044 	mov	ar5,@r1
      002079 09               [12] 3045 	inc	r1
      00207A 87 07            [24] 3046 	mov	ar7,@r1
      00207C 7C 00            [12] 3047 	mov	r4,#0x00
      00207E                       3048 00236$:
      00207E BC 04 00         [24] 3049 	cjne	r4,#0x04,00763$
      002081                       3050 00763$:
      002081 50 20            [24] 3051 	jnc	00349$
                                   3052 ;	../../../usb/DAP.c:634: data[i] = *req++;
      002083 C0 00            [24] 3053 	push	ar0
      002085 E5 1F            [12] 3054 	mov	a,_bp
      002087 24 0B            [12] 3055 	add	a,#0x0b
      002089 F8               [12] 3056 	mov	r0,a
      00208A EC               [12] 3057 	mov	a,r4
      00208B 26               [12] 3058 	add	a,@r0
      00208C F9               [12] 3059 	mov	r1,a
      00208D D0 00            [24] 3060 	pop	ar0
      00208F 8E 82            [24] 3061 	mov	dpl,r6
      002091 8D 83            [24] 3062 	mov	dph,r5
      002093 8F F0            [24] 3063 	mov	b,r7
      002095 12 33 25         [24] 3064 	lcall	__gptrget
      002098 FB               [12] 3065 	mov	r3,a
      002099 A3               [24] 3066 	inc	dptr
      00209A AE 82            [24] 3067 	mov	r6,dpl
      00209C AD 83            [24] 3068 	mov	r5,dph
      00209E A7 03            [24] 3069 	mov	@r1,ar3
                                   3070 ;	../../../usb/DAP.c:633: for (uint8_t i = 0; i < 4; i++) {
      0020A0 0C               [12] 3071 	inc	r4
      0020A1 80 DB            [24] 3072 	sjmp	00236$
      0020A3                       3073 00349$:
      0020A3 E5 1F            [12] 3074 	mov	a,_bp
      0020A5 24 15            [12] 3075 	add	a,#0x15
      0020A7 F9               [12] 3076 	mov	r1,a
      0020A8 A7 06            [24] 3077 	mov	@r1,ar6
      0020AA 09               [12] 3078 	inc	r1
      0020AB A7 05            [24] 3079 	mov	@r1,ar5
      0020AD 09               [12] 3080 	inc	r1
      0020AE A7 07            [24] 3081 	mov	@r1,ar7
                                   3082 ;	../../../usb/DAP.c:636: if ((request_value & DAP_TRANSFER_MATCH_MASK) != 0U) {
      0020B0 E5 1F            [12] 3083 	mov	a,_bp
      0020B2 24 0E            [12] 3084 	add	a,#0x0e
      0020B4 F9               [12] 3085 	mov	r1,a
      0020B5 E7               [12] 3086 	mov	a,@r1
      0020B6 30 E5 2F         [24] 3087 	jnb	acc.5,00188$
                                   3088 ;	../../../usb/DAP.c:638: for (uint8_t i = 0; i < 4; i++)
      0020B9 7F 00            [12] 3089 	mov	r7,#0x00
      0020BB                       3090 00239$:
      0020BB BF 04 00         [24] 3091 	cjne	r7,#0x04,00766$
      0020BE                       3092 00766$:
      0020BE 50 1F            [24] 3093 	jnc	00179$
                                   3094 ;	../../../usb/DAP.c:639: DAP_Data.transfer.match_mask[i] = data[i];
      0020C0 EF               [12] 3095 	mov	a,r7
      0020C1 24 D3            [12] 3096 	add	a,#(_DAP_Data + 0x0013)
      0020C3 FD               [12] 3097 	mov	r5,a
      0020C4 E4               [12] 3098 	clr	a
      0020C5 34 02            [12] 3099 	addc	a,#((_DAP_Data + 0x0013) >> 8)
      0020C7 FE               [12] 3100 	mov	r6,a
      0020C8 C0 00            [24] 3101 	push	ar0
      0020CA E5 1F            [12] 3102 	mov	a,_bp
      0020CC 24 0C            [12] 3103 	add	a,#0x0c
      0020CE F8               [12] 3104 	mov	r0,a
      0020CF EF               [12] 3105 	mov	a,r7
      0020D0 26               [12] 3106 	add	a,@r0
      0020D1 F9               [12] 3107 	mov	r1,a
      0020D2 D0 00            [24] 3108 	pop	ar0
      0020D4 87 04            [24] 3109 	mov	ar4,@r1
      0020D6 8D 82            [24] 3110 	mov	dpl,r5
      0020D8 8E 83            [24] 3111 	mov	dph,r6
      0020DA EC               [12] 3112 	mov	a,r4
      0020DB F0               [24] 3113 	movx	@dptr,a
                                   3114 ;	../../../usb/DAP.c:638: for (uint8_t i = 0; i < 4; i++)
      0020DC 0F               [12] 3115 	inc	r7
      0020DD 80 DC            [24] 3116 	sjmp	00239$
      0020DF                       3117 00179$:
                                   3118 ;	../../../usb/DAP.c:640: response_value = DAP_TRANSFER_OK;
      0020DF E5 1F            [12] 3119 	mov	a,_bp
      0020E1 24 2A            [12] 3120 	add	a,#0x2a
      0020E3 F9               [12] 3121 	mov	r1,a
      0020E4 77 01            [12] 3122 	mov	@r1,#0x01
      0020E6 80 6A            [24] 3123 	sjmp	00192$
      0020E8                       3124 00188$:
                                   3125 ;	../../../usb/DAP.c:643: retry = DAP_Data.transfer.retry_count;
      0020E8 90 02 CF         [24] 3126 	mov	dptr,#(_DAP_Data + 0x000f)
      0020EB E0               [24] 3127 	movx	a,@dptr
      0020EC FE               [12] 3128 	mov	r6,a
      0020ED A3               [24] 3129 	inc	dptr
      0020EE E0               [24] 3130 	movx	a,@dptr
      0020EF FF               [12] 3131 	mov	r7,a
                                   3132 ;	../../../usb/DAP.c:644: do {
      0020F0                       3133 00182$:
                                   3134 ;	../../../usb/DAP.c:645: response_value = SWD_Transfer(request_value, data);
      0020F0 E5 1F            [12] 3135 	mov	a,_bp
      0020F2 24 0D            [12] 3136 	add	a,#0x0d
      0020F4 F9               [12] 3137 	mov	r1,a
      0020F5 87 03            [24] 3138 	mov	ar3,@r1
      0020F7 7C 00            [12] 3139 	mov	r4,#0x00
      0020F9 7D 40            [12] 3140 	mov	r5,#0x40
      0020FB C0 07            [24] 3141 	push	ar7
      0020FD C0 06            [24] 3142 	push	ar6
      0020FF C0 00            [24] 3143 	push	ar0
      002101 C0 20            [24] 3144 	push	bits
      002103 C0 03            [24] 3145 	push	ar3
      002105 C0 04            [24] 3146 	push	ar4
      002107 C0 05            [24] 3147 	push	ar5
      002109 E5 1F            [12] 3148 	mov	a,_bp
      00210B 24 0E            [12] 3149 	add	a,#0x0e
      00210D F9               [12] 3150 	mov	r1,a
      00210E 87 82            [24] 3151 	mov	dpl,@r1
      002110 12 2E 97         [24] 3152 	lcall	_SWD_Transfer
      002113 AD 82            [24] 3153 	mov	r5,dpl
      002115 15 81            [12] 3154 	dec	sp
      002117 15 81            [12] 3155 	dec	sp
      002119 15 81            [12] 3156 	dec	sp
      00211B D0 20            [24] 3157 	pop	bits
      00211D D0 00            [24] 3158 	pop	ar0
      00211F D0 06            [24] 3159 	pop	ar6
      002121 D0 07            [24] 3160 	pop	ar7
      002123 E5 1F            [12] 3161 	mov	a,_bp
      002125 24 2A            [12] 3162 	add	a,#0x2a
      002127 F9               [12] 3163 	mov	r1,a
      002128 A7 05            [24] 3164 	mov	@r1,ar5
                                   3165 ;	../../../usb/DAP.c:646: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      00212A E5 1F            [12] 3166 	mov	a,_bp
      00212C 24 2A            [12] 3167 	add	a,#0x2a
      00212E F9               [12] 3168 	mov	r1,a
      00212F B7 02 11         [24] 3169 	cjne	@r1,#0x02,00184$
      002132 8E 04            [24] 3170 	mov	ar4,r6
      002134 8F 05            [24] 3171 	mov	ar5,r7
      002136 1E               [12] 3172 	dec	r6
      002137 BE FF 01         [24] 3173 	cjne	r6,#0xff,00770$
      00213A 1F               [12] 3174 	dec	r7
      00213B                       3175 00770$:
      00213B EC               [12] 3176 	mov	a,r4
      00213C 4D               [12] 3177 	orl	a,r5
      00213D 60 04            [24] 3178 	jz	00184$
      00213F E5 28            [12] 3179 	mov	a,_DAP_TransferAbort
      002141 60 AD            [24] 3180 	jz	00182$
      002143                       3181 00184$:
                                   3182 ;	../../../usb/DAP.c:647: if (response_value != DAP_TRANSFER_OK) {
      002143 E5 1F            [12] 3183 	mov	a,_bp
      002145 24 2A            [12] 3184 	add	a,#0x2a
      002147 F9               [12] 3185 	mov	r1,a
      002148 B7 01 3A         [24] 3186 	cjne	@r1,#0x01,00326$
                                   3187 ;	../../../usb/DAP.c:650: check_write = 1U;
      00214B E5 1F            [12] 3188 	mov	a,_bp
      00214D 24 1E            [12] 3189 	add	a,#0x1e
      00214F F9               [12] 3190 	mov	r1,a
      002150 77 01            [12] 3191 	mov	@r1,#0x01
      002152                       3192 00192$:
                                   3193 ;	../../../usb/DAP.c:653: response_count++;
      002152 E5 1F            [12] 3194 	mov	a,_bp
      002154 24 2B            [12] 3195 	add	a,#0x2b
      002156 F9               [12] 3196 	mov	r1,a
      002157 07               [12] 3197 	inc	@r1
      002158 E5 1F            [12] 3198 	mov	a,_bp
      00215A 24 2B            [12] 3199 	add	a,#0x2b
      00215C F9               [12] 3200 	mov	r1,a
      00215D C0 00            [24] 3201 	push	ar0
      00215F E5 1F            [12] 3202 	mov	a,_bp
      002161 24 13            [12] 3203 	add	a,#0x13
      002163 F8               [12] 3204 	mov	r0,a
      002164 E7               [12] 3205 	mov	a,@r1
      002165 F6               [12] 3206 	mov	@r0,a
      002166 D0 00            [24] 3207 	pop	ar0
                                   3208 ;	../../../usb/DAP.c:654: if (DAP_TransferAbort) {
      002168 E5 28            [12] 3209 	mov	a,_DAP_TransferAbort
      00216A 70 19            [24] 3210 	jnz	00326$
                                   3211 ;	../../../usb/DAP.c:521: for (; request_count != 0U; request_count--) {
      00216C E5 1F            [12] 3212 	mov	a,_bp
      00216E 24 04            [12] 3213 	add	a,#0x04
      002170 F9               [12] 3214 	mov	r1,a
      002171 17               [12] 3215 	dec	@r1
      002172 E5 1F            [12] 3216 	mov	a,_bp
      002174 24 04            [12] 3217 	add	a,#0x04
      002176 F9               [12] 3218 	mov	r1,a
      002177 C0 00            [24] 3219 	push	ar0
      002179 E5 1F            [12] 3220 	mov	a,_bp
      00217B 24 23            [12] 3221 	add	a,#0x23
      00217D F8               [12] 3222 	mov	r0,a
      00217E E7               [12] 3223 	mov	a,@r1
      00217F F6               [12] 3224 	mov	@r0,a
      002180 D0 00            [24] 3225 	pop	ar0
      002182 02 1B 8A         [24] 3226 	ljmp	00242$
      002185                       3227 00326$:
      002185 E5 1F            [12] 3228 	mov	a,_bp
      002187 24 23            [12] 3229 	add	a,#0x23
      002189 F9               [12] 3230 	mov	r1,a
      00218A 87 07            [24] 3231 	mov	ar7,@r1
      00218C                       3232 00245$:
                                   3233 ;	../../../usb/DAP.c:659: for (; request_count != 0U; request_count--) {
      00218C EF               [12] 3234 	mov	a,r7
      00218D 60 40            [24] 3235 	jz	00201$
                                   3236 ;	../../../usb/DAP.c:661: request_value = *req++;
      00218F E5 1F            [12] 3237 	mov	a,_bp
      002191 24 15            [12] 3238 	add	a,#0x15
      002193 F9               [12] 3239 	mov	r1,a
      002194 87 82            [24] 3240 	mov	dpl,@r1
      002196 09               [12] 3241 	inc	r1
      002197 87 83            [24] 3242 	mov	dph,@r1
      002199 09               [12] 3243 	inc	r1
      00219A 87 F0            [24] 3244 	mov	b,@r1
      00219C 12 33 25         [24] 3245 	lcall	__gptrget
      00219F FE               [12] 3246 	mov	r6,a
      0021A0 A3               [24] 3247 	inc	dptr
      0021A1 19               [12] 3248 	dec	r1
      0021A2 19               [12] 3249 	dec	r1
      0021A3 A7 82            [24] 3250 	mov	@r1,dpl
      0021A5 09               [12] 3251 	inc	r1
      0021A6 A7 83            [24] 3252 	mov	@r1,dph
                                   3253 ;	../../../usb/DAP.c:662: if ((request_value & DAP_TRANSFER_RnW) != 0U) {
      0021A8 EE               [12] 3254 	mov	a,r6
      0021A9 30 E1 13         [24] 3255 	jnb	acc.1,00199$
                                   3256 ;	../../../usb/DAP.c:664: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U) {
      0021AC EE               [12] 3257 	mov	a,r6
      0021AD 30 E4 1C         [24] 3258 	jnb	acc.4,00246$
                                   3259 ;	../../../usb/DAP.c:666: req += 4;
      0021B0 E5 1F            [12] 3260 	mov	a,_bp
      0021B2 24 15            [12] 3261 	add	a,#0x15
      0021B4 F9               [12] 3262 	mov	r1,a
      0021B5 74 04            [12] 3263 	mov	a,#0x04
      0021B7 27               [12] 3264 	add	a,@r1
      0021B8 F7               [12] 3265 	mov	@r1,a
      0021B9 E4               [12] 3266 	clr	a
      0021BA 09               [12] 3267 	inc	r1
      0021BB 37               [12] 3268 	addc	a,@r1
      0021BC F7               [12] 3269 	mov	@r1,a
      0021BD 80 0D            [24] 3270 	sjmp	00246$
      0021BF                       3271 00199$:
                                   3272 ;	../../../usb/DAP.c:670: req += 4;
      0021BF E5 1F            [12] 3273 	mov	a,_bp
      0021C1 24 15            [12] 3274 	add	a,#0x15
      0021C3 F9               [12] 3275 	mov	r1,a
      0021C4 74 04            [12] 3276 	mov	a,#0x04
      0021C6 27               [12] 3277 	add	a,@r1
      0021C7 F7               [12] 3278 	mov	@r1,a
      0021C8 E4               [12] 3279 	clr	a
      0021C9 09               [12] 3280 	inc	r1
      0021CA 37               [12] 3281 	addc	a,@r1
      0021CB F7               [12] 3282 	mov	@r1,a
      0021CC                       3283 00246$:
                                   3284 ;	../../../usb/DAP.c:659: for (; request_count != 0U; request_count--) {
      0021CC 1F               [12] 3285 	dec	r7
      0021CD 80 BD            [24] 3286 	sjmp	00245$
      0021CF                       3287 00201$:
                                   3288 ;	../../../usb/DAP.c:674: if (response_value == DAP_TRANSFER_OK) {
      0021CF E5 1F            [12] 3289 	mov	a,_bp
      0021D1 24 2A            [12] 3290 	add	a,#0x2a
      0021D3 F9               [12] 3291 	mov	r1,a
      0021D4 B7 01 02         [24] 3292 	cjne	@r1,#0x01,00779$
      0021D7 80 03            [24] 3293 	sjmp	00780$
      0021D9                       3294 00779$:
      0021D9 02 22 AE         [24] 3295 	ljmp	00222$
      0021DC                       3296 00780$:
                                   3297 ;	../../../usb/DAP.c:675: if (post_read) {
      0021DC 20 00 03         [24] 3298 	jb	b0,00781$
      0021DF 02 22 61         [24] 3299 	ljmp	00218$
      0021E2                       3300 00781$:
                                   3301 ;	../../../usb/DAP.c:677: retry = DAP_Data.transfer.retry_count;
      0021E2 90 02 CF         [24] 3302 	mov	dptr,#(_DAP_Data + 0x000f)
      0021E5 E0               [24] 3303 	movx	a,@dptr
      0021E6 FE               [12] 3304 	mov	r6,a
      0021E7 A3               [24] 3305 	inc	dptr
      0021E8 E0               [24] 3306 	movx	a,@dptr
      0021E9 FF               [12] 3307 	mov	r7,a
                                   3308 ;	../../../usb/DAP.c:678: do {
      0021EA 88 05            [24] 3309 	mov	ar5,r0
      0021EC                       3310 00204$:
                                   3311 ;	../../../usb/DAP.c:679: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, data);
      0021EC 8D 02            [24] 3312 	mov	ar2,r5
      0021EE 7B 00            [12] 3313 	mov	r3,#0x00
      0021F0 7C 40            [12] 3314 	mov	r4,#0x40
      0021F2 C0 07            [24] 3315 	push	ar7
      0021F4 C0 06            [24] 3316 	push	ar6
      0021F6 C0 05            [24] 3317 	push	ar5
      0021F8 C0 02            [24] 3318 	push	ar2
      0021FA C0 03            [24] 3319 	push	ar3
      0021FC C0 04            [24] 3320 	push	ar4
      0021FE 75 82 0E         [24] 3321 	mov	dpl,#0x0e
      002201 12 2E 97         [24] 3322 	lcall	_SWD_Transfer
      002204 AC 82            [24] 3323 	mov	r4,dpl
      002206 15 81            [12] 3324 	dec	sp
      002208 15 81            [12] 3325 	dec	sp
      00220A 15 81            [12] 3326 	dec	sp
      00220C D0 05            [24] 3327 	pop	ar5
      00220E D0 06            [24] 3328 	pop	ar6
      002210 D0 07            [24] 3329 	pop	ar7
      002212 E5 1F            [12] 3330 	mov	a,_bp
      002214 24 2A            [12] 3331 	add	a,#0x2a
      002216 F8               [12] 3332 	mov	r0,a
      002217 A6 04            [24] 3333 	mov	@r0,ar4
                                   3334 ;	../../../usb/DAP.c:680: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      002219 E5 1F            [12] 3335 	mov	a,_bp
      00221B 24 2A            [12] 3336 	add	a,#0x2a
      00221D F8               [12] 3337 	mov	r0,a
      00221E B6 02 11         [24] 3338 	cjne	@r0,#0x02,00206$
      002221 8E 03            [24] 3339 	mov	ar3,r6
      002223 8F 04            [24] 3340 	mov	ar4,r7
      002225 1E               [12] 3341 	dec	r6
      002226 BE FF 01         [24] 3342 	cjne	r6,#0xff,00784$
      002229 1F               [12] 3343 	dec	r7
      00222A                       3344 00784$:
      00222A EB               [12] 3345 	mov	a,r3
      00222B 4C               [12] 3346 	orl	a,r4
      00222C 60 04            [24] 3347 	jz	00206$
      00222E E5 28            [12] 3348 	mov	a,_DAP_TransferAbort
      002230 60 BA            [24] 3349 	jz	00204$
      002232                       3350 00206$:
                                   3351 ;	../../../usb/DAP.c:681: if (response_value != DAP_TRANSFER_OK) {
      002232 E5 1F            [12] 3352 	mov	a,_bp
      002234 24 2A            [12] 3353 	add	a,#0x2a
      002236 F8               [12] 3354 	mov	r0,a
      002237 B6 01 74         [24] 3355 	cjne	@r0,#0x01,00222$
                                   3356 ;	../../../usb/DAP.c:685: for (uint8_t i = 0; i < 4; i++) {
      00223A 7F 00            [12] 3357 	mov	r7,#0x00
      00223C                       3358 00248$:
      00223C BF 04 00         [24] 3359 	cjne	r7,#0x04,00789$
      00223F                       3360 00789$:
      00223F 50 6D            [24] 3361 	jnc	00222$
                                   3362 ;	../../../usb/DAP.c:686: *response++ = data[i];
      002241 AB 2C            [24] 3363 	mov	r3,_response
      002243 AC 2D            [24] 3364 	mov	r4,(_response + 1)
      002245 AE 2E            [24] 3365 	mov	r6,(_response + 2)
      002247 EF               [12] 3366 	mov	a,r7
      002248 2D               [12] 3367 	add	a,r5
      002249 F9               [12] 3368 	mov	r1,a
      00224A 87 02            [24] 3369 	mov	ar2,@r1
      00224C 8B 82            [24] 3370 	mov	dpl,r3
      00224E 8C 83            [24] 3371 	mov	dph,r4
      002250 8E F0            [24] 3372 	mov	b,r6
      002252 EA               [12] 3373 	mov	a,r2
      002253 12 30 FC         [24] 3374 	lcall	__gptrput
      002256 05 2C            [12] 3375 	inc	_response
      002258 E4               [12] 3376 	clr	a
      002259 B5 2C 02         [24] 3377 	cjne	a,_response,00791$
      00225C 05 2D            [12] 3378 	inc	(_response + 1)
      00225E                       3379 00791$:
                                   3380 ;	../../../usb/DAP.c:685: for (uint8_t i = 0; i < 4; i++) {
      00225E 0F               [12] 3381 	inc	r7
      00225F 80 DB            [24] 3382 	sjmp	00248$
      002261                       3383 00218$:
                                   3384 ;	../../../usb/DAP.c:688: } else if (check_write) {
      002261 E5 1F            [12] 3385 	mov	a,_bp
      002263 24 1E            [12] 3386 	add	a,#0x1e
      002265 F8               [12] 3387 	mov	r0,a
      002266 E6               [12] 3388 	mov	a,@r0
      002267 60 45            [24] 3389 	jz	00222$
                                   3390 ;	../../../usb/DAP.c:690: retry = DAP_Data.transfer.retry_count;
      002269 90 02 CF         [24] 3391 	mov	dptr,#(_DAP_Data + 0x000f)
      00226C E0               [24] 3392 	movx	a,@dptr
      00226D FE               [12] 3393 	mov	r6,a
      00226E A3               [24] 3394 	inc	dptr
      00226F E0               [24] 3395 	movx	a,@dptr
      002270 FF               [12] 3396 	mov	r7,a
                                   3397 ;	../../../usb/DAP.c:691: do {
      002271                       3398 00212$:
                                   3399 ;	../../../usb/DAP.c:692: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, NULL);
      002271 C0 07            [24] 3400 	push	ar7
      002273 C0 06            [24] 3401 	push	ar6
      002275 E4               [12] 3402 	clr	a
      002276 C0 E0            [24] 3403 	push	acc
      002278 C0 E0            [24] 3404 	push	acc
      00227A C0 E0            [24] 3405 	push	acc
      00227C 75 82 0E         [24] 3406 	mov	dpl,#0x0e
      00227F 12 2E 97         [24] 3407 	lcall	_SWD_Transfer
      002282 AD 82            [24] 3408 	mov	r5,dpl
      002284 15 81            [12] 3409 	dec	sp
      002286 15 81            [12] 3410 	dec	sp
      002288 15 81            [12] 3411 	dec	sp
      00228A D0 06            [24] 3412 	pop	ar6
      00228C D0 07            [24] 3413 	pop	ar7
      00228E E5 1F            [12] 3414 	mov	a,_bp
      002290 24 2A            [12] 3415 	add	a,#0x2a
      002292 F8               [12] 3416 	mov	r0,a
      002293 A6 05            [24] 3417 	mov	@r0,ar5
                                   3418 ;	../../../usb/DAP.c:693: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      002295 E5 1F            [12] 3419 	mov	a,_bp
      002297 24 2A            [12] 3420 	add	a,#0x2a
      002299 F8               [12] 3421 	mov	r0,a
      00229A B6 02 11         [24] 3422 	cjne	@r0,#0x02,00222$
      00229D 8E 04            [24] 3423 	mov	ar4,r6
      00229F 8F 05            [24] 3424 	mov	ar5,r7
      0022A1 1E               [12] 3425 	dec	r6
      0022A2 BE FF 01         [24] 3426 	cjne	r6,#0xff,00795$
      0022A5 1F               [12] 3427 	dec	r7
      0022A6                       3428 00795$:
      0022A6 EC               [12] 3429 	mov	a,r4
      0022A7 4D               [12] 3430 	orl	a,r5
      0022A8 60 04            [24] 3431 	jz	00222$
      0022AA E5 28            [12] 3432 	mov	a,_DAP_TransferAbort
      0022AC 60 C3            [24] 3433 	jz	00212$
                                   3434 ;	../../../usb/DAP.c:697: end:
      0022AE                       3435 00222$:
                                   3436 ;	../../../usb/DAP.c:698: *(response_head + 0) = (uint8_t)response_count;
      0022AE E5 1F            [12] 3437 	mov	a,_bp
      0022B0 24 27            [12] 3438 	add	a,#0x27
      0022B2 F8               [12] 3439 	mov	r0,a
      0022B3 86 82            [24] 3440 	mov	dpl,@r0
      0022B5 08               [12] 3441 	inc	r0
      0022B6 86 83            [24] 3442 	mov	dph,@r0
      0022B8 08               [12] 3443 	inc	r0
      0022B9 86 F0            [24] 3444 	mov	b,@r0
      0022BB E5 1F            [12] 3445 	mov	a,_bp
      0022BD 24 13            [12] 3446 	add	a,#0x13
      0022BF F9               [12] 3447 	mov	r1,a
      0022C0 E7               [12] 3448 	mov	a,@r1
      0022C1 12 30 FC         [24] 3449 	lcall	__gptrput
                                   3450 ;	../../../usb/DAP.c:699: *(response_head + 1) = (uint8_t)response_value;
      0022C4 E5 1F            [12] 3451 	mov	a,_bp
      0022C6 24 27            [12] 3452 	add	a,#0x27
      0022C8 F8               [12] 3453 	mov	r0,a
      0022C9 74 01            [12] 3454 	mov	a,#0x01
      0022CB 26               [12] 3455 	add	a,@r0
      0022CC FD               [12] 3456 	mov	r5,a
      0022CD E4               [12] 3457 	clr	a
      0022CE 08               [12] 3458 	inc	r0
      0022CF 36               [12] 3459 	addc	a,@r0
      0022D0 FE               [12] 3460 	mov	r6,a
      0022D1 08               [12] 3461 	inc	r0
      0022D2 86 07            [24] 3462 	mov	ar7,@r0
      0022D4 8D 82            [24] 3463 	mov	dpl,r5
      0022D6 8E 83            [24] 3464 	mov	dph,r6
      0022D8 8F F0            [24] 3465 	mov	b,r7
      0022DA E5 1F            [12] 3466 	mov	a,_bp
      0022DC 24 2A            [12] 3467 	add	a,#0x2a
      0022DE F8               [12] 3468 	mov	r0,a
      0022DF E6               [12] 3469 	mov	a,@r0
      0022E0 12 30 FC         [24] 3470 	lcall	__gptrput
                                   3471 ;	../../../usb/DAP.c:701: return (((uint16_t)(request - request_head) << 8) | (uint16_t)(response - response_head));
      0022E3 E5 1F            [12] 3472 	mov	a,_bp
      0022E5 24 24            [12] 3473 	add	a,#0x24
      0022E7 F8               [12] 3474 	mov	r0,a
      0022E8 E5 29            [12] 3475 	mov	a,_request
      0022EA C3               [12] 3476 	clr	c
      0022EB 96               [12] 3477 	subb	a,@r0
      0022EC FE               [12] 3478 	mov	r6,a
      0022ED E5 2A            [12] 3479 	mov	a,(_request + 1)
      0022EF 08               [12] 3480 	inc	r0
      0022F0 96               [12] 3481 	subb	a,@r0
      0022F1 8E 07            [24] 3482 	mov	ar7,r6
      0022F3 7E 00            [12] 3483 	mov	r6,#0x00
      0022F5 E5 1F            [12] 3484 	mov	a,_bp
      0022F7 24 27            [12] 3485 	add	a,#0x27
      0022F9 F8               [12] 3486 	mov	r0,a
      0022FA E5 2C            [12] 3487 	mov	a,_response
      0022FC C3               [12] 3488 	clr	c
      0022FD 96               [12] 3489 	subb	a,@r0
      0022FE FC               [12] 3490 	mov	r4,a
      0022FF E5 2D            [12] 3491 	mov	a,(_response + 1)
      002301 08               [12] 3492 	inc	r0
      002302 96               [12] 3493 	subb	a,@r0
      002303 FD               [12] 3494 	mov	r5,a
      002304 EC               [12] 3495 	mov	a,r4
      002305 4E               [12] 3496 	orl	a,r6
      002306 F5 82            [12] 3497 	mov	dpl,a
      002308 ED               [12] 3498 	mov	a,r5
      002309 4F               [12] 3499 	orl	a,r7
      00230A F5 83            [12] 3500 	mov	dph,a
                                   3501 ;	../../../usb/DAP.c:702: }
      00230C 85 1F 81         [24] 3502 	mov	sp,_bp
      00230F D0 1F            [24] 3503 	pop	_bp
      002311 22               [24] 3504 	ret
                                   3505 ;------------------------------------------------------------
                                   3506 ;Allocation info for local variables in function 'DAP_Dummy_Transfer'
                                   3507 ;------------------------------------------------------------
                                   3508 ;request_head              Allocated to stack - _bp +1
                                   3509 ;request_count             Allocated to registers 
                                   3510 ;request_value             Allocated to registers r3 
                                   3511 ;req                       Allocated to registers r2 r3 r4 
                                   3512 ;------------------------------------------------------------
                                   3513 ;	../../../usb/DAP.c:709: static uint16_t DAP_Dummy_Transfer()
                                   3514 ;	-----------------------------------------
                                   3515 ;	 function DAP_Dummy_Transfer
                                   3516 ;	-----------------------------------------
      002312                       3517 _DAP_Dummy_Transfer:
      002312 C0 1F            [24] 3518 	push	_bp
      002314 85 81 1F         [24] 3519 	mov	_bp,sp
      002317 05 81            [12] 3520 	inc	sp
      002319 05 81            [12] 3521 	inc	sp
      00231B 05 81            [12] 3522 	inc	sp
                                   3523 ;	../../../usb/DAP.c:715: request_head = request;
      00231D A8 1F            [24] 3524 	mov	r0,_bp
      00231F 08               [12] 3525 	inc	r0
      002320 A6 29            [24] 3526 	mov	@r0,_request
      002322 08               [12] 3527 	inc	r0
      002323 A6 2A            [24] 3528 	mov	@r0,(_request + 1)
      002325 08               [12] 3529 	inc	r0
      002326 A6 2B            [24] 3530 	mov	@r0,(_request + 2)
                                   3531 ;	../../../usb/DAP.c:718: req++; // Ignore DAP index
      002328 74 01            [12] 3532 	mov	a,#0x01
      00232A 25 29            [12] 3533 	add	a,_request
      00232C FA               [12] 3534 	mov	r2,a
      00232D E4               [12] 3535 	clr	a
      00232E 35 2A            [12] 3536 	addc	a,(_request + 1)
      002330 FB               [12] 3537 	mov	r3,a
      002331 AC 2B            [24] 3538 	mov	r4,(_request + 2)
                                   3539 ;	../../../usb/DAP.c:720: request_count = *req++;
      002333 8A 82            [24] 3540 	mov	dpl,r2
      002335 8B 83            [24] 3541 	mov	dph,r3
      002337 8C F0            [24] 3542 	mov	b,r4
      002339 12 33 25         [24] 3543 	lcall	__gptrget
      00233C FF               [12] 3544 	mov	r7,a
      00233D 74 01            [12] 3545 	mov	a,#0x01
      00233F 2A               [12] 3546 	add	a,r2
      002340 FE               [12] 3547 	mov	r6,a
      002341 E4               [12] 3548 	clr	a
      002342 3B               [12] 3549 	addc	a,r3
      002343 FD               [12] 3550 	mov	r5,a
      002344                       3551 00108$:
                                   3552 ;	../../../usb/DAP.c:722: for (; request_count != 0U; request_count--) {
      002344 EF               [12] 3553 	mov	a,r7
      002345 60 2A            [24] 3554 	jz	00106$
                                   3555 ;	../../../usb/DAP.c:724: request_value = *req++;
      002347 8E 82            [24] 3556 	mov	dpl,r6
      002349 8D 83            [24] 3557 	mov	dph,r5
      00234B 8C F0            [24] 3558 	mov	b,r4
      00234D 12 33 25         [24] 3559 	lcall	__gptrget
      002350 FB               [12] 3560 	mov	r3,a
      002351 A3               [24] 3561 	inc	dptr
      002352 AE 82            [24] 3562 	mov	r6,dpl
      002354 AD 83            [24] 3563 	mov	r5,dph
                                   3564 ;	../../../usb/DAP.c:725: if ((request_value & DAP_TRANSFER_RnW) != 0U) {
      002356 EB               [12] 3565 	mov	a,r3
      002357 30 E1 0D         [24] 3566 	jnb	acc.1,00104$
                                   3567 ;	../../../usb/DAP.c:727: if ((request_value & DAP_TRANSFER_MATCH_VALUE) != 0U) {
      00235A EB               [12] 3568 	mov	a,r3
      00235B 30 E4 10         [24] 3569 	jnb	acc.4,00109$
                                   3570 ;	../../../usb/DAP.c:729: req += 4;
      00235E 74 04            [12] 3571 	mov	a,#0x04
      002360 2E               [12] 3572 	add	a,r6
      002361 FE               [12] 3573 	mov	r6,a
      002362 E4               [12] 3574 	clr	a
      002363 3D               [12] 3575 	addc	a,r5
      002364 FD               [12] 3576 	mov	r5,a
      002365 80 07            [24] 3577 	sjmp	00109$
      002367                       3578 00104$:
                                   3579 ;	../../../usb/DAP.c:733: req += 4;
      002367 74 04            [12] 3580 	mov	a,#0x04
      002369 2E               [12] 3581 	add	a,r6
      00236A FE               [12] 3582 	mov	r6,a
      00236B E4               [12] 3583 	clr	a
      00236C 3D               [12] 3584 	addc	a,r5
      00236D FD               [12] 3585 	mov	r5,a
      00236E                       3586 00109$:
                                   3587 ;	../../../usb/DAP.c:722: for (; request_count != 0U; request_count--) {
      00236E 1F               [12] 3588 	dec	r7
      00236F 80 D3            [24] 3589 	sjmp	00108$
      002371                       3590 00106$:
                                   3591 ;	../../../usb/DAP.c:737: *(response + 0) = 0U; // Response count
      002371 AA 2C            [24] 3592 	mov	r2,_response
      002373 AB 2D            [24] 3593 	mov	r3,(_response + 1)
      002375 AF 2E            [24] 3594 	mov	r7,(_response + 2)
      002377 8A 82            [24] 3595 	mov	dpl,r2
      002379 8B 83            [24] 3596 	mov	dph,r3
      00237B 8F F0            [24] 3597 	mov	b,r7
      00237D E4               [12] 3598 	clr	a
      00237E 12 30 FC         [24] 3599 	lcall	__gptrput
                                   3600 ;	../../../usb/DAP.c:738: *(response + 1) = 0U; // Response value
      002381 04               [12] 3601 	inc	a
      002382 25 2C            [12] 3602 	add	a,_response
      002384 FA               [12] 3603 	mov	r2,a
      002385 E4               [12] 3604 	clr	a
      002386 35 2D            [12] 3605 	addc	a,(_response + 1)
      002388 FB               [12] 3606 	mov	r3,a
      002389 AF 2E            [24] 3607 	mov	r7,(_response + 2)
      00238B 8A 82            [24] 3608 	mov	dpl,r2
      00238D 8B 83            [24] 3609 	mov	dph,r3
      00238F 8F F0            [24] 3610 	mov	b,r7
      002391 E4               [12] 3611 	clr	a
      002392 12 30 FC         [24] 3612 	lcall	__gptrput
                                   3613 ;	../../../usb/DAP.c:740: return (((uint16_t)(req - request_head) << 8) | 2U);
      002395 A8 1F            [24] 3614 	mov	r0,_bp
      002397 08               [12] 3615 	inc	r0
      002398 EE               [12] 3616 	mov	a,r6
      002399 C3               [12] 3617 	clr	c
      00239A 96               [12] 3618 	subb	a,@r0
      00239B FE               [12] 3619 	mov	r6,a
      00239C ED               [12] 3620 	mov	a,r5
      00239D 08               [12] 3621 	inc	r0
      00239E 96               [12] 3622 	subb	a,@r0
      00239F 8E 05            [24] 3623 	mov	ar5,r6
      0023A1 7E 00            [12] 3624 	mov	r6,#0x00
      0023A3 43 06 02         [24] 3625 	orl	ar6,#0x02
      0023A6 8E 82            [24] 3626 	mov	dpl,r6
      0023A8 8D 83            [24] 3627 	mov	dph,r5
                                   3628 ;	../../../usb/DAP.c:741: }
      0023AA 85 1F 81         [24] 3629 	mov	sp,_bp
      0023AD D0 1F            [24] 3630 	pop	_bp
      0023AF 22               [24] 3631 	ret
                                   3632 ;------------------------------------------------------------
                                   3633 ;Allocation info for local variables in function 'DAP_Transfer'
                                   3634 ;------------------------------------------------------------
                                   3635 ;num                       Allocated to registers r6 r7 
                                   3636 ;------------------------------------------------------------
                                   3637 ;	../../../usb/DAP.c:748: static uint16_t DAP_Transfer()
                                   3638 ;	-----------------------------------------
                                   3639 ;	 function DAP_Transfer
                                   3640 ;	-----------------------------------------
      0023B0                       3641 _DAP_Transfer:
                                   3642 ;	../../../usb/DAP.c:752: switch (DAP_Data.debug_port) {
      0023B0 90 02 C0         [24] 3643 	mov	dptr,#_DAP_Data
      0023B3 E0               [24] 3644 	movx	a,@dptr
      0023B4 FF               [12] 3645 	mov	r7,a
      0023B5 BF 01 09         [24] 3646 	cjne	r7,#0x01,00102$
                                   3647 ;	../../../usb/DAP.c:754: num = DAP_SWD_Transfer();
      0023B8 12 1A 6B         [24] 3648 	lcall	_DAP_SWD_Transfer
      0023BB AE 82            [24] 3649 	mov	r6,dpl
      0023BD AF 83            [24] 3650 	mov	r7,dph
                                   3651 ;	../../../usb/DAP.c:755: break;
                                   3652 ;	../../../usb/DAP.c:756: default:
      0023BF 80 0B            [24] 3653 	sjmp	00103$
      0023C1                       3654 00102$:
                                   3655 ;	../../../usb/DAP.c:757: num = DAP_Dummy_Transfer();
      0023C1 12 23 12         [24] 3656 	lcall	_DAP_Dummy_Transfer
      0023C4 AC 82            [24] 3657 	mov	r4,dpl
      0023C6 AD 83            [24] 3658 	mov	r5,dph
      0023C8 8C 06            [24] 3659 	mov	ar6,r4
      0023CA 8D 07            [24] 3660 	mov	ar7,r5
                                   3661 ;	../../../usb/DAP.c:759: }
      0023CC                       3662 00103$:
                                   3663 ;	../../../usb/DAP.c:761: return (num);
      0023CC 8E 82            [24] 3664 	mov	dpl,r6
      0023CE 8F 83            [24] 3665 	mov	dph,r7
                                   3666 ;	../../../usb/DAP.c:762: }
      0023D0 22               [24] 3667 	ret
                                   3668 ;------------------------------------------------------------
                                   3669 ;Allocation info for local variables in function 'DAP_SWD_TransferBlock'
                                   3670 ;------------------------------------------------------------
                                   3671 ;request_count             Allocated to stack - _bp +10
                                   3672 ;request_value             Allocated to stack - _bp +14
                                   3673 ;response_count            Allocated to stack - _bp +12
                                   3674 ;response_value            Allocated to stack - _bp +22
                                   3675 ;response_head             Allocated to stack - _bp +15
                                   3676 ;retry                     Allocated to registers 
                                   3677 ;data                      Allocated to stack - _bp +18
                                   3678 ;req                       Allocated to registers r3 r4 r5 
                                   3679 ;i                         Allocated to registers r6 
                                   3680 ;i                         Allocated to registers r5 
                                   3681 ;sloc0                     Allocated to stack - _bp +1
                                   3682 ;sloc1                     Allocated to stack - _bp +6
                                   3683 ;sloc2                     Allocated to stack - _bp +25
                                   3684 ;sloc3                     Allocated to stack - _bp +8
                                   3685 ;sloc4                     Allocated to stack - _bp +3
                                   3686 ;sloc5                     Allocated to stack - _bp +31
                                   3687 ;------------------------------------------------------------
                                   3688 ;	../../../usb/DAP.c:768: static uint8_t DAP_SWD_TransferBlock()
                                   3689 ;	-----------------------------------------
                                   3690 ;	 function DAP_SWD_TransferBlock
                                   3691 ;	-----------------------------------------
      0023D1                       3692 _DAP_SWD_TransferBlock:
      0023D1 C0 1F            [24] 3693 	push	_bp
      0023D3 E5 81            [12] 3694 	mov	a,sp
      0023D5 F5 1F            [12] 3695 	mov	_bp,a
      0023D7 24 16            [12] 3696 	add	a,#0x16
      0023D9 F5 81            [12] 3697 	mov	sp,a
                                   3698 ;	../../../usb/DAP.c:778: response_count = 0U;
      0023DB A8 1F            [24] 3699 	mov	r0,_bp
      0023DD 08               [12] 3700 	inc	r0
      0023DE E4               [12] 3701 	clr	a
      0023DF F6               [12] 3702 	mov	@r0,a
      0023E0 08               [12] 3703 	inc	r0
      0023E1 F6               [12] 3704 	mov	@r0,a
                                   3705 ;	../../../usb/DAP.c:779: response_value = 0U;
      0023E2 E5 1F            [12] 3706 	mov	a,_bp
      0023E4 24 16            [12] 3707 	add	a,#0x16
      0023E6 F8               [12] 3708 	mov	r0,a
      0023E7 76 00            [12] 3709 	mov	@r0,#0x00
                                   3710 ;	../../../usb/DAP.c:780: response_head = response;
      0023E9 E5 1F            [12] 3711 	mov	a,_bp
      0023EB 24 0F            [12] 3712 	add	a,#0x0f
      0023ED F8               [12] 3713 	mov	r0,a
      0023EE A6 2C            [24] 3714 	mov	@r0,_response
      0023F0 08               [12] 3715 	inc	r0
      0023F1 A6 2D            [24] 3716 	mov	@r0,(_response + 1)
      0023F3 08               [12] 3717 	inc	r0
      0023F4 A6 2E            [24] 3718 	mov	@r0,(_response + 2)
                                   3719 ;	../../../usb/DAP.c:781: response += 3;
      0023F6 74 03            [12] 3720 	mov	a,#0x03
      0023F8 25 2C            [12] 3721 	add	a,_response
      0023FA F5 2C            [12] 3722 	mov	_response,a
      0023FC E4               [12] 3723 	clr	a
      0023FD 35 2D            [12] 3724 	addc	a,(_response + 1)
      0023FF F5 2D            [12] 3725 	mov	(_response + 1),a
                                   3726 ;	../../../usb/DAP.c:783: DAP_TransferAbort = 0U;
      002401 75 28 00         [24] 3727 	mov	_DAP_TransferAbort,#0x00
                                   3728 ;	../../../usb/DAP.c:786: req++; // Ignore DAP index
      002404 74 01            [12] 3729 	mov	a,#0x01
      002406 25 29            [12] 3730 	add	a,_request
      002408 FB               [12] 3731 	mov	r3,a
      002409 E4               [12] 3732 	clr	a
      00240A 35 2A            [12] 3733 	addc	a,(_request + 1)
      00240C FC               [12] 3734 	mov	r4,a
      00240D AD 2B            [24] 3735 	mov	r5,(_request + 2)
                                   3736 ;	../../../usb/DAP.c:788: request_count = (uint16_t)(*(req + 0) << 0) | (uint16_t)(*(req + 1) << 8);
      00240F 8B 82            [24] 3737 	mov	dpl,r3
      002411 8C 83            [24] 3738 	mov	dph,r4
      002413 8D F0            [24] 3739 	mov	b,r5
      002415 12 33 25         [24] 3740 	lcall	__gptrget
      002418 FA               [12] 3741 	mov	r2,a
      002419 7F 00            [12] 3742 	mov	r7,#0x00
      00241B E5 1F            [12] 3743 	mov	a,_bp
      00241D 24 06            [12] 3744 	add	a,#0x06
      00241F F8               [12] 3745 	mov	r0,a
      002420 A6 02            [24] 3746 	mov	@r0,ar2
      002422 08               [12] 3747 	inc	r0
      002423 A6 07            [24] 3748 	mov	@r0,ar7
      002425 74 01            [12] 3749 	mov	a,#0x01
      002427 2B               [12] 3750 	add	a,r3
      002428 FA               [12] 3751 	mov	r2,a
      002429 E4               [12] 3752 	clr	a
      00242A 3C               [12] 3753 	addc	a,r4
      00242B FE               [12] 3754 	mov	r6,a
      00242C 8D 07            [24] 3755 	mov	ar7,r5
      00242E 8A 82            [24] 3756 	mov	dpl,r2
      002430 8E 83            [24] 3757 	mov	dph,r6
      002432 8F F0            [24] 3758 	mov	b,r7
      002434 12 33 25         [24] 3759 	lcall	__gptrget
      002437 FF               [12] 3760 	mov	r7,a
      002438 7A 00            [12] 3761 	mov	r2,#0x00
      00243A E5 1F            [12] 3762 	mov	a,_bp
      00243C 24 06            [12] 3763 	add	a,#0x06
      00243E F8               [12] 3764 	mov	r0,a
      00243F E6               [12] 3765 	mov	a,@r0
      002440 42 02            [12] 3766 	orl	ar2,a
      002442 08               [12] 3767 	inc	r0
      002443 E6               [12] 3768 	mov	a,@r0
      002444 42 07            [12] 3769 	orl	ar7,a
      002446 E5 1F            [12] 3770 	mov	a,_bp
      002448 24 0A            [12] 3771 	add	a,#0x0a
      00244A F8               [12] 3772 	mov	r0,a
      00244B A6 02            [24] 3773 	mov	@r0,ar2
      00244D 08               [12] 3774 	inc	r0
      00244E A6 07            [24] 3775 	mov	@r0,ar7
                                   3776 ;	../../../usb/DAP.c:789: req += 2;
      002450 74 02            [12] 3777 	mov	a,#0x02
      002452 2B               [12] 3778 	add	a,r3
      002453 FB               [12] 3779 	mov	r3,a
      002454 E4               [12] 3780 	clr	a
      002455 3C               [12] 3781 	addc	a,r4
      002456 FC               [12] 3782 	mov	r4,a
                                   3783 ;	../../../usb/DAP.c:790: if (request_count == 0U) {
      002457 E5 1F            [12] 3784 	mov	a,_bp
      002459 24 0A            [12] 3785 	add	a,#0x0a
      00245B F8               [12] 3786 	mov	r0,a
      00245C E6               [12] 3787 	mov	a,@r0
      00245D 08               [12] 3788 	inc	r0
      00245E 46               [12] 3789 	orl	a,@r0
      00245F 70 03            [24] 3790 	jnz	00300$
      002461 02 27 37         [24] 3791 	ljmp	00145$
      002464                       3792 00300$:
                                   3793 ;	../../../usb/DAP.c:794: request_value = *req++;
      002464 8B 82            [24] 3794 	mov	dpl,r3
      002466 8C 83            [24] 3795 	mov	dph,r4
      002468 8D F0            [24] 3796 	mov	b,r5
      00246A E5 1F            [12] 3797 	mov	a,_bp
      00246C 24 0E            [12] 3798 	add	a,#0x0e
      00246E F8               [12] 3799 	mov	r0,a
      00246F 12 33 25         [24] 3800 	lcall	__gptrget
      002472 F6               [12] 3801 	mov	@r0,a
      002473 E5 1F            [12] 3802 	mov	a,_bp
      002475 24 03            [12] 3803 	add	a,#0x03
      002477 F8               [12] 3804 	mov	r0,a
      002478 74 01            [12] 3805 	mov	a,#0x01
      00247A 2B               [12] 3806 	add	a,r3
      00247B F6               [12] 3807 	mov	@r0,a
      00247C E4               [12] 3808 	clr	a
      00247D 3C               [12] 3809 	addc	a,r4
      00247E 08               [12] 3810 	inc	r0
      00247F F6               [12] 3811 	mov	@r0,a
      002480 08               [12] 3812 	inc	r0
      002481 A6 05            [24] 3813 	mov	@r0,ar5
                                   3814 ;	../../../usb/DAP.c:795: if ((request_value & DAP_TRANSFER_RnW) != 0U) {
      002483 E5 1F            [12] 3815 	mov	a,_bp
      002485 24 0E            [12] 3816 	add	a,#0x0e
      002487 F8               [12] 3817 	mov	r0,a
      002488 E6               [12] 3818 	mov	a,@r0
      002489 20 E1 03         [24] 3819 	jb	acc.1,00301$
      00248C 02 25 EE         [24] 3820 	ljmp	00177$
      00248F                       3821 00301$:
                                   3822 ;	../../../usb/DAP.c:797: if ((request_value & DAP_TRANSFER_APnDP) != 0U) {
      00248F E5 1F            [12] 3823 	mov	a,_bp
      002491 24 0E            [12] 3824 	add	a,#0x0e
      002493 F8               [12] 3825 	mov	r0,a
      002494 E6               [12] 3826 	mov	a,@r0
      002495 30 E0 66         [24] 3827 	jnb	acc.0,00169$
                                   3828 ;	../../../usb/DAP.c:799: retry = DAP_Data.transfer.retry_count;
      002498 90 02 CF         [24] 3829 	mov	dptr,#(_DAP_Data + 0x000f)
      00249B E0               [24] 3830 	movx	a,@dptr
      00249C FE               [12] 3831 	mov	r6,a
      00249D A3               [24] 3832 	inc	dptr
      00249E E0               [24] 3833 	movx	a,@dptr
      00249F FD               [12] 3834 	mov	r5,a
                                   3835 ;	../../../usb/DAP.c:800: do {
      0024A0                       3836 00105$:
                                   3837 ;	../../../usb/DAP.c:801: response_value = SWD_Transfer(request_value, NULL);
      0024A0 C0 06            [24] 3838 	push	ar6
      0024A2 C0 05            [24] 3839 	push	ar5
      0024A4 C0 06            [24] 3840 	push	ar6
      0024A6 C0 05            [24] 3841 	push	ar5
      0024A8 E4               [12] 3842 	clr	a
      0024A9 C0 E0            [24] 3843 	push	acc
      0024AB C0 E0            [24] 3844 	push	acc
      0024AD C0 E0            [24] 3845 	push	acc
      0024AF E5 1F            [12] 3846 	mov	a,_bp
      0024B1 24 0E            [12] 3847 	add	a,#0x0e
      0024B3 F8               [12] 3848 	mov	r0,a
      0024B4 86 82            [24] 3849 	mov	dpl,@r0
      0024B6 12 2E 97         [24] 3850 	lcall	_SWD_Transfer
      0024B9 AF 82            [24] 3851 	mov	r7,dpl
      0024BB 15 81            [12] 3852 	dec	sp
      0024BD 15 81            [12] 3853 	dec	sp
      0024BF 15 81            [12] 3854 	dec	sp
      0024C1 D0 05            [24] 3855 	pop	ar5
      0024C3 D0 06            [24] 3856 	pop	ar6
      0024C5 E5 1F            [12] 3857 	mov	a,_bp
      0024C7 24 16            [12] 3858 	add	a,#0x16
      0024C9 F8               [12] 3859 	mov	r0,a
      0024CA A6 07            [24] 3860 	mov	@r0,ar7
                                   3861 ;	../../../usb/DAP.c:802: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      0024CC E5 1F            [12] 3862 	mov	a,_bp
      0024CE 24 16            [12] 3863 	add	a,#0x16
      0024D0 F8               [12] 3864 	mov	r0,a
      0024D1 B6 02 02         [24] 3865 	cjne	@r0,#0x02,00303$
      0024D4 80 06            [24] 3866 	sjmp	00304$
      0024D6                       3867 00303$:
      0024D6 D0 05            [24] 3868 	pop	ar5
      0024D8 D0 06            [24] 3869 	pop	ar6
      0024DA 80 15            [24] 3870 	sjmp	00107$
      0024DC                       3871 00304$:
      0024DC D0 05            [24] 3872 	pop	ar5
      0024DE D0 06            [24] 3873 	pop	ar6
      0024E0 8E 02            [24] 3874 	mov	ar2,r6
      0024E2 8D 07            [24] 3875 	mov	ar7,r5
      0024E4 1E               [12] 3876 	dec	r6
      0024E5 BE FF 01         [24] 3877 	cjne	r6,#0xff,00305$
      0024E8 1D               [12] 3878 	dec	r5
      0024E9                       3879 00305$:
      0024E9 EA               [12] 3880 	mov	a,r2
      0024EA 4F               [12] 3881 	orl	a,r7
      0024EB 60 04            [24] 3882 	jz	00107$
      0024ED E5 28            [12] 3883 	mov	a,_DAP_TransferAbort
      0024EF 60 AF            [24] 3884 	jz	00105$
      0024F1                       3885 00107$:
                                   3886 ;	../../../usb/DAP.c:803: if (response_value != DAP_TRANSFER_OK) {
      0024F1 E5 1F            [12] 3887 	mov	a,_bp
      0024F3 24 16            [12] 3888 	add	a,#0x16
      0024F5 F8               [12] 3889 	mov	r0,a
      0024F6 B6 01 02         [24] 3890 	cjne	@r0,#0x01,00308$
      0024F9 80 03            [24] 3891 	sjmp	00309$
      0024FB                       3892 00308$:
      0024FB 02 27 37         [24] 3893 	ljmp	00145$
      0024FE                       3894 00309$:
                                   3895 ;	../../../usb/DAP.c:807: while (request_count--) {
      0024FE                       3896 00169$:
      0024FE E5 1F            [12] 3897 	mov	a,_bp
      002500 24 0C            [12] 3898 	add	a,#0x0c
      002502 F8               [12] 3899 	mov	r0,a
      002503 E4               [12] 3900 	clr	a
      002504 F6               [12] 3901 	mov	@r0,a
      002505 08               [12] 3902 	inc	r0
      002506 F6               [12] 3903 	mov	@r0,a
      002507 E5 1F            [12] 3904 	mov	a,_bp
      002509 24 0A            [12] 3905 	add	a,#0x0a
      00250B F8               [12] 3906 	mov	r0,a
      00250C 86 05            [24] 3907 	mov	ar5,@r0
      00250E 08               [12] 3908 	inc	r0
      00250F 86 04            [24] 3909 	mov	ar4,@r0
      002511                       3910 00123$:
      002511 8D 06            [24] 3911 	mov	ar6,r5
      002513 8C 07            [24] 3912 	mov	ar7,r4
      002515 1D               [12] 3913 	dec	r5
      002516 BD FF 01         [24] 3914 	cjne	r5,#0xff,00310$
      002519 1C               [12] 3915 	dec	r4
      00251A                       3916 00310$:
      00251A EE               [12] 3917 	mov	a,r6
      00251B 4F               [12] 3918 	orl	a,r7
      00251C 70 03            [24] 3919 	jnz	00311$
      00251E 02 27 29         [24] 3920 	ljmp	00187$
      002521                       3921 00311$:
                                   3922 ;	../../../usb/DAP.c:809: if ((request_count == 0U) && ((request_value & DAP_TRANSFER_APnDP) != 0U)) {
      002521 ED               [12] 3923 	mov	a,r5
      002522 4C               [12] 3924 	orl	a,r4
      002523 70 10            [24] 3925 	jnz	00113$
      002525 E5 1F            [12] 3926 	mov	a,_bp
      002527 24 0E            [12] 3927 	add	a,#0x0e
      002529 F8               [12] 3928 	mov	r0,a
      00252A E6               [12] 3929 	mov	a,@r0
      00252B 30 E0 07         [24] 3930 	jnb	acc.0,00113$
                                   3931 ;	../../../usb/DAP.c:811: request_value = DP_RDBUFF | DAP_TRANSFER_RnW;
      00252E E5 1F            [12] 3932 	mov	a,_bp
      002530 24 0E            [12] 3933 	add	a,#0x0e
      002532 F8               [12] 3934 	mov	r0,a
      002533 76 0E            [12] 3935 	mov	@r0,#0x0e
      002535                       3936 00113$:
                                   3937 ;	../../../usb/DAP.c:813: retry = DAP_Data.transfer.retry_count;
      002535 90 02 CF         [24] 3938 	mov	dptr,#(_DAP_Data + 0x000f)
      002538 E5 1F            [12] 3939 	mov	a,_bp
      00253A 24 08            [12] 3940 	add	a,#0x08
      00253C F8               [12] 3941 	mov	r0,a
      00253D E0               [24] 3942 	movx	a,@dptr
      00253E F6               [12] 3943 	mov	@r0,a
      00253F A3               [24] 3944 	inc	dptr
      002540 E0               [24] 3945 	movx	a,@dptr
      002541 08               [12] 3946 	inc	r0
      002542 F6               [12] 3947 	mov	@r0,a
                                   3948 ;	../../../usb/DAP.c:814: do {
      002543 E5 1F            [12] 3949 	mov	a,_bp
      002545 24 12            [12] 3950 	add	a,#0x12
      002547 FB               [12] 3951 	mov	r3,a
      002548                       3952 00117$:
                                   3953 ;	../../../usb/DAP.c:815: response_value = SWD_Transfer(request_value, data);
      002548 8B 02            [24] 3954 	mov	ar2,r3
      00254A 7E 00            [12] 3955 	mov	r6,#0x00
      00254C 7F 40            [12] 3956 	mov	r7,#0x40
      00254E C0 05            [24] 3957 	push	ar5
      002550 C0 04            [24] 3958 	push	ar4
      002552 C0 03            [24] 3959 	push	ar3
      002554 C0 02            [24] 3960 	push	ar2
      002556 C0 06            [24] 3961 	push	ar6
      002558 C0 07            [24] 3962 	push	ar7
      00255A E5 1F            [12] 3963 	mov	a,_bp
      00255C 24 0E            [12] 3964 	add	a,#0x0e
      00255E F8               [12] 3965 	mov	r0,a
      00255F 86 82            [24] 3966 	mov	dpl,@r0
      002561 12 2E 97         [24] 3967 	lcall	_SWD_Transfer
      002564 AF 82            [24] 3968 	mov	r7,dpl
      002566 15 81            [12] 3969 	dec	sp
      002568 15 81            [12] 3970 	dec	sp
      00256A 15 81            [12] 3971 	dec	sp
      00256C D0 03            [24] 3972 	pop	ar3
      00256E D0 04            [24] 3973 	pop	ar4
      002570 D0 05            [24] 3974 	pop	ar5
      002572 E5 1F            [12] 3975 	mov	a,_bp
      002574 24 16            [12] 3976 	add	a,#0x16
      002576 F8               [12] 3977 	mov	r0,a
      002577 A6 07            [24] 3978 	mov	@r0,ar7
                                   3979 ;	../../../usb/DAP.c:816: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      002579 E5 1F            [12] 3980 	mov	a,_bp
      00257B 24 16            [12] 3981 	add	a,#0x16
      00257D F8               [12] 3982 	mov	r0,a
      00257E B6 02 1D         [24] 3983 	cjne	@r0,#0x02,00119$
      002581 E5 1F            [12] 3984 	mov	a,_bp
      002583 24 08            [12] 3985 	add	a,#0x08
      002585 F8               [12] 3986 	mov	r0,a
      002586 86 02            [24] 3987 	mov	ar2,@r0
      002588 08               [12] 3988 	inc	r0
      002589 86 07            [24] 3989 	mov	ar7,@r0
      00258B E5 1F            [12] 3990 	mov	a,_bp
      00258D 24 08            [12] 3991 	add	a,#0x08
      00258F F8               [12] 3992 	mov	r0,a
      002590 16               [12] 3993 	dec	@r0
      002591 B6 FF 02         [24] 3994 	cjne	@r0,#0xff,00316$
      002594 08               [12] 3995 	inc	r0
      002595 16               [12] 3996 	dec	@r0
      002596                       3997 00316$:
      002596 EA               [12] 3998 	mov	a,r2
      002597 4F               [12] 3999 	orl	a,r7
      002598 60 04            [24] 4000 	jz	00119$
      00259A E5 28            [12] 4001 	mov	a,_DAP_TransferAbort
      00259C 60 AA            [24] 4002 	jz	00117$
      00259E                       4003 00119$:
                                   4004 ;	../../../usb/DAP.c:817: if (response_value != DAP_TRANSFER_OK) {
      00259E E5 1F            [12] 4005 	mov	a,_bp
      0025A0 24 16            [12] 4006 	add	a,#0x16
      0025A2 F8               [12] 4007 	mov	r0,a
      0025A3 B6 01 02         [24] 4008 	cjne	@r0,#0x01,00319$
      0025A6 80 03            [24] 4009 	sjmp	00320$
      0025A8                       4010 00319$:
      0025A8 02 27 29         [24] 4011 	ljmp	00187$
      0025AB                       4012 00320$:
                                   4013 ;	../../../usb/DAP.c:821: for (uint8_t i = 0; i < 4; i++) {
      0025AB 7E 00            [12] 4014 	mov	r6,#0x00
      0025AD                       4015 00147$:
      0025AD BE 04 00         [24] 4016 	cjne	r6,#0x04,00321$
      0025B0                       4017 00321$:
      0025B0 50 2E            [24] 4018 	jnc	00122$
                                   4019 ;	../../../usb/DAP.c:822: *response++ = data[i];
      0025B2 E5 1F            [12] 4020 	mov	a,_bp
      0025B4 24 03            [12] 4021 	add	a,#0x03
      0025B6 F8               [12] 4022 	mov	r0,a
      0025B7 A6 2C            [24] 4023 	mov	@r0,_response
      0025B9 08               [12] 4024 	inc	r0
      0025BA A6 2D            [24] 4025 	mov	@r0,(_response + 1)
      0025BC 08               [12] 4026 	inc	r0
      0025BD A6 2E            [24] 4027 	mov	@r0,(_response + 2)
      0025BF EE               [12] 4028 	mov	a,r6
      0025C0 2B               [12] 4029 	add	a,r3
      0025C1 F9               [12] 4030 	mov	r1,a
      0025C2 87 07            [24] 4031 	mov	ar7,@r1
      0025C4 E5 1F            [12] 4032 	mov	a,_bp
      0025C6 24 03            [12] 4033 	add	a,#0x03
      0025C8 F8               [12] 4034 	mov	r0,a
      0025C9 86 82            [24] 4035 	mov	dpl,@r0
      0025CB 08               [12] 4036 	inc	r0
      0025CC 86 83            [24] 4037 	mov	dph,@r0
      0025CE 08               [12] 4038 	inc	r0
      0025CF 86 F0            [24] 4039 	mov	b,@r0
      0025D1 EF               [12] 4040 	mov	a,r7
      0025D2 12 30 FC         [24] 4041 	lcall	__gptrput
      0025D5 05 2C            [12] 4042 	inc	_response
      0025D7 E4               [12] 4043 	clr	a
      0025D8 B5 2C 02         [24] 4044 	cjne	a,_response,00323$
      0025DB 05 2D            [12] 4045 	inc	(_response + 1)
      0025DD                       4046 00323$:
                                   4047 ;	../../../usb/DAP.c:821: for (uint8_t i = 0; i < 4; i++) {
      0025DD 0E               [12] 4048 	inc	r6
      0025DE 80 CD            [24] 4049 	sjmp	00147$
      0025E0                       4050 00122$:
                                   4051 ;	../../../usb/DAP.c:824: response_count++;
      0025E0 E5 1F            [12] 4052 	mov	a,_bp
      0025E2 24 0C            [12] 4053 	add	a,#0x0c
      0025E4 F8               [12] 4054 	mov	r0,a
      0025E5 06               [12] 4055 	inc	@r0
      0025E6 B6 00 02         [24] 4056 	cjne	@r0,#0x00,00324$
      0025E9 08               [12] 4057 	inc	r0
      0025EA 06               [12] 4058 	inc	@r0
      0025EB                       4059 00324$:
      0025EB 02 25 11         [24] 4060 	ljmp	00123$
                                   4061 ;	../../../usb/DAP.c:828: while (request_count--) {
      0025EE                       4062 00177$:
      0025EE E5 1F            [12] 4063 	mov	a,_bp
      0025F0 24 12            [12] 4064 	add	a,#0x12
      0025F2 FF               [12] 4065 	mov	r7,a
      0025F3 E5 1F            [12] 4066 	mov	a,_bp
      0025F5 24 08            [12] 4067 	add	a,#0x08
      0025F7 F8               [12] 4068 	mov	r0,a
      0025F8 A6 07            [24] 4069 	mov	@r0,ar7
      0025FA E5 1F            [12] 4070 	mov	a,_bp
      0025FC 24 0C            [12] 4071 	add	a,#0x0c
      0025FE F8               [12] 4072 	mov	r0,a
      0025FF E4               [12] 4073 	clr	a
      002600 F6               [12] 4074 	mov	@r0,a
      002601 08               [12] 4075 	inc	r0
      002602 F6               [12] 4076 	mov	@r0,a
      002603 E5 1F            [12] 4077 	mov	a,_bp
      002605 24 0A            [12] 4078 	add	a,#0x0a
      002607 F8               [12] 4079 	mov	r0,a
      002608 E5 1F            [12] 4080 	mov	a,_bp
      00260A 24 06            [12] 4081 	add	a,#0x06
      00260C F9               [12] 4082 	mov	r1,a
      00260D E6               [12] 4083 	mov	a,@r0
      00260E F7               [12] 4084 	mov	@r1,a
      00260F 08               [12] 4085 	inc	r0
      002610 09               [12] 4086 	inc	r1
      002611 E6               [12] 4087 	mov	a,@r0
      002612 F7               [12] 4088 	mov	@r1,a
      002613                       4089 00134$:
      002613 E5 1F            [12] 4090 	mov	a,_bp
      002615 24 06            [12] 4091 	add	a,#0x06
      002617 F8               [12] 4092 	mov	r0,a
      002618 86 02            [24] 4093 	mov	ar2,@r0
      00261A 08               [12] 4094 	inc	r0
      00261B 86 05            [24] 4095 	mov	ar5,@r0
      00261D E5 1F            [12] 4096 	mov	a,_bp
      00261F 24 06            [12] 4097 	add	a,#0x06
      002621 F8               [12] 4098 	mov	r0,a
      002622 16               [12] 4099 	dec	@r0
      002623 B6 FF 02         [24] 4100 	cjne	@r0,#0xff,00325$
      002626 08               [12] 4101 	inc	r0
      002627 16               [12] 4102 	dec	@r0
      002628                       4103 00325$:
      002628 EA               [12] 4104 	mov	a,r2
      002629 4D               [12] 4105 	orl	a,r5
      00262A 70 03            [24] 4106 	jnz	00326$
      00262C 02 26 E2         [24] 4107 	ljmp	00136$
      00262F                       4108 00326$:
                                   4109 ;	../../../usb/DAP.c:830: for (uint8_t i = 0; i < 4; i++) {
      00262F E5 1F            [12] 4110 	mov	a,_bp
      002631 24 03            [12] 4111 	add	a,#0x03
      002633 F8               [12] 4112 	mov	r0,a
      002634 86 03            [24] 4113 	mov	ar3,@r0
      002636 08               [12] 4114 	inc	r0
      002637 86 04            [24] 4115 	mov	ar4,@r0
      002639 08               [12] 4116 	inc	r0
      00263A 86 06            [24] 4117 	mov	ar6,@r0
      00263C 7D 00            [12] 4118 	mov	r5,#0x00
      00263E                       4119 00150$:
      00263E BD 04 00         [24] 4120 	cjne	r5,#0x04,00327$
      002641                       4121 00327$:
      002641 50 17            [24] 4122 	jnc	00184$
                                   4123 ;	../../../usb/DAP.c:831: data[i] = *req++;
      002643 ED               [12] 4124 	mov	a,r5
      002644 2F               [12] 4125 	add	a,r7
      002645 F9               [12] 4126 	mov	r1,a
      002646 8B 82            [24] 4127 	mov	dpl,r3
      002648 8C 83            [24] 4128 	mov	dph,r4
      00264A 8E F0            [24] 4129 	mov	b,r6
      00264C 12 33 25         [24] 4130 	lcall	__gptrget
      00264F FA               [12] 4131 	mov	r2,a
      002650 A3               [24] 4132 	inc	dptr
      002651 AB 82            [24] 4133 	mov	r3,dpl
      002653 AC 83            [24] 4134 	mov	r4,dph
      002655 A7 02            [24] 4135 	mov	@r1,ar2
                                   4136 ;	../../../usb/DAP.c:830: for (uint8_t i = 0; i < 4; i++) {
      002657 0D               [12] 4137 	inc	r5
      002658 80 E4            [24] 4138 	sjmp	00150$
      00265A                       4139 00184$:
      00265A E5 1F            [12] 4140 	mov	a,_bp
      00265C 24 03            [12] 4141 	add	a,#0x03
      00265E F8               [12] 4142 	mov	r0,a
      00265F A6 03            [24] 4143 	mov	@r0,ar3
      002661 08               [12] 4144 	inc	r0
      002662 A6 04            [24] 4145 	mov	@r0,ar4
      002664 08               [12] 4146 	inc	r0
      002665 A6 06            [24] 4147 	mov	@r0,ar6
                                   4148 ;	../../../usb/DAP.c:835: retry = DAP_Data.transfer.retry_count;
      002667 90 02 CF         [24] 4149 	mov	dptr,#(_DAP_Data + 0x000f)
      00266A E0               [24] 4150 	movx	a,@dptr
      00266B FA               [12] 4151 	mov	r2,a
      00266C A3               [24] 4152 	inc	dptr
      00266D E0               [24] 4153 	movx	a,@dptr
      00266E FD               [12] 4154 	mov	r5,a
                                   4155 ;	../../../usb/DAP.c:836: do {
      00266F                       4156 00129$:
                                   4157 ;	../../../usb/DAP.c:837: response_value = SWD_Transfer(request_value, data);
      00266F E5 1F            [12] 4158 	mov	a,_bp
      002671 24 08            [12] 4159 	add	a,#0x08
      002673 F8               [12] 4160 	mov	r0,a
      002674 86 03            [24] 4161 	mov	ar3,@r0
      002676 7C 00            [12] 4162 	mov	r4,#0x00
      002678 7E 40            [12] 4163 	mov	r6,#0x40
      00267A C0 07            [24] 4164 	push	ar7
      00267C C0 05            [24] 4165 	push	ar5
      00267E C0 02            [24] 4166 	push	ar2
      002680 C0 03            [24] 4167 	push	ar3
      002682 C0 04            [24] 4168 	push	ar4
      002684 C0 06            [24] 4169 	push	ar6
      002686 E5 1F            [12] 4170 	mov	a,_bp
      002688 24 0E            [12] 4171 	add	a,#0x0e
      00268A F8               [12] 4172 	mov	r0,a
      00268B 86 82            [24] 4173 	mov	dpl,@r0
      00268D 12 2E 97         [24] 4174 	lcall	_SWD_Transfer
      002690 AE 82            [24] 4175 	mov	r6,dpl
      002692 15 81            [12] 4176 	dec	sp
      002694 15 81            [12] 4177 	dec	sp
      002696 15 81            [12] 4178 	dec	sp
      002698 D0 02            [24] 4179 	pop	ar2
      00269A D0 05            [24] 4180 	pop	ar5
      00269C D0 07            [24] 4181 	pop	ar7
      00269E E5 1F            [12] 4182 	mov	a,_bp
      0026A0 24 16            [12] 4183 	add	a,#0x16
      0026A2 F8               [12] 4184 	mov	r0,a
      0026A3 A6 06            [24] 4185 	mov	@r0,ar6
                                   4186 ;	../../../usb/DAP.c:838: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      0026A5 E5 1F            [12] 4187 	mov	a,_bp
      0026A7 24 16            [12] 4188 	add	a,#0x16
      0026A9 F8               [12] 4189 	mov	r0,a
      0026AA B6 02 11         [24] 4190 	cjne	@r0,#0x02,00131$
      0026AD 8A 04            [24] 4191 	mov	ar4,r2
      0026AF 8D 06            [24] 4192 	mov	ar6,r5
      0026B1 1A               [12] 4193 	dec	r2
      0026B2 BA FF 01         [24] 4194 	cjne	r2,#0xff,00331$
      0026B5 1D               [12] 4195 	dec	r5
      0026B6                       4196 00331$:
      0026B6 EC               [12] 4197 	mov	a,r4
      0026B7 4E               [12] 4198 	orl	a,r6
      0026B8 60 04            [24] 4199 	jz	00131$
      0026BA E5 28            [12] 4200 	mov	a,_DAP_TransferAbort
      0026BC 60 B1            [24] 4201 	jz	00129$
      0026BE                       4202 00131$:
                                   4203 ;	../../../usb/DAP.c:839: if (response_value != DAP_TRANSFER_OK) {
      0026BE E5 1F            [12] 4204 	mov	a,_bp
      0026C0 24 16            [12] 4205 	add	a,#0x16
      0026C2 F8               [12] 4206 	mov	r0,a
      0026C3 B6 01 71         [24] 4207 	cjne	@r0,#0x01,00145$
                                   4208 ;	../../../usb/DAP.c:842: response_count++;
      0026C6 E5 1F            [12] 4209 	mov	a,_bp
      0026C8 24 0C            [12] 4210 	add	a,#0x0c
      0026CA F8               [12] 4211 	mov	r0,a
      0026CB 06               [12] 4212 	inc	@r0
      0026CC B6 00 02         [24] 4213 	cjne	@r0,#0x00,00336$
      0026CF 08               [12] 4214 	inc	r0
      0026D0 06               [12] 4215 	inc	@r0
      0026D1                       4216 00336$:
      0026D1 E5 1F            [12] 4217 	mov	a,_bp
      0026D3 24 0C            [12] 4218 	add	a,#0x0c
      0026D5 F8               [12] 4219 	mov	r0,a
      0026D6 A9 1F            [24] 4220 	mov	r1,_bp
      0026D8 09               [12] 4221 	inc	r1
      0026D9 E6               [12] 4222 	mov	a,@r0
      0026DA F7               [12] 4223 	mov	@r1,a
      0026DB 08               [12] 4224 	inc	r0
      0026DC 09               [12] 4225 	inc	r1
      0026DD E6               [12] 4226 	mov	a,@r0
      0026DE F7               [12] 4227 	mov	@r1,a
      0026DF 02 26 13         [24] 4228 	ljmp	00134$
      0026E2                       4229 00136$:
                                   4230 ;	../../../usb/DAP.c:845: retry = DAP_Data.transfer.retry_count;
      0026E2 90 02 CF         [24] 4231 	mov	dptr,#(_DAP_Data + 0x000f)
      0026E5 E0               [24] 4232 	movx	a,@dptr
      0026E6 FE               [12] 4233 	mov	r6,a
      0026E7 A3               [24] 4234 	inc	dptr
      0026E8 E0               [24] 4235 	movx	a,@dptr
      0026E9 FF               [12] 4236 	mov	r7,a
                                   4237 ;	../../../usb/DAP.c:846: do {
      0026EA                       4238 00139$:
                                   4239 ;	../../../usb/DAP.c:847: response_value = SWD_Transfer(DP_RDBUFF | DAP_TRANSFER_RnW, NULL);
      0026EA C0 07            [24] 4240 	push	ar7
      0026EC C0 06            [24] 4241 	push	ar6
      0026EE E4               [12] 4242 	clr	a
      0026EF C0 E0            [24] 4243 	push	acc
      0026F1 C0 E0            [24] 4244 	push	acc
      0026F3 C0 E0            [24] 4245 	push	acc
      0026F5 75 82 0E         [24] 4246 	mov	dpl,#0x0e
      0026F8 12 2E 97         [24] 4247 	lcall	_SWD_Transfer
      0026FB AD 82            [24] 4248 	mov	r5,dpl
      0026FD 15 81            [12] 4249 	dec	sp
      0026FF 15 81            [12] 4250 	dec	sp
      002701 15 81            [12] 4251 	dec	sp
      002703 D0 06            [24] 4252 	pop	ar6
      002705 D0 07            [24] 4253 	pop	ar7
      002707 E5 1F            [12] 4254 	mov	a,_bp
      002709 24 16            [12] 4255 	add	a,#0x16
      00270B F8               [12] 4256 	mov	r0,a
      00270C A6 05            [24] 4257 	mov	@r0,ar5
                                   4258 ;	../../../usb/DAP.c:848: } while ((response_value == DAP_TRANSFER_WAIT) && retry-- && !DAP_TransferAbort);
      00270E E5 1F            [12] 4259 	mov	a,_bp
      002710 24 16            [12] 4260 	add	a,#0x16
      002712 F8               [12] 4261 	mov	r0,a
      002713 B6 02 21         [24] 4262 	cjne	@r0,#0x02,00145$
      002716 8E 04            [24] 4263 	mov	ar4,r6
      002718 8F 05            [24] 4264 	mov	ar5,r7
      00271A 1E               [12] 4265 	dec	r6
      00271B BE FF 01         [24] 4266 	cjne	r6,#0xff,00339$
      00271E 1F               [12] 4267 	dec	r7
      00271F                       4268 00339$:
      00271F EC               [12] 4269 	mov	a,r4
      002720 4D               [12] 4270 	orl	a,r5
      002721 60 14            [24] 4271 	jz	00145$
      002723 E5 28            [12] 4272 	mov	a,_DAP_TransferAbort
      002725 60 C3            [24] 4273 	jz	00139$
                                   4274 ;	../../../usb/DAP.c:856: return ((uint8_t)(response - response_head));
                                   4275 ;	../../../usb/DAP.c:851: end:
      002727 80 0E            [24] 4276 	sjmp	00145$
      002729                       4277 00187$:
      002729 E5 1F            [12] 4278 	mov	a,_bp
      00272B 24 0C            [12] 4279 	add	a,#0x0c
      00272D F8               [12] 4280 	mov	r0,a
      00272E A9 1F            [24] 4281 	mov	r1,_bp
      002730 09               [12] 4282 	inc	r1
      002731 E6               [12] 4283 	mov	a,@r0
      002732 F7               [12] 4284 	mov	@r1,a
      002733 08               [12] 4285 	inc	r0
      002734 09               [12] 4286 	inc	r1
      002735 E6               [12] 4287 	mov	a,@r0
      002736 F7               [12] 4288 	mov	@r1,a
      002737                       4289 00145$:
                                   4290 ;	../../../usb/DAP.c:852: *(response_head + 0) = (uint8_t)(response_count >> 0);
      002737 A8 1F            [24] 4291 	mov	r0,_bp
      002739 08               [12] 4292 	inc	r0
      00273A 86 07            [24] 4293 	mov	ar7,@r0
      00273C E5 1F            [12] 4294 	mov	a,_bp
      00273E 24 0F            [12] 4295 	add	a,#0x0f
      002740 F8               [12] 4296 	mov	r0,a
      002741 86 82            [24] 4297 	mov	dpl,@r0
      002743 08               [12] 4298 	inc	r0
      002744 86 83            [24] 4299 	mov	dph,@r0
      002746 08               [12] 4300 	inc	r0
      002747 86 F0            [24] 4301 	mov	b,@r0
      002749 EF               [12] 4302 	mov	a,r7
      00274A 12 30 FC         [24] 4303 	lcall	__gptrput
                                   4304 ;	../../../usb/DAP.c:853: *(response_head + 1) = (uint8_t)(response_count >> 8);
      00274D E5 1F            [12] 4305 	mov	a,_bp
      00274F 24 0F            [12] 4306 	add	a,#0x0f
      002751 F8               [12] 4307 	mov	r0,a
      002752 74 01            [12] 4308 	mov	a,#0x01
      002754 26               [12] 4309 	add	a,@r0
      002755 FD               [12] 4310 	mov	r5,a
      002756 E4               [12] 4311 	clr	a
      002757 08               [12] 4312 	inc	r0
      002758 36               [12] 4313 	addc	a,@r0
      002759 FE               [12] 4314 	mov	r6,a
      00275A 08               [12] 4315 	inc	r0
      00275B 86 07            [24] 4316 	mov	ar7,@r0
      00275D A8 1F            [24] 4317 	mov	r0,_bp
      00275F 08               [12] 4318 	inc	r0
      002760 08               [12] 4319 	inc	r0
      002761 86 04            [24] 4320 	mov	ar4,@r0
      002763 8D 82            [24] 4321 	mov	dpl,r5
      002765 8E 83            [24] 4322 	mov	dph,r6
      002767 8F F0            [24] 4323 	mov	b,r7
      002769 EC               [12] 4324 	mov	a,r4
      00276A 12 30 FC         [24] 4325 	lcall	__gptrput
                                   4326 ;	../../../usb/DAP.c:854: *(response_head + 2) = (uint8_t)response_value;
      00276D E5 1F            [12] 4327 	mov	a,_bp
      00276F 24 0F            [12] 4328 	add	a,#0x0f
      002771 F8               [12] 4329 	mov	r0,a
      002772 74 02            [12] 4330 	mov	a,#0x02
      002774 26               [12] 4331 	add	a,@r0
      002775 FD               [12] 4332 	mov	r5,a
      002776 E4               [12] 4333 	clr	a
      002777 08               [12] 4334 	inc	r0
      002778 36               [12] 4335 	addc	a,@r0
      002779 FE               [12] 4336 	mov	r6,a
      00277A 08               [12] 4337 	inc	r0
      00277B 86 07            [24] 4338 	mov	ar7,@r0
      00277D 8D 82            [24] 4339 	mov	dpl,r5
      00277F 8E 83            [24] 4340 	mov	dph,r6
      002781 8F F0            [24] 4341 	mov	b,r7
      002783 E5 1F            [12] 4342 	mov	a,_bp
      002785 24 16            [12] 4343 	add	a,#0x16
      002787 F8               [12] 4344 	mov	r0,a
      002788 E6               [12] 4345 	mov	a,@r0
      002789 12 30 FC         [24] 4346 	lcall	__gptrput
                                   4347 ;	../../../usb/DAP.c:856: return ((uint8_t)(response - response_head));
      00278C AF 2C            [24] 4348 	mov	r7,_response
      00278E E5 1F            [12] 4349 	mov	a,_bp
      002790 24 0F            [12] 4350 	add	a,#0x0f
      002792 F8               [12] 4351 	mov	r0,a
      002793 86 02            [24] 4352 	mov	ar2,@r0
      002795 EF               [12] 4353 	mov	a,r7
      002796 C3               [12] 4354 	clr	c
      002797 9A               [12] 4355 	subb	a,r2
      002798 F5 82            [12] 4356 	mov	dpl,a
                                   4357 ;	../../../usb/DAP.c:857: }
      00279A 85 1F 81         [24] 4358 	mov	sp,_bp
      00279D D0 1F            [24] 4359 	pop	_bp
      00279F 22               [24] 4360 	ret
                                   4361 ;------------------------------------------------------------
                                   4362 ;Allocation info for local variables in function 'DAP_TransferBlock'
                                   4363 ;------------------------------------------------------------
                                   4364 ;num                       Allocated to registers r7 
                                   4365 ;------------------------------------------------------------
                                   4366 ;	../../../usb/DAP.c:864: static uint16_t DAP_TransferBlock()
                                   4367 ;	-----------------------------------------
                                   4368 ;	 function DAP_TransferBlock
                                   4369 ;	-----------------------------------------
      0027A0                       4370 _DAP_TransferBlock:
                                   4371 ;	../../../usb/DAP.c:868: switch (DAP_Data.debug_port) {
      0027A0 90 02 C0         [24] 4372 	mov	dptr,#_DAP_Data
      0027A3 E0               [24] 4373 	movx	a,@dptr
      0027A4 FF               [12] 4374 	mov	r7,a
      0027A5 BF 01 07         [24] 4375 	cjne	r7,#0x01,00102$
                                   4376 ;	../../../usb/DAP.c:870: num = DAP_SWD_TransferBlock();
      0027A8 12 23 D1         [24] 4377 	lcall	_DAP_SWD_TransferBlock
      0027AB AF 82            [24] 4378 	mov	r7,dpl
                                   4379 ;	../../../usb/DAP.c:871: break;
                                   4380 ;	../../../usb/DAP.c:872: default:
      0027AD 80 3B            [24] 4381 	sjmp	00103$
      0027AF                       4382 00102$:
                                   4383 ;	../../../usb/DAP.c:873: *(response + 0) = 0U; // Response count [7:0]
      0027AF AC 2C            [24] 4384 	mov	r4,_response
      0027B1 AD 2D            [24] 4385 	mov	r5,(_response + 1)
      0027B3 AE 2E            [24] 4386 	mov	r6,(_response + 2)
      0027B5 8C 82            [24] 4387 	mov	dpl,r4
      0027B7 8D 83            [24] 4388 	mov	dph,r5
      0027B9 8E F0            [24] 4389 	mov	b,r6
      0027BB E4               [12] 4390 	clr	a
      0027BC 12 30 FC         [24] 4391 	lcall	__gptrput
                                   4392 ;	../../../usb/DAP.c:874: *(response + 1) = 0U; // Response count[15:8]
      0027BF 04               [12] 4393 	inc	a
      0027C0 25 2C            [12] 4394 	add	a,_response
      0027C2 FC               [12] 4395 	mov	r4,a
      0027C3 E4               [12] 4396 	clr	a
      0027C4 35 2D            [12] 4397 	addc	a,(_response + 1)
      0027C6 FD               [12] 4398 	mov	r5,a
      0027C7 AE 2E            [24] 4399 	mov	r6,(_response + 2)
      0027C9 8C 82            [24] 4400 	mov	dpl,r4
      0027CB 8D 83            [24] 4401 	mov	dph,r5
      0027CD 8E F0            [24] 4402 	mov	b,r6
      0027CF E4               [12] 4403 	clr	a
      0027D0 12 30 FC         [24] 4404 	lcall	__gptrput
                                   4405 ;	../../../usb/DAP.c:875: *(response + 2) = 0U; // Response value
      0027D3 74 02            [12] 4406 	mov	a,#0x02
      0027D5 25 2C            [12] 4407 	add	a,_response
      0027D7 FC               [12] 4408 	mov	r4,a
      0027D8 E4               [12] 4409 	clr	a
      0027D9 35 2D            [12] 4410 	addc	a,(_response + 1)
      0027DB FD               [12] 4411 	mov	r5,a
      0027DC AE 2E            [24] 4412 	mov	r6,(_response + 2)
      0027DE 8C 82            [24] 4413 	mov	dpl,r4
      0027E0 8D 83            [24] 4414 	mov	dph,r5
      0027E2 8E F0            [24] 4415 	mov	b,r6
      0027E4 E4               [12] 4416 	clr	a
      0027E5 12 30 FC         [24] 4417 	lcall	__gptrput
                                   4418 ;	../../../usb/DAP.c:876: num = 3U;
      0027E8 7F 03            [12] 4419 	mov	r7,#0x03
                                   4420 ;	../../../usb/DAP.c:878: }
      0027EA                       4421 00103$:
                                   4422 ;	../../../usb/DAP.c:880: if ((*(request + 3) & DAP_TRANSFER_RnW) != 0U) {
      0027EA 74 03            [12] 4423 	mov	a,#0x03
      0027EC 25 29            [12] 4424 	add	a,_request
      0027EE FC               [12] 4425 	mov	r4,a
      0027EF E4               [12] 4426 	clr	a
      0027F0 35 2A            [12] 4427 	addc	a,(_request + 1)
      0027F2 FD               [12] 4428 	mov	r5,a
      0027F3 AE 2B            [24] 4429 	mov	r6,(_request + 2)
      0027F5 8C 82            [24] 4430 	mov	dpl,r4
      0027F7 8D 83            [24] 4431 	mov	dph,r5
      0027F9 8E F0            [24] 4432 	mov	b,r6
      0027FB 12 33 25         [24] 4433 	lcall	__gptrget
      0027FE 30 E1 0C         [24] 4434 	jnb	acc.1,00105$
                                   4435 ;	../../../usb/DAP.c:882: return ((uint16_t)4U << 8) | num;
      002801 8F 05            [24] 4436 	mov	ar5,r7
      002803 7E 00            [12] 4437 	mov	r6,#0x00
      002805 8D 82            [24] 4438 	mov	dpl,r5
      002807 74 04            [12] 4439 	mov	a,#0x04
      002809 4E               [12] 4440 	orl	a,r6
      00280A F5 83            [12] 4441 	mov	dph,a
      00280C 22               [24] 4442 	ret
      00280D                       4443 00105$:
                                   4444 ;	../../../usb/DAP.c:885: return ((4U + (((uint16_t)(*(request + 1)) | (uint16_t)(*(request + 2) << 8)) * 4)) << 8) | num;
      00280D 74 01            [12] 4445 	mov	a,#0x01
      00280F 25 29            [12] 4446 	add	a,_request
      002811 FC               [12] 4447 	mov	r4,a
      002812 E4               [12] 4448 	clr	a
      002813 35 2A            [12] 4449 	addc	a,(_request + 1)
      002815 FD               [12] 4450 	mov	r5,a
      002816 AE 2B            [24] 4451 	mov	r6,(_request + 2)
      002818 8C 82            [24] 4452 	mov	dpl,r4
      00281A 8D 83            [24] 4453 	mov	dph,r5
      00281C 8E F0            [24] 4454 	mov	b,r6
      00281E 12 33 25         [24] 4455 	lcall	__gptrget
      002821 FC               [12] 4456 	mov	r4,a
      002822 7E 00            [12] 4457 	mov	r6,#0x00
      002824 74 02            [12] 4458 	mov	a,#0x02
      002826 25 29            [12] 4459 	add	a,_request
      002828 FA               [12] 4460 	mov	r2,a
      002829 E4               [12] 4461 	clr	a
      00282A 35 2A            [12] 4462 	addc	a,(_request + 1)
      00282C FB               [12] 4463 	mov	r3,a
      00282D AD 2B            [24] 4464 	mov	r5,(_request + 2)
      00282F 8A 82            [24] 4465 	mov	dpl,r2
      002831 8B 83            [24] 4466 	mov	dph,r3
      002833 8D F0            [24] 4467 	mov	b,r5
      002835 12 33 25         [24] 4468 	lcall	__gptrget
      002838 FD               [12] 4469 	mov	r5,a
      002839 E4               [12] 4470 	clr	a
      00283A 42 04            [12] 4471 	orl	ar4,a
      00283C ED               [12] 4472 	mov	a,r5
      00283D 42 06            [12] 4473 	orl	ar6,a
      00283F EC               [12] 4474 	mov	a,r4
      002840 2C               [12] 4475 	add	a,r4
      002841 FC               [12] 4476 	mov	r4,a
      002842 EE               [12] 4477 	mov	a,r6
      002843 33               [12] 4478 	rlc	a
      002844 FE               [12] 4479 	mov	r6,a
      002845 EC               [12] 4480 	mov	a,r4
      002846 2C               [12] 4481 	add	a,r4
      002847 FC               [12] 4482 	mov	r4,a
      002848 EE               [12] 4483 	mov	a,r6
      002849 33               [12] 4484 	rlc	a
      00284A FE               [12] 4485 	mov	r6,a
      00284B 74 04            [12] 4486 	mov	a,#0x04
      00284D 2C               [12] 4487 	add	a,r4
      00284E FC               [12] 4488 	mov	r4,a
      00284F E4               [12] 4489 	clr	a
      002850 3E               [12] 4490 	addc	a,r6
      002851 8C 06            [24] 4491 	mov	ar6,r4
      002853 E4               [12] 4492 	clr	a
      002854 FC               [12] 4493 	mov	r4,a
      002855 FD               [12] 4494 	mov	r5,a
      002856 EF               [12] 4495 	mov	a,r7
      002857 42 04            [12] 4496 	orl	ar4,a
      002859 ED               [12] 4497 	mov	a,r5
      00285A 42 06            [12] 4498 	orl	ar6,a
      00285C 8C 82            [24] 4499 	mov	dpl,r4
      00285E 8E 83            [24] 4500 	mov	dph,r6
                                   4501 ;	../../../usb/DAP.c:887: }
      002860 22               [24] 4502 	ret
                                   4503 ;------------------------------------------------------------
                                   4504 ;Allocation info for local variables in function 'DAP_SWD_WriteAbort'
                                   4505 ;------------------------------------------------------------
                                   4506 ;	../../../usb/DAP.c:893: static uint8_t DAP_SWD_WriteAbort()
                                   4507 ;	-----------------------------------------
                                   4508 ;	 function DAP_SWD_WriteAbort
                                   4509 ;	-----------------------------------------
      002861                       4510 _DAP_SWD_WriteAbort:
                                   4511 ;	../../../usb/DAP.c:896: SWD_Transfer(DP_ABORT, (uint8_t*)&request[1]);
      002861 74 01            [12] 4512 	mov	a,#0x01
      002863 25 29            [12] 4513 	add	a,_request
      002865 FD               [12] 4514 	mov	r5,a
      002866 E4               [12] 4515 	clr	a
      002867 35 2A            [12] 4516 	addc	a,(_request + 1)
      002869 7F 00            [12] 4517 	mov	r7,#0x00
      00286B 7E 40            [12] 4518 	mov	r6,#0x40
      00286D C0 05            [24] 4519 	push	ar5
      00286F C0 07            [24] 4520 	push	ar7
      002871 C0 06            [24] 4521 	push	ar6
      002873 75 82 00         [24] 4522 	mov	dpl,#0x00
      002876 12 2E 97         [24] 4523 	lcall	_SWD_Transfer
      002879 15 81            [12] 4524 	dec	sp
      00287B 15 81            [12] 4525 	dec	sp
      00287D 15 81            [12] 4526 	dec	sp
                                   4527 ;	../../../usb/DAP.c:898: *response = DAP_OK;
      00287F AD 2C            [24] 4528 	mov	r5,_response
      002881 AE 2D            [24] 4529 	mov	r6,(_response + 1)
      002883 AF 2E            [24] 4530 	mov	r7,(_response + 2)
      002885 8D 82            [24] 4531 	mov	dpl,r5
      002887 8E 83            [24] 4532 	mov	dph,r6
      002889 8F F0            [24] 4533 	mov	b,r7
      00288B E4               [12] 4534 	clr	a
      00288C 12 30 FC         [24] 4535 	lcall	__gptrput
                                   4536 ;	../../../usb/DAP.c:899: return (1U);
      00288F 75 82 01         [24] 4537 	mov	dpl,#0x01
                                   4538 ;	../../../usb/DAP.c:900: }
      002892 22               [24] 4539 	ret
                                   4540 ;------------------------------------------------------------
                                   4541 ;Allocation info for local variables in function 'DAP_WriteAbort'
                                   4542 ;------------------------------------------------------------
                                   4543 ;num                       Allocated to registers r7 
                                   4544 ;------------------------------------------------------------
                                   4545 ;	../../../usb/DAP.c:907: static uint16_t DAP_WriteAbort()
                                   4546 ;	-----------------------------------------
                                   4547 ;	 function DAP_WriteAbort
                                   4548 ;	-----------------------------------------
      002893                       4549 _DAP_WriteAbort:
                                   4550 ;	../../../usb/DAP.c:911: switch (DAP_Data.debug_port) {
      002893 90 02 C0         [24] 4551 	mov	dptr,#_DAP_Data
      002896 E0               [24] 4552 	movx	a,@dptr
      002897 FF               [12] 4553 	mov	r7,a
      002898 BF 01 07         [24] 4554 	cjne	r7,#0x01,00102$
                                   4555 ;	../../../usb/DAP.c:913: num = DAP_SWD_WriteAbort();
      00289B 12 28 61         [24] 4556 	lcall	_DAP_SWD_WriteAbort
      00289E AF 82            [24] 4557 	mov	r7,dpl
                                   4558 ;	../../../usb/DAP.c:914: break;
                                   4559 ;	../../../usb/DAP.c:915: default:
      0028A0 80 13            [24] 4560 	sjmp	00103$
      0028A2                       4561 00102$:
                                   4562 ;	../../../usb/DAP.c:916: *response = DAP_ERROR;
      0028A2 AC 2C            [24] 4563 	mov	r4,_response
      0028A4 AD 2D            [24] 4564 	mov	r5,(_response + 1)
      0028A6 AE 2E            [24] 4565 	mov	r6,(_response + 2)
      0028A8 8C 82            [24] 4566 	mov	dpl,r4
      0028AA 8D 83            [24] 4567 	mov	dph,r5
      0028AC 8E F0            [24] 4568 	mov	b,r6
      0028AE 74 FF            [12] 4569 	mov	a,#0xff
      0028B0 12 30 FC         [24] 4570 	lcall	__gptrput
                                   4571 ;	../../../usb/DAP.c:917: num = 1U;
      0028B3 7F 01            [12] 4572 	mov	r7,#0x01
                                   4573 ;	../../../usb/DAP.c:919: }
      0028B5                       4574 00103$:
                                   4575 ;	../../../usb/DAP.c:920: return (((uint16_t)5U << 8) | num);
      0028B5 7E 00            [12] 4576 	mov	r6,#0x00
      0028B7 8F 82            [24] 4577 	mov	dpl,r7
      0028B9 74 05            [12] 4578 	mov	a,#0x05
      0028BB 4E               [12] 4579 	orl	a,r6
      0028BC F5 83            [12] 4580 	mov	dph,a
                                   4581 ;	../../../usb/DAP.c:921: }
      0028BE 22               [24] 4582 	ret
                                   4583 ;------------------------------------------------------------
                                   4584 ;Allocation info for local variables in function 'DAP_ProcessVendorCommand'
                                   4585 ;------------------------------------------------------------
                                   4586 ;	../../../usb/DAP.c:929: uint16_t DAP_ProcessVendorCommand()
                                   4587 ;	-----------------------------------------
                                   4588 ;	 function DAP_ProcessVendorCommand
                                   4589 ;	-----------------------------------------
      0028BF                       4590 _DAP_ProcessVendorCommand:
                                   4591 ;	../../../usb/DAP.c:932: *response = ID_DAP_Invalid;
      0028BF AD 2C            [24] 4592 	mov	r5,_response
      0028C1 AE 2D            [24] 4593 	mov	r6,(_response + 1)
      0028C3 AF 2E            [24] 4594 	mov	r7,(_response + 2)
      0028C5 8D 82            [24] 4595 	mov	dpl,r5
      0028C7 8E 83            [24] 4596 	mov	dph,r6
      0028C9 8F F0            [24] 4597 	mov	b,r7
      0028CB 74 FF            [12] 4598 	mov	a,#0xff
      0028CD 12 30 FC         [24] 4599 	lcall	__gptrput
                                   4600 ;	../../../usb/DAP.c:933: return (((uint16_t)1U << 8) | 1U);
      0028D0 90 01 01         [24] 4601 	mov	dptr,#0x0101
                                   4602 ;	../../../usb/DAP.c:934: }
      0028D3 22               [24] 4603 	ret
                                   4604 ;------------------------------------------------------------
                                   4605 ;Allocation info for local variables in function 'DAP_ProcessVendorCommandEx'
                                   4606 ;------------------------------------------------------------
                                   4607 ;	../../../usb/DAP.c:942: uint16_t DAP_ProcessVendorCommandEx()
                                   4608 ;	-----------------------------------------
                                   4609 ;	 function DAP_ProcessVendorCommandEx
                                   4610 ;	-----------------------------------------
      0028D4                       4611 _DAP_ProcessVendorCommandEx:
                                   4612 ;	../../../usb/DAP.c:945: *response = ID_DAP_Invalid;
      0028D4 AD 2C            [24] 4613 	mov	r5,_response
      0028D6 AE 2D            [24] 4614 	mov	r6,(_response + 1)
      0028D8 AF 2E            [24] 4615 	mov	r7,(_response + 2)
      0028DA 8D 82            [24] 4616 	mov	dpl,r5
      0028DC 8E 83            [24] 4617 	mov	dph,r6
      0028DE 8F F0            [24] 4618 	mov	b,r7
      0028E0 74 FF            [12] 4619 	mov	a,#0xff
      0028E2 12 30 FC         [24] 4620 	lcall	__gptrput
                                   4621 ;	../../../usb/DAP.c:946: return (((uint16_t)1U << 8) | 1U);
      0028E5 90 01 01         [24] 4622 	mov	dptr,#0x0101
                                   4623 ;	../../../usb/DAP.c:947: }
      0028E8 22               [24] 4624 	ret
                                   4625 ;------------------------------------------------------------
                                   4626 ;Allocation info for local variables in function 'DAP_ProcessCommand'
                                   4627 ;------------------------------------------------------------
                                   4628 ;resp                      Allocated to stack - _bp -5
                                   4629 ;req                       Allocated to registers 
                                   4630 ;num                       Allocated to registers r6 r7 
                                   4631 ;------------------------------------------------------------
                                   4632 ;	../../../usb/DAP.c:954: uint16_t DAP_ProcessCommand(const uint8_t* req, uint8_t* resp)
                                   4633 ;	-----------------------------------------
                                   4634 ;	 function DAP_ProcessCommand
                                   4635 ;	-----------------------------------------
      0028E9                       4636 _DAP_ProcessCommand:
      0028E9 C0 1F            [24] 4637 	push	_bp
      0028EB 85 81 1F         [24] 4638 	mov	_bp,sp
      0028EE 85 82 29         [24] 4639 	mov	_request,dpl
      0028F1 85 83 2A         [24] 4640 	mov	(_request + 1),dph
      0028F4 85 F0 2B         [24] 4641 	mov	(_request + 2),b
                                   4642 ;	../../../usb/DAP.c:958: response = resp;
      0028F7 E5 1F            [12] 4643 	mov	a,_bp
      0028F9 24 FB            [12] 4644 	add	a,#0xfb
      0028FB F8               [12] 4645 	mov	r0,a
      0028FC 86 2C            [24] 4646 	mov	_response,@r0
      0028FE 08               [12] 4647 	inc	r0
      0028FF 86 2D            [24] 4648 	mov	(_response + 1),@r0
      002901 08               [12] 4649 	inc	r0
      002902 86 2E            [24] 4650 	mov	(_response + 2),@r0
                                   4651 ;	../../../usb/DAP.c:960: if ((*request >= ID_DAP_Vendor0) && (*request <= ID_DAP_Vendor31)) {
      002904 AD 29            [24] 4652 	mov	r5,_request
      002906 AE 2A            [24] 4653 	mov	r6,(_request + 1)
      002908 AF 2B            [24] 4654 	mov	r7,(_request + 2)
      00290A 8D 82            [24] 4655 	mov	dpl,r5
      00290C 8E 83            [24] 4656 	mov	dph,r6
      00290E 8F F0            [24] 4657 	mov	b,r7
      002910 12 33 25         [24] 4658 	lcall	__gptrget
      002913 FD               [12] 4659 	mov	r5,a
      002914 BD 80 00         [24] 4660 	cjne	r5,#0x80,00154$
      002917                       4661 00154$:
      002917 40 1A            [24] 4662 	jc	00102$
      002919 AD 29            [24] 4663 	mov	r5,_request
      00291B AE 2A            [24] 4664 	mov	r6,(_request + 1)
      00291D AF 2B            [24] 4665 	mov	r7,(_request + 2)
      00291F 8D 82            [24] 4666 	mov	dpl,r5
      002921 8E 83            [24] 4667 	mov	dph,r6
      002923 8F F0            [24] 4668 	mov	b,r7
      002925 12 33 25         [24] 4669 	lcall	__gptrget
      002928 FD               [12] 4670 	mov  r5,a
      002929 24 60            [12] 4671 	add	a,#0xff - 0x9f
      00292B 40 06            [24] 4672 	jc	00102$
                                   4673 ;	../../../usb/DAP.c:961: return DAP_ProcessVendorCommand();
      00292D 12 28 BF         [24] 4674 	lcall	_DAP_ProcessVendorCommand
      002930 02 2B 4B         [24] 4675 	ljmp	00127$
      002933                       4676 00102$:
                                   4677 ;	../../../usb/DAP.c:964: if ((*request >= ID_DAP_VendorExFirst) && (*request <= ID_DAP_VendorExLast)) {
      002933 AD 29            [24] 4678 	mov	r5,_request
      002935 AE 2A            [24] 4679 	mov	r6,(_request + 1)
      002937 AF 2B            [24] 4680 	mov	r7,(_request + 2)
      002939 8D 82            [24] 4681 	mov	dpl,r5
      00293B 8E 83            [24] 4682 	mov	dph,r6
      00293D 8F F0            [24] 4683 	mov	b,r7
      00293F 12 33 25         [24] 4684 	lcall	__gptrget
      002942 FD               [12] 4685 	mov	r5,a
      002943 BD A0 00         [24] 4686 	cjne	r5,#0xa0,00157$
      002946                       4687 00157$:
      002946 40 1A            [24] 4688 	jc	00105$
      002948 AD 29            [24] 4689 	mov	r5,_request
      00294A AE 2A            [24] 4690 	mov	r6,(_request + 1)
      00294C AF 2B            [24] 4691 	mov	r7,(_request + 2)
      00294E 8D 82            [24] 4692 	mov	dpl,r5
      002950 8E 83            [24] 4693 	mov	dph,r6
      002952 8F F0            [24] 4694 	mov	b,r7
      002954 12 33 25         [24] 4695 	lcall	__gptrget
      002957 FD               [12] 4696 	mov  r5,a
      002958 24 01            [12] 4697 	add	a,#0xff - 0xfe
      00295A 40 06            [24] 4698 	jc	00105$
                                   4699 ;	../../../usb/DAP.c:965: return DAP_ProcessVendorCommandEx();
      00295C 12 28 D4         [24] 4700 	lcall	_DAP_ProcessVendorCommandEx
      00295F 02 2B 4B         [24] 4701 	ljmp	00127$
      002962                       4702 00105$:
                                   4703 ;	../../../usb/DAP.c:968: *response++ = *request;
      002962 AD 2C            [24] 4704 	mov	r5,_response
      002964 AE 2D            [24] 4705 	mov	r6,(_response + 1)
      002966 AF 2E            [24] 4706 	mov	r7,(_response + 2)
      002968 AA 29            [24] 4707 	mov	r2,_request
      00296A AB 2A            [24] 4708 	mov	r3,(_request + 1)
      00296C AC 2B            [24] 4709 	mov	r4,(_request + 2)
      00296E 8A 82            [24] 4710 	mov	dpl,r2
      002970 8B 83            [24] 4711 	mov	dph,r3
      002972 8C F0            [24] 4712 	mov	b,r4
      002974 12 33 25         [24] 4713 	lcall	__gptrget
      002977 FA               [12] 4714 	mov	r2,a
      002978 8D 82            [24] 4715 	mov	dpl,r5
      00297A 8E 83            [24] 4716 	mov	dph,r6
      00297C 8F F0            [24] 4717 	mov	b,r7
      00297E 12 30 FC         [24] 4718 	lcall	__gptrput
      002981 05 2C            [12] 4719 	inc	_response
      002983 E4               [12] 4720 	clr	a
      002984 B5 2C 02         [24] 4721 	cjne	a,_response,00160$
      002987 05 2D            [12] 4722 	inc	(_response + 1)
      002989                       4723 00160$:
                                   4724 ;	../../../usb/DAP.c:970: switch (*request++) {
      002989 AD 29            [24] 4725 	mov	r5,_request
      00298B AE 2A            [24] 4726 	mov	r6,(_request + 1)
      00298D AF 2B            [24] 4727 	mov	r7,(_request + 2)
      00298F 8D 82            [24] 4728 	mov	dpl,r5
      002991 8E 83            [24] 4729 	mov	dph,r6
      002993 8F F0            [24] 4730 	mov	b,r7
      002995 12 33 25         [24] 4731 	lcall	__gptrget
      002998 FF               [12] 4732 	mov	r7,a
      002999 05 29            [12] 4733 	inc	_request
      00299B E4               [12] 4734 	clr	a
      00299C B5 29 02         [24] 4735 	cjne	a,_request,00161$
      00299F 05 2A            [12] 4736 	inc	(_request + 1)
      0029A1                       4737 00161$:
      0029A1 EF               [12] 4738 	mov	a,r7
      0029A2 24 E2            [12] 4739 	add	a,#0xff - 0x1d
      0029A4 50 03            [24] 4740 	jnc	00162$
      0029A6 02 2B 23         [24] 4741 	ljmp	00125$
      0029A9                       4742 00162$:
      0029A9 EF               [12] 4743 	mov	a,r7
      0029AA 24 0A            [12] 4744 	add	a,#(00163$-3-.)
      0029AC 83               [24] 4745 	movc	a,@a+pc
      0029AD F5 82            [12] 4746 	mov	dpl,a
      0029AF EF               [12] 4747 	mov	a,r7
      0029B0 24 22            [12] 4748 	add	a,#(00164$-3-.)
      0029B2 83               [24] 4749 	movc	a,@a+pc
      0029B3 F5 83            [12] 4750 	mov	dph,a
      0029B5 E4               [12] 4751 	clr	a
      0029B6 73               [24] 4752 	jmp	@a+dptr
      0029B7                       4753 00163$:
      0029B7 F3                    4754 	.db	00107$
      0029B8 44                    4755 	.db	00108$
      0029B9 4E                    4756 	.db	00109$
      0029BA 5C                    4757 	.db	00110$
      0029BB EF                    4758 	.db	00121$
      0029BC FC                    4759 	.db	00122$
      0029BD 09                    4760 	.db	00123$
      0029BE 23                    4761 	.db	00125$
      0029BF 16                    4762 	.db	00124$
      0029C0 68                    4763 	.db	00111$
      0029C1 76                    4764 	.db	00112$
      0029C2 23                    4765 	.db	00125$
      0029C3 23                    4766 	.db	00125$
      0029C4 23                    4767 	.db	00125$
      0029C5 23                    4768 	.db	00125$
      0029C6 23                    4769 	.db	00125$
      0029C7 82                    4770 	.db	00113$
      0029C8 90                    4771 	.db	00114$
      0029C9 9E                    4772 	.db	00115$
      0029CA AC                    4773 	.db	00116$
      0029CB C8                    4774 	.db	00118$
      0029CC D5                    4775 	.db	00119$
      0029CD E2                    4776 	.db	00120$
      0029CE 23                    4777 	.db	00125$
      0029CF 23                    4778 	.db	00125$
      0029D0 23                    4779 	.db	00125$
      0029D1 23                    4780 	.db	00125$
      0029D2 23                    4781 	.db	00125$
      0029D3 23                    4782 	.db	00125$
      0029D4 BA                    4783 	.db	00117$
      0029D5                       4784 00164$:
      0029D5 29                    4785 	.db	00107$>>8
      0029D6 2A                    4786 	.db	00108$>>8
      0029D7 2A                    4787 	.db	00109$>>8
      0029D8 2A                    4788 	.db	00110$>>8
      0029D9 2A                    4789 	.db	00121$>>8
      0029DA 2A                    4790 	.db	00122$>>8
      0029DB 2B                    4791 	.db	00123$>>8
      0029DC 2B                    4792 	.db	00125$>>8
      0029DD 2B                    4793 	.db	00124$>>8
      0029DE 2A                    4794 	.db	00111$>>8
      0029DF 2A                    4795 	.db	00112$>>8
      0029E0 2B                    4796 	.db	00125$>>8
      0029E1 2B                    4797 	.db	00125$>>8
      0029E2 2B                    4798 	.db	00125$>>8
      0029E3 2B                    4799 	.db	00125$>>8
      0029E4 2B                    4800 	.db	00125$>>8
      0029E5 2A                    4801 	.db	00113$>>8
      0029E6 2A                    4802 	.db	00114$>>8
      0029E7 2A                    4803 	.db	00115$>>8
      0029E8 2A                    4804 	.db	00116$>>8
      0029E9 2A                    4805 	.db	00118$>>8
      0029EA 2A                    4806 	.db	00119$>>8
      0029EB 2A                    4807 	.db	00120$>>8
      0029EC 2B                    4808 	.db	00125$>>8
      0029ED 2B                    4809 	.db	00125$>>8
      0029EE 2B                    4810 	.db	00125$>>8
      0029EF 2B                    4811 	.db	00125$>>8
      0029F0 2B                    4812 	.db	00125$>>8
      0029F1 2B                    4813 	.db	00125$>>8
      0029F2 2A                    4814 	.db	00117$>>8
                                   4815 ;	../../../usb/DAP.c:971: case ID_DAP_Info:
      0029F3                       4816 00107$:
                                   4817 ;	../../../usb/DAP.c:972: num = DAP_Info(*request, response + 1);
      0029F3 74 01            [12] 4818 	mov	a,#0x01
      0029F5 25 2C            [12] 4819 	add	a,_response
      0029F7 FD               [12] 4820 	mov	r5,a
      0029F8 E4               [12] 4821 	clr	a
      0029F9 35 2D            [12] 4822 	addc	a,(_response + 1)
      0029FB FE               [12] 4823 	mov	r6,a
      0029FC AF 2E            [24] 4824 	mov	r7,(_response + 2)
      0029FE AA 29            [24] 4825 	mov	r2,_request
      002A00 AB 2A            [24] 4826 	mov	r3,(_request + 1)
      002A02 AC 2B            [24] 4827 	mov	r4,(_request + 2)
      002A04 8A 82            [24] 4828 	mov	dpl,r2
      002A06 8B 83            [24] 4829 	mov	dph,r3
      002A08 8C F0            [24] 4830 	mov	b,r4
      002A0A 12 33 25         [24] 4831 	lcall	__gptrget
      002A0D FA               [12] 4832 	mov	r2,a
      002A0E C0 05            [24] 4833 	push	ar5
      002A10 C0 06            [24] 4834 	push	ar6
      002A12 C0 07            [24] 4835 	push	ar7
      002A14 8A 82            [24] 4836 	mov	dpl,r2
      002A16 12 13 DD         [24] 4837 	lcall	_DAP_Info
      002A19 AF 82            [24] 4838 	mov	r7,dpl
      002A1B 15 81            [12] 4839 	dec	sp
      002A1D 15 81            [12] 4840 	dec	sp
      002A1F 15 81            [12] 4841 	dec	sp
      002A21 7E 00            [12] 4842 	mov	r6,#0x00
                                   4843 ;	../../../usb/DAP.c:973: *response = (uint8_t)num;
      002A23 AB 2C            [24] 4844 	mov	r3,_response
      002A25 AC 2D            [24] 4845 	mov	r4,(_response + 1)
      002A27 AD 2E            [24] 4846 	mov	r5,(_response + 2)
      002A29 8F 02            [24] 4847 	mov	ar2,r7
      002A2B 8B 82            [24] 4848 	mov	dpl,r3
      002A2D 8C 83            [24] 4849 	mov	dph,r4
      002A2F 8D F0            [24] 4850 	mov	b,r5
      002A31 EA               [12] 4851 	mov	a,r2
      002A32 12 30 FC         [24] 4852 	lcall	__gptrput
                                   4853 ;	../../../usb/DAP.c:974: return (((uint16_t)2U << 8) + 2U + num);
      002A35 74 02            [12] 4854 	mov	a,#0x02
      002A37 2F               [12] 4855 	add	a,r7
      002A38 FF               [12] 4856 	mov	r7,a
      002A39 74 02            [12] 4857 	mov	a,#0x02
      002A3B 3E               [12] 4858 	addc	a,r6
      002A3C FE               [12] 4859 	mov	r6,a
      002A3D 8F 82            [24] 4860 	mov	dpl,r7
      002A3F 8E 83            [24] 4861 	mov	dph,r6
      002A41 02 2B 4B         [24] 4862 	ljmp	00127$
                                   4863 ;	../../../usb/DAP.c:976: case ID_DAP_HostStatus:
      002A44                       4864 00108$:
                                   4865 ;	../../../usb/DAP.c:977: num = DAP_HostStatus();
      002A44 12 15 09         [24] 4866 	lcall	_DAP_HostStatus
      002A47 AE 82            [24] 4867 	mov	r6,dpl
      002A49 AF 83            [24] 4868 	mov	r7,dph
                                   4869 ;	../../../usb/DAP.c:978: break;
      002A4B 02 2B 3F         [24] 4870 	ljmp	00126$
                                   4871 ;	../../../usb/DAP.c:980: case ID_DAP_Connect:
      002A4E                       4872 00109$:
                                   4873 ;	../../../usb/DAP.c:981: num = DAP_Connect();
      002A4E 12 15 49         [24] 4874 	lcall	_DAP_Connect
      002A51 AC 82            [24] 4875 	mov	r4,dpl
      002A53 AD 83            [24] 4876 	mov	r5,dph
      002A55 8C 06            [24] 4877 	mov	ar6,r4
      002A57 8D 07            [24] 4878 	mov	ar7,r5
                                   4879 ;	../../../usb/DAP.c:982: break;
      002A59 02 2B 3F         [24] 4880 	ljmp	00126$
                                   4881 ;	../../../usb/DAP.c:983: case ID_DAP_Disconnect:
      002A5C                       4882 00110$:
                                   4883 ;	../../../usb/DAP.c:984: num = DAP_Disconnect();
      002A5C 12 15 9F         [24] 4884 	lcall	_DAP_Disconnect
      002A5F AD 82            [24] 4885 	mov	r5,dpl
      002A61 8D 06            [24] 4886 	mov	ar6,r5
      002A63 7F 00            [12] 4887 	mov	r7,#0x00
                                   4888 ;	../../../usb/DAP.c:985: break;
      002A65 02 2B 3F         [24] 4889 	ljmp	00126$
                                   4890 ;	../../../usb/DAP.c:987: case ID_DAP_Delay:
      002A68                       4891 00111$:
                                   4892 ;	../../../usb/DAP.c:988: num = DAP_Delay();
      002A68 12 14 C1         [24] 4893 	lcall	_DAP_Delay
      002A6B AC 82            [24] 4894 	mov	r4,dpl
      002A6D AD 83            [24] 4895 	mov	r5,dph
      002A6F 8C 06            [24] 4896 	mov	ar6,r4
      002A71 8D 07            [24] 4897 	mov	ar7,r5
                                   4898 ;	../../../usb/DAP.c:989: break;
      002A73 02 2B 3F         [24] 4899 	ljmp	00126$
                                   4900 ;	../../../usb/DAP.c:991: case ID_DAP_ResetTarget:
      002A76                       4901 00112$:
                                   4902 ;	../../../usb/DAP.c:992: num = DAP_ResetTarget();
      002A76 12 15 C4         [24] 4903 	lcall	_DAP_ResetTarget
      002A79 AD 82            [24] 4904 	mov	r5,dpl
      002A7B 8D 06            [24] 4905 	mov	ar6,r5
      002A7D 7F 00            [12] 4906 	mov	r7,#0x00
                                   4907 ;	../../../usb/DAP.c:993: break;
      002A7F 02 2B 3F         [24] 4908 	ljmp	00126$
                                   4909 ;	../../../usb/DAP.c:995: case ID_DAP_SWJ_Pins:
      002A82                       4910 00113$:
                                   4911 ;	../../../usb/DAP.c:996: num = DAP_SWJ_Pins();
      002A82 12 15 EC         [24] 4912 	lcall	_DAP_SWJ_Pins
      002A85 AC 82            [24] 4913 	mov	r4,dpl
      002A87 AD 83            [24] 4914 	mov	r5,dph
      002A89 8C 06            [24] 4915 	mov	ar6,r4
      002A8B 8D 07            [24] 4916 	mov	ar7,r5
                                   4917 ;	../../../usb/DAP.c:997: break;
      002A8D 02 2B 3F         [24] 4918 	ljmp	00126$
                                   4919 ;	../../../usb/DAP.c:998: case ID_DAP_SWJ_Clock:
      002A90                       4920 00114$:
                                   4921 ;	../../../usb/DAP.c:999: num = DAP_SWJ_Clock();
      002A90 12 17 66         [24] 4922 	lcall	_DAP_SWJ_Clock
      002A93 AC 82            [24] 4923 	mov	r4,dpl
      002A95 AD 83            [24] 4924 	mov	r5,dph
      002A97 8C 06            [24] 4925 	mov	ar6,r4
      002A99 8D 07            [24] 4926 	mov	ar7,r5
                                   4927 ;	../../../usb/DAP.c:1000: break;
      002A9B 02 2B 3F         [24] 4928 	ljmp	00126$
                                   4929 ;	../../../usb/DAP.c:1001: case ID_DAP_SWJ_Sequence:
      002A9E                       4930 00115$:
                                   4931 ;	../../../usb/DAP.c:1002: num = DAP_SWJ_Sequence();
      002A9E 12 17 7A         [24] 4932 	lcall	_DAP_SWJ_Sequence
      002AA1 AC 82            [24] 4933 	mov	r4,dpl
      002AA3 AD 83            [24] 4934 	mov	r5,dph
      002AA5 8C 06            [24] 4935 	mov	ar6,r4
      002AA7 8D 07            [24] 4936 	mov	ar7,r5
                                   4937 ;	../../../usb/DAP.c:1003: break;
      002AA9 02 2B 3F         [24] 4938 	ljmp	00126$
                                   4939 ;	../../../usb/DAP.c:1005: case ID_DAP_SWD_Configure:
      002AAC                       4940 00116$:
                                   4941 ;	../../../usb/DAP.c:1006: num = DAP_SWD_Configure();
      002AAC 12 17 EC         [24] 4942 	lcall	_DAP_SWD_Configure
      002AAF AC 82            [24] 4943 	mov	r4,dpl
      002AB1 AD 83            [24] 4944 	mov	r5,dph
      002AB3 8C 06            [24] 4945 	mov	ar6,r4
      002AB5 8D 07            [24] 4946 	mov	ar7,r5
                                   4947 ;	../../../usb/DAP.c:1007: break;
      002AB7 02 2B 3F         [24] 4948 	ljmp	00126$
                                   4949 ;	../../../usb/DAP.c:1008: case ID_DAP_SWD_Sequence:
      002ABA                       4950 00117$:
                                   4951 ;	../../../usb/DAP.c:1009: num = DAP_SWD_Sequence();
      002ABA 12 18 2B         [24] 4952 	lcall	_DAP_SWD_Sequence
      002ABD AC 82            [24] 4953 	mov	r4,dpl
      002ABF AD 83            [24] 4954 	mov	r5,dph
      002AC1 8C 06            [24] 4955 	mov	ar6,r4
      002AC3 8D 07            [24] 4956 	mov	ar7,r5
                                   4957 ;	../../../usb/DAP.c:1010: break;
      002AC5 02 2B 3F         [24] 4958 	ljmp	00126$
                                   4959 ;	../../../usb/DAP.c:1012: case ID_DAP_JTAG_Sequence:
      002AC8                       4960 00118$:
                                   4961 ;	../../../usb/DAP.c:1013: num = DAP_JTAG_Sequence();
      002AC8 12 18 FB         [24] 4962 	lcall	_DAP_JTAG_Sequence
      002ACB AC 82            [24] 4963 	mov	r4,dpl
      002ACD AD 83            [24] 4964 	mov	r5,dph
      002ACF 8C 06            [24] 4965 	mov	ar6,r4
      002AD1 8D 07            [24] 4966 	mov	ar7,r5
                                   4967 ;	../../../usb/DAP.c:1014: break;
                                   4968 ;	../../../usb/DAP.c:1015: case ID_DAP_JTAG_Configure:
      002AD3 80 6A            [24] 4969 	sjmp	00126$
      002AD5                       4970 00119$:
                                   4971 ;	../../../usb/DAP.c:1016: num = DAP_JTAG_Configure();
      002AD5 12 19 87         [24] 4972 	lcall	_DAP_JTAG_Configure
      002AD8 AC 82            [24] 4973 	mov	r4,dpl
      002ADA AD 83            [24] 4974 	mov	r5,dph
      002ADC 8C 06            [24] 4975 	mov	ar6,r4
      002ADE 8D 07            [24] 4976 	mov	ar7,r5
                                   4977 ;	../../../usb/DAP.c:1017: break;
                                   4978 ;	../../../usb/DAP.c:1018: case ID_DAP_JTAG_IDCODE:
      002AE0 80 5D            [24] 4979 	sjmp	00126$
      002AE2                       4980 00120$:
                                   4981 ;	../../../usb/DAP.c:1019: num = DAP_JTAG_IDCode();
      002AE2 12 19 BB         [24] 4982 	lcall	_DAP_JTAG_IDCode
      002AE5 AC 82            [24] 4983 	mov	r4,dpl
      002AE7 AD 83            [24] 4984 	mov	r5,dph
      002AE9 8C 06            [24] 4985 	mov	ar6,r4
      002AEB 8D 07            [24] 4986 	mov	ar7,r5
                                   4987 ;	../../../usb/DAP.c:1020: break;
                                   4988 ;	../../../usb/DAP.c:1022: case ID_DAP_TransferConfigure:
      002AED 80 50            [24] 4989 	sjmp	00126$
      002AEF                       4990 00121$:
                                   4991 ;	../../../usb/DAP.c:1023: num = DAP_TransferConfigure();
      002AEF 12 19 D0         [24] 4992 	lcall	_DAP_TransferConfigure
      002AF2 AC 82            [24] 4993 	mov	r4,dpl
      002AF4 AD 83            [24] 4994 	mov	r5,dph
      002AF6 8C 06            [24] 4995 	mov	ar6,r4
      002AF8 8D 07            [24] 4996 	mov	ar7,r5
                                   4997 ;	../../../usb/DAP.c:1024: break;
                                   4998 ;	../../../usb/DAP.c:1025: case ID_DAP_Transfer:
      002AFA 80 43            [24] 4999 	sjmp	00126$
      002AFC                       5000 00122$:
                                   5001 ;	../../../usb/DAP.c:1026: num = DAP_Transfer();
      002AFC 12 23 B0         [24] 5002 	lcall	_DAP_Transfer
      002AFF AC 82            [24] 5003 	mov	r4,dpl
      002B01 AD 83            [24] 5004 	mov	r5,dph
      002B03 8C 06            [24] 5005 	mov	ar6,r4
      002B05 8D 07            [24] 5006 	mov	ar7,r5
                                   5007 ;	../../../usb/DAP.c:1027: break;
                                   5008 ;	../../../usb/DAP.c:1028: case ID_DAP_TransferBlock:
      002B07 80 36            [24] 5009 	sjmp	00126$
      002B09                       5010 00123$:
                                   5011 ;	../../../usb/DAP.c:1029: num = DAP_TransferBlock();
      002B09 12 27 A0         [24] 5012 	lcall	_DAP_TransferBlock
      002B0C AC 82            [24] 5013 	mov	r4,dpl
      002B0E AD 83            [24] 5014 	mov	r5,dph
      002B10 8C 06            [24] 5015 	mov	ar6,r4
      002B12 8D 07            [24] 5016 	mov	ar7,r5
                                   5017 ;	../../../usb/DAP.c:1030: break;
                                   5018 ;	../../../usb/DAP.c:1032: case ID_DAP_WriteABORT:
      002B14 80 29            [24] 5019 	sjmp	00126$
      002B16                       5020 00124$:
                                   5021 ;	../../../usb/DAP.c:1033: num = DAP_WriteAbort();
      002B16 12 28 93         [24] 5022 	lcall	_DAP_WriteAbort
      002B19 AC 82            [24] 5023 	mov	r4,dpl
      002B1B AD 83            [24] 5024 	mov	r5,dph
      002B1D 8C 06            [24] 5025 	mov	ar6,r4
      002B1F 8D 07            [24] 5026 	mov	ar7,r5
                                   5027 ;	../../../usb/DAP.c:1034: break;
                                   5028 ;	../../../usb/DAP.c:1036: default:
      002B21 80 1C            [24] 5029 	sjmp	00126$
      002B23                       5030 00125$:
                                   5031 ;	../../../usb/DAP.c:1037: *(response - 1) = ID_DAP_Invalid;
      002B23 E5 2C            [12] 5032 	mov	a,_response
      002B25 24 FF            [12] 5033 	add	a,#0xff
      002B27 FB               [12] 5034 	mov	r3,a
      002B28 E5 2D            [12] 5035 	mov	a,(_response + 1)
      002B2A 34 FF            [12] 5036 	addc	a,#0xff
      002B2C FC               [12] 5037 	mov	r4,a
      002B2D AD 2E            [24] 5038 	mov	r5,(_response + 2)
      002B2F 8B 82            [24] 5039 	mov	dpl,r3
      002B31 8C 83            [24] 5040 	mov	dph,r4
      002B33 8D F0            [24] 5041 	mov	b,r5
      002B35 74 FF            [12] 5042 	mov	a,#0xff
      002B37 12 30 FC         [24] 5043 	lcall	__gptrput
                                   5044 ;	../../../usb/DAP.c:1038: return (((uint16_t)1U << 8) | 1U);
      002B3A 90 01 01         [24] 5045 	mov	dptr,#0x0101
                                   5046 ;	../../../usb/DAP.c:1039: }
      002B3D 80 0C            [24] 5047 	sjmp	00127$
      002B3F                       5048 00126$:
                                   5049 ;	../../../usb/DAP.c:1041: return (((uint16_t)1U << 8) + 1U + num);
      002B3F 74 01            [12] 5050 	mov	a,#0x01
      002B41 2E               [12] 5051 	add	a,r6
      002B42 FE               [12] 5052 	mov	r6,a
      002B43 74 01            [12] 5053 	mov	a,#0x01
      002B45 3F               [12] 5054 	addc	a,r7
      002B46 FF               [12] 5055 	mov	r7,a
      002B47 8E 82            [24] 5056 	mov	dpl,r6
      002B49 8F 83            [24] 5057 	mov	dph,r7
      002B4B                       5058 00127$:
                                   5059 ;	../../../usb/DAP.c:1042: }
      002B4B D0 1F            [24] 5060 	pop	_bp
      002B4D 22               [24] 5061 	ret
                                   5062 ;------------------------------------------------------------
                                   5063 ;Allocation info for local variables in function 'DAP_ExecuteCommand'
                                   5064 ;------------------------------------------------------------
                                   5065 ;resp                      Allocated to stack - _bp -5
                                   5066 ;req                       Allocated to registers r2 r3 r4 
                                   5067 ;num                       Allocated to registers r6 r5 
                                   5068 ;n                         Allocated to registers r3 r4 
                                   5069 ;cnt                       Allocated to registers r7 
                                   5070 ;sloc0                     Allocated to stack - _bp +1
                                   5071 ;sloc1                     Allocated to stack - _bp +2
                                   5072 ;------------------------------------------------------------
                                   5073 ;	../../../usb/DAP.c:1049: uint16_t DAP_ExecuteCommand(const uint8_t* req, uint8_t* resp)
                                   5074 ;	-----------------------------------------
                                   5075 ;	 function DAP_ExecuteCommand
                                   5076 ;	-----------------------------------------
      002B4E                       5077 _DAP_ExecuteCommand:
      002B4E C0 1F            [24] 5078 	push	_bp
      002B50 E5 81            [12] 5079 	mov	a,sp
      002B52 F5 1F            [12] 5080 	mov	_bp,a
      002B54 24 04            [12] 5081 	add	a,#0x04
      002B56 F5 81            [12] 5082 	mov	sp,a
                                   5083 ;	../../../usb/DAP.c:1054: if (*req == ID_DAP_ExecuteCommands) {
      002B58 AD 82            [24] 5084 	mov	r5,dpl
      002B5A AE 83            [24] 5085 	mov	r6,dph
      002B5C AF F0            [24] 5086 	mov	r7,b
      002B5E A8 1F            [24] 5087 	mov	r0,_bp
      002B60 08               [12] 5088 	inc	r0
      002B61 12 33 25         [24] 5089 	lcall	__gptrget
      002B64 F6               [12] 5090 	mov	@r0,a
      002B65 A8 1F            [24] 5091 	mov	r0,_bp
      002B67 08               [12] 5092 	inc	r0
      002B68 B6 7F 02         [24] 5093 	cjne	@r0,#0x7f,00124$
      002B6B 80 03            [24] 5094 	sjmp	00125$
      002B6D                       5095 00124$:
      002B6D 02 2C 61         [24] 5096 	ljmp	00105$
      002B70                       5097 00125$:
                                   5098 ;	../../../usb/DAP.c:1055: *resp++ = *req++;
      002B70 E5 1F            [12] 5099 	mov	a,_bp
      002B72 24 FB            [12] 5100 	add	a,#0xfb
      002B74 F8               [12] 5101 	mov	r0,a
      002B75 A9 1F            [24] 5102 	mov	r1,_bp
      002B77 09               [12] 5103 	inc	r1
      002B78 09               [12] 5104 	inc	r1
      002B79 E6               [12] 5105 	mov	a,@r0
      002B7A F7               [12] 5106 	mov	@r1,a
      002B7B 08               [12] 5107 	inc	r0
      002B7C 09               [12] 5108 	inc	r1
      002B7D E6               [12] 5109 	mov	a,@r0
      002B7E F7               [12] 5110 	mov	@r1,a
      002B7F 08               [12] 5111 	inc	r0
      002B80 09               [12] 5112 	inc	r1
      002B81 E6               [12] 5113 	mov	a,@r0
      002B82 F7               [12] 5114 	mov	@r1,a
      002B83 74 01            [12] 5115 	mov	a,#0x01
      002B85 2D               [12] 5116 	add	a,r5
      002B86 FA               [12] 5117 	mov	r2,a
      002B87 E4               [12] 5118 	clr	a
      002B88 3E               [12] 5119 	addc	a,r6
      002B89 FB               [12] 5120 	mov	r3,a
      002B8A 8F 04            [24] 5121 	mov	ar4,r7
      002B8C A8 1F            [24] 5122 	mov	r0,_bp
      002B8E 08               [12] 5123 	inc	r0
      002B8F 08               [12] 5124 	inc	r0
      002B90 86 82            [24] 5125 	mov	dpl,@r0
      002B92 08               [12] 5126 	inc	r0
      002B93 86 83            [24] 5127 	mov	dph,@r0
      002B95 08               [12] 5128 	inc	r0
      002B96 86 F0            [24] 5129 	mov	b,@r0
      002B98 A9 1F            [24] 5130 	mov	r1,_bp
      002B9A 09               [12] 5131 	inc	r1
      002B9B E7               [12] 5132 	mov	a,@r1
      002B9C 12 30 FC         [24] 5133 	lcall	__gptrput
      002B9F A8 1F            [24] 5134 	mov	r0,_bp
      002BA1 08               [12] 5135 	inc	r0
      002BA2 08               [12] 5136 	inc	r0
      002BA3 E5 1F            [12] 5137 	mov	a,_bp
      002BA5 24 FB            [12] 5138 	add	a,#0xfb
      002BA7 F9               [12] 5139 	mov	r1,a
      002BA8 74 01            [12] 5140 	mov	a,#0x01
      002BAA 26               [12] 5141 	add	a,@r0
      002BAB F7               [12] 5142 	mov	@r1,a
      002BAC E4               [12] 5143 	clr	a
      002BAD 08               [12] 5144 	inc	r0
      002BAE 36               [12] 5145 	addc	a,@r0
      002BAF 09               [12] 5146 	inc	r1
      002BB0 F7               [12] 5147 	mov	@r1,a
      002BB1 08               [12] 5148 	inc	r0
      002BB2 09               [12] 5149 	inc	r1
      002BB3 E6               [12] 5150 	mov	a,@r0
      002BB4 F7               [12] 5151 	mov	@r1,a
                                   5152 ;	../../../usb/DAP.c:1056: cnt = *req++;
      002BB5 8A 82            [24] 5153 	mov	dpl,r2
      002BB7 8B 83            [24] 5154 	mov	dph,r3
      002BB9 8C F0            [24] 5155 	mov	b,r4
      002BBB 12 33 25         [24] 5156 	lcall	__gptrget
      002BBE FF               [12] 5157 	mov	r7,a
      002BBF A8 1F            [24] 5158 	mov	r0,_bp
      002BC1 08               [12] 5159 	inc	r0
      002BC2 08               [12] 5160 	inc	r0
      002BC3 74 01            [12] 5161 	mov	a,#0x01
      002BC5 2A               [12] 5162 	add	a,r2
      002BC6 F6               [12] 5163 	mov	@r0,a
      002BC7 E4               [12] 5164 	clr	a
      002BC8 3B               [12] 5165 	addc	a,r3
      002BC9 08               [12] 5166 	inc	r0
      002BCA F6               [12] 5167 	mov	@r0,a
      002BCB 08               [12] 5168 	inc	r0
      002BCC A6 04            [24] 5169 	mov	@r0,ar4
                                   5170 ;	../../../usb/DAP.c:1057: *resp++ = (uint8_t)cnt;
      002BCE E5 1F            [12] 5171 	mov	a,_bp
      002BD0 24 FB            [12] 5172 	add	a,#0xfb
      002BD2 F8               [12] 5173 	mov	r0,a
      002BD3 86 02            [24] 5174 	mov	ar2,@r0
      002BD5 08               [12] 5175 	inc	r0
      002BD6 86 03            [24] 5176 	mov	ar3,@r0
      002BD8 08               [12] 5177 	inc	r0
      002BD9 86 04            [24] 5178 	mov	ar4,@r0
      002BDB 8A 82            [24] 5179 	mov	dpl,r2
      002BDD 8B 83            [24] 5180 	mov	dph,r3
      002BDF 8C F0            [24] 5181 	mov	b,r4
      002BE1 EF               [12] 5182 	mov	a,r7
      002BE2 12 30 FC         [24] 5183 	lcall	__gptrput
      002BE5 E5 1F            [12] 5184 	mov	a,_bp
      002BE7 24 FB            [12] 5185 	add	a,#0xfb
      002BE9 F8               [12] 5186 	mov	r0,a
      002BEA 74 01            [12] 5187 	mov	a,#0x01
      002BEC 2A               [12] 5188 	add	a,r2
      002BED F6               [12] 5189 	mov	@r0,a
      002BEE E4               [12] 5190 	clr	a
      002BEF 3B               [12] 5191 	addc	a,r3
      002BF0 08               [12] 5192 	inc	r0
      002BF1 F6               [12] 5193 	mov	@r0,a
      002BF2 08               [12] 5194 	inc	r0
      002BF3 A6 04            [24] 5195 	mov	@r0,ar4
                                   5196 ;	../../../usb/DAP.c:1058: num = ((uint16_t)2U << 8) | 2U;
      002BF5 7E 02            [12] 5197 	mov	r6,#0x02
      002BF7 7D 02            [12] 5198 	mov	r5,#0x02
                                   5199 ;	../../../usb/DAP.c:1059: while (cnt--) {
      002BF9 8F 02            [24] 5200 	mov	ar2,r7
      002BFB                       5201 00101$:
      002BFB 8A 04            [24] 5202 	mov	ar4,r2
      002BFD 1A               [12] 5203 	dec	r2
      002BFE EC               [12] 5204 	mov	a,r4
      002BFF 60 5A            [24] 5205 	jz	00103$
                                   5206 ;	../../../usb/DAP.c:1060: n = DAP_ProcessCommand(req, resp);
      002C01 C0 02            [24] 5207 	push	ar2
      002C03 C0 06            [24] 5208 	push	ar6
      002C05 C0 05            [24] 5209 	push	ar5
      002C07 C0 02            [24] 5210 	push	ar2
      002C09 E5 1F            [12] 5211 	mov	a,_bp
      002C0B 24 FB            [12] 5212 	add	a,#0xfb
      002C0D F8               [12] 5213 	mov	r0,a
      002C0E E6               [12] 5214 	mov	a,@r0
      002C0F C0 E0            [24] 5215 	push	acc
      002C11 08               [12] 5216 	inc	r0
      002C12 E6               [12] 5217 	mov	a,@r0
      002C13 C0 E0            [24] 5218 	push	acc
      002C15 08               [12] 5219 	inc	r0
      002C16 E6               [12] 5220 	mov	a,@r0
      002C17 C0 E0            [24] 5221 	push	acc
      002C19 A8 1F            [24] 5222 	mov	r0,_bp
      002C1B 08               [12] 5223 	inc	r0
      002C1C 08               [12] 5224 	inc	r0
      002C1D 86 82            [24] 5225 	mov	dpl,@r0
      002C1F 08               [12] 5226 	inc	r0
      002C20 86 83            [24] 5227 	mov	dph,@r0
      002C22 08               [12] 5228 	inc	r0
      002C23 86 F0            [24] 5229 	mov	b,@r0
      002C25 12 28 E9         [24] 5230 	lcall	_DAP_ProcessCommand
      002C28 AB 82            [24] 5231 	mov	r3,dpl
      002C2A AC 83            [24] 5232 	mov	r4,dph
      002C2C 15 81            [12] 5233 	dec	sp
      002C2E 15 81            [12] 5234 	dec	sp
      002C30 15 81            [12] 5235 	dec	sp
      002C32 D0 02            [24] 5236 	pop	ar2
      002C34 D0 05            [24] 5237 	pop	ar5
      002C36 D0 06            [24] 5238 	pop	ar6
                                   5239 ;	../../../usb/DAP.c:1061: num += n;
      002C38 EB               [12] 5240 	mov	a,r3
      002C39 2E               [12] 5241 	add	a,r6
      002C3A FE               [12] 5242 	mov	r6,a
      002C3B EC               [12] 5243 	mov	a,r4
      002C3C 3D               [12] 5244 	addc	a,r5
      002C3D FD               [12] 5245 	mov	r5,a
                                   5246 ;	../../../usb/DAP.c:1062: req += (uint8_t)(n >> 8);
      002C3E 8C 02            [24] 5247 	mov	ar2,r4
      002C40 A8 1F            [24] 5248 	mov	r0,_bp
      002C42 08               [12] 5249 	inc	r0
      002C43 08               [12] 5250 	inc	r0
      002C44 EA               [12] 5251 	mov	a,r2
      002C45 26               [12] 5252 	add	a,@r0
      002C46 F6               [12] 5253 	mov	@r0,a
      002C47 E4               [12] 5254 	clr	a
      002C48 08               [12] 5255 	inc	r0
      002C49 36               [12] 5256 	addc	a,@r0
      002C4A F6               [12] 5257 	mov	@r0,a
                                   5258 ;	../../../usb/DAP.c:1063: resp += (uint8_t)n;
      002C4B E5 1F            [12] 5259 	mov	a,_bp
      002C4D 24 FB            [12] 5260 	add	a,#0xfb
      002C4F F8               [12] 5261 	mov	r0,a
      002C50 EB               [12] 5262 	mov	a,r3
      002C51 26               [12] 5263 	add	a,@r0
      002C52 F6               [12] 5264 	mov	@r0,a
      002C53 E4               [12] 5265 	clr	a
      002C54 08               [12] 5266 	inc	r0
      002C55 36               [12] 5267 	addc	a,@r0
      002C56 F6               [12] 5268 	mov	@r0,a
      002C57 D0 02            [24] 5269 	pop	ar2
      002C59 80 A0            [24] 5270 	sjmp	00101$
      002C5B                       5271 00103$:
                                   5272 ;	../../../usb/DAP.c:1065: return (num);
      002C5B 8E 82            [24] 5273 	mov	dpl,r6
      002C5D 8D 83            [24] 5274 	mov	dph,r5
      002C5F 80 1F            [24] 5275 	sjmp	00106$
      002C61                       5276 00105$:
                                   5277 ;	../../../usb/DAP.c:1068: return DAP_ProcessCommand(req, resp);
      002C61 E5 1F            [12] 5278 	mov	a,_bp
      002C63 24 FB            [12] 5279 	add	a,#0xfb
      002C65 F8               [12] 5280 	mov	r0,a
      002C66 E6               [12] 5281 	mov	a,@r0
      002C67 C0 E0            [24] 5282 	push	acc
      002C69 08               [12] 5283 	inc	r0
      002C6A E6               [12] 5284 	mov	a,@r0
      002C6B C0 E0            [24] 5285 	push	acc
      002C6D 08               [12] 5286 	inc	r0
      002C6E E6               [12] 5287 	mov	a,@r0
      002C6F C0 E0            [24] 5288 	push	acc
      002C71 8D 82            [24] 5289 	mov	dpl,r5
      002C73 8E 83            [24] 5290 	mov	dph,r6
      002C75 8F F0            [24] 5291 	mov	b,r7
      002C77 12 28 E9         [24] 5292 	lcall	_DAP_ProcessCommand
      002C7A 15 81            [12] 5293 	dec	sp
      002C7C 15 81            [12] 5294 	dec	sp
      002C7E 15 81            [12] 5295 	dec	sp
      002C80                       5296 00106$:
                                   5297 ;	../../../usb/DAP.c:1069: }
      002C80 85 1F 81         [24] 5298 	mov	sp,_bp
      002C83 D0 1F            [24] 5299 	pop	_bp
      002C85 22               [24] 5300 	ret
                                   5301 ;------------------------------------------------------------
                                   5302 ;Allocation info for local variables in function 'DAP_Setup'
                                   5303 ;------------------------------------------------------------
                                   5304 ;	../../../usb/DAP.c:1072: void DAP_Setup(void)
                                   5305 ;	-----------------------------------------
                                   5306 ;	 function DAP_Setup
                                   5307 ;	-----------------------------------------
      002C86                       5308 _DAP_Setup:
                                   5309 ;	../../../usb/DAP.c:1075: DAP_Data.debug_port = 0U;
      002C86 90 02 C0         [24] 5310 	mov	dptr,#_DAP_Data
      002C89 E4               [12] 5311 	clr	a
      002C8A F0               [24] 5312 	movx	@dptr,a
                                   5313 ;	../../../usb/DAP.c:1076: DAP_Data.clock_delay = CLOCK_DELAY(DAP_DEFAULT_SWJ_CLOCK);
      002C8B 90 02 C3         [24] 5314 	mov	dptr,#(_DAP_Data + 0x0003)
      002C8E 74 04            [12] 5315 	mov	a,#0x04
      002C90 F0               [24] 5316 	movx	@dptr,a
      002C91 E4               [12] 5317 	clr	a
      002C92 A3               [24] 5318 	inc	dptr
      002C93 F0               [24] 5319 	movx	@dptr,a
      002C94 A3               [24] 5320 	inc	dptr
      002C95 F0               [24] 5321 	movx	@dptr,a
      002C96 A3               [24] 5322 	inc	dptr
      002C97 F0               [24] 5323 	movx	@dptr,a
                                   5324 ;	../../../usb/DAP.c:1077: DAP_Data.transfer.idle_cycles = 0U;
      002C98 90 02 CB         [24] 5325 	mov	dptr,#(_DAP_Data + 0x000b)
      002C9B F0               [24] 5326 	movx	@dptr,a
                                   5327 ;	../../../usb/DAP.c:1078: DAP_Data.transfer.retry_count = 100U;
      002C9C 90 02 CF         [24] 5328 	mov	dptr,#(_DAP_Data + 0x000f)
      002C9F 74 64            [12] 5329 	mov	a,#0x64
      002CA1 F0               [24] 5330 	movx	@dptr,a
      002CA2 E4               [12] 5331 	clr	a
      002CA3 A3               [24] 5332 	inc	dptr
      002CA4 F0               [24] 5333 	movx	@dptr,a
                                   5334 ;	../../../usb/DAP.c:1079: DAP_Data.transfer.match_retry = 0U;
      002CA5 90 02 D1         [24] 5335 	mov	dptr,#(_DAP_Data + 0x0011)
      002CA8 F0               [24] 5336 	movx	@dptr,a
      002CA9 A3               [24] 5337 	inc	dptr
      002CAA F0               [24] 5338 	movx	@dptr,a
                                   5339 ;	../../../usb/DAP.c:1080: DAP_Data.transfer.match_mask[0] = 0;
      002CAB 90 02 D3         [24] 5340 	mov	dptr,#(_DAP_Data + 0x0013)
      002CAE F0               [24] 5341 	movx	@dptr,a
                                   5342 ;	../../../usb/DAP.c:1081: DAP_Data.transfer.match_mask[1] = 0;
      002CAF 90 02 D4         [24] 5343 	mov	dptr,#(_DAP_Data + 0x0014)
      002CB2 F0               [24] 5344 	movx	@dptr,a
                                   5345 ;	../../../usb/DAP.c:1082: DAP_Data.transfer.match_mask[2] = 0;
      002CB3 90 02 D5         [24] 5346 	mov	dptr,#(_DAP_Data + 0x0015)
      002CB6 F0               [24] 5347 	movx	@dptr,a
                                   5348 ;	../../../usb/DAP.c:1083: DAP_Data.transfer.match_mask[3] = 0;
      002CB7 90 02 D6         [24] 5349 	mov	dptr,#(_DAP_Data + 0x0016)
      002CBA F0               [24] 5350 	movx	@dptr,a
                                   5351 ;	../../../usb/DAP.c:1084: DAP_Data.swd_conf.turnaround = 1U;
      002CBB 90 02 D7         [24] 5352 	mov	dptr,#(_DAP_Data + 0x0017)
      002CBE 04               [12] 5353 	inc	a
      002CBF F0               [24] 5354 	movx	@dptr,a
                                   5355 ;	../../../usb/DAP.c:1085: DAP_Data.swd_conf.data_phase = 0U;
      002CC0 90 02 D8         [24] 5356 	mov	dptr,#(_DAP_Data + 0x0018)
      002CC3 E4               [12] 5357 	clr	a
      002CC4 F0               [24] 5358 	movx	@dptr,a
                                   5359 ;	../../../usb/DAP.c:1088: PORT_OFF(); // Avoid influence other device.
      002CC5 53 92 FE         [24] 5360 	anl	_P1_MOD_OC,#0xfe
      002CC8 53 93 FE         [24] 5361 	anl	_P1_DIR_PU,#0xfe
      002CCB 53 92 FD         [24] 5362 	anl	_P1_MOD_OC,#0xfd
      002CCE 53 93 FD         [24] 5363 	anl	_P1_DIR_PU,#0xfd
                                   5364 ;	../../../usb/DAP.c:1089: }
      002CD1 22               [24] 5365 	ret
                                   5366 	.area CSEG    (CODE)
                                   5367 	.area CONST   (CODE)
      003667                       5368 _row_pin_array:
      003667 19                    5369 	.db #0x19	; 25
      003668 1A                    5370 	.db #0x1a	; 26
      003669 1B                    5371 	.db #0x1b	; 27
      00366A 1C                    5372 	.db #0x1c	; 28
      00366B 12                    5373 	.db #0x12	; 18
      00366C 13                    5374 	.db #0x13	; 19
      00366D                       5375 _column_pin_array:
      00366D 17                    5376 	.db #0x17	; 23
      00366E 16                    5377 	.db #0x16	; 22
      00366F 15                    5378 	.db #0x15	; 21
      003670 14                    5379 	.db #0x14	; 20
      003671 1D                    5380 	.db #0x1d	; 29
      003672 07                    5381 	.db #0x07	; 7
      003673 06                    5382 	.db #0x06	; 6
      003674 08                    5383 	.db #0x08	; 8
      003675 09                    5384 	.db #0x09	; 9
      003676 0A                    5385 	.db #0x0a	; 10
      003677 0B                    5386 	.db #0x0b	; 11
      003678 05                    5387 	.db #0x05	; 5
      003679 0C                    5388 	.db #0x0c	; 12
      00367A 0D                    5389 	.db #0x0d	; 13
      00367B 0E                    5390 	.db #0x0e	; 14
      00367C 0F                    5391 	.db #0x0f	; 15
      00367D 04                    5392 	.db #0x04	; 4
      00367E 10                    5393 	.db #0x10	; 16
      00367F 11                    5394 	.db #0x11	; 17
                                   5395 	.area CONST   (CODE)
      003680                       5396 ___str_0:
      003680 30 32 35 34           5397 	.ascii "0254"
      003684 00                    5398 	.db 0x00
                                   5399 	.area CSEG    (CODE)
                                   5400 	.area XINIT   (CODE)
                                   5401 	.area CABS    (ABS,CODE)

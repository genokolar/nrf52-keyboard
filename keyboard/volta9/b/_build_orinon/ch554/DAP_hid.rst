                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module DAP_hid
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Dap_Routine
                                     12 	.globl _Dap_Init
                                     13 	.globl _DAP_Setup
                                     14 	.globl _DAP_ExecuteCommand
                                     15 	.globl _UIF_BUS_RST
                                     16 	.globl _UIF_DETECT
                                     17 	.globl _UIF_TRANSFER
                                     18 	.globl _UIF_SUSPEND
                                     19 	.globl _UIF_HST_SOF
                                     20 	.globl _UIF_FIFO_OV
                                     21 	.globl _U_SIE_FREE
                                     22 	.globl _U_TOG_OK
                                     23 	.globl _U_IS_NAK
                                     24 	.globl _ADC_CHAN0
                                     25 	.globl _ADC_CHAN1
                                     26 	.globl _CMP_CHAN
                                     27 	.globl _ADC_START
                                     28 	.globl _ADC_IF
                                     29 	.globl _CMP_IF
                                     30 	.globl _CMPO
                                     31 	.globl _U1RI
                                     32 	.globl _U1TI
                                     33 	.globl _U1RB8
                                     34 	.globl _U1TB8
                                     35 	.globl _U1REN
                                     36 	.globl _U1SMOD
                                     37 	.globl _U1SM0
                                     38 	.globl _S0_R_FIFO
                                     39 	.globl _S0_T_FIFO
                                     40 	.globl _S0_FREE
                                     41 	.globl _S0_IF_BYTE
                                     42 	.globl _S0_IF_FIRST
                                     43 	.globl _S0_IF_OV
                                     44 	.globl _S0_FST_ACT
                                     45 	.globl _CP_RL2
                                     46 	.globl _C_T2
                                     47 	.globl _TR2
                                     48 	.globl _EXEN2
                                     49 	.globl _TCLK
                                     50 	.globl _RCLK
                                     51 	.globl _EXF2
                                     52 	.globl _CAP1F
                                     53 	.globl _TF2
                                     54 	.globl _RI
                                     55 	.globl _TI
                                     56 	.globl _RB8
                                     57 	.globl _TB8
                                     58 	.globl _REN
                                     59 	.globl _SM2
                                     60 	.globl _SM1
                                     61 	.globl _SM0
                                     62 	.globl _IT0
                                     63 	.globl _IE0
                                     64 	.globl _IT1
                                     65 	.globl _IE1
                                     66 	.globl _TR0
                                     67 	.globl _TF0
                                     68 	.globl _TR1
                                     69 	.globl _TF1
                                     70 	.globl _RXD
                                     71 	.globl _PWM1_
                                     72 	.globl _P3_0
                                     73 	.globl _TXD
                                     74 	.globl _PWM2_
                                     75 	.globl _P3_1
                                     76 	.globl _AIN3
                                     77 	.globl _VBUS1
                                     78 	.globl _INT0
                                     79 	.globl _TXD1_
                                     80 	.globl _P3_2
                                     81 	.globl _INT1
                                     82 	.globl _P3_3
                                     83 	.globl _T0
                                     84 	.globl _RXD1_
                                     85 	.globl _PWM2
                                     86 	.globl _P3_4
                                     87 	.globl _T1
                                     88 	.globl _P3_5
                                     89 	.globl _UDP
                                     90 	.globl _P3_6
                                     91 	.globl _UDM
                                     92 	.globl _P3_7
                                     93 	.globl _TIN0
                                     94 	.globl _CAP1
                                     95 	.globl _T2
                                     96 	.globl _P1_0
                                     97 	.globl _AIN0
                                     98 	.globl _VBUS2
                                     99 	.globl _TIN1
                                    100 	.globl _CAP2
                                    101 	.globl _T2EX
                                    102 	.globl _P1_1
                                    103 	.globl _RXD_
                                    104 	.globl _P1_2
                                    105 	.globl _TXD_
                                    106 	.globl _P1_3
                                    107 	.globl _AIN1
                                    108 	.globl _UCC1
                                    109 	.globl _TIN2
                                    110 	.globl _SCS
                                    111 	.globl _CAP1_
                                    112 	.globl _T2_
                                    113 	.globl _P1_4
                                    114 	.globl _AIN2
                                    115 	.globl _UCC2
                                    116 	.globl _TIN3
                                    117 	.globl _PWM1
                                    118 	.globl _MOSI
                                    119 	.globl _P1_5
                                    120 	.globl _TIN4
                                    121 	.globl _RXD1
                                    122 	.globl _MISO
                                    123 	.globl _P1_6
                                    124 	.globl _TIN5
                                    125 	.globl _TXD1
                                    126 	.globl _SCK
                                    127 	.globl _P1_7
                                    128 	.globl _IE_SPI0
                                    129 	.globl _IE_TKEY
                                    130 	.globl _IE_USB
                                    131 	.globl _IE_ADC
                                    132 	.globl _IE_UART1
                                    133 	.globl _IE_PWMX
                                    134 	.globl _IE_GPIO
                                    135 	.globl _IE_WDOG
                                    136 	.globl _PX0
                                    137 	.globl _PT0
                                    138 	.globl _PX1
                                    139 	.globl _PT1
                                    140 	.globl _PS
                                    141 	.globl _PT2
                                    142 	.globl _PL_FLAG
                                    143 	.globl _PH_FLAG
                                    144 	.globl _EX0
                                    145 	.globl _ET0
                                    146 	.globl _EX1
                                    147 	.globl _ET1
                                    148 	.globl _ES
                                    149 	.globl _ET2
                                    150 	.globl _E_DIS
                                    151 	.globl _EA
                                    152 	.globl _P
                                    153 	.globl _F1
                                    154 	.globl _OV
                                    155 	.globl _RS0
                                    156 	.globl _RS1
                                    157 	.globl _F0
                                    158 	.globl _AC
                                    159 	.globl _CY
                                    160 	.globl _UEP1_DMA_H
                                    161 	.globl _UEP1_DMA_L
                                    162 	.globl _UEP1_DMA
                                    163 	.globl _UEP0_DMA_H
                                    164 	.globl _UEP0_DMA_L
                                    165 	.globl _UEP0_DMA
                                    166 	.globl _UEP2_3_MOD
                                    167 	.globl _UEP4_1_MOD
                                    168 	.globl _UEP3_DMA_H
                                    169 	.globl _UEP3_DMA_L
                                    170 	.globl _UEP3_DMA
                                    171 	.globl _UEP2_DMA_H
                                    172 	.globl _UEP2_DMA_L
                                    173 	.globl _UEP2_DMA
                                    174 	.globl _USB_DEV_AD
                                    175 	.globl _USB_CTRL
                                    176 	.globl _USB_INT_EN
                                    177 	.globl _UEP4_T_LEN
                                    178 	.globl _UEP4_CTRL
                                    179 	.globl _UEP0_T_LEN
                                    180 	.globl _UEP0_CTRL
                                    181 	.globl _USB_RX_LEN
                                    182 	.globl _USB_MIS_ST
                                    183 	.globl _USB_INT_ST
                                    184 	.globl _USB_INT_FG
                                    185 	.globl _UEP3_T_LEN
                                    186 	.globl _UEP3_CTRL
                                    187 	.globl _UEP2_T_LEN
                                    188 	.globl _UEP2_CTRL
                                    189 	.globl _UEP1_T_LEN
                                    190 	.globl _UEP1_CTRL
                                    191 	.globl _UDEV_CTRL
                                    192 	.globl _USB_C_CTRL
                                    193 	.globl _TKEY_DATH
                                    194 	.globl _TKEY_DATL
                                    195 	.globl _TKEY_DAT
                                    196 	.globl _TKEY_CTRL
                                    197 	.globl _ADC_DATA
                                    198 	.globl _ADC_CFG
                                    199 	.globl _ADC_CTRL
                                    200 	.globl _SBAUD1
                                    201 	.globl _SBUF1
                                    202 	.globl _SCON1
                                    203 	.globl _SPI0_SETUP
                                    204 	.globl _SPI0_CK_SE
                                    205 	.globl _SPI0_CTRL
                                    206 	.globl _SPI0_DATA
                                    207 	.globl _SPI0_STAT
                                    208 	.globl _PWM_CK_SE
                                    209 	.globl _PWM_CTRL
                                    210 	.globl _PWM_DATA1
                                    211 	.globl _PWM_DATA2
                                    212 	.globl _T2CAP1H
                                    213 	.globl _T2CAP1L
                                    214 	.globl _T2CAP1
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _T2COUNT
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _RCAP2
                                    221 	.globl _T2MOD
                                    222 	.globl _T2CON
                                    223 	.globl _SBUF
                                    224 	.globl _SCON
                                    225 	.globl _TH1
                                    226 	.globl _TH0
                                    227 	.globl _TL1
                                    228 	.globl _TL0
                                    229 	.globl _TMOD
                                    230 	.globl _TCON
                                    231 	.globl _XBUS_AUX
                                    232 	.globl _PIN_FUNC
                                    233 	.globl _P3_DIR_PU
                                    234 	.globl _P3_MOD_OC
                                    235 	.globl _P3
                                    236 	.globl _P2
                                    237 	.globl _P1_DIR_PU
                                    238 	.globl _P1_MOD_OC
                                    239 	.globl _P1
                                    240 	.globl _ROM_CTRL
                                    241 	.globl _ROM_DATA_H
                                    242 	.globl _ROM_DATA_L
                                    243 	.globl _ROM_DATA
                                    244 	.globl _ROM_ADDR_H
                                    245 	.globl _ROM_ADDR_L
                                    246 	.globl _ROM_ADDR
                                    247 	.globl _GPIO_IE
                                    248 	.globl _IP_EX
                                    249 	.globl _IE_EX
                                    250 	.globl _IP
                                    251 	.globl _IE
                                    252 	.globl _WDOG_COUNT
                                    253 	.globl _RESET_KEEP
                                    254 	.globl _WAKE_CTRL
                                    255 	.globl _CLOCK_CFG
                                    256 	.globl _PCON
                                    257 	.globl _GLOBAL_CFG
                                    258 	.globl _SAFE_MOD
                                    259 	.globl _DPH
                                    260 	.globl _DPL
                                    261 	.globl _SP
                                    262 	.globl _B
                                    263 	.globl _ACC
                                    264 	.globl _PSW
                                    265 	.globl _EP4_OUT
                                    266 ;--------------------------------------------------------
                                    267 ; special function registers
                                    268 ;--------------------------------------------------------
                                    269 	.area RSEG    (ABS,DATA)
      000000                        270 	.org 0x0000
                           0000D0   271 _PSW	=	0x00d0
                           0000E0   272 _ACC	=	0x00e0
                           0000F0   273 _B	=	0x00f0
                           000081   274 _SP	=	0x0081
                           000082   275 _DPL	=	0x0082
                           000083   276 _DPH	=	0x0083
                           0000A1   277 _SAFE_MOD	=	0x00a1
                           0000B1   278 _GLOBAL_CFG	=	0x00b1
                           000087   279 _PCON	=	0x0087
                           0000B9   280 _CLOCK_CFG	=	0x00b9
                           0000A9   281 _WAKE_CTRL	=	0x00a9
                           0000FE   282 _RESET_KEEP	=	0x00fe
                           0000FF   283 _WDOG_COUNT	=	0x00ff
                           0000A8   284 _IE	=	0x00a8
                           0000B8   285 _IP	=	0x00b8
                           0000E8   286 _IE_EX	=	0x00e8
                           0000E9   287 _IP_EX	=	0x00e9
                           0000C7   288 _GPIO_IE	=	0x00c7
                           008584   289 _ROM_ADDR	=	0x8584
                           000084   290 _ROM_ADDR_L	=	0x0084
                           000085   291 _ROM_ADDR_H	=	0x0085
                           008F8E   292 _ROM_DATA	=	0x8f8e
                           00008E   293 _ROM_DATA_L	=	0x008e
                           00008F   294 _ROM_DATA_H	=	0x008f
                           000086   295 _ROM_CTRL	=	0x0086
                           000090   296 _P1	=	0x0090
                           000092   297 _P1_MOD_OC	=	0x0092
                           000093   298 _P1_DIR_PU	=	0x0093
                           0000A0   299 _P2	=	0x00a0
                           0000B0   300 _P3	=	0x00b0
                           000096   301 _P3_MOD_OC	=	0x0096
                           000097   302 _P3_DIR_PU	=	0x0097
                           0000C6   303 _PIN_FUNC	=	0x00c6
                           0000A2   304 _XBUS_AUX	=	0x00a2
                           000088   305 _TCON	=	0x0088
                           000089   306 _TMOD	=	0x0089
                           00008A   307 _TL0	=	0x008a
                           00008B   308 _TL1	=	0x008b
                           00008C   309 _TH0	=	0x008c
                           00008D   310 _TH1	=	0x008d
                           000098   311 _SCON	=	0x0098
                           000099   312 _SBUF	=	0x0099
                           0000C8   313 _T2CON	=	0x00c8
                           0000C9   314 _T2MOD	=	0x00c9
                           00CBCA   315 _RCAP2	=	0xcbca
                           0000CA   316 _RCAP2L	=	0x00ca
                           0000CB   317 _RCAP2H	=	0x00cb
                           00CDCC   318 _T2COUNT	=	0xcdcc
                           0000CC   319 _TL2	=	0x00cc
                           0000CD   320 _TH2	=	0x00cd
                           00CFCE   321 _T2CAP1	=	0xcfce
                           0000CE   322 _T2CAP1L	=	0x00ce
                           0000CF   323 _T2CAP1H	=	0x00cf
                           00009B   324 _PWM_DATA2	=	0x009b
                           00009C   325 _PWM_DATA1	=	0x009c
                           00009D   326 _PWM_CTRL	=	0x009d
                           00009E   327 _PWM_CK_SE	=	0x009e
                           0000F8   328 _SPI0_STAT	=	0x00f8
                           0000F9   329 _SPI0_DATA	=	0x00f9
                           0000FA   330 _SPI0_CTRL	=	0x00fa
                           0000FB   331 _SPI0_CK_SE	=	0x00fb
                           0000FC   332 _SPI0_SETUP	=	0x00fc
                           0000C0   333 _SCON1	=	0x00c0
                           0000C1   334 _SBUF1	=	0x00c1
                           0000C2   335 _SBAUD1	=	0x00c2
                           000080   336 _ADC_CTRL	=	0x0080
                           00009A   337 _ADC_CFG	=	0x009a
                           00009F   338 _ADC_DATA	=	0x009f
                           0000C3   339 _TKEY_CTRL	=	0x00c3
                           00C5C4   340 _TKEY_DAT	=	0xc5c4
                           0000C4   341 _TKEY_DATL	=	0x00c4
                           0000C5   342 _TKEY_DATH	=	0x00c5
                           000091   343 _USB_C_CTRL	=	0x0091
                           0000D1   344 _UDEV_CTRL	=	0x00d1
                           0000D2   345 _UEP1_CTRL	=	0x00d2
                           0000D3   346 _UEP1_T_LEN	=	0x00d3
                           0000D4   347 _UEP2_CTRL	=	0x00d4
                           0000D5   348 _UEP2_T_LEN	=	0x00d5
                           0000D6   349 _UEP3_CTRL	=	0x00d6
                           0000D7   350 _UEP3_T_LEN	=	0x00d7
                           0000D8   351 _USB_INT_FG	=	0x00d8
                           0000D9   352 _USB_INT_ST	=	0x00d9
                           0000DA   353 _USB_MIS_ST	=	0x00da
                           0000DB   354 _USB_RX_LEN	=	0x00db
                           0000DC   355 _UEP0_CTRL	=	0x00dc
                           0000DD   356 _UEP0_T_LEN	=	0x00dd
                           0000DE   357 _UEP4_CTRL	=	0x00de
                           0000DF   358 _UEP4_T_LEN	=	0x00df
                           0000E1   359 _USB_INT_EN	=	0x00e1
                           0000E2   360 _USB_CTRL	=	0x00e2
                           0000E3   361 _USB_DEV_AD	=	0x00e3
                           00E5E4   362 _UEP2_DMA	=	0xe5e4
                           0000E4   363 _UEP2_DMA_L	=	0x00e4
                           0000E5   364 _UEP2_DMA_H	=	0x00e5
                           00E7E6   365 _UEP3_DMA	=	0xe7e6
                           0000E6   366 _UEP3_DMA_L	=	0x00e6
                           0000E7   367 _UEP3_DMA_H	=	0x00e7
                           0000EA   368 _UEP4_1_MOD	=	0x00ea
                           0000EB   369 _UEP2_3_MOD	=	0x00eb
                           00EDEC   370 _UEP0_DMA	=	0xedec
                           0000EC   371 _UEP0_DMA_L	=	0x00ec
                           0000ED   372 _UEP0_DMA_H	=	0x00ed
                           00EFEE   373 _UEP1_DMA	=	0xefee
                           0000EE   374 _UEP1_DMA_L	=	0x00ee
                           0000EF   375 _UEP1_DMA_H	=	0x00ef
                                    376 ;--------------------------------------------------------
                                    377 ; special function bits
                                    378 ;--------------------------------------------------------
                                    379 	.area RSEG    (ABS,DATA)
      000000                        380 	.org 0x0000
                           0000D7   381 _CY	=	0x00d7
                           0000D6   382 _AC	=	0x00d6
                           0000D5   383 _F0	=	0x00d5
                           0000D4   384 _RS1	=	0x00d4
                           0000D3   385 _RS0	=	0x00d3
                           0000D2   386 _OV	=	0x00d2
                           0000D1   387 _F1	=	0x00d1
                           0000D0   388 _P	=	0x00d0
                           0000AF   389 _EA	=	0x00af
                           0000AE   390 _E_DIS	=	0x00ae
                           0000AD   391 _ET2	=	0x00ad
                           0000AC   392 _ES	=	0x00ac
                           0000AB   393 _ET1	=	0x00ab
                           0000AA   394 _EX1	=	0x00aa
                           0000A9   395 _ET0	=	0x00a9
                           0000A8   396 _EX0	=	0x00a8
                           0000AF   397 _PH_FLAG	=	0x00af
                           0000AE   398 _PL_FLAG	=	0x00ae
                           0000AD   399 _PT2	=	0x00ad
                           0000AC   400 _PS	=	0x00ac
                           0000AB   401 _PT1	=	0x00ab
                           0000AA   402 _PX1	=	0x00aa
                           0000A9   403 _PT0	=	0x00a9
                           0000A8   404 _PX0	=	0x00a8
                           0000EF   405 _IE_WDOG	=	0x00ef
                           0000EE   406 _IE_GPIO	=	0x00ee
                           0000ED   407 _IE_PWMX	=	0x00ed
                           0000EC   408 _IE_UART1	=	0x00ec
                           0000EB   409 _IE_ADC	=	0x00eb
                           0000EA   410 _IE_USB	=	0x00ea
                           0000E9   411 _IE_TKEY	=	0x00e9
                           0000E8   412 _IE_SPI0	=	0x00e8
                           000097   413 _P1_7	=	0x0097
                           000097   414 _SCK	=	0x0097
                           000097   415 _TXD1	=	0x0097
                           000097   416 _TIN5	=	0x0097
                           000096   417 _P1_6	=	0x0096
                           000096   418 _MISO	=	0x0096
                           000096   419 _RXD1	=	0x0096
                           000096   420 _TIN4	=	0x0096
                           000095   421 _P1_5	=	0x0095
                           000095   422 _MOSI	=	0x0095
                           000095   423 _PWM1	=	0x0095
                           000095   424 _TIN3	=	0x0095
                           000095   425 _UCC2	=	0x0095
                           000095   426 _AIN2	=	0x0095
                           000094   427 _P1_4	=	0x0094
                           000094   428 _T2_	=	0x0094
                           000094   429 _CAP1_	=	0x0094
                           000094   430 _SCS	=	0x0094
                           000094   431 _TIN2	=	0x0094
                           000094   432 _UCC1	=	0x0094
                           000094   433 _AIN1	=	0x0094
                           000093   434 _P1_3	=	0x0093
                           000093   435 _TXD_	=	0x0093
                           000092   436 _P1_2	=	0x0092
                           000092   437 _RXD_	=	0x0092
                           000091   438 _P1_1	=	0x0091
                           000091   439 _T2EX	=	0x0091
                           000091   440 _CAP2	=	0x0091
                           000091   441 _TIN1	=	0x0091
                           000091   442 _VBUS2	=	0x0091
                           000091   443 _AIN0	=	0x0091
                           000090   444 _P1_0	=	0x0090
                           000090   445 _T2	=	0x0090
                           000090   446 _CAP1	=	0x0090
                           000090   447 _TIN0	=	0x0090
                           0000B7   448 _P3_7	=	0x00b7
                           0000B7   449 _UDM	=	0x00b7
                           0000B6   450 _P3_6	=	0x00b6
                           0000B6   451 _UDP	=	0x00b6
                           0000B5   452 _P3_5	=	0x00b5
                           0000B5   453 _T1	=	0x00b5
                           0000B4   454 _P3_4	=	0x00b4
                           0000B4   455 _PWM2	=	0x00b4
                           0000B4   456 _RXD1_	=	0x00b4
                           0000B4   457 _T0	=	0x00b4
                           0000B3   458 _P3_3	=	0x00b3
                           0000B3   459 _INT1	=	0x00b3
                           0000B2   460 _P3_2	=	0x00b2
                           0000B2   461 _TXD1_	=	0x00b2
                           0000B2   462 _INT0	=	0x00b2
                           0000B2   463 _VBUS1	=	0x00b2
                           0000B2   464 _AIN3	=	0x00b2
                           0000B1   465 _P3_1	=	0x00b1
                           0000B1   466 _PWM2_	=	0x00b1
                           0000B1   467 _TXD	=	0x00b1
                           0000B0   468 _P3_0	=	0x00b0
                           0000B0   469 _PWM1_	=	0x00b0
                           0000B0   470 _RXD	=	0x00b0
                           00008F   471 _TF1	=	0x008f
                           00008E   472 _TR1	=	0x008e
                           00008D   473 _TF0	=	0x008d
                           00008C   474 _TR0	=	0x008c
                           00008B   475 _IE1	=	0x008b
                           00008A   476 _IT1	=	0x008a
                           000089   477 _IE0	=	0x0089
                           000088   478 _IT0	=	0x0088
                           00009F   479 _SM0	=	0x009f
                           00009E   480 _SM1	=	0x009e
                           00009D   481 _SM2	=	0x009d
                           00009C   482 _REN	=	0x009c
                           00009B   483 _TB8	=	0x009b
                           00009A   484 _RB8	=	0x009a
                           000099   485 _TI	=	0x0099
                           000098   486 _RI	=	0x0098
                           0000CF   487 _TF2	=	0x00cf
                           0000CF   488 _CAP1F	=	0x00cf
                           0000CE   489 _EXF2	=	0x00ce
                           0000CD   490 _RCLK	=	0x00cd
                           0000CC   491 _TCLK	=	0x00cc
                           0000CB   492 _EXEN2	=	0x00cb
                           0000CA   493 _TR2	=	0x00ca
                           0000C9   494 _C_T2	=	0x00c9
                           0000C8   495 _CP_RL2	=	0x00c8
                           0000FF   496 _S0_FST_ACT	=	0x00ff
                           0000FE   497 _S0_IF_OV	=	0x00fe
                           0000FD   498 _S0_IF_FIRST	=	0x00fd
                           0000FC   499 _S0_IF_BYTE	=	0x00fc
                           0000FB   500 _S0_FREE	=	0x00fb
                           0000FA   501 _S0_T_FIFO	=	0x00fa
                           0000F8   502 _S0_R_FIFO	=	0x00f8
                           0000C7   503 _U1SM0	=	0x00c7
                           0000C5   504 _U1SMOD	=	0x00c5
                           0000C4   505 _U1REN	=	0x00c4
                           0000C3   506 _U1TB8	=	0x00c3
                           0000C2   507 _U1RB8	=	0x00c2
                           0000C1   508 _U1TI	=	0x00c1
                           0000C0   509 _U1RI	=	0x00c0
                           000087   510 _CMPO	=	0x0087
                           000086   511 _CMP_IF	=	0x0086
                           000085   512 _ADC_IF	=	0x0085
                           000084   513 _ADC_START	=	0x0084
                           000083   514 _CMP_CHAN	=	0x0083
                           000081   515 _ADC_CHAN1	=	0x0081
                           000080   516 _ADC_CHAN0	=	0x0080
                           0000DF   517 _U_IS_NAK	=	0x00df
                           0000DE   518 _U_TOG_OK	=	0x00de
                           0000DD   519 _U_SIE_FREE	=	0x00dd
                           0000DC   520 _UIF_FIFO_OV	=	0x00dc
                           0000DB   521 _UIF_HST_SOF	=	0x00db
                           0000DA   522 _UIF_SUSPEND	=	0x00da
                           0000D9   523 _UIF_TRANSFER	=	0x00d9
                           0000D8   524 _UIF_DETECT	=	0x00d8
                           0000D8   525 _UIF_BUS_RST	=	0x00d8
                                    526 ;--------------------------------------------------------
                                    527 ; overlayable register banks
                                    528 ;--------------------------------------------------------
                                    529 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        530 	.ds 8
                                    531 ;--------------------------------------------------------
                                    532 ; internal ram data
                                    533 ;--------------------------------------------------------
                                    534 	.area DSEG    (DATA)
      00001E                        535 _ep4_len:
      00001E                        536 	.ds 1
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
                                    586 ;	../../../usb/DAP_hid.c:9: volatile static uint8_t ep4_len = 0;
      0000C0 75 1E 00         [24]  587 	mov	_ep4_len,#0x00
                                    588 ;--------------------------------------------------------
                                    589 ; Home
                                    590 ;--------------------------------------------------------
                                    591 	.area HOME    (CODE)
                                    592 	.area HOME    (CODE)
                                    593 ;--------------------------------------------------------
                                    594 ; code
                                    595 ;--------------------------------------------------------
                                    596 	.area CSEG    (CODE)
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'EP4_OUT'
                                    599 ;------------------------------------------------------------
                                    600 ;	../../../usb/DAP_hid.c:11: void EP4_OUT()
                                    601 ;	-----------------------------------------
                                    602 ;	 function EP4_OUT
                                    603 ;	-----------------------------------------
      002CD2                        604 _EP4_OUT:
                           000007   605 	ar7 = 0x07
                           000006   606 	ar6 = 0x06
                           000005   607 	ar5 = 0x05
                           000004   608 	ar4 = 0x04
                           000003   609 	ar3 = 0x03
                           000002   610 	ar2 = 0x02
                           000001   611 	ar1 = 0x01
                           000000   612 	ar0 = 0x00
                                    613 ;	../../../usb/DAP_hid.c:13: if (ep4_len > 0) {
      002CD2 E5 1E            [12]  614 	mov	a,_ep4_len
      002CD4 60 09            [24]  615 	jz	00102$
                                    616 ;	../../../usb/DAP_hid.c:14: UEP4_CTRL = UEP4_CTRL ^ bUEP_R_TOG & ~(MASK_UEP_R_RES) | UEP_R_RES_NAK;
      002CD6 74 80            [12]  617 	mov	a,#0x80
      002CD8 65 DE            [12]  618 	xrl	a,_UEP4_CTRL
      002CDA 44 08            [12]  619 	orl	a,#0x08
      002CDC F5 DE            [12]  620 	mov	_UEP4_CTRL,a
                                    621 ;	../../../usb/DAP_hid.c:15: return;
      002CDE 22               [24]  622 	ret
      002CDF                        623 00102$:
                                    624 ;	../../../usb/DAP_hid.c:18: if (USB_RX_LEN == 0) {
      002CDF E5 DB            [12]  625 	mov	a,_USB_RX_LEN
      002CE1 70 01            [24]  626 	jnz	00104$
                                    627 ;	../../../usb/DAP_hid.c:19: return;
      002CE3 22               [24]  628 	ret
      002CE4                        629 00104$:
                                    630 ;	../../../usb/DAP_hid.c:22: if (EP4_OUT_BUF[0] == ID_DAP_TransferAbort) {
      002CE4 90 00 40         [24]  631 	mov	dptr,#(_Ep0Buffer + 0x0040)
      002CE7 E0               [24]  632 	movx	a,@dptr
      002CE8 FF               [12]  633 	mov	r7,a
      002CE9 BF 07 04         [24]  634 	cjne	r7,#0x07,00106$
                                    635 ;	../../../usb/DAP_hid.c:23: DAP_TransferAbort = 1;
      002CEC 75 28 01         [24]  636 	mov	_DAP_TransferAbort,#0x01
                                    637 ;	../../../usb/DAP_hid.c:24: return;
      002CEF 22               [24]  638 	ret
      002CF0                        639 00106$:
                                    640 ;	../../../usb/DAP_hid.c:27: ep4_len = USB_RX_LEN;
      002CF0 85 DB 1E         [24]  641 	mov	_ep4_len,_USB_RX_LEN
                                    642 ;	../../../usb/DAP_hid.c:28: UEP4_CTRL = UEP4_CTRL ^ bUEP_R_TOG & ~(MASK_UEP_R_RES) | UEP_R_RES_ACK;
      002CF3 63 DE 80         [24]  643 	xrl	_UEP4_CTRL,#0x80
                                    644 ;	../../../usb/DAP_hid.c:29: }
      002CF6 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'Dap_Init'
                                    648 ;------------------------------------------------------------
                                    649 ;	../../../usb/DAP_hid.c:31: void Dap_Init()
                                    650 ;	-----------------------------------------
                                    651 ;	 function Dap_Init
                                    652 ;	-----------------------------------------
      002CF7                        653 _Dap_Init:
                                    654 ;	../../../usb/DAP_hid.c:33: DAP_Setup();
                                    655 ;	../../../usb/DAP_hid.c:34: }
      002CF7 02 2C 86         [24]  656 	ljmp	_DAP_Setup
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'Dap_Routine'
                                    659 ;------------------------------------------------------------
                                    660 ;i                         Allocated to registers r7 
                                    661 ;len                       Allocated to registers 
                                    662 ;------------------------------------------------------------
                                    663 ;	../../../usb/DAP_hid.c:36: void Dap_Routine()
                                    664 ;	-----------------------------------------
                                    665 ;	 function Dap_Routine
                                    666 ;	-----------------------------------------
      002CFA                        667 _Dap_Routine:
                                    668 ;	../../../usb/DAP_hid.c:38: if (ep4_len > 0 && !usb_state.is_busy) {
      002CFA E5 1E            [12]  669 	mov	a,_ep4_len
      002CFC 60 50            [24]  670 	jz	00108$
      002CFE 78 1C            [12]  671 	mov	r0,#_usb_state
      002D00 E6               [12]  672 	mov	a,@r0
      002D01 20 E1 4A         [24]  673 	jb	acc.1,00108$
                                    674 ;	../../../usb/DAP_hid.c:39: for (uint8_t i = 0; i < MAX_PACKET_SIZE; i++)
      002D04 7F 00            [12]  675 	mov	r7,#0x00
      002D06                        676 00106$:
      002D06 BF 40 00         [24]  677 	cjne	r7,#0x40,00129$
      002D09                        678 00129$:
      002D09 50 1A            [24]  679 	jnc	00101$
                                    680 ;	../../../usb/DAP_hid.c:40: Ep0Buffer[i + 128] = 0;
      002D0B 8F 05            [24]  681 	mov	ar5,r7
      002D0D 7E 00            [12]  682 	mov	r6,#0x00
      002D0F 74 80            [12]  683 	mov	a,#0x80
      002D11 2D               [12]  684 	add	a,r5
      002D12 FD               [12]  685 	mov	r5,a
      002D13 E4               [12]  686 	clr	a
      002D14 3E               [12]  687 	addc	a,r6
      002D15 FE               [12]  688 	mov	r6,a
      002D16 ED               [12]  689 	mov	a,r5
      002D17 24 00            [12]  690 	add	a,#_Ep0Buffer
      002D19 F5 82            [12]  691 	mov	dpl,a
      002D1B EE               [12]  692 	mov	a,r6
      002D1C 34 00            [12]  693 	addc	a,#(_Ep0Buffer >> 8)
      002D1E F5 83            [12]  694 	mov	dph,a
      002D20 E4               [12]  695 	clr	a
      002D21 F0               [24]  696 	movx	@dptr,a
                                    697 ;	../../../usb/DAP_hid.c:39: for (uint8_t i = 0; i < MAX_PACKET_SIZE; i++)
      002D22 0F               [12]  698 	inc	r7
      002D23 80 E1            [24]  699 	sjmp	00106$
      002D25                        700 00101$:
                                    701 ;	../../../usb/DAP_hid.c:41: uint8_t len = DAP_ExecuteCommand(EP4_OUT_BUF, EP4_IN_BUF) & 0xFF;
      002D25 74 80            [12]  702 	mov	a,#(_Ep0Buffer + 0x0080)
      002D27 C0 E0            [24]  703 	push	acc
      002D29 74 00            [12]  704 	mov	a,#((_Ep0Buffer + 0x0080) >> 8)
      002D2B C0 E0            [24]  705 	push	acc
      002D2D E4               [12]  706 	clr	a
      002D2E C0 E0            [24]  707 	push	acc
      002D30 90 00 40         [24]  708 	mov	dptr,#(_Ep0Buffer + 0x0040)
      002D33 75 F0 00         [24]  709 	mov	b,#0x00
      002D36 12 2B 4E         [24]  710 	lcall	_DAP_ExecuteCommand
      002D39 15 81            [12]  711 	dec	sp
      002D3B 15 81            [12]  712 	dec	sp
      002D3D 15 81            [12]  713 	dec	sp
                                    714 ;	../../../usb/DAP_hid.c:42: usb_state.is_busy = true;
      002D3F 78 1C            [12]  715 	mov	r0,#_usb_state
      002D41 E6               [12]  716 	mov	a,@r0
      002D42 44 02            [12]  717 	orl	a,#0x02
      002D44 F6               [12]  718 	mov	@r0,a
                                    719 ;	../../../usb/DAP_hid.c:43: UEP4_T_LEN = MAX_PACKET_SIZE;
      002D45 75 DF 40         [24]  720 	mov	_UEP4_T_LEN,#0x40
                                    721 ;	../../../usb/DAP_hid.c:44: UEP4_CTRL = UEP4_CTRL & ~(MASK_UEP_T_RES) | UEP_T_RES_ACK;
      002D48 53 DE FC         [24]  722 	anl	_UEP4_CTRL,#0xfc
                                    723 ;	../../../usb/DAP_hid.c:46: ep4_len = 0;
      002D4B 75 1E 00         [24]  724 	mov	_ep4_len,#0x00
      002D4E                        725 00108$:
                                    726 ;	../../../usb/DAP_hid.c:48: }
      002D4E 22               [24]  727 	ret
                                    728 	.area CSEG    (CODE)
                                    729 	.area CONST   (CODE)
                                    730 	.area XINIT   (CODE)
                                    731 	.area CABS    (ABS,CODE)

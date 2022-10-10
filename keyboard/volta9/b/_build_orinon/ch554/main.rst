                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timers
                                     12 	.globl _isp_enter
                                     13 	.globl ___memcpy
                                     14 	.globl _memset
                                     15 	.globl _uart_send_keymap
                                     16 	.globl _uart_send_led
                                     17 	.globl _uart_init
                                     18 	.globl _uart_recv
                                     19 	.globl _DelayMs
                                     20 	.globl _CfgSysClock
                                     21 	.globl _UsbIsr
                                     22 	.globl _USBDeviceInit
                                     23 	.globl _Dap_Init
                                     24 	.globl _UIF_BUS_RST
                                     25 	.globl _UIF_DETECT
                                     26 	.globl _UIF_TRANSFER
                                     27 	.globl _UIF_SUSPEND
                                     28 	.globl _UIF_HST_SOF
                                     29 	.globl _UIF_FIFO_OV
                                     30 	.globl _U_SIE_FREE
                                     31 	.globl _U_TOG_OK
                                     32 	.globl _U_IS_NAK
                                     33 	.globl _ADC_CHAN0
                                     34 	.globl _ADC_CHAN1
                                     35 	.globl _CMP_CHAN
                                     36 	.globl _ADC_START
                                     37 	.globl _ADC_IF
                                     38 	.globl _CMP_IF
                                     39 	.globl _CMPO
                                     40 	.globl _U1RI
                                     41 	.globl _U1TI
                                     42 	.globl _U1RB8
                                     43 	.globl _U1TB8
                                     44 	.globl _U1REN
                                     45 	.globl _U1SMOD
                                     46 	.globl _U1SM0
                                     47 	.globl _S0_R_FIFO
                                     48 	.globl _S0_T_FIFO
                                     49 	.globl _S0_FREE
                                     50 	.globl _S0_IF_BYTE
                                     51 	.globl _S0_IF_FIRST
                                     52 	.globl _S0_IF_OV
                                     53 	.globl _S0_FST_ACT
                                     54 	.globl _CP_RL2
                                     55 	.globl _C_T2
                                     56 	.globl _TR2
                                     57 	.globl _EXEN2
                                     58 	.globl _TCLK
                                     59 	.globl _RCLK
                                     60 	.globl _EXF2
                                     61 	.globl _CAP1F
                                     62 	.globl _TF2
                                     63 	.globl _RI
                                     64 	.globl _TI
                                     65 	.globl _RB8
                                     66 	.globl _TB8
                                     67 	.globl _REN
                                     68 	.globl _SM2
                                     69 	.globl _SM1
                                     70 	.globl _SM0
                                     71 	.globl _IT0
                                     72 	.globl _IE0
                                     73 	.globl _IT1
                                     74 	.globl _IE1
                                     75 	.globl _TR0
                                     76 	.globl _TF0
                                     77 	.globl _TR1
                                     78 	.globl _TF1
                                     79 	.globl _RXD
                                     80 	.globl _PWM1_
                                     81 	.globl _P3_0
                                     82 	.globl _TXD
                                     83 	.globl _PWM2_
                                     84 	.globl _P3_1
                                     85 	.globl _AIN3
                                     86 	.globl _VBUS1
                                     87 	.globl _INT0
                                     88 	.globl _TXD1_
                                     89 	.globl _P3_2
                                     90 	.globl _INT1
                                     91 	.globl _P3_3
                                     92 	.globl _T0
                                     93 	.globl _RXD1_
                                     94 	.globl _PWM2
                                     95 	.globl _P3_4
                                     96 	.globl _T1
                                     97 	.globl _P3_5
                                     98 	.globl _UDP
                                     99 	.globl _P3_6
                                    100 	.globl _UDM
                                    101 	.globl _P3_7
                                    102 	.globl _TIN0
                                    103 	.globl _CAP1
                                    104 	.globl _T2
                                    105 	.globl _P1_0
                                    106 	.globl _AIN0
                                    107 	.globl _VBUS2
                                    108 	.globl _TIN1
                                    109 	.globl _CAP2
                                    110 	.globl _T2EX
                                    111 	.globl _P1_1
                                    112 	.globl _RXD_
                                    113 	.globl _P1_2
                                    114 	.globl _TXD_
                                    115 	.globl _P1_3
                                    116 	.globl _AIN1
                                    117 	.globl _UCC1
                                    118 	.globl _TIN2
                                    119 	.globl _SCS
                                    120 	.globl _CAP1_
                                    121 	.globl _T2_
                                    122 	.globl _P1_4
                                    123 	.globl _AIN2
                                    124 	.globl _UCC2
                                    125 	.globl _TIN3
                                    126 	.globl _PWM1
                                    127 	.globl _MOSI
                                    128 	.globl _P1_5
                                    129 	.globl _TIN4
                                    130 	.globl _RXD1
                                    131 	.globl _MISO
                                    132 	.globl _P1_6
                                    133 	.globl _TIN5
                                    134 	.globl _TXD1
                                    135 	.globl _SCK
                                    136 	.globl _P1_7
                                    137 	.globl _IE_SPI0
                                    138 	.globl _IE_TKEY
                                    139 	.globl _IE_USB
                                    140 	.globl _IE_ADC
                                    141 	.globl _IE_UART1
                                    142 	.globl _IE_PWMX
                                    143 	.globl _IE_GPIO
                                    144 	.globl _IE_WDOG
                                    145 	.globl _PX0
                                    146 	.globl _PT0
                                    147 	.globl _PX1
                                    148 	.globl _PT1
                                    149 	.globl _PS
                                    150 	.globl _PT2
                                    151 	.globl _PL_FLAG
                                    152 	.globl _PH_FLAG
                                    153 	.globl _EX0
                                    154 	.globl _ET0
                                    155 	.globl _EX1
                                    156 	.globl _ET1
                                    157 	.globl _ES
                                    158 	.globl _ET2
                                    159 	.globl _E_DIS
                                    160 	.globl _EA
                                    161 	.globl _P
                                    162 	.globl _F1
                                    163 	.globl _OV
                                    164 	.globl _RS0
                                    165 	.globl _RS1
                                    166 	.globl _F0
                                    167 	.globl _AC
                                    168 	.globl _CY
                                    169 	.globl _UEP1_DMA_H
                                    170 	.globl _UEP1_DMA_L
                                    171 	.globl _UEP1_DMA
                                    172 	.globl _UEP0_DMA_H
                                    173 	.globl _UEP0_DMA_L
                                    174 	.globl _UEP0_DMA
                                    175 	.globl _UEP2_3_MOD
                                    176 	.globl _UEP4_1_MOD
                                    177 	.globl _UEP3_DMA_H
                                    178 	.globl _UEP3_DMA_L
                                    179 	.globl _UEP3_DMA
                                    180 	.globl _UEP2_DMA_H
                                    181 	.globl _UEP2_DMA_L
                                    182 	.globl _UEP2_DMA
                                    183 	.globl _USB_DEV_AD
                                    184 	.globl _USB_CTRL
                                    185 	.globl _USB_INT_EN
                                    186 	.globl _UEP4_T_LEN
                                    187 	.globl _UEP4_CTRL
                                    188 	.globl _UEP0_T_LEN
                                    189 	.globl _UEP0_CTRL
                                    190 	.globl _USB_RX_LEN
                                    191 	.globl _USB_MIS_ST
                                    192 	.globl _USB_INT_ST
                                    193 	.globl _USB_INT_FG
                                    194 	.globl _UEP3_T_LEN
                                    195 	.globl _UEP3_CTRL
                                    196 	.globl _UEP2_T_LEN
                                    197 	.globl _UEP2_CTRL
                                    198 	.globl _UEP1_T_LEN
                                    199 	.globl _UEP1_CTRL
                                    200 	.globl _UDEV_CTRL
                                    201 	.globl _USB_C_CTRL
                                    202 	.globl _TKEY_DATH
                                    203 	.globl _TKEY_DATL
                                    204 	.globl _TKEY_DAT
                                    205 	.globl _TKEY_CTRL
                                    206 	.globl _ADC_DATA
                                    207 	.globl _ADC_CFG
                                    208 	.globl _ADC_CTRL
                                    209 	.globl _SBAUD1
                                    210 	.globl _SBUF1
                                    211 	.globl _SCON1
                                    212 	.globl _SPI0_SETUP
                                    213 	.globl _SPI0_CK_SE
                                    214 	.globl _SPI0_CTRL
                                    215 	.globl _SPI0_DATA
                                    216 	.globl _SPI0_STAT
                                    217 	.globl _PWM_CK_SE
                                    218 	.globl _PWM_CTRL
                                    219 	.globl _PWM_DATA1
                                    220 	.globl _PWM_DATA2
                                    221 	.globl _T2CAP1H
                                    222 	.globl _T2CAP1L
                                    223 	.globl _T2CAP1
                                    224 	.globl _TH2
                                    225 	.globl _TL2
                                    226 	.globl _T2COUNT
                                    227 	.globl _RCAP2H
                                    228 	.globl _RCAP2L
                                    229 	.globl _RCAP2
                                    230 	.globl _T2MOD
                                    231 	.globl _T2CON
                                    232 	.globl _SBUF
                                    233 	.globl _SCON
                                    234 	.globl _TH1
                                    235 	.globl _TH0
                                    236 	.globl _TL1
                                    237 	.globl _TL0
                                    238 	.globl _TMOD
                                    239 	.globl _TCON
                                    240 	.globl _XBUS_AUX
                                    241 	.globl _PIN_FUNC
                                    242 	.globl _P3_DIR_PU
                                    243 	.globl _P3_MOD_OC
                                    244 	.globl _P3
                                    245 	.globl _P2
                                    246 	.globl _P1_DIR_PU
                                    247 	.globl _P1_MOD_OC
                                    248 	.globl _P1
                                    249 	.globl _ROM_CTRL
                                    250 	.globl _ROM_DATA_H
                                    251 	.globl _ROM_DATA_L
                                    252 	.globl _ROM_DATA
                                    253 	.globl _ROM_ADDR_H
                                    254 	.globl _ROM_ADDR_L
                                    255 	.globl _ROM_ADDR
                                    256 	.globl _GPIO_IE
                                    257 	.globl _IP_EX
                                    258 	.globl _IE_EX
                                    259 	.globl _IP
                                    260 	.globl _IE
                                    261 	.globl _WDOG_COUNT
                                    262 	.globl _RESET_KEEP
                                    263 	.globl _WAKE_CTRL
                                    264 	.globl _CLOCK_CFG
                                    265 	.globl _PCON
                                    266 	.globl _GLOBAL_CFG
                                    267 	.globl _SAFE_MOD
                                    268 	.globl _DPH
                                    269 	.globl _DPL
                                    270 	.globl _SP
                                    271 	.globl _B
                                    272 	.globl _ACC
                                    273 	.globl _PSW
                                    274 	.globl _KeyboardGenericUpload
                                    275 	.globl _KeyboardExtraUpload
                                    276 	.globl _ResponseConfigurePacket
                                    277 	.globl _EP3_OUT
                                    278 	.globl _EP1_OUT
                                    279 	.globl _UsbSuspendEvt
                                    280 ;--------------------------------------------------------
                                    281 ; special function registers
                                    282 ;--------------------------------------------------------
                                    283 	.area RSEG    (ABS,DATA)
      000000                        284 	.org 0x0000
                           0000D0   285 _PSW	=	0x00d0
                           0000E0   286 _ACC	=	0x00e0
                           0000F0   287 _B	=	0x00f0
                           000081   288 _SP	=	0x0081
                           000082   289 _DPL	=	0x0082
                           000083   290 _DPH	=	0x0083
                           0000A1   291 _SAFE_MOD	=	0x00a1
                           0000B1   292 _GLOBAL_CFG	=	0x00b1
                           000087   293 _PCON	=	0x0087
                           0000B9   294 _CLOCK_CFG	=	0x00b9
                           0000A9   295 _WAKE_CTRL	=	0x00a9
                           0000FE   296 _RESET_KEEP	=	0x00fe
                           0000FF   297 _WDOG_COUNT	=	0x00ff
                           0000A8   298 _IE	=	0x00a8
                           0000B8   299 _IP	=	0x00b8
                           0000E8   300 _IE_EX	=	0x00e8
                           0000E9   301 _IP_EX	=	0x00e9
                           0000C7   302 _GPIO_IE	=	0x00c7
                           008584   303 _ROM_ADDR	=	0x8584
                           000084   304 _ROM_ADDR_L	=	0x0084
                           000085   305 _ROM_ADDR_H	=	0x0085
                           008F8E   306 _ROM_DATA	=	0x8f8e
                           00008E   307 _ROM_DATA_L	=	0x008e
                           00008F   308 _ROM_DATA_H	=	0x008f
                           000086   309 _ROM_CTRL	=	0x0086
                           000090   310 _P1	=	0x0090
                           000092   311 _P1_MOD_OC	=	0x0092
                           000093   312 _P1_DIR_PU	=	0x0093
                           0000A0   313 _P2	=	0x00a0
                           0000B0   314 _P3	=	0x00b0
                           000096   315 _P3_MOD_OC	=	0x0096
                           000097   316 _P3_DIR_PU	=	0x0097
                           0000C6   317 _PIN_FUNC	=	0x00c6
                           0000A2   318 _XBUS_AUX	=	0x00a2
                           000088   319 _TCON	=	0x0088
                           000089   320 _TMOD	=	0x0089
                           00008A   321 _TL0	=	0x008a
                           00008B   322 _TL1	=	0x008b
                           00008C   323 _TH0	=	0x008c
                           00008D   324 _TH1	=	0x008d
                           000098   325 _SCON	=	0x0098
                           000099   326 _SBUF	=	0x0099
                           0000C8   327 _T2CON	=	0x00c8
                           0000C9   328 _T2MOD	=	0x00c9
                           00CBCA   329 _RCAP2	=	0xcbca
                           0000CA   330 _RCAP2L	=	0x00ca
                           0000CB   331 _RCAP2H	=	0x00cb
                           00CDCC   332 _T2COUNT	=	0xcdcc
                           0000CC   333 _TL2	=	0x00cc
                           0000CD   334 _TH2	=	0x00cd
                           00CFCE   335 _T2CAP1	=	0xcfce
                           0000CE   336 _T2CAP1L	=	0x00ce
                           0000CF   337 _T2CAP1H	=	0x00cf
                           00009B   338 _PWM_DATA2	=	0x009b
                           00009C   339 _PWM_DATA1	=	0x009c
                           00009D   340 _PWM_CTRL	=	0x009d
                           00009E   341 _PWM_CK_SE	=	0x009e
                           0000F8   342 _SPI0_STAT	=	0x00f8
                           0000F9   343 _SPI0_DATA	=	0x00f9
                           0000FA   344 _SPI0_CTRL	=	0x00fa
                           0000FB   345 _SPI0_CK_SE	=	0x00fb
                           0000FC   346 _SPI0_SETUP	=	0x00fc
                           0000C0   347 _SCON1	=	0x00c0
                           0000C1   348 _SBUF1	=	0x00c1
                           0000C2   349 _SBAUD1	=	0x00c2
                           000080   350 _ADC_CTRL	=	0x0080
                           00009A   351 _ADC_CFG	=	0x009a
                           00009F   352 _ADC_DATA	=	0x009f
                           0000C3   353 _TKEY_CTRL	=	0x00c3
                           00C5C4   354 _TKEY_DAT	=	0xc5c4
                           0000C4   355 _TKEY_DATL	=	0x00c4
                           0000C5   356 _TKEY_DATH	=	0x00c5
                           000091   357 _USB_C_CTRL	=	0x0091
                           0000D1   358 _UDEV_CTRL	=	0x00d1
                           0000D2   359 _UEP1_CTRL	=	0x00d2
                           0000D3   360 _UEP1_T_LEN	=	0x00d3
                           0000D4   361 _UEP2_CTRL	=	0x00d4
                           0000D5   362 _UEP2_T_LEN	=	0x00d5
                           0000D6   363 _UEP3_CTRL	=	0x00d6
                           0000D7   364 _UEP3_T_LEN	=	0x00d7
                           0000D8   365 _USB_INT_FG	=	0x00d8
                           0000D9   366 _USB_INT_ST	=	0x00d9
                           0000DA   367 _USB_MIS_ST	=	0x00da
                           0000DB   368 _USB_RX_LEN	=	0x00db
                           0000DC   369 _UEP0_CTRL	=	0x00dc
                           0000DD   370 _UEP0_T_LEN	=	0x00dd
                           0000DE   371 _UEP4_CTRL	=	0x00de
                           0000DF   372 _UEP4_T_LEN	=	0x00df
                           0000E1   373 _USB_INT_EN	=	0x00e1
                           0000E2   374 _USB_CTRL	=	0x00e2
                           0000E3   375 _USB_DEV_AD	=	0x00e3
                           00E5E4   376 _UEP2_DMA	=	0xe5e4
                           0000E4   377 _UEP2_DMA_L	=	0x00e4
                           0000E5   378 _UEP2_DMA_H	=	0x00e5
                           00E7E6   379 _UEP3_DMA	=	0xe7e6
                           0000E6   380 _UEP3_DMA_L	=	0x00e6
                           0000E7   381 _UEP3_DMA_H	=	0x00e7
                           0000EA   382 _UEP4_1_MOD	=	0x00ea
                           0000EB   383 _UEP2_3_MOD	=	0x00eb
                           00EDEC   384 _UEP0_DMA	=	0xedec
                           0000EC   385 _UEP0_DMA_L	=	0x00ec
                           0000ED   386 _UEP0_DMA_H	=	0x00ed
                           00EFEE   387 _UEP1_DMA	=	0xefee
                           0000EE   388 _UEP1_DMA_L	=	0x00ee
                           0000EF   389 _UEP1_DMA_H	=	0x00ef
                                    390 ;--------------------------------------------------------
                                    391 ; special function bits
                                    392 ;--------------------------------------------------------
                                    393 	.area RSEG    (ABS,DATA)
      000000                        394 	.org 0x0000
                           0000D7   395 _CY	=	0x00d7
                           0000D6   396 _AC	=	0x00d6
                           0000D5   397 _F0	=	0x00d5
                           0000D4   398 _RS1	=	0x00d4
                           0000D3   399 _RS0	=	0x00d3
                           0000D2   400 _OV	=	0x00d2
                           0000D1   401 _F1	=	0x00d1
                           0000D0   402 _P	=	0x00d0
                           0000AF   403 _EA	=	0x00af
                           0000AE   404 _E_DIS	=	0x00ae
                           0000AD   405 _ET2	=	0x00ad
                           0000AC   406 _ES	=	0x00ac
                           0000AB   407 _ET1	=	0x00ab
                           0000AA   408 _EX1	=	0x00aa
                           0000A9   409 _ET0	=	0x00a9
                           0000A8   410 _EX0	=	0x00a8
                           0000AF   411 _PH_FLAG	=	0x00af
                           0000AE   412 _PL_FLAG	=	0x00ae
                           0000AD   413 _PT2	=	0x00ad
                           0000AC   414 _PS	=	0x00ac
                           0000AB   415 _PT1	=	0x00ab
                           0000AA   416 _PX1	=	0x00aa
                           0000A9   417 _PT0	=	0x00a9
                           0000A8   418 _PX0	=	0x00a8
                           0000EF   419 _IE_WDOG	=	0x00ef
                           0000EE   420 _IE_GPIO	=	0x00ee
                           0000ED   421 _IE_PWMX	=	0x00ed
                           0000EC   422 _IE_UART1	=	0x00ec
                           0000EB   423 _IE_ADC	=	0x00eb
                           0000EA   424 _IE_USB	=	0x00ea
                           0000E9   425 _IE_TKEY	=	0x00e9
                           0000E8   426 _IE_SPI0	=	0x00e8
                           000097   427 _P1_7	=	0x0097
                           000097   428 _SCK	=	0x0097
                           000097   429 _TXD1	=	0x0097
                           000097   430 _TIN5	=	0x0097
                           000096   431 _P1_6	=	0x0096
                           000096   432 _MISO	=	0x0096
                           000096   433 _RXD1	=	0x0096
                           000096   434 _TIN4	=	0x0096
                           000095   435 _P1_5	=	0x0095
                           000095   436 _MOSI	=	0x0095
                           000095   437 _PWM1	=	0x0095
                           000095   438 _TIN3	=	0x0095
                           000095   439 _UCC2	=	0x0095
                           000095   440 _AIN2	=	0x0095
                           000094   441 _P1_4	=	0x0094
                           000094   442 _T2_	=	0x0094
                           000094   443 _CAP1_	=	0x0094
                           000094   444 _SCS	=	0x0094
                           000094   445 _TIN2	=	0x0094
                           000094   446 _UCC1	=	0x0094
                           000094   447 _AIN1	=	0x0094
                           000093   448 _P1_3	=	0x0093
                           000093   449 _TXD_	=	0x0093
                           000092   450 _P1_2	=	0x0092
                           000092   451 _RXD_	=	0x0092
                           000091   452 _P1_1	=	0x0091
                           000091   453 _T2EX	=	0x0091
                           000091   454 _CAP2	=	0x0091
                           000091   455 _TIN1	=	0x0091
                           000091   456 _VBUS2	=	0x0091
                           000091   457 _AIN0	=	0x0091
                           000090   458 _P1_0	=	0x0090
                           000090   459 _T2	=	0x0090
                           000090   460 _CAP1	=	0x0090
                           000090   461 _TIN0	=	0x0090
                           0000B7   462 _P3_7	=	0x00b7
                           0000B7   463 _UDM	=	0x00b7
                           0000B6   464 _P3_6	=	0x00b6
                           0000B6   465 _UDP	=	0x00b6
                           0000B5   466 _P3_5	=	0x00b5
                           0000B5   467 _T1	=	0x00b5
                           0000B4   468 _P3_4	=	0x00b4
                           0000B4   469 _PWM2	=	0x00b4
                           0000B4   470 _RXD1_	=	0x00b4
                           0000B4   471 _T0	=	0x00b4
                           0000B3   472 _P3_3	=	0x00b3
                           0000B3   473 _INT1	=	0x00b3
                           0000B2   474 _P3_2	=	0x00b2
                           0000B2   475 _TXD1_	=	0x00b2
                           0000B2   476 _INT0	=	0x00b2
                           0000B2   477 _VBUS1	=	0x00b2
                           0000B2   478 _AIN3	=	0x00b2
                           0000B1   479 _P3_1	=	0x00b1
                           0000B1   480 _PWM2_	=	0x00b1
                           0000B1   481 _TXD	=	0x00b1
                           0000B0   482 _P3_0	=	0x00b0
                           0000B0   483 _PWM1_	=	0x00b0
                           0000B0   484 _RXD	=	0x00b0
                           00008F   485 _TF1	=	0x008f
                           00008E   486 _TR1	=	0x008e
                           00008D   487 _TF0	=	0x008d
                           00008C   488 _TR0	=	0x008c
                           00008B   489 _IE1	=	0x008b
                           00008A   490 _IT1	=	0x008a
                           000089   491 _IE0	=	0x0089
                           000088   492 _IT0	=	0x0088
                           00009F   493 _SM0	=	0x009f
                           00009E   494 _SM1	=	0x009e
                           00009D   495 _SM2	=	0x009d
                           00009C   496 _REN	=	0x009c
                           00009B   497 _TB8	=	0x009b
                           00009A   498 _RB8	=	0x009a
                           000099   499 _TI	=	0x0099
                           000098   500 _RI	=	0x0098
                           0000CF   501 _TF2	=	0x00cf
                           0000CF   502 _CAP1F	=	0x00cf
                           0000CE   503 _EXF2	=	0x00ce
                           0000CD   504 _RCLK	=	0x00cd
                           0000CC   505 _TCLK	=	0x00cc
                           0000CB   506 _EXEN2	=	0x00cb
                           0000CA   507 _TR2	=	0x00ca
                           0000C9   508 _C_T2	=	0x00c9
                           0000C8   509 _CP_RL2	=	0x00c8
                           0000FF   510 _S0_FST_ACT	=	0x00ff
                           0000FE   511 _S0_IF_OV	=	0x00fe
                           0000FD   512 _S0_IF_FIRST	=	0x00fd
                           0000FC   513 _S0_IF_BYTE	=	0x00fc
                           0000FB   514 _S0_FREE	=	0x00fb
                           0000FA   515 _S0_T_FIFO	=	0x00fa
                           0000F8   516 _S0_R_FIFO	=	0x00f8
                           0000C7   517 _U1SM0	=	0x00c7
                           0000C5   518 _U1SMOD	=	0x00c5
                           0000C4   519 _U1REN	=	0x00c4
                           0000C3   520 _U1TB8	=	0x00c3
                           0000C2   521 _U1RB8	=	0x00c2
                           0000C1   522 _U1TI	=	0x00c1
                           0000C0   523 _U1RI	=	0x00c0
                           000087   524 _CMPO	=	0x0087
                           000086   525 _CMP_IF	=	0x0086
                           000085   526 _ADC_IF	=	0x0085
                           000084   527 _ADC_START	=	0x0084
                           000083   528 _CMP_CHAN	=	0x0083
                           000081   529 _ADC_CHAN1	=	0x0081
                           000080   530 _ADC_CHAN0	=	0x0080
                           0000DF   531 _U_IS_NAK	=	0x00df
                           0000DE   532 _U_TOG_OK	=	0x00de
                           0000DD   533 _U_SIE_FREE	=	0x00dd
                           0000DC   534 _UIF_FIFO_OV	=	0x00dc
                           0000DB   535 _UIF_HST_SOF	=	0x00db
                           0000DA   536 _UIF_SUSPEND	=	0x00da
                           0000D9   537 _UIF_TRANSFER	=	0x00d9
                           0000D8   538 _UIF_DETECT	=	0x00d8
                           0000D8   539 _UIF_BUS_RST	=	0x00d8
                                    540 ;--------------------------------------------------------
                                    541 ; overlayable register banks
                                    542 ;--------------------------------------------------------
                                    543 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        544 	.ds 8
                                    545 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        546 	.ds 8
                                    547 ;--------------------------------------------------------
                                    548 ; overlayable bit register bank
                                    549 ;--------------------------------------------------------
                                    550 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        551 bits:
      000020                        552 	.ds 1
                           008000   553 	b0 = bits[0]
                           008100   554 	b1 = bits[1]
                           008200   555 	b2 = bits[2]
                           008300   556 	b3 = bits[3]
                           008400   557 	b4 = bits[4]
                           008500   558 	b5 = bits[5]
                           008600   559 	b6 = bits[6]
                           008700   560 	b7 = bits[7]
                                    561 ;--------------------------------------------------------
                                    562 ; internal ram data
                                    563 ;--------------------------------------------------------
                                    564 	.area DSEG    (DATA)
      000010                        565 _timer_counter:
      000010                        566 	.ds 6
                                    567 ;--------------------------------------------------------
                                    568 ; overlayable items in internal ram 
                                    569 ;--------------------------------------------------------
                                    570 ;--------------------------------------------------------
                                    571 ; Stack segment in internal ram 
                                    572 ;--------------------------------------------------------
                                    573 	.area	SSEG
      00002F                        574 __start__stack:
      00002F                        575 	.ds	1
                                    576 
                                    577 ;--------------------------------------------------------
                                    578 ; indirectly addressable internal ram data
                                    579 ;--------------------------------------------------------
                                    580 	.area ISEG    (DATA)
                                    581 ;--------------------------------------------------------
                                    582 ; absolute internal ram data
                                    583 ;--------------------------------------------------------
                                    584 	.area IABS    (ABS,DATA)
                                    585 	.area IABS    (ABS,DATA)
                                    586 ;--------------------------------------------------------
                                    587 ; bit data
                                    588 ;--------------------------------------------------------
                                    589 	.area BSEG    (BIT)
                                    590 ;--------------------------------------------------------
                                    591 ; paged external ram data
                                    592 ;--------------------------------------------------------
                                    593 	.area PSEG    (PAG,XDATA)
                                    594 ;--------------------------------------------------------
                                    595 ; external ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area XSEG    (XDATA)
                                    598 ;--------------------------------------------------------
                                    599 ; absolute external ram data
                                    600 ;--------------------------------------------------------
                                    601 	.area XABS    (ABS,XDATA)
                                    602 ;--------------------------------------------------------
                                    603 ; external initialized ram data
                                    604 ;--------------------------------------------------------
                                    605 	.area XISEG   (XDATA)
                                    606 	.area HOME    (CODE)
                                    607 	.area GSINIT0 (CODE)
                                    608 	.area GSINIT1 (CODE)
                                    609 	.area GSINIT2 (CODE)
                                    610 	.area GSINIT3 (CODE)
                                    611 	.area GSINIT4 (CODE)
                                    612 	.area GSINIT5 (CODE)
                                    613 	.area GSINIT  (CODE)
                                    614 	.area GSFINAL (CODE)
                                    615 	.area CSEG    (CODE)
                                    616 ;--------------------------------------------------------
                                    617 ; interrupt vector 
                                    618 ;--------------------------------------------------------
                                    619 	.area HOME    (CODE)
      000000                        620 __interrupt_vect:
      000000 02 00 5B         [24]  621 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  622 	reti
      000004                        623 	.ds	7
      00000B 32               [24]  624 	reti
      00000C                        625 	.ds	7
      000013 32               [24]  626 	reti
      000014                        627 	.ds	7
      00001B 32               [24]  628 	reti
      00001C                        629 	.ds	7
      000023 32               [24]  630 	reti
      000024                        631 	.ds	7
      00002B 32               [24]  632 	reti
      00002C                        633 	.ds	7
      000033 32               [24]  634 	reti
      000034                        635 	.ds	7
      00003B 02 03 C8         [24]  636 	ljmp	_TimerInterrupt
      00003E                        637 	.ds	5
      000043 02 00 DD         [24]  638 	ljmp	_DeviceInterrupt
      000046                        639 	.ds	5
      00004B 32               [24]  640 	reti
      00004C                        641 	.ds	7
      000053 02 02 61         [24]  642 	ljmp	_UARTInterrupt
                                    643 ;--------------------------------------------------------
                                    644 ; global & static initialisations
                                    645 ;--------------------------------------------------------
                                    646 	.area HOME    (CODE)
                                    647 	.area GSINIT  (CODE)
                                    648 	.area GSFINAL (CODE)
                                    649 	.area GSINIT  (CODE)
                                    650 	.globl __sdcc_gsinit_startup
                                    651 	.globl __sdcc_program_startup
                                    652 	.globl __start__stack
                                    653 	.globl __mcs51_genXINIT
                                    654 	.globl __mcs51_genXRAMCLEAR
                                    655 	.globl __mcs51_genRAMCLEAR
                                    656 	.area GSFINAL (CODE)
      0000C3 02 00 56         [24]  657 	ljmp	__sdcc_program_startup
                                    658 ;--------------------------------------------------------
                                    659 ; Home
                                    660 ;--------------------------------------------------------
                                    661 	.area HOME    (CODE)
                                    662 	.area HOME    (CODE)
      000056                        663 __sdcc_program_startup:
      000056 02 04 15         [24]  664 	ljmp	_main
                                    665 ;	return from main will return to caller
                                    666 ;--------------------------------------------------------
                                    667 ; code
                                    668 ;--------------------------------------------------------
                                    669 	.area CSEG    (CODE)
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'CH554SoftReset'
                                    672 ;------------------------------------------------------------
                                    673 ;	../../../usb/main.c:38: static void CH554SoftReset()
                                    674 ;	-----------------------------------------
                                    675 ;	 function CH554SoftReset
                                    676 ;	-----------------------------------------
      0000C6                        677 _CH554SoftReset:
                           000007   678 	ar7 = 0x07
                           000006   679 	ar6 = 0x06
                           000005   680 	ar5 = 0x05
                           000004   681 	ar4 = 0x04
                           000003   682 	ar3 = 0x03
                           000002   683 	ar2 = 0x02
                           000001   684 	ar1 = 0x01
                           000000   685 	ar0 = 0x00
                                    686 ;	../../../usb/main.c:40: SAFE_MOD = 0x55;
      0000C6 75 A1 55         [24]  687 	mov	_SAFE_MOD,#0x55
                                    688 ;	../../../usb/main.c:41: SAFE_MOD = 0xAA;
      0000C9 75 A1 AA         [24]  689 	mov	_SAFE_MOD,#0xaa
                                    690 ;	../../../usb/main.c:42: GLOBAL_CFG |= bSW_RESET;
      0000CC 43 B1 10         [24]  691 	orl	_GLOBAL_CFG,#0x10
                                    692 ;	../../../usb/main.c:43: }
      0000CF 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'CH554USBDevWakeup'
                                    696 ;------------------------------------------------------------
                                    697 ;	../../../usb/main.c:48: static void CH554USBDevWakeup()
                                    698 ;	-----------------------------------------
                                    699 ;	 function CH554USBDevWakeup
                                    700 ;	-----------------------------------------
      0000D0                        701 _CH554USBDevWakeup:
                                    702 ;	../../../usb/main.c:50: UDEV_CTRL |= bUD_LOW_SPEED;
      0000D0 43 D1 04         [24]  703 	orl	_UDEV_CTRL,#0x04
                                    704 ;	../../../usb/main.c:51: DelayMs(2);
      0000D3 90 00 02         [24]  705 	mov	dptr,#0x0002
      0000D6 12 0A 3B         [24]  706 	lcall	_DelayMs
                                    707 ;	../../../usb/main.c:52: UDEV_CTRL &= ~bUD_LOW_SPEED;
      0000D9 53 D1 FB         [24]  708 	anl	_UDEV_CTRL,#0xfb
                                    709 ;	../../../usb/main.c:53: }
      0000DC 22               [24]  710 	ret
                                    711 ;------------------------------------------------------------
                                    712 ;Allocation info for local variables in function 'DeviceInterrupt'
                                    713 ;------------------------------------------------------------
                                    714 ;	../../../usb/main.c:57: static INTERRUPT_USING(DeviceInterrupt, INT_NO_USB, 1) //USB中断服务程序,使用寄存器组1
                                    715 ;	-----------------------------------------
                                    716 ;	 function DeviceInterrupt
                                    717 ;	-----------------------------------------
      0000DD                        718 _DeviceInterrupt:
                           00000F   719 	ar7 = 0x0f
                           00000E   720 	ar6 = 0x0e
                           00000D   721 	ar5 = 0x0d
                           00000C   722 	ar4 = 0x0c
                           00000B   723 	ar3 = 0x0b
                           00000A   724 	ar2 = 0x0a
                           000009   725 	ar1 = 0x09
                           000008   726 	ar0 = 0x08
      0000DD C0 20            [24]  727 	push	bits
      0000DF C0 E0            [24]  728 	push	acc
      0000E1 C0 F0            [24]  729 	push	b
      0000E3 C0 82            [24]  730 	push	dpl
      0000E5 C0 83            [24]  731 	push	dph
      0000E7 C0 07            [24]  732 	push	(0+7)
      0000E9 C0 06            [24]  733 	push	(0+6)
      0000EB C0 05            [24]  734 	push	(0+5)
      0000ED C0 04            [24]  735 	push	(0+4)
      0000EF C0 03            [24]  736 	push	(0+3)
      0000F1 C0 02            [24]  737 	push	(0+2)
      0000F3 C0 01            [24]  738 	push	(0+1)
      0000F5 C0 00            [24]  739 	push	(0+0)
      0000F7 C0 D0            [24]  740 	push	psw
                                    741 ;	../../../usb/main.c:59: UsbIsr();
      0000F9 75 D0 00         [24]  742 	mov	psw,#0x00
      0000FC 12 0E 4B         [24]  743 	lcall	_UsbIsr
      0000FF 75 D0 08         [24]  744 	mov	psw,#0x08
                                    745 ;	../../../usb/main.c:60: }
      000102 D0 D0            [24]  746 	pop	psw
      000104 D0 00            [24]  747 	pop	(0+0)
      000106 D0 01            [24]  748 	pop	(0+1)
      000108 D0 02            [24]  749 	pop	(0+2)
      00010A D0 03            [24]  750 	pop	(0+3)
      00010C D0 04            [24]  751 	pop	(0+4)
      00010E D0 05            [24]  752 	pop	(0+5)
      000110 D0 06            [24]  753 	pop	(0+6)
      000112 D0 07            [24]  754 	pop	(0+7)
      000114 D0 83            [24]  755 	pop	dph
      000116 D0 82            [24]  756 	pop	dpl
      000118 D0 F0            [24]  757 	pop	b
      00011A D0 E0            [24]  758 	pop	acc
      00011C D0 20            [24]  759 	pop	bits
      00011E 32               [24]  760 	reti
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'UsbOnKeySend'
                                    763 ;------------------------------------------------------------
                                    764 ;	../../../usb/main.c:66: static void UsbOnKeySend()
                                    765 ;	-----------------------------------------
                                    766 ;	 function UsbOnKeySend
                                    767 ;	-----------------------------------------
      00011F                        768 _UsbOnKeySend:
                           000007   769 	ar7 = 0x07
                           000006   770 	ar6 = 0x06
                           000005   771 	ar5 = 0x05
                           000004   772 	ar4 = 0x04
                           000003   773 	ar3 = 0x03
                           000002   774 	ar2 = 0x02
                           000001   775 	ar1 = 0x01
                           000000   776 	ar0 = 0x00
                                    777 ;	../../../usb/main.c:68: if (usb_state.is_sleep && usb_state.remote_wake) {
      00011F 78 1C            [12]  778 	mov	r0,#_usb_state
      000121 E6               [12]  779 	mov	a,@r0
      000122 30 E2 0F         [24]  780 	jnb	acc.2,00104$
      000125 78 1C            [12]  781 	mov	r0,#_usb_state
      000127 E6               [12]  782 	mov	a,@r0
      000128 30 E3 09         [24]  783 	jnb	acc.3,00104$
                                    784 ;	../../../usb/main.c:69: usb_state.is_sleep = false;
      00012B 78 1C            [12]  785 	mov	r0,#_usb_state
      00012D E6               [12]  786 	mov	a,@r0
      00012E 54 FB            [12]  787 	anl	a,#0xfb
      000130 F6               [12]  788 	mov	@r0,a
                                    789 ;	../../../usb/main.c:70: CH554USBDevWakeup();
                                    790 ;	../../../usb/main.c:72: }
      000131 02 00 D0         [24]  791 	ljmp	_CH554USBDevWakeup
      000134                        792 00104$:
      000134 22               [24]  793 	ret
                                    794 ;------------------------------------------------------------
                                    795 ;Allocation info for local variables in function 'KeyboardGenericUpload'
                                    796 ;------------------------------------------------------------
                                    797 ;len                       Allocated to stack - _bp -3
                                    798 ;packet                    Allocated to registers r5 r6 r7 
                                    799 ;------------------------------------------------------------
                                    800 ;	../../../usb/main.c:80: void KeyboardGenericUpload(uint8_t* packet, uint8_t len)
                                    801 ;	-----------------------------------------
                                    802 ;	 function KeyboardGenericUpload
                                    803 ;	-----------------------------------------
      000135                        804 _KeyboardGenericUpload:
      000135 C0 1F            [24]  805 	push	_bp
      000137 85 81 1F         [24]  806 	mov	_bp,sp
      00013A AD 82            [24]  807 	mov	r5,dpl
      00013C AE 83            [24]  808 	mov	r6,dph
      00013E AF F0            [24]  809 	mov	r7,b
                                    810 ;	../../../usb/main.c:82: if (len != 8)
      000140 E5 1F            [12]  811 	mov	a,_bp
      000142 24 FD            [12]  812 	add	a,#0xfd
      000144 F8               [12]  813 	mov	r0,a
                                    814 ;	../../../usb/main.c:83: return;
      000145 B6 08 41         [24]  815 	cjne	@r0,#0x08,00103$
                                    816 ;	../../../usb/main.c:84: UsbOnKeySend();
      000148 C0 07            [24]  817 	push	ar7
      00014A C0 06            [24]  818 	push	ar6
      00014C C0 05            [24]  819 	push	ar5
      00014E 12 01 1F         [24]  820 	lcall	_UsbOnKeySend
      000151 D0 05            [24]  821 	pop	ar5
      000153 D0 06            [24]  822 	pop	ar6
      000155 D0 07            [24]  823 	pop	ar7
                                    824 ;	../../../usb/main.c:86: usb_state.is_busy = true;
      000157 78 1C            [12]  825 	mov	r0,#_usb_state
      000159 E6               [12]  826 	mov	a,@r0
      00015A 44 02            [12]  827 	orl	a,#0x02
      00015C F6               [12]  828 	mov	@r0,a
                                    829 ;	../../../usb/main.c:87: memcpy(&Ep1Buffer[64], packet, len);
      00015D E5 1F            [12]  830 	mov	a,_bp
      00015F 24 FD            [12]  831 	add	a,#0xfd
      000161 F8               [12]  832 	mov	r0,a
      000162 86 03            [24]  833 	mov	ar3,@r0
      000164 7C 00            [12]  834 	mov	r4,#0x00
      000166 C0 03            [24]  835 	push	ar3
      000168 C0 04            [24]  836 	push	ar4
      00016A C0 05            [24]  837 	push	ar5
      00016C C0 06            [24]  838 	push	ar6
      00016E C0 07            [24]  839 	push	ar7
      000170 90 01 00         [24]  840 	mov	dptr,#(_Ep1Buffer + 0x0040)
      000173 75 F0 00         [24]  841 	mov	b,#0x00
      000176 12 32 20         [24]  842 	lcall	___memcpy
      000179 E5 81            [12]  843 	mov	a,sp
      00017B 24 FB            [12]  844 	add	a,#0xfb
      00017D F5 81            [12]  845 	mov	sp,a
                                    846 ;	../../../usb/main.c:88: UEP1_T_LEN = len;
      00017F E5 1F            [12]  847 	mov	a,_bp
      000181 24 FD            [12]  848 	add	a,#0xfd
      000183 F8               [12]  849 	mov	r0,a
      000184 86 D3            [24]  850 	mov	_UEP1_T_LEN,@r0
                                    851 ;	../../../usb/main.c:89: UEP1_CTRL = UEP1_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK;
      000186 53 D2 FC         [24]  852 	anl	_UEP1_CTRL,#0xfc
      000189                        853 00103$:
                                    854 ;	../../../usb/main.c:90: }
      000189 D0 1F            [24]  855 	pop	_bp
      00018B 22               [24]  856 	ret
                                    857 ;------------------------------------------------------------
                                    858 ;Allocation info for local variables in function 'KeyboardExtraUpload'
                                    859 ;------------------------------------------------------------
                                    860 ;len                       Allocated to stack - _bp -3
                                    861 ;packet                    Allocated to registers r5 r6 r7 
                                    862 ;------------------------------------------------------------
                                    863 ;	../../../usb/main.c:98: void KeyboardExtraUpload(uint8_t* packet, uint8_t len)
                                    864 ;	-----------------------------------------
                                    865 ;	 function KeyboardExtraUpload
                                    866 ;	-----------------------------------------
      00018C                        867 _KeyboardExtraUpload:
      00018C C0 1F            [24]  868 	push	_bp
      00018E 85 81 1F         [24]  869 	mov	_bp,sp
      000191 AD 82            [24]  870 	mov	r5,dpl
      000193 AE 83            [24]  871 	mov	r6,dph
      000195 AF F0            [24]  872 	mov	r7,b
                                    873 ;	../../../usb/main.c:100: UsbOnKeySend();
      000197 C0 07            [24]  874 	push	ar7
      000199 C0 06            [24]  875 	push	ar6
      00019B C0 05            [24]  876 	push	ar5
      00019D 12 01 1F         [24]  877 	lcall	_UsbOnKeySend
      0001A0 D0 05            [24]  878 	pop	ar5
      0001A2 D0 06            [24]  879 	pop	ar6
      0001A4 D0 07            [24]  880 	pop	ar7
                                    881 ;	../../../usb/main.c:102: usb_state.is_busy = true;
      0001A6 78 1C            [12]  882 	mov	r0,#_usb_state
      0001A8 E6               [12]  883 	mov	a,@r0
      0001A9 44 02            [12]  884 	orl	a,#0x02
      0001AB F6               [12]  885 	mov	@r0,a
                                    886 ;	../../../usb/main.c:103: memcpy(Ep2Buffer, packet, len);
      0001AC E5 1F            [12]  887 	mov	a,_bp
      0001AE 24 FD            [12]  888 	add	a,#0xfd
      0001B0 F8               [12]  889 	mov	r0,a
      0001B1 86 03            [24]  890 	mov	ar3,@r0
      0001B3 7C 00            [12]  891 	mov	r4,#0x00
      0001B5 C0 03            [24]  892 	push	ar3
      0001B7 C0 04            [24]  893 	push	ar4
      0001B9 C0 05            [24]  894 	push	ar5
      0001BB C0 06            [24]  895 	push	ar6
      0001BD C0 07            [24]  896 	push	ar7
      0001BF 90 01 40         [24]  897 	mov	dptr,#_Ep2Buffer
      0001C2 75 F0 00         [24]  898 	mov	b,#0x00
      0001C5 12 32 20         [24]  899 	lcall	___memcpy
      0001C8 E5 81            [12]  900 	mov	a,sp
      0001CA 24 FB            [12]  901 	add	a,#0xfb
      0001CC F5 81            [12]  902 	mov	sp,a
                                    903 ;	../../../usb/main.c:104: UEP2_T_LEN = len;
      0001CE E5 1F            [12]  904 	mov	a,_bp
      0001D0 24 FD            [12]  905 	add	a,#0xfd
      0001D2 F8               [12]  906 	mov	r0,a
      0001D3 86 D5            [24]  907 	mov	_UEP2_T_LEN,@r0
                                    908 ;	../../../usb/main.c:105: UEP2_CTRL = UEP2_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK;
      0001D5 53 D4 FC         [24]  909 	anl	_UEP2_CTRL,#0xfc
                                    910 ;	../../../usb/main.c:106: }
      0001D8 D0 1F            [24]  911 	pop	_bp
      0001DA 22               [24]  912 	ret
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'ResponseConfigurePacket'
                                    915 ;------------------------------------------------------------
                                    916 ;len                       Allocated to stack - _bp -3
                                    917 ;packet                    Allocated to registers r5 r6 r7 
                                    918 ;------------------------------------------------------------
                                    919 ;	../../../usb/main.c:114: void ResponseConfigurePacket(uint8_t* packet, uint8_t len)
                                    920 ;	-----------------------------------------
                                    921 ;	 function ResponseConfigurePacket
                                    922 ;	-----------------------------------------
      0001DB                        923 _ResponseConfigurePacket:
      0001DB C0 1F            [24]  924 	push	_bp
      0001DD 85 81 1F         [24]  925 	mov	_bp,sp
      0001E0 AD 82            [24]  926 	mov	r5,dpl
      0001E2 AE 83            [24]  927 	mov	r6,dph
      0001E4 AF F0            [24]  928 	mov	r7,b
                                    929 ;	../../../usb/main.c:116: if (len > 64)
      0001E6 E5 1F            [12]  930 	mov	a,_bp
      0001E8 24 FD            [12]  931 	add	a,#0xfd
      0001EA F8               [12]  932 	mov	r0,a
      0001EB E6               [12]  933 	mov	a,@r0
      0001EC 24 BF            [12]  934 	add	a,#0xff - 0x40
      0001EE 50 02            [24]  935 	jnc	00102$
                                    936 ;	../../../usb/main.c:117: return;
      0001F0 80 6C            [24]  937 	sjmp	00103$
      0001F2                        938 00102$:
                                    939 ;	../../../usb/main.c:119: usb_state.is_busy = true;
      0001F2 78 1C            [12]  940 	mov	r0,#_usb_state
      0001F4 E6               [12]  941 	mov	a,@r0
      0001F5 44 02            [12]  942 	orl	a,#0x02
      0001F7 F6               [12]  943 	mov	@r0,a
                                    944 ;	../../../usb/main.c:120: Ep3Buffer[64] = 0x3f; // packet id
      0001F8 90 01 C0         [24]  945 	mov	dptr,#(_Ep3Buffer + 0x0040)
      0001FB 74 3F            [12]  946 	mov	a,#0x3f
      0001FD F0               [24]  947 	movx	@dptr,a
                                    948 ;	../../../usb/main.c:121: memcpy(&Ep3Buffer[65], packet, len);
      0001FE E5 1F            [12]  949 	mov	a,_bp
      000200 24 FD            [12]  950 	add	a,#0xfd
      000202 F8               [12]  951 	mov	r0,a
      000203 86 03            [24]  952 	mov	ar3,@r0
      000205 7C 00            [12]  953 	mov	r4,#0x00
      000207 C0 03            [24]  954 	push	ar3
      000209 C0 04            [24]  955 	push	ar4
      00020B C0 05            [24]  956 	push	ar5
      00020D C0 06            [24]  957 	push	ar6
      00020F C0 07            [24]  958 	push	ar7
      000211 90 01 C1         [24]  959 	mov	dptr,#(_Ep3Buffer + 0x0041)
      000214 75 F0 00         [24]  960 	mov	b,#0x00
      000217 12 32 20         [24]  961 	lcall	___memcpy
      00021A E5 81            [12]  962 	mov	a,sp
      00021C 24 FB            [12]  963 	add	a,#0xfb
      00021E F5 81            [12]  964 	mov	sp,a
                                    965 ;	../../../usb/main.c:122: memset(&Ep3Buffer[65 + len], 0, 64 - len - 2);
      000220 E5 1F            [12]  966 	mov	a,_bp
      000222 24 FD            [12]  967 	add	a,#0xfd
      000224 F8               [12]  968 	mov	r0,a
      000225 86 06            [24]  969 	mov	ar6,@r0
      000227 7F 00            [12]  970 	mov	r7,#0x00
      000229 74 3E            [12]  971 	mov	a,#0x3e
      00022B C3               [12]  972 	clr	c
      00022C 9E               [12]  973 	subb	a,r6
      00022D FC               [12]  974 	mov	r4,a
      00022E E4               [12]  975 	clr	a
      00022F 9F               [12]  976 	subb	a,r7
      000230 FD               [12]  977 	mov	r5,a
      000231 74 41            [12]  978 	mov	a,#0x41
      000233 2E               [12]  979 	add	a,r6
      000234 FE               [12]  980 	mov	r6,a
      000235 E4               [12]  981 	clr	a
      000236 3F               [12]  982 	addc	a,r7
      000237 FF               [12]  983 	mov	r7,a
      000238 EE               [12]  984 	mov	a,r6
      000239 24 80            [12]  985 	add	a,#_Ep3Buffer
      00023B FE               [12]  986 	mov	r6,a
      00023C EF               [12]  987 	mov	a,r7
      00023D 34 01            [12]  988 	addc	a,#(_Ep3Buffer >> 8)
      00023F FF               [12]  989 	mov	r7,a
      000240 7B 00            [12]  990 	mov	r3,#0x00
      000242 C0 04            [24]  991 	push	ar4
      000244 C0 05            [24]  992 	push	ar5
      000246 E4               [12]  993 	clr	a
      000247 C0 E0            [24]  994 	push	acc
      000249 8E 82            [24]  995 	mov	dpl,r6
      00024B 8F 83            [24]  996 	mov	dph,r7
      00024D 8B F0            [24]  997 	mov	b,r3
      00024F 12 32 B3         [24]  998 	lcall	_memset
      000252 15 81            [12]  999 	dec	sp
      000254 15 81            [12] 1000 	dec	sp
      000256 15 81            [12] 1001 	dec	sp
                                   1002 ;	../../../usb/main.c:123: UEP3_T_LEN = 64;
      000258 75 D7 40         [24] 1003 	mov	_UEP3_T_LEN,#0x40
                                   1004 ;	../../../usb/main.c:124: UEP3_CTRL = UEP3_CTRL & ~MASK_UEP_T_RES | UEP_T_RES_ACK;
      00025B 53 D6 FC         [24] 1005 	anl	_UEP3_CTRL,#0xfc
      00025E                       1006 00103$:
                                   1007 ;	../../../usb/main.c:125: }
      00025E D0 1F            [24] 1008 	pop	_bp
      000260 22               [24] 1009 	ret
                                   1010 ;------------------------------------------------------------
                                   1011 ;Allocation info for local variables in function 'UARTInterrupt'
                                   1012 ;------------------------------------------------------------
                                   1013 ;	../../../usb/main.c:131: static INTERRUPT(UARTInterrupt, INT_NO_UART1)
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function UARTInterrupt
                                   1016 ;	-----------------------------------------
      000261                       1017 _UARTInterrupt:
      000261 C0 20            [24] 1018 	push	bits
      000263 C0 E0            [24] 1019 	push	acc
      000265 C0 F0            [24] 1020 	push	b
      000267 C0 82            [24] 1021 	push	dpl
      000269 C0 83            [24] 1022 	push	dph
      00026B C0 07            [24] 1023 	push	(0+7)
      00026D C0 06            [24] 1024 	push	(0+6)
      00026F C0 05            [24] 1025 	push	(0+5)
      000271 C0 04            [24] 1026 	push	(0+4)
      000273 C0 03            [24] 1027 	push	(0+3)
      000275 C0 02            [24] 1028 	push	(0+2)
      000277 C0 01            [24] 1029 	push	(0+1)
      000279 C0 00            [24] 1030 	push	(0+0)
      00027B C0 D0            [24] 1031 	push	psw
      00027D 75 D0 00         [24] 1032 	mov	psw,#0x00
                                   1033 ;	../../../usb/main.c:133: if (U1RI) {
      000280 30 C0 03         [24] 1034 	jnb	_U1RI,00103$
                                   1035 ;	../../../usb/main.c:134: uart_recv();
      000283 12 0C 43         [24] 1036 	lcall	_uart_recv
      000286                       1037 00103$:
                                   1038 ;	../../../usb/main.c:137: }
      000286 D0 D0            [24] 1039 	pop	psw
      000288 D0 00            [24] 1040 	pop	(0+0)
      00028A D0 01            [24] 1041 	pop	(0+1)
      00028C D0 02            [24] 1042 	pop	(0+2)
      00028E D0 03            [24] 1043 	pop	(0+3)
      000290 D0 04            [24] 1044 	pop	(0+4)
      000292 D0 05            [24] 1045 	pop	(0+5)
      000294 D0 06            [24] 1046 	pop	(0+6)
      000296 D0 07            [24] 1047 	pop	(0+7)
      000298 D0 83            [24] 1048 	pop	dph
      00029A D0 82            [24] 1049 	pop	dpl
      00029C D0 F0            [24] 1050 	pop	b
      00029E D0 E0            [24] 1051 	pop	acc
      0002A0 D0 20            [24] 1052 	pop	bits
      0002A2 32               [24] 1053 	reti
                                   1054 ;------------------------------------------------------------
                                   1055 ;Allocation info for local variables in function 'DisableWatchDog'
                                   1056 ;------------------------------------------------------------
                                   1057 ;	../../../usb/main.c:143: static void DisableWatchDog()
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function DisableWatchDog
                                   1060 ;	-----------------------------------------
      0002A3                       1061 _DisableWatchDog:
                                   1062 ;	../../../usb/main.c:145: SAFE_MOD = 0x55;
      0002A3 75 A1 55         [24] 1063 	mov	_SAFE_MOD,#0x55
                                   1064 ;	../../../usb/main.c:146: SAFE_MOD = 0xaa; //进入安全模式
      0002A6 75 A1 AA         [24] 1065 	mov	_SAFE_MOD,#0xaa
                                   1066 ;	../../../usb/main.c:147: GLOBAL_CFG &= ~bWDOG_EN; //禁用看门狗复位
      0002A9 53 B1 FE         [24] 1067 	anl	_GLOBAL_CFG,#0xfe
                                   1068 ;	../../../usb/main.c:148: SAFE_MOD = 0x00; //退出安全模式
      0002AC 75 A1 00         [24] 1069 	mov	_SAFE_MOD,#0x00
                                   1070 ;	../../../usb/main.c:149: }
      0002AF 22               [24] 1071 	ret
                                   1072 ;------------------------------------------------------------
                                   1073 ;Allocation info for local variables in function 'EP3_OUT'
                                   1074 ;------------------------------------------------------------
                                   1075 ;len                       Allocated to registers r7 
                                   1076 ;------------------------------------------------------------
                                   1077 ;	../../../usb/main.c:155: void EP3_OUT()
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function EP3_OUT
                                   1080 ;	-----------------------------------------
      0002B0                       1081 _EP3_OUT:
                                   1082 ;	../../../usb/main.c:157: uint8_t len = Ep3Buffer[2] + 2;
      0002B0 90 01 82         [24] 1083 	mov	dptr,#(_Ep3Buffer + 0x0002)
      0002B3 E0               [24] 1084 	movx	a,@dptr
      0002B4 FF               [12] 1085 	mov	r7,a
      0002B5 0F               [12] 1086 	inc	r7
      0002B6 0F               [12] 1087 	inc	r7
                                   1088 ;	../../../usb/main.c:158: if (Ep3Buffer[1] == 0xF0 && len == 2) {
      0002B7 90 01 81         [24] 1089 	mov	dptr,#(_Ep3Buffer + 0x0001)
      0002BA E0               [24] 1090 	movx	a,@dptr
      0002BB FE               [12] 1091 	mov	r6,a
      0002BC BE F0 26         [24] 1092 	cjne	r6,#0xf0,00102$
      0002BF BF 02 23         [24] 1093 	cjne	r7,#0x02,00102$
                                   1094 ;	../../../usb/main.c:159: DisableWatchDog();
      0002C2 C0 07            [24] 1095 	push	ar7
      0002C4 12 02 A3         [24] 1096 	lcall	_DisableWatchDog
                                   1097 ;	../../../usb/main.c:160: USB_CTRL = 0;
      0002C7 75 E2 00         [24] 1098 	mov	_USB_CTRL,#0x00
                                   1099 ;	../../../usb/main.c:161: UDEV_CTRL = 0x80;
      0002CA 75 D1 80         [24] 1100 	mov	_UDEV_CTRL,#0x80
                                   1101 ;	../../../usb/main.c:162: DelayMs(10);
      0002CD 90 00 0A         [24] 1102 	mov	dptr,#0x000a
      0002D0 12 0A 3B         [24] 1103 	lcall	_DelayMs
                                   1104 ;	../../../usb/main.c:163: isp_enter();
      0002D3 90 33 8A         [24] 1105 	mov	dptr,#_isp_enter
      0002D6 E4               [12] 1106 	clr	a
      0002D7 93               [24] 1107 	movc	a,@a+dptr
      0002D8 F8               [12] 1108 	mov	r0,a
      0002D9 74 01            [12] 1109 	mov	a,#0x01
      0002DB 93               [24] 1110 	movc	a,@a+dptr
      0002DC F5 83            [12] 1111 	mov	dph,a
      0002DE 88 82            [24] 1112 	mov	dpl,r0
      0002E0 12 00 59         [24] 1113 	lcall	__sdcc_call_dptr
      0002E3 D0 07            [24] 1114 	pop	ar7
      0002E5                       1115 00102$:
                                   1116 ;	../../../usb/main.c:165: uart_send_keymap(&Ep3Buffer[1], len);
      0002E5 C0 07            [24] 1117 	push	ar7
      0002E7 90 01 81         [24] 1118 	mov	dptr,#(_Ep3Buffer + 0x0001)
      0002EA 75 F0 00         [24] 1119 	mov	b,#0x00
      0002ED 12 0C AE         [24] 1120 	lcall	_uart_send_keymap
      0002F0 15 81            [12] 1121 	dec	sp
                                   1122 ;	../../../usb/main.c:166: }
      0002F2 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'EP1_OUT'
                                   1126 ;------------------------------------------------------------
                                   1127 ;datalen                   Allocated to registers 
                                   1128 ;------------------------------------------------------------
                                   1129 ;	../../../usb/main.c:172: void EP1_OUT()
                                   1130 ;	-----------------------------------------
                                   1131 ;	 function EP1_OUT
                                   1132 ;	-----------------------------------------
      0002F3                       1133 _EP1_OUT:
                                   1134 ;	../../../usb/main.c:174: uint8_t datalen = USB_RX_LEN;
      0002F3 E5 DB            [12] 1135 	mov	a,_USB_RX_LEN
                                   1136 ;	../../../usb/main.c:175: uart_send_led(Ep1Buffer[0]);
      0002F5 90 00 C0         [24] 1137 	mov	dptr,#_Ep1Buffer
      0002F8 E0               [24] 1138 	movx	a,@dptr
      0002F9 F5 82            [12] 1139 	mov	dpl,a
                                   1140 ;	../../../usb/main.c:176: }
      0002FB 02 0C 9F         [24] 1141 	ljmp	_uart_send_led
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'EnableWatchDog'
                                   1144 ;------------------------------------------------------------
                                   1145 ;	../../../usb/main.c:182: static void EnableWatchDog()
                                   1146 ;	-----------------------------------------
                                   1147 ;	 function EnableWatchDog
                                   1148 ;	-----------------------------------------
      0002FE                       1149 _EnableWatchDog:
                                   1150 ;	../../../usb/main.c:184: SAFE_MOD = 0x55;
      0002FE 75 A1 55         [24] 1151 	mov	_SAFE_MOD,#0x55
                                   1152 ;	../../../usb/main.c:185: SAFE_MOD = 0xaa; //进入安全模式
      000301 75 A1 AA         [24] 1153 	mov	_SAFE_MOD,#0xaa
                                   1154 ;	../../../usb/main.c:186: GLOBAL_CFG |= bWDOG_EN; //启动看门狗复位
      000304 43 B1 01         [24] 1155 	orl	_GLOBAL_CFG,#0x01
                                   1156 ;	../../../usb/main.c:187: SAFE_MOD = 0x00; //退出安全模式
      000307 75 A1 00         [24] 1157 	mov	_SAFE_MOD,#0x00
                                   1158 ;	../../../usb/main.c:188: WDOG_COUNT = 0; //看门狗赋初值
      00030A 75 FF 00         [24] 1159 	mov	_WDOG_COUNT,#0x00
                                   1160 ;	../../../usb/main.c:189: }
      00030D 22               [24] 1161 	ret
                                   1162 ;------------------------------------------------------------
                                   1163 ;Allocation info for local variables in function 'FeedWatchDog'
                                   1164 ;------------------------------------------------------------
                                   1165 ;	../../../usb/main.c:195: static void FeedWatchDog()
                                   1166 ;	-----------------------------------------
                                   1167 ;	 function FeedWatchDog
                                   1168 ;	-----------------------------------------
      00030E                       1169 _FeedWatchDog:
                                   1170 ;	../../../usb/main.c:197: WDOG_COUNT = 0x00;
      00030E 75 FF 00         [24] 1171 	mov	_WDOG_COUNT,#0x00
                                   1172 ;	../../../usb/main.c:198: }
      000311 22               [24] 1173 	ret
                                   1174 ;------------------------------------------------------------
                                   1175 ;Allocation info for local variables in function 'timer_tick'
                                   1176 ;------------------------------------------------------------
                                   1177 ;i                         Allocated to registers r6 r7 
                                   1178 ;------------------------------------------------------------
                                   1179 ;	../../../usb/main.c:208: TIMER_INIT(timer, timers)
                                   1180 ;	-----------------------------------------
                                   1181 ;	 function timer_tick
                                   1182 ;	-----------------------------------------
      000312                       1183 _timer_tick:
      000312 7E 00            [12] 1184 	mov	r6,#0x00
      000314 7F 00            [12] 1185 	mov	r7,#0x00
      000316                       1186 00103$:
      000316 C3               [12] 1187 	clr	c
      000317 EE               [12] 1188 	mov	a,r6
      000318 94 03            [12] 1189 	subb	a,#0x03
      00031A EF               [12] 1190 	mov	a,r7
      00031B 64 80            [12] 1191 	xrl	a,#0x80
      00031D 94 80            [12] 1192 	subb	a,#0x80
      00031F 50 21            [24] 1193 	jnc	00105$
      000321 EE               [12] 1194 	mov	a,r6
      000322 2E               [12] 1195 	add	a,r6
      000323 FC               [12] 1196 	mov	r4,a
      000324 EF               [12] 1197 	mov	a,r7
      000325 33               [12] 1198 	rlc	a
      000326 EC               [12] 1199 	mov	a,r4
      000327 24 10            [12] 1200 	add	a,#_timer_counter
      000329 F9               [12] 1201 	mov	r1,a
      00032A 87 04            [24] 1202 	mov	ar4,@r1
      00032C 09               [12] 1203 	inc	r1
      00032D 87 05            [24] 1204 	mov	ar5,@r1
      00032F 19               [12] 1205 	dec	r1
      000330 0C               [12] 1206 	inc	r4
      000331 BC 00 01         [24] 1207 	cjne	r4,#0x00,00117$
      000334 0D               [12] 1208 	inc	r5
      000335                       1209 00117$:
      000335 A7 04            [24] 1210 	mov	@r1,ar4
      000337 09               [12] 1211 	inc	r1
      000338 A7 05            [24] 1212 	mov	@r1,ar5
      00033A 19               [12] 1213 	dec	r1
      00033B 0E               [12] 1214 	inc	r6
      00033C BE 00 D7         [24] 1215 	cjne	r6,#0x00,00103$
      00033F 0F               [12] 1216 	inc	r7
      000340 80 D4            [24] 1217 	sjmp	00103$
      000342                       1218 00105$:
      000342 22               [24] 1219 	ret
                                   1220 ;------------------------------------------------------------
                                   1221 ;Allocation info for local variables in function 'timer_task_exec'
                                   1222 ;------------------------------------------------------------
                                   1223 ;i                         Allocated to registers r6 r7 
                                   1224 ;------------------------------------------------------------
                                   1225 ;	../../../usb/main.c:208: 
                                   1226 ;	-----------------------------------------
                                   1227 ;	 function timer_task_exec
                                   1228 ;	-----------------------------------------
      000343                       1229 _timer_task_exec:
      000343 7E 00            [12] 1230 	mov	r6,#0x00
      000345 7F 00            [12] 1231 	mov	r7,#0x00
      000347                       1232 00105$:
      000347 C3               [12] 1233 	clr	c
      000348 EE               [12] 1234 	mov	a,r6
      000349 94 03            [12] 1235 	subb	a,#0x03
      00034B EF               [12] 1236 	mov	a,r7
      00034C 64 80            [12] 1237 	xrl	a,#0x80
      00034E 94 80            [12] 1238 	subb	a,#0x80
      000350 50 75            [24] 1239 	jnc	00107$
      000352 EE               [12] 1240 	mov	a,r6
      000353 2E               [12] 1241 	add	a,r6
      000354 FC               [12] 1242 	mov	r4,a
      000355 EF               [12] 1243 	mov	a,r7
      000356 33               [12] 1244 	rlc	a
      000357 EC               [12] 1245 	mov	a,r4
      000358 24 10            [12] 1246 	add	a,#_timer_counter
      00035A F9               [12] 1247 	mov	r1,a
      00035B 87 04            [24] 1248 	mov	ar4,@r1
      00035D 09               [12] 1249 	inc	r1
      00035E 87 05            [24] 1250 	mov	ar5,@r1
      000360 19               [12] 1251 	dec	r1
      000361 EE               [12] 1252 	mov	a,r6
      000362 2E               [12] 1253 	add	a,r6
      000363 FA               [12] 1254 	mov	r2,a
      000364 EF               [12] 1255 	mov	a,r7
      000365 33               [12] 1256 	rlc	a
      000366 FB               [12] 1257 	mov	r3,a
      000367 EA               [12] 1258 	mov	a,r2
      000368 2A               [12] 1259 	add	a,r2
      000369 FA               [12] 1260 	mov	r2,a
      00036A EB               [12] 1261 	mov	a,r3
      00036B 33               [12] 1262 	rlc	a
      00036C FB               [12] 1263 	mov	r3,a
      00036D EA               [12] 1264 	mov	a,r2
      00036E 24 8C            [12] 1265 	add	a,#_timers
      000370 F5 82            [12] 1266 	mov	dpl,a
      000372 EB               [12] 1267 	mov	a,r3
      000373 34 33            [12] 1268 	addc	a,#(_timers >> 8)
      000375 F5 83            [12] 1269 	mov	dph,a
      000377 C0 06            [24] 1270 	push	ar6
      000379 C0 07            [24] 1271 	push	ar7
      00037B E4               [12] 1272 	clr	a
      00037C 93               [24] 1273 	movc	a,@a+dptr
      00037D FE               [12] 1274 	mov	r6,a
      00037E A3               [24] 1275 	inc	dptr
      00037F E4               [12] 1276 	clr	a
      000380 93               [24] 1277 	movc	a,@a+dptr
      000381 FF               [12] 1278 	mov	r7,a
      000382 C3               [12] 1279 	clr	c
      000383 EC               [12] 1280 	mov	a,r4
      000384 9E               [12] 1281 	subb	a,r6
      000385 ED               [12] 1282 	mov	a,r5
      000386 9F               [12] 1283 	subb	a,r7
      000387 D0 07            [24] 1284 	pop	ar7
      000389 D0 06            [24] 1285 	pop	ar6
      00038B 40 32            [24] 1286 	jc	00106$
      00038D 77 00            [12] 1287 	mov	@r1,#0x00
      00038F 09               [12] 1288 	inc	r1
      000390 77 00            [12] 1289 	mov	@r1,#0x00
      000392 19               [12] 1290 	dec	r1
      000393 EA               [12] 1291 	mov	a,r2
      000394 24 8C            [12] 1292 	add	a,#_timers
      000396 FA               [12] 1293 	mov	r2,a
      000397 EB               [12] 1294 	mov	a,r3
      000398 34 33            [12] 1295 	addc	a,#(_timers >> 8)
      00039A FB               [12] 1296 	mov	r3,a
      00039B 8A 82            [24] 1297 	mov	dpl,r2
      00039D 8B 83            [24] 1298 	mov	dph,r3
      00039F A3               [24] 1299 	inc	dptr
      0003A0 A3               [24] 1300 	inc	dptr
      0003A1 E4               [12] 1301 	clr	a
      0003A2 93               [24] 1302 	movc	a,@a+dptr
      0003A3 FC               [12] 1303 	mov	r4,a
      0003A4 A3               [24] 1304 	inc	dptr
      0003A5 E4               [12] 1305 	clr	a
      0003A6 93               [24] 1306 	movc	a,@a+dptr
      0003A7 FD               [12] 1307 	mov	r5,a
      0003A8 C0 07            [24] 1308 	push	ar7
      0003AA C0 06            [24] 1309 	push	ar6
      0003AC C0 05            [24] 1310 	push	ar5
      0003AE C0 04            [24] 1311 	push	ar4
      0003B0 8C 82            [24] 1312 	mov	dpl,r4
      0003B2 8D 83            [24] 1313 	mov	dph,r5
      0003B4 12 00 59         [24] 1314 	lcall	__sdcc_call_dptr
      0003B7 D0 04            [24] 1315 	pop	ar4
      0003B9 D0 05            [24] 1316 	pop	ar5
      0003BB D0 06            [24] 1317 	pop	ar6
      0003BD D0 07            [24] 1318 	pop	ar7
      0003BF                       1319 00106$:
      0003BF 0E               [12] 1320 	inc	r6
      0003C0 BE 00 01         [24] 1321 	cjne	r6,#0x00,00124$
      0003C3 0F               [12] 1322 	inc	r7
      0003C4                       1323 00124$:
      0003C4 02 03 47         [24] 1324 	ljmp	00105$
      0003C7                       1325 00107$:
      0003C7 22               [24] 1326 	ret
                                   1327 ;------------------------------------------------------------
                                   1328 ;Allocation info for local variables in function 'TimerInterrupt'
                                   1329 ;------------------------------------------------------------
                                   1330 ;	../../../usb/main.c:210: static INTERRUPT(TimerInterrupt, INT_NO_TKEY)
                                   1331 ;	-----------------------------------------
                                   1332 ;	 function TimerInterrupt
                                   1333 ;	-----------------------------------------
      0003C8                       1334 _TimerInterrupt:
      0003C8 C0 20            [24] 1335 	push	bits
      0003CA C0 E0            [24] 1336 	push	acc
      0003CC C0 F0            [24] 1337 	push	b
      0003CE C0 82            [24] 1338 	push	dpl
      0003D0 C0 83            [24] 1339 	push	dph
      0003D2 C0 07            [24] 1340 	push	(0+7)
      0003D4 C0 06            [24] 1341 	push	(0+6)
      0003D6 C0 05            [24] 1342 	push	(0+5)
      0003D8 C0 04            [24] 1343 	push	(0+4)
      0003DA C0 03            [24] 1344 	push	(0+3)
      0003DC C0 02            [24] 1345 	push	(0+2)
      0003DE C0 01            [24] 1346 	push	(0+1)
      0003E0 C0 00            [24] 1347 	push	(0+0)
      0003E2 C0 D0            [24] 1348 	push	psw
      0003E4 75 D0 00         [24] 1349 	mov	psw,#0x00
                                   1350 ;	../../../usb/main.c:212: TKEY_CTRL = 0;
      0003E7 75 C3 00         [24] 1351 	mov	_TKEY_CTRL,#0x00
                                   1352 ;	../../../usb/main.c:213: timer_tick();
      0003EA 12 03 12         [24] 1353 	lcall	_timer_tick
                                   1354 ;	../../../usb/main.c:214: }
      0003ED D0 D0            [24] 1355 	pop	psw
      0003EF D0 00            [24] 1356 	pop	(0+0)
      0003F1 D0 01            [24] 1357 	pop	(0+1)
      0003F3 D0 02            [24] 1358 	pop	(0+2)
      0003F5 D0 03            [24] 1359 	pop	(0+3)
      0003F7 D0 04            [24] 1360 	pop	(0+4)
      0003F9 D0 05            [24] 1361 	pop	(0+5)
      0003FB D0 06            [24] 1362 	pop	(0+6)
      0003FD D0 07            [24] 1363 	pop	(0+7)
      0003FF D0 83            [24] 1364 	pop	dph
      000401 D0 82            [24] 1365 	pop	dpl
      000403 D0 F0            [24] 1366 	pop	b
      000405 D0 E0            [24] 1367 	pop	acc
      000407 D0 20            [24] 1368 	pop	bits
      000409 32               [24] 1369 	reti
                                   1370 ;------------------------------------------------------------
                                   1371 ;Allocation info for local variables in function 'UsbSuspendEvt'
                                   1372 ;------------------------------------------------------------
                                   1373 ;suspend                   Allocated to registers r7 
                                   1374 ;------------------------------------------------------------
                                   1375 ;	../../../usb/main.c:220: void UsbSuspendEvt(bool suspend)
                                   1376 ;	-----------------------------------------
                                   1377 ;	 function UsbSuspendEvt
                                   1378 ;	-----------------------------------------
      00040A                       1379 _UsbSuspendEvt:
      00040A AF 82            [24] 1380 	mov	r7,dpl
                                   1381 ;	../../../usb/main.c:222: usb_state.is_sleep = suspend;
      00040C 78 1C            [12] 1382 	mov	r0,#_usb_state
      00040E EF               [12] 1383 	mov	a,r7
      00040F 13               [12] 1384 	rrc	a
      000410 E6               [12] 1385 	mov	a,@r0
      000411 92 E2            [24] 1386 	mov	acc.2,c
      000413 F6               [12] 1387 	mov	@r0,a
                                   1388 ;	../../../usb/main.c:223: }
      000414 22               [24] 1389 	ret
                                   1390 ;------------------------------------------------------------
                                   1391 ;Allocation info for local variables in function 'main'
                                   1392 ;------------------------------------------------------------
                                   1393 ;	../../../usb/main.c:225: static void main()
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function main
                                   1396 ;	-----------------------------------------
      000415                       1397 _main:
                                   1398 ;	../../../usb/main.c:227: CfgSysClock();
      000415 12 0A 07         [24] 1399 	lcall	_CfgSysClock
                                   1400 ;	../../../usb/main.c:228: DelayMs(5); //修改主频等待内部晶振稳定,必加
      000418 90 00 05         [24] 1401 	mov	dptr,#0x0005
      00041B 12 0A 3B         [24] 1402 	lcall	_DelayMs
                                   1403 ;	../../../usb/main.c:230: uart_init();
      00041E 12 0B 43         [24] 1404 	lcall	_uart_init
                                   1405 ;	../../../usb/main.c:231: DelayMs(5);
      000421 90 00 05         [24] 1406 	mov	dptr,#0x0005
      000424 12 0A 3B         [24] 1407 	lcall	_DelayMs
                                   1408 ;	../../../usb/main.c:233: IE_TKEY = 1; // 运行Timer
                                   1409 ;	assignBit
      000427 D2 E9            [12] 1410 	setb	_IE_TKEY
                                   1411 ;	../../../usb/main.c:235: USBDeviceInit(); //USB设备模式初始化
      000429 12 09 A3         [24] 1412 	lcall	_USBDeviceInit
                                   1413 ;	../../../usb/main.c:236: EnableWatchDog();
      00042C 12 02 FE         [24] 1414 	lcall	_EnableWatchDog
                                   1415 ;	../../../usb/main.c:238: Dap_Init();
      00042F 12 2C F7         [24] 1416 	lcall	_Dap_Init
                                   1417 ;	../../../usb/main.c:240: EA = 1; //允许单片机中断
                                   1418 ;	assignBit
      000432 D2 AF            [12] 1419 	setb	_EA
                                   1420 ;	../../../usb/main.c:241: UEP1_T_LEN = 0; //预使用发送长度一定要清空
      000434 75 D3 00         [24] 1421 	mov	_UEP1_T_LEN,#0x00
                                   1422 ;	../../../usb/main.c:242: UEP2_T_LEN = 0; //预使用发送长度一定要清空
      000437 75 D5 00         [24] 1423 	mov	_UEP2_T_LEN,#0x00
                                   1424 ;	../../../usb/main.c:243: UEP3_T_LEN = 0;
      00043A 75 D7 00         [24] 1425 	mov	_UEP3_T_LEN,#0x00
                                   1426 ;	../../../usb/main.c:244: UEP4_T_LEN = 0;
      00043D 75 DF 00         [24] 1427 	mov	_UEP4_T_LEN,#0x00
                                   1428 ;	../../../usb/main.c:247: P1_MOD_OC -= (P1_MOD_OC & bMOSI);
      000440 AF 92            [24] 1429 	mov	r7,_P1_MOD_OC
      000442 53 07 20         [24] 1430 	anl	ar7,#0x20
      000445 E5 92            [12] 1431 	mov	a,_P1_MOD_OC
      000447 FE               [12] 1432 	mov	r6,a
      000448 C3               [12] 1433 	clr	c
      000449 9F               [12] 1434 	subb	a,r7
      00044A F5 92            [12] 1435 	mov	_P1_MOD_OC,a
                                   1436 ;	../../../usb/main.c:248: MOSI = false;
                                   1437 ;	assignBit
      00044C C2 95            [12] 1438 	clr	_MOSI
                                   1439 ;	../../../usb/main.c:250: while (1) {
      00044E                       1440 00102$:
                                   1441 ;	../../../usb/main.c:251: timer_task_exec();
      00044E 12 03 43         [24] 1442 	lcall	_timer_task_exec
                                   1443 ;	../../../usb/main.c:253: }
      000451 80 FB            [24] 1444 	sjmp	00102$
                                   1445 	.area CSEG    (CODE)
                                   1446 	.area CONST   (CODE)
      00338A                       1447 _isp_enter:
      00338A 00 38                 1448 	.byte #0x00,#0x38
      00338C                       1449 _timers:
      00338C F4 01                 1450 	.byte #0xf4, #0x01	; 500
      00338E 0E 03                 1451 	.byte _FeedWatchDog, (_FeedWatchDog >> 8)
      003390 01 00                 1452 	.byte #0x01, #0x00	; 1
      003392 F0 0B                 1453 	.byte _uart_check, (_uart_check >> 8)
      003394 01 00                 1454 	.byte #0x01, #0x00	; 1
      003396 FA 2C                 1455 	.byte _Dap_Routine, (_Dap_Routine >> 8)
                                   1456 	.area XINIT   (CODE)
                                   1457 	.area CABS    (ABS,CODE)

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ResponseConfigurePacket
                                     12 	.globl _KeyboardExtraUpload
                                     13 	.globl _KeyboardGenericUpload
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
                                    264 	.globl _uart_rx_state
                                    265 	.globl _uart_init
                                    266 	.globl _uart_check
                                    267 	.globl _uart_recv
                                    268 	.globl _uart_send_led
                                    269 	.globl _uart_send_keymap
                                    270 ;--------------------------------------------------------
                                    271 ; special function registers
                                    272 ;--------------------------------------------------------
                                    273 	.area RSEG    (ABS,DATA)
      000000                        274 	.org 0x0000
                           0000D0   275 _PSW	=	0x00d0
                           0000E0   276 _ACC	=	0x00e0
                           0000F0   277 _B	=	0x00f0
                           000081   278 _SP	=	0x0081
                           000082   279 _DPL	=	0x0082
                           000083   280 _DPH	=	0x0083
                           0000A1   281 _SAFE_MOD	=	0x00a1
                           0000B1   282 _GLOBAL_CFG	=	0x00b1
                           000087   283 _PCON	=	0x0087
                           0000B9   284 _CLOCK_CFG	=	0x00b9
                           0000A9   285 _WAKE_CTRL	=	0x00a9
                           0000FE   286 _RESET_KEEP	=	0x00fe
                           0000FF   287 _WDOG_COUNT	=	0x00ff
                           0000A8   288 _IE	=	0x00a8
                           0000B8   289 _IP	=	0x00b8
                           0000E8   290 _IE_EX	=	0x00e8
                           0000E9   291 _IP_EX	=	0x00e9
                           0000C7   292 _GPIO_IE	=	0x00c7
                           008584   293 _ROM_ADDR	=	0x8584
                           000084   294 _ROM_ADDR_L	=	0x0084
                           000085   295 _ROM_ADDR_H	=	0x0085
                           008F8E   296 _ROM_DATA	=	0x8f8e
                           00008E   297 _ROM_DATA_L	=	0x008e
                           00008F   298 _ROM_DATA_H	=	0x008f
                           000086   299 _ROM_CTRL	=	0x0086
                           000090   300 _P1	=	0x0090
                           000092   301 _P1_MOD_OC	=	0x0092
                           000093   302 _P1_DIR_PU	=	0x0093
                           0000A0   303 _P2	=	0x00a0
                           0000B0   304 _P3	=	0x00b0
                           000096   305 _P3_MOD_OC	=	0x0096
                           000097   306 _P3_DIR_PU	=	0x0097
                           0000C6   307 _PIN_FUNC	=	0x00c6
                           0000A2   308 _XBUS_AUX	=	0x00a2
                           000088   309 _TCON	=	0x0088
                           000089   310 _TMOD	=	0x0089
                           00008A   311 _TL0	=	0x008a
                           00008B   312 _TL1	=	0x008b
                           00008C   313 _TH0	=	0x008c
                           00008D   314 _TH1	=	0x008d
                           000098   315 _SCON	=	0x0098
                           000099   316 _SBUF	=	0x0099
                           0000C8   317 _T2CON	=	0x00c8
                           0000C9   318 _T2MOD	=	0x00c9
                           00CBCA   319 _RCAP2	=	0xcbca
                           0000CA   320 _RCAP2L	=	0x00ca
                           0000CB   321 _RCAP2H	=	0x00cb
                           00CDCC   322 _T2COUNT	=	0xcdcc
                           0000CC   323 _TL2	=	0x00cc
                           0000CD   324 _TH2	=	0x00cd
                           00CFCE   325 _T2CAP1	=	0xcfce
                           0000CE   326 _T2CAP1L	=	0x00ce
                           0000CF   327 _T2CAP1H	=	0x00cf
                           00009B   328 _PWM_DATA2	=	0x009b
                           00009C   329 _PWM_DATA1	=	0x009c
                           00009D   330 _PWM_CTRL	=	0x009d
                           00009E   331 _PWM_CK_SE	=	0x009e
                           0000F8   332 _SPI0_STAT	=	0x00f8
                           0000F9   333 _SPI0_DATA	=	0x00f9
                           0000FA   334 _SPI0_CTRL	=	0x00fa
                           0000FB   335 _SPI0_CK_SE	=	0x00fb
                           0000FC   336 _SPI0_SETUP	=	0x00fc
                           0000C0   337 _SCON1	=	0x00c0
                           0000C1   338 _SBUF1	=	0x00c1
                           0000C2   339 _SBAUD1	=	0x00c2
                           000080   340 _ADC_CTRL	=	0x0080
                           00009A   341 _ADC_CFG	=	0x009a
                           00009F   342 _ADC_DATA	=	0x009f
                           0000C3   343 _TKEY_CTRL	=	0x00c3
                           00C5C4   344 _TKEY_DAT	=	0xc5c4
                           0000C4   345 _TKEY_DATL	=	0x00c4
                           0000C5   346 _TKEY_DATH	=	0x00c5
                           000091   347 _USB_C_CTRL	=	0x0091
                           0000D1   348 _UDEV_CTRL	=	0x00d1
                           0000D2   349 _UEP1_CTRL	=	0x00d2
                           0000D3   350 _UEP1_T_LEN	=	0x00d3
                           0000D4   351 _UEP2_CTRL	=	0x00d4
                           0000D5   352 _UEP2_T_LEN	=	0x00d5
                           0000D6   353 _UEP3_CTRL	=	0x00d6
                           0000D7   354 _UEP3_T_LEN	=	0x00d7
                           0000D8   355 _USB_INT_FG	=	0x00d8
                           0000D9   356 _USB_INT_ST	=	0x00d9
                           0000DA   357 _USB_MIS_ST	=	0x00da
                           0000DB   358 _USB_RX_LEN	=	0x00db
                           0000DC   359 _UEP0_CTRL	=	0x00dc
                           0000DD   360 _UEP0_T_LEN	=	0x00dd
                           0000DE   361 _UEP4_CTRL	=	0x00de
                           0000DF   362 _UEP4_T_LEN	=	0x00df
                           0000E1   363 _USB_INT_EN	=	0x00e1
                           0000E2   364 _USB_CTRL	=	0x00e2
                           0000E3   365 _USB_DEV_AD	=	0x00e3
                           00E5E4   366 _UEP2_DMA	=	0xe5e4
                           0000E4   367 _UEP2_DMA_L	=	0x00e4
                           0000E5   368 _UEP2_DMA_H	=	0x00e5
                           00E7E6   369 _UEP3_DMA	=	0xe7e6
                           0000E6   370 _UEP3_DMA_L	=	0x00e6
                           0000E7   371 _UEP3_DMA_H	=	0x00e7
                           0000EA   372 _UEP4_1_MOD	=	0x00ea
                           0000EB   373 _UEP2_3_MOD	=	0x00eb
                           00EDEC   374 _UEP0_DMA	=	0xedec
                           0000EC   375 _UEP0_DMA_L	=	0x00ec
                           0000ED   376 _UEP0_DMA_H	=	0x00ed
                           00EFEE   377 _UEP1_DMA	=	0xefee
                           0000EE   378 _UEP1_DMA_L	=	0x00ee
                           0000EF   379 _UEP1_DMA_H	=	0x00ef
                                    380 ;--------------------------------------------------------
                                    381 ; special function bits
                                    382 ;--------------------------------------------------------
                                    383 	.area RSEG    (ABS,DATA)
      000000                        384 	.org 0x0000
                           0000D7   385 _CY	=	0x00d7
                           0000D6   386 _AC	=	0x00d6
                           0000D5   387 _F0	=	0x00d5
                           0000D4   388 _RS1	=	0x00d4
                           0000D3   389 _RS0	=	0x00d3
                           0000D2   390 _OV	=	0x00d2
                           0000D1   391 _F1	=	0x00d1
                           0000D0   392 _P	=	0x00d0
                           0000AF   393 _EA	=	0x00af
                           0000AE   394 _E_DIS	=	0x00ae
                           0000AD   395 _ET2	=	0x00ad
                           0000AC   396 _ES	=	0x00ac
                           0000AB   397 _ET1	=	0x00ab
                           0000AA   398 _EX1	=	0x00aa
                           0000A9   399 _ET0	=	0x00a9
                           0000A8   400 _EX0	=	0x00a8
                           0000AF   401 _PH_FLAG	=	0x00af
                           0000AE   402 _PL_FLAG	=	0x00ae
                           0000AD   403 _PT2	=	0x00ad
                           0000AC   404 _PS	=	0x00ac
                           0000AB   405 _PT1	=	0x00ab
                           0000AA   406 _PX1	=	0x00aa
                           0000A9   407 _PT0	=	0x00a9
                           0000A8   408 _PX0	=	0x00a8
                           0000EF   409 _IE_WDOG	=	0x00ef
                           0000EE   410 _IE_GPIO	=	0x00ee
                           0000ED   411 _IE_PWMX	=	0x00ed
                           0000EC   412 _IE_UART1	=	0x00ec
                           0000EB   413 _IE_ADC	=	0x00eb
                           0000EA   414 _IE_USB	=	0x00ea
                           0000E9   415 _IE_TKEY	=	0x00e9
                           0000E8   416 _IE_SPI0	=	0x00e8
                           000097   417 _P1_7	=	0x0097
                           000097   418 _SCK	=	0x0097
                           000097   419 _TXD1	=	0x0097
                           000097   420 _TIN5	=	0x0097
                           000096   421 _P1_6	=	0x0096
                           000096   422 _MISO	=	0x0096
                           000096   423 _RXD1	=	0x0096
                           000096   424 _TIN4	=	0x0096
                           000095   425 _P1_5	=	0x0095
                           000095   426 _MOSI	=	0x0095
                           000095   427 _PWM1	=	0x0095
                           000095   428 _TIN3	=	0x0095
                           000095   429 _UCC2	=	0x0095
                           000095   430 _AIN2	=	0x0095
                           000094   431 _P1_4	=	0x0094
                           000094   432 _T2_	=	0x0094
                           000094   433 _CAP1_	=	0x0094
                           000094   434 _SCS	=	0x0094
                           000094   435 _TIN2	=	0x0094
                           000094   436 _UCC1	=	0x0094
                           000094   437 _AIN1	=	0x0094
                           000093   438 _P1_3	=	0x0093
                           000093   439 _TXD_	=	0x0093
                           000092   440 _P1_2	=	0x0092
                           000092   441 _RXD_	=	0x0092
                           000091   442 _P1_1	=	0x0091
                           000091   443 _T2EX	=	0x0091
                           000091   444 _CAP2	=	0x0091
                           000091   445 _TIN1	=	0x0091
                           000091   446 _VBUS2	=	0x0091
                           000091   447 _AIN0	=	0x0091
                           000090   448 _P1_0	=	0x0090
                           000090   449 _T2	=	0x0090
                           000090   450 _CAP1	=	0x0090
                           000090   451 _TIN0	=	0x0090
                           0000B7   452 _P3_7	=	0x00b7
                           0000B7   453 _UDM	=	0x00b7
                           0000B6   454 _P3_6	=	0x00b6
                           0000B6   455 _UDP	=	0x00b6
                           0000B5   456 _P3_5	=	0x00b5
                           0000B5   457 _T1	=	0x00b5
                           0000B4   458 _P3_4	=	0x00b4
                           0000B4   459 _PWM2	=	0x00b4
                           0000B4   460 _RXD1_	=	0x00b4
                           0000B4   461 _T0	=	0x00b4
                           0000B3   462 _P3_3	=	0x00b3
                           0000B3   463 _INT1	=	0x00b3
                           0000B2   464 _P3_2	=	0x00b2
                           0000B2   465 _TXD1_	=	0x00b2
                           0000B2   466 _INT0	=	0x00b2
                           0000B2   467 _VBUS1	=	0x00b2
                           0000B2   468 _AIN3	=	0x00b2
                           0000B1   469 _P3_1	=	0x00b1
                           0000B1   470 _PWM2_	=	0x00b1
                           0000B1   471 _TXD	=	0x00b1
                           0000B0   472 _P3_0	=	0x00b0
                           0000B0   473 _PWM1_	=	0x00b0
                           0000B0   474 _RXD	=	0x00b0
                           00008F   475 _TF1	=	0x008f
                           00008E   476 _TR1	=	0x008e
                           00008D   477 _TF0	=	0x008d
                           00008C   478 _TR0	=	0x008c
                           00008B   479 _IE1	=	0x008b
                           00008A   480 _IT1	=	0x008a
                           000089   481 _IE0	=	0x0089
                           000088   482 _IT0	=	0x0088
                           00009F   483 _SM0	=	0x009f
                           00009E   484 _SM1	=	0x009e
                           00009D   485 _SM2	=	0x009d
                           00009C   486 _REN	=	0x009c
                           00009B   487 _TB8	=	0x009b
                           00009A   488 _RB8	=	0x009a
                           000099   489 _TI	=	0x0099
                           000098   490 _RI	=	0x0098
                           0000CF   491 _TF2	=	0x00cf
                           0000CF   492 _CAP1F	=	0x00cf
                           0000CE   493 _EXF2	=	0x00ce
                           0000CD   494 _RCLK	=	0x00cd
                           0000CC   495 _TCLK	=	0x00cc
                           0000CB   496 _EXEN2	=	0x00cb
                           0000CA   497 _TR2	=	0x00ca
                           0000C9   498 _C_T2	=	0x00c9
                           0000C8   499 _CP_RL2	=	0x00c8
                           0000FF   500 _S0_FST_ACT	=	0x00ff
                           0000FE   501 _S0_IF_OV	=	0x00fe
                           0000FD   502 _S0_IF_FIRST	=	0x00fd
                           0000FC   503 _S0_IF_BYTE	=	0x00fc
                           0000FB   504 _S0_FREE	=	0x00fb
                           0000FA   505 _S0_T_FIFO	=	0x00fa
                           0000F8   506 _S0_R_FIFO	=	0x00f8
                           0000C7   507 _U1SM0	=	0x00c7
                           0000C5   508 _U1SMOD	=	0x00c5
                           0000C4   509 _U1REN	=	0x00c4
                           0000C3   510 _U1TB8	=	0x00c3
                           0000C2   511 _U1RB8	=	0x00c2
                           0000C1   512 _U1TI	=	0x00c1
                           0000C0   513 _U1RI	=	0x00c0
                           000087   514 _CMPO	=	0x0087
                           000086   515 _CMP_IF	=	0x0086
                           000085   516 _ADC_IF	=	0x0085
                           000084   517 _ADC_START	=	0x0084
                           000083   518 _CMP_CHAN	=	0x0083
                           000081   519 _ADC_CHAN1	=	0x0081
                           000080   520 _ADC_CHAN0	=	0x0080
                           0000DF   521 _U_IS_NAK	=	0x00df
                           0000DE   522 _U_TOG_OK	=	0x00de
                           0000DD   523 _U_SIE_FREE	=	0x00dd
                           0000DC   524 _UIF_FIFO_OV	=	0x00dc
                           0000DB   525 _UIF_HST_SOF	=	0x00db
                           0000DA   526 _UIF_SUSPEND	=	0x00da
                           0000D9   527 _UIF_TRANSFER	=	0x00d9
                           0000D8   528 _UIF_DETECT	=	0x00d8
                           0000D8   529 _UIF_BUS_RST	=	0x00d8
                                    530 ;--------------------------------------------------------
                                    531 ; overlayable register banks
                                    532 ;--------------------------------------------------------
                                    533 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        534 	.ds 8
                                    535 ;--------------------------------------------------------
                                    536 ; overlayable bit register bank
                                    537 ;--------------------------------------------------------
                                    538 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        539 bits:
      000020                        540 	.ds 1
                           008000   541 	b0 = bits[0]
                           008100   542 	b1 = bits[1]
                           008200   543 	b2 = bits[2]
                           008300   544 	b3 = bits[3]
                           008400   545 	b4 = bits[4]
                           008500   546 	b5 = bits[5]
                           008600   547 	b6 = bits[6]
                           008700   548 	b7 = bits[7]
                                    549 ;--------------------------------------------------------
                                    550 ; internal ram data
                                    551 ;--------------------------------------------------------
                                    552 	.area DSEG    (DATA)
      000021                        553 _uart_rx_state::
      000021                        554 	.ds 1
      000022                        555 _recv_len:
      000022                        556 	.ds 1
      000023                        557 _pos:
      000023                        558 	.ds 1
      000024                        559 _uart_arrive_flag:
      000024                        560 	.ds 1
      000025                        561 _last_success:
      000025                        562 	.ds 1
      000026                        563 _last_pos:
      000026                        564 	.ds 1
      000027                        565 _send_len:
      000027                        566 	.ds 1
                                    567 ;--------------------------------------------------------
                                    568 ; overlayable items in internal ram 
                                    569 ;--------------------------------------------------------
                                    570 ;--------------------------------------------------------
                                    571 ; indirectly addressable internal ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area ISEG    (DATA)
                                    574 ;--------------------------------------------------------
                                    575 ; absolute internal ram data
                                    576 ;--------------------------------------------------------
                                    577 	.area IABS    (ABS,DATA)
                                    578 	.area IABS    (ABS,DATA)
                                    579 ;--------------------------------------------------------
                                    580 ; bit data
                                    581 ;--------------------------------------------------------
                                    582 	.area BSEG    (BIT)
                                    583 ;--------------------------------------------------------
                                    584 ; paged external ram data
                                    585 ;--------------------------------------------------------
                                    586 	.area PSEG    (PAG,XDATA)
                                    587 ;--------------------------------------------------------
                                    588 ; external ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area XSEG    (XDATA)
      000200                        591 _recv_buff:
      000200                        592 	.ds 64
      000240                        593 _send_buff:
      000240                        594 	.ds 64
                                    595 ;--------------------------------------------------------
                                    596 ; absolute external ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area XABS    (ABS,XDATA)
                                    599 ;--------------------------------------------------------
                                    600 ; external initialized ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area XISEG   (XDATA)
                                    603 	.area HOME    (CODE)
                                    604 	.area GSINIT0 (CODE)
                                    605 	.area GSINIT1 (CODE)
                                    606 	.area GSINIT2 (CODE)
                                    607 	.area GSINIT3 (CODE)
                                    608 	.area GSINIT4 (CODE)
                                    609 	.area GSINIT5 (CODE)
                                    610 	.area GSINIT  (CODE)
                                    611 	.area GSFINAL (CODE)
                                    612 	.area CSEG    (CODE)
                                    613 ;--------------------------------------------------------
                                    614 ; global & static initialisations
                                    615 ;--------------------------------------------------------
                                    616 	.area HOME    (CODE)
                                    617 	.area GSINIT  (CODE)
                                    618 	.area GSFINAL (CODE)
                                    619 	.area GSINIT  (CODE)
                                    620 ;	../../../usb/uart.c:147: static uint8_t send_len = 0;
      0000BD 75 27 00         [24]  621 	mov	_send_len,#0x00
                                    622 ;--------------------------------------------------------
                                    623 ; Home
                                    624 ;--------------------------------------------------------
                                    625 	.area HOME    (CODE)
                                    626 	.area HOME    (CODE)
                                    627 ;--------------------------------------------------------
                                    628 ; code
                                    629 ;--------------------------------------------------------
                                    630 	.area CSEG    (CODE)
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'uart_tx'
                                    633 ;------------------------------------------------------------
                                    634 ;c                         Allocated to registers 
                                    635 ;------------------------------------------------------------
                                    636 ;	../../../usb/uart.c:45: static void uart_tx(uint8_t c)
                                    637 ;	-----------------------------------------
                                    638 ;	 function uart_tx
                                    639 ;	-----------------------------------------
      000AE1                        640 _uart_tx:
                           000007   641 	ar7 = 0x07
                           000006   642 	ar6 = 0x06
                           000005   643 	ar5 = 0x05
                           000004   644 	ar4 = 0x04
                           000003   645 	ar3 = 0x03
                           000002   646 	ar2 = 0x02
                           000001   647 	ar1 = 0x01
                           000000   648 	ar0 = 0x00
      000AE1 85 82 C1         [24]  649 	mov	_SBUF1,dpl
                                    650 ;	../../../usb/uart.c:48: while (U1TI == 0)
      000AE4                        651 00101$:
                                    652 ;	../../../usb/uart.c:50: U1TI = 0;
                                    653 ;	assignBit
      000AE4 10 C1 02         [24]  654 	jbc	_U1TI,00114$
      000AE7 80 FB            [24]  655 	sjmp	00101$
      000AE9                        656 00114$:
                                    657 ;	../../../usb/uart.c:51: }
      000AE9 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'uart_rx'
                                    661 ;------------------------------------------------------------
                                    662 ;	../../../usb/uart.c:58: static uint8_t uart_rx()
                                    663 ;	-----------------------------------------
                                    664 ;	 function uart_rx
                                    665 ;	-----------------------------------------
      000AEA                        666 _uart_rx:
                                    667 ;	../../../usb/uart.c:60: while (U1RI == 0)
      000AEA                        668 00101$:
                                    669 ;	../../../usb/uart.c:62: U1RI = 0;
                                    670 ;	assignBit
      000AEA 10 C0 02         [24]  671 	jbc	_U1RI,00114$
      000AED 80 FB            [24]  672 	sjmp	00101$
      000AEF                        673 00114$:
                                    674 ;	../../../usb/uart.c:63: return SBUF1;
      000AEF 85 C1 82         [24]  675 	mov	dpl,_SBUF1
                                    676 ;	../../../usb/uart.c:64: }
      000AF2 22               [24]  677 	ret
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'checksum'
                                    680 ;------------------------------------------------------------
                                    681 ;len                       Allocated to stack - _bp -3
                                    682 ;data                      Allocated to stack - _bp +1
                                    683 ;sum                       Allocated to registers r4 
                                    684 ;i                         Allocated to registers r2 r3 
                                    685 ;------------------------------------------------------------
                                    686 ;	../../../usb/uart.c:71: static uint8_t checksum(uint8_t* data, uint8_t len)
                                    687 ;	-----------------------------------------
                                    688 ;	 function checksum
                                    689 ;	-----------------------------------------
      000AF3                        690 _checksum:
      000AF3 C0 1F            [24]  691 	push	_bp
      000AF5 85 81 1F         [24]  692 	mov	_bp,sp
      000AF8 C0 82            [24]  693 	push	dpl
      000AFA C0 83            [24]  694 	push	dph
      000AFC C0 F0            [24]  695 	push	b
                                    696 ;	../../../usb/uart.c:73: uint8_t sum = 0x00;
      000AFE 7C 00            [12]  697 	mov	r4,#0x00
                                    698 ;	../../../usb/uart.c:75: for (int i = 0; i < len; i++)
      000B00 7A 00            [12]  699 	mov	r2,#0x00
      000B02 7B 00            [12]  700 	mov	r3,#0x00
      000B04                        701 00103$:
      000B04 E5 1F            [12]  702 	mov	a,_bp
      000B06 24 FD            [12]  703 	add	a,#0xfd
      000B08 F8               [12]  704 	mov	r0,a
      000B09 86 06            [24]  705 	mov	ar6,@r0
      000B0B 7F 00            [12]  706 	mov	r7,#0x00
      000B0D C3               [12]  707 	clr	c
      000B0E EA               [12]  708 	mov	a,r2
      000B0F 9E               [12]  709 	subb	a,r6
      000B10 EB               [12]  710 	mov	a,r3
      000B11 64 80            [12]  711 	xrl	a,#0x80
      000B13 8F F0            [24]  712 	mov	b,r7
      000B15 63 F0 80         [24]  713 	xrl	b,#0x80
      000B18 95 F0            [12]  714 	subb	a,b
      000B1A 50 1F            [24]  715 	jnc	00101$
                                    716 ;	../../../usb/uart.c:76: sum += data[i];
      000B1C A8 1F            [24]  717 	mov	r0,_bp
      000B1E 08               [12]  718 	inc	r0
      000B1F EA               [12]  719 	mov	a,r2
      000B20 26               [12]  720 	add	a,@r0
      000B21 FD               [12]  721 	mov	r5,a
      000B22 EB               [12]  722 	mov	a,r3
      000B23 08               [12]  723 	inc	r0
      000B24 36               [12]  724 	addc	a,@r0
      000B25 FE               [12]  725 	mov	r6,a
      000B26 08               [12]  726 	inc	r0
      000B27 86 07            [24]  727 	mov	ar7,@r0
      000B29 8D 82            [24]  728 	mov	dpl,r5
      000B2B 8E 83            [24]  729 	mov	dph,r6
      000B2D 8F F0            [24]  730 	mov	b,r7
      000B2F 12 33 25         [24]  731 	lcall	__gptrget
      000B32 2C               [12]  732 	add	a,r4
      000B33 FC               [12]  733 	mov	r4,a
                                    734 ;	../../../usb/uart.c:75: for (int i = 0; i < len; i++)
      000B34 0A               [12]  735 	inc	r2
      000B35 BA 00 CC         [24]  736 	cjne	r2,#0x00,00103$
      000B38 0B               [12]  737 	inc	r3
      000B39 80 C9            [24]  738 	sjmp	00103$
      000B3B                        739 00101$:
                                    740 ;	../../../usb/uart.c:77: return sum;
      000B3B 8C 82            [24]  741 	mov	dpl,r4
                                    742 ;	../../../usb/uart.c:78: }
      000B3D 85 1F 81         [24]  743 	mov	sp,_bp
      000B40 D0 1F            [24]  744 	pop	_bp
      000B42 22               [24]  745 	ret
                                    746 ;------------------------------------------------------------
                                    747 ;Allocation info for local variables in function 'uart_init'
                                    748 ;------------------------------------------------------------
                                    749 ;	../../../usb/uart.c:84: void uart_init()
                                    750 ;	-----------------------------------------
                                    751 ;	 function uart_init
                                    752 ;	-----------------------------------------
      000B43                        753 _uart_init:
                                    754 ;	../../../usb/uart.c:86: U1SM0 = 0; // 8Bit
                                    755 ;	assignBit
      000B43 C2 C7            [12]  756 	clr	_U1SM0
                                    757 ;	../../../usb/uart.c:87: U1SMOD = 1; // fast mode
                                    758 ;	assignBit
      000B45 D2 C5            [12]  759 	setb	_U1SMOD
                                    760 ;	../../../usb/uart.c:88: U1REN = 1; //串口0接收使能
                                    761 ;	assignBit
      000B47 D2 C4            [12]  762 	setb	_U1REN
                                    763 ;	../../../usb/uart.c:89: SBAUD1 = 256 - (FREQ_SYS / 16 / 115200) & 0xFF;
      000B49 75 C2 F3         [24]  764 	mov	_SBAUD1,#0xf3
                                    765 ;	../../../usb/uart.c:90: IE_UART1 = 1; //启用串口中断
                                    766 ;	assignBit
      000B4C D2 EC            [12]  767 	setb	_IE_UART1
                                    768 ;	../../../usb/uart.c:91: }
      000B4E 22               [24]  769 	ret
                                    770 ;------------------------------------------------------------
                                    771 ;Allocation info for local variables in function 'uart_data_parser'
                                    772 ;------------------------------------------------------------
                                    773 ;command                   Allocated to registers r7 
                                    774 ;datalen                   Allocated to registers r6 
                                    775 ;index                     Allocated to registers r6 
                                    776 ;kplen                     Allocated to registers r7 
                                    777 ;------------------------------------------------------------
                                    778 ;	../../../usb/uart.c:97: static void uart_data_parser(void)
                                    779 ;	-----------------------------------------
                                    780 ;	 function uart_data_parser
                                    781 ;	-----------------------------------------
      000B4F                        782 _uart_data_parser:
                                    783 ;	../../../usb/uart.c:99: if (checksum(recv_buff, recv_len - 1) != recv_buff[recv_len - 1]) {
      000B4F AF 22            [24]  784 	mov	r7,_recv_len
      000B51 1F               [12]  785 	dec	r7
      000B52 C0 07            [24]  786 	push	ar7
      000B54 90 02 00         [24]  787 	mov	dptr,#_recv_buff
      000B57 75 F0 00         [24]  788 	mov	b,#0x00
      000B5A 12 0A F3         [24]  789 	lcall	_checksum
      000B5D AF 82            [24]  790 	mov	r7,dpl
      000B5F 15 81            [12]  791 	dec	sp
      000B61 AE 22            [24]  792 	mov	r6,_recv_len
      000B63 1E               [12]  793 	dec	r6
      000B64 EE               [12]  794 	mov	a,r6
      000B65 33               [12]  795 	rlc	a
      000B66 95 E0            [12]  796 	subb	a,acc
      000B68 FD               [12]  797 	mov	r5,a
      000B69 EE               [12]  798 	mov	a,r6
      000B6A 24 00            [12]  799 	add	a,#_recv_buff
      000B6C F5 82            [12]  800 	mov	dpl,a
      000B6E ED               [12]  801 	mov	a,r5
      000B6F 34 02            [12]  802 	addc	a,#(_recv_buff >> 8)
      000B71 F5 83            [12]  803 	mov	dph,a
      000B73 E0               [24]  804 	movx	a,@dptr
      000B74 FE               [12]  805 	mov	r6,a
      000B75 EF               [12]  806 	mov	a,r7
                                    807 ;	../../../usb/uart.c:101: return;
      000B76 B5 06 51         [24]  808 	cjne	a,ar6,00111$
                                    809 ;	../../../usb/uart.c:104: uint8_t command = recv_buff[0];
      000B79 90 02 00         [24]  810 	mov	dptr,#_recv_buff
      000B7C E0               [24]  811 	movx	a,@dptr
      000B7D FF               [12]  812 	mov	r7,a
                                    813 ;	../../../usb/uart.c:105: if (command >= 0x80) {
      000B7E BF 80 00         [24]  814 	cjne	r7,#0x80,00130$
      000B81                        815 00130$:
      000B81 40 15            [24]  816 	jc	00109$
                                    817 ;	../../../usb/uart.c:107: uint8_t datalen = command & 0x7F;
      000B83 74 7F            [12]  818 	mov	a,#0x7f
      000B85 5F               [12]  819 	anl	a,r7
      000B86 FE               [12]  820 	mov	r6,a
                                    821 ;	../../../usb/uart.c:108: ResponseConfigurePacket(&recv_buff[1], datalen);
      000B87 C0 06            [24]  822 	push	ar6
      000B89 90 02 01         [24]  823 	mov	dptr,#(_recv_buff + 0x0001)
      000B8C 75 F0 00         [24]  824 	mov	b,#0x00
      000B8F 12 01 DB         [24]  825 	lcall	_ResponseConfigurePacket
      000B92 15 81            [12]  826 	dec	sp
                                    827 ;	../../../usb/uart.c:109: last_success = true;
      000B94 75 25 01         [24]  828 	mov	_last_success,#0x01
      000B97 22               [24]  829 	ret
      000B98                        830 00109$:
                                    831 ;	../../../usb/uart.c:110: } else if (command >= 0x40) {
      000B98 BF 40 00         [24]  832 	cjne	r7,#0x40,00132$
      000B9B                        833 00132$:
      000B9B 40 2D            [24]  834 	jc	00111$
                                    835 ;	../../../usb/uart.c:111: uint8_t index = recv_buff[1];
      000B9D 90 02 01         [24]  836 	mov	dptr,#(_recv_buff + 0x0001)
      000BA0 E0               [24]  837 	movx	a,@dptr
      000BA1 FE               [12]  838 	mov	r6,a
                                    839 ;	../../../usb/uart.c:112: uint8_t kplen = (command & 0x3F);
      000BA2 53 07 3F         [24]  840 	anl	ar7,#0x3f
                                    841 ;	../../../usb/uart.c:113: if (index == 0) {
      000BA5 EE               [12]  842 	mov	a,r6
      000BA6 70 11            [24]  843 	jnz	00104$
                                    844 ;	../../../usb/uart.c:115: KeyboardGenericUpload(&recv_buff[2], kplen);
      000BA8 C0 07            [24]  845 	push	ar7
      000BAA 90 02 02         [24]  846 	mov	dptr,#(_recv_buff + 0x0002)
      000BAD 75 F0 00         [24]  847 	mov	b,#0x00
      000BB0 12 01 35         [24]  848 	lcall	_KeyboardGenericUpload
      000BB3 15 81            [12]  849 	dec	sp
                                    850 ;	../../../usb/uart.c:116: last_success = true;
      000BB5 75 25 01         [24]  851 	mov	_last_success,#0x01
      000BB8 22               [24]  852 	ret
      000BB9                        853 00104$:
                                    854 ;	../../../usb/uart.c:120: KeyboardExtraUpload(&recv_buff[1], kplen + 1);
      000BB9 0F               [12]  855 	inc	r7
      000BBA C0 07            [24]  856 	push	ar7
      000BBC 90 02 01         [24]  857 	mov	dptr,#(_recv_buff + 0x0001)
      000BBF 75 F0 00         [24]  858 	mov	b,#0x00
      000BC2 12 01 8C         [24]  859 	lcall	_KeyboardExtraUpload
      000BC5 15 81            [12]  860 	dec	sp
                                    861 ;	../../../usb/uart.c:121: last_success = true;
      000BC7 75 25 01         [24]  862 	mov	_last_success,#0x01
      000BCA                        863 00111$:
                                    864 ;	../../../usb/uart.c:124: }
      000BCA 22               [24]  865 	ret
                                    866 ;------------------------------------------------------------
                                    867 ;Allocation info for local variables in function 'uart_send_status'
                                    868 ;------------------------------------------------------------
                                    869 ;data                      Allocated to registers r7 
                                    870 ;------------------------------------------------------------
                                    871 ;	../../../usb/uart.c:130: static void uart_send_status()
                                    872 ;	-----------------------------------------
                                    873 ;	 function uart_send_status
                                    874 ;	-----------------------------------------
      000BCB                        875 _uart_send_status:
                                    876 ;	../../../usb/uart.c:132: uint8_t data = 0x10;
      000BCB 7F 10            [12]  877 	mov	r7,#0x10
                                    878 ;	../../../usb/uart.c:137: if (usb_state.is_ready && !usb_state.is_sleep) // 是否连接主机
      000BCD 78 1C            [12]  879 	mov	r0,#_usb_state
      000BCF E6               [12]  880 	mov	a,@r0
      000BD0 30 E0 08         [24]  881 	jnb	acc.0,00102$
      000BD3 78 1C            [12]  882 	mov	r0,#_usb_state
      000BD5 E6               [12]  883 	mov	a,@r0
      000BD6 20 E2 02         [24]  884 	jb	acc.2,00102$
                                    885 ;	../../../usb/uart.c:138: data |= 0x04;
      000BD9 7F 14            [12]  886 	mov	r7,#0x14
      000BDB                        887 00102$:
                                    888 ;	../../../usb/uart.c:139: if (usb_state.protocol)
      000BDB 78 1C            [12]  889 	mov	r0,#_usb_state
      000BDD E6               [12]  890 	mov	a,@r0
      000BDE 30 E4 03         [24]  891 	jnb	acc.4,00105$
                                    892 ;	../../../usb/uart.c:140: data |= 0x08;
      000BE1 43 07 08         [24]  893 	orl	ar7,#0x08
      000BE4                        894 00105$:
                                    895 ;	../../../usb/uart.c:141: if (last_success) // 上次接收状态
      000BE4 E5 25            [12]  896 	mov	a,_last_success
      000BE6 60 03            [24]  897 	jz	00107$
                                    898 ;	../../../usb/uart.c:142: data |= 0x01;
      000BE8 43 07 01         [24]  899 	orl	ar7,#0x01
      000BEB                        900 00107$:
                                    901 ;	../../../usb/uart.c:143: uart_tx(data);
      000BEB 8F 82            [24]  902 	mov	dpl,r7
                                    903 ;	../../../usb/uart.c:144: }
      000BED 02 0A E1         [24]  904 	ljmp	_uart_tx
                                    905 ;------------------------------------------------------------
                                    906 ;Allocation info for local variables in function 'uart_check'
                                    907 ;------------------------------------------------------------
                                    908 ;i                         Allocated to registers r7 
                                    909 ;------------------------------------------------------------
                                    910 ;	../../../usb/uart.c:153: void uart_check()
                                    911 ;	-----------------------------------------
                                    912 ;	 function uart_check
                                    913 ;	-----------------------------------------
      000BF0                        914 _uart_check:
                                    915 ;	../../../usb/uart.c:156: if (uart_rx_state == STATE_DATA && last_pos == pos) {
      000BF0 74 01            [12]  916 	mov	a,#0x01
      000BF2 B5 21 08         [24]  917 	cjne	a,_uart_rx_state,00102$
      000BF5 E5 23            [12]  918 	mov	a,_pos
      000BF7 B5 26 03         [24]  919 	cjne	a,_last_pos,00102$
                                    920 ;	../../../usb/uart.c:157: uart_rx_state = STATE_IDLE;
      000BFA 75 21 00         [24]  921 	mov	_uart_rx_state,#0x00
      000BFD                        922 00102$:
                                    923 ;	../../../usb/uart.c:160: if (uart_arrive_flag) {
      000BFD E5 24            [12]  924 	mov	a,_uart_arrive_flag
      000BFF 60 06            [24]  925 	jz	00105$
                                    926 ;	../../../usb/uart.c:161: uart_arrive_flag = false;
      000C01 75 24 00         [24]  927 	mov	_uart_arrive_flag,#0x00
                                    928 ;	../../../usb/uart.c:162: uart_data_parser();
      000C04 12 0B 4F         [24]  929 	lcall	_uart_data_parser
      000C07                        930 00105$:
                                    931 ;	../../../usb/uart.c:166: if (uart_rx_state == STATE_IDLE) {
      000C07 E5 21            [12]  932 	mov	a,_uart_rx_state
      000C09 70 34            [24]  933 	jnz	00113$
                                    934 ;	../../../usb/uart.c:167: if (send_len > 0) {
      000C0B E5 27            [12]  935 	mov	a,_send_len
      000C0D 60 24            [24]  936 	jz	00110$
                                    937 ;	../../../usb/uart.c:169: for (uint8_t i = 0; i < send_len; i++) {
      000C0F 7F 00            [12]  938 	mov	r7,#0x00
      000C11                        939 00115$:
      000C11 C3               [12]  940 	clr	c
      000C12 EF               [12]  941 	mov	a,r7
      000C13 95 27            [12]  942 	subb	a,_send_len
      000C15 50 17            [24]  943 	jnc	00106$
                                    944 ;	../../../usb/uart.c:170: uart_tx(send_buff[i]);
      000C17 EF               [12]  945 	mov	a,r7
      000C18 24 40            [12]  946 	add	a,#_send_buff
      000C1A F5 82            [12]  947 	mov	dpl,a
      000C1C E4               [12]  948 	clr	a
      000C1D 34 02            [12]  949 	addc	a,#(_send_buff >> 8)
      000C1F F5 83            [12]  950 	mov	dph,a
      000C21 E0               [24]  951 	movx	a,@dptr
      000C22 F5 82            [12]  952 	mov	dpl,a
      000C24 C0 07            [24]  953 	push	ar7
      000C26 12 0A E1         [24]  954 	lcall	_uart_tx
      000C29 D0 07            [24]  955 	pop	ar7
                                    956 ;	../../../usb/uart.c:169: for (uint8_t i = 0; i < send_len; i++) {
      000C2B 0F               [12]  957 	inc	r7
      000C2C 80 E3            [24]  958 	sjmp	00115$
      000C2E                        959 00106$:
                                    960 ;	../../../usb/uart.c:172: send_len = 0;
      000C2E 75 27 00         [24]  961 	mov	_send_len,#0x00
      000C31 80 0C            [24]  962 	sjmp	00113$
      000C33                        963 00110$:
                                    964 ;	../../../usb/uart.c:173: } else if (!usb_state.is_busy) { // USB 当前空闲，可以轮询下一个数据包
      000C33 78 1C            [12]  965 	mov	r0,#_usb_state
      000C35 E6               [12]  966 	mov	a,@r0
      000C36 20 E1 06         [24]  967 	jb	acc.1,00113$
                                    968 ;	../../../usb/uart.c:175: uart_send_status();
      000C39 12 0B CB         [24]  969 	lcall	_uart_send_status
                                    970 ;	../../../usb/uart.c:177: last_success = false;
      000C3C 75 25 00         [24]  971 	mov	_last_success,#0x00
      000C3F                        972 00113$:
                                    973 ;	../../../usb/uart.c:180: last_pos = pos;
      000C3F 85 23 26         [24]  974 	mov	_last_pos,_pos
                                    975 ;	../../../usb/uart.c:181: }
      000C42 22               [24]  976 	ret
                                    977 ;------------------------------------------------------------
                                    978 ;Allocation info for local variables in function 'uart_recv'
                                    979 ;------------------------------------------------------------
                                    980 ;data                      Allocated to registers r7 
                                    981 ;------------------------------------------------------------
                                    982 ;	../../../usb/uart.c:187: void uart_recv(void)
                                    983 ;	-----------------------------------------
                                    984 ;	 function uart_recv
                                    985 ;	-----------------------------------------
      000C43                        986 _uart_recv:
                                    987 ;	../../../usb/uart.c:195: uint8_t data = uart_rx();
      000C43 12 0A EA         [24]  988 	lcall	_uart_rx
      000C46 AF 82            [24]  989 	mov	r7,dpl
                                    990 ;	../../../usb/uart.c:197: switch (uart_rx_state) {
      000C48 E4               [12]  991 	clr	a
      000C49 B5 21 02         [24]  992 	cjne	a,_uart_rx_state,00132$
      000C4C 80 07            [24]  993 	sjmp	00101$
      000C4E                        994 00132$:
      000C4E 74 01            [12]  995 	mov	a,#0x01
                                    996 ;	../../../usb/uart.c:198: case STATE_IDLE:
      000C50 B5 21 4B         [24]  997 	cjne	a,_uart_rx_state,00108$
      000C53 80 2C            [24]  998 	sjmp	00104$
      000C55                        999 00101$:
                                   1000 ;	../../../usb/uart.c:199: if (data >= 0x40) {
      000C55 BF 40 00         [24] 1001 	cjne	r7,#0x40,00134$
      000C58                       1002 00134$:
      000C58 40 44            [24] 1003 	jc	00108$
                                   1004 ;	../../../usb/uart.c:200: recv_len = (data >= 0x80) ? ((data & 0x7F) + 2) : ((data & 0x3F) + 3);
      000C5A BF 80 00         [24] 1005 	cjne	r7,#0x80,00136$
      000C5D                       1006 00136$:
      000C5D 92 00            [24] 1007 	mov	b0,c
      000C5F 40 0A            [24] 1008 	jc	00110$
      000C61 8F 06            [24] 1009 	mov	ar6,r7
      000C63 74 7F            [12] 1010 	mov	a,#0x7f
      000C65 5E               [12] 1011 	anl	a,r6
      000C66 24 02            [12] 1012 	add	a,#0x02
      000C68 FE               [12] 1013 	mov	r6,a
      000C69 80 08            [24] 1014 	sjmp	00111$
      000C6B                       1015 00110$:
      000C6B 8F 05            [24] 1016 	mov	ar5,r7
      000C6D 74 3F            [12] 1017 	mov	a,#0x3f
      000C6F 5D               [12] 1018 	anl	a,r5
      000C70 24 03            [12] 1019 	add	a,#0x03
      000C72 FE               [12] 1020 	mov	r6,a
      000C73                       1021 00111$:
      000C73 8E 22            [24] 1022 	mov	_recv_len,r6
                                   1023 ;	../../../usb/uart.c:202: recv_buff[pos++] = data;
      000C75 75 23 01         [24] 1024 	mov	_pos,#0x01
      000C78 90 02 00         [24] 1025 	mov	dptr,#_recv_buff
      000C7B EF               [12] 1026 	mov	a,r7
      000C7C F0               [24] 1027 	movx	@dptr,a
                                   1028 ;	../../../usb/uart.c:203: uart_rx_state = STATE_DATA;
      000C7D 75 21 01         [24] 1029 	mov	_uart_rx_state,#0x01
                                   1030 ;	../../../usb/uart.c:205: break;
                                   1031 ;	../../../usb/uart.c:207: case STATE_DATA:
      000C80 22               [24] 1032 	ret
      000C81                       1033 00104$:
                                   1034 ;	../../../usb/uart.c:208: recv_buff[pos++] = data;
      000C81 AE 23            [24] 1035 	mov	r6,_pos
      000C83 05 23            [12] 1036 	inc	_pos
      000C85 EE               [12] 1037 	mov	a,r6
      000C86 24 00            [12] 1038 	add	a,#_recv_buff
      000C88 F5 82            [12] 1039 	mov	dpl,a
      000C8A E4               [12] 1040 	clr	a
      000C8B 34 02            [12] 1041 	addc	a,#(_recv_buff >> 8)
      000C8D F5 83            [12] 1042 	mov	dph,a
      000C8F EF               [12] 1043 	mov	a,r7
      000C90 F0               [24] 1044 	movx	@dptr,a
                                   1045 ;	../../../usb/uart.c:209: if (pos >= recv_len) {
      000C91 C3               [12] 1046 	clr	c
      000C92 E5 23            [12] 1047 	mov	a,_pos
      000C94 95 22            [12] 1048 	subb	a,_recv_len
      000C96 40 06            [24] 1049 	jc	00108$
                                   1050 ;	../../../usb/uart.c:210: uart_rx_state = STATE_IDLE;
      000C98 75 21 00         [24] 1051 	mov	_uart_rx_state,#0x00
                                   1052 ;	../../../usb/uart.c:211: uart_arrive_flag = true;
      000C9B 75 24 01         [24] 1053 	mov	_uart_arrive_flag,#0x01
                                   1054 ;	../../../usb/uart.c:214: }
      000C9E                       1055 00108$:
                                   1056 ;	../../../usb/uart.c:215: }
      000C9E 22               [24] 1057 	ret
                                   1058 ;------------------------------------------------------------
                                   1059 ;Allocation info for local variables in function 'uart_send_led'
                                   1060 ;------------------------------------------------------------
                                   1061 ;val                       Allocated to registers r7 
                                   1062 ;------------------------------------------------------------
                                   1063 ;	../../../usb/uart.c:222: void uart_send_led(uint8_t val)
                                   1064 ;	-----------------------------------------
                                   1065 ;	 function uart_send_led
                                   1066 ;	-----------------------------------------
      000C9F                       1067 _uart_send_led:
      000C9F AF 82            [24] 1068 	mov	r7,dpl
                                   1069 ;	../../../usb/uart.c:224: send_buff[0] = 0x20 + (val & 0x1F);
      000CA1 74 1F            [12] 1070 	mov	a,#0x1f
      000CA3 5F               [12] 1071 	anl	a,r7
      000CA4 24 20            [12] 1072 	add	a,#0x20
      000CA6 90 02 40         [24] 1073 	mov	dptr,#_send_buff
      000CA9 F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	../../../usb/uart.c:225: send_len = 1;
      000CAA 75 27 01         [24] 1076 	mov	_send_len,#0x01
                                   1077 ;	../../../usb/uart.c:226: }
      000CAD 22               [24] 1078 	ret
                                   1079 ;------------------------------------------------------------
                                   1080 ;Allocation info for local variables in function 'uart_send_keymap'
                                   1081 ;------------------------------------------------------------
                                   1082 ;len                       Allocated to stack - _bp -3
                                   1083 ;data                      Allocated to stack - _bp +1
                                   1084 ;i                         Allocated to registers r3 
                                   1085 ;------------------------------------------------------------
                                   1086 ;	../../../usb/uart.c:234: void uart_send_keymap(uint8_t* data, uint8_t len)
                                   1087 ;	-----------------------------------------
                                   1088 ;	 function uart_send_keymap
                                   1089 ;	-----------------------------------------
      000CAE                       1090 _uart_send_keymap:
      000CAE C0 1F            [24] 1091 	push	_bp
      000CB0 85 81 1F         [24] 1092 	mov	_bp,sp
      000CB3 C0 82            [24] 1093 	push	dpl
      000CB5 C0 83            [24] 1094 	push	dph
      000CB7 C0 F0            [24] 1095 	push	b
                                   1096 ;	../../../usb/uart.c:236: send_buff[0] = len + 0x80; // command
      000CB9 E5 1F            [12] 1097 	mov	a,_bp
      000CBB 24 FD            [12] 1098 	add	a,#0xfd
      000CBD F8               [12] 1099 	mov	r0,a
      000CBE 86 04            [24] 1100 	mov	ar4,@r0
      000CC0 74 80            [12] 1101 	mov	a,#0x80
      000CC2 2C               [12] 1102 	add	a,r4
      000CC3 90 02 40         [24] 1103 	mov	dptr,#_send_buff
      000CC6 F0               [24] 1104 	movx	@dptr,a
                                   1105 ;	../../../usb/uart.c:237: for (uint8_t i = 0; i < len; i++)
      000CC7 7B 00            [12] 1106 	mov	r3,#0x00
      000CC9                       1107 00103$:
      000CC9 E5 1F            [12] 1108 	mov	a,_bp
      000CCB 24 FD            [12] 1109 	add	a,#0xfd
      000CCD F8               [12] 1110 	mov	r0,a
      000CCE C3               [12] 1111 	clr	c
      000CCF EB               [12] 1112 	mov	a,r3
      000CD0 96               [12] 1113 	subb	a,@r0
      000CD1 50 33            [24] 1114 	jnc	00101$
                                   1115 ;	../../../usb/uart.c:238: send_buff[i + 1] = data[i];
      000CD3 C0 04            [24] 1116 	push	ar4
      000CD5 8B 02            [24] 1117 	mov	ar2,r3
      000CD7 0A               [12] 1118 	inc	r2
      000CD8 EA               [12] 1119 	mov	a,r2
      000CD9 33               [12] 1120 	rlc	a
      000CDA 95 E0            [12] 1121 	subb	a,acc
      000CDC FC               [12] 1122 	mov	r4,a
      000CDD EA               [12] 1123 	mov	a,r2
      000CDE 24 40            [12] 1124 	add	a,#_send_buff
      000CE0 FA               [12] 1125 	mov	r2,a
      000CE1 EC               [12] 1126 	mov	a,r4
      000CE2 34 02            [12] 1127 	addc	a,#(_send_buff >> 8)
      000CE4 FC               [12] 1128 	mov	r4,a
      000CE5 A8 1F            [24] 1129 	mov	r0,_bp
      000CE7 08               [12] 1130 	inc	r0
      000CE8 EB               [12] 1131 	mov	a,r3
      000CE9 26               [12] 1132 	add	a,@r0
      000CEA FD               [12] 1133 	mov	r5,a
      000CEB E4               [12] 1134 	clr	a
      000CEC 08               [12] 1135 	inc	r0
      000CED 36               [12] 1136 	addc	a,@r0
      000CEE FE               [12] 1137 	mov	r6,a
      000CEF 08               [12] 1138 	inc	r0
      000CF0 86 07            [24] 1139 	mov	ar7,@r0
      000CF2 8D 82            [24] 1140 	mov	dpl,r5
      000CF4 8E 83            [24] 1141 	mov	dph,r6
      000CF6 8F F0            [24] 1142 	mov	b,r7
      000CF8 12 33 25         [24] 1143 	lcall	__gptrget
      000CFB FD               [12] 1144 	mov	r5,a
      000CFC 8A 82            [24] 1145 	mov	dpl,r2
      000CFE 8C 83            [24] 1146 	mov	dph,r4
      000D00 F0               [24] 1147 	movx	@dptr,a
                                   1148 ;	../../../usb/uart.c:237: for (uint8_t i = 0; i < len; i++)
      000D01 0B               [12] 1149 	inc	r3
      000D02 D0 04            [24] 1150 	pop	ar4
      000D04 80 C3            [24] 1151 	sjmp	00103$
      000D06                       1152 00101$:
                                   1153 ;	../../../usb/uart.c:240: send_buff[len + 1] = checksum(send_buff, len + 1);
      000D06 EC               [12] 1154 	mov	a,r4
      000D07 04               [12] 1155 	inc	a
      000D08 FF               [12] 1156 	mov	r7,a
      000D09 FD               [12] 1157 	mov	r5,a
      000D0A 33               [12] 1158 	rlc	a
      000D0B 95 E0            [12] 1159 	subb	a,acc
      000D0D FE               [12] 1160 	mov	r6,a
      000D0E ED               [12] 1161 	mov	a,r5
      000D0F 24 40            [12] 1162 	add	a,#_send_buff
      000D11 FD               [12] 1163 	mov	r5,a
      000D12 EE               [12] 1164 	mov	a,r6
      000D13 34 02            [12] 1165 	addc	a,#(_send_buff >> 8)
      000D15 FE               [12] 1166 	mov	r6,a
      000D16 C0 06            [24] 1167 	push	ar6
      000D18 C0 05            [24] 1168 	push	ar5
      000D1A C0 04            [24] 1169 	push	ar4
      000D1C C0 07            [24] 1170 	push	ar7
      000D1E 90 02 40         [24] 1171 	mov	dptr,#_send_buff
      000D21 75 F0 00         [24] 1172 	mov	b,#0x00
      000D24 12 0A F3         [24] 1173 	lcall	_checksum
      000D27 AF 82            [24] 1174 	mov	r7,dpl
      000D29 15 81            [12] 1175 	dec	sp
      000D2B D0 04            [24] 1176 	pop	ar4
      000D2D D0 05            [24] 1177 	pop	ar5
      000D2F D0 06            [24] 1178 	pop	ar6
      000D31 8D 82            [24] 1179 	mov	dpl,r5
      000D33 8E 83            [24] 1180 	mov	dph,r6
      000D35 EF               [12] 1181 	mov	a,r7
      000D36 F0               [24] 1182 	movx	@dptr,a
                                   1183 ;	../../../usb/uart.c:241: send_len = len + 2; // cmd + sum
      000D37 74 02            [12] 1184 	mov	a,#0x02
      000D39 2C               [12] 1185 	add	a,r4
      000D3A F5 27            [12] 1186 	mov	_send_len,a
                                   1187 ;	../../../usb/uart.c:242: }
      000D3C 85 1F 81         [24] 1188 	mov	sp,_bp
      000D3F D0 1F            [24] 1189 	pop	_bp
      000D41 22               [24] 1190 	ret
                                   1191 	.area CSEG    (CODE)
                                   1192 	.area CONST   (CODE)
      00339C                       1193 _row_pin_array:
      00339C 19                    1194 	.db #0x19	; 25
      00339D 1A                    1195 	.db #0x1a	; 26
      00339E 1B                    1196 	.db #0x1b	; 27
      00339F 1C                    1197 	.db #0x1c	; 28
      0033A0 12                    1198 	.db #0x12	; 18
      0033A1 13                    1199 	.db #0x13	; 19
      0033A2                       1200 _column_pin_array:
      0033A2 17                    1201 	.db #0x17	; 23
      0033A3 16                    1202 	.db #0x16	; 22
      0033A4 15                    1203 	.db #0x15	; 21
      0033A5 14                    1204 	.db #0x14	; 20
      0033A6 1D                    1205 	.db #0x1d	; 29
      0033A7 07                    1206 	.db #0x07	; 7
      0033A8 06                    1207 	.db #0x06	; 6
      0033A9 08                    1208 	.db #0x08	; 8
      0033AA 09                    1209 	.db #0x09	; 9
      0033AB 0A                    1210 	.db #0x0a	; 10
      0033AC 0B                    1211 	.db #0x0b	; 11
      0033AD 05                    1212 	.db #0x05	; 5
      0033AE 0C                    1213 	.db #0x0c	; 12
      0033AF 0D                    1214 	.db #0x0d	; 13
      0033B0 0E                    1215 	.db #0x0e	; 14
      0033B1 0F                    1216 	.db #0x0f	; 15
      0033B2 04                    1217 	.db #0x04	; 4
      0033B3 10                    1218 	.db #0x10	; 16
      0033B4 11                    1219 	.db #0x11	; 17
                                   1220 	.area XINIT   (CODE)
                                   1221 	.area CABS    (ABS,CODE)
